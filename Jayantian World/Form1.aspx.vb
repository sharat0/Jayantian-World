Imports System.Data.SqlClient
Imports System.Net.Mail

Public Class Form1
    Inherits System.Web.UI.Page
    Public m_id As String = "0"
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim name As String = Request.Form("name")
        Dim email As String = Request.Form("email")
        Dim phone As String = Request.Form("num")
        Dim dt As Date = Request.Form("dob")
        Dim program As String = programme.SelectedValue
        Dim fee As Integer
        Dim id As String = DateTime.Now.ToString("yy") + "KJ"

        If program = "pg" Then
            fee = 700
        Else
            fee = 500
        End If
        If phone.Length <> 10 Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Please enter a valid Phone Number');", True)
        Else
            Session("fee") = fee
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            cmd.CommandText = "Select id from form1 where phone= " + phone
            dr = cmd.ExecuteReader
            Try
                dr.Read()
                If dr("id") Then
                    ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Same phone is already enrolled. Please check your email for further information.');", True)
                End If
            Catch ex As Exception
                dr.Close()
                con.Close()
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "Insert into form1 (name, programme, email, phone, dob, fee) values (@nm, @prog, @mail, @ph, @dob, @fee)"
                cmd.Parameters.Add("@nm", SqlDbType.VarChar).Value = name
                cmd.Parameters.Add("@prog", SqlDbType.VarChar).Value = program
                cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = email
                cmd.Parameters.Add("@ph", SqlDbType.VarChar).Value = phone
                cmd.Parameters.Add("@dob", SqlDbType.VarChar).Value = dt
                cmd.Parameters.Add("@fee", SqlDbType.VarChar).Value = fee
                cmd.ExecuteNonQuery()

                cmd.CommandText = "select id from form1 where id=(select max(id) from form1)"
                dr = cmd.ExecuteReader
                dr.Read()
                m_id = dr("id")
                id += CStr(m_id)
                con.Close()

                Dim pass As String = Date.Parse(dt)

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Insert into login (id, uid, pass, type) values (@id, @uid, @pass, 0)"
                cmd.Parameters.Add("@id", SqlDbType.VarChar).Value = m_id
                cmd.Parameters.Add("@uid", SqlDbType.VarChar).Value = id
                cmd.Parameters.Add("@pass", SqlDbType.VarChar).Value = pass

                cmd.ExecuteNonQuery()

                con.Close()

                Response.Redirect("payment.aspx")

            End Try
        End If



    End Sub
End Class
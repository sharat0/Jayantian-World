Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class login
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim cmd2 As New SqlCommand
    Dim cmd3 As New SqlCommand
    Dim dr As SqlDataReader
    Dim dr2 As SqlDataReader
    Dim dr3 As SqlDataReader
    Dim type As String

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click

        Dim id As String = Request.Form("id")
        Dim pass As String = Request.Form("pass")

        Dim dbid As String
        Dim dbpass As String
        Dim uid As String
        Dim branch As String

        Dim temp As Integer = 0
        Dim temp2 As Integer = 0
        Dim temp3 As Integer = 0
        Dim temp4 As Integer = 0
        Dim adm As Integer = 0
        Dim status As Integer = 0


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con

        cmd.CommandText = "Select * from login where uid = '" + id + "'"
        dr = cmd.ExecuteReader



        Try
            dr.Read()
            uid = dr("id")
            dbid = dr("uid")
            dbpass = dr("pass")
            type = dr("type")

            dr.Close()
            con.Close()


            If String.Compare(dbid, id) = 0 And String.Compare(dbpass, pass) = 0 Then

                Session("id") = uid
                Session("regno") = dbid

            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert(' Invalid Login ');", True)
            End If
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No data found');", True)
        End Try


        If type = 1 Then
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Select * from login where id = '" + uid + "'"
            dr = cmd.ExecuteReader()
            dr.Read()
            branch = dr("branch")
            con.Close()
            Session("adm") = 1
            Session("branch") = branch
            Response.Redirect("admin.aspx")

        Else
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Select * from form1 where id='" + uid + "'"
            dr = cmd.ExecuteReader()
            dr.Read()

            temp = dr("pay_status")
            status = dr("app_status")

            con.Close()

            If temp = 0 Then
                Response.Redirect("payment.aspx")
            Else

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "Select count(*) as cnt from per_det where id='" + uid + "'"
                dr = cmd.ExecuteReader()
                dr.Read()

                temp2 = dr("cnt")
                If temp2 = 0 Then
                    Response.Redirect("personal_details.aspx")
                Else
                    con.Close()
                    con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                    con.Open()
                    cmd.Connection = con
                    cmd.CommandText = "Select count(*) as cnt from edu_10 where id='" + uid + "'"
                    dr = cmd.ExecuteReader()
                    dr.Read()

                    temp3 = dr("cnt")
                    con.Close()

                    If temp3 = 0 Then
                        Response.Redirect("educational.aspx")

                    Else
                        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                        con.Open()
                        cmd.Connection = con
                        cmd.CommandText = "Select count(*) as cnt from edu_12 where id='" + uid + "'"
                        dr = cmd.ExecuteReader()
                        dr.Read()
                        temp4 = dr("cnt")
                        If temp4 = 0 Then
                            Response.Redirect("educational_12.aspx")
                        Else
                            If status = 0 Or status = 2 Then
                                Response.Redirect("home.aspx")
                            Else
                                Response.Redirect("student_main.html")
                            End If

                        End If
                    End If

                End If

            End If

        End If


    End Sub
End Class
Imports System.Net.Mail
Imports System.Data.SqlClient
Public Class payment
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim id As String
        Dim cno As String = Request.Form("card")
        Dim cvv As String = Request.Form("cvv")
        If Len(cno) <> 10 Then
            MsgBox("Enter Correct Card Details")
        ElseIf Len(cvv) <> 3 Then
            MsgBox("Enter Correct Card Details")

        Else
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            cmd.CommandText = "select id from form1 where id=(select max(id) from form1)"
            dr = cmd.ExecuteReader
            dr.Read()
            id = dr("id")
            con.Close()


            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Update form1 set pay_status = 1 where id= '" + id + "'"
            cmd.ExecuteNonQuery()
            con.Close()

            If Session("id") = Nothing Then
                Response.Redirect("login.aspx")
            Else

                Response.Redirect("personal_details.aspx")
            End If

        End If
    End Sub

End Class
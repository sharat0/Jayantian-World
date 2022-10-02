Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class chage_password
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim id As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")
        Else
            id = Session("id")
        End If

    End Sub

    Protected Sub change_Click(sender As Object, e As EventArgs) Handles change.Click

        Dim pass As String
        Dim fcpass As String
        Dim fnpass As String
        Dim fcnpass As String
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "Select * from login where id = '" + id + "'"
        dr = cmd.ExecuteReader
        dr.Read()

        pass = dr("pass")

        con.Close()
        fcpass = Request.Form("cpass")
        fnpass = Request.Form("npass")
        fcnpass = Request.Form("cnpass")

        If pass <> fcpass Then
            MsgBox("Password does not match to existing password")
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Password does not match to existing password');", True)
        ElseIf fnpass <> fcnpass Then
            MsgBox("new password and confirm new password does not match")
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('new password and confirm new password does not match');", True)
        Else
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "UPDATE login SET pass = '" + fcnpass + "' WHERE id= '" + id + "'"
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Password Updated Successfully');", True)
            MsgBox("Password Updated Successfully")
            If Session("adm") = 1 Then
                Response.Redirect("admin.aspx")
            Else
                Response.Redirect("home.aspx")
                sendmail()
            End If
        End If

    End Sub
    Public Sub sendmail()

        Dim name As String
        Dim mail As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "Select * from form1 where id = '" + id + "'"
        dr = cmd.ExecuteReader
        dr.Read()

        name = dr("name")
        mail = dr("email")

        con.Close()


        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("kjcadmission01@gmail.com", "F1vp2DrScdwmC4qt")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp-relay.sendinblue.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("kjcadmission01@gmail.com")
            e_mail.To.Add(Mail)
            e_mail.Subject = "Password Updated Successfully"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <h3>Hello " + name + "! Your request for password change have been completed successfully. </h3>
                                    If it was not done by you, please respond to this email as soon as possible. <br>
                                    
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Payment Successful! Now you can login to your account to complete admission form. Credentials are sent to your email.');", True)

            Response.Redirect("login.aspx", False)

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub
End Class
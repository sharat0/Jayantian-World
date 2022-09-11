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

        send_mail(id)

    End Sub

    Public Sub send_mail(ByRef id As String)
        Dim uid As String = DateTime.Now.ToString("yy") + "KJ"
        Dim name As String
        Dim pass As String
        Dim mail As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from form1 where id= " + id
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        pass = dr("dob")
        mail = dr("email")

        uid += CStr(id)

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
            e_mail.To.Add(mail)
            e_mail.Subject = "Enrolled Successfully for KJC Admission"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <h3>Hello " + name + "! You have successfully filled the form for admission. </h3>
                                    <p> Your ID to login for further steps is <b> " + uid + "</b> and your password is <b>" + pass + ". </b><br>
                                        You can now login to your account available at our website to complete your form. </br>
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
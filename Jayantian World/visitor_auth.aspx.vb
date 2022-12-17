Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class visitor_auth
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim sid As String
    Dim dt As Date
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")

        ElseIf Session("adm") = Nothing Then
            Response.Redirect("restricted.html")

        Else

            Dim branch As String
            Dim id As String = Session("id")
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            Try
                branch = Session("branch")

                'If CONDITION TO CHECK TYPE OF ADMIN AND FETCH DATA ACCORDINGLY
                If branch = "admin" Then
                    cmd.CommandText = "select id from visitor where status= 0"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                Else
                    Response.Redirect("restricted.html")
                End If

                Dim nm As String
                Dim mail As String
                Dim ph As String
                Dim purp As String

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from visitor where id = '" + sid + "'"
                dr = cmd.ExecuteReader

                dr.Read()
                nm = dr("name")
                mail = dr("email")
                ph = dr("phone")
                purp = dr("purpose")

                name.Text = nm
                email.Text = mail
                phone.Text = ph
                purpose.Text = purp

                con.Close()

            Catch

                Response.Redirect("no_work.html")

            End Try
        End If
    End Sub

    Protected Sub rem_Click(sender As Object, e As EventArgs) Handles [rem].Click
        dt = Date.Today
        dt.AddDays(2)
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE visitor set status = 1 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE visitor set dt = '" + dt + "' where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        approve_mail(sid)

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Approved');", True)
        Response.Redirect("visitor_auth.aspx")
    End Sub

    Protected Sub add_Click(sender As Object, e As EventArgs) Handles add.Click
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE visitor set status = 2 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        reject_mail(sid)


        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Rejected');", True)
        Response.Redirect("visitor_auth.aspx")
    End Sub

    Public Sub reject_mail(ByRef id As String)
        Dim name As String
        Dim mail As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from visitor where id= " + id
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        mail = dr("email")
        'TRY BLOCK STARTS

        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New System.Net.NetworkCredential("portaladmission123@gmail.com", "hVIgrRUynk1jSzZd")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp-relay.sendinblue.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("portaladmission123@gmail.com")
            e_mail.To.Add(mail)
            e_mail.Subject = "Visit Application Rejected | Kristu Jayanti College"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <p>Dear Applicant, <br>
                                    We are writing you to inform you that, unfortunately, we are not able to allow you to visit our College Campus <br>
                                    Furthermore, we would like to take this time to acknowledge your accomplishments and the time you spent during this application process. We understand that you might be frustrated during this time.
                                    
                                    <br><br>
                                    Sincerely,<br>
                                    Kristu Jayanti College,<br>
                                    Admission Team<br>
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub


    Sub approve_mail(ByRef id As String)
        Dim name As String
        Dim mail As String


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from visitor where id= " + id
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        mail = dr("email")

        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New System.Net.NetworkCredential("portaladmission123@gmail.com", "hVIgrRUynk1jSzZd")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp-relay.sendinblue.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("portaladmission123@gmail.com")
            e_mail.To.Add(mail)
            e_mail.Subject = "Welcome to Kristu Jayati College"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    Dear Applicant,
                                    <br>
                                    Thank you for applying online at Kristu Jayanti College, Autonomous, Bengaluru.
                                    <br>
                                    You are now authorized to visit Kristu Jayanti College on " + dt + " <br><br>
                                    
                                    Kristu Jayanti College<br>
                                    Bangalore-560077 </b>
                                    <br><br><br>
                                    To Reach Kristu Jayanti College, Bengaluru:
                                    <br>
                                    From Majestic BMTC Bus Stand – Platform 19 : Bus Route – 292B, 292C<br>
                                    From K.R. Market : Bus Route – 292, 292D, 293C<br>
                                    From Vasanth Nagar/Cantonment Station/Bangalore East Station : Bus Route – 292, 292B, 292C, 292D, 292F, 293C<br>
                                    Nearest Railway Station : Bangalore East (8 kms)/Cantonment (10 kms)<br>
                                   
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub
End Class

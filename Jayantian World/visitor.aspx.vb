
Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class visitor
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click
        Dim name As String = Request.Form("name")
        Dim email As String = Request.Form("email")
        Dim phone As String = Request.Form("num")
        Dim purp As String = Request.Form("purpose")
        Dim id As String = DateTime.Now.ToString("yy") + "KJV"
        Dim mid As String
        Dim dtnow As Date = Date.Today

        If phone.Length <> 10 Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Please enter a valid Phone Number');", True)

        Else

            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()

            cmd.Connection = con
            cmd.CommandText = "Insert into visitor (name, email, phone, purpose, dt) values (@nm, @mail, @ph, @purpose)"
            cmd.Parameters.Add("@nm", SqlDbType.VarChar).Value = name
            cmd.Parameters.Add("@mail", SqlDbType.VarChar).Value = email
            cmd.Parameters.Add("@ph", SqlDbType.VarChar).Value = phone
            cmd.Parameters.Add("@purpose", SqlDbType.VarChar).Value = purp
            cmd.ExecuteNonQuery()

            cmd.CommandText = "select id from visitor where id=(select max(id) from visitor)"
            dr = cmd.ExecuteReader

            dr.Read()
            mid = dr("id")
            id += mid
            con.Close()

            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "UPDATE visitor set uid = '" + id + "' where id='" + mid + "'"
            cmd.ExecuteNonQuery()
            con.Close()


            con.Close()
            send_mail(mid)


        End If
    End Sub

    Public Sub send_mail(ByRef id As String)
        Dim name As String
        Dim uid As String
        Dim mail As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from visitor where id= " + id
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        mail = dr("email")
        uid = dr("uid")

        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New System.Net.NetworkCredential("kjcadmission01@gmail.com", "F1vp2DrScdwmC4qt")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp-relay.sendinblue.com"

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("kjcadmission01@gmail.com")
            e_mail.To.Add(mail)
            e_mail.Subject = "Visitor's Form"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <h3>Hello " + name + "! You have successfully filled the visitor form to visit Kristu Jayanti College. </h3>
                                    <p>Your Visitor unique ID is <b>" + uid + "</b>. You can use this id to get your virtual ID card to enter college campus. <br> 
                                        You will be further notified via mail about your status for vaisitor's form.   </br>
                                      <br>Thank You.</p> <br><br>
                                        <h4>Note:</h4>
                                      <p>This ID card will be valid only for 1 day.</p>
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)


        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub
End Class
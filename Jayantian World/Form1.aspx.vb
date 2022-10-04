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
        Dim program As String = prog.SelectedValue
        Dim type As String = branch.SelectedValue
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
                cmd.CommandText = "Insert into form1 (name, programme,type, email, phone, dob, fee) values (@nm, @prog, @type, @mail, @ph, @dob, @fee)"
                cmd.Parameters.Add("@nm", SqlDbType.VarChar).Value = name
                cmd.Parameters.Add("@prog", SqlDbType.VarChar).Value = program
                cmd.Parameters.Add("@type", SqlDbType.VarChar).Value = type
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
                send_mail(m_id)

                Response.Redirect("payment.aspx")

            End Try
        End If


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

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim cnt As Integer
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "Select count(*) as cnt from form1 where app_status='0'"
        dr = cmd.ExecuteReader()
        dr.Read()
        cnt = dr("cnt")
        MsgBox(cnt)
        con.Close()
        If cnt >= 60 Then
            Response.Redirect("close.html")
        End If
    End Sub
End Class
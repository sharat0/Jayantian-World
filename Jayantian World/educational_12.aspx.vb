Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class educational_12
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")
        ElseIf Session("stage") = 1 Then
            Response.Redirect("personal_details.aspx")
        ElseIf Session("stage") = 2 Then
            Response.Redirect("educational.aspx")
        ElseIf Session("stage") = 4 Then
            Response.Redirect("home.aspx")
        ElseIf Session("stage") = 5 Then
            Response.Redirect("student_main.html")
        End If
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click

        Dim mail As String
        Dim name As String

        Dim id As String = Session("id")
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        Dim boards As String = board.SelectedValue
        Dim state As String = Request.Form("state")
        Dim inst As String = Request.Form("institution")
        Dim med As String = Request.Form("medium")
        Dim pass_yr As String = Request.Form("pass_year")
        Dim reg As String = Request.Form("reg_no")

        'SUBJECTS
        Dim sub1 As String = subj1.SelectedValue
        Dim sub2 As String = subj2.SelectedValue
        Dim sub3 As String = subj3.SelectedValue
        Dim sub4 As String = subj4.SelectedValue
        Dim sub5 As String = subj5.SelectedValue
        Dim sub6 As String = subj6.SelectedValue

        'MARKS SCORED
        Dim mar1 As String = Request.Form("ms1")
        Dim mar2 As String = Request.Form("ms2")
        Dim mar3 As String = Request.Form("ms3")
        Dim mar4 As String = Request.Form("ms4")
        Dim mar5 As String = Request.Form("ms5")
        Dim mar6 As String = Request.Form("ms6")

        'TOTAL MARKS
        Dim tm1 As String = Request.Form("tm1")
        Dim tm2 As String = Request.Form("tm2")
        Dim tm3 As String = Request.Form("tm3")
        Dim tm4 As String = Request.Form("tm4")
        Dim tm5 As String = Request.Form("tm5")
        Dim tm6 As String = Request.Form("tm6")

        Dim total As String = Request.Form("marks_scored")
        Dim max As String = Request.Form("max_marks")
        Dim per As String = Request.Form("percentage")


        cmd.CommandText = "insert into edu_12 (id, board, state, institute, medium, pass_year, reg_no, sub1, sub2, sub3, sub4, sub5, sub6, m1, m2, m3, m4, m5, m6, tm1, tm2, tm3, tm4, tm5, tm6, total, max, per) values ('" + id + "', '" + boards + "','" + state + "' , '" + inst + "', '" + med + "', '" + pass_yr + "','" + reg + "', '" + sub1 + "','" + sub2 + "','" + sub3 + "', '" + sub4 + "', '" + sub5 + "', '" + sub6 + "', '" + mar1 + "', '" + mar2 + "', '" + mar3 + "', '" + mar4 + "', '" + mar5 + "', '" + mar6 + "', '" + tm1 + "', '" + tm2 + "', '" + tm3 + "', '" + tm4 + "', '" + tm5 + "', '" + tm6 + "', '" + total + "', '" + max + "', '" + per + "')"
        cmd.ExecuteNonQuery()
        con.Close()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from form1 where id= " + id
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        mail = dr("email")


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
            e_mail.Subject = "Admission Form Completed!"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <h3>Hello " + name + "! You have successfully filled the form for admission. </h3>
                                    <p> Your form is completely filled successfully. We will let you know your application status very soon. </br>
                                        Stay connected with us. <br> Thank You. </p>
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)
            Response.Redirect("home.aspx", False)
        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try


    End Sub
End Class
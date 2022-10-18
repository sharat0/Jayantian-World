Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class test
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim sid As String

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
                    cmd.CommandText = "select id from edu_12 where status= 0 ORDER BY total"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                ElseIf branch = "cs" Then
                    cmd.CommandText = "select id from form1 where app_status= 0 AND type='cs'"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                ElseIf branch = "science" Then
                    cmd.CommandText = "select id from form1 where app_status= 0 AND type='science'"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                ElseIf branch = "humanities" Then
                    cmd.CommandText = "select id from form1 where app_status= 0 AND type='humanities'"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                ElseIf branch = "law" Then
                    cmd.CommandText = "select id from form1 where app_status= 0 AND type='law'"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                ElseIf branch = "ls" Then
                    cmd.CommandText = "select id from form1 where app_status= 0 AND type='ls'"
                    dr = cmd.ExecuteReader
                    dr.Read()
                    sid = dr("id")
                    con.Close()

                Else
                    Response.Redirect("restricted.html")
                End If


                'EDUCATION 12TH

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from edu_12 where id= '" + sid + "'"
                dr = cmd.ExecuteReader
                dr.Read()
                sid = dr("id")
                Dim brd12 As String = dr("board")
                Dim st12 As String = dr("state")
                Dim ins As String = dr("institute")
                Dim med As String = dr("medium")
                Dim pyr As String = dr("pass_year")
                Dim rno As String = dr("reg_no")
                Dim s1 As String = dr("sub1")
                Dim s2 As String = dr("sub2")
                Dim s3 As String = dr("sub3")
                Dim s4 As String = dr("sub4")
                Dim s5 As String = dr("sub5")
                Dim s6 As String = dr("sub6")
                Dim m1 As String = dr("m1")
                Dim m2 As String = dr("m2")
                Dim m3 As String = dr("m3")
                Dim m4 As String = dr("m4")
                Dim m5 As String = dr("m5")
                Dim m6 As String = dr("m6")
                Dim t1 As String = dr("tm1")
                Dim t2 As String = dr("tm2")
                Dim t3 As String = dr("tm3")
                Dim t4 As String = dr("tm4")
                Dim t5 As String = dr("tm5")
                Dim t6 As String = dr("tm6")
                Dim ttl As String = dr("total")
                Dim mx As String = dr("max")
                Dim p12 As String = dr("per")

                board_12.Text = brd12
                state_12.Text = st12
                inst.Text = ins
                medium.Text = med
                pass_yr.Text = pyr
                reg_no.Text = rno

                sub1.Text = s1
                sub2.Text = s2
                sub3.Text = s3
                sub4.Text = s4
                sub5.Text = s5
                sub6.Text = s6

                mo1.Text = m1
                mo2.Text = m2
                mo3.Text = m3
                mo4.Text = m4
                mo5.Text = m5
                mo6.Text = m6

                tm1.Text = t1
                tm2.Text = t2
                tm3.Text = t3
                tm4.Text = t4
                tm5.Text = t5
                tm6.Text = t6

                tm.Text = ttl
                mm.Text = mx
                per12.Text = p12

                con.Close()


                'STUDENT DETAILS

                Dim nm As String
                Dim dtob As String
                Dim mail As String
                Dim ph As String
                Dim sta As Integer
                Dim sta_txt As String

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from form1 where id = '" + sid + "'"
                dr = cmd.ExecuteReader

                dr.Read()
                nm = dr("name")
                dtob = dr("dob")
                mail = dr("email")
                ph = dr("phone")
                sta = dr("app_status")
                If sta = 0 Then
                    sta_txt = "Application Pending"
                Else
                    sta_txt = "Selected"
                End If

                name.Text = nm
                dob.Text = dtob
                email.Text = mail
                phone.Text = ph
                status.Text = sta_txt

                con.Close()

                'COURSE DETAILS
                Dim ccat As String
                Dim crs As String
                Dim dpt As String
                Dim add As String

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from course_det where id = '" + sid + "'"
                dr = cmd.ExecuteReader

                dr.Read()

                ccat = dr("cat")
                dpt = dr("department")
                crs = dr("course")
                add = dr("add_lang")

                con.Close()

                category.Text = ccat
                course.Text = crs
                dept.Text = dpt
                add_lang.Text = add

                'PERSONAL DETAILS
                Dim bt As String
                Dim bs As String
                Dim padd As String
                Dim cadd As String
                Dim l1 As String
                Dim l2 As String
                Dim l3 As String
                Dim l4 As String
                Dim l5 As String

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from per_det where id = '" + sid + "'"
                dr = cmd.ExecuteReader
                dr.Read()

                bt = dr("btown")
                bs = dr("bstate")
                padd = dr("peradd")
                cadd = dr("curadd")
                l1 = dr("lang1")
                l2 = dr("lang2")
                l3 = dr("lang3")
                l4 = dr("lang4")
                l5 = dr("lang5")

                brt.Text = bt
                brs.Text = bs
                per_add.Text = padd
                curr_add.Text = cadd
                lang1.Text = l1
                lang2.Text = l2
                lang3.Text = l3
                lang4.Text = l4
                lang5.Text = l5
                con.Close()


                'EDUCATION 10TH

                Dim tot As String
                Dim m As String
                Dim pr As String
                Dim psyr As String
                Dim brd As String
                Dim st As String

                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

                cmd.CommandText = "Select * from edu_10 where id = '" + sid + "'"
                dr = cmd.ExecuteReader
                dr.Read()

                tot = dr("total_m")
                m = dr("max")
                pr = dr("per")
                psyr = dr("pass_year")
                brd = dr("board")
                st = dr("state")

                total.Text = tot
                max.Text = m
                per.Text = pr
                pass_year.Text = psyr
                board_10.Text = brd
                state_10.Text = st

                con.Close()

            Catch

                Response.Redirect("no_work.html")

            End Try
        End If
    End Sub

    Protected Sub rem_Click(sender As Object, e As EventArgs) Handles [rem].Click
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE form1 set app_status = 1 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE edu_12 set status = 1 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        approve_mail(sid)

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Approved');", True)
        Response.Redirect("admin.aspx")
    End Sub

    Protected Sub add_Click(sender As Object, e As EventArgs) Handles add.Click
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE form1 set app_status = 2 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "UPDATE edu_12 set status = 2 where id= '" + sid + "'"
        dr = cmd.ExecuteReader
        con.Close()

        reject_mail(sid)


        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Approved');", True)
        Response.Redirect("admin.aspx")
    End Sub

    Public Sub reject_mail(ByRef id As String)
        Dim name As String
        Dim mail As String

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
            e_mail.Subject = "Application Rejected | Kristu Jayanti College"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    <p>Dear Applicant, <br>
                                    We are writing you to inform you that, unfortunately, we are not able to offer you admission to our University. We received a record number of applications this year, and admission decisions were very difficult, as there were many incredible candidates.
                                    <br>
                                    Furthermore, we would like to take this time to acknowledge your accomplishments and the time you spent during this application process. We understand that you might be frustrated during this time.
                                    <br>
                                    Although this decision is disappointing, it is important to remember that your hard work and dedication will take you as far as you want to go.
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
            e_mail.Subject = "Call letter for Counselling | Kristu Jayanti College (Autonomous), Bengaluru"
            e_mail.IsBodyHtml = True
            e_mail.Body = "<html>
                                <body>
                                    Dear Applicant,
                                    <br>
                                    Thank you for applying online at Kristu Jayanti College, Autonomous, Bengaluru.
                                    <br>
                                    You are requested to attend the Personal Interview scheduled in the College Campus.
                                    <br>
                                    Kindly report with all the available original documents published for the qualifying examinations. Result awaiting candidates can bring their 10th and 11th std marks cards. 
                                    <br>
                                    Venue: Kristu Jayanti College Campus, Bangalore                                    <br>
                                    Reporting Time: 8.45 am                                    <br>
                                    Dress Code: Formal
                                    <br>
                                    Applicants selected in the counseling must submit the original marks card of class 10, class 11 and result sheet of class 12 (If results already declared) along with the first year fee before the reporting date (Payment Mode Demand Draft (DD) only (in favour of 'Principal, Kristu Jayanti College', payable at Bengaluru). The reporting date will be informed to you on the day of the interview.
                                    <br>
                                    Note: This Counseling / Interview invitation is not valid if the applicant has attended an earlier counseling or already met the admission officer on this regard.
                                    <br>
                                    Accommodation / Rooms for out station candidates who are attending the counselling is available on chargeable basis. Contact the college office for more details at 9449451111.
                                    <br>
                                    All the Best.
                                    <br><b>
                                    Admission Officer<br>
                                    Kristu Jayanti College<br>
                                    Bangalore-560077 </b>
                                    <br><br><br>
                                    To Reach Kristu Jayanti College, Bengaluru:
                                    <br>
                                    From Majestic BMTC Bus Stand – Platform 19 : Bus Route – 292B, 292C<br>
                                    From K.R. Market : Bus Route – 292, 292D, 293C<br>
                                    From Vasanth Nagar/Cantonment Station/Bangalore East Station : Bus Route – 292, 292B, 292C, 292D, 292F, 293C<br>
                                    Nearest Railway Station : Bangalore East (8 kms)/Cantonment (10 kms)<br>
                                    By Air : Bengaluru International Airport (28 kms)<br>
                                </body>
                                </html>"

            Smtp_Server.Send(e_mail)

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
    End Sub
End Class

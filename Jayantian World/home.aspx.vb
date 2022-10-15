Imports System.Data.SqlClient
Public Class home
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
        ElseIf Session("stage") = 3 Then
            Response.Redirect("educational_12.aspx")
        ElseIf Session("stage") = 5 Then
            Response.Redirect("student_main.html")
        Else
            Dim id As String = Session("id")
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            'STUDENT DETAILS

            Dim nm As String
            Dim dtob As String
            Dim mail As String
            Dim ph As String
            Dim sta As Integer
            Dim sta_txt As String

            cmd.CommandText = "Select * from form1 where id = '" + id + "'"
            dr = cmd.ExecuteReader

            dr.Read()
            nm = dr("name")
            dtob = dr("dob")
            mail = dr("email")
            ph = dr("phone")
            sta = dr("app_status")
            If sta = 0 Then
                sta_txt = "Application Pending"
            ElseIf sta = 2 Then
                sta_txt = "Application Rejected"
            Else
                sta_txt = "Approved"
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

            cmd.CommandText = "Select * from course_det where id = '" + id + "'"
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

            cmd.CommandText = "Select * from per_det where id = '" + id + "'"
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

            cmd.CommandText = "Select * from edu_10 where id = '" + id + "'"
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

            'EDUCATION 12TH


            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            cmd.CommandText = "Select * from edu_12 where id = '" + id + "'"
            dr = cmd.ExecuteReader
            dr.Read()

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

        End If
    End Sub

End Class
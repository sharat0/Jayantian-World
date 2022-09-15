Imports System.Data.SqlClient
Public Class personal_details
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")
        Else

            Dim id As String = Session("id")
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            'ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert(' " + id + " ');", True)
            Dim ccat As String
            Dim nm As String
            Dim dtob As String
            Dim mail As String
            Dim ph As String

            cmd.CommandText = "Select * from form1 where id = '" + id + "'"
            dr = cmd.ExecuteReader

            dr.Read()
            ccat = dr("programme")
            nm = dr("name")
            dtob = dr("dob")
            mail = dr("email")
            ph = dr("phone")

            cat.Text = ccat
            name.Text = nm
            dob.Text = dtob
            email.Text = mail
            num.Text = ph
            con.Close()

        End If
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click

        Dim id As String = Session("id")
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        'COURSE DETAILS
        Dim ccat As String = cat.Text
        Dim course As String = courses.SelectedValue
        Dim addlang As String = add_langs.SelectedValue
        Dim dept As String

        cmd.CommandText = "Select dept from programme where course='" + course + "'"
        dr = cmd.ExecuteReader
        dr.Read()
        dept = dr("dept")
        con.Close()


        'persoal details
        Dim gend As String = gender.SelectedValue

        If gender.SelectedValue = "'" Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Please select a gender');", True)
        ElseIf gender.SelectedValue = "male" Then
            gend = "male"
        ElseIf gender.SelectedValue = "female" Then
            gend = "female"
        Else
            gend = "other"
        End If

        Dim brtown As String = Request.Form("btown")
        Dim brstate As String = Request.Form("bstate")
        Dim peradd As String = Request.Form("per-add")
        Dim curadd As String = Request.Form("cur-add")
        Dim lang1 As String = Request.Form("lang1")
        Dim lang2 As String = Request.Form("lang2")
        Dim lang3 As String = Request.Form("lang3")
        Dim lang4 As String = Request.Form("lang4")
        Dim lang5 As String = Request.Form("lang5")


        'FAMILY DETAILS

        Dim fname As String = Request.Form("fname")
        Dim mname As String = Request.Form("mname")
        Dim locgurd As String = Request.Form("loc-gur")
        Dim annincome As String = Request.Form("income")


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "insert into course_det (id, cat, department, course, add_lang) values ('" + id + "', '" + ccat + "','" + dept + "' , '" + course + "', '" + addlang + "')"
        cmd.ExecuteNonQuery()
        con.Close()


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        'cmd.CommandText = "insert into per_det (Id, gender, btown, bstate, peradd, curadd, lang1, lang2, lang3, lang4, lang5) values ('" + id + "', '" + gend + "','" + brtown + "' , '" + brstate + "', '" + peradd + "', '" + curadd + "', '" + lang1 + "', '" + lang2 + "', '" + lang3 + "', '" + lang4 + "', '" + lang5 + "')"
        cmd.CommandText = "insert into per_det (Id, gender, btown, bstate, peradd, curadd, lang1, lang2, lang3, lang4, lang5) values (@id, @gender, @btown, @bstate, @peradd, @curadd, @lang1, @lang2, @lang3, @lang4, @lang5)"
        cmd.Parameters.Add("@id", SqlDbType.Int).Value = id
        cmd.Parameters.Add("@gender", SqlDbType.VarChar).Value = gend
        cmd.Parameters.Add("@btown", SqlDbType.VarChar).Value = brtown
        cmd.Parameters.Add("@bstate", SqlDbType.VarChar).Value = brstate
        cmd.Parameters.Add("@peradd", SqlDbType.VarChar).Value = peradd
        cmd.Parameters.Add("@curadd", SqlDbType.VarChar).Value = curadd
        cmd.Parameters.Add("@lang1", SqlDbType.VarChar).Value = lang1
        cmd.Parameters.Add("@lang2", SqlDbType.VarChar).Value = lang2
        cmd.Parameters.Add("@lang3", SqlDbType.VarChar).Value = lang3
        cmd.Parameters.Add("@lang4", SqlDbType.VarChar).Value = lang4
        cmd.Parameters.Add("@lang5", SqlDbType.VarChar).Value = lang5
        cmd.ExecuteNonQuery()

        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert(' Data updated successfully ');", True)
        con.Close()
        Response.Redirect("educational.aspx")

    End Sub
End Class
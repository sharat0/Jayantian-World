Imports System.Data.SqlClient
Public Class id_card
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") Is Nothing Then
            Response.Redirect("login.aspx")
        Else
            Dim id As String = Session("id")
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Select * from form1 where id = '" + id + "'"
            dr = cmd.ExecuteReader
            dr.Read()
            name.Text = dr("name")
            batch.Text = "2022-2025"
            course.Text = dr("programme")
            department.Text = dr("type")
            rno.Text = Session("regno")
            mobile.Text = dr("phone")
            dob.Text = dr("dob")


            con.Close()

            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Select * from per_det where id = '" + id + "'"
            dr = cmd.ExecuteReader
            dr.Read()
            address.Text = dr("peradd")


        End If

    End Sub

End Class
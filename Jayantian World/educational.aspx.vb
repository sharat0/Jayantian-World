Imports System.Data.SqlClient
Public Class educational
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")
        ElseIf Session("stage") = 1 Then
            Response.Redirect("personal_details.aspx")
        ElseIf Session("stage") = 3 Then
            Response.Redirect("educational_12.aspx")
        ElseIf Session("stage") = 4 Then
            Response.Redirect("home.aspx")
        ElseIf Session("stage") = 5 Then
            Response.Redirect("student_main.html")
        End If
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click

        Dim id As String = Session("id")

        Dim total As String = Request.Form("marks_scored")
        Dim max As String = Request.Form("max_marks")
        Dim percent As String = Request.Form("percentage")
        Dim pass As String = Request.Form("pass_year")
        Dim board As String = boards.SelectedValue

        Dim state As String = Request.Form("state")


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con


        cmd.CommandText = "Insert into edu_10(id, total_m,max,per, pass_year, board,state) values('" + id + "', '" + total + "', '" + max + "', '" + percent + "', '" + pass + "', '" + board + "', '" + state + "')"
        cmd.ExecuteNonQuery()
        con.Close()
        Session("stage") = 3
        Response.Redirect("educational_12.aspx")


    End Sub
End Class
Imports System.IO
Imports System.Data
Imports System.Configuration
Imports System.Data.SqlClient
Public Class visitor_id
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("visitor_id") Is Nothing Then
            Response.Redirect("visitor.aspx")
        Else
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con
            cmd.CommandText = "Select * from visitor where uid = '" + Session("visitor_id") + "'"
            dr = cmd.ExecuteReader
            dr.Read()
            name.Text = dr("name")
            mail.Text = dr("email")
            mobile.Text = dr("phone")
            uid.Text = dr("uid")
            valid.Text = dr("dt")
            con.Close()

        End If

    End Sub




End Class
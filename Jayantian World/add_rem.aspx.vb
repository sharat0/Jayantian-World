Imports System.Data.SqlClient
Public Class add_rem
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub rem_Click(sender As Object, e As EventArgs) Handles [rem].Click

        Dim usr As String = Request.Form("uname")

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "Select * from login where uid= '" + usr + "'"
        dr = cmd.ExecuteReader()
        Try
            If dr.Read() Then
                con.Close()
                con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con
                cmd.CommandText = "DELETE from login where uid= '" + usr + "'"
                cmd.ExecuteNonQuery()
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('User Removed Successdully!');", True)
            End If

        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No data found!');", True)
        End Try
    End Sub


    Protected Sub add_Click(sender As Object, e As EventArgs) Handles add.Click
        Dim usr As String = Request.Form("uname")
        Dim pas As String = Request.Form("pass")
        Dim cpas As String = Request.Form("cpass")
        Dim brnch As String = branch.SelectedValue

        If pas <> cpas Then
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Password and confirm password doesnot match');", True)
        Else
            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
            con.Open()
            cmd.Connection = con

            cmd.CommandText = "INSERT into login (uid, pass, type, branch) values('" + usr + "','" + cpas + "', 1, '" + brnch + "')"
            cmd.ExecuteNonQuery()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Admin Added Successfully!');", True)
            con.Close()
        End If

    End Sub
End Class
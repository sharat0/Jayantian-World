Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class login
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim cmd2 As New SqlCommand
    Dim cmd3 As New SqlCommand
    Dim dr As SqlDataReader
    Dim dr2 As SqlDataReader
    Dim dr3 As SqlDataReader

    Protected Sub submit_Click(sender As Object, e As EventArgs) Handles submit.Click

        Dim id As String = Request.Form("id")
        Dim pass As String = Request.Form("pass")

        Dim dbid As String
        Dim dbpass As String
        Dim uid As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con

        cmd.CommandText = "Select * from login where uid = '" + id + "'"
        dr = cmd.ExecuteReader



        Try
            dr.Read()
            uid = dr("id")
            dbid = dr("uid")
            dbpass = dr("pass")
            If String.Compare(dbid, id) = 0 And String.Compare(dbpass, pass) = 0 Then
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Login Successful');", True)
                Session("id") = uid
                Try
                    'IF STUDENT HAVE ALREADY FILLED 10TH DETAILS THEN 

                    'ADD MORE CODE HERE

                    cmd3.CommandText = "Select * from edu_10 where id= '" + id + "'"
                    dr3 = cmd.ExecuteReader
                    dr3.Read()

                Catch ex As Exception

                    'IF STUDENT HAVE ALREADY FILLED PERSONAL DETAILS THEN REDIRECT TO EDUCATIONAL DETAILS (10TH)
                    Try
                        cmd2.CommandText = "Select * from per_det where id= '" + id + "'"
                        dr2 = cmd.ExecuteReader
                        dr2.Read()
                        Response.Redirect("educational.aspx", True)
                    Catch ex2 As Exception
                        'IF STUDENT HAVE NOT FILLED ANYTHING THEN REDIRECT TO PERSONAL DETAILS FORM
                        Response.Redirect("personal_details.aspx", True)

                    End Try

                End Try


            Else
                ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert(' Invalid Login ');", True)
            End If
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('No data found');", True)
        End Try

    End Sub
End Class
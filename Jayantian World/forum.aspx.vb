Imports System.Data
Imports System.Text
Imports System.Configuration
Imports System.Data.SqlClient
Public Class forum
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")

        Else
            If Not Me.IsPostBack Then

                Dim dt As DataTable = Me.GetData()
                'Building an HTML string.
                Dim html As New StringBuilder()

                html.Append("<table id='table-data'>")


                'Building the Data rows.
                For Each row As DataRow In dt.Rows
                    html.Append("<tr>")
                    For Each column As DataColumn In dt.Columns
                        html.Append("<td>")
                        html.Append(row(column.ColumnName))
                        html.Append("</td>")
                    Next
                    html.Append("</tr>")

                Next

                'Table end.
                html.Append("</table>")


                'Append the HTML string to Placeholder.
                PlaceHolder1.Controls.Add(New Literal() With {
            .Text = html.ToString()
        })
            End If
        End If
    End Sub

    Private Function GetData() As DataTable
        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        Dim branch As String = Session("branch")
        Try
            Using cmd As New SqlCommand("SELECT name, msg FROM forum")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using

        Catch ex As Exception

        End Try
        ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Be the first oe to start a discussion!');", True)
    End Function

    Protected Sub send_Click(sender As Object, e As EventArgs) Handles send.Click
        Dim id As String = Session("id")
        Dim msg As String = Request.Form("message")
        Dim name As String

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        cmd.CommandText = "SELECT * from form1 where id= '" + id + "'"
        dr = cmd.ExecuteReader
        dr.Read()
        name = dr("name")
        con.Close()

        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con
        Try
            cmd.CommandText = "INSERT into forum (sid, name, msg) values('" + id + "', '" + name + "', '" + msg + "')"
            cmd.ExecuteNonQuery()
            con.Close()
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Message Sent Successfully!');", True)
            Response.Redirect("forum.aspx")
        Catch ex As Exception
            ClientScript.RegisterStartupScript(Me.GetType(), "alert", "alert('Technicl Error! Message not sent.');", True)
        End Try
    End Sub

End Class
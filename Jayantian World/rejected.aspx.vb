Imports System.Data
Imports System.Text
Imports System.Configuration
Imports System.Data.SqlClient
Public Class admin
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim type As String
        If Session("id") = Nothing Then
            Response.Redirect("login.aspx")
        ElseIf Session("adm") = Nothing Then
            Response.Redirect("forbidden.html")
        ElseIf Session("branch") = Nothing Then
            Response.Redirect("forbidden.html")

        Else
            type = Session("branch")
            If Not Me.IsPostBack Then
                'Populating a DataTable from database.
                Dim dt As DataTable = Me.GetData()

                'Building an HTML string.
                Dim html As New StringBuilder()

                'Table start.
                html.Append("<table border = '1' id='table-data'>")

                'Building the Header row.
                html.Append("<tr>")
                For Each column As DataColumn In dt.Columns
                    html.Append("<th>")
                    html.Append(column.ColumnName)
                    html.Append("</th>")
                Next
                html.Append("</tr>")

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
        If branch = "admin" Then
            Try
                Using cmd As New SqlCommand("SELECT id, name, type, programme FROM form1 where app_status='2'")
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
                Response.Redirect("no_data.html")
            End Try
        Else
            Try

                Using cmd As New SqlCommand("SELECT id, name, type, programme FROM form1 where type= '" + branch + "' and app_status=2")
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
                Response.Redirect("no_form.html")
            End Try

        End If
    End Function

End Class
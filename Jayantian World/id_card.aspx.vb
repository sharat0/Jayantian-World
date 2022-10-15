Imports System.IO
Imports System.Data
Imports System.Configuration
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
            con.Close()


            con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
                con.Open()
                cmd.Connection = con

            Using sda As SqlDataAdapter = New SqlDataAdapter("SELECT * FROM Files where ID='" + id + "'", con)
                    Dim dt As DataTable = New DataTable()
                    sda.Fill(dt)

                    gvImages.DataSource = dt
                    gvImages.DataBind()
                End Using
                con.Close()

        End If

    End Sub

    'Protected Sub Upload(ByVal sender As Object, ByVal e As EventArgs)
    '    'Extract Image File Name.
    '    Dim fileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)

    '    'Set the Image File Path.
    '    Dim filePath As String = "~/Uploads/" & fileName

    '    'Save the Image File in Folder.
    '    FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath))

    '    con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
    '    con.Open()
    '    cmd.Connection = con
    '    Try
    '        Dim sql As String = "INSERT INTO Files VALUES(@id, @Name, @Path)"
    '        cmd.Parameters.Add("@id", SqlDbType.Int).Value = Session("id")
    '        cmd.Parameters.AddWithValue("@Name", fileName)
    '        cmd.Parameters.AddWithValue("@Path", filePath)

    '        cmd.ExecuteNonQuery()

    '    Catch ex As Exception
    '        Dim sql As String = "UPDATE Files SET(Name, Path) VALUES(@id, @Name, @Path) where Id='" + Session("id") + "'"
    '        cmd.Parameters.AddWithValue("@Name", fileName)
    '        cmd.Parameters.AddWithValue("@Path", filePath)

    '        cmd.ExecuteNonQuery()
    '        Using cmd As SqlCommand = New SqlCommand(sql, con)
    '            con.Close()
    '        End Using
    '    End Try

    '    Response.Redirect(Request.Url.AbsoluteUri)
    'End Sub


    Protected Sub Upload(ByVal sender As Object, ByVal e As EventArgs)
        'Extract Image File Name.
        Dim fileName As String = Path.GetFileName(FileUpload1.PostedFile.FileName)

        'Set the Image File Path.
        Dim filePath As String = "~/Uploads/" & fileName

        'Save the Image File in Folder.
        FileUpload1.PostedFile.SaveAs(Server.MapPath(filePath))


        con.ConnectionString = "Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\anony\source\repos\Jayantian World\Jayantian World\App_Data\Jayantian.mdf;Integrated Security=True"
        con.Open()
        cmd.Connection = con

        Try
            Dim sql As String = "INSERT INTO Files VALUES(@id, @Name, @Path)"
            Using cmd As SqlCommand = New SqlCommand(sql, con)
                cmd.Parameters.Add("@id", SqlDbType.Int).Value = Session("id")
                cmd.Parameters.AddWithValue("@Name", fileName)
                cmd.Parameters.AddWithValue("@Path", filePath)
                cmd.ExecuteNonQuery()

                con.Close()
            End Using
        Catch ex As Exception
            Dim sql As String = "UPDATE Files SET Path = @Path where Id='" + Session("id") + "'"
            Using cmd As SqlCommand = New SqlCommand(sql, con)
                cmd.Parameters.AddWithValue("@Name", fileName)
                cmd.Parameters.AddWithValue("@Path", filePath)
                cmd.ExecuteNonQuery()

                con.Close()
            End Using
        End Try

        Response.Redirect(Request.Url.AbsoluteUri)
    End Sub
End Class
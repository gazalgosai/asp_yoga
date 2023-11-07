Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System
Imports System.Web.UI.WebControls
Imports System.IO

Partial Class admin_frm_admin_page
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\visual_studioptoject\tybca_asp\App_Data\admin.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("cons").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter


    'page load and display record 
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con

        Catch ex As Exception
            lblcourse.Text = ex.Message
        End Try
        If IsPostBack = False Then
            DisplayRecord()
        End If
    End Sub
    Sub clearControl()
        txtcname.Text = ""
        txtdesc.Text = ""
        txtcp.Text = ""

    End Sub
    Sub DisplayRecord()
        Try
            cmd.CommandText = "select * from ctbl"
            da = New SqlDataAdapter(cmd)
            dt = New DataTable
            da.Fill(dt)
            coursegv.DataSource = dt
            Me.DataBind()
            coursegv.DataBind()
        Catch ex As Exception
            ' MsgBox(ex.ToString)
        End Try
    End Sub




    'insert code
    Protected Sub btnsave_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsave.Click
        Try
            'iamge insert
            Dim f1 As String = Server.MapPath("~/Images/")   'The MapPath method is used to define a relative virtual path for a physical directory on the server.
            Dim a As String = ""
            If Not Directory.Exists(f1) Then
                Directory.CreateDirectory(f1)
            End If
            If FileUpload1.HasFile Then
                FileUpload1.SaveAs(f1 & Path.GetFileName(FileUpload1.FileName))
                a = "~/Images/" & Path.GetFileName(FileUpload1.FileName)
                'Label1.Text = "File Uploaded Successfully"
            End If


            'data insert
            cmd.CommandText = "insert into ctbl values('" & txtcname.Text & "','" & txtdesc.Text & "','" & txtcp.Text & "','" & a & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            lblcourse.Text = "Record Inserted Successfully"
            DisplayRecord()
            clearControl()
            con.Close()
        Catch ex As Exception
            'MsgBox(ex.ToString)
        End Try
    End Sub



    Protected Sub coursegv_RowCancelingEdit(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewCancelEditEventArgs) Handles coursegv.RowCancelingEdit
        coursegv.EditIndex = -1
        DisplayRecord()

    End Sub


    Protected Sub coursegv_RowEditing(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewEditEventArgs) Handles coursegv.RowEditing
        coursegv.EditIndex = e.NewEditIndex
        DisplayRecord()

    End Sub

    Protected Sub coursegv_RowDeleting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewDeleteEventArgs) Handles coursegv.RowDeleting
        Try
            Dim vid As String = coursegv.DataKeys(e.RowIndex).Value
            ' Dim vimage As String = coursegv.DataKeys(e.RowIndex).Values("cimg").ToString()
            ' lblcourse.Text = vimage
            cmd.CommandText = "delete from ctbl where cid='" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblcourse.Text = "Record Deleted Successfully"
            DisplayRecord()
            'Dim fileexist As String = Server.MapPath(vimage)
            'MsgBox(fileexist)
            'Delete image from folder
            'If File.Exists(fileexist) Then
            'File.Delete(fileexist)
            'End If

        Catch ex As Exception
            lblcourse.Text = ex.Message
        End Try

    End Sub

    Protected Sub coursegv_RowUpdating(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewUpdateEventArgs) Handles coursegv.RowUpdating
        Try
            Dim cname, cdesc, cprice As New TextBox
            Dim vid As String = coursegv.DataKeys(e.RowIndex).Value
            cname = coursegv.Rows(e.RowIndex).Cells(2).Controls(0)
            cdesc = coursegv.Rows(e.RowIndex).Cells(3).Controls(0)
            cprice = coursegv.Rows(e.RowIndex).Cells(4).Controls(0)

            cmd.CommandText = "update ctbl set cname='" & cname.Text & "', cdesc='" & cdesc.Text & "', cprice='" + cprice.Text + "' where cid='" & vid & "'"
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            lblcourse.Text = "Record is updated"
            coursegv.EditIndex = -1
            DisplayRecord()
        Catch ex As Exception
            ' MsgBox(ex.Message)
        End Try

    End Sub


End Class

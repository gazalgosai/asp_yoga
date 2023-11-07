Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System

Partial Class User_frm_class
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\visual_studioptoject\tybca_asp\App_Data\admin.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("cons").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con
            lblname.Text = "Welcome " & Session("uname").ToString & "    Select Your faviourate Courses"
        Catch ex As Exception
            lblclass.Text = ex.Message
        End Try
        If IsPostBack = False Then
            DisplayRecord()
        End If
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


    Protected Sub coursegv_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles coursegv.SelectedIndexChanged

    End Sub
End Class

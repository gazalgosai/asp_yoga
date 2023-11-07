
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System

Partial Class admin_frm_admin_login
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\visual_studioptoject\tybca_asp\App_Data\admin.mdf;Integrated Security=True;User Instance=True"
    Dim cons As New SqlConnection(WebConfigurationManager.ConnectionStrings("cons").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            If txtuser.Text = "admin" AndAlso txtpwd.Text = "123" Then
                Response.Redirect("~/admin/frm_admin_page.aspx")
            Else
                Label3.Text = "Pease Enter Right Value"
            End If
        Catch ex As Exception
            Label3.Text = ex.Message
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = cons
        Catch ex As Exception
            Label3.Text = ex.Message
        End Try

    End Sub
End Class

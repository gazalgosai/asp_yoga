Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System
Imports System.Web.UI.WebControls
Partial Class User_frm_user_login
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\visual_studioptoject\tybca_asp\App_Data\admin.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("cons").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter
    Dim dr As SqlDataReader

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con

        Catch ex As Exception
            Label3.Text = ex.Message
        End Try
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Session("uname") = txtuser.Text
        Try
            cmd.CommandText = "select * from usertbl where uname= '" & txtuser.Text & "' and upwd= '" & txtpwd.Text & "' "
            con.Open()
            dr = cmd.ExecuteReader()
            If dr.HasRows = True Then
                Response.Redirect("~/User/frm_class.aspx")
            End If


        Catch ex As Exception
            Label3.Text = ex.Message
        End Try
    End Sub
End Class

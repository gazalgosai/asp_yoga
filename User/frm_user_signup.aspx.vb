Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System
Imports System.Web.UI.WebControls
Partial Class User_frm_user_signup
    Inherits System.Web.UI.Page
    Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=D:\visual_studioptoject\tybca_asp\App_Data\admin.mdf;Integrated Security=True;User Instance=True"
    Dim con As New SqlConnection(WebConfigurationManager.ConnectionStrings("cons").ToString)
    Dim cmd As New SqlCommand
    Dim dt As DataTable
    Dim da As SqlDataAdapter



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            cmd.Connection = con

        Catch ex As Exception
            Label3.Text = ex.Message
        End Try
    End Sub

   
    Protected Sub btnsignup_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsignup.Click
        Try
            cmd.CommandText = "insert into usertbl values('" & txtuser.Text & "','" & txtage.Text & "','" & txtphone.Text & "','" & txtpwd.Text & "')"
            con.Open()
            cmd.ExecuteNonQuery()
            Label3.Text = "Record Inserted Successfully"
            con.Close()
            Response.Redirect("~/User/frm_home_page.aspx")
        Catch ex As Exception
            'MsgBox(ex.ToString)
        End Try
    End Sub
End Class

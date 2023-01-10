
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub WordListBox_SelectedIndexChanged(sender As Object, e As System.EventArgs) Handles WordListBox.SelectedIndexChanged
        On Error Resume Next
        MeaningImageBox.ImageUrl = "~/DicMeaning/" & WordListBox.SelectedItem.Text & ".gif"
        PicImageBox.ImageUrl = "~/DicPicture/" & WordListBox.SelectedItem.Text & ".jpg"
    End Sub

   
    Protected Sub Search_Click(sender As Object, e As System.EventArgs) Handles Search.Click
        On Error Resume Next
        MeaningImageBox.ImageUrl = "~/DicMeaning/" & SearchTextBox.Text & ".gif"
        PicImageBox.ImageUrl = "~/DicPicture/" & SearchTextBox.Text & ".jpg"
        WordListBox.SelectedValue = Nothing
    End Sub

    Protected Sub SearchTextBox_TextChanged(sender As Object, e As System.EventArgs) Handles SearchTextBox.TextChanged
        On Error Resume Next
        MeaningImageBox.ImageUrl = "~/DicMeaning/" & SearchTextBox.Text & ".gif"
        PicImageBox.ImageUrl = "~/DicPicture/" & SearchTextBox.Text & ".jpg"

    End Sub
End Class

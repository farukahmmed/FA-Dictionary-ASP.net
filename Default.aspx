<%@ Page Title="F.A. E-DICTIONARY" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v12.1, Version=12.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h2>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <br />
           
            <dx:ASPxSplitter ID="ASPxSplitter1" runat="server" Height="95%" PaneMinSize="350px" 
                ShowSeparatorImage="False" Theme="Default" Width="100%">
                <panes>
                    <dx:SplitterPane AutoWidth="True" MaxSize="350px" MinSize="350px">
                        <ContentCollection>
                            <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                                <asp:TextBox ID="SearchTextBox" runat="server" 
                                    style="margin-left: 10px; margin-top: 10px;" Width="220px">a</asp:TextBox>
                                <asp:Button ID="Search" runat="server" style="margin-left: 17px" 
                                    Text="Search" />
                                <br />
                                <asp:ListBox ID="WordListBox" runat="server" AutoPostBack="True" 
                                    DataSourceID="AccessDataSource1" DataTextField="WORDS" DataValueField="WORDS" 
                                    Height="335px" style="margin-left: 10px; margin-top: 12px;" Width="225px">
                                </asp:ListBox>
                                <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
                                    DataFile="~/App_Data/fa_dic_db.accdb" 
                                    
                                    SelectCommand="SELECT [WORDS] FROM [WORDS] WHERE (([WORDS] = ?) or ([WORDS] LIKE  ? + '%'))">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="SearchTextBox" Name="WORDS" 
                                            PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="SearchTextBox" Name="WORDS2" 
                                            PropertyName="Text" Type="String" />
                                    </SelectParameters>
                                </asp:AccessDataSource>
                                <br />
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                    <dx:SplitterPane AutoHeight="True" MinSize="350px">
                        <ContentCollection>
                            <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                                <asp:Image ID="MeaningImageBox" runat="server" 
                                    style="margin-left: 15px; margin-top: 15px;" 
                                    ImageUrl="~/fa_dictionary.jpg" BorderStyle="None" />
                                <br />
                                <asp:Image ID="PicImageBox" runat="server" 
                                    style="margin-left: 15px; margin-top: 15px;" BorderStyle="None" />
                            </dx:SplitterContentControl>
                        </ContentCollection>
                    </dx:SplitterPane>
                </panes>
            </dx:ASPxSplitter>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Content>
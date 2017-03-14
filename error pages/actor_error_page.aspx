<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="actor_error_page.aspx.cs" Inherits="actor_error_page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Please verify the ACTOR DATA because at least one entry IS VALID !  </p>
    <p>
        <asp:Image ID="Image1" runat="server" Height="456px" Width="872px" 
            ImageUrl="~/error pages/actorerrorimage.jpg" style="text-align: center" />
        
         
    </p>

</asp:Content>


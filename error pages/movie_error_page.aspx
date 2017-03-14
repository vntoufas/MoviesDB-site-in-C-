<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="movie_error_page.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

        <p>Please verify the MOVIE DATA because at least one entry IS VALID !  </p>
        
        <br />
       <p> <asp:Image ID="Image1" runat="server" Height="456px" 
            ImageUrl="~/error pages/actorerrorimage.jpg" Width="872px" />
    </p>
</asp:Content>


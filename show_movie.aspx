<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="show_movie.aspx.cs" Inherits="show_movie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    Choose the actor whose movies information you want to see :<br />
&nbsp;&nbsp;&nbsp; <br />
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
    DataSourceID="SqlDataSource2" DataTextField="ACTOR" DataValueField="actor_id" 
    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
</asp:DropDownList>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
    ConnectionString="<%$ ConnectionStrings:askisi2ConnectionString %>" 
    SelectCommand="SELECT [actor_id], [name]+' '+[surename] as ACTOR FROM [actor]">
</asp:SqlDataSource>
<br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:askisi2ConnectionString %>" 
    
    SelectCommand="SELECT * FROM [movie] WHERE ([Main_Actor_ID] = @Main_Actor_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Main_Actor_ID" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Movie_ID" DataSourceID="SqlDataSource1" AllowSorting="True" 
    onselectedindexchanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" ReadOnly="True" 
            SortExpression="Movie_ID" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Publish_Studio_ID" HeaderText="Publish_Studio_ID" 
            SortExpression="Publish_Studio_ID" />
        <asp:BoundField DataField="Date_Published" HeaderText="Date_Published" 
            SortExpression="Date_Published" />
    </Columns>
</asp:GridView>
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
Emergency button
<br />
[If the results dont show up click the update button below :-) ]<br />
<asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Update" />
</asp:Content>


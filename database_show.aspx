<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="database_show.aspx.cs" Inherits="database_show" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:askisi2ConnectionString %>" 
    onselecting="SqlDataSource1_Selecting" 
    SelectCommand="SELECT * FROM [Actor]" 
        DeleteCommand="DELETE FROM [Actor] WHERE [Actor_ID] = @Actor_ID" 
        InsertCommand="INSERT INTO [Actor] ([Actor_ID], [Name], [Surename], [Brithdate]) VALUES (@Actor_ID, @Name, @Surename, @Brithdate)" 
        UpdateCommand="UPDATE [Actor] SET [Name] = @Name, [Surename] = @Surename, [Brithdate] = @Brithdate WHERE [Actor_ID] = @Actor_ID">
        <DeleteParameters>
            <asp:Parameter Name="Actor_ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Actor_ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surename" Type="String" />
            <asp:Parameter DbType="Date" Name="Brithdate" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Surename" Type="String" />
            <asp:Parameter DbType="Date" Name="Brithdate" />
            <asp:Parameter Name="Actor_ID" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="Actor_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="Actor_ID" HeaderText="Actor_ID" ReadOnly="True" 
            SortExpression="Actor_ID" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Surename" HeaderText="Surename" 
            SortExpression="Surename" />
        <asp:BoundField DataField="Brithdate" HeaderText="Brithdate" 
            SortExpression="Brithdate" />
    </Columns>
</asp:GridView>
</asp:Content>


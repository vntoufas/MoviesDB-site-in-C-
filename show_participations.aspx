<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="show_participations.aspx.cs" Inherits="show_participations" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style1
    {
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:askisi2ConnectionString %>" 
            DeleteCommand="DELETE FROM [Participation] WHERE [Participation_ID] = @Participation_ID" 
            InsertCommand="INSERT INTO [Participation] ([Participation_ID], [Movie_ID], [Actor_ID]) VALUES (@Participation_ID, @Movie_ID, @Actor_ID)" 
            SelectCommand="SELECT * FROM [Participation]" 
            UpdateCommand="UPDATE [Participation] SET [Movie_ID] = @Movie_ID, [Actor_ID] = @Actor_ID WHERE [Participation_ID] = @Participation_ID">
            <DeleteParameters>
                <asp:Parameter Name="Participation_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Participation_ID" Type="Int32" />
                <asp:Parameter Name="Movie_ID" Type="Int32" />
                <asp:Parameter Name="Actor_ID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Movie_ID" Type="Int32" />
                <asp:Parameter Name="Actor_ID" Type="Int32" />
                <asp:Parameter Name="Participation_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="Participation_ID" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="Participation_ID" HeaderText="Participation_ID" 
                ReadOnly="True" SortExpression="Participation_ID" />
            <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" 
                SortExpression="Movie_ID" />
            <asp:BoundField DataField="Actor_ID" HeaderText="Actor_ID" 
                SortExpression="Actor_ID" />
        </Columns>
    </asp:GridView>
</p>
<p>
    <span class="style1">Enter the values for a new movie participation :</span><br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Label ID="Label1" runat="server" Text="movie id"></asp:Label>
</p>
<p>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:Label ID="Label2" runat="server" Text="actor id"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Insert new participation" 
        onclick="Button1_Click" />
</p>
</asp:Content>


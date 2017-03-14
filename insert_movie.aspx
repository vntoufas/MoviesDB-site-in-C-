<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="insert_movie.aspx.cs" Inherits="insert_movie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        Παρακαλώ εισάγετε τα στοιχεία της νέας ταινίας
        </p>
<p>
        <br />
        <asp:TextBox ID="TextBox1" runat="server">movie id</asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server">movie title</asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server">main actor id</asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox4" runat="server">publish studio</asp:TextBox>
    </p>
    <p>
        <asp:TextBox ID="TextBox5" runat="server">publish date</asp:TextBox>
    </p>
    <p>
        <asp:Button ID="insert" runat="server" onclick="insert_Click1" Text="insert" />
    </p>
<p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:askisi2ConnectionString %>" 
            DeleteCommand="DELETE FROM [movie] WHERE [Movie_ID] = @Movie_ID" 
            InsertCommand="INSERT INTO [movie] ([Movie_ID], [Title], [Main_Actor_ID], [Publish_Studio_ID], [Date_Published]) VALUES (@Movie_ID, @Title, @Main_Actor_ID, @Publish_Studio_ID, @Date_Published)" 
            SelectCommand="SELECT * FROM [movie]" 
            UpdateCommand="UPDATE [movie] SET [Title] = @Title, [Main_Actor_ID] = @Main_Actor_ID, [Publish_Studio_ID] = @Publish_Studio_ID, [Date_Published] = @Date_Published WHERE [Movie_ID] = @Movie_ID">
            <DeleteParameters>
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Movie_ID" Type="Int32" />
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Main_Actor_ID" Type="Int32" />
                <asp:Parameter Name="Publish_Studio_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_Published" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Title" Type="String" />
                <asp:Parameter Name="Main_Actor_ID" Type="Int32" />
                <asp:Parameter Name="Publish_Studio_ID" Type="String" />
                <asp:Parameter DbType="Date" Name="Date_Published" />
                <asp:Parameter Name="Movie_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
<p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Movie_ID" DataSourceID="SqlDataSource1" 
            o>
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Movie_ID" HeaderText="Movie_ID" ReadOnly="True" 
                    SortExpression="Movie_ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Main_Actor_ID" HeaderText="Main_Actor_ID" 
                    SortExpression="Main_Actor_ID" />
                <asp:BoundField DataField="Publish_Studio_ID" HeaderText="Publish_Studio_ID" 
                    SortExpression="Publish_Studio_ID" />
                <asp:BoundField DataField="Date_Published" HeaderText="Date_Published" 
                    SortExpression="Date_Published" />
            </Columns>
        </asp:GridView>
    </p>
</asp:Content>


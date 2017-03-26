<%@ Page Title="Database" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Database.aspx.cs" Inherits="DockerSampleWebApplication.Database" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <hr />
    <h4>Database Connection Test</h4>
    <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" Text="Choose Provider:"></asp:Label>
            <asp:DropDownList runat="server" AutoPostBack="true" ID="dbConnectionProvider" OnSelectedIndexChanged="dbConnectionProvider_SelectedIndexChanged">
                <asp:ListItem Selected="True" Text="MS SQL Server" Value="MSSQL"></asp:ListItem>
                <asp:ListItem Text="Postgres" Value="POSTGRES"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-8">
            <asp:Label runat="server" Text="Enter Connection String:"></asp:Label>
            <asp:TextBox runat="server" TextMode="SingleLine" Width="800px" Text="Data Source=190.190.200.100,1433;Network Library=DBMSSOCN;Initial Catalog=myDataBase;User ID=myUsername;Password=myPassword;" ID="connectionString"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <asp:Button class="btn btn-default" runat="server" Text="Check Connection" OnClick="checkDBConnection_Click" />
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col-md-4">
            <asp:Label runat="server" Text="Console:"></asp:Label>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <asp:TextBox runat="server" ID="outputConsole" Columns="70" Wrap="true" Rows="10" TextMode="MultiLine" Width="800px" Text="Console" ></asp:TextBox>
        </div>
    </div>
</asp:Content>

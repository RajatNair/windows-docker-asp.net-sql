<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DockerSampleWebApplication.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>ASP.NET MSSQL POSTGRES Docker Project</h3>
    <p>Idea behind this project is to showcase how you can package ASP.NET into a Docker container and communicate with a database.</p>
</asp:Content>

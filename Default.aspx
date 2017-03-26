<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DockerSampleWebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Sample ASP.NET Docker Project</h1>
        <p class="lead">To test DB connect to MS SQL and Postgre Docker containers</p>
        <p><a href="/Database" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Lorem Ipsum</h2>
            <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus finibus elementum enim et dignissim. Cras auctor lectus tellus. 
                Curabitur id leo sodales, semper risus sed, efficitur nulla. In nec imperdiet elit, at porttitor libero.
            Nunc imperdiet arcu massa, et fringilla turpis interdum at. Aenean semper nisl mi, ut vulputate est varius et. Fusce mattis sem nisi, vel iaculis sapien eleifend quis.
            </p>
            <p>
                <a class="btn btn-default" href="/Default">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Curabitur varius</h2>
            <p>
                Aliquam efficitur fermentum risus non scelerisque. Praesent congue quis ipsum eget imperdiet. Sed scelerisque velit mi, et egestas diam eleifend id. Curabitur porta felis id feugiat molestie. 
                Nulla cursus ullamcorper lacus quis feugiat. Nulla a sem faucibus, accumsan libero eget, venenatis risus.
            </p>
            <p>
                <a class="btn btn-default" href="/Default">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Nunc vulputate</h2>
            <p>
                Aenean vel massa at turpis venenatis scelerisque id sit amet nulla. Etiam maximus aliquet nibh. Proin at ex scelerisque, congue libero scelerisque, tincidunt ipsum. 
                In tempus mauris sed felis dapibus elementum. Cras tincidunt nunc in nisl egestas lobortis. Aliquam nec dui in felis elementum aliquet sit amet hendrerit purus. 
                Sed pellentesque velit nulla, ac sodales lacus tincidunt vel. Duis erat mi, semper sed faucibus sagittis, tincidunt blandit nunc.
            </p>
            <p>
                <a class="btn btn-default" href="/Default">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Sitio.Master" CodeBehind="Inicio.aspx.cs" Inherits="SisaDev.Inicio" %>


<asp:Content ID="header" ContentPlaceHolderID="head" runat="server">
    <link href="css/slider.css" rel="stylesheet" />


</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="MainContent" runat="server">

    <div class="overlay"></div>
    <section id="main-content">
        <section class="wrapper">
            <div class="row">
                <div class="col-lg-12">

                    <ol class="breadcrumb">
                        <li><i class="fa fa-home"></i>Inicio</li>

                    </ol>
                </div>
            </div>
            <!-- page start-->
            <div class="wrapper2">
                <div class="slider" id="slider">
                    <ul class="slides" id="slideimagenes">
                    </ul>
                    <div class="slider-controler" id="slidenumeracion"></div>
                </div>
            </div>
            <!-- page end-->
        </section>

    </section>


</asp:Content>
<asp:Content ID="footer" ContentPlaceHolderID="jsxpage" runat="server">
    <script src="<%= ResolveUrl("~") %>js/Inicio.js" type="text/javascript"></script>
</asp:Content>

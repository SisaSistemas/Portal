﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReporteRFQ.aspx.cs"
Inherits="SisaDev.Compras.ReporteRFQ" %> <%@ Register
Assembly="Microsoft.ReportViewer.WebForms, Version=15.0.0.0, Culture=neutral,
PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms"
TagPrefix="rsweb" %> <%@ Register assembly="Microsoft.ReportViewer.WebForms"
namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
  </head>
  <body>
    <form id="form1" runat="server">
      <div>
        <asp:ScriptManager
          ID="ScriptManager1"
          runat="server"
        ></asp:ScriptManager>
        <rsweb:ReportViewer
          ID="ReportViewer1"
          runat="server"
          BackColor=""
          ClientIDMode="AutoID"
          Height="663px"
          HighlightBackgroundColor=""
          InternalBorderColor="204, 204, 204"
          InternalBorderStyle="Solid"
          InternalBorderWidth="1px"
          LinkActiveColor=""
          LinkActiveHoverColor=""
          LinkDisabledColor=""
          PrimaryButtonBackgroundColor=""
          PrimaryButtonForegroundColor=""
          PrimaryButtonHoverBackgroundColor=""
          PrimaryButtonHoverForegroundColor=""
          SecondaryButtonBackgroundColor=""
          SecondaryButtonForegroundColor=""
          SecondaryButtonHoverBackgroundColor=""
          SecondaryButtonHoverForegroundColor=""
          SplitterBackColor=""
          ToolbarDividerColor=""
          ToolbarForegroundColor=""
          ToolbarForegroundDisabledColor=""
          ToolbarHoverBackgroundColor=""
          ToolbarHoverForegroundColor=""
          ToolBarItemBorderColor=""
          ToolBarItemBorderStyle="Solid"
          ToolBarItemBorderWidth="1px"
          ToolBarItemHoverBackColor=""
          ToolBarItemPressedBorderColor="51, 102, 153"
          ToolBarItemPressedBorderStyle="Solid"
          ToolBarItemPressedBorderWidth="1px"
          ToolBarItemPressedHoverBackColor="153, 187, 226"
          Width="1148px"
        >
          <localreport reportpath="Rpt\ReportRFQ.rdlc"> </localreport>
        </rsweb:ReportViewer>

        <br />
      </div>
      <div style="visibility: hidden">
        <asp:TextBox ID="txtNombreRFQ" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtIdRFQ" runat="server"></asp:TextBox>
      </div>
    </form>
  </body>
</html>

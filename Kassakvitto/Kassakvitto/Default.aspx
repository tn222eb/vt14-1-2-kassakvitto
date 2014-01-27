<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewState="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Kassakvitto
    </title>
    <link href ="~/Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label ID="Label" runat="server" Text="Total köpsumma"></asp:Label>
    <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
    <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" />
    <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
    </div>
    </form>
</body>
</html>

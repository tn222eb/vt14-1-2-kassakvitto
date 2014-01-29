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
    <form id="form1" runat="server" defaultbutton="SubmitButton">
        <h1>Kassakvitto</h1>
        <div>
            <asp:Label ID="Label" runat="server" Text="Total köpsumma"></asp:Label>
        </div>
        <div>
            <asp:TextBox ID="TextBox" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Ange köpsumma större än 0." Type="Double" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic" ControlToValidate="TextBox"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet får inte vara tomt." Display="Dynamic" ControlToValidate="TextBox"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" OnClick="SubmitButton_Click" />
        </div>
    </form>
</body>
</html>

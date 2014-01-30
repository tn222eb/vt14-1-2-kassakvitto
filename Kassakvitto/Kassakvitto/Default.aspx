<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kassakvitto.Default" ViewStateMode="Disabled"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
        Kassakvitto
    </title>
    <link href="~/Content/Site.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" defaultbutton="SubmitButton">
        <h1>Kassakvitto</h1>
        <div>
            <asp:Label ID="Label" runat="server" Text="Total köpsumma"></asp:Label>
        </div>
        <%-- Textbox och validering --%>
        <div>
            <asp:TextBox ID="TextBox" runat="server"></asp:TextBox> kr
            <asp:CompareValidator ID="CompareValidator" runat="server" ErrorMessage="Ange köpsumma större än 0" Type="Double" Operator="GreaterThan" ValueToCompare="0" Display="Dynamic" ControlToValidate="TextBox"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Fältet får inte vara tomt" Display="Dynamic" ControlToValidate="TextBox"></asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Button ID="SubmitButton" runat="server" Text="Beräkna rabatt" OnClick="SubmitButton_Click" />
        </div>
        <%-- Kvitto --%>
        <asp:Panel ID="ReceiptPanel" runat="server" Visible="false">
            <asp:Label ID="ReceiptLabel" runat="server" Text="FRASSES"></asp:Label> <br/>
            <asp:Label ID="PhoneLabel" runat="server" Text="Tel: 0921-550 10    "></asp:Label><br />
            <asp:Label ID="OpeningHoursLabel" runat="server" Text="Öppettider 10:00-22:30"></asp:Label><br />
            <asp:Label ID="StartLineLabel" runat="server" Text="-------------------------------"></asp:Label> <br />
            <asp:Label ID="SumTotalLabel" runat="server" Text=""></asp:Label> <br/>
            <asp:Label ID="DiscountRateLabel" runat="server" Text=""></asp:Label> <br/>
            <asp:Label ID="DiscountLabel" runat="server" Text=""></asp:Label> <br />
            <asp:Label ID="ToPayLabel" runat="server" Text=""></asp:Label> <br />
            <asp:Label ID="FinishLineLabel" runat="server" Text="-------------------------------"></asp:Label> <br />
            <asp:Label ID="GreetingsLabel" runat="server" Text="VÄLKOMMEN ÅTER!"></asp:Label>
        </asp:Panel>
    </form>
    <script type="text/javascript">
        var textBox = document.getElementById("TextBox");
        textBox.focus();
        textBox.select();
    </script>
</body>
</html>

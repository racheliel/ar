﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication4.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Direct Measurement</title>
    <style type="text/css">
        *{
	       box-sizing: border-box; 
        }
        body {
            width: 70%;
            margin: 0 auto;
            background-color: #F8F8F8;
        }
        #MainTitle{
              font-family: David;
            font-size: 100px;
             display: block;
             margin-left: auto;
             margin-right: auto;
        }
        .auto-style1 {
            font-size: x-large;
            font-weight: bold;
            color: #000099;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body style="font-family: David">
    <form id="form1" runat="server">
    <div >
    
        <asp:Label ID="MainTitle" runat="server" Font-Bold="True" ForeColor="#003366" Text="Direct Measurement" style="text-align: center"></asp:Label>
        <br />
        <asp:Label ID="Label7" runat="server" ForeColor="#000099" style="font-weight: 700; font-size: x-large" Text="Please insert the cycle's values for each element."></asp:Label>
        <br />
        <br />
        <br />
        <span class="auto-style1">Insert one value at a time (seconds)</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="#336699" Font-Bold="True" Font-Size="Large" style="font-size: larger"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text=" The last three values are permanent  - rate of action, frequency, PFD allowance." Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" style="font-size: medium"></asp:Label>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;
        <br />
&nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" style="font-size: x-large"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="val" runat="server" Width="52px"></asp:TextBox>
        <asp:Label ID="Label3" runat="server" Text=":" Visible="False" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Visible="False" Width="45px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Large" style="font-size: x-large" Visible="False"></asp:Label>
        &nbsp;
        &nbsp;
        <asp:Button ID="ok" runat="server" OnClick="ok_Click" Text="OK" BorderColor="#003366" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" style="font-size: medium" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="finish" runat="server" BorderWidth="2px" Font-Bold="True" ForeColor="#003366" OnClick="finish_Click" style="font-size: medium" Text="Done inserting the cycle's values" Width="395px" BorderStyle="Ridge" Height="31px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="err" runat="server" Font-Bold="True" ForeColor="#A60000" style="font-size: x-large" Font-Size="X-Large"></asp:Label>
    
        <br />
    
        <br />
    
        <asp:Label ID="Label9" runat="server"></asp:Label>
    
        <br />
        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Gray" Text="If you click the button above without any value , it will be referred as zero and will not be calculated  "></asp:Label>
        <br />
    
        <br />
    
        <span class="auto-style2"><strong>The values entered into the table: </strong></span>&nbsp;<asp:Label ID="error" runat="server" Font-Bold="True" ForeColor="#993333" style="font-size: x-large"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Gray" Text="The values you entered cannot be changed on this page."></asp:Label>
        <br />
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Gray" Text="It will be possible on the next page."></asp:Label>
        <br />
        <br />
        <br />
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="NEXT" BorderColor="#003366" BorderWidth="1px" Font-Bold="True" ForeColor="#003366" style="font-size: medium" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    </div>
    </form>
</body>
</html>

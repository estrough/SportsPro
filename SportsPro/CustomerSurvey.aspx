<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSurvey.aspx.cs" Inherits="SportsPro.CustomerSurvey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Project 2A</title>
    <meta name ="viewport" content="width=device-width, initial-scale-1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/site.css" rel="stylesheet" />
     <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="bootstrap.min.js"></script>
    
    
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
    
    
</head>
<body>
    <div class ="container">
        <header class="jumbotron"><h1>SportsPro</h1>
            <h2>Sports management sofware for the sports enthusiast</h2></header>
        <main>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="row">
            <div class="col-sm-8">
                        <div class="form-group">
        <label class ="col-sm-5">Enter your Customer ID:</label>
        <asp:TextBox ID="txtCustId" runat="server"></asp:TextBox>
        <asp:Button ID="btnIncidents" runat="server" CssClass="btn" Text="Get Incidents" OnClick="btnIncidents_Click" ValidationGroup="bad" />
                            <asp:RequiredFieldValidator ID="rvCustID" runat="server" ControlToValidate="txtCustId" Display="Dynamic" ErrorMessage="Enter an ID number" ForeColor="Red" ValidationGroup="bad"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvCustID" runat="server" ControlToValidate="txtCustId" Display="Dynamic" ErrorMessage="You Must Enter a Number" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" Type="Integer" ValidationGroup="bad"></asp:CompareValidator>
                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="bad" />
                </div>
            </div>
         </div>
        <div class="row">
            <div class="form-group">
                <div class="col-sm-12">

                    <asp:ListBox ID="lstIncidents" runat="server" Width="728px"></asp:ListBox>

                </div>
            </div>
        </div>
        <div class="row">
            <div class="form-group">
                <div class="auto-style1">
                    <label>Please rate this incident by the following catagories:</label>
                    <table style="width: 100%;">
                        <tr>
                            <td class="auto-style1">Response Time: </td>
                            <td>
                                <asp:RadioButtonList ID="rdlResponse" runat="server" RepeatColumns="4" Width="706px" Height="18px">
                                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                    <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style1">Technician Efficency: </td>
                            <td>
                                <asp:RadioButtonList ID="rdlTech" runat="server" RepeatColumns="4" Width="706px">
                                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                    <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="auto-style1">Problem Resolution: </td>
                            <td>
                                <asp:RadioButtonList ID="rdlResolution" runat="server" RepeatColumns="4" Width="706px">
                                    <asp:ListItem Value="1">Not Satisfied</asp:ListItem>
                                    <asp:ListItem Value="2">Somewhat Satisfied</asp:ListItem>
                                    <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                    <asp:ListItem Value="4">Completely Satisfied</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            
                        </tr>
                    </table>

                </div>
            </div>
        </div>
        <div class ="row">
            <div class ="form-group">
                <div class="col-sm-12">

                    <asp:Label ID="Label1" runat="server" Height="2px" Text="Additional Comments:"></asp:Label>
                    <asp:TextBox ID="txtComment" runat="server" Height="94px" TextMode="MultiLine" Width="459px"></asp:TextBox>

                </div>
            </div>
        </div>
        <div class ="row">
            <div class ="form-group">
                <div class="col-sm-12">
                    <asp:CheckBox ID="chkContact" runat="server" Text="Please contact me to discuss this incident" />
                    <asp:RadioButtonList ID="radlContact" runat="server">
                        <asp:ListItem>Contact by email</asp:ListItem>
                        <asp:ListItem>Contact by phone</asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>
        </div>
        <div class ="row">
            <div class="form-group">
                <div class="col-sm-12">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IncidentID], [CustomerID], [ProductCode], [TechID], [DateOpened], [DateClosed], [Title] FROM [Incidents] ORDER BY [DateClosed]"></asp:SqlDataSource>
    </form>
        </main>
    </div>
</body>
</html>

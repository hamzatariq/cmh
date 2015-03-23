<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="CMH.first" MasterPageFile="MasterPage.Master" %>


<asp:Content ID="Content" ContentPlaceHolderID="main" Runat="Server">
    <div style="align-items:baseline; background-color:lightskyblue">
        <div>
            <h2>Welcome!!!</h2>
        
        <div>
        <h4>Please Enter Code to See the List</h4>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="Password" style="margin-left: 429px" Width="295px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox1" runat="server" ErrorMessage="Please Enter Code!!!"></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            
        <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Proceed" Width="181px" OnClick="Button1_Click" style="margin-left: 473px" />
    </div>
    </div>
        </div>

</asp:Content>
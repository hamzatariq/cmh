﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="CMH.list" MasterPageFile="~/MasterPage.Master" %>



<asp:Content ID="Content" ContentPlaceHolderID="main" Runat="Server">
    
    <div style="background-color:aliceblue">
        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" style="margin-left: 232px" Width="576px">
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    </div>
    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
</asp:Content>

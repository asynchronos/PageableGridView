<%@ Page Language="VB" AutoEventWireup="false" CodeFile="TestPageableGrid.aspx.vb" Inherits="test_TestPageableGrid" %>

<%@ Register assembly="PageableGridView" namespace="MattBerseth.WebControls" tagprefix="cc1" %>
<%@ Register assembly="ExtendedPageableGridView" namespace="MattBerseth.WebControls" tagprefix="cc2" %>

<%@ Register assembly="CustomControls" namespace="CustomControls.Grid" tagprefix="cc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        
        <asp:Label ID="Label1" runat="server" 
            Text="xGrid มาจาก ExtenedGridView หรือ CustomControls.dll มีฟังก์ชั่นต่าง เช่น rowClick mouseOver ... ไม่มี source code extend มาจาก GridView ธรรมดา"></asp:Label>
        
        
        <cc3:xGrid ID="xGrid1" runat="server" AllowPaging="True" AscImage="" 
            AutoGenerateCheckBoxColumn="True" CellPadding="4" ContextMenuID="" 
            DataSourceID="SqlDataSource1" DescImage="" EnableRowClick="True" 
            ForeColor="#333333" GridLines="None" IsFiltered="True" 
            MouseOverColor="Transparent">
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </cc3:xGrid>
        
        
        <asp:Label ID="Label2" runat="server" 
            Text="PageableGridView Extend มาจาก GridView ธรรมดา เพิ่มความสามารถให้ทำการใช้ Control data Pager ได้"></asp:Label>
        
        
        <cc1:PageableGridView ID="PageableGridView1" runat="server" AllowPaging="True" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>
            

            

            <RowStyle BackColor="#EFF3FB"></RowStyle>
            

            

            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center">
            </PagerStyle>
            

            

            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333">
            </SelectedRowStyle>
            

            

            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White">
            </HeaderStyle>
            

            

            <EditRowStyle BackColor="#2461BF"></EditRowStyle>
            

            

            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            
            
        </cc1:PageableGridView>
        <asp:DataPager ID="DataPager1" runat="server" 
            PagedControlID="PageableGridView1">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
        <br />
        <asp:Label ID="Label3" runat="server" 
            Text="ExtendedPageableGridView เป็น GridView ที่ Extend มาจาก xGrid เพื่อที่จะให้คงความสามารถต่างๆของ xGrid ไว้โดยที่เพิ่มเติมการใช้งานร่วมกัน Data pager ได้แต่มีปัญหาในการใช้งานจริงคือ feature บางอย่างใช้งานไม่ได้เนื่องจาก javascript ไม่ถูก register"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" 
            Text="Workaround ให้ใช้วิธี นำ xgird เข้ามาใน page ที่ต้องการจะใช้แล้ว Invisible ไว้จะทำให้ javasript ของ xGrid ถูก register เข้ามา ExtenedPageableGridView ก็จะสามารถใช้งาน feature ต่างๆได้"></asp:Label>
        <cc2:ExtendedPageableGridView ID="ExtendedPageableGridView1" runat="server" 
            AllowPaging="True" AscImage="" ContextMenuID="" DataSourceID="SqlDataSource1" 
            DescImage="" MouseOverColor="Transparent" CellPadding="4" 
            ForeColor="#333333" GridLines="None">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <AlternatingRowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <RowStyle BackColor="#E3EAEB" />
        </cc2:ExtendedPageableGridView>
        <asp:DataPager ID="DataPager2" runat="server" 
            PagedControlID="ExtendedPageableGridView1">
            <Fields>
                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
                <asp:NumericPagerField />
                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" 
                    ShowNextPageButton="False" ShowPreviousPageButton="False" />
            </Fields>
        </asp:DataPager>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:Bay01_testConnectionString %>" 
            SelectCommand="SELECT * FROM [Controlling_Level]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>

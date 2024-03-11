<%@ Page Title="Kasutajad" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lennujaam.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    <p>
        
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="kasutajaId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." CellPadding="10" CellSpacing="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField EditText="Muuda" ShowEditButton="True" CancelText="Tühista" UpdateText="Uuenda" />
                <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                <asp:BoundField DataField="onAdmin" HeaderText="onAdmin" SortExpression="onAdmin" />
                <asp:BoundField DataField="parool" HeaderText="parool" SortExpression="parool" />
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_lennujaamConnectionString3 %>" DeleteCommand="DELETE FROM [KasutajaSet] WHERE [kasutajaId] = @kasutajaId" InsertCommand="INSERT INTO [KasutajaSet] ([eesnimi], [onAdmin], [parool]) VALUES (@eesnimi, @onAdmin, @parool)" ProviderName="<%$ ConnectionStrings:mudel_lennujaamConnectionString3.ProviderName %>" SelectCommand="SELECT [kasutajaId], [eesnimi], [onAdmin], [parool] FROM [KasutajaSet]" UpdateCommand="UPDATE [KasutajaSet] SET [eesnimi] = @eesnimi, [onAdmin] = @onAdmin, [parool] = @parool WHERE [kasutajaId] = @kasutajaId">
            <DeleteParameters>
                <asp:Parameter Name="kasutajaId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="onAdmin" Type="String" />
                <asp:Parameter Name="parool" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="eesnimi" Type="String" />
                <asp:Parameter Name="onAdmin" Type="String" />
                <asp:Parameter Name="parool" Type="String" />
                <asp:Parameter Name="kasutajaId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </p>
    </main>
</asp:Content>

<%@ Page Title="Lennud " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lennujaam.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lendId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CellPadding="10" CellSpacing="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField EditText="Muuda" ShowEditButton="True" CancelText="Tühista" UpdateText="Uuenda" />
                <asp:BoundField DataField="lennu_nr" HeaderText="lennu_nr" SortExpression="lennu_nr" />
                <asp:BoundField DataField="kohtade_arv" HeaderText="kohtade_arv" SortExpression="kohtade_arv" />
                <asp:BoundField DataField="reisijate_arv" HeaderText="reisijate_arv" SortExpression="reisijate_arv" />
                <asp:BoundField DataField="ots" HeaderText="ots" SortExpression="ots" />
                <asp:BoundField DataField="siht" HeaderText="siht" SortExpression="siht" />
                <asp:TemplateField HeaderText="valjumisaeg" SortExpression="valjumisaeg">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("valjumisaeg") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("valjumisaeg", "{0:D}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="lopetatud" SortExpression="lopetatud">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lopetatud") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("lopetatud", "{0:D}") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="kestvus" HeaderText="kestvus" SortExpression="kestvus" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_lennujaamConnectionString2 %>" DeleteCommand="DELETE FROM [LendSet1] WHERE [lendId] = @lendId" InsertCommand="INSERT INTO [LendSet1] ([kestvus], [kohtade_arv], [lennu_nr], [lopetatud], [ots], [reisijate_arv], [siht], [valjumisaeg]) VALUES (@kestvus, @kohtade_arv, @lennu_nr, @lopetatud, @ots, @reisijate_arv, @siht, @valjumisaeg)" ProviderName="<%$ ConnectionStrings:mudel_lennujaamConnectionString2.ProviderName %>" SelectCommand="SELECT [lendId], [kestvus], [kohtade_arv], [lennu_nr], [lopetatud], [ots], [reisijate_arv], [siht], [valjumisaeg] FROM [LendSet1]" UpdateCommand="UPDATE [LendSet1] SET [kestvus] = @kestvus, [kohtade_arv] = @kohtade_arv, [lennu_nr] = @lennu_nr, [lopetatud] = @lopetatud, [ots] = @ots, [reisijate_arv] = @reisijate_arv, [siht] = @siht, [valjumisaeg] = @valjumisaeg WHERE [lendId] = @lendId">
            <DeleteParameters>
                <asp:Parameter Name="lendId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="kestvus" Type="Int32" />
                <asp:Parameter Name="kohtade_arv" Type="Int32" />
                <asp:Parameter Name="lennu_nr" Type="String" />
                <asp:Parameter DbType="Date" Name="lopetatud" />
                <asp:Parameter Name="ots" Type="String" />
                <asp:Parameter Name="reisijate_arv" Type="Int32" />
                <asp:Parameter Name="siht" Type="String" />
                <asp:Parameter DbType="Date" Name="valjumisaeg" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="kestvus" Type="Int32" />
                <asp:Parameter Name="kohtade_arv" Type="Int32" />
                <asp:Parameter Name="lennu_nr" Type="String" />
                <asp:Parameter DbType="Date" Name="lopetatud" />
                <asp:Parameter Name="ots" Type="String" />
                <asp:Parameter Name="reisijate_arv" Type="Int32" />
                <asp:Parameter Name="siht" Type="String" />
                <asp:Parameter DbType="Date" Name="valjumisaeg" />
                <asp:Parameter Name="lendId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </main>
</asp:Content>

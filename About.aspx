<%@ Page Title="Lennud " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Lennujaam.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="lendId" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="lendId" HeaderText="lendId" ReadOnly="True" SortExpression="lendId" />
                <asp:BoundField DataField="kestvus" HeaderText="kestvus" SortExpression="kestvus" />
                <asp:BoundField DataField="kohtade_arv" HeaderText="kohtade_arv" SortExpression="kohtade_arv" />
                <asp:BoundField DataField="lennu_nr" HeaderText="lennu_nr" SortExpression="lennu_nr" />
                <asp:BoundField DataField="lopetatud" HeaderText="lopetatud" SortExpression="lopetatud" />
                <asp:BoundField DataField="ots" HeaderText="ots" SortExpression="ots" />
                <asp:BoundField DataField="reisijate_arv" HeaderText="reisijate_arv" SortExpression="reisijate_arv" />
                <asp:BoundField DataField="siht" HeaderText="siht" SortExpression="siht" />
                <asp:BoundField DataField="valjumisaeg" HeaderText="valjumisaeg" SortExpression="valjumisaeg" />
            </Columns>
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

<%@ Page Title="Lisa uus lend" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Lennujaam.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %></h2>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="lendId" DataSourceID="SqlDataSource_lennu" DefaultMode="Insert" CellPadding="10" CellSpacing="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#FFFFC0" Font-Bold="True" />
            <FieldHeaderStyle BackColor="#FFFF99" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="lennu_nr" HeaderText="lennu_nr" SortExpression="lennu_nr" />
                <asp:TemplateField HeaderText="kohtade_arv" SortExpression="kohtade_arv">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("kohtade_arv") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kohtade_arv", "{0}") %>' TextMode="Number"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("kohtade_arv") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="reisijate_arv" SortExpression="reisijate_arv">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("reisijate_arv") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("reisijate_arv", "{0}") %>' TextMode="Number"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("reisijate_arv") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ots" HeaderText="ots" SortExpression="ots" />
                <asp:BoundField DataField="siht" HeaderText="siht" SortExpression="siht" />
                <asp:TemplateField HeaderText="kestvus" SortExpression="kestvus">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("kestvus") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("kestvus", "{0:N}") %>' TextMode="Number"></asp:TextBox>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("kestvus") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="valjumisaeg" SortExpression="valjumisaeg">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("valjumisaeg") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("valjumisaeg") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("valjumisaeg") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="lopetatud" SortExpression="lopetatud">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("lopetatud") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar2" runat="server" SelectedDate='<%# Bind("lopetatud") %>'></asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("lopetatud") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="lendId" HeaderText="lendId" InsertVisible="False" ReadOnly="True" SortExpression="lendId" />
                <asp:CommandField ShowInsertButton="True" CancelText="Tühista" InsertText="Lisa" />
            </Fields>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
</asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource_lennu" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_lennujaamConnectionString1 %>" DeleteCommand="DELETE FROM [LendSet1] WHERE [lendId] = @lendId" InsertCommand="INSERT INTO [LendSet1] ([lennu_nr], [kohtade_arv], [reisijate_arv], [ots], [siht], [kestvus], [valjumisaeg], [lopetatud]) VALUES (@lennu_nr, @kohtade_arv, @reisijate_arv, @ots, @siht, @kestvus, @valjumisaeg, @lopetatud)" SelectCommand="SELECT [lennu_nr], [kohtade_arv], [reisijate_arv], [ots], [siht], [kestvus], [valjumisaeg], [lopetatud], [lendId] FROM [LendSet1]" UpdateCommand="UPDATE [LendSet1] SET [lennu_nr] = @lennu_nr, [kohtade_arv] = @kohtade_arv, [reisijate_arv] = @reisijate_arv, [ots] = @ots, [siht] = @siht, [kestvus] = @kestvus, [valjumisaeg] = @valjumisaeg, [lopetatud] = @lopetatud WHERE [lendId] = @lendId">
        <DeleteParameters>
            <asp:Parameter Name="lendId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="lennu_nr" Type="String" />
            <asp:Parameter Name="kohtade_arv" Type="Int32" />
            <asp:Parameter Name="reisijate_arv" Type="Int32" />
            <asp:Parameter Name="ots" Type="String" />
            <asp:Parameter Name="siht" Type="String" />
            <asp:Parameter Name="kestvus" Type="Int32" />
            <asp:Parameter DbType="Date" Name="valjumisaeg" />
            <asp:Parameter DbType="Date" Name="lopetatud" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="lennu_nr" Type="String" />
            <asp:Parameter Name="kohtade_arv" Type="Int32" />
            <asp:Parameter Name="reisijate_arv" Type="Int32" />
            <asp:Parameter Name="ots" Type="String" />
            <asp:Parameter Name="siht" Type="String" />
            <asp:Parameter Name="kestvus" Type="Int32" />
            <asp:Parameter DbType="Date" Name="valjumisaeg" />
            <asp:Parameter DbType="Date" Name="lopetatud" />
            <asp:Parameter Name="lendId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
    </main>
</asp:Content>

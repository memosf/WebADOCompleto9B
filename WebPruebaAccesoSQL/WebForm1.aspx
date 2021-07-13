<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebPruebaAccesoSQL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/sweetalert2.all.min.js"></script>
    <script src="js/codigo.js"></script>
    <link href="css/sweetalert2.min.css" rel="stylesheet" />
</head>
<body>
      
    <form id="form1" runat="server">

        <div>
            <button onclick="msgbox3('Correcto','Error: Cannot open database  BDTIEND  requested by the login. The login failed.Login failed for user  DESKTOP 0J2HDN7 Guizmar2021 K .','success')"> prueba</button>          
        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Probar Conexión" Width="281px" />
        <br />
        <br />
        Mensaje original<br />
        <asp:TextBox ID="TextBox1" runat="server" Width="754px"></asp:TextBox>
        <br />
        <br />
        Mensaje Limpio<br />
        <asp:TextBox ID="TextBox2" runat="server" Width="851px"></asp:TextBox>
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cosulta con DataReader" />
        <br />
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="236px" Width="897px"></asp:ListBox>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Consulta DataSet" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Obtener datos del DataSet" Width="311px" />
        &nbsp;<br />
        <br />
        ID buscar:
        <asp:TextBox ID="txtidbuscar" runat="server"></asp:TextBox>
&nbsp;&nbsp; Nombre a modificar
        <asp:TextBox ID="txtnommod" runat="server" Width="242px"></asp:TextBox>
        <br />
        <br />
&nbsp;
        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Modificar datos del DataSet" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        &nbsp;<br />
        <asp:ListBox ID="ListBox2" runat="server"></asp:ListBox>
        <br />
        <br />
        <h2> insertar nuevo empleado</h2>
        id
        <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
        <br />
        nombre:
        <asp:TextBox ID="txtnom" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Ejecución de inserción por Concatenación  (INSEGURO)" OnClick="Button5_Click" Width="529px" />
        <br />
        <br />
        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Ejecución de Inserción con 2 parámetros  fijos" Width="516px" />
        <br />
        <br />
        <br />
        id_Producto&nbsp;
        <asp:TextBox ID="Txtidprod" runat="server"></asp:TextBox>
        <br />
        Descripción
        <asp:TextBox ID="txtdesc" runat="server"></asp:TextBox>
        <br />
        Categoría
        <asp:TextBox ID="txtcatego" runat="server"></asp:TextBox>
        <br />
        Precio:
        <asp:TextBox ID="txtprecio" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button8" runat="server" OnClick="Button7_Click" Text="Insertar Producto con parámetros usando método genérico más SEGURO" Width="769px" Height="26px" />
        <br />
        <br />
        <asp:Button ID="Button9" runat="server" Text="Consulta de  Productos" OnClick="Button9_Click" />
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <br />
        <asp:Button ID="Button11" runat="server" OnClick="Button11_Click" Text="Ir a operacioes Ticket" Width="315px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </form>
</body>
</html>

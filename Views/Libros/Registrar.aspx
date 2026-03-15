<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="BibliotecaMVC.Views.Detalle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Registrar Nuevo Libro</h2>
    <div class="form-group">
        <label>Código:</label>
        <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="El código es requerido" ForeColor="Red"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <label>Título:</label>
        <asp:TextBox ID="txtTitulo" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Autor:</label>
        <asp:TextBox ID="txtAutor" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="form-group">
        <label>Fecha de Publicación:</label>
        <asp:TextBox ID="txtFecha" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
    </div>
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar Libro" CssClass="btn-primary" />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
</asp:Content>

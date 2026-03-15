<%@ Page Title="Detalle" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="BibliotecaMVC.Views.Detalle" %>

<div class="detalle-container">
        <h2>Detalle del Libro</h2>
        <hr />
        
        <asp:Panel ID="pnlDetalle" runat="server" Visible="true">
            <div class="info-row">
                <strong>Código:</strong>
                <asp:Label ID="lblCodigo" runat="server" Text=""></asp:Label>
            </div>
            <div class="info-row">
                <strong>Título:</strong>
                <asp:Label ID="lblTitulo" runat="server" Text=""></asp:Label>
            </div>
            <div class="info-row">
                <strong>Autor:</strong>
                <asp:Label ID="lblAutor" runat="server" Text=""></asp:Label>
            </div>
            <div class="info-row">
                <strong>Fecha de Publicación:</strong>
                <asp:Label ID="lblFecha" runat="server" Text=""></asp:Label>
            </div>
        </asp:Panel>

        <asp:Label ID="lblMensajeError" runat="server" CssClass="error-text" Visible="false"></asp:Label>

        <div class="actions">
            <asp:Button ID="btnRegresar" runat="server" Text="Volver al Catálogo" PostBackUrl="~/Views/Consultar.aspx" CssClass="btn-secondary" />
        </div>
    </div>
</asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Safe.aspx.cs" Inherits="XSSDemoWebForms.Safe" ValidateRequest="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vista PROTEGIDA</title>
    <meta charset="utf-8" />
    <style>
        body{font-family:Segoe UI,Arial;margin:40px}
        .card{border:1px solid #ddd;padding:16px;border-radius:12px;max-width:820px}
        .w{width:100%}
        .preview{padding:12px;border:1px dashed #999;border-radius:8px;min-height:64px;margin-top:6px;background:#f9fff9}
        code{background:#f5f5f5;padding:2px 4px;border-radius:4px}
    </style>
</head>
<body>
<form id="form1" runat="server">
  <div class="card">
    <h2>Vista PROTEGIDA (con encoding + cabeceras)</h2>
    <p>Escribe algo (incluso HTML/JS):</p>
    <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" Rows="4" CssClass="w" />
    <br /><br />
    <asp:Button ID="btnRenderSafe" runat="server" Text="Renderizar con protección" OnClick="btnRenderSafe_Click" />

    <h3>Render con HTML encoding:</h3>
    <div class="preview">
      <%-- <%: %> hace HTML-encode de la cadena EncodedHtml --%>
      <%: EncodedHtml %>
    </div>

    <h3>Uso seguro en atributo <code>title</code>:</h3>
    <asp:Literal ID="litSafeAttr" runat="server" />

    <p style="margin-top:16px"><a href="Default.aspx">↩ Volver</a></p>
  </div>
</form>
</body>
</html>



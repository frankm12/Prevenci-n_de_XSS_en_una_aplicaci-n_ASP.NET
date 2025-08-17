using System;
using System.Web;
using System.Web.Security.AntiXss;

namespace XSSDemoWebForms
{
    public partial class Safe : System.Web.UI.Page
    {
        protected string EncodedHtml = string.Empty;

        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Headers["Content-Security-Policy"] = "default-src 'self';";
        }

        protected void btnRenderSafe_Click(object sender, EventArgs e)
        {
            string user = txtInput.Text ?? string.Empty;

            // Codificación HTML (contenido visible)
            EncodedHtml = HttpUtility.HtmlEncode(user);

            // Codificación segura para atributo
            string safeAttr = HttpUtility.HtmlAttributeEncode(user);
            litSafeAttr.Text = $"<div title=\"{safeAttr}\">Pasa el mouse por aquí (title)</div>";
        }
    }
}

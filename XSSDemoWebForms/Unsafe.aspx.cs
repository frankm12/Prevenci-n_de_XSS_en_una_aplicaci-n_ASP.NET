using System;

namespace XSSDemoWebForms
{
    public partial class Unsafe : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnRender_Click(object sender, EventArgs e)
        {
            // VULNERABLE: renderiza sin encoding
            litRaw.Text = txtInput.Text;

            // VULNERABLE: inyección en atributo
            string attr = txtInput.Text;
            litAttr.Text = $"<div title=\"{attr}\">Pasa el mouse por aquí (title)</div>";
        }
    }
}

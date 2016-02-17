using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SouthsideLawnCare
{
    public partial class SiteMaster : MasterPage
    {
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";
        private string _antiXsrfTokenValue;

        protected void Page_Init(object sender, EventArgs e)
        {
              
            // The code below helps to protect against XSRF attacks
                var requestCookie = Request.Cookies[AntiXsrfTokenKey];
                Guid requestCookieGuidValue;
                if (requestCookie != null && Guid.TryParse(requestCookie.Value, out requestCookieGuidValue))
                {
                    // Use the Anti-XSRF token from the cookie
                    _antiXsrfTokenValue = requestCookie.Value;
                    Page.ViewStateUserKey = _antiXsrfTokenValue;
                }
                else
                {
                    // Generate a new Anti-XSRF token and save to the cookie
                    _antiXsrfTokenValue = Guid.NewGuid().ToString("N");
                    Page.ViewStateUserKey = _antiXsrfTokenValue;

                    var responseCookie = new HttpCookie(AntiXsrfTokenKey)
                    {
                        HttpOnly = true,
                        Value = _antiXsrfTokenValue
                    };
                    if (FormsAuthentication.RequireSSL && Request.IsSecureConnection)
                    {
                        responseCookie.Secure = true;
                    }
                    Response.Cookies.Set(responseCookie);
                }

                Page.PreLoad += master_Page_PreLoad;

        }

        protected void master_Page_PreLoad(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Set Anti-XSRF token
                ViewState[AntiXsrfTokenKey] = Page.ViewStateUserKey;
                ViewState[AntiXsrfUserNameKey] = Context.User.Identity.Name ?? String.Empty;
            }
            else
            {
                // Validate the Anti-XSRF token
                if ((string)ViewState[AntiXsrfTokenKey] != _antiXsrfTokenValue
                    || (string)ViewState[AntiXsrfUserNameKey] != (Context.User.Identity.Name ?? String.Empty))
                {
                    throw new InvalidOperationException("Validation of Anti-XSRF token failed.");
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateAndSendEmailListMessage(object sender, EventArgs e)
        {
            if (!this.Page.IsValid)
                return;
            string str1 = "EMAIL ADDRESS SUBMITTED: " + this.txtEmail.Text.Trim();
            StringBuilder stringBuilder1 = new StringBuilder();
            StringBuilder stringBuilder2 = new StringBuilder();
            string str2 = "";
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("EMAIL ADDRESS SUBMITTED:");
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Submitted at: " + DateTime.Now.AddHours(3.0).ToString());
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("-------------------------------------------------------------");
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Customer Email: " + this.txtEmail.Text.Trim());
            MailMessage message = new MailMessage();
            message.Body = stringBuilder1.ToString();
            MailAddressCollection addressCollection = new MailAddressCollection();
            addressCollection.Add(new MailAddress("southsidelawn2016@gmail.com"));
            addressCollection.Add(new MailAddress("quotes@southsidelawncare.net"));
            addressCollection.Add(new MailAddress("genehoke@gmail.com"));
            foreach (MailAddress mailAddress in (Collection<MailAddress>)addressCollection)
                message.To.Add(mailAddress);
            MailAddress mailAddress1 = new MailAddress("admin@southsidelawncare.net");
            message.From = mailAddress1;
            message.Subject = str1;
            SmtpClient smtpClient = new SmtpClient("localhost", 25);
            message.Priority = MailPriority.Normal;
            smtpClient.Credentials = (ICredentialsByHost)new NetworkCredential()
            {
                UserName = "quotes@southsidelawncare.net",
                Password = "SouthsideLawn5074"
            };
            try
            {
                smtpClient.Send(message);
            }
            catch (Exception ex)
            {
                str2 = ex.Message.ToString();
            }
            finally
            {
                if (str2 != "")
                {
                    stringBuilder2.Append("<div class=\"error\">");
                    stringBuilder2.Append("An error has occurred: ");
                    stringBuilder2.Append(Environment.NewLine);
                    stringBuilder2.Append("Technical details: ");
                    stringBuilder2.Append(str2);
                    stringBuilder2.Append(Environment.NewLine);
                    stringBuilder2.Append("Please call 404-323-8719 to request your quote.");
                    stringBuilder2.Append("</div>");
                }
                else
                {
                    stringBuilder2.Append("<div class=\"noerror\">");
                    stringBuilder2.Append("Thank you for your interest. You will be added to our mailing list!");
                    stringBuilder2.Append("</div>");
                }
                this.pnlThanks.Controls.Add((Control)new LiteralControl(stringBuilder2.ToString()));
                this.pnlListForm.Visible = false;
                this.pnlThanks.Visible = true;
            }
        }
    }
}
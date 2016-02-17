using System;
using System.Collections.ObjectModel;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace SouthsideLawnCare
{
    public partial class _Default : Page
    {
        protected HtmlForm mainform;
        protected ScriptManager scm1;
        protected UpdatePanel updForm;
        protected Panel pnlForm;
        protected TextBox txtFName;
        protected RequiredFieldValidator rfvName;
        protected TextBox txtEmail;
        protected RequiredFieldValidator rfvEmail;
        protected RegularExpressionValidator revEmail;
        protected TextBox txtPhone;
        protected RequiredFieldValidator rfvPhone;
        protected TextBox txtSubject;
        protected RequiredFieldValidator rfvSubject;
        protected TextBox txtMessage;
        protected RequiredFieldValidator rfvMessage;
        protected Button submit;
        protected Panel pnlResponse;
        protected PlaceHolder plhResponse;

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateAndSendEmailMessage(object sender, EventArgs e)
        {
            if (!this.Page.IsValid)
                return;
            string str1 = "QUOTE REQUEST SUBMITTED: " + this.txtSubject.Text.Trim();
            StringBuilder stringBuilder1 = new StringBuilder();
            StringBuilder stringBuilder2 = new StringBuilder();
            string str2 = "";
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("YOUR QUOTE REQUEST:");
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Submitted at: " + DateTime.Now.AddHours(3.0).ToString());
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("-------------------------------------------------------------");
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Customer Name: " + this.txtFName.Text.Trim());
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Customer Email: " + this.txtEmail.Text.Trim());
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Customer Phone: " + this.txtPhone.Text.Trim());
            stringBuilder1.Append(Environment.NewLine);
            stringBuilder1.Append("Customer Message: " + this.txtMessage.Text.Trim());
            string str3 = stringBuilder1.ToString();
            MailMessage message = new MailMessage();
            message.Body = str3;
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
                    stringBuilder2.Append("Thank you for your interest. Your message has been received. We will contact you as soon as possible!");
                    stringBuilder2.Append("</div>");
                }
                this.plhResponse.Controls.Add((Control)new LiteralControl(stringBuilder2.ToString()));
                this.pnlForm.Visible = false;
                this.pnlResponse.Visible = true;
            }
        }
    }
}

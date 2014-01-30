using Kassakvitto.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kassakvitto
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Receipt receipt = new Kassakvitto.Model.Receipt(double.Parse(TextBox.Text));

                SumTotalLabel.Text = String.Format("Totalt: {0:c}", receipt.SubTotal);
                DiscountRateLabel.Text = String.Format("Rabattsats: {0:p0}", receipt.DiscountRate);
                DiscountLabel.Text = String.Format("Rabatt: {0:c}", receipt.MoneyOff);
                ToPayLabel.Text = String.Format("Att betala: {0:c}", receipt.Total);
                ReceiptPanel.Visible = true;
            }
        }
    }
}
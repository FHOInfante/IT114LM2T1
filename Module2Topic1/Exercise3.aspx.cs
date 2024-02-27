using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                finalGrade.Text = "Submit your grade percentage to see your final grade!";
            }
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            if (double.TryParse(percentageGrade.Text, out double percentage))
            {
                double numericalGrade = 4.0 - (percentage / 100.0 * 3.0);

                if (numericalGrade < 1)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('The grade input is invalid!');", true);
                    return;
                }
                else
                {
                    finalGrade.Text = numericalGrade.ToString("0.00");

                    if (numericalGrade == 1.00)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Congratulations! You scored a perfect 1.00!');", true);
                    }
                }

            }
        }
    }
}
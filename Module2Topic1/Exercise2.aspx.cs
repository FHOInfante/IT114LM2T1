using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadProof_Click(object sender, EventArgs e)
        {
            if (FileUpload.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload.FileName).ToLower();
                if (fileExtension == ".jpg" || fileExtension == ".png")
                {
                    ResponseLabel.Text = "File has been sent to proofing!";
                }
                else
                {
                    ResponseLabel.Text = "Invalid file type. Please upload a JPG or PNG file.";
                }
            }
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace Online_Book_Store.Models
{
    public class ClearTextBox
    {
        public void ClearTextbox(params TextBox[] textBoxes)
        {
            for (int i = 0; i < textBoxes.Length; i++)
            {
                textBoxes[i].Text = "";
            }
        }
    }
}
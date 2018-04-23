using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TopSavvyUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    public static string GetImage(int value)
    {
        if (value <= 2)
        {
            return "~/Resources/Images/TrophyCrystal.gif";
        }
        else if (value > 2 && value < 12)
        {
            return "~/Resources/Images/TrophGold.png";
        }
        else if (value > 10 && value < 21)
        {
            return "~/Resources/Images/TrophSilver.png";
        }
        else
        {
            return "~/Resources/Images/TrophBronze.png";
        }
    }
}
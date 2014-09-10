#if MYCALENDAR
#else
#define MYCALENDAR
using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace AutoTaskManager {

	public partial class MyCalendar : Page {

		// Define the variables that will be accessed from HTML:
		protected string testtext = "bacon";

		// These two must be commented out after compiling:
		protected System.Web.UI.WebControls.Calendar myCalendar;
		protected System.Web.UI.WebControls.Label lblDates;

		private void Page_Load(object sender, System.EventArgs e) {
		}
		
		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
			// Stylistic changes to the Calender:
			lblDates.Font.Size = 20;
			myCalendar.Font.Size = 40;
			myCalendar.TitleStyle.BackColor = Color.LightGray;
			myCalendar.TitleStyle.ForeColor = Color.White;
			myCalendar.DayHeaderStyle.BackColor = Color.FromArgb(210,230,255);
			myCalendar.ShowGridLines = true;

			myCalendar.SelectionChanged += new System.EventHandler(this.MyCalendar_SelectionChanged);
			Load += new System.EventHandler(this.Page_Load);
		}
		#endregion
		
		private void MyCalendar_SelectionChanged(object sender, System.EventArgs e)
		{
			lblDates.Text = "You selected these dates:<br>";
			
			foreach (DateTime dt in myCalendar.SelectedDates)
			{
				lblDates.Text += dt.ToLongDateString() + "<br>";
			}
		}
	}

}

#endif
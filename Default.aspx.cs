/*
 * Created by SharpDevelop.
 * User: Dominic
 * Date: 8/28/2014
 * Time: 4:43 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
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

namespace AutoTaskManager
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public class Default : Page
	{	

		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Data

		protected	HtmlInputButton		_Button_AddTask;
		protected	HtmlInputText 		_Input_Tasks;
		protected 	PlaceHolder			place;
		protected	System.Web.UI.WebControls.Calendar MyCalendar;

		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Page Init & Exit (Open/Close DB connections here...)

		protected void PageInit(object sender, EventArgs e)
		{
			
		}
		//----------------------------------------------------------------------
		protected void PageExit(object sender, EventArgs e)
		{
		}

		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Page Load
		private void Page_Load(object sender, EventArgs e)
		{
			MyCalendar.Font.Size = 40;
			place = (PlaceHolder)LoadControl("~/Default.aspx");
			Label txtLabel_1 = new Label(); //Generating a label
			txtLabel_1.Text = "YAY!";
            txtLabel_1.Style.Add("Color", "Red");
			place.Controls.Add(txtLabel_1);
			//------------------------------------------------------------------
			if(IsPostBack)
			{
			}
			//------------------------------------------------------------------
		}
		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Click_Button_AddTask

		//----------------------------------------------------------------------
		protected void Click_Button_AddTask(object sender, EventArgs e)
		{
			Response.Write( _Button_AddTask.Value + " was cklicked!<br>");
			DoStuffTest();
		}
		void DoStuffTest() {
		}
		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Changed_Input_Name

		//----------------------------------------------------------------------
		protected void Changed_Input_Tasks(object sender, EventArgs e)
		{
			Response.Write( _Input_Tasks.Value + " has changed!<br>");
			
		}

		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region More...
		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region Initialize Component

		protected override void OnInit(EventArgs e)
		{
			InitializeComponent();
			base.OnInit(e);
		}
		//----------------------------------------------------------------------
		private void InitializeComponent()
		{
			this.Load	+= new System.EventHandler(Page_Load);
			this.Init   += new System.EventHandler(PageInit);
			this.Unload += new System.EventHandler(PageExit);
			
			_Button_AddTask.ServerClick	 += new EventHandler(Click_Button_AddTask);
			_Input_Tasks.ServerChange += new EventHandler(Changed_Input_Tasks);
		}
		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
	}
}
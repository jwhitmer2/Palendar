using System;
using System.Collections;
using System.ComponentModel;
using System.Web;
using System.Web.SessionState;
using System.Text.RegularExpressions;

namespace AutoTaskManager
{
	/// <summary>
	/// Summary description for Global.
	/// </summary>
	public class Global : HttpApplication
	{
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
		#region global
		/// <summary>
		/// Required designer variable.
		/// </summary>
		//private System.ComponentModel.IContainer components = null;

		public Global()
		{
			InitializeComponent();
		}

		public Task[] CreateTasks(string text) {
			System.Text.RegularExpressions.MatchCollection dates;
			dates = System.Text.RegularExpressions.Regex.Matches(
				text,
				"^(?:(?:31(\\/|-|\\.)(?:0?[13578]|1[02]))\\1|(?:(?:29|30)(\\/|-|\\.)(?:0?[1,3-9]|1[0-2])\\2))(?:(?:1[6-9]|[2-9]\\d)?\\d{2})$|^(?:29(\\/|-|\\.)0?2\\3(?:(?:(?:1[6-9]|[2-9]\\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\\d|2[0-8])(\\/|-|\\.)(?:(?:0?[1-9])|(?:1[0-2]))\\4(?:(?:1[6-9]|[2-9]\\d)?\\d{2})$");
			Task[] newTasks = new Task[dates.Count];
			for (int i = 0; i < dates.Count; i++) {
				string tmp = dates[i].Value;
				newTasks[i] = new Task();
				int end = 0;

				end += tmp.IndexOf('/');
				end += tmp.IndexOf('-');
				end += tmp.IndexOf('.');
				end += 2; // IndexOf will return -1 twice compensating...
				newTasks[i].Month = int.Parse(tmp.Substring(0,end));
				tmp = tmp.Substring(end+1);

				end = 0;
				end += tmp.LastIndexOf('/');
				end += tmp.LastIndexOf('-');
				end += tmp.LastIndexOf('.');
				end += 2; // IndexOf will return -1 twice compensating...
				newTasks[i].Day = int.Parse(dates[i].Value.Substring(0,end));

				newTasks[i].Year = int.Parse(dates[i].Value.Substring(end+1));

			}
			
			return newTasks;
		}
		#endregion
		//<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

		protected void Application_Start(Object sender, EventArgs e)
		{

		}

		protected void Session_Start(Object sender, EventArgs e)
		{

		}

		protected void Application_BeginRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_EndRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(Object sender, EventArgs e)
		{

		}

		protected void Application_Error(Object sender, EventArgs e)
		{

		}

		protected void Session_End(Object sender, EventArgs e)
		{

		}

		protected void Application_End(Object sender, EventArgs e)
		{

		}

		#region Web Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}

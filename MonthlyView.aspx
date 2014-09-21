<%@ Page language="c#" AutoEventWireup="true" Inherits="AutoTaskManager.MyCalendar" CodeFile="MyCalendar.aspx.cs" %>
<script runat="server">
    private DateTime dt;
	
    protected void Page_Load(object sender, EventArgs e)
    {
        dt = DateTime.Now;
    }
</script>


<HTML>
	<head>
		<title>
			Monthly View
		</title>
	</head>
	<body>
		<div id="content">
			<div id="header" style="width:1200px;left30px;">
				<table style="padding:4px" width="1200px" cellpadding = "1" bgcolor = "909090">
					<tr bgcolor = "909090">
						<td>
							<a href="WeeklyView.aspx">
								<form id = "WeeklyView" method = "post">
									<input type = "button" value = "Weekly View" align = "right" style="width:150px;height:30px;font-size:20px;">
								</form>
							</a>
						</td>
						<td><h1 align = "center">
							<font color="white">Monthly View</font>
						</h1></td>
						<td align="right"><form id = "AddTask" method = "post">
							<input type = "button" value = "AddTask" style="width:100px;height:30px;font-size:20px;">
						</form></td>
					</tr>
				</table>
			</div>
			<table cellpadding="0px" cellspacing="0px">
				<tr>
					<td >
						<div id="sidebar" style="width:200px;height:700px;background-color:#C0C0C0;">
							<div id="months" style="padding:10px">
								January
								<br/>
								February
								<br/>
								March
								<br/>
								April
								<br/>
								May
							</div>
						</div>
					</td>
					<td>
						<div id="maincontent" style="width:1000px;right:700px;">
							<form id="Form1" method="post" runat="server">
						
								<asp:Calendar id="myCalendar"
									runat="server" Width="1000px" Height="700px"></asp:Calendar>
								
								<br/>
								<br/>
								<br/>

								<asp:Label id="lblDates" style="Z-INDEX: 102; LEFT: 30px; POSITION: absolute; TOP: 900px" runat="server"
									Width="544px" Height="72px" Font-Bold="True" Font-Names="Monaco" Font-Size=40></asp:Label>

							</form>
							<p style = "Z-INDEX: 103; LEFT: 30px; POSITION: absolute; TOP: 1000px" >test = <%= dt.Year %></p>
							<p style = "Z-INDEX: 103; LEFT: 30px; POSITION: absolute; TOP: 1100px" >test = <%= testtext %></p>
						</div>
					</td>
				</tr>
			</table>
		</div>
	</body>
</HTML>
	
	
<%--
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
	
	public class MyOwnCalendar : System.Web.UI.Page
	{
	protected System.Web.UI.WebControls.Calendar MyCalendar;
	protected System.Web.UI.WebControls.Label lblDates;
	
	private void Page_Load(object sender, System.EventArgs e)
	{
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

	private void InitializeComponent()
	{
		this.MyCalendar.SelectionChanged += new System.EventHandler(this.MyCalendar_SelectionChanged);
		this.Load += new System.EventHandler(this.Page_Load);
	}
	#endregion
	
	private void MyCalendar_SelectionChanged(object sender, System.EventArgs e)
	{
		lblDates.Text = "You selected these dates:<br>";
		
		foreach (DateTime dt in MyCalendar.SelectedDates)
		{
			lblDates.Text += dt.ToLongDateString() + "<br>";
		}
	}
}
	
	
--%>
      
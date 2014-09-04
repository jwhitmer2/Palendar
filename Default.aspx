
<%@ Page language="c#" CodeFile="MyCalendar.aspx.cs" AutoEventWireup="true" Inherits="AutoTaskManager.MyCalendar" %>

<HTML>
	<head>
		<title>
			Monthly View
		</title>
	</head>
	<body>
		<table width="1001px" style="left:30px; POSITION: absolute;" cellpadding = "1" bgcolor = "909090">
			<tr bgcolor = "909090">
				<td><h1 align = "center">
					<font color="white">Monthly View</font>
				</h1></td>
				<td><form id = "AddTask" method = "post">
					<input type = "submit" value = "AddTask" align = "right" size = "50">
				</form></td>
			</tr>
		</table>
		<br/>
		<form id="Form1" method="post" runat="server">
			<asp:Calendar id="myCalendar" style="Z-INDEX: 101; LEFT: 30px; POSITION: absolute; TOP: 50px"
				runat="server" Width="1000px" Height="800px"></asp:Calendar>
			<br/>
			<br/>
			<br/>
			<asp:Label id="lblDates" style="Z-INDEX: 102; LEFT: 16px; POSITION: absolute; TOP: 900px" runat="server"
				Width="544px" Height="72px" Font-Bold="True" Font-Names="Monaco" Font-Size=40></asp:Label>
		</form>
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
      
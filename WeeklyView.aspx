<%@ Page language="c#" AutoEventWireup="true" Inherits="AutoTaskManager.WeeklyView" CodeFile="WeeklyView.aspx.cs" %>

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
			Weekly View
		</title>
	</head>
	<body>
		<div id="content">
			<div id="header" style="width:1200px;left30px;">
				<table style="padding:4px" width="1200px" cellpadding = "1" bgcolor = "909090">
					<tr bgcolor = "909090">
						<td>
							<a href="MonthlyView.aspx">
								<form id = "MonthlyView" method = "post">
									<input type = "button" value = "Monthly View" align = "right" style="width:150px;height:30px;font-size:20px;">
								</form>
							</a>
						</td>
						<td><h1 align = "center">
							<font color="white">Weekly View</font>
						</h1></td>
						<td align="right"><form id = "AddTask" method = "post">
							<input type = "button" value = "AddTask" style="width:100px;height:30px;font-size:20px;">
						</form></td>
					</tr>
				</table>
			</div>
			<div id="maincontent" style="top:60px;width:1200px;left30px; POSITION: absolute;">
				<table bgcolor= "C0C0C0" cellspacing="3px" cellpadding="10px">
					<tr style="font-size:30px">
						<th bgcolor= "F0F0F0" style="width:150px">
							
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Sunday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Monday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Tuesday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Wednesday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Thursday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Friday
						</th>
						<th bgcolor= "F0F0F0" style="width:150px">
							Saturday
						</th>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							7:00AM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							8:00AM
						</td>
						<td align="center">
						</td>
						<td align="center">
						</td>
						<td align="center" bgcolor="FF0000">
							Software Development
						</td>
						<td align="center">
						</td>
						<td align="center" bgcolor="FF0000">
							Software Development
						</td>
						<td align="center">
						</td>
						<td align="center">
						</td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							9:00AM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							10:00AM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							11:00AM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							Noon
						</td>
						<td align="center"></td>
						<td align="center" bgcolor="00B0FF">
							FOOD!
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							1:00PM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							2:00PM
						</td>
						<td align="center" bgcolor="FFA000" rowspan="2">
							Meet with team
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							3:00PM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
					<tr style="font-color:#FFFFFF;font-size:20px" bgcolor="FFFFFF">
						<td align="center" bgcolor="FAFAFA">
							4:00PM
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center" bgcolor="FFA000">
							Meet with team
						</td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
						<td align="center"></td>
					</tr>
				</table>
				<form action="">
					<input type="checkbox" style=";" name="Task" value="Task1">Test checkbox 1<br>
					<input type="checkbox" name="Task" value="Task2">Test checkbox 2 
				</form>
			</div>
		</div>
	</body>
</HTML>
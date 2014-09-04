/*
 * Created by SharpDevelop.
 * User: nik rowen
 * Date: 9/2/2014
 * Time: 2:48 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;

namespace task_try
{
	using System;

class Task
{	
	//public string Date;	//make three integers Day, Month, Year
	public int Day; 
	public int Month;
	public int Year; 
	public string Description;
	public int LvlofImportance; 
	//Default constructor
	public Task(){
		//Date = "unkown";
		Day = 0;
		Month = 0;
		Year = 0; 
		Description = "none";
		LvlofImportance = 0;
	}
	
	//Constructor
	public Task(string Description, int LvlofImportance, int Day, int Month, int Year){
		//this.Date = Date;
		this.Day = Day; 
		this.Month = Month; 
		this.Year = Year; 		
		this.Description = Description; 
		this.LvlofImportance = LvlofImportance; 
	}
	
	//Write Method
	public void PrintTask(){
		Console.WriteLine("Date: {0}/{1}/{2}", Month, Day, Year);
		Console.WriteLine("What: {0}", Description);
		Console.WriteLine("Level of Importance: {0}", LvlofImportance);
	}
}
public class Test{
	public static void Main(){
		Task Task1 = new Task("Nik's Birthday", 10, 18, 12, 1994);
		Task1.PrintTask();
		Console.ReadKey(true); //for console
	}
}	
}
// ConsoleApplication2.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <tesseract\baseapi.h>
#include <leptonica\allheaders.h>
#include <iostream>
#include <string>
using namespace std;


int main()
{
	// Initialize tesseract API
	tesseract::TessBaseAPI api;
	api.Init("", "eng", tesseract::OEM_DEFAULT);
	api.SetPageSegMode(static_cast<tesseract::PageSegMode>(3));
	api.SetOutputName("out");

	// Read in input image file
	cout << "File name: " << endl;
	char imageName[256];
	cin >> imageName;
	PIX *pixels = pixRead(imageName);
	
	STRING textOutput;
	api.ProcessPages(imageName, NULL, 0, &textOutput);

	cout << textOutput.string() << endl;

	system("pause");

	return 0;
}


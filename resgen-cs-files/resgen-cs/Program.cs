using Microsoft.CSharp;
using System;
using System.CodeDom;
using System.CodeDom.Compiler;
//using System.Drawing;
using System.IO;
using System.Resources;
using System.Resources.Tools;
namespace resgencs
{
	class MainClass
	{
		// /str: language[,namespace[,classname[,filename]]]
		public static int Main (string[] args)
		{
			string inputfile;
			string ns;
			string classname;
			string outputfile;

			var index = -1;

			var len = args.Length;

			index++;
			if (len < index+1 || args [index] == null || args [index].Equals ("")) {
				Console.WriteLine("Please specify the input file");
				return -1;
			}
			inputfile = args [index];

			index++;
			if (len < index+1 || args [index] == null || args [index].Equals ("")) {
				Console.WriteLine("Please specify the namespace");
				return -1;
			}
			ns = args [index];

			index++;
			if (len < index+1 || args [index] == null || args [index].Equals ("")) {
				Console.WriteLine("Please specify the classname");
				return -1;
			}
			classname = args [index];

			index++;
			if (len < index+1 || args [index] == null || args [index].Equals ("")) {
				Console.WriteLine("Please specify the output filename");
				return -1;
			}
			outputfile = args [index];

			StreamWriter sw = new StreamWriter(outputfile);
			string[] errors = null;
			CSharpCodeProvider provider = new CSharpCodeProvider();

			CodeCompileUnit code = StronglyTypedResourceBuilder.Create(
				inputfile,
				classname,
				ns,
				provider, 
				true, // internal class
				out errors);

			if (errors.Length > 0) {
				foreach (var error in errors){
					Console.WriteLine(error); 
				}
			}

			provider.GenerateCodeFromCompileUnit(code, sw, new CodeGeneratorOptions());                                         
			sw.Close();
			return 0;
		}

		/*
		private static void CreateResXFile()
		{
			Bitmap logo = new Bitmap(@".\Logo.bmp");

			ResXResourceWriter rw = new ResXResourceWriter(@".\Demo.resx");
			rw.AddResource("Logo", logo); 
			rw.AddResource("AppTitle", "Demo Application");
			rw.Generate();
			rw.Close();
		}
		*/

	}
}

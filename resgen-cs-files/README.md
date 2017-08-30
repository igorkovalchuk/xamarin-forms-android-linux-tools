# Use the command line version of nuget to restore packages.

nuget restore

# Also in this project we have two special references:

Microsoft.CSharp
~\xamarin-android\external\mono\external\binary-reference-assemblies\v4.5\Microsoft.CSharp.dll

System.Design
~\xamarin-android\external\mono\external\binary-reference-assemblies\v4.5\System.Design.dll

Probably it is possible to install these dlls in other way, using nuget, but I was not able to.

Build the resgen-cs.exe using the monodevelop.

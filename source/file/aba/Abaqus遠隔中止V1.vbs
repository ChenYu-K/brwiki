Option Explicit
Dim objShell, objFolder, objFSO, objFile1

Set objShell = CreateObject("WScript.Shell")
Set objFSO = WScript.CreateObject("Scripting.FileSystemObject")
Set objFolder = objFSO.GetFolder(objShell.CurrentDirectory)

For Each objFile1 In objFolder.Files
	If Right(objFile1.Name, 4)=".inp" Then
		objShell.Run "abaqus terminate job=" & Replace(objFile1.Name, ".inp", "")
	End If
Next


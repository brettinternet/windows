#NoEnv
#Persistent
SetBatchLines, -1

#Include %A_ScriptDir%\Socket\Socket.ahk

/*
Source: https://gist.github.com/G33kDude/c94ce4a847ac59913ccf52b0a3075f61
Alternatives: https://autohotkey.wiki/hardware:streamdeck
*/

Server := new SocketTCP()
Server.OnAccept := Func("OnAccept")
Server.Bind(["127.0.0.1", 1337])
Server.Listen()
return


; --- Server Code ---

OnAccept(server)
{
	sock := server.Accept()
	request := StrSplit(sock.RecvLine(), " ")

	if (request[1] != "GET")
	{
		sock.SendText("HTTP/1.0 501 Not Implemented`r`n`r`n")
		sock.Disconnect()
		return
	}

	fname := LTrim(request[2], "/")
	if IsFunc(fname)
	{
		SetTimer, % fname, -0
		sock.SendText("HTTP/1.0 200 OK`r`n`r`n")
		sock.Disconnect()
		return
	}

	sock.SendText("HTTP/1.0 404 Not Found`r`n`r`n")
	sock.Disconnect()
	return
}


; --- User Functions ---

SingleMonitor()
{
	Run DisplaySwitch /external
}

SoundSettings()
{
  Run, powershell -NoExit -Command "Start ms-settings:sound",, hide
}

AppsVolumeSettings()
{
  Run, powershell -NoExit -Command "Start ms-settings:apps-volume",, hide
}


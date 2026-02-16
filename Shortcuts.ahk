!1::    ; Firefox
{
    if WinExist("Firefox")
        WinActivate() 
    else
        Run("Firefox")
}

!2::    ; VScode
{
    if WinExist("Visual Studio Code") 
        WinActivate()
    else
        Run("C:\Users\bcstr\AppData\Local\Programs\Microsoft VS Code\Code.exe")
}

!3::    ; File explorer
{
    if WinExist("ahk_class CabinetWClass") ;
        WinActivate()
    else
        Run("explorer.exe")
}

!4::    ; Terminal
{
    if WinExist("ahk_class CASCADIA_HOSTING_WINDOW_CLASS")
        WinActivate()
    else
        Run("wt.exe -d C:\Users\bcstr")
}

!s::    ; Spotify
{
    if WinExist("ahk_exe Spotify.exe")
        WinActivate()
    else
        Run("spotify.exe")
}

!w:: {
 If WinExist('WhatsApp ahk_exe WhatsApp.Root.exe')
  WinActivate
 Else runApp('WhatsApp')
}

runApp(appName) {  ; Run an app from AppsFolder
 ; https://www.autohotkey.com/boards/viewtopic.php?f=82&t=124336&p=552720#p552720
 For app in ComObject('Shell.Application').NameSpace('shell:AppsFolder').Items
  If app.Name = appName
   Return Run('explorer shell:appsFolder\' app.Path)
}

!q::    ; quartus
{
    if WinExist("ahk_exe quartus.exe")
        WinActivate()
    else
        Run("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Altera 24.1std.0.1077 Lite Edition\Quartus Prime Lite Edition 24.1std.0.1077\Quartus (Quartus Prime 24.1std).lnk")
}

!k::    ; kodi
{
    if WinExist("ahk_exe kodi.exe")
        WinActivate()
    else
        Run("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Kodi\Kodi")
}

!a::    ; autohokey dash
{
    if WinExist("ahk_class AutoHotkeyGUI")
        WinActivate()
    else
        Run('"C:\Program Files\AutoHotkey\UX\AutoHotkeyUX.exe" "C:\Program Files\AutoHotkey\UX\ui-dash.ahk"')
}

!t::    ; Teams
{
    if WinExist("ahk_class TeamsWebView")
        WinActivate()
    else
        Run("C:\Program Files\WindowsApps\MSTeams_26005.213.4315.4117_x64__8wekyb3d8bbwe\ms-teams.exe")
}
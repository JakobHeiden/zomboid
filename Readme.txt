Clients
-------
- Spielversion in Steam auf "42.13.1 - 42.13.1" stellen (rechtsclick auf das spiel in der library liste -> properties... -> betas -> beta participation dropbox)

Server allgemein
----------------
Inhalt von \Server Settings\ :
Tulips_Server.ini
Tulips_Server_SandboxVars.lua
Tulips_Server_spawnpoints.lua
Tulips_Server_spawnregions.lua

kopieren nach:
%USERPROFILE%\Zomboid\Server\Tulips_Server_SandboxVars.lua usw.

Dedicated Server
----------------
Portfordward 16261 UDP und 16262 UDP von gateway an server

Firewall freigeben:
- C:\Program Files (x86)\Steam\steamapps\common\ProjectZomboid\jre64\bin\java.exe
- C:\Program Files (x86)\Steam\steamapps\common\ProjectZomboid\jre64\bin\javaw.exe

manuell files für mod kopieren: ( https://steamcommunity.com/sharedfiles/filedetails/?id=3629431142 )
"
To enable the fire-hardened spear fix:
- Browse to steamapps\workshop\content\108600\3629431142\mods\RPB42Fixes\42.13.1\media
- Copy the zombie folder from there to steamapps\common\Project Zomboid Dedicated Server\java (or steamapps\common\ProjectZomboid for single-player/host)
"
-> beides gemacht

starten mit Dedicated Server\StartServer64 - TulipsServer.bat um auf den verwendeten Servernamen "Tulips_Server" zu verweisen.

Client Commands
---------------
Debugmode aktivieren: steam launch option:
-debug

im "t" ingame chat des clients (shift+t öffnet das fenster wieder):
/setaccesslevel "SPIELERNAME" admin
/godmode

File Locations
--------------
Clinet Logs: %USERPROFILE%\Zomboid\console.txt
Server Logs: %USERPROFILE%\Zomboid\Logs\<DATE>_DebugLog-server.txt
Server Save Files: %USERPROFILE%\Zomboid\Saves\Multiplayer\
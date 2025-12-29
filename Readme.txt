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
Server Logs: %USERPROFILE%\Zomboid\console.txt
Server Save Files: %USERPROFILE%\Zomboid\Saves\Multiplayer\


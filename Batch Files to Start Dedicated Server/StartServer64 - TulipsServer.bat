@setlocal enableextensions
@cd /d "%~dp0"

:: --- JAVA SELECTION ---
:: Wir nutzen Azul Zulu 25 für maximale Effizienz mit Build 42
SET CUSTOM_JAVA="C:\Java\zulu25\bin\java.exe"

:: Falls du mal das Original-Java testen willst, tausche das "::"
:: SET CUSTOM_JAVA=".\jre64\bin\java.exe"

SET PZ_CLASSPATH=java/;java/projectzomboid.jar

:: --- SERVER START (OPTIMIZED FOR i9-13900KF) ---
:: /high     = Höchste CPU-Priorität
:: /affinity FFFF = Nutzt nur die schnellen P-Cores (Kerne 0-15)
start "PZ_Server" /high /affinity FFFF /b %CUSTOM_JAVA% ^
-Djava.awt.headless=true ^
-Dzomboid.steam=1 ^
-Dzomboid.znetlog=0 ^
-XX:+UseZGC ^
-XX:+ZGenerational ^
-XX:MaxGCPauseMillis=20 ^
-XX:ConcGCThreads=4 ^
-XX:ParallelGCThreads=4 ^
-XX:+UseCompactObjectHeaders ^
-XX:-CreateCoredumpOnCrash ^
-XX:-OmitStackTraceInFastThrow ^
-Xms16g ^
-Xmx16g ^
-Djava.library.path=natives/;natives/win64/;. ^
-cp %PZ_CLASSPATH% zombie.network.GameServer ^
-statistic 0 %1 %2 -servername Tulips_Server

echo.
echo ===================================================
echo  Project Zomboid B42 Server is booting...
echo  CPU: i9-13900KF (P-Cores Assigned)
echo  Java: Azul Zulu 25 (ZGC Generational)
echo ===================================================
echo.

PAUSE
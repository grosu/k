@ECHO off
set PATH=%PATH%;%~dp0..\lib\native\cygwin;%~dp0..\lib\native\cygwin\x64
SETLOCAL ENABLEEXTENSIONS
IF ERRORLEVEL 1 ECHO Unable to enable extensions
IF NOT DEFINED K_OPTS SET K_OPTS=-Xms64m -Xmx1024m -Xss32m -XX:+TieredCompilation
java -Djava.awt.headless=true -ea -jar %K_OPTS% "%~dp0..\lib\java\k3.jar" -krun %*
ENDLOCAL

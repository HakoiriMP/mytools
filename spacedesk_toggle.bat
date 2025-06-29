@echo off
sc query spacedeskService | find "RUNNING" > nul
if %errorlevel%==0 (
    echo spacedesk は現在実行中です。停止します...
    sc stop spacedeskService
) else (
    echo spacedesk は停止中です。起動します...
    sc start spacedeskService
)
REM pause は一時停止（あとで使うかも）、REMはコメントアウト
REM pause

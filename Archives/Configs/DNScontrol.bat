netsh interface ip set dns name="Ethernet" static 208.67.222.123
netsh interface ip add dns name="Ethernet" 208.67.220.123 index=2

xcopy /h /y "D:\Archives\Configs\hosts" "C:\WINDOWS\System32\drivers\etc\"

ipconfig /flushdns

::start notepad C:\WINDOWS\System32\drivers\etc\hosts

exit
@echo off
@color 0A
@mode con cp select=936  >nul

if [%1] == [] goto exit
if [%1] == [services] goto services
if [%1] == [install_nginx_service] goto install_nginx_service
if [%1] == [uninstall_nginx_service] goto uninstall_nginx_service
if [%1] == [run_sqlmanager] goto run_sqlmanager
if [%1] == [run_phpMyAdmin] goto run_phpMyAdmin
if [%1] == [login_mysql] goto login_mysql
if [%1] == [run_autohotkey_spy] goto run_autohotkey_spy
if [%1] == [run_procexp] goto run_procexp
if [%1] == [run_putty] goto run_putty
if [%1] == [run_freemind] goto run_freemind
if [%1] == [run_sftp_net_drive] goto run_sftp_net_drive
if [%1] == [run_node_shell] goto run_node_shell
if [%1] == [run_phpstorm] goto run_phpstorm
if [%1] == [run_mongovue] goto run_mongovue
if [%1] == [run_redis_desktop] goto run_redis_desktop
if [%1] == [run_virtualbox] goto run_virtualbox
if [%1] == [run_apktool] goto run_apktool
if [%1] == [run_git_bash] goto run_git_bash

:services
start "" "services.msc"
goto exit

:install_nginx_service
call "C:\nginxstack\serviceinstall.bat" INSTALL
goto exit

:uninstall_nginx_service
call "C:\nginxstack\serviceinstall.bat"
goto exit

:run_sqlmanager
cd /d "D:\tools\SQL Manager for MySQL"
start "" "MyManager.exe"
goto exit

:run_phpMyAdmin
cd /d "C:\Program Files (x86)\Google\Chrome\Application"
chrome.exe 127.0.0.1:81
goto exit

:login_mysql
@set path=C:\nginxstack\mysql\bin;%path%
mysql -uroot -pxiaotian
goto exit

:run_autohotkey_spy
start "" "D:\tools\AutoHotkey\AU3_Spy.exe"
goto exit

:run_procexp
start "" "D:\tools\SySuite\procexp.exe"
goto exit

:run_putty
cd /d "D:\tools\editplus\tools\putty"
start "" "putty.exe"
goto exit

:run_freemind
start "" "D:\tools\FreeMind\Freemind.bat"
goto exit

:run_sftp_net_drive
start "" "C:\Program Files (x86)\SFTP Net Drive\SftpNetDrive.exe"
goto exit

:run_node_shell
%comspec% /k "C:\nginxstack\use_nginxstack.bat"
goto exit

:run_phpstorm
start "" "H:\rover\nodejs\devtools\PhpStorm\bin\PhpStorm.exe"
goto exit

:run_mongovue
start "" "C:\nginxstack\MongoVUE\MongoVUE.exe"
goto exit

:run_redis_desktop
start "" "C:\nginxstack\RedisDesktopManager\rdm.exe"
goto exit

:run_virtualbox
start "" "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
goto exit

:run_apktool
cd /d "H:\rover\android\Apktool Box\Apktool Box"
start "" "Apktool.exe"
goto exit

:run_git_bash
start "" "C:\Program Files\Git\git-bash.exe"
goto exit

:exit

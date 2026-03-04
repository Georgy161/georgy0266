Set objWord = CreateObject("Word.Application") 
Do While True 
  If objWord.BuildKeyCode(117) Then WScript.Quit(10) 
  WScript.Sleep 100 
Loop 

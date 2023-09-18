#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include, ScriptingDictionary.ahk

obj := new ScriptingDictionary
obj[3] := 1
obj[2] := 2
obj.B  := 3
obj.b  := 4
obj.a  := 5
obj.A  := 6

for k, v in obj
   MsgBox,, Pairs, % k . ": " . v

keys := obj.Keys
for k, v in keys
   MsgBox,, Keys, % v

values := obj.Items
for k, v in values
   MsgBox,, Values, % v

obj.Delete("a")
MsgBox, % obj.HasKey("a")
MsgBox, % obj.HasKey("A")

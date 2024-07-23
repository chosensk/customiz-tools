!macro customInstall
   SetRegView 64
   WriteRegStr HKCR "*\shell\tangram" "" "open w&ith tangram"
   WriteRegStr HKCR "*\shell\tangram" "Icon" "$INSTDIR\tangram.exe"
   WriteRegStr HKCR "*\shell\tangram\command" "" '"$INSTDIR\tangram.exe" "search" "%1"'
   SetRegView 32
   WriteRegStr HKCR "*\shell\tangram" "" "open w&ith tangram"
   WriteRegStr HKCR "*\shell\tangram" "Icon" "$INSTDIR\tangram.exe"
   WriteRegStr HKCR "*\shell\tangram\command" "" '"$INSTDIR\tangram.exe" "search" "%1"'
!macroend
!macro customUninstall
   DeleteRegKey HKCR "*\shell\tangram"
!macroend
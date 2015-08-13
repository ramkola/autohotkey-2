Chr(UnicodeCode)
{
VarSetCapacity(TempVar,2), NumPut(UnicodeCode,TempVar,0,"UShort")
Return, TempVar
}

Asc(UnicodeChar)
{
Return, NumGet(UnicodeChar,0,A_IsUnicode ? "UShort" : "UChar")
}


 #1:: sendinput {asc  173} ;¡

; é
 ; #2:: sendinput {asc 0233}
 ; #u:: sendinput {asc 163}

 #2:: sendinput {asc 0233} ;é
+#2:: sendinput {asc 0201} ;É


 #4:: sendinput {asc 0167} ;§

 #7:: sendinput {asc 0232} ;è
+#7:: sendinput {asc 0200} ;È

 #8:: sendinput {asc  236} ;°

 #9:: sendinput {asc 0231} ;ç
+#9:: sendinput {asc 0199} ;Ç

 #0:: sendinput {asc 0224} ;à
+#0:: sendinput {asc 0192} ;À

 #':: sendinput {asc 0249} ;ù
+#':: sendinput {asc 0217} ;Ù

 ; #[:: sendinput {asc 0769}
; +#[:: sendinput {asc 0168}

 #,:: sendinput {asc  243} ;≤
 #.:: sendinput {asc  242} ;≥
+#,:: sendinput {asc 0171} ;«
+#.:: sendinput {asc 0187} ;»

 #n:: sendinput {asc 0241} ;ñ
+#n:: sendinput {asc 0209} ;Ñ

 #a:: sendinput {asc 1281} ;☺
+#a:: sendinput {asc 0260} ;

 #f:: sendinput {asc  167} ;º

 #/:: sendinput {asc   92} ;246
+#/:: sendinput {asc  168} ;¿

; +#:: sendinput {asc 203}

 ; #a:: sendinput {asc  224}
 #b:: sendinput {asc  225} ;ß
 #g:: sendinput {asc  226} ;Γ
 #p:: sendinput {asc  227} ;π
+#s:: sendinput {asc  228} ;Σ
 #s:: sendinput {asc  229} ;σ
 #m:: sendinput {asc  230} ;µ
 #t:: sendinput {asc  231} ;τ
 #d:: sendinput {asc  235} ;δ
 #e:: sendinput {asc  238} ;ε


 #=:: sendinput {asc  247} ;≈
+#=:: sendinput {asc  241} ;±
+#8:: sendinput {asc  248} ;°
+#`:: sendinput {asc  170} ;¬



;  #:: sendinput {asc 0}
; +#:: sendinput {asc 0}




; The latter half remaps the number row to the Mac option combos.
!1::SendInput {Asc 173}  ;¡
!2::SendInput {Asc 0153}  ;™
!3::SendInput {Asc 0163}  ;£
!4::SendInput {Asc 0162}  ;¢
!5::SendInput {Asc 236}  ;∞
!6::SendInput {Asc 0167}  ;§
!7::SendInput {Asc 0182}  ;¶
!8::SendInput {Asc 0149}  ;•
!9::Send, {NumpadLeft}{NumpadRight}ª  ;Âª
!0::Send, {NumpadLeft}{NumpadRight}°  ;Â°
!-::Send, {NumpadLeft}{NumpadRight}─  ;â”€
!=::Send, {NumpadLeft}{NumpadRight}≠  ;â‰

; ^e::é

; ^a::á

; ^i::í

; ^o::ó

; ^u::ú

; ^n::ñ

; ^q::¿

; ^w::¡

;
; Alt + Shift + key
;
; *!1::altShift("¡","/")
; *!2::altShift("€","™")
; *!3::altShift("£","‹")
; *!4::altShift("¢","›")
; *!5::altShift("8","fi")
; *!6::altShift("§","fl")
; *!7::altShift("¶","‡")
; *!8::altShift("•","°")
; *!9::altShift("ª","·")
; *!0::altShift("º","‚")

; *!a::altShift("å","Å")
; *!b::altShift("integral","i")
; *!c::altShift("ç","Ç")
; *!d::altShift("partial difference","Î")
; *!e::altShift("´","‰")
; *!f::altShift("ƒ","Ï")
; *!g::altShift("©","Ì")
; *!h::altShift("overdot","Ó")
; *!i::altShift("^","È")
; *!j::altShift("delta","Ô")
; *!k::altShift("°","Apple")
; *!l::altShift("¬","Ò")
; *!m::altShift("µ","˜")
; *!n::altShift("~","ˆ")
; *!o::altShift("ø","Ø")
; *!p::altShift("pi","Pi")
; *!q::altShift("œ","Œ")
; *!r::altShift("®","Â")
; *!s::altShift("ß","Í")
; ;*!t::altShift("†","Ê")
; *!u::altShift("¨","Ë")
; *!v::altShift("v","lozenge")
; *!w::altShift("epsilon","„")
; *!x::altShift("approximately equal","Ù")
; *!y::altShift("¥","Á")
; *!z::altShift("Omega","Û")

; *!-::altShift("–","—")
; *!=::altShift("!=","±")
; *![::altShift("“","”")
; *!]::altShift("‘","’")
; *!`;::altShift("…","Ú")
; *!'::altShift("æ","Æ")
; *!\::altShift("«","»")
; *!,::altShift("<=","¯")
; *!.::altShift(">=","breve")
; *!/::altShift("÷","¿")	
	
altShift(accented,accentedShift) {
	if (!GetKeyState("Shift")) {
		SendInput % accented
	} else {
		SendInput % accentedShift
	}
}

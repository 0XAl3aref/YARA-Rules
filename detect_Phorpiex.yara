rule MAL_Botnet_Phorpiex {
    meta:
        description = "rule to detect Phorpiex"
        author = "@M4lcode (Mostafa ElSheimy)"
        date   = "2024-09-26"

    strings:
        $op1 = {55 8B EC 81 EC ?? ?? 00 00 68 ?? ?? 00 00 FF 15 ?? ?? 41 00}

	// 55			PUSH EBP	
	// 8B EC		MOV EBP, ESP	
	// 81 EC ?? 0F 00 00	SUB ESP, 0XFF0	
	// 68 ?? ?? 00 00	PUSH 0X7D0	
	// FF 15 ?? ?? 41 00	CALL DWORD PTR [0X410138]	[KERNEL32.dll].Sleep

        $op2 = {E8 78 ?? 00 00 E9 36 FD FF FF 8B FF 55 8B EC}

	// E8 78 ?? 00 00	CALL 0X4032C8	
	// E9 36 FD FF FF	JMP 0X402C8B	
	// 8B FF		MOV EDI, EDI	
	// 55			PUSH EBP	
	// 8B EC		MOV EBP, ESP	

	$op3 = {6A 58 68 ?? ?? 40 00 E8 85 ?? 00 00 33 DB 89 5D E4 89 5D FC 8D 45 98 50 FF 15 ?? ?? 40 00 C7 45 FC FE FF FF FF C7 45 FC 01 00 00 00 64 A1 18 00 00 00 8B 70 04 BF ?? ?? 40 00 6A 00 56 57 FF 15 ?? ?? 40 00}
	
	// 6A 58		PUSH 0X58	
	// 68 E8 54 40 00	PUSH 0X4054E8	
	// E8 85 05 00 00	CALL 0X40321C	
	// 33 DB		XOR EBX, EBX	
	// 89 5D E4		MOV DWORD PTR [EBP - 0X1C], EBX	
	// 89 5D FC		MOV DWORD PTR [EBP - 4], EBX	
	// 8D 45 98		LEA EAX, [EBP - 0X68]	
	// 50			PUSH EAX	
	// FF 15 ?? ?? 40 00	CALL DWORD PTR [0X404038]	[KERNEL32.dll].GetStartupInfoA

	$s1 = "FirewallDisableNotify"
	$s2 = "%s:Zone.Identifier"
	$s3 = "bitcoincash:"
	$s4 = "IsDebuggerPresent"

    condition:
        uint16(0) == 0x5A4D and
	($op1 or ($op2 and $op3)) and
	any of ($s*)

}

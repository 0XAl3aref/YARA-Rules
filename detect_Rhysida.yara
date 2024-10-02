import "pe"
rule detect_Rhysida {
    meta:
        description = "Rule to detect Rhysida ransomware variants"
        author = "M4lcode (Mostafa ElSheimy)"
        date = "2024-10-02"

    strings:
        $s1 = {48 83 EC 28 48 8B 05 ?? ?? ?? 00 C7 00 01 00 00 00 E8 ?? ?? ?? 00 E8 ?? ?? ?? ?? 90 90 48 83 C4 28 C3}
	$s2 = "rhysida" nocase
	$s3 = {48 83 C4 28 C3 0F 1F 40 00 66 2E 0F 1F 84 00 00 00 00 00 48 83 EC 28 48 8B 05 E5 ?? 06 00 C7 00 00 00 00 00}
	
	// 4883C428		ADD RSP, 0X28	
	// C3			RET 	
	// 0F1F4000		NOP DWORD PTR [RAX]	
	// 662E0F1F840000000000	NOP WORD PTR CS:[RAX + RAX]	
	// 4883EC28		SUB RSP, 0X28	
	// 488B05E5??0600	MOV RAX, QWORD PTR [RIP + 0X619E5]	
	// C70000000000		MOV DWORD PTR [RAX], 0	

    condition:
        uint16(0) == 0x5A4D and
	2 of ($s*) and
	pe.sections[0].raw_data_size > 50000
}



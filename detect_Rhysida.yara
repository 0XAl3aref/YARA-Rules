rule MAL_RANSOM_Rhysida {
    meta:
        description = "Detects Rhysida ransomware variants"
        author = "@M4lcode (Mostafa ElSheimy)"
        date = "2024-10-02"
	hash1 ="5b3a0b1b89ca463f56984cf67ea1719f1ddee770d1e14438e3fcf9b5301f2c83"
	hash2 ="a0d4d52885b654cbfeefd194359936072133519c2bc7e8f68b7b668e59c67b94"
	hash3 ="a40b815afce131df6d4bc3f389cb64b742f545481119d3ecb78dda22e546a41"
	hash4 ="258ddd78655ac0587f64d7146e52549115b67465302c0cbd15a0cba746f05595"
	hash5 ="3518195c256aa940c607f8534c91b5a9cd453c7417810de3cd4d262e2906d24f"
	hash6 ="4e4a77c25c914d070b2d3d968bca4206accd099e1031c6d6019ddbe768781e5e"
	hash7 ="a864282fea5a536510ae86c77ce46f7827687783628e4f2ceb5bf2c41b8cd3c6"
	hash8 ="d7ba9881345d71862a68080d210643e2c2d3e17fd13065385edcd3b3391898c3"
	hash9 ="b183b142d3c4e99ee07c3407b82858146fa61ded95be2e67ce920c8002309fb0"
	hash10 ="3c3db3c02a4d04dcafdc71adb8779b787d31142ffeb9ae0e638f979594897cbf"
	hash11 ="9097ab2b2b71f3ea0cf8c9271224b6227e9aa2545ae23d4621f122bdb99c77b8"
	hash12 ="f06b905626d742ec5a1eab8027d9097b74fd0413a901d0599eac8555d1f89e50"
	hash13 ="d5c2f87033a5baeeb1b5b681f2c4a156ff1c05ccd1bfdaf6eae019fc4d5320ee"


    strings:
        $op1 = {48 83 EC 28 48 8B 05 ?? ?? ?? 00 C7 00 01 00 00 00 E8 ?? ?? ?? 00 E8 ?? ?? ?? ?? 90 90 48 83 C4 28 C3}

	// 4883EC28		SUB RSP, 0X28	
	// 488B05D5270400	MOV RAX, QWORD PTR [RIP + 0X427D5]	
	// C70000000000		MOV DWORD PTR [RAX], 0	
	// E84A160300		CALL 0X432B60	
	// E895FCFFFF		CALL 0X4011B0	
	// 90			NOP 	
	// 90			NOP 	
	// 4883C428		ADD RSP, 0X28	
	// C3			RET 	

	$op2 = {00 0F 1F 44 00 00 66 2E 0F 1F 84 00 00 00 00 00 55 48 89 E5 5D C3 90 90 90 90 90 90 90 90 90 90}

	// 000F			ADD BYTE PTR [RDI], CL	
	// 1F			.BYTE 0X1F	
	// 440000		ADD BYTE PTR [RAX], R8B	
	// 662E0F1F840000000000	NOP WORD PTR CS:[RAX + RAX]	
	// 55			PUSH RBP	
	// 4889E5		MOV RBP, RSP	
	// 5D			POP RBP	
	// C3			RET 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	

	$op3 = {95 FC FF FF 90 90 48 83 C4 28 C3 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 48 89 E5 48 8D 0D}

	// E895FCFFFF		CALL 0X4011B0	
	// 90			NOP 	
	// 90			NOP 	
	// 4883C428		ADD RSP, 0X28	
	// C3			RET 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 90			NOP 	
	// 55			PUSH RBP	
	// 4889E5		MOV RBP, RSP	
	// 488D0D15000000	LEA RCX, [RIP + 0X15]	

	$x1 = "rhysida" nocase

    condition:
        uint16(0) == 0x5A4D and
	filesize < 2MB and
	(
	$x1 and
	all of ($op*)
	)
}

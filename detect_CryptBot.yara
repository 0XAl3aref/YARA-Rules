import "pe"
rule MAL_Stealer_CryptBot {
    meta:
        description = "Rule to detect CryptBot malware variants"
        author = "M4lcode (Mostafa ElSheimy)"
        date = "2024-09-27"
	os = "windows"
        category = "Malware"
	hash 1="0914519679dcf5949845252433430a5ab6854f6579e7adabcf36cffa5185624e"
	hash 2="0b14c37c84d89fd4939173c7cdb22f18c76098756fdb90694a63232f68530050"
	hash 3="0c27861f03c8d88d8ad32b06a63f329a9ad895312abb6878600aeb9ce745b67a"
	hash 4="7756efa9a5914c3141479ab8de889d6aa48f25fed3997cc165fafd4b7ab54ff9"
	hash 5="4982cf1702801f6cedce0fabdf5d5e1cf94af778b768eddad5044f923180cb89"
	hash 6="a89687d296782db168a92a496fb865d481666cf53588684f69ecac509711da16"
	hash 7="9b4321c5053081493b0aa919e8254f677fd19faed543de23b080967d1ad6ab27"
	hash 8="5aec1cb903ac8b2b877603083a838004cd139caf58f4212e8d7c371f19e17b7c"
	hash 9="39ef51afa4b5a9f930af06bcb4bdf50e289b522c40888ff3015d9486b8b4cdcf"
	hash 10="4d10776348522e720fd36f175f9f735039e4aa3ae9543886320cd75e45e77754"
	hash 11="7a35c91fbd4871c10b50ecb9184da53ff57f61e3bd242347b108d7eaf2327434"
	hash 12="a8a451b18143b192de1f6da327400e4fe0b629386d0c9dbf0d77e002e8ca6610"
	hash 13="f77780b1f59368b3cd63a8c10219e542396c981b31de94ac67f2af36d535f893"
	hash 14="1245ff30b60bc72943fefe45e33643949bfa18e04f2844f17d6253f2263ac065"
	hash 15="e3dbf48bf7232de2ba30108b1a2f786f720d9add5ff58f6ec6e642333f36fcbe"
	hash 16="3949006957ea55af22ff7e57fc95f3bcd9cde5ffe597e76a3ba22fdcb67314f7"
	hash 17="2802d71a1e4a703ffbef8ce02a5f844731ef6644a4d5894acc593cbdb90a40a4"
	hash 18="17ae975bc89c6255bb747b81a28199bd962643f706121ab98b2112f015a9a087"
	hash 19="ff5fd7ba4cdd0a39e7a53346af5fdc790c47051d017e80b635c5b4ee82d5f1bd"
	hash 20="ffd998746e12ce104bfc905c9e37dd671b866717db084a7c0b4d1d6d8607ae52"

    strings:
        $s1 = {C7 05 ?C ?? F? 00 01 00 00 00 E9 B1 FC FF FF 90 C7 05 ?C ?? F? 00 00 00 00 00 E9 A1 FC FF FF 90}

	// C705EC33F20001000000	MOV DWORD PTR [0XF233EC], 1	
	// E9B1FCFFFF		JMP 0X401170	
	// 90			NOP 	
	// C705EC33F20000000000	MOV DWORD PTR [0XF233EC], 0	
	// E9A1FCFFFF		JMP 0X401170	
	// 90			NOP

        $s2 = {55 89 E5 57 56 53 83 EC 1C C7 04 24 00 ?0 8? 00 FF 15 F0 ?1 F? 00 83 EC 04 85 C0 74 73 89 C3}

	// 55			PUSH EBP	
	// 89E5			MOV EBP, ESP	
	// 57			PUSH EDI	
	// 56			PUSH ESI	
	// 53			PUSH EBX	
	// 83EC1C		SUB ESP, 0X1C	
	// C7042400308700	MOV DWORD PTR [ESP], 0X873000	'libgcc_s_dw2-1.dll'
	// FF15F051F200		CALL DWORD PTR [0XF251F0]	[KERNEL32.dll].GetModuleHandleA
	// 83EC04		SUB ESP, 4	
	// 85C0			TEST EAX, EAX	
	// 7473			JE 0X401580	
	// 89C3			MOV EBX, EAX	

        $s3 = {83 EC 1C 8B 44 24 20 89 04 24 E8 ?? ?? 4? 00 85 C0 0F 94 C0 83 C4 1C 0F B6 C0 F7 D8 C3 90 90 90}
	
	// 83EC1C	SUB ESP, 0X1C	
	// 8B442420	MOV EAX, DWORD PTR [ESP + 0X20]	
	// 890424	MOV DWORD PTR [ESP], EAX	
	// E879D54700	CALL 0X87EA58	
	// 85C0		TEST EAX, EAX	
	// 0F94C0	SETE AL	
	// 83C41C	ADD ESP, 0X1C	
	// 0FB6C0	MOVZX EAX, AL	
	// F7D8		NEG EAX	
	// C3		RET 	
	// 90		NOP 	
	// 90		NOP 
	// 90		NOP 	

    condition:
        uint16(0) == 0x5A4D and
	2 of ($s*) and
	filesize < 7MB and
	pe.sections[3].name == "/4"
}

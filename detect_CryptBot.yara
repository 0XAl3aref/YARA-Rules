import "pe"
rule detect_CryptBot {
    meta:
        description = "Rule to detect CryptBot malware variants"
        author = "M4lcode (Mostafa ElSheimy)"
        date = "2024-09-27"
	os = "windows"
        category = "Malware"

    strings:
        $s1 = {C7 05 ?C ?? F? 00 01 00 00 00 E9 B1 FC FF FF 90 C7 05 ?C ?? F? 00 00 00 00 00 E9 A1 FC FF FF 90}
        $s2 = {55 89 E5 57 56 53 83 EC 1C C7 04 24 00 ?0 8? 00 FF 15 F0 ?1 F? 00 83 EC 04 85 C0 74 73 89 C3 C7}
        $s3 = {83 EC 1C 8B 44 24 20 89 04 24 E8 ?? ?? 4? 00 85 C0 0F 94 C0 83 C4 1C 0F B6 C0 F7 D8 C3 90 90 90}
	

    condition:
        uint16(0) == 0x5A4D and
	2 of ($s1, $s2, $s3) and
	filesize < 7MB and
	pe.sections[3].name == "/4"
}

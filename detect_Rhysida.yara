import "pe"
rule detect_Rhysida {
    meta:
        description = "Rule to detect Rhysida ransomware variants"
        author = "M4lcode (Mostafa ElSheimy)"
        date = "2024-10-02"

    strings:
        $s1 = {48 83 EC 28 48 8B 05 ?? ?? ?? 00 C7 00 01 00 00 00 E8 ?? ?? ?? 00 E8 ?? ?? ?? ?? 90 90 48 83 C4 28 C3}
	$s2 = "rhysida" nocase
	$s3 = {00 0F 1F 44 00 00 66 2E 0F 1F 84 00 00 00 00 00 55 48 89 E5 5D C3 90 90 90 90 90 90 90 90 90 90}
	$s4 = {95 FC FF FF 90 90 48 83 C4 28 C3 90 90 90 90 90 90 90 90 90 90 90 90 90 90 55 48 89 E5 48 8D 0D}

    condition:
        uint16(0) == 0x5A4D and
	all of ($s*)
}

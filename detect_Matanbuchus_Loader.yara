import "pe"
rule MAL_Loader_Matanbuchus {
    meta:
        description = "Detects Matanbuchus Loader variants"
        author = "@M4lcode (Mostafa ElSheimy)"
        date = "2024-09-28"

    strings:

        $s1 = {55 8B EC 83 7D 0C 01 75 05 E8 ?? ?? 00 00 FF 75 10 FF 75 0C FF 75 08 E8 ?? FE FF FF 83 C4 0C 5D}
	$s2 = {03 00 00 FF 75 10 FF 75 0C FF 75 08 E8 ?? FE FF FF 83 C4 0C 5D C2 0C 00 55 8B EC}
	$s3 = {65 F0 00 33 C0 53 56 57 33 C9 8D 7D DC 53 0F A2 8B F3 5B 90}
	$s4 = {FE FF FF 83 C4 0C 5D C2 0C 00}
	$s5 = {FF FF FF FF 8D 45 F4 64 A3 00 00 00 00 C3 C2 00 00 CC CC CC CC CC CC CC CC CC CC 51 8D 4C 24 08}
	$s6 = {0F 84 A? 01 00 00 83 65 F0 00 33 C0 53 56 57 33 C9 8D 7D DC 53 0F A2 8B F3 5B}
	$s7 = {8B 4D F4 64 89 0D 00 00 00 00 59 5F 5F 5E 5B 8B E5 5D 51 C3 50 64 FF 35 00 00 00 00 8D 44 24 0C}
	$s8 = {C1 00 00 00 08 74 79 F7 C1 00 00 00 10 74 71 33 C9 0F 01 D0 89 45 EC 89 55 F0 8B 45 EC 8B 4D F0}
 
    condition:
        pe.characteristics & pe.DLL and
	(pe.exports("DllInstall") or pe.exports("DllRegisterServer")) and
	3 of ($s*)
}

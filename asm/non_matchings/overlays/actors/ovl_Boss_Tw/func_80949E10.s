glabel func_80949E10
/* 11140 80949E10 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 11144 80949E14 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 11148 80949E18 AFB00030 */  sw      $s0, 0x0030($sp)
/* 1114C 80949E1C AFA5006C */  sw      $a1, 0x006C($sp)
/* 11150 80949E20 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 11154 80949E24 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 11158 80949E28 A08E05F8 */  sb      $t6, 0x05F8($a0)           ## 000005F8
/* 1115C 80949E2C 35F80400 */  ori     $t8, $t7, 0x0400           ## $t8 = 00000400
/* 11160 80949E30 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 11164 80949E34 3C198095 */  lui     $t9, %hi(D_8094C85C)       ## $t9 = 80950000
/* 11168 80949E38 9339C85C */  lbu     $t9, %lo(D_8094C85C)($t9)
/* 1116C 80949E3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 11170 80949E40 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 11174 80949E44 17200003 */  bne     $t9, $zero, .L80949E54
/* 11178 80949E48 24080003 */  addiu   $t0, $zero, 0x0003         ## $t0 = 00000003
/* 1117C 80949E4C 10000002 */  beq     $zero, $zero, .L80949E58
/* 11180 80949E50 A7A80066 */  sh      $t0, 0x0066($sp)
.L80949E54:
/* 11184 80949E54 A7A90066 */  sh      $t1, 0x0066($sp)
.L80949E58:
/* 11188 80949E58 860A0150 */  lh      $t2, 0x0150($s0)           ## 00000150
/* 1118C 80949E5C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 11190 80949E60 314B0007 */  andi    $t3, $t2, 0x0007           ## $t3 = 00000000
/* 11194 80949E64 55600031 */  bnel    $t3, $zero, .L80949F2C
/* 11198 80949E68 26040568 */  addiu   $a0, $s0, 0x0568           ## $a0 = 00000568
/* 1119C 80949E6C 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 111A0 80949E70 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 111A4 80949E74 00000000 */  nop
/* 111A8 80949E78 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 111AC 80949E7C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 111B0 80949E80 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 111B4 80949E84 46040180 */  add.s   $f6, $f0, $f4
/* 111B8 80949E88 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 111BC 80949E8C E7A60058 */  swc1    $f6, 0x0058($sp)
/* 111C0 80949E90 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 111C4 80949E94 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 111C8 80949E98 44818000 */  mtc1    $at, $f16                  ## $f16 = 20.00
/* 111CC 80949E9C 46080280 */  add.s   $f10, $f0, $f8
/* 111D0 80949EA0 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 111D4 80949EA4 46105480 */  add.s   $f18, $f10, $f16
/* 111D8 80949EA8 0C00CFC8 */  jal     Math_Rand_CenteredFloat

/* 111DC 80949EAC E7B2005C */  swc1    $f18, 0x005C($sp)
/* 111E0 80949EB0 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 111E4 80949EB4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 111E8 80949EB8 3C018095 */  lui     $at, %hi(D_8094B214)       ## $at = 80950000
/* 111EC 80949EBC 46040180 */  add.s   $f6, $f0, $f4
/* 111F0 80949EC0 C428B214 */  lwc1    $f8, %lo(D_8094B214)($at)
/* 111F4 80949EC4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 111F8 80949EC8 44816000 */  mtc1    $at, $f12                  ## $f12 = 5.00
/* 111FC 80949ECC E7A60060 */  swc1    $f6, 0x0060($sp)
/* 11200 80949ED0 E7A2004C */  swc1    $f2, 0x004C($sp)
/* 11204 80949ED4 E7A20050 */  swc1    $f2, 0x0050($sp)
/* 11208 80949ED8 E7A20054 */  swc1    $f2, 0x0054($sp)
/* 1120C 80949EDC E7A20040 */  swc1    $f2, 0x0040($sp)
/* 11210 80949EE0 E7A20048 */  swc1    $f2, 0x0048($sp)
/* 11214 80949EE4 0C00CFBE */  jal     Math_Rand_ZeroFloat

/* 11218 80949EE8 E7A80044 */  swc1    $f8, 0x0044($sp)
/* 1121C 80949EEC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 11220 80949EF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 11224 80949EF4 27AC0040 */  addiu   $t4, $sp, 0x0040           ## $t4 = FFFFFFD8
/* 11228 80949EF8 240D0096 */  addiu   $t5, $zero, 0x0096         ## $t5 = 00000096
/* 1122C 80949EFC 460A0400 */  add.s   $f16, $f0, $f10
/* 11230 80949F00 AFAD0020 */  sw      $t5, 0x0020($sp)
/* 11234 80949F04 AFAC0010 */  sw      $t4, 0x0010($sp)
/* 11238 80949F08 8FA4006C */  lw      $a0, 0x006C($sp)
/* 1123C 80949F0C E7B00014 */  swc1    $f16, 0x0014($sp)
/* 11240 80949F10 87A50066 */  lh      $a1, 0x0066($sp)
/* 11244 80949F14 27A60058 */  addiu   $a2, $sp, 0x0058           ## $a2 = FFFFFFF0
/* 11248 80949F18 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFE4
/* 1124C 80949F1C AFA00018 */  sw      $zero, 0x0018($sp)
/* 11250 80949F20 0C24E371 */  jal     func_80938DC4
/* 11254 80949F24 AFA0001C */  sw      $zero, 0x001C($sp)
/* 11258 80949F28 26040568 */  addiu   $a0, $s0, 0x0568           ## $a0 = 00000568
.L80949F2C:
/* 1125C 80949F2C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 11260 80949F30 AFA40038 */  sw      $a0, 0x0038($sp)
/* 11264 80949F34 860E0160 */  lh      $t6, 0x0160($s0)           ## 00000160
/* 11268 80949F38 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 1126C 80949F3C 260401B4 */  addiu   $a0, $s0, 0x01B4           ## $a0 = 000001B4
/* 11270 80949F40 25CF0014 */  addiu   $t7, $t6, 0x0014           ## $t7 = 00000014
/* 11274 80949F44 A60F0160 */  sh      $t7, 0x0160($s0)           ## 00000160
/* 11278 80949F48 86180160 */  lh      $t8, 0x0160($s0)           ## 00000160
/* 1127C 80949F4C 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 11280 80949F50 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 11284 80949F54 2B010100 */  slti    $at, $t8, 0x0100
/* 11288 80949F58 14200002 */  bne     $at, $zero, .L80949F64
/* 1128C 80949F5C 3C073D4C */  lui     $a3, 0x3D4C                ## $a3 = 3D4C0000
/* 11290 80949F60 A6190160 */  sh      $t9, 0x0160($s0)           ## 00000160
.L80949F64:
/* 11294 80949F64 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 11298 80949F68 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3D4CCCCD
/* 1129C 80949F6C C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 112A0 80949F70 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 112A4 80949F74 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 112A8 80949F78 3C05C0A0 */  lui     $a1, 0xC0A0                ## $a1 = C0A00000
/* 112AC 80949F7C 46049180 */  add.s   $f6, $f18, $f4
/* 112B0 80949F80 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 112B4 80949F84 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 112B8 80949F88 0C01E107 */  jal     Math_SmoothScaleMaxF

/* 112BC 80949F8C E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 112C0 80949F90 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 112C4 80949F94 44810000 */  mtc1    $at, $f0                   ## $f0 = 50.00
/* 112C8 80949F98 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 112CC 80949F9C 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 112D0 80949FA0 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 112D4 80949FA4 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 112D8 80949FA8 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 112DC 80949FAC 460A4401 */  sub.s   $f16, $f8, $f10
/* 112E0 80949FB0 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 112E4 80949FB4 44060000 */  mfc1    $a2, $f0
/* 112E8 80949FB8 44070000 */  mfc1    $a3, $f0
/* 112EC 80949FBC E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 112F0 80949FC0 AFA80014 */  sw      $t0, 0x0014($sp)
/* 112F4 80949FC4 8FA4006C */  lw      $a0, 0x006C($sp)
/* 112F8 80949FC8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 112FC 80949FCC 0C00B92D */  jal     func_8002E4B4
/* 11300 80949FD0 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 11304 80949FD4 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 11308 80949FD8 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 1130C 80949FDC C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 11310 80949FE0 86090440 */  lh      $t1, 0x0440($s0)           ## 00000440
/* 11314 80949FE4 46062200 */  add.s   $f8, $f4, $f6
/* 11318 80949FE8 15200018 */  bne     $t1, $zero, .L8094A04C
/* 1131C 80949FEC E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 11320 80949FF0 860A017A */  lh      $t2, 0x017A($s0)           ## 0000017A
/* 11324 80949FF4 3C040603 */  lui     $a0, 0x0603                ## $a0 = 06030000
/* 11328 80949FF8 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 1132C 80949FFC 1540001F */  bne     $t2, $zero, .L8094A07C
/* 11330 8094A000 248443B4 */  addiu   $a0, $a0, 0x43B4           ## $a0 = 060343B4
/* 11334 8094A004 0C028800 */  jal     SkelAnime_GetFrameCount

/* 11338 8094A008 A60B0440 */  sh      $t3, 0x0440($s0)           ## 00000440
/* 1133C 8094A00C 44825000 */  mtc1    $v0, $f10                  ## $f10 = 0.00
/* 11340 8094A010 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 11344 8094A014 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 11348 8094A018 46805020 */  cvt.s.w $f0, $f10
/* 1134C 8094A01C 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 11350 8094A020 44071000 */  mfc1    $a3, $f2
/* 11354 8094A024 24A543B4 */  addiu   $a1, $a1, 0x43B4           ## $a1 = 060343B4
/* 11358 8094A028 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 1135C 8094A02C E60001A4 */  swc1    $f0, 0x01A4($s0)           ## 000001A4
/* 11360 8094A030 AFAC0014 */  sw      $t4, 0x0014($sp)
/* 11364 8094A034 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 11368 8094A038 8FA40038 */  lw      $a0, 0x0038($sp)
/* 1136C 8094A03C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 11370 8094A040 E7A20018 */  swc1    $f2, 0x0018($sp)
/* 11374 8094A044 1000000E */  beq     $zero, $zero, .L8094A080
/* 11378 8094A048 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L8094A04C:
/* 1137C 8094A04C 8FA40038 */  lw      $a0, 0x0038($sp)
/* 11380 8094A050 0C0295B2 */  jal     func_800A56C8
/* 11384 8094A054 8E0501A4 */  lw      $a1, 0x01A4($s0)           ## 000001A4
/* 11388 8094A058 10400008 */  beq     $v0, $zero, .L8094A07C
/* 1138C 8094A05C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 11390 8094A060 44818000 */  mtc1    $at, $f16                  ## $f16 = 1000.00
/* 11394 8094A064 3C050603 */  lui     $a1, 0x0603                ## $a1 = 06030000
/* 11398 8094A068 24A55030 */  addiu   $a1, $a1, 0x5030           ## $a1 = 06035030
/* 1139C 8094A06C E61001A4 */  swc1    $f16, 0x01A4($s0)          ## 000001A4
/* 113A0 8094A070 8FA40038 */  lw      $a0, 0x0038($sp)
/* 113A4 8094A074 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 113A8 8094A078 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
.L8094A07C:
/* 113AC 8094A07C 960D0088 */  lhu     $t5, 0x0088($s0)           ## 00000088
.L8094A080:
/* 113B0 8094A080 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 113B4 8094A084 31AE0001 */  andi    $t6, $t5, 0x0001           ## $t6 = 00000000
/* 113B8 8094A088 51C00005 */  beql    $t6, $zero, .L8094A0A0
/* 113BC 8094A08C 860F0178 */  lh      $t7, 0x0178($s0)           ## 00000178
/* 113C0 8094A090 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 113C4 8094A094 00000000 */  nop
/* 113C8 8094A098 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 113CC 8094A09C 860F0178 */  lh      $t7, 0x0178($s0)           ## 00000178
.L8094A0A0:
/* 113D0 8094A0A0 55E00004 */  bnel    $t7, $zero, .L8094A0B4
/* 113D4 8094A0A4 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 113D8 8094A0A8 0C252831 */  jal     func_8094A0C4
/* 113DC 8094A0AC 8FA5006C */  lw      $a1, 0x006C($sp)
/* 113E0 8094A0B0 8FBF0034 */  lw      $ra, 0x0034($sp)
.L8094A0B4:
/* 113E4 8094A0B4 8FB00030 */  lw      $s0, 0x0030($sp)
/* 113E8 8094A0B8 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 113EC 8094A0BC 03E00008 */  jr      $ra
/* 113F0 8094A0C0 00000000 */  nop



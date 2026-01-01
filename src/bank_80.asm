ORG $808000

CODE_808000:
    SEI                                  ;808000;
    CLC                                  ;808001;
    XCE                                  ;808002;
    JML.L CODE_808007                    ;808003;

CODE_808007:
    STZ.W $4200                          ;808007;
    STZ.W $420C                          ;80800A;
    STZ.W $420B                          ;80800D;
    LDA.B #$00                           ;808010;
    STA.L $7EFFFF                        ;808012;

CODE_808016:
    LDA.B #$01                           ;808016;
    STA.W $420D                          ;808018;
    LDA.B #$86                           ;80801B;
    PHA                                  ;80801D;
    PLB                                  ;80801E;
    REP #$10                             ;80801F;
    LDX.W #$8000                         ;808021;

CODE_808024:
    LDA.W $0000,X                        ;808024;
    BEQ CODE_808052                      ;808027;
    LSR A                                ;808029;
    STA.B $00                            ;80802A;
    INX                                  ;80802C;
    LDA.W $0000,X                        ;80802D;
    STA.B $10                            ;808030;
    INX                                  ;808032;
    LDA.W $0000,X                        ;808033;
    STA.B $11                            ;808036;
    INX                                  ;808038;

CODE_808039:
    LDA.W $0000,X                        ;808039;
    STA.B ($10)                          ;80803C;
    INX                                  ;80803E;
    BCC CODE_808047                      ;80803F;
    LDA.W $0000,X                        ;808041;
    STA.B ($10)                          ;808044;
    INX                                  ;808046;

CODE_808047:
    LDY.B $10                            ;808047;
    INY                                  ;808049;
    STY.B $10                            ;80804A;
    DEC.B $00                            ;80804C;
    BNE CODE_808039                      ;80804E;
    BRA CODE_808024                      ;808050;

CODE_808052:
    REP #$30                             ;808052;
    LDX.W #$1F9F                         ;808054;

CODE_808057:
    STZ.B $00,X                          ;808057;
    DEX                                  ;808059;
    DEX                                  ;80805A;
    BPL CODE_808057                      ;80805B;
    LDX.W #$02FF                         ;80805D;
    TXS                                  ;808060;
    SEP #$10                             ;808061;
    LDX.B #$00                           ;808063;
    TXY                                  ;808065;

CODE_808066:
    LDA.W DATA16_868067,Y                ;808066;
    STA.B $36,X                          ;808069;
    INY                                  ;80806B;
    INY                                  ;80806C;
    TXA                                  ;80806D;
    CLC                                  ;80806E;
    ADC.W #$0010                         ;80806F;
    TAX                                  ;808072;
    CPX.B #$70                           ;808073;
    BNE CODE_808066                      ;808075;
    LDA.W #$0D37                         ;808077;
    STA.W $0BA6                          ;80807A;
    LDX.B #$00                           ;80807D;
    LDA.W #$852C                         ;80807F;
    JSR.W CODE_80813B                    ;808082;
    JSR.W CODE_8088EC                    ;808085;
    LDA.B #$80                           ;808088;
    STA.B $B3                            ;80808A;
    LDA.B #$B1                           ;80808C;
    STA.B $C2                            ;80808E;
    STA.W $4200                          ;808090;
    CLI                                  ;808093;
    JMP.W CODE_808099                    ;808094;

CODE_808097:
    BRA CODE_808097                      ;808097;

CODE_808099:
    REP #$10                             ;808099;
    LDX.W #$02FF                         ;80809B;
    TXS                                  ;80809E;
    SEP #$30                             ;80809F;

CODE_8080A1:
    LDA.W $0B9D                          ;8080A1;
    BEQ CODE_8080A1                      ;8080A4;
    INC.W $0B9B                          ;8080A6;
    LDX.B #$00                           ;8080A9;

CODE_8080AB:
    LDA.B $30,X                          ;8080AB;
    CMP.B #$01                           ;8080AD;
    BEQ CODE_8080DA                      ;8080AF;
    CMP.B #$02                           ;8080B1;
    BNE CODE_8080B9                      ;8080B3;
    DEC.B $31,X                          ;8080B5;
    BEQ CODE_8080E9                      ;8080B7;

CODE_8080B9:
    TXA                                  ;8080B9;
    CLC                                  ;8080BA;
    ADC.B #$10                           ;8080BB;
    TAX                                  ;8080BD;
    CPX.B #$60                           ;8080BE;
    BEQ CODE_8080CC                      ;8080C0;
    CPX.B #$70                           ;8080C2;
    BNE CODE_8080AB                      ;8080C4;
    STZ.W $0B9D                          ;8080C6;
    JMP.W CODE_808099                    ;8080C9;

CODE_8080CC:
    STZ.W $0B9D                          ;8080CC;
    LDA.B $30,X                          ;8080CF;
    CMP.B #$01                           ;8080D1;
    BEQ CODE_8080DA                      ;8080D3;
    BCS CODE_8080E9                      ;8080D5;
    JMP.W CODE_808099                    ;8080D7;

CODE_8080DA:
    STX.B $A0                            ;8080DA;
    LDA.B #$03                           ;8080DC;
    STA.B $30,X                          ;8080DE;
    LDA.B $37,X                          ;8080E0;
    XBA                                  ;8080E2;
    LDA.B $36,X                          ;8080E3;
    TCS                                  ;8080E5;
    JMP.W ($0032,X)                      ;8080E6;

CODE_8080E9:
    STX.B $A0                            ;8080E9;
    LDA.B #$03                           ;8080EB;
    STA.B $30,X                          ;8080ED;
    REP #$30                             ;8080EF;
    LDA.B $34,X                          ;8080F1;
    TCS                                  ;8080F3;
    PLP                                  ;8080F4;
    PLY                                  ;8080F5;
    PLX                                  ;8080F6;
    RTS                                  ;8080F7;

CODE_8080F8:
    SEP #$30                             ;8080F8;
    LDX.B $A0                            ;8080FA;
    STZ.B $30,X                          ;8080FC;
    BRA CODE_8080B9                      ;8080FE;

CODE_808100:
    PHX                                  ;808100;
    PHY                                  ;808101;
    PHP                                  ;808102;
    REP #$20                             ;808103;
    SEP #$10                             ;808105;
    LDA.W #$0102                         ;808107;
    BRA CODE_808116                      ;80810A;

CODE_80810C:
    PHX                                  ;80810C;
    PHY                                  ;80810D;
    PHP                                  ;80810E;
    SEP #$30                             ;80810F;
    XBA                                  ;808111;
    LDA.B #$02                           ;808112;
    REP #$20                             ;808114;

CODE_808116:
    LDX.B $A0                            ;808116;
    STA.B $30,X                          ;808118;
    TSC                                  ;80811A;
    STA.B $34,X                          ;80811B;
    SEP #$30                             ;80811D;
    BRA CODE_8080B9                      ;80811F;

CODE_808121:
    BIT.W $0B9D                          ;808121;
    BMI CODE_808127                      ;808124;
    RTS                                  ;808126;

CODE_808127:
    PHX                                  ;808127;
    PHY                                  ;808128;
    PHP                                  ;808129;
    REP #$20                             ;80812A;
    SEP #$10                             ;80812C;
    LDX.B $A0                            ;80812E;
    LDA.W #$0102                         ;808130;
    STA.B $30,X                          ;808133;
    TSC                                  ;808135;
    STA.B $34,X                          ;808136;
    JMP.W CODE_808099                    ;808138;

CODE_80813B:
    PHP                                  ;80813B;
    REP #$20                             ;80813C;
    STA.B $32,X                          ;80813E;
    LDA.W #$0101                         ;808140;
    STA.B $30,X                          ;808143;
    PLP                                  ;808145;
    RTS                                  ;808146;

CODE_808147:
    PHP                                  ;808147;
    REP #$20                             ;808148;
    STZ.B $30,X                          ;80814A;
    PLP                                  ;80814C;
    RTS                                  ;80814D;

CODE_80814E:
    PHP                                  ;80814E;
    REP #$30                             ;80814F;
    LDX.W #$0000                         ;808151;

CODE_808154:
    LSR A                                ;808154;
    BCC CODE_808159                      ;808155;
    STZ.B $30,X                          ;808157;

CODE_808159:
    PHA                                  ;808159;
    CLC                                  ;80815A;
    TXA                                  ;80815B;
    ADC.W #$0010                         ;80815C;
    TAX                                  ;80815F;
    PLA                                  ;808160;
    CPX.W #$0070                         ;808161;
    BCC CODE_808154                      ;808164;
    PLP                                  ;808166;
    RTS                                  ;808167;

CODE_808168:
    REP #$38                             ;808168;
    PHA                                  ;80816A;
    PHX                                  ;80816B;
    PHY                                  ;80816C;
    PHD                                  ;80816D;
    PHB                                  ;80816E;
    LDA.W #$0000                         ;80816F;
    TCD                                  ;808172;
    PHK                                  ;808173;
    PLB                                  ;808174;
    SEP #$30                             ;808175;
    STZ.W $1E08                          ;808177;
    INC.W $0B9E                          ;80817A;
    LDA.W $4210                          ;80817D;
    LDA.B #$80                           ;808180;
    STA.W $2100                          ;808182;
    JSR.W CODE_8083D9                    ;808185;
    LDA.W $0B9D                          ;808188;
    ORA.W $0BA0                          ;80818B;
    BNE CODE_808193                      ;80818E;
    JSR.W CODE_808822                    ;808190;

CODE_808193:
    LDA.B #$FF                           ;808193;
    STA.W $0B9D                          ;808195;
    STA.W $0BA0                          ;808198;

CODE_80819B:
    LDA.W $4212                          ;80819B;
    LSR A                                ;80819E;
    BCS CODE_80819B                      ;80819F;
    REP #$30                             ;8081A1;
    LDA.W $1F48                          ;8081A3;
    AND.W #$00FF                         ;8081A6;
    BNE CODE_8081C4                      ;8081A9;
    LDA.B $A7                            ;8081AB;
    STA.B $A9                            ;8081AD;
    LDA.W $4218                          ;8081AF;
    TAX                                  ;8081B2;
    AND.W #$000F                         ;8081B3;
    BEQ CODE_8081BB                      ;8081B6;
    LDX.W #$0000                         ;8081B8;

CODE_8081BB:
    STX.B $A7                            ;8081BB;
    TXA                                  ;8081BD;
    EOR.B $A9                            ;8081BE;
    AND.B $A7                            ;8081C0;
    STA.B $AB                            ;8081C2;

CODE_8081C4:
    LDA.B $AD                            ;8081C4;
    STA.B $AF                            ;8081C6;
    LDA.W $421A                          ;8081C8;
    TAX                                  ;8081CB;
    AND.W #$000F                         ;8081CC;
    BEQ CODE_8081D4                      ;8081CF;
    LDX.W #$0000                         ;8081D1;

CODE_8081D4:
    STX.B $AD                            ;8081D4;
    TXA                                  ;8081D6;
    EOR.B $AF                            ;8081D7;
    AND.B $AD                            ;8081D9;
    STA.B $B1                            ;8081DB;
    PLB                                  ;8081DD;
    PLD                                  ;8081DE;
    PLY                                  ;8081DF;
    PLX                                  ;8081E0;
    PLA                                  ;8081E1;
    RTI                                  ;8081E2;

CODE_8081E3:
    REP #$10                             ;8081E3;
    STZ.W $4300                          ;8081E5;
    STZ.W $4304                          ;8081E8;
    STZ.W $2102                          ;8081EB;
    STZ.W $2103                          ;8081EE;
    LDA.B #$04                           ;8081F1;
    STA.W $4301                          ;8081F3;
    LDY.W #$0700                         ;8081F6;
    STY.W $4302                          ;8081F9;
    LDY.W #$0220                         ;8081FC;
    STY.W $4305                          ;8081FF;
    LDA.B #$01                           ;808202;
    STA.W $420B                          ;808204;
    LDA.B $A1                            ;808207;
    BEQ CODE_808226                      ;808209;
    STZ.W $2121                          ;80820B;
    LDA.B #$22                           ;80820E;
    STA.W $4301                          ;808210;
    LDY.W #$0300                         ;808213;
    STY.W $4302                          ;808216;
    LDY.W #$0200                         ;808219;
    STY.W $4305                          ;80821C;
    LDA.B #$01                           ;80821F;
    STA.W $420B                          ;808221;
    STZ.B $A1                            ;808224;

CODE_808226:
    LDA.B $B4                            ;808226;
    STA.W $210D                          ;808228;
    LDA.B $B5                            ;80822B;
    STA.W $210D                          ;80822D;
    LDA.B $B6                            ;808230;
    STA.W $210E                          ;808232;
    LDA.B $B7                            ;808235;
    STA.W $210E                          ;808237;
    LDA.B $B8                            ;80823A;
    STA.W $210F                          ;80823C;
    LDA.B $B9                            ;80823F;
    STA.W $210F                          ;808241;
    LDA.B $BA                            ;808244;
    STA.W $2110                          ;808246;
    LDA.B $BB                            ;808249;
    STA.W $2110                          ;80824B;
    LDA.B $BC                            ;80824E;
    STA.W $2111                          ;808250;
    LDA.B $BD                            ;808253;
    STA.W $2111                          ;808255;
    LDA.B $BE                            ;808258;
    STA.W $2112                          ;80825A;
    LDA.B $BF                            ;80825D;
    STA.W $2112                          ;80825F;
    LDA.B $C9                            ;808262;
    STA.W $2130                          ;808264;
    LDA.B $CA                            ;808267;
    STA.W $2131                          ;808269;
    LDA.B $CB                            ;80826C;
    ORA.B #$20                           ;80826E;
    STA.W $2132                          ;808270;
    LDA.B $CC                            ;808273;
    ORA.B #$40                           ;808275;
    STA.W $2132                          ;808277;
    LDA.B $CD                            ;80827A;
    ORA.B #$80                           ;80827C;
    STA.W $2132                          ;80827E;
    SEP #$30                             ;808281;
    STZ.B $C3                            ;808283;
    LDX.B #$00                           ;808285;
    LDY.B #$70                           ;808287;

CODE_808289:
    LDA.W $0AA1,X                        ;808289;
    BNE CODE_808291                      ;80828C;
    CLC                                  ;80828E;
    BRA CODE_8082B6                      ;80828F;

CODE_808291:
    LDA.W $0AA2,X                        ;808291;
    STA.W $4300,Y                        ;808294;
    LDA.W $0AA3,X                        ;808297;
    STA.W $4301,Y                        ;80829A;
    LDA.W $0AA4,X                        ;80829D;
    STA.W $4302,Y                        ;8082A0;
    LDA.W $0AA5,X                        ;8082A3;
    STA.W $4303,Y                        ;8082A6;
    LDA.W $0AA6,X                        ;8082A9;
    STA.W $4304,Y                        ;8082AC;
    LDA.W $0AA7,X                        ;8082AF;
    STA.W $4307,Y                        ;8082B2;
    SEC                                  ;8082B5;

CODE_8082B6:
    ROL.B $C3                            ;8082B6;
    TXA                                  ;8082B8;
    CLC                                  ;8082B9;
    ADC.B #$07                           ;8082BA;
    TAX                                  ;8082BC;
    TYA                                  ;8082BD;
    SEC                                  ;8082BE;
    SBC.B #$10                           ;8082BF;
    TAY                                  ;8082C1;
    BNE CODE_808289                      ;8082C2;
    CLC                                  ;8082C4;
    ROL.B $C3                            ;8082C5;
    RTS                                  ;8082C7;

CODE_8082C8:
    LDA.B $A2                            ;8082C8;
    BEQ CODE_808332                      ;8082CA;
    REP #$10                             ;8082CC;
    LDA.B #$80                           ;8082CE;
    STA.W $2115                          ;8082D0;
    LDY.W #$1000                         ;8082D3;
    LDX.W #$1809                         ;8082D6;
    STX.W $4300                          ;8082D9;
    LDX.W #$FFB0                         ;8082DC;
    STX.W $4302                          ;8082DF;
    STZ.W $4304                          ;8082E2;
    LSR.B $A2                            ;8082E5;
    BCC CODE_8082F7                      ;8082E7;
    LDX.W #$5000                         ;8082E9;
    STX.W $2116                          ;8082EC;
    STY.W $4305                          ;8082EF;
    LDA.B #$01                           ;8082F2;
    STA.W $420B                          ;8082F4;

CODE_8082F7:
    LSR.B $A2                            ;8082F7;
    BCC CODE_808309                      ;8082F9;
    LDX.W #$5800                         ;8082FB;
    STX.W $2116                          ;8082FE;
    STY.W $4305                          ;808301;
    LDA.B #$01                           ;808304;
    STA.W $420B                          ;808306;

CODE_808309:
    LSR.B $A2                            ;808309;
    BCC CODE_80831B                      ;80830B;
    LDX.W #$0800                         ;80830D;
    STX.W $2116                          ;808310;
    STY.W $4305                          ;808313;
    LDA.B #$01                           ;808316;
    STA.W $420B                          ;808318;

CODE_80831B:
    LSR.B $A2                            ;80831B;
    BCC CODE_808330                      ;80831D;
    LDX.W #$6000                         ;80831F;
    STX.W $2116                          ;808322;
    LDY.W #$0400                         ;808325;
    STY.W $4305                          ;808328;
    LDA.B #$01                           ;80832B;
    STA.W $420B                          ;80832D;

CODE_808330:
    SEP #$30                             ;808330;

CODE_808332:
    LDA.B $A3                            ;808332;
    BEQ CODE_808378                      ;808334;
    LDA.B #$18                           ;808336;
    STA.W $4301                          ;808338;
    LDA.B #$01                           ;80833B;
    STA.W $4300                          ;80833D;
    LDX.B #$00                           ;808340;

CODE_808342:
    LDA.W $0500,X                        ;808342;
    STA.W $2115                          ;808345;
    REP #$21                             ;808348;
    LDA.W $0501,X                        ;80834A;
    STA.W $2116                          ;80834D;
    LDA.W $0503,X                        ;808350;
    STA.W $4305                          ;808353;
    LDA.W $0505,X                        ;808356;
    STA.W $4302                          ;808359;
    SEP #$20                             ;80835C;
    LDA.W $0507,X                        ;80835E;
    STA.W $4304                          ;808361;
    LDA.B #$01                           ;808364;
    STA.W $420B                          ;808366;
    TXA                                  ;808369;
    ADC.B #$08                           ;80836A;

CODE_80836C:
    BCS CODE_80836C                      ;80836C;
    TAX                                  ;80836E;
    CPX.B $A3                            ;80836F;
    BNE CODE_808342                      ;808371;
    STZ.B $A3                            ;808373;
    STZ.W $1F25                          ;808375;

CODE_808378:
    LDA.B $A4                            ;808378;
    BEQ CODE_8083C5                      ;80837A;
    LDA.B #$01                           ;80837C;
    STA.W $4300                          ;80837E;
    LDA.B #$18                           ;808381;
    STA.W $4301                          ;808383;
    CLC                                  ;808386;
    LDX.B #$00                           ;808387;

CODE_808389:
    LDA.W $0600,X                        ;808389;
    STA.W $2115                          ;80838C;
    LDA.W $0601,X                        ;80838F;
    STA.W $2116                          ;808392;
    LDA.W $0602,X                        ;808395;
    STA.W $2117                          ;808398;
    LDA.W $0603,X                        ;80839B;
    STA.W $4305                          ;80839E;
    STZ.W $4306                          ;8083A1;
    INX                                  ;8083A4;
    INX                                  ;8083A5;
    INX                                  ;8083A6;
    INX                                  ;8083A7;
    STX.W $4302                          ;8083A8;
    LDA.B #$06                           ;8083AB;
    STA.W $4303                          ;8083AD;
    STZ.W $4304                          ;8083B0;
    LDA.B #$01                           ;8083B3;
    STA.W $420B                          ;8083B5;
    TXA                                  ;8083B8;
    ADC.W $05FF,X                        ;8083B9;

CODE_8083BC:
    BCS CODE_8083BC                      ;8083BC;
    TAX                                  ;8083BE;
    CPX.B $A4                            ;8083BF;
    BNE CODE_808389                      ;8083C1;
    STZ.B $A4                            ;8083C3;

CODE_8083C5:
    JMP.W CODE_80BA09                    ;8083C5;
    STZ.W $211B                          ;8083C8;
    LDA.B #$01                           ;8083CB;
    STA.W $211B                          ;8083CD;
    STZ.W $211C                          ;8083D0;
    LDA.B #$01                           ;8083D3;
    STA.W $211C                          ;8083D5;
    RTS                                  ;8083D8;

CODE_8083D9:
    LDX.B #$04                           ;8083D9;
    LDA.W $0BA5                          ;8083DB;
    BNE CODE_8083E8                      ;8083DE;
    LDA.B $C2                            ;8083E0;
    STA.W $4200                          ;8083E2;
    LDX.W $0BA1                          ;8083E5;

CODE_8083E8:
    JMP.W (PTR16_8083EB,X)               ;8083E8;

PTR16_8083EB:
    dw CODE_8083F1                       ;8083EB;
    dw CODE_808428                       ;8083ED;
    dw CODE_808458                       ;8083EF;

CODE_8083F1:
    STZ.W $0BA2                          ;8083F1;
    LDA.B #$60                           ;8083F4;
    STA.W $4207                          ;8083F6;
    STA.W $4209                          ;8083F9;

CODE_8083FC:
    LDA.W $0B9D                          ;8083FC;
    ORA.W $0BA0                          ;8083FF;
    BNE CODE_808421                      ;808402;
    JSR.W CODE_8081E3                    ;808404;
    JSR.W CODE_8082C8                    ;808407;
    LDA.B $C3                            ;80840A;
    STA.W $420C                          ;80840C;
    BEQ CODE_808421                      ;80840F;
    REP #$30                             ;808411;
    LDX.W #$0B22                         ;808413;
    LDY.W #$0AD2                         ;808416;
    LDA.W #$004F                         ;808419;
    MVN $00,$00                          ;80841C;
    SEP #$30                             ;80841F;

CODE_808421:
    LDA.B $B3                            ;808421;
    STA.W $2100                          ;808423;
    BRA CODE_80844D                      ;808426;

CODE_808428:
    LDA.B #$02                           ;808428;
    STA.W $0BA2                          ;80842A;
    LDA.W $4211                          ;80842D;
    LDA.B #$A0                           ;808430;
    STA.W $4207                          ;808432;
    REP #$20                             ;808435;
    LDA.W $1F28                          ;808437;
    SEC                                  ;80843A;
    SBC.W $1E50                          ;80843B;
    CMP.W #$00E0                         ;80843E;
    BCC CODE_808446                      ;808441;
    LDA.W #$00E0                         ;808443;

CODE_808446:
    STA.W $4209                          ;808446;
    SEP #$20                             ;808449;
    BRA CODE_8083FC                      ;80844B;

CODE_80844D:
    LDA.B $C0                            ;80844D;
    STA.W $212C                          ;80844F;
    LDA.B $C1                            ;808452;
    STA.W $212D                          ;808454;
    RTS                                  ;808457;

CODE_808458:
    JSR.W CODE_8081E3                    ;808458;
    JSR.W CODE_8082C8                    ;80845B;
    LDA.B #$B1                           ;80845E;
    STA.W $4200                          ;808460;
    LDA.B #$0F                           ;808463;
    STA.W $2100                          ;808465;
    LDA.B #$04                           ;808468;
    STA.W $212C                          ;80846A;
    LDA.B #$80                           ;80846D;
    STA.W $0BA2                          ;80846F;
    LDA.B #$88                           ;808472;
    STA.W $4207                          ;808474;
    LDA.B #$47                           ;808477;
    STA.W $4209                          ;808479;
    STZ.W $210D                          ;80847C;
    STZ.W $210D                          ;80847F;
    STZ.W $210E                          ;808482;
    STZ.W $210E                          ;808485;
    STZ.W $210F                          ;808488;
    STZ.W $210F                          ;80848B;
    STZ.W $2110                          ;80848E;
    STZ.W $2110                          ;808491;
    STZ.W $2111                          ;808494;
    STZ.W $2111                          ;808497;
    STZ.W $2112                          ;80849A;
    STZ.W $2112                          ;80849D;
    RTS                                  ;8084A0;

CODE_8084A1:
    REP #$38                             ;8084A1;
    PHA                                  ;8084A3;
    PHX                                  ;8084A4;
    PHY                                  ;8084A5;
    PHD                                  ;8084A6;
    PHB                                  ;8084A7;
    LDA.W #$0000                         ;8084A8;
    TCD                                  ;8084AB;
    PHK                                  ;8084AC;
    PLB                                  ;8084AD;
    SEP #$30                             ;8084AE;
    LDA.W $4211                          ;8084B0;
    LDX.W $0BA2                          ;8084B3;
    BMI CODE_808517                      ;8084B6;
    JMP.W (PTR16_8084BB,X)               ;8084B8;

PTR16_8084BB:
    dw CODE_8084C3                       ;8084BB;
    dw CODE_8084CB                       ;8084BD;
    dw CODE_8084FF                       ;8084BF;
    dw CODE_808515                       ;8084C1;

CODE_8084C3:
    STZ.W $0BA2                          ;8084C3;
    STZ.W $0BA0                          ;8084C6;
    BRA CODE_808524                      ;8084C9;

CODE_8084CB:
    LDA.W $4211                          ;8084CB;
    LDA.B #$A0                           ;8084CE;
    STA.W $4207                          ;8084D0;
    LDA.W $00C4                          ;8084D3;
    STA.W $210E                          ;8084D6;
    LDA.W $00C5                          ;8084D9;
    STA.W $210E                          ;8084DC;
    REP #$20                             ;8084DF;
    LDA.W $1F2A                          ;8084E1;
    SEC                                  ;8084E4;
    SBC.W $1E50                          ;8084E5;
    CMP.W #$00E0                         ;8084E8;
    BCC CODE_8084F0                      ;8084EB;
    LDA.W #$00E8                         ;8084ED;

CODE_8084F0:
    STA.W $4209                          ;8084F0;
    SEP #$20                             ;8084F3;
    STZ.W $0BA0                          ;8084F5;
    LDA.B #$04                           ;8084F8;
    STA.W $0BA2                          ;8084FA;
    BRA CODE_808524                      ;8084FD;

CODE_8084FF:
    LDA.W $4211                          ;8084FF;
    LDA.W $1E50                          ;808502;
    STA.W $210E                          ;808505;
    LDA.W $1E51                          ;808508;
    STA.W $210E                          ;80850B;
    LDA.B #$02                           ;80850E;
    STA.W $0BA2                          ;808510;
    BRA CODE_808524                      ;808513;

CODE_808515:
    BRA CODE_808524                      ;808515;

CODE_808517:
    LDA.W $0BA5                          ;808517;
    AND.B #$17                           ;80851A;
    STA.W $212C                          ;80851C;
    STZ.W $0BA0                          ;80851F;
    BRA CODE_808524                      ;808522;

CODE_808524:
    REP #$30                             ;808524;
    PLB                                  ;808526;
    PLD                                  ;808527;
    PLY                                  ;808528;
    PLX                                  ;808529;
    PLA                                  ;80852A;
    RTI                                  ;80852B;
    LDY.B #$20                           ;80852C;
    JSR.W CODE_80B301                    ;80852E;
    JSR.W CODE_808100                    ;808531;
    LDY.B #$2C                           ;808534;
    JSR.W CODE_80B301                    ;808536;
    JSR.W CODE_808100                    ;808539;
    LDY.B #$5E                           ;80853C;
    JSL.L CODE_828011                    ;80853E;
    LDX.B #$00                           ;808542;
    JSR.W CODE_808B90                    ;808544;
    LDX.B #$01                           ;808547;
    JSR.W CODE_808B90                    ;808549;
    LDA.B #$17                           ;80854C;
    STA.B $C0                            ;80854E;
    JSR.W CODE_808A45                    ;808550;
    JSR.W CODE_808100                    ;808553;
    LDA.W $213F                          ;808556;
    BIT.B #$10                           ;808559;
    BEQ CODE_80857B                      ;80855B;
    LDY.B #$12                           ;80855D;
    JSL.L CODE_828011                    ;80855F;
    LDA.B #$15                           ;808563;
    JSR.W CODE_8089E1                    ;808565;
    JSR.W CODE_808100                    ;808568;
    LDA.B #$16                           ;80856B;
    JSR.W CODE_8089E1                    ;80856D;
    JSR.W CODE_808973                    ;808570;
    LDA.B #$78                           ;808573;
    JSR.W CODE_80810C                    ;808575;
    JSR.W CODE_808995                    ;808578;

CODE_80857B:
    LDA.L $7EFFFF                        ;80857B;
    BNE CODE_80859A                      ;80857F;
    JSR.W CODE_808A45                    ;808581;
    LDY.B #$12                           ;808584;
    JSL.L CODE_828011                    ;808586;
    JSR.W CODE_808100                    ;80858A;
    LDA.B #$06                           ;80858D;
    JSR.W CODE_8089E1                    ;80858F;
    JSR.W CODE_808973                    ;808592;
    LDA.B #$78                           ;808595;
    JSR.W CODE_80810C                    ;808597;

CODE_80859A:
    LDA.L $7EFFFF                        ;80859A;
    BNE CODE_8085BF                      ;80859E;
    JSR.W CODE_8086C6                    ;8085A0;
    LDA.B #$01                           ;8085A3;
    STA.L $7EFFFF                        ;8085A5;
    LDY.B #$F9                           ;8085A9;
    JSR.W CODE_8086C6                    ;8085AB;
    LDA.B #$02                           ;8085AE;
    LDY.B #$F9                           ;8085B0;
    JSR.W CODE_8086C6                    ;8085B2;
    LDA.B #$FF                           ;8085B5;
    STA.L $7EFFFC                        ;8085B7;
    STA.L $7EFFFD                        ;8085BB;

CODE_8085BF:
    JSR.W CODE_808995                    ;8085BF;
    JSR.W CODE_808879                    ;8085C2;
    LDA.B #$1E                           ;8085C5;
    JSR.W CODE_80810C                    ;8085C7;
    LDX.B #$00                           ;8085CA;
    JSR.W CODE_808B90                    ;8085CC;
    LDX.B #$01                           ;8085CF;
    JSR.W CODE_808B90                    ;8085D1;
    JSR.W CODE_808A45                    ;8085D4;
    LDA.B #$05                           ;8085D7;
    JSR.W CODE_8089E1                    ;8085D9;
    LDX.B #$1F                           ;8085DC;
    LDY.B #$00                           ;8085DE;

CODE_8085E0:
    LDA.L TEXT_80FFC0,X                  ;8085E0;
    CMP.L $7EFFA0,X                      ;8085E4;
    STA.L $7EFFA0,X                      ;8085E8;
    BEQ CODE_8085EF                      ;8085EC;
    INY                                  ;8085EE;

CODE_8085EF:
    DEX                                  ;8085EF;
    BPL CODE_8085E0                      ;8085F0;
    DEY                                  ;8085F2;
    BMI CODE_808607                      ;8085F3;
    LDX.B #$16                           ;8085F5;

CODE_8085F7:
    LDA.L DATA8_86EE20,X                 ;8085F7;
    STA.L $7EFFC0,X                      ;8085FB;
    DEX                                  ;8085FF;
    BPL CODE_8085F7                      ;808600;
    LDA.B #$1E                           ;808602;
    JSR.W CODE_80810C                    ;808604;

CODE_808607:
    LDA.L $7EFFCA                        ;808607;
    JSR.W CODE_80888B                    ;80860B;
    JSR.W CODE_808100                    ;80860E;
    LDA.B #$10                           ;808611;
    JSR.W CODE_8087B0                    ;808613;
    LDY.B #$FF                           ;808616;
    JSR.W CODE_80886D                    ;808618;
    LDA.B #$1E                           ;80861B;
    JSR.W CODE_80810C                    ;80861D;
    LDA.B #$0F                           ;808620;
    STA.B $B3                            ;808622;
    LDA.B #$BF                           ;808624;
    STA.B $CA                            ;808626;
    LDY.B #$20                           ;808628;

CODE_80862A:
    DEY                                  ;80862A;
    BEQ CODE_808642                      ;80862B;
    TYA                                  ;80862D;
    ORA.B #$E0                           ;80862E;
    STA.B $CB                            ;808630;
    STA.B $CC                            ;808632;
    STA.B $CD                            ;808634;
    LDA.B #$02                           ;808636;
    JSR.W CODE_80810C                    ;808638;
    JSR.W CODE_8086AC                    ;80863B;
    BNE CODE_808644                      ;80863E;
    BRA CODE_80862A                      ;808640;

CODE_808642:
    STZ.B $CA                            ;808642;

CODE_808644:
    LDA.B #$1C                           ;808644;
    JSR.W CODE_80810C                    ;808646;
    LDY.B #$05                           ;808649;

CODE_80864B:
    PHY                                  ;80864B;
    LDA.W DATA8_868075,Y                 ;80864C;
    STA.B $00                            ;80864F;
    AND.B #$F0                           ;808651;
    TAX                                  ;808653;
    LDY.B #$00                           ;808654;

CODE_808656:
    LDA.W $0300,X                        ;808656;
    STA.W $0340,Y                        ;808659;
    INX                                  ;80865C;
    INY                                  ;80865D;
    CPY.B #$20                           ;80865E;
    BCC CODE_808656                      ;808660;
    STY.B $A1                            ;808662;
    LDA.B $00                            ;808664;
    AND.B #$0F                           ;808666;
    JSR.W CODE_80810C                    ;808668;
    JSR.W CODE_8086AC                    ;80866B;
    BNE CODE_808695                      ;80866E;
    PLY                                  ;808670;
    DEY                                  ;808671;
    BPL CODE_80864B                      ;808672;
    LDA.B #$32                           ;808674;
    JSR.W CODE_80810C                    ;808676;
    LDA.B #$BF                           ;808679;
    STA.B $CA                            ;80867B;
    LDY.B #$FF                           ;80867D;

CODE_80867F:
    INY                                  ;80867F;
    CPY.B #$1F                           ;808680;
    BEQ CODE_808695                      ;808682;
    TYA                                  ;808684;
    ORA.B #$E0                           ;808685;
    STA.B $CB                            ;808687;
    STA.B $CC                            ;808689;
    STA.B $CD                            ;80868B;
    JSR.W CODE_808100                    ;80868D;
    JSR.W CODE_8086AC                    ;808690;
    BEQ CODE_80867F                      ;808693;

CODE_808695:
    LDA.B #$80                           ;808695;
    STA.B $B3                            ;808697;
    JSR.W CODE_808100                    ;808699;
    STZ.B $CA                            ;80869C;
    LDA.B #$E0                           ;80869E;
    STA.B $CB                            ;8086A0;
    STA.B $CC                            ;8086A2;
    STA.B $CD                            ;8086A4;
    STZ.W $1F7A                          ;8086A6;
    JMP.W CODE_808C4E                    ;8086A9;

CODE_8086AC:
    LDA.W $1F7A                          ;8086AC;
    BNE CODE_8086C5                      ;8086AF;
    LDA.W $00A7                          ;8086B1;
    ORA.W $00A8                          ;8086B4;
    AND.B #$F0                           ;8086B7;
    BEQ CODE_8086C5                      ;8086B9;
    STA.W $1F7A                          ;8086BB;
    JSR.W CODE_808879                    ;8086BE;
    STZ.B $C0                            ;8086C1;
    LDA.B #$01                           ;8086C3;

CODE_8086C5:
    RTS                                  ;8086C5;

CODE_8086C6:
    STY.B $02                            ;8086C6;
    REP #$30                             ;8086C8;
    AND.W #$00FF                         ;8086CA;
    STA.B $00                            ;8086CD;
    ASL A                                ;8086CF;
    ADC.B $00                            ;8086D0;
    TAX                                  ;8086D2;
    LDA.L PTR24_898000,X                 ;8086D3;
    AND.W #$7FFF                         ;8086D7;
    TAY                                  ;8086DA;
    LDA.W #$8000                         ;8086DB;
    STA.B $10                            ;8086DE;
    SEP #$20                             ;8086E0;
    LDA.L PTR24_898002,X                 ;8086E2;
    CLC                                  ;8086E6;
    ADC.B #$89                           ;8086E7;
    STA.B $12                            ;8086E9;
    TXA                                  ;8086EB;
    BEQ CODE_80870B                      ;8086EC;
    LDX.W #$001F                         ;8086EE;

CODE_8086F1:
    STZ.W $0B72,X                        ;8086F1;
    DEX                                  ;8086F4;
    BPL CODE_8086F1                      ;8086F5;
    STZ.W $0BA3                          ;8086F7;
    STZ.W $0BA4                          ;8086FA;
    LDA.L $7EFFFE                        ;8086FD;

CODE_808701:
    CMP.W $2142                          ;808701;
    BNE CODE_808701                      ;808704;

CODE_808706:
    LDA.B $02                            ;808706;
    STA.W $2140                          ;808708;

CODE_80870B:
    REP #$20                             ;80870B;
    LDA.W #$BBAA                         ;80870D;
    CMP.W $2140                          ;808710;
    SEP #$20                             ;808713;
    BNE CODE_808706                      ;808715;
    LDA.B #$CC                           ;808717;
    BRA CODE_80874F                      ;808719;

CODE_80871B:
    LDA.B [$10],Y                        ;80871B;
    INY                                  ;80871D;
    BPL CODE_808725                      ;80871E;
    LDY.W #$0000                         ;808720;
    INC.B $12                            ;808723;

CODE_808725:
    XBA                                  ;808725;
    LDA.B #$00                           ;808726;
    BRA CODE_80873C                      ;808728;

CODE_80872A:
    XBA                                  ;80872A;
    LDA.B [$10],Y                        ;80872B;
    INY                                  ;80872D;
    BPL CODE_808735                      ;80872E;
    LDY.W #$0000                         ;808730;
    INC.B $12                            ;808733;

CODE_808735:
    XBA                                  ;808735;

CODE_808736:
    CMP.W $2140                          ;808736;
    BNE CODE_808736                      ;808739;
    INC A                                ;80873B;

CODE_80873C:
    REP #$20                             ;80873C;
    STA.W $2140                          ;80873E;
    SEP #$20                             ;808741;
    DEX                                  ;808743;
    BNE CODE_80872A                      ;808744;

CODE_808746:
    CMP.W $2140                          ;808746;
    BNE CODE_808746                      ;808749;

CODE_80874B:
    ADC.B #$03                           ;80874B;
    BEQ CODE_80874B                      ;80874D;

CODE_80874F:
    PHA                                  ;80874F;
    LDA.B [$10],Y                        ;808750;
    XBA                                  ;808752;
    INY                                  ;808753;
    BPL CODE_80875B                      ;808754;
    LDY.W #$0000                         ;808756;
    INC.B $12                            ;808759;

CODE_80875B:
    LDA.B [$10],Y                        ;80875B;
    XBA                                  ;80875D;
    TAX                                  ;80875E;
    INY                                  ;80875F;
    BPL CODE_808767                      ;808760;
    LDY.W #$0000                         ;808762;
    INC.B $12                            ;808765;

CODE_808767:
    LDA.B [$10],Y                        ;808767;
    XBA                                  ;808769;
    INY                                  ;80876A;
    BPL CODE_808772                      ;80876B;
    LDY.W #$0000                         ;80876D;
    INC.B $12                            ;808770;

CODE_808772:
    LDA.B [$10],Y                        ;808772;
    STA.W $2143                          ;808774;
    INY                                  ;808777;
    BPL CODE_80877F                      ;808778;
    LDY.W #$0000                         ;80877A;
    INC.B $12                            ;80877D;

CODE_80877F:
    XBA                                  ;80877F;
    STA.W $2142                          ;808780;
    CPX.W #$0001                         ;808783;
    LDA.B #$00                           ;808786;
    ROL A                                ;808788;
    STA.W $2141                          ;808789;
    ADC.B #$7F                           ;80878C;
    PLA                                  ;80878E;
    STA.W $2140                          ;80878F;

CODE_808792:
    CMP.W $2140                          ;808792;
    BNE CODE_808792                      ;808795;
    BVS CODE_80871B                      ;808797;
    SEP #$30                             ;808799;
    LDA.B #$01                           ;80879B;
    STA.L $7EFFFE                        ;80879D;
    RTS                                  ;8087A1;

CODE_8087A2:
    PHP                                  ;8087A2;
    REP #$20                             ;8087A3;
    PHD                                  ;8087A5;
    PEA.W $0000                          ;8087A6;
    PLD                                  ;8087A9;
    JSR.W CODE_8087B0                    ;8087AA;
    PLD                                  ;8087AD;
    PLP                                  ;8087AE;
    RTL                                  ;8087AF;

CODE_8087B0:
    SEP #$30                             ;8087B0;
    TAY                                  ;8087B2;
    LDA.W DATA16_86806B,Y                ;8087B3;
    TAY                                  ;8087B6;
    LDA.W DATA8_86807B,Y                 ;8087B7;
    BEQ CODE_8087CA                      ;8087BA;
    PHA                                  ;8087BC;
    JSR.W CODE_8087D6                    ;8087BD;
    PLA                                  ;8087C0;

CODE_8087C1:
    STA.L $7EFFFD                        ;8087C1;
    LDY.B #$FA                           ;8087C5;
    JMP.W CODE_8086C6                    ;8087C7;

CODE_8087CA:
    TXA                                  ;8087CA;
    CMP.L $7EFFFD                        ;8087CB;
    BNE CODE_8087C1                      ;8087CF;
    LDA.B #$FB                           ;8087D1;
    JMP.W CODE_80888B                    ;8087D3;

CODE_8087D6:
    LDA.W DATA8_86807C,Y                 ;8087D6;
    CMP.B #$FF                           ;8087D9;
    BEQ CODE_8087E7                      ;8087DB;
    PHY                                  ;8087DD;
    LDY.B #$F9                           ;8087DE;
    JSR.W CODE_8086C6                    ;8087E0;
    PLY                                  ;8087E3;
    INY                                  ;8087E4;
    BRA CODE_8087D6                      ;8087E5;

CODE_8087E7:
    RTS                                  ;8087E7;
    PHP                                  ;8087E8;
    REP #$20                             ;8087E9;
    PHD                                  ;8087EB;
    PEA.W $0000                          ;8087EC;
    PLD                                  ;8087EF;
    STY.B $04                            ;8087F0;
    JSR.W CODE_8087F8                    ;8087F2;
    PLD                                  ;8087F5;
    PLP                                  ;8087F6;
    RTL                                  ;8087F7;

CODE_8087F8:
    SEP #$30                             ;8087F8;
    TAY                                  ;8087FA;
    LDA.W DATA16_86806B,Y                ;8087FB;
    TAY                                  ;8087FE;
    LDA.W DATA8_86807B,Y                 ;8087FF;
    BEQ CODE_808814                      ;808802;
    PHA                                  ;808804;
    JSR.W CODE_8087D6                    ;808805;
    PLA                                  ;808808;

CODE_808809:
    STA.L $7EFFFD                        ;808809;
    LDY.B $04                            ;80880D;
    LDA.B #$F5                           ;80880F;
    JMP.W CODE_80888F                    ;808811;

CODE_808814:
    TXA                                  ;808814;
    CMP.L $7EFFFD                        ;808815;
    BNE CODE_808809                      ;808819;
    LDY.B $04                            ;80881B;
    LDA.B #$F5                           ;80881D;
    JMP.W CODE_80888F                    ;80881F;

CODE_808822:
    SEP #$30                             ;808822;
    LDX.W $0BA4                          ;808824;
    CPX.W $0BA3                          ;808827;
    BEQ CODE_808866                      ;80882A;
    LDA.W $2142                          ;80882C;
    CMP.L $7EFFFE                        ;80882F;
    BNE CODE_808866                      ;808833;
    INC A                                ;808835;
    STA.L $7EFFFE                        ;808836;
    LDY.W $0B73,X                        ;80883A;
    STY.W $2141                          ;80883D;
    LDA.W $0B72,X                        ;808840;
    CMP.B #$F0                           ;808843;
    BCC CODE_80885B                      ;808845;
    CMP.B #$FE                           ;808847;
    BCC CODE_808855                      ;808849;
    STZ.W $2142                          ;80884B;
    LDY.B #$02                           ;80884E;
    STY.W $2143                          ;808850;
    BRA CODE_80885B                      ;808853;

CODE_808855:
    STZ.W $2142                          ;808855;
    STY.W $2143                          ;808858;

CODE_80885B:
    STA.W $2140                          ;80885B;
    INX                                  ;80885E;
    INX                                  ;80885F;
    TXA                                  ;808860;
    AND.B #$1E                           ;808861;
    STA.W $0BA4                          ;808863;

CODE_808866:
    RTS                                  ;808866;

CODE_808867:
    SEP #$30                             ;808867;
    LDA.B #$FF                           ;808869;
    BRA CODE_80888F                      ;80886B;

CODE_80886D:
    SEP #$30                             ;80886D;
    LDA.B #$FE                           ;80886F;
    BRA CODE_80888F                      ;808871;

CODE_808873:
    SEP #$30                             ;808873;
    LDA.B #$F6                           ;808875;
    BRA CODE_80888F                      ;808877;

CODE_808879:
    SEP #$30                             ;808879;
    LDA.B #$F0                           ;80887B;
    BRA CODE_80888F                      ;80887D;

CODE_80887F:
    PHX                                  ;80887F;
    PHY                                  ;808880;
    PHP                                  ;808881;
    SEP #$30                             ;808882;
    JSR.W CODE_80888F                    ;808884;
    PLP                                  ;808887;
    PLY                                  ;808888;
    PLX                                  ;808889;
    RTL                                  ;80888A;

CODE_80888B:
    SEP #$30                             ;80888B;
    LDY.B #$00                           ;80888D;

CODE_80888F:
    LDX.W $0BA3                          ;80888F;
    STA.W $0B72,X                        ;808892;
    TYA                                  ;808895;
    STA.W $0B73,X                        ;808896;
    INX                                  ;808899;
    INX                                  ;80889A;
    TXA                                  ;80889B;
    AND.B #$1E                           ;80889C;
    STA.W $0BA3                          ;80889E;
    RTS                                  ;8088A1;

CODE_8088A2:
    PHX                                  ;8088A2;
    PHY                                  ;8088A3;
    PHP                                  ;8088A4;
    REP #$20                             ;8088A5;
    SEP #$10                             ;8088A7;
    PHA                                  ;8088A9;
    LDA.B $05                            ;8088AA;
    SEC                                  ;8088AC;
    SBC.W $0BAD                          ;8088AD;
    BPL CODE_8088C0                      ;8088B0;
    LSR A                                ;8088B2;
    ORA.W #$8000                         ;8088B3;
    CMP.W #$FF81                         ;8088B6;
    BPL CODE_8088C9                      ;8088B9;
    LDA.W #$FF81                         ;8088BB;
    BRA CODE_8088C9                      ;8088BE;

CODE_8088C0:
    LSR A                                ;8088C0;
    CMP.W #$007F                         ;8088C1;
    BMI CODE_8088C9                      ;8088C4;
    LDA.W #$007F                         ;8088C6;

CODE_8088C9:
    TAY                                  ;8088C9;
    PLA                                  ;8088CA;
    BRA CODE_8088D4                      ;8088CB;

CODE_8088CD:
    PHX                                  ;8088CD;
    PHY                                  ;8088CE;
    PHP                                  ;8088CF;
    SEP #$10                             ;8088D0;
    LDY.B #$00                           ;8088D2;

CODE_8088D4:
    SEP #$31                             ;8088D4;
    LDX.W $0BA3                          ;8088D6;
    STA.W $0B72,X                        ;8088D9;
    TYA                                  ;8088DC;
    STA.W $0B73,X                        ;8088DD;
    INX                                  ;8088E0;
    INX                                  ;8088E1;
    TXA                                  ;8088E2;
    AND.B #$1E                           ;8088E3;
    STA.W $0BA3                          ;8088E5;
    PLP                                  ;8088E8;
    PLY                                  ;8088E9;
    PLX                                  ;8088EA;
    RTL                                  ;8088EB;

CODE_8088EC:
    REP #$20                             ;8088EC;
    STZ.B $B4                            ;8088EE;
    STZ.B $B6                            ;8088F0;
    STZ.B $B8                            ;8088F2;
    STZ.B $BA                            ;8088F4;
    STZ.B $BC                            ;8088F6;
    STZ.B $BE                            ;8088F8;
    SEP #$30                             ;8088FA;
    LDA.B #$09                           ;8088FC;
    STA.W $2105                          ;8088FE;
    LDA.B #$51                           ;808901;
    STA.W $2107                          ;808903;
    LDA.B #$59                           ;808906;
    STA.W $2108                          ;808908;
    LDA.B #$0A                           ;80890B;
    STA.W $2109                          ;80890D;
    LDA.B #$11                           ;808910;
    STA.W $210B                          ;808912;
    LDA.B #$00                           ;808915;
    STA.W $210C                          ;808917;
    RTS                                  ;80891A;

CODE_80891B:
    LDA.B #$09                           ;80891B;
    STA.W $2105                          ;80891D;
    STA.W $00D0                          ;808920;
    STZ.W $2106                          ;808923;
    REP #$20                             ;808926;
    STZ.B $B4                            ;808928;
    STZ.B $B6                            ;80892A;
    STZ.B $B8                            ;80892C;
    STZ.B $BA                            ;80892E;
    STZ.B $BC                            ;808930;
    STZ.B $BE                            ;808932;
    SEP #$20                             ;808934;
    STZ.W $2123                          ;808936;
    STZ.W $00C6                          ;808939;
    STZ.W $2124                          ;80893C;
    STZ.W $00C7                          ;80893F;
    STZ.B $C1                            ;808942;
    STZ.W $212E                          ;808944;
    STZ.W $00CE                          ;808947;
    STZ.W $212F                          ;80894A;
    STZ.W $00CF                          ;80894D;
    STZ.W $00C9                          ;808950;
    STZ.W $00CA                          ;808953;
    LDA.B #$E0                           ;808956;
    STA.W $2132                          ;808958;
    STA.W $00CB                          ;80895B;
    STA.W $00CC                          ;80895E;
    STA.W $00CD                          ;808961;
    LDA.B #$17                           ;808964;
    STA.W $212C                          ;808966;
    STA.W $00C0                          ;808969;
    STZ.W $212D                          ;80896C;
    STZ.W $00C1                          ;80896F;
    RTS                                  ;808972;

CODE_808973:
    SEP #$10                             ;808973;
    LDX.B #$02                           ;808975;
    LDY.B #$01                           ;808977;

CODE_808979:
    SEP #$30                             ;808979;
    LDA.B $B3                            ;80897B;
    CMP.B #$0F                           ;80897D;
    BEQ CODE_808994                      ;80897F;
    TYA                                  ;808981;
    ADC.B $B3                            ;808982;
    AND.B #$7F                           ;808984;
    CMP.B #$0F                           ;808986;
    BCC CODE_80898C                      ;808988;
    LDA.B #$0F                           ;80898A;

CODE_80898C:
    STA.B $B3                            ;80898C;
    TXA                                  ;80898E;
    JSR.W CODE_80810C                    ;80898F;
    BRA CODE_808979                      ;808992;

CODE_808994:
    RTS                                  ;808994;

CODE_808995:
    SEP #$10                             ;808995;
    LDX.B #$02                           ;808997;
    LDY.B #$01                           ;808999;

CODE_80899B:
    SEP #$30                             ;80899B;
    LDA.B $B3                            ;80899D;
    AND.B #$0F                           ;80899F;
    BEQ CODE_8089B6                      ;8089A1;
    STY.B $00                            ;8089A3;
    LDA.B $B3                            ;8089A5;
    SEC                                  ;8089A7;
    SBC.B $00                            ;8089A8;
    BPL CODE_8089AE                      ;8089AA;
    LDA.B #$00                           ;8089AC;

CODE_8089AE:
    STA.B $B3                            ;8089AE;
    TXA                                  ;8089B0;
    JSR.W CODE_80810C                    ;8089B1;
    BRA CODE_80899B                      ;8089B4;

CODE_8089B6:
    LDA.B #$80                           ;8089B6;
    STA.B $B3                            ;8089B8;
    JMP.W CODE_808100                    ;8089BA;

CODE_8089BD:
    SEP #$30                             ;8089BD;
    LDX.B #$40                           ;8089BF;
    LDA.B #$89                           ;8089C1;
    XBA                                  ;8089C3;
    LDA.B #$C9                           ;8089C4;
    JMP.W CODE_80813B                    ;8089C6;
    JSR.W CODE_808973                    ;8089C9;
    JMP.W CODE_8080F8                    ;8089CC;

CODE_8089CF:
    SEP #$30                             ;8089CF;
    LDX.B #$40                           ;8089D1;
    LDA.B #$89                           ;8089D3;
    XBA                                  ;8089D5;
    LDA.B #$DB                           ;8089D6;
    JMP.W CODE_80813B                    ;8089D8;
    JSR.W CODE_808995                    ;8089DB;
    JMP.W CODE_8080F8                    ;8089DE;

CODE_8089E1:
    SEP #$30                             ;8089E1;
    STA.B $02                            ;8089E3;
    AND.B #$7F                           ;8089E5;
    ASL A                                ;8089E7;
    TAY                                  ;8089E8;
    LDA.W PTR16_86910B,Y                 ;8089E9;
    STA.B $10                            ;8089EC;
    LDA.W PTR16_86910C,Y                 ;8089EE;
    STA.B $11                            ;8089F1;
    LDX.B $A4                            ;8089F3;
    LDY.B #$00                           ;8089F5;

CODE_8089F7:
    LDA.B ($10),Y                        ;8089F7;
    BEQ CODE_808A42                      ;8089F9;
    STA.B $00                            ;8089FB;
    ASL A                                ;8089FD;
    STA.W $0603,X                        ;8089FE;
    INY                                  ;808A01;
    LDA.B ($10),Y                        ;808A02;
    STA.B $01                            ;808A04;
    INY                                  ;808A06;
    LDA.B #$80                           ;808A07;
    STA.W $0600,X                        ;808A09;
    INX                                  ;808A0C;
    LDA.B ($10),Y                        ;808A0D;
    STA.W $0600,X                        ;808A0F;
    INY                                  ;808A12;
    INX                                  ;808A13;
    LDA.B ($10),Y                        ;808A14;
    STA.W $0600,X                        ;808A16;
    INY                                  ;808A19;
    INX                                  ;808A1A;
    INX                                  ;808A1B;
    LDA.B $02                            ;808A1C;
    BMI CODE_808A33                      ;808A1E;

CODE_808A20:
    LDA.B ($10),Y                        ;808A20;
    STA.W $0600,X                        ;808A22;
    INY                                  ;808A25;
    INX                                  ;808A26;
    LDA.B $01                            ;808A27;
    STA.W $0600,X                        ;808A29;
    INX                                  ;808A2C;
    DEC.B $00                            ;808A2D;
    BNE CODE_808A20                      ;808A2F;
    BRA CODE_8089F7                      ;808A31;

CODE_808A33:
    STZ.W $0600,X                        ;808A33;
    INY                                  ;808A36;
    INX                                  ;808A37;
    STZ.W $0600,X                        ;808A38;
    INX                                  ;808A3B;
    DEC.B $00                            ;808A3C;
    BNE CODE_808A33                      ;808A3E;
    BRA CODE_8089F7                      ;808A40;

CODE_808A42:
    STX.B $A4                            ;808A42;
    RTS                                  ;808A44;

CODE_808A45:
    JSR.W CODE_808A4F                    ;808A45;
    LDA.B #$07                           ;808A48;
    TSB.B $A2                            ;808A4A;
    JMP.W CODE_808100                    ;808A4C;

CODE_808A4F:
    LDX.B #$00                           ;808A4F;
    LDA.B #$E0                           ;808A51;

CODE_808A53:
    STA.W $0701,X                        ;808A53;
    STA.W $0801,X                        ;808A56;
    DEX                                  ;808A59;
    DEX                                  ;808A5A;
    DEX                                  ;808A5B;
    DEX                                  ;808A5C;
    BNE CODE_808A53                      ;808A5D;
    LDX.B #$1F                           ;808A5F;

CODE_808A61:
    STZ.W $0900,X                        ;808A61;
    DEX                                  ;808A64;
    BPL CODE_808A61                      ;808A65;
    STZ.B $E4                            ;808A67;
    STZ.B $E5                            ;808A69;
    RTS                                  ;808A6B;
    LDA.B #$01                           ;808A6C;
    TSB.B $A2                            ;808A6E;
    RTS                                  ;808A70;

CODE_808A71:
    LDA.B #$02                           ;808A71;
    TSB.B $A2                            ;808A73;
    RTS                                  ;808A75;
    LDA.B #$04                           ;808A76;
    TSB.B $A2                            ;808A78;
    RTS                                  ;808A7A;

CODE_808A7B:
    REP #$20                             ;808A7B;
    PHD                                  ;808A7D;
    LDA.W #$0000                         ;808A7E;
    TCD                                  ;808A81;
    JSR.W CODE_808A87                    ;808A82;
    PLD                                  ;808A85;
    RTL                                  ;808A86;

CODE_808A87:
    REP #$20                             ;808A87;
    LDA.W PTR16_8698C5,Y                 ;808A89;
    STA.B $10                            ;808A8C;
    LDY.B #$00                           ;808A8E;
    LDX.B $A3                            ;808A90;

CODE_808A92:
    REP #$21                             ;808A92;
    LDA.B ($10),Y                        ;808A94;
    BIT.W #$0001                         ;808A96;
    BNE CODE_808AE5                      ;808A99;
    JSR.W CODE_808AEA                    ;808A9B;
    LDA.B $00                            ;808A9E;
    STA.W $0503,X                        ;808AA0;
    LDA.B $14                            ;808AA3;
    STA.W $0501,X                        ;808AA5;
    LDA.B $18                            ;808AA8;
    STA.W $0505,X                        ;808AAA;
    SEP #$20                             ;808AAD;
    LDA.B $1A                            ;808AAF;
    STA.W $0507,X                        ;808AB1;
    LDA.B #$80                           ;808AB4;
    STA.W $0500,X                        ;808AB6;
    BCC CODE_808ADF                      ;808AB9;
    CLC                                  ;808ABB;
    TXA                                  ;808ABC;
    ADC.B #$08                           ;808ABD;
    TAX                                  ;808ABF;
    REP #$21                             ;808AC0;
    LDA.B $02                            ;808AC2;
    STA.W $0503,X                        ;808AC4;
    LDA.B $1C                            ;808AC7;
    STA.W $0501,X                        ;808AC9;
    LDA.W #$8000                         ;808ACC;
    STA.W $0505,X                        ;808ACF;
    SEP #$20                             ;808AD2;
    LDA.B $1A                            ;808AD4;
    INC A                                ;808AD6;
    STA.W $0507,X                        ;808AD7;
    LDA.B #$80                           ;808ADA;
    STA.W $0500,X                        ;808ADC;

CODE_808ADF:
    TXA                                  ;808ADF;
    ADC.B #$08                           ;808AE0;
    TAX                                  ;808AE2;
    BCC CODE_808A92                      ;808AE3;

CODE_808AE5:
    SEP #$30                             ;808AE5;
    STX.B $A3                            ;808AE7;
    RTS                                  ;808AE9;

CODE_808AEA:
    STA.B $00                            ;808AEA;
    INY                                  ;808AEC;
    INY                                  ;808AED;
    LDA.B ($10),Y                        ;808AEE;
    STA.B $14                            ;808AF0;
    INY                                  ;808AF2;
    INY                                  ;808AF3;
    LDA.B ($10),Y                        ;808AF4;
    STA.B $18                            ;808AF6;
    INY                                  ;808AF8;
    INY                                  ;808AF9;
    LDA.B ($10),Y                        ;808AFA;
    STA.B $1A                            ;808AFC;
    INY                                  ;808AFE;
    LDA.B $18                            ;808AFF;
    ADC.B $00                            ;808B01;
    BCC CODE_808B17                      ;808B03;
    BEQ CODE_808B17                      ;808B05;
    STA.B $02                            ;808B07;
    EOR.W #$FFFF                         ;808B09;
    ADC.B $00                            ;808B0C;
    STA.B $00                            ;808B0E;
    LSR A                                ;808B10;
    ADC.B $14                            ;808B11;
    STA.B $1C                            ;808B13;
    SEC                                  ;808B15;
    RTS                                  ;808B16;

CODE_808B17:
    CLC                                  ;808B17;
    RTS                                  ;808B18;
    LDA.W $00C3                          ;808B19;

CODE_808B1C:
    BNE CODE_808B1C                      ;808B1C;
    LDA.W PTR16_8698C5,Y                 ;808B1E;
    STA.B $10                            ;808B21;
    LDA.W PTR16_8698C6,Y                 ;808B23;
    STA.B $11                            ;808B26;
    LDA.B #$80                           ;808B28;
    STA.W $2115                          ;808B2A;
    LDA.B #$01                           ;808B2D;
    STA.W $4300                          ;808B2F;
    LDA.B #$18                           ;808B32;
    STA.W $4301                          ;808B34;
    LDY.B #$00                           ;808B37;

CODE_808B39:
    REP #$21                             ;808B39;
    LDA.B ($10),Y                        ;808B3B;
    BIT.W #$0001                         ;808B3D;
    BNE CODE_808B83                      ;808B40;
    JSR.W CODE_808AEA                    ;808B42;
    LDA.B $00                            ;808B45;
    STA.W $4305                          ;808B47;
    LDA.B $14                            ;808B4A;
    STA.W $2116                          ;808B4C;
    LDA.B $18                            ;808B4F;
    STA.W $4302                          ;808B51;
    SEP #$20                             ;808B54;
    LDA.B $1A                            ;808B56;
    STA.W $4304                          ;808B58;
    LDA.B #$01                           ;808B5B;
    STA.W $420B                          ;808B5D;
    BCC CODE_808B39                      ;808B60;
    REP #$21                             ;808B62;
    LDA.B $02                            ;808B64;
    STA.W $4305                          ;808B66;
    LDA.B $1C                            ;808B69;
    STA.W $2116                          ;808B6B;
    LDA.W #$8000                         ;808B6E;
    STA.W $4302                          ;808B71;
    SEP #$20                             ;808B74;
    LDA.B $1A                            ;808B76;
    INC A                                ;808B78;
    STA.W $4304                          ;808B79;
    LDA.B #$01                           ;808B7C;
    STA.W $420B                          ;808B7E;
    BRA CODE_808B39                      ;808B81;

CODE_808B83:
    SEP #$30                             ;808B83;
    RTS                                  ;808B85;
    PHD                                  ;808B86;
    PEA.W $0000                          ;808B87;
    PLD                                  ;808B8A;
    JSR.W CODE_808B90                    ;808B8B;
    PLD                                  ;808B8E;
    RTL                                  ;808B8F;

CODE_808B90:
    LDA.B #$80                           ;808B90;
    STA.W $2115                          ;808B92;
    STZ.W $2116                          ;808B95;
    LDA.W DATA8_86812F,X                 ;808B98;
    STA.W $2117                          ;808B9B;
    LDA.B #$00                           ;808B9E;

CODE_808BA0:
    PHA                                  ;808BA0;
    STA.B $02                            ;808BA1;
    LDY.B #$02                           ;808BA3;

CODE_808BA5:
    LDA.B #$00                           ;808BA5;
    LSR.B $02                            ;808BA7;
    BCC CODE_808BAC                      ;808BA9;
    DEC A                                ;808BAB;

CODE_808BAC:
    XBA                                  ;808BAC;
    LDA.B #$00                           ;808BAD;
    LSR.B $02                            ;808BAF;
    BCC CODE_808BB4                      ;808BB1;
    DEC A                                ;808BB3;

CODE_808BB4:
    XBA                                  ;808BB4;
    LDX.B #$07                           ;808BB5;
    REP #$20                             ;808BB7;

CODE_808BB9:
    STA.W $2118                          ;808BB9;
    DEX                                  ;808BBC;
    BPL CODE_808BB9                      ;808BBD;
    SEP #$20                             ;808BBF;
    DEY                                  ;808BC1;
    BNE CODE_808BA5                      ;808BC2;
    PLA                                  ;808BC4;
    INC A                                ;808BC5;
    CMP.B #$10                           ;808BC6;
    BCC CODE_808BA0                      ;808BC8;
    RTS                                  ;808BCA;

CODE_808BCB:
    STZ.W $0AA1                          ;808BCB;
    STZ.W $0AA8                          ;808BCE;
    STZ.W $0AAF                          ;808BD1;
    STZ.W $0AB6                          ;808BD4;
    STZ.W $0ABD                          ;808BD7;
    STZ.W $0AC4                          ;808BDA;
    STZ.W $0ACB                          ;808BDD;
    STZ.W $420C                          ;808BE0;
    RTS                                  ;808BE3;

CODE_808BE4:
    PHD                                  ;808BE4;
    PEA.W $0000                          ;808BE5;
    PLD                                  ;808BE8;
    REP #$20                             ;808BE9;
    LDA.W PTR16_869AB4,Y                 ;808BEB;
    STA.B $10                            ;808BEE;
    LDY.B #$00                           ;808BF0;
    LDA.B ($10),Y                        ;808BF2;
    STA.B $14                            ;808BF4;
    INY                                  ;808BF6;
    INY                                  ;808BF7;
    LDA.B ($10),Y                        ;808BF8;
    STA.B $18                            ;808BFA;
    INY                                  ;808BFC;
    INY                                  ;808BFD;
    LDA.B ($10),Y                        ;808BFE;
    STA.B $1C                            ;808C00;
    SEP #$20                             ;808C02;
    INY                                  ;808C04;
    INY                                  ;808C05;
    LDA.B ($10),Y                        ;808C06;
    STA.B $1E                            ;808C08;
    LDX.B $A3                            ;808C0A;
    LDY.B $15                            ;808C0C;
    STZ.B $15                            ;808C0E;
    ASL.B $14                            ;808C10;

CODE_808C12:
    REP #$20                             ;808C12;
    LDA.B $14                            ;808C14;
    STA.W $0503,X                        ;808C16;
    LDA.B $18                            ;808C19;
    STA.W $0501,X                        ;808C1B;
    LDA.B $1C                            ;808C1E;
    STA.W $0505,X                        ;808C20;
    SEP #$20                             ;808C23;
    LDA.B #$80                           ;808C25;
    STA.W $0500,X                        ;808C27;
    LDA.B $1E                            ;808C2A;
    STA.W $0507,X                        ;808C2C;
    TXA                                  ;808C2F;
    CLC                                  ;808C30;
    ADC.B #$08                           ;808C31;
    TAX                                  ;808C33;
    REP #$20                             ;808C34;
    LDA.B $18                            ;808C36;
    CLC                                  ;808C38;
    ADC.W #$0020                         ;808C39;
    STA.B $18                            ;808C3C;
    LDA.B $14                            ;808C3E;
    CLC                                  ;808C40;
    ADC.B $1C                            ;808C41;
    STA.B $1C                            ;808C43;
    DEY                                  ;808C45;
    BNE CODE_808C12                      ;808C46;
    STX.B $A3                            ;808C48;
    SEP #$20                             ;808C4A;
    PLD                                  ;808C4C;
    RTL                                  ;808C4D;

CODE_808C4E:
    STZ.B $38                            ;808C4E;
    STZ.B $39                            ;808C50;
    STZ.B $3A                            ;808C52;
    STZ.B $3C                            ;808C54;

CODE_808C56:
    LDX.B $38                            ;808C56;
    JSR.W (PTR16_808C60,X)               ;808C58;
    JSR.W CODE_808100                    ;808C5B;
    BRA CODE_808C56                      ;808C5E;

PTR16_808C60:
    dw CODE_808C64                       ;808C60;
    dw CODE_8091AA                       ;808C62;

CODE_808C64:
    LDX.B $39                            ;808C64;
    JSR.W (PTR16_808C85,X)               ;808C66;
    LDX.B $39                            ;808C69;
    BEQ CODE_808C84                      ;808C6B;
    LDA.B $AC                            ;808C6D;
    BIT.B #$10                           ;808C6F;
    BEQ CODE_808C84                      ;808C71;
    LDA.B #$F1                           ;808C73;
    JSR.W CODE_80888B                    ;808C75;
    LDA.B #$02                           ;808C78;
    STA.B $38                            ;808C7A;
    STZ.B $39                            ;808C7C;
    STZ.B $3A                            ;808C7E;
    STZ.B $3B                            ;808C80;
    STZ.B $3C                            ;808C82;

CODE_808C84:
    RTS                                  ;808C84;

PTR16_808C85:
    dw CODE_808C8D                       ;808C85;
    dw CODE_808CAE                       ;808C87;
    dw CODE_808CB1                       ;808C89;
    dw CODE_809074                       ;808C8B;

CODE_808C8D:
    LDA.B #$02                           ;808C8D;
    STA.B $39                            ;808C8F;
    STZ.W $0BA1                          ;808C91;
    STZ.B $C3                            ;808C94;
    STZ.B $C3                            ;808C96;
    LDX.B #$00                           ;808C98;
    JSR.W CODE_808B90                    ;808C9A;
    LDX.B #$01                           ;808C9D;
    JSR.W CODE_808B90                    ;808C9F;
    JSR.W CODE_80891B                    ;808CA2;
    JSR.W CODE_80DB55                    ;808CA5;
    JSR.W CODE_808BCB                    ;808CA8;
    JMP.W CODE_808A45                    ;808CAB;

CODE_808CAE:
    JMP.W CODE_80A64E                    ;808CAE;

CODE_808CB1:
    LDX.B $3A                            ;808CB1;
    JSR.W (PTR16_808CC9,X)               ;808CB3;
    PHB                                  ;808CB6;
    REP #$30                             ;808CB7;
    LDX.W #$D000                         ;808CB9;
    LDY.W #$D200                         ;808CBC;
    LDA.W #$01BF                         ;808CBF;
    MVN $7F,$7F                          ;808CC2;
    SEP #$30                             ;808CC5;
    PLB                                  ;808CC7;
    RTS                                  ;808CC8;

PTR16_808CC9:
    dw CODE_808CE1                       ;808CC9;
    dw CODE_808D95                       ;808CCB;
    dw CODE_808EEF                       ;808CCD;
    dw CODE_808F3F                       ;808CCF;
    dw CODE_808F7A                       ;808CD1;
    dw CODE_808F91                       ;808CD3;
    dw CODE_808FAC                       ;808CD5;
    dw CODE_808FC4                       ;808CD7;
    dw CODE_808FE8                       ;808CD9;
    dw CODE_809003                       ;808CDB;
    dw CODE_809003                       ;808CDD;
    dw CODE_809004                       ;808CDF;

CODE_808CE1:
    LDA.B #$02                           ;808CE1;
    STA.B $3A                            ;808CE3;
    LDA.B #$01                           ;808CE5;
    STA.W $2105                          ;808CE7;
    JSR.W CODE_80891B                    ;808CEA;
    JSR.W CODE_80DB55                    ;808CED;
    JSR.W CODE_808BCB                    ;808CF0;
    JSR.W CODE_808A45                    ;808CF3;
    JSR.W CODE_808100                    ;808CF6;
    REP #$20                             ;808CF9;
    LDA.W #$05A0                         ;808CFB;
    STA.B $D7                            ;808CFE;
    LDA.W #$FF80                         ;808D00;
    STA.B $B4                            ;808D03;
    STA.B $B8                            ;808D05;
    LDA.W #$0030                         ;808D07;
    STA.B $B6                            ;808D0A;
    STA.B $BA                            ;808D0C;
    SEP #$20                             ;808D0E;
    LDY.B #$20                           ;808D10;
    JSR.W CODE_80B301                    ;808D12;
    JSR.W CODE_808100                    ;808D15;
    LDY.B #$46                           ;808D18;
    JSR.W CODE_80B301                    ;808D1A;
    LDY.B #$CC                           ;808D1D;
    JSL.L CODE_828011                    ;808D1F;
    JSR.W CODE_808100                    ;808D23;
    JSR.W CODE_80935D                    ;808D26;
    JSR.W CODE_808A71                    ;808D29;
    JSR.W CODE_808100                    ;808D2C;
    JSR.W CODE_809390                    ;808D2F;
    LDY.B #$0A                           ;808D32;
    JSR.W CODE_808A87                    ;808D34;
    LDY.B #$C4                           ;808D37;
    JSL.L CODE_828011                    ;808D39;
    LDA.B #$1F                           ;808D3D;
    STA.B $E1                            ;808D3F;
    LDX.B #$40                           ;808D41;
    JSR.W CODE_8093B8                    ;808D43;
    LDX.B #$20                           ;808D46;
    LDY.B #$C4                           ;808D48;
    JSL.L CODE_828000                    ;808D4A;
    LDA.B #$1F                           ;808D4E;
    STA.B $E1                            ;808D50;
    LDX.B #$80                           ;808D52;
    JSR.W CODE_8093B8                    ;808D54;
    LDA.B #$03                           ;808D57;
    STA.B $C0                            ;808D59;
    LDA.B #$02                           ;808D5B;
    STA.B $C1                            ;808D5D;
    JSR.W CODE_808100                    ;808D5F;
    STZ.B $CB                            ;808D62;
    STZ.B $CC                            ;808D64;
    STZ.B $CD                            ;808D66;
    LDA.B #$02                           ;808D68;
    STA.L $0000C9                        ;808D6A;
    LDA.B #$43                           ;808D6E;
    STA.B $CA                            ;808D70;
    LDA.B #$01                           ;808D72;
    STA.W $0BB8                          ;808D74;
    LDA.B #$14                           ;808D77;
    STA.W $0E78                          ;808D79;
    STZ.W $0BB7                          ;808D7C;
    LDA.B #$04                           ;808D7F;
    STA.W $0E77                          ;808D81;
    STZ.W $0302                          ;808D84;
    STZ.W $0303                          ;808D87;
    INC.W $00A1                          ;808D8A;
    LDA.B #$1F                           ;808D8D;
    JSR.W CODE_8087B0                    ;808D8F;
    JMP.W CODE_808973                    ;808D92;

CODE_808D95:
    REP #$20                             ;808D95;
    DEC.B $D7                            ;808D97;
    LDX.B #$00                           ;808D99;
    LDA.B $D7                            ;808D9B;
    CMP.W #$0588                         ;808D9D;
    BCS CODE_808DC0                      ;808DA0;
    INX                                  ;808DA2;
    CMP.W #$056B                         ;808DA3;
    BCS CODE_808DC0                      ;808DA6;
    INX                                  ;808DA8;
    CMP.W #$054C                         ;808DA9;
    BCS CODE_808DC0                      ;808DAC;
    INX                                  ;808DAE;
    CMP.W #$0531                         ;808DAF;
    BCS CODE_808DC0                      ;808DB2;
    INX                                  ;808DB4;
    CMP.W #$0530                         ;808DB5;
    BNE CODE_808DC0                      ;808DB8;
    INC.W $0BB9                          ;808DBA;
    INC.W $0E79                          ;808DBD;

CODE_808DC0:
    STX.W $0BA8                          ;808DC0;
    SEP #$20                             ;808DC3;
    PEA.W $0BA8                          ;808DC5;
    PLD                                  ;808DC8;
    JSR.W CODE_808DE8                    ;808DC9;
    PEA.W $0E68                          ;808DCC;
    PLD                                  ;808DCF;
    JSR.W CODE_808DE8                    ;808DD0;
    PEA.W $0000                          ;808DD3;
    PLD                                  ;808DD6;
    LDA.B #$0A                           ;808DD7;
    CMP.W $0BA9                          ;808DD9;
    BNE CODE_808DE7                      ;808DDC;
    CMP.W $0E69                          ;808DDE;
    BNE CODE_808DE7                      ;808DE1;
    LDA.B #$04                           ;808DE3;
    STA.B $3A                            ;808DE5;

CODE_808DE7:
    RTS                                  ;808DE7;

CODE_808DE8:
    LDX.B $01                            ;808DE8;
    JMP.W (PTR16_808DED,X)               ;808DEA;

PTR16_808DED:
    dw CODE_808DF9                       ;808DED;
    dw CODE_808E3D                       ;808DEF;
    dw CODE_808E4C                       ;808DF1;
    dw CODE_808EB9                       ;808DF3;
    dw CODE_808ED7                       ;808DF5;
    dw CODE_808ED6                       ;808DF7;

CODE_808DF9:
    LDA.B #$02                           ;808DF9;
    STA.B $01                            ;808DFB;
    LDA.B #$1F                           ;808DFD;
    STA.B $03                            ;808DFF;
    JSR.W CODE_809416                    ;808E01;
    REP #$20                             ;808E04;
    STZ.B $04                            ;808E06;
    STZ.B $07                            ;808E08;
    LDX.B $0F                            ;808E0A;
    LDA.W #$FF80                         ;808E0C;
    STA.B $05                            ;808E0F;
    STA.W $00B4,X                        ;808E11;
    LDA.W #$0030                         ;808E14;
    STA.B $08                            ;808E17;
    STA.W $00B6,X                        ;808E19;
    LDA.W $0BA8                          ;808E1C;
    ASL A                                ;808E1F;
    TAY                                  ;808E20;
    ASL A                                ;808E21;
    TAX                                  ;808E22;
    LDA.W DATA8_86887C,X                 ;808E23;
    STA.B $1A                            ;808E26;
    LDA.W DATA8_86887E,X                 ;808E28;
    STA.B $1C                            ;808E2B;
    LDA.W DATA8_868890,Y                 ;808E2D;
    STA.B $1E                            ;808E30;
    SEP #$20                             ;808E32;
    LDX.W $0BA8                          ;808E34;
    LDA.W DATA8_86889A,X                 ;808E37;
    STA.B $02                            ;808E3A;
    RTS                                  ;808E3C;

CODE_808E3D:
    DEC.B $10                            ;808E3D;
    BNE CODE_808E4B                      ;808E3F;
    LDA.B #$04                           ;808E41;
    STA.B $01                            ;808E43;
    DEC.B $03                            ;808E45;
    LDA.B #$01                           ;808E47;
    STA.B $10                            ;808E49;

CODE_808E4B:
    RTS                                  ;808E4B;

CODE_808E4C:
    DEC.B $10                            ;808E4C;
    BNE CODE_808E62                      ;808E4E;
    LDA.B #$01                           ;808E50;
    STA.B $10                            ;808E52;
    LDA.B $03                            ;808E54;
    SEC                                  ;808E56;
    SBC.B $02                            ;808E57;
    BPL CODE_808E5D                      ;808E59;
    LDA.B #$00                           ;808E5B;

CODE_808E5D:
    STA.B $03                            ;808E5D;
    JSR.W CODE_809416                    ;808E5F;

CODE_808E62:
    REP #$21                             ;808E62;
    LDA.W #$FFFF                         ;808E64;
    STA.W $0000                          ;808E67;
    LDA.B $1C                            ;808E6A;
    ADC.B $1E                            ;808E6C;
    BMI CODE_808E76                      ;808E6E;
    STZ.W $0000                          ;808E70;
    LDA.W #$0000                         ;808E73;

CODE_808E76:
    STA.B $1C                            ;808E76;
    LDA.B $07                            ;808E78;
    CLC                                  ;808E7A;
    ADC.B $1C                            ;808E7B;
    STA.B $07                            ;808E7D;
    SEP #$20                             ;808E7F;
    LDA.B $09                            ;808E81;
    ADC.W $0000                          ;808E83;
    STA.B $09                            ;808E86;
    REP #$21                             ;808E88;
    LDA.B $04                            ;808E8A;
    ADC.B $1A                            ;808E8C;
    STA.B $04                            ;808E8E;
    SEP #$20                             ;808E90;
    LDA.B $06                            ;808E92;
    ADC.B #$00                           ;808E94;
    STA.B $06                            ;808E96;
    REP #$20                             ;808E98;
    LDX.B $0F                            ;808E9A;
    LDA.B $08                            ;808E9C;
    STA.W $00B6,X                        ;808E9E;
    LDA.B $05                            ;808EA1;
    BMI CODE_808EB3                      ;808EA3;
    LDY.B #$06                           ;808EA5;
    STY.B $01                            ;808EA7;
    STZ.B $05                            ;808EA9;
    STZ.B $08                            ;808EAB;
    STZ.W $00B6,X                        ;808EAD;
    LDA.W #$0000                         ;808EB0;

CODE_808EB3:
    STA.W $00B4,X                        ;808EB3;
    SEP #$20                             ;808EB6;
    RTS                                  ;808EB8;

CODE_808EB9:
    DEC.B $10                            ;808EB9;
    BNE CODE_808E62                      ;808EBB;
    LDA.B #$01                           ;808EBD;
    STA.B $10                            ;808EBF;
    LDA.B $03                            ;808EC1;
    SEC                                  ;808EC3;
    SBC.B $02                            ;808EC4;
    BPL CODE_808ED4                      ;808EC6;
    LDA.B #$08                           ;808EC8;
    LDX.B $11                            ;808ECA;
    BEQ CODE_808ED0                      ;808ECC;
    LDA.B #$0A                           ;808ECE;

CODE_808ED0:
    STA.B $01                            ;808ED0;
    LDA.B #$00                           ;808ED2;

CODE_808ED4:
    STA.B $03                            ;808ED4;

CODE_808ED6:
    RTS                                  ;808ED6;

CODE_808ED7:
    LDA.B $03                            ;808ED7;
    CLC                                  ;808ED9;
    ADC.B #$02                           ;808EDA;
    STA.B $03                            ;808EDC;
    LDA.B $03                            ;808EDE;
    CMP.B #$1F                           ;808EE0;
    BCC CODE_808EEC                      ;808EE2;
    LDX.B #$01                           ;808EE4;
    STX.B $10                            ;808EE6;
    LDX.B #$00                           ;808EE8;
    STX.B $01                            ;808EEA;

CODE_808EEC:
    JMP.W CODE_809416                    ;808EEC;

CODE_808EEF:
    LDA.B #$06                           ;808EEF;
    STA.B $3A                            ;808EF1;
    LDA.B #$03                           ;808EF3;
    STA.B $C0                            ;808EF5;
    STZ.B $C1                            ;808EF7;
    STZ.W $00C9                          ;808EF9;
    STZ.W $00CA                          ;808EFC;
    LDY.B #$2E                           ;808EFF;
    JSL.L CODE_828011                    ;808F01;
    PHB                                  ;808F05;
    REP #$30                             ;808F06;
    LDA.W #$0100                         ;808F08;
    STA.B $B8                            ;808F0B;
    STZ.B $BA                            ;808F0D;
    LDA.W #$0002                         ;808F0F;
    STA.W $0BAF                          ;808F12;
    STA.W $0BAC                          ;808F15;
    LDX.W #$889F                         ;808F18;
    LDY.W #$0AA1                         ;808F1B;
    LDA.W #$0006                         ;808F1E;
    MVN $00,$86                          ;808F21;
    LDX.W #$88A6                         ;808F24;
    LDY.W #$0B22                         ;808F27;
    LDA.W #$0009                         ;808F2A;
    MVN $00,$86                          ;808F2D;
    SEP #$30                             ;808F30;
    PLB                                  ;808F32;
    LDA.B #$01                           ;808F33;
    STA.B $D7                            ;808F35;
    JSR.W CODE_80945C                    ;808F37;
    LDY.B #$12                           ;808F3A;
    JMP.W CODE_808A87                    ;808F3C;

CODE_808F3F:
    DEC.B $D7                            ;808F3F;
    BNE CODE_808F76                      ;808F41;
    LDA.B #$01                           ;808F43;
    STA.B $D7                            ;808F45;
    REP #$20                             ;808F47;
    INC.W $0BAF                          ;808F49;
    INC.W $0BAF                          ;808F4C;
    INC.W $0BAF                          ;808F4F;
    INC.W $0BAF                          ;808F52;
    LDA.W #$01C0                         ;808F55;
    CMP.W $0BAF                          ;808F58;
    BCS CODE_808F60                      ;808F5B;
    STA.W $0BAF                          ;808F5D;

CODE_808F60:
    INC.W $0BAC                          ;808F60;
    INC.W $0BAC                          ;808F63;
    LDA.W #$01C0                         ;808F66;
    CMP.W $0BAC                          ;808F69;
    SEP #$20                             ;808F6C;
    BCS CODE_808F77                      ;808F6E;
    LDA.B #$08                           ;808F70;
    STA.B $3A                            ;808F72;
    STZ.B $B9                            ;808F74;

CODE_808F76:
    RTS                                  ;808F76;

CODE_808F77:
    JMP.W CODE_80945C                    ;808F77;

CODE_808F7A:
    LDA.B #$0A                           ;808F7A;
    STA.B $3A                            ;808F7C;
    REP #$20                             ;808F7E;
    LDA.W #$00A0                         ;808F80;
    STA.W $0BAC                          ;808F83;
    LDA.W #$0080                         ;808F86;
    STA.W $0BAF                          ;808F89;
    SEP #$20                             ;808F8C;
    JMP.W CODE_809489                    ;808F8E;

CODE_808F91:
    REP #$21                             ;808F91;
    LDA.W $0BAC                          ;808F93;
    ADC.W #$FFF8                         ;808F96;
    STA.W $0BAC                          ;808F99;
    SEP #$20                             ;808F9C;
    BPL CODE_808FA9                      ;808F9E;
    LDA.B #$0C                           ;808FA0;
    STA.B $3A                            ;808FA2;
    LDA.B #$2D                           ;808FA4;
    JMP.W CODE_80888B                    ;808FA6;

CODE_808FA9:
    JMP.W CODE_809489                    ;808FA9;

CODE_808FAC:
    LDA.B #$0E                           ;808FAC;
    STA.B $3A                            ;808FAE;
    LDA.B #$03                           ;808FB0;
    STA.B $C0                            ;808FB2;
    LDA.B #$E0                           ;808FB4;
    STA.W $2132                          ;808FB6;
    STA.B $D9                            ;808FB9;
    STZ.W $00C9                          ;808FBB;
    LDA.B #$27                           ;808FBE;
    STA.W $00CA                          ;808FC0;
    RTS                                  ;808FC3;

CODE_808FC4:
    LDA.B $D9                            ;808FC4;
    INC A                                ;808FC6;
    ORA.B #$E0                           ;808FC7;
    STA.B $D9                            ;808FC9;
    CMP.B #$FF                           ;808FCB;
    BNE CODE_808FE2                      ;808FCD;
    LDA.B #$10                           ;808FCF;
    STA.B $3A                            ;808FD1;
    LDA.B #$07                           ;808FD3;
    STA.B $C0                            ;808FD5;
    LDY.B #$12                           ;808FD7;
    JSL.L CODE_828011                    ;808FD9;
    LDA.B #$01                           ;808FDD;
    JSR.W CODE_8089E1                    ;808FDF;

CODE_808FE2:
    LDA.B $D9                            ;808FE2;
    STA.W $2132                          ;808FE4;
    RTS                                  ;808FE7;

CODE_808FE8:
    LDA.B $D9                            ;808FE8;
    DEC A                                ;808FEA;
    STA.B $D9                            ;808FEB;
    CMP.B #$E0                           ;808FED;
    BNE CODE_808FFD                      ;808FEF;
    LDA.B #$16                           ;808FF1;
    STA.B $3A                            ;808FF3;
    LDA.B #$38                           ;808FF5;
    STA.B $D7                            ;808FF7;
    LDA.B #$04                           ;808FF9;
    STA.B $D8                            ;808FFB;

CODE_808FFD:
    LDA.B $D9                            ;808FFD;
    STA.W $2132                          ;808FFF;
    RTS                                  ;809002;

CODE_809003:
    RTS                                  ;809003;

CODE_809004:
    REP #$20                             ;809004;
    DEC.B $D7                            ;809006;
    SEP #$20                             ;809008;
    BNE CODE_809073                      ;80900A;
    LDA.B #$06                           ;80900C;
    STA.B $39                            ;80900E;
    STZ.B $3A                            ;809010;
    JSR.W CODE_808879                    ;809012;
    JSR.W CODE_808995                    ;809015;
    LDA.L $7EFFC6                        ;809018;
    PHB                                  ;80901C;
    REP #$30                             ;80901D;
    LDA.L $7EFFC7                        ;80901F;
    LDA.W #$0000                         ;809023;
    AND.W #$00FF                         ;809026;
    ASL A                                ;809029;
    TAX                                  ;80902A;
    LDA.L DATA8_868878,X                 ;80902B;
    PHA                                  ;80902F;
    LDA.L DATA8_86887A,X                 ;809030;
    PLX                                  ;809034;
    LDY.W #$8406                         ;809035;
    MVN $7F,$8C                          ;809038;
    PLB                                  ;80903B;
    SEP #$30                             ;80903C;
    LDA.L $7EFFC7                        ;80903E;
    INC A                                ;809042;
    CMP.B #$02                           ;809043;
    BCC CODE_809049                      ;809045;
    LDA.B #$00                           ;809047;

CODE_809049:
    STA.L $7EFFC7                        ;809049;
    BRA CODE_809061                      ;80904D;
    REP #$30                             ;80904F;
    PHB                                  ;809051;
    LDX.W #$0006                         ;809052;
    LDY.W #$8406                         ;809055;
    LDA.W #$1C33                         ;809058;
    MVN $7F,$70                          ;80905B;
    PLB                                  ;80905E;
    SEP #$30                             ;80905F;

CODE_809061:
    LDA.L $7F840B                        ;809061;
    STA.W $1F7A                          ;809065;
    LDA.W $1F7A                          ;809068;
    ASL A                                ;80906B;
    CLC                                  ;80906C;
    ADC.B #$04                           ;80906D;
    TAY                                  ;80906F;
    JSR.W CODE_80B301                    ;809070;

CODE_809073:
    RTS                                  ;809073;

CODE_809074:
    LDX.B $3A                            ;809074;
    BNE CODE_8090A7                      ;809076;
    LDA.B #$02                           ;809078;
    STA.B $3A                            ;80907A;
    STZ.W $1F99                          ;80907C;
    LDA.B #$0A                           ;80907F;
    STA.W $1F9A                          ;809081;
    LDA.B #$00                           ;809084;
    STA.L $7F8400                        ;809086;
    LDA.L $7F840C                        ;80908A;
    STA.W $1F81                          ;80908E;
    LDX.B #$00                           ;809091;
    JSR.W CODE_808B90                    ;809093;
    LDX.B #$01                           ;809096;
    JSR.W CODE_808B90                    ;809098;
    JSR.W CODE_80891B                    ;80909B;
    JSR.W CODE_80DB55                    ;80909E;
    JSR.W CODE_808BCB                    ;8090A1;
    JMP.W CODE_808A45                    ;8090A4;

CODE_8090A7:
    LDX.B $3B                            ;8090A7;
    JMP.W (PTR16_8090AC,X)               ;8090A9;

PTR16_8090AC:
    dw CODE_8090B2                       ;8090AC;
    dw CODE_809102                       ;8090AE;
    dw CODE_80917C                       ;8090B0;

CODE_8090B2:
    LDX.B $3C                            ;8090B2;
    BNE CODE_8090DB                      ;8090B4;
    INC.B $3C                            ;8090B6;
    LDA.W $1F82                          ;8090B8;
    BNE CODE_8090C0                      ;8090BB;
    JSR.W CODE_80DB70                    ;8090BD;

CODE_8090C0:
    JSR.W CODE_809DB4                    ;8090C0;
    REP #$20                             ;8090C3;
    LDA.W $1E50                          ;8090C5;
    STA.B $D7                            ;8090C8;
    SEC                                  ;8090CA;
    SBC.W #$0100                         ;8090CB;
    STA.W $1E50                          ;8090CE;
    SEC                                  ;8090D1;
    SBC.W #$0020                         ;8090D2;
    STA.W $1E6C                          ;8090D5;
    SEP #$20                             ;8090D8;
    RTS                                  ;8090DA;

CODE_8090DB:
    REP #$21                             ;8090DB;
    LDA.W $1E50                          ;8090DD;
    ADC.W #$0020                         ;8090E0;
    STA.W $1E50                          ;8090E3;
    CMP.B $D7                            ;8090E6;
    BEQ CODE_8090EC                      ;8090E8;
    BPL CODE_8090F1                      ;8090EA;

CODE_8090EC:
    SEP #$20                             ;8090EC;
    JMP.W CODE_80DC4C                    ;8090EE;

CODE_8090F1:
    LDA.B $D7                            ;8090F1;
    STA.W $1E50                          ;8090F3;
    STA.W $1E6C                          ;8090F6;
    SEP #$20                             ;8090F9;
    LDA.B #$02                           ;8090FB;
    STA.B $3B                            ;8090FD;
    JMP.W CODE_8089BD                    ;8090FF;

CODE_809102:
    LDA.B #$01                           ;809102;
    STA.W $1E08                          ;809104;

CODE_809107:
    INC.W $0B9C                          ;809107;
    JSR.W CODE_80E2D2                    ;80910A;
    LDA.W $1F24                          ;80910D;
    BNE CODE_80915A                      ;809110;
    JSL.L CODE_849086                    ;809112;
    JSR.W CODE_80D203                    ;809116;
    JSR.W CODE_80DC4C                    ;809119;
    JSR.W CODE_809E7E                    ;80911C;
    BRA CODE_809126                      ;80911F;
    LDA.W $1E08                          ;809121;
    BNE CODE_809129                      ;809124;

CODE_809126:
    JSR.W CODE_80D585                    ;809126;

CODE_809129:
    LDA.L $7F8400                        ;809129;
    CMP.B #$04                           ;80912D;
    BEQ CODE_80913B                      ;80912F;
    LDA.W $1F23                          ;809131;
    BMI CODE_809195                      ;809134;
    LDA.W $0BCF                          ;809136;
    BNE CODE_809149                      ;809139;

CODE_80913B:
    LDA.B #$04                           ;80913B;
    STA.B $3B                            ;80913D;
    STZ.W $0BDE                          ;80913F;
    STZ.W $0BE0                          ;809142;
    STZ.W $0BE2                          ;809145;

CODE_809148:
    RTS                                  ;809148;

CODE_809149:
    BRA CODE_809148                      ;809149;
    REP #$20                             ;80914B;
    STZ.B $E4                            ;80914D;
    STZ.B $E6                            ;80914F;
    STZ.B $E8                            ;809151;
    STZ.B $EA                            ;809153;
    SEP #$20                             ;809155;
    BRA CODE_809107                      ;809157;
    RTS                                  ;809159;

CODE_80915A:
    BPL CODE_809179                      ;80915A;
    JSR.W CODE_809EE2                    ;80915C;
    BIT.W $1F24                          ;80915F;
    BVC CODE_80916C                      ;809162;
    LDA.B #$01                           ;809164;
    STA.W $0BB6                          ;809166;
    JSR.W CODE_809F25                    ;809169;

CODE_80916C:
    JSR.W CODE_80D585                    ;80916C;
    STZ.W $1F24                          ;80916F;
    LDX.B #$01                           ;809172;
    LDY.B #$02                           ;809174;
    JMP.W CODE_808979                    ;809176;

CODE_809179:
    JMP.W CODE_80C43A                    ;809179;

CODE_80917C:
    INC.W $0B9C                          ;80917C;
    JSR.W CODE_80D203                    ;80917F;
    JSR.W CODE_80DC4C                    ;809182;
    JSR.W CODE_80D585                    ;809185;
    LDA.L $7F8400                        ;809188;
    CMP.B #$04                           ;80918C;
    BEQ CODE_809195                      ;80918E;
    LDA.W $1F0B                          ;809190;
    BEQ CODE_809148                      ;809193;

CODE_809195:
    STZ.B $39                            ;809195;
    STZ.B $3A                            ;809197;
    STZ.B $3B                            ;809199;
    STZ.B $3C                            ;80919B;
    LDX.B #$30                           ;80919D;
    JSR.W CODE_808147                    ;80919F;
    LDX.B #$40                           ;8091A2;
    JSR.W CODE_808147                    ;8091A4;
    JMP.W CODE_808995                    ;8091A7;

CODE_8091AA:
    LDX.B $39                            ;8091AA;
    JMP.W (PTR16_8091AF,X)               ;8091AC;

PTR16_8091AF:
    dw CODE_8091B5                       ;8091AF;
    dw CODE_809271                       ;8091B1;
    dw CODE_8092D4                       ;8091B3;

CODE_8091B5:
    LDA.B #$02                           ;8091B5;
    STA.B $39                            ;8091B7;
    STZ.B $3C                            ;8091B9;
    LDA.B #$1E                           ;8091BB;
    JSR.W CODE_80814E                    ;8091BD;
    JSR.W CODE_808995                    ;8091C0;
    STZ.W $0BA1                          ;8091C3;
    LDX.B #$00                           ;8091C6;
    JSR.W CODE_808B90                    ;8091C8;
    LDX.B #$01                           ;8091CB;
    JSR.W CODE_808B90                    ;8091CD;
    JSR.W CODE_80891B                    ;8091D0;
    JSR.W CODE_80DB55                    ;8091D3;
    JSR.W CODE_808BCB                    ;8091D6;
    JSR.W CODE_808A45                    ;8091D9;
    STZ.W $1F99                          ;8091DC;
    JSR.W CODE_80B12D                    ;8091DF;
    JSR.W CODE_809448                    ;8091E2;
    JSR.W CODE_809434                    ;8091E5;
    LDX.B #$10                           ;8091E8;
    LDY.B #$00                           ;8091EA;
    JSL.L CODE_828000                    ;8091EC;
    LDY.B #$12                           ;8091F0;
    JSL.L CODE_828011                    ;8091F2;
    LDX.B #$30                           ;8091F6;
    LDY.B #$40                           ;8091F8;
    JSL.L CODE_828000                    ;8091FA;
    LDY.B #$20                           ;8091FE;
    JSR.W CODE_80B301                    ;809200;
    JSR.W CODE_808100                    ;809203;
    STZ.W $0BA9                          ;809206;
    LDA.B #$10                           ;809209;
    TSB.W $0C26                          ;80920B;
    JSL.L CODE_81812E                    ;80920E;
    STZ.W $0BAA                          ;809212;
    STZ.W $0BAB                          ;809215;
    LDA.B #$04                           ;809218;
    STA.W $0BD3                          ;80921A;
    LDA.B #$1E                           ;80921D;
    STA.W $0BCF                          ;80921F;
    JSL.L CODE_81812E                    ;809222;
    LDA.B #$40                           ;809226;
    STA.W $0C11                          ;809228;
    ORA.B #$32                           ;80922B;
    STA.W $0BB9                          ;80922D;
    STZ.W $0BD7                          ;809230;
    REP #$20                             ;809233;
    LDA.W #$0020                         ;809235;
    STA.W $0BAD                          ;809238;
    LDA.W #$00A6                         ;80923B;
    STA.W $0BB0                          ;80923E;
    STZ.W $0BDE                          ;809241;
    STZ.W $0BDF                          ;809244;
    STZ.W $1E4D                          ;809247;
    STZ.W $1E50                          ;80924A;
    SEP #$20                             ;80924D;
    LDA.B #$06                           ;80924F;
    STA.W $1F11                          ;809251;
    LDA.B #$04                           ;809254;
    STA.W $1F12                          ;809256;
    JSR.W CODE_80D585                    ;809259;
    LDA.B #$04                           ;80925C;
    JSR.W CODE_8089E1                    ;80925E;
    LDA.B #$10                           ;809261;
    JSR.W CODE_8089E1                    ;809263;
    JSR.W CODE_80935D                    ;809266;
    JSR.W CODE_808973                    ;809269;
    LDA.B #$FF                           ;80926C;
    STA.B $3B                            ;80926E;
    RTS                                  ;809270;

CODE_809271:
    LDA.B $AC                            ;809271;
    BIT.B #$08                           ;809273;
    BEQ CODE_809280                      ;809275;
    LDA.B $3C                            ;809277;
    DEC A                                ;809279;
    BPL CODE_80928D                      ;80927A;
    LDA.B #$02                           ;80927C;
    BRA CODE_80928D                      ;80927E;

CODE_809280:
    BIT.B #$24                           ;809280;
    BEQ CODE_8092A2                      ;809282;
    LDA.B $3C                            ;809284;
    INC A                                ;809286;
    CMP.B #$03                           ;809287;
    BNE CODE_80928D                      ;809289;
    LDA.B #$00                           ;80928B;

CODE_80928D:
    STA.B $3C                            ;80928D;
    TAX                                  ;80928F;
    LDA.W DATA8_868875,X                 ;809290;
    STA.W $0BB0                          ;809293;
    LDA.B $3C                            ;809296;
    CLC                                  ;809298;
    ADC.B #$10                           ;809299;
    JSR.W CODE_8089E1                    ;80929B;
    LDA.B #$F0                           ;80929E;
    STA.B $3B                            ;8092A0;

CODE_8092A2:
    LDA.B $AC                            ;8092A2;
    BIT.B #$10                           ;8092A4;
    BEQ CODE_8092B6                      ;8092A6;
    LDA.B #$04                           ;8092A8;
    STA.B $39                            ;8092AA;
    LDA.B #$3C                           ;8092AC;
    STA.B $3B                            ;8092AE;
    LDA.B #$02                           ;8092B0;
    STA.W $0C01                          ;8092B2;
    RTS                                  ;8092B5;

CODE_8092B6:
    JSR.W CODE_80D585                    ;8092B6;
    JSL.L CODE_849086                    ;8092B9;
    DEC.B $3B                            ;8092BD;
    BEQ CODE_8092C2                      ;8092BF;
    RTS                                  ;8092C1;

CODE_8092C2:
    STZ.B $38                            ;8092C2;
    STZ.B $39                            ;8092C4;
    STZ.B $3A                            ;8092C6;
    STZ.B $3B                            ;8092C8;
    STZ.B $3C                            ;8092CA;
    LDY.B #$04                           ;8092CC;
    JSR.W CODE_808873                    ;8092CE;
    JMP.W CODE_808995                    ;8092D1;

CODE_8092D4:
    LDA.B #$04                           ;8092D4;
    STA.W $0BD3                          ;8092D6;
    JSL.L CODE_81812E                    ;8092D9;
    PHP                                  ;8092DD;
    PHD                                  ;8092DE;
    JSR.W CODE_80D3F3                    ;8092DF;
    JSR.W CODE_80D450                    ;8092E2;
    PLD                                  ;8092E5;
    PLP                                  ;8092E6;
    JSR.W CODE_80D585                    ;8092E7;
    LDA.B $3B                            ;8092EA;
    BEQ CODE_8092FA                      ;8092EC;
    DEC.B $3B                            ;8092EE;
    LDA.W $00AC                          ;8092F0;
    BIT.B #$10                           ;8092F3;
    BEQ CODE_8092F9                      ;8092F5;
    STZ.B $3B                            ;8092F7;

CODE_8092F9:
    RTS                                  ;8092F9;

CODE_8092FA:
    LDX.B $3A                            ;8092FA;
    BNE CODE_809305                      ;8092FC;
    BRA CODE_809300                      ;8092FE;

CODE_809300:
    INC.B $3A                            ;809300;
    JMP.W CODE_8089CF                    ;809302;

CODE_809305:
    LDA.B $70                            ;809305;
    BEQ CODE_80930A                      ;809307;
    RTS                                  ;809309;

CODE_80930A:
    JSR.W CODE_809381                    ;80930A;
    LDY.B #$02                           ;80930D;
    JSR.W CODE_808873                    ;80930F;
    LDA.B $3C                            ;809312;
    ASL A                                ;809314;
    TAX                                  ;809315;
    JMP.W (PTR16_809319,X)               ;809316;

PTR16_809319:
    dw CODE_80931F                       ;809319;
    dw CODE_80932B                       ;80931B;
    dw CODE_80934F                       ;80931D;

CODE_80931F:
    STZ.W $0BA9                          ;80931F;
    STZ.W $0BAA                          ;809322;
    STZ.W $0BAB                          ;809325;
    JMP.W CODE_8094D1                    ;809328;

CODE_80932B:
    LDX.B #$00                           ;80932B;
    JSR.W CODE_808B90                    ;80932D;
    LDX.B #$01                           ;809330;
    JSR.W CODE_808B90                    ;809332;
    JSR.W CODE_80891B                    ;809335;
    JSR.W CODE_80DB55                    ;809338;
    JSR.W CODE_808BCB                    ;80933B;
    JSR.W CODE_808A45                    ;80933E;
    JSR.W CODE_80EE9B                    ;809341;
    LDA.B #$02                           ;809344;
    STA.B $D1                            ;809346;
    STZ.B $D2                            ;809348;
    STZ.B $D3                            ;80934A;
    JMP.W CODE_8094D9                    ;80934C;

CODE_80934F:
    JSR.W CODE_80EA1D                    ;80934F;
    STZ.B $38                            ;809352;
    STZ.B $39                            ;809354;
    STZ.B $3A                            ;809356;
    STZ.B $3B                            ;809358;
    STZ.B $3C                            ;80935A;
    RTS                                  ;80935C;

CODE_80935D:
    LDY.B #$12                           ;80935D;
    JSL.L CODE_828011                    ;80935F;
    LDY.B #$2E                           ;809363;
    JSL.L CODE_828011                    ;809365;
    LDY.B #$26                           ;809369;
    JSR.W CODE_80B301                    ;80936B;
    JSR.W CODE_808100                    ;80936E;
    LDY.B #$12                           ;809371;
    JSR.W CODE_808A87                    ;809373;
    JSR.W CODE_808100                    ;809376;
    LDY.B #$28                           ;809379;
    JSR.W CODE_80B301                    ;80937B;
    JMP.W CODE_808100                    ;80937E;

CODE_809381:
    REP #$30                             ;809381;
    LDX.W #$008E                         ;809383;

CODE_809386:
    STZ.W $0BA8,X                        ;809386;
    DEX                                  ;809389;
    DEX                                  ;80938A;
    BPL CODE_809386                      ;80938B;
    SEP #$30                             ;80938D;
    RTS                                  ;80938F;

CODE_809390:
    REP #$30                             ;809390;
    LDX.W #$07FE                         ;809392;

CODE_809395:
    LDA.L $7F0000,X                      ;809395;
    BEQ CODE_8093B1                      ;809399;
    STA.B $00                            ;80939B;
    AND.W #$1C00                         ;80939D;
    CLC                                  ;8093A0;
    ADC.W #$0800                         ;8093A1;
    STA.B $02                            ;8093A4;
    LDA.B $00                            ;8093A6;
    AND.W #$E3FF                         ;8093A8;
    ORA.B $02                            ;8093AB;
    STA.L $7F0000,X                      ;8093AD;

CODE_8093B1:
    DEX                                  ;8093B1;
    DEX                                  ;8093B2;
    BPL CODE_809395                      ;8093B3;
    SEP #$30                             ;8093B5;
    RTS                                  ;8093B7;

CODE_8093B8:
    PHD                                  ;8093B8;
    PEA.W $0000                          ;8093B9;
    PLD                                  ;8093BC;
    REP #$20                             ;8093BD;
    LDA.B $E1                            ;8093BF;
    AND.W #$00FF                         ;8093C1;
    STA.B $00                            ;8093C4;
    XBA                                  ;8093C6;
    ASL A                                ;8093C7;
    ASL A                                ;8093C8;
    STA.B $04                            ;8093C9;
    LSR A                                ;8093CB;
    LSR A                                ;8093CC;
    LSR A                                ;8093CD;
    LSR A                                ;8093CE;
    LSR A                                ;8093CF;
    STA.B $02                            ;8093D0;
    LDY.B #$20                           ;8093D2;

CODE_8093D4:
    LDA.W $0300,X                        ;8093D4;
    AND.W #$001F                         ;8093D7;
    SEC                                  ;8093DA;
    SBC.B $00                            ;8093DB;
    BPL CODE_8093E2                      ;8093DD;
    LDA.W #$0000                         ;8093DF;

CODE_8093E2:
    STA.B $06                            ;8093E2;
    LDA.W $0300,X                        ;8093E4;
    AND.W #$03E0                         ;8093E7;
    SEC                                  ;8093EA;
    SBC.B $02                            ;8093EB;
    BPL CODE_8093F2                      ;8093ED;
    LDA.W #$0000                         ;8093EF;

CODE_8093F2:
    STA.B $08                            ;8093F2;
    LDA.W $0300,X                        ;8093F4;
    AND.W #$7C00                         ;8093F7;
    SEC                                  ;8093FA;
    SBC.B $04                            ;8093FB;
    BPL CODE_809402                      ;8093FD;
    LDA.W #$0000                         ;8093FF;

CODE_809402:
    ORA.B $08                            ;809402;
    ORA.B $06                            ;809404;
    STA.W $0300,X                        ;809406;
    INX                                  ;809409;
    INX                                  ;80940A;
    DEY                                  ;80940B;
    DEY                                  ;80940C;
    BNE CODE_8093D4                      ;80940D;
    SEP #$20                             ;80940F;
    INC.W $00A1                          ;809411;
    PLD                                  ;809414;
    RTS                                  ;809415;

CODE_809416:
    LDX.B #$00                           ;809416;
    LDA.B $0F                            ;809418;
    BEQ CODE_80941E                      ;80941A;
    LDX.B #$20                           ;80941C;

CODE_80941E:
    LDY.B #$C4                           ;80941E;
    JSL.L CODE_828000                    ;809420;
    LDX.B #$40                           ;809424;
    LDA.B $0F                            ;809426;
    BEQ CODE_80942C                      ;809428;
    LDX.B #$80                           ;80942A;

CODE_80942C:
    LDA.B $03                            ;80942C;
    STA.W $00E1                          ;80942E;
    JMP.W CODE_8093B8                    ;809431;

CODE_809434:
    REP #$30                             ;809434;
    PEA.W DATA8_86867E                   ;809436;
    PLB                                  ;809439;
    LDX.W #$85FE                         ;80943A;

CODE_80943D:
    STZ.W $2000,X                        ;80943D;
    DEX                                  ;809440;
    DEX                                  ;809441;
    BPL CODE_80943D                      ;809442;
    PLB                                  ;809444;
    SEP #$30                             ;809445;
    RTS                                  ;809447;

CODE_809448:
    REP #$30                             ;809448;
    PEA.W DATA8_86867E                   ;80944A;
    PLB                                  ;80944D;
    LDX.W #$03FE                         ;80944E;

CODE_809451:
    STZ.W $E800,X                        ;809451;
    DEX                                  ;809454;
    DEX                                  ;809455;
    BPL CODE_809451                      ;809456;
    PLB                                  ;809458;
    SEP #$30                             ;809459;
    RTS                                  ;80945B;

CODE_80945C:
    REP #$30                             ;80945C;
    LDX.W #$01BE                         ;80945E;
    LDA.W #$FF10                         ;809461;

CODE_809464:
    INC A                                ;809464;
    STA.L $7FD000,X                      ;809465;
    DEX                                  ;809469;
    DEX                                  ;80946A;
    CPX.W $0BAF                          ;80946B;
    BPL CODE_809464                      ;80946E;
    LDA.W $0BAC                          ;809470;
    SEC                                  ;809473;
    SBC.W $0BAF                          ;809474;
    CLC                                  ;809477;
    BPL CODE_80947B                      ;809478;
    SEC                                  ;80947A;

CODE_80947B:
    ROR A                                ;80947B;
    DEC A                                ;80947C;

CODE_80947D:
    INC A                                ;80947D;
    STA.L $7FD000,X                      ;80947E;
    DEX                                  ;809482;
    DEX                                  ;809483;
    BPL CODE_80947D                      ;809484;
    SEP #$30                             ;809486;
    RTS                                  ;809488;

CODE_809489:
    REP #$30                             ;809489;
    LDY.W $0BAC                          ;80948B;
    STY.B $DB                            ;80948E;
    LDX.W $0BAF                          ;809490;
    LDA.W #$0001                         ;809493;

CODE_809496:
    DEC A                                ;809496;
    STA.L $7FD000,X                      ;809497;
    INX                                  ;80949B;
    INX                                  ;80949C;
    CPX.W #$01C0                         ;80949D;
    BPL CODE_8094AE                      ;8094A0;
    DEC.B $DB                            ;8094A2;
    BPL CODE_809496                      ;8094A4;
    LDY.W $0BAC                          ;8094A6;
    STY.B $DB                            ;8094A9;
    INC A                                ;8094AB;
    BRA CODE_809496                      ;8094AC;

CODE_8094AE:
    LDY.W $0BAC                          ;8094AE;
    STY.B $DB                            ;8094B1;
    LDX.W $0BAF                          ;8094B3;
    LDA.W #$FFFF                         ;8094B6;

CODE_8094B9:
    INC A                                ;8094B9;
    STA.L $7FD000,X                      ;8094BA;
    DEX                                  ;8094BE;
    DEX                                  ;8094BF;
    BMI CODE_8094CE                      ;8094C0;
    DEC.B $DB                            ;8094C2;
    BPL CODE_8094B9                      ;8094C4;
    LDY.W $0BAC                          ;8094C6;
    STY.B $DB                            ;8094C9;
    DEC A                                ;8094CB;
    BRA CODE_8094B9                      ;8094CC;

CODE_8094CE:
    SEP #$30                             ;8094CE;
    RTS                                  ;8094D0;

CODE_8094D1:
    STZ.B $D1                            ;8094D1;
    STZ.B $D2                            ;8094D3;
    STZ.B $D3                            ;8094D5;
    STZ.B $D4                            ;8094D7;

CODE_8094D9:
    LDX.B $D1                            ;8094D9;
    JSR.W (PTR16_8094E3,X)               ;8094DB;
    JSR.W CODE_808100                    ;8094DE;
    BRA CODE_8094D9                      ;8094E1;

PTR16_8094E3:
    dw CODE_8094E7                       ;8094E3;
    dw CODE_80953F                       ;8094E5;

CODE_8094E7:
    STZ.W $1F7A                          ;8094E7;
    STZ.W $1F7B                          ;8094EA;
    STZ.W $1F7C                          ;8094ED;
    STZ.W $1F7D                          ;8094F0;
    STZ.W $1F7E                          ;8094F3;
    STZ.W $1F7F                          ;8094F6;
    LDA.B #$02                           ;8094F9;
    STA.W $1F80                          ;8094FB;
    LDA.B #$10                           ;8094FE;
    STA.W $1F9A                          ;809500;
    STZ.W $1F99                          ;809503;
    STZ.W $1F9B                          ;809506;
    STZ.W $1F82                          ;809509;
    STZ.W $1F9C                          ;80950C;
    REP #$20                             ;80950F;
    STZ.W $1F83                          ;809511;
    STZ.W $1F85                          ;809514;
    SEP #$20                             ;809517;
    JSR.W CODE_809F01                    ;809519;
    LDA.B #$40                           ;80951C;
    STA.W $1F98                          ;80951E;
    LDA.B #$02                           ;809521;
    STA.B $D1                            ;809523;
    STZ.B $D2                            ;809525;
    STZ.B $D3                            ;809527;
    LDX.B #$00                           ;809529;
    JSR.W CODE_808B90                    ;80952B;
    LDX.B #$01                           ;80952E;
    JSR.W CODE_808B90                    ;809530;
    JSR.W CODE_80891B                    ;809533;
    JSR.W CODE_80DB55                    ;809536;
    JSR.W CODE_808BCB                    ;809539;
    JMP.W CODE_808A45                    ;80953C;

CODE_80953F:
    LDX.B $D2                            ;80953F;
    JMP.W (PTR16_809544,X)               ;809541;

PTR16_809544:
    dw CODE_809550                       ;809544;
    dw CODE_809579                       ;809546;
    dw CODE_809976                       ;809548;
    dw CODE_809D68                       ;80954A;
    dw CODE_809D69                       ;80954C;
    dw CODE_809D6A                       ;80954E;

CODE_809550:
    LDX.B $D3                            ;809550;
    BNE CODE_809576                      ;809552;
    INC.B $D3                            ;809554;
    JSR.W CODE_80891B                    ;809556;
    JSR.W CODE_80DB55                    ;809559;
    JSR.W CODE_808BCB                    ;80955C;
    JSR.W CODE_808A45                    ;80955F;
    LDA.W $1F9B                          ;809562;
    BNE CODE_809576                      ;809565;
    STZ.W $1F7A                          ;809567;
    STZ.W $1F99                          ;80956A;
    LDA.B #$02                           ;80956D;
    STA.B $D2                            ;80956F;
    STZ.B $D3                            ;809571;
    STZ.B $D4                            ;809573;
    RTS                                  ;809575;

CODE_809576:
    JMP.W CODE_80BCD1                    ;809576;

CODE_809579:
    REP #$20                             ;809579;
    LDA.W $1E50                          ;80957B;
    STA.W $1E6C                          ;80957E;
    LDA.W $1E90                          ;809581;
    STA.W $1EAC                          ;809584;
    SEP #$20                             ;809587;
    LDX.B $D3                            ;809589;
    JMP.W (PTR16_80958E,X)               ;80958B;

PTR16_80958E:
    dw CODE_8095A6                       ;80958E;
    dw CODE_809721                       ;809590;
    dw CODE_80974D                       ;809592;
    dw CODE_80976D                       ;809594;
    dw CODE_8097A7                       ;809596;
    dw CODE_8097D6                       ;809598;
    dw CODE_809808                       ;80959A;
    dw CODE_809828                       ;80959C;
    dw CODE_809899                       ;80959E;
    dw CODE_8098F2                       ;8095A0;
    dw CODE_809905                       ;8095A2;
    dw CODE_80991B                       ;8095A4;

CODE_8095A6:
    STZ.W $1FA0                          ;8095A6;
    LDX.W $1F7A                          ;8095A9;
    BNE CODE_8095B6                      ;8095AC;

CODE_8095AE:
    LDA.B #$16                           ;8095AE;
    STA.B $D3                            ;8095B0;
    STA.W $1FA0                          ;8095B2;
    RTS                                  ;8095B5;

CODE_8095B6:
    LDA.W DATA8_8688C0,X                 ;8095B6;
    BEQ CODE_8095AE                      ;8095B9;
    CPX.B #$09                           ;8095BB;
    BCS CODE_8095AE                      ;8095BD;
    JSR.W CODE_80A001                    ;8095BF;
    LDX.W $1F7A                          ;8095C2;
    AND.W DATA8_8688CD,X                 ;8095C5;
    BNE CODE_8095AE                      ;8095C8;
    LDA.B #$02                           ;8095CA;
    STA.B $D3                            ;8095CC;
    LDX.B #$00                           ;8095CE;
    JSR.W CODE_808B90                    ;8095D0;
    LDX.B #$01                           ;8095D3;
    JSR.W CODE_808B90                    ;8095D5;
    LDY.B #$12                           ;8095D8;
    JSL.L CODE_828011                    ;8095DA;
    STZ.W $0300                          ;8095DE;
    STZ.W $0301                          ;8095E1;
    INC.W $00A1                          ;8095E4;
    JSR.W CODE_80891B                    ;8095E7;
    JSR.W CODE_80DB55                    ;8095EA;
    JSR.W CODE_808BCB                    ;8095ED;
    JSR.W CODE_808A45                    ;8095F0;
    LDA.B #$01                           ;8095F3;
    STA.W $2105                          ;8095F5;
    LDA.B #$10                           ;8095F8;
    STA.B $C0                            ;8095FA;
    LDA.B #$04                           ;8095FC;
    STA.W $1F12                          ;8095FE;
    STA.W $1F11                          ;809601;
    JSR.W CODE_80B12D                    ;809604;
    JSR.W CODE_808100                    ;809607;
    LDY.B #$A2                           ;80960A;
    JSL.L CODE_828011                    ;80960C;
    LDA.W $1F7A                          ;809610;
    ASL A                                ;809613;
    CLC                                  ;809614;
    ADC.B #$2E                           ;809615;
    TAY                                  ;809617;
    JSR.W CODE_80B301                    ;809618;
    JSR.W CODE_808100                    ;80961B;
    LDA.W $1F7A                          ;80961E;
    CLC                                  ;809621;
    ADC.B #$0D                           ;809622;
    STA.W $1F7A                          ;809624;
    JSR.W CODE_80BAD7                    ;809627;
    LDA.W $1F7A                          ;80962A;
    CLC                                  ;80962D;
    ADC.B #$F3                           ;80962E;
    STA.W $1F7A                          ;809630;
    REP #$20                             ;809633;
    STZ.W $1E4D                          ;809635;
    STZ.W $1E50                          ;809638;
    STZ.W $1E8D                          ;80963B;
    LDA.W #$0200                         ;80963E;
    STA.W $1E90                          ;809641;
    SEP #$20                             ;809644;
    INC.W $1E9A                          ;809646;
    JSR.W CODE_80B584                    ;809649;
    JSR.W CODE_80B58D                    ;80964C;
    INC.W $1E48                          ;80964F;
    INC.W $1E88                          ;809652;
    LDA.B #$04                           ;809655;
    STA.W $1E49                          ;809657;
    LDA.B #$0C                           ;80965A;
    STA.W $1E89                          ;80965C;
    LDA.B #$10                           ;80965F;
    STA.B $C1                            ;809661;
    STZ.W $00C9                          ;809663;
    STZ.W $00CA                          ;809666;
    STZ.W $00CB                          ;809669;
    STZ.W $00CC                          ;80966C;
    STZ.W $00CD                          ;80966F;
    STZ.W $1F08                          ;809672;
    LDA.W $1F7A                          ;809675;
    CLC                                  ;809678;
    ADC.B #$0D                           ;809679;
    STA.W $1F7A                          ;80967B;
    JSR.W CODE_80B08B                    ;80967E;

CODE_809681:
    JSR.W CODE_808100                    ;809681;
    LDA.W $0040                          ;809684;
    BNE CODE_809681                      ;809687;
    LDA.W $1F7A                          ;809689;
    CLC                                  ;80968C;
    ADC.B #$F3                           ;80968D;
    STA.W $1F7A                          ;80968F;
    JSR.W CODE_80A019                    ;809692;
    REP #$10                             ;809695;
    LDX.W #$0050                         ;809697;
    LDY.W #$0154                         ;80969A;
    JSL.L CODE_828000                    ;80969D;
    SEP #$10                             ;8096A1;
    INC.W $1928                          ;8096A3;
    INC.W $1948                          ;8096A6;
    INC.W $1968                          ;8096A9;
    INC.W $1988                          ;8096AC;
    LDA.B #$10                           ;8096AF;
    STA.W $1932                          ;8096B1;
    STA.W $1952                          ;8096B4;
    STA.W $1972                          ;8096B7;
    STA.W $1992                          ;8096BA;
    LDA.B #$30                           ;8096BD;
    STA.W $1939                          ;8096BF;
    STA.W $1959                          ;8096C2;
    STA.W $1979                          ;8096C5;
    STA.W $1999                          ;8096C8;
    LDA.B #$04                           ;8096CB;
    STA.W $1933                          ;8096CD;
    STA.W $1973                          ;8096D0;
    INC A                                ;8096D3;
    STA.W $1953                          ;8096D4;
    LDX.W $1F7A                          ;8096D7;
    LDA.W DATA8_8688D6,X                 ;8096DA;
    STA.W $1993                          ;8096DD;
    LDA.B #$02                           ;8096E0;
    STA.W $198A                          ;8096E2;
    REP #$20                             ;8096E5;
    LDA.W #$0080                         ;8096E7;
    STA.W $192D                          ;8096EA;
    STA.W $194D                          ;8096ED;
    STA.W $196D                          ;8096F0;
    STA.W $198D                          ;8096F3;
    LDA.W #$0070                         ;8096F6;
    STA.W $1930                          ;8096F9;
    STA.W $1950                          ;8096FC;
    STA.W $1970                          ;8096FF;
    STA.W $1990                          ;809702;
    SEP #$20                             ;809705;
    LDA.B #$22                           ;809707;
    JSR.W CODE_8087B0                    ;809709;
    LDA.B #$58                           ;80970C;
    STA.B $D7                            ;80970E;
    STZ.B $D9                            ;809710;
    PHP                                  ;809712;
    PHD                                  ;809713;
    JSR.W CODE_80D35B                    ;809714;
    PLD                                  ;809717;
    PLP                                  ;809718;
    LDA.B #$40                           ;809719;
    TSB.W $1979                          ;80971B;
    JMP.W CODE_808973                    ;80971E;

CODE_809721:
    JSR.W CODE_809F7E                    ;809721;
    LDX.B $D9                            ;809724;
    LDA.W DATA8_8688BD,X                 ;809726;
    CMP.B $D7                            ;809729;
    BNE CODE_809734                      ;80972B;
    INC.B $D9                            ;80972D;
    LDA.B #$1F                           ;80972F;
    JSR.W CODE_80888B                    ;809731;

CODE_809734:
    DEC.B $D7                            ;809734;
    BNE CODE_80974A                      ;809736;
    LDA.B #$04                           ;809738;
    STA.B $D3                            ;80973A;
    LDA.B #$1F                           ;80973C;
    JSR.W CODE_80888B                    ;80973E;
    LDA.B #$E0                           ;809741;
    STA.B $D7                            ;809743;
    LDA.B #$37                           ;809745;
    STA.W $00CA                          ;809747;

CODE_80974A:
    JMP.W CODE_80D585                    ;80974A;

CODE_80974D:
    LDA.B $D7                            ;80974D;
    INC A                                ;80974F;
    STA.B $D7                            ;809750;
    CMP.B #$FF                           ;809752;
    BNE CODE_80975E                      ;809754;
    LDX.B #$06                           ;809756;
    STX.B $D3                            ;809758;
    LDX.B #$10                           ;80975A;
    STX.B $D9                            ;80975C;

CODE_80975E:
    STA.W $00CB                          ;80975E;
    STA.W $00CC                          ;809761;
    STA.W $00CD                          ;809764;
    JSR.W CODE_809F7E                    ;809767;
    JMP.W CODE_80D585                    ;80976A;

CODE_80976D:
    DEC.B $D9                            ;80976D;
    BNE CODE_8097A6                      ;80976F;
    LDA.B #$08                           ;809771;
    STA.B $D3                            ;809773;
    LDA.B #$17                           ;809775;
    STA.B $C0                            ;809777;
    JSR.W CODE_80A02A                    ;809779;
    INC.W $1988                          ;80977C;
    STZ.W $1989                          ;80977F;
    LDX.W $1F7A                          ;809782;
    LDA.W DATA8_8688D6,X                 ;809785;
    STA.W $1993                          ;809788;
    LDA.B #$04                           ;80978B;
    STA.W $198A                          ;80978D;
    LDA.B #$43                           ;809790;
    STA.W $0300                          ;809792;
    LDA.B #$4D                           ;809795;
    STA.W $0301                          ;809797;
    INC.W $00A1                          ;80979A;
    JSR.W CODE_809F7E                    ;80979D;
    JSR.W CODE_809F7E                    ;8097A0;
    JMP.W CODE_80D585                    ;8097A3;

CODE_8097A6:
    RTS                                  ;8097A6;

CODE_8097A7:
    LDA.B $D7                            ;8097A7;
    DEC A                                ;8097A9;
    STA.B $D7                            ;8097AA;
    CMP.B #$E0                           ;8097AC;
    BNE CODE_8097CC                      ;8097AE;
    LDX.B #$0A                           ;8097B0;
    STX.B $D3                            ;8097B2;
    REP #$10                             ;8097B4;
    LDX.W #$0200                         ;8097B6;
    STX.B $D9                            ;8097B9;
    LDX.W #$FE00                         ;8097BB;
    STX.B $DB                            ;8097BE;
    LDX.W #$00C0                         ;8097C0;
    STX.B $DD                            ;8097C3;
    LDX.W #$FF40                         ;8097C5;
    STX.B $DF                            ;8097C8;
    SEP #$10                             ;8097CA;

CODE_8097CC:
    STA.W $00CB                          ;8097CC;
    STA.W $00CC                          ;8097CF;
    STA.W $00CD                          ;8097D2;
    RTS                                  ;8097D5;

CODE_8097D6:
    JSR.W CODE_809F8C                    ;8097D6;
    REP #$20                             ;8097D9;
    LDA.W #$0400                         ;8097DB;
    CMP.B $D9                            ;8097DE;
    BPL CODE_8097E4                      ;8097E0;
    STA.B $D9                            ;8097E2;

CODE_8097E4:
    LDA.W #$FC00                         ;8097E4;
    CMP.B $DB                            ;8097E7;
    BMI CODE_8097ED                      ;8097E9;
    STA.B $DB                            ;8097EB;

CODE_8097ED:
    LDA.W $1E50                          ;8097ED;
    CMP.W #$00E0                         ;8097F0;
    BCC CODE_809803                      ;8097F3;
    LDA.W #$FFD8                         ;8097F5;
    STA.B $DD                            ;8097F8;
    LDA.W #$0028                         ;8097FA;
    STA.B $DF                            ;8097FD;
    LDX.B #$0C                           ;8097FF;
    STX.B $D3                            ;809801;

CODE_809803:
    SEP #$20                             ;809803;
    JMP.W CODE_809F7E                    ;809805;

CODE_809808:
    JSR.W CODE_809F8C                    ;809808;
    LDA.B $DA                            ;80980B;
    BPL CODE_809825                      ;80980D;
    LDA.B #$0E                           ;80980F;
    STA.B $D3                            ;809811;
    REP #$20                             ;809813;
    LDA.W #$FC00                         ;809815;
    STA.B $D9                            ;809818;
    LDA.W #$0400                         ;80981A;
    STA.B $DB                            ;80981D;
    STZ.B $DD                            ;80981F;
    STZ.B $DF                            ;809821;
    SEP #$20                             ;809823;

CODE_809825:
    JMP.W CODE_809F7E                    ;809825;

CODE_809828:
    JSR.W CODE_809F8C                    ;809828;
    REP #$20                             ;80982B;
    LDA.W #$0100                         ;80982D;
    CMP.W $1E50                          ;809830;
    BCC CODE_809894                      ;809833;
    STA.W $1E50                          ;809835;
    STA.W $1E90                          ;809838;
    SEP #$20                             ;80983B;
    LDA.B #$20                           ;80983D;
    JSR.W CODE_80888B                    ;80983F;
    LDA.W $1F7A                          ;809842;
    CLC                                  ;809845;
    ADC.B #$37                           ;809846;
    JSR.W CODE_8089E1                    ;809848;
    LDA.B #$10                           ;80984B;
    STA.B $D3                            ;80984D;
    INC.W $1928                          ;80984F;
    INC.W $19C8                          ;809852;
    STZ.W $1929                          ;809855;
    LDA.B #$02                           ;809858;
    STA.W $192A                          ;80985A;
    LDA.B #$10                           ;80985D;
    STA.W $1932                          ;80985F;
    LDA.B #$33                           ;809862;
    STA.W $19D2                          ;809864;
    LDX.W $1F7A                          ;809867;
    LDA.W DATA8_8688D6,X                 ;80986A;
    INC A                                ;80986D;
    STA.W $1933                          ;80986E;
    LDA.W DATA8_8688DF,X                 ;809871;
    STA.B $D7                            ;809874;
    LDA.B #$13                           ;809876;
    STA.W $19D3                          ;809878;
    STA.W $0BCF                          ;80987B;
    REP #$20                             ;80987E;
    LDA.W #$0080                         ;809880;
    STA.W $192D                          ;809883;
    STA.W $19CD                          ;809886;
    LDA.W #$0170                         ;809889;
    STA.W $1930                          ;80988C;
    STA.W $19D0                          ;80988F;
    SEP #$20                             ;809892;

CODE_809894:
    SEP #$20                             ;809894;
    JMP.W CODE_809F7E                    ;809896;

CODE_809899:
    DEC.B $D7                            ;809899;
    BNE CODE_8098EC                      ;80989B;
    LDA.B #$21                           ;80989D;
    STA.B $D7                            ;80989F;
    LDA.B #$12                           ;8098A1;
    STA.B $D3                            ;8098A3;
    STZ.W $1948                          ;8098A5;
    STZ.W $1968                          ;8098A8;
    STZ.W $1988                          ;8098AB;
    STZ.W $19A8                          ;8098AE;
    REP #$20                             ;8098B1;
    STZ.W $1949                          ;8098B3;
    STZ.W $1969                          ;8098B6;
    STZ.W $1989                          ;8098B9;
    STZ.W $19A9                          ;8098BC;
    SEP #$20                             ;8098BF;
    LDA.B #$1D                           ;8098C1;
    STA.W $1952                          ;8098C3;
    STA.W $1972                          ;8098C6;
    STA.W $1992                          ;8098C9;
    STA.W $19B2                          ;8098CC;
    STZ.W $1959                          ;8098CF;
    STZ.W $1979                          ;8098D2;
    STZ.W $1999                          ;8098D5;
    STZ.W $19B9                          ;8098D8;
    STZ.W $1953                          ;8098DB;
    LDA.B #$01                           ;8098DE;
    STA.W $1973                          ;8098E0;
    INC A                                ;8098E3;
    STA.W $1993                          ;8098E4;
    INC A                                ;8098E7;
    STA.W $19B3                          ;8098E8;
    RTS                                  ;8098EB;

CODE_8098EC:
    JSR.W CODE_809F7E                    ;8098EC;
    JMP.W CODE_80D585                    ;8098EF;

CODE_8098F2:
    DEC.B $D7                            ;8098F2;
    BNE CODE_8098FF                      ;8098F4;
    LDA.B #$14                           ;8098F6;
    STA.B $D3                            ;8098F8;
    LDA.B #$78                           ;8098FA;
    STA.B $D7                            ;8098FC;
    RTS                                  ;8098FE;

CODE_8098FF:
    JSR.W CODE_809F7E                    ;8098FF;
    JMP.W CODE_80D585                    ;809902;

CODE_809905:
    LDA.W $00A7                          ;809905;
    ORA.W $00A8                          ;809908;
    AND.B #$F0                           ;80990B;
    BNE CODE_809913                      ;80990D;
    DEC.B $D7                            ;80990F;
    BNE CODE_80991A                      ;809911;

CODE_809913:
    LDA.B #$16                           ;809913;
    STA.B $D3                            ;809915;
    JSR.W CODE_808995                    ;809917;

CODE_80991A:
    RTS                                  ;80991A;

CODE_80991B:
    LDA.B #$09                           ;80991B;
    STA.W $2105                          ;80991D;
    LDA.B #$01                           ;809920;
    STA.L $7EFFC6                        ;809922;
    LDX.B #$00                           ;809926;
    JSR.W CODE_808B90                    ;809928;
    LDX.B #$01                           ;80992B;
    JSR.W CODE_808B90                    ;80992D;
    JSR.W CODE_80891B                    ;809930;
    JSR.W CODE_80DB55                    ;809933;
    JSR.W CODE_808BCB                    ;809936;
    JSR.W CODE_808A45                    ;809939;
    LDY.B #$12                           ;80993C;
    JSL.L CODE_828011                    ;80993E;
    JSR.W CODE_808100                    ;809942;
    LDX.B #$01                           ;809945;
    JSR.W CODE_808B90                    ;809947;
    LDY.B #$20                           ;80994A;
    JSR.W CODE_80B301                    ;80994C;
    JSR.W CODE_808100                    ;80994F;
    LDA.W $1F7A                          ;809952;
    ASL A                                ;809955;
    CLC                                  ;809956;
    ADC.B #$04                           ;809957;
    TAY                                  ;809959;
    JSR.W CODE_80B301                    ;80995A;
    STZ.W $1F81                          ;80995D;
    LDA.W $1F7F                          ;809960;
    BEQ CODE_80996A                      ;809963;
    LDA.B #$03                           ;809965;
    STA.W $1F81                          ;809967;

CODE_80996A:
    JSR.W CODE_809F0F                    ;80996A;
    LDA.B #$04                           ;80996D;
    STA.B $D2                            ;80996F;
    STZ.B $D3                            ;809971;
    STZ.B $D4                            ;809973;
    RTS                                  ;809975;

CODE_809976:
    LDX.B $D3                            ;809976;
    JMP.W (PTR16_80997B,X)               ;809978;

PTR16_80997B:
    dw CODE_809989                       ;80997B;
    dw CODE_809A30                       ;80997D;
    dw CODE_809A6A                       ;80997F;
    dw CODE_809B39                       ;809981;
    dw CODE_809B86                       ;809983;
    dw CODE_809BA3                       ;809985;
    dw CODE_809D4C                       ;809987;

CODE_809989:
    LDX.B $D4                            ;809989;
    BNE CODE_8099D7                      ;80998B;
    INC.B $D4                            ;80998D;
    LDX.B #$00                           ;80998F;
    JSR.W CODE_808B90                    ;809991;
    LDX.B #$01                           ;809994;
    JSR.W CODE_808B90                    ;809996;
    LDY.B #$20                           ;809999;
    JSR.W CODE_80B301                    ;80999B;
    JSR.W CODE_808A45                    ;80999E;
    JSR.W CODE_808100                    ;8099A1;
    LDA.B #$00                           ;8099A4;
    STA.L $7F8400                        ;8099A6;
    LDY.B #$2A                           ;8099AA;
    JSR.W CODE_80B301                    ;8099AC;
    LDA.W $1F82                          ;8099AF;
    BNE CODE_8099B7                      ;8099B2;
    JSR.W CODE_80DB70                    ;8099B4;

CODE_8099B7:
    JSR.W CODE_809DB4                    ;8099B7;
    LDA.B #$01                           ;8099BA;
    STA.W $1F82                          ;8099BC;
    REP #$20                             ;8099BF;
    LDA.W $1E50                          ;8099C1;
    STA.B $D7                            ;8099C4;
    SEC                                  ;8099C6;
    SBC.W #$0100                         ;8099C7;
    STA.W $1E50                          ;8099CA;
    SEC                                  ;8099CD;
    SBC.W #$0020                         ;8099CE;
    STA.W $1E6C                          ;8099D1;
    SEP #$20                             ;8099D4;
    RTS                                  ;8099D6;

CODE_8099D7:
    REP #$21                             ;8099D7;
    LDA.W $1E50                          ;8099D9;
    ADC.W #$0020                         ;8099DC;
    STA.W $1E50                          ;8099DF;
    CMP.B $D7                            ;8099E2;
    BEQ CODE_8099E8                      ;8099E4;
    BPL CODE_8099ED                      ;8099E6;

CODE_8099E8:
    SEP #$20                             ;8099E8;
    JMP.W CODE_80DC4C                    ;8099EA;

CODE_8099ED:
    LDA.B $D7                            ;8099ED;
    STA.W $1E50                          ;8099EF;
    STA.W $1E6C                          ;8099F2;
    SEP #$20                             ;8099F5;
    PHD                                  ;8099F7;
    PEA.W $0BA8                          ;8099F8;
    PLD                                  ;8099FB;
    JSL.L CODE_80E689                    ;8099FC;
    PLD                                  ;809A00;
    LDA.B #$02                           ;809A01;
    STA.B $D3                            ;809A03;
    STZ.B $D4                            ;809A05;
    LDX.W $1F7A                          ;809A07;
    LDA.W DATA8_8688B0,X                 ;809A0A;
    LDX.W $1F7F                          ;809A0D;
    BEQ CODE_809A2D                      ;809A10;
    REP #$10                             ;809A12;
    LDY.W #$01F4                         ;809A14;
    JSL.L CODE_828011                    ;809A17;
    SEP #$10                             ;809A1B;
    LDA.B #$04                           ;809A1D;
    STA.W $1F11                          ;809A1F;
    STA.W $1F12                          ;809A22;
    LDA.B #$2D                           ;809A25;
    STA.W $1F31                          ;809A27;
    STA.W $1F3B                          ;809A2A;

CODE_809A2D:
    JMP.W CODE_8087B0                    ;809A2D;

CODE_809A30:
    LDX.B $D4                            ;809A30;
    BNE CODE_809A51                      ;809A32;
    INC.B $D4                            ;809A34;
    LDA.B #$04                           ;809A36;
    STA.W $1F12                          ;809A38;
    JSR.W CODE_80D585                    ;809A3B;
    INC.W $1CE8                          ;809A3E;
    LDA.B #$0A                           ;809A41;
    STA.W $1CF2                          ;809A43;
    LDA.W $1F7F                          ;809A46;
    BEQ CODE_809A4E                      ;809A49;
    STZ.W $1CE8                          ;809A4B;

CODE_809A4E:
    JMP.W CODE_8089BD                    ;809A4E;

CODE_809A51:
    PHP                                  ;809A51;
    PHD                                  ;809A52;
    JSR.W CODE_80D35B                    ;809A53;
    PLD                                  ;809A56;
    PLP                                  ;809A57;
    JSR.W CODE_80D585                    ;809A58;
    LDA.W $1CE8                          ;809A5B;
    BNE CODE_809A69                      ;809A5E;
    LDA.B #$04                           ;809A60;
    STA.B $D3                            ;809A62;
    STZ.B $D4                            ;809A64;
    INC.W $1F26                          ;809A66;

CODE_809A69:
    RTS                                  ;809A69;

CODE_809A6A:
    INC.W $0B9C                          ;809A6A;
    LDA.W $1F7F                          ;809A6D;
    BNE CODE_809A75                      ;809A70;
    JSR.W CODE_80E559                    ;809A72;

CODE_809A75:
    LDA.W $1F9F                          ;809A75;
    BPL CODE_809A91                      ;809A78;
    LDA.W $0B9C                          ;809A7A;
    AND.B #$80                           ;809A7D;
    BEQ CODE_809A91                      ;809A7F;
    JSL.L CODE_849086                    ;809A81;
    TSB.W $0BDE                          ;809A85;
    TSB.W $0BDF                          ;809A88;
    TSB.W $0BE2                          ;809A8B;
    TSB.W $0BE3                          ;809A8E;

CODE_809A91:
    LDA.W $1F24                          ;809A91;
    BNE CODE_809B05                      ;809A94;
    JSL.L CODE_849086                    ;809A96;
    JSR.W CODE_80D203                    ;809A9A;
    JSR.W CODE_80DC4C                    ;809A9D;
    JSR.W CODE_809E7E                    ;809AA0;
    JSR.W CODE_80D585                    ;809AA3;
    LDA.W $1F30                          ;809AA6;
    CMP.B #$80                           ;809AA9;
    BNE CODE_809AB4                      ;809AAB;
    STZ.W $1F30                          ;809AAD;
    LDA.B #$0F                           ;809AB0;
    STA.B $B3                            ;809AB2;

CODE_809AB4:
    LDA.W $1F30                          ;809AB4;
    BEQ CODE_809AC2                      ;809AB7;
    LDA.B #$80                           ;809AB9;
    STA.W $1F30                          ;809ABB;
    LDA.B #$0E                           ;809ABE;
    STA.B $B3                            ;809AC0;

CODE_809AC2:
    LDA.W $0BCF                          ;809AC2;
    BNE CODE_809AE2                      ;809AC5;
    LDA.B #$06                           ;809AC7;
    STA.B $D3                            ;809AC9;
    REP #$20                             ;809ACB;
    STZ.W $0BDE                          ;809ACD;
    STZ.W $0BE0                          ;809AD0;
    STZ.W $0BE2                          ;809AD3;
    LDA.L $70000D                        ;809AD6;
    INC A                                ;809ADA;
    STA.L $70000D                        ;809ADB;
    SEP #$20                             ;809ADF;
    RTS                                  ;809AE1;

CODE_809AE2:
    LDA.W $1F7F                          ;809AE2;
    BPL CODE_809AEE                      ;809AE5;
    LDA.B #$0C                           ;809AE7;
    STA.B $D3                            ;809AE9;
    STZ.B $D4                            ;809AEB;
    RTS                                  ;809AED;

CODE_809AEE:
    LDA.W $1F23                          ;809AEE;
    BEQ CODE_809B04                      ;809AF1;
    LDA.B #$08                           ;809AF3;
    STA.B $D3                            ;809AF5;
    REP #$20                             ;809AF7;
    LDA.L $70000D                        ;809AF9;
    INC A                                ;809AFD;
    STA.L $70000D                        ;809AFE;
    SEP #$20                             ;809B02;

CODE_809B04:
    RTS                                  ;809B04;

CODE_809B05:
    BPL CODE_809B36                      ;809B05;
    LSR A                                ;809B07;
    BCC CODE_809B14                      ;809B08;
    LDA.B #$0A                           ;809B0A;
    STA.B $D3                            ;809B0C;
    STZ.B $D4                            ;809B0E;
    STA.W $1FA0                          ;809B10;
    RTS                                  ;809B13;

CODE_809B14:
    JSR.W CODE_809EE2                    ;809B14;
    BIT.W $1F24                          ;809B17;
    BVC CODE_809B24                      ;809B1A;
    LDA.B #$01                           ;809B1C;
    STA.W $0BB6                          ;809B1E;
    JSR.W CODE_809F25                    ;809B21;

CODE_809B24:
    JSR.W CODE_80D585                    ;809B24;
    STZ.W $1F24                          ;809B27;
    LDA.B $D7                            ;809B2A;
    STA.W $0BA1                          ;809B2C;
    LDX.B #$01                           ;809B2F;
    LDY.B #$02                           ;809B31;
    JMP.W CODE_808979                    ;809B33;

CODE_809B36:
    JMP.W CODE_80C43A                    ;809B36;

CODE_809B39:
    INC.W $0B9C                          ;809B39;
    JSR.W CODE_80D203                    ;809B3C;
    JSR.W CODE_80DC4C                    ;809B3F;
    JSR.W CODE_80D585                    ;809B42;
    LDA.W $1F0B                          ;809B45;
    BEQ CODE_809B85                      ;809B48;
    LDY.B #$04                           ;809B4A;
    JSR.W CODE_808873                    ;809B4C;
    LDA.B #$F1                           ;809B4F;
    JSR.W CODE_80888B                    ;809B51;
    LDA.W $1F80                          ;809B54;
    BEQ CODE_809B7D                      ;809B57;
    DEC.W $1F80                          ;809B59;
    LDA.B #$04                           ;809B5C;
    STA.B $D2                            ;809B5E;
    STZ.B $D3                            ;809B60;
    STZ.B $D4                            ;809B62;
    JSR.W CODE_808995                    ;809B64;
    LDX.B #$00                           ;809B67;
    JSR.W CODE_808B90                    ;809B69;
    LDX.B #$01                           ;809B6C;
    JSR.W CODE_808B90                    ;809B6E;
    JSR.W CODE_80891B                    ;809B71;
    JSR.W CODE_80DB55                    ;809B74;
    JSR.W CODE_808BCB                    ;809B77;
    JMP.W CODE_808A45                    ;809B7A;

CODE_809B7D:
    LDA.B #$0A                           ;809B7D;
    STA.B $D2                            ;809B7F;
    STZ.B $D3                            ;809B81;
    STZ.B $D4                            ;809B83;

CODE_809B85:
    RTS                                  ;809B85;

CODE_809B86:
    JSR.W CODE_80D203                    ;809B86;
    JSR.W CODE_80D585                    ;809B89;
    LDA.W $1F23                          ;809B8C;
    BPL CODE_809BA2                      ;809B8F;
    LDA.W $213F                          ;809B91;
    BIT.B #$10                           ;809B94;
    BEQ CODE_809B9C                      ;809B96;
    JML.L CODE_808016                    ;809B98;

CODE_809B9C:
    LDA.B #$0A                           ;809B9C;
    STA.B $D3                            ;809B9E;
    STZ.B $D4                            ;809BA0;

CODE_809BA2:
    RTS                                  ;809BA2;

CODE_809BA3:
    LDX.B $D4                            ;809BA3;
    JMP.W (PTR16_809BA8,X)               ;809BA5;

PTR16_809BA8:
    dw CODE_809BB2                       ;809BA8;
    dw CODE_809BC3                       ;809BAA;
    dw CODE_809CD8                       ;809BAC;
    dw CODE_809D16                       ;809BAE;
    dw CODE_809CCD                       ;809BB0;

CODE_809BB2:
    STZ.W $1F82                          ;809BB2;
    LDA.B #$02                           ;809BB5;
    STA.B $D4                            ;809BB7;
    LDY.B #$02                           ;809BB9;
    JSR.W CODE_808873                    ;809BBB;
    LDA.B #$3C                           ;809BBE;
    STA.B $D7                            ;809BC0;

CODE_809BC2:
    RTS                                  ;809BC2;

CODE_809BC3:
    DEC.B $D7                            ;809BC3;
    BNE CODE_809BC2                      ;809BC5;
    LDA.B #$04                           ;809BC7;
    STA.B $D4                            ;809BC9;
    LDA.B #$3C                           ;809BCB;
    STA.B $D7                            ;809BCD;
    JSR.W CODE_808995                    ;809BCF;
    STZ.W $0BA1                          ;809BD2;
    LDX.B #$00                           ;809BD5;
    JSR.W CODE_808B90                    ;809BD7;
    LDX.B #$01                           ;809BDA;
    JSR.W CODE_808B90                    ;809BDC;
    JSR.W CODE_80891B                    ;809BDF;
    JSR.W CODE_80DB55                    ;809BE2;
    JSR.W CODE_808BCB                    ;809BE5;
    JSR.W CODE_808A45                    ;809BE8;
    LDA.W $1FA0                          ;809BEB;
    BNE CODE_809BF3                      ;809BEE;
    JSR.W CODE_80ABB0                    ;809BF0;

CODE_809BF3:
    JSR.W CODE_80891B                    ;809BF3;
    JSR.W CODE_80DB55                    ;809BF6;
    JSR.W CODE_808BCB                    ;809BF9;
    JSR.W CODE_808A45                    ;809BFC;
    LDA.W $1F7B                          ;809BFF;
    CMP.B #$04                           ;809C02;
    BEQ CODE_809C09                      ;809C04;
    JSR.W CODE_80EFD4                    ;809C06;

CODE_809C09:
    JSR.W CODE_80A001                    ;809C09;
    BEQ CODE_809C13                      ;809C0C;

CODE_809C0E:
    STZ.B $D2                            ;809C0E;
    STZ.B $D3                            ;809C10;
    RTS                                  ;809C12;

CODE_809C13:
    LDA.W $1F7B                          ;809C13;
    CMP.B #$04                           ;809C16;
    BNE CODE_809C1D                      ;809C18;
    JMP.W CODE_809C8F                    ;809C1A;

CODE_809C1D:
    BIT.W $1F7C                          ;809C1D;
    BVS CODE_809C0E                      ;809C20;
    LDA.B #$09                           ;809C22;
    STA.W $1F7A                          ;809C24;
    LDA.B #$40                           ;809C27;
    TSB.W $1F7C                          ;809C29;
    STZ.W $1F08                          ;809C2C;
    LDX.B #$00                           ;809C2F;
    JSR.W CODE_808B90                    ;809C31;
    LDX.B #$01                           ;809C34;
    JSR.W CODE_808B90                    ;809C36;
    LDY.B #$12                           ;809C39;
    JSL.L CODE_828011                    ;809C3B;
    LDY.B #$20                           ;809C3F;
    JSR.W CODE_80B301                    ;809C41;
    JSR.W CODE_80891B                    ;809C44;
    JSR.W CODE_80DB55                    ;809C47;
    JSR.W CODE_808BCB                    ;809C4A;
    JSR.W CODE_808A45                    ;809C4D;
    JSR.W CODE_808100                    ;809C50;
    LDA.W $1F7A                          ;809C53;
    ASL A                                ;809C56;
    CLC                                  ;809C57;
    ADC.B #$04                           ;809C58;
    TAY                                  ;809C5A;
    JSR.W CODE_80B301                    ;809C5B;
    LDA.B #$03                           ;809C5E;
    STA.W $1F81                          ;809C60;
    JSR.W CODE_808100                    ;809C63;
    JSR.W CODE_80DB70                    ;809C66;
    JSR.W CODE_809DB4                    ;809C69;
    LDA.B #$04                           ;809C6C;
    STA.W $1F12                          ;809C6E;
    STA.W $1F11                          ;809C71;
    JSR.W CODE_808100                    ;809C74;
    REP #$20                             ;809C77;
    LDA.W $1E50                          ;809C79;
    STA.B $D7                            ;809C7C;
    SEC                                  ;809C7E;
    SBC.W #$0100                         ;809C7F;
    STA.W $1E50                          ;809C82;
    SEC                                  ;809C85;
    SBC.W #$0020                         ;809C86;
    STA.W $1E6C                          ;809C89;
    SEP #$20                             ;809C8C;
    RTS                                  ;809C8E;

CODE_809C8F:
    JSR.W CODE_80A03E                    ;809C8F;
    LDA.B #$01                           ;809C92;
    STA.W $1F7F                          ;809C94;
    STZ.W $1F7A                          ;809C97;
    LDA.B #$02                           ;809C9A;
    STA.B $D2                            ;809C9C;
    LDA.B #$16                           ;809C9E;
    STA.B $D3                            ;809CA0;
    RTS                                  ;809CA2;
    JSR.W CODE_80891B                    ;809CA3;
    JSR.W CODE_80DB55                    ;809CA6;
    JSR.W CODE_808BCB                    ;809CA9;
    JSR.W CODE_808A45                    ;809CAC;
    LDA.B #$08                           ;809CAF;
    STA.B $D4                            ;809CB1;
    LDY.B #$12                           ;809CB3;
    JSL.L CODE_828011                    ;809CB5;
    LDY.B #$20                           ;809CB9;
    JSR.W CODE_80B301                    ;809CBB;
    JSR.W CODE_808100                    ;809CBE;
    LDA.B #$3C                           ;809CC1;
    STA.B $D7                            ;809CC3;
    LDA.B #$03                           ;809CC5;
    JSR.W CODE_8089E1                    ;809CC7;
    JMP.W CODE_808973                    ;809CCA;

CODE_809CCD:
    DEC.B $D7                            ;809CCD;
    BNE CODE_809CD7                      ;809CCF;
    JSR.W CODE_808995                    ;809CD1;
    JMP.W CODE_808C4E                    ;809CD4;

CODE_809CD7:
    RTS                                  ;809CD7;

CODE_809CD8:
    REP #$21                             ;809CD8;
    LDA.W $1E50                          ;809CDA;
    ADC.W #$0020                         ;809CDD;
    STA.W $1E50                          ;809CE0;
    CMP.B $D7                            ;809CE3;
    BEQ CODE_809CE9                      ;809CE5;
    BPL CODE_809CEE                      ;809CE7;

CODE_809CE9:
    SEP #$20                             ;809CE9;
    JMP.W CODE_80DC4C                    ;809CEB;

CODE_809CEE:
    LDA.B $D7                            ;809CEE;
    STA.W $1E50                          ;809CF0;
    STA.W $1E6C                          ;809CF3;
    SEP #$20                             ;809CF6;
    PHD                                  ;809CF8;
    PEA.W $0BA8                          ;809CF9;
    PLD                                  ;809CFC;
    JSL.L CODE_80E689                    ;809CFD;
    PLD                                  ;809D01;
    SEP #$20                             ;809D02;
    LDA.B #$06                           ;809D04;
    STA.B $D4                            ;809D06;
    STA.W $1F31                          ;809D08;
    STA.W $1F3B                          ;809D0B;
    LDA.B #$25                           ;809D0E;
    JSR.W CODE_8087B0                    ;809D10;
    JMP.W CODE_808973                    ;809D13;

CODE_809D16:
    INC.W $0B9C                          ;809D16;
    LDA.B #$00                           ;809D19;
    STA.W $1E68                          ;809D1B;
    LDA.B #$05                           ;809D1E;
    STA.W $1E69                          ;809D20;
    JSR.W CODE_80E559                    ;809D23;
    JSR.W CODE_80D203                    ;809D26;
    JSR.W CODE_80D585                    ;809D29;
    LDA.W $1F23                          ;809D2C;
    BPL CODE_809D4B                      ;809D2F;
    LDY.B #$02                           ;809D31;
    JSR.W CODE_808873                    ;809D33;
    JSR.W CODE_808995                    ;809D36;
    STZ.W $0BA1                          ;809D39;
    LDA.B #$08                           ;809D3C;
    STA.W $1F7A                          ;809D3E;
    STZ.W $1F31                          ;809D41;
    STZ.W $1F3B                          ;809D44;
    STZ.B $D2                            ;809D47;
    STZ.B $D3                            ;809D49;

CODE_809D4B:
    RTS                                  ;809D4B;

CODE_809D4C:
    JSR.W CODE_808995                    ;809D4C;
    LDX.B #$00                           ;809D4F;
    JSR.W CODE_808B90                    ;809D51;
    LDX.B #$01                           ;809D54;
    JSR.W CODE_808B90                    ;809D56;
    JSR.W CODE_80891B                    ;809D59;
    JSR.W CODE_80DB55                    ;809D5C;
    JSR.W CODE_808BCB                    ;809D5F;
    JSR.W CODE_808A45                    ;809D62;
    JMP.W CODE_80A520                    ;809D65;

CODE_809D68:
    RTS                                  ;809D68;

CODE_809D69:
    RTS                                  ;809D69;

CODE_809D6A:
    JSR.W CODE_808995                    ;809D6A;
    STZ.W $0BA1                          ;809D6D;
    STZ.W $1F82                          ;809D70;
    LDA.B #$17                           ;809D73;
    STA.W $00C0                          ;809D75;
    JSR.W CODE_80891B                    ;809D78;
    JSR.W CODE_808BCB                    ;809D7B;
    LDX.B #$10                           ;809D7E;
    LDY.B #$00                           ;809D80;
    JSL.L CODE_828000                    ;809D82;
    LDY.B #$12                           ;809D86;
    JSL.L CODE_828011                    ;809D88;
    JSR.W CODE_808100                    ;809D8C;
    LDX.B #$00                           ;809D8F;
    JSR.W CODE_808B90                    ;809D91;
    LDX.B #$01                           ;809D94;
    JSR.W CODE_808B90                    ;809D96;
    JSR.W CODE_80891B                    ;809D99;
    JSR.W CODE_80DB55                    ;809D9C;
    JSR.W CODE_808BCB                    ;809D9F;
    JSR.W CODE_808A45                    ;809DA2;
    JSR.W CODE_80EFD4                    ;809DA5;
    LDA.B #$02                           ;809DA8;
    STA.W $1F80                          ;809DAA;
    STZ.B $D2                            ;809DAD;
    STZ.B $D3                            ;809DAF;
    STZ.B $D4                            ;809DB1;
    RTS                                  ;809DB3;

CODE_809DB4:
    REP #$10                             ;809DB4;
    STZ.W $0BA1                          ;809DB6;
    JSR.W CODE_80E6A4                    ;809DB9;
    LDA.W DATA8_86A780,X                 ;809DBC;
    STA.W $1F08                          ;809DBF;
    LDA.W DATA8_86A781,X                 ;809DC2;
    STA.W $1F09                          ;809DC5;
    LDA.W DATA8_86A782,X                 ;809DC8;
    STA.W $1F0A                          ;809DCB;
    SEP #$10                             ;809DCE;
    STZ.W $1F0B                          ;809DD0;
    LDA.B #$04                           ;809DD3;
    STA.W $1F12                          ;809DD5;
    STZ.W $1F11                          ;809DD8;
    LDA.B #$A0                           ;809DDB;
    STA.W $0BCF                          ;809DDD;
    STZ.W $1F0E                          ;809DE0;
    STZ.W $1F0F                          ;809DE3;
    JSR.W CODE_80B12D                    ;809DE6;
    LDY.B #$12                           ;809DE9;
    JSL.L CODE_828011                    ;809DEB;
    LDA.W $1F7A                          ;809DEF;
    ASL A                                ;809DF2;
    CLC                                  ;809DF3;
    ADC.B #$60                           ;809DF4;
    TAY                                  ;809DF6;
    JSL.L CODE_828011                    ;809DF7;
    LDA.W $1F82                          ;809DFB;
    BEQ CODE_809E00                      ;809DFE;

CODE_809E00:
    JSR.W CODE_80BAD7                    ;809E00;
    LDX.B #$00                           ;809E03;
    JSR.W CODE_808B90                    ;809E05;
    JSR.W CODE_808100                    ;809E08;
    JSR.W CODE_80E60D                    ;809E0B;
    JSR.W CODE_80B584                    ;809E0E;
    JSR.W CODE_80B58D                    ;809E11;
    JSR.W CODE_808100                    ;809E14;
    LDA.W $1F7A                          ;809E17;
    CMP.B #$05                           ;809E1A;
    BNE CODE_809E36                      ;809E1C;
    LDA.W $1F08                          ;809E1E;
    BEQ CODE_809E36                      ;809E21;
    REP #$21                             ;809E23;
    LDA.W $1E8D                          ;809E25;
    ADC.W #$0100                         ;809E28;
    STA.W $1E8D                          ;809E2B;
    SEP #$20                             ;809E2E;
    JSR.W CODE_80B58D                    ;809E30;
    JSR.W CODE_808100                    ;809E33;

CODE_809E36:
    LDX.B #$10                           ;809E36;
    LDY.B #$00                           ;809E38;
    JSL.L CODE_828000                    ;809E3A;
    LDX.B #$30                           ;809E3E;
    LDY.B #$40                           ;809E40;
    JSL.L CODE_828000                    ;809E42;
    LDY.B #$00                           ;809E46;
    JSR.W CODE_80B301                    ;809E48;
    LDX.B #$20                           ;809E4B;
    LDY.B #$1C                           ;809E4D;
    JSL.L CODE_828000                    ;809E4F;
    LDY.B #$A0                           ;809E53;
    JSL.L CODE_828011                    ;809E55;
    JSR.W CODE_808100                    ;809E59;
    JSR.W CODE_80B08B                    ;809E5C;

CODE_809E5F:
    JSR.W CODE_808100                    ;809E5F;
    LDA.W $0040                          ;809E62;
    BNE CODE_809E5F                      ;809E65;
    JSR.W CODE_80B430                    ;809E67;

CODE_809E6A:
    JSR.W CODE_808100                    ;809E6A;
    LDA.W $0050                          ;809E6D;
    BNE CODE_809E6A                      ;809E70;
    JSR.W CODE_80B4FD                    ;809E72;

CODE_809E75:
    INC.W $1E48                          ;809E75;
    INC.W $1E88                          ;809E78;
    JMP.W CODE_80DB87                    ;809E7B;

CODE_809E7E:
    LDA.W $1F3B                          ;809E7E;
    BNE CODE_809EC2                      ;809E81;
    LDA.W $0BCF                          ;809E83;
    AND.B #$7F                           ;809E86;
    BEQ CODE_809EC2                      ;809E88;
    LDA.W $0BE3                          ;809E8A;
    AND.B #$10                           ;809E8D;
    BEQ CODE_809EC2                      ;809E8F;
    LDA.B #$F1                           ;809E91;
    JSR.W CODE_80888B                    ;809E93;
    LDA.B #$01                           ;809E96;
    STA.W $1F24                          ;809E98;
    JSR.W CODE_809EC3                    ;809E9B;
    JSR.W CODE_80D585                    ;809E9E;
    LDA.B #$F1                           ;809EA1;
    JSR.W CODE_80888B                    ;809EA3;
    LDX.B #$01                           ;809EA6;
    LDY.B #$02                           ;809EA8;
    JSR.W CODE_80899B                    ;809EAA;
    LDA.B #$42                           ;809EAD;
    JSR.W CODE_80814E                    ;809EAF;
    LDA.W $0BA1                          ;809EB2;
    STA.B $D7                            ;809EB5;
    STZ.W $0BA1                          ;809EB7;
    LDY.B #$80                           ;809EBA;
    JSR.W CODE_808867                    ;809EBC;
    JMP.W CODE_80C431                    ;809EBF;

CODE_809EC2:
    RTS                                  ;809EC2;

CODE_809EC3:
    PHB                                  ;809EC3;
    REP #$30                             ;809EC4;
    LDX.W #$00E3                         ;809EC6;
    LDY.W #$B400                         ;809EC9;
    LDA.W #$0009                         ;809ECC;
    MVN $7F,$00                          ;809ECF;
    LDX.W #$0920                         ;809ED2;
    LDY.W #$B40A                         ;809ED5;
    LDA.W #$017F                         ;809ED8;
    MVN $7F,$00                          ;809EDB;
    SEP #$30                             ;809EDE;
    PLB                                  ;809EE0;
    RTS                                  ;809EE1;

CODE_809EE2:
    PHB                                  ;809EE2;
    REP #$30                             ;809EE3;
    LDX.W #$B400                         ;809EE5;
    LDY.W #$00E3                         ;809EE8;
    LDA.W #$0009                         ;809EEB;
    MVN $00,$7F                          ;809EEE;
    LDX.W #$B40A                         ;809EF1;
    LDY.W #$0920                         ;809EF4;
    LDA.W #$017F                         ;809EF7;
    MVN $00,$7F                          ;809EFA;
    SEP #$30                             ;809EFD;
    PLB                                  ;809EFF;
    RTS                                  ;809F00;

CODE_809F01:
    REP #$20                             ;809F01;
    LDX.B #$10                           ;809F03;

CODE_809F05:
    STZ.W $1F87,X                        ;809F05;
    DEX                                  ;809F08;
    DEX                                  ;809F09;
    BPL CODE_809F05                      ;809F0A;
    SEP #$20                             ;809F0C;
    RTS                                  ;809F0E;

CODE_809F0F:
    REP #$20                             ;809F0F;
    LDX.B #$10                           ;809F11;

CODE_809F13:
    BIT.W $1F87,X                        ;809F13;
    BVC CODE_809F1E                      ;809F16;
    LDA.W #$DC00                         ;809F18;
    STA.W $1F87,X                        ;809F1B;

CODE_809F1E:
    DEX                                  ;809F1E;
    DEX                                  ;809F1F;
    BPL CODE_809F13                      ;809F20;
    SEP #$20                             ;809F22;
    RTS                                  ;809F24;

CODE_809F25:
    REP #$31                             ;809F25;
    LDA.W $1E4D                          ;809F27;
    ADC.W #$0180                         ;809F2A;
    STA.B $00                            ;809F2D;
    LDX.W #$003E                         ;809F2F;

CODE_809F32:
    LDA.W $0960,X                        ;809F32;
    CMP.W #$1228                         ;809F35;
    BCC CODE_809F41                      ;809F38;
    CMP.W #$1428                         ;809F3A;
    BCS CODE_809F41                      ;809F3D;
    BRA CODE_809F4B                      ;809F3F;

CODE_809F41:
    CMP.W #$0C98                         ;809F41;
    BCC CODE_809F51                      ;809F44;
    CMP.W #$0E18                         ;809F46;
    BCS CODE_809F51                      ;809F49;

CODE_809F4B:
    TAY                                  ;809F4B;
    LDA.B $00                            ;809F4C;
    STA.W $0005,Y                        ;809F4E;

CODE_809F51:
    DEX                                  ;809F51;
    DEX                                  ;809F52;
    BPL CODE_809F32                      ;809F53;
    LDX.W #$003E                         ;809F55;

CODE_809F58:
    LDA.W $09A0,X                        ;809F58;
    CMP.W #$1228                         ;809F5B;
    BCC CODE_809F67                      ;809F5E;
    CMP.W #$1428                         ;809F60;
    BCS CODE_809F67                      ;809F63;
    BRA CODE_809F71                      ;809F65;

CODE_809F67:
    CMP.W #$0C98                         ;809F67;
    BCC CODE_809F77                      ;809F6A;
    CMP.W #$0E18                         ;809F6C;
    BCS CODE_809F77                      ;809F6F;

CODE_809F71:
    TAY                                  ;809F71;
    LDA.B $00                            ;809F72;
    STA.W $0005,Y                        ;809F74;

CODE_809F77:
    DEX                                  ;809F77;
    DEX                                  ;809F78;
    BPL CODE_809F58                      ;809F79;
    SEP #$30                             ;809F7B;
    RTS                                  ;809F7D;

CODE_809F7E:
    PHP                                  ;809F7E;
    PHD                                  ;809F7F;
    JSR.W CODE_80D35B                    ;809F80;
    JSR.W CODE_80DDF1                    ;809F83;
    JSR.W CODE_80DEF1                    ;809F86;
    PLD                                  ;809F89;
    PLP                                  ;809F8A;
    RTS                                  ;809F8B;

CODE_809F8C:
    PHP                                  ;809F8C;
    REP #$21                             ;809F8D;
    LDA.B $D9                            ;809F8F;
    ADC.B $DD                            ;809F91;
    STA.B $D9                            ;809F93;
    LDA.W $1E4F                          ;809F95;
    CLC                                  ;809F98;
    ADC.B $D9                            ;809F99;
    STA.W $1E4F                          ;809F9B;
    SEP #$20                             ;809F9E;
    STZ.W $0000                          ;809FA0;
    LDA.B $DA                            ;809FA3;
    BPL CODE_809FAA                      ;809FA5;
    DEC.W $0000                          ;809FA7;

CODE_809FAA:
    LDA.W $1E51                          ;809FAA;
    ADC.W $0000                          ;809FAD;
    STA.W $1E51                          ;809FB0;
    REP #$20                             ;809FB3;
    LDA.B $DB                            ;809FB5;
    CLC                                  ;809FB7;
    ADC.B $DF                            ;809FB8;
    STA.B $DB                            ;809FBA;
    LDA.W $1E8F                          ;809FBC;
    CLC                                  ;809FBF;
    ADC.B $DB                            ;809FC0;
    STA.W $1E8F                          ;809FC2;
    SEP #$20                             ;809FC5;
    STZ.W $0000                          ;809FC7;
    LDA.B $DC                            ;809FCA;
    BPL CODE_809FD1                      ;809FCC;
    DEC.W $0000                          ;809FCE;

CODE_809FD1:
    LDA.W $1E91                          ;809FD1;
    ADC.W $0000                          ;809FD4;
    STA.W $1E91                          ;809FD7;
    PLP                                  ;809FDA;
    RTS                                  ;809FDB;
    LDX.B #$01                           ;809FDC;
    JSR.W CODE_808B90                    ;809FDE;
    REP #$30                             ;809FE1;
    LDA.B $0E                            ;809FE3;
    STA.W $0302                          ;809FE5;
    INC.W $00A1                          ;809FE8;
    LDX.W #$07FE                         ;809FEB;
    LDA.W #$2002                         ;809FEE;

CODE_809FF1:
    STA.L $7FD000,X                      ;809FF1;
    DEX                                  ;809FF5;
    DEX                                  ;809FF6;
    BPL CODE_809FF1                      ;809FF7;
    SEP #$30                             ;809FF9;
    LDY.B #$06                           ;809FFB;
    JSR.W CODE_808A87                    ;809FFD;
    RTS                                  ;80A000;

CODE_80A001:
    STZ.B $00                            ;80A001;
    LDX.B #$0E                           ;80A003;

CODE_80A005:
    ASL.B $00                            ;80A005;
    BIT.W $1F88,X                        ;80A007;
    BVC CODE_80A010                      ;80A00A;
    LDA.B #$01                           ;80A00C;
    TSB.B $00                            ;80A00E;

CODE_80A010:
    DEX                                  ;80A010;
    DEX                                  ;80A011;
    BPL CODE_80A005                      ;80A012;
    LDA.B $00                            ;80A014;
    CMP.B #$FF                           ;80A016;
    RTS                                  ;80A018;

CODE_80A019:
    REP #$20                             ;80A019;
    LDX.B #$1E                           ;80A01B;

CODE_80A01D:
    LDA.W $04A0,X                        ;80A01D;
    STA.W $04C0,X                        ;80A020;
    DEX                                  ;80A023;
    DEX                                  ;80A024;
    BPL CODE_80A01D                      ;80A025;
    SEP #$20                             ;80A027;
    RTS                                  ;80A029;

CODE_80A02A:
    REP #$20                             ;80A02A;
    LDX.B #$1E                           ;80A02C;

CODE_80A02E:
    LDA.W $04C0,X                        ;80A02E;
    STA.W $04A0,X                        ;80A031;
    DEX                                  ;80A034;
    DEX                                  ;80A035;
    BPL CODE_80A02E                      ;80A036;
    SEP #$20                             ;80A038;
    INC.W $00A1                          ;80A03A;
    RTS                                  ;80A03D;

CODE_80A03E:
    PHP                                  ;80A03E;
    PHD                                  ;80A03F;
    SEP #$30                             ;80A040;
    STZ.W $1E49                          ;80A042;

CODE_80A045:
    PEA.W $1E48                          ;80A045;
    PLD                                  ;80A048;
    LDX.B $01                            ;80A049;
    JSR.W (PTR16_80A08B,X)               ;80A04B;
    JSR.W CODE_80A1CA                    ;80A04E;
    JSR.W CODE_80A258                    ;80A051;
    JSR.W CODE_80A2CD                    ;80A054;
    JSR.W CODE_80A371                    ;80A057;
    JSR.W CODE_80A441                    ;80A05A;
    PEA.W $0000                          ;80A05D;
    PLD                                  ;80A060;
    JSR.W CODE_80D585                    ;80A061;
    LDA.W $1E48                          ;80A064;
    BEQ CODE_80A06E                      ;80A067;
    JSR.W CODE_808100                    ;80A069;
    BRA CODE_80A045                      ;80A06C;

CODE_80A06E:
    JSR.W CODE_808995                    ;80A06E;
    LDA.B #$80                           ;80A071;
    STA.W $00B3                          ;80A073;
    STA.W $2100                          ;80A076;
    JSR.W CODE_80DB55                    ;80A079;
    JSR.W CODE_808BCB                    ;80A07C;
    JSR.W CODE_808A45                    ;80A07F;
    JSR.W CODE_80891B                    ;80A082;
    STZ.W $00B3                          ;80A085;
    PLD                                  ;80A088;
    PLP                                  ;80A089;
    RTS                                  ;80A08A;

PTR16_80A08B:
    dw CODE_80A099                       ;80A08B;
    dw CODE_80A101                       ;80A08D;
    dw CODE_80A13A                       ;80A08F;
    dw CODE_80A165                       ;80A091;
    dw CODE_80A18D                       ;80A093;
    dw CODE_80A1A0                       ;80A095;
    dw CODE_80A1B7                       ;80A097;

CODE_80A099:
    JSR.W CODE_80DB55                    ;80A099;
    JSR.W CODE_808BCB                    ;80A09C;
    JSR.W CODE_80891B                    ;80A09F;
    INC.B $00                            ;80A0A2;
    LDA.B #$02                           ;80A0A4;
    STA.B $01                            ;80A0A6;
    LDA.B #$04                           ;80A0A8;
    STA.W $1F12                          ;80A0AA;
    STA.W $1F11                          ;80A0AD;
    PHD                                  ;80A0B0;
    PEA.W $0000                          ;80A0B1;
    PLD                                  ;80A0B4;
    LDY.B #$6A                           ;80A0B5;
    JSR.W CODE_80B301                    ;80A0B7;
    JSR.W CODE_808100                    ;80A0BA;
    LDY.B #$6C                           ;80A0BD;
    JSR.W CODE_80B301                    ;80A0BF;
    JSR.W CODE_808100                    ;80A0C2;
    LDY.B #$6E                           ;80A0C5;
    JSR.W CODE_80B301                    ;80A0C7;
    JSR.W CODE_808100                    ;80A0CA;
    LDY.B #$70                           ;80A0CD;
    JSR.W CODE_80B301                    ;80A0CF;
    JSR.W CODE_808100                    ;80A0D2;
    REP #$10                             ;80A0D5;
    LDY.W #$01F6                         ;80A0D7;
    JSL.L CODE_828011                    ;80A0DA;
    LDX.W #$0040                         ;80A0DE;
    LDY.W #$01F2                         ;80A0E1;
    JSL.L CODE_828000                    ;80A0E4;
    LDY.W #$0000                         ;80A0E8;
    JSL.L CODE_828011                    ;80A0EB;
    SEP #$10                             ;80A0EF;
    STZ.B $B3                            ;80A0F1;
    JSR.W CODE_8089BD                    ;80A0F3;
    PLD                                  ;80A0F6;
    REP #$20                             ;80A0F7;
    LDA.W #$02D0                         ;80A0F9;
    STA.B $10                            ;80A0FC;
    SEP #$20                             ;80A0FE;
    RTS                                  ;80A100;

CODE_80A101:
    REP #$30                             ;80A101;
    DEC.B $10                            ;80A103;
    BEQ CODE_80A119                      ;80A105;
    LDA.W $0B9B                          ;80A107;
    AND.W #$0002                         ;80A10A;
    CLC                                  ;80A10D;
    ADC.W #$01F6                         ;80A10E;
    TAY                                  ;80A111;
    JSL.L CODE_828011                    ;80A112;
    SEP #$30                             ;80A116;
    RTS                                  ;80A118;

CODE_80A119:
    LDY.W #$01F8                         ;80A119;
    JSL.L CODE_828011                    ;80A11C;
    SEP #$30                             ;80A120;
    LDA.B #$04                           ;80A122;
    STA.B $01                            ;80A124;
    STZ.W $00C9                          ;80A126;
    LDA.B #$32                           ;80A129;
    STA.W $00CA                          ;80A12B;
    STZ.B $12                            ;80A12E;
    JSR.W CODE_80A4DF                    ;80A130;
    LDA.B #$21                           ;80A133;
    JSL.L CODE_8088CD                    ;80A135;
    RTS                                  ;80A139;

CODE_80A13A:
    LDA.W $0B9B                          ;80A13A;
    AND.B #$03                           ;80A13D;
    BNE CODE_80A164                      ;80A13F;
    JSR.W CODE_80A50F                    ;80A141;
    INC.B $12                            ;80A144;
    LDA.B $12                            ;80A146;
    CMP.B #$14                           ;80A148;
    BCC CODE_80A164                      ;80A14A;
    LDA.B #$06                           ;80A14C;
    STA.B $01                            ;80A14E;
    LDX.B $13                            ;80A150;
    STZ.W $0AA1,X                        ;80A152;
    LDA.B #$1F                           ;80A155;
    STA.W $00CB                          ;80A157;
    STA.W $00CC                          ;80A15A;
    STA.W $00CD                          ;80A15D;
    LDA.B #$3C                           ;80A160;
    STA.B $10                            ;80A162;

CODE_80A164:
    RTS                                  ;80A164;

CODE_80A165:
    DEC.B $10                            ;80A165;
    BNE CODE_80A18C                      ;80A167;
    LDA.B #$02                           ;80A169;
    STA.B $10                            ;80A16B;
    LDA.W $00CB                          ;80A16D;
    DEC A                                ;80A170;
    STA.W $00CB                          ;80A171;
    STA.W $00CC                          ;80A174;
    STA.W $00CD                          ;80A177;
    CMP.B #$00                           ;80A17A;
    BNE CODE_80A18C                      ;80A17C;
    LDA.B #$08                           ;80A17E;
    STA.B $01                            ;80A180;
    STZ.W $00CA                          ;80A182;
    STZ.W $00C9                          ;80A185;
    LDA.B #$3C                           ;80A188;
    STA.B $10                            ;80A18A;

CODE_80A18C:
    RTS                                  ;80A18C;

CODE_80A18D:
    DEC.B $10                            ;80A18D;
    BNE CODE_80A19F                      ;80A18F;
    LDA.B #$2C                           ;80A191;
    JSL.L CODE_8087A2                    ;80A193;
    LDA.B #$3C                           ;80A197;
    STA.B $10                            ;80A199;
    LDA.B #$0A                           ;80A19B;
    STA.B $01                            ;80A19D;

CODE_80A19F:
    RTS                                  ;80A19F;

CODE_80A1A0:
    DEC.B $10                            ;80A1A0;
    BNE CODE_80A1B6                      ;80A1A2;
    LDA.B #$60                           ;80A1A4;
    JSL.L CODE_80E9EE                    ;80A1A6;
    LDA.B #$01                           ;80A1AA;
    STA.W $1F34                          ;80A1AC;
    STA.W $1F37                          ;80A1AF;
    LDA.B #$0C                           ;80A1B2;
    STA.B $01                            ;80A1B4;

CODE_80A1B6:
    RTS                                  ;80A1B6;

CODE_80A1B7:
    INC.W $0B9C                          ;80A1B7;
    LDA.W $0060                          ;80A1BA;
    BNE CODE_80A1C9                      ;80A1BD;
    STZ.B $00                            ;80A1BF;
    LDA.B #$F6                           ;80A1C1;
    LDY.B #$03                           ;80A1C3;
    JSL.L CODE_80887F                    ;80A1C5;

CODE_80A1C9:
    RTS                                  ;80A1C9;

CODE_80A1CA:
    PEA.W $1428                          ;80A1CA;
    PLD                                  ;80A1CD;
    LDX.B $01                            ;80A1CE;
    JMP.W (PTR16_80A1D3,X)               ;80A1D0;

PTR16_80A1D3:
    dw CODE_80A1DD                       ;80A1D3;
    dw CODE_80A217                       ;80A1D5;
    dw CODE_80A22F                       ;80A1D7;
    dw CODE_80A23C                       ;80A1D9;
    dw CODE_80A257                       ;80A1DB;

CODE_80A1DD:
    LDA.B #$02                           ;80A1DD;
    STA.B $01                            ;80A1DF;
    LDA.B #$20                           ;80A1E1;
    STA.B $11                            ;80A1E3;
    STZ.B $18                            ;80A1E5;
    LDA.B #$FF                           ;80A1E7;
    STA.B $10                            ;80A1E9;
    STZ.B $16                            ;80A1EB;
    REP #$20                             ;80A1ED;
    LDA.W #$A597                         ;80A1EF;
    STA.B $31                            ;80A1F2;
    STZ.B $08                            ;80A1F4;
    LDA.W #$00A0                         ;80A1F6;
    STA.B $05                            ;80A1F9;
    LDA.W #$F800                         ;80A1FB;
    STA.B $1C                            ;80A1FE;
    SEP #$20                             ;80A200;
    LDA.B #$47                           ;80A202;
    JSL.L CODE_848F07                    ;80A204;
    JSL.L CODE_848FCA                    ;80A208;
    LDA.B #$0A                           ;80A20C;
    STA.B $1F                            ;80A20E;
    LDA.B #$0E                           ;80A210;
    JSL.L CODE_8088CD                    ;80A212;
    RTS                                  ;80A216;

CODE_80A217:
    JSL.L CODE_82825D                    ;80A217;
    DEC.B $1F                            ;80A21B;
    BNE CODE_80A22A                      ;80A21D;
    LDA.B #$04                           ;80A21F;
    STA.B $01                            ;80A221;
    LDA.B #$1E                           ;80A223;
    STA.B $1E                            ;80A225;
    JSR.W CODE_80A472                    ;80A227;

CODE_80A22A:
    JSL.L CODE_8280B4                    ;80A22A;
    RTS                                  ;80A22E;

CODE_80A22F:
    DEC.B $1E                            ;80A22F;
    BNE CODE_80A23B                      ;80A231;
    LDA.B #$40                           ;80A233;
    STA.B $1F                            ;80A235;
    LDA.B #$06                           ;80A237;
    STA.B $01                            ;80A239;

CODE_80A23B:
    RTS                                  ;80A23B;

CODE_80A23C:
    LDA.W $0B9B                          ;80A23C;
    AND.B #$03                           ;80A23F;
    BNE CODE_80A256                      ;80A241;
    REP #$20                             ;80A243;
    LDA.W $00B4                          ;80A245;
    DEC A                                ;80A248;
    STA.W $00B4                          ;80A249;
    SEP #$20                             ;80A24C;
    DEC.B $1F                            ;80A24E;
    BNE CODE_80A256                      ;80A250;
    LDA.B #$08                           ;80A252;
    STA.B $01                            ;80A254;

CODE_80A256:
    RTS                                  ;80A256;

CODE_80A257:
    RTS                                  ;80A257;

CODE_80A258:
    PEA.W $0E68                          ;80A258;
    PLD                                  ;80A25B;
    LDX.B $01                            ;80A25C;
    JMP.W (PTR16_80A261,X)               ;80A25E;

PTR16_80A261:
    dw CODE_80A269                       ;80A261;
    dw CODE_80A2A3                       ;80A263;
    dw CODE_80A2BF                       ;80A265;
    dw CODE_80A2CC                       ;80A267;

CODE_80A269:
    LDA.B #$02                           ;80A269;
    STA.B $01                            ;80A26B;
    LDA.B #$2B                           ;80A26D;
    STA.B $11                            ;80A26F;
    STZ.B $18                            ;80A271;
    LDA.B #$AD                           ;80A273;
    STA.B $16                            ;80A275;
    LDA.B #$07                           ;80A277;
    JSL.L CODE_848F07                    ;80A279;
    LDA.B #$04                           ;80A27D;
    STA.B $12                            ;80A27F;
    REP #$20                             ;80A281;
    LDA.W #$0070                         ;80A283;
    STA.B $05                            ;80A286;
    LDA.W #$0070                         ;80A288;
    STA.B $08                            ;80A28B;
    LDA.W #$FFF8                         ;80A28D;
    STA.B $1A                            ;80A290;
    LDA.W #$FFE0                         ;80A292;
    STA.B $1C                            ;80A295;
    LDA.W #$02D0                         ;80A297;
    STA.B $0C                            ;80A29A;
    SEP #$20                             ;80A29C;
    JSL.L CODE_8280B4                    ;80A29E;
    RTS                                  ;80A2A2;

CODE_80A2A3:
    JSL.L CODE_8280B4                    ;80A2A3;
    JSL.L CODE_82820A                    ;80A2A7;
    REP #$20                             ;80A2AB;
    DEC.B $0C                            ;80A2AD;
    SEP #$20                             ;80A2AF;
    BNE CODE_80A2BB                      ;80A2B1;
    LDA.B #$04                           ;80A2B3;
    STA.B $01                            ;80A2B5;
    LDA.B #$3C                           ;80A2B7;
    STA.B $0C                            ;80A2B9;

CODE_80A2BB:
    JSR.W CODE_80A316                    ;80A2BB;
    RTS                                  ;80A2BE;

CODE_80A2BF:
    JSL.L CODE_8280B4                    ;80A2BF;
    DEC.B $0C                            ;80A2C3;
    BNE CODE_80A2CB                      ;80A2C5;
    LDA.B #$06                           ;80A2C7;
    STA.B $01                            ;80A2C9;

CODE_80A2CB:
    RTS                                  ;80A2CB;

CODE_80A2CC:
    RTS                                  ;80A2CC;

CODE_80A2CD:
    REP #$30                             ;80A2CD;
    LDA.W #$1928                         ;80A2CF;
    TCD                                  ;80A2D2;

CODE_80A2D3:
    LDA.B $00                            ;80A2D3;
    BEQ CODE_80A2DC                      ;80A2D5;
    SEP #$30                             ;80A2D7;
    JSR.W CODE_80A2EC                    ;80A2D9;

CODE_80A2DC:
    REP #$30                             ;80A2DC;
    TDC                                  ;80A2DE;
    CLC                                  ;80A2DF;
    ADC.W #$0020                         ;80A2E0;
    TCD                                  ;80A2E3;
    CMP.W #$1D08                         ;80A2E4;
    BCC CODE_80A2D3                      ;80A2E7;
    SEP #$30                             ;80A2E9;
    RTS                                  ;80A2EB;

CODE_80A2EC:
    LDA.B $01                            ;80A2EC;
    BNE CODE_80A304                      ;80A2EE;
    INC.B $01                            ;80A2F0;
    LDA.B #$29                           ;80A2F2;
    STA.B $11                            ;80A2F4;
    LDA.B #$AD                           ;80A2F6;
    STA.B $16                            ;80A2F8;
    LDA.B $0A                            ;80A2FA;
    JSL.L CODE_848F07                    ;80A2FC;
    LDA.B #$02                           ;80A300;
    STA.B $12                            ;80A302;

CODE_80A304:
    JSL.L CODE_848EEA                    ;80A304;
    LDA.B $0F                            ;80A308;
    BMI CODE_80A311                      ;80A30A;
    JSL.L CODE_8280B4                    ;80A30C;
    RTS                                  ;80A310;

CODE_80A311:
    JSL.L CODE_828398                    ;80A311;
    RTS                                  ;80A315;

CODE_80A316:
    LDA.W $0B9B                          ;80A316;
    AND.B #$03                           ;80A319;
    BNE CODE_80A36E                      ;80A31B;
    JSL.L CODE_8282D3                    ;80A31D;
    BNE CODE_80A36E                      ;80A321;
    INC.W $0000,X                        ;80A323;
    JSL.L CODE_849086                    ;80A326;
    AND.B #$01                           ;80A32A;
    ASL A                                ;80A32C;
    STA.W $0000                          ;80A32D;
    ASL A                                ;80A330;
    CLC                                  ;80A331;
    ADC.W $0000                          ;80A332;
    STA.W $000A,X                        ;80A335;
    REP #$20                             ;80A338;
    JSL.L CODE_849086                    ;80A33A;
    AND.W #$001F                         ;80A33E;
    EOR.W #$FFFF                         ;80A341;
    INC A                                ;80A344;
    CLC                                  ;80A345;
    ADC.B $08                            ;80A346;
    STA.W $0008,X                        ;80A348;
    JSL.L CODE_849086                    ;80A34B;
    AND.W #$003F                         ;80A34F;
    LSR A                                ;80A352;
    BCC CODE_80A359                      ;80A353;
    EOR.W #$FFFF                         ;80A355;
    INC A                                ;80A358;

CODE_80A359:
    CLC                                  ;80A359;
    ADC.B $05                            ;80A35A;
    STA.W $0005,X                        ;80A35C;
    SEP #$30                             ;80A35F;
    JSL.L CODE_849086                    ;80A361;
    AND.B #$03                           ;80A365;
    CLC                                  ;80A367;
    ADC.B #$93                           ;80A368;
    JSL.L CODE_8088CD                    ;80A36A;

CODE_80A36E:
    SEP #$10                             ;80A36E;
    RTS                                  ;80A370;

CODE_80A371:
    PEA.W $0EA8                          ;80A371;
    PLD                                  ;80A374;
    LDX.B $01                            ;80A375;
    JSR.W (PTR16_80A384,X)               ;80A377;
    REP #$20                             ;80A37A;
    LDA.W $0E6D                          ;80A37C;
    STA.B $05                            ;80A37F;
    SEP #$20                             ;80A381;
    RTS                                  ;80A383;

PTR16_80A384:
    dw CODE_80A394                       ;80A384;
    dw CODE_80A3BB                       ;80A386;
    dw CODE_80A3C8                       ;80A388;
    dw CODE_80A3E3                       ;80A38A;
    dw CODE_80A3FE                       ;80A38C;
    dw CODE_80A419                       ;80A38E;
    dw CODE_80A430                       ;80A390;
    dw CODE_80A440                       ;80A392;

CODE_80A394:
    LDA.B #$02                           ;80A394;
    STA.B $01                            ;80A396;
    LDA.B #$29                           ;80A398;
    STA.B $11                            ;80A39A;
    STZ.B $12                            ;80A39C;
    STZ.B $18                            ;80A39E;
    LDA.B #$AD                           ;80A3A0;
    STA.B $16                            ;80A3A2;
    LDA.B #$01                           ;80A3A4;
    JSL.L CODE_848F07                    ;80A3A6;
    LDA.B #$FF                           ;80A3AA;
    STA.B $1F                            ;80A3AC;
    REP #$20                             ;80A3AE;
    LDA.W #$00D0                         ;80A3B0;
    STA.B $08                            ;80A3B3;
    LDA.W #$0060                         ;80A3B5;
    STA.B $05                            ;80A3B8;
    RTS                                  ;80A3BA;

CODE_80A3BB:
    DEC.B $1F                            ;80A3BB;
    BNE CODE_80A3C7                      ;80A3BD;
    LDA.B #$7F                           ;80A3BF;
    STA.B $1F                            ;80A3C1;
    LDA.B #$04                           ;80A3C3;
    STA.B $01                            ;80A3C5;

CODE_80A3C7:
    RTS                                  ;80A3C7;

CODE_80A3C8:
    JSL.L CODE_848EEA                    ;80A3C8;
    DEC.B $1F                            ;80A3CC;
    BNE CODE_80A3DE                      ;80A3CE;
    LDA.B #$7F                           ;80A3D0;
    STA.B $1F                            ;80A3D2;
    LDA.B #$02                           ;80A3D4;
    JSL.L CODE_848F07                    ;80A3D6;
    LDA.B #$06                           ;80A3DA;
    STA.B $01                            ;80A3DC;

CODE_80A3DE:
    JSL.L CODE_8280B4                    ;80A3DE;
    RTS                                  ;80A3E2;

CODE_80A3E3:
    JSL.L CODE_848EEA                    ;80A3E3;
    DEC.B $1F                            ;80A3E7;
    BNE CODE_80A3F9                      ;80A3E9;
    LDA.B #$5A                           ;80A3EB;
    STA.B $1F                            ;80A3ED;
    LDA.B #$03                           ;80A3EF;
    JSL.L CODE_848F07                    ;80A3F1;
    LDA.B #$08                           ;80A3F5;
    STA.B $01                            ;80A3F7;

CODE_80A3F9:
    JSL.L CODE_8280B4                    ;80A3F9;
    RTS                                  ;80A3FD;

CODE_80A3FE:
    JSL.L CODE_848EEA                    ;80A3FE;
    DEC.B $1F                            ;80A402;
    BNE CODE_80A414                      ;80A404;
    LDA.B #$5A                           ;80A406;
    STA.B $1F                            ;80A408;
    LDA.B #$04                           ;80A40A;
    JSL.L CODE_848F07                    ;80A40C;
    LDA.B #$0A                           ;80A410;
    STA.B $01                            ;80A412;

CODE_80A414:
    JSL.L CODE_8280B4                    ;80A414;
    RTS                                  ;80A418;

CODE_80A419:
    JSL.L CODE_848EEA                    ;80A419;
    DEC.B $1F                            ;80A41D;
    BNE CODE_80A42B                      ;80A41F;
    LDA.B #$05                           ;80A421;
    JSL.L CODE_848F07                    ;80A423;
    LDA.B #$0C                           ;80A427;
    STA.B $01                            ;80A429;

CODE_80A42B:
    JSL.L CODE_8280B4                    ;80A42B;
    RTS                                  ;80A42F;

CODE_80A430:
    JSL.L CODE_848EEA                    ;80A430;
    LDA.B $0F                            ;80A434;
    BPL CODE_80A43C                      ;80A436;
    LDA.B #$0E                           ;80A438;
    STA.B $01                            ;80A43A;

CODE_80A43C:
    JSL.L CODE_8280B4                    ;80A43C;

CODE_80A440:
    RTS                                  ;80A440;

CODE_80A441:
    PEA.W $0EE8                          ;80A441;
    PLD                                  ;80A444;
    LDA.B $01                            ;80A445;
    BNE CODE_80A46D                      ;80A447;
    INC.B $01                            ;80A449;
    LDA.B #$01                           ;80A44B;
    STA.B $11                            ;80A44D;
    LDA.B #$02                           ;80A44F;
    STA.B $12                            ;80A451;
    STZ.B $18                            ;80A453;
    LDA.B #$AD                           ;80A455;
    STA.B $16                            ;80A457;
    LDA.B #$08                           ;80A459;
    JSL.L CODE_848F07                    ;80A45B;
    REP #$20                             ;80A45F;
    LDA.W #$005D                         ;80A461;
    STA.B $05                            ;80A464;
    LDA.W #$00DF                         ;80A466;
    STA.B $08                            ;80A469;
    SEP #$20                             ;80A46B;

CODE_80A46D:
    JSL.L CODE_8280B4                    ;80A46D;
    RTS                                  ;80A471;

CODE_80A472:
    LDA.W $1F99                          ;80A472;
    AND.B #$05                           ;80A475;
    LSR A                                ;80A477;
    BCC CODE_80A47C                      ;80A478;
    ORA.B #$01                           ;80A47A;

CODE_80A47C:
    REP #$20                             ;80A47C;
    AND.W #$0003                         ;80A47E;
    ASL A                                ;80A481;
    ASL A                                ;80A482;
    ASL A                                ;80A483;
    STA.W $0000                          ;80A484;
    ASL A                                ;80A487;
    ASL A                                ;80A488;
    CLC                                  ;80A489;
    ADC.W $0000                          ;80A48A;
    CLC                                  ;80A48D;
    ADC.W #$88E8                         ;80A48E;
    STA.W $0000                          ;80A491;
    LDA.W #$5172                         ;80A494;
    STA.W $0002                          ;80A497;
    LDA.W #$0005                         ;80A49A;
    STA.W $0004                          ;80A49D;
    LDX.W $00A3                          ;80A4A0;

CODE_80A4A3:
    REP #$20                             ;80A4A3;
    LDA.W $0002                          ;80A4A5;
    STA.W $0501,X                        ;80A4A8;
    CLC                                  ;80A4AB;
    ADC.W #$0020                         ;80A4AC;
    STA.W $0002                          ;80A4AF;
    LDA.W #$0008                         ;80A4B2;
    STA.W $0503,X                        ;80A4B5;
    LDA.W $0000                          ;80A4B8;
    STA.W $0505,X                        ;80A4BB;
    CLC                                  ;80A4BE;
    ADC.W #$0008                         ;80A4BF;
    STA.W $0000                          ;80A4C2;
    SEP #$20                             ;80A4C5;
    LDA.B #$80                           ;80A4C7;
    STA.W $0500,X                        ;80A4C9;
    LDA.B #$86                           ;80A4CC;
    STA.W $0507,X                        ;80A4CE;
    TXA                                  ;80A4D1;
    CLC                                  ;80A4D2;
    ADC.B #$08                           ;80A4D3;
    TAX                                  ;80A4D5;
    DEC.W $0004                          ;80A4D6;
    BNE CODE_80A4A3                      ;80A4D9;
    STX.W $00A3                          ;80A4DB;
    RTS                                  ;80A4DE;

CODE_80A4DF:
    LDX.B #$00                           ;80A4DF;

CODE_80A4E1:
    LDA.W $0AA1,X                        ;80A4E1;
    BEQ CODE_80A4ED                      ;80A4E4;
    TXA                                  ;80A4E6;
    CLC                                  ;80A4E7;
    ADC.B #$07                           ;80A4E8;
    TAX                                  ;80A4EA;
    BRA CODE_80A4E1                      ;80A4EB;

CODE_80A4ED:
    STX.B $13                            ;80A4ED;
    INC.W $0AA1,X                        ;80A4EF;
    LDA.B #$00                           ;80A4F2;
    STA.W $0AA2,X                        ;80A4F4;
    LDA.B #$32                           ;80A4F7;
    STA.W $0AA3,X                        ;80A4F9;
    LDA.B #$B0                           ;80A4FC;
    STA.W $0AA4,X                        ;80A4FE;
    LDA.B #$89                           ;80A501;
    STA.W $0AA5,X                        ;80A503;
    LDA.B #$86                           ;80A506;
    STA.W $0AA6,X                        ;80A508;
    STA.W $0AA7,X                        ;80A50B;
    RTS                                  ;80A50E;

CODE_80A50F:
    LDA.B $12                            ;80A50F;
    ASL A                                ;80A511;
    TAX                                  ;80A512;
    REP #$20                             ;80A513;
    LDA.W DATA8_868988,X                 ;80A515;
    LDX.B $13                            ;80A518;
    STA.W $0AA4,X                        ;80A51A;
    SEP #$20                             ;80A51D;
    RTS                                  ;80A51F;

CODE_80A520:
    JSR.W CODE_80DB55                    ;80A520;
    JSR.W CODE_808BCB                    ;80A523;
    JSR.W CODE_808A45                    ;80A526;
    JSR.W CODE_80891B                    ;80A529;

CODE_80A52C:
    PEA.W $1E48                          ;80A52C;
    PLD                                  ;80A52F;
    LDX.B $01                            ;80A530;
    JSR.W (PTR16_80A53E,X)               ;80A532;
    PEA.W $0000                          ;80A535;
    PLD                                  ;80A538;
    JSR.W CODE_808100                    ;80A539;
    BRA CODE_80A52C                      ;80A53C;

PTR16_80A53E:
    dw CODE_80A54E                       ;80A53E;
    dw CODE_80A5C5                       ;80A540;
    dw CODE_80A5DB                       ;80A542;
    dw CODE_80A5F9                       ;80A544;
    dw CODE_80A60C                       ;80A546;
    dw CODE_80A61F                       ;80A548;
    dw CODE_80A632                       ;80A54A;
    dw CODE_80A64D                       ;80A54C;

CODE_80A54E:
    LDA.B #$02                           ;80A54E;
    STA.B $01                            ;80A550;
    STZ.W $00B3                          ;80A552;
    PHD                                  ;80A555;
    PEA.W $0000                          ;80A556;
    PLD                                  ;80A559;
    LDY.B #$72                           ;80A55A;
    JSR.W CODE_80B301                    ;80A55C;
    JSR.W CODE_808100                    ;80A55F;
    LDY.B #$74                           ;80A562;
    JSR.W CODE_80B301                    ;80A564;
    JSR.W CODE_808100                    ;80A567;
    LDY.B #$76                           ;80A56A;
    JSR.W CODE_80B301                    ;80A56C;
    JSR.W CODE_808100                    ;80A56F;
    LDY.B #$20                           ;80A572;
    JSR.W CODE_80B301                    ;80A574;
    JSR.W CODE_808100                    ;80A577;
    LDY.B #$6A                           ;80A57A;
    JSR.W CODE_808A87                    ;80A57C;
    LDY.B #$12                           ;80A57F;
    JSL.L CODE_828011                    ;80A581;
    REP #$10                             ;80A585;
    LDY.W #$01F4                         ;80A587;
    JSL.L CODE_828011                    ;80A58A;
    SEP #$10                             ;80A58E;
    LDY.B #$24                           ;80A590;
    JSL.L CODE_828011                    ;80A592;
    LDY.B #$1A                           ;80A596;
    JSL.L CODE_828011                    ;80A598;
    LDA.B #$30                           ;80A59C;
    JSL.L CODE_8087A2                    ;80A59E;
    LDA.B #$1F                           ;80A5A2;
    STA.W $00CB                          ;80A5A4;
    STA.W $00CC                          ;80A5A7;
    STA.W $00CD                          ;80A5AA;
    STZ.W $00C9                          ;80A5AD;
    LDA.B #$81                           ;80A5B0;
    STA.W $00CA                          ;80A5B2;
    JSR.W CODE_808973                    ;80A5B5;
    LDA.B #$E2                           ;80A5B8;
    JSL.L CODE_80E9EE                    ;80A5BA;
    LDA.B #$01                           ;80A5BE;
    STA.W $1F34                          ;80A5C0;
    PLD                                  ;80A5C3;
    RTS                                  ;80A5C4;

CODE_80A5C5:
    LDA.W $0060                          ;80A5C5;
    BNE CODE_80A5DA                      ;80A5C8;
    LDA.B #$F6                           ;80A5CA;
    LDY.B #$02                           ;80A5CC;
    JSL.L CODE_80887F                    ;80A5CE;
    LDA.B #$3C                           ;80A5D2;
    STA.B $10                            ;80A5D4;
    LDA.B #$04                           ;80A5D6;
    STA.B $01                            ;80A5D8;

CODE_80A5DA:
    RTS                                  ;80A5DA;

CODE_80A5DB:
    DEC.B $10                            ;80A5DB;
    BNE CODE_80A5F8                      ;80A5DD;
    LDA.B #$1D                           ;80A5DF;
    JSL.L CODE_8087A2                    ;80A5E1;
    LDA.B #$F5                           ;80A5E5;
    JSL.L CODE_80887F                    ;80A5E7;
    LDA.B #$06                           ;80A5EB;
    STA.B $01                            ;80A5ED;
    LDA.B #$3C                           ;80A5EF;
    STA.B $10                            ;80A5F1;
    LDA.B #$04                           ;80A5F3;
    TSB.W $00A2                          ;80A5F5;

CODE_80A5F8:
    RTS                                  ;80A5F8;

CODE_80A5F9:
    DEC.B $10                            ;80A5F9;
    BNE CODE_80A60B                      ;80A5FB;
    LDY.B #$2A                           ;80A5FD;
    JSL.L CODE_828011                    ;80A5FF;
    LDA.B #$08                           ;80A603;
    STA.B $01                            ;80A605;
    LDA.B #$1E                           ;80A607;
    STA.B $10                            ;80A609;

CODE_80A60B:
    RTS                                  ;80A60B;

CODE_80A60C:
    DEC.B $10                            ;80A60C;
    BNE CODE_80A61E                      ;80A60E;
    LDY.B #$28                           ;80A610;
    JSL.L CODE_828011                    ;80A612;
    LDA.B #$0A                           ;80A616;
    STA.B $01                            ;80A618;
    LDA.B #$1E                           ;80A61A;
    STA.B $10                            ;80A61C;

CODE_80A61E:
    RTS                                  ;80A61E;

CODE_80A61F:
    DEC.B $10                            ;80A61F;
    BNE CODE_80A631                      ;80A621;
    LDY.B #$24                           ;80A623;
    JSL.L CODE_828011                    ;80A625;
    LDA.B #$0C                           ;80A629;
    STA.B $01                            ;80A62B;
    LDA.B #$3C                           ;80A62D;
    STA.B $10                            ;80A62F;

CODE_80A631:
    RTS                                  ;80A631;

CODE_80A632:
    LDA.W $00CB                          ;80A632;
    DEC A                                ;80A635;
    STA.W $00CB                          ;80A636;
    STA.W $00CC                          ;80A639;
    STA.W $00CD                          ;80A63C;
    CMP.B #$00                           ;80A63F;
    BNE CODE_80A64D                      ;80A641;
    LDA.B #$61                           ;80A643;
    JSL.L CODE_80E9EE                    ;80A645;
    LDA.B #$0E                           ;80A649;
    STA.B $01                            ;80A64B;

CODE_80A64D:
    RTS                                  ;80A64D;

CODE_80A64E:
    PEA.W $0E68                          ;80A64E;
    PLD                                  ;80A651;

CODE_80A652:
    INC.W $0B9C                          ;80A652;
    LDX.B $01                            ;80A655;
    JSR.W (PTR16_80A668,X)               ;80A657;
    LDA.B $35                            ;80A65A;
    BNE CODE_80A663                      ;80A65C;
    JSR.W CODE_80A946                    ;80A65E;
    BRA CODE_80A652                      ;80A661;

CODE_80A663:
    PEA.W $0000                          ;80A663;
    PLD                                  ;80A666;
    RTS                                  ;80A667;

PTR16_80A668:
    dw CODE_80A66E                       ;80A668;
    dw CODE_80A719                       ;80A66A;
    dw CODE_80A91B                       ;80A66C;

CODE_80A66E:
    LDA.B #$02                           ;80A66E;
    STA.B $01                            ;80A670;
    PEA.W $0000                          ;80A672;
    PLD                                  ;80A675;
    LDA.B #$09                           ;80A676;
    STA.W $2105                          ;80A678;
    LDA.B #$04                           ;80A67B;
    STA.W $1F12                          ;80A67D;
    STA.W $1F11                          ;80A680;
    REP #$10                             ;80A683;
    LDY.W #$0174                         ;80A685;
    JSL.L CODE_828011                    ;80A688;
    SEP #$10                             ;80A68C;
    LDY.B #$12                           ;80A68E;
    JSL.L CODE_828011                    ;80A690;
    LDY.B #$20                           ;80A694;
    JSR.W CODE_80B301                    ;80A696;
    JSR.W CODE_808100                    ;80A699;
    LDY.B #$58                           ;80A69C;
    JSR.W CODE_80B301                    ;80A69E;
    JSR.W CODE_808100                    ;80A6A1;
    LDA.B #$23                           ;80A6A4;
    STA.W $1F7A                          ;80A6A6;
    JSR.W CODE_80BAD7                    ;80A6A9;
    REP #$20                             ;80A6AC;
    LDA.W #$0100                         ;80A6AE;
    STA.W $1E4D                          ;80A6B1;
    STZ.W $1E50                          ;80A6B4;
    STZ.W $1E8D                          ;80A6B7;
    STZ.W $1E90                          ;80A6BA;
    SEP #$20                             ;80A6BD;
    INC.W $1E9A                          ;80A6BF;
    JSR.W CODE_80B584                    ;80A6C2;
    JSR.W CODE_80B58D                    ;80A6C5;
    INC.W $1E48                          ;80A6C8;
    INC.W $1E88                          ;80A6CB;
    LDA.B #$04                           ;80A6CE;
    STA.W $1E49                          ;80A6D0;
    LDA.B #$0C                           ;80A6D3;
    STA.W $1E89                          ;80A6D5;
    LDA.B #$04                           ;80A6D8;
    STA.B $C0                            ;80A6DA;
    LDA.B #$10                           ;80A6DC;
    STA.B $C1                            ;80A6DE;
    LDA.B #$02                           ;80A6E0;
    STA.B $C9                            ;80A6E2;
    LDA.B #$41                           ;80A6E4;
    STA.B $CA                            ;80A6E6;
    STZ.B $CB                            ;80A6E8;
    STZ.B $CC                            ;80A6EA;
    STZ.B $CD                            ;80A6EC;
    STZ.W $1F08                          ;80A6EE;
    LDA.B #$23                           ;80A6F1;
    STA.W $1F7A                          ;80A6F3;
    JSR.W CODE_80B08B                    ;80A6F6;

CODE_80A6F9:
    JSR.W CODE_808100                    ;80A6F9;
    LDA.W $0040                          ;80A6FC;
    BNE CODE_80A6F9                      ;80A6FF;
    LDA.B #$9D                           ;80A701;
    STA.B $98                            ;80A703;
    STZ.B $F8                            ;80A705;
    STZ.B $F9                            ;80A707;
    JSR.W CODE_80B252                    ;80A709;
    LDA.B #$80                           ;80A70C;
    JSR.W CODE_80888B                    ;80A70E;
    JSR.W CODE_808973                    ;80A711;
    PEA.W $0E68                          ;80A714;
    PLD                                  ;80A717;
    RTS                                  ;80A718;

CODE_80A719:
    REP #$20                             ;80A719;
    LDA.W $1E4D                          ;80A71B;
    STA.W $1E6A                          ;80A71E;
    LDA.W $1E50                          ;80A721;
    STA.W $1E6C                          ;80A724;
    SEP #$20                             ;80A727;
    LDX.B $02                            ;80A729;
    JSR.W (PTR16_80A745,X)               ;80A72B;
    LDA.W $00A7                          ;80A72E;
    ORA.W $00A8                          ;80A731;
    BEQ CODE_80A742                      ;80A734;
    LDA.B #$04                           ;80A736;
    STA.B $01                            ;80A738;
    LDY.B #$04                           ;80A73A;
    LDA.B #$F6                           ;80A73C;
    JSL.L CODE_80887F                    ;80A73E;

CODE_80A742:
    JMP.W CODE_80A931                    ;80A742;

PTR16_80A745:
    dw CODE_80A761                       ;80A745;
    dw CODE_80A7C8                       ;80A747;
    dw CODE_80A7DF                       ;80A749;
    dw CODE_80A808                       ;80A74B;
    dw CODE_80A82E                       ;80A74D;
    dw CODE_80A85F                       ;80A74F;
    dw CODE_80A86F                       ;80A751;
    dw CODE_80A7A4                       ;80A753;
    dw CODE_80A7BE                       ;80A755;
    dw CODE_80A8B7                       ;80A757;
    dw CODE_80A8E3                       ;80A759;
    dw CODE_80A76E                       ;80A75B;
    dw CODE_80A780                       ;80A75D;
    dw CODE_80A792                       ;80A75F;

CODE_80A761:
    LDA.B #$16                           ;80A761;
    STA.B $02                            ;80A763;
    LDA.B #$8F                           ;80A765;
    JSL.L CODE_80E9EE                    ;80A767;
    JMP.W CODE_80A950                    ;80A76B;

CODE_80A76E:
    LDA.W $1F3C                          ;80A76E;
    CMP.B #$02                           ;80A771;
    BNE CODE_80A77F                      ;80A773;
    LDA.B #$18                           ;80A775;
    STA.B $02                            ;80A777;
    LDA.B #$89                           ;80A779;
    JSL.L CODE_8088CD                    ;80A77B;

CODE_80A77F:
    RTS                                  ;80A77F;

CODE_80A780:
    LDA.W $1F3C                          ;80A780;
    CMP.B #$03                           ;80A783;
    BNE CODE_80A791                      ;80A785;
    LDA.B #$1A                           ;80A787;
    STA.B $02                            ;80A789;
    LDA.B #$89                           ;80A78B;
    JSL.L CODE_8088CD                    ;80A78D;

CODE_80A791:
    RTS                                  ;80A791;

CODE_80A792:
    LDA.W $1F3C                          ;80A792;
    CMP.B #$04                           ;80A795;
    BNE CODE_80A7A3                      ;80A797;
    LDA.B #$0E                           ;80A799;
    STA.B $02                            ;80A79B;
    LDA.B #$89                           ;80A79D;
    JSL.L CODE_8088CD                    ;80A79F;

CODE_80A7A3:
    RTS                                  ;80A7A3;

CODE_80A7A4:
    LDA.W $1F3C                          ;80A7A4;
    CMP.B #$05                           ;80A7A7;
    BNE CODE_80A7BD                      ;80A7A9;
    PHD                                  ;80A7AB;
    PEA.W $0000                          ;80A7AC;
    PLD                                  ;80A7AF;
    JSR.W CODE_808995                    ;80A7B0;
    PLD                                  ;80A7B3;
    LDA.B #$10                           ;80A7B4;
    STA.B $02                            ;80A7B6;
    LDA.B #$04                           ;80A7B8;
    TSB.W $00A2                          ;80A7BA;

CODE_80A7BD:
    RTS                                  ;80A7BD;

CODE_80A7BE:
    LDA.B #$02                           ;80A7BE;
    STA.B $02                            ;80A7C0;
    LDA.B #$0F                           ;80A7C2;
    STA.W $00B3                          ;80A7C4;
    RTS                                  ;80A7C7;

CODE_80A7C8:
    LDA.W $1F3C                          ;80A7C8;
    CMP.B #$06                           ;80A7CB;
    BNE CODE_80A7DE                      ;80A7CD;
    LDA.B #$04                           ;80A7CF;
    STA.B $02                            ;80A7D1;
    LDA.B #$01                           ;80A7D3;
    TSB.W $00C0                          ;80A7D5;
    LDA.B #$1E                           ;80A7D8;
    STA.B $34                            ;80A7DA;
    STZ.B $33                            ;80A7DC;

CODE_80A7DE:
    RTS                                  ;80A7DE;

CODE_80A7DF:
    DEC.B $34                            ;80A7DF;
    BNE CODE_80A807                      ;80A7E1;
    LDA.B #$1E                           ;80A7E3;
    STA.B $34                            ;80A7E5;
    REP #$30                             ;80A7E7;
    LDA.B $33                            ;80A7E9;
    AND.W #$00FF                         ;80A7EB;
    CLC                                  ;80A7EE;
    ADC.W #$0176                         ;80A7EF;
    TAY                                  ;80A7F2;
    JSL.L CODE_828011                    ;80A7F3;
    SEP #$30                             ;80A7F7;
    INC.B $33                            ;80A7F9;
    INC.B $33                            ;80A7FB;
    LDA.B $33                            ;80A7FD;
    CMP.B #$08                           ;80A7FF;
    BCC CODE_80A807                      ;80A801;
    LDA.B #$06                           ;80A803;
    STA.B $02                            ;80A805;

CODE_80A807:
    RTS                                  ;80A807;

CODE_80A808:
    LDA.W $1F3C                          ;80A808;
    CMP.B #$09                           ;80A80B;
    BNE CODE_80A82D                      ;80A80D;
    LDA.B #$04                           ;80A80F;
    TSB.W $00A2                          ;80A811;
    REP #$21                             ;80A814;
    STZ.W $00BE                          ;80A816;
    LDA.W $1E4D                          ;80A819;
    ADC.W #$FFF8                         ;80A81C;
    STA.W $1E4D                          ;80A81F;
    CMP.W #$0080                         ;80A822;
    SEP #$20                             ;80A825;
    BNE CODE_80A82D                      ;80A827;
    LDA.B #$08                           ;80A829;
    STA.B $02                            ;80A82B;

CODE_80A82D:
    RTS                                  ;80A82D;

CODE_80A82E:
    LDA.W $1F3C                          ;80A82E;
    CMP.B #$0C                           ;80A831;
    BNE CODE_80A85E                      ;80A833;
    LDA.B #$0A                           ;80A835;
    STA.B $02                            ;80A837;
    STZ.W $00BE                          ;80A839;
    STZ.W $00BF                          ;80A83C;
    STZ.W $00C9                          ;80A83F;
    LDA.B #$84                           ;80A842;
    STA.W $00CA                          ;80A844;
    LDA.B #$1F                           ;80A847;
    STA.W $00CB                          ;80A849;
    STA.W $00CC                          ;80A84C;
    STA.W $00CD                          ;80A84F;
    LDA.B #$86                           ;80A852;
    JSL.L CODE_8088CD                    ;80A854;
    LDY.B #$18                           ;80A858;
    JSL.L CODE_808A7B                    ;80A85A;

CODE_80A85E:
    RTS                                  ;80A85E;

CODE_80A85F:
    DEC.W $00CB                          ;80A85F;
    DEC.W $00CC                          ;80A862;
    DEC.W $00CD                          ;80A865;
    BNE CODE_80A86E                      ;80A868;
    LDA.B #$0C                           ;80A86A;
    STA.B $02                            ;80A86C;

CODE_80A86E:
    RTS                                  ;80A86E;

CODE_80A86F:
    LDA.W $1F3C                          ;80A86F;
    CMP.B #$0D                           ;80A872;
    BNE CODE_80A8B6                      ;80A874;
    PHD                                  ;80A876;
    PEA.W $0000                          ;80A877;
    PLD                                  ;80A87A;
    JSR.W CODE_808995                    ;80A87B;
    PLD                                  ;80A87E;
    LDA.B #$12                           ;80A87F;
    STA.B $02                            ;80A881;
    PEA.W $0000                          ;80A883;
    PLD                                  ;80A886;
    LDY.B #$7C                           ;80A887;
    JSL.L CODE_828011                    ;80A889;
    LDY.B #$68                           ;80A88D;
    JSR.W CODE_80B301                    ;80A88F;
    JSR.W CODE_808100                    ;80A892;
    LDA.B #$24                           ;80A895;
    STA.W $1F7A                          ;80A897;
    JSR.W CODE_80BAD7                    ;80A89A;
    REP #$20                             ;80A89D;
    STZ.W $1E4D                          ;80A89F;
    STZ.W $1E50                          ;80A8A2;
    SEP #$20                             ;80A8A5;
    INC.W $1E9A                          ;80A8A7;
    JSR.W CODE_80B584                    ;80A8AA;
    PEA.W $0E68                          ;80A8AD;
    PLD                                  ;80A8B0;
    LDA.B #$04                           ;80A8B1;
    TSB.W $00A2                          ;80A8B3;

CODE_80A8B6:
    RTS                                  ;80A8B6;

CODE_80A8B7:
    LDA.B #$14                           ;80A8B7;
    STA.B $02                            ;80A8B9;
    LDA.B #$0F                           ;80A8BB;
    STA.W $00B3                          ;80A8BD;
    LDA.B #$02                           ;80A8C0;
    STA.W $00C9                          ;80A8C2;
    LDA.B #$20                           ;80A8C5;
    STA.W $00CA                          ;80A8C7;
    STZ.W $00CB                          ;80A8CA;
    STZ.W $00CC                          ;80A8CD;
    STZ.W $00CD                          ;80A8D0;
    LDA.B #$01                           ;80A8D3;
    STA.B $33                            ;80A8D5;
    LDA.B #$90                           ;80A8D7;
    JSL.L CODE_80E9EE                    ;80A8D9;
    LDA.B #$01                           ;80A8DD;
    STA.W $1F35                          ;80A8DF;
    RTS                                  ;80A8E2;

CODE_80A8E3:
    LDA.W $0B9C                          ;80A8E3;
    AND.B #$1F                           ;80A8E6;
    BNE CODE_80A8F0                      ;80A8E8;
    LDA.B #$85                           ;80A8EA;
    JSL.L CODE_8088CD                    ;80A8EC;

CODE_80A8F0:
    LDA.W $1F3C                          ;80A8F0;
    CMP.B #$01                           ;80A8F3;
    BNE CODE_80A8FC                      ;80A8F5;
    LDA.B #$04                           ;80A8F7;
    STA.B $01                            ;80A8F9;
    RTS                                  ;80A8FB;

CODE_80A8FC:
    LDA.W $0B9C                          ;80A8FC;
    LSR A                                ;80A8FF;
    BCC CODE_80A918                      ;80A900;
    LDA.W $00CB                          ;80A902;
    CLC                                  ;80A905;
    ADC.B $33                            ;80A906;
    STA.W $00CB                          ;80A908;
    BEQ CODE_80A911                      ;80A90B;
    CMP.B #$0F                           ;80A90D;
    BNE CODE_80A918                      ;80A90F;

CODE_80A911:
    LDA.B $33                            ;80A911;
    EOR.B #$FF                           ;80A913;
    INC A                                ;80A915;
    STA.B $33                            ;80A916;

CODE_80A918:
    JMP.W CODE_80DDF1                    ;80A918;

CODE_80A91B:
    INC.B $35                            ;80A91B;
    PHD                                  ;80A91D;
    PEA.W $0000                          ;80A91E;
    PLD                                  ;80A921;
    JSR.W CODE_808995                    ;80A922;
    LDA.B #$04                           ;80A925;
    STA.W $0039                          ;80A927;
    LDX.B #$30                           ;80A92A;
    JSR.W CODE_808147                    ;80A92C;
    PLD                                  ;80A92F;
    RTS                                  ;80A930;

CODE_80A931:
    PHP                                  ;80A931;
    PHD                                  ;80A932;
    JSR.W CODE_80D35B                    ;80A933;
    JSR.W CODE_80DDF1                    ;80A936;
    JSR.W CODE_80DEF1                    ;80A939;
    PEA.W $0000                          ;80A93C;
    PLD                                  ;80A93F;
    JSR.W CODE_80D585                    ;80A940;
    PLD                                  ;80A943;
    PLP                                  ;80A944;
    RTS                                  ;80A945;

CODE_80A946:
    PHD                                  ;80A946;
    PEA.W $0000                          ;80A947;
    PLD                                  ;80A94A;
    JSR.W CODE_808100                    ;80A94B;
    PLD                                  ;80A94E;
    RTS                                  ;80A94F;

CODE_80A950:
    JSL.L CODE_8282D3                    ;80A950;
    BNE CODE_80A95E                      ;80A954;
    INC.W $0000,X                        ;80A956;
    LDA.B #$3D                           ;80A959;
    STA.W $000A,X                        ;80A95B;

CODE_80A95E:
    SEP #$10                             ;80A95E;
    RTS                                  ;80A960;

CODE_80A961:
    LDX.B $01                            ;80A961;
    JMP.W (PTR16_80A966,X)               ;80A963;

PTR16_80A966:
    dw CODE_80A96C                       ;80A966;
    dw CODE_80A983                       ;80A968;
    dw CODE_80AB54                       ;80A96A;

CODE_80A96C:
    LDA.B #$02                           ;80A96C;
    STA.B $01                            ;80A96E;
    LDA.L $7F829C                        ;80A970;
    STA.B $18                            ;80A974;
    LDA.L $7F839C                        ;80A976;
    STA.B $11                            ;80A97A;
    STZ.B $12                            ;80A97C;
    LDA.B #$A9                           ;80A97E;
    STA.B $16                            ;80A980;

CODE_80A982:
    RTL                                  ;80A982;

CODE_80A983:
    LDX.B $02                            ;80A983;
    JSR.W (PTR16_80A990,X)               ;80A985;
    LDA.B $02                            ;80A988;
    BEQ CODE_80A982                      ;80A98A;
    JML.L CODE_8280B4                    ;80A98C;

PTR16_80A990:
    dw CODE_80A99A                       ;80A990;
    dw CODE_80A9C0                       ;80A992;
    dw CODE_80AA2C                       ;80A994;
    dw CODE_80AA98                       ;80A996;
    dw CODE_80AB04                       ;80A998;

CODE_80A99A:
    LDA.W $1F3C                          ;80A99A;
    CMP.B #$07                           ;80A99D;
    BNE CODE_80A9BF                      ;80A99F;
    LDA.B #$02                           ;80A9A1;
    STA.B $02                            ;80A9A3;
    REP #$20                             ;80A9A5;
    LDA.W #$0148                         ;80A9A7;
    STA.B $05                            ;80A9AA;
    LDA.W #$002A                         ;80A9AC;
    STA.B $08                            ;80A9AF;
    SEP #$20                             ;80A9B1;
    LDA.B #$88                           ;80A9B3;
    JSL.L CODE_8088CD                    ;80A9B5;
    LDA.B #$00                           ;80A9B9;
    JSL.L CODE_848F07                    ;80A9BB;

CODE_80A9BF:
    RTS                                  ;80A9BF;

CODE_80A9C0:
    LDX.B $03                            ;80A9C0;
    JMP.W (PTR16_80A9C5,X)               ;80A9C2;

PTR16_80A9C5:
    dw CODE_80A9CB                       ;80A9C5;
    dw CODE_80A9ED                       ;80A9C7;
    dw CODE_80AA03                       ;80A9C9;

CODE_80A9CB:
    BIT.B $0F                            ;80A9CB;
    BPL CODE_80A9DA                      ;80A9CD;
    LDA.B #$02                           ;80A9CF;
    STA.B $03                            ;80A9D1;
    LDA.B #$01                           ;80A9D3;
    JSL.L CODE_848F07                    ;80A9D5;
    RTS                                  ;80A9D9;

CODE_80A9DA:
    BVC CODE_80A9E8                      ;80A9DA;
    LDA.B #$87                           ;80A9DC;
    JSL.L CODE_8088CD                    ;80A9DE;
    LDA.B #$8A                           ;80A9E2;
    JSL.L CODE_8088CD                    ;80A9E4;

CODE_80A9E8:
    JSL.L CODE_848EEA                    ;80A9E8;
    RTS                                  ;80A9EC;

CODE_80A9ED:
    LDA.W $1F3C                          ;80A9ED;
    CMP.B #$08                           ;80A9F0;
    BNE CODE_80A9FE                      ;80A9F2;
    LDA.B #$04                           ;80A9F4;
    STA.B $03                            ;80A9F6;
    LDA.B #$02                           ;80A9F8;
    JSL.L CODE_848F07                    ;80A9FA;

CODE_80A9FE:
    JSL.L CODE_848EEA                    ;80A9FE;
    RTS                                  ;80AA02;

CODE_80AA03:
    LDA.B $0F                            ;80AA03;
    BPL CODE_80AA27                      ;80AA05;
    LDA.B #$04                           ;80AA07;
    STA.B $02                            ;80AA09;
    STZ.B $03                            ;80AA0B;
    REP #$20                             ;80AA0D;
    LDA.W #$0148                         ;80AA0F;
    STA.B $05                            ;80AA12;
    LDA.W #$0056                         ;80AA14;
    STA.B $08                            ;80AA17;
    SEP #$20                             ;80AA19;
    LDA.B #$88                           ;80AA1B;
    JSL.L CODE_8088CD                    ;80AA1D;
    LDA.B #$00                           ;80AA21;
    JSL.L CODE_848F07                    ;80AA23;

CODE_80AA27:
    JSL.L CODE_848EEA                    ;80AA27;
    RTS                                  ;80AA2B;

CODE_80AA2C:
    LDX.B $03                            ;80AA2C;
    JMP.W (PTR16_80AA31,X)               ;80AA2E;

PTR16_80AA31:
    dw CODE_80AA37                       ;80AA31;
    dw CODE_80AA59                       ;80AA33;
    dw CODE_80AA6F                       ;80AA35;

CODE_80AA37:
    BIT.B $0F                            ;80AA37;
    BPL CODE_80AA46                      ;80AA39;
    LDA.B #$02                           ;80AA3B;
    STA.B $03                            ;80AA3D;
    LDA.B #$01                           ;80AA3F;
    JSL.L CODE_848F07                    ;80AA41;
    RTS                                  ;80AA45;

CODE_80AA46:
    BVC CODE_80AA54                      ;80AA46;
    LDA.B #$87                           ;80AA48;
    JSL.L CODE_8088CD                    ;80AA4A;
    LDA.B #$8A                           ;80AA4E;
    JSL.L CODE_8088CD                    ;80AA50;

CODE_80AA54:
    JSL.L CODE_848EEA                    ;80AA54;
    RTS                                  ;80AA58;

CODE_80AA59:
    LDA.W $1F3C                          ;80AA59;
    CMP.B #$09                           ;80AA5C;
    BNE CODE_80AA6A                      ;80AA5E;
    LDA.B #$04                           ;80AA60;
    STA.B $03                            ;80AA62;
    LDA.B #$02                           ;80AA64;
    JSL.L CODE_848F07                    ;80AA66;

CODE_80AA6A:
    JSL.L CODE_848EEA                    ;80AA6A;
    RTS                                  ;80AA6E;

CODE_80AA6F:
    LDA.B $0F                            ;80AA6F;
    BPL CODE_80AA93                      ;80AA71;
    LDA.B #$06                           ;80AA73;
    STA.B $02                            ;80AA75;
    STZ.B $03                            ;80AA77;
    REP #$20                             ;80AA79;
    LDA.W #$0128                         ;80AA7B;
    STA.B $05                            ;80AA7E;
    LDA.W #$006C                         ;80AA80;
    STA.B $08                            ;80AA83;
    SEP #$20                             ;80AA85;
    LDA.B #$88                           ;80AA87;
    JSL.L CODE_8088CD                    ;80AA89;
    LDA.B #$00                           ;80AA8D;
    JSL.L CODE_848F07                    ;80AA8F;

CODE_80AA93:
    JSL.L CODE_848EEA                    ;80AA93;
    RTS                                  ;80AA97;

CODE_80AA98:
    LDX.B $03                            ;80AA98;
    JMP.W (PTR16_80AA9D,X)               ;80AA9A;

PTR16_80AA9D:
    dw CODE_80AAA3                       ;80AA9D;
    dw CODE_80AAC5                       ;80AA9F;
    dw CODE_80AADB                       ;80AAA1;

CODE_80AAA3:
    BIT.B $0F                            ;80AAA3;
    BPL CODE_80AAB2                      ;80AAA5;
    LDA.B #$02                           ;80AAA7;
    STA.B $03                            ;80AAA9;
    LDA.B #$01                           ;80AAAB;
    JSL.L CODE_848F07                    ;80AAAD;
    RTS                                  ;80AAB1;

CODE_80AAB2:
    BVC CODE_80AAC0                      ;80AAB2;
    LDA.B #$87                           ;80AAB4;
    JSL.L CODE_8088CD                    ;80AAB6;
    LDA.B #$8A                           ;80AABA;
    JSL.L CODE_8088CD                    ;80AABC;

CODE_80AAC0:
    JSL.L CODE_848EEA                    ;80AAC0;
    RTS                                  ;80AAC4;

CODE_80AAC5:
    LDA.W $1F3C                          ;80AAC5;
    CMP.B #$0A                           ;80AAC8;
    BNE CODE_80AAD6                      ;80AACA;
    LDA.B #$04                           ;80AACC;
    STA.B $03                            ;80AACE;
    LDA.B #$02                           ;80AAD0;
    JSL.L CODE_848F07                    ;80AAD2;

CODE_80AAD6:
    JSL.L CODE_848EEA                    ;80AAD6;
    RTS                                  ;80AADA;

CODE_80AADB:
    LDA.B $0F                            ;80AADB;
    BPL CODE_80AAFF                      ;80AADD;
    LDA.B #$08                           ;80AADF;
    STA.B $02                            ;80AAE1;
    STZ.B $03                            ;80AAE3;
    REP #$20                             ;80AAE5;
    LDA.W #$015E                         ;80AAE7;
    STA.B $05                            ;80AAEA;
    LDA.W #$00AA                         ;80AAEC;
    STA.B $08                            ;80AAEF;
    SEP #$20                             ;80AAF1;
    LDA.B #$88                           ;80AAF3;
    JSL.L CODE_8088CD                    ;80AAF5;
    LDA.B #$00                           ;80AAF9;
    JSL.L CODE_848F07                    ;80AAFB;

CODE_80AAFF:
    JSL.L CODE_848EEA                    ;80AAFF;
    RTS                                  ;80AB03;

CODE_80AB04:
    LDX.B $03                            ;80AB04;
    JMP.W (PTR16_80AB09,X)               ;80AB06;

PTR16_80AB09:
    dw CODE_80AB0F                       ;80AB09;
    dw CODE_80AB31                       ;80AB0B;
    dw CODE_80AB47                       ;80AB0D;

CODE_80AB0F:
    BIT.B $0F                            ;80AB0F;
    BPL CODE_80AB1E                      ;80AB11;
    LDA.B #$02                           ;80AB13;
    STA.B $03                            ;80AB15;
    LDA.B #$01                           ;80AB17;
    JSL.L CODE_848F07                    ;80AB19;
    RTS                                  ;80AB1D;

CODE_80AB1E:
    BVC CODE_80AB2C                      ;80AB1E;
    LDA.B #$87                           ;80AB20;
    JSL.L CODE_8088CD                    ;80AB22;
    LDA.B #$8A                           ;80AB26;
    JSL.L CODE_8088CD                    ;80AB28;

CODE_80AB2C:
    JSL.L CODE_848EEA                    ;80AB2C;
    RTS                                  ;80AB30;

CODE_80AB31:
    LDA.W $1F3C                          ;80AB31;
    CMP.B #$0B                           ;80AB34;
    BNE CODE_80AB42                      ;80AB36;
    LDA.B #$04                           ;80AB38;
    STA.B $03                            ;80AB3A;
    LDA.B #$02                           ;80AB3C;
    JSL.L CODE_848F07                    ;80AB3E;

CODE_80AB42:
    JSL.L CODE_848EEA                    ;80AB42;
    RTS                                  ;80AB46;

CODE_80AB47:
    LDA.B $0F                            ;80AB47;
    BPL CODE_80AB4F                      ;80AB49;
    LDA.B #$04                           ;80AB4B;
    STA.B $01                            ;80AB4D;

CODE_80AB4F:
    JSL.L CODE_848EEA                    ;80AB4F;
    RTS                                  ;80AB53;

CODE_80AB54:
    JML.L CODE_828398                    ;80AB54;

CODE_80AB58:
    LDX.B $01                            ;80AB58;
    JMP.W (PTR16_80AB5D,X)               ;80AB5A;

PTR16_80AB5D:
    dw CODE_80AB63                       ;80AB5D;
    dw CODE_80AB98                       ;80AB5F;
    dw CODE_80ABAC                       ;80AB61;

CODE_80AB63:
    LDA.B #$02                           ;80AB63;
    STA.B $01                            ;80AB65;
    LDA.L $7F829B                        ;80AB67;
    STA.B $18                            ;80AB6B;
    LDA.L $7F839B                        ;80AB6D;
    STA.B $11                            ;80AB71;
    STZ.B $12                            ;80AB73;
    LDA.B #$A8                           ;80AB75;
    STA.B $16                            ;80AB77;
    LDA.B #$0E                           ;80AB79;
    JSL.L CODE_848F07                    ;80AB7B;
    REP #$20                             ;80AB7F;
    LDX.B $0B                            ;80AB81;
    LDA.W DATA8_868D14,X                 ;80AB83;
    ASL A                                ;80AB86;
    ASL A                                ;80AB87;
    TAX                                  ;80AB88;
    LDA.W DATA8_86EEB7,X                 ;80AB89;
    ASL A                                ;80AB8C;
    ASL A                                ;80AB8D;
    STA.B $1A                            ;80AB8E;
    LDA.W DATA8_86EEB9,X                 ;80AB90;
    ASL A                                ;80AB93;
    ASL A                                ;80AB94;
    STA.B $1C                            ;80AB95;
    RTL                                  ;80AB97;

CODE_80AB98:
    JSL.L CODE_8280B4                    ;80AB98;
    LDA.B $0E                            ;80AB9C;
    BNE CODE_80ABA4                      ;80AB9E;
    LDA.B #$04                           ;80ABA0;
    STA.B $01                            ;80ABA2;

CODE_80ABA4:
    JSL.L CODE_848EEA                    ;80ABA4;
    JML.L CODE_82820A                    ;80ABA8;

CODE_80ABAC:
    JML.L CODE_828398                    ;80ABAC;

CODE_80ABB0:
    PEA.W $0E68                          ;80ABB0;
    PLD                                  ;80ABB3;

CODE_80ABB4:
    INC.W $0B9C                          ;80ABB4;
    LDX.B $01                            ;80ABB7;
    JSR.W (PTR16_80ABCA,X)               ;80ABB9;
    LDA.B $35                            ;80ABBC;
    BNE CODE_80ABC5                      ;80ABBE;
    JSR.W CODE_80AF55                    ;80ABC0;
    BRA CODE_80ABB4                      ;80ABC3;

CODE_80ABC5:
    PEA.W $0000                          ;80ABC5;
    PLD                                  ;80ABC8;
    RTS                                  ;80ABC9;

PTR16_80ABCA:
    dw CODE_80ABD0                       ;80ABCA;
    dw CODE_80ACBA                       ;80ABCC;
    dw CODE_80AF1B                       ;80ABCE;

CODE_80ABD0:
    LDA.B #$02                           ;80ABD0;
    STA.B $01                            ;80ABD2;
    PEA.W $0000                          ;80ABD4;
    PLD                                  ;80ABD7;
    LDA.B #$09                           ;80ABD8;
    STA.W $2105                          ;80ABDA;
    LDA.B #$13                           ;80ABDD;
    STA.W $00C0                          ;80ABDF;
    LDA.B #$04                           ;80ABE2;
    STA.W $1F12                          ;80ABE4;
    STA.W $1F11                          ;80ABE7;
    LDA.B #$27                           ;80ABEA;
    JSR.W CODE_8087B0                    ;80ABEC;
    REP #$30                             ;80ABEF;
    LDY.W #$0170                         ;80ABF1;
    JSL.L CODE_828011                    ;80ABF4;
    SEP #$30                             ;80ABF8;
    LDY.B #$12                           ;80ABFA;
    JSL.L CODE_828011                    ;80ABFC;
    LDY.B #$20                           ;80AC00;
    JSR.W CODE_80B301                    ;80AC02;
    JSR.W CODE_808100                    ;80AC05;
    LDY.B #$54                           ;80AC08;
    JSR.W CODE_80B301                    ;80AC0A;
    JSR.W CODE_808100                    ;80AC0D;
    LDA.W $1F7A                          ;80AC10;
    ASL A                                ;80AC13;
    CLC                                  ;80AC14;
    ADC.B #$56                           ;80AC15;
    TAY                                  ;80AC17;
    JSR.W CODE_80B301                    ;80AC18;
    JSR.W CODE_808100                    ;80AC1B;
    LDA.W $1F7A                          ;80AC1E;
    CLC                                  ;80AC21;
    ADC.B #$1A                           ;80AC22;
    STA.W $1F7A                          ;80AC24;
    JSR.W CODE_80BAD7                    ;80AC27;
    LDA.W $1F7A                          ;80AC2A;
    SEC                                  ;80AC2D;
    SBC.B #$1A                           ;80AC2E;
    STA.W $1F7A                          ;80AC30;
    REP #$20                             ;80AC33;
    LDA.W $1F99                          ;80AC35;
    BIT.W #$0002                         ;80AC38;
    BEQ CODE_80AC59                      ;80AC3B;
    LDA.W #$006A                         ;80AC3D;
    STA.L $7E2556                        ;80AC40;
    LDA.W #$006B                         ;80AC44;
    STA.L $7E255A                        ;80AC47;
    LDA.W #$0068                         ;80AC4B;
    STA.L $7E2576                        ;80AC4E;
    LDA.W #$0069                         ;80AC52;
    STA.L $7E257A                        ;80AC55;

CODE_80AC59:
    STZ.W $1E4D                          ;80AC59;
    STZ.W $1E50                          ;80AC5C;
    STZ.W $1E8D                          ;80AC5F;
    LDA.W #$0200                         ;80AC62;
    STA.W $1E90                          ;80AC65;
    SEP #$20                             ;80AC68;
    INC.W $1E9A                          ;80AC6A;
    JSR.W CODE_80B584                    ;80AC6D;
    JSR.W CODE_80B58D                    ;80AC70;
    INC.W $1E48                          ;80AC73;
    INC.W $1E88                          ;80AC76;
    LDA.B #$04                           ;80AC79;
    STA.W $1E49                          ;80AC7B;
    LDA.B #$0C                           ;80AC7E;
    STA.W $1E89                          ;80AC80;
    STZ.W $00C9                          ;80AC83;
    STZ.W $00CA                          ;80AC86;
    STZ.W $00CB                          ;80AC89;
    STZ.W $00CC                          ;80AC8C;
    STZ.W $00CD                          ;80AC8F;
    STZ.W $1F08                          ;80AC92;
    LDA.W $1F7A                          ;80AC95;
    CLC                                  ;80AC98;
    ADC.B #$1A                           ;80AC99;
    STA.W $1F7A                          ;80AC9B;
    JSR.W CODE_80B08B                    ;80AC9E;

CODE_80ACA1:
    JSR.W CODE_808100                    ;80ACA1;
    LDA.W $0040                          ;80ACA4;
    BNE CODE_80ACA1                      ;80ACA7;
    LDA.W $1F7A                          ;80ACA9;
    CLC                                  ;80ACAC;
    ADC.B #$E6                           ;80ACAD;
    STA.W $1F7A                          ;80ACAF;
    JSR.W CODE_808973                    ;80ACB2;
    PEA.W $0E68                          ;80ACB5;
    PLD                                  ;80ACB8;
    RTS                                  ;80ACB9;

CODE_80ACBA:
    REP #$20                             ;80ACBA;
    LDA.W $1E4D                          ;80ACBC;
    STA.W $1E6A                          ;80ACBF;
    LDA.W $1E50                          ;80ACC2;
    STA.W $1E6C                          ;80ACC5;
    LDA.W $1E8D                          ;80ACC8;
    STA.W $1EAA                          ;80ACCB;
    LDA.W $1E90                          ;80ACCE;
    STA.W $1EAC                          ;80ACD1;
    SEP #$20                             ;80ACD4;
    LDX.B $02                            ;80ACD6;
    JSR.W (PTR16_80ACF2,X)               ;80ACD8;
    LDA.W $00A7                          ;80ACDB;
    ORA.W $00A8                          ;80ACDE;
    BEQ CODE_80ACEF                      ;80ACE1;
    LDA.B #$04                           ;80ACE3;
    STA.B $01                            ;80ACE5;
    LDY.B #$04                           ;80ACE7;
    LDA.B #$F6                           ;80ACE9;
    JSL.L CODE_80887F                    ;80ACEB;

CODE_80ACEF:
    JMP.W CODE_80AF5F                    ;80ACEF;

PTR16_80ACF2:
    dw CODE_80AD12                       ;80ACF2;
    dw CODE_80AD2B                       ;80ACF4;
    dw CODE_80AD56                       ;80ACF6;
    dw CODE_80AD6D                       ;80ACF8;
    dw CODE_80AD88                       ;80ACFA;
    dw CODE_80ADAF                       ;80ACFC;
    dw CODE_80ADD0                       ;80ACFE;
    dw CODE_80ADE8                       ;80AD00;
    dw CODE_80AE47                       ;80AD02;
    dw CODE_80AE65                       ;80AD04;
    dw CODE_80AE85                       ;80AD06;
    dw CODE_80AEAC                       ;80AD08;
    dw CODE_80AEE9                       ;80AD0A;
    dw CODE_80AF10                       ;80AD0C;
    dw CODE_80AE08                       ;80AD0E;
    dw CODE_80AE38                       ;80AD10;

CODE_80AD12:
    LDA.B #$02                           ;80AD12;
    STA.B $02                            ;80AD14;
    LDA.B #$08                           ;80AD16;
    STA.B $37                            ;80AD18;
    STZ.B $36                            ;80AD1A;
    REP #$20                             ;80AD1C;
    LDA.W #$0800                         ;80AD1E;
    STA.B $1A                            ;80AD21;
    LDA.W #$F800                         ;80AD23;
    STA.B $1C                            ;80AD26;
    SEP #$20                             ;80AD28;
    RTS                                  ;80AD2A;

CODE_80AD2B:
    JSR.W CODE_80AF2C                    ;80AD2B;
    REP #$20                             ;80AD2E;
    LDA.W #$0100                         ;80AD30;
    CMP.W $1E90                          ;80AD33;
    BCC CODE_80AD53                      ;80AD36;
    STA.W $1E50                          ;80AD38;
    STA.W $1E90                          ;80AD3B;
    SEP #$20                             ;80AD3E;
    LDA.B #$04                           ;80AD40;
    STA.B $02                            ;80AD42;
    LDA.B #$E0                           ;80AD44;
    STA.B $33                            ;80AD46;
    LDA.B #$37                           ;80AD48;
    STA.W $00CA                          ;80AD4A;
    LDA.B #$2D                           ;80AD4D;
    JSL.L CODE_8088CD                    ;80AD4F;

CODE_80AD53:
    SEP #$20                             ;80AD53;
    RTS                                  ;80AD55;

CODE_80AD56:
    LDA.B $33                            ;80AD56;
    INC A                                ;80AD58;
    STA.B $33                            ;80AD59;
    CMP.B #$FF                           ;80AD5B;
    BNE CODE_80AD63                      ;80AD5D;
    LDX.B #$06                           ;80AD5F;
    STX.B $02                            ;80AD61;

CODE_80AD63:
    STA.W $00CB                          ;80AD63;
    STA.W $00CC                          ;80AD66;
    STA.W $00CD                          ;80AD69;
    RTS                                  ;80AD6C;

CODE_80AD6D:
    REP #$30                             ;80AD6D;
    LDA.W #$0000                         ;80AD6F;
    STA.W $1E4D                          ;80AD72;
    LDA.W #$0200                         ;80AD75;
    STA.W $1E8D                          ;80AD78;
    SEP #$30                             ;80AD7B;
    JSL.L CODE_80E02E                    ;80AD7D;
    LDA.B #$08                           ;80AD81;
    STA.B $02                            ;80AD83;
    JMP.W CODE_80AF80                    ;80AD85;

CODE_80AD88:
    LDA.W $1F27                          ;80AD88;
    BNE CODE_80ADA1                      ;80AD8B;
    LDA.B #$0A                           ;80AD8D;
    STA.B $02                            ;80AD8F;
    LDA.B #$17                           ;80AD91;
    STA.W $00C0                          ;80AD93;
    LDA.B #$00                           ;80AD96;
    STA.W $1E4D                          ;80AD98;
    LDA.B #$01                           ;80AD9B;
    STA.W $1E4E                          ;80AD9D;
    RTS                                  ;80ADA0;

CODE_80ADA1:
    REP #$21                             ;80ADA1;
    LDA.W $1E4D                          ;80ADA3;
    ADC.W #$0010                         ;80ADA6;
    STA.W $1E4D                          ;80ADA9;
    SEP #$20                             ;80ADAC;
    RTS                                  ;80ADAE;

CODE_80ADAF:
    LDA.B $33                            ;80ADAF;
    DEC A                                ;80ADB1;
    STA.B $33                            ;80ADB2;
    CMP.B #$E0                           ;80ADB4;
    BNE CODE_80ADC4                      ;80ADB6;
    LDX.B #$0C                           ;80ADB8;
    STX.B $02                            ;80ADBA;
    PHA                                  ;80ADBC;
    LDA.B #$C2                           ;80ADBD;
    JSL.L CODE_80E9EE                    ;80ADBF;
    PLA                                  ;80ADC3;

CODE_80ADC4:
    STA.W $00CB                          ;80ADC4;
    STA.W $00CC                          ;80ADC7;
    STA.W $00CD                          ;80ADCA;
    JMP.W CODE_80B056                    ;80ADCD;

CODE_80ADD0:
    LDA.W $0060                          ;80ADD0;
    BNE CODE_80ADE5                      ;80ADD3;
    LDA.B #$0E                           ;80ADD5;
    STA.B $02                            ;80ADD7;
    LDA.W $1F7A                          ;80ADD9;
    CLC                                  ;80ADDC;
    ADC.B #$02                           ;80ADDD;
    ORA.B #$C0                           ;80ADDF;
    JSL.L CODE_80E9EE                    ;80ADE1;

CODE_80ADE5:
    JMP.W CODE_80B056                    ;80ADE5;

CODE_80ADE8:
    LDA.W $0060                          ;80ADE8;
    BNE CODE_80AE05                      ;80ADEB;
    LDA.B #$1C                           ;80ADED;
    STA.B $02                            ;80ADEF;
    LDA.B #$04                           ;80ADF1;
    STA.B $33                            ;80ADF3;
    LDA.B #$1F                           ;80ADF5;
    STA.W $00CB                          ;80ADF7;
    STA.W $00CC                          ;80ADFA;
    STA.W $00CD                          ;80ADFD;
    LDA.B #$37                           ;80AE00;
    STA.W $00CA                          ;80AE02;

CODE_80AE05:
    JMP.W CODE_80B056                    ;80AE05;

CODE_80AE08:
    DEC.B $33                            ;80AE08;
    BNE CODE_80AE35                      ;80AE0A;
    LDA.B #$1E                           ;80AE0C;
    STA.B $02                            ;80AE0E;
    REP #$31                             ;80AE10;
    LDA.W $1F7A                          ;80AE12;
    AND.W #$00FF                         ;80AE15;
    ASL A                                ;80AE18;
    ADC.W #$01AE                         ;80AE19;
    TAY                                  ;80AE1C;
    JSL.L CODE_828011                    ;80AE1D;
    SEP #$30                             ;80AE21;
    LDA.B #$3C                           ;80AE23;
    STA.B $33                            ;80AE25;
    STZ.W $00CB                          ;80AE27;
    STZ.W $00CC                          ;80AE2A;
    STZ.W $00CD                          ;80AE2D;
    LDA.B #$B5                           ;80AE30;
    STA.W $00CA                          ;80AE32;

CODE_80AE35:
    JMP.W CODE_80B056                    ;80AE35;

CODE_80AE38:
    DEC.B $33                            ;80AE38;
    BNE CODE_80AE44                      ;80AE3A;
    LDA.B #$10                           ;80AE3C;
    STA.B $02                            ;80AE3E;
    LDA.B #$E0                           ;80AE40;
    STA.B $33                            ;80AE42;

CODE_80AE44:
    JMP.W CODE_80B056                    ;80AE44;

CODE_80AE47:
    LDA.B $33                            ;80AE47;
    INC A                                ;80AE49;
    STA.B $33                            ;80AE4A;
    CMP.B #$F0                           ;80AE4C;
    BNE CODE_80AE59                      ;80AE4E;
    LDX.B #$13                           ;80AE50;
    STX.W $00C0                          ;80AE52;
    LDX.B #$12                           ;80AE55;
    STX.B $02                            ;80AE57;

CODE_80AE59:
    STA.W $00CB                          ;80AE59;
    STA.W $00CC                          ;80AE5C;
    STA.W $00CD                          ;80AE5F;
    JMP.W CODE_80B056                    ;80AE62;

CODE_80AE65:
    REP #$21                             ;80AE65;
    LDA.W $1E8D                          ;80AE67;
    ADC.W #$FFF0                         ;80AE6A;
    STA.W $1E8D                          ;80AE6D;
    CMP.W #$0100                         ;80AE70;
    BCS CODE_80AE82                      ;80AE73;
    LDX.B #$14                           ;80AE75;
    STX.B $02                            ;80AE77;
    LDA.W #$0100                         ;80AE79;
    STA.W $1E8D                          ;80AE7C;
    JSR.W CODE_80AFD6                    ;80AE7F;

CODE_80AE82:
    SEP #$20                             ;80AE82;
    RTS                                  ;80AE84;

CODE_80AE85:
    REP #$20                             ;80AE85;
    JSL.L CODE_81812E                    ;80AE87;
    LDA.W #$0180                         ;80AE8B;
    CMP.W $0BB0                          ;80AE8E;
    BCS CODE_80AEA9                      ;80AE91;
    STA.W $0BB0                          ;80AE93;
    SEP #$20                             ;80AE96;
    LDA.B #$04                           ;80AE98;
    STA.W $0BD3                          ;80AE9A;
    LDA.B #$16                           ;80AE9D;
    STA.B $02                            ;80AE9F;
    LDA.B #$14                           ;80AEA1;
    STA.B $33                            ;80AEA3;
    LDA.B #$F0                           ;80AEA5;
    STA.B $34                            ;80AEA7;

CODE_80AEA9:
    SEP #$20                             ;80AEA9;
    RTS                                  ;80AEAB;

CODE_80AEAC:
    DEC.B $34                            ;80AEAC;
    BNE CODE_80AEC5                      ;80AEAE;
    LDA.B #$18                           ;80AEB0;
    STA.B $02                            ;80AEB2;
    LDA.B #$34                           ;80AEB4;
    STA.W $0BAA                          ;80AEB6;
    STZ.W $0BAB                          ;80AEB9;
    LDY.B #$02                           ;80AEBC;
    LDA.B #$F6                           ;80AEBE;
    JSL.L CODE_80887F                    ;80AEC0;
    RTS                                  ;80AEC4;

CODE_80AEC5:
    STZ.W $0BE3                          ;80AEC5;
    DEC.B $33                            ;80AEC8;
    BNE CODE_80AEE4                      ;80AECA;
    LDA.B $34                            ;80AECC;
    CMP.B #$78                           ;80AECE;
    BCC CODE_80AEE4                      ;80AED0;
    LDA.B #$14                           ;80AED2;
    LDX.W $1F7A                          ;80AED4;
    CPX.B #$04                           ;80AED7;
    BNE CODE_80AEDD                      ;80AED9;
    LDA.B #$02                           ;80AEDB;

CODE_80AEDD:
    STA.B $33                            ;80AEDD;
    LDA.B #$40                           ;80AEDF;
    STA.W $0BE3                          ;80AEE1;

CODE_80AEE4:
    JSL.L CODE_81812E                    ;80AEE4;
    RTS                                  ;80AEE8;

CODE_80AEE9:
    JSL.L CODE_81812E                    ;80AEE9;
    REP #$20                             ;80AEED;
    LDA.W $0BB0                          ;80AEEF;
    CMP.W #$0100                         ;80AEF2;
    SEP #$20                             ;80AEF5;
    BCS CODE_80AF0F                      ;80AEF7;
    LDA.B #$1A                           ;80AEF9;
    STA.B $02                            ;80AEFB;
    LDA.B #$20                           ;80AEFD;
    STA.B $34                            ;80AEFF;
    REP #$20                             ;80AF01;
    LDA.W #$0800                         ;80AF03;
    STA.B $1A                            ;80AF06;
    LDA.W #$F800                         ;80AF08;
    STA.B $1C                            ;80AF0B;
    SEP #$20                             ;80AF0D;

CODE_80AF0F:
    RTS                                  ;80AF0F;

CODE_80AF10:
    DEC.B $34                            ;80AF10;
    BNE CODE_80AF18                      ;80AF12;
    LDA.B #$04                           ;80AF14;
    STA.B $01                            ;80AF16;

CODE_80AF18:
    JMP.W CODE_80AF2C                    ;80AF18;

CODE_80AF1B:
    INC.B $35                            ;80AF1B;
    PHD                                  ;80AF1D;
    PEA.W $0000                          ;80AF1E;
    PLD                                  ;80AF21;
    JSR.W CODE_808995                    ;80AF22;
    LDX.B #$30                           ;80AF25;
    JSR.W CODE_808147                    ;80AF27;
    PLD                                  ;80AF2A;
    RTS                                  ;80AF2B;

CODE_80AF2C:
    REP #$21                             ;80AF2C;
    LDA.W $1E4F                          ;80AF2E;
    ADC.B $1A                            ;80AF31;
    STA.W $1E4F                          ;80AF33;
    SEP #$20                             ;80AF36;
    LDA.W $1E51                          ;80AF38;
    ADC.B #$00                           ;80AF3B;
    STA.W $1E51                          ;80AF3D;
    REP #$21                             ;80AF40;
    LDA.W $1E8F                          ;80AF42;
    ADC.B $1C                            ;80AF45;
    STA.W $1E8F                          ;80AF47;
    SEP #$20                             ;80AF4A;
    LDA.W $1E91                          ;80AF4C;
    ADC.B #$FF                           ;80AF4F;
    STA.W $1E91                          ;80AF51;
    RTS                                  ;80AF54;

CODE_80AF55:
    PHD                                  ;80AF55;
    PEA.W $0000                          ;80AF56;
    PLD                                  ;80AF59;
    JSR.W CODE_808100                    ;80AF5A;
    PLD                                  ;80AF5D;
    RTS                                  ;80AF5E;

CODE_80AF5F:
    PHP                                  ;80AF5F;
    PHD                                  ;80AF60;
    JSR.W CODE_80D3F3                    ;80AF61;
    JSR.W CODE_80D35B                    ;80AF64;
    JSR.W CODE_80DDF1                    ;80AF67;
    JSR.W CODE_80DEF1                    ;80AF6A;
    JSR.W CODE_80D2D3                    ;80AF6D;
    JSR.W CODE_80D450                    ;80AF70;
    PEA.W $0000                          ;80AF73;
    PLD                                  ;80AF76;
    JSR.W CODE_80D585                    ;80AF77;
    PLD                                  ;80AF7A;
    PLP                                  ;80AF7B;
    STZ.W $1F0D                          ;80AF7C;
    RTS                                  ;80AF7F;

CODE_80AF80:
    REP #$10                             ;80AF80;
    LDA.W $1F99                          ;80AF82;
    AND.B #$0F                           ;80AF85;
    STA.W $0000                          ;80AF87;
    LDY.W #$0003                         ;80AF8A;
    LDX.W #$1928                         ;80AF8D;

CODE_80AF90:
    LSR.W $0000                          ;80AF90;
    BCC CODE_80AFC6                      ;80AF93;
    INC.W $0000,X                        ;80AF95;
    LDA.B #$10                           ;80AF98;
    STA.W $000A,X                        ;80AF9A;
    LDA.B #$06                           ;80AF9D;
    STA.W $0002,X                        ;80AF9F;
    TYA                                  ;80AFA2;
    CLC                                  ;80AFA3;
    ADC.B #$21                           ;80AFA4;
    STA.W $000B,X                        ;80AFA6;
    LDA.B #$20                           ;80AFA9;
    STA.W $0011,X                        ;80AFAB;
    REP #$20                             ;80AFAE;
    LDA.W #$0148                         ;80AFB0;
    STA.W $0005,X                        ;80AFB3;
    LDA.W #$016E                         ;80AFB6;
    CPY.W #$0000                         ;80AFB9;
    BNE CODE_80AFC1                      ;80AFBC;
    LDA.W #$019E                         ;80AFBE;

CODE_80AFC1:
    STA.W $0008,X                        ;80AFC1;
    SEP #$20                             ;80AFC4;

CODE_80AFC6:
    REP #$20                             ;80AFC6;
    TXA                                  ;80AFC8;
    CLC                                  ;80AFC9;
    ADC.W #$0020                         ;80AFCA;
    TAX                                  ;80AFCD;
    SEP #$20                             ;80AFCE;
    DEY                                  ;80AFD0;
    BPL CODE_80AF90                      ;80AFD1;
    SEP #$10                             ;80AFD3;
    RTS                                  ;80AFD5;

CODE_80AFD6:
    SEP #$20                             ;80AFD6;
    LDA.W $1F7A                          ;80AFD8;
    STA.B $33                            ;80AFDB;
    STZ.W $1F7A                          ;80AFDD;
    STZ.W $0BA9                          ;80AFE0;
    LDA.B #$10                           ;80AFE3;
    TSB.W $0C26                          ;80AFE5;
    JSL.L CODE_81812E                    ;80AFE8;
    LDA.B #$40                           ;80AFEC;
    STA.W $0C11                          ;80AFEE;
    ORA.B #$32                           ;80AFF1;
    STA.W $0BB9                          ;80AFF3;
    STZ.W $0BD7                          ;80AFF6;
    LDA.B #$01                           ;80AFF9;
    STA.W $0C0C                          ;80AFFB;
    LDA.B #$10                           ;80AFFE;
    STA.W $0BCF                          ;80B000;
    LDA.B $33                            ;80B003;
    ASL A                                ;80B005;
    STA.W $0BDB                          ;80B006;
    TAX                                  ;80B009;
    LDA.B #$FF                           ;80B00A;
    STA.W $1F86,X                        ;80B00C;
    LDA.B $33                            ;80B00F;
    STA.W $1F7A                          ;80B011;
    LDA.W $0BDB                          ;80B014;
    CLC                                  ;80B017;
    ADC.B #$3E                           ;80B018;
    TAY                                  ;80B01A;
    JSL.L CODE_808A7B                    ;80B01B;
    LDA.W $0BDB                          ;80B01F;
    LSR A                                ;80B022;
    TAX                                  ;80B023;
    LDA.W DATA8_86BAB8,X                 ;80B024;
    STA.W $0C0F                          ;80B027;
    LDX.B #$30                           ;80B02A;
    LDA.W $0BDB                          ;80B02C;
    CLC                                  ;80B02F;
    ADC.B #$40                           ;80B030;
    TAY                                  ;80B032;
    JSL.L CODE_828000                    ;80B033;
    REP #$31                             ;80B037;
    LDA.W $0BDB                          ;80B039;
    AND.W #$00FF                         ;80B03C;
    ADC.W #$0100                         ;80B03F;
    TAY                                  ;80B042;
    JSL.L CODE_828011                    ;80B043;
    SEP #$10                             ;80B047;
    LDA.W #$0140                         ;80B049;
    STA.W $0BAD                          ;80B04C;
    LDA.W #$0100                         ;80B04F;
    STA.W $0BB0                          ;80B052;
    RTS                                  ;80B055;

CODE_80B056:
    DEC.B $37                            ;80B056;
    BNE CODE_80B086                      ;80B058;
    LDA.B #$08                           ;80B05A;
    STA.B $37                            ;80B05C;
    LDA.B $36                            ;80B05E;
    EOR.B #$80                           ;80B060;
    STA.B $36                            ;80B062;
    BPL CODE_80B07B                      ;80B064;
    REP #$31                             ;80B066;
    LDA.W $1F7A                          ;80B068;
    AND.W #$00FF                         ;80B06B;
    ASL A                                ;80B06E;
    ADC.W #$01C0                         ;80B06F;
    TAY                                  ;80B072;
    JSL.L CODE_828011                    ;80B073;
    SEP #$30                             ;80B077;
    BRA CODE_80B086                      ;80B079;

CODE_80B07B:
    REP #$10                             ;80B07B;
    LDY.W #$01C0                         ;80B07D;
    JSL.L CODE_828011                    ;80B080;
    SEP #$10                             ;80B084;

CODE_80B086:
    RTS                                  ;80B086;

CODE_80B087:
    JSR.W CODE_80B08B                    ;80B087;
    RTL                                  ;80B08A;

CODE_80B08B:
    PHX                                  ;80B08B;
    PHY                                  ;80B08C;
    PHP                                  ;80B08D;
    PHD                                  ;80B08E;
    REP #$20                             ;80B08F;
    SEP #$10                             ;80B091;
    LDA.W #$0000                         ;80B093;
    TCD                                  ;80B096;
    LDA.W #$B0A7                         ;80B097;
    LDX.B #$10                           ;80B09A;
    STX.W $0040                          ;80B09C;
    JSR.W CODE_80813B                    ;80B09F;
    PLD                                  ;80B0A2;
    PLP                                  ;80B0A3;
    PLY                                  ;80B0A4;
    PLX                                  ;80B0A5;
    RTS                                  ;80B0A6;
    REP #$30                             ;80B0A7;
    LDA.W #$0000                         ;80B0A9;
    TCD                                  ;80B0AC;
    STZ.B $F8                            ;80B0AD;
    STZ.B $48                            ;80B0AF;
    STZ.B $49                            ;80B0B1;
    LDA.W $1F08                          ;80B0B3;
    AND.W #$00FF                         ;80B0B6;
    ASL A                                ;80B0B9;
    STA.B $00                            ;80B0BA;
    LDA.W $1F7A                          ;80B0BC;
    AND.W #$00FF                         ;80B0BF;
    ASL A                                ;80B0C2;
    TAX                                  ;80B0C3;
    LDA.W DATA8_86ACEE,X                 ;80B0C4;
    CLC                                  ;80B0C7;
    ADC.B $00                            ;80B0C8;
    TAX                                  ;80B0CA;
    LDA.W DATA8_86ACEE,X                 ;80B0CB;
    TAX                                  ;80B0CE;
    SEP #$20                             ;80B0CF;

CODE_80B0D1:
    LDA.W DATA8_86ACEE,X                 ;80B0D1;
    CMP.B #$FF                           ;80B0D4;
    BEQ CODE_80B121                      ;80B0D6;
    STA.B $98                            ;80B0D8;
    JSR.W CODE_80B252                    ;80B0DA;

CODE_80B0DD:
    JSR.W CODE_808100                    ;80B0DD;
    LDA.B $F4                            ;80B0E0;
    BNE CODE_80B0DD                      ;80B0E2;
    LDA.W DATA8_86ACEF,X                 ;80B0E4;
    STA.B $48                            ;80B0E7;
    LDA.W DATA8_86ACF0,X                 ;80B0E9;
    STA.B $49                            ;80B0EC;
    JSR.W CODE_80B171                    ;80B0EE;
    LDA.W DATA8_86ACF2,X                 ;80B0F1;
    XBA                                  ;80B0F4;
    LDA.W DATA8_86ACF1,X                 ;80B0F5;
    TAY                                  ;80B0F8;
    PHX                                  ;80B0F9;
    LDA.W DATA8_86ACF3,X                 ;80B0FA;
    TAX                                  ;80B0FD;
    LSR A                                ;80B0FE;
    LSR A                                ;80B0FF;
    LSR A                                ;80B100;
    TSB.B $4A                            ;80B101;
    JSL.L CODE_828000                    ;80B103;
    LDA.B #$00                           ;80B107;
    XBA                                  ;80B109;
    LDA.B $98                            ;80B10A;
    TAX                                  ;80B10C;
    LDA.B $4A                            ;80B10D;
    ORA.B #$20                           ;80B10F;
    STA.L $7F8300,X                      ;80B111;
    PLX                                  ;80B115;
    INX                                  ;80B116;
    INX                                  ;80B117;
    INX                                  ;80B118;
    INX                                  ;80B119;
    INX                                  ;80B11A;
    INX                                  ;80B11B;
    JSR.W CODE_808100                    ;80B11C;
    BRA CODE_80B0D1                      ;80B11F;

CODE_80B121:
    LDA.B #$04                           ;80B121;
    STA.L $7F830A                        ;80B123;
    STZ.W $0040                          ;80B127;
    JMP.W CODE_8080F8                    ;80B12A;

CODE_80B12D:
    PHP                                  ;80B12D;
    REP #$30                             ;80B12E;
    LDX.W #$03FE                         ;80B130;
    LDA.W #$0000                         ;80B133;

CODE_80B136:
    STA.L $7F8000,X                      ;80B136;
    DEX                                  ;80B13A;
    DEX                                  ;80B13B;
    BPL CODE_80B136                      ;80B13C;
    PLP                                  ;80B13E;
    RTS                                  ;80B13F;
    LDX.W #$00FE                         ;80B140;
    LDA.W #$0000                         ;80B143;

CODE_80B146:
    STA.L $7F8200,X                      ;80B146;
    DEX                                  ;80B14A;
    DEX                                  ;80B14B;
    BPL CODE_80B146                      ;80B14C;
    RTS                                  ;80B14E;
    LDX.W #$00FE                         ;80B14F;
    LDA.W #$0000                         ;80B152;

CODE_80B155:
    STA.L $7F8300,X                      ;80B155;
    DEX                                  ;80B159;
    DEX                                  ;80B15A;
    BPL CODE_80B155                      ;80B15B;
    RTS                                  ;80B15D;
    LDX.W #$01FE                         ;80B15E;
    LDA.W #$0000                         ;80B161;

CODE_80B164:
    STA.L $7F8000,X                      ;80B164;
    DEX                                  ;80B168;
    DEX                                  ;80B169;
    BPL CODE_80B164                      ;80B16A;
    RTS                                  ;80B16C;
    JSR.W CODE_80B171                    ;80B16D;
    RTL                                  ;80B170;

CODE_80B171:
    PHX                                  ;80B171;
    PHY                                  ;80B172;
    PHD                                  ;80B173;
    REP #$20                             ;80B174;
    LDA.W #$0000                         ;80B176;
    TCD                                  ;80B179;
    LDA.B $98                            ;80B17A;
    AND.W #$00FF                         ;80B17C;
    ASL A                                ;80B17F;
    TAX                                  ;80B180;
    LDA.L $7F8000,X                      ;80B181;
    STA.B $ED                            ;80B185;
    LDA.W DATA8_86F1B7,X                 ;80B187;
    CLC                                  ;80B18A;
    ADC.W #$F1B7                         ;80B18B;
    TAY                                  ;80B18E;
    LDA.B $A3                            ;80B18F;
    AND.W #$00FF                         ;80B191;
    TAX                                  ;80B194;
    STZ.B $EF                            ;80B195;
    SEP #$20                             ;80B197;
    LDA.W $0000,Y                        ;80B199;
    BNE CODE_80B1A1                      ;80B19C;
    JMP.W CODE_80B233                    ;80B19E;

CODE_80B1A1:
    LDA.W $1F25                          ;80B1A1;
    CMP.B #$20                           ;80B1A4;
    BCC CODE_80B1B3                      ;80B1A6;
    JSR.W CODE_808100                    ;80B1A8;
    LDA.B #$00                           ;80B1AB;
    XBA                                  ;80B1AD;
    LDA.B $A3                            ;80B1AE;
    TAX                                  ;80B1B0;
    BRA CODE_80B1A1                      ;80B1B1;

CODE_80B1B3:
    LDA.W $0000,Y                        ;80B1B3;
    CMP.B #$FF                           ;80B1B6;
    BNE CODE_80B1CB                      ;80B1B8;

CODE_80B1BA:
    JSR.W CODE_808100                    ;80B1BA;
    LDA.W $1F25                          ;80B1BD;
    CMP.B #$20                           ;80B1C0;
    BCS CODE_80B1BA                      ;80B1C2;
    LDA.B #$00                           ;80B1C4;
    XBA                                  ;80B1C6;
    LDA.B $A3                            ;80B1C7;
    TAX                                  ;80B1C9;
    INY                                  ;80B1CA;

CODE_80B1CB:
    LDA.B #$80                           ;80B1CB;
    STA.W $0500,X                        ;80B1CD;
    LDA.W $0000,Y                        ;80B1D0;
    LSR A                                ;80B1D3;
    CLC                                  ;80B1D4;
    ADC.W $1F25                          ;80B1D5;
    STA.W $1F25                          ;80B1D8;
    LDA.W $0000,Y                        ;80B1DB;
    REP #$20                             ;80B1DE;
    AND.W #$00FF                         ;80B1E0;
    ASL A                                ;80B1E3;
    ASL A                                ;80B1E4;
    ASL A                                ;80B1E5;
    ASL A                                ;80B1E6;
    STA.W $0503,X                        ;80B1E7;
    STA.B $00                            ;80B1EA;
    LDA.B $ED                            ;80B1EC;
    CLC                                  ;80B1EE;
    ADC.B $EF                            ;80B1EF;
    STA.W $0505,X                        ;80B1F1;
    LDA.B $EF                            ;80B1F4;
    CLC                                  ;80B1F6;
    ADC.B $00                            ;80B1F7;
    STA.B $EF                            ;80B1F9;
    SEP #$20                             ;80B1FB;
    LDA.B #$7F                           ;80B1FD;
    STA.W $0507,X                        ;80B1FF;
    LDA.B $48                            ;80B202;
    STA.W $0501,X                        ;80B204;
    LDA.W $0001,Y                        ;80B207;
    BMI CODE_80B224                      ;80B20A;
    AND.B #$7F                           ;80B20C;
    CLC                                  ;80B20E;
    ADC.B $49                            ;80B20F;
    STA.W $0502,X                        ;80B211;
    REP #$21                             ;80B214;
    INY                                  ;80B216;
    INY                                  ;80B217;
    TXA                                  ;80B218;
    ADC.W #$0008                         ;80B219;
    TAX                                  ;80B21C;
    SEP #$20                             ;80B21D;
    STA.B $A3                            ;80B21F;
    JMP.W CODE_80B1A1                    ;80B221;

CODE_80B224:
    SEP #$20                             ;80B224;
    AND.B #$7F                           ;80B226;
    CLC                                  ;80B228;
    ADC.B $49                            ;80B229;
    STA.W $0502,X                        ;80B22B;
    TXA                                  ;80B22E;
    ADC.B #$08                           ;80B22F;
    STA.B $A3                            ;80B231;

CODE_80B233:
    REP #$20                             ;80B233;
    LDA.B $98                            ;80B235;
    AND.W #$00FF                         ;80B237;
    TAX                                  ;80B23A;
    LDA.B $48                            ;80B23B;
    LSR A                                ;80B23D;
    LSR A                                ;80B23E;
    LSR A                                ;80B23F;
    LSR A                                ;80B240;
    SEP #$20                             ;80B241;
    STA.L $7F8200,X                      ;80B243;
    XBA                                  ;80B247;
    STA.B $4A                            ;80B248;
    PLD                                  ;80B24A;
    PLY                                  ;80B24B;
    PLX                                  ;80B24C;
    RTS                                  ;80B24D;
    JSR.W CODE_80B252                    ;80B24E;
    RTL                                  ;80B251;

CODE_80B252:
    PHX                                  ;80B252;
    PHY                                  ;80B253;
    PHP                                  ;80B254;
    PHD                                  ;80B255;
    REP #$20                             ;80B256;
    SEP #$10                             ;80B258;
    LDA.W #$0000                         ;80B25A;
    TCD                                  ;80B25D;
    LDA.W #$B271                         ;80B25E;
    LDX.B #$60                           ;80B261;
    JSR.W CODE_80813B                    ;80B263;
    SEP #$20                             ;80B266;
    LDA.B #$01                           ;80B268;
    STA.B $F4                            ;80B26A;
    PLD                                  ;80B26C;
    PLP                                  ;80B26D;
    PLY                                  ;80B26E;
    PLX                                  ;80B26F;
    RTS                                  ;80B270;
    REP #$30                             ;80B271;
    LDA.W #$0000                         ;80B273;
    TCD                                  ;80B276;
    LDA.B $98                            ;80B277;
    AND.W #$00FF                         ;80B279;
    STA.B $00                            ;80B27C;
    ASL A                                ;80B27E;
    TAX                                  ;80B27F;
    ASL A                                ;80B280;
    CLC                                  ;80B281;
    ADC.B $00                            ;80B282;
    TAY                                  ;80B284;
    LDA.B $F8                            ;80B285;
    STA.L $7F8000,X                      ;80B287;
    LDA.W DATA16_86F6F7,Y                ;80B28B;
    ADC.W #$0007                         ;80B28E;
    LSR A                                ;80B291;
    LSR A                                ;80B292;
    LSR A                                ;80B293;
    STA.B $FA                            ;80B294;
    STZ.B $F5                            ;80B296;
    SEP #$20                             ;80B298;
    LDA.W PTR24_86F6FB,Y                 ;80B29A;
    STA.B $F7                            ;80B29D;
    LDX.W PTR24_86F6F9,Y                 ;80B29F;
    TXY                                  ;80B2A2;
    LDX.B $F8                            ;80B2A3;

CODE_80B2A5:
    LDA.B [$F5],Y                        ;80B2A5;
    STA.B $00                            ;80B2A7;
    INY                                  ;80B2A9;
    BNE CODE_80B2B1                      ;80B2AA;
    LDY.W #$8000                         ;80B2AC;
    INC.B $F7                            ;80B2AF;

CODE_80B2B1:
    LDA.B [$F5],Y                        ;80B2B1;
    STA.B $01                            ;80B2B3;
    INY                                  ;80B2B5;
    BNE CODE_80B2BD                      ;80B2B6;
    LDY.W #$8000                         ;80B2B8;
    INC.B $F7                            ;80B2BB;

CODE_80B2BD:
    LDA.B #$08                           ;80B2BD;
    STA.B $02                            ;80B2BF;

CODE_80B2C1:
    ASL.B $00                            ;80B2C1;
    BCS CODE_80B2C9                      ;80B2C3;
    LDA.B $01                            ;80B2C5;
    BRA CODE_80B2D3                      ;80B2C7;

CODE_80B2C9:
    LDA.B [$F5],Y                        ;80B2C9;
    INY                                  ;80B2CB;
    BNE CODE_80B2D3                      ;80B2CC;
    LDY.W #$8000                         ;80B2CE;
    INC.B $F7                            ;80B2D1;

CODE_80B2D3:
    STA.L $7F0000,X                      ;80B2D3;
    INX                                  ;80B2D7;
    DEC.B $02                            ;80B2D8;
    BNE CODE_80B2C1                      ;80B2DA;
    LDA.B $FA                            ;80B2DC;
    AND.B #$1F                           ;80B2DE;
    BNE CODE_80B2ED                      ;80B2E0;
    PHX                                  ;80B2E2;
    PHY                                  ;80B2E3;
    PHP                                  ;80B2E4;
    PHB                                  ;80B2E5;
    JSR.W CODE_808121                    ;80B2E6;
    PLB                                  ;80B2E9;
    PLP                                  ;80B2EA;
    PLY                                  ;80B2EB;
    PLX                                  ;80B2EC;

CODE_80B2ED:
    REP #$20                             ;80B2ED;
    DEC.B $FA                            ;80B2EF;
    SEP #$20                             ;80B2F1;
    BNE CODE_80B2A5                      ;80B2F3;
    CPX.W #$8000                         ;80B2F5;

CODE_80B2F8:
    BCS CODE_80B2F8                      ;80B2F8;
    STX.B $F8                            ;80B2FA;
    STZ.B $F4                            ;80B2FC;
    JMP.W CODE_8080F8                    ;80B2FE;

CODE_80B301:
    REP #$20                             ;80B301;
    STZ.B $F8                            ;80B303;
    LDA.W PTR16_86F56F,Y                 ;80B305;
    STA.B $10                            ;80B308;
    LDY.B #$00                           ;80B30A;
    LDX.B $A3                            ;80B30C;

CODE_80B30E:
    LDA.B ($10),Y                        ;80B30E;
    INY                                  ;80B310;
    AND.W #$00FF                         ;80B311;
    CMP.W #$00FF                         ;80B314;
    BEQ CODE_80B381                      ;80B317;
    SEP #$20                             ;80B319;
    STA.B $98                            ;80B31B;
    REP #$20                             ;80B31D;
    JSR.W CODE_80B252                    ;80B31F;

CODE_80B322:
    JSR.W CODE_808100                    ;80B322;
    LDA.B $F4                            ;80B325;
    BNE CODE_80B322                      ;80B327;
    PHX                                  ;80B329;
    REP #$10                             ;80B32A;
    LDA.B $98                            ;80B32C;
    AND.W #$00FF                         ;80B32E;
    ASL A                                ;80B331;
    TAX                                  ;80B332;
    LDA.L $7F8000,X                      ;80B333;
    STA.B $06                            ;80B337;
    STA.B $F8                            ;80B339;
    SEP #$10                             ;80B33B;
    PLX                                  ;80B33D;
    STZ.B $02                            ;80B33E;

CODE_80B340:
    LDA.B ($10),Y                        ;80B340;
    INY                                  ;80B342;
    INY                                  ;80B343;
    STA.W $0503,X                        ;80B344;
    STA.B $08                            ;80B347;
    LDA.B ($10),Y                        ;80B349;
    INY                                  ;80B34B;
    INY                                  ;80B34C;
    STA.B $04                            ;80B34D;
    AND.W #$7FFF                         ;80B34F;
    STA.W $0501,X                        ;80B352;
    LDA.W #$0000                         ;80B355;
    CLC                                  ;80B358;
    ADC.B $06                            ;80B359;
    CLC                                  ;80B35B;
    ADC.B $02                            ;80B35C;
    STA.W $0505,X                        ;80B35E;
    LDA.B $02                            ;80B361;
    CLC                                  ;80B363;
    ADC.B $08                            ;80B364;
    STA.B $02                            ;80B366;
    SEP #$20                             ;80B368;
    LDA.B #$7F                           ;80B36A;
    STA.W $0507,X                        ;80B36C;
    LDA.B #$80                           ;80B36F;
    STA.W $0500,X                        ;80B371;
    TXA                                  ;80B374;
    CLC                                  ;80B375;
    ADC.B #$08                           ;80B376;
    TAX                                  ;80B378;
    REP #$20                             ;80B379;
    LDA.B $04                            ;80B37B;
    BPL CODE_80B340                      ;80B37D;
    BRA CODE_80B30E                      ;80B37F;

CODE_80B381:
    SEP #$20                             ;80B381;
    STX.B $A3                            ;80B383;
    RTS                                  ;80B385;
    JSR.W CODE_80B38A                    ;80B386;
    RTL                                  ;80B389;

CODE_80B38A:
    PHX                                  ;80B38A;
    PHY                                  ;80B38B;
    PHP                                  ;80B38C;
    PHD                                  ;80B38D;
    REP #$20                             ;80B38E;
    SEP #$10                             ;80B390;
    LDA.W #$0000                         ;80B392;
    TCD                                  ;80B395;
    LDA.W #$B3A3                         ;80B396;
    LDX.B #$10                           ;80B399;
    JSR.W CODE_80813B                    ;80B39B;
    PLD                                  ;80B39E;
    PLP                                  ;80B39F;
    PLY                                  ;80B3A0;
    PLX                                  ;80B3A1;
    RTS                                  ;80B3A2;
    REP #$20                             ;80B3A3;
    SEP #$10                             ;80B3A5;
    STZ.B $F8                            ;80B3A7;
    LDY.B $F1                            ;80B3A9;
    LDA.W PTR16_86F56F,Y                 ;80B3AB;
    STA.B $F2                            ;80B3AE;
    LDY.B #$00                           ;80B3B0;
    LDX.B $A3                            ;80B3B2;

CODE_80B3B4:
    LDA.B ($F2),Y                        ;80B3B4;
    INY                                  ;80B3B6;
    AND.W #$00FF                         ;80B3B7;
    CMP.W #$00FF                         ;80B3BA;
    BEQ CODE_80B425                      ;80B3BD;
    SEP #$20                             ;80B3BF;
    STA.B $98                            ;80B3C1;
    REP #$20                             ;80B3C3;
    JSR.W CODE_80B252                    ;80B3C5;

CODE_80B3C8:
    JSR.W CODE_808100                    ;80B3C8;
    LDA.B $F4                            ;80B3CB;
    BNE CODE_80B3C8                      ;80B3CD;
    PHX                                  ;80B3CF;
    REP #$10                             ;80B3D0;
    LDA.B $98                            ;80B3D2;
    AND.W #$00FF                         ;80B3D4;
    ASL A                                ;80B3D7;
    TAX                                  ;80B3D8;
    LDA.L $7F8000,X                      ;80B3D9;
    STA.B $06                            ;80B3DD;
    SEP #$10                             ;80B3DF;
    PLX                                  ;80B3E1;
    STZ.B $02                            ;80B3E2;

CODE_80B3E4:
    LDA.B ($F2),Y                        ;80B3E4;
    INY                                  ;80B3E6;
    INY                                  ;80B3E7;
    STA.W $0503,X                        ;80B3E8;
    STA.B $08                            ;80B3EB;
    LDA.B ($F2),Y                        ;80B3ED;
    INY                                  ;80B3EF;
    INY                                  ;80B3F0;
    STA.B $04                            ;80B3F1;
    AND.W #$7FFF                         ;80B3F3;
    STA.W $0501,X                        ;80B3F6;
    LDA.W #$0000                         ;80B3F9;
    CLC                                  ;80B3FC;
    ADC.B $06                            ;80B3FD;
    CLC                                  ;80B3FF;
    ADC.B $02                            ;80B400;
    STA.W $0505,X                        ;80B402;
    LDA.B $02                            ;80B405;
    CLC                                  ;80B407;
    ADC.B $08                            ;80B408;
    STA.B $02                            ;80B40A;
    SEP #$20                             ;80B40C;
    LDA.B #$7F                           ;80B40E;
    STA.W $0507,X                        ;80B410;
    LDA.B #$80                           ;80B413;
    STA.W $0500,X                        ;80B415;
    TXA                                  ;80B418;
    CLC                                  ;80B419;
    ADC.B #$08                           ;80B41A;
    TAX                                  ;80B41C;
    REP #$20                             ;80B41D;
    LDA.B $04                            ;80B41F;
    BPL CODE_80B3E4                      ;80B421;
    BRA CODE_80B3B4                      ;80B423;

CODE_80B425:
    SEP #$20                             ;80B425;
    STX.B $A3                            ;80B427;
    JMP.W CODE_8080F8                    ;80B429;

CODE_80B42C:
    JSR.W CODE_80B430                    ;80B42C;
    RTL                                  ;80B42F;

CODE_80B430:
    PHX                                  ;80B430;
    PHY                                  ;80B431;
    PHP                                  ;80B432;
    PHD                                  ;80B433;
    REP #$20                             ;80B434;
    SEP #$10                             ;80B436;
    LDA.W #$0000                         ;80B438;
    TCD                                  ;80B43B;
    LDA.W #$B44C                         ;80B43C;
    LDX.B #$20                           ;80B43F;
    STX.W $0050                          ;80B441;
    JSR.W CODE_80813B                    ;80B444;
    PLD                                  ;80B447;
    PLP                                  ;80B448;
    PLY                                  ;80B449;
    PLX                                  ;80B44A;
    RTS                                  ;80B44B;
    REP #$30                             ;80B44C;
    LDA.W #$0000                         ;80B44E;
    TCD                                  ;80B451;
    LDA.W $1F09                          ;80B452;
    AND.W #$00FF                         ;80B455;
    ASL A                                ;80B458;
    STA.B $00                            ;80B459;
    LDA.W $1F7A                          ;80B45B;
    AND.W #$00FF                         ;80B45E;
    ASL A                                ;80B461;
    TAX                                  ;80B462;
    LDA.W DATA8_86A1D5,X                 ;80B463;
    CLC                                  ;80B466;
    ADC.B $00                            ;80B467;
    TAX                                  ;80B469;
    LDA.W DATA8_86A1D5,X                 ;80B46A;
    TAX                                  ;80B46D;

CODE_80B46E:
    LDA.W DATA8_86A1D5,X                 ;80B46E;
    BEQ CODE_80B4F0                      ;80B471;
    STA.B $58                            ;80B473;
    STZ.B $5A                            ;80B475;

CODE_80B477:
    LDA.W $1F25                          ;80B477;
    AND.W #$00FF                         ;80B47A;
    CMP.W #$0020                         ;80B47D;
    BCC CODE_80B487                      ;80B480;
    JSR.W CODE_808100                    ;80B482;
    BRA CODE_80B477                      ;80B485;

CODE_80B487:
    LDY.B $A3                            ;80B487;
    LDA.W #$0080                         ;80B489;
    STA.W $0500,Y                        ;80B48C;
    LDA.B $58                            ;80B48F;
    SEC                                  ;80B491;
    SBC.W #$0400                         ;80B492;
    STA.B $00                            ;80B495;
    BCS CODE_80B4A0                      ;80B497;
    LDA.B $58                            ;80B499;
    STA.W $0503,Y                        ;80B49B;
    BRA CODE_80B4A6                      ;80B49E;

CODE_80B4A0:
    LDA.W #$0400                         ;80B4A0;
    STA.W $0503,Y                        ;80B4A3;

CODE_80B4A6:
    LDA.B $00                            ;80B4A6;
    STA.B $58                            ;80B4A8;
    LDA.B $5A                            ;80B4AA;
    LSR A                                ;80B4AC;
    CLC                                  ;80B4AD;
    ADC.W DATA8_86A1D7,X                 ;80B4AE;
    STA.W $0501,Y                        ;80B4B1;
    LDA.W DATA8_86A1D9,X                 ;80B4B4;
    CLC                                  ;80B4B7;
    ADC.B $5A                            ;80B4B8;
    STA.W $0505,Y                        ;80B4BA;
    LDA.B $5A                            ;80B4BD;
    CLC                                  ;80B4BF;
    ADC.W #$0400                         ;80B4C0;
    STA.B $5A                            ;80B4C3;
    SEP #$20                             ;80B4C5;
    LDA.W DATA8_86A1DB,X                 ;80B4C7;
    STA.W $0507,Y                        ;80B4CA;
    TYA                                  ;80B4CD;
    CLC                                  ;80B4CE;
    ADC.B #$08                           ;80B4CF;
    STA.B $A3                            ;80B4D1;
    REP #$20                             ;80B4D3;
    JSR.W CODE_808100                    ;80B4D5;
    LDA.B $58                            ;80B4D8;
    BEQ CODE_80B4DE                      ;80B4DA;
    BPL CODE_80B477                      ;80B4DC;

CODE_80B4DE:
    LDY.W DATA8_86A1DC,X                 ;80B4DE;
    PHX                                  ;80B4E1;
    JSL.L CODE_828011                    ;80B4E2;
    PLX                                  ;80B4E6;
    TXA                                  ;80B4E7;
    CLC                                  ;80B4E8;
    ADC.W #$0009                         ;80B4E9;
    TAX                                  ;80B4EC;
    JMP.W CODE_80B46E                    ;80B4ED;

CODE_80B4F0:
    JMP.W CODE_8080F8                    ;80B4F0;

CODE_80B4F3:
    PHD                                  ;80B4F3;
    PEA.W $0000                          ;80B4F4;
    PLD                                  ;80B4F7;
    JSR.W CODE_80B4FD                    ;80B4F8;
    PLD                                  ;80B4FB;
    RTL                                  ;80B4FC;

CODE_80B4FD:
    PHP                                  ;80B4FD;
    REP #$30                             ;80B4FE;
    STZ.B $02                            ;80B500;
    LDA.W $1F7A                          ;80B502;
    AND.W #$00FF                         ;80B505;
    CMP.W #$0004                         ;80B508;
    BEQ CODE_80B51E                      ;80B50B;
    CMP.W #$0006                         ;80B50D;
    BNE CODE_80B528                      ;80B510;
    BIT.W $1F8F                          ;80B512;
    BVC CODE_80B528                      ;80B515;
    LDA.W #$000A                         ;80B517;
    STA.B $02                            ;80B51A;
    BRA CODE_80B528                      ;80B51C;

CODE_80B51E:
    BIT.W $1F95                          ;80B51E;
    BVC CODE_80B528                      ;80B521;
    LDA.W #$000A                         ;80B523;
    STA.B $02                            ;80B526;

CODE_80B528:
    LDA.W $1F0A                          ;80B528;
    AND.W #$00FF                         ;80B52B;
    ASL A                                ;80B52E;
    CLC                                  ;80B52F;
    ADC.B $02                            ;80B530;
    STA.B $00                            ;80B532;
    LDA.W $1F7A                          ;80B534;
    AND.W #$00FF                         ;80B537;
    ASL A                                ;80B53A;
    TAY                                  ;80B53B;
    LDA.W DATA8_86A260,Y                 ;80B53C;
    CLC                                  ;80B53F;
    ADC.B $00                            ;80B540;
    TAY                                  ;80B542;
    LDA.W DATA8_86A260,Y                 ;80B543;
    TAY                                  ;80B546;

CODE_80B547:
    LDA.W DATA8_86A260,Y                 ;80B547;
    CMP.W #$FFFF                         ;80B54A;
    BEQ CODE_80B57F                      ;80B54D;
    STA.B $10                            ;80B54F;
    LDA.W #$0085                         ;80B551;
    STA.B $12                            ;80B554;
    LDA.W DATA8_86A262,Y                 ;80B556;
    AND.W #$00FF                         ;80B559;
    ASL A                                ;80B55C;
    TAX                                  ;80B55D;
    PEA.W DATA8_868685                   ;80B55E;
    PLB                                  ;80B561;
    PHY                                  ;80B562;
    LDA.W #$0010                         ;80B563;
    STA.B $02                            ;80B566;
    LDY.W #$0000                         ;80B568;

CODE_80B56B:
    LDA.B ($10),Y                        ;80B56B;
    STA.W $0300,X                        ;80B56D;
    INX                                  ;80B570;
    INX                                  ;80B571;
    INY                                  ;80B572;
    INY                                  ;80B573;
    DEC.B $02                            ;80B574;
    BNE CODE_80B56B                      ;80B576;
    PLY                                  ;80B578;
    INY                                  ;80B579;
    INY                                  ;80B57A;
    INY                                  ;80B57B;
    PLB                                  ;80B57C;
    BRA CODE_80B547                      ;80B57D;

CODE_80B57F:
    INC.W $00A1                          ;80B57F;
    PLP                                  ;80B582;
    RTS                                  ;80B583;

CODE_80B584:
    PHB                                  ;80B584;
    PHP                                  ;80B585;
    REP #$30                             ;80B586;
    JSR.W CODE_80BA69                    ;80B588;
    BRA CODE_80B594                      ;80B58B;

CODE_80B58D:
    PHB                                  ;80B58D;
    PHP                                  ;80B58E;
    REP #$30                             ;80B58F;
    JSR.W CODE_80BAA0                    ;80B591;

CODE_80B594:
    LDA.W #$00F0                         ;80B594;

CODE_80B597:
    JSR.W CODE_80B5AB                    ;80B597;
    BMI CODE_80B5A8                      ;80B59A;
    JSR.W CODE_80B5AB                    ;80B59C;
    BMI CODE_80B5A8                      ;80B59F;
    PHA                                  ;80B5A1;
    JSR.W CODE_808100                    ;80B5A2;
    PLA                                  ;80B5A5;
    BRA CODE_80B597                      ;80B5A6;

CODE_80B5A8:
    PLP                                  ;80B5A8;
    PLB                                  ;80B5A9;
    RTS                                  ;80B5AA;

CODE_80B5AB:
    PHA                                  ;80B5AB;
    CLC                                  ;80B5AC;
    ADC.W $1FA5                          ;80B5AD;
    STA.B $02                            ;80B5B0;
    LDA.W $1FA3                          ;80B5B2;
    STA.B $00                            ;80B5B5;
    JSR.W CODE_80B67E                    ;80B5B7;
    PLA                                  ;80B5BA;
    SEC                                  ;80B5BB;
    SBC.W #$0010                         ;80B5BC;
    RTS                                  ;80B5BF;

CODE_80B5C0:
    PHB                                  ;80B5C0;
    PHD                                  ;80B5C1;
    PHP                                  ;80B5C2;
    REP #$30                             ;80B5C3;
    LDA.W #$0000                         ;80B5C5;
    TCD                                  ;80B5C8;
    JSR.W CODE_80BAA0                    ;80B5C9;
    JSR.W CODE_80B67E                    ;80B5CC;
    PLP                                  ;80B5CF;
    PLD                                  ;80B5D0;
    PLB                                  ;80B5D1;
    RTS                                  ;80B5D2;

CODE_80B5D3:
    PHB                                  ;80B5D3;
    PHD                                  ;80B5D4;
    PHP                                  ;80B5D5;
    REP #$30                             ;80B5D6;
    LDA.W #$0000                         ;80B5D8;
    TCD                                  ;80B5DB;
    JSR.W CODE_80BAA0                    ;80B5DC;
    JSR.W CODE_80B676                    ;80B5DF;
    PLP                                  ;80B5E2;
    PLD                                  ;80B5E3;
    PLB                                  ;80B5E4;
    RTS                                  ;80B5E5;

CODE_80B5E6:
    PHP                                  ;80B5E6;
    PHD                                  ;80B5E7;
    PHB                                  ;80B5E8;
    REP #$30                             ;80B5E9;
    LDA.W #$0000                         ;80B5EB;
    TCD                                  ;80B5EE;
    JSR.W CODE_80BA69                    ;80B5EF;
    BRA CODE_80B600                      ;80B5F2;

CODE_80B5F4:
    PHP                                  ;80B5F4;
    PHD                                  ;80B5F5;
    PHB                                  ;80B5F6;
    REP #$30                             ;80B5F7;
    LDA.W #$0000                         ;80B5F9;
    TCD                                  ;80B5FC;
    JSR.W CODE_80BAA0                    ;80B5FD;

CODE_80B600:
    JSR.W CODE_80B614                    ;80B600;
    BEQ CODE_80B608                      ;80B603;
    JSR.W CODE_80B636                    ;80B605;

CODE_80B608:
    JSR.W CODE_80B625                    ;80B608;
    BEQ CODE_80B610                      ;80B60B;
    JSR.W CODE_80B656                    ;80B60D;

CODE_80B610:
    PLB                                  ;80B610;
    PLD                                  ;80B611;
    PLP                                  ;80B612;
    RTS                                  ;80B613;

CODE_80B614:
    LDA.W $1FA3                          ;80B614;
    AND.W #$FFF8                         ;80B617;
    STA.B $00                            ;80B61A;
    LDA.W $1FA7                          ;80B61C;
    AND.W #$FFF8                         ;80B61F;
    CMP.B $00                            ;80B622;
    RTS                                  ;80B624;

CODE_80B625:
    LDA.W $1FA5                          ;80B625;
    AND.W #$FFF8                         ;80B628;
    STA.B $00                            ;80B62B;
    LDA.W $1FA9                          ;80B62D;
    AND.W #$FFF8                         ;80B630;
    CMP.B $00                            ;80B633;
    RTS                                  ;80B635;

CODE_80B636:
    BMI CODE_80B645                      ;80B636;
    LDA.W $1FA3                          ;80B638;
    STA.B $00                            ;80B63B;
    LDA.W $1FA5                          ;80B63D;
    STA.B $02                            ;80B640;
    JMP.W CODE_80B676                    ;80B642;

CODE_80B645:
    LDA.W $1FA3                          ;80B645;
    CLC                                  ;80B648;
    ADC.W #$0100                         ;80B649;
    STA.B $00                            ;80B64C;
    LDA.W $1FA5                          ;80B64E;
    STA.B $02                            ;80B651;
    JMP.W CODE_80B676                    ;80B653;

CODE_80B656:
    BMI CODE_80B665                      ;80B656;
    LDA.W $1FA5                          ;80B658;
    STA.B $02                            ;80B65B;
    LDA.W $1FA3                          ;80B65D;
    STA.B $00                            ;80B660;
    JMP.W CODE_80B67E                    ;80B662;

CODE_80B665:
    LDA.W $1FA5                          ;80B665;
    CLC                                  ;80B668;
    ADC.W #$00E8                         ;80B669;
    STA.B $02                            ;80B66C;
    LDA.W $1FA3                          ;80B66E;
    STA.B $00                            ;80B671;
    JMP.W CODE_80B67E                    ;80B673;

CODE_80B676:
    PHP                                  ;80B676;
    REP #$30                             ;80B677;
    JSR.W CODE_80B686                    ;80B679;
    PLP                                  ;80B67C;
    RTS                                  ;80B67D;

CODE_80B67E:
    PHP                                  ;80B67E;
    REP #$30                             ;80B67F;
    JSR.W CODE_80B79D                    ;80B681;
    PLP                                  ;80B684;
    RTS                                  ;80B685;

CODE_80B686:
    JSR.W CODE_80B9CB                    ;80B686;
    LDA.B $10                            ;80B689;
    AND.W #$FC1F                         ;80B68B;
    SEP #$20                             ;80B68E;
    REP #$10                             ;80B690;
    LDX.W $00A5                          ;80B692;
    STA.L $7EF001,X                      ;80B695;
    INC A                                ;80B699;
    STA.L $7EF045,X                      ;80B69A;
    XBA                                  ;80B69E;
    STA.L $7EF002,X                      ;80B69F;
    STA.L $7EF046,X                      ;80B6A3;
    LDA.B #$81                           ;80B6A7;
    STA.L $7EF000,X                      ;80B6A9;
    STA.L $7EF044,X                      ;80B6AD;
    LDA.B #$40                           ;80B6B1;
    STA.L $7EF003,X                      ;80B6B3;
    STA.L $7EF047,X                      ;80B6B7;
    INX                                  ;80B6BB;
    INX                                  ;80B6BC;
    INX                                  ;80B6BD;
    INX                                  ;80B6BE;
    REP #$30                             ;80B6BF;
    LDA.B $02                            ;80B6C1;
    AND.W #$00F0                         ;80B6C3;
    LSR A                                ;80B6C6;
    LSR A                                ;80B6C7;
    PHA                                  ;80B6C8;
    STA.B $0E                            ;80B6C9;
    TXA                                  ;80B6CB;
    CLC                                  ;80B6CC;
    ADC.B $0E                            ;80B6CD;
    TAX                                  ;80B6CF;
    PLA                                  ;80B6D0;
    LSR A                                ;80B6D1;
    LSR A                                ;80B6D2;
    STA.B $04                            ;80B6D3;
    LDA.W #$0010                         ;80B6D5;
    STA.B $06                            ;80B6D8;
    SEC                                  ;80B6DA;
    SBC.B $04                            ;80B6DB;
    STA.B $04                            ;80B6DD;

CODE_80B6DF:
    SEP #$20                             ;80B6DF;
    LDA.B #$7E                           ;80B6E1;
    PHA                                  ;80B6E3;
    PLB                                  ;80B6E4;
    LDA.B ($14)                          ;80B6E5;
    REP #$20                             ;80B6E7;
    AND.W #$00FF                         ;80B6E9;
    XBA                                  ;80B6EC;
    ASL A                                ;80B6ED;
    CLC                                  ;80B6EE;
    ADC.L $001FAB                        ;80B6EF;
    STA.B $0E                            ;80B6F3;
    LDA.B $00                            ;80B6F5;
    AND.W #$00F0                         ;80B6F7;
    LSR A                                ;80B6FA;
    LSR A                                ;80B6FB;
    LSR A                                ;80B6FC;
    CLC                                  ;80B6FD;
    ADC.B $0E                            ;80B6FE;
    STA.B $0E                            ;80B700;
    LDA.B $02                            ;80B702;
    AND.W #$00F0                         ;80B704;
    ASL A                                ;80B707;
    CLC                                  ;80B708;
    ADC.B $0E                            ;80B709;
    STA.B $18                            ;80B70B;

CODE_80B70D:
    SEP #$20                             ;80B70D;
    LDA.B #$7E                           ;80B70F;
    PHA                                  ;80B711;
    PLB                                  ;80B712;
    REP #$20                             ;80B713;
    LDA.B ($18)                          ;80B715;
    ASL A                                ;80B717;
    ASL A                                ;80B718;
    ASL A                                ;80B719;
    CLC                                  ;80B71A;
    ADC.L $001FAD                        ;80B71B;
    STA.B $1C                            ;80B71F;
    SEP #$20                             ;80B721;
    LDA.L $001FAF                        ;80B723;
    PHA                                  ;80B727;
    PLB                                  ;80B728;
    REP #$20                             ;80B729;
    LDA.B ($1C)                          ;80B72B;
    INC.B $1C                            ;80B72D;
    INC.B $1C                            ;80B72F;
    STA.L $7EF000,X                      ;80B731;
    LDA.B ($1C)                          ;80B735;
    INC.B $1C                            ;80B737;
    INC.B $1C                            ;80B739;
    STA.L $7EF044,X                      ;80B73B;
    INX                                  ;80B73F;
    INX                                  ;80B740;
    LDA.B ($1C)                          ;80B741;
    INC.B $1C                            ;80B743;
    INC.B $1C                            ;80B745;
    STA.L $7EF000,X                      ;80B747;
    LDA.B ($1C)                          ;80B74B;
    INC.B $1C                            ;80B74D;
    INC.B $1C                            ;80B74F;
    STA.L $7EF044,X                      ;80B751;
    INX                                  ;80B755;
    INX                                  ;80B756;
    LDA.B $18                            ;80B757;
    CLC                                  ;80B759;
    ADC.W #$0020                         ;80B75A;
    STA.B $18                            ;80B75D;
    DEC.B $06                            ;80B75F;
    BEQ CODE_80B78E                      ;80B761;
    DEC.B $04                            ;80B763;
    BNE CODE_80B70D                      ;80B765;
    TXA                                  ;80B767;
    SEC                                  ;80B768;
    SBC.W #$0040                         ;80B769;
    TAX                                  ;80B76C;
    LDA.B $14                            ;80B76D;
    SEC                                  ;80B76F;
    SBC.W $1FB0                          ;80B770;
    CLC                                  ;80B773;
    ADC.W #$0020                         ;80B774;
    AND.W #$03FF                         ;80B777;
    CLC                                  ;80B77A;
    ADC.W $1FB0                          ;80B77B;
    STA.B $14                            ;80B77E;
    LDA.B $02                            ;80B780;
    AND.W #$FF00                         ;80B782;
    CLC                                  ;80B785;
    ADC.W #$0100                         ;80B786;
    STA.B $02                            ;80B789;
    JMP.W CODE_80B6DF                    ;80B78B;

CODE_80B78E:
    REP #$20                             ;80B78E;
    LDA.W $00A5                          ;80B790;
    CLC                                  ;80B793;
    ADC.W #$0088                         ;80B794;
    STA.W $00A5                          ;80B797;
    REP #$20                             ;80B79A;
    RTS                                  ;80B79C;

CODE_80B79D:
    JSR.W CODE_80B9CB                    ;80B79D;
    LDA.B $00                            ;80B7A0;
    AND.W #$00F0                         ;80B7A2;
    LSR A                                ;80B7A5;
    LSR A                                ;80B7A6;
    LSR A                                ;80B7A7;
    LSR A                                ;80B7A8;
    STA.B $04                            ;80B7A9;
    LDA.W #$0010                         ;80B7AB;
    SEC                                  ;80B7AE;
    SBC.B $04                            ;80B7AF;
    STA.B $04                            ;80B7B1;
    LDA.W #$0012                         ;80B7B3;
    SEC                                  ;80B7B6;
    SBC.B $04                            ;80B7B7;
    STA.B $06                            ;80B7B9;
    LDA.W $00A5                          ;80B7BB;
    AND.W #$07FF                         ;80B7BE;
    CLC                                  ;80B7C1;
    ADC.W #$F000                         ;80B7C2;
    STA.B $20                            ;80B7C5;
    LDA.B $04                            ;80B7C7;
    ASL A                                ;80B7C9;
    ASL A                                ;80B7CA;
    ADC.W #$0004                         ;80B7CB;
    ADC.B $20                            ;80B7CE;
    STA.B $24                            ;80B7D0;
    LDA.W #$007E                         ;80B7D2;
    STA.B $22                            ;80B7D5;
    STA.B $26                            ;80B7D7;

CODE_80B7D9:
    SEP #$30                             ;80B7D9;
    LDY.B #$00                           ;80B7DB;
    LDA.B #$80                           ;80B7DD;
    STA.B [$20],Y                        ;80B7DF;
    STA.B [$24],Y                        ;80B7E1;
    INY                                  ;80B7E3;
    REP #$20                             ;80B7E4;
    LDA.B $10                            ;80B7E6;
    STA.B [$20],Y                        ;80B7E8;
    CLC                                  ;80B7EA;
    ADC.W #$0020                         ;80B7EB;
    STA.B [$24],Y                        ;80B7EE;
    INY                                  ;80B7F0;
    INY                                  ;80B7F1;
    SEP #$20                             ;80B7F2;
    LDA.B $04                            ;80B7F4;
    ASL A                                ;80B7F6;
    ASL A                                ;80B7F7;
    STA.B [$20],Y                        ;80B7F8;
    STA.B [$24],Y                        ;80B7FA;
    INY                                  ;80B7FC;
    SEP #$20                             ;80B7FD;
    LDA.B #$7E                           ;80B7FF;
    PHA                                  ;80B801;
    PLB                                  ;80B802;
    LDA.B ($14)                          ;80B803;
    REP #$20                             ;80B805;
    AND.W #$00FF                         ;80B807;
    XBA                                  ;80B80A;
    ASL A                                ;80B80B;
    CLC                                  ;80B80C;
    ADC.L $001FAB                        ;80B80D;
    STA.B $0E                            ;80B811;
    LDA.B $00                            ;80B813;
    AND.W #$00F0                         ;80B815;
    LSR A                                ;80B818;
    LSR A                                ;80B819;
    LSR A                                ;80B81A;
    CLC                                  ;80B81B;
    ADC.B $0E                            ;80B81C;
    STA.B $0E                            ;80B81E;
    LDA.B $02                            ;80B820;
    AND.W #$00F0                         ;80B822;
    ASL A                                ;80B825;
    CLC                                  ;80B826;
    ADC.B $0E                            ;80B827;
    STA.B $18                            ;80B829;

CODE_80B82B:
    SEP #$20                             ;80B82B;
    LDA.B #$7E                           ;80B82D;
    PHA                                  ;80B82F;
    PLB                                  ;80B830;
    REP #$20                             ;80B831;
    LDA.B ($18)                          ;80B833;
    ASL A                                ;80B835;
    ASL A                                ;80B836;
    ASL A                                ;80B837;
    CLC                                  ;80B838;
    ADC.L $001FAD                        ;80B839;
    STA.B $1C                            ;80B83D;
    SEP #$20                             ;80B83F;
    LDA.L $001FAF                        ;80B841;
    PHA                                  ;80B845;
    PLB                                  ;80B846;
    REP #$20                             ;80B847;
    LDA.B ($1C)                          ;80B849;
    INC.B $1C                            ;80B84B;
    INC.B $1C                            ;80B84D;
    STA.B [$20],Y                        ;80B84F;
    INY                                  ;80B851;
    INY                                  ;80B852;
    LDA.B ($1C)                          ;80B853;
    INC.B $1C                            ;80B855;
    INC.B $1C                            ;80B857;
    STA.B [$20],Y                        ;80B859;
    DEY                                  ;80B85B;
    DEY                                  ;80B85C;
    LDA.B ($1C)                          ;80B85D;
    INC.B $1C                            ;80B85F;
    INC.B $1C                            ;80B861;
    STA.B [$24],Y                        ;80B863;
    INY                                  ;80B865;
    INY                                  ;80B866;
    LDA.B ($1C)                          ;80B867;
    INC.B $1C                            ;80B869;
    INC.B $1C                            ;80B86B;
    STA.B [$24],Y                        ;80B86D;
    INY                                  ;80B86F;
    INY                                  ;80B870;
    INC.B $18                            ;80B871;
    INC.B $18                            ;80B873;
    DEC.B $04                            ;80B875;
    BNE CODE_80B82B                      ;80B877;
    LDA.B $06                            ;80B879;
    BEQ CODE_80B8CB                      ;80B87B;
    TYA                                  ;80B87D;
    CLC                                  ;80B87E;
    ADC.B $24                            ;80B87F;
    STA.B $20                            ;80B881;
    LDA.B $06                            ;80B883;
    CMP.W #$0010                         ;80B885;
    BCC CODE_80B897                      ;80B888;
    SEC                                  ;80B88A;
    SBC.W #$0010                         ;80B88B;
    STA.B $06                            ;80B88E;
    LDA.W #$0010                         ;80B890;
    STA.B $04                            ;80B893;
    BRA CODE_80B89B                      ;80B895;

CODE_80B897:
    STA.B $04                            ;80B897;
    STZ.B $06                            ;80B899;

CODE_80B89B:
    ASL A                                ;80B89B;
    ASL A                                ;80B89C;
    CLC                                  ;80B89D;
    ADC.W #$0004                         ;80B89E;
    ADC.B $20                            ;80B8A1;
    STA.B $24                            ;80B8A3;
    LDA.B $14                            ;80B8A5;
    INC A                                ;80B8A7;
    AND.W #$001F                         ;80B8A8;
    STA.B $0E                            ;80B8AB;
    LDA.B $14                            ;80B8AD;
    AND.W #$FFE0                         ;80B8AF;
    ORA.B $0E                            ;80B8B2;
    STA.B $14                            ;80B8B4;
    LDA.B $00                            ;80B8B6;
    ORA.W #$00FF                         ;80B8B8;
    INC A                                ;80B8BB;
    STA.B $00                            ;80B8BC;
    LDA.B $10                            ;80B8BE;
    EOR.W #$0400                         ;80B8C0;
    AND.W #$FFE0                         ;80B8C3;
    STA.B $10                            ;80B8C6;
    JMP.W CODE_80B7D9                    ;80B8C8;

CODE_80B8CB:
    TYA                                  ;80B8CB;
    CLC                                  ;80B8CC;
    ADC.B $24                            ;80B8CD;
    SEC                                  ;80B8CF;
    SBC.W #$F000                         ;80B8D0;
    STA.W $00A5                          ;80B8D3;
    RTS                                  ;80B8D6;

CODE_80B8D7:
    JSR.W CODE_80B8DB                    ;80B8D7;
    RTL                                  ;80B8DA;

CODE_80B8DB:
    PHB                                  ;80B8DB;
    PHD                                  ;80B8DC;
    PHP                                  ;80B8DD;
    REP #$30                             ;80B8DE;
    LDA.W #$0000                         ;80B8E0;
    TCD                                  ;80B8E3;
    JSR.W CODE_80BA69                    ;80B8E4;
    LDA.B $00                            ;80B8E7;
    SEC                                  ;80B8E9;
    SBC.W $1FA3                          ;80B8EA;
    CLC                                  ;80B8ED;
    ADC.W #$0010                         ;80B8EE;
    BPL CODE_80B8F6                      ;80B8F1;
    JMP.W CODE_80B9C7                    ;80B8F3;

CODE_80B8F6:
    CMP.W #$0120                         ;80B8F6;
    BMI CODE_80B8FE                      ;80B8F9;
    JMP.W CODE_80B9C7                    ;80B8FB;

CODE_80B8FE:
    LDA.B $02                            ;80B8FE;
    SEC                                  ;80B900;
    SBC.W $1FA5                          ;80B901;
    CLC                                  ;80B904;
    ADC.W #$0010                         ;80B905;
    BPL CODE_80B90D                      ;80B908;
    JMP.W CODE_80B9C7                    ;80B90A;

CODE_80B90D:
    CMP.W #$0100                         ;80B90D;
    BMI CODE_80B915                      ;80B910;
    JMP.W CODE_80B9C7                    ;80B912;

CODE_80B915:
    JSR.W CODE_80B9CB                    ;80B915;
    SEP #$20                             ;80B918;
    REP #$10                             ;80B91A;
    LDX.W $00A5                          ;80B91C;
    LDA.B #$80                           ;80B91F;
    STA.L $7EF000,X                      ;80B921;
    STA.L $7EF008,X                      ;80B925;
    INX                                  ;80B929;
    REP #$20                             ;80B92A;
    LDA.B $10                            ;80B92C;
    STA.L $7EF000,X                      ;80B92E;
    CLC                                  ;80B932;
    ADC.W #$0020                         ;80B933;
    STA.L $7EF008,X                      ;80B936;
    INX                                  ;80B93A;
    INX                                  ;80B93B;
    SEP #$20                             ;80B93C;
    LDA.B #$04                           ;80B93E;
    STA.L $7EF000,X                      ;80B940;
    STA.L $7EF008,X                      ;80B944;
    INX                                  ;80B948;
    SEP #$20                             ;80B949;
    LDA.B #$7E                           ;80B94B;
    PHA                                  ;80B94D;
    PLB                                  ;80B94E;
    LDA.B ($14)                          ;80B94F;
    REP #$20                             ;80B951;
    AND.W #$00FF                         ;80B953;
    XBA                                  ;80B956;
    ASL A                                ;80B957;
    CLC                                  ;80B958;
    ADC.L $001FAB                        ;80B959;
    STA.B $0E                            ;80B95D;
    LDA.B $00                            ;80B95F;
    AND.W #$00F0                         ;80B961;
    LSR A                                ;80B964;
    LSR A                                ;80B965;
    LSR A                                ;80B966;
    CLC                                  ;80B967;
    ADC.B $0E                            ;80B968;
    STA.B $0E                            ;80B96A;
    LDA.B $02                            ;80B96C;
    AND.W #$00F0                         ;80B96E;
    ASL A                                ;80B971;
    CLC                                  ;80B972;
    ADC.B $0E                            ;80B973;
    STA.B $18                            ;80B975;
    SEP #$20                             ;80B977;
    LDA.B #$7E                           ;80B979;
    PHA                                  ;80B97B;
    PLB                                  ;80B97C;
    REP #$20                             ;80B97D;
    LDA.B ($18)                          ;80B97F;
    ASL A                                ;80B981;
    ASL A                                ;80B982;
    ASL A                                ;80B983;
    CLC                                  ;80B984;
    ADC.L $001FAD                        ;80B985;
    STA.B $1C                            ;80B989;
    SEP #$20                             ;80B98B;
    LDA.L $001FAF                        ;80B98D;
    PHA                                  ;80B991;
    PLB                                  ;80B992;
    REP #$20                             ;80B993;
    LDA.B ($1C)                          ;80B995;
    INC.B $1C                            ;80B997;
    INC.B $1C                            ;80B999;
    STA.L $7EF000,X                      ;80B99B;
    LDA.B ($1C)                          ;80B99F;
    INC.B $1C                            ;80B9A1;
    INC.B $1C                            ;80B9A3;
    STA.L $7EF002,X                      ;80B9A5;
    LDA.B ($1C)                          ;80B9A9;
    INC.B $1C                            ;80B9AB;
    INC.B $1C                            ;80B9AD;
    STA.L $7EF008,X                      ;80B9AF;
    LDA.B ($1C)                          ;80B9B3;
    INC.B $1C                            ;80B9B5;
    INC.B $1C                            ;80B9B7;
    STA.L $7EF00A,X                      ;80B9B9;
    LDA.W $00A5                          ;80B9BD;
    CLC                                  ;80B9C0;
    ADC.W #$0010                         ;80B9C1;
    STA.W $00A5                          ;80B9C4;

CODE_80B9C7:
    PLP                                  ;80B9C7;
    PLD                                  ;80B9C8;
    PLB                                  ;80B9C9;
    RTS                                  ;80B9CA;

CODE_80B9CB:
    LDA.B $00                            ;80B9CB;
    AND.W #$0100                         ;80B9CD;
    ASL A                                ;80B9D0;
    ASL A                                ;80B9D1;
    CLC                                  ;80B9D2;
    ADC.W $1FA1                          ;80B9D3;
    STA.B $10                            ;80B9D6;
    LDA.B $00                            ;80B9D8;
    AND.W #$00F0                         ;80B9DA;
    LSR A                                ;80B9DD;
    LSR A                                ;80B9DE;
    LSR A                                ;80B9DF;
    STA.B $0E                            ;80B9E0;
    LDA.B $02                            ;80B9E2;
    AND.W #$00F0                         ;80B9E4;
    ASL A                                ;80B9E7;
    ASL A                                ;80B9E8;
    CLC                                  ;80B9E9;
    ADC.B $0E                            ;80B9EA;
    ADC.B $10                            ;80B9EC;
    STA.B $10                            ;80B9EE;
    LDA.B $00                            ;80B9F0;
    XBA                                  ;80B9F2;
    AND.W #$001F                         ;80B9F3;
    STA.B $0E                            ;80B9F6;
    LDA.B $02                            ;80B9F8;
    AND.W #$1F00                         ;80B9FA;
    LSR A                                ;80B9FD;
    LSR A                                ;80B9FE;
    LSR A                                ;80B9FF;
    CLC                                  ;80BA00;
    ADC.B $0E                            ;80BA01;
    ADC.W $1FB0                          ;80BA03;
    STA.B $14                            ;80BA06;
    RTS                                  ;80BA08;

CODE_80BA09:
    PHP                                  ;80BA09;
    SEP #$20                             ;80BA0A;
    REP #$10                             ;80BA0C;
    LDX.B $A5                            ;80BA0E;
    BEQ CODE_80BA67                      ;80BA10;
    LDA.B #$01                           ;80BA12;
    STA.W $4300                          ;80BA14;
    LDA.B #$18                           ;80BA17;
    STA.W $4301                          ;80BA19;
    CLC                                  ;80BA1C;
    LDX.W #$0000                         ;80BA1D;

CODE_80BA20:
    SEP #$20                             ;80BA20;
    LDA.L $7EF000,X                      ;80BA22;
    STA.W $2115                          ;80BA26;
    REP #$20                             ;80BA29;
    LDA.L $7EF001,X                      ;80BA2B;
    STA.W $2116                          ;80BA2F;
    LDA.L $7EF003,X                      ;80BA32;
    AND.W #$00FF                         ;80BA36;
    STA.W $4305                          ;80BA39;
    PHA                                  ;80BA3C;
    INX                                  ;80BA3D;
    INX                                  ;80BA3E;
    INX                                  ;80BA3F;
    INX                                  ;80BA40;
    TXA                                  ;80BA41;
    CLC                                  ;80BA42;
    ADC.W #$F000                         ;80BA43;
    STA.W $4302                          ;80BA46;
    SEP #$20                             ;80BA49;
    LDA.B #$7E                           ;80BA4B;
    STA.W $4304                          ;80BA4D;
    LDA.B #$01                           ;80BA50;
    STA.W $420B                          ;80BA52;
    REP #$20                             ;80BA55;
    TXA                                  ;80BA57;
    ADC.B $01,S                          ;80BA58;
    PLX                                  ;80BA5A;
    CMP.W #$0800                         ;80BA5B;

CODE_80BA5E:
    BCS CODE_80BA5E                      ;80BA5E;
    TAX                                  ;80BA60;
    CPX.B $A5                            ;80BA61;
    BNE CODE_80BA20                      ;80BA63;
    STZ.B $A5                            ;80BA65;

CODE_80BA67:
    PLP                                  ;80BA67;
    RTS                                  ;80BA68;

CODE_80BA69:
    LDA.W #$5000                         ;80BA69;
    STA.W $1FA1                          ;80BA6C;
    LDA.W $1E4D                          ;80BA6F;
    STA.W $1FA3                          ;80BA72;
    LDA.W $1E50                          ;80BA75;
    STA.W $1FA5                          ;80BA78;
    LDA.W $1E6A                          ;80BA7B;
    STA.W $1FA7                          ;80BA7E;
    LDA.W $1E6C                          ;80BA81;
    STA.W $1FA9                          ;80BA84;
    LDA.W #$E800                         ;80BA87;
    STA.W $1FB0                          ;80BA8A;
    LDA.W #$2000                         ;80BA8D;
    STA.W $1FAB                          ;80BA90;
    LDA.W $0B95                          ;80BA93;
    STA.W $1FAD                          ;80BA96;
    LDA.W $0B96                          ;80BA99;
    STA.W $1FAE                          ;80BA9C;
    RTS                                  ;80BA9F;

CODE_80BAA0:
    LDA.W #$5800                         ;80BAA0;
    STA.W $1FA1                          ;80BAA3;
    LDA.W $1E8D                          ;80BAA6;
    STA.W $1FA3                          ;80BAA9;
    LDA.W $1E90                          ;80BAAC;
    STA.W $1FA5                          ;80BAAF;
    LDA.W $1EAA                          ;80BAB2;
    STA.W $1FA7                          ;80BAB5;
    LDA.W $1EAC                          ;80BAB8;
    STA.W $1FA9                          ;80BABB;
    LDA.W #$EC00                         ;80BABE;
    STA.W $1FB0                          ;80BAC1;
    LDA.W #$A600                         ;80BAC4;
    STA.W $1FAB                          ;80BAC7;
    LDA.W $0B98                          ;80BACA;
    STA.W $1FAD                          ;80BACD;
    LDA.W $0B99                          ;80BAD0;
    STA.W $1FAE                          ;80BAD3;
    RTS                                  ;80BAD6;

CODE_80BAD7:
    PHP                                  ;80BAD7;
    SEP #$30                             ;80BAD8;
    JSR.W CODE_80BC5B                    ;80BADA;
    LDA.W $1F7A                          ;80BADD;
    ASL A                                ;80BAE0;
    CLC                                  ;80BAE1;
    ADC.W $1F7A                          ;80BAE2;
    TAX                                  ;80BAE5;
    REP #$20                             ;80BAE6;
    STZ.B $D7                            ;80BAE8;
    LDA.W PTR24_868D24,X                 ;80BAEA;
    STA.B $10                            ;80BAED;
    LDA.W PTR24_868D26,X                 ;80BAEF;
    STA.B $12                            ;80BAF2;
    LDA.W PTR24_868D93,X                 ;80BAF4;
    STA.B $18                            ;80BAF7;
    LDA.W PTR24_868D95,X                 ;80BAF9;
    STA.B $1A                            ;80BAFC;
    LDA.W PTR24_868E02,X                 ;80BAFE;
    STA.B $20                            ;80BB01;
    LDA.W PTR24_868E04,X                 ;80BB03;
    STA.B $22                            ;80BB06;
    LDA.W PTR24_868E71,X                 ;80BB08;
    STA.W $0B95                          ;80BB0B;
    LDA.W PTR24_868EE0,X                 ;80BB0E;
    STA.W $0B92                          ;80BB11;
    SEP #$20                             ;80BB14;
    LDA.W PTR24_868E73,X                 ;80BB16;
    STA.W $0B97                          ;80BB19;
    LDA.W PTR24_868EE2,X                 ;80BB1C;
    STA.W $0B94                          ;80BB1F;
    JSR.W CODE_80BB6A                    ;80BB22;
    JSR.W CODE_80BC72                    ;80BB25;
    SEP #$30                             ;80BB28;
    LDA.W $1F7A                          ;80BB2A;
    ASL A                                ;80BB2D;
    CLC                                  ;80BB2E;
    ADC.W $1F7A                          ;80BB2F;
    TAX                                  ;80BB32;
    REP #$20                             ;80BB33;
    INC.B $D7                            ;80BB35;
    INC.B $D7                            ;80BB37;
    LDA.W PTR24_868F4F,X                 ;80BB39;
    STA.B $10                            ;80BB3C;
    LDA.W PTR24_868F51,X                 ;80BB3E;
    STA.B $12                            ;80BB41;
    LDA.W PTR24_868FBE,X                 ;80BB43;
    STA.B $18                            ;80BB46;
    LDA.W PTR24_868FC0,X                 ;80BB48;
    STA.B $1A                            ;80BB4B;
    LDA.W PTR24_86902D,X                 ;80BB4D;
    STA.B $20                            ;80BB50;
    LDA.W PTR24_86902F,X                 ;80BB52;
    STA.B $22                            ;80BB55;
    LDA.W PTR24_86909C,X                 ;80BB57;
    STA.W $0B98                          ;80BB5A;
    SEP #$20                             ;80BB5D;
    LDA.W PTR24_86909E,X                 ;80BB5F;
    STA.W $0B9A                          ;80BB62;
    JSR.W CODE_80BB6A                    ;80BB65;
    PLP                                  ;80BB68;
    RTS                                  ;80BB69;

CODE_80BB6A:
    REP #$10                             ;80BB6A;
    JSR.W CODE_80BC15                    ;80BB6C;
    LDY.W #$0000                         ;80BB6F;
    LDA.B [$10],Y                        ;80BB72;
    STA.B $00                            ;80BB74;
    INY                                  ;80BB76;
    LDA.B [$10],Y                        ;80BB77;
    STA.B $01                            ;80BB79;
    INY                                  ;80BB7B;
    INY                                  ;80BB7C;
    LDA.B #$00                           ;80BB7D;
    XBA                                  ;80BB7F;
    LDA.B $D7                            ;80BB80;
    TAX                                  ;80BB82;
    LDA.W DATA8_868D1C,X                 ;80BB83;
    STA.B $04                            ;80BB86;
    LDA.W DATA8_868D1D,X                 ;80BB88;
    STA.B $05                            ;80BB8B;

CODE_80BB8D:
    LDX.B $04                            ;80BB8D;
    LDA.B $00                            ;80BB8F;
    STA.B $02                            ;80BB91;

CODE_80BB93:
    LDA.B [$10],Y                        ;80BB93;
    STA.L $7EE800,X                      ;80BB95;
    INY                                  ;80BB99;
    INX                                  ;80BB9A;
    DEC.B $02                            ;80BB9B;
    BNE CODE_80BB93                      ;80BB9D;
    LDA.B $04                            ;80BB9F;
    CLC                                  ;80BBA1;
    ADC.B #$20                           ;80BBA2;
    STA.B $04                            ;80BBA4;
    LDA.B $05                            ;80BBA6;
    ADC.B #$00                           ;80BBA8;
    STA.B $05                            ;80BBAA;
    DEC.B $01                            ;80BBAC;
    BNE CODE_80BB8D                      ;80BBAE;
    REP #$30                             ;80BBB0;
    LDY.W #$0002                         ;80BBB2;
    LDA.B [$10],Y                        ;80BBB5;
    AND.W #$00FF                         ;80BBB7;
    STA.B $00                            ;80BBBA;
    LDA.B $D7                            ;80BBBC;
    TAX                                  ;80BBBE;
    LDA.W DATA8_868D20,X                 ;80BBBF;
    TAX                                  ;80BBC2;
    LDY.W #$0000                         ;80BBC3;

CODE_80BBC6:
    PHY                                  ;80BBC6;
    LDA.W #$0008                         ;80BBC7;
    STA.B $02                            ;80BBCA;

CODE_80BBCC:
    LDA.W #$0008                         ;80BBCC;
    STA.B $04                            ;80BBCF;

CODE_80BBD1:
    PHY                                  ;80BBD1;
    LDA.B [$18],Y                        ;80BBD2;
    ASL A                                ;80BBD4;
    ASL A                                ;80BBD5;
    ASL A                                ;80BBD6;
    TAY                                  ;80BBD7;
    LDA.B [$20],Y                        ;80BBD8;
    STA.L $7E2000,X                      ;80BBDA;
    INY                                  ;80BBDE;
    INY                                  ;80BBDF;
    LDA.B [$20],Y                        ;80BBE0;
    STA.L $7E2002,X                      ;80BBE2;
    INY                                  ;80BBE6;
    INY                                  ;80BBE7;
    LDA.B [$20],Y                        ;80BBE8;
    STA.L $7E2020,X                      ;80BBEA;
    INY                                  ;80BBEE;
    INY                                  ;80BBEF;
    LDA.B [$20],Y                        ;80BBF0;
    STA.L $7E2022,X                      ;80BBF2;
    PLY                                  ;80BBF6;
    INY                                  ;80BBF7;
    INY                                  ;80BBF8;
    INX                                  ;80BBF9;
    INX                                  ;80BBFA;
    INX                                  ;80BBFB;
    INX                                  ;80BBFC;
    DEC.B $04                            ;80BBFD;
    BNE CODE_80BBD1                      ;80BBFF;
    TXA                                  ;80BC01;
    CLC                                  ;80BC02;
    ADC.W #$0020                         ;80BC03;
    TAX                                  ;80BC06;
    DEC.B $02                            ;80BC07;
    BNE CODE_80BBCC                      ;80BC09;
    PLA                                  ;80BC0B;
    ADC.W #$0080                         ;80BC0C;
    TAY                                  ;80BC0F;
    DEC.B $00                            ;80BC10;
    BNE CODE_80BBC6                      ;80BC12;
    RTS                                  ;80BC14;

CODE_80BC15:
    LDY.W #$0000                         ;80BC15;
    TYX                                  ;80BC18;
    LDA.B [$10],Y                        ;80BC19;
    STA.L $7EF000                        ;80BC1B;
    INY                                  ;80BC1F;
    LDA.B [$10],Y                        ;80BC20;
    STA.L $7EF001                        ;80BC22;
    INY                                  ;80BC26;
    LDA.B [$10],Y                        ;80BC27;
    STA.L $7EF002                        ;80BC29;
    INY                                  ;80BC2D;

CODE_80BC2E:
    LDA.B [$10],Y                        ;80BC2E;
    CMP.B #$FF                           ;80BC30;
    BEQ CODE_80BC4E                      ;80BC32;
    STA.B $01                            ;80BC34;
    AND.B #$7F                           ;80BC36;
    STA.B $00                            ;80BC38;
    INY                                  ;80BC3A;
    LDA.B [$10],Y                        ;80BC3B;
    INY                                  ;80BC3D;

CODE_80BC3E:
    STA.L $7EF003,X                      ;80BC3E;
    BIT.B $01                            ;80BC42;
    BMI CODE_80BC47                      ;80BC44;
    INC A                                ;80BC46;

CODE_80BC47:
    INX                                  ;80BC47;
    DEC.B $00                            ;80BC48;
    BNE CODE_80BC3E                      ;80BC4A;
    BRA CODE_80BC2E                      ;80BC4C;

CODE_80BC4E:
    LDA.B #$00                           ;80BC4E;
    STA.B $10                            ;80BC50;
    LDA.B #$F0                           ;80BC52;
    STA.B $11                            ;80BC54;
    LDA.B #$7E                           ;80BC56;
    STA.B $12                            ;80BC58;
    RTS                                  ;80BC5A;

CODE_80BC5B:
    REP #$30                             ;80BC5B;
    LDX.W #$03FE                         ;80BC5D;
    LDA.W #$0000                         ;80BC60;

CODE_80BC63:
    STA.L $7EE800,X                      ;80BC63;
    STA.L $7EEC00,X                      ;80BC67;
    DEX                                  ;80BC6B;
    DEX                                  ;80BC6C;
    BPL CODE_80BC63                      ;80BC6D;
    SEP #$30                             ;80BC6F;
    RTS                                  ;80BC71;

CODE_80BC72:
    LDA.W $1F7A                          ;80BC72;
    AND.W #$00FF                         ;80BC75;
    CMP.W #$0002                         ;80BC78;
    BEQ CODE_80BCAB                      ;80BC7B;
    CMP.W #$0006                         ;80BC7D;
    BEQ CODE_80BC99                      ;80BC80;
    CMP.W #$0004                         ;80BC82;
    BNE CODE_80BCD0                      ;80BC85;
    BIT.W $1F95                          ;80BC87;
    BVC CODE_80BCD0                      ;80BC8A;
    SEP #$20                             ;80BC8C;
    LDA.L $7EE860                        ;80BC8E;
    STA.L $7EE840                        ;80BC92;
    REP #$20                             ;80BC96;
    RTS                                  ;80BC98;

CODE_80BC99:
    BIT.W $1F8F                          ;80BC99;
    BVC CODE_80BCD0                      ;80BC9C;
    SEP #$20                             ;80BC9E;
    LDA.L $7EE880                        ;80BCA0;
    STA.L $7EE860                        ;80BCA4;
    REP #$20                             ;80BCA8;
    RTS                                  ;80BCAA;

CODE_80BCAB:
    BIT.W $1F87                          ;80BCAB;
    BVC CODE_80BCD0                      ;80BCAE;
    LDA.L $7EE8A0                        ;80BCB0;
    STA.L $7EE864                        ;80BCB4;
    LDA.L $7EE8A2                        ;80BCB8;
    STA.L $7EE866                        ;80BCBC;
    LDA.L $7EE8A4                        ;80BCC0;
    STA.L $7EE841                        ;80BCC4;
    LDA.L $7EE8A6                        ;80BCC8;
    STA.L $7EE843                        ;80BCCC;

CODE_80BCD0:
    RTS                                  ;80BCD0;

CODE_80BCD1:
    PHD                                  ;80BCD1;
    PEA.W $1E48                          ;80BCD2;
    PLD                                  ;80BCD5;
    LDA.B $04                            ;80BCD6;
    STA.B $22                            ;80BCD8;
    LDA.B $07                            ;80BCDA;
    STA.B $24                            ;80BCDC;
    LDX.B $01                            ;80BCDE;
    JSR.W (PTR16_80BCEF,X)               ;80BCE0;
    JSR.W CODE_80C262                    ;80BCE3;
    PLD                                  ;80BCE6;
    JSL.L CODE_81808F                    ;80BCE7;
    JSR.W CODE_80D585                    ;80BCEB;
    RTS                                  ;80BCEE;

PTR16_80BCEF:
    dw CODE_80BCF7                       ;80BCEF;
    dw CODE_80BE16                       ;80BCF1;
    dw CODE_80BE4A                       ;80BCF3;
    dw CODE_80BE68                       ;80BCF5;

CODE_80BCF7:
    LDA.B #$02                           ;80BCF7;
    STA.B $01                            ;80BCF9;
    STZ.B $15                            ;80BCFB;
    STZ.B $1E                            ;80BCFD;
    STZ.B $0E                            ;80BCFF;
    STZ.B $18                            ;80BD01;
    STZ.B $16                            ;80BD03;
    STZ.B $17                            ;80BD05;
    LDA.B #$07                           ;80BD07;
    STA.B $0F                            ;80BD09;
    STZ.B $03                            ;80BD0B;
    STZ.B $14                            ;80BD0D;
    JSR.W CODE_80C13C                    ;80BD0F;
    JSR.W CODE_80C1FF                    ;80BD12;
    LDA.W $1F7A                          ;80BD15;
    BNE CODE_80BD1F                      ;80BD18;
    LDA.B #$01                           ;80BD1A;
    STA.W $1F7A                          ;80BD1C;

CODE_80BD1F:
    LDX.B $1E                            ;80BD1F;
    BEQ CODE_80BD25                      ;80BD21;
    LDA.B #$09                           ;80BD23;

CODE_80BD25:
    STA.B $1D                            ;80BD25;
    DEC A                                ;80BD27;
    TAX                                  ;80BD28;
    LDA.W DATA8_869B79,X                 ;80BD29;
    STA.B $04                            ;80BD2C;
    LDA.W DATA8_869B82,X                 ;80BD2E;
    STA.B $07                            ;80BD31;
    LDX.B #$40                           ;80BD33;
    LDY.B #$CA                           ;80BD35;
    JSL.L CODE_828000                    ;80BD37;
    LDY.B #$18                           ;80BD3B;
    JSL.L CODE_828011                    ;80BD3D;
    LDA.B #$04                           ;80BD41;
    STA.W $1F11                          ;80BD43;
    STA.W $1F12                          ;80BD46;
    REP #$20                             ;80BD49;
    STZ.B $05                            ;80BD4B;
    STZ.B $08                            ;80BD4D;
    STZ.W $00B6                          ;80BD4F;
    STZ.W $00B4                          ;80BD52;
    PHD                                  ;80BD55;
    LDA.W #$0000                         ;80BD56;
    PHA                                  ;80BD59;
    PLD                                  ;80BD5A;
    SEP #$20                             ;80BD5B;
    LDA.B #$20                           ;80BD5D;
    LDX.W $1E66                          ;80BD5F;
    BEQ CODE_80BD66                      ;80BD62;
    LDA.B #$29                           ;80BD64;

CODE_80BD66:
    JSL.L CODE_8087A2                    ;80BD66;
    LDY.B #$2E                           ;80BD6A;
    JSR.W CODE_80B301                    ;80BD6C;
    JSR.W CODE_808100                    ;80BD6F;
    LDY.B #$40                           ;80BD72;
    JSR.W CODE_80B301                    ;80BD74;
    JSR.W CODE_808100                    ;80BD77;
    LDY.B #$42                           ;80BD7A;
    JSR.W CODE_80B301                    ;80BD7C;
    JSR.W CODE_808100                    ;80BD7F;
    LDY.B #$20                           ;80BD82;
    JSR.W CODE_80B301                    ;80BD84;
    JSR.W CODE_808100                    ;80BD87;
    LDY.B #$24                           ;80BD8A;
    JSR.W CODE_80B301                    ;80BD8C;
    LDY.B #$68                           ;80BD8F;
    JSL.L CODE_808A7B                    ;80BD91;
    JSR.W CODE_808100                    ;80BD95;
    PLD                                  ;80BD98;
    LDY.B #$CE                           ;80BD99;
    JSL.L CODE_828011                    ;80BD9B;
    LDY.B #$00                           ;80BD9F;
    JSL.L CODE_808BE4                    ;80BDA1;
    LDY.B #$06                           ;80BDA5;
    JSL.L CODE_808BE4                    ;80BDA7;
    JSR.W CODE_808100                    ;80BDAB;
    LDY.B #$0A                           ;80BDAE;
    JSL.L CODE_808BE4                    ;80BDB0;
    JSR.W CODE_80C18D                    ;80BDB4;
    JSR.W CODE_80C375                    ;80BDB7;
    LDA.B #$07                           ;80BDBA;
    JSR.W CODE_80C2FF                    ;80BDBC;
    JSR.W CODE_808100                    ;80BDBF;
    JSR.W CODE_80C231                    ;80BDC2;
    LDA.B $1E                            ;80BDC5;
    BEQ CODE_80BDD8                      ;80BDC7;
    LDY.B #$0A                           ;80BDC9;
    JSL.L CODE_828011                    ;80BDCB;
    LDY.B #$0C                           ;80BDCF;
    JSL.L CODE_808BE4                    ;80BDD1;
    JSR.W CODE_808100                    ;80BDD5;

CODE_80BDD8:
    LDA.B $07                            ;80BDD8;
    ASL A                                ;80BDDA;
    ASL A                                ;80BDDB;
    ADC.B $04                            ;80BDDC;
    TAX                                  ;80BDDE;
    LDA.W DATA8_869BD7,X                 ;80BDDF;
    CMP.B #$0F                           ;80BDE2;
    BNE CODE_80BDF1                      ;80BDE4;
    TAX                                  ;80BDE6;
    LDA.W $1F90                          ;80BDE7;
    ASL A                                ;80BDEA;
    ASL A                                ;80BDEB;
    TXA                                  ;80BDEC;
    BCC CODE_80BDF1                      ;80BDED;
    LDA.B #$13                           ;80BDEF;

CODE_80BDF1:
    ASL A                                ;80BDF1;
    TAY                                  ;80BDF2;
    JSL.L CODE_808BE4                    ;80BDF3;
    LDA.B $07                            ;80BDF7;
    ASL A                                ;80BDF9;
    ASL A                                ;80BDFA;
    ADC.B $04                            ;80BDFB;
    TAX                                  ;80BDFD;
    LDA.W DATA8_869C07,X                 ;80BDFE;
    ASL A                                ;80BE01;
    TAY                                  ;80BE02;
    JSL.L CODE_828011                    ;80BE03;
    LDA.B #$0F                           ;80BE07;
    STA.W $00B3                          ;80BE09;
    LDA.B #$07                           ;80BE0C;
    STA.W $00C0                          ;80BE0E;
    LDA.B #$03                           ;80BE11;
    STA.B $0C                            ;80BE13;
    RTS                                  ;80BE15;

CODE_80BE16:
    JSR.W CODE_80C18D                    ;80BE16;
    DEC.B $0C                            ;80BE19;
    BNE CODE_80BE49                      ;80BE1B;
    LDA.B #$03                           ;80BE1D;
    STA.B $0C                            ;80BE1F;
    LDA.B $0F                            ;80BE21;
    BEQ CODE_80BE2C                      ;80BE23;
    DEC A                                ;80BE25;
    STA.B $0F                            ;80BE26;
    JSR.W CODE_80C2FF                    ;80BE28;
    RTS                                  ;80BE2B;

CODE_80BE2C:
    LDA.B #$04                           ;80BE2C;
    STA.B $01                            ;80BE2E;
    LDA.B #$17                           ;80BE30;
    STA.W $00C0                          ;80BE32;
    LDX.B $10                            ;80BE35;
    STZ.W $0AA1,X                        ;80BE37;
    LDX.B $11                            ;80BE3A;
    STZ.W $0AA1,X                        ;80BE3C;
    LDX.B $12                            ;80BE3F;
    STZ.W $0AA1,X                        ;80BE41;
    LDX.B $13                            ;80BE44;
    STZ.W $0AA1,X                        ;80BE46;

CODE_80BE49:
    RTS                                  ;80BE49;

CODE_80BE4A:
    STZ.B $0A                            ;80BE4A;
    JSR.W CODE_80BF4C                    ;80BE4C;
    LDA.W $00AC                          ;80BE4F;
    AND.B #$40                           ;80BE52;
    BNE CODE_80BE5D                      ;80BE54;
    LDA.W $00AC                          ;80BE56;
    AND.B #$80                           ;80BE59;
    BEQ CODE_80BE60                      ;80BE5B;

CODE_80BE5D:
    JSR.W CODE_80BFE8                    ;80BE5D;

CODE_80BE60:
    JSR.W CODE_80C0C9                    ;80BE60;
    JSL.L CODE_818000                    ;80BE63;
    RTS                                  ;80BE67;

CODE_80BE68:
    JSL.L CODE_818000                    ;80BE68;
    LDX.B $02                            ;80BE6C;
    JMP.W (PTR16_80BE71,X)               ;80BE6E;

PTR16_80BE71:
    dw CODE_80BE87                       ;80BE71;
    dw CODE_80BE9B                       ;80BE73;
    dw CODE_80BED2                       ;80BE75;
    dw CODE_80BE9B                       ;80BE77;
    dw CODE_80BED2                       ;80BE79;
    dw CODE_80BE9B                       ;80BE7B;
    dw CODE_80BED2                       ;80BE7D;
    dw CODE_80BE9B                       ;80BE7F;
    dw CODE_80BED2                       ;80BE81;
    dw CODE_80BF00                       ;80BE83;
    dw CODE_80BF1F                       ;80BE85;

CODE_80BE87:
    LDA.B #$02                           ;80BE87;
    STA.B $02                            ;80BE89;
    LDA.B #$2D                           ;80BE8B;
    JSL.L CODE_8088CD                    ;80BE8D;
    LDY.B #$04                           ;80BE91;
    JSR.W CODE_808873                    ;80BE93;
    LDA.B #$04                           ;80BE96;
    STA.B $0C                            ;80BE98;
    RTS                                  ;80BE9A;

CODE_80BE9B:
    DEC.B $0C                            ;80BE9B;
    BNE CODE_80BED1                      ;80BE9D;
    INC.B $02                            ;80BE9F;
    INC.B $02                            ;80BEA1;
    LDA.B #$01                           ;80BEA3;
    STA.B $0C                            ;80BEA5;
    PHB                                  ;80BEA7;
    REP #$30                             ;80BEA8;
    LDA.W #$01FF                         ;80BEAA;
    LDX.W #$0300                         ;80BEAD;
    LDY.W #$E000                         ;80BEB0;
    MVN $7F,$00                          ;80BEB3;
    LDA.W #$FFFF                         ;80BEB6;
    STA.L $000300                        ;80BEB9;
    LDA.W #$01FE                         ;80BEBD;
    LDX.W #$0300                         ;80BEC0;
    LDY.W #$0301                         ;80BEC3;
    MVN $00,$00                          ;80BEC6;
    SEP #$30                             ;80BEC9;
    PLB                                  ;80BECB;
    LDA.B #$01                           ;80BECC;
    STA.W $00A1                          ;80BECE;

CODE_80BED1:
    RTS                                  ;80BED1;

CODE_80BED2:
    DEC.B $0C                            ;80BED2;
    BNE CODE_80BEFF                      ;80BED4;
    INC.B $02                            ;80BED6;
    INC.B $02                            ;80BED8;
    LDA.B #$04                           ;80BEDA;
    STA.B $0C                            ;80BEDC;
    PHB                                  ;80BEDE;
    REP #$30                             ;80BEDF;
    LDA.W #$01FF                         ;80BEE1;
    LDX.W #$E000                         ;80BEE4;
    LDY.W #$0300                         ;80BEE7;
    MVN $00,$7F                          ;80BEEA;
    SEP #$30                             ;80BEED;
    PLB                                  ;80BEEF;
    LDA.B #$01                           ;80BEF0;
    STA.W $00A1                          ;80BEF2;
    LDA.B $02                            ;80BEF5;
    CMP.B #$12                           ;80BEF7;
    BCC CODE_80BEFF                      ;80BEF9;
    LDA.B #$18                           ;80BEFB;
    STA.B $0C                            ;80BEFD;

CODE_80BEFF:
    RTS                                  ;80BEFF;

CODE_80BF00:
    JSR.W CODE_80C18D                    ;80BF00;
    DEC.B $0C                            ;80BF03;
    BNE CODE_80BF1E                      ;80BF05;
    STZ.B $0F                            ;80BF07;
    JSR.W CODE_80C375                    ;80BF09;
    LDA.B #$00                           ;80BF0C;
    JSR.W CODE_80C2FF                    ;80BF0E;
    LDA.B #$07                           ;80BF11;
    STA.W $00C0                          ;80BF13;
    LDA.B #$03                           ;80BF16;
    STA.B $0C                            ;80BF18;
    INC.B $02                            ;80BF1A;
    INC.B $02                            ;80BF1C;

CODE_80BF1E:
    RTS                                  ;80BF1E;

CODE_80BF1F:
    JSR.W CODE_80C18D                    ;80BF1F;
    DEC.B $0C                            ;80BF22;
    BNE CODE_80BF4B                      ;80BF24;
    LDA.B #$03                           ;80BF26;
    STA.B $0C                            ;80BF28;
    LDA.B $0F                            ;80BF2A;
    CMP.B #$07                           ;80BF2C;
    BCS CODE_80BF37                      ;80BF2E;
    INC A                                ;80BF30;
    STA.B $0F                            ;80BF31;
    JSR.W CODE_80C2FF                    ;80BF33;
    RTS                                  ;80BF36;

CODE_80BF37:
    INC.W $00D2                          ;80BF37;
    INC.W $00D2                          ;80BF3A;
    STZ.W $00D3                          ;80BF3D;
    STZ.W $00D4                          ;80BF40;
    LDA.B #$17                           ;80BF43;
    STA.W $00C0                          ;80BF45;
    STZ.W $00B3                          ;80BF48;

CODE_80BF4B:
    RTS                                  ;80BF4B;

CODE_80BF4C:
    LDA.W $00AC                          ;80BF4C;
    BIT.B #$03                           ;80BF4F;
    BEQ CODE_80BF84                      ;80BF51;
    AND.B #$01                           ;80BF53;
    BEQ CODE_80BF6D                      ;80BF55;
    LDA.B $04                            ;80BF57;
    INC A                                ;80BF59;
    AND.B #$03                           ;80BF5A;
    CMP.B #$02                           ;80BF5C;
    BNE CODE_80BF69                      ;80BF5E;
    LDX.B $07                            ;80BF60;
    BEQ CODE_80BF69                      ;80BF62;
    CPX.B #$03                           ;80BF64;
    BEQ CODE_80BF69                      ;80BF66;
    INC A                                ;80BF68;

CODE_80BF69:
    STA.B $04                            ;80BF69;
    BRA CODE_80BF81                      ;80BF6B;

CODE_80BF6D:
    LDA.B $04                            ;80BF6D;
    DEC A                                ;80BF6F;
    AND.B #$03                           ;80BF70;
    CMP.B #$01                           ;80BF72;
    BNE CODE_80BF7F                      ;80BF74;
    LDX.B $07                            ;80BF76;
    BEQ CODE_80BF7F                      ;80BF78;
    CPX.B #$03                           ;80BF7A;
    BEQ CODE_80BF7F                      ;80BF7C;
    DEC A                                ;80BF7E;

CODE_80BF7F:
    STA.B $04                            ;80BF7F;

CODE_80BF81:
    LDA.W $00AC                          ;80BF81;

CODE_80BF84:
    AND.B #$0C                           ;80BF84;
    BEQ CODE_80BFB6                      ;80BF86;
    AND.B #$08                           ;80BF88;
    BEQ CODE_80BFA2                      ;80BF8A;
    LDA.B $07                            ;80BF8C;
    DEC A                                ;80BF8E;
    AND.B #$03                           ;80BF8F;
    CMP.B #$01                           ;80BF91;
    BNE CODE_80BF9E                      ;80BF93;
    LDX.B $04                            ;80BF95;
    BEQ CODE_80BF9E                      ;80BF97;
    CPX.B #$03                           ;80BF99;
    BEQ CODE_80BF9E                      ;80BF9B;
    DEC A                                ;80BF9D;

CODE_80BF9E:
    STA.B $07                            ;80BF9E;
    BRA CODE_80BFB6                      ;80BFA0;

CODE_80BFA2:
    LDA.B $07                            ;80BFA2;
    INC A                                ;80BFA4;
    AND.B #$03                           ;80BFA5;
    CMP.B #$02                           ;80BFA7;
    BNE CODE_80BFB4                      ;80BFA9;
    LDX.B $04                            ;80BFAB;
    BEQ CODE_80BFB4                      ;80BFAD;
    CPX.B #$03                           ;80BFAF;
    BEQ CODE_80BFB4                      ;80BFB1;
    INC A                                ;80BFB3;

CODE_80BFB4:
    STA.B $07                            ;80BFB4;

CODE_80BFB6:
    LDA.B $04                            ;80BFB6;
    CMP.B $22                            ;80BFB8;
    BNE CODE_80BFC2                      ;80BFBA;
    LDA.B $07                            ;80BFBC;
    CMP.B $24                            ;80BFBE;
    BEQ CODE_80BFE1                      ;80BFC0;

CODE_80BFC2:
    LDA.B #$2C                           ;80BFC2;
    JSL.L CODE_8088CD                    ;80BFC4;
    INC.B $0A                            ;80BFC8;
    LDA.B $07                            ;80BFCA;
    ASL A                                ;80BFCC;
    ASL A                                ;80BFCD;
    CLC                                  ;80BFCE;
    ADC.B $04                            ;80BFCF;
    TAX                                  ;80BFD1;
    LDA.W DATA8_869B93,X                 ;80BFD2;
    BMI CODE_80BFE1                      ;80BFD5;
    CMP.B #$09                           ;80BFD7;
    BNE CODE_80BFDF                      ;80BFD9;
    LDX.B $1E                            ;80BFDB;
    BEQ CODE_80BFE1                      ;80BFDD;

CODE_80BFDF:
    STA.B $1D                            ;80BFDF;

CODE_80BFE1:
    JSR.W CODE_80C231                    ;80BFE1;
    JSR.W CODE_80C18D                    ;80BFE4;
    RTS                                  ;80BFE7;

CODE_80BFE8:
    LDA.B $07                            ;80BFE8;
    ASL A                                ;80BFEA;
    ASL A                                ;80BFEB;
    CLC                                  ;80BFEC;
    ADC.B $04                            ;80BFED;
    ASL A                                ;80BFEF;
    TAX                                  ;80BFF0;
    JMP.W (PTR16_80BFF4,X)               ;80BFF1;

PTR16_80BFF4:
    dw CODE_80C014                       ;80BFF4;
    dw CODE_80C039                       ;80BFF6;
    dw CODE_80C03D                       ;80BFF8;
    dw CODE_80C065                       ;80BFFA;
    dw CODE_80C041                       ;80BFFC;
    dw CODE_80C08B                       ;80BFFE;
    dw CODE_80C08B                       ;80C000;
    dw CODE_80C045                       ;80C002;
    dw CODE_80C049                       ;80C004;
    dw CODE_80C08B                       ;80C006;
    dw CODE_80C08B                       ;80C008;
    dw CODE_80C04D                       ;80C00A;
    dw CODE_80C0A0                       ;80C00C;
    dw CODE_80C051                       ;80C00E;
    dw CODE_80C055                       ;80C010;
    dw CODE_80C0BB                       ;80C012;

CODE_80C014:
    LDA.B #$00                           ;80C014;
    CMP.B $03                            ;80C016;
    BEQ CODE_80C038                      ;80C018;
    JSR.W CODE_80C24A                    ;80C01A;
    JSR.W CODE_808100                    ;80C01D;
    LDY.B #$14                           ;80C020;
    JSL.L CODE_808BE4                    ;80C022;
    LDY.B #$CE                           ;80C026;
    JSL.L CODE_828011                    ;80C028;
    LDA.B #$27                           ;80C02C;
    JSL.L CODE_8088CD                    ;80C02E;
    LDA.B #$01                           ;80C032;
    STA.B $1D                            ;80C034;
    INC.B $18                            ;80C036;

CODE_80C038:
    RTS                                  ;80C038;

CODE_80C039:
    LDA.B #$01                           ;80C039;
    BRA CODE_80C059                      ;80C03B;

CODE_80C03D:
    LDA.B #$08                           ;80C03D;
    BRA CODE_80C059                      ;80C03F;

CODE_80C041:
    LDA.B #$03                           ;80C041;
    BRA CODE_80C059                      ;80C043;

CODE_80C045:
    LDA.B #$04                           ;80C045;
    BRA CODE_80C059                      ;80C047;

CODE_80C049:
    LDA.B #$05                           ;80C049;
    BRA CODE_80C059                      ;80C04B;

CODE_80C04D:
    LDA.B #$07                           ;80C04D;
    BRA CODE_80C059                      ;80C04F;

CODE_80C051:
    LDA.B #$06                           ;80C051;
    BRA CODE_80C059                      ;80C053;

CODE_80C055:
    LDA.B #$02                           ;80C055;
    BRA CODE_80C059                      ;80C057;

CODE_80C059:
    STA.W $1F7A                          ;80C059;
    INC.B $01                            ;80C05C;
    INC.B $01                            ;80C05E;
    STZ.B $02                            ;80C060;
    INC.B $15                            ;80C062;
    RTS                                  ;80C064;

CODE_80C065:
    LDA.B #$02                           ;80C065;
    CMP.B $03                            ;80C067;
    BEQ CODE_80C08A                      ;80C069;
    JSR.W CODE_80C24A                    ;80C06B;
    JSR.W CODE_808100                    ;80C06E;
    LDY.B #$10                           ;80C071;
    JSL.L CODE_808BE4                    ;80C073;
    REP #$10                             ;80C077;
    LDY.W #$0190                         ;80C079;
    JSL.L CODE_828011                    ;80C07C;
    SEP #$10                             ;80C080;
    LDA.B #$27                           ;80C082;
    JSL.L CODE_8088CD                    ;80C084;
    INC.B $18                            ;80C088;

CODE_80C08A:
    RTS                                  ;80C08A;

CODE_80C08B:
    LDA.B $03                            ;80C08B;
    BNE CODE_80C097                      ;80C08D;
    LDA.B $1D                            ;80C08F;
    CMP.B #$09                           ;80C091;
    BEQ CODE_80C0BB                      ;80C093;
    BRA CODE_80C059                      ;80C095;

CODE_80C097:
    CMP.B #$06                           ;80C097;
    BNE CODE_80C09F                      ;80C099;
    LDA.B #$FF                           ;80C09B;
    BNE CODE_80C09F                      ;80C09D;

CODE_80C09F:
    RTS                                  ;80C09F;

CODE_80C0A0:
    LDA.B #$04                           ;80C0A0;
    CMP.B $03                            ;80C0A2;
    BEQ CODE_80C0BA                      ;80C0A4;
    JSR.W CODE_80C24A                    ;80C0A6;
    JSR.W CODE_808100                    ;80C0A9;
    LDY.B #$12                           ;80C0AC;
    JSL.L CODE_808BE4                    ;80C0AE;
    LDA.B #$27                           ;80C0B2;
    JSL.L CODE_8088CD                    ;80C0B4;
    INC.B $18                            ;80C0B8;

CODE_80C0BA:
    RTS                                  ;80C0BA;

CODE_80C0BB:
    LDA.B $1E                            ;80C0BB;
    BEQ CODE_80C0C8                      ;80C0BD;
    LDA.W $1F7B                          ;80C0BF;
    CLC                                  ;80C0C2;
    ADC.B #$09                           ;80C0C3;
    JMP.W CODE_80C059                    ;80C0C5;

CODE_80C0C8:
    RTS                                  ;80C0C8;

CODE_80C0C9:
    LDA.B $0A                            ;80C0C9;
    BEQ CODE_80C13B                      ;80C0CB;
    LDA.B $03                            ;80C0CD;
    CMP.B #$04                           ;80C0CF;
    BNE CODE_80C0F1                      ;80C0D1;
    INC.B $18                            ;80C0D3;
    STZ.B $16                            ;80C0D5;
    LDA.B $07                            ;80C0D7;
    ASL A                                ;80C0D9;
    ASL A                                ;80C0DA;
    CLC                                  ;80C0DB;
    ADC.B $04                            ;80C0DC;
    TAX                                  ;80C0DE;
    LDA.W DATA8_869B93,X                 ;80C0DF;
    BMI CODE_80C0F1                      ;80C0E2;
    CMP.B #$09                           ;80C0E4;
    BEQ CODE_80C0F1                      ;80C0E6;
    DEC A                                ;80C0E8;
    STA.B $17                            ;80C0E9;
    INC.B $16                            ;80C0EB;
    LDA.B #$01                           ;80C0ED;
    STA.B $19                            ;80C0EF;

CODE_80C0F1:
    LDA.B $07                            ;80C0F1;
    ASL A                                ;80C0F3;
    ASL A                                ;80C0F4;
    STA.W $0000                          ;80C0F5;
    LDA.B $03                            ;80C0F8;
    ASL A                                ;80C0FA;
    ASL A                                ;80C0FB;
    ASL A                                ;80C0FC;
    ADC.W $0000                          ;80C0FD;
    ADC.B $04                            ;80C100;
    TAX                                  ;80C102;
    LDA.W DATA8_869BD7,X                 ;80C103;
    BEQ CODE_80C13B                      ;80C106;
    CMP.B #$12                           ;80C108;
    BNE CODE_80C110                      ;80C10A;
    LDX.B $1E                            ;80C10C;
    BEQ CODE_80C13B                      ;80C10E;

CODE_80C110:
    CMP.B #$0F                           ;80C110;
    BNE CODE_80C11F                      ;80C112;
    TAX                                  ;80C114;
    LDA.W $1F90                          ;80C115;
    ASL A                                ;80C118;
    ASL A                                ;80C119;
    TXA                                  ;80C11A;
    BCC CODE_80C11F                      ;80C11B;
    LDA.B #$13                           ;80C11D;

CODE_80C11F:
    ASL A                                ;80C11F;
    TAY                                  ;80C120;
    JSL.L CODE_808BE4                    ;80C121;
    LDA.B $03                            ;80C125;
    BNE CODE_80C13B                      ;80C127;
    LDA.B $07                            ;80C129;
    ASL A                                ;80C12B;
    ASL A                                ;80C12C;
    ADC.B $04                            ;80C12D;
    TAX                                  ;80C12F;
    LDA.W DATA8_869C07,X                 ;80C130;
    BEQ CODE_80C13B                      ;80C133;
    ASL A                                ;80C135;
    TAY                                  ;80C136;
    JSL.L CODE_828011                    ;80C137;

CODE_80C13B:
    RTS                                  ;80C13B;

CODE_80C13C:
    STZ.B $0D                            ;80C13C;
    LDX.B #$0E                           ;80C13E;

CODE_80C140:
    LDA.W $1F88,X                        ;80C140;
    AND.B #$40                           ;80C143;
    BEQ CODE_80C14F                      ;80C145;
    TXA                                  ;80C147;
    LSR A                                ;80C148;
    TAY                                  ;80C149;
    LDA.W DATA8_869B8B,Y                 ;80C14A;
    TSB.B $0D                            ;80C14D;

CODE_80C14F:
    DEX                                  ;80C14F;
    DEX                                  ;80C150;
    BPL CODE_80C140                      ;80C151;
    LDX.B #$00                           ;80C153;

CODE_80C155:
    LDA.W $0AA1,X                        ;80C155;
    BEQ CODE_80C160                      ;80C158;
    TXA                                  ;80C15A;
    CLC                                  ;80C15B;
    ADC.B #$07                           ;80C15C;
    BRA CODE_80C155                      ;80C15E;

CODE_80C160:
    INC.W $0AA1                          ;80C160;
    LDA.B #$44                           ;80C163;
    STA.W $0AA2,X                        ;80C165;
    LDA.B #$26                           ;80C168;
    STA.W $0AA3,X                        ;80C16A;
    LDA.B #$D2                           ;80C16D;
    STA.W $0AA4,X                        ;80C16F;
    LDA.B #$0A                           ;80C172;
    STA.W $0AA5,X                        ;80C174;
    LDA.B #$00                           ;80C177;
    STA.W $0AA6,X                        ;80C179;
    LDA.B #$86                           ;80C17C;
    STA.W $0AA7,X                        ;80C17E;
    STZ.W $0B22                          ;80C181;
    LDA.B $0D                            ;80C184;
    CMP.B #$FF                           ;80C186;
    BNE CODE_80C18C                      ;80C188;
    INC.B $1E                            ;80C18A;

CODE_80C18C:
    RTS                                  ;80C18C;

CODE_80C18D:
    REP #$20                             ;80C18D;
    LDX.B #$10                           ;80C18F;
    STX.W $0B22                          ;80C191;
    LDA.W #$9BA3                         ;80C194;
    STA.W $0B23                          ;80C197;
    LDX.B #$30                           ;80C19A;
    STX.W $0B25                          ;80C19C;
    LDA.B $0D                            ;80C19F;
    AND.W #$0003                         ;80C1A1;
    ASL A                                ;80C1A4;
    ASL A                                ;80C1A5;
    ADC.W #$9BA7                         ;80C1A6;
    STA.W $0B26                          ;80C1A9;
    LDX.B #$30                           ;80C1AC;
    STX.W $0B28                          ;80C1AE;
    LDA.B $0D                            ;80C1B1;
    AND.W #$000C                         ;80C1B3;
    ORA.B $0E                            ;80C1B6;
    AND.W #$00FF                         ;80C1B8;
    CLC                                  ;80C1BB;
    ADC.W #$9BB7                         ;80C1BC;
    STA.W $0B29                          ;80C1BF;
    LDX.B #$30                           ;80C1C2;
    STX.W $0B2B                          ;80C1C4;
    LDA.B $0D                            ;80C1C7;
    AND.W #$0030                         ;80C1C9;
    LSR A                                ;80C1CC;
    LSR A                                ;80C1CD;
    ORA.B $0E                            ;80C1CE;
    AND.W #$00FF                         ;80C1D0;
    CLC                                  ;80C1D3;
    ADC.W #$9BB7                         ;80C1D4;
    STA.W $0B2C                          ;80C1D7;
    LDX.B #$30                           ;80C1DA;
    STX.W $0B2E                          ;80C1DC;
    LDA.B $0D                            ;80C1DF;
    AND.W #$00C0                         ;80C1E1;
    LSR A                                ;80C1E4;
    LSR A                                ;80C1E5;
    LSR A                                ;80C1E6;
    LSR A                                ;80C1E7;
    ADC.W #$9BA7                         ;80C1E8;
    STA.W $0B2F                          ;80C1EB;
    LDX.B #$10                           ;80C1EE;
    STX.W $0B31                          ;80C1F0;
    LDA.W #$9BA3                         ;80C1F3;
    STA.W $0B32                          ;80C1F6;
    STZ.W $0B34                          ;80C1F9;
    SEP #$20                             ;80C1FC;
    RTS                                  ;80C1FE;

CODE_80C1FF:
    LDA.B #$17                           ;80C1FF;
    STA.W $00C0                          ;80C201;
    STZ.W $00C1                          ;80C204;
    STZ.W $2123                          ;80C207;
    STZ.W $2124                          ;80C20A;
    STZ.W $00C6                          ;80C20D;
    STZ.W $00C7                          ;80C210;
    LDA.B #$A0                           ;80C213;
    STA.W $2125                          ;80C215;
    STA.W $00C8                          ;80C218;
    LDA.B #$10                           ;80C21B;
    STA.W $00C9                          ;80C21D;
    LDA.B #$83                           ;80C220;
    STA.W $00CA                          ;80C222;
    LDA.B #$08                           ;80C225;
    STA.W $00CB                          ;80C227;
    STA.W $00CC                          ;80C22A;
    STA.W $00CD                          ;80C22D;
    RTS                                  ;80C230;

CODE_80C231:
    STZ.B $0E                            ;80C231;
    LDA.B $03                            ;80C233;
    BNE CODE_80C249                      ;80C235;
    LDX.B $1D                            ;80C237;
    CPX.B #$09                           ;80C239;
    BEQ CODE_80C249                      ;80C23B;
    DEX                                  ;80C23D;
    LDA.W DATA8_869B8B,X                 ;80C23E;
    AND.B $0D                            ;80C241;
    BEQ CODE_80C249                      ;80C243;
    LDA.B #$10                           ;80C245;
    STA.B $0E                            ;80C247;

CODE_80C249:
    RTS                                  ;80C249;

CODE_80C24A:
    PHA                                  ;80C24A;
    LDA.B $03                            ;80C24B;
    STA.B $14                            ;80C24D;
    INC A                                ;80C24F;
    ASL A                                ;80C250;
    TAY                                  ;80C251;
    JSL.L CODE_808BE4                    ;80C252;
    PLA                                  ;80C256;
    STA.B $03                            ;80C257;
    ASL A                                ;80C259;
    TAY                                  ;80C25A;
    JSL.L CODE_808BE4                    ;80C25B;
    STZ.B $16                            ;80C25F;
    RTS                                  ;80C261;

CODE_80C262:
    LDA.B $18                            ;80C262;
    BEQ CODE_80C274                      ;80C264;
    PHD                                  ;80C266;
    PEA.W $0000                          ;80C267;
    PLD                                  ;80C26A;
    LDA.B #$36                           ;80C26B;
    JSR.W CODE_8089E1                    ;80C26D;
    PLD                                  ;80C270;
    STZ.B $18                            ;80C271;
    RTS                                  ;80C273;

CODE_80C274:
    LDA.B $16                            ;80C274;
    BNE CODE_80C279                      ;80C276;
    RTS                                  ;80C278;

CODE_80C279:
    BMI CODE_80C298                      ;80C279;
    LDA.B #$81                           ;80C27B;
    STA.B $16                            ;80C27D;
    LDA.B #$03                           ;80C27F;
    STA.B $19                            ;80C281;
    LDA.B $17                            ;80C283;
    ASL A                                ;80C285;
    TAX                                  ;80C286;
    REP #$20                             ;80C287;
    LDA.W PTR16_869C17,X                 ;80C289;
    STA.B $1C                            ;80C28C;
    SEP #$20                             ;80C28E;
    LDA.B #$09                           ;80C290;
    STA.B $1B                            ;80C292;

CODE_80C294:
    LDA.B #$0B                           ;80C294;
    STA.B $1A                            ;80C296;

CODE_80C298:
    DEC.B $19                            ;80C298;
    BEQ CODE_80C29D                      ;80C29A;
    RTS                                  ;80C29C;

CODE_80C29D:
    LDA.B ($1C)                          ;80C29D;
    CMP.B #$FF                           ;80C29F;
    BEQ CODE_80C298                      ;80C2A1;
    CMP.B #$FE                           ;80C2A3;
    BNE CODE_80C2B5                      ;80C2A5;
    REP #$20                             ;80C2A7;
    INC.B $1C                            ;80C2A9;
    SEP #$20                             ;80C2AB;
    LDA.B #$03                           ;80C2AD;
    STA.B $19                            ;80C2AF;
    INC.B $1B                            ;80C2B1;
    BRA CODE_80C294                      ;80C2B3;

CODE_80C2B5:
    LDX.W $00A4                          ;80C2B5;
    STA.W $0604,X                        ;80C2B8;
    LDA.B #$2C                           ;80C2BB;
    STA.W $0605,X                        ;80C2BD;
    REP #$20                             ;80C2C0;
    LDA.B $1A                            ;80C2C2;
    AND.W #$00FF                         ;80C2C4;
    STA.W $0000                          ;80C2C7;
    LDA.B $1B                            ;80C2CA;
    AND.W #$00FF                         ;80C2CC;
    ASL A                                ;80C2CF;
    ASL A                                ;80C2D0;
    ASL A                                ;80C2D1;
    ASL A                                ;80C2D2;
    ASL A                                ;80C2D3;
    CLC                                  ;80C2D4;
    ADC.W $0000                          ;80C2D5;
    CLC                                  ;80C2D8;
    ADC.W #$0800                         ;80C2D9;
    STA.W $0601,X                        ;80C2DC;
    SEP #$20                             ;80C2DF;
    LDA.B #$02                           ;80C2E1;
    STA.W $0603,X                        ;80C2E3;
    LDA.B #$80                           ;80C2E6;
    STA.W $0600,X                        ;80C2E8;
    TXA                                  ;80C2EB;
    CLC                                  ;80C2EC;
    ADC.B #$06                           ;80C2ED;
    STA.W $00A4                          ;80C2EF;
    REP #$20                             ;80C2F2;
    INC.B $1C                            ;80C2F4;
    SEP #$20                             ;80C2F6;
    LDA.B #$03                           ;80C2F8;
    STA.B $19                            ;80C2FA;
    INC.B $1A                            ;80C2FC;
    RTS                                  ;80C2FE;

CODE_80C2FF:
    REP #$20                             ;80C2FF;
    PHB                                  ;80C301;
    LDX.B #$7F                           ;80C302;
    PHX                                  ;80C304;
    PLB                                  ;80C305;
    PHA                                  ;80C306;
    AND.W #$00FF                         ;80C307;
    ASL A                                ;80C30A;
    ASL A                                ;80C30B;
    ASL A                                ;80C30C;
    ASL A                                ;80C30D;
    ASL A                                ;80C30E;
    ADC.W #$9EA2                         ;80C30F;
    STA.W $D001                          ;80C312;
    STA.W $D004                          ;80C315;
    STA.W $D007                          ;80C318;
    STA.W $D00A                          ;80C31B;
    STA.W $D00D                          ;80C31E;
    STA.W $D010                          ;80C321;
    STA.W $D013                          ;80C324;
    STA.W $D016                          ;80C327;
    STA.W $D019                          ;80C32A;
    STA.W $D01C                          ;80C32D;
    STA.W $D01F                          ;80C330;
    STA.W $D022                          ;80C333;
    STA.W $D025                          ;80C336;
    STA.W $D028                          ;80C339;
    PLA                                  ;80C33C;
    AND.W #$00FF                         ;80C33D;
    ASL A                                ;80C340;
    ASL A                                ;80C341;
    ASL A                                ;80C342;
    ASL A                                ;80C343;
    ADC.W #$9FA2                         ;80C344;
    STA.W $D101                          ;80C347;
    STA.W $D104                          ;80C34A;
    STA.W $D107                          ;80C34D;
    STA.W $D10A                          ;80C350;
    STA.W $D10D                          ;80C353;
    STA.W $D110                          ;80C356;
    STA.W $D113                          ;80C359;
    STA.W $D116                          ;80C35C;
    STA.W $D119                          ;80C35F;
    STA.W $D11C                          ;80C362;
    STA.W $D11F                          ;80C365;
    STA.W $D122                          ;80C368;
    STA.W $D125                          ;80C36B;
    STA.W $D128                          ;80C36E;
    PLB                                  ;80C371;
    SEP #$30                             ;80C372;
    RTS                                  ;80C374;

CODE_80C375:
    PHP                                  ;80C375;
    PHB                                  ;80C376;
    SEP #$30                             ;80C377;
    LDX.B #$00                           ;80C379;

CODE_80C37B:
    LDA.W $0AA1,X                        ;80C37B;
    BEQ CODE_80C387                      ;80C37E;
    TXA                                  ;80C380;
    CLC                                  ;80C381;
    ADC.B #$07                           ;80C382;
    TAX                                  ;80C384;
    BRA CODE_80C37B                      ;80C385;

CODE_80C387:
    STX.B $10                            ;80C387;
    INC.W $0AA1,X                        ;80C389;
    REP #$30                             ;80C38C;
    TXA                                  ;80C38E;
    CLC                                  ;80C38F;
    ADC.W #$0AA1                         ;80C390;
    INC A                                ;80C393;
    TAY                                  ;80C394;
    LDX.W #$A022                         ;80C395;
    LDA.W #$0005                         ;80C398;
    MVN $00,$86                          ;80C39B;
    SEP #$30                             ;80C39E;
    LDX.B #$00                           ;80C3A0;

CODE_80C3A2:
    LDA.W $0AA1,X                        ;80C3A2;
    BEQ CODE_80C3AE                      ;80C3A5;
    TXA                                  ;80C3A7;
    CLC                                  ;80C3A8;
    ADC.B #$07                           ;80C3A9;
    TAX                                  ;80C3AB;
    BRA CODE_80C3A2                      ;80C3AC;

CODE_80C3AE:
    STX.B $11                            ;80C3AE;
    INC.W $0AA1,X                        ;80C3B0;
    REP #$30                             ;80C3B3;
    TXA                                  ;80C3B5;
    CLC                                  ;80C3B6;
    ADC.W #$0AA1                         ;80C3B7;
    INC A                                ;80C3BA;
    TAY                                  ;80C3BB;
    LDX.W #$A028                         ;80C3BC;
    LDA.W #$0005                         ;80C3BF;
    MVN $00,$86                          ;80C3C2;
    SEP #$30                             ;80C3C5;
    LDX.B #$00                           ;80C3C7;

CODE_80C3C9:
    LDA.W $0AA1,X                        ;80C3C9;
    BEQ CODE_80C3D5                      ;80C3CC;
    TXA                                  ;80C3CE;
    CLC                                  ;80C3CF;
    ADC.B #$07                           ;80C3D0;
    TAX                                  ;80C3D2;
    BRA CODE_80C3C9                      ;80C3D3;

CODE_80C3D5:
    STX.B $12                            ;80C3D5;
    INC.W $0AA1,X                        ;80C3D7;
    REP #$30                             ;80C3DA;
    TXA                                  ;80C3DC;
    CLC                                  ;80C3DD;
    ADC.W #$0AA1                         ;80C3DE;
    INC A                                ;80C3E1;
    TAY                                  ;80C3E2;
    LDX.W #$A02E                         ;80C3E3;
    LDA.W #$0005                         ;80C3E6;
    MVN $00,$86                          ;80C3E9;
    SEP #$30                             ;80C3EC;
    LDX.B #$00                           ;80C3EE;

CODE_80C3F0:
    LDA.W $0AA1,X                        ;80C3F0;
    BEQ CODE_80C3FC                      ;80C3F3;
    TXA                                  ;80C3F5;
    CLC                                  ;80C3F6;
    ADC.B #$07                           ;80C3F7;
    TAX                                  ;80C3F9;
    BRA CODE_80C3F0                      ;80C3FA;

CODE_80C3FC:
    STX.B $13                            ;80C3FC;
    INC.W $0AA1,X                        ;80C3FE;
    REP #$30                             ;80C401;
    TXA                                  ;80C403;
    CLC                                  ;80C404;
    ADC.W #$0AA1                         ;80C405;
    INC A                                ;80C408;
    TAY                                  ;80C409;
    LDX.W #$A034                         ;80C40A;
    LDA.W #$0005                         ;80C40D;
    MVN $00,$86                          ;80C410;
    SEP #$30                             ;80C413;
    LDA.B #$7F                           ;80C415;
    PHA                                  ;80C417;
    PLB                                  ;80C418;
    LDA.B #$90                           ;80C419;
    LDX.B #$27                           ;80C41B;

CODE_80C41D:
    STA.W $D000,X                        ;80C41D;
    STA.W $D100,X                        ;80C420;
    DEX                                  ;80C423;
    DEX                                  ;80C424;
    DEX                                  ;80C425;
    BPL CODE_80C41D                      ;80C426;
    STZ.W $D02A                          ;80C428;
    STZ.W $D12A                          ;80C42B;
    PLB                                  ;80C42E;
    PLP                                  ;80C42F;
    RTS                                  ;80C430;

CODE_80C431:
    SEP #$30                             ;80C431;
    STZ.W $1EC9                          ;80C433;
    STZ.W $1ECA                          ;80C436;
    RTS                                  ;80C439;

CODE_80C43A:
    PHP                                  ;80C43A;
    PHD                                  ;80C43B;
    SEP #$30                             ;80C43C;
    PEA.W $1EC8                          ;80C43E;
    PLD                                  ;80C441;
    LDX.B $01                            ;80C442;
    JSR.W (PTR16_80C44C,X)               ;80C444;
    PLD                                  ;80C447;
    PLP                                  ;80C448;
    JMP.W CODE_80D585                    ;80C449;

PTR16_80C44C:
    dw CODE_80C454                       ;80C44C;
    dw CODE_80C4DC                       ;80C44E;
    dw CODE_80C4F1                       ;80C450;
    dw CODE_80C503                       ;80C452;

CODE_80C454:
    REP #$30                             ;80C454;
    PHB                                  ;80C456;
    LDX.W #$0300                         ;80C457;
    LDY.W #$C000                         ;80C45A;
    LDA.W #$00FF                         ;80C45D;
    MVN $7F,$00                          ;80C460;
    PLB                                  ;80C463;
    STZ.B $21                            ;80C464;
    STZ.W $00B4                          ;80C466;
    STZ.W $00B6                          ;80C469;
    STZ.W $00B8                          ;80C46C;
    STZ.W $00BA                          ;80C46F;
    LDA.W $1E4D                          ;80C472;
    STA.B $05                            ;80C475;
    LDA.W $1E50                          ;80C477;
    STA.B $08                            ;80C47A;
    STZ.W $1E4D                          ;80C47C;
    STZ.W $1E50                          ;80C47F;
    SEP #$30                             ;80C482;
    JSR.W CODE_80C96E                    ;80C484;
    JSR.W CODE_80C9AE                    ;80C487;
    LDA.B #$04                           ;80C48A;
    STA.W $1F11                          ;80C48C;
    STA.W $1F12                          ;80C48F;
    LDA.B #$06                           ;80C492;
    STA.W $1F10                          ;80C494;
    JSR.W CODE_80C590                    ;80C497;
    LDA.W $0BDB                          ;80C49A;
    LSR A                                ;80C49D;
    STA.B $0A                            ;80C49E;
    INC.W $0AA1                          ;80C4A0;
    LDA.B #$01                           ;80C4A3;
    STA.W $0AA2                          ;80C4A5;
    LDA.B #$26                           ;80C4A8;
    STA.W $0AA3                          ;80C4AA;
    JSR.W CODE_80C786                    ;80C4AD;
    LDA.B #$02                           ;80C4B0;
    STA.B $01                            ;80C4B2;
    PHB                                  ;80C4B4;
    REP #$30                             ;80C4B5;
    LDX.W #$1928                         ;80C4B7;
    LDY.W #$BB00                         ;80C4BA;
    LDA.W #$009F                         ;80C4BD;
    MVN $7F,$00                          ;80C4C0;
    SEP #$30                             ;80C4C3;
    PLB                                  ;80C4C5;
    LDY.B #$14                           ;80C4C6;
    JSL.L CODE_808A7B                    ;80C4C8;
    STZ.W $1929                          ;80C4CC;
    STZ.W $1949                          ;80C4CF;
    STZ.W $1969                          ;80C4D2;
    STZ.W $1989                          ;80C4D5;
    JSR.W CODE_80C8DB                    ;80C4D8;
    RTS                                  ;80C4DB;

CODE_80C4DC:
    PHD                                  ;80C4DC;
    PEA.W $0000                          ;80C4DD;
    PLD                                  ;80C4E0;
    LDX.B #$01                           ;80C4E1;
    LDY.B #$02                           ;80C4E3;
    JSR.W CODE_808979                    ;80C4E5;
    PLD                                  ;80C4E8;
    LDA.B #$04                           ;80C4E9;
    STA.B $01                            ;80C4EB;
    JSR.W CODE_80C8DB                    ;80C4ED;
    RTS                                  ;80C4F0;

CODE_80C4F1:
    JSR.W CODE_80C8DB                    ;80C4F1;
    LDX.B $02                            ;80C4F4;
    JMP.W (PTR16_80C4F9,X)               ;80C4F6;

PTR16_80C4F9:
    dw CODE_80C4FD                       ;80C4F9;
    dw CODE_80C739                       ;80C4FB;

CODE_80C4FD:
    SEP #$30                             ;80C4FD;
    JSR.W CODE_80C695                    ;80C4FF;
    RTS                                  ;80C502;

CODE_80C503:
    LDY.B #$FF                           ;80C503;
    LDA.B #$FE                           ;80C505;
    JSL.L CODE_80887F                    ;80C507;
    LDA.B $21                            ;80C50B;
    BEQ CODE_80C51A                      ;80C50D;
    PHD                                  ;80C50F;
    PEA.W $0000                          ;80C510;
    PLD                                  ;80C513;
    JSR.W CODE_808995                    ;80C514;
    PLD                                  ;80C517;
    BRA CODE_80C527                      ;80C518;

CODE_80C51A:
    PHD                                  ;80C51A;
    PEA.W $0000                          ;80C51B;
    PLD                                  ;80C51E;
    LDX.B #$01                           ;80C51F;
    LDY.B #$02                           ;80C521;
    JSR.W CODE_80899B                    ;80C523;
    PLD                                  ;80C526;

CODE_80C527:
    REP #$20                             ;80C527;
    LDA.B $05                            ;80C529;
    STA.W $1E4D                          ;80C52B;
    STA.W $00B4                          ;80C52E;
    LDA.B $08                            ;80C531;
    STA.W $1E50                          ;80C533;
    STA.W $00B6                          ;80C536;
    LDA.W $1E8D                          ;80C539;
    STA.W $00B8                          ;80C53C;
    LDA.W $1E90                          ;80C53F;
    STA.W $00BA                          ;80C542;
    SEP #$20                             ;80C545;
    LDA.B #$04                           ;80C547;
    STA.W $1F11                          ;80C549;
    STA.W $1F12                          ;80C54C;
    PHD                                  ;80C54F;
    PEA.W $0000                          ;80C550;
    PLD                                  ;80C553;
    JSR.W CODE_80D585                    ;80C554;
    PLD                                  ;80C557;
    STZ.W $1F11                          ;80C558;
    STZ.W $1F12                          ;80C55B;
    STZ.W $1F10                          ;80C55E;
    JSR.W CODE_80C617                    ;80C561;
    LDA.B $21                            ;80C564;
    ORA.B #$80                           ;80C566;
    STA.W $1F24                          ;80C568;
    STZ.B $01                            ;80C56B;
    STZ.B $02                            ;80C56D;
    JSR.W CODE_80C99B                    ;80C56F;
    JSR.W CODE_80CA31                    ;80C572;
    JSR.W CODE_80CE3E                    ;80C575;
    LDA.B #$01                           ;80C578;
    TSB.W $00A1                          ;80C57A;
    PHB                                  ;80C57D;
    REP #$30                             ;80C57E;
    LDX.W #$BB00                         ;80C580;
    LDY.W #$1928                         ;80C583;
    LDA.W #$009F                         ;80C586;
    MVN $00,$7F                          ;80C589;
    SEP #$30                             ;80C58C;
    PLB                                  ;80C58E;
    RTS                                  ;80C58F;

CODE_80C590:
    PHB                                  ;80C590;
    PHD                                  ;80C591;
    PHP                                  ;80C592;
    REP #$20                             ;80C593;
    LDA.W #$0000                         ;80C595;
    TCD                                  ;80C598;
    SEP #$20                             ;80C599;
    LDA.B #$80                           ;80C59B;
    STA.W $2100                          ;80C59D;
    STA.B $B3                            ;80C5A0;
    JSR.W CODE_80CDDB                    ;80C5A2;
    LDA.B #$03                           ;80C5A5;
    TSB.W $00A2                          ;80C5A7;
    STZ.B $B3                            ;80C5AA;
    JSR.W CODE_808100                    ;80C5AC;
    LDY.B #$48                           ;80C5AF;
    JSR.W CODE_80B301                    ;80C5B1;
    JSR.W CODE_808100                    ;80C5B4;
    LDY.B #$52                           ;80C5B7;
    JSR.W CODE_80B301                    ;80C5B9;
    JSR.W CODE_808100                    ;80C5BC;
    REP #$20                             ;80C5BF;
    LDA.W $1F7A                          ;80C5C1;
    AND.W #$00FF                         ;80C5C4;
    ASL A                                ;80C5C7;
    ADC.W #$0004                         ;80C5C8;
    TAY                                  ;80C5CB;
    LDA.W PTR16_86F56F,Y                 ;80C5CC;
    STA.B $10                            ;80C5CF;
    LDA.B ($10)                          ;80C5D1;
    SEP #$20                             ;80C5D3;
    STA.B $98                            ;80C5D5;
    REP #$20                             ;80C5D7;
    STZ.B $F8                            ;80C5D9;
    JSR.W CODE_80B252                    ;80C5DB;
    SEP #$30                             ;80C5DE;
    LDY.B #$F8                           ;80C5E0;
    JSL.L CODE_828011                    ;80C5E2;
    REP #$30                             ;80C5E6;
    LDA.W $0BDB                          ;80C5E8;
    AND.W #$00FF                         ;80C5EB;
    CLC                                  ;80C5EE;
    ADC.W #$0100                         ;80C5EF;
    TAY                                  ;80C5F2;
    JSL.L CODE_828011                    ;80C5F3;
    SEP #$30                             ;80C5F7;
    JSR.W CODE_808100                    ;80C5F9;
    LDA.B #$80                           ;80C5FC;
    STA.W $2100                          ;80C5FE;
    JSR.W CODE_80CD2C                    ;80C601;
    JSR.W CODE_80CA96                    ;80C604;
    JSR.W CODE_80CB2F                    ;80C607;
    JSR.W CODE_80CC21                    ;80C60A;
    JSR.W CODE_808100                    ;80C60D;
    JSR.W CODE_80CC56                    ;80C610;
    PLP                                  ;80C613;
    PLD                                  ;80C614;
    PLB                                  ;80C615;
    RTS                                  ;80C616;

CODE_80C617:
    PHB                                  ;80C617;
    PHD                                  ;80C618;
    PHP                                  ;80C619;
    REP #$20                             ;80C61A;
    LDA.W #$0000                         ;80C61C;
    TCD                                  ;80C61F;
    SEP #$30                             ;80C620;
    LDA.B #$80                           ;80C622;
    STA.W $2100                          ;80C624;
    JSR.W CODE_80CE0E                    ;80C627;
    STZ.W $00B3                          ;80C62A;
    JSR.W CODE_808100                    ;80C62D;
    JSR.W CODE_80B584                    ;80C630;

CODE_80C633:
    JSR.W CODE_808100                    ;80C633;
    LDA.B $F4                            ;80C636;
    BNE CODE_80C633                      ;80C638;
    LDY.B #$00                           ;80C63A;
    JSR.W CODE_808A87                    ;80C63C;
    JSR.W CODE_808100                    ;80C63F;
    LDA.W $1F7A                          ;80C642;
    ASL A                                ;80C645;
    CLC                                  ;80C646;
    ADC.B #$60                           ;80C647;
    TAY                                  ;80C649;
    JSL.L CODE_828011                    ;80C64A;
    JSR.W CODE_80B08B                    ;80C64E;

CODE_80C651:
    JSR.W CODE_808100                    ;80C651;
    LDA.W $0040                          ;80C654;
    BNE CODE_80C651                      ;80C657;
    JSR.W CODE_80B430                    ;80C659;

CODE_80C65C:
    JSR.W CODE_808100                    ;80C65C;
    LDA.W $0050                          ;80C65F;
    BNE CODE_80C65C                      ;80C662;
    REP #$30                             ;80C664;
    PHB                                  ;80C666;
    LDX.W #$C000                         ;80C667;
    LDY.W #$0300                         ;80C66A;
    LDA.W #$00FF                         ;80C66D;
    MVN $00,$7F                          ;80C670;
    PLB                                  ;80C673;
    SEP #$30                             ;80C674;
    LDX.B #$10                           ;80C676;
    LDA.W $0BDB                          ;80C678;
    CLC                                  ;80C67B;
    ADC.B #$40                           ;80C67C;
    TAY                                  ;80C67E;
    JSL.L CODE_828000                    ;80C67F;
    LDX.B #$20                           ;80C683;
    LDY.B #$1C                           ;80C685;
    JSL.L CODE_828000                    ;80C687;
    LDY.B #$A0                           ;80C68B;
    JSL.L CODE_828011                    ;80C68D;
    PLP                                  ;80C691;
    PLD                                  ;80C692;
    PLB                                  ;80C693;
    RTS                                  ;80C694;

CODE_80C695:
    LDA.B $0A                            ;80C695;
    STA.B $0B                            ;80C697;
    LDA.W $0BE3                          ;80C699;
    BIT.B #$03                           ;80C69C;
    BEQ CODE_80C6A3                      ;80C69E;
    JSR.W CODE_80C79D                    ;80C6A0;

CODE_80C6A3:
    LDA.W $0BE3                          ;80C6A3;
    BIT.B #$0C                           ;80C6A6;
    BEQ CODE_80C6B6                      ;80C6A8;
    BIT.B #$08                           ;80C6AA;
    BEQ CODE_80C6B3                      ;80C6AC;
    JSR.W CODE_80C80C                    ;80C6AE;
    BRA CODE_80C6B6                      ;80C6B1;

CODE_80C6B3:
    JSR.W CODE_80C86C                    ;80C6B3;

CODE_80C6B6:
    LDA.B $0B                            ;80C6B6;
    CMP.B $0A                            ;80C6B8;
    BEQ CODE_80C6D9                      ;80C6BA;
    STA.B $0A                            ;80C6BC;
    CMP.B #$09                           ;80C6BE;
    BCS CODE_80C6D3                      ;80C6C0;
    REP #$30                             ;80C6C2;
    AND.W #$00FF                         ;80C6C4;
    ASL A                                ;80C6C7;
    CLC                                  ;80C6C8;
    ADC.W #$0100                         ;80C6C9;
    TAY                                  ;80C6CC;
    JSL.L CODE_828011                    ;80C6CD;
    SEP #$30                             ;80C6D1;

CODE_80C6D3:
    LDA.B #$2C                           ;80C6D3;
    JSL.L CODE_8088CD                    ;80C6D5;

CODE_80C6D9:
    JSR.W CODE_80C786                    ;80C6D9;
    LDA.W $0BE3                          ;80C6DC;
    BIT.B #$40                           ;80C6DF;
    BEQ CODE_80C70F                      ;80C6E1;
    LDA.B $0A                            ;80C6E3;
    CMP.B #$0A                           ;80C6E5;
    BCC CODE_80C70F                      ;80C6E7;
    LDA.W $0BCF                          ;80C6E9;
    AND.B #$7F                           ;80C6EC;
    CMP.W $1F9A                          ;80C6EE;
    BEQ CODE_80C70F                      ;80C6F1;
    SEC                                  ;80C6F3;
    SBC.B #$0A                           ;80C6F4;
    TAX                                  ;80C6F6;
    LDA.B #$02                           ;80C6F7;
    STA.B $02                            ;80C6F9;
    LDA.B #$04                           ;80C6FB;
    STA.B $10                            ;80C6FD;
    LDA.B #$01                           ;80C6FF;
    STA.B $11                            ;80C701;
    LDA.W $1F83,X                        ;80C703;
    AND.B #$0F                           ;80C706;
    CMP.B #$0E                           ;80C708;
    BCC CODE_80C70E                      ;80C70A;
    INC.B $11                            ;80C70C;

CODE_80C70E:
    RTS                                  ;80C70E;

CODE_80C70F:
    LDA.W $0BE3                          ;80C70F;
    BIT.B #$10                           ;80C712;
    BEQ CODE_80C738                      ;80C714;
    LDA.B $0A                            ;80C716;
    CMP.B #$09                           ;80C718;
    BNE CODE_80C734                      ;80C71A;
    JSR.W CODE_80C952                    ;80C71C;
    BEQ CODE_80C738                      ;80C71F;
    INC.B $21                            ;80C721;
    LDA.B #$2D                           ;80C723;
    JSL.L CODE_8088CD                    ;80C725;
    PHD                                  ;80C729;
    PEA.W $0000                          ;80C72A;
    PLD                                  ;80C72D;
    LDA.B #$3C                           ;80C72E;
    JSR.W CODE_80810C                    ;80C730;
    PLD                                  ;80C733;

CODE_80C734:
    INC.B $01                            ;80C734;
    INC.B $01                            ;80C736;

CODE_80C738:
    RTS                                  ;80C738;

CODE_80C739:
    DEC.B $10                            ;80C739;
    BNE CODE_80C785                      ;80C73B;
    LDA.B #$04                           ;80C73D;
    STA.B $10                            ;80C73F;
    LDA.B #$0C                           ;80C741;
    JSL.L CODE_8088CD                    ;80C743;
    LDA.B $0A                            ;80C747;
    SEC                                  ;80C749;
    SBC.B #$0A                           ;80C74A;
    TAX                                  ;80C74C;
    LDA.W $0BCF                          ;80C74D;
    AND.B #$7F                           ;80C750;
    CMP.W $1F9A                          ;80C752;
    BEQ CODE_80C76A                      ;80C755;
    CLC                                  ;80C757;
    ADC.B $11                            ;80C758;
    CMP.W $1F9A                          ;80C75A;
    BCC CODE_80C762                      ;80C75D;
    LDA.W $1F9A                          ;80C75F;

CODE_80C762:
    STA.W $0BCF                          ;80C762;
    PHX                                  ;80C765;
    JSR.W CODE_80CC56                    ;80C766;
    PLX                                  ;80C769;

CODE_80C76A:
    DEC.W $1F83,X                        ;80C76A;
    JSR.W CODE_80CD3D                    ;80C76D;
    LDA.W $1F83,X                        ;80C770;
    AND.B #$0F                           ;80C773;
    BNE CODE_80C785                      ;80C775;
    JSR.W CODE_80CDB7                    ;80C777;
    JSR.W CODE_80CD2C                    ;80C77A;
    STZ.B $02                            ;80C77D;
    LDA.W $0BDB                          ;80C77F;
    LSR A                                ;80C782;
    STA.B $0A                            ;80C783;

CODE_80C785:
    RTS                                  ;80C785;

CODE_80C786:
    LDA.B $0A                            ;80C786;
    ASL A                                ;80C788;
    TAX                                  ;80C789;
    REP #$20                             ;80C78A;
    LDA.W PTR16_86A03F,X                 ;80C78C;
    STA.W $0AA4                          ;80C78F;
    SEP #$20                             ;80C792;
    LDA.B #$86                           ;80C794;
    STA.W $0AA6                          ;80C796;
    STA.W $0AA7                          ;80C799;
    RTS                                  ;80C79C;

CODE_80C79D:
    LDA.B $0B                            ;80C79D;
    CMP.B #$05                           ;80C79F;
    BCS CODE_80C7C2                      ;80C7A1;
    CLC                                  ;80C7A3;
    ADC.B #$05                           ;80C7A4;
    STA.B $0E                            ;80C7A6;

CODE_80C7A8:
    STA.B $0F                            ;80C7A8;
    DEC A                                ;80C7AA;
    ASL A                                ;80C7AB;
    TAX                                  ;80C7AC;
    LDA.W $1F88,X                        ;80C7AD;
    ASL A                                ;80C7B0;
    ASL A                                ;80C7B1;
    BCS CODE_80C807                      ;80C7B2;
    LDA.B $0F                            ;80C7B4;
    DEC A                                ;80C7B6;
    CMP.B #$05                           ;80C7B7;
    BCS CODE_80C7BD                      ;80C7B9;
    LDA.B #$09                           ;80C7BB;

CODE_80C7BD:
    CMP.B $0E                            ;80C7BD;
    BNE CODE_80C7A8                      ;80C7BF;
    RTS                                  ;80C7C1;

CODE_80C7C2:
    CMP.B #$0A                           ;80C7C2;
    BCS CODE_80C7DE                      ;80C7C4;
    SEC                                  ;80C7C6;
    SBC.B #$05                           ;80C7C7;
    BEQ CODE_80C809                      ;80C7C9;

CODE_80C7CB:
    STA.B $0F                            ;80C7CB;
    DEC A                                ;80C7CD;
    ASL A                                ;80C7CE;
    TAX                                  ;80C7CF;
    LDA.W $1F88,X                        ;80C7D0;
    ASL A                                ;80C7D3;
    ASL A                                ;80C7D4;
    BCS CODE_80C807                      ;80C7D5;
    LDA.B $0F                            ;80C7D7;
    DEC A                                ;80C7D9;
    BEQ CODE_80C809                      ;80C7DA;
    BRA CODE_80C7CB                      ;80C7DC;

CODE_80C7DE:
    CMP.B #$0C                           ;80C7DE;
    BCS CODE_80C7F4                      ;80C7E0;
    CMP.B #$0A                           ;80C7E2;
    BNE CODE_80C7F1                      ;80C7E4;
    LDA.W $1F84                          ;80C7E6;
    BPL CODE_80C80B                      ;80C7E9;
    AND.B #$3F                           ;80C7EB;
    BEQ CODE_80C80B                      ;80C7ED;
    BRA CODE_80C803                      ;80C7EF;

CODE_80C7F1:
    DEC A                                ;80C7F1;
    BRA CODE_80C809                      ;80C7F2;

CODE_80C7F4:
    BNE CODE_80C7F1                      ;80C7F4;
    LDA.W $1F86                          ;80C7F6;
    BPL CODE_80C803                      ;80C7F9;
    AND.B #$3F                           ;80C7FB;
    BEQ CODE_80C803                      ;80C7FD;
    LDA.B #$0D                           ;80C7FF;
    BRA CODE_80C809                      ;80C801;

CODE_80C803:
    LDA.B #$0B                           ;80C803;
    BRA CODE_80C809                      ;80C805;

CODE_80C807:
    LDA.B $0F                            ;80C807;

CODE_80C809:
    STA.B $0B                            ;80C809;

CODE_80C80B:
    RTS                                  ;80C80B;

CODE_80C80C:
    LDA.B $0B                            ;80C80C;
    CMP.B #$05                           ;80C80E;
    BCS CODE_80C82B                      ;80C810;

CODE_80C812:
    DEC A                                ;80C812;
    BEQ CODE_80C869                      ;80C813;
    BPL CODE_80C81B                      ;80C815;
    LDA.B #$0C                           ;80C817;
    BRA CODE_80C84C                      ;80C819;

CODE_80C81B:
    STA.B $0F                            ;80C81B;
    DEC A                                ;80C81D;
    ASL A                                ;80C81E;
    TAX                                  ;80C81F;
    LDA.W $1F88,X                        ;80C820;
    AND.B #$40                           ;80C823;
    BNE CODE_80C867                      ;80C825;
    LDA.B $0F                            ;80C827;
    BRA CODE_80C812                      ;80C829;

CODE_80C82B:
    CMP.B #$0A                           ;80C82B;
    BCS CODE_80C84A                      ;80C82D;

CODE_80C82F:
    DEC A                                ;80C82F;
    CMP.B #$05                           ;80C830;
    BCS CODE_80C836                      ;80C832;
    LDA.B #$09                           ;80C834;

CODE_80C836:
    STA.B $0F                            ;80C836;
    CMP.B $0B                            ;80C838;
    BEQ CODE_80C86B                      ;80C83A;
    DEC A                                ;80C83C;
    ASL A                                ;80C83D;
    TAX                                  ;80C83E;
    LDA.W $1F88,X                        ;80C83F;
    AND.B #$40                           ;80C842;
    BNE CODE_80C867                      ;80C844;
    LDA.B $0F                            ;80C846;
    BRA CODE_80C82F                      ;80C848;

CODE_80C84A:
    DEC A                                ;80C84A;
    DEC A                                ;80C84B;

CODE_80C84C:
    STA.B $0F                            ;80C84C;
    CMP.B #$0A                           ;80C84E;
    BCS CODE_80C856                      ;80C850;
    LDA.B #$04                           ;80C852;
    BRA CODE_80C81B                      ;80C854;

CODE_80C856:
    SEC                                  ;80C856;
    SBC.B #$0A                           ;80C857;
    TAX                                  ;80C859;
    LDA.W $1F83,X                        ;80C85A;
    BPL CODE_80C863                      ;80C85D;
    AND.B #$3F                           ;80C85F;
    BNE CODE_80C867                      ;80C861;

CODE_80C863:
    LDA.B $0F                            ;80C863;
    BRA CODE_80C84A                      ;80C865;

CODE_80C867:
    LDA.B $0F                            ;80C867;

CODE_80C869:
    STA.B $0B                            ;80C869;

CODE_80C86B:
    RTS                                  ;80C86B;

CODE_80C86C:
    LDA.B $0B                            ;80C86C;
    CMP.B #$05                           ;80C86E;
    BCS CODE_80C88B                      ;80C870;

CODE_80C872:
    INC A                                ;80C872;
    CMP.B #$05                           ;80C873;
    BCC CODE_80C87B                      ;80C875;
    LDA.B #$0A                           ;80C877;
    BRA CODE_80C8AC                      ;80C879;

CODE_80C87B:
    STA.B $0F                            ;80C87B;
    DEC A                                ;80C87D;
    ASL A                                ;80C87E;
    TAX                                  ;80C87F;
    LDA.W $1F88,X                        ;80C880;
    AND.B #$40                           ;80C883;
    BNE CODE_80C8D6                      ;80C885;
    LDA.B $0F                            ;80C887;
    BRA CODE_80C872                      ;80C889;

CODE_80C88B:
    CMP.B #$0A                           ;80C88B;
    BCS CODE_80C8AA                      ;80C88D;

CODE_80C88F:
    INC A                                ;80C88F;
    CMP.B #$0A                           ;80C890;
    BCC CODE_80C896                      ;80C892;
    LDA.B #$05                           ;80C894;

CODE_80C896:
    STA.B $0F                            ;80C896;
    CMP.B $0B                            ;80C898;
    BEQ CODE_80C8DA                      ;80C89A;
    DEC A                                ;80C89C;
    ASL A                                ;80C89D;
    TAX                                  ;80C89E;
    LDA.W $1F88,X                        ;80C89F;
    AND.B #$40                           ;80C8A2;
    BNE CODE_80C8D6                      ;80C8A4;
    LDA.B $0F                            ;80C8A6;
    BRA CODE_80C88F                      ;80C8A8;

CODE_80C8AA:
    INC A                                ;80C8AA;
    INC A                                ;80C8AB;

CODE_80C8AC:
    STA.B $0F                            ;80C8AC;
    CMP.B #$0E                           ;80C8AE;
    BCC CODE_80C8B6                      ;80C8B0;

CODE_80C8B2:
    LDA.B #$00                           ;80C8B2;
    BRA CODE_80C8D8                      ;80C8B4;

CODE_80C8B6:
    SEC                                  ;80C8B6;
    SBC.B #$0A                           ;80C8B7;
    TAX                                  ;80C8B9;
    LDA.W $1F83,X                        ;80C8BA;
    BPL CODE_80C8C3                      ;80C8BD;
    AND.B #$3F                           ;80C8BF;
    BNE CODE_80C8D6                      ;80C8C1;

CODE_80C8C3:
    LDA.B $0F                            ;80C8C3;
    CMP.B #$0D                           ;80C8C5;
    BNE CODE_80C8AA                      ;80C8C7;
    LDA.W $1F85                          ;80C8C9;
    BPL CODE_80C8B2                      ;80C8CC;
    AND.B #$3F                           ;80C8CE;
    BEQ CODE_80C8B2                      ;80C8D0;
    LDA.B #$0C                           ;80C8D2;
    BRA CODE_80C8D8                      ;80C8D4;

CODE_80C8D6:
    LDA.B $0F                            ;80C8D6;

CODE_80C8D8:
    STA.B $0B                            ;80C8D8;

CODE_80C8DA:
    RTS                                  ;80C8DA;

CODE_80C8DB:
    PHP                                  ;80C8DB;
    PHD                                  ;80C8DC;
    SEP #$30                             ;80C8DD;
    PEA.W $1928                          ;80C8DF;
    PLD                                  ;80C8E2;
    LDX.B #$04                           ;80C8E3;
    LDA.W $1F99                          ;80C8E5;
    AND.B #$08                           ;80C8E8;
    BEQ CODE_80C8F1                      ;80C8EA;
    STX.B $0B                            ;80C8EC;
    JSR.W CODE_80C926                    ;80C8EE;

CODE_80C8F1:
    PEA.W $1948                          ;80C8F1;
    PLD                                  ;80C8F4;
    LDX.B #$03                           ;80C8F5;
    LDA.W $1F99                          ;80C8F7;
    AND.B #$04                           ;80C8FA;
    BEQ CODE_80C903                      ;80C8FC;
    STX.B $0B                            ;80C8FE;
    JSR.W CODE_80C926                    ;80C900;

CODE_80C903:
    PEA.W $1968                          ;80C903;
    PLD                                  ;80C906;
    LDX.B #$02                           ;80C907;
    LDA.W $1F99                          ;80C909;
    AND.B #$02                           ;80C90C;
    BEQ CODE_80C915                      ;80C90E;
    STX.B $0B                            ;80C910;
    JSR.W CODE_80C926                    ;80C912;

CODE_80C915:
    PEA.W $1988                          ;80C915;
    PLD                                  ;80C918;
    LDA.W $1F99                          ;80C919;
    AND.B #$01                           ;80C91C;
    STA.B $0B                            ;80C91E;
    JSR.W CODE_80C926                    ;80C920;
    PLD                                  ;80C923;
    PLP                                  ;80C924;
    RTS                                  ;80C925;

CODE_80C926:
    LDA.B $01                            ;80C926;
    BNE CODE_80C94D                      ;80C928;
    INC.B $01                            ;80C92A;
    STZ.B $06                            ;80C92C;
    STZ.B $09                            ;80C92E;
    LDA.B #$80                           ;80C930;
    STA.B $05                            ;80C932;
    LDA.B #$A0                           ;80C934;
    STA.B $08                            ;80C936;
    LDX.B $0B                            ;80C938;
    LDA.W DATA8_86A03A,X                 ;80C93A;
    STA.B $16                            ;80C93D;
    LDA.B #$33                           ;80C93F;
    STA.B $11                            ;80C941;
    STZ.B $18                            ;80C943;
    STZ.B $12                            ;80C945;
    LDA.B #$22                           ;80C947;
    JSL.L CODE_848F07                    ;80C949;

CODE_80C94D:
    JSL.L CODE_8280B4                    ;80C94D;
    RTS                                  ;80C951;

CODE_80C952:
    LDA.W $1F7A                          ;80C952;
    BEQ CODE_80C965                      ;80C955;
    CMP.B #$09                           ;80C957;
    BCS CODE_80C965                      ;80C959;
    ASL A                                ;80C95B;
    TAX                                  ;80C95C;
    LDA.W $1F86,X                        ;80C95D;
    AND.B #$40                           ;80C960;
    BEQ CODE_80C965                      ;80C962;
    RTS                                  ;80C964;

CODE_80C965:
    LDA.B #$74                           ;80C965;
    JSL.L CODE_8088CD                    ;80C967;
    LDA.B #$00                           ;80C96B;
    RTS                                  ;80C96D;

CODE_80C96E:
    PHP                                  ;80C96E;
    REP #$30                             ;80C96F;
    LDX.W #$0AA1                         ;80C971;
    LDY.W #$B600                         ;80C974;
    LDA.W #$0030                         ;80C977;
    PHB                                  ;80C97A;
    MVN $7F,$00                          ;80C97B;
    PLB                                  ;80C97E;
    STZ.W $0AA1                          ;80C97F;
    STZ.W $0AA8                          ;80C982;
    STZ.W $0AAF                          ;80C985;
    STZ.W $0AB6                          ;80C988;
    STZ.W $0ABD                          ;80C98B;
    STZ.W $0AC4                          ;80C98E;
    STZ.W $0ACB                          ;80C991;
    SEP #$20                             ;80C994;
    STZ.W $420C                          ;80C996;
    PLP                                  ;80C999;
    RTS                                  ;80C99A;

CODE_80C99B:
    PHP                                  ;80C99B;
    REP #$30                             ;80C99C;
    LDX.W #$B600                         ;80C99E;
    LDY.W #$0AA1                         ;80C9A1;
    LDA.W #$0030                         ;80C9A4;
    PHB                                  ;80C9A7;
    MVN $00,$7F                          ;80C9A8;
    PLB                                  ;80C9AB;
    PLP                                  ;80C9AC;
    RTS                                  ;80C9AD;

CODE_80C9AE:
    LDA.W $00C0                          ;80C9AE;
    STA.B $0C                            ;80C9B1;
    LDA.W $00C1                          ;80C9B3;
    STA.B $0D                            ;80C9B6;
    LDA.W $00C9                          ;80C9B8;
    STA.B $14                            ;80C9BB;
    LDA.W $00CA                          ;80C9BD;
    STA.B $15                            ;80C9C0;
    LDA.W $00CB                          ;80C9C2;
    STA.B $16                            ;80C9C5;
    LDA.W $00CC                          ;80C9C7;
    STA.B $17                            ;80C9CA;
    LDA.W $00CD                          ;80C9CC;
    STA.B $18                            ;80C9CF;
    LDA.W $0BA1                          ;80C9D1;
    STA.B $19                            ;80C9D4;
    LDA.B #$13                           ;80C9D6;
    STA.W $00C0                          ;80C9D8;
    STZ.W $00C1                          ;80C9DB;
    LDA.B #$09                           ;80C9DE;
    STA.W $2105                          ;80C9E0;
    LDA.B #$08                           ;80C9E3;
    STA.W $00CB                          ;80C9E5;
    STA.W $00CC                          ;80C9E8;
    STA.W $00CD                          ;80C9EB;
    STZ.W $0BA1                          ;80C9EE;
    STZ.W $212E                          ;80C9F1;
    STZ.W $212F                          ;80C9F4;
    STZ.W $2123                          ;80C9F7;
    STZ.W $2124                          ;80C9FA;
    LDA.B #$20                           ;80C9FD;
    STA.W $2125                          ;80C9FF;
    LDA.B #$20                           ;80CA02;
    STA.W $00C9                          ;80CA04;
    LDA.B #$81                           ;80CA07;
    STA.W $00CA                          ;80CA09;
    LDA.W $0BB6                          ;80CA0C;
    STA.W $1EDB                          ;80CA0F;
    LDA.W $0C46                          ;80CA12;
    STA.W $1EE2                          ;80CA15;
    LDA.W $0C66                          ;80CA18;
    STA.W $1EE3                          ;80CA1B;
    LDA.W $0C86                          ;80CA1E;
    STA.W $1EE4                          ;80CA21;
    STZ.W $0BB6                          ;80CA24;
    STZ.W $0C46                          ;80CA27;
    STZ.W $0C66                          ;80CA2A;
    STZ.W $0C86                          ;80CA2D;
    RTS                                  ;80CA30;

CODE_80CA31:
    LDA.W $00C6                          ;80CA31;
    STA.W $2123                          ;80CA34;
    LDA.W $00C7                          ;80CA37;
    STA.W $2124                          ;80CA3A;
    LDA.W $00C8                          ;80CA3D;
    STA.W $2125                          ;80CA40;
    LDA.W $00CE                          ;80CA43;
    STA.W $212E                          ;80CA46;
    LDA.W $00CF                          ;80CA49;
    STA.W $212F                          ;80CA4C;
    LDA.W $00D0                          ;80CA4F;
    STA.W $2105                          ;80CA52;
    LDA.B $0C                            ;80CA55;
    STA.W $00C0                          ;80CA57;
    LDA.B $0D                            ;80CA5A;
    STA.W $00C1                          ;80CA5C;
    LDA.B $14                            ;80CA5F;
    STA.W $00C9                          ;80CA61;
    LDA.B $15                            ;80CA64;
    STA.W $00CA                          ;80CA66;
    LDA.B $16                            ;80CA69;
    STA.W $00CB                          ;80CA6B;
    LDA.B $17                            ;80CA6E;
    STA.W $00CC                          ;80CA70;
    LDA.B $18                            ;80CA73;
    STA.W $00CD                          ;80CA75;
    LDA.B $19                            ;80CA78;
    STA.W $0BA1                          ;80CA7A;
    LDA.W $1EDB                          ;80CA7D;
    STA.W $0BB6                          ;80CA80;
    LDA.W $1EE2                          ;80CA83;
    STA.W $0C46                          ;80CA86;
    LDA.W $1EE3                          ;80CA89;
    STA.W $0C66                          ;80CA8C;
    LDA.W $1EE4                          ;80CA8F;
    STA.W $0C86                          ;80CA92;
    RTS                                  ;80CA95;

CODE_80CA96:
    LDX.B #$10                           ;80CA96;
    LDA.B #$80                           ;80CA98;
    STA.W $2115                          ;80CA9A;

CODE_80CA9D:
    REP #$20                             ;80CA9D;
    LDA.W DATA16_86A0F3,X                ;80CA9F;
    STA.W $2116                          ;80CAA2;
    SEP #$20                             ;80CAA5;
    LDA.W $1F88,X                        ;80CAA7;
    BIT.B #$40                           ;80CAAA;
    BNE CODE_80CAB1                      ;80CAAC;
    JMP.W CODE_80CB25                    ;80CAAE;

CODE_80CAB1:
    AND.B #$1F                           ;80CAB1;
    CMP.B #$1D                           ;80CAB3;
    BCC CODE_80CAB9                      ;80CAB5;
    LDA.B #$1C                           ;80CAB7;

CODE_80CAB9:
    STA.B $00                            ;80CAB9;
    LDY.B #$07                           ;80CABB;
    STY.B $02                            ;80CABD;
    LSR A                                ;80CABF;
    LSR A                                ;80CAC0;
    BEQ CODE_80CAD9                      ;80CAC1;
    STA.B $04                            ;80CAC3;
    LDA.B $02                            ;80CAC5;
    SEC                                  ;80CAC7;
    SBC.B $04                            ;80CAC8;
    STA.B $02                            ;80CACA;
    LDY.B $04                            ;80CACC;
    REP #$20                             ;80CACE;
    LDA.W #$2887                         ;80CAD0;

CODE_80CAD3:
    STA.W $2118                          ;80CAD3;
    DEY                                  ;80CAD6;
    BNE CODE_80CAD3                      ;80CAD7;

CODE_80CAD9:
    SEP #$20                             ;80CAD9;
    LDA.B $00                            ;80CADB;
    AND.B #$03                           ;80CADD;
    BEQ CODE_80CAF5                      ;80CADF;
    DEC.B $02                            ;80CAE1;
    REP #$20                             ;80CAE3;
    AND.W #$00FF                         ;80CAE5;
    STA.B $00                            ;80CAE8;
    LDA.W #$2883                         ;80CAEA;
    CLC                                  ;80CAED;
    ADC.B $00                            ;80CAEE;
    STA.W $2118                          ;80CAF0;
    SEP #$20                             ;80CAF3;

CODE_80CAF5:
    LDA.B $02                            ;80CAF5;
    BEQ CODE_80CB06                      ;80CAF7;
    REP #$20                             ;80CAF9;
    LDY.B $02                            ;80CAFB;
    LDA.W #$2883                         ;80CAFD;

CODE_80CB00:
    STA.W $2118                          ;80CB00;
    DEY                                  ;80CB03;
    BNE CODE_80CB00                      ;80CB04;

CODE_80CB06:
    REP #$20                             ;80CB06;
    LDA.W DATA16_86A0F3,X                ;80CB08;
    DEC A                                ;80CB0B;
    STA.W $2116                          ;80CB0C;
    LDA.W #$2882                         ;80CB0F;
    STA.W $2118                          ;80CB12;
    LDA.W DATA16_86A0F3,X                ;80CB15;
    CLC                                  ;80CB18;
    ADC.W #$0007                         ;80CB19;
    STA.W $2116                          ;80CB1C;
    LDA.W #$6882                         ;80CB1F;
    STA.W $2118                          ;80CB22;

CODE_80CB25:
    SEP #$20                             ;80CB25;
    DEX                                  ;80CB27;
    DEX                                  ;80CB28;
    BMI CODE_80CB2E                      ;80CB29;
    JMP.W CODE_80CA9D                    ;80CB2B;

CODE_80CB2E:
    RTS                                  ;80CB2E;

CODE_80CB2F:
    LDA.B #$80                           ;80CB2F;
    STA.W $2115                          ;80CB31;
    LDA.B #$85                           ;80CB34;
    STA.W $4304                          ;80CB36;
    LDA.B #$18                           ;80CB39;
    STA.W $4301                          ;80CB3B;
    LDA.B #$01                           ;80CB3E;
    STA.W $4300                          ;80CB40;
    REP #$20                             ;80CB43;
    LDA.W #$8000                         ;80CB45;
    STA.W $4302                          ;80CB48;
    LDA.W #$0010                         ;80CB4B;
    STA.W $4305                          ;80CB4E;
    LDA.W #$50A7                         ;80CB51;
    STA.W $2116                          ;80CB54;
    SEP #$20                             ;80CB57;
    LDA.B #$01                           ;80CB59;
    STA.W $420B                          ;80CB5B;
    LDA.B #$85                           ;80CB5E;
    STA.W $4304                          ;80CB60;
    LDA.B #$18                           ;80CB63;
    STA.W $4301                          ;80CB65;
    LDA.B #$01                           ;80CB68;
    STA.W $4300                          ;80CB6A;
    REP #$20                             ;80CB6D;
    LDA.W #$8010                         ;80CB6F;
    STA.W $4302                          ;80CB72;
    LDA.W #$0012                         ;80CB75;
    STA.W $4305                          ;80CB78;
    LDA.W #$50C6                         ;80CB7B;
    STA.W $2116                          ;80CB7E;
    SEP #$20                             ;80CB81;
    LDA.B #$01                           ;80CB83;
    STA.W $420B                          ;80CB85;
    LDX.B #$10                           ;80CB88;

CODE_80CB8A:
    LDA.W $1F88,X                        ;80CB8A;
    ASL A                                ;80CB8D;
    ASL A                                ;80CB8E;
    BCC CODE_80CBF8                      ;80CB8F;
    TXA                                  ;80CB91;
    LSR A                                ;80CB92;
    TAY                                  ;80CB93;
    REP #$20                             ;80CB94;
    LDA.W DATA16_86A0F3,X                ;80CB96;
    SEC                                  ;80CB99;
    SBC.W #$0023                         ;80CB9A;
    STA.W $2116                          ;80CB9D;
    LDA.W DATA8_86A10D,Y                 ;80CBA0;
    AND.W #$00FF                         ;80CBA3;
    ORA.W #$1400                         ;80CBA6;
    STA.W $2118                          ;80CBA9;
    INC A                                ;80CBAC;
    STA.W $2118                          ;80CBAD;
    LDA.W DATA16_86A0F3,X                ;80CBB0;
    DEC A                                ;80CBB3;
    DEC A                                ;80CBB4;
    DEC A                                ;80CBB5;
    STA.W $2116                          ;80CBB6;
    LDA.W DATA8_86A10D,Y                 ;80CBB9;
    AND.W #$00FF                         ;80CBBC;
    CLC                                  ;80CBBF;
    ADC.W #$1410                         ;80CBC0;
    STA.W $2118                          ;80CBC3;
    INC A                                ;80CBC6;
    STA.W $2118                          ;80CBC7;
    REP #$10                             ;80CBCA;
    LDA.W PTR16_86A116,X                 ;80CBCC;
    TAY                                  ;80CBCF;
    LDA.W $0000,Y                        ;80CBD0;
    STA.W $2116                          ;80CBD3;
    LDA.W $0002,Y                        ;80CBD6;
    STA.W $4302                          ;80CBD9;
    LDA.W $0004,Y                        ;80CBDC;
    AND.W #$00FF                         ;80CBDF;
    STA.W $4305                          ;80CBE2;
    SEP #$20                             ;80CBE5;
    LDA.B #$86                           ;80CBE7;
    STA.W $4304                          ;80CBE9;
    LDA.B #$18                           ;80CBEC;
    STA.W $4301                          ;80CBEE;
    LDA.B #$01                           ;80CBF1;
    STA.W $420B                          ;80CBF3;
    SEP #$10                             ;80CBF6;

CODE_80CBF8:
    DEX                                  ;80CBF8;
    DEX                                  ;80CBF9;
    BPL CODE_80CB8A                      ;80CBFA;
    REP #$20                             ;80CBFC;
    LDA.W #$50A4                         ;80CBFE;
    STA.W $2116                          ;80CC01;
    LDA.W #$14A0                         ;80CC04;
    STA.W $2118                          ;80CC07;
    INC A                                ;80CC0A;
    STA.W $2118                          ;80CC0B;
    LDA.W #$50C4                         ;80CC0E;
    STA.W $2116                          ;80CC11;
    LDA.W #$14B0                         ;80CC14;
    STA.W $2118                          ;80CC17;
    INC A                                ;80CC1A;
    STA.W $2118                          ;80CC1B;
    SEP #$20                             ;80CC1E;
    RTS                                  ;80CC20;

CODE_80CC21:
    LDA.B #$80                           ;80CC21;
    STA.W $2115                          ;80CC23;
    LDA.B #$E0                           ;80CC26;
    CLC                                  ;80CC28;
    ADC.W $1F80                          ;80CC29;
    TAX                                  ;80CC2C;
    REP #$20                             ;80CC2D;
    LDA.W #$5AD9                         ;80CC2F;
    STA.W $2116                          ;80CC32;
    TXA                                  ;80CC35;
    AND.W #$00FF                         ;80CC36;
    ORA.W #$0800                         ;80CC39;
    STA.W $2118                          ;80CC3C;
    LDA.W #$5AF9                         ;80CC3F;
    STA.W $2116                          ;80CC42;
    TXA                                  ;80CC45;
    AND.W #$00FF                         ;80CC46;
    CLC                                  ;80CC49;
    ADC.W #$0010                         ;80CC4A;
    ORA.W #$0800                         ;80CC4D;
    STA.W $2118                          ;80CC50;
    SEP #$20                             ;80CC53;
    RTS                                  ;80CC55;

CODE_80CC56:
    PHP                                  ;80CC56;
    SEP #$30                             ;80CC57;
    PHD                                  ;80CC59;
    PEA.W $0000                          ;80CC5A;
    PLD                                  ;80CC5D;
    STZ.B $01                            ;80CC5E;
    STZ.B $03                            ;80CC60;
    STZ.B $05                            ;80CC62;
    STZ.B $06                            ;80CC64;
    STZ.B $07                            ;80CC66;
    STZ.B $09                            ;80CC68;
    LDA.W $1F9A                          ;80CC6A;
    BIT.B #$02                           ;80CC6D;
    BEQ CODE_80CC73                      ;80CC6F;
    INC.B $01                            ;80CC71;

CODE_80CC73:
    LSR A                                ;80CC73;
    LSR A                                ;80CC74;
    STA.B $02                            ;80CC75;
    LDA.W $0BCF                          ;80CC77;
    AND.B #$03                           ;80CC7A;
    STA.B $00                            ;80CC7C;
    LDA.W $0BCF                          ;80CC7E;
    AND.B #$7F                           ;80CC81;
    LSR A                                ;80CC83;
    LSR A                                ;80CC84;
    STA.B $04                            ;80CC85;
    LDA.B $02                            ;80CC87;
    SEC                                  ;80CC89;
    SBC.B $04                            ;80CC8A;
    STA.B $06                            ;80CC8C;
    STA.B $0A                            ;80CC8E;
    LDA.W $0BCF                          ;80CC90;
    AND.B #$03                           ;80CC93;
    BEQ CODE_80CC9D                      ;80CC95;
    LDA.B $06                            ;80CC97;
    BEQ CODE_80CC9D                      ;80CC99;
    DEC.B $06                            ;80CC9B;

CODE_80CC9D:
    LDX.W $00A4                          ;80CC9D;
    LDA.B #$80                           ;80CCA0;
    STA.W $0600,X                        ;80CCA2;
    LDA.B $02                            ;80CCA5;
    INC A                                ;80CCA7;
    ASL A                                ;80CCA8;
    STA.B $08                            ;80CCA9;
    INC A                                ;80CCAB;
    INC A                                ;80CCAC;
    STA.W $0603,X                        ;80CCAD;
    REP #$20                             ;80CCB0;
    LDA.W #$5B0B                         ;80CCB2;
    STA.W $0601,X                        ;80CCB5;
    INX                                  ;80CCB8;
    INX                                  ;80CCB9;
    INX                                  ;80CCBA;
    INX                                  ;80CCBB;
    LDA.W #$0882                         ;80CCBC;
    STA.W $0600,X                        ;80CCBF;
    INX                                  ;80CCC2;
    INX                                  ;80CCC3;

CODE_80CCC4:
    LDA.B $04                            ;80CCC4;
    BEQ CODE_80CCD8                      ;80CCC6;
    LDA.W #$0887                         ;80CCC8;
    STA.W $0600,X                        ;80CCCB;
    DEC.B $04                            ;80CCCE;
    DEC.B $08                            ;80CCD0;
    DEC.B $08                            ;80CCD2;
    INX                                  ;80CCD4;
    INX                                  ;80CCD5;
    BRA CODE_80CCC4                      ;80CCD6;

CODE_80CCD8:
    LDA.B $00                            ;80CCD8;
    AND.W #$0003                         ;80CCDA;
    BEQ CODE_80CCF6                      ;80CCDD;
    LDY.B $01                            ;80CCDF;
    BEQ CODE_80CCE9                      ;80CCE1;
    LDY.B $08                            ;80CCE3;
    CPY.B #$02                           ;80CCE5;
    BEQ CODE_80CD0A                      ;80CCE7;

CODE_80CCE9:
    CLC                                  ;80CCE9;
    ADC.W #$0883                         ;80CCEA;
    STA.W $0600,X                        ;80CCED;
    DEC.B $08                            ;80CCF0;
    DEC.B $08                            ;80CCF2;
    INX                                  ;80CCF4;
    INX                                  ;80CCF5;

CODE_80CCF6:
    LDA.B $06                            ;80CCF6;
    BEQ CODE_80CD0A                      ;80CCF8;
    LDA.W #$0883                         ;80CCFA;
    STA.W $0600,X                        ;80CCFD;
    DEC.B $06                            ;80CD00;
    DEC.B $08                            ;80CD02;
    DEC.B $08                            ;80CD04;
    INX                                  ;80CD06;
    INX                                  ;80CD07;
    BRA CODE_80CCF6                      ;80CD08;

CODE_80CD0A:
    LDA.W #$4882                         ;80CD0A;
    LDY.B $01                            ;80CD0D;
    BEQ CODE_80CD21                      ;80CD0F;
    LDA.W #$0000                         ;80CD11;
    LDY.B $0A                            ;80CD14;
    BNE CODE_80CD1D                      ;80CD16;
    LDA.B $00                            ;80CD18;
    AND.W #$0003                         ;80CD1A;

CODE_80CD1D:
    CLC                                  ;80CD1D;
    ADC.W #$0899                         ;80CD1E;

CODE_80CD21:
    STA.W $0600,X                        ;80CD21;
    INX                                  ;80CD24;
    INX                                  ;80CD25;
    STX.W $00A4                          ;80CD26;
    PLD                                  ;80CD29;
    PLP                                  ;80CD2A;
    RTS                                  ;80CD2B;

CODE_80CD2C:
    LDX.B #$00                           ;80CD2C;

CODE_80CD2E:
    LDA.W $1F83,X                        ;80CD2E;
    BPL CODE_80CD3B                      ;80CD31;
    JSR.W CODE_80CD3D                    ;80CD33;
    INX                                  ;80CD36;
    CPX.B #$04                           ;80CD37;
    BCC CODE_80CD2E                      ;80CD39;

CODE_80CD3B:
    RTS                                  ;80CD3B;
    RTS                                  ;80CD3C;

CODE_80CD3D:
    PHX                                  ;80CD3D;
    TXY                                  ;80CD3E;
    TXA                                  ;80CD3F;
    ASL A                                ;80CD40;
    TAX                                  ;80CD41;
    LDA.W $1F83,Y                        ;80CD42;
    AND.B #$0F                           ;80CD45;
    CMP.B #$0F                           ;80CD47;
    BCC CODE_80CD4D                      ;80CD49;
    LDA.B #$0E                           ;80CD4B;

CODE_80CD4D:
    STA.W $0000                          ;80CD4D;
    SEC                                  ;80CD50;
    SBC.B #$06                           ;80CD51;
    BCS CODE_80CD57                      ;80CD53;
    LDA.B #$00                           ;80CD55;

CODE_80CD57:
    REP #$21                             ;80CD57;
    AND.W #$00FF                         ;80CD59;
    ADC.W #$1889                         ;80CD5C;
    STA.W $0004                          ;80CD5F;
    LDA.W DATA16_86A105,X                ;80CD62;
    STA.W $0006                          ;80CD65;
    JSR.W CODE_80CD8E                    ;80CD68;
    LDA.W $0000                          ;80CD6B;
    CMP.B #$07                           ;80CD6E;
    BCC CODE_80CD74                      ;80CD70;
    LDA.B #$06                           ;80CD72;

CODE_80CD74:
    REP #$21                             ;80CD74;
    AND.W #$00FF                         ;80CD76;
    ADC.W #$1892                         ;80CD79;
    STA.W $0004                          ;80CD7C;
    LDA.W DATA16_86A105,X                ;80CD7F;
    CLC                                  ;80CD82;
    ADC.W #$0020                         ;80CD83;
    STA.W $0006                          ;80CD86;
    JSR.W CODE_80CD8E                    ;80CD89;
    PLX                                  ;80CD8C;
    RTS                                  ;80CD8D;

CODE_80CD8E:
    LDY.W $00A4                          ;80CD8E;
    LDA.W $0004                          ;80CD91;
    STA.W $0604,Y                        ;80CD94;
    ORA.W #$4000                         ;80CD97;
    STA.W $0606,Y                        ;80CD9A;
    LDA.W $0006                          ;80CD9D;
    STA.W $0601,Y                        ;80CDA0;
    SEP #$20                             ;80CDA3;
    LDA.B #$04                           ;80CDA5;
    STA.W $0603,Y                        ;80CDA7;
    LDA.B #$80                           ;80CDAA;
    STA.W $0600,Y                        ;80CDAC;
    TYA                                  ;80CDAF;
    CLC                                  ;80CDB0;
    ADC.B #$08                           ;80CDB1;
    STA.W $00A4                          ;80CDB3;
    RTS                                  ;80CDB6;

CODE_80CDB7:
    LDA.B $0A                            ;80CDB7;
    SEC                                  ;80CDB9;
    SBC.B #$0A                           ;80CDBA;
    TAX                                  ;80CDBC;

CODE_80CDBD:
    CPX.B #$03                           ;80CDBD;
    BEQ CODE_80CDDA                      ;80CDBF;
    TXY                                  ;80CDC1;
    INY                                  ;80CDC2;
    LDA.W $1F83,Y                        ;80CDC3;
    BPL CODE_80CDDA                      ;80CDC6;
    AND.B #$0F                           ;80CDC8;
    BEQ CODE_80CDDA                      ;80CDCA;
    LDA.W $1F83,Y                        ;80CDCC;
    STA.W $1F83,X                        ;80CDCF;
    LDA.B #$80                           ;80CDD2;
    STA.W $1F83,Y                        ;80CDD4;
    INX                                  ;80CDD7;
    BRA CODE_80CDBD                      ;80CDD8;

CODE_80CDDA:
    RTS                                  ;80CDDA;

CODE_80CDDB:
    LDA.B #$80                           ;80CDDB;
    STA.W $2115                          ;80CDDD;
    LDA.B #$39                           ;80CDE0;
    STA.W $4301                          ;80CDE2;
    LDA.B #$7F                           ;80CDE5;
    STA.W $4304                          ;80CDE7;
    LDA.B #$81                           ;80CDEA;
    STA.W $4300                          ;80CDEC;
    REP #$20                             ;80CDEF;
    LDA.W #$A400                         ;80CDF1;
    STA.W $4302                          ;80CDF4;
    LDA.W #$1000                         ;80CDF7;
    STA.W $4305                          ;80CDFA;
    LDA.W #$5800                         ;80CDFD;
    STA.W $2116                          ;80CE00;
    SEP #$20                             ;80CE03;
    LDA.W $213A                          ;80CE05;
    LDA.B #$01                           ;80CE08;
    STA.W $420B                          ;80CE0A;
    RTS                                  ;80CE0D;

CODE_80CE0E:
    LDA.B #$80                           ;80CE0E;
    STA.W $2115                          ;80CE10;
    LDA.B #$18                           ;80CE13;
    STA.W $4301                          ;80CE15;
    LDA.B #$7F                           ;80CE18;
    STA.W $4304                          ;80CE1A;
    LDA.B #$01                           ;80CE1D;
    STA.W $4300                          ;80CE1F;
    REP #$20                             ;80CE22;
    LDA.W #$A400                         ;80CE24;
    STA.W $4302                          ;80CE27;
    LDA.W #$1000                         ;80CE2A;
    STA.W $4305                          ;80CE2D;
    LDA.W #$5800                         ;80CE30;
    STA.W $2116                          ;80CE33;
    SEP #$20                             ;80CE36;
    LDA.B #$01                           ;80CE38;
    STA.W $420B                          ;80CE3A;
    RTS                                  ;80CE3D;

CODE_80CE3E:
    LDA.W $0BDB                          ;80CE3E;
    LSR A                                ;80CE41;
    CMP.B $0A                            ;80CE42;
    BEQ CODE_80CE83                      ;80CE44;
    JSR.W CODE_80CE97                    ;80CE46;
    LDA.B $0A                            ;80CE49;
    CMP.B #$09                           ;80CE4B;
    BCS CODE_80CE83                      ;80CE4D;
    ASL A                                ;80CE4F;
    STA.W $0BDB                          ;80CE50;
    CMP.B #$00                           ;80CE53;
    BEQ CODE_80CE5F                      ;80CE55;
    CLC                                  ;80CE57;
    ADC.B #$3E                           ;80CE58;
    TAY                                  ;80CE5A;
    JSL.L CODE_808A7B                    ;80CE5B;

CODE_80CE5F:
    LDX.B #$30                           ;80CE5F;
    LDA.W $0BDB                          ;80CE61;
    CLC                                  ;80CE64;
    ADC.B #$40                           ;80CE65;
    TAY                                  ;80CE67;
    JSL.L CODE_828000                    ;80CE68;
    JSL.L CODE_84A2A7                    ;80CE6C;
    LDX.B $0A                            ;80CE70;
    LDA.W DATA8_86BAB8,X                 ;80CE72;
    STA.W $0C0F                          ;80CE75;
    STZ.W $0BDD                          ;80CE78;
    STZ.W $0C0B                          ;80CE7B;
    LDA.B #$40                           ;80CE7E;
    TSB.W $1F24                          ;80CE80;

CODE_80CE83:
    REP #$30                             ;80CE83;
    LDA.W $0BDB                          ;80CE85;
    AND.W #$00FF                         ;80CE88;
    CLC                                  ;80CE8B;
    ADC.W #$0100                         ;80CE8C;
    TAY                                  ;80CE8F;
    JSL.L CODE_828011                    ;80CE90;
    SEP #$30                             ;80CE94;
    RTS                                  ;80CE96;

CODE_80CE97:
    JSL.L CODE_84AC63                    ;80CE97;
    CPY.B #$00                           ;80CE9B;
    BEQ CODE_80CEAF                      ;80CE9D;
    REP #$10                             ;80CE9F;

CODE_80CEA1:
    DEY                                  ;80CEA1;
    DEY                                  ;80CEA2;
    BMI CODE_80CEAD                      ;80CEA3;
    LDX.W $0000,Y                        ;80CEA5;
    STZ.W $0028,X                        ;80CEA8;
    BRA CODE_80CEA1                      ;80CEAB;

CODE_80CEAD:
    SEP #$10                             ;80CEAD;

CODE_80CEAF:
    RTS                                  ;80CEAF;

CODE_80CEB0:
    PHP                                  ;80CEB0;
    PHD                                  ;80CEB1;
    REP #$30                             ;80CEB2;
    LDA.W #$0000                         ;80CEB4;
    TCD                                  ;80CEB7;
    LDA.B $00                            ;80CEB8;
    SEC                                  ;80CEBA;
    SBC.B $04                            ;80CEBB;
    BPL CODE_80CEC3                      ;80CEBD;
    EOR.W #$FFFF                         ;80CEBF;
    INC A                                ;80CEC2;

CODE_80CEC3:
    STA.B $00                            ;80CEC3;
    STA.B $04                            ;80CEC5;
    LDA.B $02                            ;80CEC7;
    SEC                                  ;80CEC9;
    SBC.B $06                            ;80CECA;
    BPL CODE_80CED2                      ;80CECC;
    EOR.W #$FFFF                         ;80CECE;
    INC A                                ;80CED1;

CODE_80CED2:
    STA.B $02                            ;80CED2;
    CMP.B $04                            ;80CED4;
    BMI CODE_80CEDE                      ;80CED6;
    STA.B $00                            ;80CED8;
    LDA.B $04                            ;80CEDA;
    STA.B $02                            ;80CEDC;

CODE_80CEDE:
    LDX.W #$0000                         ;80CEDE;
    LDA.B $00                            ;80CEE1;

CODE_80CEE3:
    BIT.W #$FF00                         ;80CEE3;
    BEQ CODE_80CEEE                      ;80CEE6;
    LSR.B $02                            ;80CEE8;
    LSR A                                ;80CEEA;
    INX                                  ;80CEEB;
    BRA CODE_80CEE3                      ;80CEEC;

CODE_80CEEE:
    STA.B $00                            ;80CEEE;
    STX.B $08                            ;80CEF0;
    SEP #$20                             ;80CEF2;
    LDA.B $00                            ;80CEF4;
    STA.W $4202                          ;80CEF6;
    STA.W $4203                          ;80CEF9;
    NOP                                  ;80CEFC;
    NOP                                  ;80CEFD;
    NOP                                  ;80CEFE;
    NOP                                  ;80CEFF;
    REP #$20                             ;80CF00;
    LDA.W $4216                          ;80CF02;
    STA.B $04                            ;80CF05;
    SEP #$20                             ;80CF07;
    LDA.B $02                            ;80CF09;
    STA.W $4202                          ;80CF0B;
    STA.W $4203                          ;80CF0E;
    NOP                                  ;80CF11;
    NOP                                  ;80CF12;
    NOP                                  ;80CF13;
    NOP                                  ;80CF14;
    REP #$20                             ;80CF15;
    LDA.W $4216                          ;80CF17;
    CLC                                  ;80CF1A;
    ADC.B $04                            ;80CF1B;
    STA.B $06                            ;80CF1D;
    LDA.B $04                            ;80CF1F;

CODE_80CF21:
    CLC                                  ;80CF21;
    ADC.B $00                            ;80CF22;
    ADC.B $00                            ;80CF24;
    INC A                                ;80CF26;
    INC.B $00                            ;80CF27;
    CMP.B $06                            ;80CF29;
    BCC CODE_80CF21                      ;80CF2B;
    DEC.B $00                            ;80CF2D;
    LDX.B $08                            ;80CF2F;
    BEQ CODE_80CF3B                      ;80CF31;
    LDA.B $00                            ;80CF33;

CODE_80CF35:
    ASL A                                ;80CF35;
    DEX                                  ;80CF36;
    BNE CODE_80CF35                      ;80CF37;
    STA.B $00                            ;80CF39;

CODE_80CF3B:
    PLD                                  ;80CF3B;
    PLP                                  ;80CF3C;
    RTL                                  ;80CF3D;
    REP #$20                             ;80CF3E;
    STZ.B $00                            ;80CF40;

CODE_80CF42:
    SEC                                  ;80CF42;
    SBC.B $00                            ;80CF43;
    BCC CODE_80CF4F                      ;80CF45;
    SBC.B $00                            ;80CF47;
    BCC CODE_80CF4F                      ;80CF49;
    INC.B $00                            ;80CF4B;
    BRA CODE_80CF42                      ;80CF4D;

CODE_80CF4F:
    RTS                                  ;80CF4F;

CODE_80CF50:
    STZ.W $0B9D                          ;80CF50;

CODE_80CF53:
    LDA.W $0B9D                          ;80CF53;
    BEQ CODE_80CF53                      ;80CF56;
    REP #$20                             ;80CF58;
    LDA.B $A7                            ;80CF5A;
    EOR.B $A9                            ;80CF5C;
    AND.B $A7                            ;80CF5E;
    STA.B $AB                            ;80CF60;
    SEP #$30                             ;80CF62;
    RTS                                  ;80CF64;
    LDA.B #$01                           ;80CF65;
    STA.W $0BA5                          ;80CF67;
    JSR.W CODE_80CF50                    ;80CF6A;
    LDA.B #$C0                           ;80CF6D;
    STA.W $2100                          ;80CF6F;
    LDA.B #$0C                           ;80CF72;
    STA.W $2107                          ;80CF74;
    STA.W $2108                          ;80CF77;
    STA.W $2109                          ;80CF7A;
    STZ.W $2106                          ;80CF7D;
    LDA.B #$09                           ;80CF80;
    STA.W $2105                          ;80CF82;
    REP #$20                             ;80CF85;
    LDA.W #$0C00                         ;80CF87;
    STA.W $2116                          ;80CF8A;
    LDA.W #$1809                         ;80CF8D;
    STA.W $4300                          ;80CF90;
    LDA.W #$FFB0                         ;80CF93;
    STA.W $4302                          ;80CF96;
    LDA.W #$0800                         ;80CF99;
    STA.W $4305                          ;80CF9C;
    SEP #$20                             ;80CF9F;
    STZ.W $4304                          ;80CFA1;
    LDA.B #$80                           ;80CFA4;
    STA.W $2115                          ;80CFA6;
    LDA.B #$01                           ;80CFA9;
    STA.W $420B                          ;80CFAB;
    JSR.W CODE_80CF50                    ;80CFAE;
    LDA.B #$0A                           ;80CFB1;
    JSR.W CODE_8089E1                    ;80CFB3;
    STZ.W $1F71                          ;80CFB6;
    STZ.W $1F6F                          ;80CFB9;
    STZ.W $1F70                          ;80CFBC;
    STZ.W $1F73                          ;80CFBF;
    JSR.W CODE_80D0E9                    ;80CFC2;

CODE_80CFC5:
    SEP #$30                             ;80CFC5;
    JSR.W CODE_80CF50                    ;80CFC7;
    LDA.W $0BA5                          ;80CFCA;
    BEQ CODE_80CFEB                      ;80CFCD;
    LDY.B #$0C                           ;80CFCF;
    LDX.B #$00                           ;80CFD1;
    REP #$20                             ;80CFD3;
    LDA.B $AB                            ;80CFD5;
    AND.W #$0FF0                         ;80CFD7;

CODE_80CFDA:
    ASL A                                ;80CFDA;
    BCS CODE_80CFE4                      ;80CFDB;
    INX                                  ;80CFDD;
    INX                                  ;80CFDE;
    DEY                                  ;80CFDF;
    BNE CODE_80CFDA                      ;80CFE0;
    BRA CODE_80CFC5                      ;80CFE2;

CODE_80CFE4:
    SEP #$20                             ;80CFE4;
    JSR.W (PTR16_80CFEC,X)               ;80CFE6;
    BRA CODE_80CFC5                      ;80CFE9;

CODE_80CFEB:
    RTS                                  ;80CFEB;

PTR16_80CFEC:
    dw CODE_80D004                       ;80CFEC;
    dw CODE_80D004                       ;80CFEE;
    dw CODE_80D004                       ;80CFF0;
    dw CODE_80D004                       ;80CFF2;
    dw CODE_80D005                       ;80CFF4;
    dw CODE_80D035                       ;80CFF6;
    dw CODE_80D04A                       ;80CFF8;
    dw CODE_80D052                       ;80CFFA;
    dw CODE_80D060                       ;80CFFC;
    dw CODE_80D06C                       ;80CFFE;
    dw CODE_80D0A1                       ;80D000;
    dw CODE_80D0A1                       ;80D002;

CODE_80D004:
    RTS                                  ;80D004;

CODE_80D005:
    REP #$20                             ;80D005;
    LDA.W #$0010                         ;80D007;
    BIT.B $A7                            ;80D00A;
    BPL CODE_80D013                      ;80D00C;
    LDA.W #$0100                         ;80D00E;
    BRA CODE_80D018                      ;80D011;

CODE_80D013:
    BVC CODE_80D018                      ;80D013;
    LDA.W #$0040                         ;80D015;

CODE_80D018:
    CLC                                  ;80D018;
    ADC.W $1F6F                          ;80D019;
    STA.W $1F6F                          ;80D01C;
    LDA.W $1F73                          ;80D01F;
    AND.W #$0003                         ;80D022;
    ASL A                                ;80D025;
    TAY                                  ;80D026;
    LDA.W DATA8_86A55C,Y                 ;80D027;
    AND.W $1F6F                          ;80D02A;
    STA.W $1F6F                          ;80D02D;
    SEP #$20                             ;80D030;
    JMP.W CODE_80D0E9                    ;80D032;

CODE_80D035:
    REP #$20                             ;80D035;
    LDA.W #$FFF0                         ;80D037;
    BIT.B $A7                            ;80D03A;
    BPL CODE_80D043                      ;80D03C;
    LDA.W #$FF00                         ;80D03E;
    BRA CODE_80D018                      ;80D041;

CODE_80D043:
    BVC CODE_80D018                      ;80D043;
    LDA.W #$FFC0                         ;80D045;
    BRA CODE_80D018                      ;80D048;

CODE_80D04A:
    SEC                                  ;80D04A;
    LDA.W $1F71                          ;80D04B;
    SBC.B #$04                           ;80D04E;
    BRA CODE_80D058                      ;80D050;

CODE_80D052:
    CLC                                  ;80D052;
    LDA.W $1F71                          ;80D053;
    ADC.B #$04                           ;80D056;

CODE_80D058:
    AND.B #$1C                           ;80D058;
    STA.W $1F71                          ;80D05A;
    JMP.W CODE_80D0E9                    ;80D05D;

CODE_80D060:
    LDA.W $1F72                          ;80D060;
    CLC                                  ;80D063;
    ADC.B #$40                           ;80D064;
    STA.W $1F72                          ;80D066;
    JMP.W CODE_80D0E9                    ;80D069;

CODE_80D06C:
    LDA.W $1F73                          ;80D06C;
    CMP.B #$03                           ;80D06F;
    BNE CODE_80D07C                      ;80D071;
    LDA.W $1F78                          ;80D073;
    STA.W $210B                          ;80D076;
    JSR.W CODE_80D0D3                    ;80D079;

CODE_80D07C:
    LDA.W $1F73                          ;80D07C;
    INC A                                ;80D07F;
    AND.B #$03                           ;80D080;
    STA.W $1F73                          ;80D082;
    TAY                                  ;80D085;
    LDA.W DATA8_86A564,Y                 ;80D086;
    STA.W $0BA5                          ;80D089;
    STZ.W $1F6F                          ;80D08C;
    STZ.W $1F70                          ;80D08F;
    CPY.B #$03                           ;80D092;
    BNE CODE_80D09E                      ;80D094;
    LDA.B #$66                           ;80D096;
    STA.W $210B                          ;80D098;
    JSR.W CODE_80D0D3                    ;80D09B;

CODE_80D09E:
    JMP.W CODE_80D0E9                    ;80D09E;

CODE_80D0A1:
    LDA.W $1F73                          ;80D0A1;
    CMP.B #$03                           ;80D0A4;
    BNE CODE_80D0AB                      ;80D0A6;
    JSR.W CODE_80D0D3                    ;80D0A8;

CODE_80D0AB:
    STZ.W $0BA5                          ;80D0AB;
    LDA.W $1F74                          ;80D0AE;
    STA.W $2105                          ;80D0B1;
    LDA.W $1F75                          ;80D0B4;
    STA.W $2107                          ;80D0B7;
    LDA.W $1F76                          ;80D0BA;
    STA.W $2108                          ;80D0BD;
    LDA.W $1F77                          ;80D0C0;
    STA.W $2109                          ;80D0C3;
    LDA.W $1F78                          ;80D0C6;
    STA.W $210B                          ;80D0C9;
    LDA.W $1F79                          ;80D0CC;
    STA.W $210C                          ;80D0CF;
    RTS                                  ;80D0D2;

CODE_80D0D3:
    LDX.B #$00                           ;80D0D3;

CODE_80D0D5:
    LDA.W $0300,X                        ;80D0D5;
    XBA                                  ;80D0D8;
    LDA.W $0400,X                        ;80D0D9;
    STA.W $0300,X                        ;80D0DC;
    XBA                                  ;80D0DF;
    STA.W $0400,X                        ;80D0E0;
    INX                                  ;80D0E3;
    BNE CODE_80D0D5                      ;80D0E4;
    INC.B $A1                            ;80D0E6;
    RTS                                  ;80D0E8;

CODE_80D0E9:
    CLC                                  ;80D0E9;
    LDA.W $1F73                          ;80D0EA;
    ADC.B #$0B                           ;80D0ED;
    JSR.W CODE_8089E1                    ;80D0EF;
    LDX.B $A4                            ;80D0F2;
    LDA.B #$80                           ;80D0F4;
    STA.W $0600,X                        ;80D0F6;
    INX                                  ;80D0F9;
    LDA.B #$93                           ;80D0FA;
    STA.W $0600,X                        ;80D0FC;
    INX                                  ;80D0FF;
    LDA.B #$0C                           ;80D100;
    STA.W $0600,X                        ;80D102;
    INX                                  ;80D105;
    LDA.B #$06                           ;80D106;
    STA.W $0600,X                        ;80D108;
    INX                                  ;80D10B;
    LDA.B #$28                           ;80D10C;
    STA.B $00                            ;80D10E;
    LDA.W $1F70                          ;80D110;
    AND.B #$0F                           ;80D113;
    JSR.W CODE_80D1DE                    ;80D115;
    LDA.W $1F6F                          ;80D118;
    LSR A                                ;80D11B;
    LSR A                                ;80D11C;
    LSR A                                ;80D11D;
    LSR A                                ;80D11E;
    JSR.W CODE_80D1DE                    ;80D11F;
    LDA.W $1F6F                          ;80D122;
    AND.B #$0F                           ;80D125;
    JSR.W CODE_80D1DE                    ;80D127;
    LDA.B #$80                           ;80D12A;
    STA.W $0600,X                        ;80D12C;
    INX                                  ;80D12F;
    LDA.B #$D0                           ;80D130;
    STA.W $0600,X                        ;80D132;
    INX                                  ;80D135;
    LDA.B #$0C                           ;80D136;
    STA.W $0600,X                        ;80D138;
    INX                                  ;80D13B;
    LDA.B #$0A                           ;80D13C;
    STA.W $0600,X                        ;80D13E;
    INX                                  ;80D141;
    LDA.W $1F71                          ;80D142;
    LSR A                                ;80D145;
    LSR A                                ;80D146;
    AND.B #$07                           ;80D147;
    JSR.W CODE_80D1DE                    ;80D149;
    LDA.B #$20                           ;80D14C;
    JSR.W CODE_80D1E6                    ;80D14E;
    LDA.B #$56                           ;80D151;
    BIT.W $1F72                          ;80D153;
    BMI CODE_80D15A                      ;80D156;
    LDA.B #$20                           ;80D158;

CODE_80D15A:
    JSR.W CODE_80D1E6                    ;80D15A;
    LDA.B #$20                           ;80D15D;
    JSR.W CODE_80D1E6                    ;80D15F;
    LDA.B #$48                           ;80D162;
    BVS CODE_80D168                      ;80D164;
    LDA.B #$20                           ;80D166;

CODE_80D168:
    JSR.W CODE_80D1E6                    ;80D168;
    STX.B $A4                            ;80D16B;
    JSR.W CODE_80CF50                    ;80D16D;
    LDA.W $1F73                          ;80D170;
    ASL A                                ;80D173;
    TAY                                  ;80D174;
    REP #$20                             ;80D175;
    LDA.W DATA8_86A55C,Y                 ;80D177;
    STA.B $02                            ;80D17A;
    LDA.W #$0D28                         ;80D17C;
    STA.B $10                            ;80D17F;
    LDA.W $1F6F                          ;80D181;
    STA.B $00                            ;80D184;
    SEP #$20                             ;80D186;
    LDA.B #$04                           ;80D188;
    STA.B $05                            ;80D18A;

CODE_80D18C:
    LDA.B #$04                           ;80D18C;
    STA.B $04                            ;80D18E;

CODE_80D190:
    LDX.B $A4                            ;80D190;
    LDA.B #$80                           ;80D192;
    STA.W $0600,X                        ;80D194;
    INX                                  ;80D197;
    LDA.B $10                            ;80D198;
    STA.W $0600,X                        ;80D19A;
    INX                                  ;80D19D;
    LDA.B $11                            ;80D19E;
    STA.W $0600,X                        ;80D1A0;
    INX                                  ;80D1A3;
    LDA.B #$20                           ;80D1A4;
    STA.W $0600,X                        ;80D1A6;
    INX                                  ;80D1A9;
    LDY.B #$10                           ;80D1AA;
    LDA.W $1F71                          ;80D1AC;
    ORA.W $1F72                          ;80D1AF;
    ORA.B $01                            ;80D1B2;
    XBA                                  ;80D1B4;
    LDA.B $00                            ;80D1B5;
    REP #$20                             ;80D1B7;

CODE_80D1B9:
    STA.W $0600,X                        ;80D1B9;
    INX                                  ;80D1BC;
    INX                                  ;80D1BD;
    INC A                                ;80D1BE;
    DEY                                  ;80D1BF;
    BNE CODE_80D1B9                      ;80D1C0;
    STX.B $A4                            ;80D1C2;
    AND.B $02                            ;80D1C4;
    STA.B $00                            ;80D1C6;
    LDA.B $10                            ;80D1C8;
    CLC                                  ;80D1CA;
    ADC.W #$0020                         ;80D1CB;
    STA.B $10                            ;80D1CE;
    SEP #$20                             ;80D1D0;
    DEC.B $04                            ;80D1D2;
    BNE CODE_80D190                      ;80D1D4;
    JSR.W CODE_80CF50                    ;80D1D6;
    DEC.B $05                            ;80D1D9;
    BNE CODE_80D18C                      ;80D1DB;
    RTS                                  ;80D1DD;

CODE_80D1DE:
    CMP.B #$0A                           ;80D1DE;
    BCC CODE_80D1E4                      ;80D1E0;
    ADC.B #$06                           ;80D1E2;

CODE_80D1E4:
    ADC.B #$30                           ;80D1E4;

CODE_80D1E6:
    STA.W $0600,X                        ;80D1E6;
    INX                                  ;80D1E9;
    LDA.B $00                            ;80D1EA;
    STA.W $0600,X                        ;80D1EC;
    INX                                  ;80D1EF;
    RTS                                  ;80D1F0;

CODE_80D1F1:
    PHD                                  ;80D1F1;
    PEA.W $0000                          ;80D1F2;
    PLD                                  ;80D1F5;
    JSR.W CODE_80D585                    ;80D1F6;
    PLD                                  ;80D1F9;
    RTL                                  ;80D1FA;

CODE_80D1FB:
    JSR.W CODE_80DEF1                    ;80D1FB;
    RTL                                  ;80D1FE;

CODE_80D1FF:
    JSR.W CODE_80B5E6                    ;80D1FF;
    RTL                                  ;80D202;

CODE_80D203:
    PHP                                  ;80D203;
    PHD                                  ;80D204;
    REP #$20                             ;80D205;
    SEP #$10                             ;80D207;
    LDX.W $1F19                          ;80D209;
    BNE CODE_80D21A                      ;80D20C;
    LDA.W $0BAD                          ;80D20E;
    STA.W $0BCA                          ;80D211;
    LDA.W $0BB0                          ;80D214;
    STA.W $0BCC                          ;80D217;

CODE_80D21A:
    SEP #$20                             ;80D21A;
    STZ.W $1F0D                          ;80D21C;
    LDX.W $1F15                          ;80D21F;
    BEQ CODE_80D229                      ;80D222;
    JSR.W CODE_80D2C1                    ;80D224;
    BRA CODE_80D22C                      ;80D227;

CODE_80D229:
    JSR.W CODE_80D2B3                    ;80D229;

CODE_80D22C:
    JSL.L CODE_81812E                    ;80D22C;
    STZ.W $0BD4                          ;80D230;
    LDX.W $1F13                          ;80D233;
    BEQ CODE_80D23D                      ;80D236;
    JSR.W CODE_80D410                    ;80D238;
    BRA CODE_80D240                      ;80D23B;

CODE_80D23D:
    JSR.W CODE_80D3F3                    ;80D23D;

CODE_80D240:
    LDX.W $1F13                          ;80D240;
    BEQ CODE_80D24A                      ;80D243;
    JSR.W CODE_80D46D                    ;80D245;
    BRA CODE_80D24D                      ;80D248;

CODE_80D24A:
    JSR.W CODE_80D450                    ;80D24A;

CODE_80D24D:
    LDX.W $1F14                          ;80D24D;
    BEQ CODE_80D257                      ;80D250;
    JSR.W CODE_80D4C0                    ;80D252;
    BRA CODE_80D25A                      ;80D255;

CODE_80D257:
    JSR.W CODE_80D4A3                    ;80D257;

CODE_80D25A:
    LDX.W $1F16                          ;80D25A;
    BEQ CODE_80D264                      ;80D25D;
    JSR.W CODE_80D316                    ;80D25F;
    BRA CODE_80D267                      ;80D262;

CODE_80D264:
    JSR.W CODE_80D2F4                    ;80D264;

CODE_80D267:
    LDX.W $1F15                          ;80D267;
    BEQ CODE_80D271                      ;80D26A;
    JSR.W CODE_80D51D                    ;80D26C;
    BRA CODE_80D274                      ;80D26F;

CODE_80D271:
    JSR.W CODE_80D500                    ;80D271;

CODE_80D274:
    LDA.B #$80                           ;80D274;
    STA.W $1F1C                          ;80D276;
    LDX.W $1F19                          ;80D279;
    BNE CODE_80D282                      ;80D27C;
    JSL.L CODE_819D5D                    ;80D27E;

CODE_80D282:
    STZ.W $1F1C                          ;80D282;
    LDX.W $1F19                          ;80D285;
    BNE CODE_80D293                      ;80D288;
    JSR.W CODE_80DDF1                    ;80D28A;
    JSR.W CODE_80D55D                    ;80D28D;
    JSR.W CODE_80DEF1                    ;80D290;

CODE_80D293:
    LDX.W $1F17                          ;80D293;
    BEQ CODE_80D29D                      ;80D296;
    JSR.W CODE_80D380                    ;80D298;
    BRA CODE_80D2A0                      ;80D29B;

CODE_80D29D:
    JSR.W CODE_80D35B                    ;80D29D;

CODE_80D2A0:
    LDX.W $1F18                          ;80D2A0;
    BEQ CODE_80D2AA                      ;80D2A3;
    JSR.W CODE_80D3D2                    ;80D2A5;
    BRA CODE_80D2AD                      ;80D2A8;

CODE_80D2AA:
    JSR.W CODE_80D3B1                    ;80D2AA;

CODE_80D2AD:
    JSR.W CODE_80D2D3                    ;80D2AD;
    PLD                                  ;80D2B0;
    PLP                                  ;80D2B1;
    RTS                                  ;80D2B2;

CODE_80D2B3:
    LDA.W $0E18                          ;80D2B3;
    BEQ CODE_80D2C0                      ;80D2B6;
    PEA.W $0E18                          ;80D2B8;
    PLD                                  ;80D2BB;
    JSL.L CODE_838000                    ;80D2BC;

CODE_80D2C0:
    RTS                                  ;80D2C0;

CODE_80D2C1:
    LDA.W $0E18                          ;80D2C1;
    BEQ CODE_80D2C0                      ;80D2C4;
    PEA.W $0E18                          ;80D2C6;
    PLD                                  ;80D2C9;
    LDA.B $0E                            ;80D2CA;
    BPL CODE_80D2D2                      ;80D2CC;
    JSL.L CODE_8280B4                    ;80D2CE;

CODE_80D2D2:
    RTS                                  ;80D2D2;

CODE_80D2D3:
    REP #$20                             ;80D2D3;
    LDA.W #$0C38                         ;80D2D5;

CODE_80D2D8:
    TCD                                  ;80D2D8;
    SEP #$30                             ;80D2D9;
    LDA.B $00                            ;80D2DB;
    BEQ CODE_80D2E6                      ;80D2DD;
    LDA.B $0A                            ;80D2DF;
    ASL A                                ;80D2E1;
    TAX                                  ;80D2E2;
    JSR.W (PTR16_80F5A9,X)               ;80D2E3;

CODE_80D2E6:
    REP #$21                             ;80D2E6;
    TDC                                  ;80D2E8;
    ADC.W #$0020                         ;80D2E9;
    CMP.W #$0C98                         ;80D2EC;
    BCC CODE_80D2D8                      ;80D2EF;
    SEP #$30                             ;80D2F1;
    RTS                                  ;80D2F3;

CODE_80D2F4:
    REP #$20                             ;80D2F4;
    LDA.W #$1628                         ;80D2F6;

CODE_80D2F9:
    TCD                                  ;80D2F9;
    SEP #$30                             ;80D2FA;
    LDA.B $00                            ;80D2FC;
    BEQ CODE_80D303                      ;80D2FE;
    JSR.W CODE_80D344                    ;80D300;

CODE_80D303:
    LDA.W $1F16                          ;80D303;
    BNE CODE_80D331                      ;80D306;
    REP #$21                             ;80D308;
    TDC                                  ;80D30A;
    ADC.W #$0030                         ;80D30B;
    CMP.W #$1928                         ;80D30E;
    BCC CODE_80D2F9                      ;80D311;
    SEP #$30                             ;80D313;
    RTS                                  ;80D315;

CODE_80D316:
    REP #$20                             ;80D316;
    LDA.W #$1628                         ;80D318;

CODE_80D31B:
    TCD                                  ;80D31B;
    SEP #$30                             ;80D31C;
    LDA.B $00                            ;80D31E;
    BEQ CODE_80D331                      ;80D320;
    BPL CODE_80D329                      ;80D322;
    JSR.W CODE_80D34E                    ;80D324;
    BRA CODE_80D331                      ;80D327;

CODE_80D329:
    LDA.B $0E                            ;80D329;
    BPL CODE_80D331                      ;80D32B;
    JSL.L CODE_8280B4                    ;80D32D;

CODE_80D331:
    LDA.W $1F16                          ;80D331;
    BEQ CODE_80D303                      ;80D334;
    REP #$21                             ;80D336;
    TDC                                  ;80D338;
    ADC.W #$0030                         ;80D339;
    CMP.W #$1928                         ;80D33C;
    BCC CODE_80D31B                      ;80D33F;
    SEP #$30                             ;80D341;
    RTS                                  ;80D343;

CODE_80D344:
    REP #$20                             ;80D344;
    LDA.B $05                            ;80D346;
    STA.B $22                            ;80D348;
    LDA.B $08                            ;80D34A;
    STA.B $24                            ;80D34C;

CODE_80D34E:
    SEP #$20                             ;80D34E;
    LDA.B #$80                           ;80D350;
    TRB.B $0E                            ;80D352;
    LDA.B $0A                            ;80D354;
    ASL A                                ;80D356;
    TAX                                  ;80D357;
    JMP.W (PTR16_80F336,X)               ;80D358;

CODE_80D35B:
    REP #$20                             ;80D35B;
    LDA.W #$1928                         ;80D35D;

CODE_80D360:
    TCD                                  ;80D360;
    SEP #$30                             ;80D361;
    LDA.B $00                            ;80D363;
    BEQ CODE_80D372                      ;80D365;
    LDA.B #$80                           ;80D367;
    TRB.B $0E                            ;80D369;
    LDA.B $0A                            ;80D36B;
    ASL A                                ;80D36D;
    TAX                                  ;80D36E;
    JSR.W (PTR16_80F3CF,X)               ;80D36F;

CODE_80D372:
    REP #$21                             ;80D372;
    TDC                                  ;80D374;
    ADC.W #$0020                         ;80D375;
    CMP.W #$1D08                         ;80D378;
    BCC CODE_80D360                      ;80D37B;
    SEP #$30                             ;80D37D;
    RTS                                  ;80D37F;

CODE_80D380:
    REP #$20                             ;80D380;
    LDA.W #$1928                         ;80D382;

CODE_80D385:
    TCD                                  ;80D385;
    SEP #$30                             ;80D386;
    LDA.B $00                            ;80D388;
    BEQ CODE_80D3A3                      ;80D38A;
    BPL CODE_80D39B                      ;80D38C;
    LDA.B #$80                           ;80D38E;
    TRB.B $0E                            ;80D390;
    LDA.B $0A                            ;80D392;
    ASL A                                ;80D394;
    TAX                                  ;80D395;
    JSR.W (PTR16_80F3CF,X)               ;80D396;
    BRA CODE_80D3A3                      ;80D399;

CODE_80D39B:
    LDA.B $0E                            ;80D39B;
    BPL CODE_80D3A3                      ;80D39D;
    JSL.L CODE_8280B4                    ;80D39F;

CODE_80D3A3:
    REP #$21                             ;80D3A3;
    TDC                                  ;80D3A5;
    ADC.W #$0020                         ;80D3A6;
    CMP.W #$1D08                         ;80D3A9;
    BCC CODE_80D385                      ;80D3AC;
    SEP #$30                             ;80D3AE;
    RTS                                  ;80D3B0;

CODE_80D3B1:
    REP #$20                             ;80D3B1;
    LDA.W #$1D08                         ;80D3B3;

CODE_80D3B6:
    TCD                                  ;80D3B6;
    SEP #$30                             ;80D3B7;
    LDA.B $00                            ;80D3B9;
    BEQ CODE_80D3C4                      ;80D3BB;
    LDA.B $0A                            ;80D3BD;
    ASL A                                ;80D3BF;
    TAX                                  ;80D3C0;
    JSR.W (PTR16_80F5B0,X)               ;80D3C1;

CODE_80D3C4:
    REP #$21                             ;80D3C4;
    TDC                                  ;80D3C6;
    ADC.W #$0010                         ;80D3C7;
    CMP.W #$1E08                         ;80D3CA;
    BCC CODE_80D3B6                      ;80D3CD;
    SEP #$30                             ;80D3CF;
    RTS                                  ;80D3D1;

CODE_80D3D2:
    REP #$20                             ;80D3D2;
    LDA.W #$1D08                         ;80D3D4;

CODE_80D3D7:
    TCD                                  ;80D3D7;
    SEP #$30                             ;80D3D8;
    LDA.B $00                            ;80D3DA;
    BPL CODE_80D3E5                      ;80D3DC;
    LDA.B $0A                            ;80D3DE;
    ASL A                                ;80D3E0;
    TAX                                  ;80D3E1;
    JSR.W (PTR16_80F5B0,X)               ;80D3E2;

CODE_80D3E5:
    REP #$21                             ;80D3E5;
    TDC                                  ;80D3E7;
    ADC.W #$0010                         ;80D3E8;
    CMP.W #$1E08                         ;80D3EB;
    BCC CODE_80D3D7                      ;80D3EE;
    SEP #$30                             ;80D3F0;
    RTS                                  ;80D3F2;

CODE_80D3F3:
    REP #$20                             ;80D3F3;
    LDA.W #$1228                         ;80D3F5;

CODE_80D3F8:
    TCD                                  ;80D3F8;
    SEP #$30                             ;80D3F9;
    LDA.B $00                            ;80D3FB;
    BEQ CODE_80D402                      ;80D3FD;
    JSR.W CODE_80D439                    ;80D3FF;

CODE_80D402:
    REP #$21                             ;80D402;
    TDC                                  ;80D404;
    ADC.W #$0040                         ;80D405;
    CMP.W #$1428                         ;80D408;
    BCC CODE_80D3F8                      ;80D40B;
    SEP #$30                             ;80D40D;
    RTS                                  ;80D40F;

CODE_80D410:
    REP #$20                             ;80D410;
    LDA.W #$1228                         ;80D412;

CODE_80D415:
    TCD                                  ;80D415;
    SEP #$30                             ;80D416;
    LDA.B $00                            ;80D418;
    BEQ CODE_80D42B                      ;80D41A;
    BPL CODE_80D423                      ;80D41C;
    JSR.W CODE_80D443                    ;80D41E;
    BRA CODE_80D42B                      ;80D421;

CODE_80D423:
    LDA.B $0E                            ;80D423;
    BPL CODE_80D42B                      ;80D425;
    JSL.L CODE_8280B4                    ;80D427;

CODE_80D42B:
    REP #$21                             ;80D42B;
    TDC                                  ;80D42D;
    ADC.W #$0040                         ;80D42E;
    CMP.W #$1428                         ;80D431;
    BCC CODE_80D415                      ;80D434;
    SEP #$30                             ;80D436;
    RTS                                  ;80D438;

CODE_80D439:
    REP #$20                             ;80D439;
    LDA.B $05                            ;80D43B;
    STA.B $22                            ;80D43D;
    LDA.B $08                            ;80D43F;
    STA.B $24                            ;80D441;

CODE_80D443:
    SEP #$20                             ;80D443;
    LDA.B #$80                           ;80D445;
    TRB.B $0E                            ;80D447;
    LDA.B $0A                            ;80D449;
    ASL A                                ;80D44B;
    TAX                                  ;80D44C;
    JMP.W (PTR16_80F6A5,X)               ;80D44D;

CODE_80D450:
    REP #$20                             ;80D450;
    LDA.W #$0C98                         ;80D452;

CODE_80D455:
    TCD                                  ;80D455;
    SEP #$30                             ;80D456;
    LDA.B $00                            ;80D458;
    BEQ CODE_80D45F                      ;80D45A;
    JSR.W CODE_80D496                    ;80D45C;

CODE_80D45F:
    REP #$21                             ;80D45F;
    TDC                                  ;80D461;
    ADC.W #$0020                         ;80D462;
    CMP.W #$0E18                         ;80D465;
    BCC CODE_80D455                      ;80D468;
    SEP #$30                             ;80D46A;
    RTS                                  ;80D46C;

CODE_80D46D:
    REP #$20                             ;80D46D;
    LDA.W #$0C98                         ;80D46F;

CODE_80D472:
    TCD                                  ;80D472;
    SEP #$30                             ;80D473;
    LDA.B $00                            ;80D475;
    BEQ CODE_80D488                      ;80D477;
    BPL CODE_80D480                      ;80D479;
    JSR.W CODE_80D496                    ;80D47B;
    BRA CODE_80D488                      ;80D47E;

CODE_80D480:
    LDA.B $0E                            ;80D480;
    BPL CODE_80D488                      ;80D482;
    JSL.L CODE_8280B4                    ;80D484;

CODE_80D488:
    REP #$21                             ;80D488;
    TDC                                  ;80D48A;
    ADC.W #$0020                         ;80D48B;
    CMP.W #$0E18                         ;80D48E;
    BCC CODE_80D472                      ;80D491;
    SEP #$30                             ;80D493;
    RTS                                  ;80D495;

CODE_80D496:
    SEP #$20                             ;80D496;
    LDA.B #$80                           ;80D498;
    TRB.B $0E                            ;80D49A;
    LDA.B $0A                            ;80D49C;
    ASL A                                ;80D49E;
    TAX                                  ;80D49F;
    JMP.W (PTR16_80F777,X)               ;80D4A0;

CODE_80D4A3:
    REP #$20                             ;80D4A3;
    LDA.W #$1428                         ;80D4A5;

CODE_80D4A8:
    TCD                                  ;80D4A8;
    SEP #$30                             ;80D4A9;
    LDA.B $00                            ;80D4AB;
    BEQ CODE_80D4B2                      ;80D4AD;
    JSR.W CODE_80D4E9                    ;80D4AF;

CODE_80D4B2:
    REP #$21                             ;80D4B2;
    TDC                                  ;80D4B4;
    ADC.W #$0040                         ;80D4B5;
    CMP.W #$1628                         ;80D4B8;
    BCC CODE_80D4A8                      ;80D4BB;
    SEP #$30                             ;80D4BD;
    RTS                                  ;80D4BF;

CODE_80D4C0:
    REP #$20                             ;80D4C0;
    LDA.W #$1228                         ;80D4C2;

CODE_80D4C5:
    TCD                                  ;80D4C5;
    SEP #$30                             ;80D4C6;
    LDA.B $00                            ;80D4C8;
    BEQ CODE_80D4DB                      ;80D4CA;
    BPL CODE_80D4D3                      ;80D4CC;
    JSR.W CODE_80D4F3                    ;80D4CE;
    BRA CODE_80D4DB                      ;80D4D1;

CODE_80D4D3:
    LDA.B $0E                            ;80D4D3;
    BPL CODE_80D4DB                      ;80D4D5;
    JSL.L CODE_8280B4                    ;80D4D7;

CODE_80D4DB:
    REP #$21                             ;80D4DB;
    TDC                                  ;80D4DD;
    ADC.W #$0040                         ;80D4DE;
    CMP.W #$1628                         ;80D4E1;
    BCC CODE_80D4C5                      ;80D4E4;
    SEP #$30                             ;80D4E6;
    RTS                                  ;80D4E8;

CODE_80D4E9:
    REP #$20                             ;80D4E9;
    LDA.B $05                            ;80D4EB;
    STA.B $22                            ;80D4ED;
    LDA.B $08                            ;80D4EF;
    STA.B $24                            ;80D4F1;

CODE_80D4F3:
    SEP #$20                             ;80D4F3;
    LDA.B #$80                           ;80D4F5;
    TRB.B $0E                            ;80D4F7;
    LDA.B $0A                            ;80D4F9;
    ASL A                                ;80D4FB;
    TAX                                  ;80D4FC;
    JMP.W (PTR16_80F793,X)               ;80D4FD;

CODE_80D500:
    REP #$20                             ;80D500;
    LDA.W #$0E68                         ;80D502;

CODE_80D505:
    TCD                                  ;80D505;
    SEP #$30                             ;80D506;
    LDA.B $00                            ;80D508;
    BEQ CODE_80D50F                      ;80D50A;
    JSR.W CODE_80D546                    ;80D50C;

CODE_80D50F:
    REP #$21                             ;80D50F;
    TDC                                  ;80D511;
    ADC.W #$0040                         ;80D512;
    CMP.W #$1228                         ;80D515;
    BCC CODE_80D505                      ;80D518;
    SEP #$30                             ;80D51A;
    RTS                                  ;80D51C;

CODE_80D51D:
    REP #$20                             ;80D51D;
    LDA.W #$0E68                         ;80D51F;

CODE_80D522:
    TCD                                  ;80D522;
    SEP #$30                             ;80D523;
    LDA.B $00                            ;80D525;
    BEQ CODE_80D538                      ;80D527;
    BPL CODE_80D530                      ;80D529;
    JSR.W CODE_80D550                    ;80D52B;
    BRA CODE_80D538                      ;80D52E;

CODE_80D530:
    LDA.B $0E                            ;80D530;
    BPL CODE_80D538                      ;80D532;
    JSL.L CODE_82808F                    ;80D534;

CODE_80D538:
    REP #$21                             ;80D538;
    TDC                                  ;80D53A;
    ADC.W #$0040                         ;80D53B;
    CMP.W #$1228                         ;80D53E;
    BCC CODE_80D522                      ;80D541;
    SEP #$30                             ;80D543;
    RTS                                  ;80D545;

CODE_80D546:
    REP #$20                             ;80D546;
    LDA.B $05                            ;80D548;
    STA.B $22                            ;80D54A;
    LDA.B $08                            ;80D54C;
    STA.B $24                            ;80D54E;

CODE_80D550:
    SEP #$20                             ;80D550;
    LDA.B #$80                           ;80D552;
    TRB.B $0E                            ;80D554;
    LDA.B $0A                            ;80D556;
    ASL A                                ;80D558;
    TAX                                  ;80D559;
    JMP.W (PTR16_80F8F3,X)               ;80D55A;

CODE_80D55D:
    REP #$31                             ;80D55D;
    LDX.W $1F2E                          ;80D55F;
    BEQ CODE_80D582                      ;80D562;
    LDA.W $0012,X                        ;80D564;
    ADC.W $1E4D                          ;80D567;
    SEC                                  ;80D56A;
    SBC.W $0005,X                        ;80D56B;
    STA.W $1E8D                          ;80D56E;
    LDA.W $0014,X                        ;80D571;
    CLC                                  ;80D574;
    ADC.W $1E50                          ;80D575;
    SEC                                  ;80D578;
    SBC.W $0008,X                        ;80D579;
    STA.W $1E90                          ;80D57C;
    STZ.W $1F2E                          ;80D57F;

CODE_80D582:
    SEP #$30                             ;80D582;
    RTS                                  ;80D584;

CODE_80D585:
    PHP                                  ;80D585;
    PHB                                  ;80D586;
    SEP #$20                             ;80D587;
    REP #$10                             ;80D589;
    JSR.W CODE_80D7E4                    ;80D58B;
    JSR.W CODE_80D90B                    ;80D58E;
    JSR.W CODE_80DA24                    ;80D591;
    LDA.B #$8D                           ;80D594;
    PHA                                  ;80D596;
    PLB                                  ;80D597;
    JSR.W CODE_80D5F5                    ;80D598;
    JSR.W CODE_80D681                    ;80D59B;
    JSR.W CODE_80D6B2                    ;80D59E;
    JSR.W CODE_80D63B                    ;80D5A1;
    SEP #$30                             ;80D5A4;
    LDA.B $E4                            ;80D5A6;
    AND.B #$03                           ;80D5A8;
    BEQ CODE_80D5BC                      ;80D5AA;

CODE_80D5AC:
    LSR.B $E6                            ;80D5AC;
    LSR.B $E6                            ;80D5AE;
    INC A                                ;80D5B0;
    AND.B #$03                           ;80D5B1;
    BNE CODE_80D5AC                      ;80D5B3;
    LDX.B $E5                            ;80D5B5;
    LDA.B $E6                            ;80D5B7;
    STA.W $0900,X                        ;80D5B9;

CODE_80D5BC:
    LDA.B $E3                            ;80D5BC;
    SEC                                  ;80D5BE;
    SBC.B $E4                            ;80D5BF;
    BEQ CODE_80D5C5                      ;80D5C1;
    BCS CODE_80D5C7                      ;80D5C3;

CODE_80D5C5:
    LDA.B #$01                           ;80D5C5;

CODE_80D5C7:
    STA.B $00                            ;80D5C7;
    REP #$30                             ;80D5C9;
    LDA.B $E4                            ;80D5CB;
    AND.W #$007F                         ;80D5CD;
    ASL A                                ;80D5D0;
    ASL A                                ;80D5D1;
    TAX                                  ;80D5D2;
    SEP #$20                             ;80D5D3;
    LDA.B #$E0                           ;80D5D5;

CODE_80D5D7:
    STA.W $0701,X                        ;80D5D7;
    INX                                  ;80D5DA;
    INX                                  ;80D5DB;
    INX                                  ;80D5DC;
    INX                                  ;80D5DD;
    DEC.B $00                            ;80D5DE;
    BNE CODE_80D5D7                      ;80D5E0;

CODE_80D5E2:
    LDA.B $E4                            ;80D5E2;
    STA.B $E3                            ;80D5E4;
    REP #$20                             ;80D5E6;
    STZ.B $E4                            ;80D5E8;
    STZ.B $E6                            ;80D5EA;
    STZ.B $E8                            ;80D5EC;
    STZ.B $EA                            ;80D5EE;
    STZ.B $EB                            ;80D5F0;
    PLB                                  ;80D5F2;
    PLP                                  ;80D5F3;
    RTS                                  ;80D5F4;

CODE_80D5F5:
    STZ.B $0E                            ;80D5F5;

CODE_80D5F7:
    LDA.B #$00                           ;80D5F7;
    XBA                                  ;80D5F9;
    LDA.B $0E                            ;80D5FA;
    CMP.B $E7                            ;80D5FC;
    BCS CODE_80D60C                      ;80D5FE;
    ASL A                                ;80D600;
    TAY                                  ;80D601;
    LDX.W $0920,Y                        ;80D602;
    JSR.W CODE_80D6BD                    ;80D605;
    INC.B $0E                            ;80D608;
    BRA CODE_80D5F7                      ;80D60A;

CODE_80D60C:
    STZ.B $0E                            ;80D60C;

CODE_80D60E:
    LDA.B #$00                           ;80D60E;
    XBA                                  ;80D610;
    LDA.B $0E                            ;80D611;
    CMP.B $E8                            ;80D613;
    BCS CODE_80D623                      ;80D615;
    ASL A                                ;80D617;
    TAY                                  ;80D618;
    LDX.W $0960,Y                        ;80D619;
    JSR.W CODE_80D6BD                    ;80D61C;
    INC.B $0E                            ;80D61F;
    BRA CODE_80D60E                      ;80D621;

CODE_80D623:
    STZ.B $0E                            ;80D623;

CODE_80D625:
    LDA.B #$00                           ;80D625;
    XBA                                  ;80D627;
    LDA.B $0E                            ;80D628;
    CMP.B $E9                            ;80D62A;
    BCS CODE_80D63A                      ;80D62C;
    ASL A                                ;80D62E;
    TAY                                  ;80D62F;
    LDX.W $09A0,Y                        ;80D630;
    JSR.W CODE_80D6BD                    ;80D633;
    INC.B $0E                            ;80D636;
    BRA CODE_80D625                      ;80D638;

CODE_80D63A:
    RTS                                  ;80D63A;

CODE_80D63B:
    STZ.B $0E                            ;80D63B;

CODE_80D63D:
    LDA.B #$00                           ;80D63D;
    XBA                                  ;80D63F;
    LDA.B $0E                            ;80D640;
    CMP.B $EA                            ;80D642;
    BCS CODE_80D652                      ;80D644;
    ASL A                                ;80D646;
    TAY                                  ;80D647;
    LDX.W $09E0,Y                        ;80D648;
    JSR.W CODE_80D6BD                    ;80D64B;
    INC.B $0E                            ;80D64E;
    BRA CODE_80D63D                      ;80D650;

CODE_80D652:
    STZ.B $0E                            ;80D652;

CODE_80D654:
    LDA.B #$00                           ;80D654;
    XBA                                  ;80D656;
    LDA.B $0E                            ;80D657;
    CMP.B $EB                            ;80D659;
    BCS CODE_80D669                      ;80D65B;
    ASL A                                ;80D65D;
    TAY                                  ;80D65E;
    LDX.W $0A20,Y                        ;80D65F;
    JSR.W CODE_80D6BD                    ;80D662;
    INC.B $0E                            ;80D665;
    BRA CODE_80D654                      ;80D667;

CODE_80D669:
    STZ.B $0E                            ;80D669;

CODE_80D66B:
    LDA.B #$00                           ;80D66B;
    XBA                                  ;80D66D;
    LDA.B $0E                            ;80D66E;
    CMP.B $EC                            ;80D670;
    BCS CODE_80D680                      ;80D672;
    ASL A                                ;80D674;
    TAY                                  ;80D675;
    LDX.W $0A60,Y                        ;80D676;
    JSR.W CODE_80D6BD                    ;80D679;
    INC.B $0E                            ;80D67C;
    BRA CODE_80D66B                      ;80D67E;

CODE_80D680:
    RTS                                  ;80D680;

CODE_80D681:
    LDA.W $0C38                          ;80D681;
    BEQ CODE_80D691                      ;80D684;
    LDA.W $0C46                          ;80D686;
    BEQ CODE_80D691                      ;80D689;
    LDX.W #$0C38                         ;80D68B;
    JSR.W CODE_80D6BD                    ;80D68E;

CODE_80D691:
    LDA.W $0C58                          ;80D691;
    BEQ CODE_80D6A1                      ;80D694;
    LDA.W $0C66                          ;80D696;
    BEQ CODE_80D6A1                      ;80D699;
    LDX.W #$0C58                         ;80D69B;
    JSR.W CODE_80D6BD                    ;80D69E;

CODE_80D6A1:
    LDA.W $0C78                          ;80D6A1;
    BEQ CODE_80D6B1                      ;80D6A4;
    LDA.W $0C86                          ;80D6A6;
    BEQ CODE_80D6B1                      ;80D6A9;
    LDX.W #$0C78                         ;80D6AB;
    JSR.W CODE_80D6BD                    ;80D6AE;

CODE_80D6B1:
    RTS                                  ;80D6B1;

CODE_80D6B2:
    LDX.W #$0BA8                         ;80D6B2;
    LDA.B $0E,X                          ;80D6B5;
    BEQ CODE_80D6BC                      ;80D6B7;
    JSR.W CODE_80D6BD                    ;80D6B9;

CODE_80D6BC:
    RTS                                  ;80D6BC;

CODE_80D6BD:
    LDA.B $11,X                          ;80D6BD;
    AND.B #$40                           ;80D6BF;
    STA.B $0B                            ;80D6C1;
    LDA.B $11,X                          ;80D6C3;
    AND.B #$3F                           ;80D6C5;
    STA.B $0F                            ;80D6C7;
    LDA.B $18,X                          ;80D6C9;
    STA.B $10                            ;80D6CB;
    STZ.B $19                            ;80D6CD;
    LDA.B $19,X                          ;80D6CF;
    BPL CODE_80D6D5                      ;80D6D1;
    DEC.B $19                            ;80D6D3;

CODE_80D6D5:
    STA.B $18                            ;80D6D5;
    REP #$21                             ;80D6D7;
    LDA.B $08,X                          ;80D6D9;
    ADC.B $18                            ;80D6DB;
    SEC                                  ;80D6DD;
    SBC.W $1E50                          ;80D6DE;
    STA.B $02                            ;80D6E1;
    LDA.B $05,X                          ;80D6E3;
    SEC                                  ;80D6E5;
    SBC.W $1E4D                          ;80D6E6;
    STA.B $00                            ;80D6E9;
    PHX                                  ;80D6EB;
    LDA.B $16,X                          ;80D6EC;
    AND.W #$00FF                         ;80D6EE;
    STA.B $14                            ;80D6F1;
    ASL A                                ;80D6F3;
    CLC                                  ;80D6F4;
    ADC.B $14                            ;80D6F5;
    TAX                                  ;80D6F7;
    LDA.L DATA8_8D8000,X                 ;80D6F8;
    STA.B $1C                            ;80D6FC;
    LDA.L DATA8_8D8002,X                 ;80D6FE;
    STA.B $1E                            ;80D702;
    PLX                                  ;80D704;
    LDA.B $17,X                          ;80D705;
    AND.W #$007F                         ;80D707;
    STA.B $14                            ;80D70A;
    ASL A                                ;80D70C;
    CLC                                  ;80D70D;
    ADC.B $14                            ;80D70E;
    TAY                                  ;80D710;
    LDA.B [$1C],Y                        ;80D711;
    STA.B $18                            ;80D713;
    INY                                  ;80D715;
    LDA.B [$1C],Y                        ;80D716;
    STA.B $19                            ;80D718;
    LDA.B $E4                            ;80D71A;
    AND.W #$007F                         ;80D71C;
    ASL A                                ;80D71F;
    ASL A                                ;80D720;
    TAX                                  ;80D721;
    SEP #$20                             ;80D722;
    LDY.W #$0000                         ;80D724;
    LDA.B [$18],Y                        ;80D727;
    STA.B $0C                            ;80D729;

CODE_80D72B:
    JSR.W CODE_80D780                    ;80D72B;
    SEP #$20                             ;80D72E;
    BCS CODE_80D76E                      ;80D730;
    LDY.W #$0003                         ;80D732;
    LDA.B [$18],Y                        ;80D735;
    ADC.B $10                            ;80D737;
    STA.W $0702,X                        ;80D739;
    INY                                  ;80D73C;
    LDA.B [$18],Y                        ;80D73D;
    AND.B #$CE                           ;80D73F;
    ORA.B $0F                            ;80D741;
    EOR.B $0B                            ;80D743;
    STA.W $0703,X                        ;80D745;
    INX                                  ;80D748;
    INX                                  ;80D749;
    INX                                  ;80D74A;
    INX                                  ;80D74B;
    LDA.B $05                            ;80D74C;
    LSR A                                ;80D74E;
    ROR.B $E6                            ;80D74F;
    ASL.B $0D                            ;80D751;
    ROR.B $E6                            ;80D753;
    INC.B $E4                            ;80D755;
    LDA.B $E4                            ;80D757;
    AND.B #$03                           ;80D759;
    BNE CODE_80D76E                      ;80D75B;
    PHX                                  ;80D75D;
    LDA.B $E5                            ;80D75E;
    TAX                                  ;80D760;
    LDA.B $E6                            ;80D761;
    STA.W $0900,X                        ;80D763;
    INC.B $E5                            ;80D766;
    CPX.W #$001F                         ;80D768;
    PLX                                  ;80D76B;
    BCS CODE_80D77B                      ;80D76C;

CODE_80D76E:
    LDY.B $18                            ;80D76E;
    INY                                  ;80D770;
    INY                                  ;80D771;
    INY                                  ;80D772;
    INY                                  ;80D773;
    STY.B $18                            ;80D774;
    DEC.B $0C                            ;80D776;
    BNE CODE_80D72B                      ;80D778;
    RTS                                  ;80D77A;

CODE_80D77B:
    PLX                                  ;80D77B;
    PLX                                  ;80D77C;
    JMP.W CODE_80D5E2                    ;80D77D;

CODE_80D780:
    LDY.W #$0004                         ;80D780;
    LDA.B [$18],Y                        ;80D783;
    AND.B #$20                           ;80D785;
    ASL A                                ;80D787;
    ASL A                                ;80D788;
    STA.B $0D                            ;80D789;
    REP #$20                             ;80D78B;
    BNE CODE_80D794                      ;80D78D;
    LDA.W #$FFF8                         ;80D78F;
    BRA CODE_80D797                      ;80D792;

CODE_80D794:
    LDA.W #$FFF0                         ;80D794;

CODE_80D797:
    STA.B $08                            ;80D797;
    LDY.W #$0001                         ;80D799;
    LDA.B [$18],Y                        ;80D79C;
    BIT.W #$0080                         ;80D79E;
    BNE CODE_80D7A8                      ;80D7A1;
    AND.W #$00FF                         ;80D7A3;
    BRA CODE_80D7AB                      ;80D7A6;

CODE_80D7A8:
    ORA.W #$FF00                         ;80D7A8;

CODE_80D7AB:
    BIT.B $0A                            ;80D7AB;
    BVC CODE_80D7B5                      ;80D7AD;
    SEC                                  ;80D7AF;
    EOR.W #$FFFF                         ;80D7B0;
    ADC.B $08                            ;80D7B3;

CODE_80D7B5:
    CLC                                  ;80D7B5;
    ADC.B $00                            ;80D7B6;
    STA.W $0700,X                        ;80D7B8;
    STA.B $04                            ;80D7BB;
    CLC                                  ;80D7BD;
    ADC.W #$0010                         ;80D7BE;
    CMP.W #$010F                         ;80D7C1;
    BCS CODE_80D7E3                      ;80D7C4;
    INY                                  ;80D7C6;
    LDA.B [$18],Y                        ;80D7C7;
    BIT.W #$0080                         ;80D7C9;
    BNE CODE_80D7D3                      ;80D7CC;
    AND.W #$00FF                         ;80D7CE;
    BRA CODE_80D7D6                      ;80D7D1;

CODE_80D7D3:
    ORA.W #$FF00                         ;80D7D3;

CODE_80D7D6:
    CLC                                  ;80D7D6;
    ADC.B $02                            ;80D7D7;
    STA.W $0701,X                        ;80D7D9;
    CLC                                  ;80D7DC;
    ADC.W #$000F                         ;80D7DD;
    CMP.W #$00EF                         ;80D7E0;

CODE_80D7E3:
    RTS                                  ;80D7E3;

CODE_80D7E4:
    LDA.B #$00                           ;80D7E4;
    XBA                                  ;80D7E6;
    LDA.W $1F11                          ;80D7E7;
    TAX                                  ;80D7EA;
    JMP.W (PTR16_80D7EE,X)               ;80D7EB;

PTR16_80D7EE:
    dw CODE_80D7F6                       ;80D7EE;
    dw CODE_80D842                       ;80D7F0;
    dw CODE_80D8EF                       ;80D7F2;
    dw CODE_80D902                       ;80D7F4;

CODE_80D7F6:
    LDA.B #$02                           ;80D7F6;
    STA.W $1F11                          ;80D7F8;
    LDA.B #$10                           ;80D7FB;
    STA.B $E4                            ;80D7FD;
    LDA.B #$04                           ;80D7FF;
    STA.B $E5                            ;80D801;
    LDA.B #$80                           ;80D803;
    TSB.W $0BCF                          ;80D805;
    LDA.B #$AA                           ;80D808;
    STA.W $0900                          ;80D80A;
    STA.W $0901                          ;80D80D;
    STA.W $0902                          ;80D810;
    LDA.B #$AA                           ;80D813;
    STA.W $0903                          ;80D815;
    LDX.W #$0000                         ;80D818;

CODE_80D81B:
    LDA.B #$08                           ;80D81B;
    STA.W $0700,X                        ;80D81D;
    LDA.B #$E0                           ;80D820;
    STA.W $0701,X                        ;80D822;
    LDA.B #$80                           ;80D825;
    STA.W $0702,X                        ;80D827;
    LDA.B #$34                           ;80D82A;
    STA.W $0703,X                        ;80D82C;
    INX                                  ;80D82F;
    INX                                  ;80D830;
    INX                                  ;80D831;
    INX                                  ;80D832;
    CPX.W #$001C                         ;80D833;
    BNE CODE_80D81B                      ;80D836;
    LDA.B #$50                           ;80D838;
    STA.W $0701                          ;80D83A;
    LDA.B #$86                           ;80D83D;
    STA.W $0702                          ;80D83F;

CODE_80D842:
    LDA.B #$10                           ;80D842;
    STA.B $E4                            ;80D844;
    LDA.B #$04                           ;80D846;
    STA.B $E5                            ;80D848;
    LDA.W $0BCF                          ;80D84A;
    BMI CODE_80D852                      ;80D84D;
    JMP.W CODE_80D902                    ;80D84F;

CODE_80D852:
    AND.B #$7F                           ;80D852;
    CMP.W $1F9A                          ;80D854;
    BCC CODE_80D85F                      ;80D857;
    LDA.W $1F9A                          ;80D859;
    STA.W $0BCF                          ;80D85C;

CODE_80D85F:
    STA.B $00                            ;80D85F;
    LDA.B #$40                           ;80D861;
    STA.B $01                            ;80D863;
    LDX.W #$0004                         ;80D865;

CODE_80D868:
    LDA.B $00                            ;80D868;
    BEQ CODE_80D8A0                      ;80D86A;
    SEC                                  ;80D86C;
    SBC.B #$08                           ;80D86D;
    STA.B $00                            ;80D86F;
    BMI CODE_80D888                      ;80D871;
    LDA.B $01                            ;80D873;
    STA.W $0701,X                        ;80D875;
    SEC                                  ;80D878;
    SBC.B #$10                           ;80D879;
    STA.B $01                            ;80D87B;
    LDA.B #$80                           ;80D87D;
    STA.W $0702,X                        ;80D87F;
    INX                                  ;80D882;
    INX                                  ;80D883;
    INX                                  ;80D884;
    INX                                  ;80D885;
    BRA CODE_80D868                      ;80D886;

CODE_80D888:
    ASL.B $00                            ;80D888;
    LDA.B $01                            ;80D88A;
    SEC                                  ;80D88C;
    SBC.B $00                            ;80D88D;
    STA.W $0701,X                        ;80D88F;
    SEC                                  ;80D892;
    SBC.B #$10                           ;80D893;
    STA.B $01                            ;80D895;
    LDA.B #$80                           ;80D897;
    STA.W $0702,X                        ;80D899;
    INX                                  ;80D89C;
    INX                                  ;80D89D;
    INX                                  ;80D89E;
    INX                                  ;80D89F;

CODE_80D8A0:
    LDA.B #$80                           ;80D8A0;
    TRB.W $0BCF                          ;80D8A2;
    LDA.W $1F9A                          ;80D8A5;
    SEC                                  ;80D8A8;
    SBC.W $0BCF                          ;80D8A9;
    STA.B $00                            ;80D8AC;

CODE_80D8AE:
    LDA.B $00                            ;80D8AE;
    SEC                                  ;80D8B0;
    SBC.B #$08                           ;80D8B1;
    STA.B $00                            ;80D8B3;
    BMI CODE_80D8CC                      ;80D8B5;
    LDA.B $01                            ;80D8B7;
    STA.W $0701,X                        ;80D8B9;
    SEC                                  ;80D8BC;
    SBC.B #$10                           ;80D8BD;
    STA.B $01                            ;80D8BF;
    LDA.B #$82                           ;80D8C1;
    STA.W $0702,X                        ;80D8C3;
    INX                                  ;80D8C6;
    INX                                  ;80D8C7;
    INX                                  ;80D8C8;
    INX                                  ;80D8C9;
    BRA CODE_80D8AE                      ;80D8CA;

CODE_80D8CC:
    ASL.B $00                            ;80D8CC;
    LDA.B $01                            ;80D8CE;
    SEC                                  ;80D8D0;
    SBC.B $00                            ;80D8D1;
    STA.W $0701,X                        ;80D8D3;
    SEC                                  ;80D8D6;
    SBC.B #$10                           ;80D8D7;
    STA.B $01                            ;80D8D9;
    LDA.B #$82                           ;80D8DB;
    STA.W $0702,X                        ;80D8DD;
    INX                                  ;80D8E0;
    INX                                  ;80D8E1;
    INX                                  ;80D8E2;
    INX                                  ;80D8E3;
    LDA.B $01                            ;80D8E4;
    STA.W $0701,X                        ;80D8E6;
    LDA.B #$84                           ;80D8E9;
    STA.W $0702,X                        ;80D8EB;
    RTS                                  ;80D8EE;

CODE_80D8EF:
    LDX.W #$0018                         ;80D8EF;

CODE_80D8F2:
    LDA.B #$E0                           ;80D8F2;
    STA.W $0701,X                        ;80D8F4;
    DEX                                  ;80D8F7;
    DEX                                  ;80D8F8;
    DEX                                  ;80D8F9;
    DEX                                  ;80D8FA;
    BPL CODE_80D8F2                      ;80D8FB;
    LDA.B #$06                           ;80D8FD;
    STA.W $1F11                          ;80D8FF;

CODE_80D902:
    LDA.B #$10                           ;80D902;
    STA.B $E4                            ;80D904;
    LDA.B #$04                           ;80D906;
    STA.B $E5                            ;80D908;
    RTS                                  ;80D90A;

CODE_80D90B:
    LDA.B #$00                           ;80D90B;
    XBA                                  ;80D90D;
    LDA.W $1F12                          ;80D90E;
    TAX                                  ;80D911;
    JMP.W (PTR16_80D915,X)               ;80D912;

PTR16_80D915:
    dw CODE_80D91D                       ;80D915;
    dw CODE_80D960                       ;80D917;
    dw CODE_80DA10                       ;80D919;
    dw CODE_80DA0F                       ;80D91B;

CODE_80D91D:
    LDA.B #$02                           ;80D91D;
    STA.W $1F12                          ;80D91F;
    LDA.W $0BDB                          ;80D922;
    BNE CODE_80D92D                      ;80D925;
    LDA.B #$06                           ;80D927;
    STA.W $1F12                          ;80D929;
    RTS                                  ;80D92C;

CODE_80D92D:
    TAY                                  ;80D92D;
    LDA.W $1F86,Y                        ;80D92E;
    ORA.B #$80                           ;80D931;
    STA.W $1F86,Y                        ;80D933;
    LDX.W #$0000                         ;80D936;

CODE_80D939:
    LDA.B #$18                           ;80D939;
    STA.W $071C,X                        ;80D93B;
    LDA.B #$E0                           ;80D93E;
    STA.W $071D,X                        ;80D940;
    LDA.B #$80                           ;80D943;
    STA.W $071E,X                        ;80D945;
    LDA.B #$36                           ;80D948;
    STA.W $071F,X                        ;80D94A;
    INX                                  ;80D94D;
    INX                                  ;80D94E;
    INX                                  ;80D94F;
    INX                                  ;80D950;
    CPX.W #$0024                         ;80D951;
    BNE CODE_80D939                      ;80D954;
    LDA.B #$50                           ;80D956;
    STA.W $071D                          ;80D958;
    LDA.B #$20                           ;80D95B;
    STA.W $071E                          ;80D95D;

CODE_80D960:
    LDA.W $0BDB                          ;80D960;
    TAY                                  ;80D963;
    LDA.W $1F86,Y                        ;80D964;
    BMI CODE_80D96C                      ;80D967;
    JMP.W CODE_80DA0F                    ;80D969;

CODE_80D96C:
    AND.B #$3F                           ;80D96C;
    CMP.B #$1C                           ;80D96E;
    BCC CODE_80D979                      ;80D970;
    LDA.B #$5C                           ;80D972;
    STA.W $1F86,Y                        ;80D974;
    LDA.B #$1C                           ;80D977;

CODE_80D979:
    STA.B $00                            ;80D979;
    LDA.B #$40                           ;80D97B;
    STA.B $01                            ;80D97D;
    LDX.W #$0004                         ;80D97F;

CODE_80D982:
    LDA.B $00                            ;80D982;
    BEQ CODE_80D9BA                      ;80D984;
    SEC                                  ;80D986;
    SBC.B #$08                           ;80D987;
    STA.B $00                            ;80D989;
    BMI CODE_80D9A2                      ;80D98B;
    LDA.B $01                            ;80D98D;
    STA.W $071D,X                        ;80D98F;
    SEC                                  ;80D992;
    SBC.B #$10                           ;80D993;
    STA.B $01                            ;80D995;
    LDA.B #$80                           ;80D997;
    STA.W $071E,X                        ;80D999;
    INX                                  ;80D99C;
    INX                                  ;80D99D;
    INX                                  ;80D99E;
    INX                                  ;80D99F;
    BRA CODE_80D982                      ;80D9A0;

CODE_80D9A2:
    ASL.B $00                            ;80D9A2;
    LDA.B $01                            ;80D9A4;
    SEC                                  ;80D9A6;
    SBC.B $00                            ;80D9A7;
    STA.W $071D,X                        ;80D9A9;
    SEC                                  ;80D9AC;
    SBC.B #$10                           ;80D9AD;
    STA.B $01                            ;80D9AF;
    LDA.B #$80                           ;80D9B1;
    STA.W $071E,X                        ;80D9B3;
    INX                                  ;80D9B6;
    INX                                  ;80D9B7;
    INX                                  ;80D9B8;
    INX                                  ;80D9B9;

CODE_80D9BA:
    LDA.W $1F86,Y                        ;80D9BA;
    AND.B #$7F                           ;80D9BD;
    ORA.B #$40                           ;80D9BF;
    STA.W $1F86,Y                        ;80D9C1;
    AND.B #$3F                           ;80D9C4;
    STA.B $02                            ;80D9C6;
    LDA.B #$1C                           ;80D9C8;
    SEC                                  ;80D9CA;
    SBC.B $02                            ;80D9CB;
    STA.B $00                            ;80D9CD;

CODE_80D9CF:
    LDA.B $00                            ;80D9CF;
    SEC                                  ;80D9D1;
    SBC.B #$08                           ;80D9D2;
    STA.B $00                            ;80D9D4;
    BMI CODE_80D9ED                      ;80D9D6;
    LDA.B $01                            ;80D9D8;
    STA.W $071D,X                        ;80D9DA;
    SEC                                  ;80D9DD;
    SBC.B #$10                           ;80D9DE;
    STA.B $01                            ;80D9E0;
    LDA.B #$82                           ;80D9E2;
    STA.W $071E,X                        ;80D9E4;
    INX                                  ;80D9E7;
    INX                                  ;80D9E8;
    INX                                  ;80D9E9;
    INX                                  ;80D9EA;
    BRA CODE_80D9CF                      ;80D9EB;

CODE_80D9ED:
    ASL.B $00                            ;80D9ED;
    LDA.B $01                            ;80D9EF;
    SEC                                  ;80D9F1;
    SBC.B $00                            ;80D9F2;
    STA.W $071D,X                        ;80D9F4;
    SEC                                  ;80D9F7;
    SBC.B #$10                           ;80D9F8;
    STA.B $01                            ;80D9FA;
    LDA.B #$82                           ;80D9FC;
    STA.W $071E,X                        ;80D9FE;
    INX                                  ;80DA01;
    INX                                  ;80DA02;
    INX                                  ;80DA03;
    INX                                  ;80DA04;
    LDA.B $01                            ;80DA05;
    STA.W $071D,X                        ;80DA07;
    LDA.B #$84                           ;80DA0A;
    STA.W $071E,X                        ;80DA0C;

CODE_80DA0F:
    RTS                                  ;80DA0F;

CODE_80DA10:
    LDX.W #$001C                         ;80DA10;

CODE_80DA13:
    LDA.B #$E0                           ;80DA13;
    STA.W $071D,X                        ;80DA15;
    DEX                                  ;80DA18;
    DEX                                  ;80DA19;
    DEX                                  ;80DA1A;
    DEX                                  ;80DA1B;
    BPL CODE_80DA13                      ;80DA1C;
    LDA.B #$06                           ;80DA1E;
    STA.W $1F12                          ;80DA20;

CODE_80DA23:
    RTS                                  ;80DA23;

CODE_80DA24:
    LDX.W $1F0E                          ;80DA24;
    BEQ CODE_80DA23                      ;80DA27;
    LDA.B #$18                           ;80DA29;
    STA.B $E4                            ;80DA2B;
    LDA.B #$06                           ;80DA2D;
    STA.B $E5                            ;80DA2F;
    LDA.B #$00                           ;80DA31;
    XBA                                  ;80DA33;
    LDA.W $1F10                          ;80DA34;
    TAX                                  ;80DA37;
    JMP.W (PTR16_80DA3B,X)               ;80DA38;

PTR16_80DA3B:
    dw CODE_80DA45                       ;80DA3B;
    dw CODE_80DA8A                       ;80DA3D;
    dw CODE_80DB29                       ;80DA3F;
    dw CODE_80DB41                       ;80DA41;
    dw CODE_80DA23                       ;80DA43;

CODE_80DA45:
    LDA.B #$02                           ;80DA45;
    STA.W $1F10                          ;80DA47;
    LDA.B #$AA                           ;80DA4A;
    STA.W $0903                          ;80DA4C;
    STA.W $0904                          ;80DA4F;
    STA.W $0905                          ;80DA52;
    LDX.W #$0000                         ;80DA55;

CODE_80DA58:
    LDA.B #$E8                           ;80DA58;
    STA.W $0740,X                        ;80DA5A;
    LDA.B #$E0                           ;80DA5D;
    STA.W $0741,X                        ;80DA5F;
    LDA.B #$80                           ;80DA62;
    STA.W $0742,X                        ;80DA64;
    LDA.B #$34                           ;80DA67;
    STA.W $0743,X                        ;80DA69;
    INX                                  ;80DA6C;
    INX                                  ;80DA6D;
    INX                                  ;80DA6E;
    INX                                  ;80DA6F;
    CPX.W #$0020                         ;80DA70;
    BNE CODE_80DA58                      ;80DA73;
    LDA.B #$50                           ;80DA75;
    STA.W $0741                          ;80DA77;
    LDA.B #$AA                           ;80DA7A;
    STA.W $0742                          ;80DA7C;
    LDY.W $1F0E                          ;80DA7F;
    LDA.W $0027,Y                        ;80DA82;
    ORA.B #$80                           ;80DA85;
    STA.W $0027,Y                        ;80DA87;

CODE_80DA8A:
    LDY.W $1F0E                          ;80DA8A;
    LDA.W $0027,Y                        ;80DA8D;
    BMI CODE_80DA95                      ;80DA90;
    JMP.W CODE_80DB28                    ;80DA92;

CODE_80DA95:
    AND.B #$7F                           ;80DA95;
    STA.B $00                            ;80DA97;
    LDA.B #$40                           ;80DA99;
    STA.B $01                            ;80DA9B;
    LDX.W #$0004                         ;80DA9D;

CODE_80DAA0:
    LDA.B $00                            ;80DAA0;
    BEQ CODE_80DAD8                      ;80DAA2;
    SEC                                  ;80DAA4;
    SBC.B #$08                           ;80DAA5;
    STA.B $00                            ;80DAA7;
    BMI CODE_80DAC0                      ;80DAA9;
    LDA.B $01                            ;80DAAB;
    STA.W $0741,X                        ;80DAAD;
    SEC                                  ;80DAB0;
    SBC.B #$10                           ;80DAB1;
    STA.B $01                            ;80DAB3;
    LDA.B #$80                           ;80DAB5;
    STA.W $0742,X                        ;80DAB7;
    INX                                  ;80DABA;
    INX                                  ;80DABB;
    INX                                  ;80DABC;
    INX                                  ;80DABD;
    BRA CODE_80DAA0                      ;80DABE;

CODE_80DAC0:
    ASL.B $00                            ;80DAC0;
    LDA.B $01                            ;80DAC2;
    SEC                                  ;80DAC4;
    SBC.B $00                            ;80DAC5;
    STA.W $0741,X                        ;80DAC7;
    SEC                                  ;80DACA;
    SBC.B #$10                           ;80DACB;
    STA.B $01                            ;80DACD;
    LDA.B #$80                           ;80DACF;
    STA.W $0742,X                        ;80DAD1;
    INX                                  ;80DAD4;
    INX                                  ;80DAD5;
    INX                                  ;80DAD6;
    INX                                  ;80DAD7;

CODE_80DAD8:
    LDA.W $0027,Y                        ;80DAD8;
    AND.B #$7F                           ;80DADB;
    STA.W $0027,Y                        ;80DADD;
    LDA.B #$20                           ;80DAE0;
    SEC                                  ;80DAE2;
    SBC.W $0027,Y                        ;80DAE3;
    STA.B $00                            ;80DAE6;

CODE_80DAE8:
    LDA.B $00                            ;80DAE8;
    SEC                                  ;80DAEA;
    SBC.B #$08                           ;80DAEB;
    STA.B $00                            ;80DAED;
    BMI CODE_80DB06                      ;80DAEF;
    LDA.B $01                            ;80DAF1;
    STA.W $0741,X                        ;80DAF3;
    SEC                                  ;80DAF6;
    SBC.B #$10                           ;80DAF7;
    STA.B $01                            ;80DAF9;
    LDA.B #$82                           ;80DAFB;
    STA.W $0742,X                        ;80DAFD;
    INX                                  ;80DB00;
    INX                                  ;80DB01;
    INX                                  ;80DB02;
    INX                                  ;80DB03;
    BRA CODE_80DAE8                      ;80DB04;

CODE_80DB06:
    ASL.B $00                            ;80DB06;
    LDA.B $01                            ;80DB08;
    SEC                                  ;80DB0A;
    SBC.B $00                            ;80DB0B;
    STA.W $0741,X                        ;80DB0D;
    SEC                                  ;80DB10;
    SBC.B #$10                           ;80DB11;
    STA.B $01                            ;80DB13;
    LDA.B #$82                           ;80DB15;
    STA.W $0742,X                        ;80DB17;
    INX                                  ;80DB1A;
    INX                                  ;80DB1B;
    INX                                  ;80DB1C;
    INX                                  ;80DB1D;
    LDA.B $01                            ;80DB1E;
    STA.W $0741,X                        ;80DB20;
    LDA.B #$84                           ;80DB23;
    STA.W $0742,X                        ;80DB25;

CODE_80DB28:
    RTS                                  ;80DB28;

CODE_80DB29:
    LDX.W #$0018                         ;80DB29;

CODE_80DB2C:
    LDA.B #$E0                           ;80DB2C;
    STA.W $0741,X                        ;80DB2E;
    DEX                                  ;80DB31;
    DEX                                  ;80DB32;
    DEX                                  ;80DB33;
    DEX                                  ;80DB34;
    BPL CODE_80DB2C                      ;80DB35;
    STZ.W $1F10                          ;80DB37;
    STZ.W $1F0E                          ;80DB3A;
    STZ.W $1F0F                          ;80DB3D;
    RTS                                  ;80DB40;

CODE_80DB41:
    LDX.W #$0018                         ;80DB41;

CODE_80DB44:
    LDA.B #$E0                           ;80DB44;
    STA.W $0741,X                        ;80DB46;
    DEX                                  ;80DB49;
    DEX                                  ;80DB4A;
    DEX                                  ;80DB4B;
    DEX                                  ;80DB4C;
    BPL CODE_80DB44                      ;80DB4D;
    LDA.B #$08                           ;80DB4F;
    STA.W $1F10                          ;80DB51;
    RTS                                  ;80DB54;

CODE_80DB55:
    PHB                                  ;80DB55;
    PHP                                  ;80DB56;
    SEP #$30                             ;80DB57;
    LDA.B #$00                           ;80DB59;
    PHA                                  ;80DB5B;
    PLB                                  ;80DB5C;
    REP #$30                             ;80DB5D;
    LDX.W #$0BA8                         ;80DB5F;
    LDY.W #$09D1                         ;80DB62;

CODE_80DB65:
    STZ.W $0000,X                        ;80DB65;
    INX                                  ;80DB68;
    INX                                  ;80DB69;
    DEY                                  ;80DB6A;
    BNE CODE_80DB65                      ;80DB6B;
    PLP                                  ;80DB6D;
    PLB                                  ;80DB6E;
    RTS                                  ;80DB6F;

CODE_80DB70:
    PHB                                  ;80DB70;
    PHD                                  ;80DB71;
    LDA.B #$7E                           ;80DB72;
    PHA                                  ;80DB74;
    PLB                                  ;80DB75;
    REP #$30                             ;80DB76;
    LDX.W #$03FE                         ;80DB78;

CODE_80DB7B:
    STZ.W $FA02,X                        ;80DB7B;
    DEX                                  ;80DB7E;
    DEX                                  ;80DB7F;
    BPL CODE_80DB7B                      ;80DB80;
    SEP #$30                             ;80DB82;
    PLD                                  ;80DB84;
    PLB                                  ;80DB85;
    RTS                                  ;80DB86;

CODE_80DB87:
    PHB                                  ;80DB87;
    PHD                                  ;80DB88;
    PHP                                  ;80DB89;
    REP #$20                             ;80DB8A;
    LDA.W #$0000                         ;80DB8C;
    TCD                                  ;80DB8F;
    SEP #$30                             ;80DB90;
    LDA.B #$85                           ;80DB92;
    PHA                                  ;80DB94;
    PLB                                  ;80DB95;
    LDA.W $1F7A                          ;80DB96;
    ASL A                                ;80DB99;
    TAX                                  ;80DB9A;
    REP #$20                             ;80DB9B;
    LDA.W DATA8_8582C2,X                 ;80DB9D;
    STA.B $10                            ;80DBA0;
    LDA.W #$F800                         ;80DBA2;
    STA.B $14                            ;80DBA5;
    LDA.W #$FA02                         ;80DBA7;
    STA.B $18                            ;80DBAA;
    STZ.B $00                            ;80DBAC;
    DEC.B $00                            ;80DBAE;
    REP #$30                             ;80DBB0;

CODE_80DBB2:
    LDA.B ($10)                          ;80DBB2;
    AND.W #$00FF                         ;80DBB4;
    STA.B $02                            ;80DBB7;
    INC.B $10                            ;80DBB9;
    CMP.B $00                            ;80DBBB;
    BEQ CODE_80DC2D                      ;80DBBD;
    SEP #$20                             ;80DBBF;
    LDA.B #$7E                           ;80DBC1;
    PHA                                  ;80DBC3;
    PLB                                  ;80DBC4;
    REP #$20                             ;80DBC5;

CODE_80DBC7:
    LDA.B $18                            ;80DBC7;
    STA.B ($14)                          ;80DBC9;
    INC.B $14                            ;80DBCB;
    INC.B $14                            ;80DBCD;
    INC.B $00                            ;80DBCF;
    LDA.B $00                            ;80DBD1;
    CMP.B $02                            ;80DBD3;
    BNE CODE_80DBC7                      ;80DBD5;
    SEP #$20                             ;80DBD7;
    LDA.B #$85                           ;80DBD9;
    PHA                                  ;80DBDB;
    PLB                                  ;80DBDC;
    REP #$20                             ;80DBDD;

CODE_80DBDF:
    LDX.B $10                            ;80DBDF;
    LDA.B ($10)                          ;80DBE1;
    AND.W #$00FF                         ;80DBE3;
    STA.B $04                            ;80DBE6;
    INC.B $10                            ;80DBE8;
    LDA.B ($10)                          ;80DBEA;
    STA.B $06                            ;80DBEC;
    INC.B $10                            ;80DBEE;
    INC.B $10                            ;80DBF0;
    PHB                                  ;80DBF2;
    SEP #$20                             ;80DBF3;
    LDA.B #$7E                           ;80DBF5;
    PHA                                  ;80DBF7;
    PLB                                  ;80DBF8;
    REP #$20                             ;80DBF9;
    LDA.B ($18)                          ;80DBFB;
    AND.W #$00FF                         ;80DBFD;
    CMP.W #$0087                         ;80DC00;
    BEQ CODE_80DC0A                      ;80DC03;
    LDA.W #$0000                         ;80DC05;
    STA.B ($18)                          ;80DC08;

CODE_80DC0A:
    INC.B $18                            ;80DC0A;
    LDA.B $06                            ;80DC0C;
    STA.B ($18)                          ;80DC0E;
    INC.B $18                            ;80DC10;
    INC.B $18                            ;80DC12;
    TXA                                  ;80DC14;
    STA.B ($18)                          ;80DC15;
    INC.B $18                            ;80DC17;
    INC.B $18                            ;80DC19;
    PLB                                  ;80DC1B;
    INC.B $10                            ;80DC1C;
    INC.B $10                            ;80DC1E;
    INC.B $10                            ;80DC20;
    LDA.B ($10)                          ;80DC22;
    INC.B $10                            ;80DC24;
    AND.W #$0080                         ;80DC26;
    BEQ CODE_80DBDF                      ;80DC29;
    BRA CODE_80DBB2                      ;80DC2B;

CODE_80DC2D:
    SEP #$20                             ;80DC2D;
    LDA.B #$7E                           ;80DC2F;
    PHA                                  ;80DC31;
    PLB                                  ;80DC32;
    REP #$20                             ;80DC33;
    LDA.B $00                            ;80DC35;

CODE_80DC37:
    LDA.B $18                            ;80DC37;
    STA.B ($14)                          ;80DC39;
    INC.B $14                            ;80DC3B;
    INC.B $14                            ;80DC3D;
    INC.B $00                            ;80DC3F;
    LDA.B $00                            ;80DC41;
    CMP.W #$0100                         ;80DC43;
    BNE CODE_80DC37                      ;80DC46;
    PLP                                  ;80DC48;
    PLD                                  ;80DC49;
    PLB                                  ;80DC4A;
    RTS                                  ;80DC4B;

CODE_80DC4C:
    PHB                                  ;80DC4C;
    PHD                                  ;80DC4D;
    PHP                                  ;80DC4E;
    SEP #$20                             ;80DC4F;
    LDA.W $1F20                          ;80DC51;
    ASL A                                ;80DC54;
    ASL A                                ;80DC55;
    ASL A                                ;80DC56;
    ASL A                                ;80DC57;
    STA.W $1FFE                          ;80DC58;
    REP #$30                             ;80DC5B;
    LDA.W #$0000                         ;80DC5D;
    TCD                                  ;80DC60;
    LDA.W $1E6A                          ;80DC61;
    CMP.W $1E4D                          ;80DC64;
    BMI CODE_80DC7F                      ;80DC67;
    AND.W #$FFE0                         ;80DC69;
    STA.B $00                            ;80DC6C;
    LDA.W $1E4D                          ;80DC6E;
    AND.W #$FFE0                         ;80DC71;
    CMP.B $00                            ;80DC74;
    BEQ CODE_80DCA8                      ;80DC76;
    LDA.W $1E4D                          ;80DC78;
    STA.B $00                            ;80DC7B;
    BRA CODE_80DC97                      ;80DC7D;

CODE_80DC7F:
    AND.W #$FFE0                         ;80DC7F;
    STA.B $00                            ;80DC82;
    LDA.W $1E4D                          ;80DC84;
    AND.W #$FFE0                         ;80DC87;
    CMP.B $00                            ;80DC8A;
    BEQ CODE_80DCA8                      ;80DC8C;
    LDA.W $1E4D                          ;80DC8E;
    CLC                                  ;80DC91;
    ADC.W #$0100                         ;80DC92;
    STA.B $00                            ;80DC95;

CODE_80DC97:
    LDA.W $1E50                          ;80DC97;
    SEC                                  ;80DC9A;
    SBC.W #$0020                         ;80DC9B;
    STA.B $02                            ;80DC9E;
    LDA.W #$0120                         ;80DCA0;
    STA.B $04                            ;80DCA3;
    JSR.W CODE_80DCF1                    ;80DCA5;

CODE_80DCA8:
    LDA.W $1E50                          ;80DCA8;
    CMP.W $1E6C                          ;80DCAB;
    BEQ CODE_80DCED                      ;80DCAE;
    BPL CODE_80DCC2                      ;80DCB0;
    LDA.W $1E50                          ;80DCB2;
    SEC                                  ;80DCB5;
    SBC.W #$0020                         ;80DCB6;
    STA.B $02                            ;80DCB9;
    LDA.W #$0020                         ;80DCBB;
    STA.B $04                            ;80DCBE;
    BRA CODE_80DCD0                      ;80DCC0;

CODE_80DCC2:
    LDA.W $1E50                          ;80DCC2;
    CLC                                  ;80DCC5;
    ADC.W #$00F0                         ;80DCC6;
    STA.B $02                            ;80DCC9;
    LDA.W #$0020                         ;80DCCB;
    STA.B $04                            ;80DCCE;

CODE_80DCD0:
    LDA.W $1E4D                          ;80DCD0;
    SEC                                  ;80DCD3;
    SBC.W #$0020                         ;80DCD4;
    STA.B $00                            ;80DCD7;
    LDA.W #$000A                         ;80DCD9;
    STA.B $06                            ;80DCDC;

CODE_80DCDE:
    JSR.W CODE_80DCF1                    ;80DCDE;
    LDA.B $00                            ;80DCE1;
    CLC                                  ;80DCE3;
    ADC.W #$0020                         ;80DCE4;
    STA.B $00                            ;80DCE7;
    DEC.B $06                            ;80DCE9;
    BNE CODE_80DCDE                      ;80DCEB;

CODE_80DCED:
    PLP                                  ;80DCED;
    PLD                                  ;80DCEE;
    PLB                                  ;80DCEF;
    RTS                                  ;80DCF0;

CODE_80DCF1:
    PHB                                  ;80DCF1;
    SEP #$20                             ;80DCF2;
    LDA.B #$7E                           ;80DCF4;
    PHA                                  ;80DCF6;
    PLB                                  ;80DCF7;
    REP #$20                             ;80DCF8;
    LDA.B $00                            ;80DCFA;
    AND.W #$FFE0                         ;80DCFC;
    BIT.W #$E000                         ;80DCFF;
    BEQ CODE_80DD07                      ;80DD02;
    JMP.W CODE_80DDC8                    ;80DD04;

CODE_80DD07:
    LSR A                                ;80DD07;
    LSR A                                ;80DD08;
    LSR A                                ;80DD09;
    LSR A                                ;80DD0A;
    CLC                                  ;80DD0B;
    ADC.W #$F800                         ;80DD0C;
    STA.B $10                            ;80DD0F;
    LDA.B ($10)                          ;80DD11;
    STA.B $14                            ;80DD13;
    INC.B $10                            ;80DD15;
    INC.B $10                            ;80DD17;
    LDA.B ($10)                          ;80DD19;
    STA.B $10                            ;80DD1B;
    LDY.W #$0001                         ;80DD1D;
    LDA.B $14                            ;80DD20;

CODE_80DD22:
    CMP.B $10                            ;80DD22;
    BNE CODE_80DD29                      ;80DD24;
    JMP.W CODE_80DDC8                    ;80DD26;

CODE_80DD29:
    LDA.B ($14),Y                        ;80DD29;
    SEC                                  ;80DD2B;
    SBC.B $02                            ;80DD2C;
    CMP.B $04                            ;80DD2E;
    BCC CODE_80DD3C                      ;80DD30;
    LDA.B $14                            ;80DD32;
    CLC                                  ;80DD34;
    ADC.W #$0005                         ;80DD35;
    STA.B $14                            ;80DD38;
    BRA CODE_80DD22                      ;80DD3A;

CODE_80DD3C:
    LDA.B ($14)                          ;80DD3C;
    AND.W #$00FF                         ;80DD3E;
    BNE CODE_80DDAD                      ;80DD41;
    INY                                  ;80DD43;
    INY                                  ;80DD44;
    LDA.B ($14),Y                        ;80DD45;
    STA.B $18                            ;80DD47;
    PHB                                  ;80DD49;
    SEP #$20                             ;80DD4A;
    LDA.B #$85                           ;80DD4C;
    PHA                                  ;80DD4E;
    PLB                                  ;80DD4F;
    SEP #$20                             ;80DD50;
    LDA.B ($18)                          ;80DD52;
    AND.B #$F8                           ;80DD54;
    CMP.W $1FFE                          ;80DD56;
    BEQ CODE_80DD5D                      ;80DD59;
    BCS CODE_80DDAA                      ;80DD5B;

CODE_80DD5D:
    REP #$20                             ;80DD5D;
    LDA.B ($18)                          ;80DD5F;
    AND.W #$000F                         ;80DD61;
    ASL A                                ;80DD64;
    TAX                                  ;80DD65;
    JSL.L CODE_8282AC                    ;80DD66;
    BNE CODE_80DDAA                      ;80DD6A;
    SEP #$20                             ;80DD6C;
    PHB                                  ;80DD6E;
    LDA.B #$7E                           ;80DD6F;
    PHA                                  ;80DD71;
    PLB                                  ;80DD72;
    LDA.B #$01                           ;80DD73;
    STA.B ($14)                          ;80DD75;
    PLB                                  ;80DD77;
    LDY.W #$0001                         ;80DD78;
    LDA.B ($18),Y                        ;80DD7B;
    INY                                  ;80DD7D;
    STA.W $0008,X                        ;80DD7E;
    LDA.B ($18),Y                        ;80DD81;
    INY                                  ;80DD83;
    STA.W $0009,X                        ;80DD84;
    LDA.B ($18),Y                        ;80DD87;
    INY                                  ;80DD89;
    STA.W $000A,X                        ;80DD8A;
    LDA.B ($18),Y                        ;80DD8D;
    INY                                  ;80DD8F;
    STA.W $000B,X                        ;80DD90;
    LDA.B ($18),Y                        ;80DD93;
    INY                                  ;80DD95;
    STA.W $0005,X                        ;80DD96;
    LDA.B ($18),Y                        ;80DD99;
    AND.B #$1F                           ;80DD9B;
    STA.W $0006,X                        ;80DD9D;
    INC.W $0000,X                        ;80DDA0;
    REP #$20                             ;80DDA3;
    LDA.B $14                            ;80DDA5;
    STA.W $000C,X                        ;80DDA7;

CODE_80DDAA:
    REP #$20                             ;80DDAA;
    PLB                                  ;80DDAC;

CODE_80DDAD:
    LDA.B $14                            ;80DDAD;
    CLC                                  ;80DDAF;
    ADC.W #$0005                         ;80DDB0;
    STA.B $14                            ;80DDB3;
    CMP.B $10                            ;80DDB5;
    BEQ CODE_80DDC8                      ;80DDB7;
    LDY.W #$0001                         ;80DDB9;
    LDA.B ($14),Y                        ;80DDBC;
    SEC                                  ;80DDBE;
    SBC.B $02                            ;80DDBF;
    CMP.B $04                            ;80DDC1;
    BCS CODE_80DDC8                      ;80DDC3;
    JMP.W CODE_80DD3C                    ;80DDC5;

CODE_80DDC8:
    PLB                                  ;80DDC8;
    RTS                                  ;80DDC9;
    REP #$20                             ;80DDCA;
    SEC                                  ;80DDCC;
    LDA.B $05                            ;80DDCD;
    SBC.W $1E4D                          ;80DDCF;
    CLC                                  ;80DDD2;
    ADC.W #$0020                         ;80DDD3;
    CMP.W #$0140                         ;80DDD6;
    BCS CODE_80DDE7                      ;80DDD9;
    SEC                                  ;80DDDB;
    LDA.B $08                            ;80DDDC;
    SBC.W $1E50                          ;80DDDE;
    CLC                                  ;80DDE1;
    CMP.W #$00F2                         ;80DDE2;
    BCC CODE_80DDEC                      ;80DDE5;

CODE_80DDE7:
    SEP #$20                             ;80DDE7;
    LDA.B #$00                           ;80DDE9;
    RTL                                  ;80DDEB;

CODE_80DDEC:
    SEP #$20                             ;80DDEC;
    LDA.B #$01                           ;80DDEE;
    RTL                                  ;80DDF0;

CODE_80DDF1:
    PHP                                  ;80DDF1;
    PHD                                  ;80DDF2;
    REP #$20                             ;80DDF3;
    LDA.W #$1E48                         ;80DDF5;
    TCD                                  ;80DDF8;
    LDX.B $01                            ;80DDF9;
    JSR.W (PTR16_80DE29,X)               ;80DDFB;
    LDA.B $30                            ;80DDFE;
    BIT.W #$0001                         ;80DE00;
    BEQ CODE_80DE08                      ;80DE03;
    JSR.W CODE_80E169                    ;80DE05;

CODE_80DE08:
    LDA.B $30                            ;80DE08;
    BIT.W #$0002                         ;80DE0A;
    BEQ CODE_80DE12                      ;80DE0D;
    JSR.W CODE_80E19A                    ;80DE0F;

CODE_80DE12:
    JSR.W CODE_80E1CB                    ;80DE12;
    LDX.B $00                            ;80DE15;
    BEQ CODE_80DE1C                      ;80DE17;
    JSR.W CODE_80B5E6                    ;80DE19;

CODE_80DE1C:
    LDA.B $05                            ;80DE1C;
    STA.W $00B4                          ;80DE1E;
    LDA.B $08                            ;80DE21;
    STA.W $00B6                          ;80DE23;
    PLD                                  ;80DE26;
    PLP                                  ;80DE27;
    RTS                                  ;80DE28;

PTR16_80DE29:
    dw CODE_80DE2F                       ;80DE29;
    dw CODE_80DE56                       ;80DE2B;
    dw CODE_80DE55                       ;80DE2D;

CODE_80DE2F:
    LDA.B $05                            ;80DE2F;
    STA.B $22                            ;80DE31;
    LDA.B $08                            ;80DE33;
    STA.B $24                            ;80DE35;
    LDA.B $10                            ;80DE37;
    STA.B $18                            ;80DE39;
    LDA.B $0E                            ;80DE3B;
    STA.B $16                            ;80DE3D;
    LDA.B $14                            ;80DE3F;
    STA.B $26                            ;80DE41;
    LDA.B $12                            ;80DE43;
    STA.B $20                            ;80DE45;
    LDA.W #$0002                         ;80DE47;
    STA.B $0A                            ;80DE4A;
    LDA.W #$0008                         ;80DE4C;
    STA.B $0C                            ;80DE4F;
    LDX.B #$02                           ;80DE51;
    STX.B $01                            ;80DE53;

CODE_80DE55:
    RTS                                  ;80DE55;

CODE_80DE56:
    LDA.B $05                            ;80DE56;
    STA.B $22                            ;80DE58;
    LDA.B $08                            ;80DE5A;
    STA.B $24                            ;80DE5C;
    LDA.B $0C                            ;80DE5E;
    EOR.W #$FFFF                         ;80DE60;
    INC A                                ;80DE63;
    STA.B $1A                            ;80DE64;
    JSR.W CODE_80DED2                    ;80DE66;
    JSR.W CODE_80DEB3                    ;80DE69;
    JSR.W CODE_80DE94                    ;80DE6C;
    JSR.W CODE_80DE75                    ;80DE6F;
    JMP.W CODE_80E0F4                    ;80DE72;

CODE_80DE75:
    LDA.B $08                            ;80DE75;
    SEC                                  ;80DE77;
    SBC.B $24                            ;80DE78;
    BMI CODE_80DE88                      ;80DE7A;
    CMP.B $0C                            ;80DE7C;
    BMI CODE_80DE82                      ;80DE7E;
    LDA.B $0C                            ;80DE80;

CODE_80DE82:
    CLC                                  ;80DE82;
    ADC.B $24                            ;80DE83;
    STA.B $08                            ;80DE85;
    RTS                                  ;80DE87;

CODE_80DE88:
    CMP.B $1A                            ;80DE88;
    BPL CODE_80DE8E                      ;80DE8A;
    LDA.B $1A                            ;80DE8C;

CODE_80DE8E:
    CLC                                  ;80DE8E;
    ADC.B $24                            ;80DE8F;
    STA.B $08                            ;80DE91;
    RTS                                  ;80DE93;

CODE_80DE94:
    LDA.B $05                            ;80DE94;
    SEC                                  ;80DE96;
    SBC.B $22                            ;80DE97;
    BMI CODE_80DEA7                      ;80DE99;
    CMP.B $0C                            ;80DE9B;
    BMI CODE_80DEA1                      ;80DE9D;
    LDA.B $0C                            ;80DE9F;

CODE_80DEA1:
    CLC                                  ;80DEA1;
    ADC.B $22                            ;80DEA2;
    STA.B $05                            ;80DEA4;
    RTS                                  ;80DEA6;

CODE_80DEA7:
    CMP.B $1A                            ;80DEA7;
    BPL CODE_80DEAD                      ;80DEA9;
    LDA.B $1A                            ;80DEAB;

CODE_80DEAD:
    CLC                                  ;80DEAD;
    ADC.B $22                            ;80DEAE;
    STA.B $05                            ;80DEB0;
    RTS                                  ;80DEB2;

CODE_80DEB3:
    LDA.W $0BAD                          ;80DEB3;
    SEC                                  ;80DEB6;
    SBC.B $05                            ;80DEB7;
    SEC                                  ;80DEB9;
    SBC.B $2C                            ;80DEBA;
    BMI CODE_80DECC                      ;80DEBC;
    LDA.W $0BAD                          ;80DEBE;
    SEC                                  ;80DEC1;
    SBC.B $05                            ;80DEC2;
    SEC                                  ;80DEC4;
    SBC.B $2E                            ;80DEC5;
    BEQ CODE_80DECB                      ;80DEC7;
    BPL CODE_80DECC                      ;80DEC9;

CODE_80DECB:
    RTS                                  ;80DECB;

CODE_80DECC:
    CLC                                  ;80DECC;
    ADC.B $05                            ;80DECD;
    STA.B $05                            ;80DECF;
    RTS                                  ;80DED1;

CODE_80DED2:
    LDA.W $0BB0                          ;80DED2;
    SEC                                  ;80DED5;
    SBC.B $08                            ;80DED6;
    SEC                                  ;80DED8;
    SBC.B $28                            ;80DED9;
    BMI CODE_80DEEB                      ;80DEDB;
    LDA.W $0BB0                          ;80DEDD;
    SEC                                  ;80DEE0;
    SBC.B $08                            ;80DEE1;
    SEC                                  ;80DEE3;
    SBC.B $2A                            ;80DEE4;
    BEQ CODE_80DEEA                      ;80DEE6;
    BPL CODE_80DEEB                      ;80DEE8;

CODE_80DEEA:
    RTS                                  ;80DEEA;

CODE_80DEEB:
    CLC                                  ;80DEEB;
    ADC.B $08                            ;80DEEC;
    STA.B $08                            ;80DEEE;
    RTS                                  ;80DEF0;

CODE_80DEF1:
    PHP                                  ;80DEF1;
    PHD                                  ;80DEF2;
    REP #$20                             ;80DEF3;
    LDA.W #$1E88                         ;80DEF5;
    TCD                                  ;80DEF8;
    LDX.B $12                            ;80DEF9;
    BNE CODE_80DF05                      ;80DEFB;
    LDA.B $05                            ;80DEFD;
    STA.B $22                            ;80DEFF;
    LDA.B $08                            ;80DF01;
    STA.B $24                            ;80DF03;

CODE_80DF05:
    LDX.B $01                            ;80DF05;
    JSR.W (PTR16_80DF1E,X)               ;80DF07;
    LDX.B $00                            ;80DF0A;
    BEQ CODE_80DF11                      ;80DF0C;
    JSR.W CODE_80B5F4                    ;80DF0E;

CODE_80DF11:
    LDA.B $05                            ;80DF11;
    STA.W $00B8                          ;80DF13;
    LDA.B $08                            ;80DF16;
    STA.W $00BA                          ;80DF18;
    PLD                                  ;80DF1B;
    PLP                                  ;80DF1C;
    RTS                                  ;80DF1D;

PTR16_80DF1E:
    dw CODE_80DF30                       ;80DF1E;
    dw CODE_80DF39                       ;80DF20;
    dw CODE_80DFCA                       ;80DF22;
    dw CODE_80DFF0                       ;80DF24;
    dw CODE_80E04C                       ;80DF26;
    dw CODE_80E08D                       ;80DF28;
    dw CODE_80DF38                       ;80DF2A;
    dw CODE_80DFDD                       ;80DF2C;
    dw CODE_80DFE2                       ;80DF2E;

CODE_80DF30:
    SEP #$20                             ;80DF30;
    LDA.B #$02                           ;80DF32;
    STA.B $01                            ;80DF34;
    REP #$20                             ;80DF36;

CODE_80DF38:
    RTS                                  ;80DF38;

CODE_80DF39:
    JSR.W CODE_80E0EA                    ;80DF39;
    JSR.W CODE_80E0E0                    ;80DF3C;

CODE_80DF3F:
    SEC                                  ;80DF3F;
    LDA.B $05                            ;80DF40;
    SBC.B $22                            ;80DF42;
    BMI CODE_80DF64                      ;80DF44;
    CMP.W #$0010                         ;80DF46;
    BMI CODE_80DF84                      ;80DF49;
    CMP.W #$0108                         ;80DF4B;
    BMI CODE_80DF5A                      ;80DF4E;
    SEC                                  ;80DF50;
    LDA.B $05                            ;80DF51;
    SBC.W #$0100                         ;80DF53;
    STA.B $05                            ;80DF56;
    BRA CODE_80DF84                      ;80DF58;

CODE_80DF5A:
    CLC                                  ;80DF5A;
    LDA.B $22                            ;80DF5B;
    ADC.W #$0010                         ;80DF5D;
    STA.B $05                            ;80DF60;
    BRA CODE_80DF84                      ;80DF62;

CODE_80DF64:
    EOR.W #$FFFF                         ;80DF64;
    INC A                                ;80DF67;
    CMP.W #$0010                         ;80DF68;
    BMI CODE_80DF84                      ;80DF6B;
    CMP.W #$0108                         ;80DF6D;
    BMI CODE_80DF7C                      ;80DF70;
    CLC                                  ;80DF72;
    LDA.B $05                            ;80DF73;
    ADC.W #$0100                         ;80DF75;
    STA.B $05                            ;80DF78;
    BRA CODE_80DF84                      ;80DF7A;

CODE_80DF7C:
    SEC                                  ;80DF7C;
    LDA.B $22                            ;80DF7D;
    SBC.W #$0010                         ;80DF7F;
    STA.B $05                            ;80DF82;

CODE_80DF84:
    SEC                                  ;80DF84;
    LDA.B $08                            ;80DF85;
    SBC.B $24                            ;80DF87;
    BMI CODE_80DFA9                      ;80DF89;
    CMP.W #$0010                         ;80DF8B;
    BMI CODE_80DFC9                      ;80DF8E;
    CMP.W #$0108                         ;80DF90;
    BMI CODE_80DF9F                      ;80DF93;
    SEC                                  ;80DF95;
    LDA.B $08                            ;80DF96;
    SBC.W #$0100                         ;80DF98;
    STA.B $08                            ;80DF9B;
    BRA CODE_80DFC9                      ;80DF9D;

CODE_80DF9F:
    CLC                                  ;80DF9F;
    LDA.B $24                            ;80DFA0;
    ADC.W #$0010                         ;80DFA2;
    STA.B $08                            ;80DFA5;
    BRA CODE_80DFC9                      ;80DFA7;

CODE_80DFA9:
    EOR.W #$FFFF                         ;80DFA9;
    INC A                                ;80DFAC;
    CMP.W #$0010                         ;80DFAD;
    BMI CODE_80DFC9                      ;80DFB0;
    CMP.W #$0108                         ;80DFB2;
    BMI CODE_80DFC1                      ;80DFB5;
    CLC                                  ;80DFB7;
    LDA.B $08                            ;80DFB8;
    ADC.W #$0100                         ;80DFBA;
    STA.B $08                            ;80DFBD;
    BRA CODE_80DFC9                      ;80DFBF;

CODE_80DFC1:
    SEC                                  ;80DFC1;
    LDA.B $24                            ;80DFC2;
    SBC.W #$0010                         ;80DFC4;
    STA.B $08                            ;80DFC7;

CODE_80DFC9:
    RTS                                  ;80DFC9;

CODE_80DFCA:
    LDA.W $1E4D                          ;80DFCA;
    CLC                                  ;80DFCD;
    ADC.B $0A                            ;80DFCE;
    STA.B $05                            ;80DFD0;

CODE_80DFD2:
    LDA.W $1E50                          ;80DFD2;
    CLC                                  ;80DFD5;
    ADC.B $0C                            ;80DFD6;
    STA.B $08                            ;80DFD8;
    JMP.W CODE_80DF3F                    ;80DFDA;

CODE_80DFDD:
    JSR.W CODE_80E0E0                    ;80DFDD;
    BRA CODE_80DFD2                      ;80DFE0;

CODE_80DFE2:
    LDA.W $1E4D                          ;80DFE2;
    CLC                                  ;80DFE5;
    ADC.B $0A                            ;80DFE6;
    STA.B $05                            ;80DFE8;
    JSR.W CODE_80E0EA                    ;80DFEA;
    JMP.W CODE_80DF3F                    ;80DFED;

CODE_80DFF0:
    LDX.B $02                            ;80DFF0;
    JMP.W (PTR16_80DFF5,X)               ;80DFF2;

PTR16_80DFF5:
    dw CODE_80DFF9                       ;80DFF5;
    dw CODE_80E008                       ;80DFF7;

CODE_80DFF9:
    LDA.B $08                            ;80DFF9;
    STA.B $1C                            ;80DFFB;
    CLC                                  ;80DFFD;
    ADC.W #$0100                         ;80DFFE;
    STA.B $08                            ;80E001;
    LDX.B #$02                           ;80E003;
    STX.B $02                            ;80E005;
    RTS                                  ;80E007;

CODE_80E008:
    LDA.B $08                            ;80E008;
    SEC                                  ;80E00A;
    SBC.W #$0010                         ;80E00B;
    STA.B $08                            ;80E00E;
    CMP.B $1C                            ;80E010;
    BNE CODE_80E01D                      ;80E012;
    LDX.B $03                            ;80E014;
    STX.B $01                            ;80E016;
    STZ.B $02                            ;80E018;
    STZ.W $1F27                          ;80E01A;

CODE_80E01D:
    RTS                                  ;80E01D;

CODE_80E01E:
    PHP                                  ;80E01E;
    SEP #$20                             ;80E01F;
    LDA.B #$0C                           ;80E021;
    STA.W $1E89                          ;80E023;
    STA.W $1E9A                          ;80E026;
    STZ.W $1E88                          ;80E029;
    PLP                                  ;80E02C;
    RTL                                  ;80E02D;

CODE_80E02E:
    JSR.W CODE_80E032                    ;80E02E;
    RTL                                  ;80E031;

CODE_80E032:
    PHP                                  ;80E032;
    SEP #$30                             ;80E033;
    LDA.W $1E89                          ;80E035;
    CMP.B #$06                           ;80E038;
    BEQ CODE_80E03F                      ;80E03A;
    STA.W $1E8B                          ;80E03C;

CODE_80E03F:
    LDA.B #$06                           ;80E03F;
    STA.W $1E89                          ;80E041;
    STZ.W $1E8A                          ;80E044;
    STA.W $1F27                          ;80E047;
    PLP                                  ;80E04A;
    RTS                                  ;80E04B;

CODE_80E04C:
    LDX.B $02                            ;80E04C;
    JMP.W (PTR16_80E051,X)               ;80E04E;

PTR16_80E051:
    dw CODE_80E055                       ;80E051;
    dw CODE_80E064                       ;80E053;

CODE_80E055:
    STZ.B $1C                            ;80E055;
    LDA.B $05                            ;80E057;
    STA.B $0E                            ;80E059;
    LDA.B $08                            ;80E05B;
    STA.B $10                            ;80E05D;
    LDX.B #$02                           ;80E05F;
    STX.B $02                            ;80E061;
    RTS                                  ;80E063;

CODE_80E064:
    LDA.B $0E                            ;80E064;
    STA.W $0000                          ;80E066;
    CLC                                  ;80E069;
    LDA.B $10                            ;80E06A;
    ADC.B $1C                            ;80E06C;
    STA.W $0002                          ;80E06E;
    JSR.W CODE_80B5C0                    ;80E071;
    LDX.B $03                            ;80E074;
    JSR.W (PTR16_80DF1E,X)               ;80E076;
    CLC                                  ;80E079;
    LDA.B $1C                            ;80E07A;
    ADC.W #$0010                         ;80E07C;
    STA.B $1C                            ;80E07F;
    CMP.W #$0100                         ;80E081;
    BMI CODE_80E08C                      ;80E084;
    LDX.B $03                            ;80E086;
    STX.B $01                            ;80E088;
    STZ.B $02                            ;80E08A;

CODE_80E08C:
    RTS                                  ;80E08C;

CODE_80E08D:
    LDX.B $02                            ;80E08D;
    JMP.W (PTR16_80E092,X)               ;80E08F;

PTR16_80E092:
    dw CODE_80E098                       ;80E092;
    dw CODE_80E0AB                       ;80E094;
    dw CODE_80E0CC                       ;80E096;

CODE_80E098:
    STZ.B $1A                            ;80E098;
    LDA.B $05                            ;80E09A;
    STA.B $0E                            ;80E09C;
    LDA.B $08                            ;80E09E;
    STA.B $10                            ;80E0A0;
    LDX.B #$02                           ;80E0A2;
    STX.B $02                            ;80E0A4;
    LDX.B #$00                           ;80E0A6;
    STX.W $1E88                          ;80E0A8;

CODE_80E0AB:
    CLC                                  ;80E0AB;
    LDA.B $0E                            ;80E0AC;
    ADC.B $1A                            ;80E0AE;
    STA.W $0000                          ;80E0B0;
    LDA.B $10                            ;80E0B3;
    STA.W $0002                          ;80E0B5;
    JSR.W CODE_80B5D3                    ;80E0B8;
    CLC                                  ;80E0BB;
    LDA.B $1A                            ;80E0BC;
    ADC.W #$0010                         ;80E0BE;
    STA.B $1A                            ;80E0C1;
    CMP.W #$0200                         ;80E0C3;
    BMI CODE_80E0CC                      ;80E0C6;
    LDX.B #$04                           ;80E0C8;
    STX.B $02                            ;80E0CA;

CODE_80E0CC:
    LDA.W $1E4D                          ;80E0CC;
    AND.W #$01FF                         ;80E0CF;
    CLC                                  ;80E0D2;
    ADC.B $0A                            ;80E0D3;
    STA.B $05                            ;80E0D5;
    LDA.W $1E50                          ;80E0D7;
    CLC                                  ;80E0DA;
    ADC.B $0C                            ;80E0DB;
    STA.B $08                            ;80E0DD;
    RTS                                  ;80E0DF;

CODE_80E0E0:
    LDA.W $1E4D                          ;80E0E0;
    LSR A                                ;80E0E3;
    CLC                                  ;80E0E4;
    ADC.B $0A                            ;80E0E5;
    STA.B $05                            ;80E0E7;
    RTS                                  ;80E0E9;

CODE_80E0EA:
    LDA.W $1E50                          ;80E0EA;
    LSR A                                ;80E0ED;
    CLC                                  ;80E0EE;
    ADC.B $0C                            ;80E0EF;
    STA.B $08                            ;80E0F1;
    RTS                                  ;80E0F3;

CODE_80E0F4:
    LDA.B $10                            ;80E0F4;
    CMP.B $05                            ;80E0F6;
    BPL CODE_80E118                      ;80E0F8;
    STA.B $05                            ;80E0FA;
    CLC                                  ;80E0FC;
    ADC.W #$0100                         ;80E0FD;
    STA.W $0000                          ;80E100;
    LDA.W $0BAD                          ;80E103;
    CLC                                  ;80E106;
    ADC.W #$0008                         ;80E107;
    CMP.W $0000                          ;80E10A;
    BMI CODE_80E118                      ;80E10D;
    LDA.B $10                            ;80E10F;
    CLC                                  ;80E111;
    ADC.W #$00F8                         ;80E112;
    STA.W $0BAD                          ;80E115;

CODE_80E118:
    LDA.B $0E                            ;80E118;
    CMP.B $05                            ;80E11A;
    BMI CODE_80E134                      ;80E11C;
    STA.B $05                            ;80E11E;
    LDA.W $0BAD                          ;80E120;
    SEC                                  ;80E123;
    SBC.W #$0008                         ;80E124;
    CMP.B $0E                            ;80E127;
    BPL CODE_80E134                      ;80E129;
    LDA.B $0E                            ;80E12B;
    CLC                                  ;80E12D;
    ADC.W #$0008                         ;80E12E;
    STA.W $0BAD                          ;80E131;

CODE_80E134:
    LDA.B $14                            ;80E134;
    CMP.B $08                            ;80E136;
    BPL CODE_80E160                      ;80E138;
    STA.B $08                            ;80E13A;
    CLC                                  ;80E13C;
    ADC.W #$00E0                         ;80E13D;
    STA.W $0000                          ;80E140;
    LDA.W $0BB0                          ;80E143;
    CLC                                  ;80E146;
    ADC.W #$FFE0                         ;80E147;
    CMP.W $0000                          ;80E14A;
    BMI CODE_80E168                      ;80E14D;
    LDA.W $0BCF                          ;80E14F;
    AND.W #$007F                         ;80E152;
    BEQ CODE_80E168                      ;80E155;
    LDX.B #$7F                           ;80E157;
    STX.W $0BCE                          ;80E159;
    JSL.L CODE_849F2A                    ;80E15C;

CODE_80E160:
    LDA.B $12                            ;80E160;
    CMP.B $08                            ;80E162;
    BMI CODE_80E168                      ;80E164;
    STA.B $08                            ;80E166;

CODE_80E168:
    RTS                                  ;80E168;

CODE_80E169:
    SEP #$20                             ;80E169;
    DEC.B $31                            ;80E16B;
    BEQ CODE_80E193                      ;80E16D;
    DEC.B $38                            ;80E16F;
    BNE CODE_80E17D                      ;80E171;
    LDA.B $3C                            ;80E173;
    EOR.B #$80                           ;80E175;
    STA.B $3C                            ;80E177;
    LDA.B $36                            ;80E179;
    STA.B $38                            ;80E17B;

CODE_80E17D:
    LDA.B $3C                            ;80E17D;
    BMI CODE_80E197                      ;80E17F;
    LDA.B $3A                            ;80E181;
    STA.W $0000                          ;80E183;
    STZ.W $0001                          ;80E186;
    REP #$21                             ;80E189;
    LDA.B $05                            ;80E18B;
    ADC.W $0000                          ;80E18D;
    STA.B $05                            ;80E190;
    RTS                                  ;80E192;

CODE_80E193:
    LDA.B #$01                           ;80E193;
    TRB.B $30                            ;80E195;

CODE_80E197:
    REP #$20                             ;80E197;
    RTS                                  ;80E199;

CODE_80E19A:
    SEP #$20                             ;80E19A;
    DEC.B $32                            ;80E19C;
    BEQ CODE_80E1C4                      ;80E19E;
    DEC.B $39                            ;80E1A0;
    BNE CODE_80E1AE                      ;80E1A2;
    LDA.B $3D                            ;80E1A4;
    EOR.B #$80                           ;80E1A6;
    STA.B $3D                            ;80E1A8;
    LDA.B $37                            ;80E1AA;
    STA.B $39                            ;80E1AC;

CODE_80E1AE:
    LDA.B $3D                            ;80E1AE;
    BMI CODE_80E1C8                      ;80E1B0;
    LDA.B $3B                            ;80E1B2;
    STA.W $0000                          ;80E1B4;
    STZ.W $0001                          ;80E1B7;
    REP #$21                             ;80E1BA;
    LDA.B $08                            ;80E1BC;
    ADC.W $0000                          ;80E1BE;
    STA.B $08                            ;80E1C1;
    RTS                                  ;80E1C3;

CODE_80E1C4:
    LDA.B #$02                           ;80E1C4;
    TRB.B $30                            ;80E1C6;

CODE_80E1C8:
    REP #$20                             ;80E1C8;
    RTS                                  ;80E1CA;

CODE_80E1CB:
    LDA.B $16                            ;80E1CB;
    CMP.B $0E                            ;80E1CD;
    BEQ CODE_80E20B                      ;80E1CF;
    CMP.B $05                            ;80E1D1;
    BMI CODE_80E1E0                      ;80E1D3;
    LDA.B $05                            ;80E1D5;
    CLC                                  ;80E1D7;
    ADC.B $0A                            ;80E1D8;
    CMP.B $16                            ;80E1DA;
    BMI CODE_80E209                      ;80E1DC;
    BRA CODE_80E207                      ;80E1DE;

CODE_80E1E0:
    LDA.W $0BAD                          ;80E1E0;
    SEC                                  ;80E1E3;
    SBC.B $05                            ;80E1E4;
    SEC                                  ;80E1E6;
    SBC.B $2C                            ;80E1E7;
    ADC.W #$0002                         ;80E1E9;
    CMP.W #$0004                         ;80E1EC;
    BCC CODE_80E207                      ;80E1EF;
    LDA.W $0BAD                          ;80E1F1;
    SEC                                  ;80E1F4;
    SBC.W $0BCA                          ;80E1F5;
    BMI CODE_80E1FD                      ;80E1F8;
    LDA.W #$0000                         ;80E1FA;

CODE_80E1FD:
    CLC                                  ;80E1FD;
    ADC.B $05                            ;80E1FE;
    SEC                                  ;80E200;
    SBC.B $0A                            ;80E201;
    CMP.B $16                            ;80E203;
    BPL CODE_80E209                      ;80E205;

CODE_80E207:
    LDA.B $16                            ;80E207;

CODE_80E209:
    STA.B $0E                            ;80E209;

CODE_80E20B:
    LDA.B $18                            ;80E20B;
    CMP.B $10                            ;80E20D;
    BEQ CODE_80E24B                      ;80E20F;
    CMP.B $05                            ;80E211;
    BPL CODE_80E220                      ;80E213;
    LDA.B $05                            ;80E215;
    SEC                                  ;80E217;
    SBC.B $0A                            ;80E218;
    CMP.B $18                            ;80E21A;
    BPL CODE_80E249                      ;80E21C;
    BRA CODE_80E247                      ;80E21E;

CODE_80E220:
    LDA.W $0BAD                          ;80E220;
    SEC                                  ;80E223;
    SBC.B $05                            ;80E224;
    SEC                                  ;80E226;
    SBC.B $2E                            ;80E227;
    ADC.W #$0002                         ;80E229;
    CMP.W #$0004                         ;80E22C;
    BCC CODE_80E247                      ;80E22F;
    LDA.W $0BAD                          ;80E231;
    SEC                                  ;80E234;
    SBC.W $0BCA                          ;80E235;
    BPL CODE_80E23D                      ;80E238;
    LDA.W #$0000                         ;80E23A;

CODE_80E23D:
    CLC                                  ;80E23D;
    ADC.B $05                            ;80E23E;
    CLC                                  ;80E240;
    ADC.B $0A                            ;80E241;
    CMP.B $18                            ;80E243;
    BMI CODE_80E249                      ;80E245;

CODE_80E247:
    LDA.B $18                            ;80E247;

CODE_80E249:
    STA.B $10                            ;80E249;

CODE_80E24B:
    LDA.B $20                            ;80E24B;
    CMP.B $12                            ;80E24D;
    BEQ CODE_80E28E                      ;80E24F;
    CMP.B $08                            ;80E251;
    BMI CODE_80E260                      ;80E253;
    LDA.B $08                            ;80E255;
    CLC                                  ;80E257;
    ADC.B $0A                            ;80E258;
    CMP.B $20                            ;80E25A;
    BMI CODE_80E28C                      ;80E25C;
    BRA CODE_80E28A                      ;80E25E;

CODE_80E260:
    LDA.W $0BB0                          ;80E260;
    SEC                                  ;80E263;
    SBC.B $08                            ;80E264;
    SEC                                  ;80E266;
    SBC.B $28                            ;80E267;
    STA.W $0000                          ;80E269;
    ADC.W #$0002                         ;80E26C;
    CMP.W #$0004                         ;80E26F;
    BCC CODE_80E28A                      ;80E272;
    LDA.W $0BB0                          ;80E274;
    SEC                                  ;80E277;
    SBC.W $0BCC                          ;80E278;
    BMI CODE_80E280                      ;80E27B;
    LDA.W #$0000                         ;80E27D;

CODE_80E280:
    CLC                                  ;80E280;
    ADC.B $08                            ;80E281;
    SEC                                  ;80E283;
    SBC.B $0A                            ;80E284;
    CMP.B $20                            ;80E286;
    BPL CODE_80E28C                      ;80E288;

CODE_80E28A:
    LDA.B $20                            ;80E28A;

CODE_80E28C:
    STA.B $12                            ;80E28C;

CODE_80E28E:
    LDA.B $26                            ;80E28E;
    CMP.B $14                            ;80E290;
    BEQ CODE_80E2D1                      ;80E292;
    CMP.B $08                            ;80E294;
    BPL CODE_80E2A3                      ;80E296;
    LDA.B $08                            ;80E298;
    SEC                                  ;80E29A;
    SBC.B $0A                            ;80E29B;
    CMP.B $26                            ;80E29D;
    BPL CODE_80E2CF                      ;80E29F;
    BRA CODE_80E2CD                      ;80E2A1;

CODE_80E2A3:
    LDA.W $0BB0                          ;80E2A3;
    SEC                                  ;80E2A6;
    SBC.B $08                            ;80E2A7;
    SEC                                  ;80E2A9;
    SBC.B $2A                            ;80E2AA;
    STA.W $0000                          ;80E2AC;
    ADC.W #$0002                         ;80E2AF;
    CMP.W #$0004                         ;80E2B2;
    BCC CODE_80E2CD                      ;80E2B5;
    LDA.W $0BB0                          ;80E2B7;
    SEC                                  ;80E2BA;
    SBC.W $0BCC                          ;80E2BB;
    BPL CODE_80E2C3                      ;80E2BE;
    LDA.W #$0000                         ;80E2C0;

CODE_80E2C3:
    CLC                                  ;80E2C3;
    ADC.B $08                            ;80E2C4;
    CLC                                  ;80E2C6;
    ADC.B $0A                            ;80E2C7;
    CMP.B $26                            ;80E2C9;
    BMI CODE_80E2CF                      ;80E2CB;

CODE_80E2CD:
    LDA.B $26                            ;80E2CD;

CODE_80E2CF:
    STA.B $14                            ;80E2CF;

CODE_80E2D1:
    RTS                                  ;80E2D1;

CODE_80E2D2:
    LDA.W $0BDE                          ;80E2D2;
    STA.W $0BE0                          ;80E2D5;
    LDA.W $0BDF                          ;80E2D8;
    STA.W $0BE1                          ;80E2DB;
    JMP.W CODE_80E3BE                    ;80E2DE;
    db $60,$E8,$E2,$4D,$E3,$BD,$E3,$A9   ;80E2E1;
    db $02,$8F,$00,$84,$7F,$A9,$01,$8F   ;80E2E9;
    db $26,$1F,$00,$20,$D7,$E4,$AF,$9C   ;80E2F1;
    db $0B,$00,$8D,$0A,$00,$AF,$7A,$1F   ;80E2F9;
    db $00,$8D,$0B,$00,$AF,$81,$1F,$00   ;80E301;
    db $8D,$0C,$00,$AF,$DF,$0B,$00,$29   ;80E309;
    db $CF,$85,$00,$AF,$DE,$0B,$00,$29   ;80E311;
    db $30,$05,$00,$8D,$40,$00,$AF,$DF   ;80E319;
    db $0B,$00,$29,$10,$0A,$0A,$8D,$41   ;80E321;
    db $00,$AF,$DE,$0B,$00,$29,$80,$0C   ;80E329;
    db $41,$00,$C2,$20,$AF,$DE,$0B,$00   ;80E331;
    db $8D,$04,$00,$AF,$A6,$0B,$00,$8D   ;80E339;
    db $06,$00,$9C,$01,$00,$9C,$08,$00   ;80E341;
    db $9C,$0D,$00,$60,$C2,$10,$EE,$01   ;80E349;
    db $00,$AD,$01,$00,$C9,$3F,$F0,$0D   ;80E351;
    db $C2,$20,$AF,$DE,$0B,$00,$CD,$04   ;80E359;
    db $00,$E2,$20,$F0,$57,$AE,$08,$00   ;80E361;
    db $AF,$DF,$0B,$00,$29,$CF,$85,$00   ;80E369;
    db $AF,$DE,$0B,$00,$29,$30,$05,$00   ;80E371;
    db $9D,$42,$00,$AF,$DF,$0B,$00,$29   ;80E379;
    db $10,$0A,$0A,$85,$00,$AF,$DE,$0B   ;80E381;
    db $00,$29,$80,$05,$00,$9D,$43,$00   ;80E389;
    db $AD,$01,$00,$29,$3F,$1D,$41,$00   ;80E391;
    db $9D,$41,$00,$C2,$20,$AF,$DE,$0B   ;80E399;
    db $00,$8D,$04,$00,$E2,$20,$E8,$E8   ;80E3A1;
    db $8E,$08,$00,$8E,$0D,$00,$9C,$01   ;80E3A9;
    db $00,$E0,$00,$1C,$D0,$06,$A9,$04   ;80E3B1;
    db $8F,$00,$84,$7F,$60               ;80E3B9;

CODE_80E3BE:
    PHB                                  ;80E3BE;
    PHD                                  ;80E3BF;
    PHP                                  ;80E3C0;
    SEP #$30                             ;80E3C1;
    LDA.B #$7F                           ;80E3C3;
    PHA                                  ;80E3C5;
    PLB                                  ;80E3C6;
    LDX.W $8400                          ;80E3C7;
    JSR.W (PTR16_80E3D1,X)               ;80E3CA;
    PLP                                  ;80E3CD;
    PLD                                  ;80E3CE;
    PLB                                  ;80E3CF;
    RTS                                  ;80E3D0;

PTR16_80E3D1:
    dw CODE_80E3D7                       ;80E3D1;
    dw CODE_80E44E                       ;80E3D3;
    dw CODE_80E4C5                       ;80E3D5;

CODE_80E3D7:
    LDA.B #$00                           ;80E3D7;
    STA.L $001F26                        ;80E3D9;
    LDA.B #$02                           ;80E3DD;
    STA.W $8400                          ;80E3DF;
    JSR.W CODE_80E515                    ;80E3E2;
    LDA.W $840A                          ;80E3E5;
    STA.L $000B9C                        ;80E3E8;
    LDA.W $840B                          ;80E3EC;
    STA.L $001F7A                        ;80E3EF;
    LDA.W $840C                          ;80E3F3;
    STA.L $001F81                        ;80E3F6;
    LDA.W $8441                          ;80E3FA;
    AND.B #$3F                           ;80E3FD;
    STA.W $8401                          ;80E3FF;
    LDA.W $8440                          ;80E402;
    AND.B #$CF                           ;80E405;
    STA.B $00                            ;80E407;
    LDA.W $8441                          ;80E409;
    LSR A                                ;80E40C;
    LSR A                                ;80E40D;
    AND.B #$10                           ;80E40E;
    ORA.B $00                            ;80E410;
    STA.L $000BDF                        ;80E412;
    LDA.W $8440                          ;80E416;
    AND.B #$30                           ;80E419;
    STA.B $00                            ;80E41B;
    LDA.W $8441                          ;80E41D;
    AND.B #$80                           ;80E420;
    ORA.B $00                            ;80E422;
    STA.L $000BDE                        ;80E424;
    REP #$20                             ;80E428;
    LDA.L $000BA6                        ;80E42A;
    STA.W $8402                          ;80E42E;
    LDA.W $8406                          ;80E431;
    STA.L $000BA6                        ;80E434;
    STZ.W $8408                          ;80E438;
    LDA.W $843F                          ;80E43B;
    AND.W #$FF00                         ;80E43E;
    STA.L $000BDE                        ;80E441;
    STA.L $000BE0                        ;80E445;
    STA.L $000BE2                        ;80E449;
    RTS                                  ;80E44D;

CODE_80E44E:
    REP #$10                             ;80E44E;
    LDA.W $8401                          ;80E450;
    DEC A                                ;80E453;
    BEQ CODE_80E45B                      ;80E454;
    STA.W $8401                          ;80E456;
    BRA CODE_80E48A                      ;80E459;

CODE_80E45B:
    LDX.W $8408                          ;80E45B;
    INX                                  ;80E45E;
    INX                                  ;80E45F;
    STX.W $8408                          ;80E460;
    LDA.W $8441,X                        ;80E463;
    AND.B #$3F                           ;80E466;
    STA.W $8401                          ;80E468;
    CPX.W #$1BFE                         ;80E46B;
    BEQ CODE_80E475                      ;80E46E;
    CPX.W $840D                          ;80E470;
    BCC CODE_80E48A                      ;80E473;

CODE_80E475:
    LDA.B #$04                           ;80E475;
    STA.W $8400                          ;80E477;
    LDA.W $8402                          ;80E47A;
    STA.L $000BA6                        ;80E47D;
    LDA.W $8403                          ;80E481;
    STA.L $000BA7                        ;80E484;
    BRA CODE_80E4C5                      ;80E488;

CODE_80E48A:
    LDX.W $8408                          ;80E48A;
    LDA.W $8440,X                        ;80E48D;
    AND.B #$CF                           ;80E490;
    STA.B $00                            ;80E492;
    LDA.W $8441,X                        ;80E494;
    LSR A                                ;80E497;
    LSR A                                ;80E498;
    AND.B #$10                           ;80E499;
    ORA.B $00                            ;80E49B;
    STA.L $000BDF                        ;80E49D;
    LDA.W $8440,X                        ;80E4A1;
    AND.B #$30                           ;80E4A4;
    STA.B $00                            ;80E4A6;
    LDA.W $8441,X                        ;80E4A8;
    AND.B #$80                           ;80E4AB;
    ORA.B $00                            ;80E4AD;
    STA.L $000BDE                        ;80E4AF;
    REP #$20                             ;80E4B3;
    LDA.L $000BE0                        ;80E4B5;
    EOR.W #$FFFF                         ;80E4B9;
    AND.L $000BDE                        ;80E4BC;
    STA.L $000BE2                        ;80E4C0;
    RTS                                  ;80E4C4;

CODE_80E4C5:
    REP #$20                             ;80E4C5;
    LDA.W #$0000                         ;80E4C7;
    STA.L $000BDE                        ;80E4CA;
    STA.L $000BE0                        ;80E4CE;
    STA.L $000BE2                        ;80E4D2;
    RTS                                  ;80E4D6;
    LDA.L $001F83                        ;80E4D7;
    STA.W $0010                          ;80E4DB;
    LDA.L $001F84                        ;80E4DE;
    STA.W $0011                          ;80E4E2;
    LDA.L $001F85                        ;80E4E5;
    STA.W $0012                          ;80E4E9;
    LDA.L $001F86                        ;80E4EC;
    STA.W $0013                          ;80E4F0;
    LDA.L $001F9A                        ;80E4F3;
    STA.W $0014                          ;80E4F7;
    LDA.L $001F99                        ;80E4FA;
    STA.W $0015                          ;80E4FE;
    LDA.L $001F9C                        ;80E501;
    STA.W $0028                          ;80E505;
    LDX.B #$11                           ;80E508;

CODE_80E50A:
    LDA.L $001F87,X                      ;80E50A;
    STA.W $0016,X                        ;80E50E;
    DEX                                  ;80E511;
    BPL CODE_80E50A                      ;80E512;
    RTS                                  ;80E514;

CODE_80E515:
    LDA.W $8410                          ;80E515;
    STA.L $001F83                        ;80E518;
    LDA.W $8411                          ;80E51C;
    STA.L $001F84                        ;80E51F;
    LDA.W $8412                          ;80E523;
    STA.L $001F85                        ;80E526;
    LDA.W $8413                          ;80E52A;
    STA.L $001F86                        ;80E52D;
    LDA.W $8414                          ;80E531;
    STA.L $001F9A                        ;80E534;
    LDA.W $8415                          ;80E538;
    STA.L $001F99                        ;80E53B;
    LDA.W $8428                          ;80E53F;
    STA.L $001F9C                        ;80E542;
    LDX.B #$11                           ;80E546;

CODE_80E548:
    LDA.W $8416,X                        ;80E548;
    STA.L $001F87,X                      ;80E54B;
    DEX                                  ;80E54F;
    BPL CODE_80E548                      ;80E550;
    STZ.W $1F7B                          ;80E552;
    STZ.W $1F7E                          ;80E555;
    RTS                                  ;80E558;

CODE_80E559:
    REP #$20                             ;80E559;
    LDA.W $0BDE                          ;80E55B;
    STA.W $0BE0                          ;80E55E;
    SEP #$30                             ;80E561;
    LDA.B $A7                            ;80E563;
    LSR A                                ;80E565;
    LSR A                                ;80E566;
    AND.B #$3C                           ;80E567;
    STA.B $02                            ;80E569;
    LDA.B $A8                            ;80E56B;
    AND.B #$C0                           ;80E56D;
    TSB.B $02                            ;80E56F;
    LDA.B $A8                            ;80E571;
    LSR A                                ;80E573;
    LSR A                                ;80E574;
    LSR A                                ;80E575;
    LSR A                                ;80E576;
    AND.B #$03                           ;80E577;
    TSB.B $02                            ;80E579;
    LDA.B $A8                            ;80E57B;
    AND.B #$0F                           ;80E57D;
    STA.W $0BDF                          ;80E57F;
    JSR.W CODE_80E596                    ;80E582;
    REP #$20                             ;80E585;
    LDA.W $0BE0                          ;80E587;
    EOR.W #$FFFF                         ;80E58A;
    AND.W $0BDE                          ;80E58D;
    STA.W $0BE2                          ;80E590;
    SEP #$20                             ;80E593;
    RTS                                  ;80E595;

CODE_80E596:
    STZ.B $00                            ;80E596;
    STZ.B $01                            ;80E598;
    LDA.L $7EFFC4                        ;80E59A;
    BNE CODE_80E5A3                      ;80E59E;
    CLC                                  ;80E5A0;
    BRA CODE_80E5A9                      ;80E5A1;

CODE_80E5A3:
    AND.B $02                            ;80E5A3;
    CMP.L $7EFFC4                        ;80E5A5;

CODE_80E5A9:
    ROR.B $00                            ;80E5A9;
    LDA.L $7EFFC3                        ;80E5AB;
    BNE CODE_80E5B4                      ;80E5AF;
    CLC                                  ;80E5B1;
    BRA CODE_80E5BA                      ;80E5B2;

CODE_80E5B4:
    AND.B $02                            ;80E5B4;
    CMP.L $7EFFC3                        ;80E5B6;

CODE_80E5BA:
    ROR.B $00                            ;80E5BA;
    LSR.B $00                            ;80E5BC;
    LDA.L $7EFFC2                        ;80E5BE;
    BNE CODE_80E5C7                      ;80E5C2;
    CLC                                  ;80E5C4;
    BRA CODE_80E5CD                      ;80E5C5;

CODE_80E5C7:
    AND.B $02                            ;80E5C7;
    CMP.L $7EFFC2                        ;80E5C9;

CODE_80E5CD:
    LDA.B $00                            ;80E5CD;
    ROR A                                ;80E5CF;
    STA.W $0BDE                          ;80E5D0;
    LDA.L $7EFFC5                        ;80E5D3;
    BNE CODE_80E5DC                      ;80E5D7;
    CLC                                  ;80E5D9;
    BRA CODE_80E5E2                      ;80E5DA;

CODE_80E5DC:
    AND.B $02                            ;80E5DC;
    CMP.L $7EFFC5                        ;80E5DE;

CODE_80E5E2:
    ROR.B $01                            ;80E5E2;
    LSR.B $01                            ;80E5E4;
    LDA.L $7EFFC0                        ;80E5E6;
    BNE CODE_80E5EF                      ;80E5EA;
    CLC                                  ;80E5EC;
    BRA CODE_80E5F5                      ;80E5ED;

CODE_80E5EF:
    AND.B $02                            ;80E5EF;
    CMP.L $7EFFC0                        ;80E5F1;

CODE_80E5F5:
    ROR.B $01                            ;80E5F5;
    LDA.L $7EFFC1                        ;80E5F7;
    BNE CODE_80E600                      ;80E5FB;
    CLC                                  ;80E5FD;
    BRA CODE_80E606                      ;80E5FE;

CODE_80E600:
    AND.B $02                            ;80E600;
    CMP.L $7EFFC1                        ;80E602;

CODE_80E606:
    LDA.B $01                            ;80E606;
    ROR A                                ;80E608;
    TSB.W $0BDF                          ;80E609;
    RTS                                  ;80E60C;

CODE_80E60D:
    PHP                                  ;80E60D;
    SEP #$20                             ;80E60E;
    REP #$10                             ;80E610;
    LDA.B #$02                           ;80E612;
    STA.W $1E89                          ;80E614;
    JSR.W CODE_80E6A4                    ;80E617;
    REP #$20                             ;80E61A;
    LDA.W DATA8_86A787,X                 ;80E61C;
    STA.W $1E4D                          ;80E61F;
    STA.W $1E6A                          ;80E622;
    STA.W $00B4                          ;80E625;
    LDA.W DATA8_86A789,X                 ;80E628;
    STA.W $1E50                          ;80E62B;
    STA.W $1E6C                          ;80E62E;
    STA.W $00B6                          ;80E631;
    LDA.W DATA8_86A78B,X                 ;80E634;
    STA.W $1E8D                          ;80E637;
    STA.W $1EAA                          ;80E63A;
    STA.W $00B8                          ;80E63D;
    LDA.W DATA8_86A78D,X                 ;80E640;
    STA.W $1E90                          ;80E643;
    STA.W $1EAC                          ;80E646;
    STA.W $00BA                          ;80E649;
    LDA.W DATA8_86A78F,X                 ;80E64C;
    STA.W $1E56                          ;80E64F;
    STA.W $1E5E                          ;80E652;
    LDA.W DATA8_86A791,X                 ;80E655;
    STA.W $1E58                          ;80E658;
    STA.W $1E60                          ;80E65B;
    LDA.W DATA8_86A793,X                 ;80E65E;
    STA.W $1E5A                          ;80E661;
    STA.W $1E68                          ;80E664;
    LDA.W DATA8_86A795,X                 ;80E667;
    STA.W $1E5C                          ;80E66A;
    STA.W $1E6E                          ;80E66D;
    LDA.W DATA8_86A797,X                 ;80E670;
    STA.W $1E92                          ;80E673;
    LDA.W DATA8_86A799,X                 ;80E676;
    STA.W $1E94                          ;80E679;
    LDA.W DATA8_86A79B,X                 ;80E67C;
    AND.W #$00FF                         ;80E67F;
    TAY                                  ;80E682;
    JSL.L CODE_8180E3                    ;80E683;
    PLP                                  ;80E687;
    RTS                                  ;80E688;

CODE_80E689:
    PHP                                  ;80E689;
    SEP #$20                             ;80E68A;
    REP #$10                             ;80E68C;
    JSR.W CODE_80E6A4                    ;80E68E;
    LDA.W DATA8_86A79C,X                 ;80E691;
    STA.B $64                            ;80E694;
    REP #$20                             ;80E696;
    LDA.W DATA8_86A783,X                 ;80E698;
    STA.B $05                            ;80E69B;
    LDA.W DATA8_86A785,X                 ;80E69D;
    STA.B $08                            ;80E6A0;
    PLP                                  ;80E6A2;
    RTL                                  ;80E6A3;

CODE_80E6A4:
    REP #$20                             ;80E6A4;
    LDA.W $1F81                          ;80E6A6;
    AND.W #$00FF                         ;80E6A9;
    ASL A                                ;80E6AC;
    STA.W $0000                          ;80E6AD;
    LDA.W $1F7A                          ;80E6B0;
    AND.W #$00FF                         ;80E6B3;
    ASL A                                ;80E6B6;
    TAX                                  ;80E6B7;
    LDA.W DATA8_86A780,X                 ;80E6B8;
    CLC                                  ;80E6BB;
    ADC.W $0000                          ;80E6BC;
    TAX                                  ;80E6BF;
    LDA.W DATA8_86A780,X                 ;80E6C0;
    TAX                                  ;80E6C3;
    SEP #$20                             ;80E6C4;
    RTS                                  ;80E6C6;
    SEP #$30                             ;80E6C7;
    JSR.W CODE_80E9D8                    ;80E6C9;
    JSR.W CODE_808100                    ;80E6CC;
    LDA.B #$04                           ;80E6CF;
    TSB.B $C0                            ;80E6D1;
    LDA.W $1F32                          ;80E6D3;
    AND.B #$3F                           ;80E6D6;
    ASL A                                ;80E6D8;
    TAX                                  ;80E6D9;
    REP #$20                             ;80E6DA;
    LDA.L DATA8_84C886,X                 ;80E6DC;
    STA.B $68                            ;80E6E0;
    STZ.B $6C                            ;80E6E2;
    STZ.B $6E                            ;80E6E4;
    STZ.B $BC                            ;80E6E6;
    STZ.B $BE                            ;80E6E8;
    STZ.W $1F38                          ;80E6EA;
    SEP #$20                             ;80E6ED;
    STZ.W $1F3C                          ;80E6EF;
    STZ.W $1F3D                          ;80E6F2;
    INC.B $6F                            ;80E6F5;
    LDY.B #$00                           ;80E6F7;
    LDA.W $1F33                          ;80E6F9;
    STA.W $1F36                          ;80E6FC;

CODE_80E6FF:
    JSR.W CODE_80E994                    ;80E6FF;
    BIT.B #$80                           ;80E702;
    BEQ CODE_80E709                      ;80E704;
    JMP.W CODE_80E7C3                    ;80E706;

CODE_80E709:
    LDX.B $A4                            ;80E709;
    STA.W $0604,X                        ;80E70B;
    LDA.B $6E                            ;80E70E;
    STA.W $0605,X                        ;80E710;
    LDA.B #$80                           ;80E713;
    STA.W $0600,X                        ;80E715;
    REP #$21                             ;80E718;
    LDA.B $6A                            ;80E71A;
    ADC.B $6C                            ;80E71C;
    CLC                                  ;80E71E;
    ADC.W #$0020                         ;80E71F;
    AND.W #$07FF                         ;80E722;
    ORA.W #$0800                         ;80E725;
    STA.W $0601,X                        ;80E728;
    INC.B $6C                            ;80E72B;
    SEP #$20                             ;80E72D;
    LDA.B #$02                           ;80E72F;
    STA.W $0603,X                        ;80E731;
    TXA                                  ;80E734;
    CLC                                  ;80E735;
    ADC.B #$06                           ;80E736;
    STA.B $A4                            ;80E738;
    LDA.W $1F35                          ;80E73A;
    BEQ CODE_80E777                      ;80E73D;
    LDX.B $A4                            ;80E73F;
    LDA.W $05FE,X                        ;80E741;
    CMP.B #$20                           ;80E744;
    BEQ CODE_80E777                      ;80E746;
    LDA.B #$2B                           ;80E748;
    STA.W $0604,X                        ;80E74A;
    LDA.B $6E                            ;80E74D;
    STA.W $0605,X                        ;80E74F;
    LDA.B #$80                           ;80E752;
    STA.W $0600,X                        ;80E754;
    REP #$21                             ;80E757;
    LDA.B $6A                            ;80E759;
    ADC.B $6C                            ;80E75B;
    CLC                                  ;80E75D;
    ADC.W #$0020                         ;80E75E;
    AND.W #$07FF                         ;80E761;
    ORA.W #$0800                         ;80E764;
    STA.W $0601,X                        ;80E767;
    SEP #$20                             ;80E76A;
    LDA.B #$02                           ;80E76C;
    STA.W $0603,X                        ;80E76E;
    TXA                                  ;80E771;
    CLC                                  ;80E772;
    ADC.B #$06                           ;80E773;
    STA.B $A4                            ;80E775;

CODE_80E777:
    LDA.W $1F36                          ;80E777;
    BMI CODE_80E784                      ;80E77A;
    DEC.W $1F36                          ;80E77C;
    BEQ CODE_80E784                      ;80E77F;
    JMP.W CODE_80E6FF                    ;80E781;

CODE_80E784:
    LDX.B $6F                            ;80E784;
    BEQ CODE_80E7B1                      ;80E786;
    LDA.W $1F7F                          ;80E788;
    BNE CODE_80E7A4                      ;80E78B;
    PHY                                  ;80E78D;
    LDA.W $1F35                          ;80E78E;
    BEQ CODE_80E79E                      ;80E791;
    JSL.L CODE_849086                    ;80E793;
    AND.B #$03                           ;80E797;
    CLC                                  ;80E799;
    ADC.B #$81                           ;80E79A;
    BRA CODE_80E7A0                      ;80E79C;

CODE_80E79E:
    LDA.B #$0B                           ;80E79E;

CODE_80E7A0:
    JSR.W CODE_80888B                    ;80E7A0;
    PLY                                  ;80E7A3;

CODE_80E7A4:
    LDX.B $6F                            ;80E7A4;
    JSR.W CODE_80E9E5                    ;80E7A6;
    BEQ CODE_80E7AD                      ;80E7A9;
    LDX.B #$01                           ;80E7AB;

CODE_80E7AD:
    TXA                                  ;80E7AD;
    JSR.W CODE_80810C                    ;80E7AE;

CODE_80E7B1:
    LDX.W $1F33                          ;80E7B1;
    LDA.W $0BDF                          ;80E7B4;
    BIT.B #$10                           ;80E7B7;
    BEQ CODE_80E7BD                      ;80E7B9;
    LDX.B #$08                           ;80E7BB;

CODE_80E7BD:
    STX.W $1F36                          ;80E7BD;
    JMP.W CODE_80E6FF                    ;80E7C0;

CODE_80E7C3:
    BIT.B #$40                           ;80E7C3;
    BNE CODE_80E7E4                      ;80E7C5;
    AND.B #$0F                           ;80E7C7;
    ASL A                                ;80E7C9;
    TAX                                  ;80E7CA;
    JMP.W (PTR16_80E7CE,X)               ;80E7CB;

PTR16_80E7CE:
    dw CODE_80E7F7                       ;80E7CE;
    dw CODE_80E814                       ;80E7D0;
    dw CODE_80E83C                       ;80E7D2;
    dw CODE_80E84A                       ;80E7D4;
    dw CODE_80E85B                       ;80E7D6;
    dw CODE_80E861                       ;80E7D8;
    dw CODE_80E8B5                       ;80E7DA;
    dw CODE_80E942                       ;80E7DC;
    dw CODE_80E964                       ;80E7DE;
    dw CODE_80E96C                       ;80E7E0;
    dw CODE_80E98B                       ;80E7E2;

CODE_80E7E4:
    AND.B #$0F                           ;80E7E4;
    ASL A                                ;80E7E6;
    ASL A                                ;80E7E7;
    AND.B #$1C                           ;80E7E8;
    STA.B $6E                            ;80E7EA;
    LDA.W $1F32                          ;80E7EC;
    AND.B #$40                           ;80E7EF;
    LSR A                                ;80E7F1;
    TSB.B $6E                            ;80E7F2;
    JMP.W CODE_80E6FF                    ;80E7F4;

CODE_80E7F7:
    REP #$21                             ;80E7F7;
    LDA.B $6A                            ;80E7F9;
    ADC.W #$0020                         ;80E7FB;
    AND.W #$07FF                         ;80E7FE;
    ORA.W #$0800                         ;80E801;
    STA.B $6A                            ;80E804;
    STZ.B $6C                            ;80E806;
    TYA                                  ;80E808;
    ADC.B $68                            ;80E809;
    STA.B $68                            ;80E80B;
    SEP #$20                             ;80E80D;
    LDY.B #$00                           ;80E80F;
    JMP.W CODE_80E6FF                    ;80E811;

CODE_80E814:
    INC.W $1F3D                          ;80E814;
    JSR.W CODE_808100                    ;80E817;

CODE_80E81A:
    JSR.W CODE_80E9E5                    ;80E81A;
    BNE CODE_80E833                      ;80E81D;
    LDA.W $0B9C                          ;80E81F;
    AND.B #$10                           ;80E822;
    BEQ CODE_80E82B                      ;80E824;
    JSR.W CODE_80E9A3                    ;80E826;
    BRA CODE_80E82E                      ;80E829;

CODE_80E82B:
    JSR.W CODE_80E99D                    ;80E82B;

CODE_80E82E:
    JSR.W CODE_808100                    ;80E82E;
    BRA CODE_80E81A                      ;80E831;

CODE_80E833:
    STZ.W $1F3D                          ;80E833;
    JSR.W CODE_80E99D                    ;80E836;
    JMP.W CODE_80E6FF                    ;80E839;

CODE_80E83C:
    STZ.W $0060                          ;80E83C;
    STZ.W $1F3C                          ;80E83F;
    LDA.B #$01                           ;80E842;
    STA.W $1F3D                          ;80E844;
    JMP.W CODE_8080F8                    ;80E847;

CODE_80E84A:
    LDA.B #$00                           ;80E84A;
    XBA                                  ;80E84C;
    JSR.W CODE_80E994                    ;80E84D;
    REP #$21                             ;80E850;
    ADC.B $6C                            ;80E852;
    STA.B $6C                            ;80E854;
    SEP #$20                             ;80E856;
    JMP.W CODE_80E6FF                    ;80E858;

CODE_80E85B:
    LDA.B #$49                           ;80E85B;
    STA.B $00                            ;80E85D;
    BRA CODE_80E865                      ;80E85F;

CODE_80E861:
    LDA.B #$47                           ;80E861;
    STA.B $00                            ;80E863;

CODE_80E865:
    LDX.B $A4                            ;80E865;
    LDA.B #$81                           ;80E867;
    STA.W $0600,X                        ;80E869;
    STA.W $0606,X                        ;80E86C;
    REP #$21                             ;80E86F;
    LDA.B $6A                            ;80E871;
    ADC.B $6C                            ;80E873;
    AND.W #$07FF                         ;80E875;
    ORA.W #$0800                         ;80E878;
    STA.W $0601,X                        ;80E87B;
    CLC                                  ;80E87E;
    ADC.W #$0020                         ;80E87F;
    AND.W #$07FF                         ;80E882;
    ORA.W #$0800                         ;80E885;
    STA.W $0607,X                        ;80E888;
    INC.B $6C                            ;80E88B;
    SEP #$20                             ;80E88D;
    LDA.B #$02                           ;80E88F;
    STA.W $0603,X                        ;80E891;
    STA.W $0609,X                        ;80E894;
    LDA.B $00                            ;80E897;
    STA.W $0604,X                        ;80E899;
    LDA.B $6E                            ;80E89C;
    STA.W $0605,X                        ;80E89E;
    JSR.W CODE_80E994                    ;80E8A1;
    STA.W $060A,X                        ;80E8A4;
    LDA.B $6E                            ;80E8A7;
    STA.W $060B,X                        ;80E8A9;
    TXA                                  ;80E8AC;
    CLC                                  ;80E8AD;
    ADC.B #$0C                           ;80E8AE;
    STA.B $A4                            ;80E8B0;
    JMP.W CODE_80E6FF                    ;80E8B2;

CODE_80E8B5:
    INC.W $1F3D                          ;80E8B5;
    JSR.W CODE_80E994                    ;80E8B8;
    STA.W $1F3A                          ;80E8BB;

CODE_80E8BE:
    REP #$21                             ;80E8BE;
    LDX.W $1F37                          ;80E8C0;
    BEQ CODE_80E8CD                      ;80E8C3;
    LDA.W $0B9C                          ;80E8C5;
    AND.W #$0007                         ;80E8C8;
    BNE CODE_80E8E6                      ;80E8CB;

CODE_80E8CD:
    LDA.W $1F34                          ;80E8CD;
    AND.W #$00FF                         ;80E8D0;
    ADC.B $BE                            ;80E8D3;
    STA.B $BE                            ;80E8D5;
    AND.W #$FFF8                         ;80E8D7;
    STA.B $00                            ;80E8DA;
    LDA.W $1F38                          ;80E8DC;
    AND.W #$FFF8                         ;80E8DF;
    CMP.B $00                            ;80E8E2;
    BNE CODE_80E8EB                      ;80E8E4;

CODE_80E8E6:
    JSR.W CODE_808100                    ;80E8E6;
    BRA CODE_80E8BE                      ;80E8E9;

CODE_80E8EB:
    LDA.B $BE                            ;80E8EB;
    STA.W $1F38                          ;80E8ED;
    LDX.B $A4                            ;80E8F0;
    CLC                                  ;80E8F2;
    ADC.W #$00E0                         ;80E8F3;
    AND.W #$FFF8                         ;80E8F6;
    ASL A                                ;80E8F9;
    ASL A                                ;80E8FA;
    AND.W #$07FF                         ;80E8FB;
    ORA.W #$0800                         ;80E8FE;
    STA.W $0601,X                        ;80E901;
    SEP #$20                             ;80E904;
    LDA.B #$80                           ;80E906;
    STA.W $0600,X                        ;80E908;
    LDA.B #$40                           ;80E90B;
    STA.W $0603,X                        ;80E90D;
    PHX                                  ;80E910;
    REP #$20                             ;80E911;
    LDA.W #$0020                         ;80E913;
    STA.B $04                            ;80E916;

CODE_80E918:
    LDA.W #$0000                         ;80E918;
    STA.W $0604,X                        ;80E91B;
    INX                                  ;80E91E;
    INX                                  ;80E91F;
    DEC.B $04                            ;80E920;
    BNE CODE_80E918                      ;80E922;
    SEP #$20                             ;80E924;
    PLA                                  ;80E926;
    CLC                                  ;80E927;
    ADC.B #$44                           ;80E928;
    STA.B $A4                            ;80E92A;
    JSR.W CODE_808100                    ;80E92C;
    DEC.W $1F3A                          ;80E92F;
    BNE CODE_80E8BE                      ;80E932;
    STZ.W $1F3D                          ;80E934;
    LDA.W $1F7F                          ;80E937;
    BNE CODE_80E93F                      ;80E93A;
    JSR.W CODE_808100                    ;80E93C;

CODE_80E93F:
    JMP.W CODE_80E6FF                    ;80E93F;

CODE_80E942:
    INC.W $1F3D                          ;80E942;
    JSR.W CODE_808100                    ;80E945;
    JSR.W CODE_80E9E5                    ;80E948;
    BEQ CODE_80E952                      ;80E94B;
    JSR.W CODE_80E994                    ;80E94D;
    BRA CODE_80E958                      ;80E950;

CODE_80E952:
    JSR.W CODE_80E994                    ;80E952;
    JSR.W CODE_80810C                    ;80E955;

CODE_80E958:
    STZ.W $1F3D                          ;80E958;
    LDA.W $1F33                          ;80E95B;
    STA.W $1F36                          ;80E95E;
    JMP.W CODE_80E6FF                    ;80E961;

CODE_80E964:
    JSR.W CODE_80E994                    ;80E964;
    STA.B $6F                            ;80E967;
    JMP.W CODE_80E6FF                    ;80E969;

CODE_80E96C:
    JSR.W CODE_80E994                    ;80E96C;
    STA.B $6A                            ;80E96F;
    JSR.W CODE_80E994                    ;80E971;
    STA.B $6B                            ;80E974;
    REP #$20                             ;80E976;
    LDA.B $BE                            ;80E978;
    AND.W #$01F8                         ;80E97A;
    ASL A                                ;80E97D;
    ASL A                                ;80E97E;
    CLC                                  ;80E97F;
    ADC.B $6A                            ;80E980;
    STA.B $6A                            ;80E982;
    STZ.B $6C                            ;80E984;
    SEP #$20                             ;80E986;
    JMP.W CODE_80E6FF                    ;80E988;

CODE_80E98B:
    INC.W $1F3C                          ;80E98B;
    JSR.W CODE_808100                    ;80E98E;
    JMP.W CODE_80E6FF                    ;80E991;

CODE_80E994:
    PEA.W DATA8_868684                   ;80E994;
    PLB                                  ;80E997;
    LDA.B ($68),Y                        ;80E998;
    INY                                  ;80E99A;
    PLB                                  ;80E99B;
    RTS                                  ;80E99C;

CODE_80E99D:
    LDA.B #$00                           ;80E99D;
    STA.B $00                            ;80E99F;
    BRA CODE_80E9A7                      ;80E9A1;

CODE_80E9A3:
    LDA.B #$25                           ;80E9A3;
    STA.B $00                            ;80E9A5;

CODE_80E9A7:
    LDA.B #$20                           ;80E9A7;
    STA.B $01                            ;80E9A9;
    LDX.B $A4                            ;80E9AB;
    LDA.B #$80                           ;80E9AD;
    STA.W $0600,X                        ;80E9AF;
    LDA.B #$02                           ;80E9B2;
    STA.W $0603,X                        ;80E9B4;
    REP #$21                             ;80E9B7;
    LDA.B $6A                            ;80E9B9;
    ADC.B $6C                            ;80E9BB;
    CLC                                  ;80E9BD;
    ADC.W #$0020                         ;80E9BE;
    AND.W #$07FF                         ;80E9C1;
    ORA.W #$0800                         ;80E9C4;
    STA.W $0601,X                        ;80E9C7;
    LDA.B $00                            ;80E9CA;
    STA.W $0604,X                        ;80E9CC;
    SEP #$20                             ;80E9CF;
    TXA                                  ;80E9D1;
    CLC                                  ;80E9D2;
    ADC.B #$06                           ;80E9D3;
    STA.B $A4                            ;80E9D5;
    RTS                                  ;80E9D7;

CODE_80E9D8:
    LDA.W $1F25                          ;80E9D8;
    CMP.B #$40                           ;80E9DB;
    BCC CODE_80E9E4                      ;80E9DD;
    JSR.W CODE_808100                    ;80E9DF;
    BRA CODE_80E9D8                      ;80E9E2;

CODE_80E9E4:
    RTS                                  ;80E9E4;

CODE_80E9E5:
    LDA.W $0BDE                          ;80E9E5;
    ORA.W $0BDF                          ;80E9E8;
    AND.B #$F0                           ;80E9EB;
    RTS                                  ;80E9ED;

CODE_80E9EE:
    PHX                                  ;80E9EE;
    PHY                                  ;80E9EF;
    PHP                                  ;80E9F0;
    PHD                                  ;80E9F1;
    SEP #$30                             ;80E9F2;
    STA.W $1F32                          ;80E9F4;
    STZ.W $1F35                          ;80E9F7;
    STZ.W $1F37                          ;80E9FA;
    LDA.B #$01                           ;80E9FD;
    STA.W $1F33                          ;80E9FF;
    LDA.B #$02                           ;80EA02;
    STA.W $1F34                          ;80EA04;
    REP #$20                             ;80EA07;
    LDA.W #$0000                         ;80EA09;
    TCD                                  ;80EA0C;
    LDX.B #$30                           ;80EA0D;
    STX.W $0060                          ;80EA0F;
    LDA.W #$E6C7                         ;80EA12;
    JSR.W CODE_80813B                    ;80EA15;
    PLD                                  ;80EA18;
    PLP                                  ;80EA19;
    PLY                                  ;80EA1A;
    PLX                                  ;80EA1B;
    RTL                                  ;80EA1C;

CODE_80EA1D:
    PHP                                  ;80EA1D;
    REP #$20                             ;80EA1E;
    PHD                                  ;80EA20;
    LDA.W #$0000                         ;80EA21;
    TCD                                  ;80EA24;
    SEP #$30                             ;80EA25;
    JSR.W CODE_808A45                    ;80EA27;
    JSR.W CODE_808BCB                    ;80EA2A;
    LDA.B #$00                           ;80EA2D;
    STA.L $7EFFC8                        ;80EA2F;
    STA.L $7EFFC9                        ;80EA33;
    STA.L $7EFF84                        ;80EA37;
    STA.L $7EFF85                        ;80EA3B;
    STA.L $7EFF86                        ;80EA3F;
    JSR.W CODE_8088EC                    ;80EA43;
    LDA.B #$1C                           ;80EA46;
    JSR.W CODE_8089E1                    ;80EA48;
    LDX.B #$09                           ;80EA4B;

CODE_80EA4D:
    PHX                                  ;80EA4D;
    LDA.W DATA8_86BCDB,X                 ;80EA4E;
    JSR.W CODE_8089E1                    ;80EA51;
    PLX                                  ;80EA54;
    DEX                                  ;80EA55;
    BPL CODE_80EA4D                      ;80EA56;
    LDA.B #$07                           ;80EA58;
    TSB.W $00A2                          ;80EA5A;
    JSR.W CODE_808100                    ;80EA5D;
    JSR.W CODE_80ECFB                    ;80EA60;
    LDA.B #$20                           ;80EA63;
    JSR.W CODE_8089E1                    ;80EA65;
    LDY.B #$4E                           ;80EA68;
    JSR.W CODE_80B301                    ;80EA6A;
    JSR.W CODE_808100                    ;80EA6D;
    LDY.B #$50                           ;80EA70;
    JSR.W CODE_80B301                    ;80EA72;
    JSR.W CODE_808100                    ;80EA75;
    REP #$10                             ;80EA78;
    LDY.W #$0132                         ;80EA7A;
    JSL.L CODE_828011                    ;80EA7D;
    SEP #$10                             ;80EA81;
    JSR.W CODE_80EDC5                    ;80EA83;
    JSR.W CODE_80EE07                    ;80EA86;
    JSR.W CODE_808100                    ;80EA89;
    LDA.L $7EFFCA                        ;80EA8C;
    CMP.B #$F7                           ;80EA90;
    BEQ CODE_80EA98                      ;80EA92;
    LDA.B #$42                           ;80EA94;
    BRA CODE_80EA9A                      ;80EA96;

CODE_80EA98:
    LDA.B #$40                           ;80EA98;

CODE_80EA9A:
    JSR.W CODE_8089E1                    ;80EA9A;
    JSR.W CODE_808973                    ;80EA9D;
    LDA.B #$00                           ;80EAA0;
    STA.L $7EFF80                        ;80EAA2;

CODE_80EAA6:
    LDA.L $7EFF80                        ;80EAA6;
    STA.L $7EFF81                        ;80EAAA;
    LDA.L $7EFF86                        ;80EAAE;
    BEQ CODE_80EAB9                      ;80EAB2;
    DEC A                                ;80EAB4;
    STA.L $7EFF86                        ;80EAB5;

CODE_80EAB9:
    LDA.B $AC                            ;80EAB9;
    BIT.B #$04                           ;80EABB;
    BEQ CODE_80EACA                      ;80EABD;
    LDA.L $7EFF80                        ;80EABF;
    INC A                                ;80EAC3;
    STA.L $7EFF80                        ;80EAC4;
    BRA CODE_80EADC                      ;80EAC8;

CODE_80EACA:
    BIT.B #$08                           ;80EACA;
    BEQ CODE_80EAD9                      ;80EACC;
    LDA.L $7EFF80                        ;80EACE;
    DEC A                                ;80EAD2;
    STA.L $7EFF80                        ;80EAD3;
    BRA CODE_80EADC                      ;80EAD7;

CODE_80EAD9:
    JSR.W CODE_80EE49                    ;80EAD9;

CODE_80EADC:
    LDA.L $7EFF80                        ;80EADC;
    BPL CODE_80EAEA                      ;80EAE0;
    LDA.B #$09                           ;80EAE2;
    STA.L $7EFF80                        ;80EAE4;
    BRA CODE_80EAF4                      ;80EAE8;

CODE_80EAEA:
    CMP.B #$0A                           ;80EAEA;
    BCC CODE_80EAF4                      ;80EAEC;
    LDA.B #$00                           ;80EAEE;
    STA.L $7EFF80                        ;80EAF0;

CODE_80EAF4:
    LDA.L $7EFF81                        ;80EAF4;
    CMP.L $7EFF80                        ;80EAF8;
    BEQ CODE_80EB3F                      ;80EAFC;
    LDA.L $7EFF81                        ;80EAFE;
    TAX                                  ;80EB02;
    LDA.W DATA8_86BCDB,X                 ;80EB03;
    CPX.B #$06                           ;80EB06;
    BNE CODE_80EB18                      ;80EB08;
    LDA.L $7EFFCA                        ;80EB0A;
    CMP.B #$F7                           ;80EB0E;
    BEQ CODE_80EB16                      ;80EB10;
    LDA.B #$42                           ;80EB12;
    BRA CODE_80EB18                      ;80EB14;

CODE_80EB16:
    LDA.B #$40                           ;80EB16;

CODE_80EB18:
    JSR.W CODE_8089E1                    ;80EB18;
    LDA.L $7EFF80                        ;80EB1B;
    TAX                                  ;80EB1F;
    LDA.W DATA8_86BCDB,X                 ;80EB20;
    INC A                                ;80EB23;
    CPX.B #$06                           ;80EB24;
    BNE CODE_80EB36                      ;80EB26;
    LDA.L $7EFFCA                        ;80EB28;
    CMP.B #$F7                           ;80EB2C;
    BEQ CODE_80EB34                      ;80EB2E;
    LDA.B #$43                           ;80EB30;
    BRA CODE_80EB36                      ;80EB32;

CODE_80EB34:
    LDA.B #$41                           ;80EB34;

CODE_80EB36:
    JSR.W CODE_8089E1                    ;80EB36;
    JSR.W CODE_808100                    ;80EB39;
    JMP.W CODE_80EAA6                    ;80EB3C;

CODE_80EB3F:
    LDA.L $7EFF80                        ;80EB3F;
    ASL A                                ;80EB43;
    TAX                                  ;80EB44;
    JMP.W (PTR16_80EB48,X)               ;80EB45;

PTR16_80EB48:
    dw CODE_80EB5C                       ;80EB48;
    dw CODE_80EB5C                       ;80EB4A;
    dw CODE_80EB5C                       ;80EB4C;
    dw CODE_80EB5C                       ;80EB4E;
    dw CODE_80EB5C                       ;80EB50;
    dw CODE_80EB5C                       ;80EB52;
    dw CODE_80EBEF                       ;80EB54;
    dw CODE_80EC37                       ;80EB56;
    dw CODE_80EC7B                       ;80EB58;
    dw CODE_80ECDA                       ;80EB5A;

CODE_80EB5C:
    LDA.B $AB                            ;80EB5C;
    AND.B #$F0                           ;80EB5E;
    LSR A                                ;80EB60;
    LSR A                                ;80EB61;
    STA.B $00                            ;80EB62;
    LDA.B $AC                            ;80EB64;
    AND.B #$C0                           ;80EB66;
    TSB.B $00                            ;80EB68;
    LDA.B $AC                            ;80EB6A;
    LSR A                                ;80EB6C;
    LSR A                                ;80EB6D;
    LSR A                                ;80EB6E;
    LSR A                                ;80EB6F;
    AND.B #$03                           ;80EB70;
    TSB.B $00                            ;80EB72;
    LDA.B $00                            ;80EB74;
    BNE CODE_80EBA7                      ;80EB76;
    LDA.B $AC                            ;80EB78;
    BIT.B #$03                           ;80EB7A;
    BEQ CODE_80EBE6                      ;80EB7C;
    LDA.L $7EFF80                        ;80EB7E;
    TAX                                  ;80EB82;
    LDA.L $7EFFC0,X                      ;80EB83;
    BEQ CODE_80EB99                      ;80EB87;
    STA.B $00                            ;80EB89;
    LDA.B $AC                            ;80EB8B;
    BIT.B #$02                           ;80EB8D;
    BEQ CODE_80EB95                      ;80EB8F;
    ASL.B $00                            ;80EB91;
    BRA CODE_80EBA7                      ;80EB93;

CODE_80EB95:
    LSR.B $00                            ;80EB95;
    BRA CODE_80EBA7                      ;80EB97;

CODE_80EB99:
    LDA.B $AC                            ;80EB99;
    BIT.B #$02                           ;80EB9B;
    BEQ CODE_80EBA3                      ;80EB9D;
    LDA.B #$01                           ;80EB9F;
    BRA CODE_80EBA5                      ;80EBA1;

CODE_80EBA3:
    LDA.B #$80                           ;80EBA3;

CODE_80EBA5:
    STA.B $00                            ;80EBA5;

CODE_80EBA7:
    LDA.B #$80                           ;80EBA7;
    STA.B $01                            ;80EBA9;
    LDA.B $00                            ;80EBAB;
    LDX.B #$00                           ;80EBAD;

CODE_80EBAF:
    ASL A                                ;80EBAF;
    BCS CODE_80EBBB                      ;80EBB0;
    LSR.B $01                            ;80EBB2;
    INX                                  ;80EBB4;
    CPX.B #$09                           ;80EBB5;
    BCS CODE_80EBBB                      ;80EBB7;
    BRA CODE_80EBAF                      ;80EBB9;

CODE_80EBBB:
    LDX.B #$05                           ;80EBBB;

CODE_80EBBD:
    LDA.L $7EFFC0,X                      ;80EBBD;
    BEQ CODE_80EBC7                      ;80EBC1;
    CMP.B $01                            ;80EBC3;
    BEQ CODE_80EBCC                      ;80EBC5;

CODE_80EBC7:
    DEX                                  ;80EBC7;
    BPL CODE_80EBBD                      ;80EBC8;
    BRA CODE_80EBDB                      ;80EBCA;

CODE_80EBCC:
    PHX                                  ;80EBCC;
    LDA.L $7EFF80                        ;80EBCD;
    TAX                                  ;80EBD1;
    LDA.L $7EFFC0,X                      ;80EBD2;
    PLX                                  ;80EBD6;
    STA.L $7EFFC0,X                      ;80EBD7;

CODE_80EBDB:
    LDA.L $7EFF80                        ;80EBDB;
    TAX                                  ;80EBDF;
    LDA.B $01                            ;80EBE0;
    STA.L $7EFFC0,X                      ;80EBE2;

CODE_80EBE6:
    JSR.W CODE_80ECFB                    ;80EBE6;
    JSR.W CODE_808100                    ;80EBE9;
    JMP.W CODE_80EAA6                    ;80EBEC;

CODE_80EBEF:
    LDA.B $AC                            ;80EBEF;
    AND.B #$03                           ;80EBF1;
    BNE CODE_80EBFB                      ;80EBF3;
    JSR.W CODE_808100                    ;80EBF5;
    JMP.W CODE_80EAA6                    ;80EBF8;

CODE_80EBFB:
    LDA.L $7EFFCA                        ;80EBFB;
    CMP.B #$F7                           ;80EBFF;
    BEQ CODE_80EC1D                      ;80EC01;
    LDA.B #$41                           ;80EC03;
    JSR.W CODE_8089E1                    ;80EC05;
    JSR.W CODE_808879                    ;80EC08;
    JSR.W CODE_808100                    ;80EC0B;
    LDA.B #$F7                           ;80EC0E;
    STA.L $7EFFCA                        ;80EC10;
    JSR.W CODE_80888B                    ;80EC14;
    JSR.W CODE_808100                    ;80EC17;
    JMP.W CODE_80EAA6                    ;80EC1A;

CODE_80EC1D:
    LDA.B #$43                           ;80EC1D;
    JSR.W CODE_8089E1                    ;80EC1F;
    JSR.W CODE_808879                    ;80EC22;
    JSR.W CODE_808100                    ;80EC25;
    LDA.B #$F8                           ;80EC28;
    STA.L $7EFFCA                        ;80EC2A;
    JSR.W CODE_80888B                    ;80EC2E;
    JSR.W CODE_808100                    ;80EC31;
    JMP.W CODE_80EAA6                    ;80EC34;

CODE_80EC37:
    LDA.B $AC                            ;80EC37;
    BIT.B #$03                           ;80EC39;
    BEQ CODE_80EC5B                      ;80EC3B;
    BIT.B #$02                           ;80EC3D;
    BEQ CODE_80EC4C                      ;80EC3F;
    LDA.L $7EFFC8                        ;80EC41;
    DEC A                                ;80EC45;
    BPL CODE_80EC57                      ;80EC46;
    LDA.B #$20                           ;80EC48;
    BRA CODE_80EC57                      ;80EC4A;

CODE_80EC4C:
    LDA.L $7EFFC8                        ;80EC4C;
    INC A                                ;80EC50;
    CMP.B #$21                           ;80EC51;
    BCC CODE_80EC57                      ;80EC53;
    LDA.B #$00                           ;80EC55;

CODE_80EC57:
    STA.L $7EFFC8                        ;80EC57;

CODE_80EC5B:
    LDA.B $AC                            ;80EC5B;
    AND.B #$40                           ;80EC5D;
    BNE CODE_80EC67                      ;80EC5F;
    LDA.B $AB                            ;80EC61;
    AND.B #$80                           ;80EC63;
    BEQ CODE_80EC72                      ;80EC65;

CODE_80EC67:
    LDA.L $7EFFC8                        ;80EC67;
    CLC                                  ;80EC6B;
    ADC.B #$10                           ;80EC6C;
    JSL.L CODE_8087A2                    ;80EC6E;

CODE_80EC72:
    JSR.W CODE_80EDC5                    ;80EC72;
    JSR.W CODE_808100                    ;80EC75;
    JMP.W CODE_80EAA6                    ;80EC78;

CODE_80EC7B:
    LDA.B $AC                            ;80EC7B;
    BIT.B #$03                           ;80EC7D;
    BEQ CODE_80ECA1                      ;80EC7F;
    BIT.B #$02                           ;80EC81;
    BEQ CODE_80EC92                      ;80EC83;
    LDA.L $7EFFC9                        ;80EC85;
    DEC A                                ;80EC89;
    CMP.B #$FF                           ;80EC8A;
    BNE CODE_80EC9D                      ;80EC8C;
    LDA.B #$A2                           ;80EC8E;
    BRA CODE_80EC9D                      ;80EC90;

CODE_80EC92:
    LDA.L $7EFFC9                        ;80EC92;
    INC A                                ;80EC96;
    CMP.B #$A3                           ;80EC97;
    BCC CODE_80EC9D                      ;80EC99;
    LDA.B #$00                           ;80EC9B;

CODE_80EC9D:
    STA.L $7EFFC9                        ;80EC9D;

CODE_80ECA1:
    LDA.L $7EFF86                        ;80ECA1;
    BNE CODE_80ECD1                      ;80ECA5;
    LDA.B $AC                            ;80ECA7;
    AND.B #$40                           ;80ECA9;
    BNE CODE_80ECB3                      ;80ECAB;
    LDA.B $AB                            ;80ECAD;
    AND.B #$80                           ;80ECAF;
    BEQ CODE_80ECD1                      ;80ECB1;

CODE_80ECB3:
    LDA.B #$F1                           ;80ECB3;
    JSR.W CODE_80888B                    ;80ECB5;
    JSR.W CODE_808100                    ;80ECB8;
    LDA.L $7EFFC9                        ;80ECBB;
    BEQ CODE_80ECC5                      ;80ECBF;
    CMP.B #$17                           ;80ECC1;
    BNE CODE_80ECC7                      ;80ECC3;

CODE_80ECC5:
    LDA.B #$01                           ;80ECC5;

CODE_80ECC7:
    JSL.L CODE_8088CD                    ;80ECC7;
    LDA.B #$3C                           ;80ECCB;
    STA.L $7EFF86                        ;80ECCD;

CODE_80ECD1:
    JSR.W CODE_80EE07                    ;80ECD1;
    JSR.W CODE_808100                    ;80ECD4;
    JMP.W CODE_80EAA6                    ;80ECD7;

CODE_80ECDA:
    LDA.B $AC                            ;80ECDA;
    AND.B #$50                           ;80ECDC;
    BNE CODE_80ECE6                      ;80ECDE;
    LDA.B $AB                            ;80ECE0;
    AND.B #$80                           ;80ECE2;
    BEQ CODE_80ECF5                      ;80ECE4;

CODE_80ECE6:
    LDY.B #$04                           ;80ECE6;
    JSR.W CODE_808873                    ;80ECE8;
    LDA.B #$F1                           ;80ECEB;
    JSR.W CODE_80888B                    ;80ECED;
    PLD                                  ;80ECF0;
    PLP                                  ;80ECF1;
    JMP.W CODE_808995                    ;80ECF2;

CODE_80ECF5:
    JSR.W CODE_808100                    ;80ECF5;
    JMP.W CODE_80EAA6                    ;80ECF8;

CODE_80ECFB:
    REP #$20                             ;80ECFB;
    LDA.W #$0953                         ;80ECFD;
    STA.B $10                            ;80ED00;
    SEP #$20                             ;80ED02;
    LDA.L $7EFFC0                        ;80ED04;
    JSR.W CODE_80ED5C                    ;80ED08;
    REP #$20                             ;80ED0B;
    LDA.W #$0973                         ;80ED0D;
    STA.B $10                            ;80ED10;
    SEP #$20                             ;80ED12;
    LDA.L $7EFFC1                        ;80ED14;
    JSR.W CODE_80ED5C                    ;80ED18;
    REP #$20                             ;80ED1B;
    LDA.W #$0993                         ;80ED1D;
    STA.B $10                            ;80ED20;
    SEP #$20                             ;80ED22;
    LDA.L $7EFFC2                        ;80ED24;
    JSR.W CODE_80ED5C                    ;80ED28;
    REP #$20                             ;80ED2B;
    LDA.W #$09B3                         ;80ED2D;
    STA.B $10                            ;80ED30;
    SEP #$20                             ;80ED32;
    LDA.L $7EFFC3                        ;80ED34;
    JSR.W CODE_80ED5C                    ;80ED38;
    REP #$20                             ;80ED3B;
    LDA.W #$09D3                         ;80ED3D;
    STA.B $10                            ;80ED40;
    SEP #$20                             ;80ED42;
    LDA.L $7EFFC4                        ;80ED44;
    JSR.W CODE_80ED5C                    ;80ED48;
    REP #$20                             ;80ED4B;
    LDA.W #$09F3                         ;80ED4D;
    STA.B $10                            ;80ED50;
    SEP #$20                             ;80ED52;
    LDA.L $7EFFC5                        ;80ED54;
    JSR.W CODE_80ED5C                    ;80ED58;
    RTS                                  ;80ED5B;

CODE_80ED5C:
    LDY.B #$00                           ;80ED5C;

CODE_80ED5E:
    ASL A                                ;80ED5E;
    BCS CODE_80ED66                      ;80ED5F;
    INY                                  ;80ED61;
    CPY.B #$08                           ;80ED62;
    BCC CODE_80ED5E                      ;80ED64;

CODE_80ED66:
    TYA                                  ;80ED66;
    STA.B $00                            ;80ED67;
    ASL A                                ;80ED69;
    CLC                                  ;80ED6A;
    ADC.B $00                            ;80ED6B;
    ASL A                                ;80ED6D;
    TAY                                  ;80ED6E;
    LDX.B $A4                            ;80ED6F;
    LDA.B #$80                           ;80ED71;
    STA.W $0600,X                        ;80ED73;
    LDA.B $10                            ;80ED76;
    STA.W $0601,X                        ;80ED78;
    LDA.B $11                            ;80ED7B;
    STA.W $0602,X                        ;80ED7D;
    LDA.B #$0C                           ;80ED80;
    STA.W $0603,X                        ;80ED82;
    LDA.W DATA8_86BCE5,Y                 ;80ED85;
    STA.W $0604,X                        ;80ED88;
    LDA.W DATA8_86BCE6,Y                 ;80ED8B;
    STA.W $0606,X                        ;80ED8E;
    LDA.W DATA8_86BCE7,Y                 ;80ED91;
    STA.W $0608,X                        ;80ED94;
    LDA.W DATA8_86BCE8,Y                 ;80ED97;
    STA.W $060A,X                        ;80ED9A;
    LDA.W DATA8_86BCE9,Y                 ;80ED9D;
    STA.W $060C,X                        ;80EDA0;
    LDA.W DATA8_86BCEA,Y                 ;80EDA3;
    STA.W $060E,X                        ;80EDA6;
    LDA.B #$20                           ;80EDA9;
    STA.W $0605,X                        ;80EDAB;
    STA.W $0607,X                        ;80EDAE;
    STA.W $0609,X                        ;80EDB1;
    STA.W $060B,X                        ;80EDB4;
    STA.W $060D,X                        ;80EDB7;
    STA.W $060F,X                        ;80EDBA;
    LDA.B $A4                            ;80EDBD;
    CLC                                  ;80EDBF;
    ADC.B #$10                           ;80EDC0;
    STA.B $A4                            ;80EDC2;
    RTS                                  ;80EDC4;

CODE_80EDC5:
    LDX.B $A4                            ;80EDC5;
    LDA.B #$80                           ;80EDC7;
    STA.W $0600,X                        ;80EDC9;
    LDA.B #$04                           ;80EDCC;
    STA.W $0603,X                        ;80EDCE;
    REP #$20                             ;80EDD1;
    LDA.W #$0AD3                         ;80EDD3;
    STA.W $0601,X                        ;80EDD6;
    SEP #$20                             ;80EDD9;
    LDA.L $7EFFC8                        ;80EDDB;
    LSR A                                ;80EDDF;
    LSR A                                ;80EDE0;
    LSR A                                ;80EDE1;
    LSR A                                ;80EDE2;
    TAY                                  ;80EDE3;
    LDA.W DATA8_86EE10,Y                 ;80EDE4;
    STA.W $0604,X                        ;80EDE7;
    LDA.L $7EFFC8                        ;80EDEA;
    AND.B #$0F                           ;80EDEE;
    TAY                                  ;80EDF0;
    LDA.W DATA8_86EE10,Y                 ;80EDF1;
    STA.W $0606,X                        ;80EDF4;
    LDA.B #$20                           ;80EDF7;
    STA.W $0605,X                        ;80EDF9;
    STA.W $0607,X                        ;80EDFC;
    LDA.B $A4                            ;80EDFF;
    CLC                                  ;80EE01;
    ADC.B #$08                           ;80EE02;
    STA.B $A4                            ;80EE04;
    RTS                                  ;80EE06;

CODE_80EE07:
    LDX.B $A4                            ;80EE07;
    LDA.B #$80                           ;80EE09;
    STA.W $0600,X                        ;80EE0B;
    LDA.B #$04                           ;80EE0E;
    STA.W $0603,X                        ;80EE10;
    REP #$20                             ;80EE13;
    LDA.W #$0AF3                         ;80EE15;
    STA.W $0601,X                        ;80EE18;
    SEP #$20                             ;80EE1B;
    LDA.L $7EFFC9                        ;80EE1D;
    LSR A                                ;80EE21;
    LSR A                                ;80EE22;
    LSR A                                ;80EE23;
    LSR A                                ;80EE24;
    TAY                                  ;80EE25;
    LDA.W DATA8_86EE10,Y                 ;80EE26;
    STA.W $0604,X                        ;80EE29;
    LDA.L $7EFFC9                        ;80EE2C;
    AND.B #$0F                           ;80EE30;
    TAY                                  ;80EE32;
    LDA.W DATA8_86EE10,Y                 ;80EE33;
    STA.W $0606,X                        ;80EE36;
    LDA.B #$20                           ;80EE39;
    STA.W $0605,X                        ;80EE3B;
    STA.W $0607,X                        ;80EE3E;
    LDA.B $A4                            ;80EE41;
    CLC                                  ;80EE43;
    ADC.B #$08                           ;80EE44;
    STA.B $A4                            ;80EE46;
    RTS                                  ;80EE48;

CODE_80EE49:
    LDA.L $7EFF84                        ;80EE49;
    TAX                                  ;80EE4D;
    JMP.W (PTR16_80EE51,X)               ;80EE4E;

PTR16_80EE51:
    dw CODE_80EE55                       ;80EE51;
    dw CODE_80EE68                       ;80EE53;

CODE_80EE55:
    LDA.B $A8                            ;80EE55;
    AND.B #$0C                           ;80EE57;
    BEQ CODE_80EE67                      ;80EE59;
    LDA.B #$02                           ;80EE5B;
    STA.L $7EFF84                        ;80EE5D;
    LDA.B #$28                           ;80EE61;
    STA.L $7EFF85                        ;80EE63;

CODE_80EE67:
    RTS                                  ;80EE67;

CODE_80EE68:
    LDA.B $A8                            ;80EE68;
    AND.B $AA                            ;80EE6A;
    AND.B #$0C                           ;80EE6C;
    BNE CODE_80EE77                      ;80EE6E;
    LDA.B #$00                           ;80EE70;
    STA.L $7EFF84                        ;80EE72;
    RTS                                  ;80EE76;

CODE_80EE77:
    LDA.L $7EFF85                        ;80EE77;
    DEC A                                ;80EE7B;
    BNE CODE_80EE96                      ;80EE7C;
    LDA.B $A8                            ;80EE7E;
    AND.B #$08                           ;80EE80;
    BEQ CODE_80EE8B                      ;80EE82;
    LDA.L $7EFF80                        ;80EE84;
    DEC A                                ;80EE88;
    BRA CODE_80EE90                      ;80EE89;

CODE_80EE8B:
    LDA.L $7EFF80                        ;80EE8B;
    INC A                                ;80EE8F;

CODE_80EE90:
    STA.L $7EFF80                        ;80EE90;
    LDA.B #$04                           ;80EE94;

CODE_80EE96:
    STA.L $7EFF85                        ;80EE96;
    RTS                                  ;80EE9A;

CODE_80EE9B:
    PHP                                  ;80EE9B;
    PHD                                  ;80EE9C;
    SEP #$30                             ;80EE9D;

CODE_80EE9F:
    PEA.W $1E48                          ;80EE9F;
    PLD                                  ;80EEA2;
    LDX.B $01                            ;80EEA3;
    JSR.W (PTR16_80EED4,X)               ;80EEA5;
    JSR.W CODE_80F2FF                    ;80EEA8;
    LDA.B $00                            ;80EEAB;
    BEQ CODE_80EEC7                      ;80EEAD;
    JSL.L CODE_87813B                    ;80EEAF;
    JSL.L CODE_87807E                    ;80EEB3;
    JSL.L CODE_878000                    ;80EEB7;
    PEA.W $0000                          ;80EEBB;
    PLD                                  ;80EEBE;
    JSR.W CODE_80D585                    ;80EEBF;
    JSR.W CODE_808100                    ;80EEC2;
    BRA CODE_80EE9F                      ;80EEC5;

CODE_80EEC7:
    PEA.W $0000                          ;80EEC7;
    PLD                                  ;80EECA;
    JSR.W CODE_80D585                    ;80EECB;
    JSR.W CODE_808100                    ;80EECE;
    PLD                                  ;80EED1;
    PLP                                  ;80EED2;
    RTS                                  ;80EED3;

PTR16_80EED4:
    dw CODE_80EEDC                       ;80EED4;
    dw CODE_80EF3C                       ;80EED6;
    dw CODE_80EF4A                       ;80EED8;
    dw CODE_80EFBA                       ;80EEDA;

CODE_80EEDC:
    JSR.W CODE_80DB55                    ;80EEDC;
    INC.B $00                            ;80EEDF;
    LDA.B #$02                           ;80EEE1;
    STA.B $01                            ;80EEE3;
    LDA.B #$04                           ;80EEE5;
    STA.W $1F12                          ;80EEE7;
    STA.W $1F11                          ;80EEEA;
    LDA.B #$28                           ;80EEED;
    JSL.L CODE_8087A2                    ;80EEEF;
    PHD                                  ;80EEF3;
    PEA.W $0000                          ;80EEF4;
    PLD                                  ;80EEF7;
    LDY.B #$48                           ;80EEF8;
    JSR.W CODE_80B301                    ;80EEFA;
    JSR.W CODE_808100                    ;80EEFD;
    LDY.B #$4A                           ;80EF00;
    JSR.W CODE_80B301                    ;80EF02;
    JSR.W CODE_808100                    ;80EF05;
    LDY.B #$4C                           ;80EF08;
    JSR.W CODE_80B301                    ;80EF0A;
    JSR.W CODE_808100                    ;80EF0D;
    LDY.B #$56                           ;80EF10;
    JSR.W CODE_80B301                    ;80EF12;
    JSR.W CODE_808100                    ;80EF15;
    LDY.B #$F8                           ;80EF18;
    JSL.L CODE_828011                    ;80EF1A;
    LDY.B #$EC                           ;80EF1E;
    LDX.B #$40                           ;80EF20;
    JSL.L CODE_828000                    ;80EF22;
    LDA.B #$35                           ;80EF26;
    JSR.W CODE_8089E1                    ;80EF28;
    PLD                                  ;80EF2B;
    STZ.B $04                            ;80EF2C;
    STZ.B $07                            ;80EF2E;
    LDX.B #$0B                           ;80EF30;

CODE_80EF32:
    LDA.L $7EFFCB,X                      ;80EF32;
    STA.B $18,X                          ;80EF36;
    DEX                                  ;80EF38;
    BPL CODE_80EF32                      ;80EF39;
    RTS                                  ;80EF3B;

CODE_80EF3C:
    PHD                                  ;80EF3C;
    PEA.W $0000                          ;80EF3D;
    PLD                                  ;80EF40;
    JSR.W CODE_808973                    ;80EF41;
    PLD                                  ;80EF44;
    LDA.B #$04                           ;80EF45;
    STA.B $01                            ;80EF47;
    RTS                                  ;80EF49;

CODE_80EF4A:
    JSL.L CODE_878118                    ;80EF4A;
    LDA.B $04                            ;80EF4E;
    AND.B #$03                           ;80EF50;
    STA.B $04                            ;80EF52;
    LDA.B $07                            ;80EF54;
    CMP.B #$04                           ;80EF56;
    BCC CODE_80EF64                      ;80EF58;
    BMI CODE_80EF60                      ;80EF5A;
    STZ.B $07                            ;80EF5C;
    BRA CODE_80EF64                      ;80EF5E;

CODE_80EF60:
    LDA.B #$03                           ;80EF60;
    STA.B $07                            ;80EF62;

CODE_80EF64:
    LDA.W $00AC                          ;80EF64;
    AND.B #$80                           ;80EF67;
    BEQ CODE_80EF81                      ;80EF69;
    LDA.B $07                            ;80EF6B;
    CMP.B #$03                           ;80EF6D;
    BCS CODE_80EF81                      ;80EF6F;
    LDA.B $07                            ;80EF71;
    ASL A                                ;80EF73;
    ASL A                                ;80EF74;
    ADC.B $04                            ;80EF75;
    TAX                                  ;80EF77;
    LDA.B $18,X                          ;80EF78;
    DEC A                                ;80EF7A;
    AND.B #$07                           ;80EF7B;
    STA.B $18,X                          ;80EF7D;
    BRA CODE_80EFB2                      ;80EF7F;

CODE_80EF81:
    LDA.W $00AC                          ;80EF81;
    AND.B #$40                           ;80EF84;
    BEQ CODE_80EFB2                      ;80EF86;
    LDA.B $07                            ;80EF88;
    CMP.B #$03                           ;80EF8A;
    BCC CODE_80EFA3                      ;80EF8C;

CODE_80EF8E:
    JSR.W CODE_80F1A2                    ;80EF8E;
    BNE CODE_80EFB9                      ;80EF91;
    LDX.B #$0B                           ;80EF93;

CODE_80EF95:
    LDA.B $18,X                          ;80EF95;
    STA.L $7EFFCB,X                      ;80EF97;
    DEX                                  ;80EF9B;
    BPL CODE_80EF95                      ;80EF9C;
    LDA.B #$06                           ;80EF9E;
    STA.B $01                            ;80EFA0;
    RTS                                  ;80EFA2;

CODE_80EFA3:
    LDA.B $07                            ;80EFA3;
    ASL A                                ;80EFA5;
    ASL A                                ;80EFA6;
    CLC                                  ;80EFA7;
    ADC.B $04                            ;80EFA8;
    TAX                                  ;80EFAA;
    LDA.B $18,X                          ;80EFAB;
    INC A                                ;80EFAD;
    AND.B #$07                           ;80EFAE;
    STA.B $18,X                          ;80EFB0;

CODE_80EFB2:
    LDA.W $00AC                          ;80EFB2;
    AND.B #$10                           ;80EFB5;
    BNE CODE_80EF8E                      ;80EFB7;

CODE_80EFB9:
    RTS                                  ;80EFB9;

CODE_80EFBA:
    LDY.B #$04                           ;80EFBA;
    JSR.W CODE_808873                    ;80EFBC;
    PHD                                  ;80EFBF;
    PEA.W $0000                          ;80EFC0;
    PLD                                  ;80EFC3;
    JSR.W CODE_808995                    ;80EFC4;
    LDA.B #$07                           ;80EFC7;
    TSB.W $00A2                          ;80EFC9;
    JSR.W CODE_808100                    ;80EFCC;
    PLD                                  ;80EFCF;
    JSR.W CODE_80DB55                    ;80EFD0;
    RTS                                  ;80EFD3;

CODE_80EFD4:
    PHP                                  ;80EFD4;
    PHD                                  ;80EFD5;

CODE_80EFD6:
    SEP #$30                             ;80EFD6;
    PEA.W $1E48                          ;80EFD8;
    PLD                                  ;80EFDB;
    LDX.B $01                            ;80EFDC;
    JSR.W (PTR16_80F006,X)               ;80EFDE;
    LDA.B $00                            ;80EFE1;
    BEQ CODE_80EFF9                      ;80EFE3;
    PEA.W $0000                          ;80EFE5;
    PLD                                  ;80EFE8;
    JSL.L CODE_87813B                    ;80EFE9;
    JSL.L CODE_878000                    ;80EFED;
    JSR.W CODE_80D585                    ;80EFF1;
    JSR.W CODE_808100                    ;80EFF4;
    BRA CODE_80EFD6                      ;80EFF7;

CODE_80EFF9:
    PEA.W $0000                          ;80EFF9;
    PLD                                  ;80EFFC;
    JSR.W CODE_80D585                    ;80EFFD;
    JSR.W CODE_808100                    ;80F000;
    PLD                                  ;80F003;
    PLP                                  ;80F004;
    RTS                                  ;80F005;

PTR16_80F006:
    dw CODE_80F00E                       ;80F006;
    dw CODE_80F063                       ;80F008;
    dw CODE_80F074                       ;80F00A;
    dw CODE_80F087                       ;80F00C;

CODE_80F00E:
    JSR.W CODE_80DB55                    ;80F00E;
    INC.B $00                            ;80F011;
    LDA.B #$03                           ;80F013;
    STA.B $07                            ;80F015;
    STA.B $04                            ;80F017;
    LDA.B #$02                           ;80F019;
    STA.B $01                            ;80F01B;
    LDA.B #$04                           ;80F01D;
    STA.W $1F12                          ;80F01F;
    STA.W $1F11                          ;80F022;
    JSR.W CODE_80F0A6                    ;80F025;
    LDA.B #$28                           ;80F028;
    JSL.L CODE_8087A2                    ;80F02A;
    PHD                                  ;80F02E;
    PEA.W $0000                          ;80F02F;
    PLD                                  ;80F032;
    LDY.B #$48                           ;80F033;
    JSR.W CODE_80B301                    ;80F035;
    JSR.W CODE_808100                    ;80F038;
    LDY.B #$4A                           ;80F03B;
    JSR.W CODE_80B301                    ;80F03D;
    JSR.W CODE_808100                    ;80F040;
    LDY.B #$4C                           ;80F043;
    JSR.W CODE_80B301                    ;80F045;
    JSR.W CODE_808100                    ;80F048;
    LDY.B #$56                           ;80F04B;
    JSR.W CODE_80B301                    ;80F04D;
    JSR.W CODE_808100                    ;80F050;
    LDY.B #$F8                           ;80F053;
    JSL.L CODE_828011                    ;80F055;
    LDY.B #$EC                           ;80F059;
    LDX.B #$40                           ;80F05B;
    JSL.L CODE_828000                    ;80F05D;
    PLD                                  ;80F061;
    RTS                                  ;80F062;

CODE_80F063:
    PHD                                  ;80F063;
    PEA.W $0000                          ;80F064;
    PLD                                  ;80F067;
    STZ.W $00B3                          ;80F068;
    JSR.W CODE_808973                    ;80F06B;
    PLD                                  ;80F06E;
    LDA.B #$04                           ;80F06F;
    STA.B $01                            ;80F071;
    RTS                                  ;80F073;

CODE_80F074:
    LDA.W $00A8                          ;80F074;
    AND.B #$D0                           ;80F077;
    BNE CODE_80F082                      ;80F079;
    LDA.W $00A7                          ;80F07B;
    AND.B #$C0                           ;80F07E;
    BEQ CODE_80F086                      ;80F080;

CODE_80F082:
    LDA.B #$06                           ;80F082;
    STA.B $01                            ;80F084;

CODE_80F086:
    RTS                                  ;80F086;

CODE_80F087:
    LDY.B #$04                           ;80F087;
    JSR.W CODE_808873                    ;80F089;
    PHD                                  ;80F08C;
    PEA.W $0000                          ;80F08D;
    PLD                                  ;80F090;
    JSR.W CODE_808995                    ;80F091;
    LDA.B #$07                           ;80F094;
    TSB.W $00A2                          ;80F096;
    JSR.W CODE_808100                    ;80F099;
    PLD                                  ;80F09C;
    STZ.B $00                            ;80F09D;
    STZ.B $01                            ;80F09F;
    STZ.B $02                            ;80F0A1;
    STZ.B $03                            ;80F0A3;
    RTS                                  ;80F0A5;

CODE_80F0A6:
    LDA.W $1F99                          ;80F0A6;
    STA.B $18                            ;80F0A9;
    LDA.W $1F9C                          ;80F0AB;
    STA.B $19                            ;80F0AE;
    LDX.B #$0E                           ;80F0B0;
    STZ.B $30                            ;80F0B2;

CODE_80F0B4:
    LDA.W $1F88,X                        ;80F0B4;
    ASL A                                ;80F0B7;
    ASL A                                ;80F0B8;
    ROL.B $30                            ;80F0B9;
    DEX                                  ;80F0BB;
    DEX                                  ;80F0BC;
    BPL CODE_80F0B4                      ;80F0BD;
    LDA.B $30                            ;80F0BF;
    STA.B $1A                            ;80F0C1;
    LDA.W $1F7E                          ;80F0C3;
    ASL A                                ;80F0C6;
    ROL A                                ;80F0C7;
    AND.B #$01                           ;80F0C8;
    STA.B $1B                            ;80F0CA;
    JSL.L CODE_849086                    ;80F0CC;
    AND.B #$E0                           ;80F0D0;
    TSB.B $1B                            ;80F0D2;
    LDA.W $1F9B                          ;80F0D4;
    BEQ CODE_80F0DD                      ;80F0D7;
    LDA.B #$10                           ;80F0D9;
    TSB.B $1B                            ;80F0DB;

CODE_80F0DD:
    LDX.B #$08                           ;80F0DD;
    LDY.B #$00                           ;80F0DF;
    LDA.B $18                            ;80F0E1;

CODE_80F0E3:
    LSR A                                ;80F0E3;
    BCC CODE_80F0E7                      ;80F0E4;
    INY                                  ;80F0E6;

CODE_80F0E7:
    DEX                                  ;80F0E7;
    BNE CODE_80F0E3                      ;80F0E8;
    TYA                                  ;80F0EA;
    AND.B #$01                           ;80F0EB;
    ASL A                                ;80F0ED;
    ASL A                                ;80F0EE;
    ASL A                                ;80F0EF;
    TSB.B $1B                            ;80F0F0;
    LDX.B #$08                           ;80F0F2;
    LDY.B #$00                           ;80F0F4;
    LDA.B $19                            ;80F0F6;

CODE_80F0F8:
    LSR A                                ;80F0F8;
    BCC CODE_80F0FC                      ;80F0F9;
    INY                                  ;80F0FB;

CODE_80F0FC:
    DEX                                  ;80F0FC;
    BNE CODE_80F0F8                      ;80F0FD;
    TYA                                  ;80F0FF;
    AND.B #$01                           ;80F100;
    ASL A                                ;80F102;
    ASL A                                ;80F103;
    TSB.B $1B                            ;80F104;
    LDX.B #$08                           ;80F106;
    LDY.B #$00                           ;80F108;
    LDA.B $1A                            ;80F10A;

CODE_80F10C:
    LSR A                                ;80F10C;
    BCC CODE_80F110                      ;80F10D;
    INY                                  ;80F10F;

CODE_80F110:
    DEX                                  ;80F110;
    BNE CODE_80F10C                      ;80F111;
    TYA                                  ;80F113;
    AND.B #$01                           ;80F114;
    ASL A                                ;80F116;
    TSB.B $1B                            ;80F117;
    LDA.B $18                            ;80F119;
    EOR.B $19                            ;80F11B;
    EOR.B $1A                            ;80F11D;
    EOR.B $1B                            ;80F11F;
    STA.B $30                            ;80F121;
    LSR A                                ;80F123;
    LSR A                                ;80F124;
    LSR A                                ;80F125;
    LSR A                                ;80F126;
    EOR.B $30                            ;80F127;
    AND.B #$0F                           ;80F129;
    STA.B $1C                            ;80F12B;
    LDA.B $1B                            ;80F12D;
    AND.B #$F0                           ;80F12F;
    STA.B $30                            ;80F131;
    LSR A                                ;80F133;
    LSR A                                ;80F134;
    LSR A                                ;80F135;
    LSR A                                ;80F136;
    TSB.B $30                            ;80F137;
    LDA.B $18                            ;80F139;
    EOR.B $30                            ;80F13B;
    STA.B $18                            ;80F13D;
    LDA.B $19                            ;80F13F;
    EOR.B $30                            ;80F141;
    STA.B $19                            ;80F143;
    LDA.B $1A                            ;80F145;
    EOR.B $30                            ;80F147;
    STA.B $1A                            ;80F149;
    LDX.B #$0B                           ;80F14B;

CODE_80F14D:
    STZ.B $30                            ;80F14D;
    LDA.W DATA8_86BD24,X                 ;80F14F;
    BEQ CODE_80F15B                      ;80F152;
    AND.B $18                            ;80F154;
    CMP.W DATA8_86BD24,X                 ;80F156;
    ROL.B $30                            ;80F159;

CODE_80F15B:
    LDA.W DATA8_86BD30,X                 ;80F15B;
    BEQ CODE_80F167                      ;80F15E;
    AND.B $19                            ;80F160;
    CMP.W DATA8_86BD30,X                 ;80F162;
    ROL.B $30                            ;80F165;

CODE_80F167:
    LDA.W DATA8_86BD3C,X                 ;80F167;
    BEQ CODE_80F173                      ;80F16A;
    AND.B $1A                            ;80F16C;
    CMP.W DATA8_86BD3C,X                 ;80F16E;
    ROL.B $30                            ;80F171;

CODE_80F173:
    LDA.W DATA8_86BD48,X                 ;80F173;
    BEQ CODE_80F17F                      ;80F176;
    AND.B $1B                            ;80F178;
    CMP.W DATA8_86BD48,X                 ;80F17A;
    ROL.B $30                            ;80F17D;

CODE_80F17F:
    LDA.W DATA8_86BD54,X                 ;80F17F;
    BEQ CODE_80F18B                      ;80F182;
    AND.B $1C                            ;80F184;
    CMP.W DATA8_86BD54,X                 ;80F186;
    ROL.B $30                            ;80F189;

CODE_80F18B:
    LDA.B $30                            ;80F18B;
    STA.B $0C,X                          ;80F18D;
    TXA                                  ;80F18F;
    ASL A                                ;80F190;
    ASL A                                ;80F191;
    ASL A                                ;80F192;
    CLC                                  ;80F193;
    ADC.B $30                            ;80F194;
    TAY                                  ;80F196;
    LDA.W DATA8_86BD6F,Y                 ;80F197;
    STA.L $7EFFCB,X                      ;80F19A;
    DEX                                  ;80F19E;
    BPL CODE_80F14D                      ;80F19F;
    RTS                                  ;80F1A1;

CODE_80F1A2:
    REP #$20                             ;80F1A2;
    STZ.B $24                            ;80F1A4;
    STZ.B $26                            ;80F1A6;
    STZ.B $28                            ;80F1A8;
    SEP #$20                             ;80F1AA;
    LDA.B #$0B                           ;80F1AC;
    STA.B $32                            ;80F1AE;

CODE_80F1B0:
    LDY.B #$00                           ;80F1B0;
    LDX.B $32                            ;80F1B2;
    LDA.B $0C,X                          ;80F1B4;
    ASL A                                ;80F1B6;
    ASL A                                ;80F1B7;
    ASL A                                ;80F1B8;
    ASL A                                ;80F1B9;
    ASL A                                ;80F1BA;
    STA.B $30                            ;80F1BB;
    JSR.W CODE_80F2E0                    ;80F1BD;
    JSR.W CODE_80F2E0                    ;80F1C0;
    JSR.W CODE_80F2E0                    ;80F1C3;
    DEC.B $32                            ;80F1C6;
    BPL CODE_80F1B0                      ;80F1C8;
    LDA.B $27                            ;80F1CA;
    AND.B #$F0                           ;80F1CC;
    STA.B $30                            ;80F1CE;
    LSR A                                ;80F1D0;
    LSR A                                ;80F1D1;
    LSR A                                ;80F1D2;
    LSR A                                ;80F1D3;
    TSB.B $30                            ;80F1D4;
    LDA.B $24                            ;80F1D6;
    EOR.B $30                            ;80F1D8;
    STA.B $24                            ;80F1DA;
    LDA.B $25                            ;80F1DC;
    EOR.B $30                            ;80F1DE;
    STA.B $25                            ;80F1E0;
    LDA.B $26                            ;80F1E2;
    EOR.B $30                            ;80F1E4;
    STA.B $26                            ;80F1E6;
    LDA.B $27                            ;80F1E8;
    AND.B #$10                           ;80F1EA;
    BNE CODE_80F201                      ;80F1EC;
    LDA.B $24                            ;80F1EE;
    BNE CODE_80F1FA                      ;80F1F0;
    LDA.B $25                            ;80F1F2;
    BNE CODE_80F1FA                      ;80F1F4;
    LDA.B $26                            ;80F1F6;
    BEQ CODE_80F201                      ;80F1F8;

CODE_80F1FA:
    LDA.B #$74                           ;80F1FA;
    JSL.L CODE_8088CD                    ;80F1FC;
    RTS                                  ;80F200;

CODE_80F201:
    LDA.B $24                            ;80F201;
    EOR.B $25                            ;80F203;
    EOR.B $26                            ;80F205;
    EOR.B $27                            ;80F207;
    STA.B $30                            ;80F209;
    LSR A                                ;80F20B;
    LSR A                                ;80F20C;
    LSR A                                ;80F20D;
    LSR A                                ;80F20E;
    EOR.B $30                            ;80F20F;
    AND.B #$0F                           ;80F211;
    CMP.B $28                            ;80F213;
    BNE CODE_80F1FA                      ;80F215;
    LDA.B $24                            ;80F217;
    STA.B $30                            ;80F219;
    LDA.B $27                            ;80F21B;
    LSR A                                ;80F21D;
    LSR A                                ;80F21E;
    LSR A                                ;80F21F;
    AND.B #$01                           ;80F220;
    STA.B $31                            ;80F222;
    JSR.W CODE_80F324                    ;80F224;
    BNE CODE_80F1FA                      ;80F227;
    LDA.B $25                            ;80F229;
    STA.B $30                            ;80F22B;
    LDA.B $27                            ;80F22D;
    LSR A                                ;80F22F;
    LSR A                                ;80F230;
    AND.B #$01                           ;80F231;
    STA.B $31                            ;80F233;
    JSR.W CODE_80F324                    ;80F235;
    BNE CODE_80F1FA                      ;80F238;
    LDA.B $26                            ;80F23A;
    STA.B $30                            ;80F23C;
    LDA.B $27                            ;80F23E;
    LSR A                                ;80F240;
    AND.B #$01                           ;80F241;
    STA.B $31                            ;80F243;
    JSR.W CODE_80F324                    ;80F245;
    BNE CODE_80F1FA                      ;80F248;
    LDA.B $24                            ;80F24A;
    STA.W $1F99                          ;80F24C;
    AND.B #$F0                           ;80F24F;
    STA.B $30                            ;80F251;
    STZ.W $1F83                          ;80F253;
    STZ.W $1F84                          ;80F256;
    STZ.W $1F85                          ;80F259;
    STZ.W $1F86                          ;80F25C;
    LDX.B #$00                           ;80F25F;

CODE_80F261:
    LDA.B $30                            ;80F261;
    AND.B #$80                           ;80F263;
    BEQ CODE_80F26B                      ;80F265;
    STA.W $1F83,X                        ;80F267;
    INX                                  ;80F26A;

CODE_80F26B:
    ASL.B $30                            ;80F26B;
    BNE CODE_80F261                      ;80F26D;
    LDA.B $25                            ;80F26F;
    STA.W $1F9C                          ;80F271;
    LDY.B #$00                           ;80F274;

CODE_80F276:
    LSR A                                ;80F276;
    BCC CODE_80F27A                      ;80F277;
    INY                                  ;80F279;

CODE_80F27A:
    CMP.B #$00                           ;80F27A;
    BNE CODE_80F276                      ;80F27C;
    TYA                                  ;80F27E;
    ASL A                                ;80F27F;
    CLC                                  ;80F280;
    ADC.B #$10                           ;80F281;
    STA.W $1F9A                          ;80F283;
    STZ.W $1F7C                          ;80F286;
    LDA.B $26                            ;80F289;
    STA.B $30                            ;80F28B;
    CMP.B #$FF                           ;80F28D;
    BNE CODE_80F296                      ;80F28F;
    LDA.B #$40                           ;80F291;
    STA.W $1F7C                          ;80F293;

CODE_80F296:
    LDX.B #$0F                           ;80F296;

CODE_80F298:
    ASL.B $30                            ;80F298;
    BCC CODE_80F2A3                      ;80F29A;
    LDA.B #$40                           ;80F29C;
    STA.W $1F87,X                        ;80F29E;
    BRA CODE_80F2A6                      ;80F2A1;

CODE_80F2A3:
    STZ.W $1F87,X                        ;80F2A3;

CODE_80F2A6:
    DEX                                  ;80F2A6;
    DEX                                  ;80F2A7;
    BPL CODE_80F298                      ;80F2A8;
    LDA.B #$40                           ;80F2AA;
    STA.W $1F98                          ;80F2AC;
    LDA.B $27                            ;80F2AF;
    LSR A                                ;80F2B1;
    BCC CODE_80F2B9                      ;80F2B2;
    LDA.B #$80                           ;80F2B4;
    STA.W $1F7E                          ;80F2B6;

CODE_80F2B9:
    LDA.B $27                            ;80F2B9;
    AND.B #$10                           ;80F2BB;
    STA.W $1F9B                          ;80F2BD;
    LDA.B #$02                           ;80F2C0;
    STA.W $1F80                          ;80F2C2;
    STZ.W $1F7B                          ;80F2C5;
    STZ.W $1F7A                          ;80F2C8;
    REP #$20                             ;80F2CB;
    LDA.W $00A7                          ;80F2CD;
    AND.W #$0470                         ;80F2D0;
    CMP.W #$0470                         ;80F2D3;
    SEP #$20                             ;80F2D6;
    BEQ CODE_80F2DD                      ;80F2D8;
    STZ.W $1F7E                          ;80F2DA;

CODE_80F2DD:
    LDA.B #$00                           ;80F2DD;
    RTS                                  ;80F2DF;

CODE_80F2E0:
    TYA                                  ;80F2E0;
    ASL A                                ;80F2E1;
    ASL A                                ;80F2E2;
    STA.B $33                            ;80F2E3;
    ASL A                                ;80F2E5;
    ADC.B $33                            ;80F2E6;
    CLC                                  ;80F2E8;
    ADC.B $32                            ;80F2E9;
    TAX                                  ;80F2EB;
    LDA.W DATA8_86BD24,X                 ;80F2EC;
    BNE CODE_80F2F4                      ;80F2EF;
    INY                                  ;80F2F1;
    BRA CODE_80F2E0                      ;80F2F2;

CODE_80F2F4:
    TYX                                  ;80F2F4;
    ASL.B $30                            ;80F2F5;
    BCC CODE_80F2FD                      ;80F2F7;
    ORA.B $24,X                          ;80F2F9;
    STA.B $24,X                          ;80F2FB;

CODE_80F2FD:
    INY                                  ;80F2FD;
    RTS                                  ;80F2FE;

CODE_80F2FF:
    LDX.B #$0B                           ;80F2FF;

CODE_80F301:
    TXA                                  ;80F301;
    ASL A                                ;80F302;
    ASL A                                ;80F303;
    ASL A                                ;80F304;
    REP #$20                             ;80F305;
    AND.W #$00FF                         ;80F307;
    CLC                                  ;80F30A;
    ADC.W #$BD6F                         ;80F30B;
    STA.B $30                            ;80F30E;
    SEP #$20                             ;80F310;
    LDY.B #$07                           ;80F312;

CODE_80F314:
    LDA.B ($30),Y                        ;80F314;
    CMP.B $18,X                          ;80F316;
    BEQ CODE_80F31D                      ;80F318;
    DEY                                  ;80F31A;
    BRA CODE_80F314                      ;80F31B;

CODE_80F31D:
    TYA                                  ;80F31D;
    STA.B $0C,X                          ;80F31E;
    DEX                                  ;80F320;
    BPL CODE_80F301                      ;80F321;
    RTS                                  ;80F323;

CODE_80F324:
    LDX.B #$00                           ;80F324;
    LDA.B $30                            ;80F326;

CODE_80F328:
    LSR A                                ;80F328;
    BCC CODE_80F32C                      ;80F329;
    INX                                  ;80F32B;

CODE_80F32C:
    CMP.B #$00                           ;80F32C;
    BNE CODE_80F328                      ;80F32E;
    TXA                                  ;80F330;
    EOR.B $31                            ;80F331;
    AND.B #$01                           ;80F333;
    RTS                                  ;80F335;

PTR16_80F336:
    dw CODE_80F364                       ;80F336;
    dw CODE_80F365                       ;80F338;
    dw CODE_80F36A                       ;80F33A;
    dw CODE_80F36F                       ;80F33C;
    dw CODE_80F374                       ;80F33E;
    dw CODE_80F379                       ;80F340;
    dw CODE_80F37E                       ;80F342;
    dw CODE_80F37F                       ;80F344;
    dw CODE_80F384                       ;80F346;
    dw CODE_80F389                       ;80F348;
    dw CODE_80F38E                       ;80F34A;
    dw CODE_80F393                       ;80F34C;
    dw CODE_80F398                       ;80F34E;
    dw CODE_80F39D                       ;80F350;
    dw CODE_80F3A2                       ;80F352;
    dw CODE_80F3A7                       ;80F354;
    dw CODE_80F3AC                       ;80F356;
    dw CODE_80F3B1                       ;80F358;
    dw CODE_80F3B6                       ;80F35A;
    dw CODE_80F3BB                       ;80F35C;
    dw CODE_80F3C0                       ;80F35E;
    dw CODE_80F3C5                       ;80F360;
    dw CODE_80F3CA                       ;80F362;

CODE_80F364:
    RTS                                  ;80F364;

CODE_80F365:
    JSL.L CODE_81DEA7                    ;80F365;
    RTS                                  ;80F369;

CODE_80F36A:
    JSL.L CODE_82E33B                    ;80F36A;
    RTS                                  ;80F36E;

CODE_80F36F:
    JSL.L CODE_81E15B                    ;80F36F;
    RTS                                  ;80F373;

CODE_80F374:
    JSL.L CODE_81E32A                    ;80F374;
    RTS                                  ;80F378;

CODE_80F379:
    JSL.L CODE_81E4AB                    ;80F379;
    RTS                                  ;80F37D;

CODE_80F37E:
    RTS                                  ;80F37E;

CODE_80F37F:
    JSL.L CODE_81E6B5                    ;80F37F;
    RTS                                  ;80F383;

CODE_80F384:
    JSL.L CODE_82E5CF                    ;80F384;
    RTS                                  ;80F388;

CODE_80F389:
    JSL.L CODE_82E720                    ;80F389;
    RTS                                  ;80F38D;

CODE_80F38E:
    JSL.L CODE_82EABD                    ;80F38E;
    RTS                                  ;80F392;

CODE_80F393:
    JSL.L CODE_81E982                    ;80F393;
    RTS                                  ;80F397;

CODE_80F398:
    JSL.L CODE_82EBC1                    ;80F398;
    RTS                                  ;80F39C;

CODE_80F39D:
    JSL.L CODE_83EF35                    ;80F39D;
    RTS                                  ;80F3A1;

CODE_80F3A2:
    JSL.L CODE_83EFFE                    ;80F3A2;
    RTS                                  ;80F3A6;

CODE_80F3A7:
    JSL.L CODE_83F137                    ;80F3A7;
    RTS                                  ;80F3AB;

CODE_80F3AC:
    JSL.L CODE_87EE82                    ;80F3AC;
    RTS                                  ;80F3B0;

CODE_80F3B1:
    JSL.L CODE_87EF19                    ;80F3B1;
    RTS                                  ;80F3B5;

CODE_80F3B6:
    JSL.L CODE_87EF92                    ;80F3B6;
    RTS                                  ;80F3BA;

CODE_80F3BB:
    JSL.L CODE_83F27D                    ;80F3BB;
    RTS                                  ;80F3BF;

CODE_80F3C0:
    JSL.L CODE_83F360                    ;80F3C0;
    RTS                                  ;80F3C4;

CODE_80F3C5:
    JSL.L CODE_81EBA8                    ;80F3C5;
    RTS                                  ;80F3C9;

CODE_80F3CA:
    JSL.L CODE_81EC40                    ;80F3CA;
    RTS                                  ;80F3CE;

PTR16_80F3CF:
    dw CODE_80F45B                       ;80F3CF;
    dw CODE_80F45C                       ;80F3D1;
    dw CODE_80F461                       ;80F3D3;
    dw CODE_80F466                       ;80F3D5;
    dw CODE_80F46B                       ;80F3D7;
    dw CODE_80F470                       ;80F3D9;
    dw CODE_80F475                       ;80F3DB;
    dw CODE_80F47A                       ;80F3DD;
    dw CODE_80F47F                       ;80F3DF;
    dw CODE_80F484                       ;80F3E1;
    dw CODE_80F489                       ;80F3E3;
    dw CODE_80F48E                       ;80F3E5;
    dw CODE_80F493                       ;80F3E7;
    dw CODE_80F498                       ;80F3E9;
    dw CODE_80F49D                       ;80F3EB;
    dw CODE_80F4A2                       ;80F3ED;
    dw CODE_80F4A7                       ;80F3EF;
    dw CODE_80F4AC                       ;80F3F1;
    dw CODE_80F4B1                       ;80F3F3;
    dw CODE_80F4B6                       ;80F3F5;
    dw CODE_80F4BB                       ;80F3F7;
    dw CODE_80F4BC                       ;80F3F9;
    dw CODE_80F4BD                       ;80F3FB;
    dw CODE_80F4C2                       ;80F3FD;
    dw CODE_80F4C7                       ;80F3FF;
    dw CODE_80F4CC                       ;80F401;
    dw CODE_80F4D1                       ;80F403;
    dw CODE_80F4D6                       ;80F405;
    dw CODE_80F4DB                       ;80F407;
    dw CODE_80F4E0                       ;80F409;
    dw CODE_80F4E1                       ;80F40B;
    dw CODE_80F4E6                       ;80F40D;
    dw CODE_80F4EB                       ;80F40F;
    dw CODE_80F4F0                       ;80F411;
    dw CODE_80F4F5                       ;80F413;
    dw CODE_80F4FA                       ;80F415;
    dw CODE_80F4FF                       ;80F417;
    dw CODE_80F504                       ;80F419;
    dw CODE_80F509                       ;80F41B;
    dw CODE_80F50E                       ;80F41D;
    dw CODE_80F513                       ;80F41F;
    dw CODE_80F518                       ;80F421;
    dw CODE_80F51D                       ;80F423;
    dw CODE_80F522                       ;80F425;
    dw CODE_80F527                       ;80F427;
    dw CODE_80F52C                       ;80F429;
    dw CODE_80F531                       ;80F42B;
    dw CODE_80F536                       ;80F42D;
    dw CODE_80F53B                       ;80F42F;
    dw CODE_80F540                       ;80F431;
    dw CODE_80F545                       ;80F433;
    dw CODE_80F54A                       ;80F435;
    dw CODE_80F54F                       ;80F437;
    dw CODE_80F554                       ;80F439;
    dw CODE_80F559                       ;80F43B;
    dw CODE_80F55E                       ;80F43D;
    dw CODE_80F563                       ;80F43F;
    dw CODE_80F568                       ;80F441;
    dw CODE_80F56D                       ;80F443;
    dw CODE_80F572                       ;80F445;
    dw CODE_80F577                       ;80F447;
    dw CODE_80F57C                       ;80F449;
    dw CODE_80F581                       ;80F44B;
    dw CODE_80F586                       ;80F44D;
    dw CODE_80F58B                       ;80F44F;
    dw CODE_80F590                       ;80F451;
    dw CODE_80F595                       ;80F453;
    dw CODE_80F59A                       ;80F455;
    dw CODE_80F59F                       ;80F457;
    dw CODE_80F5A4                       ;80F459;

CODE_80F45B:
    RTS                                  ;80F45B;

CODE_80F45C:
    JSL.L CODE_81EE1B                    ;80F45C;
    RTS                                  ;80F460;

CODE_80F461:
    JSL.L CODE_81EE87                    ;80F461;
    RTS                                  ;80F465;

CODE_80F466:
    JSL.L CODE_81EEB7                    ;80F466;
    RTS                                  ;80F46A;

CODE_80F46B:
    JSL.L CODE_81EF0A                    ;80F46B;
    RTS                                  ;80F46F;

CODE_80F470:
    JSL.L CODE_81EF6B                    ;80F470;
    RTS                                  ;80F474;

CODE_80F475:
    JSL.L CODE_88E939                    ;80F475;
    RTS                                  ;80F479;

CODE_80F47A:
    JSL.L CODE_88E9BA                    ;80F47A;
    RTS                                  ;80F47E;

CODE_80F47F:
    JSL.L CODE_81BE11                    ;80F47F;
    RTS                                  ;80F483;

CODE_80F484:
    JSL.L CODE_81EFF1                    ;80F484;
    RTS                                  ;80F488;

CODE_80F489:
    JSL.L CODE_81F081                    ;80F489;
    RTS                                  ;80F48D;

CODE_80F48E:
    JSL.L CODE_81F0C7                    ;80F48E;
    RTS                                  ;80F492;

CODE_80F493:
    JSL.L CODE_81F11D                    ;80F493;
    RTS                                  ;80F497;

CODE_80F498:
    JSL.L CODE_81F1DB                    ;80F498;
    RTS                                  ;80F49C;

CODE_80F49D:
    JSL.L CODE_81F2C6                    ;80F49D;
    RTS                                  ;80F4A1;

CODE_80F4A2:
    JSL.L CODE_81F35E                    ;80F4A2;
    RTS                                  ;80F4A6;

CODE_80F4A7:
    JSL.L CODE_82ED9E                    ;80F4A7;
    RTS                                  ;80F4AB;

CODE_80F4AC:
    JSL.L CODE_81F3F0                    ;80F4AC;
    RTS                                  ;80F4B0;

CODE_80F4B1:
    JSL.L CODE_81F427                    ;80F4B1;
    RTS                                  ;80F4B5;

CODE_80F4B6:
    JSL.L CODE_82EE19                    ;80F4B6;
    RTS                                  ;80F4BA;

CODE_80F4BB:
    RTS                                  ;80F4BB;

CODE_80F4BC:
    RTS                                  ;80F4BC;

CODE_80F4BD:
    JSL.L CODE_81F483                    ;80F4BD;
    RTS                                  ;80F4C1;

CODE_80F4C2:
    JSL.L CODE_82EE62                    ;80F4C2;
    RTS                                  ;80F4C6;

CODE_80F4C7:
    JSL.L CODE_82EF0D                    ;80F4C7;
    RTS                                  ;80F4CB;

CODE_80F4CC:
    JSL.L CODE_82F033                    ;80F4CC;
    RTS                                  ;80F4D0;

CODE_80F4D1:
    JSL.L CODE_82F10F                    ;80F4D1;
    RTS                                  ;80F4D5;

CODE_80F4D6:
    JSL.L CODE_82F18B                    ;80F4D6;
    RTS                                  ;80F4DA;

CODE_80F4DB:
    JSL.L CODE_82F353                    ;80F4DB;
    RTS                                  ;80F4DF;

CODE_80F4E0:
    RTS                                  ;80F4E0;

CODE_80F4E1:
    JSL.L CODE_82F3C9                    ;80F4E1;
    RTS                                  ;80F4E5;

CODE_80F4E6:
    JSL.L CODE_82F45E                    ;80F4E6;
    RTS                                  ;80F4EA;

CODE_80F4EB:
    JSL.L CODE_82F4E0                    ;80F4EB;
    RTS                                  ;80F4EF;

CODE_80F4F0:
    JSL.L CODE_82F54D                    ;80F4F0;
    RTS                                  ;80F4F4;

CODE_80F4F5:
    JSL.L CODE_82F611                    ;80F4F5;
    RTS                                  ;80F4F9;

CODE_80F4FA:
    JSL.L CODE_82F637                    ;80F4FA;
    RTS                                  ;80F4FE;

CODE_80F4FF:
    JSL.L CODE_82F689                    ;80F4FF;
    RTS                                  ;80F503;

CODE_80F504:
    JSL.L CODE_82F6EF                    ;80F504;
    RTS                                  ;80F508;

CODE_80F509:
    JSL.L CODE_82F75E                    ;80F509;
    RTS                                  ;80F50D;

CODE_80F50E:
    JSL.L CODE_82F7C1                    ;80F50E;
    RTS                                  ;80F512;

CODE_80F513:
    JSL.L CODE_83F40F                    ;80F513;
    RTS                                  ;80F517;

CODE_80F518:
    JSL.L CODE_83F49D                    ;80F518;
    RTS                                  ;80F51C;

CODE_80F51D:
    JSL.L CODE_83F51A                    ;80F51D;
    RTS                                  ;80F521;

CODE_80F522:
    JSL.L CODE_83F945                    ;80F522;
    RTS                                  ;80F526;

CODE_80F527:
    JSL.L CODE_83F9F4                    ;80F527;
    RTS                                  ;80F52B;

CODE_80F52C:
    JSL.L CODE_83FA36                    ;80F52C;
    RTS                                  ;80F530;

CODE_80F531:
    JSL.L CODE_87F110                    ;80F531;
    RTS                                  ;80F535;

CODE_80F536:
    JSL.L CODE_83FACF                    ;80F536;
    RTS                                  ;80F53A;

CODE_80F53B:
    JSL.L CODE_88EA33                    ;80F53B;
    RTS                                  ;80F53F;

CODE_80F540:
    JSL.L CODE_82F8FE                    ;80F540;
    RTS                                  ;80F544;

CODE_80F545:
    JSL.L CODE_82F942                    ;80F545;
    RTS                                  ;80F549;

CODE_80F54A:
    JSL.L CODE_82F9DA                    ;80F54A;
    RTS                                  ;80F54E;

CODE_80F54F:
    JSL.L CODE_87F3C0                    ;80F54F;
    RTS                                  ;80F553;

CODE_80F554:
    JSL.L CODE_86E3A0                    ;80F554;
    RTS                                  ;80F558;

CODE_80F559:
    JSL.L CODE_87F42A                    ;80F559;
    RTS                                  ;80F55D;

CODE_80F55E:
    JSL.L CODE_82FA6A                    ;80F55E;
    RTS                                  ;80F562;

CODE_80F563:
    JSL.L CODE_87F477                    ;80F563;
    RTS                                  ;80F567;

CODE_80F568:
    JSL.L CODE_87F56F                    ;80F568;
    RTS                                  ;80F56C;

CODE_80F56D:
    JSL.L CODE_87F5FF                    ;80F56D;
    RTS                                  ;80F571;

CODE_80F572:
    JSL.L CODE_82FAEA                    ;80F572;
    RTS                                  ;80F576;

CODE_80F577:
    JSL.L CODE_82E28B                    ;80F577;
    RTS                                  ;80F57B;

CODE_80F57C:
    JSL.L CODE_80A961                    ;80F57C;
    RTS                                  ;80F580;

CODE_80F581:
    JSL.L CODE_88EB44                    ;80F581;
    RTS                                  ;80F585;

CODE_80F586:
    JSL.L CODE_88E364                    ;80F586;
    RTS                                  ;80F58A;

CODE_80F58B:
    JSL.L CODE_80AB58                    ;80F58B;
    RTS                                  ;80F58F;

CODE_80F590:
    JSL.L CODE_88E3DE                    ;80F590;
    RTS                                  ;80F594;

CODE_80F595:
    JSL.L CODE_88D852                    ;80F595;
    RTS                                  ;80F599;

CODE_80F59A:
    JSL.L CODE_88CF4A                    ;80F59A;
    RTS                                  ;80F59E;

CODE_80F59F:
    JSL.L CODE_83F781                    ;80F59F;
    RTS                                  ;80F5A3;

CODE_80F5A4:
    JSL.L CODE_88EA64                    ;80F5A4;
    RTS                                  ;80F5A8;

PTR16_80F5A9:
    dw CODE_80F5AB                       ;80F5A9;

CODE_80F5AB:
    JSL.L CODE_81A133                    ;80F5AB;
    RTS                                  ;80F5AF;

PTR16_80F5B0:
    dw CODE_80F5F6                       ;80F5B0;
    dw CODE_80F5FB                       ;80F5B2;
    dw CODE_80F600                       ;80F5B4;
    dw CODE_80F605                       ;80F5B6;
    dw CODE_80F60A                       ;80F5B8;
    dw CODE_80F60F                       ;80F5BA;
    dw CODE_80F614                       ;80F5BC;
    dw CODE_80F619                       ;80F5BE;
    dw CODE_80F61E                       ;80F5C0;
    dw CODE_80F623                       ;80F5C2;
    dw CODE_80F628                       ;80F5C4;
    dw CODE_80F62D                       ;80F5C6;
    dw CODE_80F632                       ;80F5C8;
    dw CODE_80F637                       ;80F5CA;
    dw CODE_80F63C                       ;80F5CC;
    dw CODE_80F641                       ;80F5CE;
    dw CODE_80F646                       ;80F5D0;
    dw CODE_80F64B                       ;80F5D2;
    dw CODE_80F650                       ;80F5D4;
    dw CODE_80F655                       ;80F5D6;
    dw CODE_80F65A                       ;80F5D8;
    dw CODE_80F65F                       ;80F5DA;
    dw CODE_80F664                       ;80F5DC;
    dw CODE_80F669                       ;80F5DE;
    dw CODE_80F66E                       ;80F5E0;
    dw CODE_80F673                       ;80F5E2;
    dw CODE_80F678                       ;80F5E4;
    dw CODE_80F67D                       ;80F5E6;
    dw CODE_80F682                       ;80F5E8;
    dw CODE_80F687                       ;80F5EA;
    dw CODE_80F68C                       ;80F5EC;
    dw CODE_80F691                       ;80F5EE;
    dw CODE_80F696                       ;80F5F0;
    dw CODE_80F69B                       ;80F5F2;
    dw CODE_80F6A0                       ;80F5F4;

CODE_80F5F6:
    JSL.L CODE_81F69B                    ;80F5F6;
    RTS                                  ;80F5FA;

CODE_80F5FB:
    JSL.L CODE_81F762                    ;80F5FB;
    RTS                                  ;80F5FF;

CODE_80F600:
    JSL.L CODE_87F797                    ;80F600;
    RTS                                  ;80F604;

CODE_80F605:
    JSL.L CODE_81F875                    ;80F605;
    RTS                                  ;80F609;

CODE_80F60A:
    JSL.L CODE_81F91A                    ;80F60A;
    RTS                                  ;80F60E;

CODE_80F60F:
    JSL.L CODE_81FC47                    ;80F60F;
    RTS                                  ;80F613;

CODE_80F614:
    JSL.L CODE_81FCDD                    ;80F614;
    RTS                                  ;80F618;

CODE_80F619:
    JSL.L CODE_81FD6C                    ;80F619;
    RTS                                  ;80F61D;

CODE_80F61E:
    JSL.L CODE_87F8A0                    ;80F61E;
    RTS                                  ;80F622;

CODE_80F623:
    JSL.L CODE_81FDF9                    ;80F623;
    RTS                                  ;80F627;

CODE_80F628:
    JSL.L CODE_81FE86                    ;80F628;
    RTS                                  ;80F62C;

CODE_80F62D:
    JSL.L CODE_81FF12                    ;80F62D;
    RTS                                  ;80F631;

CODE_80F632:
    JSL.L CODE_88EBBA                    ;80F632;
    RTS                                  ;80F636;

CODE_80F637:
    JSL.L CODE_88EBE7                    ;80F637;
    RTS                                  ;80F63B;

CODE_80F63C:
    JSL.L CODE_82FB2F                    ;80F63C;
    RTS                                  ;80F640;

CODE_80F641:
    JSL.L CODE_82FB6D                    ;80F641;
    RTS                                  ;80F645;

CODE_80F646:
    JSL.L CODE_82FCA9                    ;80F646;
    RTS                                  ;80F64A;

CODE_80F64B:
    JSL.L CODE_82FD03                    ;80F64B;
    RTS                                  ;80F64F;

CODE_80F650:
    JSL.L CODE_82FDC6                    ;80F650;
    RTS                                  ;80F654;

CODE_80F655:
    JSL.L CODE_82FE07                    ;80F655;
    RTS                                  ;80F659;

CODE_80F65A:
    JSL.L CODE_82FE49                    ;80F65A;
    RTS                                  ;80F65E;

CODE_80F65F:
    JSL.L CODE_83FD7B                    ;80F65F;
    RTS                                  ;80F663;

CODE_80F664:
    JSL.L CODE_83FD7B                    ;80F664;
    RTS                                  ;80F668;

CODE_80F669:
    JSL.L CODE_83FD7B                    ;80F669;
    RTS                                  ;80F66D;

CODE_80F66E:
    JSL.L CODE_83FD7B                    ;80F66E;
    RTS                                  ;80F672;

CODE_80F673:
    JSL.L CODE_83FD7B                    ;80F673;
    RTS                                  ;80F677;

CODE_80F678:
    JSL.L CODE_83FD7B                    ;80F678;
    RTS                                  ;80F67C;

CODE_80F67D:
    JSL.L CODE_83FE44                    ;80F67D;
    RTS                                  ;80F681;

CODE_80F682:
    JSL.L CODE_83FEA0                    ;80F682;
    RTS                                  ;80F686;

CODE_80F687:
    JSL.L CODE_87FB40                    ;80F687;
    RTS                                  ;80F68B;

CODE_80F68C:
    JSL.L CODE_82FE74                    ;80F68C;
    RTS                                  ;80F690;

CODE_80F691:
    JSL.L CODE_87FCE7                    ;80F691;
    RTS                                  ;80F695;

CODE_80F696:
    JSL.L CODE_87FD4F                    ;80F696;
    RTS                                  ;80F69A;

CODE_80F69B:
    JSL.L CODE_87FDC7                    ;80F69B;
    RTS                                  ;80F69F;

CODE_80F6A0:
    JSL.L CODE_82FF5C                    ;80F6A0;
    RTS                                  ;80F6A4;

PTR16_80F6A5:
    dw CODE_80F6E1                       ;80F6A5;
    dw CODE_80F6E6                       ;80F6A7;
    dw CODE_80F6EB                       ;80F6A9;
    dw CODE_80F6F0                       ;80F6AB;
    dw CODE_80F6F5                       ;80F6AD;
    dw CODE_80F6FA                       ;80F6AF;
    dw CODE_80F6FF                       ;80F6B1;
    dw CODE_80F704                       ;80F6B3;
    dw CODE_80F709                       ;80F6B5;
    dw CODE_80F70E                       ;80F6B7;
    dw CODE_80F713                       ;80F6B9;
    dw CODE_80F718                       ;80F6BB;
    dw CODE_80F71D                       ;80F6BD;
    dw CODE_80F722                       ;80F6BF;
    dw CODE_80F727                       ;80F6C1;
    dw CODE_80F72C                       ;80F6C3;
    dw CODE_80F731                       ;80F6C5;
    dw CODE_80F736                       ;80F6C7;
    dw CODE_80F73B                       ;80F6C9;
    dw CODE_80F740                       ;80F6CB;
    dw CODE_80F745                       ;80F6CD;
    dw CODE_80F74A                       ;80F6CF;
    dw CODE_80F74F                       ;80F6D1;
    dw CODE_80F754                       ;80F6D3;
    dw CODE_80F759                       ;80F6D5;
    dw CODE_80F75E                       ;80F6D7;
    dw CODE_80F763                       ;80F6D9;
    dw CODE_80F768                       ;80F6DB;
    dw CODE_80F76D                       ;80F6DD;
    dw CODE_80F772                       ;80F6DF;

CODE_80F6E1:
    JSL.L CODE_81A21E                    ;80F6E1;
    RTS                                  ;80F6E5;

CODE_80F6E6:
    JSL.L CODE_81A2C8                    ;80F6E6;
    RTS                                  ;80F6EA;

CODE_80F6EB:
    JSL.L CODE_83898E                    ;80F6EB;
    RTS                                  ;80F6EF;

CODE_80F6F0:
    JSL.L CODE_838C3E                    ;80F6F0;
    RTS                                  ;80F6F4;

CODE_80F6F5:
    JSL.L CODE_838DAF                    ;80F6F5;
    RTS                                  ;80F6F9;

CODE_80F6FA:
    JSL.L CODE_81A408                    ;80F6FA;
    RTS                                  ;80F6FE;

CODE_80F6FF:
    JSL.L CODE_81A4C2                    ;80F6FF;
    RTS                                  ;80F703;

CODE_80F704:
    JSL.L CODE_838E9D                    ;80F704;
    RTS                                  ;80F708;

CODE_80F709:
    JSL.L CODE_8391D2                    ;80F709;
    RTS                                  ;80F70D;

CODE_80F70E:
    JSL.L CODE_8392EC                    ;80F70E;
    RTS                                  ;80F712;

CODE_80F713:
    JSL.L CODE_83943D                    ;80F713;
    RTS                                  ;80F717;

CODE_80F718:
    JSL.L CODE_839550                    ;80F718;
    RTS                                  ;80F71C;

CODE_80F71D:
    JSL.L CODE_83965B                    ;80F71D;
    RTS                                  ;80F721;

CODE_80F722:
    JSL.L CODE_8283B0                    ;80F722;
    RTS                                  ;80F726;

CODE_80F727:
    JSL.L CODE_839807                    ;80F727;
    RTS                                  ;80F72B;

CODE_80F72C:
    JSL.L CODE_839550                    ;80F72C;
    RTS                                  ;80F730;

CODE_80F731:
    JSL.L CODE_83995D                    ;80F731;
    RTS                                  ;80F735;

CODE_80F736:
    JSL.L CODE_839B7D                    ;80F736;
    RTS                                  ;80F73A;

CODE_80F73B:
    JSL.L CODE_839C53                    ;80F73B;
    RTS                                  ;80F73F;

CODE_80F740:
    JSL.L CODE_839DD4                    ;80F740;
    RTS                                  ;80F744;

CODE_80F745:
    JSL.L CODE_839FAA                    ;80F745;
    RTS                                  ;80F749;

CODE_80F74A:
    JSL.L CODE_83A0DA                    ;80F74A;
    RTS                                  ;80F74E;

CODE_80F74F:
    JSL.L CODE_83A1DB                    ;80F74F;
    RTS                                  ;80F753;

CODE_80F754:
    JSL.L CODE_83A391                    ;80F754;
    RTS                                  ;80F758;

CODE_80F759:
    JSL.L CODE_839550                    ;80F759;
    RTS                                  ;80F75D;

CODE_80F75E:
    JSL.L CODE_81A700                    ;80F75E;
    RTS                                  ;80F762;

CODE_80F763:
    JSL.L CODE_81A700                    ;80F763;
    RTS                                  ;80F767;

CODE_80F768:
    JSL.L CODE_81A751                    ;80F768;
    RTS                                  ;80F76C;

CODE_80F76D:
    JSL.L CODE_81A5AC                    ;80F76D;
    RTS                                  ;80F771;

CODE_80F772:
    JSL.L CODE_83A59B                    ;80F772;
    RTS                                  ;80F776;

PTR16_80F777:
    dw CODE_80F77F                       ;80F777;
    dw CODE_80F784                       ;80F779;
    dw CODE_80F789                       ;80F77B;
    dw CODE_80F78E                       ;80F77D;

CODE_80F77F:
    JSL.L CODE_81A163                    ;80F77F;
    RTS                                  ;80F783;

CODE_80F784:
    JSL.L CODE_81A1B5                    ;80F784;
    RTS                                  ;80F788;

CODE_80F789:
    JSL.L CODE_878236                    ;80F789;
    RTS                                  ;80F78D;

CODE_80F78E:
    JSL.L CODE_8782CC                    ;80F78E;
    RTS                                  ;80F792;

PTR16_80F793:
    dw CODE_80F7F9                       ;80F793;
    dw CODE_80F7F9                       ;80F795;
    dw CODE_80F7FE                       ;80F797;
    dw CODE_80F803                       ;80F799;
    dw CODE_80F808                       ;80F79B;
    dw CODE_80F80D                       ;80F79D;
    dw CODE_80F812                       ;80F79F;
    dw CODE_80F817                       ;80F7A1;
    dw CODE_80F81C                       ;80F7A3;
    dw CODE_80F821                       ;80F7A5;
    dw CODE_80F826                       ;80F7A7;
    dw CODE_80F82B                       ;80F7A9;
    dw CODE_80F830                       ;80F7AB;
    dw CODE_80F835                       ;80F7AD;
    dw CODE_80F83A                       ;80F7AF;
    dw CODE_80F83F                       ;80F7B1;
    dw CODE_80F844                       ;80F7B3;
    dw CODE_80F849                       ;80F7B5;
    dw CODE_80F84E                       ;80F7B7;
    dw CODE_80F853                       ;80F7B9;
    dw CODE_80F858                       ;80F7BB;
    dw CODE_80F85D                       ;80F7BD;
    dw CODE_80F862                       ;80F7BF;
    dw CODE_80F867                       ;80F7C1;
    dw CODE_80F86C                       ;80F7C3;
    dw CODE_80F871                       ;80F7C5;
    dw CODE_80F876                       ;80F7C7;
    dw CODE_80F87B                       ;80F7C9;
    dw CODE_80F880                       ;80F7CB;
    dw CODE_80F885                       ;80F7CD;
    dw CODE_80F88A                       ;80F7CF;
    dw CODE_80F88F                       ;80F7D1;
    dw CODE_80F894                       ;80F7D3;
    dw CODE_80F899                       ;80F7D5;
    dw CODE_80F89E                       ;80F7D7;
    dw CODE_80F8A3                       ;80F7D9;
    dw CODE_80F8A8                       ;80F7DB;
    dw CODE_80F8AD                       ;80F7DD;
    dw CODE_80F8B2                       ;80F7DF;
    dw CODE_80F8B7                       ;80F7E1;
    dw CODE_80F8BC                       ;80F7E3;
    dw CODE_80F8C1                       ;80F7E5;
    dw CODE_80F8C6                       ;80F7E7;
    dw CODE_80F8CB                       ;80F7E9;
    dw CODE_80F8D0                       ;80F7EB;
    dw CODE_80F8D5                       ;80F7ED;
    dw CODE_80F8DA                       ;80F7EF;
    dw CODE_80F8DF                       ;80F7F1;
    dw CODE_80F8E4                       ;80F7F3;
    dw CODE_80F8E9                       ;80F7F5;
    dw CODE_80F8EE                       ;80F7F7;

CODE_80F7F9:
    JSL.L CODE_81A799                    ;80F7F9;
    RTS                                  ;80F7FD;

CODE_80F7FE:
    JSL.L CODE_829B7B                    ;80F7FE;
    RTS                                  ;80F802;

CODE_80F803:
    JSL.L CODE_81AB24                    ;80F803;
    RTS                                  ;80F807;

CODE_80F808:
    JSL.L CODE_83B93B                    ;80F808;
    RTS                                  ;80F80C;

CODE_80F80D:
    JSL.L CODE_81ABFC                    ;80F80D;
    RTS                                  ;80F811;

CODE_80F812:
    JSL.L CODE_81BB77                    ;80F812;
    RTS                                  ;80F816;

CODE_80F817:
    JSL.L CODE_81AE1E                    ;80F817;
    RTS                                  ;80F81B;

CODE_80F81C:
    JSL.L CODE_81B187                    ;80F81C;
    RTS                                  ;80F820;

CODE_80F821:
    JSL.L CODE_82859B                    ;80F821;
    RTS                                  ;80F825;

CODE_80F826:
    JSL.L CODE_828BF3                    ;80F826;
    RTS                                  ;80F82A;

CODE_80F82B:
    JSL.L CODE_828C4C                    ;80F82B;
    RTS                                  ;80F82F;

CODE_80F830:
    JSL.L CODE_828D97                    ;80F830;
    RTS                                  ;80F834;

CODE_80F835:
    JSL.L CODE_828E72                    ;80F835;
    RTS                                  ;80F839;

CODE_80F83A:
    JSL.L CODE_829028                    ;80F83A;
    RTS                                  ;80F83E;

CODE_80F83F:
    JSL.L CODE_82910A                    ;80F83F;
    RTS                                  ;80F843;

CODE_80F844:
    JSL.L CODE_83A605                    ;80F844;
    RTS                                  ;80F848;

CODE_80F849:
    JSL.L CODE_878328                    ;80F849;
    RTS                                  ;80F84D;

CODE_80F84E:
    JSL.L CODE_82951D                    ;80F84E;
    RTS                                  ;80F852;

CODE_80F853:
    JSL.L CODE_83A652                    ;80F853;
    RTS                                  ;80F857;

CODE_80F858:
    JSL.L CODE_83A6B4                    ;80F858;
    RTS                                  ;80F85C;

CODE_80F85D:
    JSL.L CODE_81B379                    ;80F85D;
    RTS                                  ;80F861;

CODE_80F862:
    JSL.L CODE_81B3D9                    ;80F862;
    RTS                                  ;80F866;

CODE_80F867:
    JSL.L CODE_83A73E                    ;80F867;
    RTS                                  ;80F86B;

CODE_80F86C:
    JSL.L CODE_81B49C                    ;80F86C;
    RTS                                  ;80F870;

CODE_80F871:
    JSL.L CODE_83A8BD                    ;80F871;
    RTS                                  ;80F875;

CODE_80F876:
    JSL.L CODE_81BC7B                    ;80F876;
    RTS                                  ;80F87A;

CODE_80F87B:
    JSL.L CODE_83AB58                    ;80F87B;
    RTS                                  ;80F87F;

CODE_80F880:
    JSL.L CODE_83AC6A                    ;80F880;
    RTS                                  ;80F884;

CODE_80F885:
    JSL.L CODE_8783FF                    ;80F885;
    RTS                                  ;80F889;

CODE_80F88A:
    JSL.L CODE_8784D8                    ;80F88A;
    RTS                                  ;80F88E;

CODE_80F88F:
    JSL.L CODE_87858F                    ;80F88F;
    RTS                                  ;80F893;

CODE_80F894:
    JSL.L CODE_878637                    ;80F894;
    RTS                                  ;80F898;

CODE_80F899:
    JSL.L CODE_8786E2                    ;80F899;
    RTS                                  ;80F89D;

CODE_80F89E:
    JSL.L CODE_8788B5                    ;80F89E;
    RTS                                  ;80F8A2;

CODE_80F8A3:
    JSL.L CODE_878968                    ;80F8A3;
    RTS                                  ;80F8A7;

CODE_80F8A8:
    JSL.L CODE_8789BF                    ;80F8A8;
    RTS                                  ;80F8AC;

CODE_80F8AD:
    JSL.L CODE_83AD4B                    ;80F8AD;
    RTS                                  ;80F8B1;

CODE_80F8B2:
    JSL.L CODE_888000                    ;80F8B2;
    RTS                                  ;80F8B6;

CODE_80F8B7:
    JSL.L CODE_83AE3F                    ;80F8B7;
    RTS                                  ;80F8BB;

CODE_80F8BC:
    JSL.L CODE_88803C                    ;80F8BC;
    RTS                                  ;80F8C0;

CODE_80F8C1:
    JSL.L CODE_888108                    ;80F8C1;
    RTS                                  ;80F8C5;

CODE_80F8C6:
    JSL.L CODE_88BDB4                    ;80F8C6;
    RTS                                  ;80F8CA;

CODE_80F8CB:
    JSL.L CODE_888162                    ;80F8CB;
    RTS                                  ;80F8CF;

CODE_80F8D0:
    JSL.L CODE_8882C4                    ;80F8D0;
    RTS                                  ;80F8D4;

CODE_80F8D5:
    JSL.L CODE_88833C                    ;80F8D5;
    RTS                                  ;80F8D9;

CODE_80F8DA:
    JSL.L CODE_8883BE                    ;80F8DA;
    RTS                                  ;80F8DE;

CODE_80F8DF:
    JSL.L CODE_8884B0                    ;80F8DF;
    RTS                                  ;80F8E3;

CODE_80F8E4:
    JSL.L CODE_88E89E                    ;80F8E4;
    RTS                                  ;80F8E8;

CODE_80F8E9:
    JSL.L CODE_88D0B3                    ;80F8E9;
    RTS                                  ;80F8ED;

CODE_80F8EE:
    JSL.L CODE_88D13B                    ;80F8EE;
    RTS                                  ;80F8F2;

PTR16_80F8F3:
    dw CODE_80F9CB                       ;80F8F3;
    dw CODE_80F9CC                       ;80F8F5;
    dw CODE_80F9D1                       ;80F8F7;
    dw CODE_80F9D6                       ;80F8F9;
    dw CODE_80F9DB                       ;80F8FB;
    dw CODE_80F9E0                       ;80F8FD;
    dw CODE_80F9E5                       ;80F8FF;
    dw CODE_80F9EA                       ;80F901;
    dw CODE_80F9EF                       ;80F903;
    dw CODE_80F9F4                       ;80F905;
    dw CODE_80F9F9                       ;80F907;
    dw CODE_80F9FE                       ;80F909;
    dw CODE_80FA03                       ;80F90B;
    dw CODE_80FA08                       ;80F90D;
    dw CODE_80FA0D                       ;80F90F;
    dw CODE_80FA12                       ;80F911;
    dw CODE_80FA17                       ;80F913;
    dw CODE_80FA1C                       ;80F915;
    dw CODE_80FA21                       ;80F917;
    dw CODE_80FA26                       ;80F919;
    dw CODE_80FA2B                       ;80F91B;
    dw CODE_80FA30                       ;80F91D;
    dw CODE_80FA35                       ;80F91F;
    dw CODE_80FA3A                       ;80F921;
    dw CODE_80FA3F                       ;80F923;
    dw CODE_80FA44                       ;80F925;
    dw CODE_80FA49                       ;80F927;
    dw CODE_80FA4E                       ;80F929;
    dw CODE_80FA53                       ;80F92B;
    dw CODE_80FA58                       ;80F92D;
    dw CODE_80FA5D                       ;80F92F;
    dw CODE_80FA62                       ;80F931;
    dw CODE_80FA67                       ;80F933;
    dw CODE_80FA6C                       ;80F935;
    dw CODE_80FA71                       ;80F937;
    dw CODE_80FA76                       ;80F939;
    dw CODE_80FA7B                       ;80F93B;
    dw CODE_80FA80                       ;80F93D;
    dw CODE_80FA85                       ;80F93F;
    dw CODE_80FA8A                       ;80F941;
    dw CODE_80FA8F                       ;80F943;
    dw CODE_80FA94                       ;80F945;
    dw CODE_80FA99                       ;80F947;
    dw CODE_80FA9E                       ;80F949;
    dw CODE_80FAA3                       ;80F94B;
    dw CODE_80FAA8                       ;80F94D;
    dw CODE_80FAAD                       ;80F94F;
    dw CODE_80FAB2                       ;80F951;
    dw CODE_80FAB7                       ;80F953;
    dw CODE_80FABC                       ;80F955;
    dw CODE_80FAC1                       ;80F957;
    dw CODE_80FAC6                       ;80F959;
    dw CODE_80FACB                       ;80F95B;
    dw CODE_80FAD0                       ;80F95D;
    dw CODE_80FAD5                       ;80F95F;
    dw CODE_80FADA                       ;80F961;
    dw CODE_80FADF                       ;80F963;
    dw CODE_80FAE4                       ;80F965;
    dw CODE_80FAE9                       ;80F967;
    dw CODE_80FAEE                       ;80F969;
    dw CODE_80FAF3                       ;80F96B;
    dw CODE_80FAF8                       ;80F96D;
    dw CODE_80FAFD                       ;80F96F;
    dw CODE_80FB02                       ;80F971;
    dw CODE_80FB07                       ;80F973;
    dw CODE_80FB0C                       ;80F975;
    dw CODE_80FB11                       ;80F977;
    dw CODE_80FB16                       ;80F979;
    dw CODE_80FB1B                       ;80F97B;
    dw CODE_80FB20                       ;80F97D;
    dw CODE_80FB25                       ;80F97F;
    dw CODE_80FB2A                       ;80F981;
    dw CODE_80FB2F                       ;80F983;
    dw CODE_80FB34                       ;80F985;
    dw CODE_80FB39                       ;80F987;
    dw CODE_80FB3E                       ;80F989;
    dw CODE_80FB43                       ;80F98B;
    dw CODE_80FB48                       ;80F98D;
    dw CODE_80FB4D                       ;80F98F;
    dw CODE_80FB52                       ;80F991;
    dw CODE_80FB57                       ;80F993;
    dw CODE_80FB5C                       ;80F995;
    dw CODE_80FB61                       ;80F997;
    dw CODE_80FB66                       ;80F999;
    dw CODE_80FB6B                       ;80F99B;
    dw CODE_80FB70                       ;80F99D;
    dw CODE_80FB75                       ;80F99F;
    dw CODE_80FB7A                       ;80F9A1;
    dw CODE_80FB7F                       ;80F9A3;
    dw CODE_80FB84                       ;80F9A5;
    dw CODE_80FB89                       ;80F9A7;
    dw CODE_80FB8E                       ;80F9A9;
    dw CODE_80FB93                       ;80F9AB;
    dw CODE_80FB98                       ;80F9AD;
    dw CODE_80FB9D                       ;80F9AF;
    dw CODE_80FBA2                       ;80F9B1;
    dw CODE_80FBA7                       ;80F9B3;
    dw CODE_80FBAC                       ;80F9B5;
    dw CODE_80FBB1                       ;80F9B7;
    dw CODE_80FBB6                       ;80F9B9;
    dw CODE_80FBBB                       ;80F9BB;
    dw CODE_80FBC0                       ;80F9BD;
    dw CODE_80FBC5                       ;80F9BF;
    dw CODE_80FBCA                       ;80F9C1;
    dw CODE_80FBCF                       ;80F9C3;
    dw CODE_80FBD4                       ;80F9C5;
    dw CODE_80FBD9                       ;80F9C7;
    dw CODE_80FBDE                       ;80F9C9;

CODE_80F9CB:
    RTS                                  ;80F9CB;

CODE_80F9CC:
    JSL.L CODE_83AE81                    ;80F9CC;
    RTS                                  ;80F9D0;

CODE_80F9D1:
    JSL.L CODE_81B50C                    ;80F9D1;
    RTS                                  ;80F9D5;

CODE_80F9D6:
    JSL.L CODE_84AE3D                    ;80F9D6;
    RTS                                  ;80F9DA;

CODE_80F9DB:
    JSL.L CODE_81C02A                    ;80F9DB;
    RTS                                  ;80F9DF;

CODE_80F9E0:
    JSL.L CODE_878A7E                    ;80F9E0;
    RTS                                  ;80F9E4;

CODE_80F9E5:
    JSL.L CODE_81C241                    ;80F9E5;
    RTS                                  ;80F9E9;

CODE_80F9EA:
    JSL.L CODE_81C429                    ;80F9EA;
    RTS                                  ;80F9EE;

CODE_80F9EF:
    JSL.L CODE_81CAF6                    ;80F9EF;
    RTS                                  ;80F9F3;

CODE_80F9F4:
    JSL.L CODE_81CC03                    ;80F9F4;
    RTS                                  ;80F9F8;

CODE_80F9F9:
    JSL.L CODE_88853E                    ;80F9F9;
    RTS                                  ;80F9FD;

CODE_80F9FE:
    JSL.L CODE_81D023                    ;80F9FE;
    RTS                                  ;80FA02;

CODE_80FA03:
    JSL.L CODE_8791A7                    ;80FA03;
    RTS                                  ;80FA07;

CODE_80FA08:
    JSL.L CODE_888F2A                    ;80FA08;
    RTS                                  ;80FA0C;

CODE_80FA0D:
    JSL.L CODE_82959D                    ;80FA0D;
    RTS                                  ;80FA11;

CODE_80FA12:
    JSL.L CODE_829682                    ;80FA12;
    RTS                                  ;80FA16;

CODE_80FA17:
    JSL.L CODE_81D2CF                    ;80FA17;
    RTS                                  ;80FA1B;

CODE_80FA1C:
    JSL.L CODE_81D541                    ;80FA1C;
    RTS                                  ;80FA20;

CODE_80FA21:
    JSL.L CODE_81DCC0                    ;80FA21;
    RTS                                  ;80FA25;

CODE_80FA26:
    JSL.L CODE_82999F                    ;80FA26;
    RTS                                  ;80FA2A;

CODE_80FA2B:
    JSL.L CODE_83B144                    ;80FA2B;
    RTS                                  ;80FA2F;

CODE_80FA30:
    JSL.L CODE_829BCB                    ;80FA30;
    RTS                                  ;80FA34;

CODE_80FA35:
    JSL.L CODE_879794                    ;80FA35;
    RTS                                  ;80FA39;

CODE_80FA3A:
    JSL.L CODE_879944                    ;80FA3A;
    RTS                                  ;80FA3E;

CODE_80FA3F:
    JSL.L CODE_83BBD2                    ;80FA3F;
    RTS                                  ;80FA43;

CODE_80FA44:
    JSL.L CODE_829F4B                    ;80FA44;
    RTS                                  ;80FA48;

CODE_80FA49:
    JSL.L CODE_8893A4                    ;80FA49;
    RTS                                  ;80FA4D;

CODE_80FA4E:
    JSL.L CODE_82A0DE                    ;80FA4E;
    RTS                                  ;80FA52;

CODE_80FA53:
    JSL.L CODE_82A189                    ;80FA53;
    RTS                                  ;80FA57;

CODE_80FA58:
    JSL.L CODE_82A33A                    ;80FA58;
    RTS                                  ;80FA5C;

CODE_80FA5D:
    JSL.L CODE_82A7D4                    ;80FA5D;
    RTS                                  ;80FA61;

CODE_80FA62:
    JSL.L CODE_82A989                    ;80FA62;
    RTS                                  ;80FA66;

CODE_80FA67:
    JSL.L CODE_82AAD0                    ;80FA67;
    RTS                                  ;80FA6B;

CODE_80FA6C:
    JSL.L CODE_82AE11                    ;80FA6C;
    RTS                                  ;80FA70;

CODE_80FA71:
    JSL.L CODE_82B88F                    ;80FA71;
    RTS                                  ;80FA75;

CODE_80FA76:
    JSL.L CODE_82BD64                    ;80FA76;
    RTS                                  ;80FA7A;

CODE_80FA7B:
    JSL.L CODE_82C38C                    ;80FA7B;
    RTS                                  ;80FA7F;

CODE_80FA80:
    JSL.L CODE_82C72D                    ;80FA80;
    RTS                                  ;80FA84;

CODE_80FA85:
    JSL.L CODE_82C833                    ;80FA85;
    RTS                                  ;80FA89;

CODE_80FA8A:
    JSL.L CODE_82D1DE                    ;80FA8A;
    RTS                                  ;80FA8E;

CODE_80FA8F:
    JSL.L CODE_82D519                    ;80FA8F;
    RTS                                  ;80FA93;

CODE_80FA94:
    JSL.L CODE_82D9E8                    ;80FA94;
    RTS                                  ;80FA98;

CODE_80FA99:
    JSL.L CODE_879B70                    ;80FA99;
    RTS                                  ;80FA9D;

CODE_80FA9E:
    JSL.L CODE_8897BA                    ;80FA9E;
    RTS                                  ;80FAA2;

CODE_80FAA3:
    JSL.L CODE_83BF44                    ;80FAA3;
    RTS                                  ;80FAA7;

CODE_80FAA8:
    JSL.L CODE_87A07F                    ;80FAA8;
    RTS                                  ;80FAAC;

CODE_80FAAD:
    JSL.L CODE_83C387                    ;80FAAD;
    RTS                                  ;80FAB1;

CODE_80FAB2:
    JSL.L CODE_83C5AB                    ;80FAB2;
    RTS                                  ;80FAB6;

CODE_80FAB7:
    JSL.L CODE_83CE03                    ;80FAB7;
    RTS                                  ;80FABB;

CODE_80FABC:
    JSL.L CODE_889BE1                    ;80FABC;
    RTS                                  ;80FAC0;

CODE_80FAC1:
    JSL.L CODE_83CF70                    ;80FAC1;
    RTS                                  ;80FAC5;

CODE_80FAC6:
    JSL.L CODE_88A382                    ;80FAC6;
    RTS                                  ;80FACA;

CODE_80FACB:
    JSL.L CODE_83D85C                    ;80FACB;
    RTS                                  ;80FACF;

CODE_80FAD0:
    JSL.L CODE_83DB9B                    ;80FAD0;
    RTS                                  ;80FAD4;

CODE_80FAD5:
    JSL.L CODE_83DD67                    ;80FAD5;
    RTS                                  ;80FAD9;

CODE_80FADA:
    JSL.L CODE_87A45F                    ;80FADA;
    RTS                                  ;80FADE;

CODE_80FADF:
    JSL.L CODE_83DF7F                    ;80FADF;
    RTS                                  ;80FAE3;

CODE_80FAE4:
    JSL.L CODE_83E1BC                    ;80FAE4;
    RTS                                  ;80FAE8;

CODE_80FAE9:
    JSL.L CODE_83E404                    ;80FAE9;
    RTS                                  ;80FAED;

CODE_80FAEE:
    JSL.L CODE_87A9DF                    ;80FAEE;
    RTS                                  ;80FAF2;

CODE_80FAF3:
    JSL.L CODE_87ABA3                    ;80FAF3;
    RTS                                  ;80FAF7;

CODE_80FAF8:
    JSL.L CODE_87ADD8                    ;80FAF8;
    RTS                                  ;80FAFC;

CODE_80FAFD:
    JSL.L CODE_87AF5D                    ;80FAFD;
    RTS                                  ;80FB01;

CODE_80FB02:
    JSL.L CODE_87B216                    ;80FB02;
    RTS                                  ;80FB06;

CODE_80FB07:
    JSL.L CODE_87B443                    ;80FB07;
    RTS                                  ;80FB0B;

CODE_80FB0C:
    JSL.L CODE_87B542                    ;80FB0C;
    RTS                                  ;80FB10;

CODE_80FB11:
    JSL.L CODE_87B808                    ;80FB11;
    RTS                                  ;80FB15;

CODE_80FB16:
    JSL.L CODE_87B91C                    ;80FB16;
    RTS                                  ;80FB1A;

CODE_80FB1B:
    JSL.L CODE_87BA72                    ;80FB1B;
    RTS                                  ;80FB1F;

CODE_80FB20:
    JSL.L CODE_87BBBE                    ;80FB20;
    RTS                                  ;80FB24;

CODE_80FB25:
    JSL.L CODE_87BC8B                    ;80FB25;
    RTS                                  ;80FB29;

CODE_80FB2A:
    JSL.L CODE_87BD70                    ;80FB2A;
    RTS                                  ;80FB2E;

CODE_80FB2F:
    JSL.L CODE_87C07A                    ;80FB2F;
    RTS                                  ;80FB33;

CODE_80FB34:
    JSL.L CODE_87C387                    ;80FB34;
    RTS                                  ;80FB38;

CODE_80FB39:
    JSL.L CODE_87C70A                    ;80FB39;
    RTS                                  ;80FB3D;

CODE_80FB3E:
    JSL.L CODE_87C75E                    ;80FB3E;
    RTS                                  ;80FB42;

CODE_80FB43:
    JSL.L CODE_87C994                    ;80FB43;
    RTS                                  ;80FB47;

CODE_80FB48:
    JSL.L CODE_87CA7B                    ;80FB48;
    RTS                                  ;80FB4C;

CODE_80FB4D:
    JSL.L CODE_87D012                    ;80FB4D;
    RTS                                  ;80FB51;

CODE_80FB52:
    JSL.L CODE_87D119                    ;80FB52;
    RTS                                  ;80FB56;

CODE_80FB57:
    JSL.L CODE_87D3AF                    ;80FB57;
    RTS                                  ;80FB5B;

CODE_80FB5C:
    JSL.L CODE_87D607                    ;80FB5C;
    RTS                                  ;80FB60;

CODE_80FB61:
    JSL.L CODE_87D85C                    ;80FB61;
    RTS                                  ;80FB65;

CODE_80FB66:
    JSL.L CODE_87DE93                    ;80FB66;
    RTS                                  ;80FB6A;

CODE_80FB6B:
    JSL.L CODE_87E037                    ;80FB6B;
    RTS                                  ;80FB6F;

CODE_80FB70:
    JSL.L CODE_87E23A                    ;80FB70;
    RTS                                  ;80FB74;

CODE_80FB75:
    JSL.L CODE_87E2B9                    ;80FB75;
    RTS                                  ;80FB79;

CODE_80FB7A:
    JSL.L CODE_87E354                    ;80FB7A;
    RTS                                  ;80FB7E;

CODE_80FB7F:
    JSL.L CODE_87E547                    ;80FB7F;
    RTS                                  ;80FB83;

CODE_80FB84:
    JSL.L CODE_87E7D4                    ;80FB84;
    RTS                                  ;80FB88;

CODE_80FB89:
    JSL.L CODE_87EB09                    ;80FB89;
    RTS                                  ;80FB8D;

CODE_80FB8E:
    JSL.L CODE_87EBFE                    ;80FB8E;
    RTS                                  ;80FB92;

CODE_80FB93:
    JSL.L CODE_88A793                    ;80FB93;
    RTS                                  ;80FB97;

CODE_80FB98:
    JSL.L CODE_88A985                    ;80FB98;
    RTS                                  ;80FB9C;

CODE_80FB9D:
    JSL.L CODE_88AE0B                    ;80FB9D;
    RTS                                  ;80FBA1;

CODE_80FBA2:
    JSL.L CODE_88B216                    ;80FBA2;
    RTS                                  ;80FBA6;

CODE_80FBA7:
    JSL.L CODE_88B452                    ;80FBA7;
    RTS                                  ;80FBAB;

CODE_80FBAC:
    JSL.L CODE_88B689                    ;80FBAC;
    RTS                                  ;80FBB0;

CODE_80FBB1:
    JSL.L CODE_88BF48                    ;80FBB1;
    RTS                                  ;80FBB5;

CODE_80FBB6:
    JSL.L CODE_82DB76                    ;80FBB6;
    RTS                                  ;80FBBA;

CODE_80FBBB:
    JSL.L CODE_87ED8D                    ;80FBBB;
    RTS                                  ;80FBBF;

CODE_80FBC0:
    JSL.L CODE_88C3B2                    ;80FBC0;
    RTS                                  ;80FBC4;

CODE_80FBC5:
    JSL.L CODE_88D1B1                    ;80FBC5;
    RTS                                  ;80FBC9;

CODE_80FBCA:
    JSL.L CODE_83E7E1                    ;80FBCA;
    RTS                                  ;80FBCE;

CODE_80FBCF:
    JSL.L CODE_88D8A2                    ;80FBCF;
    RTS                                  ;80FBD3;

CODE_80FBD4:
    JSL.L CODE_88DAD3                    ;80FBD4;
    RTS                                  ;80FBD8;

CODE_80FBD9:
    JSL.L CODE_88D93B                    ;80FBD9;
    RTS                                  ;80FBDD;

CODE_80FBDE:
    JSL.L CODE_88E53F                    ;80FBDE;
    RTS                                  ;80FBE2;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FBE3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FBEB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FBF3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FBFB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC03;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC0B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC13;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC1B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC23;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC2B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC33;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC3B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC43;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC4B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC53;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC5B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC63;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC6B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC73;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC7B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC83;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC8B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC93;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FC9B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCA3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCAB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCB3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCBB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCC3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCCB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCD3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCDB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCE3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCEB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCF3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FCFB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD03;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD0B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD13;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD1B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD23;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD2B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD33;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD3B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD43;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD4B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD53;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD5B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD63;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD6B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD73;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD7B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD83;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD8B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD93;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FD9B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDA3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDAB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDB3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDBB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDC3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDCB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDD3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDDB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDE3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDEB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDF3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FDFB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE03;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE0B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE13;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE1B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE23;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE2B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE33;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE3B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE43;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE4B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE53;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE5B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE63;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE6B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE73;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE7B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE83;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE8B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE93;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FE9B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEA3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEAB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEB3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEBB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEC3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FECB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FED3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEDB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEE3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEEB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEF3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FEFB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF03;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF0B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF13;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF1B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF23;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF2B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF33;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF3B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF43;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF4B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF53;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF5B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF63;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF6B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF73;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF7B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF83;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF8B;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF93;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FF9B;
    db $FF                               ;80FFA3;

CODE_80FFA4:
    JML.L CODE_808168                    ;80FFA4;

CODE_80FFA8:
    JML.L CODE_8084A1                    ;80FFA8;

CODE_80FFAC:
    JML.L CODE_808097                    ;80FFAC;
    db $00,$00,$FF,$FF,$FF,$FF,$FF,$FF   ;80FFB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;80FFB8;

TEXT_80FFC0:
    db "MEGAMAN X            "           ;80FFC0;
    db $30,$00,$0B,$00,$01,$08,$00       ;80FFD5;
    dw $AA04,$55FB                       ;80FFDC;
    dw PTR16_80FFFF                      ;80FFE0;
    dw PTR16_80FFFF                      ;80FFE2;
    dw CODE_80FFAC                       ;80FFE4;
    dw CODE_80FFAC                       ;80FFE6;
    dw CODE_80FFAC                       ;80FFE8;
    dw CODE_80FFA4                       ;80FFEA;
    dw CODE_80FFAC                       ;80FFEC;
    dw CODE_80FFA8                       ;80FFEE;
    dw PTR16_80FFFF                      ;80FFF0;
    dw PTR16_80FFFF                      ;80FFF2;
    dw CODE_80FFAC                       ;80FFF4;
    dw CODE_80FFAC                       ;80FFF6;
    dw CODE_80FFAC                       ;80FFF8;
    dw CODE_80FFAC                       ;80FFFA;
    dw CODE_808000                       ;80FFFC;
    dw CODE_80FFAC                       ;80FFFE;

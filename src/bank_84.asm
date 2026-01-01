ORG $848000

CODE_848000:
    PHP                                  ;848000;
    SEP #$30                             ;848001;
    STZ.W $002C                          ;848003;
    STZ.W $002D                          ;848006;
    STZ.W $002E                          ;848009;
    STZ.W $002F                          ;84800C;
    BRA CODE_848014                      ;84800F;

CODE_848011:
    PHP                                  ;848011;
    SEP #$30                             ;848012;

CODE_848014:
    XBA                                  ;848014;
    LDA.B #$00                           ;848015;
    XBA                                  ;848017;
    ASL A                                ;848018;
    TAY                                  ;848019;
    PHD                                  ;84801A;
    PHB                                  ;84801B;
    LDA.B #$84                           ;84801C;
    PHA                                  ;84801E;
    PLB                                  ;84801F;
    PEA.W $0000                          ;848020;
    PLD                                  ;848023;
    TYA                                  ;848024;
    LDX.W $1F7A                          ;848025;
    ADC.W DATA8_84B8A2,X                 ;848028;
    TAX                                  ;84802B;
    LDA.W DATA8_84B8A2,X                 ;84802C;
    STA.B $20                            ;84802F;
    LDA.W DATA8_84B8A3,X                 ;848031;
    STA.B $21                            ;848034;
    REP #$10                             ;848036;
    LDX.W #$5000                         ;848038;
    STX.W $1FA1                          ;84803B;
    LDX.W $0B95                          ;84803E;
    STX.W $1FAD                          ;848041;
    LDX.W #$0000                         ;848044;
    LDA.B ($20)                          ;848047;
    BNE CODE_84804E                      ;848049;
    JMP.W CODE_8480E9                    ;84804B;

CODE_84804E:
    LSR A                                ;84804E;
    BCS CODE_848060                      ;84804F;
    LDX.W #$5800                         ;848051;
    STX.W $1FA1                          ;848054;
    LDX.W $0B98                          ;848057;
    STX.W $1FAD                          ;84805A;
    LDX.W #$8600                         ;84805D;

CODE_848060:
    STX.B $28                            ;848060;
    LDY.W #$0001                         ;848062;
    REP #$20                             ;848065;

CODE_848067:
    STZ.W $1FA5                          ;848067;
    STZ.W $1FA3                          ;84806A;
    LDX.W #$0020                         ;84806D;
    STZ.W $1FA9                          ;848070;
    LDA.B ($20),Y                        ;848073;
    AND.W #$007F                         ;848075;
    BEQ CODE_8480E9                      ;848078;
    LSR A                                ;84807A;
    BCC CODE_848086                      ;84807B;
    LDX.W #$0001                         ;84807D;
    INC.W $1FA9                          ;848080;
    INC.W $1FA9                          ;848083;

CODE_848086:
    STX.B $08                            ;848086;
    STA.B $0A                            ;848088;
    LDA.B ($20),Y                        ;84808A;
    AND.W #$0081                         ;84808C;
    STA.W $1FA7                          ;84808F;
    INY                                  ;848092;
    LDA.B ($20),Y                        ;848093;
    CLC                                  ;848095;
    ADC.B $2C                            ;848096;
    STA.B $00                            ;848098;
    INY                                  ;84809A;
    INY                                  ;84809B;
    LDA.B ($20),Y                        ;84809C;
    CLC                                  ;84809E;
    ADC.B $2E                            ;84809F;
    STA.B $02                            ;8480A1;
    INY                                  ;8480A3;
    INY                                  ;8480A4;
    LDA.B ($20),Y                        ;8480A5;
    CLC                                  ;8480A7;
    ADC.B $20                            ;8480A8;
    STA.B $24                            ;8480AA;
    INY                                  ;8480AC;
    INY                                  ;8480AD;

CODE_8480AE:
    PHY                                  ;8480AE;
    LDA.B $28                            ;8480AF;
    BNE CODE_8480B8                      ;8480B1;
    JSR.W CODE_84916A                    ;8480B3;
    BRA CODE_8480BB                      ;8480B6;

CODE_8480B8:
    JSR.W CODE_84915E                    ;8480B8;

CODE_8480BB:
    PLY                                  ;8480BB;
    CLC                                  ;8480BC;
    ADC.B $28                            ;8480BD;
    TAX                                  ;8480BF;
    LDA.B ($24)                          ;8480C0;
    STA.L $7E2000,X                      ;8480C2;
    JSR.W CODE_8480ED                    ;8480C6;
    INC.B $24                            ;8480C9;
    INC.B $24                            ;8480CB;
    PHX                                  ;8480CD;
    LDX.W $1FA9                          ;8480CE;
    LDA.B $00,X                          ;8480D1;
    CLC                                  ;8480D3;
    ADC.W #$0010                         ;8480D4;
    STA.B $00,X                          ;8480D7;
    PLX                                  ;8480D9;
    DEC.B $0A                            ;8480DA;
    BNE CODE_8480AE                      ;8480DC;
    LDA.W $1FA3                          ;8480DE;
    BEQ CODE_8480E6                      ;8480E1;
    JSR.W CODE_848158                    ;8480E3;

CODE_8480E6:
    JMP.W CODE_848067                    ;8480E6;

CODE_8480E9:
    PLB                                  ;8480E9;
    PLD                                  ;8480EA;
    PLP                                  ;8480EB;
    RTL                                  ;8480EC;

CODE_8480ED:
    JSR.W CODE_848107                    ;8480ED;
    BEQ CODE_8480F4                      ;8480F0;
    BCS CODE_848106                      ;8480F2;

CODE_8480F4:
    INC.W $1FA3                          ;8480F4;
    LDA.W $1FA5                          ;8480F7;
    BNE CODE_848106                      ;8480FA;
    INC.W $1FA5                          ;8480FC;
    LDA.B $24                            ;8480FF;
    STA.B $1C                            ;848101;
    JSR.W CODE_848317                    ;848103;

CODE_848106:
    RTS                                  ;848106;

CODE_848107:
    LDA.W #$1E4D                         ;848107;
    STA.B $14                            ;84810A;
    LDA.W #$1E50                         ;84810C;
    STA.B $18                            ;84810F;
    LDA.B $28                            ;848111;
    BEQ CODE_84811F                      ;848113;
    LDA.W #$1E8D                         ;848115;
    STA.B $14                            ;848118;
    LDA.W #$1E90                         ;84811A;
    STA.B $18                            ;84811D;

CODE_84811F:
    LDA.B ($14)                          ;84811F;
    CLC                                  ;848121;
    ADC.W #$0080                         ;848122;
    STA.B $22                            ;848125;
    LDA.B $00                            ;848127;
    AND.W #$FFF0                         ;848129;
    CLC                                  ;84812C;
    ADC.W #$0008                         ;84812D;
    SEC                                  ;848130;
    SBC.B $22                            ;848131;
    CLC                                  ;848133;
    ADC.W #$0098                         ;848134;
    CMP.W #$0130                         ;848137;
    BCS CODE_848157                      ;84813A;
    LDA.B ($18)                          ;84813C;
    CLC                                  ;84813E;
    ADC.W #$0070                         ;84813F;
    STA.B $22                            ;848142;
    LDA.B $02                            ;848144;
    AND.W #$FFF0                         ;848146;
    CLC                                  ;848149;
    ADC.W #$0008                         ;84814A;
    SEC                                  ;84814D;
    SBC.B $22                            ;84814E;
    CLC                                  ;848150;
    ADC.W #$0078                         ;848151;
    CMP.W #$00F0                         ;848154;

CODE_848157:
    RTS                                  ;848157;

CODE_848158:
    PHY                                  ;848158;
    LDA.B $08                            ;848159;
    LSR A                                ;84815B;
    BCS CODE_848165                      ;84815C;
    JSR.W CODE_848182                    ;84815E;
    BCS CODE_84817D                      ;848161;
    BRA CODE_84816A                      ;848163;

CODE_848165:
    JSR.W CODE_8481E7                    ;848165;
    BCS CODE_84817D                      ;848168;

CODE_84816A:
    JSR.W CODE_848241                    ;84816A;
    LDA.W $0012                          ;84816D;
    STA.B $0C                            ;848170;
    LDA.W $001E                          ;848172;
    STA.B $1C                            ;848175;
    LDA.W $0026                          ;848177;
    STA.W $1FA3                          ;84817A;

CODE_84817D:
    JSR.W CODE_848241                    ;84817D;
    PLY                                  ;848180;
    RTS                                  ;848181;

CODE_848182:
    LDA.W $1FA3                          ;848182;
    ASL A                                ;848185;
    DEC A                                ;848186;
    CLC                                  ;848187;
    ADC.B $0C                            ;848188;
    STA.B $22                            ;84818A;
    LDA.B $0C                            ;84818C;
    ORA.W #$001F                         ;84818E;
    CMP.B $22                            ;848191;
    BCS CODE_8481E6                      ;848193;
    LDA.B $0C                            ;848195;
    STA.W $0012                          ;848197;
    LDA.B $1C                            ;84819A;
    STA.W $001E                          ;84819C;
    LDA.W $1FA3                          ;84819F;
    STA.W $0026                          ;8481A2;
    LDA.B $0C                            ;8481A5;
    ORA.W #$001F                         ;8481A7;
    INC A                                ;8481AA;
    SEC                                  ;8481AB;
    SBC.B $0C                            ;8481AC;
    LSR A                                ;8481AE;
    STA.W $0026                          ;8481AF;
    EOR.W #$FFFF                         ;8481B2;
    INC A                                ;8481B5;
    CLC                                  ;8481B6;
    ADC.W $1FA3                          ;8481B7;
    STA.W $1FA3                          ;8481BA;
    LDA.W $0026                          ;8481BD;
    ASL A                                ;8481C0;
    CLC                                  ;8481C1;
    ADC.B $1C                            ;8481C2;
    STA.B $1C                            ;8481C4;
    LDX.W #$5800                         ;8481C6;
    LDA.B $28                            ;8481C9;
    BEQ CODE_8481D0                      ;8481CB;
    LDX.W #$6000                         ;8481CD;

CODE_8481D0:
    STX.B $22                            ;8481D0;
    LDA.B $0C                            ;8481D2;
    AND.W #$FFE0                         ;8481D4;
    CLC                                  ;8481D7;
    ADC.W #$0400                         ;8481D8;
    CMP.B $22                            ;8481DB;
    BCC CODE_8481E3                      ;8481DD;
    SEC                                  ;8481DF;
    SBC.W #$0800                         ;8481E0;

CODE_8481E3:
    STA.B $0C                            ;8481E3;
    CLC                                  ;8481E5;

CODE_8481E6:
    RTS                                  ;8481E6;

CODE_8481E7:
    LDA.W $1FA3                          ;8481E7;
    DEC A                                ;8481EA;
    ASL A                                ;8481EB;
    ASL A                                ;8481EC;
    ASL A                                ;8481ED;
    ASL A                                ;8481EE;
    ASL A                                ;8481EF;
    ASL A                                ;8481F0;
    CLC                                  ;8481F1;
    ADC.B $0C                            ;8481F2;
    STA.B $22                            ;8481F4;
    LDA.B $0C                            ;8481F6;
    ORA.W #$03E0                         ;8481F8;
    CMP.B $22                            ;8481FB;
    BCS CODE_848240                      ;8481FD;
    LDA.B $0C                            ;8481FF;
    STA.W $0012                          ;848201;
    LDA.B $1C                            ;848204;
    STA.W $001E                          ;848206;
    LDA.W $1FA3                          ;848209;
    STA.W $0026                          ;84820C;
    LDA.B $0C                            ;84820F;
    ORA.W #$03E0                         ;848211;
    CLC                                  ;848214;
    ADC.W #$0020                         ;848215;
    SEC                                  ;848218;
    SBC.B $0C                            ;848219;
    LSR A                                ;84821B;
    LSR A                                ;84821C;
    LSR A                                ;84821D;
    LSR A                                ;84821E;
    LSR A                                ;84821F;
    LSR A                                ;848220;
    STA.W $0026                          ;848221;
    EOR.W #$FFFF                         ;848224;
    INC A                                ;848227;
    CLC                                  ;848228;
    ADC.W $1FA3                          ;848229;
    STA.W $1FA3                          ;84822C;
    LDA.W $0026                          ;84822F;
    ASL A                                ;848232;
    CLC                                  ;848233;
    ADC.B $1C                            ;848234;
    STA.B $1C                            ;848236;
    LDA.B $0C                            ;848238;
    AND.W #$FC1F                         ;84823A;
    STA.B $0C                            ;84823D;
    CLC                                  ;84823F;

CODE_848240:
    RTS                                  ;848240;

CODE_848241:
    LDA.W $00A5                          ;848241;
    AND.W #$07FF                         ;848244;
    CLC                                  ;848247;
    ADC.W #$F000                         ;848248;
    STA.B $14                            ;84824B;
    LDA.W $1FA3                          ;84824D;
    ASL A                                ;848250;
    ASL A                                ;848251;
    ADC.W #$0004                         ;848252;
    ADC.B $14                            ;848255;
    STA.B $18                            ;848257;
    LDA.W #$007E                         ;848259;
    STA.B $16                            ;84825C;
    STA.B $1A                            ;84825E;
    SEP #$20                             ;848260;
    LDY.W #$0000                         ;848262;
    LDA.W $1FA7                          ;848265;
    STA.B [$14],Y                        ;848268;
    STA.B [$18],Y                        ;84826A;
    INY                                  ;84826C;
    REP #$20                             ;84826D;
    LDA.B $0C                            ;84826F;
    STA.B [$14],Y                        ;848271;
    CLC                                  ;848273;
    ADC.B $08                            ;848274;
    STA.B [$18],Y                        ;848276;
    INY                                  ;848278;
    INY                                  ;848279;
    SEP #$20                             ;84827A;
    LDA.W $1FA3                          ;84827C;
    ASL A                                ;84827F;
    ASL A                                ;848280;
    STA.B [$14],Y                        ;848281;
    STA.B [$18],Y                        ;848283;
    INY                                  ;848285;
    REP #$20                             ;848286;

CODE_848288:
    LDA.B ($1C)                          ;848288;
    ASL A                                ;84828A;
    ASL A                                ;84828B;
    ASL A                                ;84828C;
    CLC                                  ;84828D;
    ADC.W $1FAD                          ;84828E;
    STA.B $24                            ;848291;
    PHB                                  ;848293;
    SEP #$20                             ;848294;
    LDA.W $0B97                          ;848296;
    PHX                                  ;848299;
    LDX.B $28                            ;84829A;
    BEQ CODE_8482A1                      ;84829C;
    LDA.W $0B9A                          ;84829E;

CODE_8482A1:
    PLX                                  ;8482A1;
    PHA                                  ;8482A2;
    PLB                                  ;8482A3;
    REP #$20                             ;8482A4;
    LDA.W $1FA9                          ;8482A6;
    BEQ CODE_8482B0                      ;8482A9;
    JSR.W CODE_8482F2                    ;8482AB;
    BRA CODE_8482B3                      ;8482AE;

CODE_8482B0:
    JSR.W CODE_8482C9                    ;8482B0;

CODE_8482B3:
    PLB                                  ;8482B3;
    INC.B $1C                            ;8482B4;
    INC.B $1C                            ;8482B6;
    DEC.W $1FA3                          ;8482B8;
    BNE CODE_848288                      ;8482BB;
    TYA                                  ;8482BD;
    CLC                                  ;8482BE;
    ADC.B $18                            ;8482BF;
    SEC                                  ;8482C1;
    SBC.W #$F000                         ;8482C2;
    STA.W $00A5                          ;8482C5;
    RTS                                  ;8482C8;

CODE_8482C9:
    LDA.B ($24)                          ;8482C9;
    INC.B $24                            ;8482CB;
    INC.B $24                            ;8482CD;
    STA.B [$14],Y                        ;8482CF;
    INY                                  ;8482D1;
    INY                                  ;8482D2;
    LDA.B ($24)                          ;8482D3;
    INC.B $24                            ;8482D5;
    INC.B $24                            ;8482D7;
    STA.B [$14],Y                        ;8482D9;
    DEY                                  ;8482DB;
    DEY                                  ;8482DC;
    LDA.B ($24)                          ;8482DD;
    INC.B $24                            ;8482DF;
    INC.B $24                            ;8482E1;
    STA.B [$18],Y                        ;8482E3;
    INY                                  ;8482E5;
    INY                                  ;8482E6;
    LDA.B ($24)                          ;8482E7;
    INC.B $24                            ;8482E9;
    INC.B $24                            ;8482EB;
    STA.B [$18],Y                        ;8482ED;
    INY                                  ;8482EF;
    INY                                  ;8482F0;
    RTS                                  ;8482F1;

CODE_8482F2:
    LDA.B ($24)                          ;8482F2;
    INC.B $24                            ;8482F4;
    INC.B $24                            ;8482F6;
    STA.B [$14],Y                        ;8482F8;
    LDA.B ($24)                          ;8482FA;
    INC.B $24                            ;8482FC;
    INC.B $24                            ;8482FE;
    STA.B [$18],Y                        ;848300;
    INY                                  ;848302;
    INY                                  ;848303;
    LDA.B ($24)                          ;848304;
    INC.B $24                            ;848306;
    INC.B $24                            ;848308;
    STA.B [$14],Y                        ;84830A;
    LDA.B ($24)                          ;84830C;
    INC.B $24                            ;84830E;
    INC.B $24                            ;848310;
    STA.B [$18],Y                        ;848312;
    INY                                  ;848314;
    INY                                  ;848315;
    RTS                                  ;848316;

CODE_848317:
    LDA.B $00                            ;848317;
    AND.W #$0100                         ;848319;
    ASL A                                ;84831C;
    ASL A                                ;84831D;
    CLC                                  ;84831E;
    ADC.W $1FA1                          ;84831F;
    STA.B $0C                            ;848322;
    LDA.B $00                            ;848324;
    AND.W #$00F0                         ;848326;
    LSR A                                ;848329;
    LSR A                                ;84832A;
    LSR A                                ;84832B;
    STA.B $0E                            ;84832C;
    LDA.B $02                            ;84832E;
    AND.W #$00F0                         ;848330;
    ASL A                                ;848333;
    ASL A                                ;848334;
    CLC                                  ;848335;
    ADC.B $0E                            ;848336;
    ADC.B $0C                            ;848338;
    STA.B $0C                            ;84833A;
    RTS                                  ;84833C;
    LDY.B #$12                           ;84833D;
    JSL.L CODE_828011                    ;84833F;
    REP #$20                             ;848343;
    PHD                                  ;848345;
    LDA.W #$1E08                         ;848346;
    TCD                                  ;848349;
    STZ.B $00                            ;84834A;
    STZ.B $02                            ;84834C;
    STZ.B $14                            ;84834E;
    STZ.B $21                            ;848350;
    INC.B $00                            ;848352;
    LDA.W $1E4D                          ;848354;
    STA.B $04                            ;848357;
    STA.B $10                            ;848359;
    LDA.W $1E50                          ;84835B;
    STA.B $07                            ;84835E;
    STA.B $12                            ;848360;
    LDA.W $0B92                          ;848362;
    STA.B $16                            ;848365;
    LDA.W #$7080                         ;848367;
    STA.B $1F                            ;84836A;
    SEP #$30                             ;84836C;
    LDA.W $0B94                          ;84836E;
    STA.B $18                            ;848371;
    LDA.B #$04                           ;848373;
    STA.W $00A2                          ;848375;
    LDA.W $00C0                          ;848378;
    STA.B $0E                            ;84837B;
    LDA.W $00C1                          ;84837D;
    STA.B $0F                            ;848380;
    LDA.B #$17                           ;848382;
    STA.W $00C0                          ;848384;
    STZ.W $00C1                          ;848387;
    LDA.B #$09                           ;84838A;
    STA.W $2105                          ;84838C;
    JSL.L CODE_80D1F1                    ;84838F;

CODE_848393:
    STZ.W $0B9D                          ;848393;

CODE_848396:
    LDA.W $0B9D                          ;848396;
    BEQ CODE_848396                      ;848399;
    LDX.B $01                            ;84839B;
    JSR.W (PTR16_8483C5,X)               ;84839D;
    JSR.W CODE_84880F                    ;8483A0;
    LDA.W $00A7                          ;8483A3;
    AND.B #$70                           ;8483A6;
    CMP.B #$70                           ;8483A8;
    BNE CODE_848393                      ;8483AA;
    LDA.B $0E                            ;8483AC;
    STA.W $00C0                          ;8483AE;
    LDA.B $0F                            ;8483B1;
    STA.W $00C1                          ;8483B3;
    PLD                                  ;8483B6;
    STZ.W $0B9D                          ;8483B7;

CODE_8483BA:
    LDA.W $0B9D                          ;8483BA;
    BEQ CODE_8483BA                      ;8483BD;
    LDA.B #$04                           ;8483BF;
    STA.W $00A2                          ;8483C1;
    RTL                                  ;8483C4;

PTR16_8483C5:
    dw CODE_8483D7                       ;8483C5;
    dw CODE_84845E                       ;8483C7;
    dw CODE_8484AB                       ;8483C9;
    dw CODE_848516                       ;8483CB;
    dw CODE_848500                       ;8483CD;
    dw CODE_8484AB                       ;8483CF;
    dw CODE_8485C2                       ;8483D1;
    dw CODE_848500                       ;8483D3;
    dw CODE_8483D7                       ;8483D5;

CODE_8483D7:
    LDA.B #$02                           ;8483D7;
    STA.B $01                            ;8483D9;
    LDA.B #$44                           ;8483DB;
    STA.W $0000                          ;8483DD;
    LDA.B #$08                           ;8483E0;
    STA.W $0001                          ;8483E2;
    LDA.B #$06                           ;8483E5;
    STA.W $0002                          ;8483E7;
    LDA.B #$68                           ;8483EA;
    STA.B $19                            ;8483EC;
    LDA.B #$A5                           ;8483EE;
    STA.B $1A                            ;8483F0;
    JSR.W CODE_84865B                    ;8483F2;
    LDA.B #$64                           ;8483F5;
    STA.W $0000                          ;8483F7;
    LDA.B #$08                           ;8483FA;
    STA.W $0001                          ;8483FC;
    LDA.B #$06                           ;8483FF;
    STA.W $0002                          ;848401;
    LDA.B #$6E                           ;848404;
    STA.B $19                            ;848406;
    LDA.B #$A5                           ;848408;
    STA.B $1A                            ;84840A;
    JSR.W CODE_84865B                    ;84840C;
    LDA.B #$84                           ;84840F;
    STA.W $0000                          ;848411;
    LDA.B #$08                           ;848414;
    STA.W $0001                          ;848416;
    LDA.B #$0B                           ;848419;
    STA.W $0002                          ;84841B;
    LDA.B #$74                           ;84841E;
    STA.B $19                            ;848420;
    LDA.B #$A5                           ;848422;
    STA.B $1A                            ;848424;
    JSR.W CODE_84865B                    ;848426;
    LDA.B #$4F                           ;848429;
    STA.W $0000                          ;84842B;
    LDA.B #$08                           ;84842E;
    STA.W $0001                          ;848430;
    LDA.B #$08                           ;848433;
    STA.W $0002                          ;848435;
    LDA.B #$7F                           ;848438;
    STA.B $19                            ;84843A;
    LDA.B #$A5                           ;84843C;
    STA.B $1A                            ;84843E;
    JSR.W CODE_84865B                    ;848440;
    LDA.B #$6F                           ;848443;
    STA.W $0000                          ;848445;
    LDA.B #$08                           ;848448;
    STA.W $0001                          ;84844A;
    LDA.B #$08                           ;84844D;
    STA.W $0002                          ;84844F;
    LDA.B #$87                           ;848452;
    STA.B $19                            ;848454;
    LDA.B #$A5                           ;848456;
    STA.B $1A                            ;848458;
    JSR.W CODE_84865B                    ;84845A;
    RTS                                  ;84845D;

CODE_84845E:
    JSR.W CODE_848692                    ;84845E;
    REP #$20                             ;848461;
    PHD                                  ;848463;
    LDA.W #$1E48                         ;848464;
    TCD                                  ;848467;
    LDA.B $05                            ;848468;
    STA.B $22                            ;84846A;
    LDA.B $08                            ;84846C;
    STA.B $24                            ;84846E;
    LDA.W $1E0C                          ;848470;
    STA.B $05                            ;848473;
    LDA.W $1E0F                          ;848475;
    STA.B $08                            ;848478;
    JSL.L CODE_80D1FB                    ;84847A;
    JSL.L CODE_80D1FF                    ;84847E;
    PLD                                  ;848482;
    SEP #$30                             ;848483;
    JSR.W CODE_848705                    ;848485;
    REP #$20                             ;848488;
    LDA.B $04                            ;84848A;
    STA.W $00B4                          ;84848C;
    LDA.B $07                            ;84848F;
    STA.W $00B6                          ;848491;
    STZ.W $00BC                          ;848494;
    STZ.W $00BE                          ;848497;
    SEP #$30                             ;84849A;
    JSR.W CODE_848822                    ;84849C;
    LDA.W $00AC                          ;84849F;
    AND.B #$40                           ;8484A2;
    BEQ CODE_8484AA                      ;8484A4;
    LDA.B #$04                           ;8484A6;
    STA.B $01                            ;8484A8;

CODE_8484AA:
    RTS                                  ;8484AA;

CODE_8484AB:
    LDA.B #$04                           ;8484AB;
    STA.W $00A2                          ;8484AD;
    LDA.B #$10                           ;8484B0;
    TRB.W $00C0                          ;8484B2;
    STZ.B $29                            ;8484B5;
    LDA.B #$30                           ;8484B7;
    STA.B $2B                            ;8484B9;
    REP #$20                             ;8484BB;
    LDA.B $04                            ;8484BD;
    CLC                                  ;8484BF;
    ADC.W #$0018                         ;8484C0;
    STA.B $25                            ;8484C3;
    LDA.B $07                            ;8484C5;
    CLC                                  ;8484C7;
    ADC.W #$0018                         ;8484C8;
    STA.B $27                            ;8484CB;
    LDA.B $04                            ;8484CD;
    AND.W #$0008                         ;8484CF;
    BEQ CODE_8484DB                      ;8484D2;
    LDA.B $04                            ;8484D4;
    ORA.W #$FFF0                         ;8484D6;
    BRA CODE_8484E0                      ;8484D9;

CODE_8484DB:
    LDA.B $04                            ;8484DB;
    AND.W #$000F                         ;8484DD;

CODE_8484E0:
    STA.W $00BC                          ;8484E0;
    LDA.B $07                            ;8484E3;
    AND.W #$0008                         ;8484E5;
    BEQ CODE_8484F1                      ;8484E8;
    LDA.B $07                            ;8484EA;
    ORA.W #$FFF0                         ;8484EC;
    BRA CODE_8484F6                      ;8484EF;

CODE_8484F1:
    LDA.B $07                            ;8484F1;
    AND.W #$000F                         ;8484F3;

CODE_8484F6:
    STA.W $00BE                          ;8484F6;
    SEP #$20                             ;8484F9;
    INC.B $01                            ;8484FB;
    INC.B $01                            ;8484FD;
    RTS                                  ;8484FF;

CODE_848500:
    LDA.W $00AC                          ;848500;
    AND.B #$40                           ;848503;
    BEQ CODE_848515                      ;848505;
    INC.B $01                            ;848507;
    INC.B $01                            ;848509;
    LDA.B #$04                           ;84850B;
    STA.W $00A2                          ;84850D;
    LDA.B #$10                           ;848510;
    TSB.W $00C0                          ;848512;

CODE_848515:
    RTS                                  ;848515;

CODE_848516:
    REP #$30                             ;848516;
    JSR.W CODE_8488F9                    ;848518;
    STZ.B $23                            ;84851B;
    STZ.W $0010                          ;84851D;

CODE_848520:
    REP #$30                             ;848520;
    LDX.B $23                            ;848522;
    LDA.L $7EF0C8,X                      ;848524;
    TAY                                  ;848528;
    LDA.B [$16],Y                        ;848529;
    AND.W #$00FF                         ;84852B;
    BNE CODE_84854C                      ;84852E;
    SEP #$10                             ;848530;
    LDX.W $0010                          ;848532;
    LDA.W #$0000                         ;848535;
    STA.L $7EF000,X                      ;848538;
    STA.L $7EF002,X                      ;84853C;
    STA.L $7EF100,X                      ;848540;
    STA.L $7EF102,X                      ;848544;
    SEP #$20                             ;848548;
    BRA CODE_848592                      ;84854A;

CODE_84854C:
    LDA.L $7EF0C8,X                      ;84854C;
    SEP #$30                             ;848550;
    XBA                                  ;848552;
    TXY                                  ;848553;
    JSR.W CODE_8487F4                    ;848554;
    LDX.W $0010                          ;848557;
    LDA.W $0001                          ;84855A;
    STA.L $7EF000,X                      ;84855D;
    LDA.W $0000                          ;848561;
    STA.L $7EF002,X                      ;848564;
    LDA.B $2B                            ;848568;
    STA.L $7EF001,X                      ;84856A;
    STA.L $7EF003,X                      ;84856E;
    XBA                                  ;848572;
    TYX                                  ;848573;
    JSR.W CODE_8487F4                    ;848574;
    LDX.W $0010                          ;848577;
    LDA.W $0001                          ;84857A;
    STA.L $7EF100,X                      ;84857D;
    LDA.W $0000                          ;848581;
    STA.L $7EF102,X                      ;848584;
    LDA.B $2B                            ;848588;
    STA.L $7EF101,X                      ;84858A;
    STA.L $7EF103,X                      ;84858E;

CODE_848592:
    LDA.B $2B                            ;848592;
    EOR.B #$0C                           ;848594;
    STA.B $2B                            ;848596;
    INC.B $23                            ;848598;
    INC.B $23                            ;84859A;
    LDA.W $0010                          ;84859C;
    CLC                                  ;84859F;
    ADC.B #$04                           ;8485A0;
    STA.W $0010                          ;8485A2;
    CMP.B #$38                           ;8485A5;
    BCS CODE_8485AC                      ;8485A7;
    JMP.W CODE_848520                    ;8485A9;

CODE_8485AC:
    JSR.W CODE_84893D                    ;8485AC;
    LDA.B $2B                            ;8485AF;
    EOR.B #$0C                           ;8485B1;
    STA.B $2B                            ;8485B3;
    INC.B $29                            ;8485B5;
    LDA.B $29                            ;8485B7;
    CMP.B #$0C                           ;8485B9;
    BCC CODE_8485C1                      ;8485BB;
    INC.B $01                            ;8485BD;
    INC.B $01                            ;8485BF;

CODE_8485C1:
    RTS                                  ;8485C1;

CODE_8485C2:
    REP #$30                             ;8485C2;
    JSR.W CODE_8488F9                    ;8485C4;
    STZ.B $23                            ;8485C7;
    STZ.W $0010                          ;8485C9;

CODE_8485CC:
    REP #$30                             ;8485CC;
    LDX.B $23                            ;8485CE;
    LDA.L $7EF0C8,X                      ;8485D0;
    TAY                                  ;8485D4;
    LDA.B [$16],Y                        ;8485D5;
    AND.W #$00FF                         ;8485D7;
    BNE CODE_8485FA                      ;8485DA;
    SEP #$10                             ;8485DC;
    PHX                                  ;8485DE;
    LDX.W $0010                          ;8485DF;
    LDA.W #$0000                         ;8485E2;
    STA.L $7EF000,X                      ;8485E5;
    STA.L $7EF002,X                      ;8485E9;
    STA.L $7EF100,X                      ;8485ED;
    STA.L $7EF102,X                      ;8485F1;
    PLX                                  ;8485F5;
    SEP #$20                             ;8485F6;
    BRA CODE_84862E                      ;8485F8;

CODE_8485FA:
    SEP #$30                             ;8485FA;
    PHX                                  ;8485FC;
    JSR.W CODE_8487F4                    ;8485FD;
    LDX.W $0010                          ;848600;
    LDA.W $0001                          ;848603;
    STA.L $7EF000,X                      ;848606;
    LDA.W $0000                          ;84860A;
    STA.L $7EF002,X                      ;84860D;
    LDA.B $2B                            ;848611;
    STA.L $7EF001,X                      ;848613;
    STA.L $7EF003,X                      ;848617;
    LDA.B #$00                           ;84861B;
    STA.L $7EF100,X                      ;84861D;
    STA.L $7EF102,X                      ;848621;
    STA.L $7EF101,X                      ;848625;
    STA.L $7EF103,X                      ;848629;
    PLX                                  ;84862D;

CODE_84862E:
    LDA.B $2B                            ;84862E;
    EOR.B #$0C                           ;848630;
    STA.B $2B                            ;848632;
    INC.B $23                            ;848634;
    INC.B $23                            ;848636;
    LDA.W $0010                          ;848638;
    CLC                                  ;84863B;
    ADC.B #$04                           ;84863C;
    STA.W $0010                          ;84863E;
    CMP.B #$38                           ;848641;
    BCC CODE_8485CC                      ;848643;
    JSR.W CODE_84893D                    ;848645;
    LDA.B $2B                            ;848648;
    EOR.B #$0C                           ;84864A;
    STA.B $2B                            ;84864C;
    INC.B $29                            ;84864E;
    LDA.B $29                            ;848650;
    CMP.B #$0C                           ;848652;
    BCC CODE_84865A                      ;848654;
    INC.B $01                            ;848656;
    INC.B $01                            ;848658;

CODE_84865A:
    RTS                                  ;84865A;

CODE_84865B:
    LDX.W $00A4                          ;84865B;
    LDA.B #$80                           ;84865E;
    STA.W $0600,X                        ;848660;
    LDA.W $0000                          ;848663;
    STA.W $0601,X                        ;848666;
    LDA.W $0001                          ;848669;
    STA.W $0602,X                        ;84866C;
    LDA.W $0002                          ;84866F;
    ASL A                                ;848672;
    STA.W $0603,X                        ;848673;
    INX                                  ;848676;
    INX                                  ;848677;
    INX                                  ;848678;
    INX                                  ;848679;
    LDY.B #$00                           ;84867A;

CODE_84867C:
    LDA.B ($19),Y                        ;84867C;
    STA.W $0600,X                        ;84867E;
    LDA.B #$20                           ;848681;
    STA.W $0601,X                        ;848683;
    INX                                  ;848686;
    INX                                  ;848687;
    INY                                  ;848688;
    CPY.W $0002                          ;848689;
    BNE CODE_84867C                      ;84868C;
    STX.W $00A4                          ;84868E;
    RTS                                  ;848691;

CODE_848692:
    STZ.W $0001                          ;848692;
    LDA.W $00A8                          ;848695;
    BIT.B #$80                           ;848698;
    BNE CODE_8486A3                      ;84869A;
    LDX.B #$02                           ;84869C;
    STX.W $0000                          ;84869E;
    BRA CODE_8486A8                      ;8486A1;

CODE_8486A3:
    LDX.B #$08                           ;8486A3;
    STX.W $0000                          ;8486A5;

CODE_8486A8:
    BIT.B #$0C                           ;8486A8;
    BEQ CODE_8486AF                      ;8486AA;
    JSR.W CODE_8486BC                    ;8486AC;

CODE_8486AF:
    LDA.W $00A8                          ;8486AF;
    BIT.B #$03                           ;8486B2;
    BEQ CODE_8486B9                      ;8486B4;
    JSR.W CODE_8486E2                    ;8486B6;

CODE_8486B9:
    REP #$20                             ;8486B9;
    RTS                                  ;8486BB;

CODE_8486BC:
    BIT.B #$08                           ;8486BC;
    REP #$20                             ;8486BE;
    BEQ CODE_8486D4                      ;8486C0;
    LDA.B $07                            ;8486C2;
    SEC                                  ;8486C4;
    SBC.W $0000                          ;8486C5;
    CMP.W #$0000                         ;8486C8;
    BPL CODE_8486D0                      ;8486CB;
    LDA.W #$0000                         ;8486CD;

CODE_8486D0:
    STA.B $07                            ;8486D0;
    BRA CODE_8486DC                      ;8486D2;

CODE_8486D4:
    LDA.B $07                            ;8486D4;
    CLC                                  ;8486D6;
    ADC.W $0000                          ;8486D7;
    STA.B $07                            ;8486DA;

CODE_8486DC:
    SEP #$20                             ;8486DC;
    LDA.W $00A8                          ;8486DE;
    RTS                                  ;8486E1;

CODE_8486E2:
    BIT.B #$02                           ;8486E2;
    REP #$20                             ;8486E4;
    BEQ CODE_8486FA                      ;8486E6;
    LDA.B $04                            ;8486E8;
    SEC                                  ;8486EA;
    SBC.W $0000                          ;8486EB;
    CMP.W #$0000                         ;8486EE;
    BPL CODE_8486F6                      ;8486F1;
    LDA.W #$0000                         ;8486F3;

CODE_8486F6:
    STA.B $04                            ;8486F6;
    BRA CODE_848702                      ;8486F8;

CODE_8486FA:
    LDA.B $04                            ;8486FA;
    CLC                                  ;8486FC;
    ADC.W $0000                          ;8486FD;
    STA.B $04                            ;848700;

CODE_848702:
    SEP #$20                             ;848702;
    RTS                                  ;848704;

CODE_848705:
    LDA.B #$4A                           ;848705;
    STA.W $0000                          ;848707;
    LDA.B #$08                           ;84870A;
    STA.W $0001                          ;84870C;
    LDA.B $1B                            ;84870F;
    STA.W $0002                          ;848711;
    LDA.B $1C                            ;848714;
    STA.W $0003                          ;848716;
    JSR.W CODE_84878B                    ;848719;
    LDA.B #$6A                           ;84871C;
    STA.W $0000                          ;84871E;
    LDA.B #$08                           ;848721;
    STA.W $0001                          ;848723;
    LDA.B $1D                            ;848726;
    STA.W $0002                          ;848728;
    LDA.B $1E                            ;84872B;
    STA.W $0003                          ;84872D;
    JSR.W CODE_84878B                    ;848730;
    LDA.B #$8F                           ;848733;
    STA.W $0000                          ;848735;
    LDA.B #$08                           ;848738;
    STA.W $0001                          ;84873A;
    LDA.B $14                            ;84873D;
    STA.W $0002                          ;84873F;
    LDA.B $15                            ;848742;
    STA.W $0003                          ;848744;
    JSR.W CODE_84878B                    ;848747;
    REP #$30                             ;84874A;
    LDA.B $1B                            ;84874C;
    STA.W $0000                          ;84874E;
    LDA.B $1D                            ;848751;
    STA.W $0002                          ;848753;
    PHD                                  ;848756;
    LDA.W #$0000                         ;848757;
    TCD                                  ;84875A;
    JSL.L CODE_849156                    ;84875B;
    LDA.L $7E2000,X                      ;84875F;
    STA.B $02                            ;848763;
    PLD                                  ;848765;
    STA.B $21                            ;848766;
    LDA.W #$0857                         ;848768;
    STA.W $0000                          ;84876B;
    SEP #$30                             ;84876E;
    JSR.W CODE_84878B                    ;848770;
    REP #$10                             ;848773;
    LDY.B $21                            ;848775;
    LDA.B [$16],Y                        ;848777;
    STA.W $0002                          ;848779;
    STZ.W $0003                          ;84877C;
    LDX.W #$0877                         ;84877F;
    STX.W $0000                          ;848782;
    SEP #$10                             ;848785;
    JSR.W CODE_84878B                    ;848787;
    RTS                                  ;84878A;

CODE_84878B:
    LDX.W $00A4                          ;84878B;
    LDA.B #$80                           ;84878E;
    STA.W $0600,X                        ;848790;
    LDA.W $0000                          ;848793;
    STA.W $0601,X                        ;848796;
    LDA.W $0001                          ;848799;
    STA.W $0602,X                        ;84879C;
    LDA.B #$08                           ;84879F;
    STA.W $0603,X                        ;8487A1;
    LDA.W $0003                          ;8487A4;
    LSR A                                ;8487A7;
    LSR A                                ;8487A8;
    LSR A                                ;8487A9;
    LSR A                                ;8487AA;
    TAY                                  ;8487AB;
    LDA.W DATA8_86A58F,Y                 ;8487AC;
    STA.W $0604,X                        ;8487AF;
    LDA.B #$28                           ;8487B2;
    STA.W $0605,X                        ;8487B4;
    LDA.W $0003                          ;8487B7;
    AND.B #$0F                           ;8487BA;
    TAY                                  ;8487BC;
    LDA.W DATA8_86A58F,Y                 ;8487BD;
    STA.W $0606,X                        ;8487C0;
    LDA.B #$28                           ;8487C3;
    STA.W $0607,X                        ;8487C5;
    LDA.W $0002                          ;8487C8;
    LSR A                                ;8487CB;
    LSR A                                ;8487CC;
    LSR A                                ;8487CD;
    LSR A                                ;8487CE;
    TAY                                  ;8487CF;
    LDA.W DATA8_86A58F,Y                 ;8487D0;
    STA.W $0608,X                        ;8487D3;
    LDA.B #$28                           ;8487D6;
    STA.W $0609,X                        ;8487D8;
    LDA.W $0002                          ;8487DB;
    AND.B #$0F                           ;8487DE;
    TAY                                  ;8487E0;
    LDA.W DATA8_86A58F,Y                 ;8487E1;
    STA.W $060A,X                        ;8487E4;
    LDA.B #$28                           ;8487E7;
    STA.W $060B,X                        ;8487E9;
    TXA                                  ;8487EC;
    CLC                                  ;8487ED;
    ADC.B #$0C                           ;8487EE;
    STA.W $00A4                          ;8487F0;
    RTS                                  ;8487F3;

CODE_8487F4:
    STA.W $0002                          ;8487F4;
    LSR A                                ;8487F7;
    LSR A                                ;8487F8;
    LSR A                                ;8487F9;
    LSR A                                ;8487FA;
    TAX                                  ;8487FB;
    LDA.W DATA8_86A58F,X                 ;8487FC;
    STA.W $0001                          ;8487FF;
    LDA.W $0002                          ;848802;
    AND.B #$0F                           ;848805;
    TAX                                  ;848807;
    LDA.W DATA8_86A58F,X                 ;848808;
    STA.W $0000                          ;84880B;
    RTS                                  ;84880E;

CODE_84880F:
    LDA.W $00AB                          ;84880F;
    AND.B #$80                           ;848812;
    BEQ CODE_848821                      ;848814;
    LDA.W $00C0                          ;848816;
    INC A                                ;848819;
    AND.B #$13                           ;84881A;
    ORA.B #$04                           ;84881C;
    STA.W $00C0                          ;84881E;

CODE_848821:
    RTS                                  ;848821;

CODE_848822:
    LDA.B #$02                           ;848822;
    STA.W $0000                          ;848824;
    LDA.W $00AE                          ;848827;
    BIT.B #$80                           ;84882A;
    BEQ CODE_848833                      ;84882C;
    LDA.B #$08                           ;84882E;
    STA.W $0000                          ;848830;

CODE_848833:
    LDA.W $00AE                          ;848833;
    BIT.B #$03                           ;848836;
    BEQ CODE_848859                      ;848838;
    BIT.B #$02                           ;84883A;
    BEQ CODE_84884A                      ;84883C;
    LDA.B $1F                            ;84883E;
    SEC                                  ;848840;
    SBC.W $0000                          ;848841;
    BCS CODE_848854                      ;848844;
    LDA.B #$00                           ;848846;
    BRA CODE_848854                      ;848848;

CODE_84884A:
    LDA.B $1F                            ;84884A;
    CLC                                  ;84884C;
    ADC.W $0000                          ;84884D;
    BCC CODE_848854                      ;848850;
    LDA.B #$FF                           ;848852;

CODE_848854:
    STA.B $1F                            ;848854;
    LDA.W $00AE                          ;848856;

CODE_848859:
    BIT.B #$0C                           ;848859;
    BEQ CODE_84887B                      ;84885B;
    BIT.B #$08                           ;84885D;
    BEQ CODE_84886D                      ;84885F;
    LDA.B $20                            ;848861;
    SEC                                  ;848863;
    SBC.W $0000                          ;848864;
    BCS CODE_848879                      ;848867;
    LDA.B #$00                           ;848869;
    BRA CODE_848879                      ;84886B;

CODE_84886D:
    LDA.B $20                            ;84886D;
    CLC                                  ;84886F;
    ADC.W $0000                          ;848870;
    CMP.B #$E0                           ;848873;
    BCC CODE_848879                      ;848875;
    LDA.B #$DF                           ;848877;

CODE_848879:
    STA.B $20                            ;848879;

CODE_84887B:
    REP #$20                             ;84887B;
    LDA.B $1F                            ;84887D;
    AND.W #$00FF                         ;84887F;
    CLC                                  ;848882;
    ADC.B $04                            ;848883;
    STA.W $0000                          ;848885;
    STA.B $1B                            ;848888;
    LDA.B $20                            ;84888A;
    AND.W #$00FF                         ;84888C;
    CLC                                  ;84888F;
    ADC.B $07                            ;848890;
    STA.W $0002                          ;848892;
    STA.B $1D                            ;848895;
    SEP #$20                             ;848897;
    LDA.W $00B1                          ;848899;
    BIT.B #$30                           ;84889C;
    BEQ CODE_8488B3                      ;84889E;
    BIT.B #$20                           ;8488A0;
    REP #$20                             ;8488A2;
    BEQ CODE_8488AA                      ;8488A4;
    INC.B $14                            ;8488A6;
    BRA CODE_8488AC                      ;8488A8;

CODE_8488AA:
    DEC.B $14                            ;8488AA;

CODE_8488AC:
    LDA.W #$E000                         ;8488AC;
    TRB.B $14                            ;8488AF;
    SEP #$20                             ;8488B1;

CODE_8488B3:
    LDA.W $00B1                          ;8488B3;
    BIT.B #$80                           ;8488B6;
    BEQ CODE_8488C2                      ;8488B8;
    REP #$20                             ;8488BA;
    LDA.B $21                            ;8488BC;
    STA.B $14                            ;8488BE;
    SEP #$20                             ;8488C0;

CODE_8488C2:
    LDA.W $00B2                          ;8488C2;
    AND.B #$40                           ;8488C5;
    BEQ CODE_8488DB                      ;8488C7;
    LDA.B $14                            ;8488C9;
    STA.W $0008                          ;8488CB;
    LDA.B $15                            ;8488CE;
    STA.W $0009                          ;8488D0;
    JSL.L CODE_849111                    ;8488D3;
    JSL.L CODE_80B8D7                    ;8488D7;

CODE_8488DB:
    LDA.B #$80                           ;8488DB;
    STA.W $08FE                          ;8488DD;
    LDA.B #$30                           ;8488E0;
    STA.W $08FF                          ;8488E2;
    LDA.B $1F                            ;8488E5;
    SEC                                  ;8488E7;
    SBC.B #$04                           ;8488E8;
    STA.W $08FC                          ;8488EA;
    LDA.B $20                            ;8488ED;
    SEC                                  ;8488EF;
    SBC.B #$04                           ;8488F0;
    STA.W $08FD                          ;8488F2;
    STZ.W $091F                          ;8488F5;
    RTS                                  ;8488F8;

CODE_8488F9:
    REP #$30                             ;8488F9;
    STZ.B $23                            ;8488FB;
    LDA.B $25                            ;8488FD;
    STA.W $0000                          ;8488FF;
    LDA.B $29                            ;848902;
    AND.W #$00FF                         ;848904;
    ASL A                                ;848907;
    ASL A                                ;848908;
    ASL A                                ;848909;
    ASL A                                ;84890A;
    CLC                                  ;84890B;
    ADC.B $27                            ;84890C;
    STA.W $0002                          ;84890E;

CODE_848911:
    PHD                                  ;848911;
    LDA.W #$0000                         ;848912;
    TCD                                  ;848915;
    JSL.L CODE_849156                    ;848916;
    PLD                                  ;84891A;
    LDA.L $7E2000,X                      ;84891B;
    PHX                                  ;84891F;
    LDX.B $23                            ;848920;
    STA.L $7EF0C8,X                      ;848922;
    CPX.W #$001C                         ;848926;
    PLX                                  ;848929;
    BCS CODE_84893C                      ;84892A;
    LDA.W $0000                          ;84892C;
    CLC                                  ;84892F;
    ADC.W #$0010                         ;848930;
    STA.W $0000                          ;848933;
    INC.B $23                            ;848936;
    INC.B $23                            ;848938;
    BRA CODE_848911                      ;84893A;

CODE_84893C:
    RTS                                  ;84893C;

CODE_84893D:
    REP #$20                             ;84893D;
    LDA.B $29                            ;84893F;
    AND.W #$00FF                         ;848941;
    ASL A                                ;848944;
    ASL A                                ;848945;
    ASL A                                ;848946;
    ASL A                                ;848947;
    ASL A                                ;848948;
    ASL A                                ;848949;
    CLC                                  ;84894A;
    ADC.W #$0842                         ;84894B;
    LDX.W $00A3                          ;84894E;
    STA.W $0501,X                        ;848951;
    CLC                                  ;848954;
    ADC.W #$0020                         ;848955;
    STA.W $0509,X                        ;848958;
    LDA.W #$0038                         ;84895B;
    STA.W $0503,X                        ;84895E;
    STA.W $050B,X                        ;848961;
    LDA.W #$F000                         ;848964;
    STA.W $0505,X                        ;848967;
    LDA.W #$F100                         ;84896A;
    STA.W $050D,X                        ;84896D;
    SEP #$20                             ;848970;
    LDA.B #$80                           ;848972;
    STA.W $0500,X                        ;848974;
    STA.W $0508,X                        ;848977;
    LDA.B #$7E                           ;84897A;
    STA.W $0507,X                        ;84897C;
    STA.W $050F,X                        ;84897F;
    TXA                                  ;848982;
    CLC                                  ;848983;
    ADC.B #$10                           ;848984;
    STA.W $00A3                          ;848986;
    RTS                                  ;848989;
    PHP                                  ;84898A;
    PHD                                  ;84898B;
    REP #$20                             ;84898C;
    LDA.W #$1E08                         ;84898E;
    TCD                                  ;848991;
    STZ.B $00                            ;848992;
    STZ.B $02                            ;848994;
    STZ.B $07                            ;848996;
    STZ.W $00BE                          ;848998;
    STZ.W $00BC                          ;84899B;
    STZ.B $14                            ;84899E;
    STZ.B $18                            ;8489A0;
    LDA.W $0300                          ;8489A2;
    STA.B $2F                            ;8489A5;
    SEP #$30                             ;8489A7;
    LDA.W $00C0                          ;8489A9;
    STA.B $12                            ;8489AC;
    LDA.W $00C1                          ;8489AE;
    STA.B $13                            ;8489B1;
    LDA.B #$17                           ;8489B3;
    STA.W $00C0                          ;8489B5;
    STA.W $00C1                          ;8489B8;
    STZ.B $11                            ;8489BB;
    STZ.B $10                            ;8489BD;
    STZ.B $17                            ;8489BF;
    INC.B $00                            ;8489C1;
    LDA.B #$04                           ;8489C3;
    STA.W $00A2                          ;8489C5;
    JSR.W CODE_848AF0                    ;8489C8;
    JSR.W CODE_848E4D                    ;8489CB;
    STZ.W $0B9D                          ;8489CE;
    STZ.B $14                            ;8489D1;
    STZ.B $15                            ;8489D3;

CODE_8489D5:
    LDA.W $0B9D                          ;8489D5;
    BEQ CODE_8489D5                      ;8489D8;
    JSR.W CODE_848BA0                    ;8489DA;

CODE_8489DD:
    STZ.W $0B9D                          ;8489DD;
    STZ.B $14                            ;8489E0;
    STZ.B $15                            ;8489E2;
    STZ.W $08FC                          ;8489E4;
    LDA.W $2137                          ;8489E7;
    LDA.W $213D                          ;8489EA;
    STA.W $08FD                          ;8489ED;
    LDA.B #$01                           ;8489F0;
    STA.W $08FE                          ;8489F2;
    LDA.B #$20                           ;8489F5;
    STA.W $08FF                          ;8489F7;

CODE_8489FA:
    LDA.W $0B9D                          ;8489FA;
    BEQ CODE_8489FA                      ;8489FD;
    LDA.B $18                            ;8489FF;
    STA.W $2126                          ;848A01;
    LDA.B $19                            ;848A04;
    STA.W $2127                          ;848A06;
    LDX.B $01                            ;848A09;
    JSR.W (PTR16_848A4B,X)               ;848A0B;
    JSR.W CODE_848C5E                    ;848A0E;
    JSR.W CODE_848D28                    ;848A11;
    JSR.W CODE_848E77                    ;848A14;
    LDA.W $00AD                          ;848A17;
    CMP.B #$80                           ;848A1A;
    BNE CODE_8489DD                      ;848A1C;
    STZ.W $0B9D                          ;848A1E;

CODE_848A21:
    LDA.W $0B9D                          ;848A21;
    BEQ CODE_848A21                      ;848A24;
    LDA.B #$04                           ;848A26;
    STA.W $00A2                          ;848A28;
    JSR.W CODE_848E64                    ;848A2B;
    LDA.B $12                            ;848A2E;
    STA.W $00C0                          ;848A30;
    LDA.B $13                            ;848A33;
    STA.W $00C1                          ;848A35;
    STZ.W $2123                          ;848A38;
    STZ.W $2124                          ;848A3B;
    STZ.W $2125                          ;848A3E;
    REP #$20                             ;848A41;
    LDA.B $2F                            ;848A43;
    STA.W $0300                          ;848A45;
    PLD                                  ;848A48;
    PLP                                  ;848A49;
    RTL                                  ;848A4A;

PTR16_848A4B:
    dw CODE_848A51                       ;848A4B;
    dw CODE_848A6D                       ;848A4D;
    dw CODE_848A93                       ;848A4F;

CODE_848A51:
    LDA.W $00B2                          ;848A51;
    AND.B #$03                           ;848A54;
    BEQ CODE_848A61                      ;848A56;
    LDA.B #$01                           ;848A58;
    EOR.B $11                            ;848A5A;
    STA.B $11                            ;848A5C;
    JSR.W CODE_848BA0                    ;848A5E;

CODE_848A61:
    LDA.W $00B2                          ;848A61;
    AND.B #$10                           ;848A64;
    BEQ CODE_848A6C                      ;848A66;
    LDA.B #$02                           ;848A68;
    STA.B $01                            ;848A6A;

CODE_848A6C:
    RTS                                  ;848A6C;

CODE_848A6D:
    LDA.W $00B2                          ;848A6D;
    BIT.B #$03                           ;848A70;
    BEQ CODE_848A87                      ;848A72;
    BIT.B #$02                           ;848A74;
    BEQ CODE_848A7A                      ;848A76;
    DEC.B $10                            ;848A78;

CODE_848A7A:
    BIT.B #$01                           ;848A7A;
    BEQ CODE_848A80                      ;848A7C;
    INC.B $10                            ;848A7E;

CODE_848A80:
    LDA.B #$F8                           ;848A80;
    TRB.B $10                            ;848A82;
    JSR.W CODE_848BA0                    ;848A84;

CODE_848A87:
    LDA.W $00B2                          ;848A87;
    BIT.B #$10                           ;848A8A;
    BEQ CODE_848A92                      ;848A8C;
    LDA.B #$04                           ;848A8E;
    STA.B $01                            ;848A90;

CODE_848A92:
    RTS                                  ;848A92;

CODE_848A93:
    LDA.W $00B2                          ;848A93;
    BIT.B #$03                           ;848A96;
    BEQ CODE_848AB5                      ;848A98;
    BIT.B #$01                           ;848A9A;
    BEQ CODE_848AA9                      ;848A9C;
    LDA.B $07                            ;848A9E;
    INC A                                ;848AA0;
    CMP.B #$03                           ;848AA1;
    BCC CODE_848AB0                      ;848AA3;
    LDA.B #$00                           ;848AA5;
    BRA CODE_848AB0                      ;848AA7;

CODE_848AA9:
    LDA.B $07                            ;848AA9;
    DEC A                                ;848AAB;
    BPL CODE_848AB0                      ;848AAC;
    LDA.B #$02                           ;848AAE;

CODE_848AB0:
    STA.B $07                            ;848AB0;
    LDA.W $00B2                          ;848AB2;

CODE_848AB5:
    BIT.B #$0C                           ;848AB5;
    BEQ CODE_848AD1                      ;848AB7;
    BIT.B #$08                           ;848AB9;
    BEQ CODE_848AC6                      ;848ABB;
    LDA.B $08                            ;848ABD;
    DEC A                                ;848ABF;
    BPL CODE_848ACF                      ;848AC0;
    LDA.B #$0F                           ;848AC2;
    BRA CODE_848ACF                      ;848AC4;

CODE_848AC6:
    LDA.B $08                            ;848AC6;
    INC A                                ;848AC8;
    CMP.B #$10                           ;848AC9;
    BCC CODE_848ACF                      ;848ACB;
    LDA.B #$00                           ;848ACD;

CODE_848ACF:
    STA.B $08                            ;848ACF;

CODE_848AD1:
    LDA.W $00B1                          ;848AD1;
    LSR A                                ;848AD4;
    LSR A                                ;848AD5;
    ORA.W $00B2                          ;848AD6;
    STA.W $0000                          ;848AD9;
    BIT.B #$C0                           ;848ADC;
    BEQ CODE_848AE3                      ;848ADE;
    JSR.W CODE_848D57                    ;848AE0;

CODE_848AE3:
    LDA.W $00B2                          ;848AE3;
    AND.B #$10                           ;848AE6;
    BEQ CODE_848AEC                      ;848AE8;
    STZ.B $01                            ;848AEA;

CODE_848AEC:
    JSR.W CODE_848BA0                    ;848AEC;
    RTS                                  ;848AEF;

CODE_848AF0:
    PHD                                  ;848AF0;
    PEA.W $0000                          ;848AF1;
    PLD                                  ;848AF4;
    LDX.B #$06                           ;848AF5;

CODE_848AF7:
    LDA.W DATA8_86A59F,X                 ;848AF7;
    STA.B $10                            ;848AFA;
    LDA.W DATA8_86A5A0,X                 ;848AFC;
    STA.B $14                            ;848AFF;
    REP #$20                             ;848B01;
    LDA.W #$A5AF                         ;848B03;
    STA.B $18                            ;848B06;
    LDA.W DATA8_86A5A7,X                 ;848B08;
    STA.B $1C                            ;848B0B;
    SEP #$20                             ;848B0D;
    JSR.W CODE_848B18                    ;848B0F;
    DEX                                  ;848B12;
    DEX                                  ;848B13;
    BPL CODE_848AF7                      ;848B14;
    PLD                                  ;848B16;
    RTS                                  ;848B17;

CODE_848B18:
    PHX                                  ;848B18;
    PHY                                  ;848B19;
    PHP                                  ;848B1A;
    PHD                                  ;848B1B;
    PEA.W $0000                          ;848B1C;
    PLD                                  ;848B1F;
    REP #$20                             ;848B20;
    SEP #$10                             ;848B22;
    LDX.B $14                            ;848B24;
    STX.B $15                            ;848B26;
    LDX.B $1D                            ;848B28;
    TXA                                  ;848B2A;
    ASL A                                ;848B2B;
    ASL A                                ;848B2C;
    ASL A                                ;848B2D;
    ASL A                                ;848B2E;
    ASL A                                ;848B2F;
    STA.B $0E                            ;848B30;
    LDX.B $1C                            ;848B32;
    TXA                                  ;848B34;
    CLC                                  ;848B35;
    ADC.B $0E                            ;848B36;
    CLC                                  ;848B38;
    ADC.W #$0800                         ;848B39;
    STA.B $1C                            ;848B3C;
    LDA.B $10                            ;848B3E;
    AND.W #$00FF                         ;848B40;
    CLC                                  ;848B43;
    ADC.B $18                            ;848B44;
    REP #$10                             ;848B46;
    TAY                                  ;848B48;
    SEP #$20                             ;848B49;
    LDX.W $1E1C                          ;848B4B;
    STX.B $20                            ;848B4E;

CODE_848B50:
    LDA.W $0000,Y                        ;848B50;
    STA.L $7EF000,X                      ;848B53;
    LDA.B #$20                           ;848B57;
    STA.L $7EF001,X                      ;848B59;
    INY                                  ;848B5D;
    INX                                  ;848B5E;
    INX                                  ;848B5F;
    DEC.B $14                            ;848B60;
    BNE CODE_848B50                      ;848B62;
    STX.W $1E1C                          ;848B64;
    SEP #$10                             ;848B67;
    LDX.B $A3                            ;848B69;
    LDA.B #$80                           ;848B6B;
    STA.W $0500,X                        ;848B6D;
    LDA.B $1C                            ;848B70;
    STA.W $0501,X                        ;848B72;
    LDA.B $1D                            ;848B75;
    STA.W $0502,X                        ;848B77;
    LDA.B $15                            ;848B7A;
    ASL A                                ;848B7C;
    STA.W $0503,X                        ;848B7D;
    STZ.W $0504,X                        ;848B80;
    REP #$20                             ;848B83;
    LDA.B $20                            ;848B85;
    CLC                                  ;848B87;
    ADC.W #$F000                         ;848B88;
    STA.W $0505,X                        ;848B8B;
    SEP #$20                             ;848B8E;
    LDA.B #$7E                           ;848B90;
    STA.W $0507,X                        ;848B92;
    TXA                                  ;848B95;
    CLC                                  ;848B96;
    ADC.B #$08                           ;848B97;
    STA.B $A3                            ;848B99;
    PLD                                  ;848B9B;
    PLP                                  ;848B9C;
    PLY                                  ;848B9D;
    PLX                                  ;848B9E;
    RTS                                  ;848B9F;

CODE_848BA0:
    PHP                                  ;848BA0;
    SEP #$30                             ;848BA1;
    JSR.W CODE_848EBC                    ;848BA3;
    LDA.B $11                            ;848BA6;
    ASL A                                ;848BA8;
    ASL A                                ;848BA9;
    ASL A                                ;848BAA;
    CLC                                  ;848BAB;
    ADC.B $10                            ;848BAC;
    REP #$30                             ;848BAE;
    AND.W #$00FF                         ;848BB0;
    ASL A                                ;848BB3;
    ASL A                                ;848BB4;
    ASL A                                ;848BB5;
    ASL A                                ;848BB6;
    ASL A                                ;848BB7;
    TAX                                  ;848BB8;
    LDY.W #$0000                         ;848BB9;
    SEP #$20                             ;848BBC;

CODE_848BBE:
    LDA.B #$00                           ;848BBE;
    XBA                                  ;848BC0;
    STZ.W $0000                          ;848BC1;
    PHY                                  ;848BC4;
    LDA.W $0300,X                        ;848BC5;
    AND.B #$0F                           ;848BC8;
    TAY                                  ;848BCA;
    LDA.W DATA8_86A5CD,Y                 ;848BCB;
    STA.W $0002                          ;848BCE;
    LDA.W $0300,X                        ;848BD1;
    AND.B #$10                           ;848BD4;
    LSR A                                ;848BD6;
    LSR A                                ;848BD7;
    LSR A                                ;848BD8;
    LSR A                                ;848BD9;
    TAY                                  ;848BDA;
    LDA.W DATA8_86A5CD,Y                 ;848BDB;
    STA.W $0001                          ;848BDE;
    STZ.W $0003                          ;848BE1;
    REP #$20                             ;848BE4;
    LDA.W $0300,X                        ;848BE6;
    STA.W $000E                          ;848BE9;
    SEP #$20                             ;848BEC;
    LDA.B #$00                           ;848BEE;
    XBA                                  ;848BF0;
    LSR.W $000F                          ;848BF1;
    LDA.W $000E                          ;848BF4;
    ROR A                                ;848BF7;
    LSR A                                ;848BF8;
    LSR A                                ;848BF9;
    LSR A                                ;848BFA;
    LSR A                                ;848BFB;
    TAY                                  ;848BFC;
    LDA.W DATA8_86A5CD,Y                 ;848BFD;
    STA.W $0005                          ;848C00;
    LDA.W $000F                          ;848C03;
    AND.B #$01                           ;848C06;
    TAY                                  ;848C08;
    LDA.W DATA8_86A5CD,Y                 ;848C09;
    STA.W $0004                          ;848C0C;
    STZ.W $0006                          ;848C0F;
    LSR.W $000F                          ;848C12;
    LDA.W $000F                          ;848C15;
    AND.B #$0F                           ;848C18;
    TAY                                  ;848C1A;
    LDA.W DATA8_86A5CD,Y                 ;848C1B;
    STA.W $0008                          ;848C1E;
    LDA.W $000F                          ;848C21;
    LSR A                                ;848C24;
    LSR A                                ;848C25;
    LSR A                                ;848C26;
    LSR A                                ;848C27;
    TAY                                  ;848C28;
    LDA.W DATA8_86A5CD,Y                 ;848C29;
    STA.W $0007                          ;848C2C;
    STZ.W $0010                          ;848C2F;
    LDA.B #$09                           ;848C32;
    STA.W $0014                          ;848C34;
    LDA.B #$00                           ;848C37;
    STA.W $0018                          ;848C39;
    LDA.B #$00                           ;848C3C;
    STA.W $0019                          ;848C3E;
    PLY                                  ;848C41;
    TYA                                  ;848C42;
    CLC                                  ;848C43;
    ADC.B #$0A                           ;848C44;
    STA.W $001D                          ;848C46;
    LDA.B #$00                           ;848C49;
    STA.W $001C                          ;848C4B;
    JSR.W CODE_848B18                    ;848C4E;
    INX                                  ;848C51;
    INX                                  ;848C52;
    INY                                  ;848C53;
    CPY.W #$0010                         ;848C54;
    BEQ CODE_848C5C                      ;848C57;
    JMP.W CODE_848BBE                    ;848C59;

CODE_848C5C:
    PLP                                  ;848C5C;
    RTS                                  ;848C5D;

CODE_848C5E:
    LDA.B $11                            ;848C5E;
    BNE CODE_848C66                      ;848C60;
    LDA.B #$04                           ;848C62;
    BRA CODE_848C68                      ;848C64;

CODE_848C66:
    LDA.B #$00                           ;848C66;

CODE_848C68:
    STA.W $001C                          ;848C68;
    LDA.B #$05                           ;848C6B;
    STA.W $001D                          ;848C6D;
    LDA.B #$01                           ;848C70;
    STA.W $0014                          ;848C72;
    REP #$20                             ;848C75;
    STZ.W $0018                          ;848C77;
    STZ.W $0010                          ;848C7A;
    SEP #$20                             ;848C7D;
    STZ.W $0000                          ;848C7F;
    JSR.W CODE_848B18                    ;848C82;
    LDA.B $11                            ;848C85;
    ASL A                                ;848C87;
    ASL A                                ;848C88;
    CLC                                  ;848C89;
    ADC.B #$00                           ;848C8A;
    STA.W $001C                          ;848C8C;
    LDA.B #$05                           ;848C8F;
    STA.W $001D                          ;848C91;
    REP #$20                             ;848C94;
    STZ.W $0018                          ;848C96;
    STZ.W $0010                          ;848C99;
    SEP #$20                             ;848C9C;
    LDA.B #$3E                           ;848C9E;
    STA.W $0000                          ;848CA0;
    LDA.B $01                            ;848CA3;
    BNE CODE_848CAC                      ;848CA5;
    LDA.B #$7C                           ;848CA7;
    STA.W $0000                          ;848CA9;

CODE_848CAC:
    LDA.B #$01                           ;848CAC;
    STA.W $0014                          ;848CAE;
    JSR.W CODE_848B18                    ;848CB1;
    REP #$20                             ;848CB4;
    STZ.W $0000                          ;848CB6;
    STZ.W $0002                          ;848CB9;
    STZ.W $0004                          ;848CBC;
    STZ.W $0006                          ;848CBF;
    SEP #$20                             ;848CC2;
    LDA.B $01                            ;848CC4;
    CMP.B #$02                           ;848CC6;
    BEQ CODE_848CCE                      ;848CC8;
    LDA.B #$3E                           ;848CCA;
    BRA CODE_848CD0                      ;848CCC;

CODE_848CCE:
    LDA.B #$7C                           ;848CCE;

CODE_848CD0:
    LDX.B $10                            ;848CD0;
    STA.W $0000,X                        ;848CD2;
    REP #$20                             ;848CD5;
    STZ.W $0018                          ;848CD7;
    STZ.W $0010                          ;848CDA;
    SEP #$20                             ;848CDD;
    LDA.B #$01                           ;848CDF;
    STA.W $001C                          ;848CE1;
    LDA.B #$06                           ;848CE4;
    STA.W $001D                          ;848CE6;
    LDA.B #$08                           ;848CE9;
    STA.W $0014                          ;848CEB;
    JSR.W CODE_848B18                    ;848CEE;
    LDA.B $07                            ;848CF1;
    ASL A                                ;848CF3;
    CLC                                  ;848CF4;
    ADC.B $07                            ;848CF5;
    CLC                                  ;848CF7;
    ADC.B #$00                           ;848CF8;
    STA.W $001C                          ;848CFA;
    LDA.B $08                            ;848CFD;
    CLC                                  ;848CFF;
    ADC.B #$0A                           ;848D00;
    STA.W $001D                          ;848D02;
    LDA.B #$01                           ;848D05;
    STA.W $0014                          ;848D07;
    REP #$20                             ;848D0A;
    STZ.W $0018                          ;848D0C;
    STZ.W $0010                          ;848D0F;
    SEP #$20                             ;848D12;
    LDA.B #$3E                           ;848D14;
    STA.W $0000                          ;848D16;
    LDA.B $01                            ;848D19;
    CMP.B #$04                           ;848D1B;
    BNE CODE_848D24                      ;848D1D;
    LDA.B #$7C                           ;848D1F;
    STA.W $0000                          ;848D21;

CODE_848D24:
    JSR.W CODE_848B18                    ;848D24;
    RTS                                  ;848D27;

CODE_848D28:
    LDA.W $00B1                          ;848D28;
    AND.B #$40                           ;848D2B;
    BEQ CODE_848D56                      ;848D2D;
    LDA.B $17                            ;848D2F;
    EOR.B #$01                           ;848D31;
    STA.B $17                            ;848D33;
    BEQ CODE_848D4A                      ;848D35;
    LDA.B #$22                           ;848D37;
    STA.W $2123                          ;848D39;
    STZ.W $2124                          ;848D3C;
    LDA.B #$02                           ;848D3F;
    STA.W $2125                          ;848D41;
    LDA.B #$17                           ;848D44;
    STA.W $212E                          ;848D46;
    RTS                                  ;848D49;

CODE_848D4A:
    STZ.W $2123                          ;848D4A;
    STZ.W $2124                          ;848D4D;
    STZ.W $2125                          ;848D50;
    STZ.W $212E                          ;848D53;

CODE_848D56:
    RTS                                  ;848D56;

CODE_848D57:
    LDA.B $11                            ;848D57;
    ASL A                                ;848D59;
    ASL A                                ;848D5A;
    ASL A                                ;848D5B;
    CLC                                  ;848D5C;
    ADC.B $10                            ;848D5D;
    REP #$20                             ;848D5F;
    AND.W #$00FF                         ;848D61;
    ASL A                                ;848D64;
    ASL A                                ;848D65;
    ASL A                                ;848D66;
    ASL A                                ;848D67;
    ASL A                                ;848D68;
    STA.W $0002                          ;848D69;
    LDA.B $08                            ;848D6C;
    AND.W #$00FF                         ;848D6E;
    ASL A                                ;848D71;
    CLC                                  ;848D72;
    ADC.W $0002                          ;848D73;
    STA.W $0002                          ;848D76;
    SEP #$20                             ;848D79;
    LDA.B $07                            ;848D7B;
    ASL A                                ;848D7D;
    TAX                                  ;848D7E;
    JSR.W (PTR16_848DA3,X)               ;848D7F;
    LDA.W $0000                          ;848D82;
    BIT.B #$40                           ;848D85;
    BEQ CODE_848D8E                      ;848D87;
    INC.W $0004                          ;848D89;
    BRA CODE_848D91                      ;848D8C;

CODE_848D8E:
    DEC.W $0004                          ;848D8E;

CODE_848D91:
    LDA.B #$E0                           ;848D91;
    TRB.W $0004                          ;848D93;
    LDA.B $07                            ;848D96;
    ASL A                                ;848D98;
    TAX                                  ;848D99;
    JSR.W (PTR16_848DA9,X)               ;848D9A;
    LDA.B #$01                           ;848D9D;
    STA.W $00A1                          ;848D9F;
    RTS                                  ;848DA2;

PTR16_848DA3:
    dw CODE_848DAF                       ;848DA3;
    dw CODE_848DC0                       ;848DA5;
    dw CODE_848DD6                       ;848DA7;

PTR16_848DA9:
    dw CODE_848DEA                       ;848DA9;
    dw CODE_848E07                       ;848DAB;
    dw CODE_848E29                       ;848DAD;

CODE_848DAF:
    PHP                                  ;848DAF;
    REP #$30                             ;848DB0;
    LDX.W $0002                          ;848DB2;
    LDA.W $0300,X                        ;848DB5;
    AND.W #$001F                         ;848DB8;
    STA.W $0004                          ;848DBB;
    PLP                                  ;848DBE;
    RTS                                  ;848DBF;

CODE_848DC0:
    PHP                                  ;848DC0;
    REP #$30                             ;848DC1;
    LDX.W $0002                          ;848DC3;
    LDA.W $0300,X                        ;848DC6;
    AND.W #$03E0                         ;848DC9;
    LSR A                                ;848DCC;
    LSR A                                ;848DCD;
    LSR A                                ;848DCE;
    LSR A                                ;848DCF;
    LSR A                                ;848DD0;
    STA.W $0004                          ;848DD1;
    PLP                                  ;848DD4;
    RTS                                  ;848DD5;

CODE_848DD6:
    PHP                                  ;848DD6;
    REP #$30                             ;848DD7;
    LDX.W $0002                          ;848DD9;
    LDA.W $0300,X                        ;848DDC;
    AND.W #$7C00                         ;848DDF;
    LSR A                                ;848DE2;
    LSR A                                ;848DE3;
    XBA                                  ;848DE4;
    STA.W $0004                          ;848DE5;
    PLP                                  ;848DE8;
    RTS                                  ;848DE9;

CODE_848DEA:
    PHP                                  ;848DEA;
    REP #$30                             ;848DEB;
    LDX.W $0002                          ;848DED;
    LDA.W $0300,X                        ;848DF0;
    AND.W #$FFE0                         ;848DF3;
    STA.W $0300,X                        ;848DF6;
    LDA.W $0004                          ;848DF9;
    AND.W #$001F                         ;848DFC;
    ORA.W $0300,X                        ;848DFF;
    STA.W $0300,X                        ;848E02;
    PLP                                  ;848E05;
    RTS                                  ;848E06;

CODE_848E07:
    PHP                                  ;848E07;
    REP #$30                             ;848E08;
    LDX.W $0002                          ;848E0A;
    LDA.W $0300,X                        ;848E0D;
    AND.W #$FC1F                         ;848E10;
    STA.W $0300,X                        ;848E13;
    LDA.W $0004                          ;848E16;
    AND.W #$001F                         ;848E19;
    ASL A                                ;848E1C;
    ASL A                                ;848E1D;
    ASL A                                ;848E1E;
    ASL A                                ;848E1F;
    ASL A                                ;848E20;
    ORA.W $0300,X                        ;848E21;
    STA.W $0300,X                        ;848E24;
    PLP                                  ;848E27;
    RTS                                  ;848E28;

CODE_848E29:
    PHP                                  ;848E29;
    REP #$30                             ;848E2A;
    LDX.W $0002                          ;848E2C;
    LDA.W $0300,X                        ;848E2F;
    AND.W #$03FF                         ;848E32;
    STA.W $0300,X                        ;848E35;
    LDA.W $0004                          ;848E38;
    AND.W #$001F                         ;848E3B;
    SEP #$20                             ;848E3E;
    XBA                                  ;848E40;
    REP #$20                             ;848E41;
    ASL A                                ;848E43;
    ASL A                                ;848E44;
    ORA.W $0300,X                        ;848E45;
    STA.W $0300,X                        ;848E48;
    PLP                                  ;848E4B;
    RTS                                  ;848E4C;

CODE_848E4D:
    LDX.B #$00                           ;848E4D;
    STZ.B $16                            ;848E4F;

CODE_848E51:
    LDA.W $0AA1,X                        ;848E51;
    LSR A                                ;848E54;
    ROL.B $16                            ;848E55;
    STZ.W $0AA1,X                        ;848E57;
    TXA                                  ;848E5A;
    CLC                                  ;848E5B;
    ADC.B #$07                           ;848E5C;
    TAX                                  ;848E5E;
    CMP.B #$38                           ;848E5F;
    BCC CODE_848E51                      ;848E61;
    RTS                                  ;848E63;

CODE_848E64:
    LDA.B #$31                           ;848E64;

CODE_848E66:
    TAX                                  ;848E66;
    LSR.B $16                            ;848E67;
    BCC CODE_848E70                      ;848E69;
    LDA.B #$01                           ;848E6B;
    STA.W $0AA1,X                        ;848E6D;

CODE_848E70:
    TXA                                  ;848E70;
    SEC                                  ;848E71;
    SBC.B #$07                           ;848E72;
    BCS CODE_848E66                      ;848E74;
    RTS                                  ;848E76;

CODE_848E77:
    LDA.W $00AD                          ;848E77;
    BIT.B #$30                           ;848E7A;
    BEQ CODE_848EAF                      ;848E7C;
    BIT.B #$20                           ;848E7E;
    REP #$20                             ;848E80;
    BEQ CODE_848E91                      ;848E82;
    LDA.B $04                            ;848E84;
    CLC                                  ;848E86;
    ADC.W #$0004                         ;848E87;
    BMI CODE_848E9F                      ;848E8A;
    LDA.W #$0000                         ;848E8C;
    BRA CODE_848E9F                      ;848E8F;

CODE_848E91:
    LDA.B $04                            ;848E91;
    SEC                                  ;848E93;
    SBC.W #$0004                         ;848E94;
    CMP.W #$FF50                         ;848E97;
    BPL CODE_848E9F                      ;848E9A;
    LDA.W #$FF50                         ;848E9C;

CODE_848E9F:
    STA.B $04                            ;848E9F;
    SEP #$20                             ;848EA1;
    LDA.B $04                            ;848EA3;
    EOR.B #$FF                           ;848EA5;
    INC A                                ;848EA7;
    STA.B $18                            ;848EA8;
    CLC                                  ;848EAA;
    ADC.B #$48                           ;848EAB;
    STA.B $19                            ;848EAD;

CODE_848EAF:
    REP #$20                             ;848EAF;
    LDA.B $04                            ;848EB1;
    STA.W $00BC                          ;848EB3;
    STZ.W $00BE                          ;848EB6;
    SEP #$20                             ;848EB9;
    RTS                                  ;848EBB;

CODE_848EBC:
    LDA.B $11                            ;848EBC;
    ASL A                                ;848EBE;
    ASL A                                ;848EBF;
    ASL A                                ;848EC0;
    CLC                                  ;848EC1;
    ADC.B $10                            ;848EC2;
    REP #$30                             ;848EC4;
    AND.W #$00FF                         ;848EC6;
    ASL A                                ;848EC9;
    ASL A                                ;848ECA;
    ASL A                                ;848ECB;
    ASL A                                ;848ECC;
    ASL A                                ;848ECD;
    STA.W $0002                          ;848ECE;
    LDA.B $08                            ;848ED1;
    AND.W #$00FF                         ;848ED3;
    ASL A                                ;848ED6;
    CLC                                  ;848ED7;
    ADC.W $0002                          ;848ED8;
    TAX                                  ;848EDB;
    LDA.W $0300,X                        ;848EDC;
    STA.W $0300                          ;848EDF;
    SEP #$30                             ;848EE2;
    LDA.B #$01                           ;848EE4;
    STA.W $00A1                          ;848EE6;
    RTS                                  ;848EE9;

CODE_848EEA:
    PHP                                  ;848EEA;
    PHB                                  ;848EEB;
    SEP #$30                             ;848EEC;
    DEC.B $13                            ;848EEE;
    BNE CODE_848F4F                      ;848EF0;
    LDA.B #$AF                           ;848EF2;
    PHA                                  ;848EF4;
    PLB                                  ;848EF5;
    REP #$21                             ;848EF6;
    LDA.B $14                            ;848EF8;
    ADC.W #$0003                         ;848EFA;
    LDY.B $0F                            ;848EFD;
    BPL CODE_848F38                      ;848EFF;
    STA.B $14                            ;848F01;
    ADC.B ($14)                          ;848F03;
    BRA CODE_848F38                      ;848F05;

CODE_848F07:
    PHP                                  ;848F07;
    PHB                                  ;848F08;
    REP #$30                             ;848F09;
    STA.W $000E                          ;848F0B;
    LDA.B $16                            ;848F0E;
    AND.W #$00FF                         ;848F10;
    STA.W $000C                          ;848F13;
    ASL A                                ;848F16;
    CLC                                  ;848F17;
    ADC.W $000C                          ;848F18;
    TAX                                  ;848F1B;
    LDA.L DATA8_AFA000,X                 ;848F1C;
    STA.B $14                            ;848F20;
    SEP #$20                             ;848F22;
    LDA.L DATA8_AFA002,X                 ;848F24;
    PHA                                  ;848F28;
    PLB                                  ;848F29;
    REP #$20                             ;848F2A;
    LDA.W $000E                          ;848F2C;
    AND.W #$00FF                         ;848F2F;
    ASL A                                ;848F32;
    TAY                                  ;848F33;
    LDA.B ($14),Y                        ;848F34;
    ADC.B $14                            ;848F36;

CODE_848F38:
    STA.B $14                            ;848F38;
    SEP #$30                             ;848F3A;
    LDA.B ($14)                          ;848F3C;
    STA.B $13                            ;848F3E;
    LDY.B #$01                           ;848F40;
    LDA.B ($14),Y                        ;848F42;
    STA.B $0F                            ;848F44;
    INY                                  ;848F46;
    LDA.B ($14),Y                        ;848F47;
    STA.B $17                            ;848F49;
    LDA.B #$80                           ;848F4B;
    TSB.B $17                            ;848F4D;

CODE_848F4F:
    PLB                                  ;848F4F;
    PLP                                  ;848F50;
    RTL                                  ;848F51;

CODE_848F52:
    PHP                                  ;848F52;
    SEP #$30                             ;848F53;
    LDA.W $1F1A                          ;848F55;
    BNE CODE_848FC8                      ;848F58;
    DEC.B $13                            ;848F5A;
    BNE CODE_848FC8                      ;848F5C;
    PEA.W DATA8_868685                   ;848F5E;
    PLB                                  ;848F61;
    REP #$21                             ;848F62;
    LDA.B $14                            ;848F64;
    ADC.W #$0003                         ;848F66;
    STA.B $14                            ;848F69;
    LDA.B ($14)                          ;848F6B;
    AND.W #$00FF                         ;848F6D;
    BNE CODE_848F9C                      ;848F70;
    INC.B $14                            ;848F72;
    LDA.B $14                            ;848F74;
    CLC                                  ;848F76;
    ADC.B ($14)                          ;848F77;
    STA.B $14                            ;848F79;
    BRA CODE_848F9C                      ;848F7B;

CODE_848F7D:
    PHP                                  ;848F7D;
    PEA.W DATA8_868685                   ;848F7E;
    PLB                                  ;848F81;
    REP #$30                             ;848F82;
    AND.W #$00FF                         ;848F84;
    ASL A                                ;848F87;
    TAX                                  ;848F88;
    LDA.W DATA8_858022,X                 ;848F89;
    STA.B $14                            ;848F8C;
    SEP #$20                             ;848F8E;
    LDA.B ($14)                          ;848F90;
    ASL A                                ;848F92;
    STA.B $0F                            ;848F93;
    REP #$20                             ;848F95;
    LDA.B $14                            ;848F97;
    INC A                                ;848F99;
    STA.B $14                            ;848F9A;

CODE_848F9C:
    SEP #$30                             ;848F9C;
    LDA.B ($14)                          ;848F9E;
    STA.B $13                            ;848FA0;
    LDY.B #$01                           ;848FA2;
    REP #$20                             ;848FA4;
    LDA.B ($14),Y                        ;848FA6;
    STA.W $0000                          ;848FA8;
    LDX.B $0F                            ;848FAB;
    LDY.B #$00                           ;848FAD;
    PHD                                  ;848FAF;
    PEA.W $0000                          ;848FB0;
    PLD                                  ;848FB3;

CODE_848FB4:
    LDA.B ($00),Y                        ;848FB4;
    STA.W $0300,X                        ;848FB6;
    INX                                  ;848FB9;
    INX                                  ;848FBA;
    INY                                  ;848FBB;
    INY                                  ;848FBC;
    CPY.B #$20                           ;848FBD;
    BNE CODE_848FB4                      ;848FBF;
    PLD                                  ;848FC1;
    SEP #$20                             ;848FC2;
    INC.W $00A1                          ;848FC4;
    PLB                                  ;848FC7;

CODE_848FC8:
    PLP                                  ;848FC8;
    RTL                                  ;848FC9;

CODE_848FCA:
    PHP                                  ;848FCA;
    SEP #$30                             ;848FCB;
    LDA.L CODE_84A481                    ;848FCD;
    CMP.L CODE_849D29                    ;848FD1;
    BEQ CODE_848FDA                      ;848FD5;
    INC.W $1F9D                          ;848FD7;

CODE_848FDA:
    LDA.B $17                            ;848FDA;
    BPL CODE_848FC8                      ;848FDC;
    AND.B #$7F                           ;848FDE;
    STA.B $17                            ;848FE0;
    PEA.W DATA8_868685                   ;848FE2;
    PLB                                  ;848FE5;
    REP #$30                             ;848FE6;
    LDA.B $10                            ;848FE8;
    AND.W #$00FF                         ;848FEA;
    ASL A                                ;848FED;
    TAX                                  ;848FEE;
    LDA.L $7F8000,X                      ;848FEF;
    STA.W $0000                          ;848FF3;
    LDA.B $17                            ;848FF6;
    AND.W #$00FF                         ;848FF8;
    ASL A                                ;848FFB;
    TAY                                  ;848FFC;
    CLC                                  ;848FFD;
    LDA.B ($31),Y                        ;848FFE;
    ADC.B $31                            ;849000;
    TAX                                  ;849002;
    LDA.W $00A3                          ;849003;
    AND.W #$00FF                         ;849006;
    TAY                                  ;849009;
    SEP #$20                             ;84900A;
    LDA.W $0000,X                        ;84900C;
    BEQ CODE_849083                      ;84900F;

CODE_849011:
    SEP #$20                             ;849011;
    LDA.B #$80                           ;849013;
    STA.W $0500,Y                        ;849015;
    LDA.W $0000,X                        ;849018;
    LSR A                                ;84901B;
    CLC                                  ;84901C;
    ADC.W $1F25                          ;84901D;
    STA.W $1F25                          ;849020;
    LDA.W $0000,X                        ;849023;
    REP #$21                             ;849026;
    AND.W #$00FF                         ;849028;
    ASL A                                ;84902B;
    ASL A                                ;84902C;
    ASL A                                ;84902D;
    ASL A                                ;84902E;
    STA.W $0503,Y                        ;84902F;
    LDA.W $0001,X                        ;849032;
    CLC                                  ;849035;
    ADC.W $0000                          ;849036;
    STA.W $0505,Y                        ;849039;
    LDA.B $17                            ;84903C;
    AND.W #$FF00                         ;84903E;
    LSR A                                ;849041;
    LSR A                                ;849042;
    LSR A                                ;849043;
    LSR A                                ;849044;
    STA.W $0002                          ;849045;
    SEP #$20                             ;849048;
    LDA.W $0003,X                        ;84904A;
    STA.W $0507,Y                        ;84904D;
    LDA.W $0002                          ;849050;
    STA.W $0501,Y                        ;849053;
    LDA.W $0004,X                        ;849056;
    BMI CODE_849072                      ;849059;
    AND.B #$7F                           ;84905B;
    CLC                                  ;84905D;
    ADC.W $0003                          ;84905E;
    STA.W $0502,Y                        ;849061;
    REP #$21                             ;849064;
    TYA                                  ;849066;
    ADC.W #$0008                         ;849067;
    TAY                                  ;84906A;
    TXA                                  ;84906B;
    ADC.W #$0005                         ;84906C;
    TAX                                  ;84906F;
    BRA CODE_849011                      ;849070;

CODE_849072:
    SEP #$30                             ;849072;
    AND.B #$7F                           ;849074;
    CLC                                  ;849076;
    ADC.W $0003                          ;849077;
    STA.W $0502,Y                        ;84907A;
    TYA                                  ;84907D;
    ADC.B #$08                           ;84907E;
    STA.W $00A3                          ;849080;

CODE_849083:
    PLB                                  ;849083;
    PLP                                  ;849084;
    RTL                                  ;849085;

CODE_849086:
    PHP                                  ;849086;
    REP #$20                             ;849087;
    LDA.W $0BA6                          ;849089;
    ASL A                                ;84908C;
    CLC                                  ;84908D;
    ADC.W $0BA6                          ;84908E;
    XBA                                  ;849091;
    SEP #$20                             ;849092;
    STA.W $0BA7                          ;849094;
    CLC                                  ;849097;
    ADC.W $0BA6                          ;849098;
    STA.W $0BA6                          ;84909B;
    PLP                                  ;84909E;
    RTL                                  ;84909F;

CODE_8490A0:
    JSR.W CODE_8490A4                    ;8490A0;
    RTL                                  ;8490A3;

CODE_8490A4:
    PHD                                  ;8490A4;
    PHX                                  ;8490A5;
    PHP                                  ;8490A6;
    REP #$30                             ;8490A7;
    TDC                                  ;8490A9;
    TAX                                  ;8490AA;
    LDA.W #$0000                         ;8490AB;
    TCD                                  ;8490AE;
    SEP #$20                             ;8490AF;
    BRA CODE_8490BA                      ;8490B1;

CODE_8490B3:
    PHD                                  ;8490B3;
    PHX                                  ;8490B4;
    PHP                                  ;8490B5;
    SEP #$20                             ;8490B6;
    REP #$10                             ;8490B8;

CODE_8490BA:
    STZ.B $01                            ;8490BA;
    LDA.B $29,X                          ;8490BC;
    BPL CODE_8490C2                      ;8490BE;
    DEC.B $01                            ;8490C0;

CODE_8490C2:
    CLC                                  ;8490C2;
    ADC.B $05,X                          ;8490C3;
    STA.B $00                            ;8490C5;
    LDA.B $06,X                          ;8490C7;
    ADC.B $01                            ;8490C9;
    STA.B $01                            ;8490CB;
    STZ.B $03                            ;8490CD;
    LDA.B $2A,X                          ;8490CF;
    BPL CODE_8490D5                      ;8490D1;
    DEC.B $03                            ;8490D3;

CODE_8490D5:
    CLC                                  ;8490D5;
    ADC.B $08,X                          ;8490D6;
    STA.B $02                            ;8490D8;
    AND.B #$F0                           ;8490DA;
    STA.B $0A                            ;8490DC;
    LDA.B $09,X                          ;8490DE;
    ADC.B $03                            ;8490E0;
    STA.B $03                            ;8490E2;
    STA.B $0B                            ;8490E4;
    LDA.B $00                            ;8490E6;
    AND.B #$0F                           ;8490E8;
    INC A                                ;8490EA;
    STA.B $0C                            ;8490EB;
    LDA.B $02                            ;8490ED;
    AND.B #$0F                           ;8490EF;
    INC A                                ;8490F1;
    STA.B $0E                            ;8490F2;
    REP #$20                             ;8490F4;
    JSR.W CODE_84916A                    ;8490F6;
    LDA.L $7E2000,X                      ;8490F9;
    TAY                                  ;8490FD;
    LDA.W $0B92                          ;8490FE;
    STA.B $10                            ;849101;
    LDA.W $0B94                          ;849103;
    STA.B $12                            ;849106;
    LDA.B [$10],Y                        ;849108;
    AND.W #$00FF                         ;84910A;
    PLP                                  ;84910D;
    PLX                                  ;84910E;
    PLD                                  ;84910F;
    RTS                                  ;849110;

CODE_849111:
    JSR.W CODE_849115                    ;849111;
    RTL                                  ;849114;

CODE_849115:
    PHP                                  ;849115;
    PHD                                  ;849116;
    REP #$30                             ;849117;
    LDA.W #$0000                         ;849119;
    TCD                                  ;84911C;
    JSR.W CODE_84916A                    ;84911D;
    LDA.B $08                            ;849120;
    STA.L $7E2000,X                      ;849122;
    PLD                                  ;849126;
    PLP                                  ;849127;
    RTS                                  ;849128;

CODE_849129:
    JSR.W CODE_84912D                    ;849129;
    RTL                                  ;84912C;

CODE_84912D:
    PHP                                  ;84912D;
    PHD                                  ;84912E;
    REP #$30                             ;84912F;
    LDA.W #$0000                         ;849131;
    TCD                                  ;849134;
    JSR.W CODE_84916A                    ;849135;
    LDA.L $7E2000,X                      ;849138;
    INC A                                ;84913C;
    STA.L $7E2000,X                      ;84913D;
    PLD                                  ;849141;
    PLP                                  ;849142;
    RTS                                  ;849143;
    JSR.W CODE_849148                    ;849144;
    RTL                                  ;849147;

CODE_849148:
    PHP                                  ;849148;
    PHD                                  ;849149;
    REP #$30                             ;84914A;
    LDA.W #$0000                         ;84914C;
    TCD                                  ;84914F;
    JSR.W CODE_84916A                    ;849150;
    PLD                                  ;849153;
    PLP                                  ;849154;
    RTS                                  ;849155;

CODE_849156:
    JSR.W CODE_84916A                    ;849156;
    RTL                                  ;849159;
    JSR.W CODE_84915E                    ;84915A;
    RTL                                  ;84915D;

CODE_84915E:
    LDA.W #$EC00                         ;84915E;
    STA.B $10                            ;849161;
    LDA.W #$007E                         ;849163;
    STA.B $12                            ;849166;
    BRA CODE_849174                      ;849168;

CODE_84916A:
    LDA.W #$E800                         ;84916A;
    STA.B $10                            ;84916D;
    LDA.W #$007E                         ;84916F;
    STA.B $12                            ;849172;

CODE_849174:
    LDA.B $02                            ;849174;
    AND.W #$00F0                         ;849176;
    ASL A                                ;849179;
    STA.B $04                            ;84917A;
    LDA.B $00                            ;84917C;
    AND.W #$00FF                         ;84917E;
    LSR A                                ;849181;
    LSR A                                ;849182;
    LSR A                                ;849183;
    AND.W #$FFFE                         ;849184;
    CLC                                  ;849187;
    ADC.B $04                            ;849188;
    STA.B $06                            ;84918A;
    LDA.B $00                            ;84918C;
    XBA                                  ;84918E;
    AND.W #$001F                         ;84918F;
    STA.B $04                            ;849192;
    LDA.B $02                            ;849194;
    AND.W #$1F00                         ;849196;
    LSR A                                ;849199;
    LSR A                                ;84919A;
    LSR A                                ;84919B;
    CLC                                  ;84919C;
    ADC.B $04                            ;84919D;
    TAY                                  ;84919F;
    LDA.B [$10],Y                        ;8491A0;
    AND.W #$00FF                         ;8491A2;
    TAY                                  ;8491A5;
    XBA                                  ;8491A6;
    ASL A                                ;8491A7;
    CLC                                  ;8491A8;
    ADC.B $06                            ;8491A9;
    TAX                                  ;8491AB;
    RTS                                  ;8491AC;
    PHP                                  ;8491AD;
    PHD                                  ;8491AE;
    REP #$30                             ;8491AF;
    TDC                                  ;8491B1;
    TAX                                  ;8491B2;
    LDA.W #$0000                         ;8491B3;
    TCD                                  ;8491B6;
    LDA.W #$0001                         ;8491B7;
    STA.B $14                            ;8491BA;
    BRA CODE_8491CE                      ;8491BC;

CODE_8491BE:
    PHP                                  ;8491BE;
    PHD                                  ;8491BF;
    REP #$30                             ;8491C0;
    LDA.B $20                            ;8491C2;
    BEQ CODE_8491DB                      ;8491C4;
    TDC                                  ;8491C6;
    TAX                                  ;8491C7;
    LDA.W #$0000                         ;8491C8;
    TCD                                  ;8491CB;
    STZ.B $14                            ;8491CC;

CODE_8491CE:
    LDA.B $2B,X                          ;8491CE;
    AND.W #$FF00                         ;8491D0;
    STA.B $2B,X                          ;8491D3;
    JSR.W CODE_8492AC                    ;8491D5;
    JSR.W CODE_8491ED                    ;8491D8;

CODE_8491DB:
    PLD                                  ;8491DB;
    PLP                                  ;8491DC;
    RTL                                  ;8491DD;

CODE_8491DE:
    LDA.B $14                            ;8491DE;
    BEQ CODE_849242                      ;8491E0;
    SEP #$30                             ;8491E2;
    RTL                                  ;8491E4;

CODE_8491E5:
    LDA.B $1C,X                          ;8491E5;
    BEQ CODE_8491DE                      ;8491E7;
    BPL CODE_8491F5                      ;8491E9;
    BRA CODE_849242                      ;8491EB;

CODE_8491ED:
    LDA.B $08,X                          ;8491ED;
    CMP.B $24,X                          ;8491EF;
    BEQ CODE_8491E5                      ;8491F1;
    BPL CODE_849242                      ;8491F3;

CODE_8491F5:
    SEP #$20                             ;8491F5;
    LDY.B $20,X                          ;8491F7;
    LDA.W $0006,Y                        ;8491F9;
    SEC                                  ;8491FC;
    SBC.W $0008,Y                        ;8491FD;
    STA.B $2A,X                          ;849200;
    LDA.W $0005,Y                        ;849202;
    BIT.B $11,X                          ;849205;
    BVC CODE_84920C                      ;849207;
    EOR.B #$FF                           ;849209;
    INC A                                ;84920B;

CODE_84920C:
    STA.B $29,X                          ;84920C;
    JSR.W CODE_849473                    ;84920E;
    BNE CODE_84923F                      ;849211;
    LDY.B $20,X                          ;849213;
    LDA.W $0005,Y                        ;849215;
    BIT.B $11,X                          ;849218;
    BVC CODE_84921F                      ;84921A;
    EOR.B #$FF                           ;84921C;
    INC A                                ;84921E;

CODE_84921F:
    SEC                                  ;84921F;
    SBC.W $0007,Y                        ;849220;
    STA.B $29,X                          ;849223;
    JSR.W CODE_849473                    ;849225;
    BNE CODE_84923F                      ;849228;
    LDY.B $20,X                          ;84922A;
    LDA.W $0005,Y                        ;84922C;
    BIT.B $11,X                          ;84922F;
    BVC CODE_849236                      ;849231;
    EOR.B #$FF                           ;849233;
    INC A                                ;849235;

CODE_849236:
    CLC                                  ;849236;
    ADC.W $0007,Y                        ;849237;
    STA.B $29,X                          ;84923A;
    JSR.W CODE_849473                    ;84923C;

CODE_84923F:
    REP #$30                             ;84923F;
    RTS                                  ;849241;

CODE_849242:
    SEP #$20                             ;849242;
    LDY.W #$0004                         ;849244;
    LDA.W $1F1C                          ;849247;
    BEQ CODE_84924F                      ;84924A;
    LDY.W #$0006                         ;84924C;

CODE_84924F:
    LDA.B $2F,X                          ;84924F;
    BEQ CODE_849256                      ;849251;
    LDY.W #$0000                         ;849253;

CODE_849256:
    TYA                                  ;849256;
    ORA.B #$80                           ;849257;
    STA.B $08                            ;849259;
    LDY.B $20,X                          ;84925B;
    LDA.W $0006,Y                        ;84925D;
    CLC                                  ;849260;
    ADC.W $0008,Y                        ;849261;
    STA.B $2A,X                          ;849264;
    LDA.W $0005,Y                        ;849266;
    BIT.B $11,X                          ;849269;
    BVC CODE_849270                      ;84926B;
    EOR.B #$FF                           ;84926D;
    INC A                                ;84926F;

CODE_849270:
    STA.B $29,X                          ;849270;
    JSR.W CODE_8495C4                    ;849272;
    BNE CODE_8492A9                      ;849275;
    LDA.B $08                            ;849277;
    AND.B #$7F                           ;849279;
    STA.B $08                            ;84927B;
    LDY.B $20,X                          ;84927D;
    LDA.W $0005,Y                        ;84927F;
    BIT.B $11,X                          ;849282;
    BVC CODE_849289                      ;849284;
    EOR.B #$FF                           ;849286;
    INC A                                ;849288;

CODE_849289:
    SEC                                  ;849289;
    SBC.W $0007,Y                        ;84928A;
    STA.B $29,X                          ;84928D;
    JSR.W CODE_8495C4                    ;84928F;
    BNE CODE_8492A9                      ;849292;
    LDY.B $20,X                          ;849294;
    LDA.W $0005,Y                        ;849296;
    BIT.B $11,X                          ;849299;
    BVC CODE_8492A0                      ;84929B;
    EOR.B #$FF                           ;84929D;
    INC A                                ;84929F;

CODE_8492A0:
    CLC                                  ;8492A0;
    ADC.W $0007,Y                        ;8492A1;
    STA.B $29,X                          ;8492A4;
    JSR.W CODE_8495C4                    ;8492A6;

CODE_8492A9:
    REP #$30                             ;8492A9;
    RTS                                  ;8492AB;

CODE_8492AC:
    REP #$30                             ;8492AC;
    LDA.B $05,X                          ;8492AE;
    SEC                                  ;8492B0;
    SBC.B $22,X                          ;8492B1;
    STA.B $00                            ;8492B3;
    SEP #$20                             ;8492B5;
    BEQ CODE_849305                      ;8492B7;
    LDY.B $20,X                          ;8492B9;
    LDA.W $0005,Y                        ;8492BB;
    BIT.B $11,X                          ;8492BE;
    BVC CODE_8492C5                      ;8492C0;
    EOR.B #$FF                           ;8492C2;
    INC A                                ;8492C4;

CODE_8492C5:
    BIT.B $00                            ;8492C5;
    BPL CODE_8492CF                      ;8492C7;
    SEC                                  ;8492C9;
    SBC.W $0007,Y                        ;8492CA;
    BRA CODE_8492D3                      ;8492CD;

CODE_8492CF:
    CLC                                  ;8492CF;
    ADC.W $0007,Y                        ;8492D0;

CODE_8492D3:
    STA.B $29,X                          ;8492D3;
    LDA.W $0006,Y                        ;8492D5;
    STA.B $2A,X                          ;8492D8;
    JSR.W CODE_849315                    ;8492DA;
    BNE CODE_849305                      ;8492DD;
    LDY.B $20,X                          ;8492DF;
    LDA.W $0006,Y                        ;8492E1;
    SEC                                  ;8492E4;
    SBC.W $0008,Y                        ;8492E5;
    CLC                                  ;8492E8;
    ADC.W $0009,Y                        ;8492E9;
    STA.B $2A,X                          ;8492EC;
    JSR.W CODE_849315                    ;8492EE;
    BNE CODE_849305                      ;8492F1;
    LDY.B $20,X                          ;8492F3;
    LDA.W $0006,Y                        ;8492F5;
    CLC                                  ;8492F8;
    ADC.W $0008,Y                        ;8492F9;
    SEC                                  ;8492FC;
    SBC.W $0009,Y                        ;8492FD;
    STA.B $2A,X                          ;849300;
    JSR.W CODE_849315                    ;849302;

CODE_849305:
    REP #$30                             ;849305;
    RTS                                  ;849307;

CODE_849308:
    LDA.B $14                            ;849308;
    BEQ CODE_849314                      ;84930A;
    LDY.B $10                            ;84930C;
    STY.B $05,X                          ;84930E;
    LDY.B $12                            ;849310;
    STY.B $08,X                          ;849312;

CODE_849314:
    RTS                                  ;849314;

CODE_849315:
    JSR.W CODE_8490B3                    ;849315;
    LDY.B $05,X                          ;849318;
    STY.B $10                            ;84931A;
    LDY.B $08,X                          ;84931C;
    STY.B $12                            ;84931E;
    STA.B $2D,X                          ;849320;
    STX.B $2C                            ;849322;
    AND.B #$3F                           ;849324;
    ASL A                                ;849326;
    XBA                                  ;849327;
    LDA.B #$00                           ;849328;
    XBA                                  ;84932A;
    TAX                                  ;84932B;
    JSR.W (PTR16_84935D,X)               ;84932C;
    PHP                                  ;84932F;
    LDX.B $2C                            ;849330;
    LDA.B #$01                           ;849332;
    BIT.B $29,X                          ;849334;
    BPL CODE_84933A                      ;849336;
    LDA.B #$02                           ;849338;

CODE_84933A:
    PLP                                  ;84933A;
    BEQ CODE_849349                      ;84933B;
    BMI CODE_849355                      ;84933D;
    ORA.B $2B,X                          ;84933F;
    STA.B $2B,X                          ;849341;

CODE_849343:
    JSR.W CODE_849308                    ;849343;
    LDA.B #$01                           ;849346;
    RTS                                  ;849348;

CODE_849349:
    EOR.B #$FF                           ;849349;
    AND.B $2B,X                          ;84934B;
    STA.B $2B,X                          ;84934D;
    JSR.W CODE_849308                    ;84934F;
    LDA.B #$00                           ;849352;
    RTS                                  ;849354;

CODE_849355:
    EOR.B #$FF                           ;849355;
    AND.B $2B,X                          ;849357;
    STA.B $2B,X                          ;849359;
    BRA CODE_849343                      ;84935B;

PTR16_84935D:
    dw CODE_84977A                       ;84935D;
    dw CODE_84977A                       ;84935F;
    dw CODE_84977A                       ;849361;
    dw CODE_84977A                       ;849363;
    dw CODE_84977A                       ;849365;
    dw CODE_84977A                       ;849367;
    dw CODE_84977A                       ;849369;
    dw CODE_84977A                       ;84936B;
    dw CODE_84977A                       ;84936D;
    dw CODE_84977A                       ;84936F;
    dw CODE_84977A                       ;849371;
    dw CODE_84977A                       ;849373;
    dw CODE_84977A                       ;849375;
    dw CODE_84977A                       ;849377;
    dw CODE_84977A                       ;849379;
    dw CODE_84977A                       ;84937B;
    dw CODE_84977A                       ;84937D;
    dw CODE_8493FF                       ;84937F;
    dw CODE_84977A                       ;849381;
    dw CODE_84977A                       ;849383;
    dw CODE_84977A                       ;849385;
    dw CODE_84977A                       ;849387;
    dw CODE_84977A                       ;849389;
    dw CODE_84977A                       ;84938B;
    dw CODE_84977A                       ;84938D;
    dw CODE_84977A                       ;84938F;
    dw CODE_84977A                       ;849391;
    dw CODE_84977A                       ;849393;
    dw CODE_84977A                       ;849395;
    dw CODE_84977A                       ;849397;
    dw CODE_84977A                       ;849399;
    dw CODE_84977A                       ;84939B;
    dw CODE_84977A                       ;84939D;
    dw CODE_84977A                       ;84939F;
    dw CODE_84977A                       ;8493A1;
    dw CODE_84977A                       ;8493A3;
    dw CODE_84977A                       ;8493A5;
    dw CODE_84977A                       ;8493A7;
    dw CODE_84977A                       ;8493A9;
    dw CODE_84977A                       ;8493AB;
    dw CODE_84977A                       ;8493AD;
    dw CODE_84977A                       ;8493AF;
    dw CODE_84977A                       ;8493B1;
    dw CODE_84977A                       ;8493B3;
    dw CODE_84977A                       ;8493B5;
    dw CODE_84977A                       ;8493B7;
    dw CODE_84977A                       ;8493B9;
    dw CODE_84977A                       ;8493BB;
    dw CODE_84977A                       ;8493BD;
    dw CODE_84977A                       ;8493BF;
    dw CODE_84977A                       ;8493C1;
    dw CODE_84942B                       ;8493C3;
    dw CODE_8493DD                       ;8493C5;
    dw CODE_8493DD                       ;8493C7;
    dw CODE_8493DD                       ;8493C9;
    dw CODE_8493DD                       ;8493CB;
    dw CODE_8493DD                       ;8493CD;
    dw CODE_8493DD                       ;8493CF;
    dw CODE_8493DD                       ;8493D1;
    dw CODE_8493DD                       ;8493D3;
    dw CODE_8493DD                       ;8493D5;
    dw CODE_8493DD                       ;8493D7;
    dw CODE_84943F                       ;8493D9;
    dw CODE_84944B                       ;8493DB;

CODE_8493DD:
    LDX.B $2C                            ;8493DD;
    STZ.B $01                            ;8493DF;
    LDA.B #$11                           ;8493E1;
    SEC                                  ;8493E3;
    SBC.B $0C                            ;8493E4;
    BIT.B $29,X                          ;8493E6;
    BMI CODE_8493F1                      ;8493E8;
    DEC.B $01                            ;8493EA;
    LDA.B $0C                            ;8493EC;
    EOR.B #$FF                           ;8493EE;
    INC A                                ;8493F0;

CODE_8493F1:
    CLC                                  ;8493F1;
    ADC.B $05,X                          ;8493F2;
    STA.B $05,X                          ;8493F4;
    LDA.B $06,X                          ;8493F6;
    ADC.B $01                            ;8493F8;
    STA.B $06,X                          ;8493FA;
    LDA.B #$01                           ;8493FC;
    RTS                                  ;8493FE;

CODE_8493FF:
    REP #$20                             ;8493FF;
    LDX.B $2C                            ;849401;
    LDY.W #$0001                         ;849403;
    LDA.B $22,X                          ;849406;
    CMP.B $05,X                          ;849408;
    BCS CODE_84940F                      ;84940A;
    LDY.W #$0000                         ;84940C;

CODE_84940F:
    STY.B $06                            ;84940F;
    CLC                                  ;849411;
    ADC.B $05,X                          ;849412;
    LSR A                                ;849414;
    BCC CODE_84941A                      ;849415;
    CLC                                  ;849417;
    ADC.B $06                            ;849418;

CODE_84941A:
    STA.B $05,X                          ;84941A;
    SEP #$20                             ;84941C;
    LDX.W $1F1C                          ;84941E;
    BEQ CODE_849428                      ;849421;
    LDA.B #$08                           ;849423;
    TSB.W $0C26                          ;849425;

CODE_849428:
    LDA.B #$FF                           ;849428;
    RTS                                  ;84942A;

CODE_84942B:
    LDA.W $1F1C                          ;84942B;
    BEQ CODE_849455                      ;84942E;
    BIT.W $1F96                          ;849430;
    BVC CODE_849438                      ;849433;
    JMP.W CODE_8493DD                    ;849435;

CODE_849438:
    LDA.B #$08                           ;849438;
    STA.W $0BCE                          ;84943A;
    BRA CODE_849455                      ;84943D;

CODE_84943F:
    LDA.W $1F1C                          ;84943F;
    BEQ CODE_849455                      ;849442;
    LDA.B #$08                           ;849444;
    STA.W $0BCE                          ;849446;
    BRA CODE_849455                      ;849449;

CODE_84944B:
    LDA.W $1F1C                          ;84944B;
    BEQ CODE_849455                      ;84944E;
    LDA.B #$7F                           ;849450;
    STA.W $0BCE                          ;849452;

CODE_849455:
    JSR.W CODE_8493DD                    ;849455;
    LDA.W $1F1C                          ;849458;
    BEQ CODE_849470                      ;84945B;
    LDA.W $0BB9                          ;84945D;
    AND.B #$40                           ;849460;
    STA.W $1F1B                          ;849462;
    LDA.W $0C32                          ;849465;
    BNE CODE_849470                      ;849468;
    JSL.L CODE_849F2A                    ;84946A;
    REP #$10                             ;84946E;

CODE_849470:
    LDA.B #$01                           ;849470;
    RTS                                  ;849472;

CODE_849473:
    LDA.B #$F7                           ;849473;
    AND.B $2B,X                          ;849475;
    STA.B $2B,X                          ;849477;
    JSR.W CODE_8490B3                    ;849479;
    LDY.B $05,X                          ;84947C;
    STY.B $10                            ;84947E;
    LDY.B $08,X                          ;849480;
    STY.B $12                            ;849482;
    STA.B $2E,X                          ;849484;
    STX.B $2C                            ;849486;
    AND.B #$3F                           ;849488;
    ASL A                                ;84948A;
    XBA                                  ;84948B;
    LDA.B #$00                           ;84948C;
    XBA                                  ;84948E;
    TAX                                  ;84948F;
    JSR.W (PTR16_8494A9,X)               ;849490;
    BEQ CODE_8494A3                      ;849493;
    LDX.B $2C                            ;849495;
    LDA.B #$08                           ;849497;
    ORA.B $2B,X                          ;849499;
    STA.B $2B,X                          ;84949B;
    JSR.W CODE_849308                    ;84949D;
    LDA.B #$01                           ;8494A0;
    RTS                                  ;8494A2;

CODE_8494A3:
    LDX.B $2C                            ;8494A3;
    JSR.W CODE_849308                    ;8494A5;
    RTS                                  ;8494A8;

PTR16_8494A9:
    dw CODE_849529                       ;8494A9;
    dw CODE_84977A                       ;8494AB;
    dw CODE_84977A                       ;8494AD;
    dw CODE_84977A                       ;8494AF;
    dw CODE_84977A                       ;8494B1;
    dw CODE_84977A                       ;8494B3;
    dw CODE_84977A                       ;8494B5;
    dw CODE_84977A                       ;8494B7;
    dw CODE_84977A                       ;8494B9;
    dw CODE_84977A                       ;8494BB;
    dw CODE_84977A                       ;8494BD;
    dw CODE_84977A                       ;8494BF;
    dw CODE_84977A                       ;8494C1;
    dw CODE_849557                       ;8494C3;
    dw CODE_849557                       ;8494C5;
    dw CODE_849529                       ;8494C7;
    dw CODE_849529                       ;8494C9;
    dw CODE_849575                       ;8494CB;
    dw CODE_84977A                       ;8494CD;
    dw CODE_84977A                       ;8494CF;
    dw CODE_84977A                       ;8494D1;
    dw CODE_84977A                       ;8494D3;
    dw CODE_84977A                       ;8494D5;
    dw CODE_84977A                       ;8494D7;
    dw CODE_84977A                       ;8494D9;
    dw CODE_84977A                       ;8494DB;
    dw CODE_84977A                       ;8494DD;
    dw CODE_84977A                       ;8494DF;
    dw CODE_84977A                       ;8494E1;
    dw CODE_84977A                       ;8494E3;
    dw CODE_84977A                       ;8494E5;
    dw CODE_84977A                       ;8494E7;
    dw CODE_84977A                       ;8494E9;
    dw CODE_84977A                       ;8494EB;
    dw CODE_84977A                       ;8494ED;
    dw CODE_84977A                       ;8494EF;
    dw CODE_84977A                       ;8494F1;
    dw CODE_84977A                       ;8494F3;
    dw CODE_84977A                       ;8494F5;
    dw CODE_84977A                       ;8494F7;
    dw CODE_84977A                       ;8494F9;
    dw CODE_84977A                       ;8494FB;
    dw CODE_84977A                       ;8494FD;
    dw CODE_84977A                       ;8494FF;
    dw CODE_84977A                       ;849501;
    dw CODE_84977A                       ;849503;
    dw CODE_84977A                       ;849505;
    dw CODE_84977A                       ;849507;
    dw CODE_84977A                       ;849509;
    dw CODE_84977A                       ;84950B;
    dw CODE_84977A                       ;84950D;
    dw CODE_84957C                       ;84950F;
    dw CODE_849542                       ;849511;
    dw CODE_849542                       ;849513;
    dw CODE_849542                       ;849515;
    dw CODE_849542                       ;849517;
    dw CODE_849542                       ;849519;
    dw CODE_849542                       ;84951B;
    dw CODE_849542                       ;84951D;
    dw CODE_849542                       ;84951F;
    dw CODE_849542                       ;849521;
    dw CODE_849542                       ;849523;
    dw CODE_849590                       ;849525;
    dw CODE_84959C                       ;849527;

CODE_849529:
    LDA.W $1F1C                          ;849529;
    BEQ CODE_84953F                      ;84952C;
    LDA.B #$01                           ;84952E;
    TRB.W $0C18                          ;849530;
    LDY.W #$0040                         ;849533;
    STY.W $0BC6                          ;849536;
    LDY.W #$FA80                         ;849539;
    STY.W $0C07                          ;84953C;

CODE_84953F:
    LDA.B #$00                           ;84953F;
    RTS                                  ;849541;

CODE_849542:
    LDX.B $2C                            ;849542;
    LDA.B #$11                           ;849544;
    SEC                                  ;849546;
    SBC.B $0E                            ;849547;
    CLC                                  ;849549;
    ADC.B $08,X                          ;84954A;
    STA.B $08,X                          ;84954C;
    LDA.B $09,X                          ;84954E;
    ADC.B #$00                           ;849550;
    STA.B $09,X                          ;849552;
    LDA.B #$01                           ;849554;
    RTS                                  ;849556;

CODE_849557:
    LDA.W $1F1C                          ;849557;
    BEQ CODE_849572                      ;84955A;
    LDA.B #$01                           ;84955C;
    TSB.W $0C18                          ;84955E;
    LDA.B #$21                           ;849561;
    STA.W $0BC6                          ;849563;
    LDY.W #$FD40                         ;849566;
    STY.W $0C07                          ;849569;
    LDY.W #$FF00                         ;84956C;
    STY.W $0C09                          ;84956F;

CODE_849572:
    LDA.B #$00                           ;849572;
    RTS                                  ;849574;

CODE_849575:
    LDA.B #$63                           ;849575;
    STA.B $1E                            ;849577;
    LDA.B #$00                           ;849579;
    RTS                                  ;84957B;

CODE_84957C:
    LDA.W $1F1C                          ;84957C;
    BEQ CODE_8495A6                      ;84957F;
    BIT.W $1F96                          ;849581;
    BVC CODE_849589                      ;849584;
    JMP.W CODE_849542                    ;849586;

CODE_849589:
    LDA.B #$08                           ;849589;
    STA.W $0BCE                          ;84958B;
    BRA CODE_8495A6                      ;84958E;

CODE_849590:
    LDA.W $1F1C                          ;849590;
    BEQ CODE_8495A6                      ;849593;
    LDA.B #$08                           ;849595;
    STA.W $0BCE                          ;849597;
    BRA CODE_8495A6                      ;84959A;

CODE_84959C:
    LDA.W $1F1C                          ;84959C;
    BEQ CODE_8495A6                      ;84959F;
    LDA.B #$7F                           ;8495A1;
    STA.W $0BCE                          ;8495A3;

CODE_8495A6:
    JSR.W CODE_849542                    ;8495A6;
    LDA.W $1F1C                          ;8495A9;
    BEQ CODE_8495C1                      ;8495AC;
    LDA.W $0BB9                          ;8495AE;
    AND.B #$40                           ;8495B1;
    STA.W $1F1B                          ;8495B3;
    LDA.W $0C32                          ;8495B6;
    BNE CODE_8495C1                      ;8495B9;
    JSL.L CODE_849F2A                    ;8495BB;
    REP #$10                             ;8495BF;

CODE_8495C1:
    LDA.B #$01                           ;8495C1;
    RTS                                  ;8495C3;

CODE_8495C4:
    LDA.B $2A,X                          ;8495C4;
    PHA                                  ;8495C6;
    LDA.B $08                            ;8495C7;
    AND.B #$7F                           ;8495C9;
    CLC                                  ;8495CB;
    ADC.B $2A,X                          ;8495CC;
    STA.B $2A,X                          ;8495CE;
    JSR.W CODE_8490B3                    ;8495D0;
    STA.B $2E,X                          ;8495D3;
    STA.B $18                            ;8495D5;
    AND.B #$3F                           ;8495D7;
    ASL A                                ;8495D9;
    XBA                                  ;8495DA;
    LDA.B #$00                           ;8495DB;
    XBA                                  ;8495DD;
    TAY                                  ;8495DE;
    STY.B $28                            ;8495DF;
    STX.B $2C                            ;8495E1;
    PLA                                  ;8495E3;
    STA.B $2A,X                          ;8495E4;

CODE_8495E6:
    LDX.B $2C                            ;8495E6;
    LDA.B #$FB                           ;8495E8;
    AND.B $2B,X                          ;8495EA;
    STA.B $2B,X                          ;8495EC;
    STZ.B $01                            ;8495EE;
    LDA.B $2A,X                          ;8495F0;
    STA.B $02                            ;8495F2;
    STZ.B $03                            ;8495F4;
    LDY.B $05,X                          ;8495F6;
    STY.B $10                            ;8495F8;
    LDY.B $08,X                          ;8495FA;
    STY.B $12                            ;8495FC;
    LDX.B $28                            ;8495FE;
    JSR.W (PTR16_84961C,X)               ;849600;
    BEQ CODE_849616                      ;849603;
    LDX.B $2C                            ;849605;
    LDA.B #$04                           ;849607;
    ORA.B $2B,X                          ;849609;
    STA.B $2B,X                          ;84960B;
    JSR.W CODE_84994C                    ;84960D;
    JSR.W CODE_849308                    ;849610;
    LDA.B #$01                           ;849613;
    RTS                                  ;849615;

CODE_849616:
    LDX.B $2C                            ;849616;
    JSR.W CODE_849308                    ;849618;
    RTS                                  ;84961B;

PTR16_84961C:
    dw CODE_84969C                       ;84961C;
    dw CODE_8496D3                       ;84961E;
    dw CODE_8496EB                       ;849620;
    dw CODE_849733                       ;849622;
    dw CODE_849745                       ;849624;
    dw CODE_84977D                       ;849626;
    dw CODE_849781                       ;849628;
    dw CODE_849785                       ;84962A;
    dw CODE_849789                       ;84962C;
    dw CODE_8497CD                       ;84962E;
    dw CODE_8497D1                       ;849630;
    dw CODE_8497D5                       ;849632;
    dw CODE_8497D9                       ;849634;
    dw CODE_84987E                       ;849636;
    dw CODE_84987E                       ;849638;
    dw CODE_84969C                       ;84963A;
    dw CODE_84969C                       ;84963C;
    dw CODE_84992C                       ;84963E;
    dw CODE_84977A                       ;849640;
    dw CODE_8496B5                       ;849642;
    dw CODE_84977A                       ;849644;
    dw CODE_84977A                       ;849646;
    dw CODE_84977A                       ;849648;
    dw CODE_84977A                       ;84964A;
    dw CODE_84977A                       ;84964C;
    dw CODE_84977A                       ;84964E;
    dw CODE_84977A                       ;849650;
    dw CODE_84977A                       ;849652;
    dw CODE_84977A                       ;849654;
    dw CODE_84977A                       ;849656;
    dw CODE_84977A                       ;849658;
    dw CODE_84977A                       ;84965A;
    dw CODE_84977A                       ;84965C;
    dw CODE_84977A                       ;84965E;
    dw CODE_84977A                       ;849660;
    dw CODE_84977A                       ;849662;
    dw CODE_84977A                       ;849664;
    dw CODE_84977A                       ;849666;
    dw CODE_84977A                       ;849668;
    dw CODE_84977A                       ;84966A;
    dw CODE_84977A                       ;84966C;
    dw CODE_84977A                       ;84966E;
    dw CODE_84977A                       ;849670;
    dw CODE_84977A                       ;849672;
    dw CODE_84977A                       ;849674;
    dw CODE_84977A                       ;849676;
    dw CODE_84977A                       ;849678;
    dw CODE_84977A                       ;84967A;
    dw CODE_84977A                       ;84967C;
    dw CODE_84977A                       ;84967E;
    dw CODE_84977A                       ;849680;
    dw CODE_84989C                       ;849682;
    dw CODE_8496B5                       ;849684;
    dw CODE_8496B5                       ;849686;
    dw CODE_8496B5                       ;849688;
    dw CODE_849908                       ;84968A;
    dw CODE_8498FA                       ;84968C;
    dw CODE_849816                       ;84968E;
    dw CODE_849816                       ;849690;
    dw CODE_8496B5                       ;849692;
    dw CODE_8496B5                       ;849694;
    dw CODE_8496B5                       ;849696;
    dw CODE_8498B0                       ;849698;
    dw CODE_8498BC                       ;84969A;

CODE_84969C:
    LDA.W $1F1C                          ;84969C;
    BEQ CODE_8496B2                      ;84969F;
    LDA.B #$01                           ;8496A1;
    TRB.W $0C18                          ;8496A3;
    LDY.W #$0040                         ;8496A6;
    STY.W $0BC6                          ;8496A9;
    LDY.W #$FA80                         ;8496AC;
    STY.W $0C07                          ;8496AF;

CODE_8496B2:
    LDA.B #$00                           ;8496B2;
    RTS                                  ;8496B4;

CODE_8496B5:
    LDX.B $2C                            ;8496B5;
    LDA.B $0E                            ;8496B7;
    STA.B $00                            ;8496B9;
    STZ.B $01                            ;8496BB;
    REP #$20                             ;8496BD;
    LDA.B $08                            ;8496BF;
    AND.W #$007F                         ;8496C1;
    CLC                                  ;8496C4;
    ADC.B $08,X                          ;8496C5;
    SEC                                  ;8496C7;
    SBC.B $00                            ;8496C8;
    STA.B $08,X                          ;8496CA;
    SEP #$20                             ;8496CC;
    STZ.B $2F,X                          ;8496CE;
    LDA.B #$01                           ;8496D0;
    RTS                                  ;8496D2;

CODE_8496D3:
    LDA.B $08                            ;8496D3;
    BMI CODE_8496DA                      ;8496D5;
    JMP.W CODE_84977A                    ;8496D7;

CODE_8496DA:
    LDA.B $0C                            ;8496DA;
    LSR A                                ;8496DC;
    STA.B $00                            ;8496DD;
    LDA.B #$10                           ;8496DF;
    SEC                                  ;8496E1;
    SBC.B $00                            ;8496E2;
    CMP.B $0E                            ;8496E4;
    BCC CODE_849706                      ;8496E6;
    JMP.W CODE_84977A                    ;8496E8;

CODE_8496EB:
    LDA.B $08                            ;8496EB;
    BMI CODE_8496F2                      ;8496ED;
    JMP.W CODE_84977A                    ;8496EF;

CODE_8496F2:
    LDA.B $0C                            ;8496F2;
    LSR A                                ;8496F4;
    CLC                                  ;8496F5;
    ADC.B #$08                           ;8496F6;
    STA.B $00                            ;8496F8;
    LDA.B #$10                           ;8496FA;
    SEC                                  ;8496FC;
    SBC.B $00                            ;8496FD;
    CMP.B $0E                            ;8496FF;
    BCC CODE_849706                      ;849701;
    JMP.W CODE_84977A                    ;849703;

CODE_849706:
    REP #$21                             ;849706;
    LDX.B $2C                            ;849708;
    LDA.B $0A                            ;84970A;
    ADC.W #$000F                         ;84970C;
    SEC                                  ;84970F;
    SBC.B $00                            ;849710;
    SEC                                  ;849712;
    SBC.B $02                            ;849713;
    STA.B $08,X                          ;849715;
    BIT.B $17                            ;849717;
    BVC CODE_84972E                      ;849719;
    LDA.B $04,X                          ;84971B;
    CLC                                  ;84971D;
    ADC.W #$FEE0                         ;84971E;
    STA.B $04,X                          ;849721;
    SEP #$20                             ;849723;
    LDA.B $06,X                          ;849725;
    ADC.B #$FF                           ;849727;
    STA.B $06,X                          ;849729;
    JSR.W CODE_8492AC                    ;84972B;

CODE_84972E:
    SEP #$20                             ;84972E;
    LDA.B #$01                           ;849730;
    RTS                                  ;849732;

CODE_849733:
    LDA.B $08                            ;849733;
    BPL CODE_84977A                      ;849735;
    LDA.B $0C                            ;849737;
    LSR A                                ;849739;
    CLC                                  ;84973A;
    ADC.B #$08                           ;84973B;
    STA.B $00                            ;84973D;
    CMP.B $0E                            ;84973F;
    BCS CODE_84977A                      ;849741;
    BRA CODE_849752                      ;849743;

CODE_849745:
    LDA.B $08                            ;849745;
    BPL CODE_84977A                      ;849747;
    LDA.B $0C                            ;849749;
    LSR A                                ;84974B;
    STA.B $00                            ;84974C;
    CMP.B $0E                            ;84974E;
    BCS CODE_84977A                      ;849750;

CODE_849752:
    REP #$21                             ;849752;
    LDX.B $2C                            ;849754;
    LDA.B $0A                            ;849756;
    ADC.B $00                            ;849758;
    SBC.B $02                            ;84975A;
    STA.B $08,X                          ;84975C;
    BIT.B $17                            ;84975E;
    BVC CODE_849775                      ;849760;
    LDA.B $04,X                          ;849762;
    CLC                                  ;849764;
    ADC.W #$0120                         ;849765;
    STA.B $04,X                          ;849768;
    SEP #$20                             ;84976A;
    LDA.B $06,X                          ;84976C;
    ADC.B #$00                           ;84976E;
    STA.B $06,X                          ;849770;
    JSR.W CODE_8492AC                    ;849772;

CODE_849775:
    SEP #$20                             ;849775;
    LDA.B #$01                           ;849777;
    RTS                                  ;849779;

CODE_84977A:
    LDA.B #$00                           ;84977A;
    RTS                                  ;84977C;

CODE_84977D:
    LDA.B #$10                           ;84977D;
    BRA CODE_84978B                      ;84977F;

CODE_849781:
    LDA.B #$0C                           ;849781;
    BRA CODE_84978B                      ;849783;

CODE_849785:
    LDA.B #$08                           ;849785;
    BRA CODE_84978B                      ;849787;

CODE_849789:
    LDA.B #$04                           ;849789;

CODE_84978B:
    STA.B $06                            ;84978B;
    STZ.B $07                            ;84978D;
    LDA.B $08                            ;84978F;
    BPL CODE_84977A                      ;849791;
    LDA.B $0C                            ;849793;
    LSR A                                ;849795;
    LSR A                                ;849796;
    STA.B $00                            ;849797;
    LDA.B $06                            ;849799;
    SEC                                  ;84979B;
    SBC.B $00                            ;84979C;
    CMP.B $0E                            ;84979E;
    BCS CODE_84977A                      ;8497A0;
    REP #$21                             ;8497A2;
    LDX.B $2C                            ;8497A4;
    LDA.B $0A                            ;8497A6;
    ADC.B $06                            ;8497A8;
    SBC.B $00                            ;8497AA;
    SEC                                  ;8497AC;
    SBC.B $02                            ;8497AD;
    STA.B $08,X                          ;8497AF;
    BIT.B $17                            ;8497B1;
    BVC CODE_8497C8                      ;8497B3;
    LDA.B $04,X                          ;8497B5;
    CLC                                  ;8497B7;
    ADC.W #$FF00                         ;8497B8;
    STA.B $04,X                          ;8497BB;
    SEP #$20                             ;8497BD;
    LDA.B $06,X                          ;8497BF;
    ADC.B #$FF                           ;8497C1;
    STA.B $06,X                          ;8497C3;
    JSR.W CODE_8492AC                    ;8497C5;

CODE_8497C8:
    SEP #$20                             ;8497C8;
    LDA.B #$01                           ;8497CA;
    RTS                                  ;8497CC;

CODE_8497CD:
    LDA.B #$0C                           ;8497CD;
    BRA CODE_8497DB                      ;8497CF;

CODE_8497D1:
    LDA.B #$08                           ;8497D1;
    BRA CODE_8497DB                      ;8497D3;

CODE_8497D5:
    LDA.B #$04                           ;8497D5;
    BRA CODE_8497DB                      ;8497D7;

CODE_8497D9:
    LDA.B #$00                           ;8497D9;

CODE_8497DB:
    STA.B $06                            ;8497DB;
    LDA.B $08                            ;8497DD;
    BPL CODE_84977A                      ;8497DF;
    LDA.B $0C                            ;8497E1;
    LSR A                                ;8497E3;
    LSR A                                ;8497E4;
    CLC                                  ;8497E5;
    ADC.B $06                            ;8497E6;
    STA.B $00                            ;8497E8;
    CMP.B $0E                            ;8497EA;
    BCS CODE_84977A                      ;8497EC;
    REP #$21                             ;8497EE;
    LDX.B $2C                            ;8497F0;
    LDA.B $0A                            ;8497F2;
    ADC.B $00                            ;8497F4;
    SBC.B $02                            ;8497F6;
    STA.B $08,X                          ;8497F8;
    BIT.B $17                            ;8497FA;
    BVC CODE_849811                      ;8497FC;
    LDA.B $04,X                          ;8497FE;
    CLC                                  ;849800;
    ADC.W #$0100                         ;849801;
    STA.B $04,X                          ;849804;
    SEP #$20                             ;849806;
    LDA.B $06,X                          ;849808;
    ADC.B #$00                           ;84980A;
    STA.B $06,X                          ;84980C;
    JSR.W CODE_8492AC                    ;84980E;

CODE_849811:
    SEP #$20                             ;849811;
    LDA.B #$01                           ;849813;
    RTS                                  ;849815;

CODE_849816:
    LDA.B $08                            ;849816;
    AND.B #$7F                           ;849818;
    STA.B $00                            ;84981A;
    STZ.B $01                            ;84981C;
    REP #$21                             ;84981E;
    LDX.B $2C                            ;849820;
    LDA.B $08,X                          ;849822;
    ADC.B $00                            ;849824;
    SEC                                  ;849826;
    SBC.W #$0010                         ;849827;
    STA.B $08,X                          ;84982A;
    SEP #$20                             ;84982C;
    LDA.B $18                            ;84982E;
    STA.B $1A                            ;849830;
    JSR.W CODE_8490B3                    ;849832;
    STA.B $2E,X                          ;849835;
    STA.B $18                            ;849837;
    AND.B #$3F                           ;849839;
    ASL A                                ;84983B;
    XBA                                  ;84983C;
    LDA.B #$00                           ;84983D;
    XBA                                  ;84983F;
    TAY                                  ;849840;
    STY.B $28                            ;849841;
    LDA.B $08                            ;849843;
    BMI CODE_849874                      ;849845;
    LDA.B $08                            ;849847;
    AND.B #$7F                           ;849849;
    STA.B $00                            ;84984B;
    STZ.B $01                            ;84984D;
    REP #$21                             ;84984F;
    LDX.B $2C                            ;849851;
    LDA.B $08,X                          ;849853;
    ADC.W #$0010                         ;849855;
    SEC                                  ;849858;
    SBC.B $00                            ;849859;
    STA.B $08,X                          ;84985B;
    SEP #$20                             ;84985D;
    BIT.B $1A                            ;84985F;
    BVC CODE_849871                      ;849861;
    LDA.B $1A                            ;849863;
    AND.B #$3F                           ;849865;
    CMP.B #$3A                           ;849867;
    BNE CODE_84986E                      ;849869;
    JMP.W CODE_8498FA                    ;84986B;

CODE_84986E:
    JMP.W CODE_849908                    ;84986E;

CODE_849871:
    JMP.W CODE_8496B5                    ;849871;

CODE_849874:
    LDA.B #$80                           ;849874;
    STA.B $0E                            ;849876;
    JSR.W CODE_8495E6                    ;849878;
    LDA.B #$01                           ;84987B;
    RTS                                  ;84987D;

CODE_84987E:
    LDA.W $1F1C                          ;84987E;
    BEQ CODE_849899                      ;849881;
    LDA.B #$01                           ;849883;
    TSB.W $0C18                          ;849885;
    LDA.B #$21                           ;849888;
    STA.W $0BC6                          ;84988A;
    LDY.W #$FD40                         ;84988D;
    STY.W $0C07                          ;849890;
    LDY.W #$FF00                         ;849893;
    STY.W $0C09                          ;849896;

CODE_849899:
    LDA.B #$00                           ;849899;
    RTS                                  ;84989B;

CODE_84989C:
    LDA.W $1F1C                          ;84989C;
    BEQ CODE_8498C6                      ;84989F;
    BIT.W $1F96                          ;8498A1;
    BVC CODE_8498A9                      ;8498A4;
    JMP.W CODE_8496B5                    ;8498A6;

CODE_8498A9:
    LDA.B #$08                           ;8498A9;
    STA.W $0BCE                          ;8498AB;
    BRA CODE_8498C6                      ;8498AE;

CODE_8498B0:
    LDA.W $1F1C                          ;8498B0;
    BEQ CODE_8498C6                      ;8498B3;
    LDA.B #$08                           ;8498B5;
    STA.W $0BCE                          ;8498B7;
    BRA CODE_8498C6                      ;8498BA;

CODE_8498BC:
    LDA.W $1F1C                          ;8498BC;
    BEQ CODE_8498C6                      ;8498BF;
    LDA.B #$7F                           ;8498C1;
    STA.W $0BCE                          ;8498C3;

CODE_8498C6:
    LDA.B $08                            ;8498C6;
    AND.B #$7F                           ;8498C8;
    STA.B $00                            ;8498CA;
    LDA.B $0E                            ;8498CC;
    SEC                                  ;8498CE;
    SBC.B $00                            ;8498CF;
    CMP.B #$02                           ;8498D1;
    BPL CODE_8498D8                      ;8498D3;
    JMP.W CODE_84977A                    ;8498D5;

CODE_8498D8:
    DEC.B $0E                            ;8498D8;
    DEC.B $0E                            ;8498DA;
    JSR.W CODE_8496B5                    ;8498DC;
    LDA.W $1F1C                          ;8498DF;
    BEQ CODE_8498F7                      ;8498E2;
    LDA.W $0BB9                          ;8498E4;
    AND.B #$40                           ;8498E7;
    STA.W $1F1B                          ;8498E9;
    LDA.W $0C32                          ;8498EC;
    BNE CODE_8498F7                      ;8498EF;
    JSL.L CODE_849F2A                    ;8498F1;
    REP #$10                             ;8498F5;

CODE_8498F7:
    LDA.B #$01                           ;8498F7;
    RTS                                  ;8498F9;

CODE_8498FA:
    JSR.W CODE_8496B5                    ;8498FA;
    BEQ CODE_84992B                      ;8498FD;
    REP #$21                             ;8498FF;
    LDA.W #$0080                         ;849901;
    STZ.B $18                            ;849904;
    BRA CODE_849916                      ;849906;

CODE_849908:
    JSR.W CODE_8496B5                    ;849908;
    BEQ CODE_84992B                      ;84990B;
    REP #$21                             ;84990D;
    LDA.W #$FF80                         ;84990F;
    STZ.B $18                            ;849912;
    DEC.B $18                            ;849914;

CODE_849916:
    LDX.B $2C                            ;849916;
    ADC.B $04,X                          ;849918;
    STA.B $04,X                          ;84991A;
    SEP #$20                             ;84991C;
    LDA.B $06,X                          ;84991E;
    ADC.B $18                            ;849920;
    STA.B $06,X                          ;849922;
    JSR.W CODE_8492AC                    ;849924;
    SEP #$20                             ;849927;
    LDA.B #$01                           ;849929;

CODE_84992B:
    RTS                                  ;84992B;

CODE_84992C:
    REP #$21                             ;84992C;
    LDX.B $2C                            ;84992E;
    LDA.B $07,X                          ;849930;
    ADC.W #$0020                         ;849932;
    STA.B $07,X                          ;849935;
    SEP #$20                             ;849937;
    LDA.B $09,X                          ;849939;
    ADC.B #$00                           ;84993B;
    STA.B $09,X                          ;84993D;
    SEP #$20                             ;84993F;
    LDA.B #$08                           ;849941;
    STA.B $2F,X                          ;849943;
    LDA.B #$63                           ;849945;
    STA.B $1E                            ;849947;
    LDA.B #$01                           ;849949;
    RTS                                  ;84994B;

CODE_84994C:
    LDA.W $1F1C                          ;84994C;
    BPL CODE_849957                      ;84994F;
    STZ.W $0C21                          ;849951;
    STZ.W $0C22                          ;849954;

CODE_849957:
    RTS                                  ;849957;

CODE_849958:
    REP #$10                             ;849958;
    LDX.B $20                            ;84995A;
    LDA.W $0006,X                        ;84995C;
    SEC                                  ;84995F;
    SBC.W $0008,X                        ;849960;
    SEC                                  ;849963;
    SBC.B #$02                           ;849964;
    STA.B $2A                            ;849966;
    LDA.W $0005,X                        ;849968;
    STA.B $29                            ;84996B;
    JSR.W CODE_8490A4                    ;84996D;
    AND.B #$3F                           ;849970;
    CMP.B #$34                           ;849972;
    BCS CODE_84999C                      ;849974;
    LDX.B $20                            ;849976;
    LDA.W $0005,X                        ;849978;
    CLC                                  ;84997B;
    ADC.W $0007,X                        ;84997C;
    STA.B $29                            ;84997F;
    JSR.W CODE_8490A4                    ;849981;
    AND.B #$3F                           ;849984;
    CMP.B #$34                           ;849986;
    BCS CODE_84999C                      ;849988;
    LDX.B $20                            ;84998A;
    LDA.W $0005,X                        ;84998C;
    SEC                                  ;84998F;
    SBC.W $0007,X                        ;849990;
    STA.B $29                            ;849993;
    JSR.W CODE_8490A4                    ;849995;
    AND.B #$3F                           ;849998;
    CMP.B #$34                           ;84999A;

CODE_84999C:
    SEP #$10                             ;84999C;
    BCC CODE_8499AE                      ;84999E;
    CMP.B #$3C                           ;8499A0;
    BNE CODE_8499AD                      ;8499A2;
    LDA.W $1F99                          ;8499A4;
    BIT.B #$01                           ;8499A7;
    BEQ CODE_8499AD                      ;8499A9;
    CLC                                  ;8499AB;
    RTL                                  ;8499AC;

CODE_8499AD:
    SEC                                  ;8499AD;

CODE_8499AE:
    RTL                                  ;8499AE;

CODE_8499AF:
    REP #$11                             ;8499AF;
    LDX.B $20                            ;8499B1;
    LDA.W $0007,X                        ;8499B3;
    INC A                                ;8499B6;
    BIT.B $11                            ;8499B7;
    BVS CODE_8499BE                      ;8499B9;
    EOR.B #$FF                           ;8499BB;
    INC A                                ;8499BD;

CODE_8499BE:
    ADC.W $0005,X                        ;8499BE;
    STA.B $29                            ;8499C1;
    LDA.W $0006,X                        ;8499C3;
    CLC                                  ;8499C6;
    ADC.W $0008,X                        ;8499C7;
    SEC                                  ;8499CA;
    SBC.W $0009,X                        ;8499CB;
    STA.B $2A                            ;8499CE;
    JSR.W CODE_8490A4                    ;8499D0;
    AND.B #$3F                           ;8499D3;
    CMP.B #$34                           ;8499D5;
    BCS CODE_8499FF                      ;8499D7;
    LDX.B $20                            ;8499D9;
    LDA.W $0006,X                        ;8499DB;
    SEC                                  ;8499DE;
    SBC.W $0008,X                        ;8499DF;
    CLC                                  ;8499E2;
    ADC.W $0009,X                        ;8499E3;
    STA.B $2A                            ;8499E6;
    JSR.W CODE_8490A4                    ;8499E8;
    AND.B #$3F                           ;8499EB;
    CMP.B #$34                           ;8499ED;
    BCS CODE_8499FF                      ;8499EF;
    LDA.B #$01                           ;8499F1;
    BIT.B $11                            ;8499F3;
    BVS CODE_8499F9                      ;8499F5;
    LDA.B #$02                           ;8499F7;

CODE_8499F9:
    CLC                                  ;8499F9;
    AND.B $2C                            ;8499FA;
    BEQ CODE_8499FF                      ;8499FC;
    SEC                                  ;8499FE;

CODE_8499FF:
    SEP #$10                             ;8499FF;
    RTL                                  ;849A01;

CODE_849A02:
    PHP                                  ;849A02;
    REP #$10                             ;849A03;
    LDX.W #$0BA8                         ;849A05;
    JSL.L CODE_849C0E                    ;849A08;
    BCC CODE_849A22                      ;849A0C;
    LDA.B #$80                           ;849A0E;
    TSB.W $0BD4                          ;849A10;
    LDA.B #$40                           ;849A13;
    TSB.W $0BD4                          ;849A15;
    LDY.W $0000                          ;849A18;
    BPL CODE_849A22                      ;849A1B;
    LDA.B #$40                           ;849A1D;
    TRB.W $0BD4                          ;849A1F;

CODE_849A22:
    PLP                                  ;849A22;
    RTL                                  ;849A23;

CODE_849A24:
    JSL.L CODE_849A36                    ;849A24;
    BCS CODE_849A33                      ;849A28;
    JSL.L CODE_849A43                    ;849A2A;
    BCC CODE_849A35                      ;849A2E;
    LDY.B #$40                           ;849A30;
    RTL                                  ;849A32;

CODE_849A33:
    LDY.B #$00                           ;849A33;

CODE_849A35:
    RTL                                  ;849A35;

CODE_849A36:
    SEP #$20                             ;849A36;
    REP #$11                             ;849A38;
    LDX.B $20                            ;849A3A;
    LDA.W $0007,X                        ;849A3C;
    ADC.B #$08                           ;849A3F;
    BRA CODE_849A51                      ;849A41;

CODE_849A43:
    SEP #$21                             ;849A43;
    REP #$10                             ;849A45;
    LDX.B $20                            ;849A47;
    LDA.W $0007,X                        ;849A49;
    EOR.B #$FF                           ;849A4C;
    INC A                                ;849A4E;
    SBC.B #$08                           ;849A4F;

CODE_849A51:
    CLC                                  ;849A51;
    ADC.W $0005,X                        ;849A52;
    STA.B $29                            ;849A55;
    STZ.B $81                            ;849A57;
    LDA.W $0006,X                        ;849A59;
    CLC                                  ;849A5C;
    ADC.W $0008,X                        ;849A5D;
    SEC                                  ;849A60;
    SBC.W $0009,X                        ;849A61;
    STA.B $2A                            ;849A64;
    JSR.W CODE_8490A4                    ;849A66;
    AND.B #$3F                           ;849A69;
    CMP.B #$3C                           ;849A6B;
    BEQ CODE_849AA8                      ;849A6D;
    CMP.B #$34                           ;849A6F;
    BCS CODE_849A9B                      ;849A71;
    INC.B $81                            ;849A73;
    LDX.B $20                            ;849A75;
    LDA.W $0006,X                        ;849A77;
    STA.B $2A                            ;849A7A;
    JSR.W CODE_8490A4                    ;849A7C;
    AND.B #$3F                           ;849A7F;
    CMP.B #$34                           ;849A81;
    BCS CODE_849A9B                      ;849A83;
    INC.B $81                            ;849A85;
    LDX.B $20                            ;849A87;
    LDA.W $0006,X                        ;849A89;
    SEC                                  ;849A8C;
    SBC.W $0008,X                        ;849A8D;
    STA.B $2A                            ;849A90;
    JSR.W CODE_8490A4                    ;849A92;
    AND.B #$3F                           ;849A95;
    CMP.B #$34                           ;849A97;
    BCC CODE_849AA4                      ;849A99;

CODE_849A9B:
    CMP.B #$36                           ;849A9B;
    BEQ CODE_849AA4                      ;849A9D;
    SEP #$11                             ;849A9F;
    REP #$40                             ;849AA1;
    RTL                                  ;849AA3;

CODE_849AA4:
    SEP #$10                             ;849AA4;
    CLC                                  ;849AA6;
    RTL                                  ;849AA7;

CODE_849AA8:
    SEP #$50                             ;849AA8;
    RTL                                  ;849AAA;

CODE_849AAB:
    LDA.B #$00                           ;849AAB;
    LDX.B $2E                            ;849AAD;
    BNE CODE_849AB4                      ;849AAF;
    LDA.B #$04                           ;849AB1;
    RTL                                  ;849AB3;

CODE_849AB4:
    CPX.B #$03                           ;849AB4;
    BPL CODE_849AB9                      ;849AB6;
    RTL                                  ;849AB8;

CODE_849AB9:
    INC A                                ;849AB9;
    CPX.B #$05                           ;849ABA;
    BPL CODE_849ABF                      ;849ABC;
    RTL                                  ;849ABE;

CODE_849ABF:
    INC A                                ;849ABF;
    CPX.B #$09                           ;849AC0;
    BPL CODE_849AC5                      ;849AC2;
    RTL                                  ;849AC4;

CODE_849AC5:
    INC A                                ;849AC5;
    CPX.B #$0D                           ;849AC6;
    BPL CODE_849ACB                      ;849AC8;
    RTL                                  ;849ACA;

CODE_849ACB:
    INC A                                ;849ACB;
    RTL                                  ;849ACC;

CODE_849ACD:
    LDA.B $1B                            ;849ACD;
    ORA.B $1A                            ;849ACF;
    BEQ CODE_849AEB                      ;849AD1;
    JSL.L CODE_849AAB                    ;849AD3;
    CMP.B #$04                           ;849AD7;
    BNE CODE_849AE2                      ;849AD9;
    BIT.B $1B                            ;849ADB;
    BPL CODE_849AE1                      ;849ADD;
    LDA.B #$05                           ;849ADF;

CODE_849AE1:
    RTL                                  ;849AE1;

CODE_849AE2:
    BIT.B $1B                            ;849AE2;
    BMI CODE_849AEA                      ;849AE4;
    TAX                                  ;849AE6;
    LDA.W DATA8_86BB9A,X                 ;849AE7;

CODE_849AEA:
    RTL                                  ;849AEA;

CODE_849AEB:
    JSL.L CODE_849AAB                    ;849AEB;
    CMP.B #$04                           ;849AEF;
    BNE CODE_849AFA                      ;849AF1;
    BIT.B $11                            ;849AF3;

CODE_849AF5:
    BVS CODE_849AF9                      ;849AF5;
    LDA.B #$05                           ;849AF7;

CODE_849AF9:
    RTL                                  ;849AF9;

CODE_849AFA:
    BIT.B $11                            ;849AFA;
    BVC CODE_849B02                      ;849AFC;
    TAX                                  ;849AFE;
    LDA.W DATA8_86BB9A,X                 ;849AFF;

CODE_849B02:
    RTL                                  ;849B02;

CODE_849B03:
    REP #$10                             ;849B03;
    LDA.B $27                            ;849B05;
    BEQ CODE_849B79                      ;849B07;
    LDA.B $0E                            ;849B09;
    BEQ CODE_849B3E                      ;849B0B;
    LDA.W $1F0C                          ;849B0D;
    BNE CODE_849B3E                      ;849B10;
    LDA.W $0C32                          ;849B12;
    BNE CODE_849B28                      ;849B15;
    LDA.W $0C30                          ;849B17;
    BNE CODE_849B28                      ;849B1A;
    LDX.W #$0BA8                         ;849B1C;
    JSL.L CODE_849C0E                    ;849B1F;
    BCC CODE_849B3E                      ;849B23;
    JMP.W CODE_849D07                    ;849B25;

CODE_849B28:
    LDA.W $0E18                          ;849B28;
    BEQ CODE_849B3E                      ;849B2B;
    LDA.W $0E48                          ;849B2D;
    BNE CODE_849B3E                      ;849B30;
    LDX.W #$0E18                         ;849B32;
    JSL.L CODE_849C0E                    ;849B35;
    BCC CODE_849B3E                      ;849B39;
    JMP.W CODE_849D7E                    ;849B3B;

CODE_849B3E:
    SEP #$10                             ;849B3E;
    LDA.B #$00                           ;849B40;
    RTL                                  ;849B42;

CODE_849B43:
    REP #$10                             ;849B43;
    LDA.B $27                            ;849B45;
    AND.B #$7F                           ;849B47;
    STA.B $27                            ;849B49;
    BEQ CODE_849B79                      ;849B4B;
    LDA.B $30                            ;849B4D;
    BNE CODE_849B79                      ;849B4F;
    LDA.B $0E                            ;849B51;
    BEQ CODE_849B79                      ;849B53;
    LDX.W #$1228                         ;849B55;

CODE_849B58:
    SEP #$20                             ;849B58;
    LDA.W $0000,X                        ;849B5A;
    BEQ CODE_849B6D                      ;849B5D;
    LDA.W $0030,X                        ;849B5F;
    BNE CODE_849B6D                      ;849B62;
    JSL.L CODE_849C0E                    ;849B64;
    BCC CODE_849B6D                      ;849B68;
    JMP.W CODE_849E10                    ;849B6A;

CODE_849B6D:
    REP #$21                             ;849B6D;
    TXA                                  ;849B6F;
    ADC.W #$0040                         ;849B70;
    TAX                                  ;849B73;
    CMP.W #$1428                         ;849B74;
    BCC CODE_849B58                      ;849B77;

CODE_849B79:
    SEP #$30                             ;849B79;
    LDA.B #$00                           ;849B7B;
    RTL                                  ;849B7D;

CODE_849B7E:
    REP #$10                             ;849B7E;
    LDA.B $27                            ;849B80;
    AND.B #$7F                           ;849B82;
    STA.B $27                            ;849B84;
    BEQ CODE_849BC5                      ;849B86;
    LDA.B $30                            ;849B88;
    BNE CODE_849BC5                      ;849B8A;
    LDA.B $0E                            ;849B8C;
    BEQ CODE_849BC5                      ;849B8E;
    LDX.W #$0E68                         ;849B90;

CODE_849B93:
    REP #$20                             ;849B93;
    TDC                                  ;849B95;
    STA.W $0000                          ;849B96;
    SEP #$20                             ;849B99;
    CPX.W $0000                          ;849B9B;
    BEQ CODE_849BB9                      ;849B9E;
    LDA.W $0000,X                        ;849BA0;
    BEQ CODE_849BB9                      ;849BA3;
    LDA.W $0030,X                        ;849BA5;
    BNE CODE_849BB9                      ;849BA8;
    JSL.L CODE_849C0E                    ;849BAA;
    BCC CODE_849BB9                      ;849BAE;
    LDA.W $000A,X                        ;849BB0;
    STX.W $0000                          ;849BB3;
    SEP #$10                             ;849BB6;
    RTL                                  ;849BB8;

CODE_849BB9:
    REP #$21                             ;849BB9;
    TXA                                  ;849BBB;
    ADC.W #$0040                         ;849BBC;
    TAX                                  ;849BBF;
    CMP.W #$1228                         ;849BC0;
    BCC CODE_849B93                      ;849BC3;

CODE_849BC5:
    SEP #$32                             ;849BC5;
    RTL                                  ;849BC7;

CODE_849BC8:
    REP #$10                             ;849BC8;
    LDA.B $30                            ;849BCA;
    BNE CODE_849C09                      ;849BCC;
    LDA.B $0E                            ;849BCE;
    BEQ CODE_849C09                      ;849BD0;
    LDX.W #$1428                         ;849BD2;

CODE_849BD5:
    LDA.W $0000,X                        ;849BD5;
    BEQ CODE_849BFB                      ;849BD8;
    JSL.L CODE_849C0E                    ;849BDA;
    BCC CODE_849BFB                      ;849BDE;
    LDA.W $0028,X                        ;849BE0;
    BEQ CODE_849BF8                      ;849BE3;
    REP #$20                             ;849BE5;
    STZ.W $0000,X                        ;849BE7;
    STZ.W $0002,X                        ;849BEA;
    STZ.W $000E,X                        ;849BED;
    STZ.W $002C,X                        ;849BF0;
    SEP #$30                             ;849BF3;
    LDA.B #$01                           ;849BF5;
    RTL                                  ;849BF7;

CODE_849BF8:
    SEP #$B0                             ;849BF8;
    RTL                                  ;849BFA;

CODE_849BFB:
    REP #$21                             ;849BFB;
    TXA                                  ;849BFD;
    ADC.W #$0040                         ;849BFE;
    TAX                                  ;849C01;
    CMP.W #$1628                         ;849C02;
    SEP #$20                             ;849C05;
    BCC CODE_849BD5                      ;849C07;

CODE_849C09:
    SEP #$30                             ;849C09;
    LDA.B #$00                           ;849C0B;
    RTL                                  ;849C0D;

CODE_849C0E:
    PHY                                  ;849C0E;
    LDY.B $20                            ;849C0F;
    BNE CODE_849C16                      ;849C11;
    PLY                                  ;849C13;
    CLC                                  ;849C14;
    RTL                                  ;849C15;

CODE_849C16:
    LDY.W $0020,X                        ;849C16;
    BNE CODE_849C1E                      ;849C19;
    PLY                                  ;849C1B;
    CLC                                  ;849C1C;
    RTL                                  ;849C1D;

CODE_849C1E:
    REP #$20                             ;849C1E;
    PHX                                  ;849C20;
    LDA.W $0005,X                        ;849C21;
    STA.W $0004                          ;849C24;
    LDA.W $0008,X                        ;849C27;
    STA.W $0006                          ;849C2A;
    LDA.B $05                            ;849C2D;
    STA.W $000C                          ;849C2F;
    LDA.B $08                            ;849C32;
    STA.W $000E                          ;849C34;
    SEP #$20                             ;849C37;
    LDA.W $0011,X                        ;849C39;
    STA.W $0008                          ;849C3C;
    LDA.B $11                            ;849C3F;
    STA.W $0009                          ;849C41;
    LDY.W $0020,X                        ;849C44;
    LDX.B $20                            ;849C47;
    PHD                                  ;849C49;
    PEA.W $0000                          ;849C4A;
    PLD                                  ;849C4D;
    LDA.W $0002,X                        ;849C4E;
    CLC                                  ;849C51;
    ADC.W $0002,Y                        ;849C52;
    STA.B $00                            ;849C55;
    STZ.B $01                            ;849C57;
    LDA.W $0003,X                        ;849C59;
    CLC                                  ;849C5C;
    ADC.W $0003,Y                        ;849C5D;
    STA.B $02                            ;849C60;
    STZ.B $03                            ;849C62;
    REP #$21                             ;849C64;
    LDA.W $0000,Y                        ;849C66;
    AND.W #$00FF                         ;849C69;
    BIT.W #$0080                         ;849C6C;
    BEQ CODE_849C74                      ;849C6F;
    ORA.W #$FF00                         ;849C71;

CODE_849C74:
    BIT.B $07                            ;849C74;
    BVC CODE_849C7C                      ;849C76;
    EOR.W #$FFFF                         ;849C78;
    INC A                                ;849C7B;

CODE_849C7C:
    STA.B $0A                            ;849C7C;
    STZ.B $10                            ;849C7E;
    LDA.W $0000,X                        ;849C80;
    AND.W #$00FF                         ;849C83;
    BIT.W #$0080                         ;849C86;
    BEQ CODE_849C8E                      ;849C89;
    ORA.W #$FF00                         ;849C8B;

CODE_849C8E:
    BIT.B $08                            ;849C8E;
    BVC CODE_849C96                      ;849C90;
    EOR.W #$FFFF                         ;849C92;
    INC A                                ;849C95;

CODE_849C96:
    ADC.B $0C                            ;849C96;
    SEC                                  ;849C98;
    SBC.B $04                            ;849C99;
    SEC                                  ;849C9B;
    SBC.B $0A                            ;849C9C;
    BPL CODE_849CA6                      ;849C9E;
    DEC.B $10                            ;849CA0;
    EOR.W #$FFFF                         ;849CA2;
    INC A                                ;849CA5;

CODE_849CA6:
    STA.B $04                            ;849CA6;
    LDA.B $00                            ;849CA8;
    SEC                                  ;849CAA;
    SBC.B $04                            ;849CAB;
    INC A                                ;849CAD;
    STA.B $04                            ;849CAE;
    BIT.B $0F                            ;849CB0;
    BMI CODE_849CB8                      ;849CB2;
    EOR.W #$FFFF                         ;849CB4;
    INC A                                ;849CB7;

CODE_849CB8:
    STA.B $00                            ;849CB8;
    BCC CODE_849D01                      ;849CBA;
    LDA.W $0001,Y                        ;849CBC;
    AND.W #$00FF                         ;849CBF;
    BIT.W #$0080                         ;849CC2;
    BEQ CODE_849CCA                      ;849CC5;
    ORA.W #$FF00                         ;849CC7;

CODE_849CCA:
    STA.B $0A                            ;849CCA;
    STZ.B $10                            ;849CCC;
    LDA.W $0001,X                        ;849CCE;
    AND.W #$00FF                         ;849CD1;
    BIT.W #$0080                         ;849CD4;
    BEQ CODE_849CDC                      ;849CD7;
    ORA.W #$FF00                         ;849CD9;

CODE_849CDC:
    CLC                                  ;849CDC;
    ADC.B $0E                            ;849CDD;
    SEC                                  ;849CDF;
    SBC.B $06                            ;849CE0;
    SEC                                  ;849CE2;
    SBC.B $0A                            ;849CE3;
    BPL CODE_849CED                      ;849CE5;
    DEC.B $10                            ;849CE7;
    EOR.W #$FFFF                         ;849CE9;
    INC A                                ;849CEC;

CODE_849CED:
    STA.B $06                            ;849CED;
    LDA.B $02                            ;849CEF;
    SEC                                  ;849CF1;
    SBC.B $06                            ;849CF2;
    INC A                                ;849CF4;
    STA.B $06                            ;849CF5;
    BIT.B $0F                            ;849CF7;
    BMI CODE_849CFF                      ;849CF9;
    EOR.W #$FFFF                         ;849CFB;
    INC A                                ;849CFE;

CODE_849CFF:
    STA.B $02                            ;849CFF;

CODE_849D01:
    SEP #$20                             ;849D01;
    PLD                                  ;849D03;
    PLX                                  ;849D04;
    PLY                                  ;849D05;
    RTL                                  ;849D06;

CODE_849D07:
    STA.L $700505                        ;849D07;
    CMP.L $700505                        ;849D0B;
    BEQ CODE_849D1B                      ;849D0F;
    DEC.W $1F9F                          ;849D11;
    BPL CODE_849D23                      ;849D14;
    STZ.W $1F9F                          ;849D16;
    BRA CODE_849D23                      ;849D19;

CODE_849D1B:
    INC.W $1F9F                          ;849D1B;
    BNE CODE_849D23                      ;849D1E;
    DEC.W $1F9F                          ;849D20;

CODE_849D23:
    LDA.B $26                            ;849D23;
    BEQ CODE_849D79                      ;849D25;
    BMI CODE_849D79                      ;849D27;

CODE_849D29:
    INC.W $0BD8                          ;849D29;
    INC.W $0C32                          ;849D2C;
    LDA.B #$0E                           ;849D2F;
    STA.W $0BAA                          ;849D31;
    STZ.W $0BAB                          ;849D34;
    LDA.B $26                            ;849D37;
    STA.W $0000                          ;849D39;
    LDA.W $1F99                          ;849D3C;
    BIT.B #$04                           ;849D3F;
    BEQ CODE_849D4B                      ;849D41;
    LSR.W $0000                          ;849D43;
    BCC CODE_849D4B                      ;849D46;
    INC.W $0000                          ;849D48;

CODE_849D4B:
    LDA.W $0BCF                          ;849D4B;
    AND.B #$7F                           ;849D4E;
    SEC                                  ;849D50;
    SBC.W $0000                          ;849D51;
    STA.W $0BCF                          ;849D54;
    BEQ CODE_849D5B                      ;849D57;
    BPL CODE_849D66                      ;849D59;

CODE_849D5B:
    STZ.W $0BCF                          ;849D5B;
    LDA.B #$0C                           ;849D5E;
    STA.W $0BAA                          ;849D60;
    STZ.W $0BAB                          ;849D63;

CODE_849D66:
    LDA.B #$80                           ;849D66;
    TSB.W $0BCF                          ;849D68;
    LDA.B #$00                           ;849D6B;
    LDY.B $05                            ;849D6D;
    CPY.W $0BAD                          ;849D6F;
    BCC CODE_849D76                      ;849D72;
    LDA.B #$40                           ;849D74;

CODE_849D76:
    STA.W $0C11                          ;849D76;

CODE_849D79:
    SEP #$10                             ;849D79;
    LDA.B #$01                           ;849D7B;
    RTL                                  ;849D7D;

CODE_849D7E:
    LDA.B $26                            ;849D7E;
    BMI CODE_849DC5                      ;849D80;
    INC.W $0E48                          ;849D82;
    LDA.B #$79                           ;849D85;
    STA.W $0E3E                          ;849D87;
    LDA.B #$00                           ;849D8A;
    LDY.B $05                            ;849D8C;
    CPY.W $0E1D                          ;849D8E;
    BCC CODE_849D95                      ;849D91;
    LDA.B #$40                           ;849D93;

CODE_849D95:
    STA.W $0E4B                          ;849D95;
    LDA.B $26                            ;849D98;
    CMP.B #$08                           ;849D9A;
    BCC CODE_849DA0                      ;849D9C;
    LDA.B #$07                           ;849D9E;

CODE_849DA0:
    BIT.W $0E4B                          ;849DA0;
    BVC CODE_849DA8                      ;849DA3;
    EOR.B #$FF                           ;849DA5;
    INC A                                ;849DA7;

CODE_849DA8:
    STA.W $0E57                          ;849DA8;
    LDA.W $0E3F                          ;849DAB;
    AND.B #$7F                           ;849DAE;
    SEC                                  ;849DB0;
    SBC.B $26                            ;849DB1;
    STA.W $0E3F                          ;849DB3;
    BPL CODE_849DBB                      ;849DB6;
    STZ.W $0E3F                          ;849DB8;

CODE_849DBB:
    LDA.B #$80                           ;849DBB;
    TSB.W $0E3F                          ;849DBD;
    SEP #$10                             ;849DC0;
    LDA.B #$01                           ;849DC2;
    RTL                                  ;849DC4;

CODE_849DC5:
    SEP #$90                             ;849DC5;
    RTL                                  ;849DC7;

CODE_849DC8:
    PHP                                  ;849DC8;
    SEP #$20                             ;849DC9;
    REP #$10                             ;849DCB;
    JSL.L CODE_82833E                    ;849DCD;
    BNE CODE_849E0E                      ;849DD1;
    LDA.W $1F0D                          ;849DD3;
    DEC A                                ;849DD6;

CODE_849DD7:
    BMI CODE_849DD7                      ;849DD7;
    STA.W $000A,X                        ;849DD9;
    CMP.B #$08                           ;849DDC;
    BNE CODE_849DE3                      ;849DDE;
    DEC.W $0C20                          ;849DE0;

CODE_849DE3:
    REP #$20                             ;849DE3;
    LDA.B $05                            ;849DE5;
    STA.W $0005,X                        ;849DE7;
    LDA.B $08                            ;849DEA;
    STA.W $0008,X                        ;849DEC;
    LDA.B $20                            ;849DEF;
    STA.W $0020,X                        ;849DF1;
    SEP #$20                             ;849DF4;
    LDA.B $11                            ;849DF6;
    STA.W $0011,X                        ;849DF8;
    PHX                                  ;849DFB;
    JSL.L CODE_849E10                    ;849DFC;
    REP #$10                             ;849E00;
    PLX                                  ;849E02;
    STZ.W $0001,X                        ;849E03;
    PHD                                  ;849E06;
    PHX                                  ;849E07;
    PLD                                  ;849E08;
    JSL.L CODE_84A51A                    ;849E09;
    PLD                                  ;849E0D;

CODE_849E0E:
    PLP                                  ;849E0E;
    RTL                                  ;849E0F;

CODE_849E10:
    REP #$20                             ;849E10;
    STX.W $1F1E                          ;849E12;
    LDA.W $000A,X                        ;849E15;
    AND.W #$00FF                         ;849E18;
    STA.W $0000                          ;849E1B;
    LDA.B $28                            ;849E1E;
    AND.W #$00FF                         ;849E20;
    ASL A                                ;849E23;
    TAY                                  ;849E24;
    LDA.W DATA8_86EF37,Y                 ;849E25;
    CLC                                  ;849E28;
    ADC.W $0000                          ;849E29;
    TAY                                  ;849E2C;
    SEP #$20                             ;849E2D;
    STZ.W $0005                          ;849E2F;
    LDA.W $0000                          ;849E32;
    STA.W $1F1D                          ;849E35;
    LDA.B #$01                           ;849E38;
    STA.W $0004                          ;849E3A;
    LDA.B #$00                           ;849E3D;
    XBA                                  ;849E3F;
    LDA.W DATA8_86EF37,Y                 ;849E40;
    BPL CODE_849E53                      ;849E43;
    STX.W $0000                          ;849E45;
    AND.B #$7F                           ;849E48;
    TAX                                  ;849E4A;
    JSR.W (PTR16_849EE5,X)               ;849E4B;
    LDX.W $0000                          ;849E4E;
    BRA CODE_849EA4                      ;849E51;

CODE_849E53:
    BNE CODE_849E58                      ;849E53;
    STZ.W $0004                          ;849E55;

CODE_849E58:
    LDA.W $1F1D                          ;849E58;
    CMP.B #$19                           ;849E5B;
    BEQ CODE_849E63                      ;849E5D;
    CMP.B #$1A                           ;849E5F;
    BNE CODE_849E69                      ;849E61;

CODE_849E63:
    LDA.B #$3C                           ;849E63;
    JSL.L CODE_8088A2                    ;849E65;

CODE_849E69:
    LDA.B $27                            ;849E69;
    AND.B #$7F                           ;849E6B;
    SEC                                  ;849E6D;
    SBC.W DATA8_86EF37,Y                 ;849E6E;
    BMI CODE_849E94                      ;849E71;
    BEQ CODE_849E94                      ;849E73;
    STA.B $27                            ;849E75;
    LDA.B #$11                           ;849E77;
    JSL.L CODE_8088A2                    ;849E79;
    LDA.B #$08                           ;849E7D;
    STA.W $0001,X                        ;849E7F;
    STZ.W $0002,X                        ;849E82;
    STZ.W $0003,X                        ;849E85;
    LDA.W $000A,X                        ;849E88;
    CMP.B #$1D                           ;849E8B;
    BEQ CODE_849EA0                      ;849E8D;
    INC.W $0030,X                        ;849E8F;
    BRA CODE_849EA0                      ;849E92;

CODE_849E94:
    STZ.B $27                            ;849E94;
    LDA.B #$FF                           ;849E96;
    STA.W $0004                          ;849E98;
    LDA.B #$06                           ;849E9B;
    STA.W $0001,X                        ;849E9D;

CODE_849EA0:
    LDA.B #$80                           ;849EA0;
    TSB.B $27                            ;849EA2;

CODE_849EA4:
    LDA.B #$00                           ;849EA4;
    STA.W $1F1B                          ;849EA6;
    LDY.W $001A,X                        ;849EA9;
    BEQ CODE_849EB7                      ;849EAC;
    BPL CODE_849EC0                      ;849EAE;

CODE_849EB0:
    LDA.B #$40                           ;849EB0;
    STA.W $1F1B                          ;849EB2;
    BRA CODE_849EC0                      ;849EB5;

CODE_849EB7:
    LDY.W $0005,X                        ;849EB7;
    CPY.B $05                            ;849EBA;
    BCC CODE_849EC0                      ;849EBC;
    BRA CODE_849EB0                      ;849EBE;

CODE_849EC0:
    LDA.W $0004                          ;849EC0;
    PHA                                  ;849EC3;
    LDA.W $0005                          ;849EC4;
    PHA                                  ;849EC7;
    PHX                                  ;849EC8;
    JSL.L CODE_84A544                    ;849EC9;
    PLX                                  ;849ECD;
    REP #$20                             ;849ECE;
    LDA.W $0000                          ;849ED0;
    STA.W $0033,X                        ;849ED3;
    LDA.W $0002                          ;849ED6;
    STA.W $0035,X                        ;849ED9;
    SEP #$30                             ;849EDC;
    PLA                                  ;849EDE;
    BEQ CODE_849EE3                      ;849EDF;
    SEP #$40                             ;849EE1;

CODE_849EE3:
    PLA                                  ;849EE3;
    RTL                                  ;849EE4;

PTR16_849EE5:
    dw CODE_849EE9                       ;849EE5;
    dw CODE_849F0B                       ;849EE7;

CODE_849EE9:
    LDX.W $0000                          ;849EE9;
    LDA.B #$04                           ;849EEC;
    STA.W $0001,X                        ;849EEE;
    STZ.W $0002,X                        ;849EF1;
    LDA.W $000A,X                        ;849EF4;
    CMP.B #$1D                           ;849EF7;
    BEQ CODE_849EFE                      ;849EF9;
    INC.W $0030,X                        ;849EFB;

CODE_849EFE:
    STZ.W $0004                          ;849EFE;
    INC.W $0005                          ;849F01;
    LDA.B #$10                           ;849F04;
    JSL.L CODE_8088A2                    ;849F06;
    RTS                                  ;849F0A;

CODE_849F0B:
    LDX.W $0000                          ;849F0B;
    LDA.B #$08                           ;849F0E;
    STA.W $0001,X                        ;849F10;
    RTS                                  ;849F13;

CODE_849F14:
    LDA.B #$08                           ;849F14;
    STA.W $0BD7                          ;849F16;
    STA.W $0BD8                          ;849F19;
    LDA.B #$16                           ;849F1C;
    STA.W $0BAA                          ;849F1E;
    STZ.W $0BAB                          ;849F21;
    RTL                                  ;849F24;

CODE_849F25:
    PHP                                  ;849F25;
    SEP #$30                             ;849F26;
    BRA CODE_849F3D                      ;849F28;

CODE_849F2A:
    PHP                                  ;849F2A;
    SEP #$30                             ;849F2B;
    INC.W $0BD8                          ;849F2D;
    LDA.B #$08                           ;849F30;
    STA.W $0BD7                          ;849F32;
    LDA.B #$0E                           ;849F35;
    STA.W $0BAA                          ;849F37;
    STZ.W $0BAB                          ;849F3A;

CODE_849F3D:
    LDA.W $0BCE                          ;849F3D;
    BEQ CODE_849F72                      ;849F40;
    STA.W $0000                          ;849F42;
    LDA.W $1F99                          ;849F45;
    BIT.B #$04                           ;849F48;
    BEQ CODE_849F54                      ;849F4A;
    LSR.W $0000                          ;849F4C;
    BCC CODE_849F54                      ;849F4F;
    INC.W $0000                          ;849F51;

CODE_849F54:
    LDA.W $0BCF                          ;849F54;
    AND.B #$7F                           ;849F57;
    SEC                                  ;849F59;
    SBC.W $0000                          ;849F5A;
    STA.W $0BCF                          ;849F5D;
    BEQ CODE_849F64                      ;849F60;
    BPL CODE_849F72                      ;849F62;

CODE_849F64:
    STZ.W $0BCF                          ;849F64;
    LDA.B #$0C                           ;849F67;
    STA.W $0BAA                          ;849F69;
    STA.W $0C12                          ;849F6C;
    STZ.W $0BAB                          ;849F6F;

CODE_849F72:
    LDA.B #$80                           ;849F72;
    TSB.W $0BCF                          ;849F74;
    PLP                                  ;849F77;
    RTL                                  ;849F78;

CODE_849F79:
    STZ.W $0BD8                          ;849F79;
    LDA.B #$08                           ;849F7C;
    STA.W $0BAA                          ;849F7E;
    STZ.W $0BAB                          ;849F81;
    RTL                                  ;849F84;

CODE_849F85:
    LDA.W $0BAA                          ;849F85;
    CMP.B #$18                           ;849F88;
    BEQ CODE_849FAC                      ;849F8A;
    STA.W $0C12                          ;849F8C;
    STA.W $0C16                          ;849F8F;
    LDA.B #$18                           ;849F92;
    STA.W $0BAA                          ;849F94;
    LDA.L LOOSE_OP_849D0A                ;849F97;
    CMP.L CODE_849AF5                    ;849F9B;
    BEQ CODE_849FAC                      ;849F9F;
    CMP.L LOOSE_OP_849D0E                ;849FA1;
    BEQ CODE_849FAC                      ;849FA5;
    LDA.B #$80                           ;849FA7;
    TSB.W $1F9F                          ;849FA9;

CODE_849FAC:
    RTL                                  ;849FAC;

CODE_849FAD:
    LDA.W $0C12                          ;849FAD;
    STA.W $0BAA                          ;849FB0;
    STZ.W $0C16                          ;849FB3;
    JSL.L CODE_849086                    ;849FB6;
    TAX                                  ;849FBA;
    LDA.L CODE_008000,X                  ;849FBB;
    CMP.L CODE_408000,X                  ;849FBF;
    BEQ CODE_849FC8                      ;849FC3;
    STZ.W $1F81                          ;849FC5;

CODE_849FC8:
    RTL                                  ;849FC8;

CODE_849FC9:
    LDA.W $0BAA                          ;849FC9;
    CMP.B #$1C                           ;849FCC;
    BEQ CODE_849FDB                      ;849FCE;
    STA.W $0C15                          ;849FD0;
    STA.W $0C16                          ;849FD3;
    LDA.B #$1C                           ;849FD6;
    STA.W $0BAA                          ;849FD8;

CODE_849FDB:
    RTL                                  ;849FDB;

CODE_849FDC:
    LDA.W $0C15                          ;849FDC;
    STA.W $0BAA                          ;849FDF;
    STZ.W $0C16                          ;849FE2;
    RTL                                  ;849FE5;

CODE_849FE6:
    LDA.B #$1E                           ;849FE6;
    STA.W $0BAA                          ;849FE8;
    STZ.W $0BAB                          ;849FEB;
    STA.W $0C16                          ;849FEE;
    RTL                                  ;849FF1;

CODE_849FF2:
    LDA.B #$46                           ;849FF2;
    STA.W $0BAA                          ;849FF4;
    STZ.W $0BAB                          ;849FF7;
    STA.W $0C16                          ;849FFA;
    RTL                                  ;849FFD;

CODE_849FFE:
    STZ.W $0BAA                          ;849FFE;
    STZ.W $0BAB                          ;84A001;
    STZ.W $0C16                          ;84A004;
    RTL                                  ;84A007;

CODE_84A008:
    STA.W $0C2D                          ;84A008;
    LDA.B #$36                           ;84A00B;
    STA.W $0BAA                          ;84A00D;
    STZ.W $0BAB                          ;84A010;
    RTL                                  ;84A013;

CODE_84A014:
    LDA.B #$34                           ;84A014;
    STA.W $0BAA                          ;84A016;
    STZ.W $0BAB                          ;84A019;
    RTL                                  ;84A01C;

CODE_84A01D:
    LDA.B #$38                           ;84A01D;
    STA.W $0BAA                          ;84A01F;
    STZ.W $0BAB                          ;84A022;
    RTL                                  ;84A025;

CODE_84A026:
    LDA.B #$3C                           ;84A026;
    STA.W $0BAA                          ;84A028;
    STZ.W $0BAB                          ;84A02B;
    RTL                                  ;84A02E;

CODE_84A02F:
    LDA.B #$3E                           ;84A02F;
    STA.W $0BAA                          ;84A031;
    STZ.W $0BAB                          ;84A034;
    RTL                                  ;84A037;

CODE_84A038:
    LDA.B #$40                           ;84A038;
    STA.W $0BAA                          ;84A03A;
    STZ.W $0BAB                          ;84A03D;
    RTL                                  ;84A040;

CODE_84A041:
    LDA.B #$3A                           ;84A041;
    STA.W $0BAA                          ;84A043;
    STZ.W $0BAB                          ;84A046;
    STA.W $0C16                          ;84A049;
    RTL                                  ;84A04C;

CODE_84A04D:
    LDA.B #$2E                           ;84A04D;
    STA.W $0BAA                          ;84A04F;
    STZ.W $0BAB                          ;84A052;
    STA.W $0BD8                          ;84A055;
    STA.W $0C16                          ;84A058;
    LDA.B #$01                           ;84A05B;
    TSB.W $0C2F                          ;84A05D;
    RTL                                  ;84A060;

CODE_84A061:
    LDA.B #$30                           ;84A061;
    STA.W $0BAA                          ;84A063;
    STZ.W $0BAB                          ;84A066;
    STA.W $0BD8                          ;84A069;
    STA.W $0C16                          ;84A06C;
    RTL                                  ;84A06F;

CODE_84A070:
    LDA.B #$32                           ;84A070;
    STA.W $0BAA                          ;84A072;
    STZ.W $0BAB                          ;84A075;
    STA.W $0C16                          ;84A078;
    RTL                                  ;84A07B;

CODE_84A07C:
    PHP                                  ;84A07C;
    REP #$20                             ;84A07D;
    LDA.B $05                            ;84A07F;
    STA.W $0000                          ;84A081;
    LDA.B $08                            ;84A084;
    STA.W $0002                          ;84A086;
    LDA.W $0BAD                          ;84A089;
    STA.W $0004                          ;84A08C;
    LDA.W $0BB0                          ;84A08F;
    STA.W $0006                          ;84A092;
    BRA CODE_84A09A                      ;84A095;

CODE_84A097:
    PHP                                  ;84A097;
    REP #$20                             ;84A098;

CODE_84A09A:
    SEP #$10                             ;84A09A;
    PHD                                  ;84A09C;
    LDA.W #$0000                         ;84A09D;
    TCD                                  ;84A0A0;
    LDX.B #$00                           ;84A0A1;
    LDA.B $04                            ;84A0A3;
    SEC                                  ;84A0A5;
    SBC.B $00                            ;84A0A6;
    STA.B $08                            ;84A0A8;
    BPL CODE_84A0B8                      ;84A0AA;
    EOR.W #$FFFF                         ;84A0AC;
    INC A                                ;84A0AF;
    STA.B $08                            ;84A0B0;
    TXA                                  ;84A0B2;
    CLC                                  ;84A0B3;
    ADC.W #$0020                         ;84A0B4;
    TAX                                  ;84A0B7;

CODE_84A0B8:
    LDA.B $02                            ;84A0B8;
    SEC                                  ;84A0BA;
    SBC.B $06                            ;84A0BB;
    STA.B $0A                            ;84A0BD;
    BPL CODE_84A0CD                      ;84A0BF;
    EOR.W #$FFFF                         ;84A0C1;
    INC A                                ;84A0C4;
    STA.B $0A                            ;84A0C5;
    TXA                                  ;84A0C7;
    CLC                                  ;84A0C8;
    ADC.W #$0010                         ;84A0C9;
    TAX                                  ;84A0CC;

CODE_84A0CD:
    LDA.B $0A                            ;84A0CD;
    CMP.B $08                            ;84A0CF;
    BCS CODE_84A0E1                      ;84A0D1;
    PHA                                  ;84A0D3;
    LDA.B $08                            ;84A0D4;
    STA.B $0A                            ;84A0D6;
    PLA                                  ;84A0D8;
    STA.B $08                            ;84A0D9;
    TXA                                  ;84A0DB;
    CLC                                  ;84A0DC;
    ADC.W #$0008                         ;84A0DD;
    TAX                                  ;84A0E0;

CODE_84A0E1:
    LDA.B $08                            ;84A0E1;
    ASL A                                ;84A0E3;
    ASL A                                ;84A0E4;
    ASL A                                ;84A0E5;
    STA.B $08                            ;84A0E6;
    LDA.B $0A                            ;84A0E8;
    ASL A                                ;84A0EA;
    STA.B $0C                            ;84A0EB;
    LDY.B #$04                           ;84A0ED;

CODE_84A0EF:
    LDA.B $0A                            ;84A0EF;
    CMP.B $08                            ;84A0F1;
    BCS CODE_84A100                      ;84A0F3;
    LDA.B $0A                            ;84A0F5;
    CLC                                  ;84A0F7;
    ADC.B $0C                            ;84A0F8;
    STA.B $0A                            ;84A0FA;
    INX                                  ;84A0FC;
    DEY                                  ;84A0FD;
    BNE CODE_84A0EF                      ;84A0FE;

CODE_84A100:
    PLD                                  ;84A100;
    SEP #$20                             ;84A101;
    LDA.W DATA8_86BB5A,X                 ;84A103;
    PLP                                  ;84A106;
    RTL                                  ;84A107;
    REP #$11                             ;84A108;
    LDA.W $0BCF                          ;84A10A;
    BEQ CODE_84A164                      ;84A10D;
    LDX.W #$0BA8                         ;84A10F;
    JSL.L CODE_849C0E                    ;84A112;
    BCC CODE_84A164                      ;84A116;
    PHD                                  ;84A118;
    LDA.B #$0B                           ;84A119;
    XBA                                  ;84A11B;
    LDA.B #$A8                           ;84A11C;
    TCD                                  ;84A11E;
    STZ.W $0008                          ;84A11F;
    LDA.W $0006                          ;84A122;
    CMP.W $0004                          ;84A125;
    BPL CODE_84A14B                      ;84A128;
    LDA.B #$08                           ;84A12A;
    LDX.W $0002                          ;84A12C;
    BPL CODE_84A13B                      ;84A12F;
    INC.W $0002                          ;84A131;
    BNE CODE_84A139                      ;84A134;
    INC.W $0003                          ;84A136;

CODE_84A139:
    LDA.B #$04                           ;84A139;

CODE_84A13B:
    TSB.B $2C                            ;84A13B;
    TSB.W $0008                          ;84A13D;
    REP #$21                             ;84A140;
    LDA.B $08                            ;84A142;
    ADC.W $0002                          ;84A144;
    STA.B $08                            ;84A147;
    BRA CODE_84A162                      ;84A149;

CODE_84A14B:
    LDA.B #$02                           ;84A14B;
    LDX.W $0000                          ;84A14D;
    BPL CODE_84A154                      ;84A150;
    LDA.B #$01                           ;84A152;

CODE_84A154:
    TSB.B $2C                            ;84A154;
    TSB.W $0008                          ;84A156;
    REP #$21                             ;84A159;
    LDA.B $05                            ;84A15B;
    ADC.W $0000                          ;84A15D;
    STA.B $05                            ;84A160;

CODE_84A162:
    PLD                                  ;84A162;
    SEC                                  ;84A163;

CODE_84A164:
    SEP #$30                             ;84A164;
    RTL                                  ;84A166;
    LDY.B $20                            ;84A167;
    PHY                                  ;84A169;
    STX.B $20                            ;84A16A;
    LDX.B #$A8                           ;84A16C;
    PHD                                  ;84A16E;
    JSL.L CODE_849C0E                    ;84A16F;
    BCC CODE_84A181                      ;84A173;
    LDA.B #$80                           ;84A175;
    LDX.W $0000                          ;84A177;
    BMI CODE_84A17E                      ;84A17A;
    ORA.B #$40                           ;84A17C;

CODE_84A17E:
    TSB.W $0BD4                          ;84A17E;

CODE_84A181:
    PLY                                  ;84A181;
    STY.B $20                            ;84A182;
    SEP #$10                             ;84A184;
    RTL                                  ;84A186;

CODE_84A187:
    REP #$30                             ;84A187;
    LDX.W #$0E68                         ;84A189;

CODE_84A18C:
    STZ.W $0000,X                        ;84A18C;
    STZ.W $0002,X                        ;84A18F;
    STZ.W $0027,X                        ;84A192;
    STZ.W $000E,X                        ;84A195;
    TXA                                  ;84A198;
    CLC                                  ;84A199;
    ADC.W #$0040                         ;84A19A;
    TAX                                  ;84A19D;
    CMP.W #$1228                         ;84A19E;
    BCC CODE_84A18C                      ;84A1A1;
    SEP #$30                             ;84A1A3;
    RTL                                  ;84A1A5;

CODE_84A1A6:
    REP #$30                             ;84A1A6;
    LDX.W #$0E68                         ;84A1A8;

CODE_84A1AB:
    LDA.W $000A,X                        ;84A1AB;
    AND.W #$00FF                         ;84A1AE;
    CMP.W #$0048                         ;84A1B1;
    BEQ CODE_84A1C2                      ;84A1B4;
    STZ.W $0000,X                        ;84A1B6;
    STZ.W $0002,X                        ;84A1B9;
    STZ.W $0027,X                        ;84A1BC;
    STZ.W $000E,X                        ;84A1BF;

CODE_84A1C2:
    TXA                                  ;84A1C2;
    CLC                                  ;84A1C3;
    ADC.W #$0040                         ;84A1C4;
    TAX                                  ;84A1C7;
    CMP.W #$1228                         ;84A1C8;
    BCC CODE_84A1AB                      ;84A1CB;
    SEP #$30                             ;84A1CD;
    RTL                                  ;84A1CF;

CODE_84A1D0:
    REP #$30                             ;84A1D0;
    LDY.W #$0000                         ;84A1D2;
    LDX.W #$0E68                         ;84A1D5;

CODE_84A1D8:
    LDA.W $0000,X                        ;84A1D8;
    BEQ CODE_84A1F7                      ;84A1DB;
    SEP #$20                             ;84A1DD;
    LDA.W $000A,X                        ;84A1DF;
    CMP.B $0A                            ;84A1E2;
    REP #$20                             ;84A1E4;
    BNE CODE_84A1F7                      ;84A1E6;
    TXA                                  ;84A1E8;
    STA.W $0000,Y                        ;84A1E9;
    TDC                                  ;84A1EC;
    STA.W $002C                          ;84A1ED;
    CPX.W $002C                          ;84A1F0;
    BEQ CODE_84A1F7                      ;84A1F3;
    INY                                  ;84A1F5;
    INY                                  ;84A1F6;

CODE_84A1F7:
    TXA                                  ;84A1F7;
    CLC                                  ;84A1F8;
    ADC.W #$0040                         ;84A1F9;
    TAX                                  ;84A1FC;
    CMP.W #$1228                         ;84A1FD;
    BCC CODE_84A1D8                      ;84A200;
    SEP #$30                             ;84A202;
    RTL                                  ;84A204;

CODE_84A205:
    REP #$30                             ;84A205;
    LDY.W #$0000                         ;84A207;
    LDX.W #$1D08                         ;84A20A;

CODE_84A20D:
    LDA.W $0000,X                        ;84A20D;
    BEQ CODE_84A22C                      ;84A210;
    SEP #$20                             ;84A212;
    LDA.W $000A,X                        ;84A214;
    CMP.B $0A                            ;84A217;
    REP #$20                             ;84A219;
    BNE CODE_84A22C                      ;84A21B;
    TXA                                  ;84A21D;
    STA.W $0000,Y                        ;84A21E;
    TDC                                  ;84A221;
    STA.W $002C                          ;84A222;
    CPX.W $002C                          ;84A225;
    BEQ CODE_84A22C                      ;84A228;
    INY                                  ;84A22A;
    INY                                  ;84A22B;

CODE_84A22C:
    TXA                                  ;84A22C;
    CLC                                  ;84A22D;
    ADC.W #$0010                         ;84A22E;
    TAX                                  ;84A231;
    CMP.W #$1E08                         ;84A232;
    BCC CODE_84A20D                      ;84A235;
    SEP #$30                             ;84A237;
    RTL                                  ;84A239;

CODE_84A23A:
    REP #$30                             ;84A23A;
    LDY.W #$0000                         ;84A23C;
    LDX.W #$1928                         ;84A23F;

CODE_84A242:
    LDA.W $0000,X                        ;84A242;
    BEQ CODE_84A261                      ;84A245;
    SEP #$20                             ;84A247;
    LDA.W $000A,X                        ;84A249;
    CMP.B $0A                            ;84A24C;
    REP #$20                             ;84A24E;
    BNE CODE_84A261                      ;84A250;
    TXA                                  ;84A252;
    STA.W $0000,Y                        ;84A253;
    TDC                                  ;84A256;
    STA.W $002C                          ;84A257;
    CPX.W $002C                          ;84A25A;
    BEQ CODE_84A261                      ;84A25D;
    INY                                  ;84A25F;
    INY                                  ;84A260;

CODE_84A261:
    TXA                                  ;84A261;
    CLC                                  ;84A262;
    ADC.W #$0020                         ;84A263;
    TAX                                  ;84A266;
    CMP.W #$1D08                         ;84A267;
    BCC CODE_84A242                      ;84A26A;
    SEP #$30                             ;84A26C;
    RTL                                  ;84A26E;

CODE_84A26F:
    REP #$30                             ;84A26F;
    LDX.W #$1628                         ;84A271;

CODE_84A274:
    STZ.W $0000,X                        ;84A274;
    STZ.W $0002,X                        ;84A277;
    STZ.W $000E,X                        ;84A27A;
    TXA                                  ;84A27D;
    CLC                                  ;84A27E;
    ADC.W #$0030                         ;84A27F;
    TAX                                  ;84A282;
    CMP.W #$1928                         ;84A283;
    BCC CODE_84A274                      ;84A286;
    SEP #$30                             ;84A288;
    RTL                                  ;84A28A;

CODE_84A28B:
    REP #$30                             ;84A28B;
    LDX.W #$1428                         ;84A28D;

CODE_84A290:
    STZ.W $0000,X                        ;84A290;
    STZ.W $0002,X                        ;84A293;
    STZ.W $000E,X                        ;84A296;
    TXA                                  ;84A299;
    CLC                                  ;84A29A;
    ADC.W #$0040                         ;84A29B;
    TAX                                  ;84A29E;
    CMP.W #$1628                         ;84A29F;
    BCC CODE_84A290                      ;84A2A2;
    SEP #$30                             ;84A2A4;
    RTL                                  ;84A2A6;

CODE_84A2A7:
    REP #$30                             ;84A2A7;
    LDX.W #$1228                         ;84A2A9;

CODE_84A2AC:
    LDA.W $000A,X                        ;84A2AC;
    AND.W #$00FF                         ;84A2AF;
    CMP.W #$001B                         ;84A2B2;
    BEQ CODE_84A2C0                      ;84A2B5;
    STZ.W $0000,X                        ;84A2B7;
    STZ.W $0002,X                        ;84A2BA;
    STZ.W $000E,X                        ;84A2BD;

CODE_84A2C0:
    TXA                                  ;84A2C0;
    CLC                                  ;84A2C1;
    ADC.W #$0040                         ;84A2C2;
    TAX                                  ;84A2C5;
    CMP.W #$1428                         ;84A2C6;
    BCC CODE_84A2AC                      ;84A2C9;
    LDX.W #$0C98                         ;84A2CB;

CODE_84A2CE:
    LDA.W $000A,X                        ;84A2CE;
    AND.W #$00FF                         ;84A2D1;
    CMP.W #$0001                         ;84A2D4;
    BEQ CODE_84A2DF                      ;84A2D7;
    STZ.W $0000,X                        ;84A2D9;
    STZ.W $0002,X                        ;84A2DC;

CODE_84A2DF:
    TXA                                  ;84A2DF;
    CLC                                  ;84A2E0;
    ADC.W #$0020                         ;84A2E1;
    TAX                                  ;84A2E4;
    CMP.W #$0E18                         ;84A2E5;
    BCC CODE_84A2CE                      ;84A2E8;
    SEP #$30                             ;84A2EA;
    LDA.W $0BDB                          ;84A2EC;
    CMP.B #$06                           ;84A2EF;
    BNE CODE_84A2FB                      ;84A2F1;
    LDX.B #$30                           ;84A2F3;
    LDY.B #$46                           ;84A2F5;
    JSL.L CODE_828000                    ;84A2F7;

CODE_84A2FB:
    STZ.W $0C0B                          ;84A2FB;
    STZ.W $0BDD                          ;84A2FE;
    STZ.W $0C25                          ;84A301;
    STZ.W $0C35                          ;84A304;
    STZ.W $0C30                          ;84A307;
    STZ.W $0C31                          ;84A30A;
    STZ.W $1F31                          ;84A30D;
    RTL                                  ;84A310;

CODE_84A311:
    PHP                                  ;84A311;
    SEP #$30                             ;84A312;
    LDX.B #$03                           ;84A314;
    LDY.B #$01                           ;84A316;
    BRA CODE_84A31D                      ;84A318;

CODE_84A31A:
    PHP                                  ;84A31A;
    SEP #$30                             ;84A31B;

CODE_84A31D:
    STA.W $1E79                          ;84A31D;
    STX.W $1E82                          ;84A320;
    STY.W $1E7E                          ;84A323;
    STY.W $1E80                          ;84A326;
    STZ.W $1E84                          ;84A329;
    LDA.B #$01                           ;84A32C;
    TSB.W $1E78                          ;84A32E;
    PLP                                  ;84A331;
    RTL                                  ;84A332;

CODE_84A333:
    PHP                                  ;84A333;
    SEP #$30                             ;84A334;
    LDX.B #$03                           ;84A336;
    LDY.B #$01                           ;84A338;
    BRA CODE_84A33F                      ;84A33A;

CODE_84A33C:
    PHP                                  ;84A33C;
    SEP #$30                             ;84A33D;

CODE_84A33F:
    STA.W $1E7A                          ;84A33F;
    STX.W $1E83                          ;84A342;
    STY.W $1E7F                          ;84A345;
    STY.W $1E81                          ;84A348;
    STZ.W $1E85                          ;84A34B;
    LDA.B #$02                           ;84A34E;
    TSB.W $1E78                          ;84A350;
    PLP                                  ;84A353;
    RTL                                  ;84A354;

CODE_84A355:
    REP #$10                             ;84A355;
    STA.W $0000                          ;84A357;
    JSL.L CODE_8282B9                    ;84A35A;
    BNE CODE_84A37C                      ;84A35E;
    INC.W $0000,X                        ;84A360;
    LDA.B #$01                           ;84A363;
    STA.W $000A,X                        ;84A365;
    LDA.W $0000                          ;84A368;
    STA.W $000B,X                        ;84A36B;
    REP #$20                             ;84A36E;
    LDA.B $05                            ;84A370;
    STA.W $0005,X                        ;84A372;
    LDA.B $08                            ;84A375;
    STA.W $0008,X                        ;84A377;
    SEP #$20                             ;84A37A;

CODE_84A37C:
    SEP #$10                             ;84A37C;
    RTL                                  ;84A37E;

CODE_84A37F:
    ASL A                                ;84A37F;
    ASL A                                ;84A380;
    ASL A                                ;84A381;
    DEC A                                ;84A382;
    TAX                                  ;84A383;
    JSL.L CODE_849086                    ;84A384;

CODE_84A388:
    INX                                  ;84A388;
    SEC                                  ;84A389;
    SBC.W DATA8_86BB9F,X                 ;84A38A;
    BCS CODE_84A388                      ;84A38D;
    TXA                                  ;84A38F;
    AND.B #$07                           ;84A390;
    ASL A                                ;84A392;
    TAX                                  ;84A393;
    JMP.W (PTR16_84A397,X)               ;84A394;

PTR16_84A397:
    dw CODE_84A3BF                       ;84A397;
    dw CODE_84A3B4                       ;84A399;
    dw CODE_84A3B0                       ;84A39B;
    dw CODE_84A3AB                       ;84A39D;
    dw CODE_84A3A7                       ;84A39F;
    dw CODE_84A3B9                       ;84A3A1;
    dw CODE_84A3BC                       ;84A3A3;
    dw CODE_84A3BF                       ;84A3A5;

CODE_84A3A7:
    LDA.B #$00                           ;84A3A7;
    BRA CODE_84A3AD                      ;84A3A9;

CODE_84A3AB:
    LDA.B #$01                           ;84A3AB;

CODE_84A3AD:
    JMP.W CODE_84A355                    ;84A3AD;

CODE_84A3B0:
    LDA.B #$00                           ;84A3B0;
    BRA CODE_84A3B6                      ;84A3B2;

CODE_84A3B4:
    LDA.B #$02                           ;84A3B4;

CODE_84A3B6:
    JMP.W CODE_84A3CD                    ;84A3B6;

CODE_84A3B9:
    JMP.W CODE_84A3F7                    ;84A3B9;

CODE_84A3BC:
    JMP.W CODE_84A423                    ;84A3BC;

CODE_84A3BF:
    LDA.L CODE_84A475                    ;84A3BF;
    CMP.L CODE_84A3C7                    ;84A3C3;

CODE_84A3C7:
    BEQ CODE_84A3CC                      ;84A3C7;
    INC.W $1F9D                          ;84A3C9;

CODE_84A3CC:
    RTL                                  ;84A3CC;

CODE_84A3CD:
    REP #$10                             ;84A3CD;
    STA.W $0000                          ;84A3CF;
    JSL.L CODE_8282B9                    ;84A3D2;
    BNE CODE_84A3F4                      ;84A3D6;
    INC.W $0000,X                        ;84A3D8;
    LDA.B #$02                           ;84A3DB;
    STA.W $000A,X                        ;84A3DD;
    LDA.W $0000                          ;84A3E0;
    STA.W $000B,X                        ;84A3E3;
    REP #$20                             ;84A3E6;
    LDA.B $05                            ;84A3E8;
    STA.W $0005,X                        ;84A3EA;
    LDA.B $08                            ;84A3ED;
    STA.W $0008,X                        ;84A3EF;
    SEP #$20                             ;84A3F2;

CODE_84A3F4:
    SEP #$10                             ;84A3F4;
    RTL                                  ;84A3F6;

CODE_84A3F7:
    JSL.L CODE_8282B9                    ;84A3F7;
    BNE CODE_84A420                      ;84A3FB;
    INC.W $0000,X                        ;84A3FD;
    LDA.B #$04                           ;84A400;
    STA.W $000A,X                        ;84A402;
    REP #$20                             ;84A405;
    LDA.B $05                            ;84A407;
    STA.W $0005,X                        ;84A409;
    LDA.B $08                            ;84A40C;
    STA.W $0008,X                        ;84A40E;
    SEP #$20                             ;84A411;
    LDA.L CODE_00804E                    ;84A413;
    CMP.L CODE_40804E                    ;84A417;
    BEQ CODE_84A420                      ;84A41B;
    STZ.W $1F9B                          ;84A41D;

CODE_84A420:
    SEP #$10                             ;84A420;
    RTL                                  ;84A422;

CODE_84A423:
    JSL.L CODE_8282B9                    ;84A423;
    BNE CODE_84A442                      ;84A427;
    INC.W $0000,X                        ;84A429;
    LDA.B #$05                           ;84A42C;
    STA.W $000A,X                        ;84A42E;
    STZ.W $000B,X                        ;84A431;
    REP #$20                             ;84A434;
    LDA.B $05                            ;84A436;
    STA.W $0005,X                        ;84A438;
    LDA.B $08                            ;84A43B;
    STA.W $0008,X                        ;84A43D;
    SEP #$20                             ;84A440;

CODE_84A442:
    SEP #$10                             ;84A442;
    RTL                                  ;84A444;

CODE_84A445:
    JSL.L CODE_828321                    ;84A445;
    BNE CODE_84A45F                      ;84A449;
    INC.W $0000,X                        ;84A44B;
    LDA.B #$4A                           ;84A44E;
    STA.W $000A,X                        ;84A450;
    REP #$20                             ;84A453;
    LDA.B $05                            ;84A455;
    STA.W $0005,X                        ;84A457;
    LDA.B $08                            ;84A45A;
    STA.W $0008,X                        ;84A45C;

CODE_84A45F:
    SEP #$30                             ;84A45F;
    RTL                                  ;84A461;

CODE_84A462:
    PHP                                  ;84A462;

CODE_84A463:
    REP #$10                             ;84A463;
    SEP #$20                             ;84A465;
    JSL.L CODE_8282D3                    ;84A467;
    BNE CODE_84A4A9                      ;84A46B;
    STA.L $701000                        ;84A46D;
    CMP.L $701000                        ;84A471;

CODE_84A475:
    BEQ CODE_84A481                      ;84A475;
    DEC.W $1F9D                          ;84A477;
    BPL CODE_84A484                      ;84A47A;
    STZ.W $1F9D                          ;84A47C;
    BRA CODE_84A484                      ;84A47F;

CODE_84A481:
    INC.W $1F9D                          ;84A481;

CODE_84A484:
    INC.W $0000,X                        ;84A484;
    LDA.B #$02                           ;84A487;
    STA.W $000A,X                        ;84A489;
    LDA.W $0004                          ;84A48C;
    STA.W $0016,X                        ;84A48F;
    LDA.W $0005                          ;84A492;
    STA.W $000B,X                        ;84A495;
    STZ.W $0018,X                        ;84A498;
    REP #$20                             ;84A49B;
    LDA.W $0000                          ;84A49D;
    STA.W $0005,X                        ;84A4A0;
    LDA.W $0002                          ;84A4A3;
    STA.W $0008,X                        ;84A4A6;

CODE_84A4A9:
    PLP                                  ;84A4A9;
    RTL                                  ;84A4AA;

CODE_84A4AB:
    PHP                                  ;84A4AB;
    LDA.B #$23                           ;84A4AC;
    JSL.L CODE_8088A2                    ;84A4AE;
    REP #$20                             ;84A4B2;
    LDA.B $05                            ;84A4B4;
    STA.W $0000                          ;84A4B6;
    LDA.B $08                            ;84A4B9;
    STA.W $0002                          ;84A4BB;
    LDA.W #$0508                         ;84A4BE;
    STA.W $0004                          ;84A4C1;
    BRA CODE_84A463                      ;84A4C4;

CODE_84A4C6:
    PHP                                  ;84A4C6;
    SEP #$30                             ;84A4C7;
    LDA.W $0B9C                          ;84A4C9;
    AND.W $0008                          ;84A4CC;
    BNE CODE_84A518                      ;84A4CF;
    JSL.L CODE_849086                    ;84A4D1;
    AND.B #$03                           ;84A4D5;
    CLC                                  ;84A4D7;
    ADC.B #$93                           ;84A4D8;
    JSL.L CODE_8088A2                    ;84A4DA;
    REP #$20                             ;84A4DE;
    JSL.L CODE_849086                    ;84A4E0;
    AND.W $0004                          ;84A4E4;
    STA.W $0004                          ;84A4E7;
    LDA.B $05                            ;84A4EA;
    CLC                                  ;84A4EC;
    ADC.W $0000                          ;84A4ED;
    CLC                                  ;84A4F0;
    ADC.W $0004                          ;84A4F1;
    STA.W $0000                          ;84A4F4;
    JSL.L CODE_849086                    ;84A4F7;
    AND.W $0006                          ;84A4FB;
    STA.W $0006                          ;84A4FE;
    LDA.B $08                            ;84A501;
    CLC                                  ;84A503;
    ADC.W $0002                          ;84A504;
    CLC                                  ;84A507;
    ADC.W $0006                          ;84A508;
    STA.W $0002                          ;84A50B;
    LDA.W #$0508                         ;84A50E;
    STA.W $0004                          ;84A511;
    JSL.L CODE_84A462                    ;84A514;

CODE_84A518:
    PLP                                  ;84A518;
    RTL                                  ;84A519;

CODE_84A51A:
    PHP                                  ;84A51A;
    SEP #$20                             ;84A51B;
    REP #$10                             ;84A51D;
    JSL.L CODE_8282D3                    ;84A51F;
    BNE CODE_84A542                      ;84A523;
    INC.W $0000,X                        ;84A525;
    LDA.B #$09                           ;84A528;
    STA.W $000A,X                        ;84A52A;
    LDA.B #$01                           ;84A52D;
    STA.W $000B,X                        ;84A52F;
    REP #$20                             ;84A532;
    LDA.B $33                            ;84A534;
    STA.W $0005,X                        ;84A536;
    LDA.B $35                            ;84A539;
    STA.W $0008,X                        ;84A53B;
    TDC                                  ;84A53E;
    STA.W $001A,X                        ;84A53F;

CODE_84A542:
    PLP                                  ;84A542;
    RTL                                  ;84A543;

CODE_84A544:
    PHP                                  ;84A544;
    SEP #$20                             ;84A545;
    JSL.L CODE_849C0E                    ;84A547;
    STX.W $0010                          ;84A54B;
    TXY                                  ;84A54E;
    LDX.W $0020,Y                        ;84A54F;
    TXY                                  ;84A552;
    LDX.B $20                            ;84A553;
    SEP #$20                             ;84A555;
    LDA.W $0002,Y                        ;84A557;
    CMP.W $0004                          ;84A55A;
    BCC CODE_84A5CE                      ;84A55D;
    LSR.W $0005                          ;84A55F;
    ROR.W $0004                          ;84A562;
    LDA.W $0001                          ;84A565;
    BMI CODE_84A59B                      ;84A568;
    LDA.W $0000,X                        ;84A56A;
    BIT.B $11                            ;84A56D;
    BVC CODE_84A574                      ;84A56F;
    EOR.B #$FF                           ;84A571;
    INC A                                ;84A573;

CODE_84A574:
    CMP.B #$00                           ;84A574;
    REP #$20                             ;84A576;
    BMI CODE_84A57F                      ;84A578;
    AND.W #$00FF                         ;84A57A;
    BRA CODE_84A582                      ;84A57D;

CODE_84A57F:
    ORA.W #$FF00                         ;84A57F;

CODE_84A582:
    CLC                                  ;84A582;
    ADC.B $05                            ;84A583;
    STA.W $0008                          ;84A585;
    LDA.W $0002,X                        ;84A588;
    AND.W #$00FF                         ;84A58B;
    CLC                                  ;84A58E;
    ADC.W $0008                          ;84A58F;
    SEC                                  ;84A592;
    SBC.W $0004                          ;84A593;
    STA.W $0000                          ;84A596;
    BRA CODE_84A5DB                      ;84A599;

CODE_84A59B:
    LDA.W $0000,X                        ;84A59B;
    BIT.B $11                            ;84A59E;
    BVC CODE_84A5A5                      ;84A5A0;
    EOR.B #$FF                           ;84A5A2;
    INC A                                ;84A5A4;

CODE_84A5A5:
    CMP.B #$00                           ;84A5A5;
    REP #$20                             ;84A5A7;
    BMI CODE_84A5B0                      ;84A5A9;
    AND.W #$00FF                         ;84A5AB;
    BRA CODE_84A5B3                      ;84A5AE;

CODE_84A5B0:
    ORA.W #$FF00                         ;84A5B0;

CODE_84A5B3:
    CLC                                  ;84A5B3;
    ADC.B $05                            ;84A5B4;
    PHA                                  ;84A5B6;
    LDA.W $0002,X                        ;84A5B7;
    AND.W #$00FF                         ;84A5BA;
    STA.W $0008                          ;84A5BD;
    PLA                                  ;84A5C0;
    SEC                                  ;84A5C1;
    SBC.W $0008                          ;84A5C2;
    CLC                                  ;84A5C5;
    ADC.W $0004                          ;84A5C6;
    STA.W $0000                          ;84A5C9;
    BRA CODE_84A5DB                      ;84A5CC;

CODE_84A5CE:
    REP #$20                             ;84A5CE;
    PHY                                  ;84A5D0;
    LDY.W $0010                          ;84A5D1;
    LDA.W $0005,Y                        ;84A5D4;
    STA.W $0000                          ;84A5D7;
    PLY                                  ;84A5DA;

CODE_84A5DB:
    SEP #$20                             ;84A5DB;
    LDA.W $0003,Y                        ;84A5DD;
    CMP.W $0006                          ;84A5E0;
    BCC CODE_84A642                      ;84A5E3;
    LSR.W $0007                          ;84A5E5;
    ROR.W $0006                          ;84A5E8;
    LDA.W $0003                          ;84A5EB;
    BMI CODE_84A618                      ;84A5EE;
    LDA.W $0001,X                        ;84A5F0;
    REP #$20                             ;84A5F3;
    BMI CODE_84A5FC                      ;84A5F5;
    AND.W #$00FF                         ;84A5F7;
    BRA CODE_84A5FF                      ;84A5FA;

CODE_84A5FC:
    ORA.W #$FF00                         ;84A5FC;

CODE_84A5FF:
    CLC                                  ;84A5FF;
    ADC.B $08                            ;84A600;
    STA.W $0008                          ;84A602;
    LDA.W $0003,X                        ;84A605;
    AND.W #$00FF                         ;84A608;
    CLC                                  ;84A60B;
    ADC.W $0008                          ;84A60C;
    SEC                                  ;84A60F;
    SBC.W $0006                          ;84A610;
    STA.W $0002                          ;84A613;
    BRA CODE_84A64D                      ;84A616;

CODE_84A618:
    LDA.W $0001,X                        ;84A618;
    REP #$20                             ;84A61B;
    BMI CODE_84A624                      ;84A61D;
    AND.W #$00FF                         ;84A61F;
    BRA CODE_84A627                      ;84A622;

CODE_84A624:
    ORA.W #$FF00                         ;84A624;

CODE_84A627:
    CLC                                  ;84A627;
    ADC.B $08                            ;84A628;
    PHA                                  ;84A62A;
    LDA.W $0003,X                        ;84A62B;
    AND.W #$00FF                         ;84A62E;
    STA.W $0008                          ;84A631;
    PLA                                  ;84A634;
    SEC                                  ;84A635;
    SBC.W $0008                          ;84A636;
    CLC                                  ;84A639;
    ADC.W $0006                          ;84A63A;
    STA.W $0002                          ;84A63D;
    BRA CODE_84A64D                      ;84A640;

CODE_84A642:
    REP #$20                             ;84A642;
    LDY.W $0010                          ;84A644;
    LDA.W $0008,Y                        ;84A647;
    STA.W $0002                          ;84A64A;

CODE_84A64D:
    PLP                                  ;84A64D;
    RTL                                  ;84A64E;
    PHP                                  ;84A64F;
    REP #$21                             ;84A650;
    LDA.B $12                            ;84A652;
    ADC.W $1E4D                          ;84A654;
    SEC                                  ;84A657;
    SBC.B $05                            ;84A658;
    STA.W $1E8D                          ;84A65A;
    LDA.B $14                            ;84A65D;
    CLC                                  ;84A65F;
    ADC.W $1E50                          ;84A660;
    SEC                                  ;84A663;
    SBC.B $08                            ;84A664;
    STA.W $1E90                          ;84A666;
    SEP #$20                             ;84A669;
    PLP                                  ;84A66B;
    RTL                                  ;84A66C;

CODE_84A66D:
    LDX.B $03                            ;84A66D;
    JMP.W (PTR16_84A672,X)               ;84A66F;

PTR16_84A672:
    dw CODE_84A68C                       ;84A672;
    dw CODE_84A6CB                       ;84A674;
    dw CODE_84A789                       ;84A676;
    dw CODE_84A7C0                       ;84A678;
    dw CODE_84A7F2                       ;84A67A;
    dw CODE_84A7C0                       ;84A67C;
    dw CODE_84A7F2                       ;84A67E;
    dw CODE_84A7C0                       ;84A680;
    dw CODE_84A829                       ;84A682;
    dw CODE_84A917                       ;84A684;
    dw CODE_84A95D                       ;84A686;
    dw CODE_84A9E5                       ;84A688;
    dw CODE_84AA3B                       ;84A68A;

CODE_84A68C:
    INC.B $03                            ;84A68C;
    INC.B $03                            ;84A68E;
    LDA.B #$FF                           ;84A690;
    STA.B $00                            ;84A692;
    LDA.B #$3C                           ;84A694;
    STA.L $7FE000                        ;84A696;
    INC.W $1F13                          ;84A69A;
    INC.W $1F14                          ;84A69D;
    INC.W $1F15                          ;84A6A0;
    INC.W $1F16                          ;84A6A3;
    INC.W $1F17                          ;84A6A6;
    INC.W $1F18                          ;84A6A9;
    INC.W $1F1A                          ;84A6AC;
    INC.W $1F3B                          ;84A6AF;
    INC.W $1F31                          ;84A6B2;
    LDA.W $0BCF                          ;84A6B5;
    AND.B #$7F                           ;84A6B8;
    BEQ CODE_84A6C0                      ;84A6BA;
    JSL.L CODE_849F85                    ;84A6BC;

CODE_84A6C0:
    LDA.B #$F6                           ;84A6C0;
    LDY.B #$03                           ;84A6C2;
    JSL.L CODE_80887F                    ;84A6C4;
    LDA.B #$00                           ;84A6C8;
    RTL                                  ;84A6CA;

CODE_84A6CB:
    LDA.L $7FE000                        ;84A6CB;
    DEC A                                ;84A6CF;
    STA.L $7FE000                        ;84A6D0;
    BEQ CODE_84A6D9                      ;84A6D4;
    LDA.B #$00                           ;84A6D6;
    RTL                                  ;84A6D8;

CODE_84A6D9:
    PHB                                  ;84A6D9;
    REP #$30                             ;84A6DA;
    LDX.W #$0300                         ;84A6DC;
    LDY.W #$E200                         ;84A6DF;
    LDA.W #$01FF                         ;84A6E2;
    MVN $7F,$00                          ;84A6E5;
    PLB                                  ;84A6E8;
    PHD                                  ;84A6E9;
    LDA.W #$0000                         ;84A6EA;
    TCD                                  ;84A6ED;
    LDX.W #$0000                         ;84A6EE;

CODE_84A6F1:
    LDA.W $0300,X                        ;84A6F1;
    AND.W #$001F                         ;84A6F4;
    CLC                                  ;84A6F7;
    ADC.W #$0007                         ;84A6F8;
    CMP.W #$0020                         ;84A6FB;
    BCC CODE_84A703                      ;84A6FE;
    LDA.W #$001F                         ;84A700;

CODE_84A703:
    STA.B $00                            ;84A703;
    LDA.W $0300,X                        ;84A705;
    AND.W #$FFE0                         ;84A708;
    ORA.B $00                            ;84A70B;
    STA.W $0300,X                        ;84A70D;
    INX                                  ;84A710;
    INX                                  ;84A711;
    CPX.W #$0100                         ;84A712;
    BCC CODE_84A6F1                      ;84A715;
    CPX.W #$0200                         ;84A717;
    BCS CODE_84A726                      ;84A71A;
    CPX.W #$0180                         ;84A71C;
    BCS CODE_84A6F1                      ;84A71F;
    LDX.W #$0180                         ;84A721;
    BRA CODE_84A6F1                      ;84A724;

CODE_84A726:
    PLD                                  ;84A726;
    PHB                                  ;84A727;
    LDX.W #$0300                         ;84A728;
    LDY.W #$E400                         ;84A72B;
    LDA.W #$01FF                         ;84A72E;
    MVN $7F,$00                          ;84A731;
    PLB                                  ;84A734;
    SEP #$30                             ;84A735;
    LDA.B #$01                           ;84A737;
    TSB.W $00A1                          ;84A739;
    INC.W $1F49                          ;84A73C;
    STZ.W $1F13                          ;84A73F;
    STZ.W $1F14                          ;84A742;
    STZ.W $1F15                          ;84A745;
    STZ.W $1F16                          ;84A748;
    STZ.W $1F17                          ;84A74B;
    STZ.W $1F18                          ;84A74E;
    LDA.W $0BCF                          ;84A751;
    AND.B #$7F                           ;84A754;
    BEQ CODE_84A76D                      ;84A756;
    JSL.L CODE_849FAD                    ;84A758;
    LDA.W $1F7A                          ;84A75C;
    CMP.B #$0C                           ;84A75F;
    BEQ CODE_84A769                      ;84A761;
    JSL.L CODE_849FE6                    ;84A763;
    BRA CODE_84A76D                      ;84A767;

CODE_84A769:
    JSL.L CODE_84A041                    ;84A769;

CODE_84A76D:
    LDA.B #$78                           ;84A76D;
    STA.L $7FE000                        ;84A76F;
    LDA.B #$1F                           ;84A773;
    STA.L $7FE001                        ;84A775;
    INC.B $03                            ;84A779;
    INC.B $03                            ;84A77B;
    LDA.B #$21                           ;84A77D;
    JSL.L CODE_8088A2                    ;84A77F;
    JSR.W CODE_84AA85                    ;84A783;
    JMP.W CODE_84AA63                    ;84A786;

CODE_84A789:
    LDA.L $7FE000                        ;84A789;
    DEC A                                ;84A78D;
    STA.L $7FE000                        ;84A78E;
    BNE CODE_84A7BA                      ;84A792;
    LDA.B #$FF                           ;84A794;
    STA.W $0300                          ;84A796;
    PHB                                  ;84A799;
    REP #$30                             ;84A79A;
    LDX.W #$0300                         ;84A79C;
    LDY.W #$0301                         ;84A79F;
    LDA.W #$01FE                         ;84A7A2;
    MVN $00,$00                          ;84A7A5;
    PLB                                  ;84A7A8;
    SEP #$30                             ;84A7A9;
    LDA.B #$02                           ;84A7AB;
    STA.L $7FE000                        ;84A7AD;
    INC.B $03                            ;84A7B1;
    INC.B $03                            ;84A7B3;
    LDA.B #$01                           ;84A7B5;
    TSB.W $00A1                          ;84A7B7;

CODE_84A7BA:
    JSR.W CODE_84AA85                    ;84A7BA;
    JMP.W CODE_84AA63                    ;84A7BD;

CODE_84A7C0:
    LDA.L $7FE000                        ;84A7C0;
    DEC A                                ;84A7C4;
    STA.L $7FE000                        ;84A7C5;
    BNE CODE_84A7EC                      ;84A7C9;
    PHB                                  ;84A7CB;
    REP #$30                             ;84A7CC;
    LDX.W #$E400                         ;84A7CE;
    LDY.W #$0300                         ;84A7D1;
    LDA.W #$01FF                         ;84A7D4;
    MVN $00,$7F                          ;84A7D7;
    PLB                                  ;84A7DA;
    SEP #$30                             ;84A7DB;
    LDA.B #$02                           ;84A7DD;
    STA.L $7FE000                        ;84A7DF;
    INC.B $03                            ;84A7E3;
    INC.B $03                            ;84A7E5;
    LDA.B #$01                           ;84A7E7;
    TSB.W $00A1                          ;84A7E9;

CODE_84A7EC:
    JSR.W CODE_84AA85                    ;84A7EC;
    JMP.W CODE_84AA63                    ;84A7EF;

CODE_84A7F2:
    LDA.L $7FE000                        ;84A7F2;
    DEC A                                ;84A7F6;
    STA.L $7FE000                        ;84A7F7;
    BNE CODE_84A823                      ;84A7FB;
    PHB                                  ;84A7FD;
    LDA.B #$FF                           ;84A7FE;
    STA.W $0300                          ;84A800;
    REP #$30                             ;84A803;
    LDX.W #$0300                         ;84A805;
    LDY.W #$0301                         ;84A808;
    LDA.W #$01FE                         ;84A80B;
    MVN $00,$00                          ;84A80E;
    SEP #$30                             ;84A811;
    PLB                                  ;84A813;
    LDA.B #$02                           ;84A814;
    STA.L $7FE000                        ;84A816;
    INC.B $03                            ;84A81A;
    INC.B $03                            ;84A81C;
    LDA.B #$01                           ;84A81E;
    TSB.W $00A1                          ;84A820;

CODE_84A823:
    JSR.W CODE_84AA85                    ;84A823;
    JMP.W CODE_84AA63                    ;84A826;

CODE_84A829:
    LDA.L $7FE000                        ;84A829;
    DEC A                                ;84A82D;
    STA.L $7FE000                        ;84A82E;
    BEQ CODE_84A83C                      ;84A832;
    LDA.B #$00                           ;84A834;
    JSR.W CODE_84AA85                    ;84A836;
    JMP.W CODE_84AA63                    ;84A839;

CODE_84A83C:
    LDA.B #$02                           ;84A83C;
    STA.L $7FE000                        ;84A83E;
    LDA.L $7FE001                        ;84A842;
    DEC A                                ;84A846;
    STA.L $7FE001                        ;84A847;
    REP #$30                             ;84A84B;
    PHD                                  ;84A84D;
    LDA.W #$0000                         ;84A84E;
    TCD                                  ;84A851;
    LDX.W #$0000                         ;84A852;

CODE_84A855:
    LDA.W $0300,X                        ;84A855;
    TAY                                  ;84A858;
    AND.W #$7C00                         ;84A859;
    STA.B $00                            ;84A85C;
    TYA                                  ;84A85E;
    AND.W #$03E0                         ;84A85F;
    STA.B $02                            ;84A862;
    TYA                                  ;84A864;
    AND.W #$001F                         ;84A865;
    STA.B $04                            ;84A868;
    LDA.B $00                            ;84A86A;
    CLC                                  ;84A86C;
    ADC.W #$0400                         ;84A86D;
    CMP.W #$8000                         ;84A870;
    BCC CODE_84A878                      ;84A873;
    LDA.W #$7C00                         ;84A875;

CODE_84A878:
    STA.B $06                            ;84A878;
    LDA.B $02                            ;84A87A;
    CLC                                  ;84A87C;
    ADC.W #$0020                         ;84A87D;
    CMP.W #$03E0                         ;84A880;
    BCC CODE_84A888                      ;84A883;
    LDA.W #$03E0                         ;84A885;

CODE_84A888:
    TSB.B $06                            ;84A888;
    LDA.B $04                            ;84A88A;
    INC A                                ;84A88C;
    CMP.W #$001F                         ;84A88D;
    BCC CODE_84A895                      ;84A890;
    LDA.W #$001F                         ;84A892;

CODE_84A895:
    ORA.B $06                            ;84A895;
    STA.W $0300,X                        ;84A897;
    INX                                  ;84A89A;
    INX                                  ;84A89B;
    CPX.W #$0100                         ;84A89C;
    BCC CODE_84A855                      ;84A89F;
    CPX.W #$0200                         ;84A8A1;
    BCS CODE_84A8B0                      ;84A8A4;
    CPX.W #$01A0                         ;84A8A6;
    BCS CODE_84A855                      ;84A8A9;
    LDX.W #$01A0                         ;84A8AB;
    BRA CODE_84A855                      ;84A8AE;

CODE_84A8B0:
    LDX.W #$0000                         ;84A8B0;

CODE_84A8B3:
    LDA.W $0480,X                        ;84A8B3;
    TAY                                  ;84A8B6;
    AND.W #$7C00                         ;84A8B7;
    STA.B $00                            ;84A8BA;
    TYA                                  ;84A8BC;
    AND.W #$03E0                         ;84A8BD;
    STA.B $02                            ;84A8C0;
    TYA                                  ;84A8C2;
    AND.W #$001F                         ;84A8C3;
    STA.B $04                            ;84A8C6;
    LDA.B $00                            ;84A8C8;
    SEC                                  ;84A8CA;
    SBC.W #$0400                         ;84A8CB;
    BPL CODE_84A8D3                      ;84A8CE;
    LDA.W #$0000                         ;84A8D0;

CODE_84A8D3:
    STA.B $06                            ;84A8D3;
    LDA.B $02                            ;84A8D5;
    SEC                                  ;84A8D7;
    SBC.W #$0020                         ;84A8D8;
    BPL CODE_84A8E0                      ;84A8DB;
    LDA.W #$0000                         ;84A8DD;

CODE_84A8E0:
    TSB.B $06                            ;84A8E0;
    LDA.B $04                            ;84A8E2;
    DEC A                                ;84A8E4;
    BPL CODE_84A8EA                      ;84A8E5;
    LDA.W #$0000                         ;84A8E7;

CODE_84A8EA:
    ORA.B $06                            ;84A8EA;
    STA.W $0480,X                        ;84A8EC;
    INX                                  ;84A8EF;
    INX                                  ;84A8F0;
    CPX.W #$0020                         ;84A8F1;
    BCC CODE_84A8B3                      ;84A8F4;
    PLD                                  ;84A8F6;
    SEP #$30                             ;84A8F7;
    LDA.B #$01                           ;84A8F9;
    STA.W $00A1                          ;84A8FB;
    LDA.L $7FE001                        ;84A8FE;
    BNE CODE_84A914                      ;84A902;
    LDA.B #$5A                           ;84A904;
    STA.L $7FE000                        ;84A906;
    LDA.B #$1F                           ;84A90A;
    STA.L $7FE001                        ;84A90C;
    INC.B $03                            ;84A910;
    INC.B $03                            ;84A912;

CODE_84A914:
    JMP.W CODE_84AA63                    ;84A914;

CODE_84A917:
    LDA.L $7FE000                        ;84A917;
    BEQ CODE_84A925                      ;84A91B;
    DEC A                                ;84A91D;
    STA.L $7FE000                        ;84A91E;
    JMP.W CODE_84AA63                    ;84A922;

CODE_84A925:
    REP #$30                             ;84A925;
    LDX.W #$001E                         ;84A927;

CODE_84A92A:
    LDA.W $0480,X                        ;84A92A;
    CLC                                  ;84A92D;
    ADC.W #$0421                         ;84A92E;
    STA.W $0480,X                        ;84A931;
    DEX                                  ;84A934;
    DEX                                  ;84A935;
    BPL CODE_84A92A                      ;84A936;
    SEP #$30                             ;84A938;
    LDA.B #$01                           ;84A93A;
    STA.W $00A1                          ;84A93C;
    LDA.L $7FE001                        ;84A93F;
    DEC A                                ;84A943;
    STA.L $7FE001                        ;84A944;
    BNE CODE_84A95A                      ;84A948;
    LDA.B #$28                           ;84A94A;
    STA.L $7FE000                        ;84A94C;
    LDA.B #$1F                           ;84A950;
    STA.L $7FE001                        ;84A952;
    INC.B $03                            ;84A956;
    INC.B $03                            ;84A958;

CODE_84A95A:
    JMP.W CODE_84AA63                    ;84A95A;

CODE_84A95D:
    LDA.L $7FE000                        ;84A95D;
    DEC A                                ;84A961;
    STA.L $7FE000                        ;84A962;
    BEQ CODE_84A96B                      ;84A966;
    LDA.B #$00                           ;84A968;
    RTL                                  ;84A96A;

CODE_84A96B:
    LDA.B #$02                           ;84A96B;
    STA.L $7FE000                        ;84A96D;
    REP #$30                             ;84A971;
    PHD                                  ;84A973;
    LDA.W #$0000                         ;84A974;
    TCD                                  ;84A977;
    LDX.W #$0000                         ;84A978;

CODE_84A97B:
    LDA.L $7FE200,X                      ;84A97B;
    TAY                                  ;84A97F;
    AND.W #$7C00                         ;84A980;
    STA.B $00                            ;84A983;
    TYA                                  ;84A985;
    AND.W #$03E0                         ;84A986;
    STA.B $02                            ;84A989;
    TYA                                  ;84A98B;
    AND.W #$001F                         ;84A98C;
    STA.B $04                            ;84A98F;
    LDA.W $0300,X                        ;84A991;
    TAY                                  ;84A994;
    AND.W #$7C00                         ;84A995;
    CMP.B $00                            ;84A998;
    BEQ CODE_84A9A0                      ;84A99A;
    SEC                                  ;84A99C;
    SBC.W #$0400                         ;84A99D;

CODE_84A9A0:
    STA.B $06                            ;84A9A0;
    TYA                                  ;84A9A2;
    AND.W #$03E0                         ;84A9A3;
    CMP.B $02                            ;84A9A6;
    BEQ CODE_84A9AE                      ;84A9A8;
    SEC                                  ;84A9AA;
    SBC.W #$0020                         ;84A9AB;

CODE_84A9AE:
    TSB.B $06                            ;84A9AE;
    TYA                                  ;84A9B0;
    AND.W #$001F                         ;84A9B1;
    CMP.B $04                            ;84A9B4;
    BEQ CODE_84A9B9                      ;84A9B6;
    DEC A                                ;84A9B8;

CODE_84A9B9:
    ORA.B $06                            ;84A9B9;
    STA.W $0300,X                        ;84A9BB;
    INX                                  ;84A9BE;
    INX                                  ;84A9BF;
    CPX.W #$0200                         ;84A9C0;
    BCC CODE_84A97B                      ;84A9C3;
    PLD                                  ;84A9C5;
    SEP #$30                             ;84A9C6;
    LDA.B #$01                           ;84A9C8;
    STA.W $00A1                          ;84A9CA;
    LDA.L $7FE001                        ;84A9CD;
    DEC A                                ;84A9D1;
    STA.L $7FE001                        ;84A9D2;
    BNE CODE_84A9E2                      ;84A9D6;
    INC.B $03                            ;84A9D8;
    INC.B $03                            ;84A9DA;
    LDA.B #$1E                           ;84A9DC;
    STA.L $7FE000                        ;84A9DE;

CODE_84A9E2:
    LDA.B #$00                           ;84A9E2;
    RTL                                  ;84A9E4;

CODE_84A9E5:
    LDA.L $7FE000                        ;84A9E5;
    DEC A                                ;84A9E9;
    STA.L $7FE000                        ;84A9EA;
    BNE CODE_84AA3B                      ;84A9EE;
    LDA.W $0BDB                          ;84A9F0;
    CMP.B #$04                           ;84A9F3;
    BNE CODE_84AA02                      ;84A9F5;
    REP #$10                             ;84A9F7;
    LDY.W #$0104                         ;84A9F9;
    JSL.L CODE_828011                    ;84A9FC;
    SEP #$10                             ;84AA00;

CODE_84AA02:
    INC.B $03                            ;84AA02;
    INC.B $03                            ;84AA04;
    LDA.W $1F7A                          ;84AA06;
    CMP.B #$09                           ;84AA09;
    BCS CODE_84AA3E                      ;84AA0B;
    DEC A                                ;84AA0D;
    ASL A                                ;84AA0E;
    TAX                                  ;84AA0F;
    LDA.B #$40                           ;84AA10;
    ORA.W $1F88,X                        ;84AA12;
    STA.W $1F88,X                        ;84AA15;
    LDA.W $0BCF                          ;84AA18;
    AND.B #$7F                           ;84AA1B;
    BEQ CODE_84AA38                      ;84AA1D;
    STZ.W $1F49                          ;84AA1F;
    DEC.W $1F31                          ;84AA22;
    DEC.W $1F3B                          ;84AA25;
    INC.W $1F23                          ;84AA28;
    REP #$20                             ;84AA2B;
    LDA.W $1E4D                          ;84AA2D;
    STA.W $1E60                          ;84AA30;
    STA.W $1E5E                          ;84AA33;
    SEP #$20                             ;84AA36;

CODE_84AA38:
    LDA.B #$80                           ;84AA38;
    RTL                                  ;84AA3A;

CODE_84AA3B:
    LDA.B #$00                           ;84AA3B;
    RTL                                  ;84AA3D;

CODE_84AA3E:
    LDA.W $1F7A                          ;84AA3E;
    CMP.B #$0C                           ;84AA41;
    BEQ CODE_84AA49                      ;84AA43;
    JSL.L CODE_849FFE                    ;84AA45;

CODE_84AA49:
    STZ.W $1F49                          ;84AA49;
    STZ.W $1F0C                          ;84AA4C;
    STZ.W $0BD8                          ;84AA4F;
    DEC.W $1F31                          ;84AA52;
    DEC.W $1F3B                          ;84AA55;
    DEC.W $1F1A                          ;84AA58;
    LDA.B #$04                           ;84AA5B;
    STA.W $1F10                          ;84AA5D;
    LDA.B #$80                           ;84AA60;
    RTL                                  ;84AA62;

CODE_84AA63:
    LDA.B #$03                           ;84AA63;
    STA.W $0008                          ;84AA65;
    REP #$20                             ;84AA68;
    LDA.W #$FFE1                         ;84AA6A;
    STA.W $0000                          ;84AA6D;
    STA.W $0002                          ;84AA70;
    LDA.W #$003F                         ;84AA73;
    STA.W $0004                          ;84AA76;
    STA.W $0006                          ;84AA79;
    SEP #$20                             ;84AA7C;
    JSL.L CODE_84A4C6                    ;84AA7E;
    LDA.B #$00                           ;84AA82;
    RTL                                  ;84AA84;

CODE_84AA85:
    LDA.W $0B9C                          ;84AA85;
    AND.B #$03                           ;84AA88;
    BNE CODE_84AAD0                      ;84AA8A;
    JSL.L CODE_8282D3                    ;84AA8C;
    BNE CODE_84AAD0                      ;84AA90;
    INC.W $0000,X                        ;84AA92;
    LDA.B #$09                           ;84AA95;
    STA.W $000A,X                        ;84AA97;
    LDA.B #$80                           ;84AA9A;
    STA.W $000B,X                        ;84AA9C;
    LDA.B $11                            ;84AA9F;
    AND.B #$40                           ;84AAA1;
    STA.W $000C,X                        ;84AAA3;
    REP #$20                             ;84AAA6;
    JSL.L CODE_849086                    ;84AAA8;
    AND.W #$001F                         ;84AAAC;
    LSR A                                ;84AAAF;
    BCC CODE_84AAB6                      ;84AAB0;
    EOR.W #$FFFF                         ;84AAB2;
    INC A                                ;84AAB5;

CODE_84AAB6:
    CLC                                  ;84AAB6;
    ADC.B $05                            ;84AAB7;
    STA.W $0005,X                        ;84AAB9;
    JSL.L CODE_849086                    ;84AABC;
    AND.W #$000F                         ;84AAC0;
    LSR A                                ;84AAC3;
    BCC CODE_84AACA                      ;84AAC4;
    EOR.W #$FFFF                         ;84AAC6;
    INC A                                ;84AAC9;

CODE_84AACA:
    CLC                                  ;84AACA;
    ADC.B $08                            ;84AACB;
    STA.W $0008,X                        ;84AACD;

CODE_84AAD0:
    SEP #$30                             ;84AAD0;
    RTS                                  ;84AAD2;

CODE_84AAD3:
    LDA.W $1F7A                          ;84AAD3;
    CMP.B #$09                           ;84AAD6;
    BCS CODE_84AAE9                      ;84AAD8;
    ASL A                                ;84AADA;
    TAX                                  ;84AADB;
    LDA.W $1F86,X                        ;84AADC;
    AND.B #$40                           ;84AADF;
    BEQ CODE_84AAE9                      ;84AAE1;
    INC.W $1F23                          ;84AAE3;
    LDA.B #$01                           ;84AAE6;
    RTL                                  ;84AAE8;

CODE_84AAE9:
    LDA.B #$00                           ;84AAE9;
    RTL                                  ;84AAEB;
    PHP                                  ;84AAEC;
    PHD                                  ;84AAED;
    PEA.W $0000                          ;84AAEE;
    PLD                                  ;84AAF1;
    SEP #$10                             ;84AAF2;
    STX.B $2C                            ;84AAF4;
    LDY.B #$00                           ;84AAF6;

CODE_84AAF8:
    TYX                                  ;84AAF8;
    CPX.B $2C                            ;84AAF9;
    BCS CODE_84AB19                      ;84AAFB;

CODE_84AAFD:
    LDA.W $0000,Y                        ;84AAFD;
    CMP.B $00,X                          ;84AB00;
    BCS CODE_84AB0D                      ;84AB02;
    PHA                                  ;84AB04;
    LDA.B $00,X                          ;84AB05;
    STA.W $0000,Y                        ;84AB07;
    PLA                                  ;84AB0A;
    STA.B $00,X                          ;84AB0B;

CODE_84AB0D:
    INX                                  ;84AB0D;
    INX                                  ;84AB0E;
    CPX.B $2C                            ;84AB0F;
    BEQ CODE_84AAFD                      ;84AB11;
    BCC CODE_84AAFD                      ;84AB13;
    INY                                  ;84AB15;
    INY                                  ;84AB16;
    BRA CODE_84AAF8                      ;84AB17;

CODE_84AB19:
    PLD                                  ;84AB19;
    PLP                                  ;84AB1A;
    RTL                                  ;84AB1B;
    PHP                                  ;84AB1C;
    PHD                                  ;84AB1D;
    PEA.W $0000                          ;84AB1E;
    PLD                                  ;84AB21;
    SEP #$10                             ;84AB22;
    STX.B $2C                            ;84AB24;
    LDY.B #$00                           ;84AB26;

CODE_84AB28:
    TYX                                  ;84AB28;
    CPX.B $2C                            ;84AB29;
    BCS CODE_84AB49                      ;84AB2B;

CODE_84AB2D:
    LDA.W $0000,Y                        ;84AB2D;
    CMP.B $00,X                          ;84AB30;
    BCC CODE_84AB3D                      ;84AB32;
    PHA                                  ;84AB34;
    LDA.B $00,X                          ;84AB35;
    STA.W $0000,Y                        ;84AB37;
    PLA                                  ;84AB3A;
    STA.B $00,X                          ;84AB3B;

CODE_84AB3D:
    INX                                  ;84AB3D;
    INX                                  ;84AB3E;
    CPX.B $2C                            ;84AB3F;
    BEQ CODE_84AB2D                      ;84AB41;
    BCC CODE_84AB2D                      ;84AB43;
    INY                                  ;84AB45;
    INY                                  ;84AB46;
    BRA CODE_84AB28                      ;84AB47;

CODE_84AB49:
    PLD                                  ;84AB49;
    PLP                                  ;84AB4A;
    RTL                                  ;84AB4B;

CODE_84AB4C:
    PHP                                  ;84AB4C;
    SEP #$20                             ;84AB4D;
    REP #$10                             ;84AB4F;
    LDA.W $0BD4                          ;84AB51;
    BMI CODE_84AB75                      ;84AB54;
    LDX.W #$0BA8                         ;84AB56;
    JSL.L CODE_849C0E                    ;84AB59;
    BCC CODE_84AB75                      ;84AB5D;
    LDA.W $0001                          ;84AB5F;
    BMI CODE_84AB6B                      ;84AB62;
    LDA.B #$40                           ;84AB64;
    TSB.W $0BD4                          ;84AB66;
    BRA CODE_84AB70                      ;84AB69;

CODE_84AB6B:
    LDA.B #$40                           ;84AB6B;
    TRB.W $0BD4                          ;84AB6D;

CODE_84AB70:
    LDA.B #$80                           ;84AB70;
    TSB.W $0BD4                          ;84AB72;

CODE_84AB75:
    PLP                                  ;84AB75;
    RTL                                  ;84AB76;

CODE_84AB77:
    PHP                                  ;84AB77;
    SEP #$30                             ;84AB78;
    LDA.B $2C                            ;84AB7A;
    BEQ CODE_84ABA4                      ;84AB7C;
    LDA.W $0BD4                          ;84AB7E;
    ORA.W $0BD3                          ;84AB81;
    AND.B #$04                           ;84AB84;
    BNE CODE_84ABA4                      ;84AB86;
    REP #$20                             ;84AB88;
    LDA.B $05                            ;84AB8A;
    SEC                                  ;84AB8C;
    SBC.B $22                            ;84AB8D;
    CLC                                  ;84AB8F;
    ADC.W $0BAD                          ;84AB90;
    STA.W $0BAD                          ;84AB93;
    LDA.B $08                            ;84AB96;
    SEC                                  ;84AB98;
    SBC.B $24                            ;84AB99;
    CLC                                  ;84AB9B;
    ADC.W $0BB0                          ;84AB9C;
    STA.W $0BB0                          ;84AB9F;
    SEP #$20                             ;84ABA2;

CODE_84ABA4:
    STZ.B $2C                            ;84ABA4;
    LDA.W $0E22                          ;84ABA6;
    ASL A                                ;84ABA9;
    ASL A                                ;84ABAA;
    BCS CODE_84AC29                      ;84ABAB;
    REP #$10                             ;84ABAD;
    LDX.W #$0BA8                         ;84ABAF;
    JSL.L CODE_849C0E                    ;84ABB2;
    BCC CODE_84AC29                      ;84ABB6;
    REP #$20                             ;84ABB8;
    LDA.W $0004                          ;84ABBA;
    CMP.W $0006                          ;84ABBD;
    BEQ CODE_84ABC4                      ;84ABC0;
    BCC CODE_84ABF9                      ;84ABC2;

CODE_84ABC4:
    LDA.W $0002                          ;84ABC4;
    BPL CODE_84ABD9                      ;84ABC7;
    INC A                                ;84ABC9;
    CMP.W #$FFF8                         ;84ABCA;
    BPL CODE_84ABD2                      ;84ABCD;
    LDA.W #$FFF8                         ;84ABCF;

CODE_84ABD2:
    CLC                                  ;84ABD2;
    ADC.W $0BB0                          ;84ABD3;
    STA.W $0BB0                          ;84ABD6;

CODE_84ABD9:
    SEP #$20                             ;84ABD9;
    LDA.W $0003                          ;84ABDB;
    BMI CODE_84ABEE                      ;84ABDE;
    LDA.W $0BD3                          ;84ABE0;
    ORA.W $0BD4                          ;84ABE3;
    AND.B #$04                           ;84ABE6;
    BNE CODE_84AC29                      ;84ABE8;
    LDA.B #$08                           ;84ABEA;
    BRA CODE_84ABF4                      ;84ABEC;

CODE_84ABEE:
    LDA.B #$01                           ;84ABEE;
    STA.B $2C                            ;84ABF0;
    LDA.B #$04                           ;84ABF2;

CODE_84ABF4:
    TSB.W $0BD4                          ;84ABF4;
    BRA CODE_84AC29                      ;84ABF7;

CODE_84ABF9:
    LDA.W $0000                          ;84ABF9;
    BMI CODE_84AC09                      ;84ABFC;
    DEC A                                ;84ABFE;
    CMP.W #$0009                         ;84ABFF;
    BCC CODE_84AC12                      ;84AC02;
    LDA.W #$0008                         ;84AC04;
    BRA CODE_84AC12                      ;84AC07;

CODE_84AC09:
    INC A                                ;84AC09;
    CMP.W #$FFF8                         ;84AC0A;
    BPL CODE_84AC12                      ;84AC0D;
    LDA.W #$FFF8                         ;84AC0F;

CODE_84AC12:
    CLC                                  ;84AC12;
    ADC.W $0BAD                          ;84AC13;
    STA.W $0BAD                          ;84AC16;
    SEP #$20                             ;84AC19;
    LDA.W $0001                          ;84AC1B;
    BMI CODE_84AC24                      ;84AC1E;
    LDA.B #$02                           ;84AC20;
    BRA CODE_84AC26                      ;84AC22;

CODE_84AC24:
    LDA.B #$01                           ;84AC24;

CODE_84AC26:
    TSB.W $0BD4                          ;84AC26;

CODE_84AC29:
    PLP                                  ;84AC29;
    RTL                                  ;84AC2A;

CODE_84AC2B:
    PHD                                  ;84AC2B;
    PEA.W $0000                          ;84AC2C;
    PLD                                  ;84AC2F;
    STA.B $00                            ;84AC30;
    STY.B $02                            ;84AC32;
    LDA.B $00                            ;84AC34;
    BEQ CODE_84AC53                      ;84AC36;
    JSL.L CODE_849086                    ;84AC38;
    AND.B $02                            ;84AC3C;
    BEQ CODE_84AC4F                      ;84AC3E;
    LDA.B $00                            ;84AC40;
    BPL CODE_84AC46                      ;84AC42;

CODE_84AC44:
    LDA.B #$00                           ;84AC44;

CODE_84AC46:
    INC A                                ;84AC46;
    STA.B $00                            ;84AC47;
    CMP.B #$03                           ;84AC49;
    BCC CODE_84AC5E                      ;84AC4B;
    BRA CODE_84AC53                      ;84AC4D;

CODE_84AC4F:
    LDA.B $00                            ;84AC4F;
    BMI CODE_84AC55                      ;84AC51;

CODE_84AC53:
    LDA.B #$80                           ;84AC53;

CODE_84AC55:
    INC A                                ;84AC55;
    STA.B $00                            ;84AC56;
    AND.B #$7F                           ;84AC58;
    CMP.B #$03                           ;84AC5A;
    BCS CODE_84AC44                      ;84AC5C;

CODE_84AC5E:
    PLD                                  ;84AC5E;
    LDA.W $0000                          ;84AC5F;
    RTL                                  ;84AC62;

CODE_84AC63:
    REP #$30                             ;84AC63;
    LDY.W #$0000                         ;84AC65;
    LDX.W #$1628                         ;84AC68;

CODE_84AC6B:
    LDA.W $0000,X                        ;84AC6B;
    BEQ CODE_84AC8B                      ;84AC6E;
    SEP #$20                             ;84AC70;
    LDA.W $000A,X                        ;84AC72;
    BEQ CODE_84AC8B                      ;84AC75;
    CMP.B #$03                           ;84AC77;
    BEQ CODE_84AC8B                      ;84AC79;
    CMP.B #$06                           ;84AC7B;
    BCC CODE_84AC83                      ;84AC7D;
    CMP.B #$0B                           ;84AC7F;
    BNE CODE_84AC8B                      ;84AC81;

CODE_84AC83:
    REP #$20                             ;84AC83;
    TXA                                  ;84AC85;
    STA.W $0000,Y                        ;84AC86;
    INY                                  ;84AC89;
    INY                                  ;84AC8A;

CODE_84AC8B:
    REP #$20                             ;84AC8B;
    TXA                                  ;84AC8D;
    CLC                                  ;84AC8E;
    ADC.W #$0030                         ;84AC8F;
    TAX                                  ;84AC92;
    CMP.W #$1928                         ;84AC93;
    BCC CODE_84AC6B                      ;84AC96;
    SEP #$30                             ;84AC98;
    RTL                                  ;84AC9A;

CODE_84AC9B:
    PHP                                  ;84AC9B;
    SEP #$20                             ;84AC9C;
    LDA.B #$40                           ;84AC9E;
    TRB.B $11                            ;84ACA0;
    REP #$20                             ;84ACA2;
    LDA.W $0BAD                          ;84ACA4;
    SEC                                  ;84ACA7;
    SBC.B $05                            ;84ACA8;
    SEP #$20                             ;84ACAA;
    LDA.B #$00                           ;84ACAC;
    ROR A                                ;84ACAE;
    LSR A                                ;84ACAF;
    TSB.B $11                            ;84ACB0;
    PLP                                  ;84ACB2;
    RTL                                  ;84ACB3;

CODE_84ACB4:
    PHP                                  ;84ACB4;
    PHD                                  ;84ACB5;
    REP #$20                             ;84ACB6;
    SEP #$10                             ;84ACB8;
    LDA.W #$0000                         ;84ACBA;
    TCD                                  ;84ACBD;
    STZ.B $12                            ;84ACBE;
    LDA.W #$FFFF                         ;84ACC0;
    STA.B $10                            ;84ACC3;
    LDA.B $00                            ;84ACC5;
    SEC                                  ;84ACC7;
    SBC.B $04                            ;84ACC8;
    BPL CODE_84ACD2                      ;84ACCA;
    INC.B $12                            ;84ACCC;
    EOR.W #$FFFF                         ;84ACCE;
    INC A                                ;84ACD1;

CODE_84ACD2:
    STA.B $0A                            ;84ACD2;
    LDA.B $06                            ;84ACD4;
    SEC                                  ;84ACD6;
    SBC.B $02                            ;84ACD7;
    CMP.W #$0100                         ;84ACD9;
    BMI CODE_84ACE1                      ;84ACDC;
    LDA.W #$00FF                         ;84ACDE;

CODE_84ACE1:
    CMP.W #$0000                         ;84ACE1;
    BPL CODE_84ACEC                      ;84ACE4;
    INC.B $13                            ;84ACE6;
    EOR.W #$FFFF                         ;84ACE8;
    INC A                                ;84ACEB;

CODE_84ACEC:
    STA.B $0C                            ;84ACEC;
    XBA                                  ;84ACEE;
    STA.B $0E                            ;84ACEF;
    LDA.B $08                            ;84ACF1;
    LSR A                                ;84ACF3;
    LSR A                                ;84ACF4;
    LSR A                                ;84ACF5;
    LSR A                                ;84ACF6;
    LSR A                                ;84ACF7;
    STA.B $08                            ;84ACF8;
    SEP #$20                             ;84ACFA;
    JSR.W CODE_84ADEB                    ;84ACFC;
    JSR.W CODE_84AD6B                    ;84ACFF;
    LDA.B $1A                            ;84AD02;
    BNE CODE_84AD0B                      ;84AD04;
    JSR.W CODE_84AD4A                    ;84AD06;
    BCC CODE_84AD39                      ;84AD09;

CODE_84AD0B:
    LDA.B #$10                           ;84AD0B;
    STA.B $18                            ;84AD0D;
    LDA.B #$20                           ;84AD0F;
    STA.B $10                            ;84AD11;

CODE_84AD13:
    JSR.W CODE_84ADEB                    ;84AD13;
    JSR.W CODE_84AD6B                    ;84AD16;
    LDA.B $1A                            ;84AD19;
    BNE CODE_84AD29                      ;84AD1B;
    JSR.W CODE_84AD4A                    ;84AD1D;
    BCS CODE_84AD29                      ;84AD20;
    LDA.B $10                            ;84AD22;
    SEC                                  ;84AD24;
    SBC.B $18                            ;84AD25;
    BRA CODE_84AD2E                      ;84AD27;

CODE_84AD29:
    LDA.B $10                            ;84AD29;
    CLC                                  ;84AD2B;
    ADC.B $18                            ;84AD2C;

CODE_84AD2E:
    STA.B $10                            ;84AD2E;
    LSR.B $18                            ;84AD30;
    LDA.B $18                            ;84AD32;
    BNE CODE_84AD13                      ;84AD34;
    JSR.W CODE_84ADEB                    ;84AD36;

CODE_84AD39:
    LDA.B $12                            ;84AD39;
    BEQ CODE_84AD47                      ;84AD3B;
    REP #$20                             ;84AD3D;
    LDA.B $00                            ;84AD3F;
    EOR.W #$FFFF                         ;84AD41;
    INC A                                ;84AD44;
    STA.B $00                            ;84AD45;

CODE_84AD47:
    PLD                                  ;84AD47;
    PLP                                  ;84AD48;
    RTL                                  ;84AD49;

CODE_84AD4A:
    LDA.B $00                            ;84AD4A;
    STA.W $211B                          ;84AD4C;
    LDA.B $01                            ;84AD4F;
    STA.W $211B                          ;84AD51;
    LDA.B $14                            ;84AD54;
    STZ.W $211C                          ;84AD56;
    STA.W $211C                          ;84AD59;
    LDA.W $2134                          ;84AD5C;
    REP #$20                             ;84AD5F;
    LDA.W $2135                          ;84AD61;
    CMP.B $0A                            ;84AD64;
    BCC CODE_84AD68                      ;84AD66;

CODE_84AD68:
    SEP #$20                             ;84AD68;
    RTS                                  ;84AD6A;

CODE_84AD6B:
    PHP                                  ;84AD6B;
    REP #$20                             ;84AD6C;
    SEP #$10                             ;84AD6E;
    STZ.B $14                            ;84AD70;
    STZ.B $1A                            ;84AD72;
    LDA.B $02                            ;84AD74;
    STA.B $16                            ;84AD76;
    LDA.W #$0000                         ;84AD78;

CODE_84AD7B:
    CLC                                  ;84AD7B;
    ADC.B $16                            ;84AD7C;
    BCS CODE_84ADAB                      ;84AD7E;
    CMP.B $0E                            ;84AD80;
    BCS CODE_84ADAB                      ;84AD82;
    INC.B $14                            ;84AD84;
    PHA                                  ;84AD86;
    LDX.B $13                            ;84AD87;
    BEQ CODE_84AD9B                      ;84AD89;
    LDA.B $16                            ;84AD8B;
    CLC                                  ;84AD8D;
    ADC.W #$0040                         ;84AD8E;
    CMP.W #$2000                         ;84AD91;
    BCS CODE_84ADAA                      ;84AD94;
    STA.B $16                            ;84AD96;
    PLA                                  ;84AD98;
    BRA CODE_84AD7B                      ;84AD99;

CODE_84AD9B:
    LDA.B $16                            ;84AD9B;
    SEC                                  ;84AD9D;
    SBC.W #$0040                         ;84AD9E;
    BCC CODE_84ADA8                      ;84ADA1;
    STA.B $16                            ;84ADA3;
    PLA                                  ;84ADA5;
    BRA CODE_84AD7B                      ;84ADA6;

CODE_84ADA8:
    INC.B $1A                            ;84ADA8;

CODE_84ADAA:
    PLA                                  ;84ADAA;

CODE_84ADAB:
    LDA.B $02                            ;84ADAB;
    STA.W $4204                          ;84ADAD;
    LDX.B #$40                           ;84ADB0;
    STX.W $4206                          ;84ADB2;
    NOP                                  ;84ADB5;
    NOP                                  ;84ADB6;
    NOP                                  ;84ADB7;
    NOP                                  ;84ADB8;
    NOP                                  ;84ADB9;
    NOP                                  ;84ADBA;
    NOP                                  ;84ADBB;
    NOP                                  ;84ADBC;
    LDA.W $4214                          ;84ADBD;
    ASL A                                ;84ADC0;
    LDX.B $13                            ;84ADC1;
    BEQ CODE_84ADCC                      ;84ADC3;
    CLC                                  ;84ADC5;
    ADC.B $14                            ;84ADC6;
    STA.B $14                            ;84ADC8;
    PLP                                  ;84ADCA;
    RTS                                  ;84ADCB;

CODE_84ADCC:
    SEC                                  ;84ADCC;
    SBC.B $14                            ;84ADCD;
    STA.B $14                            ;84ADCF;
    PLP                                  ;84ADD1;
    RTS                                  ;84ADD2;
    PHP                                  ;84ADD3;
    PHD                                  ;84ADD4;
    REP #$20                             ;84ADD5;
    PEA.W $0000                          ;84ADD7;
    PLD                                  ;84ADDA;
    STA.B $10                            ;84ADDB;
    LDA.B $08                            ;84ADDD;
    LSR A                                ;84ADDF;
    LSR A                                ;84ADE0;
    LSR A                                ;84ADE1;
    LSR A                                ;84ADE2;
    STA.B $08                            ;84ADE3;
    JSR.W CODE_84ADEB                    ;84ADE5;
    PLD                                  ;84ADE8;
    PLP                                  ;84ADE9;
    RTL                                  ;84ADEA;

CODE_84ADEB:
    LDA.B $10                            ;84ADEB;
    INC A                                ;84ADED;
    REP #$30                             ;84ADEE;
    AND.W #$00FF                         ;84ADF0;
    ASL A                                ;84ADF3;
    ASL A                                ;84ADF4;
    TAX                                  ;84ADF5;
    SEP #$20                             ;84ADF6;
    LDA.W DATA8_86BBD7,X                 ;84ADF8;
    STA.W $211B                          ;84ADFB;
    LDA.W DATA8_86BBD8,X                 ;84ADFE;
    STA.W $211B                          ;84AE01;
    LDA.B $08                            ;84AE04;
    STZ.W $211C                          ;84AE06;
    STA.W $211C                          ;84AE09;
    LDA.W $2134                          ;84AE0C;
    LDA.W $2135                          ;84AE0F;
    STA.B $00                            ;84AE12;
    LDA.W $2136                          ;84AE14;
    STA.B $01                            ;84AE17;
    LDA.W DATA8_86BBD9,X                 ;84AE19;
    STA.W $211B                          ;84AE1C;
    LDA.W DATA8_86BBDA,X                 ;84AE1F;
    STA.W $211B                          ;84AE22;
    LDA.B $08                            ;84AE25;
    STZ.W $211C                          ;84AE27;
    STA.W $211C                          ;84AE2A;
    LDA.W $2134                          ;84AE2D;
    LDA.W $2135                          ;84AE30;
    STA.B $02                            ;84AE33;
    LDA.W $2136                          ;84AE35;
    STA.B $03                            ;84AE38;
    SEP #$10                             ;84AE3A;
    RTS                                  ;84AE3C;

CODE_84AE3D:
    LDX.B $01                            ;84AE3D;
    JMP.W (PTR16_84AE42,X)               ;84AE3F;

PTR16_84AE42:
    dw CODE_84AE48                       ;84AE42;
    dw CODE_84AF12                       ;84AE44;
    dw CODE_84B301                       ;84AE46;

CODE_84AE48:
    LDX.B $02                            ;84AE48;
    JMP.W (PTR16_84AE4D,X)               ;84AE4A;

PTR16_84AE4D:
    dw CODE_84AE53                       ;84AE4D;
    dw CODE_84AE65                       ;84AE4F;
    dw CODE_84AE84                       ;84AE51;

CODE_84AE53:
    LDA.B #$02                           ;84AE53;
    STA.B $02                            ;84AE55;
    STA.B $30                            ;84AE57;
    LDA.B #$08                           ;84AE59;
    STA.B $17                            ;84AE5B;
    LDA.B #$04                           ;84AE5D;
    STA.B $16                            ;84AE5F;
    JML.L CODE_848000                    ;84AE61;

CODE_84AE65:
    DEC.B $17                            ;84AE65;
    BNE CODE_84AE83                      ;84AE67;
    LDA.B #$08                           ;84AE69;
    STA.B $17                            ;84AE6B;
    INC.B $16                            ;84AE6D;
    LDA.B $16                            ;84AE6F;
    CMP.B #$07                           ;84AE71;
    BCC CODE_84AE7F                      ;84AE73;
    LDA.B #$04                           ;84AE75;
    STA.B $02                            ;84AE77;
    LDA.B #$20                           ;84AE79;
    JML.L CODE_8088CD                    ;84AE7B;

CODE_84AE7F:
    JSL.L CODE_848000                    ;84AE7F;

CODE_84AE83:
    RTL                                  ;84AE83;

CODE_84AE84:
    LDA.B #$02                           ;84AE84;
    STA.B $01                            ;84AE86;
    STZ.B $02                            ;84AE88;
    LDA.B #$30                           ;84AE8A;
    STA.B $27                            ;84AE8C;
    STA.B $36                            ;84AE8E;
    LDA.W $1F9E                          ;84AE90;
    BPL CODE_84AE97                      ;84AE93;
    ASL.B $27                            ;84AE95;

CODE_84AE97:
    LDA.B #$01                           ;84AE97;
    STA.B $0E                            ;84AE99;
    LDA.B #$0A                           ;84AE9B;
    STA.B $28                            ;84AE9D;
    LDA.B #$05                           ;84AE9F;
    STA.B $26                            ;84AEA1;
    STZ.B $11                            ;84AEA3;
    STZ.B $2F                            ;84AEA5;
    STZ.B $38                            ;84AEA7;
    STZ.B $33                            ;84AEA9;
    STZ.B $10                            ;84AEAB;
    STZ.B $37                            ;84AEAD;
    LDA.B #$10                           ;84AEAF;
    STA.W $00C1                          ;84AEB1;
    LDA.B #$02                           ;84AEB4;
    STA.W $00C9                          ;84AEB6;
    LDA.B #$42                           ;84AEB9;
    STA.W $00CA                          ;84AEBB;
    REP #$30                             ;84AEBE;
    LDA.W $1E56                          ;84AEC0;
    STA.L $7FD384                        ;84AEC3;
    LDA.W $1E58                          ;84AEC7;
    STA.L $7FD386                        ;84AECA;
    LDA.W $1E5A                          ;84AECE;
    STA.L $7FD388                        ;84AED1;
    LDA.W $1E5C                          ;84AED5;
    STA.L $7FD38A                        ;84AED8;
    LDA.W #$0C80                         ;84AEDC;
    STA.B $05                            ;84AEDF;
    LDA.W #$0340                         ;84AEE1;
    STA.B $08                            ;84AEE4;
    LDA.W #$0048                         ;84AEE6;
    STA.B $12                            ;84AEE9;
    LDA.W #$0458                         ;84AEEB;
    STA.B $14                            ;84AEEE;
    LDA.W #$C4CB                         ;84AEF0;
    STA.B $20                            ;84AEF3;
    LDA.W #$0020                         ;84AEF5;
    STA.B $1E                            ;84AEF8;
    PHB                                  ;84AEFA;
    LDX.W #$C4D5                         ;84AEFB;
    LDY.W #$0AA1                         ;84AEFE;
    LDA.W #$0006                         ;84AF01;
    MVN $00,$86                          ;84AF04;
    PLB                                  ;84AF07;
    SEP #$30                             ;84AF08;
    JSR.W CODE_84B414                    ;84AF0A;
    LDA.B #$00                           ;84AF0D;
    JSR.W CODE_84B5D7                    ;84AF0F;

CODE_84AF12:
    LDX.B $02                            ;84AF12;
    JSR.W (PTR16_84AF55,X)               ;84AF14;
    JSR.W CODE_84B629                    ;84AF17;
    JSR.W CODE_84B3F3                    ;84AF1A;
    JSR.W CODE_84B43C                    ;84AF1D;
    LDA.B $33                            ;84AF20;
    EOR.B #$40                           ;84AF22;
    STA.B $33                            ;84AF24;
    JSL.L CODE_849B43                    ;84AF26;
    BEQ CODE_84AF3D                      ;84AF2A;
    BPL CODE_84AF35                      ;84AF2C;
    LDA.B #$04                           ;84AF2E;
    STA.B $01                            ;84AF30;
    STZ.B $02                            ;84AF32;
    RTL                                  ;84AF34;

CODE_84AF35:
    LDA.B #$08                           ;84AF35;
    STA.B $38                            ;84AF37;
    LDA.B #$05                           ;84AF39;
    STA.B $28                            ;84AF3B;

CODE_84AF3D:
    LDA.B $38                            ;84AF3D;
    BEQ CODE_84AF49                      ;84AF3F;
    DEC.B $38                            ;84AF41;
    BNE CODE_84AF49                      ;84AF43;
    LDA.B #$03                           ;84AF45;
    STA.B $28                            ;84AF47;

CODE_84AF49:
    LDA.B $33                            ;84AF49;
    BMI CODE_84AF51                      ;84AF4B;
    JSL.L CODE_8491BE                    ;84AF4D;

CODE_84AF51:
    JML.L CODE_849B03                    ;84AF51;

PTR16_84AF55:
    dw CODE_84B1EA                       ;84AF55;
    dw CODE_84B261                       ;84AF57;
    dw CODE_84B289                       ;84AF59;
    dw CODE_84B07F                       ;84AF5B;
    dw CODE_84AFF3                       ;84AF5D;
    dw CODE_84AF61                       ;84AF5F;

CODE_84AF61:
    LDX.B $03                            ;84AF61;
    BNE CODE_84AFA8                      ;84AF63;
    INC.B $03                            ;84AF65;
    STZ.B $16                            ;84AF67;
    JSL.L CODE_849086                    ;84AF69;
    AND.B #$03                           ;84AF6D;
    BEQ CODE_84AF8D                      ;84AF6F;
    REP #$20                             ;84AF71;
    LDX.B #$01                           ;84AF73;
    LDA.B $05                            ;84AF75;
    CMP.W #$0C40                         ;84AF77;
    BCC CODE_84AF89                      ;84AF7A;
    INX                                  ;84AF7C;
    CMP.W #$0C80                         ;84AF7D;
    BCC CODE_84AF89                      ;84AF80;
    INX                                  ;84AF82;
    CMP.W #$0CC0                         ;84AF83;
    BCC CODE_84AF89                      ;84AF86;
    INX                                  ;84AF88;

CODE_84AF89:
    STX.B $16                            ;84AF89;
    SEP #$20                             ;84AF8B;

CODE_84AF8D:
    JSR.W CODE_84B695                    ;84AF8D;
    INC.W $0AA1                          ;84AF90;
    INC.W $0AA8                          ;84AF93;
    LDA.B #$00                           ;84AF96;
    STA.B $1C                            ;84AF98;
    LDA.B #$08                           ;84AF9A;
    STA.B $1D                            ;84AF9C;
    LDA.B #$5B                           ;84AF9E;
    STA.B $18                            ;84AFA0;
    LDA.B #$46                           ;84AFA2;
    JSL.L CODE_8088A2                    ;84AFA4;

CODE_84AFA8:
    LDA.B $18                            ;84AFA8;
    CMP.B #$40                           ;84AFAA;
    BCS CODE_84AFB1                      ;84AFAC;
    JSR.W CODE_84B74C                    ;84AFAE;

CODE_84AFB1:
    LDA.B $18                            ;84AFB1;
    CMP.B #$4B                           ;84AFB3;
    BCS CODE_84AFBE                      ;84AFB5;
    JSL.L CODE_82825D                    ;84AFB7;
    JSR.W CODE_84B777                    ;84AFBB;

CODE_84AFBE:
    DEC.B $18                            ;84AFBE;
    BNE CODE_84AFE0                      ;84AFC0;
    STZ.W $0AA1                          ;84AFC2;
    STZ.W $0AA8                          ;84AFC5;
    LDX.B #$06                           ;84AFC8;
    JSR.W CODE_84B5D0                    ;84AFCA;
    CMP.B #$08                           ;84AFCD;
    BCC CODE_84AFDC                      ;84AFCF;
    LDX.B #$08                           ;84AFD1;
    CMP.B #$0A                           ;84AFD3;
    BCC CODE_84AFDC                      ;84AFD5;
    JSR.W CODE_84B59F                    ;84AFD7;
    LDX.B #$02                           ;84AFDA;

CODE_84AFDC:
    TXA                                  ;84AFDC;
    JMP.W CODE_84B772                    ;84AFDD;

CODE_84AFE0:
    REP #$30                             ;84AFE0;
    PHB                                  ;84AFE2;
    LDX.W #$D1BC                         ;84AFE3;
    LDY.W #$D1BE                         ;84AFE6;
    LDA.W #$01BB                         ;84AFE9;
    MVP $7F,$7F                          ;84AFEC;
    PLB                                  ;84AFEF;
    SEP #$30                             ;84AFF0;
    RTS                                  ;84AFF2;

CODE_84AFF3:
    LDX.B $03                            ;84AFF3;
    JMP.W (PTR16_84AFF8,X)               ;84AFF5;

PTR16_84AFF8:
    dw CODE_84AFFE                       ;84AFF8;
    dw CODE_84B02E                       ;84AFFA;
    dw CODE_84B053                       ;84AFFC;

CODE_84AFFE:
    LDA.B #$02                           ;84AFFE;
    STA.B $03                            ;84B000;
    LDA.B #$02                           ;84B002;
    STA.B $10                            ;84B004;
    LDA.B #$80                           ;84B006;
    TSB.B $33                            ;84B008;
    LDA.B $2B                            ;84B00A;
    BIT.B #$04                           ;84B00C;
    BNE CODE_84B01A                      ;84B00E;
    REP #$20                             ;84B010;
    STZ.B $1A                            ;84B012;
    STZ.B $1C                            ;84B014;
    STZ.B $1E                            ;84B016;
    BRA CODE_84B023                      ;84B018;

CODE_84B01A:
    REP #$20                             ;84B01A;
    LDA.W #$FE85                         ;84B01C;
    STA.B $1C                            ;84B01F;
    STZ.B $1A                            ;84B021;

CODE_84B023:
    SEP #$20                             ;84B023;
    LDA.B #$18                           ;84B025;
    STA.B $35                            ;84B027;
    LDA.B #$04                           ;84B029;
    JSR.W CODE_84B5D7                    ;84B02B;

CODE_84B02E:
    DEC.B $35                            ;84B02E;
    BNE CODE_84B04E                      ;84B030;
    LDA.B #$04                           ;84B032;
    STA.B $03                            ;84B034;
    REP #$20                             ;84B036;
    STZ.B $1C                            ;84B038;
    LDA.B $08                            ;84B03A;
    STA.B $24                            ;84B03C;
    LDA.W #$0020                         ;84B03E;
    STA.B $1E                            ;84B041;
    SEP #$20                             ;84B043;
    LDA.B #$80                           ;84B045;
    TRB.B $33                            ;84B047;
    LDA.B #$72                           ;84B049;
    STA.B $35                            ;84B04B;
    RTS                                  ;84B04D;

CODE_84B04E:
    JSL.L CODE_8281B2                    ;84B04E;
    RTS                                  ;84B052;

CODE_84B053:
    DEC.B $35                            ;84B053;
    BNE CODE_84B07E                      ;84B055;
    LDA.B $2B                            ;84B057;
    BIT.B #$04                           ;84B059;
    BEQ CODE_84B06C                      ;84B05B;
    LDX.B #$04                           ;84B05D;
    JSR.W CODE_84B5D0                    ;84B05F;
    CMP.B #$04                           ;84B062;
    BCC CODE_84B068                      ;84B064;
    LDX.B #$0A                           ;84B066;

CODE_84B068:
    TXA                                  ;84B068;
    JMP.W CODE_84B772                    ;84B069;

CODE_84B06C:
    LDX.B #$06                           ;84B06C;
    JSR.W CODE_84B5D0                    ;84B06E;
    CMP.B #$0C                           ;84B071;
    BCC CODE_84B07A                      ;84B073;
    JSR.W CODE_84B59F                    ;84B075;
    LDX.B #$02                           ;84B078;

CODE_84B07A:
    TXA                                  ;84B07A;
    JMP.W CODE_84B772                    ;84B07B;

CODE_84B07E:
    RTS                                  ;84B07E;

CODE_84B07F:
    LDX.B $03                            ;84B07F;
    JMP.W (PTR16_84B084,X)               ;84B081;

PTR16_84B084:
    dw CODE_84B094                       ;84B084;
    dw CODE_84B0AB                       ;84B086;
    dw CODE_84B0C3                       ;84B088;
    dw CODE_84B0DA                       ;84B08A;
    dw CODE_84B128                       ;84B08C;
    dw CODE_84B136                       ;84B08E;
    dw CODE_84B193                       ;84B090;
    dw CODE_84B1B4                       ;84B092;

CODE_84B094:
    LDA.B #$02                           ;84B094;
    STA.B $03                            ;84B096;
    REP #$30                             ;84B098;
    LDX.W #$0100                         ;84B09A;
    LDA.W #$0C80                         ;84B09D;
    CMP.B $05                            ;84B0A0;
    BCS CODE_84B0A7                      ;84B0A2;
    LDX.W #$FF00                         ;84B0A4;

CODE_84B0A7:
    STX.B $1A                            ;84B0A7;
    SEP #$30                             ;84B0A9;

CODE_84B0AB:
    LDA.B $05                            ;84B0AB;
    CMP.B #$80                           ;84B0AD;
    BNE CODE_84B0BE                      ;84B0AF;
    LDA.B #$04                           ;84B0B1;
    STA.B $03                            ;84B0B3;
    LDA.B #$20                           ;84B0B5;
    STA.B $16                            ;84B0B7;
    LDA.B #$01                           ;84B0B9;
    JMP.W CODE_84B5D7                    ;84B0BB;

CODE_84B0BE:
    JSL.L CODE_82823E                    ;84B0BE;
    RTS                                  ;84B0C2;

CODE_84B0C3:
    DEC.B $16                            ;84B0C3;
    BNE CODE_84B0D9                      ;84B0C5;
    LDA.B #$10                           ;84B0C7;
    LDX.B #$01                           ;84B0C9;
    LDY.B #$04                           ;84B0CB;
    JSL.L CODE_84A33C                    ;84B0CD;
    LDA.B #$06                           ;84B0D1;
    STA.B $03                            ;84B0D3;
    LDA.B #$3C                           ;84B0D5;
    STA.B $16                            ;84B0D7;

CODE_84B0D9:
    RTS                                  ;84B0D9;

CODE_84B0DA:
    DEC.B $16                            ;84B0DA;
    BNE CODE_84B110                      ;84B0DC;
    LDA.B #$08                           ;84B0DE;
    STA.B $03                            ;84B0E0;
    LDA.B #$1E                           ;84B0E2;
    STA.B $16                            ;84B0E4;
    LDA.B #$03                           ;84B0E6;
    JSR.W CODE_84B5D7                    ;84B0E8;
    LDA.B #$42                           ;84B0EB;
    STA.W $00CA                          ;84B0ED;
    REP #$30                             ;84B0F0;
    LDX.W #$0100                         ;84B0F2;
    LDA.W $0BAD                          ;84B0F5;
    CMP.B $05                            ;84B0F8;
    BCS CODE_84B0FF                      ;84B0FA;
    LDX.W #$FF00                         ;84B0FC;

CODE_84B0FF:
    STX.B $1A                            ;84B0FF;
    SEP #$30                             ;84B101;
    LDX.B #$03                           ;84B103;
    JSR.W CODE_84B5D0                    ;84B105;
    CMP.B #$09                           ;84B108;
    BCC CODE_84B10D                      ;84B10A;
    DEX                                  ;84B10C;

CODE_84B10D:
    STX.B $18                            ;84B10D;
    RTS                                  ;84B10F;

CODE_84B110:
    BIT.W $1F90                          ;84B110;
    BVS CODE_84B127                      ;84B113;
    LDA.W $00CA                          ;84B115;
    EOR.B #$40                           ;84B118;
    STA.W $00CA                          ;84B11A;
    LDA.W $0B9C                          ;84B11D;
    AND.B #$07                           ;84B120;
    BNE CODE_84B127                      ;84B122;
    JMP.W CODE_84B604                    ;84B124;

CODE_84B127:
    RTS                                  ;84B127;

CODE_84B128:
    DEC.B $16                            ;84B128;
    BNE CODE_84B135                      ;84B12A;
    LDA.B #$0A                           ;84B12C;
    STA.B $03                            ;84B12E;
    LDA.B #$00                           ;84B130;
    JMP.W CODE_84B5D7                    ;84B132;

CODE_84B135:
    RTS                                  ;84B135;

CODE_84B136:
    JSL.L CODE_82823E                    ;84B136;
    REP #$30                             ;84B13A;
    LDX.W #$0100                         ;84B13C;
    LDA.W $0BAD                          ;84B13F;
    CMP.B $05                            ;84B142;
    BCS CODE_84B149                      ;84B144;
    LDX.W #$FF00                         ;84B146;

CODE_84B149:
    CPX.B $1A                            ;84B149;
    SEP #$30                             ;84B14B;
    BEQ CODE_84B152                      ;84B14D;
    JMP.W CODE_84B1D8                    ;84B14F;

CODE_84B152:
    REP #$20                             ;84B152;
    LDA.B $05                            ;84B154;
    SEC                                  ;84B156;
    SBC.W $0BAD                          ;84B157;
    CLC                                  ;84B15A;
    ADC.W #$000C                         ;84B15B;
    CMP.W #$0018                         ;84B15E;
    SEP #$20                             ;84B161;
    BCS CODE_84B16D                      ;84B163;
    LDA.B #$0C                           ;84B165;
    STA.B $03                            ;84B167;
    LDA.B #$1E                           ;84B169;
    STA.B $16                            ;84B16B;

CODE_84B16D:
    LDX.B #$1F                           ;84B16D;
    JSR.W CODE_84B89B                    ;84B16F;
    BCS CODE_84B176                      ;84B172;
    LDX.B #$07                           ;84B174;

CODE_84B176:
    STX.W $0000                          ;84B176;
    LDA.W $0C2B                          ;84B179;
    BPL CODE_84B183                      ;84B17C;
    LDA.B #$03                           ;84B17E;
    STA.W $0000                          ;84B180;

CODE_84B183:
    LDA.B $05                            ;84B183;
    AND.W $0000                          ;84B185;
    BNE CODE_84B192                      ;84B188;
    LDA.B #$0E                           ;84B18A;
    STA.B $03                            ;84B18C;
    LDA.B #$1E                           ;84B18E;
    STA.B $16                            ;84B190;

CODE_84B192:
    RTS                                  ;84B192;

CODE_84B193:
    DEC.B $16                            ;84B193;
    BNE CODE_84B1A2                      ;84B195;
    DEC.B $18                            ;84B197;
    BNE CODE_84B1CA                      ;84B199;
    LDA.B #$42                           ;84B19B;
    STA.W $00CA                          ;84B19D;
    BRA CODE_84B1D8                      ;84B1A0;

CODE_84B1A2:
    LDA.B $16                            ;84B1A2;
    CMP.B #$0F                           ;84B1A4;
    BNE CODE_84B1AB                      ;84B1A6;
    JSR.W CODE_84B5E4                    ;84B1A8;

CODE_84B1AB:
    LDA.W $00CA                          ;84B1AB;
    EOR.B #$40                           ;84B1AE;
    STA.W $00CA                          ;84B1B0;
    RTS                                  ;84B1B3;

CODE_84B1B4:
    DEC.B $16                            ;84B1B4;
    BEQ CODE_84B1CA                      ;84B1B6;
    LDA.B $16                            ;84B1B8;
    CMP.B #$0F                           ;84B1BA;
    BNE CODE_84B1C1                      ;84B1BC;
    JSR.W CODE_84B5E4                    ;84B1BE;

CODE_84B1C1:
    LDA.W $00CA                          ;84B1C1;
    EOR.B #$40                           ;84B1C4;
    STA.W $00CA                          ;84B1C6;
    RTS                                  ;84B1C9;

CODE_84B1CA:
    LDA.B #$0A                           ;84B1CA;
    STA.B $03                            ;84B1CC;
    LDA.B #$08                           ;84B1CE;
    STA.B $17                            ;84B1D0;
    LDA.B #$42                           ;84B1D2;
    STA.W $00CA                          ;84B1D4;
    RTS                                  ;84B1D7;

CODE_84B1D8:
    LDX.B #$08                           ;84B1D8;
    JSR.W CODE_84B5D0                    ;84B1DA;
    CMP.B #$0A                           ;84B1DD;
    BCS CODE_84B1E6                      ;84B1DF;
    JSR.W CODE_84B59F                    ;84B1E1;
    LDX.B #$02                           ;84B1E4;

CODE_84B1E6:
    TXA                                  ;84B1E6;
    JMP.W CODE_84B772                    ;84B1E7;

CODE_84B1EA:
    LDX.B $03                            ;84B1EA;
    JMP.W (PTR16_84B1EF,X)               ;84B1EC;

PTR16_84B1EF:
    dw CODE_84B1F5                       ;84B1EF;
    dw CODE_84B21E                       ;84B1F1;
    dw CODE_84B23B                       ;84B1F3;

CODE_84B1F5:
    REP #$20                             ;84B1F5;
    LDA.W $0BAD                          ;84B1F7;
    CMP.W #$0C20                         ;84B1FA;
    BCC CODE_84B21B                      ;84B1FD;
    LDA.W #$0C00                         ;84B1FF;
    STA.W $1E5E                          ;84B202;
    STA.W $1E60                          ;84B205;
    LDA.W #$0300                         ;84B208;
    STA.W $1E68                          ;84B20B;
    STA.W $1E6E                          ;84B20E;
    SEP #$20                             ;84B211;
    LDA.B #$02                           ;84B213;
    STA.B $03                            ;84B215;
    JSL.L CODE_849FE6                    ;84B217;

CODE_84B21B:
    SEP #$20                             ;84B21B;

CODE_84B21D:
    RTS                                  ;84B21D;

CODE_84B21E:
    REP #$20                             ;84B21E;
    LDA.W $1E4D                          ;84B220;
    CMP.W $1E56                          ;84B223;
    SEP #$20                             ;84B226;
    BNE CODE_84B21D                      ;84B228;
    LDA.B #$04                           ;84B22A;
    STA.B $03                            ;84B22C;
    STZ.B $16                            ;84B22E;
    LDA.B #$08                           ;84B230;
    STA.B $17                            ;84B232;
    LDA.B #$00                           ;84B234;
    JSL.L CODE_848000                    ;84B236;
    RTS                                  ;84B23A;

CODE_84B23B:
    DEC.B $17                            ;84B23B;
    BNE CODE_84B260                      ;84B23D;
    LDA.B #$08                           ;84B23F;
    STA.B $17                            ;84B241;
    INC.B $16                            ;84B243;
    LDA.B $16                            ;84B245;
    CMP.B #$03                           ;84B247;
    BCC CODE_84B25C                      ;84B249;
    STZ.B $30                            ;84B24B;
    LDA.B #$20                           ;84B24D;
    JSL.L CODE_8088CD                    ;84B24F;
    JSL.L CODE_849FFE                    ;84B253;
    LDA.B #$06                           ;84B257;
    JMP.W CODE_84B772                    ;84B259;

CODE_84B25C:
    JSL.L CODE_848000                    ;84B25C;

CODE_84B260:
    RTS                                  ;84B260;

CODE_84B261:
    LDX.B $03                            ;84B261;
    BNE CODE_84B26B                      ;84B263;
    INC.B $03                            ;84B265;
    STZ.B $1C                            ;84B267;
    STZ.B $1D                            ;84B269;

CODE_84B26B:
    LDA.B $2B                            ;84B26B;
    BIT.B #$04                           ;84B26D;
    BEQ CODE_84B284                      ;84B26F;
    LDA.B #$02                           ;84B271;
    STA.B $10                            ;84B273;
    LDX.B #$04                           ;84B275;
    JSR.W CODE_84B5D0                    ;84B277;
    CMP.B #$0A                           ;84B27A;
    BCS CODE_84B280                      ;84B27C;
    LDX.B #$08                           ;84B27E;

CODE_84B280:
    TXA                                  ;84B280;
    JMP.W CODE_84B772                    ;84B281;

CODE_84B284:
    JSL.L CODE_828174                    ;84B284;
    RTS                                  ;84B288;

CODE_84B289:
    LDX.B $03                            ;84B289;
    BNE CODE_84B2ED                      ;84B28B;
    INC.B $03                            ;84B28D;
    REP #$30                             ;84B28F;
    LDX.W #$000A                         ;84B291;
    LDA.W $0BAD                          ;84B294;
    SEC                                  ;84B297;
    SBC.B $05                            ;84B298;
    BPL CODE_84B2A0                      ;84B29A;
    EOR.W #$FFFF                         ;84B29C;
    INC A                                ;84B29F;

CODE_84B2A0:
    CMP.W #$0080                         ;84B2A0;
    BCS CODE_84B2A8                      ;84B2A3;
    LDX.W #$0006                         ;84B2A5;

CODE_84B2A8:
    STX.W $0000                          ;84B2A8;
    LDX.W #$0421                         ;84B2AB;
    LDA.B $27                            ;84B2AE;
    AND.W #$007F                         ;84B2B0;
    CMP.W #$0018                         ;84B2B3;
    BCS CODE_84B2BB                      ;84B2B6;
    LDX.W #$0600                         ;84B2B8;

CODE_84B2BB:
    STX.B $1C                            ;84B2BB;
    LDX.W #$0100                         ;84B2BD;
    LDA.W $0BAD                          ;84B2C0;
    CMP.B $05                            ;84B2C3;
    BCS CODE_84B2CA                      ;84B2C5;
    LDX.W #$FF00                         ;84B2C7;

CODE_84B2CA:
    STX.B $1A                            ;84B2CA;
    SEP #$20                             ;84B2CC;
    JSR.W CODE_84B5D0                    ;84B2CE;
    CMP.W $0000                          ;84B2D1;
    BCS CODE_84B2E6                      ;84B2D4;
    LDX.W #$0507                         ;84B2D6;
    JSR.W CODE_84B89B                    ;84B2D9;
    BCS CODE_84B2E1                      ;84B2DC;
    LDX.W #$0800                         ;84B2DE;

CODE_84B2E1:
    STX.B $1C                            ;84B2E1;
    JSR.W CODE_84B59F                    ;84B2E3;

CODE_84B2E6:
    SEP #$10                             ;84B2E6;
    LDA.B #$00                           ;84B2E8;
    JSR.W CODE_84B5D7                    ;84B2EA;

CODE_84B2ED:
    LDA.B $2B                            ;84B2ED;
    BIT.B #$08                           ;84B2EF;
    BNE CODE_84B2F7                      ;84B2F1;
    LDA.B $1D                            ;84B2F3;
    BPL CODE_84B2FC                      ;84B2F5;

CODE_84B2F7:
    LDA.B #$02                           ;84B2F7;
    JMP.W CODE_84B772                    ;84B2F9;

CODE_84B2FC:
    JSL.L CODE_828174                    ;84B2FC;
    RTS                                  ;84B300;

CODE_84B301:
    LDX.B $02                            ;84B301;
    JMP.W (PTR16_84B306,X)               ;84B303;

PTR16_84B306:
    dw CODE_84B312                       ;84B306;
    dw CODE_84B326                       ;84B308;
    dw CODE_84B34C                       ;84B30A;
    dw CODE_84B36B                       ;84B30C;
    dw CODE_84B380                       ;84B30E;
    dw CODE_84B388                       ;84B310;

CODE_84B312:
    LDA.B #$02                           ;84B312;
    STA.B $02                            ;84B314;
    LDA.B #$FF                           ;84B316;
    STA.B $27                            ;84B318;
    INC.B $30                            ;84B31A;
    LDA.B #$21                           ;84B31C;
    JSL.L CODE_8088A2                    ;84B31E;
    LDA.B #$01                           ;84B322;
    STA.B $18                            ;84B324;

CODE_84B326:
    DEC.B $18                            ;84B326;
    BEQ CODE_84B32E                      ;84B328;
    JSR.W CODE_84B791                    ;84B32A;
    RTL                                  ;84B32D;

CODE_84B32E:
    LDA.B #$04                           ;84B32E;
    STA.B $02                            ;84B330;
    INC.W $0AA1                          ;84B332;
    REP #$30                             ;84B335;
    PHB                                  ;84B337;
    LDX.W #$C4E3                         ;84B338;
    LDY.W #$0B22                         ;84B33B;
    LDA.W #$0009                         ;84B33E;
    MVN $00,$86                          ;84B341;
    PLB                                  ;84B344;
    LDA.W #$0001                         ;84B345;
    STA.B $18                            ;84B348;
    SEP #$30                             ;84B34A;

CODE_84B34C:
    LDA.W $0B9C                          ;84B34C;
    LSR A                                ;84B34F;
    BCC CODE_84B35D                      ;84B350;
    INC.B $18                            ;84B352;
    LDA.B $18                            ;84B354;
    CMP.B #$10                           ;84B356;
    BEQ CODE_84B361                      ;84B358;
    JSR.W CODE_84B82B                    ;84B35A;

CODE_84B35D:
    JSR.W CODE_84B791                    ;84B35D;
    RTL                                  ;84B360;

CODE_84B361:
    LDA.B #$06                           ;84B361;
    STA.B $02                            ;84B363;
    LDA.B #$10                           ;84B365;
    STA.B $18                            ;84B367;
    STZ.B $19                            ;84B369;

CODE_84B36B:
    DEC.B $18                            ;84B36B;
    DEC.B $18                            ;84B36D;
    BMI CODE_84B378                      ;84B36F;
    JSR.W CODE_84B87F                    ;84B371;
    JSR.W CODE_84B791                    ;84B374;
    RTL                                  ;84B377;

CODE_84B378:
    LDA.B #$08                           ;84B378;
    STA.B $02                            ;84B37A;
    LDA.B #$F0                           ;84B37C;
    STA.B $18                            ;84B37E;

CODE_84B380:
    DEC.B $18                            ;84B380;
    BEQ CODE_84B388                      ;84B382;
    JSR.W CODE_84B791                    ;84B384;
    RTL                                  ;84B387;

CODE_84B388:
    LDA.B #$02                           ;84B388;
    STA.W $1E89                          ;84B38A;
    STZ.B $27                            ;84B38D;
    STZ.W $0AA1                          ;84B38F;
    STZ.W $0AA8                          ;84B392;
    STZ.W $1E9A                          ;84B395;
    INC.W $1E88                          ;84B398;
    LDA.B #$03                           ;84B39B;
    JSL.L CODE_848000                    ;84B39D;
    LDA.B #$05                           ;84B3A1;
    JSL.L CODE_84A37F                    ;84B3A3;
    REP #$20                             ;84B3A7;
    LDA.W #$0CF8                         ;84B3A9;
    STA.W $0000                          ;84B3AC;
    LDA.W #$0508                         ;84B3AF;
    STA.W $0004                          ;84B3B2;
    LDA.W #$0390                         ;84B3B5;
    STA.W $0002                          ;84B3B8;
    JSL.L CODE_84A462                    ;84B3BB;
    LDA.W #$03A0                         ;84B3BF;
    STA.W $0002                          ;84B3C2;
    JSL.L CODE_84A462                    ;84B3C5;
    LDA.W #$03B0                         ;84B3C9;
    STA.W $0002                          ;84B3CC;
    JSL.L CODE_84A462                    ;84B3CF;
    LDA.L $7FD384                        ;84B3D3;
    STA.W $1E5E                          ;84B3D7;
    LDA.L $7FD386                        ;84B3DA;
    STA.W $1E60                          ;84B3DE;
    LDA.L $7FD388                        ;84B3E1;
    STA.W $1E68                          ;84B3E5;
    LDA.L $7FD38A                        ;84B3E8;
    STA.W $1E6E                          ;84B3EC;
    JML.L CODE_828398                    ;84B3EF;

CODE_84B3F3:
    LDA.W $1F27                          ;84B3F3;
    BNE CODE_84B413                      ;84B3F6;
    LDA.W $1E89                          ;84B3F8;
    CMP.B #$0C                           ;84B3FB;
    BNE CODE_84B413                      ;84B3FD;
    REP #$20                             ;84B3FF;
    LDA.W $1E8D                          ;84B401;
    STA.W $1EAA                          ;84B404;
    LDA.W $1E90                          ;84B407;
    STA.W $1EAC                          ;84B40A;
    TDC                                  ;84B40D;
    STA.W $1F2E                          ;84B40E;
    SEP #$20                             ;84B411;

CODE_84B413:
    RTS                                  ;84B413;

CODE_84B414:
    JSL.L CODE_8282D3                    ;84B414;
    BNE CODE_84B439                      ;84B418;
    INC.W $0000,X                        ;84B41A;
    LDA.B #$32                           ;84B41D;
    STA.W $000A,X                        ;84B41F;
    LDA.B #$30                           ;84B422;
    STA.W $0011,X                        ;84B424;
    STX.B $31                            ;84B427;
    REP #$20                             ;84B429;
    LDA.B $05                            ;84B42B;
    STA.W $0005,X                        ;84B42D;
    LDA.B $08                            ;84B430;
    STA.W $0008,X                        ;84B432;
    TDC                                  ;84B435;
    STA.W $000C,X                        ;84B436;

CODE_84B439:
    SEP #$30                             ;84B439;

CODE_84B43B:
    RTS                                  ;84B43B;

CODE_84B43C:
    LDX.B $10                            ;84B43C;
    JMP.W (PTR16_84B441,X)               ;84B43E;

PTR16_84B441:
    dw CODE_84B43B                       ;84B441;
    dw CODE_84B447                       ;84B443;
    dw CODE_84B45C                       ;84B445;

CODE_84B447:
    LDA.B #$04                           ;84B447;
    STA.B $10                            ;84B449;
    STZ.B $17                            ;84B44B;
    DEC.B $17                            ;84B44D;
    INC.W $0AA1                          ;84B44F;
    LDA.B #$01                           ;84B452;
    STA.B $16                            ;84B454;
    LDA.B #$45                           ;84B456;
    JSL.L CODE_8088A2                    ;84B458;

CODE_84B45C:
    DEC.B $16                            ;84B45C;
    BNE CODE_84B473                      ;84B45E;
    LDA.B #$02                           ;84B460;
    STA.B $16                            ;84B462;
    INC.B $17                            ;84B464;
    LDX.B $17                            ;84B466;
    LDA.W DATA8_86C4F7,X                 ;84B468;
    BPL CODE_84B473                      ;84B46B;
    STZ.B $10                            ;84B46D;
    STZ.W $0AA1                          ;84B46F;
    RTS                                  ;84B472;

CODE_84B473:
    JSR.W CODE_84B479                    ;84B473;
    JMP.W CODE_84B514                    ;84B476;

CODE_84B479:
    REP #$30                             ;84B479;
    LDA.B $17                            ;84B47B;
    AND.W #$00FF                         ;84B47D;
    TAX                                  ;84B480;
    LDA.W DATA8_86C4F7,X                 ;84B481;
    AND.W #$00FF                         ;84B484;
    STA.W $0000                          ;84B487;
    LDX.W #$0000                         ;84B48A;
    BIT.B $32                            ;84B48D;
    BVC CODE_84B494                      ;84B48F;
    LDX.W #$00C2                         ;84B491;

CODE_84B494:
    TAY                                  ;84B494;
    LDA.W $1E90                          ;84B495;
    STA.L $7FD0C0,X                      ;84B498;

CODE_84B49C:
    DEY                                  ;84B49C;
    BMI CODE_84B4A7                      ;84B49D;
    STA.L $7FD000,X                      ;84B49F;
    INX                                  ;84B4A3;
    INX                                  ;84B4A4;
    BRA CODE_84B49C                      ;84B4A5;

CODE_84B4A7:
    LDA.W $0000                          ;84B4A7;
    STA.B $18                            ;84B4AA;
    EOR.W #$FFFF                         ;84B4AC;
    INC A                                ;84B4AF;
    CLC                                  ;84B4B0;
    ADC.W $1E90                          ;84B4B1;

CODE_84B4B4:
    DEC.B $18                            ;84B4B4;
    BMI CODE_84B4C7                      ;84B4B6;
    LDY.W #$0007                         ;84B4B8;

CODE_84B4BB:
    STA.L $7FD000,X                      ;84B4BB;
    INX                                  ;84B4BF;
    INX                                  ;84B4C0;
    DEY                                  ;84B4C1;
    BNE CODE_84B4BB                      ;84B4C2;
    INC A                                ;84B4C4;
    BRA CODE_84B4B4                      ;84B4C5;

CODE_84B4C7:
    LDA.W #$0006                         ;84B4C7;
    SEC                                  ;84B4CA;
    SBC.W $0000                          ;84B4CB;
    ASL A                                ;84B4CE;
    STA.B $18                            ;84B4CF;
    LDA.W $1E90                          ;84B4D1;

CODE_84B4D4:
    DEC.B $18                            ;84B4D4;
    BMI CODE_84B4E6                      ;84B4D6;
    LDY.W #$0008                         ;84B4D8;

CODE_84B4DB:
    STA.L $7FD000,X                      ;84B4DB;
    INX                                  ;84B4DF;
    INX                                  ;84B4E0;
    DEY                                  ;84B4E1;
    BNE CODE_84B4DB                      ;84B4E2;
    BRA CODE_84B4D4                      ;84B4E4;

CODE_84B4E6:
    LDA.W $0000                          ;84B4E6;
    STA.B $18                            ;84B4E9;
    LDA.W $1E90                          ;84B4EB;
    INC A                                ;84B4EE;

CODE_84B4EF:
    DEC.B $18                            ;84B4EF;
    BMI CODE_84B502                      ;84B4F1;
    LDY.W #$0007                         ;84B4F3;

CODE_84B4F6:
    STA.L $7FD000,X                      ;84B4F6;
    INX                                  ;84B4FA;
    INX                                  ;84B4FB;
    DEY                                  ;84B4FC;
    BNE CODE_84B4F6                      ;84B4FD;
    INC A                                ;84B4FF;
    BRA CODE_84B4EF                      ;84B500;

CODE_84B502:
    LDA.W $1E90                          ;84B502;
    LDY.W $0000                          ;84B505;

CODE_84B508:
    DEY                                  ;84B508;
    BMI CODE_84B513                      ;84B509;
    STA.L $7FD000,X                      ;84B50B;
    INX                                  ;84B50F;
    INX                                  ;84B510;
    BRA CODE_84B508                      ;84B511;

CODE_84B513:
    RTS                                  ;84B513;

CODE_84B514:
    LDA.W #$0000                         ;84B514;
    BIT.B $32                            ;84B517;
    BVC CODE_84B51E                      ;84B519;
    LDA.W #$00C2                         ;84B51B;

CODE_84B51E:
    STA.W $0000                          ;84B51E;
    LDX.W #$0000                         ;84B521;
    LDA.B $08                            ;84B524;
    SEC                                  ;84B526;
    SBC.W #$0030                         ;84B527;
    SEC                                  ;84B52A;
    SBC.W $1E50                          ;84B52B;
    BPL CODE_84B533                      ;84B52E;
    LDA.W #$0000                         ;84B530;

CODE_84B533:
    JSR.W CODE_84B568                    ;84B533;
    LDA.W #$00E0                         ;84B536;
    STA.W $0B22,X                        ;84B539;
    LDA.W #$D000                         ;84B53C;
    CLC                                  ;84B53F;
    ADC.W $0000                          ;84B540;
    STA.W $0B23,X                        ;84B543;
    INX                                  ;84B546;
    INX                                  ;84B547;
    INX                                  ;84B548;
    LDA.B $08                            ;84B549;
    CLC                                  ;84B54B;
    ADC.W #$0030                         ;84B54C;
    STA.W $0002                          ;84B54F;
    LDA.W $1E50                          ;84B552;
    CLC                                  ;84B555;
    ADC.W #$00E0                         ;84B556;
    SEC                                  ;84B559;
    SBC.W $0002                          ;84B55A;
    BMI CODE_84B562                      ;84B55D;
    JSR.W CODE_84B568                    ;84B55F;

CODE_84B562:
    STZ.W $0B22,X                        ;84B562;
    SEP #$30                             ;84B565;
    RTS                                  ;84B567;

CODE_84B568:
    CMP.W #$007F                         ;84B568;
    BCC CODE_84B58E                      ;84B56B;
    CMP.W #$00E0                         ;84B56D;
    BCC CODE_84B575                      ;84B570;
    LDA.W #$00E0                         ;84B572;

CODE_84B575:
    SEC                                  ;84B575;
    SBC.W #$007F                         ;84B576;
    TAY                                  ;84B579;
    LDA.W #$007F                         ;84B57A;
    STA.W $0B22,X                        ;84B57D;
    LDA.W #$D0C0                         ;84B580;
    CLC                                  ;84B583;
    ADC.W $0000                          ;84B584;
    STA.W $0B23,X                        ;84B587;
    INX                                  ;84B58A;
    INX                                  ;84B58B;
    INX                                  ;84B58C;
    TYA                                  ;84B58D;

CODE_84B58E:
    STA.W $0B22,X                        ;84B58E;
    LDA.W #$D0C0                         ;84B591;
    CLC                                  ;84B594;
    ADC.W $0000                          ;84B595;
    STA.W $0B23,X                        ;84B598;
    INX                                  ;84B59B;
    INX                                  ;84B59C;
    INX                                  ;84B59D;
    RTS                                  ;84B59E;

CODE_84B59F:
    REP #$20                             ;84B59F;
    STZ.W $0000                          ;84B5A1;
    LDA.W $0BAD                          ;84B5A4;
    SEC                                  ;84B5A7;
    SBC.B $05                            ;84B5A8;
    BPL CODE_84B5B3                      ;84B5AA;
    DEC.W $0000                          ;84B5AC;
    EOR.W #$FFFF                         ;84B5AF;
    INC A                                ;84B5B2;

CODE_84B5B3:
    XBA                                  ;84B5B3;
    LSR A                                ;84B5B4;
    LSR A                                ;84B5B5;
    LSR A                                ;84B5B6;
    LSR A                                ;84B5B7;
    LSR A                                ;84B5B8;
    LSR A                                ;84B5B9;
    CMP.W #$0500                         ;84B5BA;
    BCC CODE_84B5C2                      ;84B5BD;
    LDA.W #$0500                         ;84B5BF;

CODE_84B5C2:
    BIT.W $0000                          ;84B5C2;
    BPL CODE_84B5CB                      ;84B5C5;
    EOR.W #$FFFF                         ;84B5C7;
    INC A                                ;84B5CA;

CODE_84B5CB:
    STA.B $1A                            ;84B5CB;
    SEP #$20                             ;84B5CD;
    RTS                                  ;84B5CF;

CODE_84B5D0:
    JSL.L CODE_849086                    ;84B5D0;
    AND.B #$0F                           ;84B5D4;
    RTS                                  ;84B5D6;

CODE_84B5D7:
    REP #$10                             ;84B5D7;
    LDX.B $31                            ;84B5D9;
    STA.W $0010,X                        ;84B5DB;
    STZ.W $0002,X                        ;84B5DE;
    SEP #$10                             ;84B5E1;
    RTS                                  ;84B5E3;

CODE_84B5E4:
    JSL.L CODE_828358                    ;84B5E4;
    BNE CODE_84B601                      ;84B5E8;
    INC.W $0000,X                        ;84B5EA;
    LDA.B #$18                           ;84B5ED;
    STA.W $000A,X                        ;84B5EF;
    REP #$21                             ;84B5F2;
    LDA.B $08                            ;84B5F4;
    ADC.W #$0023                         ;84B5F6;
    STA.W $0008,X                        ;84B5F9;
    LDA.B $05                            ;84B5FC;
    STA.W $0005,X                        ;84B5FE;

CODE_84B601:
    SEP #$30                             ;84B601;
    RTS                                  ;84B603;

CODE_84B604:
    JSL.L CODE_8282D3                    ;84B604;
    BNE CODE_84B626                      ;84B608;
    INC.W $0000,X                        ;84B60A;
    LDA.B #$10                           ;84B60D;
    STA.W $000A,X                        ;84B60F;
    STA.W $000B,X                        ;84B612;
    LDA.B #$30                           ;84B615;
    STA.W $0011,X                        ;84B617;
    REP #$20                             ;84B61A;
    LDA.B $05                            ;84B61C;
    STA.W $0005,X                        ;84B61E;
    LDA.B $08                            ;84B621;
    STA.W $0008,X                        ;84B623;

CODE_84B626:
    SEP #$30                             ;84B626;
    RTS                                  ;84B628;

CODE_84B629:
    LDA.W $0B9C                          ;84B629;
    AND.B #$3F                           ;84B62C;
    BNE CODE_84B656                      ;84B62E;
    JSL.L CODE_849086                    ;84B630;
    AND.B #$03                           ;84B634;
    BEQ CODE_84B649                      ;84B636;
    LDA.B $27                            ;84B638;
    AND.B #$7F                           ;84B63A;
    STA.W $0000                          ;84B63C;
    LDA.B $36                            ;84B63F;
    SEC                                  ;84B641;
    SBC.W $0000                          ;84B642;
    CMP.B #$03                           ;84B645;
    BCC CODE_84B650                      ;84B647;

CODE_84B649:
    LDA.B $37                            ;84B649;
    BNE CODE_84B650                      ;84B64B;
    JSR.W CODE_84B657                    ;84B64D;

CODE_84B650:
    LDA.B $27                            ;84B650;
    AND.B #$7F                           ;84B652;
    STA.B $36                            ;84B654;

CODE_84B656:
    RTS                                  ;84B656;

CODE_84B657:
    REP #$10                             ;84B657;
    LDY.W #$0003                         ;84B659;

CODE_84B65C:
    JSL.L CODE_828358                    ;84B65C;
    BNE CODE_84B692                      ;84B660;
    INC.W $0000,X                        ;84B662;
    INC.B $37                            ;84B665;
    LDA.B #$19                           ;84B667;
    STA.W $000A,X                        ;84B669;
    TYA                                  ;84B66C;
    STA.W $000B,X                        ;84B66D;
    PHY                                  ;84B670;
    REP #$21                             ;84B671;
    TYA                                  ;84B673;
    ASL A                                ;84B674;
    ASL A                                ;84B675;
    TAY                                  ;84B676;
    LDA.B $05                            ;84B677;
    ADC.W DATA8_86C537,Y                 ;84B679;
    STA.W $0005,X                        ;84B67C;
    LDA.B $08                            ;84B67F;
    CLC                                  ;84B681;
    ADC.W DATA8_86C539,Y                 ;84B682;
    STA.W $0008,X                        ;84B685;
    TDC                                  ;84B688;
    STA.W $000C,X                        ;84B689;
    SEP #$20                             ;84B68C;
    PLY                                  ;84B68E;
    DEY                                  ;84B68F;
    BPL CODE_84B65C                      ;84B690;

CODE_84B692:
    SEP #$10                             ;84B692;
    RTS                                  ;84B694;

CODE_84B695:
    REP #$30                             ;84B695;
    LDA.B $05                            ;84B697;
    STA.B $22                            ;84B699;
    STZ.B $1A                            ;84B69B;
    LDA.B $16                            ;84B69D;
    AND.W #$00FF                         ;84B69F;
    ASL A                                ;84B6A2;
    TAX                                  ;84B6A3;
    LDA.W DATA8_86C547,X                 ;84B6A4;
    STA.B $1C                            ;84B6A7;
    LDX.W #$012A                         ;84B6A9;
    STZ.B $04                            ;84B6AC;
    LDA.W $1E8D                          ;84B6AE;
    STA.B $05                            ;84B6B1;
    STA.L $7FD2EE                        ;84B6B3;

CODE_84B6B7:
    LDA.B $05                            ;84B6B7;
    STA.L $7FD1C2,X                      ;84B6B9;
    STZ.W $0000                          ;84B6BD;
    LDA.B $1A                            ;84B6C0;
    BPL CODE_84B6C7                      ;84B6C2;
    DEC.W $0000                          ;84B6C4;

CODE_84B6C7:
    CLC                                  ;84B6C7;
    ADC.B $04                            ;84B6C8;
    STA.B $04                            ;84B6CA;
    SEP #$20                             ;84B6CC;
    LDA.B $06                            ;84B6CE;
    ADC.W $0000                          ;84B6D0;
    STA.B $06                            ;84B6D3;
    REP #$21                             ;84B6D5;
    LDA.B $1A                            ;84B6D7;
    CLC                                  ;84B6D9;
    ADC.B $1C                            ;84B6DA;
    STA.B $1A                            ;84B6DC;
    DEX                                  ;84B6DE;
    DEX                                  ;84B6DF;
    BPL CODE_84B6B7                      ;84B6E0;
    LDA.B $22                            ;84B6E2;
    STA.B $05                            ;84B6E4;
    PHB                                  ;84B6E6;
    LDX.W #$C4DC                         ;84B6E7;
    LDY.W #$0AA8                         ;84B6EA;
    LDA.W #$0006                         ;84B6ED;
    MVN $00,$86                          ;84B6F0;
    LDX.W #$C4E3                         ;84B6F3;
    LDY.W #$0B22                         ;84B6F6;
    LDA.W #$0013                         ;84B6F9;
    MVN $00,$86                          ;84B6FC;
    PLB                                  ;84B6FF;
    LDX.W #$0092                         ;84B700;
    LDA.W $1E8D                          ;84B703;

CODE_84B706:
    STA.L $7FD2F0,X                      ;84B706;
    DEX                                  ;84B70A;
    DEX                                  ;84B70B;
    BPL CODE_84B706                      ;84B70C;
    LDX.W #$01BE                         ;84B70E;
    LDA.W $1E90                          ;84B711;
    STA.L $7FD1C0                        ;84B714;

CODE_84B718:
    STA.L $7FD000,X                      ;84B718;
    DEX                                  ;84B71C;
    DEX                                  ;84B71D;
    CPX.W #$00EC                         ;84B71E;
    BNE CODE_84B718                      ;84B721;
    STZ.W $0000                          ;84B723;

CODE_84B726:
    INC A                                ;84B726;
    STA.L $7FD000,X                      ;84B727;
    INC.W $0000                          ;84B72B;
    LDY.W $0000                          ;84B72E;
    CPY.W #$0008                         ;84B731;
    BNE CODE_84B73A                      ;84B734;
    STZ.W $0000                          ;84B736;
    DEC A                                ;84B739;

CODE_84B73A:
    DEX                                  ;84B73A;
    DEX                                  ;84B73B;
    CPX.W #$0014                         ;84B73C;
    BNE CODE_84B726                      ;84B73F;

CODE_84B741:
    STA.L $7FD000,X                      ;84B741;
    DEX                                  ;84B745;
    DEX                                  ;84B746;
    BPL CODE_84B741                      ;84B747;
    SEP #$30                             ;84B749;
    RTS                                  ;84B74B;

CODE_84B74C:
    REP #$30                             ;84B74C;
    LDA.L $7FD202                        ;84B74E;
    STA.W $0000                          ;84B752;
    LDX.W #$01C0                         ;84B755;

CODE_84B758:
    LDA.L $7FD1C2,X                      ;84B758;
    CMP.W $0000                          ;84B75C;
    BEQ CODE_84B767                      ;84B75F;
    BPL CODE_84B766                      ;84B761;
    INC A                                ;84B763;
    BRA CODE_84B767                      ;84B764;

CODE_84B766:
    DEC A                                ;84B766;

CODE_84B767:
    STA.L $7FD1C2,X                      ;84B767;
    DEX                                  ;84B76B;
    DEX                                  ;84B76C;
    BPL CODE_84B758                      ;84B76D;
    SEP #$30                             ;84B76F;
    RTS                                  ;84B771;

CODE_84B772:
    STA.B $02                            ;84B772;
    STZ.B $03                            ;84B774;
    RTS                                  ;84B776;

CODE_84B777:
    REP #$30                             ;84B777;
    LDA.B $08                            ;84B779;
    SEC                                  ;84B77B;
    SBC.W #$0300                         ;84B77C;
    ASL A                                ;84B77F;
    TAX                                  ;84B780;
    LDA.B $12                            ;84B781;
    CLC                                  ;84B783;
    ADC.W #$0C00                         ;84B784;
    SEC                                  ;84B787;
    SBC.L $7FD1C2,X                      ;84B788;
    STA.B $05                            ;84B78C;
    SEP #$30                             ;84B78E;
    RTS                                  ;84B790;

CODE_84B791:
    REP #$20                             ;84B791;
    LDA.W #$FFE0                         ;84B793;
    STA.W $0000                          ;84B796;
    LDA.W #$FFE0                         ;84B799;
    STA.W $0002                          ;84B79C;
    LDA.W #$003F                         ;84B79F;
    STA.W $0004                          ;84B7A2;
    STA.W $0006                          ;84B7A5;
    SEP #$20                             ;84B7A8;
    LDA.B #$07                           ;84B7AA;
    STA.W $0008                          ;84B7AC;
    JSL.L CODE_84A4C6                    ;84B7AF;
    LDA.W $0B9C                          ;84B7B3;
    AND.B #$03                           ;84B7B6;
    BNE CODE_84B828                      ;84B7B8;
    JSL.L CODE_8282D3                    ;84B7BA;
    BNE CODE_84B828                      ;84B7BE;
    INC.W $0000,X                        ;84B7C0;
    LDA.B #$2B                           ;84B7C3;
    STA.W $000A,X                        ;84B7C5;
    LDA.B $11                            ;84B7C8;
    ORA.B #$32                           ;84B7CA;
    STA.W $0011,X                        ;84B7CC;
    LDA.B #$23                           ;84B7CF;
    STA.W $000B,X                        ;84B7D1;
    REP #$20                             ;84B7D4;
    LDA.W #$03B8                         ;84B7D6;
    STA.W $000C,X                        ;84B7D9;
    JSL.L CODE_849086                    ;84B7DC;
    AND.W #$000C                         ;84B7E0;
    TAY                                  ;84B7E3;
    LDA.W DATA8_86C537,Y                 ;84B7E4;
    CLC                                  ;84B7E7;
    ADC.B $05                            ;84B7E8;
    STA.W $0005,X                        ;84B7EA;
    LDA.W DATA8_86C539,Y                 ;84B7ED;
    CLC                                  ;84B7F0;
    ADC.B $08                            ;84B7F1;
    STA.W $0008,X                        ;84B7F3;
    LDA.W #$0040                         ;84B7F6;
    STA.W $001E,X                        ;84B7F9;
    TYA                                  ;84B7FC;
    LSR A                                ;84B7FD;
    TAY                                  ;84B7FE;
    JSL.L CODE_849086                    ;84B7FF;
    AND.W #$00FF                         ;84B803;
    STA.W $0000                          ;84B806;
    LDA.W DATA8_86C311,Y                 ;84B809;
    BPL CODE_84B818                      ;84B80C;
    LDA.W $0000                          ;84B80E;
    EOR.W #$FFFF                         ;84B811;
    INC A                                ;84B814;
    STA.W $0000                          ;84B815;

CODE_84B818:
    LDA.W $0000                          ;84B818;
    CLC                                  ;84B81B;
    ADC.W DATA8_86C311,Y                 ;84B81C;
    STA.W $001A,X                        ;84B81F;
    LDA.W #$02F5                         ;84B822;
    STA.W $001C,X                        ;84B825;

CODE_84B828:
    SEP #$30                             ;84B828;
    RTS                                  ;84B82A;

CODE_84B82B:
    REP #$30                             ;84B82B;
    LDA.B $18                            ;84B82D;
    STA.W $0000                          ;84B82F;
    LDA.B $08                            ;84B832;
    SEC                                  ;84B834;
    SBC.W #$0300                         ;84B835;
    ASL A                                ;84B838;
    TAX                                  ;84B839;
    STA.W $0002                          ;84B83A;
    LDA.W $1E90                          ;84B83D;
    STA.L $7FD1C0                        ;84B840;

CODE_84B844:
    INC A                                ;84B844;
    STA.L $7FD000,X                      ;84B845;
    DEC.W $0000                          ;84B849;
    BNE CODE_84B854                      ;84B84C;
    LDY.B $18                            ;84B84E;
    STY.W $0000                          ;84B850;
    INC A                                ;84B853;

CODE_84B854:
    DEX                                  ;84B854;
    DEX                                  ;84B855;
    BPL CODE_84B844                      ;84B856;
    LDA.B $18                            ;84B858;
    STA.W $0000                          ;84B85A;
    LDX.W $0002                          ;84B85D;
    INX                                  ;84B860;
    INX                                  ;84B861;
    LDA.W $1E90                          ;84B862;

CODE_84B865:
    DEC A                                ;84B865;
    STA.L $7FD000,X                      ;84B866;
    DEC.W $0000                          ;84B86A;
    BNE CODE_84B875                      ;84B86D;
    LDY.B $18                            ;84B86F;
    STY.W $0000                          ;84B871;
    DEC A                                ;84B874;

CODE_84B875:
    INX                                  ;84B875;
    INX                                  ;84B876;
    CPX.W #$01C0                         ;84B877;
    BNE CODE_84B865                      ;84B87A;
    SEP #$30                             ;84B87C;
    RTS                                  ;84B87E;

CODE_84B87F:
    REP #$30                             ;84B87F;
    LDX.B $18                            ;84B881;

CODE_84B883:
    TXA                                  ;84B883;
    LSR A                                ;84B884;
    EOR.W #$FFFF                         ;84B885;
    INC A                                ;84B888;
    STA.L $7FD000,X                      ;84B889;
    TXA                                  ;84B88D;
    CLC                                  ;84B88E;
    ADC.W #$0010                         ;84B88F;
    TAX                                  ;84B892;
    CMP.W #$01C0                         ;84B893;
    BCC CODE_84B883                      ;84B896;
    SEP #$30                             ;84B898;
    RTS                                  ;84B89A;

CODE_84B89B:
    LDA.B $27                            ;84B89B;
    AND.B #$7F                           ;84B89D;
    CMP.B #$18                           ;84B89F;
    RTS                                  ;84B8A1;

DATA8_84B8A2:
    db $0D                               ;84B8A2;

DATA8_84B8A3:
    db $25,$63,$71,$73,$7D,$55,$A7,$A9   ;84B8A3;
    db $AB,$B1,$C1,$C9                   ;84B8AB;
    dw $C1B0,$C230,$C2A9,$C2EA           ;84B8AF;
    dw $C308,$C356,$C394,$C3F2           ;84B8B7;
    dw $C440,$C47E,$C4CC,$C50A           ;84B8BF;
    dw $C548,$C5BA,$C653,$C5BA           ;84B8C7;
    dw $C653,$C566,$C5D8,$C69F           ;84B8CF;
    dw $C6AF,$C6BF,$C6CF,$C71F           ;84B8D7;
    dw $C72F,$C73F,$C74F,$C75F           ;84B8DF;
    dw $C797,$C7A7,$C7B7,$C7C7           ;84B8E7;
    dw $C817,$C820,$C829,$C832           ;84B8EF;
    dw $C169,$C172,$C17B,$C186           ;84B8F7;
    dw $C195,$C19E,$C1A7,$BBCF           ;84B8FF;
    dw $BBDF,$BBEF,$BBFF,$BC0F           ;84B907;
    dw $BC1F,$BC2F,$C859,$C0AE           ;84B90F;
    dw $C0BF,$C0D0,$C0D9,$C0E2           ;84B917;
    dw $BC5F,$BC74,$BC89,$BCB1           ;84B91F;
    dw $BCD9,$BCF5,$BD11,$BD39           ;84B927;
    dw $BD4A,$BD5B,$BD6C,$BDB6           ;84B92F;
    dw $BDFA,$BE3A,$BE74,$BEA8           ;84B937;
    dw $BED8,$BF02,$BF2C,$BF54           ;84B93F;
    dw $BFDB,$C866,$C078,$BA00           ;84B947;
    dw $BA11,$BA22,$BA50,$BA6F           ;84B94F;
    dw $BA8E,$BAA3,$BB93,$BB57           ;84B957;
    dw $BB1B,$BADF,$B98D,$B98D           ;84B95F;
    dw $B99A,$B9A3,$B96F,$B978           ;84B967;
    db $01,$88,$60,$00,$D0,$00,$12,$00   ;84B96F;
    db $00,$01,$84,$70,$00,$D0,$00,$11   ;84B977;
    db $00,$00,$22,$00,$00,$00,$00,$00   ;84B97F;
    db $25,$00,$23,$00,$24,$00,$01,$84   ;84B987;
    db $C0,$01,$00,$02,$09,$00,$00,$6C   ;84B98F;
    db $01,$6D,$01,$01,$AA,$10,$0E,$C0   ;84B997;
    db $02,$12,$00,$00,$01,$AA,$10,$0E   ;84B99F;
    db $C0,$02,$33,$00,$00,$62,$01,$63   ;84B9A7;
    db $01,$64,$01,$63,$01,$64,$01,$63   ;84B9AF;
    db $01,$64,$01,$63,$01,$64,$01,$63   ;84B9B7;
    db $01,$64,$01,$63,$01,$64,$01,$63   ;84B9BF;
    db $01,$64,$01,$63,$01,$64,$01,$63   ;84B9C7;
    db $01,$64,$01,$63,$01,$64,$01,$47   ;84B9CF;
    db $01,$48,$01,$49,$01,$48,$01,$49   ;84B9D7;
    db $01,$48,$01,$49,$01,$48,$01,$49   ;84B9DF;
    db $01,$48,$01,$49,$01,$48,$01,$49   ;84B9E7;
    db $01,$48,$01,$49,$01,$48,$01,$49   ;84B9EF;
    db $01,$48,$01,$49,$01,$48,$01,$49   ;84B9F7;
    db $01,$01,$88,$00,$00,$00,$00,$09   ;84B9FF;
    db $00,$00,$A6,$00,$A7,$00,$A7,$00   ;84BA07;
    db $A8,$00,$01,$88,$00,$00,$00,$00   ;84BA0F;
    db $09,$00,$00,$A5,$00,$00,$00,$00   ;84BA17;
    db $00,$A5,$00,$01,$84,$58,$0B,$68   ;84BA1F;
    db $05,$1E,$00,$84,$58,$0B,$78,$05   ;84BA27;
    db $22,$00,$84,$58,$0B,$98,$05,$26   ;84BA2F;
    db $00,$84,$58,$0B,$A8,$05,$2A,$00   ;84BA37;
    db $00,$10,$00,$AB,$00,$AD,$00,$0F   ;84BA3F;
    db $01,$A1,$00,$A2,$00,$D4,$00,$D5   ;84BA47;
    db $00,$01,$97,$00,$00,$00,$00,$09   ;84BA4F;
    db $00,$00,$58,$02,$58,$02,$58,$02   ;84BA57;
    db $58,$02,$58,$02,$58,$02,$58,$02   ;84BA5F;
    db $58,$02,$58,$02,$58,$02,$58,$02   ;84BA67;
    db $01,$97,$00,$00,$00,$00,$09,$00   ;84BA6F;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84BA77;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84BA7F;
    db $00,$00,$00,$00,$00,$00,$00,$01   ;84BA87;
    db $8C,$50,$14,$D0,$00,$09,$00,$00   ;84BA8F;
    db $04,$00,$04,$00,$04,$00,$04,$00   ;84BA97;
    db $04,$00,$04,$00,$01,$97,$40,$14   ;84BA9F;
    db $10,$00,$10,$00,$97,$B0,$14,$10   ;84BAA7;
    db $00,$26,$00,$00,$59,$02,$59,$02   ;84BAAF;
    db $59,$02,$59,$02,$59,$02,$59,$02   ;84BAB7;
    db $59,$02,$59,$02,$59,$02,$59,$02   ;84BABF;
    db $59,$02,$57,$02,$57,$02,$57,$02   ;84BAC7;
    db $57,$02,$57,$02,$57,$02,$57,$02   ;84BACF;
    db $57,$02,$57,$02,$57,$02,$57,$02   ;84BAD7;
    db $01,$97,$10,$14,$10,$00,$10,$00   ;84BADF;
    db $97,$E0,$14,$10,$00,$26,$00,$00   ;84BAE7;
    db $68,$00,$73,$00,$78,$00,$7E,$00   ;84BAEF;
    db $8C,$00,$9A,$00,$A8,$00,$A8,$00   ;84BAF7;
    db $C0,$00,$C0,$00,$C0,$00,$72,$00   ;84BAFF;
    db $73,$00,$7D,$00,$8B,$00,$99,$00   ;84BB07;
    db $A7,$00,$A8,$00,$A8,$00,$CB,$00   ;84BB0F;
    db $CB,$00,$CB,$00,$01,$97,$20,$14   ;84BB17;
    db $10,$00,$10,$00,$97,$D0,$14,$10   ;84BB1F;
    db $00,$26,$00,$00,$69,$00,$74,$00   ;84BB27;
    db $78,$00,$7F,$00,$8D,$00,$9B,$00   ;84BB2F;
    db $A9,$00,$B5,$00,$C1,$00,$CC,$00   ;84BB37;
    db $D5,$00,$6B,$00,$74,$00,$7D,$00   ;84BB3F;
    db $8A,$00,$98,$00,$A6,$00,$B4,$00   ;84BB47;
    db $BF,$00,$CA,$00,$D4,$00,$DB,$00   ;84BB4F;
    db $01,$97,$30,$14,$10,$00,$10,$00   ;84BB57;
    db $97,$C0,$14,$10,$00,$26,$00,$00   ;84BB5F;
    db $6A,$00,$74,$00,$78,$00,$80,$00   ;84BB67;
    db $8E,$00,$9C,$00,$AA,$00,$B6,$00   ;84BB6F;
    db $C2,$00,$CD,$00,$CD,$00,$6A,$00   ;84BB77;
    db $74,$00,$7D,$00,$89,$00,$97,$00   ;84BB7F;
    db $A5,$00,$B3,$00,$BE,$00,$C9,$00   ;84BB87;
    db $D3,$00,$D3,$00,$01,$97,$40,$14   ;84BB8F;
    db $10,$00,$10,$00,$97,$B0,$14,$10   ;84BB97;
    db $00,$26,$00,$00,$6B,$00,$74,$00   ;84BB9F;
    db $78,$00,$81,$00,$8F,$00,$9D,$00   ;84BBA7;
    db $AB,$00,$B7,$00,$C3,$00,$CE,$00   ;84BBAF;
    db $D6,$00,$69,$00,$74,$00,$7D,$00   ;84BBB7;
    db $88,$00,$96,$00,$A4,$00,$B2,$00   ;84BBBF;
    db $BD,$00,$C8,$00,$D2,$00,$DA,$00   ;84BBC7;
    db $01,$84,$00,$00,$00,$00,$70,$00   ;84BBCF;
    db $84,$00,$00,$10,$00,$74,$00,$00   ;84BBD7;
    db $01,$84,$00,$06,$A0,$01,$68,$00   ;84BBDF;
    db $84,$00,$06,$B0,$01,$6C,$00,$00   ;84BBE7;
    db $01,$84,$00,$06,$80,$01,$6C,$00   ;84BBEF;
    db $84,$00,$06,$90,$01,$60,$00,$00   ;84BBF7;
    db $01,$84,$00,$06,$60,$01,$5C,$00   ;84BBFF;
    db $84,$00,$06,$70,$01,$54,$00,$00   ;84BC07;
    db $01,$84,$00,$06,$40,$01,$48,$00   ;84BC0F;
    db $84,$00,$06,$50,$01,$4C,$00,$00   ;84BC17;
    db $01,$84,$00,$06,$20,$01,$3C,$00   ;84BC1F;
    db $84,$00,$06,$30,$01,$3C,$00,$00   ;84BC27;
    db $01,$84,$00,$06,$00,$01,$2C,$00   ;84BC2F;
    db $84,$00,$06,$10,$01,$2C,$00,$00   ;84BC37;
    db $16,$03,$17,$03,$18,$03,$19,$03   ;84BC3F;
    db $43,$00,$44,$00,$55,$00,$55,$00   ;84BC47;
    db $68,$00,$70,$00,$6E,$00,$48,$00   ;84BC4F;
    db $48,$00,$4C,$00,$48,$00,$48,$00   ;84BC57;
    db $01,$8D,$00,$00,$00,$00,$09,$00   ;84BC5F;
    db $00,$0A,$00,$0E,$00,$0E,$00,$14   ;84BC67;
    db $00,$0E,$00,$14,$00,$01,$8D,$00   ;84BC6F;
    db $00,$00,$00,$09,$00,$00,$2B,$00   ;84BC77;
    db $2D,$00,$2D,$00,$30,$00,$2D,$00   ;84BC7F;
    db $30,$00,$01,$8D,$00,$00,$00,$00   ;84BC87;
    db $10,$00,$8D,$10,$00,$00,$00,$1C   ;84BC8F;
    db $00,$00,$0B,$00,$00,$00,$00,$00   ;84BC97;
    db $15,$00,$00,$00,$15,$00,$0C,$00   ;84BC9F;
    db $0F,$00,$0E,$00,$16,$00,$0E,$00   ;84BCA7;
    db $16,$00,$01,$8D,$00,$00,$00,$00   ;84BCAF;
    db $10,$00,$8D,$10,$00,$00,$00,$1C   ;84BCB7;
    db $00,$00,$0D,$00,$10,$00,$12,$00   ;84BCBF;
    db $17,$00,$11,$00,$18,$00,$0C,$00   ;84BCC7;
    db $11,$00,$13,$00,$18,$00,$11,$00   ;84BCCF;
    db $18,$00,$01,$8D,$00,$00,$00,$00   ;84BCD7;
    db $10,$00,$8D,$10,$00,$00,$00,$F4   ;84BCDF;
    db $FF,$00,$0D,$00,$10,$00,$12,$00   ;84BCE7;
    db $17,$00,$19,$00,$17,$00,$01,$8D   ;84BCEF;
    db $00,$00,$00,$00,$CC,$FF,$8D,$10   ;84BCF7;
    db $00,$00,$00,$10,$00,$00,$0D,$00   ;84BCFF;
    db $19,$00,$2E,$00,$17,$00,$19,$00   ;84BD07;
    db $17,$00,$01,$8D,$00,$00,$00,$00   ;84BD0F;
    db $10,$00,$8D,$10,$00,$00,$00,$1C   ;84BD17;
    db $00,$00,$29,$00,$2C,$00,$2D,$00   ;84BD1F;
    db $2F,$00,$2D,$00,$2F,$00,$2A,$00   ;84BD27;
    db $00,$00,$00,$00,$15,$00,$00,$00   ;84BD2F;
    db $15,$00,$01,$89,$00,$00,$00,$00   ;84BD37;
    db $09,$00,$00,$38,$00,$3A,$00,$3A   ;84BD3F;
    db $00,$3D,$00,$01,$89,$00,$00,$00   ;84BD47;
    db $00,$09,$00,$00,$39,$00,$3B,$00   ;84BD4F;
    db $3B,$00,$3D,$00,$01,$87,$00,$00   ;84BD57;
    db $00,$00,$09,$00,$00,$00,$00,$00   ;84BD5F;
    db $00,$00,$00,$00,$00,$01,$9F,$D0   ;84BD67;
    db $17,$20,$00,$10,$00,$9D,$E0,$17   ;84BD6F;
    db $30,$00,$2E,$00,$00,$3B,$01,$C3   ;84BD77;
    db $01,$3D,$01,$3D,$01,$3D,$01,$3D   ;84BD7F;
    db $01,$3D,$01,$3D,$01,$C4,$01,$00   ;84BD87;
    db $00,$C3,$01,$00,$00,$CE,$01,$6D   ;84BD8F;
    db $01,$7A,$01,$00,$00,$40,$01,$41   ;84BD97;
    db $01,$C3,$01,$3D,$01,$3D,$01,$3D   ;84BD9F;
    db $01,$C5,$01,$00,$00,$00,$00,$C4   ;84BDA7;
    db $01,$CF,$01,$6E,$01,$7B,$01,$01   ;84BDAF;
    db $9F,$C0,$17,$20,$00,$10,$00,$97   ;84BDB7;
    db $F0,$17,$60,$00,$2E,$00,$00,$39   ;84BDBF;
    db $01,$3C,$01,$3F,$01,$3D,$01,$3D   ;84BDC7;
    db $01,$3D,$01,$3D,$01,$C5,$01,$C3   ;84BDCF;
    db $01,$00,$00,$3D,$01,$00,$00,$CF   ;84BDD7;
    db $01,$6C,$01,$5F,$00,$00,$00,$3D   ;84BDDF;
    db $01,$3D,$01,$3D,$01,$3D,$01,$00   ;84BDE7;
    db $00,$00,$00,$C5,$01,$CE,$01,$6F   ;84BDEF;
    db $01,$7C,$01,$01,$9B,$B0,$17,$40   ;84BDF7;
    db $00,$10,$00,$97,$00,$18,$60,$00   ;84BDFF;
    db $2A,$00,$00,$39,$01,$3C,$01,$3F   ;84BE07;
    db $01,$3D,$01,$3D,$01,$C4,$01,$C6   ;84BE0F;
    db $01,$00,$00,$3D,$01,$00,$00,$CE   ;84BE17;
    db $01,$6C,$01,$5F,$00,$00,$00,$8E   ;84BE1F;
    db $01,$3D,$01,$3D,$01,$3D,$01,$00   ;84BE27;
    db $00,$C4,$01,$3D,$01,$CF,$01,$AF   ;84BE2F;
    db $01,$AF,$01,$01,$97,$A0,$17,$60   ;84BE37;
    db $00,$10,$00,$95,$10,$18,$70,$00   ;84BE3F;
    db $26,$00,$00,$39,$01,$3C,$01,$3F   ;84BE47;
    db $01,$C3,$01,$3D,$01,$C3,$01,$C6   ;84BE4F;
    db $01,$00,$00,$CD,$01,$86,$01,$E8   ;84BE57;
    db $01,$8B,$01,$C3,$01,$3D,$01,$3D   ;84BE5F;
    db $01,$00,$00,$3D,$01,$3D,$01,$5F   ;84BE67;
    db $01,$6E,$01,$7B,$01,$01,$93,$90   ;84BE6F;
    db $17,$80,$00,$10,$00,$93,$20,$18   ;84BE77;
    db $80,$00,$22,$00,$00,$39,$01,$3C   ;84BE7F;
    db $01,$3F,$01,$3D,$01,$3D,$01,$C3   ;84BE87;
    db $01,$CC,$01,$85,$01,$E7,$01,$00   ;84BE8F;
    db $00,$3D,$01,$3D,$01,$00,$00,$3D   ;84BE97;
    db $01,$3D,$01,$5F,$01,$6F,$01,$7C   ;84BE9F;
    db $01,$01,$8F,$80,$17,$A0,$00,$10   ;84BEA7;
    db $00,$93,$30,$18,$80,$00,$1E,$00   ;84BEAF;
    db $00,$39,$01,$3C,$01,$3F,$01,$3D   ;84BEB7;
    db $01,$77,$01,$84,$01,$E6,$01,$00   ;84BEBF;
    db $00,$3D,$01,$3D,$01,$C4,$01,$C6   ;84BEC7;
    db $01,$3D,$01,$CE,$01,$AF,$01,$AF   ;84BECF;
    db $01,$01,$8B,$70,$17,$C0,$00,$10   ;84BED7;
    db $00,$91,$40,$18,$90,$00,$1A,$00   ;84BEDF;
    db $00,$39,$01,$3C,$01,$76,$01,$83   ;84BEE7;
    db $01,$C6,$02,$8E,$01,$3D,$01,$C5   ;84BEEF;
    db $01,$3D,$01,$3D,$01,$CF,$01,$6E   ;84BEF7;
    db $01,$7B,$01,$01,$8B,$60,$17,$C0   ;84BEFF;
    db $00,$10,$00,$91,$50,$18,$90,$00   ;84BF07;
    db $1A,$00,$00,$00,$00,$00,$00,$CB   ;84BF0F;
    db $01,$D3,$01,$E5,$01,$8B,$01,$3D   ;84BF17;
    db $01,$3D,$01,$3D,$01,$C6,$01,$5F   ;84BF1F;
    db $01,$6F,$01,$7C,$01,$01,$8B,$50   ;84BF27;
    db $17,$C0,$00,$10,$00,$8F,$60,$18   ;84BF2F;
    db $A0,$00,$1A,$00,$00,$00,$00,$00   ;84BF37;
    db $00,$CA,$01,$81,$01,$E4,$01,$8E   ;84BF3F;
    db $01,$3D,$01,$3D,$01,$3D,$01,$CE   ;84BF47;
    db $01,$6C,$01,$5F,$00,$01,$90,$D0   ;84BF4F;
    db $16,$C0,$00,$25,$00,$90,$D0,$16   ;84BF57;
    db $D0,$00,$25,$00,$AA,$00,$16,$E0   ;84BF5F;
    db $00,$25,$00,$A2,$40,$16,$F0,$00   ;84BF67;
    db $4F,$00,$96,$A0,$16,$00,$01,$71   ;84BF6F;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84BF77;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84BF7F;
    db $00,$00,$B8,$01,$B9,$01,$2F,$01   ;84BF87;
    db $BA,$01,$2F,$01,$B8,$01,$BB,$01   ;84BF8F;
    db $BC,$01,$70,$01,$C7,$01,$C8,$01   ;84BF97;
    db $72,$01,$C9,$01,$00,$00,$00,$00   ;84BF9F;
    db $00,$00,$00,$00,$BD,$01,$BE,$01   ;84BFA7;
    db $BF,$01,$BF,$01,$BF,$01,$C0,$01   ;84BFAF;
    db $C1,$01,$C2,$01,$D0,$01,$D1,$01   ;84BFB7;
    db $D1,$01,$D2,$01,$80,$01,$D5,$01   ;84BFBF;
    db $D6,$01,$D7,$01,$D8,$01,$D8,$01   ;84BFC7;
    db $D9,$01,$E0,$01,$E1,$01,$E1,$01   ;84BFCF;
    db $E2,$01,$E3,$01,$01,$8F,$70,$18   ;84BFD7;
    db $A0,$00,$4F,$00,$8D,$80,$18,$B0   ;84BFDF;
    db $00,$5D,$00,$8D,$90,$18,$B0,$00   ;84BFE7;
    db $6B,$00,$91,$A0,$18,$B0,$00,$79   ;84BFEF;
    db $00,$93,$B0,$18,$A0,$00,$89,$00   ;84BFF7;
    db $93,$C0,$18,$A0,$00,$89,$00,$95   ;84BFFF;
    db $D0,$18,$90,$00,$89,$00,$93,$E0   ;84C007;
    db $18,$80,$00,$89,$00,$83,$F0,$18   ;84C00F;
    db $80,$00,$89,$00,$83,$F0,$18,$00   ;84C017;
    db $01,$89,$00,$92,$10,$18,$10,$01   ;84C01F;
    db $89,$00,$00,$8B,$01,$C3,$01,$D4   ;84C027;
    db $01,$3D,$01,$CF,$01,$6C,$01,$5F   ;84C02F;
    db $00,$00,$00,$00,$00,$3D,$01,$3D   ;84C037;
    db $01,$D4,$01,$00,$00,$00,$00,$00   ;84C03F;
    db $00,$00,$00,$D4,$01,$3D,$01,$00   ;84C047;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C04F;
    db $00,$00,$00,$D4,$01,$00,$00,$00   ;84C057;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C05F;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C067;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C06F;
    db $00,$01,$8C,$00,$00,$00,$00,$1E   ;84C077;
    db $00,$8C,$00,$00,$10,$00,$1E,$00   ;84C07F;
    db $8C,$00,$00,$20,$00,$1E,$00,$8C   ;84C087;
    db $00,$00,$30,$00,$2A,$00,$00,$00   ;84C08F;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C097;
    db $00,$00,$00,$9A,$02,$9B,$02,$9C   ;84C09F;
    db $02,$9D,$02,$9E,$02,$9F,$02,$01   ;84C0A7;
    db $88,$00,$00,$00,$00,$09,$00,$00   ;84C0AF;
    db $86,$01,$87,$01,$88,$01,$89,$01   ;84C0B7;
    db $01,$88,$00,$00,$00,$00,$09,$00   ;84C0BF;
    db $00,$82,$01,$83,$01,$84,$01,$85   ;84C0C7;
    db $01,$01,$AA,$10,$1E,$C0,$02,$1B   ;84C0CF;
    db $00,$00,$01,$AA,$10,$1E,$C0,$02   ;84C0D7;
    db $3C,$00,$00,$01,$AA,$10,$1E,$C0   ;84C0DF;
    db $02,$5D,$00,$00,$44,$00,$47,$00   ;84C0E7;
    db $48,$00,$45,$00,$46,$00,$47,$00   ;84C0EF;
    db $48,$00,$45,$00,$46,$00,$47,$00   ;84C0F7;
    db $48,$00,$45,$00,$46,$00,$47,$00   ;84C0FF;
    db $48,$00,$45,$00,$46,$00,$47,$00   ;84C107;
    db $48,$00,$45,$00,$7B,$00,$7E,$00   ;84C10F;
    db $81,$00,$95,$00,$7F,$00,$80,$00   ;84C117;
    db $81,$00,$95,$00,$7F,$00,$80,$00   ;84C11F;
    db $81,$00,$95,$00,$7F,$00,$80,$00   ;84C127;
    db $81,$00,$95,$00,$7F,$00,$80,$00   ;84C12F;
    db $81,$00,$95,$00,$7F,$00,$95,$02   ;84C137;
    db $0C,$00,$2A,$00,$2B,$00,$0B,$00   ;84C13F;
    db $07,$00,$2A,$00,$2B,$00,$0B,$00   ;84C147;
    db $07,$00,$2A,$00,$2B,$00,$0B,$00   ;84C14F;
    db $07,$00,$2A,$00,$2B,$00,$0B,$00   ;84C157;
    db $07,$00,$2A,$00,$2B,$00,$0B,$00   ;84C15F;
    db $06,$00,$01,$83,$00,$0C,$90,$03   ;84C167;
    db $1B,$00,$00,$01,$83,$00,$0C,$A0   ;84C16F;
    db $03,$12,$00,$00,$01,$83,$00,$0C   ;84C177;
    db $B0,$03,$09,$00,$00,$C6,$00,$01   ;84C17F;
    db $87,$F0,$0C,$90,$03,$09,$00,$00   ;84C187;
    db $84,$00,$8A,$00,$8A,$00,$01,$83   ;84C18F;
    db $50,$0B,$90,$03,$EF,$FF,$00,$01   ;84C197;
    db $83,$50,$0B,$A0,$03,$E6,$FF,$00   ;84C19F;
    db $01,$83,$50,$0B,$B0,$03,$DD,$FF   ;84C1A7;
    db $00,$01,$89,$00,$00,$00,$00,$1E   ;84C1AF;
    db $00,$9E,$10,$00,$10,$00,$26,$00   ;84C1B7;
    db $9E,$10,$00,$20,$00,$44,$00,$9E   ;84C1BF;
    db $10,$00,$30,$00,$62,$00,$00,$E5   ;84C1C7;
    db $02,$58,$01,$5D,$01,$62,$01,$13   ;84C1CF;
    db $03,$00,$00,$00,$00,$00,$00,$00   ;84C1D7;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C1DF;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C1E7;
    db $00,$0C,$03,$68,$01,$15,$03,$00   ;84C1EF;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C1F7;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C1FF;
    db $00,$00,$00,$00,$00,$00,$00,$0E   ;84C207;
    db $03,$69,$01,$17,$03,$00,$00,$00   ;84C20F;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C217;
    db $00,$00,$00,$00,$00,$00,$00,$00   ;84C21F;
    db $00,$00,$00,$00,$00,$10,$03,$6A   ;84C227;
    db $01,$01,$9C,$00,$00,$00,$00,$25   ;84C22F;
    db $00,$9C,$00,$00,$10,$00,$41,$00   ;84C237;
    db $98,$10,$00,$20,$00,$5D,$00,$82   ;84C23F;
    db $10,$00,$30,$00,$75,$00,$82,$C0   ;84C247;
    db $00,$30,$00,$77,$00,$00,$0C,$03   ;84C24F;
    db $0D,$03,$18,$03,$18,$03,$18,$03   ;84C257;
    db $18,$03,$18,$03,$19,$03,$1A,$03   ;84C25F;
    db $19,$03,$1B,$03,$19,$03,$12,$03   ;84C267;
    db $13,$03,$0E,$03,$0F,$03,$1C,$03   ;84C26F;
    db $E9,$02,$E9,$02,$E9,$02,$E9,$02   ;84C277;
    db $E9,$02,$E9,$02,$E9,$02,$1C,$03   ;84C27F;
    db $E9,$02,$14,$03,$15,$03,$11,$03   ;84C287;
    db $1D,$03,$1E,$03,$E8,$02,$E8,$02   ;84C28F;
    db $E8,$02,$E8,$02,$E8,$02,$E8,$02   ;84C297;
    db $1D,$03,$1E,$03,$16,$03,$1F,$03   ;84C29F;
    db $E7,$02,$01,$8C,$10,$00,$00,$00   ;84C2A7;
    db $17,$00,$90,$00,$00,$10,$00,$23   ;84C2AF;
    db $00,$8E,$10,$00,$20,$00,$33,$00   ;84C2B7;
    db $00,$EB,$02,$EC,$02,$ED,$02,$EE   ;84C2BF;
    db $02,$EF,$02,$F0,$02,$F1,$02,$F2   ;84C2C7;
    db $02,$F3,$02,$F4,$02,$F5,$02,$F6   ;84C2CF;
    db $02,$F7,$02,$F8,$02,$F9,$02,$FA   ;84C2D7;
    db $02,$FB,$02,$FC,$02,$FD,$02,$FE   ;84C2DF;
    db $02,$FF,$02,$01,$88,$00,$00,$00   ;84C2E7;
    db $00,$3C,$00,$88,$00,$00,$10,$00   ;84C2EF;
    db $44,$00,$88,$00,$00,$20,$00,$4C   ;84C2F7;
    db $00,$88,$00,$00,$30,$00,$54,$00   ;84C2FF;
    db $00,$01,$88,$00,$00,$00,$00,$3E   ;84C307;
    db $00,$88,$00,$00,$10,$00,$46,$00   ;84C30F;
    db $88,$00,$00,$20,$00,$2E,$00,$88   ;84C317;
    db $00,$00,$30,$00,$36,$00,$00,$84   ;84C31F;
    db $01,$E6,$02,$00,$00,$00,$00,$39   ;84C327;
    db $03,$13,$03,$00,$00,$00,$00,$5D   ;84C32F;
    db $01,$15,$03,$00,$00,$00,$00,$62   ;84C337;
    db $01,$17,$03,$00,$00,$00,$00,$BA   ;84C33F;
    db $00,$E6,$02,$00,$00,$00,$00,$58   ;84C347;
    db $01,$13,$03,$00,$00,$00,$00,$01   ;84C34F;
    db $88,$00,$00,$00,$00,$1E,$00,$88   ;84C357;
    db $00,$00,$10,$00,$26,$00,$88,$00   ;84C35F;
    db $00,$20,$00,$2E,$00,$88,$00,$00   ;84C367;
    db $30,$00,$36,$00,$00,$00,$00,$00   ;84C36F;
    db $00,$E3,$02,$E4,$02,$00,$00,$00   ;84C377;
    db $00,$0C,$03,$68,$01,$00,$00,$00   ;84C37F;
    db $00,$0E,$03,$69,$01,$00,$00,$00   ;84C387;
    db $00,$10,$03,$6A,$01,$01,$90,$00   ;84C38F;
    db $00,$00,$00,$1E,$00,$90,$00,$00   ;84C397;
    db $10,$00,$2E,$00,$90,$00,$00,$20   ;84C39F;
    db $00,$3E,$00,$90,$00,$00,$30,$00   ;84C3A7;
    db $4E,$00,$00,$E5,$02,$E6,$02,$00   ;84C3AF;
    db $00,$00,$00,$00,$00,$00,$00,$E3   ;84C3B7;
    db $02,$E4,$02,$58,$01,$13,$03,$00   ;84C3BF;
    db $00,$00,$00,$00,$00,$00,$00,$0C   ;84C3C7;
    db $03,$68,$01,$5D,$01,$15,$03,$00   ;84C3CF;
    db $00,$00,$00,$00,$00,$00,$00,$0E   ;84C3D7;
    db $03,$69,$01,$62,$01,$17,$03,$00   ;84C3DF;
    db $00,$00,$00,$00,$00,$00,$00,$10   ;84C3E7;
    db $03,$6A,$01,$01,$8C,$00,$00,$00   ;84C3EF;
    db $00,$1E,$00,$8C,$00,$00,$10,$00   ;84C3F7;
    db $2A,$00,$8C,$00,$00,$20,$00,$36   ;84C3FF;
    db $00,$8C,$00,$00,$30,$00,$42,$00   ;84C407;
    db $00,$E5,$02,$E6,$02,$00,$00,$00   ;84C40F;
    db $00,$E3,$02,$E4,$02,$58,$01,$13   ;84C417;
    db $03,$00,$00,$00,$00,$0C,$03,$0D   ;84C41F;
    db $03,$5D,$01,$15,$03,$00,$00,$00   ;84C427;
    db $00,$0E,$03,$0F,$03,$62,$01,$17   ;84C42F;
    db $03,$00,$00,$00,$00,$10,$03,$11   ;84C437;
    db $03,$01,$88,$00,$00,$00,$00,$1E   ;84C43F;
    db $00,$88,$00,$00,$10,$00,$26,$00   ;84C447;
    db $88,$00,$00,$20,$00,$2E,$00,$88   ;84C44F;
    db $00,$00,$30,$00,$36,$00,$00,$E5   ;84C457;
    db $02,$E6,$02,$E3,$02,$E4,$02,$58   ;84C45F;
    db $01,$13,$03,$0C,$03,$0D,$03,$5D   ;84C467;
    db $01,$15,$03,$0E,$03,$0F,$03,$62   ;84C46F;
    db $01,$17,$03,$10,$03,$11,$03,$01   ;84C477;
    db $8C,$20,$00,$00,$00,$1E,$00,$8C   ;84C47F;
    db $20,$00,$10,$00,$2A,$00,$8C,$20   ;84C487;
    db $00,$20,$00,$36,$00,$8C,$20,$00   ;84C48F;
    db $30,$00,$42,$00,$00,$E5,$02,$E6   ;84C497;
    db $02,$00,$00,$00,$00,$E3,$02,$E4   ;84C49F;
    db $02,$12,$03,$13,$03,$00,$00,$00   ;84C4A7;
    db $00,$0C,$03,$68,$01,$14,$03,$15   ;84C4AF;
    db $03,$00,$00,$00,$00,$0E,$03,$69   ;84C4B7;
    db $01,$16,$03,$17,$03,$00,$00,$00   ;84C4BF;
    db $00,$10,$03,$6A,$01,$01,$88,$20   ;84C4C7;
    db $00,$00,$00,$1E,$00,$88,$20,$00   ;84C4CF;
    db $10,$00,$26,$00,$88,$20,$00,$20   ;84C4D7;
    db $00,$2E,$00,$88,$20,$00,$30,$00   ;84C4DF;
    db $36,$00,$00,$E5,$02,$E6,$02,$E3   ;84C4E7;
    db $02,$E4,$02,$12,$03,$13,$03,$0C   ;84C4EF;
    db $03,$0D,$03,$14,$03,$15,$03,$0E   ;84C4F7;
    db $03,$0F,$03,$16,$03,$17,$03,$10   ;84C4FF;
    db $03,$11,$03,$01,$88,$40,$00,$00   ;84C507;
    db $00,$1E,$00,$88,$40,$00,$10,$00   ;84C50F;
    db $26,$00,$88,$40,$00,$20,$00,$2E   ;84C517;
    db $00,$88,$40,$00,$30,$00,$36,$00   ;84C51F;
    db $00,$E5,$02,$E6,$02,$E3,$02,$E4   ;84C527;
    db $02,$12,$03,$13,$03,$0C,$03,$68   ;84C52F;
    db $01,$14,$03,$15,$03,$0E,$03,$69   ;84C537;
    db $01,$16,$03,$17,$03,$10,$03,$6A   ;84C53F;
    db $01,$01,$8A,$10,$00,$10,$00,$37   ;84C547;
    db $01,$90,$00,$00,$20,$00,$37,$01   ;84C54F;
    db $90,$00,$00,$30,$00,$37,$01,$8C   ;84C557;
    db $00,$00,$40,$00,$37,$01,$00,$01   ;84C55F;
    db $8A,$10,$00,$10,$00,$1E,$00,$90   ;84C567;
    db $00,$00,$20,$00,$28,$00,$90,$00   ;84C56F;
    db $00,$30,$00,$38,$00,$8C,$00,$00   ;84C577;
    db $40,$00,$48,$00,$00,$73,$00,$88   ;84C57F;
    db $00,$89,$00,$8A,$00,$A9,$00,$74   ;84C587;
    db $00,$75,$00,$76,$00,$77,$00,$F6   ;84C58F;
    db $00,$F7,$00,$F8,$00,$F9,$00,$84   ;84C597;
    db $00,$85,$00,$86,$00,$87,$00,$06   ;84C59F;
    db $01,$07,$01,$08,$01,$09,$01,$01   ;84C5A7;
    db $01,$02,$01,$03,$01,$04,$01,$05   ;84C5AF;
    db $01,$FA,$00,$01,$8E,$60,$00,$00   ;84C5B7;
    db $00,$35,$00,$9C,$10,$00,$10,$00   ;84C5BF;
    db $45,$00,$9C,$10,$00,$20,$00,$63   ;84C5C7;
    db $00,$9A,$20,$00,$30,$00,$7F,$00   ;84C5CF;
    db $00,$02,$86,$60,$0B,$10,$00,$A7   ;84C5D7;
    db $00,$8E,$60,$0B,$20,$00,$17,$00   ;84C5DF;
    db $9E,$00,$0B,$30,$00,$25,$00,$00   ;84C5E7;
    db $39,$02,$3A,$02,$04,$02,$3B,$02   ;84C5EF;
    db $3C,$02,$3C,$02,$3C,$02,$0A,$02   ;84C5F7;
    db $0B,$02,$0C,$02,$3D,$02,$3E,$02   ;84C5FF;
    db $0F,$02,$3F,$02,$11,$02,$12,$02   ;84C607;
    db $13,$02,$13,$02,$13,$02,$14,$02   ;84C60F;
    db $15,$02,$16,$02,$17,$02,$18,$02   ;84C617;
    db $40,$02,$41,$02,$1B,$02,$1C,$02   ;84C61F;
    db $1D,$02,$1E,$02,$1F,$02,$20,$02   ;84C627;
    db $42,$02,$43,$02,$23,$02,$24,$02   ;84C62F;
    db $25,$02,$44,$02,$45,$02,$46,$02   ;84C637;
    db $47,$02,$48,$02,$49,$02,$4A,$02   ;84C63F;
    db $4B,$02,$4C,$02,$4D,$02,$4E,$02   ;84C647;
    db $4F,$02,$00,$02,$02,$86,$60,$00   ;84C64F;
    db $00,$00,$2C,$00,$8E,$60,$00,$10   ;84C657;
    db $00,$2C,$00,$9E,$00,$00,$20,$00   ;84C65F;
    db $2C,$00,$9E,$00,$00,$30,$00,$2C   ;84C667;
    db $00,$9A,$20,$00,$40,$00,$2C,$00   ;84C66F;
    db $8C,$30,$00,$50,$00,$2C,$00,$00   ;84C677;
    db $01,$00,$01,$00,$01,$00,$01,$00   ;84C67F;
    db $01,$00,$01,$00,$01,$00,$01,$00   ;84C687;
    db $01,$00,$01,$00,$01,$00,$01,$00   ;84C68F;
    db $01,$00,$01,$00,$01,$00,$01,$00   ;84C697;
    db $01,$88,$00,$00,$00,$00,$40,$00   ;84C69F;
    db $88,$00,$00,$10,$00,$48,$00,$00   ;84C6A7;
    db $01,$88,$00,$00,$00,$00,$40,$00   ;84C6AF;
    db $88,$00,$00,$10,$00,$48,$00,$00   ;84C6B7;
    db $01,$88,$00,$00,$00,$00,$40,$00   ;84C6BF;
    db $88,$00,$00,$10,$00,$48,$00,$00   ;84C6C7;
    db $01,$88,$00,$00,$00,$00,$40,$00   ;84C6CF;
    db $88,$00,$00,$10,$00,$48,$00,$00   ;84C6D7;
    db $BA,$01,$BC,$01,$C2,$01,$C4,$01   ;84C6DF;
    db $BB,$01,$BD,$01,$C3,$01,$C5,$01   ;84C6E7;
    db $BE,$01,$C0,$01,$BE,$01,$C0,$01   ;84C6EF;
    db $BF,$01,$C1,$01,$BF,$01,$C1,$01   ;84C6F7;
    db $C2,$01,$C4,$01,$BA,$01,$BC,$01   ;84C6FF;
    db $C3,$01,$C5,$01,$BB,$01,$BD,$01   ;84C707;
    db $BE,$01,$C0,$01,$BE,$01,$C0,$01   ;84C70F;
    db $BF,$01,$C1,$01,$BF,$01,$C1,$01   ;84C717;
    db $01,$83,$F0,$FF,$00,$00,$B8,$00   ;84C71F;
    db $83,$00,$00,$00,$00,$D8,$00,$00   ;84C727;
    db $01,$A1,$E0,$11,$C0,$01,$50,$FF   ;84C72F;
    db $A1,$F0,$11,$C0,$01,$50,$FF,$00   ;84C737;
    db $01,$9F,$C0,$13,$C0,$01,$30,$00   ;84C73F;
    db $9F,$D0,$13,$C0,$01,$30,$00,$00   ;84C747;
    db $01,$9B,$A0,$14,$C0,$01,$20,$00   ;84C74F;
    db $9B,$B0,$14,$C0,$01,$20,$00,$00   ;84C757;
    db $01,$9D,$40,$16,$C0,$01,$10,$00   ;84C75F;
    db $9D,$50,$16,$C0,$01,$10,$00,$00   ;84C767;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C76F;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C777;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C77F;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C787;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C78F;
    db $01,$A1,$E0,$11,$C0,$01,$40,$00   ;84C797;
    db $A1,$F0,$11,$C0,$01,$60,$00,$00   ;84C79F;
    db $01,$9F,$C0,$13,$C0,$01,$30,$00   ;84C7A7;
    db $9F,$D0,$13,$C0,$01,$50,$00,$00   ;84C7AF;
    db $01,$9B,$A0,$14,$C0,$01,$20,$00   ;84C7B7;
    db $9B,$B0,$14,$C0,$01,$40,$00,$00   ;84C7BF;
    db $01,$9D,$40,$16,$C0,$01,$10,$00   ;84C7C7;
    db $9D,$50,$16,$C0,$01,$30,$00,$00   ;84C7CF;
    db $33,$00,$67,$01,$67,$01,$67,$01   ;84C7D7;
    db $67,$01,$67,$01,$67,$01,$67,$01   ;84C7DF;
    db $67,$01,$67,$01,$67,$01,$67,$01   ;84C7E7;
    db $67,$01,$67,$01,$67,$01,$67,$01   ;84C7EF;
    db $34,$00,$68,$01,$68,$01,$68,$01   ;84C7F7;
    db $68,$01,$68,$01,$68,$01,$68,$01   ;84C7FF;
    db $68,$01,$68,$01,$68,$01,$68,$01   ;84C807;
    db $68,$01,$68,$01,$68,$01,$68,$01   ;84C80F;
    db $01,$9C,$00,$15,$C0,$02,$24,$00   ;84C817;
    db $00,$01,$9C,$00,$15,$D0,$02,$1B   ;84C81F;
    db $00,$00,$01,$9C,$00,$15,$E0,$02   ;84C827;
    db $12,$00,$00,$01,$9C,$00,$15,$F0   ;84C82F;
    db $02,$09,$00,$00,$4A,$01,$4A,$01   ;84C837;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C83F;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C847;
    db $4A,$01,$4A,$01,$4A,$01,$4A,$01   ;84C84F;
    db $4A,$01,$01,$84,$C0,$14,$00,$0A   ;84C857;
    db $09,$00,$00,$60,$03,$61,$03,$01   ;84C85F;
    db $89,$00,$05,$20,$11,$10,$00,$89   ;84C867;
    db $10,$05,$20,$11,$18,$00,$00,$70   ;84C86F;
    db $03,$72,$03,$74,$03,$E4,$00,$71   ;84C877;
    db $03,$73,$03,$75,$03,$E8,$00       ;84C87F;

DATA8_84C886:
    db $CC,$C8,$F8,$CA,$51,$CB,$5F,$CB   ;84C886;
    db $79,$CB,$93,$CB,$AC,$CB,$BE,$CB   ;84C88E;
    db $D6,$CB,$EF,$CB,$0A,$CC,$20,$CC   ;84C896;
    db $8C,$CE,$1C,$CF,$A2,$CF,$4A,$D0   ;84C89E;
    db $92,$D5,$89,$D9,$83,$DA,$A5,$DB   ;84C8A6;
    db $76,$DC,$AA,$DC,$DA,$DC,$FE,$DC   ;84C8AE;
    db $7D,$DD,$F8,$DD,$49,$DE,$BE,$DE   ;84C8B6;
    db $83,$DF,$64,$E0,$5E,$E1,$42,$E2   ;84C8BE;
    db $C7,$E8,$21,$EB,$B1,$EC,$8A,$89   ;84C8C6;
    db $86,$08,$C0,$88,$04,$8A,$49,$20   ;84C8CE;
    db $67,$75,$65,$73,$73,$20,$49,$27   ;84C8D6;
    db $6D,$80,$80,$6E,$6F,$74,$20,$70   ;84C8DE;
    db $6F,$77,$65,$72,$66,$75,$6C,$20   ;84C8E6;
    db $65,$6E,$6F,$75,$67,$68,$80,$80   ;84C8EE;
    db $74,$6F,$20,$64,$65,$66,$65,$61   ;84C8F6;
    db $74,$20,$68,$69,$6D,$2E,$2E,$2E   ;84C8FE;
    db $80,$80,$83,$09,$8A,$81,$80,$86   ;84C906;
    db $07,$87,$1E,$8A,$C1,$58,$2C,$20   ;84C90E;
    db $79,$6F,$75,$20,$73,$68,$6F,$75   ;84C916;
    db $6C,$64,$6E,$27,$74,$80,$80,$65   ;84C91E;
    db $78,$70,$65,$63,$74,$20,$74,$6F   ;84C926;
    db $20,$64,$65,$66,$65,$61,$74,$20   ;84C92E;
    db $68,$69,$6D,$2C,$80,$80,$68,$65   ;84C936;
    db $20,$69,$73,$20,$64,$65,$73,$69   ;84C93E;
    db $67,$6E,$65,$64,$20,$74,$6F,$20   ;84C946;
    db $62,$65,$80,$80,$61,$20,$77,$61   ;84C94E;
    db $72,$20,$6D,$61,$63,$68,$69,$6E   ;84C956;
    db $65,$2E,$80,$80,$83,$09,$81,$80   ;84C95E;
    db $86,$09,$87,$1E,$52,$65,$6D,$65   ;84C966;
    db $6D,$62,$65,$72,$2C,$20,$8A,$79   ;84C96E;
    db $6F,$75,$20,$68,$61,$76,$65,$80   ;84C976;
    db $80,$6E,$6F,$74,$20,$72,$65,$61   ;84C97E;
    db $63,$68,$65,$64,$20,$66,$75,$6C   ;84C986;
    db $6C,$80,$80,$70,$6F,$77,$65,$72   ;84C98E;
    db $20,$79,$65,$74,$2E,$80,$80,$83   ;84C996;
    db $09,$81,$80,$86,$07,$87,$1E,$49   ;84C99E;
    db $66,$20,$79,$6F,$75,$20,$75,$73   ;84C9A6;
    db $65,$20,$61,$6C,$6C,$20,$74,$68   ;84C9AE;
    db $65,$80,$80,$61,$62,$69,$6C,$69   ;84C9B6;
    db $74,$69,$65,$73,$20,$79,$6F,$75   ;84C9BE;
    db $20,$77,$65,$72,$65,$80,$80,$64   ;84C9C6;
    db $65,$73,$69,$67,$6E,$65,$64,$20   ;84C9CE;
    db $77,$69,$74,$68,$2C,$20,$79,$6F   ;84C9D6;
    db $75,$80,$80,$73,$68,$6F,$75,$6C   ;84C9DE;
    db $64,$20,$62,$65,$63,$6F,$6D,$65   ;84C9E6;
    db $80,$80,$73,$74,$72,$6F,$6E,$67   ;84C9EE;
    db $65,$72,$2E,$2E,$2E,$80,$80,$83   ;84C9F6;
    db $09,$81,$80,$86,$0B,$87,$1E,$59   ;84C9FE;
    db $6F,$75,$20,$6D,$61,$79,$20,$65   ;84CA06;
    db $76,$65,$6E,$20,$62,$65,$63,$6F   ;84CA0E;
    db $6D,$65,$80,$80,$61,$73,$20,$70   ;84CA16;
    db $6F,$77,$65,$72,$66,$75,$6C,$20   ;84CA1E;
    db $61,$73,$20,$49,$20,$61,$6D,$2E   ;84CA26;
    db $80,$80,$83,$09,$81,$80,$86,$05   ;84CA2E;
    db $87,$1E,$49,$27,$6C,$6C,$20,$73   ;84CA36;
    db $63,$6F,$75,$74,$20,$61,$68,$65   ;84CA3E;
    db $61,$64,$20,$61,$6E,$64,$80,$80   ;84CA46;
    db $63,$6F,$6C,$6C,$65,$63,$74,$20   ;84CA4E;
    db $61,$73,$20,$6D,$75,$63,$68,$80   ;84CA56;
    db $80,$69,$6E,$66,$6F,$72,$6D,$61   ;84CA5E;
    db $74,$69,$6F,$6E,$20,$6F,$6E,$80   ;84CA66;
    db $80,$53,$69,$67,$6D,$61,$27,$73   ;84CA6E;
    db $20,$66,$6F,$72,$74,$72,$65,$73   ;84CA76;
    db $73,$80,$80,$61,$73,$20,$49,$20   ;84CA7E;
    db $63,$61,$6E,$2E,$80,$80,$83,$09   ;84CA86;
    db $81,$80,$86,$0B,$87,$1E,$49,$27   ;84CA8E;
    db $6C,$6C,$20,$6D,$65,$65,$74,$20   ;84CA96;
    db $75,$70,$20,$77,$69,$74,$68,$20   ;84CA9E;
    db $79,$6F,$75,$80,$80,$77,$68,$65   ;84CAA6;
    db $6E,$20,$79,$6F,$75,$20,$67,$65   ;84CAAE;
    db $74,$20,$74,$68,$65,$72,$65,$2E   ;84CAB6;
    db $80,$80,$53,$65,$65,$20,$79,$6F   ;84CABE;
    db $75,$20,$6C,$61,$74,$65,$72,$21   ;84CAC6;
    db $80,$80,$83,$09,$81,$80,$86,$07   ;84CACE;
    db $87,$1E,$58,$2C,$20,$49,$20,$6B   ;84CAD6;
    db $6E,$6F,$77,$20,$79,$6F,$75,$20   ;84CADE;
    db $63,$61,$6E,$20,$64,$6F,$80,$80   ;84CAE6;
    db $69,$74,$21,$80,$80,$83,$09,$81   ;84CAEE;
    db $80,$82,$8A,$89,$86,$08,$C0,$88   ;84CAF6;
    db $04,$59,$6F,$75,$20,$77,$6F,$72   ;84CAFE;
    db $74,$68,$6C,$65,$73,$73,$20,$70   ;84CB06;
    db $69,$65,$63,$65,$80,$80,$6F,$66   ;84CB0E;
    db $20,$73,$63,$72,$61,$70,$20,$6D   ;84CB16;
    db $65,$74,$61,$6C,$2C,$20,$64,$69   ;84CB1E;
    db $64,$80,$80,$79,$6F,$75,$20,$74   ;84CB26;
    db $68,$69,$6E,$6B,$20,$79,$6F,$75   ;84CB2E;
    db $80,$80,$63,$6F,$75,$6C,$64,$20   ;84CB36;
    db $64,$65,$66,$65,$61,$74,$20,$6D   ;84CB3E;
    db $65,$3F,$80,$80,$83,$09,$81,$80   ;84CB46;
    db $86,$09,$82,$89,$54,$08,$C2,$88   ;84CB4E;
    db $04,$59,$4F,$55,$20,$47,$45,$54   ;84CB56;
    db $82,$89,$94,$08,$C2,$88,$04,$48   ;84CB5E;
    db $4F,$52,$4D,$49,$4E,$47,$80,$83   ;84CB66;
    db $03,$54,$4F,$52,$50,$45,$44,$4F   ;84CB6E;
    db $87,$1E,$82,$89,$94,$08,$C2,$88   ;84CB76;
    db $04,$43,$48,$41,$4D,$45,$4C,$45   ;84CB7E;
    db $4F,$4E,$80,$83,$05,$53,$54,$49   ;84CB86;
    db $4E,$47,$87,$1E,$82,$89,$94,$08   ;84CB8E;
    db $C2,$88,$04,$52,$4F,$4C,$4C,$49   ;84CB96;
    db $4E,$47,$80,$83,$04,$53,$48,$49   ;84CB9E;
    db $45,$4C,$44,$87,$1E,$82,$89,$94   ;84CBA6;
    db $08,$C2,$88,$04,$46,$49,$52,$45   ;84CBAE;
    db $20,$57,$41,$56,$45,$87,$1E,$82   ;84CBB6;
    db $89,$94,$08,$C2,$88,$04,$53,$54   ;84CBBE;
    db $4F,$52,$4D,$80,$83,$03,$54,$4F   ;84CBC6;
    db $52,$4E,$41,$44,$4F,$87,$1E,$82   ;84CBCE;
    db $89,$94,$08,$C2,$88,$04,$45,$4C   ;84CBD6;
    db $45,$43,$54,$52,$49,$43,$80,$83   ;84CBDE;
    db $05,$53,$50,$41,$52,$4B,$87,$1E   ;84CBE6;
    db $82,$89,$94,$08,$C2,$88,$04,$42   ;84CBEE;
    db $4F,$4F,$4D,$45,$52,$41,$4E,$47   ;84CBF6;
    db $80,$83,$04,$43,$55,$54,$54,$45   ;84CBFE;
    db $52,$87,$1E,$82,$89,$94,$08,$C2   ;84CC06;
    db $88,$04,$53,$48,$4F,$54,$47,$55   ;84CC0E;
    db $4E,$80,$83,$07,$49,$43,$45,$87   ;84CC16;
    db $1E,$82,$8A,$89,$89,$08,$C0,$88   ;84CC1E;
    db $04,$53,$6F,$20,$79,$6F,$75,$27   ;84CC26;
    db $76,$65,$80,$80,$63,$6F,$6D,$65   ;84CC2E;
    db $2E,$2E,$2E,$80,$80,$83,$06,$81   ;84CC36;
    db $80,$86,$05,$87,$1E,$58,$2C,$20   ;84CC3E;
    db $49,$20,$67,$61,$76,$65,$20,$79   ;84CC46;
    db $6F,$75,$80,$80,$74,$68,$65,$20   ;84CC4E;
    db $61,$62,$69,$6C,$69,$74,$79,$80   ;84CC56;
    db $80,$74,$6F,$20,$63,$68,$6F,$6F   ;84CC5E;
    db $73,$65,$80,$80,$79,$6F,$75,$72   ;84CC66;
    db $20,$6F,$77,$6E,$20,$70,$61,$74   ;84CC6E;
    db $68,$20,$69,$6E,$80,$80,$6C,$69   ;84CC76;
    db $66,$65,$2C,$80,$80,$83,$06,$81   ;84CC7E;
    db $80,$86,$0B,$87,$1E,$61,$6E,$64   ;84CC86;
    db $20,$49,$20,$68,$6F,$70,$65,$64   ;84CC8E;
    db $80,$80,$74,$68,$65,$20,$77,$6F   ;84CC96;
    db $72,$6C,$64,$80,$80,$77,$6F,$75   ;84CC9E;
    db $6C,$64,$20,$61,$6C,$6C,$6F,$77   ;84CCA6;
    db $80,$80,$79,$6F,$75,$20,$74,$6F   ;84CCAE;
    db $20,$63,$68,$6F,$6F,$73,$65,$20   ;84CCB6;
    db $61,$80,$80,$70,$65,$61,$63,$65   ;84CCBE;
    db $66,$75,$6C,$20,$6F,$6E,$65,$2E   ;84CCC6;
    db $80,$80,$83,$06,$81,$80,$86,$0B   ;84CCCE;
    db $87,$1E,$42,$75,$74,$20,$6E,$6F   ;84CCD6;
    db $77,$20,$69,$74,$80,$80,$73,$65   ;84CCDE;
    db $65,$6D,$73,$20,$74,$68,$61,$74   ;84CCE6;
    db $80,$80,$79,$6F,$75,$20,$61,$72   ;84CCEE;
    db $65,$80,$80,$64,$65,$73,$74,$69   ;84CCF6;
    db $6E,$65,$64,$20,$74,$6F,$80,$80   ;84CCFE;
    db $66,$69,$67,$68,$74,$2E,$80,$80   ;84CD06;
    db $83,$06,$81,$80,$86,$0B,$87,$1E   ;84CD0E;
    db $42,$65,$63,$61,$75,$73,$65,$20   ;84CD16;
    db $49,$80,$80,$74,$68,$6F,$75,$67   ;84CD1E;
    db $68,$74,$20,$74,$68,$65,$80,$80   ;84CD26;
    db $77,$6F,$72,$6C,$64,$20,$6D,$69   ;84CD2E;
    db $67,$68,$74,$80,$80,$6E,$65,$65   ;84CD36;
    db $64,$20,$61,$20,$6E,$65,$77,$80   ;84CD3E;
    db $80,$63,$68,$61,$6D,$70,$69,$6F   ;84CD46;
    db $6E,$2C,$80,$80,$83,$06,$81,$80   ;84CD4E;
    db $86,$0B,$87,$1E,$49,$20,$68,$61   ;84CD56;
    db $76,$65,$20,$68,$69,$64,$64,$65   ;84CD5E;
    db $6E,$80,$80,$63,$61,$70,$73,$75   ;84CD66;
    db $6C,$65,$73,$20,$6C,$69,$6B,$65   ;84CD6E;
    db $80,$80,$74,$68,$69,$73,$20,$6F   ;84CD76;
    db $6E,$65,$2E,$80,$80,$83,$06,$81   ;84CD7E;
    db $80,$86,$07,$87,$1E,$49,$66,$20   ;84CD86;
    db $79,$6F,$75,$20,$66,$69,$6E,$64   ;84CD8E;
    db $80,$80,$61,$6E,$64,$20,$75,$73   ;84CD96;
    db $65,$20,$74,$68,$65,$6D,$80,$80   ;84CD9E;
    db $79,$6F,$75,$20,$77,$69,$6C,$6C   ;84CDA6;
    db $20,$62,$65,$80,$80,$61,$62,$6C   ;84CDAE;
    db $65,$20,$74,$6F,$20,$69,$6E,$63   ;84CDB6;
    db $72,$65,$61,$73,$65,$80,$80,$79   ;84CDBE;
    db $6F,$75,$72,$20,$70,$6F,$77,$65   ;84CDC6;
    db $72,$73,$80,$80,$83,$06,$81,$80   ;84CDCE;
    db $86,$0B,$87,$1E,$62,$65,$79,$6F   ;84CDD6;
    db $6E,$64,$80,$80,$61,$6E,$79,$74   ;84CDDE;
    db $68,$69,$6E,$67,$20,$74,$68,$65   ;84CDE6;
    db $80,$80,$77,$6F,$72,$6C,$64,$20   ;84CDEE;
    db $68,$61,$73,$80,$80,$65,$76,$65   ;84CDF6;
    db $72,$20,$6B,$6E,$6F,$77,$6E,$2E   ;84CDFE;
    db $80,$80,$83,$06,$81,$80,$86,$09   ;84CE06;
    db $87,$1E,$53,$74,$65,$70,$20,$69   ;84CE0E;
    db $6E,$74,$6F,$80,$80,$74,$68,$69   ;84CE16;
    db $73,$20,$63,$61,$70,$73,$75,$6C   ;84CE1E;
    db $65,$80,$80,$83,$06,$81,$80,$86   ;84CE26;
    db $05,$61,$6E,$64,$20,$72,$65,$63   ;84CE2E;
    db $65,$69,$76,$65,$80,$80,$61,$6E   ;84CE36;
    db $20,$61,$63,$63,$65,$6C,$65,$72   ;84CE3E;
    db $61,$2D,$80,$80,$74,$69,$6F,$6E   ;84CE46;
    db $20,$73,$79,$73,$74,$65,$6D,$80   ;84CE4E;
    db $80,$74,$6F,$20,$62,$6F,$6F,$73   ;84CE56;
    db $74,$20,$79,$6F,$75,$72,$80,$80   ;84CE5E;
    db $73,$70,$65,$65,$64,$2E,$80,$80   ;84CE66;
    db $83,$06,$81,$80,$86,$0B,$87,$1E   ;84CE6E;
    db $47,$6F,$6F,$64,$20,$4C,$75,$63   ;84CE76;
    db $6B,$2C,$20,$58,$21,$80,$80,$83   ;84CE7E;
    db $06,$81,$80,$86,$03,$82,$8A,$89   ;84CE86;
    db $86,$08,$C0,$88,$04,$54,$68,$69   ;84CE8E;
    db $73,$20,$63,$61,$70,$73,$75,$6C   ;84CE96;
    db $65,$80,$80,$63,$6F,$6E,$74,$61   ;84CE9E;
    db $69,$6E,$73,$20,$61,$6E,$80,$80   ;84CEA6;
    db $65,$6E,$68,$61,$6E,$63,$65,$6D   ;84CEAE;
    db $65,$6E,$74,$20,$66,$6F,$72,$80   ;84CEB6;
    db $80,$79,$6F,$75,$72,$20,$68,$65   ;84CEBE;
    db $6C,$6D,$65,$74,$80,$80,$83,$09   ;84CEC6;
    db $81,$80,$86,$09,$87,$1E,$77,$68   ;84CECE;
    db $69,$63,$68,$20,$77,$69,$6C,$6C   ;84CED6;
    db $20,$61,$6C,$6C,$6F,$77,$80,$80   ;84CEDE;
    db $79,$6F,$75,$20,$74,$6F,$20,$62   ;84CEE6;
    db $72,$65,$61,$6B,$80,$80,$73,$6F   ;84CEEE;
    db $6D,$65,$20,$63,$65,$69,$6C,$69   ;84CEF6;
    db $6E,$67,$73,$80,$80,$77,$69,$74   ;84CEFE;
    db $68,$20,$61,$20,$68,$65,$61,$64   ;84CF06;
    db $62,$75,$74,$74,$2E,$80,$80,$83   ;84CF0E;
    db $09,$81,$80,$86,$09,$82,$8A,$89   ;84CF16;
    db $86,$08,$C0,$88,$04,$54,$68,$69   ;84CF1E;
    db $73,$20,$63,$61,$70,$73,$75,$6C   ;84CF26;
    db $65,$80,$80,$63,$6F,$6E,$74,$61   ;84CF2E;
    db $69,$6E,$73,$20,$61,$20,$6E,$65   ;84CF36;
    db $77,$80,$80,$74,$79,$70,$65,$20   ;84CF3E;
    db $6F,$66,$20,$62,$6F,$64,$79,$80   ;84CF46;
    db $80,$61,$72,$6D,$6F,$72,$2E,$80   ;84CF4E;
    db $80,$83,$09,$81,$80,$86,$09,$87   ;84CF56;
    db $1E,$49,$74,$20,$77,$69,$6C,$6C   ;84CF5E;
    db $20,$72,$65,$64,$75,$63,$65,$80   ;84CF66;
    db $80,$64,$61,$6D,$61,$67,$65,$20   ;84CF6E;
    db $74,$6F,$20,$79,$6F,$75,$72,$80   ;84CF76;
    db $80,$73,$79,$73,$74,$65,$6D,$73   ;84CF7E;
    db $20,$62,$79,$80,$80,$66,$69,$66   ;84CF86;
    db $74,$79,$20,$70,$65,$72,$63,$65   ;84CF8E;
    db $6E,$74,$2E,$80,$80,$83,$06,$81   ;84CF96;
    db $80,$86,$07,$82,$8A,$89,$86,$08   ;84CF9E;
    db $C0,$88,$04,$54,$68,$69,$73,$20   ;84CFA6;
    db $63,$61,$70,$73,$75,$6C,$65,$80   ;84CFAE;
    db $80,$63,$6F,$6E,$74,$61,$69,$6E   ;84CFB6;
    db $73,$20,$61,$20,$70,$61,$72,$74   ;84CFBE;
    db $80,$80,$83,$09,$81,$80,$86,$05   ;84CFC6;
    db $87,$1E,$77,$68,$69,$63,$68,$20   ;84CFCE;
    db $77,$69,$6C,$6C,$80,$80,$69,$6E   ;84CFD6;
    db $63,$72,$65,$61,$73,$65,$20,$74   ;84CFDE;
    db $68,$65,$80,$80,$63,$61,$70,$61   ;84CFE6;
    db $62,$69,$6C,$69,$74,$69,$65,$73   ;84CFEE;
    db $80,$80,$6F,$66,$20,$79,$6F,$75   ;84CFF6;
    db $72,$20,$58,$2D,$42,$75,$73,$74   ;84CFFE;
    db $65,$72,$2E,$80,$80,$83,$09,$81   ;84D006;
    db $80,$86,$09,$87,$1E,$59,$6F,$75   ;84D00E;
    db $20,$63,$61,$6E,$20,$75,$73,$65   ;84D016;
    db $20,$69,$74,$80,$80,$74,$6F,$20   ;84D01E;
    db $66,$69,$72,$65,$20,$61,$6C,$6C   ;84D026;
    db $80,$80,$74,$79,$70,$65,$73,$20   ;84D02E;
    db $6F,$66,$20,$77,$65,$61,$70,$6F   ;84D036;
    db $6E,$73,$2E,$80,$80,$83,$09,$81   ;84D03E;
    db $80,$86,$07,$82,$8A,$89,$42,$08   ;84D046;
    db $C2,$88,$00,$4E,$4F,$4D,$20,$45   ;84D04E;
    db $4E,$47,$49,$4E,$45,$45,$52,$20   ;84D056;
    db $57,$4F,$52,$4B,$20,$53,$59,$53   ;84D05E;
    db $54,$45,$4D,$80,$87,$0A,$4D,$6F   ;84D066;
    db $64,$65,$6C,$20,$43,$50,$53,$2D   ;84D06E;
    db $39,$32,$30,$34,$80,$87,$0A,$80   ;84D076;
    db $43,$6F,$70,$79,$72,$69,$67,$68   ;84D07E;
    db $74,$20,$28,$63,$29,$20,$32,$31   ;84D086;
    db $30,$35,$2C,$32,$31,$30,$39,$2C   ;84D08E;
    db $32,$31,$31,$34,$80,$87,$0A,$4E   ;84D096;
    db $4F,$4D,$20,$43,$6F,$72,$70,$6F   ;84D09E;
    db $72,$61,$74,$69,$6F,$6E,$80,$87   ;84D0A6;
    db $0A,$41,$6C,$6C,$20,$52,$69,$67   ;84D0AE;
    db $68,$74,$73,$20,$52,$65,$73,$65   ;84D0B6;
    db $72,$76,$65,$64,$80,$87,$0A,$80   ;84D0BE;
    db $89,$22,$09,$72,$65,$61,$6C,$20   ;84D0C6;
    db $20,$6D,$65,$6D,$20,$3D,$20,$31   ;84D0CE;
    db $30,$32,$34,$20,$54,$42,$87,$0F   ;84D0D6;
    db $89,$2E,$09,$32,$30,$34,$38,$87   ;84D0DE;
    db $0F,$89,$2E,$09,$33,$30,$37,$32   ;84D0E6;
    db $87,$0F,$89,$2E,$09,$34,$30,$39   ;84D0EE;
    db $36,$87,$0F,$89,$2E,$09,$35,$31   ;84D0F6;
    db $32,$30,$87,$0F,$89,$2E,$09,$36   ;84D0FE;
    db $31,$34,$34,$87,$0F,$89,$2E,$09   ;84D106;
    db $37,$31,$36,$38,$87,$0F,$89,$2E   ;84D10E;
    db $09,$38,$31,$39,$32,$87,$3C,$89   ;84D116;
    db $42,$09,$61,$76,$61,$69,$6C,$20   ;84D11E;
    db $6D,$65,$6D,$20,$3D,$20,$34,$30   ;84D126;
    db $39,$36,$20,$54,$42,$87,$0F,$89   ;84D12E;
    db $4E,$09,$38,$31,$39,$32,$87,$0F   ;84D136;
    db $89,$4E,$09,$31,$32,$32,$38,$38   ;84D13E;
    db $20,$54,$42,$87,$0F,$89,$4E,$09   ;84D146;
    db $31,$36,$33,$38,$34,$87,$0F,$89   ;84D14E;
    db $4E,$09,$32,$30,$34,$38,$30,$87   ;84D156;
    db $0F,$89,$4E,$09,$32,$34,$35,$37   ;84D15E;
    db $36,$87,$0F,$89,$4E,$09,$32,$38   ;84D166;
    db $36,$37,$32,$87,$0F,$89,$4E,$09   ;84D16E;
    db $33,$32,$37,$36,$38,$87,$3C,$89   ;84D176;
    db $82,$09,$70,$72,$69,$6D,$61,$72   ;84D17E;
    db $79,$20,$64,$61,$74,$61,$20,$63   ;84D186;
    db $61,$63,$68,$65,$20,$3A,$20,$35   ;84D18E;
    db $31,$32,$4B,$42,$80,$87,$1E,$70   ;84D196;
    db $72,$69,$6D,$61,$72,$79,$20,$69   ;84D19E;
    db $6E,$73,$74,$2E,$63,$61,$63,$68   ;84D1A6;
    db $65,$20,$3A,$20,$37,$36,$38,$4B   ;84D1AE;
    db $42,$80,$87,$1E,$73,$65,$63,$6F   ;84D1B6;
    db $6E,$64,$61,$72,$79,$20,$63,$61   ;84D1BE;
    db $63,$68,$65,$20,$20,$20,$20,$3A   ;84D1C6;
    db $20,$33,$32,$37,$36,$38,$4B,$42   ;84D1CE;
    db $80,$87,$1E,$80,$87,$1E,$6C,$6F   ;84D1D6;
    db $67,$69,$6E,$3A,$20,$87,$3C,$88   ;84D1DE;
    db $0A,$44,$72,$2E,$88,$08,$43,$41   ;84D1E6;
    db $49,$4E,$89,$22,$0A,$88,$00,$63   ;84D1EE;
    db $6F,$64,$65,$20,$3A,$20,$87,$3C   ;84D1F6;
    db $88,$0A,$2A,$2A,$88,$0F,$2A,$2A   ;84D1FE;
    db $2A,$2A,$87,$1E,$89,$62,$0A,$88   ;84D206;
    db $00,$3E,$87,$1E,$88,$0A,$64,$65   ;84D20E;
    db $76,$69,$63,$65,$83,$01,$88,$08   ;84D216;
    db $2D,$64,$76,$31,$83,$01,$2D,$61   ;84D21E;
    db $80,$87,$01,$80,$89,$A2,$0A,$88   ;84D226;
    db $00,$8A,$72,$65,$61,$64,$69,$6E   ;84D22E;
    db $67,$20,$22,$4D,$2E,$58,$2E,$53   ;84D236;
    db $2E,$22,$80,$87,$3C,$8A,$72,$65   ;84D23E;
    db $61,$64,$69,$6E,$67,$20,$22,$42   ;84D246;
    db $44,$2D,$45,$22,$80,$87,$5A,$8A   ;84D24E;
    db $72,$65,$61,$64,$69,$6E,$67,$20   ;84D256;
    db $22,$57,$41,$52,$4E,$49,$4E,$47   ;84D25E;
    db $22,$80,$87,$28,$8A,$87,$78,$89   ;84D266;
    db $50,$08,$20,$20,$20,$4D,$45,$47   ;84D26E;
    db $41,$4D,$41,$4E,$20,$58,$80,$87   ;84D276;
    db $01,$80,$20,$53,$50,$45,$43,$49   ;84D27E;
    db $46,$49,$43,$41,$54,$49,$4F,$4E   ;84D286;
    db $80,$80,$80,$80,$80,$87,$3C,$8A   ;84D28E;
    db $87,$96,$8A,$87,$1E,$22,$48,$45   ;84D296;
    db $41,$44,$22,$20,$49,$53,$80,$87   ;84D29E;
    db $01,$45,$51,$55,$49,$50,$50,$45   ;84D2A6;
    db $44,$20,$57,$49,$54,$48,$3A,$80   ;84D2AE;
    db $87,$01,$80,$42,$72,$6F,$61,$64   ;84D2B6;
    db $2D,$72,$61,$6E,$67,$65,$80,$87   ;84D2BE;
    db $01,$45,$79,$65,$20,$43,$61,$6D   ;84D2C6;
    db $65,$72,$61,$80,$87,$01,$80,$55   ;84D2CE;
    db $6C,$74,$72,$61,$2D,$73,$65,$6E   ;84D2D6;
    db $73,$69,$74,$69,$76,$65,$80,$87   ;84D2DE;
    db $01,$56,$6F,$69,$63,$65,$20,$52   ;84D2E6;
    db $65,$63,$6F,$67,$6E,$69,$2D,$80   ;84D2EE;
    db $87,$01,$74,$69,$6F,$6E,$20,$53   ;84D2F6;
    db $79,$73,$74,$65,$6D,$80,$87,$01   ;84D2FE;
    db $80,$56,$6F,$69,$63,$65,$20,$47   ;84D306;
    db $65,$6E,$65,$72,$61,$2D,$80,$87   ;84D30E;
    db $01,$74,$69,$6F,$6E,$20,$53,$79   ;84D316;
    db $73,$74,$65,$6D,$80,$87,$01,$6D   ;84D31E;
    db $61,$64,$65,$20,$62,$79,$20,$48   ;84D326;
    db $41,$59,$41,$54,$4F,$4D,$80,$87   ;84D32E;
    db $01,$49,$6E,$63,$2E,$80,$87,$01   ;84D336;
    db $80,$80,$87,$5A,$8A,$87,$1E,$22   ;84D33E;
    db $43,$48,$45,$53,$54,$22,$20,$49   ;84D346;
    db $53,$80,$86,$01,$87,$01,$45,$51   ;84D34E;
    db $55,$49,$50,$50,$45,$44,$20,$57   ;84D356;
    db $49,$54,$48,$3A,$80,$86,$01,$87   ;84D35E;
    db $01,$80,$86,$01,$41,$63,$63,$75   ;84D366;
    db $6D,$75,$6C,$61,$74,$69,$76,$65   ;84D36E;
    db $80,$86,$01,$87,$01,$45,$6E,$65   ;84D376;
    db $72,$67,$79,$20,$47,$65,$6E,$65   ;84D37E;
    db $2D,$80,$86,$01,$87,$01,$72,$61   ;84D386;
    db $74,$6F,$72,$80,$86,$01,$87,$01   ;84D38E;
    db $80,$86,$01,$4D,$69,$63,$72,$6F   ;84D396;
    db $2D,$66,$75,$73,$69,$6F,$6E,$80   ;84D39E;
    db $86,$01,$87,$01,$46,$75,$65,$6C   ;84D3A6;
    db $20,$54,$61,$6E,$6B,$80,$86,$01   ;84D3AE;
    db $87,$01,$80,$86,$01,$43,$65,$6E   ;84D3B6;
    db $74,$72,$61,$6C,$20,$4A,$6F,$69   ;84D3BE;
    db $6E,$74,$2D,$80,$86,$01,$87,$01   ;84D3C6;
    db $63,$6F,$6E,$74,$72,$6F,$6C,$6C   ;84D3CE;
    db $69,$6E,$67,$80,$86,$01,$87,$01   ;84D3D6;
    db $53,$79,$73,$74,$65,$6D,$80,$86   ;84D3DE;
    db $01,$87,$01,$80,$86,$01,$80,$86   ;84D3E6;
    db $01,$80,$86,$01,$87,$5A,$8A,$87   ;84D3EE;
    db $1E,$89,$22,$08,$22,$41,$52,$4D   ;84D3F6;
    db $53,$22,$20,$41,$52,$45,$80,$87   ;84D3FE;
    db $01,$45,$51,$55,$49,$50,$50,$45   ;84D406;
    db $44,$20,$57,$49,$54,$48,$3A,$80   ;84D40E;
    db $87,$01,$80,$58,$2D,$42,$75,$73   ;84D416;
    db $74,$65,$72,$28,$4D,$65,$67,$61   ;84D41E;
    db $80,$87,$01,$42,$75,$73,$74,$65   ;84D426;
    db $72,$20,$4D,$61,$72,$6B,$31,$37   ;84D42E;
    db $29,$80,$87,$01,$80,$45,$6E,$65   ;84D436;
    db $72,$67,$79,$80,$87,$01,$41,$6D   ;84D43E;
    db $70,$6C,$69,$66,$69,$65,$72,$80   ;84D446;
    db $87,$01,$80,$56,$61,$72,$69,$61   ;84D44E;
    db $62,$6C,$65,$80,$87,$01,$57,$65   ;84D456;
    db $61,$70,$6F,$6E,$20,$53,$79,$73   ;84D45E;
    db $74,$65,$6D,$80,$87,$01,$80,$80   ;84D466;
    db $80,$87,$5A,$8A,$87,$1E,$22,$4C   ;84D46E;
    db $45,$47,$53,$22,$20,$41,$52,$45   ;84D476;
    db $80,$87,$01,$45,$51,$55,$49,$50   ;84D47E;
    db $50,$45,$44,$20,$57,$49,$54,$48   ;84D486;
    db $3A,$80,$87,$01,$80,$47,$79,$72   ;84D48E;
    db $6F,$73,$63,$6F,$70,$69,$63,$80   ;84D496;
    db $87,$01,$53,$74,$61,$62,$69,$6C   ;84D49E;
    db $69,$7A,$61,$74,$69,$6F,$6E,$80   ;84D4A6;
    db $87,$01,$53,$79,$73,$74,$65,$6D   ;84D4AE;
    db $80,$87,$01,$80,$45,$6D,$65,$72   ;84D4B6;
    db $67,$65,$6E,$63,$79,$80,$87,$01   ;84D4BE;
    db $41,$63,$63,$65,$6C,$65,$72,$61   ;84D4C6;
    db $74,$69,$6F,$6E,$80,$87,$01,$53   ;84D4CE;
    db $79,$73,$74,$65,$6D,$80,$87,$01   ;84D4D6;
    db $28,$4F,$70,$74,$69,$6F,$6E,$61   ;84D4DE;
    db $6C,$29,$80,$87,$01,$80,$80,$80   ;84D4E6;
    db $87,$3C,$86,$20,$87,$3C,$8A,$87   ;84D4EE;
    db $1E,$8A,$89,$42,$08,$49,$4E,$54   ;84D4F6;
    db $45,$52,$49,$4F,$52,$80,$87,$01   ;84D4FE;
    db $53,$4B,$45,$4C,$45,$54,$4F,$4E   ;84D506;
    db $3A,$80,$87,$01,$80,$52,$65,$61   ;84D50E;
    db $63,$74,$69,$76,$65,$20,$61,$72   ;84D516;
    db $6D,$6F,$72,$80,$87,$01,$73,$6B   ;84D51E;
    db $65,$6C,$65,$74,$6F,$6E,$20,$77   ;84D526;
    db $68,$69,$63,$68,$80,$87,$01,$72   ;84D52E;
    db $65,$64,$75,$63,$65,$73,$20,$64   ;84D536;
    db $61,$6D,$61,$67,$65,$80,$87,$01   ;84D53E;
    db $62,$79,$20,$39,$33,$20,$70,$65   ;84D546;
    db $72,$63,$65,$6E,$74,$2E,$80,$87   ;84D54E;
    db $01,$80,$80,$80,$42,$4F,$44,$59   ;84D556;
    db $20,$53,$4B,$49,$4E,$3A,$80,$87   ;84D55E;
    db $01,$80,$4C,$69,$67,$68,$74,$77   ;84D566;
    db $65,$69,$67,$68,$74,$80,$87,$01   ;84D56E;
    db $22,$54,$69,$74,$61,$6E,$69,$75   ;84D576;
    db $6D,$2D,$58,$22,$80,$87,$01,$61   ;84D57E;
    db $6C,$6C,$6F,$79,$2E,$80,$87,$01   ;84D586;
    db $87,$F0,$8A,$82,$89,$4B,$08,$C2   ;84D58E;
    db $88,$03,$57,$41,$52,$4E,$49,$4E   ;84D596;
    db $47,$3A,$20,$89,$A2,$08,$22,$58   ;84D59E;
    db $22,$20,$49,$53,$20,$54,$48,$45   ;84D5A6;
    db $20,$46,$49,$52,$53,$54,$20,$4F   ;84D5AE;
    db $46,$20,$41,$20,$4E,$45,$57,$20   ;84D5B6;
    db $80,$80,$47,$45,$4E,$45,$52,$41   ;84D5BE;
    db $54,$49,$4F,$4E,$20,$4F,$46,$20   ;84D5C6;
    db $52,$4F,$42,$4F,$54,$53,$20,$57   ;84D5CE;
    db $48,$49,$43,$48,$20,$80,$80,$43   ;84D5D6;
    db $4F,$4E,$54,$41,$49,$4E,$20,$41   ;84D5DE;
    db $4E,$20,$49,$4E,$4E,$4F,$56,$41   ;84D5E6;
    db $54,$49,$56,$45,$20,$4E,$45,$57   ;84D5EE;
    db $20,$80,$80,$46,$45,$41,$54,$55   ;84D5F6;
    db $52,$45,$20,$2D,$20,$54,$48,$45   ;84D5FE;
    db $20,$41,$42,$49,$4C,$49,$54,$59   ;84D606;
    db $20,$54,$4F,$20,$80,$80,$54,$48   ;84D60E;
    db $49,$4E,$4B,$2C,$20,$46,$45,$45   ;84D616;
    db $4C,$20,$41,$4E,$44,$20,$4D,$41   ;84D61E;
    db $4B,$45,$20,$54,$48,$45,$49,$52   ;84D626;
    db $20,$80,$80,$4F,$57,$4E,$20,$44   ;84D62E;
    db $45,$43,$49,$53,$49,$4F,$4E,$53   ;84D636;
    db $2E,$20,$87,$3C,$48,$4F,$57,$45   ;84D63E;
    db $56,$45,$52,$20,$54,$48,$49,$53   ;84D646;
    db $20,$80,$80,$41,$42,$49,$4C,$49   ;84D64E;
    db $54,$59,$20,$43,$4F,$55,$4C,$44   ;84D656;
    db $20,$42,$45,$20,$56,$45,$52,$59   ;84D65E;
    db $20,$44,$41,$4E,$2D,$20,$80,$80   ;84D666;
    db $47,$45,$52,$4F,$55,$53,$2E,$20   ;84D66E;
    db $49,$46,$20,$22,$58,$22,$20,$57   ;84D676;
    db $45,$52,$45,$20,$54,$4F,$20,$42   ;84D67E;
    db $52,$45,$41,$4B,$20,$80,$80,$54   ;84D686;
    db $48,$45,$20,$46,$49,$52,$53,$54   ;84D68E;
    db $20,$52,$55,$4C,$45,$20,$4F,$46   ;84D696;
    db $20,$52,$4F,$42,$4F,$54,$49,$43   ;84D69E;
    db $53,$2C,$20,$80,$80,$86,$02,$20   ;84D6A6;
    db $22,$41,$20,$52,$4F,$42,$4F,$54   ;84D6AE;
    db $20,$4D,$55,$53,$54,$20,$4E,$45   ;84D6B6;
    db $56,$45,$52,$20,$48,$41,$52,$4D   ;84D6BE;
    db $20,$80,$80,$86,$02,$41,$20,$48   ;84D6C6;
    db $55,$4D,$41,$4E,$20,$42,$45,$49   ;84D6CE;
    db $4E,$47,$22,$2C,$20,$54,$48,$45   ;84D6D6;
    db $20,$52,$45,$53,$55,$4C,$54,$53   ;84D6DE;
    db $20,$80,$80,$86,$02,$57,$4F,$55   ;84D6E6;
    db $4C,$44,$20,$42,$45,$20,$44,$49   ;84D6EE;
    db $53,$41,$53,$54,$52,$4F,$55,$53   ;84D6F6;
    db $20,$41,$4E,$44,$20,$49,$20,$80   ;84D6FE;
    db $80,$86,$02,$46,$45,$41,$52,$20   ;84D706;
    db $54,$48,$41,$54,$20,$4E,$4F,$20   ;84D70E;
    db $46,$4F,$52,$43,$45,$20,$4F,$4E   ;84D716;
    db $20,$45,$41,$52,$54,$48,$20,$80   ;84D71E;
    db $80,$86,$02,$43,$4F,$55,$4C,$44   ;84D726;
    db $20,$53,$54,$4F,$50,$20,$48,$49   ;84D72E;
    db $4D,$2E,$20,$87,$78,$80,$80,$86   ;84D736;
    db $02,$80,$80,$86,$02,$41,$50,$50   ;84D73E;
    db $52,$4F,$58,$49,$4D,$41,$54,$45   ;84D746;
    db $4C,$59,$20,$33,$30,$20,$59,$45   ;84D74E;
    db $41,$52,$53,$20,$57,$49,$4C,$4C   ;84D756;
    db $20,$80,$80,$86,$02,$42,$45,$20   ;84D75E;
    db $52,$45,$51,$55,$49,$52,$45,$44   ;84D766;
    db $20,$42,$45,$46,$4F,$52,$45,$20   ;84D76E;
    db $57,$45,$20,$43,$41,$4E,$20,$80   ;84D776;
    db $80,$86,$02,$53,$41,$46,$45,$4C   ;84D77E;
    db $59,$20,$43,$4F,$4E,$46,$49,$52   ;84D786;
    db $4D,$20,$48,$49,$53,$20,$52,$45   ;84D78E;
    db $4C,$49,$2D,$20,$80,$80,$86,$02   ;84D796;
    db $41,$42,$49,$4C,$49,$54,$59,$2E   ;84D79E;
    db $20,$87,$3C,$55,$4E,$46,$4F,$52   ;84D7A6;
    db $54,$55,$4E,$41,$54,$45,$4C,$59   ;84D7AE;
    db $20,$49,$20,$57,$49,$4C,$4C,$20   ;84D7B6;
    db $80,$80,$86,$02,$4E,$4F,$54,$20   ;84D7BE;
    db $4C,$49,$56,$45,$20,$54,$4F,$20   ;84D7C6;
    db $53,$45,$45,$20,$54,$48,$41,$54   ;84D7CE;
    db $20,$44,$41,$59,$2C,$20,$80,$80   ;84D7D6;
    db $86,$02,$4E,$4F,$52,$20,$44,$4F   ;84D7DE;
    db $20,$49,$20,$48,$41,$56,$45,$20   ;84D7E6;
    db $41,$4E,$59,$4F,$4E,$45,$20,$54   ;84D7EE;
    db $4F,$20,$80,$80,$86,$02,$43,$41   ;84D7F6;
    db $52,$52,$59,$20,$4F,$4E,$20,$4D   ;84D7FE;
    db $59,$20,$57,$4F,$52,$4B,$2E,$20   ;84D806;
    db $87,$3C,$54,$48,$45,$52,$45,$46   ;84D80E;
    db $4F,$52,$45,$2C,$20,$80,$80,$86   ;84D816;
    db $02,$49,$20,$48,$41,$56,$45,$20   ;84D81E;
    db $44,$45,$43,$49,$44,$45,$44,$20   ;84D826;
    db $54,$4F,$20,$53,$45,$41,$4C,$20   ;84D82E;
    db $48,$49,$4D,$20,$80,$80,$86,$02   ;84D836;
    db $49,$4E,$20,$54,$48,$49,$53,$20   ;84D83E;
    db $43,$41,$50,$53,$55,$4C,$45,$2C   ;84D846;
    db $20,$57,$48,$49,$43,$48,$20,$57   ;84D84E;
    db $49,$4C,$4C,$20,$80,$80,$86,$02   ;84D856;
    db $54,$45,$53,$54,$20,$48,$49,$53   ;84D85E;
    db $20,$49,$4E,$54,$45,$52,$4E,$41   ;84D866;
    db $4C,$20,$53,$59,$53,$54,$45,$4D   ;84D86E;
    db $53,$20,$80,$80,$86,$02,$55,$4E   ;84D876;
    db $54,$49,$4C,$20,$48,$49,$53,$20   ;84D87E;
    db $52,$45,$4C,$49,$41,$42,$49,$4C   ;84D886;
    db $49,$54,$59,$20,$48,$41,$53,$20   ;84D88E;
    db $80,$80,$86,$02,$42,$45,$45,$4E   ;84D896;
    db $20,$43,$4F,$4E,$46,$49,$52,$4D   ;84D89E;
    db $45,$44,$2E,$20,$87,$3C,$50,$4C   ;84D8A6;
    db $45,$41,$53,$45,$20,$44,$4F,$20   ;84D8AE;
    db $80,$80,$86,$02,$4E,$4F,$54,$20   ;84D8B6;
    db $44,$49,$53,$54,$55,$52,$42,$20   ;84D8BE;
    db $54,$48,$45,$20,$43,$41,$50,$53   ;84D8C6;
    db $55,$4C,$45,$20,$80,$80,$86,$02   ;84D8CE;
    db $55,$4E,$54,$49,$4C,$20,$54,$48   ;84D8D6;
    db $41,$54,$20,$54,$49,$4D,$45,$2E   ;84D8DE;
    db $20,$87,$78,$80,$80,$86,$02,$80   ;84D8E6;
    db $80,$86,$02,$22,$58,$22,$20,$50   ;84D8EE;
    db $4F,$53,$53,$45,$53,$53,$45,$53   ;84D8F6;
    db $20,$47,$52,$45,$41,$54,$20,$52   ;84D8FE;
    db $49,$53,$4B,$53,$20,$80,$80,$86   ;84D906;
    db $02,$41,$53,$20,$57,$45,$4C,$4C   ;84D90E;
    db $20,$41,$53,$20,$47,$52,$45,$41   ;84D916;
    db $54,$20,$50,$4F,$53,$53,$49,$42   ;84D91E;
    db $49,$4C,$49,$2D,$20,$80,$80,$86   ;84D926;
    db $02,$54,$49,$45,$53,$2E,$20,$87   ;84D92E;
    db $3C,$49,$20,$43,$41,$4E,$20,$4F   ;84D936;
    db $4E,$4C,$59,$20,$48,$4F,$50,$45   ;84D93E;
    db $20,$46,$4F,$52,$20,$80,$80,$86   ;84D946;
    db $02,$54,$48,$45,$20,$42,$45,$53   ;84D94E;
    db $54,$2E,$20,$80,$80,$86,$02,$80   ;84D956;
    db $80,$86,$02,$83,$07,$53,$45,$50   ;84D95E;
    db $54,$45,$4D,$42,$45,$52,$20,$31   ;84D966;
    db $38,$2C,$32,$30,$58,$58,$20,$80   ;84D96E;
    db $80,$86,$02,$87,$3C,$83,$11,$54   ;84D976;
    db $2E,$4C,$49,$47,$48,$54,$20,$87   ;84D97E;
    db $F8,$8A,$82,$8A,$89,$86,$08,$C0   ;84D986;
    db $88,$04,$58,$2C,$20,$64,$6F,$20   ;84D98E;
    db $77,$68,$61,$74,$20,$49,$20,$74   ;84D996;
    db $65,$6C,$6C,$20,$79,$6F,$75,$80   ;84D99E;
    db $80,$6F,$72,$20,$68,$65,$27,$73   ;84D9A6;
    db $20,$68,$69,$73,$74,$6F,$72,$79   ;84D9AE;
    db $21,$80,$80,$83,$09,$81,$80,$8A   ;84D9B6;
    db $86,$05,$87,$1E,$8A,$C1,$44,$6F   ;84D9BE;
    db $6E,$27,$74,$20,$6C,$69,$73,$74   ;84D9C6;
    db $65,$6E,$20,$74,$6F,$20,$68,$69   ;84D9CE;
    db $6D,$80,$80,$58,$21,$20,$47,$6F   ;84D9D6;
    db $20,$61,$68,$65,$61,$64,$20,$61   ;84D9DE;
    db $6E,$64,$20,$62,$6C,$61,$73,$74   ;84D9E6;
    db $80,$80,$68,$69,$6D,$21,$21,$80   ;84D9EE;
    db $80,$83,$09,$8A,$81,$80,$8A,$86   ;84D9F6;
    db $07,$87,$1E,$8A,$C0,$88,$04,$44   ;84D9FE;
    db $72,$65,$61,$6D,$20,$6F,$6E,$20   ;84DA06;
    db $5A,$65,$72,$6F,$21,$80,$80,$58   ;84DA0E;
    db $20,$6B,$6E,$6F,$77,$73,$20,$68   ;84DA16;
    db $65,$20,$63,$61,$6E,$27,$74,$80   ;84DA1E;
    db $80,$64,$65,$66,$65,$61,$74,$20   ;84DA26;
    db $6D,$65,$21,$80,$80,$83,$09,$81   ;84DA2E;
    db $80,$86,$07,$87,$1E,$4D,$79,$20   ;84DA36;
    db $61,$72,$6D,$6F,$72,$65,$64,$20   ;84DA3E;
    db $63,$61,$72,$72,$69,$65,$72,$20   ;84DA46;
    db $69,$73,$80,$80,$6D,$6F,$72,$65   ;84DA4E;
    db $20,$74,$68,$61,$6E,$20,$61,$20   ;84DA56;
    db $6D,$61,$74,$63,$68,$20,$66,$6F   ;84DA5E;
    db $72,$80,$80,$68,$69,$73,$20,$61   ;84DA66;
    db $6E,$63,$69,$65,$6E,$74,$20,$77   ;84DA6E;
    db $65,$61,$70,$6F,$6E,$73,$21,$80   ;84DA76;
    db $80,$81,$80,$8A,$82,$8A,$89,$86   ;84DA7E;
    db $08,$C0,$88,$04,$57,$65,$6C,$63   ;84DA86;
    db $6F,$6D,$65,$21,$20,$49,$20,$73   ;84DA8E;
    db $65,$65,$20,$79,$6F,$75,$80,$80   ;84DA96;
    db $6D,$61,$6E,$61,$67,$65,$64,$20   ;84DA9E;
    db $74,$6F,$20,$67,$65,$74,$20,$68   ;84DAA6;
    db $65,$72,$65,$80,$80,$62,$79,$20   ;84DAAE;
    db $79,$6F,$75,$72,$73,$65,$6C,$66   ;84DAB6;
    db $2E,$80,$80,$56,$65,$72,$79,$20   ;84DABE;
    db $69,$6D,$70,$72,$65,$73,$73,$69   ;84DAC6;
    db $76,$65,$21,$80,$80,$83,$09,$81   ;84DACE;
    db $80,$86,$09,$87,$1E,$49,$20,$63   ;84DAD6;
    db $6F,$75,$6C,$64,$20,$64,$65,$73   ;84DADE;
    db $74,$72,$6F,$79,$20,$79,$6F,$75   ;84DAE6;
    db $2C,$80,$80,$62,$75,$74,$20,$49   ;84DAEE;
    db $20,$77,$6F,$75,$6C,$64,$20,$6E   ;84DAF6;
    db $6F,$74,$20,$72,$6F,$62,$80,$80   ;84DAFE;
    db $6D,$79,$20,$70,$65,$74,$20,$6F   ;84DB06;
    db $66,$20,$74,$68,$61,$74,$80,$80   ;84DB0E;
    db $70,$6C,$65,$61,$73,$75,$72,$65   ;84DB16;
    db $2E,$80,$80,$83,$09,$81,$80,$86   ;84DB1E;
    db $09,$87,$1E,$48,$65,$20,$6B,$6E   ;84DB26;
    db $6F,$77,$73,$20,$68,$6F,$77,$20   ;84DB2E;
    db $74,$6F,$20,$64,$65,$61,$6C,$80   ;84DB36;
    db $80,$77,$69,$74,$68,$20,$62,$65   ;84DB3E;
    db $74,$72,$61,$79,$65,$72,$73,$2E   ;84DB46;
    db $80,$80,$83,$09,$81,$80,$86,$05   ;84DB4E;
    db $87,$1E,$53,$68,$6F,$75,$6C,$64   ;84DB56;
    db $20,$79,$6F,$75,$20,$6C,$69,$76   ;84DB5E;
    db $65,$2C,$80,$80,$49,$20,$77,$69   ;84DB66;
    db $6C,$6C,$20,$62,$65,$20,$77,$61   ;84DB6E;
    db $69,$74,$69,$6E,$67,$20,$66,$6F   ;84DB76;
    db $72,$80,$80,$79,$6F,$75,$2E,$20   ;84DB7E;
    db $44,$6F,$6E,$27,$74,$20,$64,$69   ;84DB86;
    db $73,$61,$70,$70,$6F,$69,$6E,$74   ;84DB8E;
    db $80,$80,$6D,$65,$20,$58,$21,$80   ;84DB96;
    db $80,$83,$09,$81,$80,$8A,$82,$8A   ;84DB9E;
    db $89,$86,$08,$C0,$88,$04,$45,$78   ;84DBA6;
    db $63,$65,$6C,$6C,$65,$6E,$74,$20   ;84DBAE;
    db $6A,$6F,$62,$2C,$20,$58,$21,$80   ;84DBB6;
    db $80,$49,$20,$73,$65,$65,$20,$77   ;84DBBE;
    db $68,$79,$20,$5A,$65,$72,$6F,$80   ;84DBC6;
    db $80,$63,$6F,$75,$6E,$74,$65,$64   ;84DBCE;
    db $20,$6F,$6E,$20,$79,$6F,$75,$2E   ;84DBD6;
    db $20,$59,$6F,$75,$80,$80,$61,$72   ;84DBDE;
    db $65,$20,$61,$6C,$6D,$6F,$73,$74   ;84DBE6;
    db $20,$61,$73,$20,$67,$6F,$6F,$64   ;84DBEE;
    db $20,$61,$80,$80,$68,$75,$6E,$74   ;84DBF6;
    db $65,$72,$20,$61,$73,$20,$49,$20   ;84DBFE;
    db $77,$61,$73,$2E,$80,$80,$83,$09   ;84DC06;
    db $81,$80,$86,$0B,$87,$1E,$42,$75   ;84DC0E;
    db $74,$2C,$20,$74,$68,$65,$20,$74   ;84DC16;
    db $69,$6D,$65,$20,$6F,$66,$20,$79   ;84DC1E;
    db $6F,$75,$72,$80,$80,$64,$65,$73   ;84DC26;
    db $74,$72,$75,$63,$74,$69,$6F,$6E   ;84DC2E;
    db $20,$68,$61,$73,$80,$80,$61,$72   ;84DC36;
    db $72,$69,$76,$65,$64,$21,$20,$59   ;84DC3E;
    db $6F,$75,$20,$73,$68,$61,$6C,$6C   ;84DC46;
    db $80,$80,$72,$65,$67,$72,$65,$74   ;84DC4E;
    db $20,$65,$76,$65,$72,$20,$68,$61   ;84DC56;
    db $76,$69,$6E,$67,$80,$80,$64,$65   ;84DC5E;
    db $66,$69,$65,$64,$20,$6D,$65,$21   ;84DC66;
    db $80,$80,$83,$09,$81,$80,$8A,$82   ;84DC6E;
    db $8A,$89,$86,$08,$C1,$88,$04,$4D   ;84DC76;
    db $61,$79,$62,$65,$2E,$2E,$2E,$2E   ;84DC7E;
    db $2E,$62,$75,$74,$20,$49,$27,$6D   ;84DC86;
    db $20,$6E,$6F,$74,$80,$80,$74,$68   ;84DC8E;
    db $72,$6F,$75,$67,$68,$20,$79,$65   ;84DC96;
    db $74,$21,$80,$80,$83,$09,$81,$80   ;84DC9E;
    db $8A,$86,$09,$82,$8A,$89,$86,$08   ;84DCA6;
    db $C1,$88,$04,$53,$74,$61,$79,$20   ;84DCAE;
    db $62,$61,$63,$6B,$20,$58,$2C,$20   ;84DCB6;
    db $49,$27,$6C,$6C,$80,$80,$74,$61   ;84DCBE;
    db $6B,$65,$20,$68,$69,$6D,$20,$6F   ;84DCC6;
    db $6E,$21,$80,$80,$83,$09,$81,$80   ;84DCCE;
    db $8A,$86,$09,$82,$89,$AC,$08,$C2   ;84DCD6;
    db $88,$04,$83,$01,$41,$4E,$44,$20   ;84DCDE;
    db $59,$4F,$55,$80,$80,$89,$6C,$0A   ;84DCE6;
    db $83,$03,$41,$53,$80,$80,$4D,$45   ;84DCEE;
    db $47,$41,$4D,$41,$4E,$20,$58,$82   ;84DCF6;
    db $8A,$89,$86,$08,$C0,$88,$04,$4C   ;84DCFE;
    db $65,$74,$27,$73,$20,$73,$70,$6C   ;84DD06;
    db $69,$74,$20,$75,$70,$2E,$80,$80   ;84DD0E;
    db $83,$09,$81,$80,$86,$03,$87,$1E   ;84DD16;
    db $49,$27,$6C,$6C,$20,$67,$6F,$20   ;84DD1E;
    db $69,$6E,$20,$66,$69,$72,$73,$74   ;84DD26;
    db $20,$61,$6E,$64,$80,$80,$74,$68   ;84DD2E;
    db $65,$6E,$20,$79,$6F,$75,$20,$63   ;84DD36;
    db $61,$6E,$20,$73,$6C,$69,$70,$20   ;84DD3E;
    db $69,$6E,$80,$80,$77,$68,$69,$6C   ;84DD46;
    db $65,$20,$49,$20,$6B,$65,$65,$70   ;84DD4E;
    db $20,$74,$68,$65,$20,$6D,$61,$69   ;84DD56;
    db $6E,$80,$80,$64,$65,$66,$65,$6E   ;84DD5E;
    db $73,$65,$20,$66,$6F,$72,$63,$65   ;84DD66;
    db $80,$80,$62,$75,$73,$79,$21,$80   ;84DD6E;
    db $80,$83,$09,$81,$80,$8A,$82,$8A   ;84DD76;
    db $89,$86,$08,$C0,$88,$04,$46,$69   ;84DD7E;
    db $6E,$61,$6C,$6C,$79,$21,$20,$57   ;84DD86;
    db $65,$27,$76,$65,$20,$66,$6F,$75   ;84DD8E;
    db $6E,$64,$80,$80,$53,$69,$67,$6D   ;84DD96;
    db $61,$27,$73,$20,$66,$6F,$72,$74   ;84DD9E;
    db $72,$65,$73,$73,$21,$80,$80,$83   ;84DDA6;
    db $09,$81,$80,$86,$05,$87,$1E,$4C   ;84DDAE;
    db $65,$74,$27,$73,$20,$67,$6F,$20   ;84DDB6;
    db $69,$6E,$20,$61,$6E,$64,$20,$70   ;84DDBE;
    db $75,$74,$80,$80,$61,$6E,$20,$65   ;84DDC6;
    db $6E,$64,$20,$74,$6F,$20,$68,$69   ;84DDCE;
    db $73,$20,$77,$61,$72,$80,$80,$61   ;84DDD6;
    db $67,$61,$69,$6E,$73,$74,$20,$74   ;84DDDE;
    db $68,$65,$20,$68,$75,$6D,$61,$6E   ;84DDE6;
    db $73,$21,$80,$80,$83,$09,$81,$80   ;84DDEE;
    db $8A,$82,$8A,$89,$86,$08,$C1,$88   ;84DDF6;
    db $04,$49,$20,$67,$69,$76,$65,$20   ;84DDFE;
    db $79,$6F,$75,$20,$61,$80,$80,$73   ;84DE06;
    db $70,$65,$63,$69,$61,$6C,$20,$70   ;84DE0E;
    db $72,$65,$73,$65,$6E,$74,$2E,$80   ;84DE16;
    db $80,$4E,$6F,$77,$2C,$20,$65,$6E   ;84DE1E;
    db $74,$65,$72,$20,$74,$68,$65,$80   ;84DE26;
    db $80,$63,$61,$70,$73,$75,$6C,$65   ;84DE2E;
    db $2C,$20,$70,$6C,$65,$61,$73,$65   ;84DE36;
    db $21,$80,$80,$83,$09,$81,$80,$8A   ;84DE3E;
    db $86,$09,$82,$8A,$89,$86,$08,$C1   ;84DE46;
    db $88,$04,$57,$68,$61,$74,$20,$61   ;84DE4E;
    db $20,$77,$6F,$72,$74,$68,$6C,$65   ;84DE56;
    db $73,$73,$80,$80,$67,$65,$73,$74   ;84DE5E;
    db $75,$72,$65,$21,$20,$49,$20,$63   ;84DE66;
    db $61,$6E,$27,$74,$20,$62,$65,$80   ;84DE6E;
    db $80,$64,$65,$66,$65,$61,$74,$65   ;84DE76;
    db $64,$20,$73,$6F,$20,$65,$61,$73   ;84DE7E;
    db $69,$6C,$79,$21,$80,$80,$83,$09   ;84DE86;
    db $81,$80,$86,$07,$87,$1E,$53,$6F   ;84DE8E;
    db $20,$58,$2C,$20,$69,$74,$27,$73   ;84DE96;
    db $20,$6A,$75,$73,$74,$20,$79,$6F   ;84DE9E;
    db $75,$80,$80,$61,$6E,$64,$20,$6D   ;84DEA6;
    db $65,$20,$6E,$6F,$77,$21,$80,$80   ;84DEAE;
    db $83,$09,$81,$80,$8A,$86,$05,$82   ;84DEB6;
    db $8A,$89,$86,$08,$C1,$88,$04,$57   ;84DEBE;
    db $68,$61,$74,$20,$74,$68,$65,$2E   ;84DEC6;
    db $2E,$2E,$21,$3F,$20,$57,$68,$65   ;84DECE;
    db $72,$65,$80,$80,$64,$69,$64,$20   ;84DED6;
    db $74,$68,$61,$74,$20,$65,$6E,$65   ;84DEDE;
    db $72,$67,$79,$20,$63,$6F,$6D,$65   ;84DEE6;
    db $80,$80,$66,$72,$6F,$6D,$3F,$3F   ;84DEEE;
    db $80,$80,$83,$09,$81,$80,$86,$07   ;84DEF6;
    db $87,$1E,$49,$74,$20,$72,$65,$61   ;84DEFE;
    db $6C,$6C,$79,$20,$64,$6F,$65,$73   ;84DF06;
    db $6E,$27,$74,$80,$80,$6D,$61,$74   ;84DF0E;
    db $74,$65,$72,$20,$68,$6F,$77,$20   ;84DF16;
    db $6D,$75,$63,$68,$80,$80,$65,$6E   ;84DF1E;
    db $65,$72,$67,$79,$20,$79,$6F,$75   ;84DF26;
    db $20,$61,$62,$73,$6F,$72,$62,$20   ;84DF2E;
    db $58,$2C,$80,$80,$83,$09,$81,$80   ;84DF36;
    db $86,$07,$87,$1E,$79,$6F,$75,$20   ;84DF3E;
    db $61,$72,$65,$20,$73,$74,$69,$6C   ;84DF46;
    db $6C,$20,$66,$61,$72,$20,$74,$6F   ;84DF4E;
    db $6F,$80,$80,$77,$65,$61,$6B,$21   ;84DF56;
    db $20,$50,$72,$65,$70,$61,$72,$65   ;84DF5E;
    db $20,$74,$6F,$20,$62,$65,$80,$80   ;84DF66;
    db $74,$65,$72,$6D,$69,$6E,$61,$74   ;84DF6E;
    db $65,$64,$21,$80,$80,$83,$09,$81   ;84DF76;
    db $80,$8A,$86,$07,$82,$8A,$89,$86   ;84DF7E;
    db $08,$C1,$88,$04,$58,$2C,$20,$49   ;84DF86;
    db $27,$76,$65,$20,$74,$61,$6B,$65   ;84DF8E;
    db $6E,$20,$74,$6F,$6F,$80,$80,$6D   ;84DF96;
    db $75,$63,$68,$20,$64,$61,$6D,$61   ;84DF9E;
    db $67,$65,$2E,$2E,$2E,$2E,$2E,$80   ;84DFA6;
    db $80,$83,$09,$81,$80,$86,$05,$87   ;84DFAE;
    db $1E,$41,$75,$74,$6F,$20,$72,$65   ;84DFB6;
    db $70,$61,$69,$72,$20,$73,$79,$73   ;84DFBE;
    db $74,$65,$6D,$73,$80,$80,$63,$61   ;84DFC6;
    db $6E,$27,$74,$20,$68,$61,$6E,$64   ;84DFCE;
    db $6C,$65,$20,$69,$74,$2E,$2E,$2E   ;84DFD6;
    db $80,$80,$83,$09,$81,$80,$86,$05   ;84DFDE;
    db $87,$1E,$4D,$79,$20,$70,$6F,$77   ;84DFE6;
    db $65,$72,$20,$69,$73,$20,$66,$61   ;84DFEE;
    db $64,$69,$6E,$67,$80,$80,$66,$61   ;84DFF6;
    db $73,$74,$2E,$2E,$2E,$80,$80,$83   ;84DFFE;
    db $09,$81,$80,$86,$05,$87,$1E,$59   ;84E006;
    db $6F,$75,$72,$20,$70,$6F,$77,$65   ;84E00E;
    db $72,$20,$69,$73,$20,$67,$72,$65   ;84E016;
    db $61,$74,$65,$72,$80,$80,$74,$68   ;84E01E;
    db $61,$6E,$20,$49,$20,$74,$68,$6F   ;84E026;
    db $75,$67,$68,$74,$2E,$80,$80,$83   ;84E02E;
    db $09,$81,$80,$86,$05,$87,$1E,$4D   ;84E036;
    db $61,$79,$62,$65,$20,$79,$6F,$75   ;84E03E;
    db $20,$63,$61,$6E,$20,$64,$65,$73   ;84E046;
    db $74,$72,$6F,$79,$80,$80,$53,$69   ;84E04E;
    db $67,$6D,$61,$2E,$80,$80,$83,$09   ;84E056;
    db $81,$80,$8A,$86,$05,$82,$8A,$89   ;84E05E;
    db $86,$08,$C1,$88,$04,$59,$6F,$75   ;84E066;
    db $20,$61,$72,$65,$20,$6D,$6F,$72   ;84E06E;
    db $65,$20,$70,$6F,$77,$65,$72,$66   ;84E076;
    db $75,$6C,$80,$80,$74,$68,$61,$6E   ;84E07E;
    db $20,$79,$6F,$75,$20,$77,$65,$72   ;84E086;
    db $65,$20,$62,$65,$66,$6F,$72,$65   ;84E08E;
    db $2C,$80,$80,$83,$09,$81,$80,$86   ;84E096;
    db $05,$87,$1E,$62,$75,$74,$20,$53   ;84E09E;
    db $69,$67,$6D,$61,$20,$69,$73,$20   ;84E0A6;
    db $6D,$75,$63,$68,$80,$80,$6D,$6F   ;84E0AE;
    db $72,$65,$20,$74,$68,$61,$6E,$20   ;84E0B6;
    db $68,$65,$20,$61,$70,$70,$65,$61   ;84E0BE;
    db $72,$73,$80,$80,$74,$6F,$20,$62   ;84E0C6;
    db $65,$2E,$80,$80,$83,$09,$81,$80   ;84E0CE;
    db $86,$07,$87,$1E,$59,$6F,$75,$27   ;84E0D6;
    db $72,$65,$20,$67,$6F,$69,$6E,$67   ;84E0DE;
    db $20,$74,$6F,$20,$6E,$65,$65,$64   ;84E0E6;
    db $80,$80,$61,$6E,$20,$65,$64,$67   ;84E0EE;
    db $65,$2E,$80,$80,$83,$09,$81,$80   ;84E0F6;
    db $86,$05,$87,$1E,$54,$61,$6B,$65   ;84E0FE;
    db $20,$6D,$79,$20,$61,$72,$6D,$20   ;84E106;
    db $63,$61,$6E,$6E,$6F,$6E,$80,$80   ;84E10E;
    db $61,$6E,$64,$20,$79,$6F,$75,$72   ;84E116;
    db $20,$61,$74,$74,$61,$63,$6B,$20   ;84E11E;
    db $70,$6F,$77,$65,$72,$80,$80,$73   ;84E126;
    db $68,$6F,$75,$6C,$64,$20,$69,$6E   ;84E12E;
    db $63,$72,$65,$61,$73,$65,$2E,$80   ;84E136;
    db $80,$83,$09,$81,$80,$86,$07,$87   ;84E13E;
    db $1E,$47,$6F,$6F,$64,$20,$4C,$75   ;84E146;
    db $63,$6B,$2C,$20,$58,$21,$80,$80   ;84E14E;
    db $83,$09,$81,$80,$8A,$86,$09,$82   ;84E156;
    db $8A,$89,$86,$08,$C1,$88,$04,$4E   ;84E15E;
    db $6F,$21,$21,$21,$20,$49,$74,$27   ;84E166;
    db $73,$20,$6E,$6F,$74,$80,$80,$70   ;84E16E;
    db $6F,$73,$73,$69,$62,$6C,$65,$21   ;84E176;
    db $20,$49,$27,$6D,$20,$61,$80,$80   ;84E17E;
    db $52,$65,$70,$6C,$6F,$69,$64,$21   ;84E186;
    db $20,$49,$20,$63,$61,$6E,$27,$74   ;84E18E;
    db $20,$62,$65,$80,$80,$64,$65,$73   ;84E196;
    db $74,$72,$6F,$79,$65,$64,$20,$62   ;84E19E;
    db $79,$20,$79,$6F,$75,$21,$80,$80   ;84E1A6;
    db $83,$09,$81,$80,$86,$09,$87,$1E   ;84E1AE;
    db $57,$68,$79,$2C,$20,$58,$3F,$21   ;84E1B6;
    db $80,$80,$57,$68,$79,$20,$68,$61   ;84E1BE;
    db $76,$65,$20,$79,$6F,$75,$20,$64   ;84E1C6;
    db $6F,$6E,$65,$80,$80,$74,$68,$69   ;84E1CE;
    db $73,$20,$74,$6F,$20,$75,$73,$3F   ;84E1D6;
    db $21,$80,$80,$83,$09,$81,$80,$86   ;84E1DE;
    db $07,$87,$1E,$57,$69,$74,$68,$6F   ;84E1E6;
    db $75,$74,$20,$74,$68,$65,$20,$68   ;84E1EE;
    db $75,$6D,$61,$6E,$73,$2C,$80,$80   ;84E1F6;
    db $6D,$79,$20,$52,$65,$70,$6C,$6F   ;84E1FE;
    db $69,$64,$20,$62,$72,$6F,$74,$68   ;84E206;
    db $65,$72,$73,$80,$80,$63,$6F,$75   ;84E20E;
    db $6C,$64,$20,$68,$61,$76,$65,$20   ;84E216;
    db $75,$73,$68,$65,$72,$65,$64,$20   ;84E21E;
    db $69,$6E,$80,$80,$61,$20,$6E,$65   ;84E226;
    db $77,$20,$61,$67,$65,$2E,$2E,$2E   ;84E22E;
    db $2E,$2E,$80,$80,$83,$09,$81,$80   ;84E236;
    db $8A,$86,$09,$82,$89,$67,$0B,$C1   ;84E23E;
    db $88,$00,$83,$07,$43,$41,$53,$54   ;84E246;
    db $80,$80,$86,$02,$80,$80,$86,$02   ;84E24E;
    db $48,$49,$47,$48,$57,$41,$59,$20   ;84E256;
    db $53,$54,$41,$47,$45,$80,$80,$86   ;84E25E;
    db $02,$80,$80,$86,$02,$C2,$83,$05   ;84E266;
    db $53,$50,$49,$4B,$59,$80,$80,$86   ;84E26E;
    db $02,$83,$05,$43,$52,$55,$53,$48   ;84E276;
    db $45,$52,$80,$80,$86,$02,$83,$05   ;84E27E;
    db $42,$41,$4C,$4C,$20,$44,$45,$20   ;84E286;
    db $56,$4F,$55,$58,$80,$80,$86,$02   ;84E28E;
    db $83,$05,$52,$4F,$41,$44,$20,$41   ;84E296;
    db $54,$54,$41,$43,$4B,$45,$52,$53   ;84E29E;
    db $80,$80,$86,$02,$80,$80,$86,$02   ;84E2A6;
    db $83,$05,$42,$45,$45,$20,$42,$4C   ;84E2AE;
    db $41,$44,$45,$52,$80,$80,$86,$02   ;84E2B6;
    db $80,$80,$80,$80,$86,$04,$87,$3C   ;84E2BE;
    db $80,$80,$80,$80,$80,$86,$05,$C1   ;84E2C6;
    db $4F,$43,$45,$41,$4E,$20,$53,$54   ;84E2CE;
    db $41,$47,$45,$80,$80,$86,$02,$80   ;84E2D6;
    db $80,$86,$02,$C2,$83,$05,$41,$4D   ;84E2DE;
    db $45,$4E,$48,$4F,$50,$50,$45,$52   ;84E2E6;
    db $80,$80,$86,$02,$83,$05,$53,$45   ;84E2EE;
    db $41,$20,$41,$54,$54,$41,$43,$4B   ;84E2F6;
    db $45,$52,$80,$80,$86,$02,$83,$05   ;84E2FE;
    db $47,$55,$4C,$50,$46,$45,$52,$80   ;84E306;
    db $80,$86,$02,$80,$80,$86,$02,$83   ;84E30E;
    db $05,$41,$4E,$47,$4C,$45,$52,$47   ;84E316;
    db $45,$80,$80,$86,$02,$83,$05,$43   ;84E31E;
    db $52,$55,$49,$5A,$49,$4C,$45,$52   ;84E326;
    db $80,$80,$86,$02,$83,$05,$55,$54   ;84E32E;
    db $55,$42,$4F,$52,$4F,$53,$80,$80   ;84E336;
    db $86,$02,$80,$80,$80,$80,$80,$86   ;84E33E;
    db $05,$87,$3C,$80,$80,$80,$80,$80   ;84E346;
    db $80,$80,$86,$07,$C1,$53,$4E,$4F   ;84E34E;
    db $57,$20,$4D,$4F,$55,$4E,$54,$41   ;84E356;
    db $49,$4E,$20,$53,$54,$41,$47,$45   ;84E35E;
    db $80,$80,$86,$02,$80,$80,$86,$02   ;84E366;
    db $C2,$83,$05,$52,$41,$59,$20,$42   ;84E36E;
    db $49,$54,$80,$80,$86,$02,$83,$05   ;84E376;
    db $54,$4F,$4D,$42,$4F,$54,$80,$80   ;84E37E;
    db $86,$02,$83,$05,$42,$4F,$4D,$42   ;84E386;
    db $20,$42,$45,$45,$4E,$80,$80,$86   ;84E38E;
    db $02,$83,$05,$41,$52,$4D,$4F,$52   ;84E396;
    db $20,$53,$4F,$4C,$44,$49,$45,$52   ;84E39E;
    db $80,$80,$86,$02,$83,$05,$53,$4E   ;84E3A6;
    db $4F,$57,$20,$53,$48,$4F,$4F,$54   ;84E3AE;
    db $45,$52,$80,$80,$86,$02,$80,$80   ;84E3B6;
    db $80,$80,$80,$80,$80,$86,$07,$87   ;84E3BE;
    db $3C,$80,$80,$80,$80,$80,$80,$86   ;84E3C6;
    db $06,$C1,$50,$4F,$57,$45,$52,$20   ;84E3CE;
    db $50,$4C,$41,$4E,$54,$20,$53,$54   ;84E3D6;
    db $41,$47,$45,$80,$80,$86,$02,$80   ;84E3DE;
    db $80,$86,$02,$C2,$83,$05,$47,$55   ;84E3E6;
    db $4E,$20,$56,$4F,$4C,$54,$80,$80   ;84E3EE;
    db $86,$02,$83,$05,$48,$4F,$54,$41   ;84E3F6;
    db $52,$49,$4F,$4E,$80,$80,$86,$02   ;84E3FE;
    db $83,$05,$46,$4C,$41,$4D,$4D,$49   ;84E406;
    db $4E,$47,$4C,$45,$80,$80,$86,$02   ;84E40E;
    db $83,$05,$54,$55,$52,$4E,$20,$43   ;84E416;
    db $41,$4E,$4E,$4F,$4E,$80,$80,$86   ;84E41E;
    db $02,$80,$80,$86,$02,$83,$05,$54   ;84E426;
    db $48,$55,$4E,$44,$45,$52,$20,$53   ;84E42E;
    db $4C,$49,$4D,$45,$52,$80,$80,$86   ;84E436;
    db $02,$80,$80,$80,$80,$80,$80,$86   ;84E43E;
    db $06,$87,$3C,$80,$80,$80,$80,$80   ;84E446;
    db $80,$80,$86,$07,$C1,$53,$4B,$59   ;84E44E;
    db $20,$53,$54,$41,$47,$45,$80,$80   ;84E456;
    db $86,$02,$80,$80,$86,$02,$C2,$83   ;84E45E;
    db $05,$4C,$49,$46,$54,$20,$43,$41   ;84E466;
    db $4E,$4E,$4F,$4E,$80,$80,$86,$02   ;84E46E;
    db $83,$05,$46,$4C,$41,$4D,$45,$52   ;84E476;
    db $80,$80,$86,$02,$83,$05,$53,$4B   ;84E47E;
    db $59,$20,$43,$4C,$41,$57,$80,$80   ;84E486;
    db $86,$02,$80,$80,$86,$02,$83,$05   ;84E48E;
    db $44,$45,$41,$54,$48,$20,$52,$4F   ;84E496;
    db $47,$55,$4D,$45,$52,$80,$80,$86   ;84E49E;
    db $02,$80,$80,$80,$80,$80,$80,$80   ;84E4A6;
    db $86,$07,$87,$3C,$80,$80,$80,$80   ;84E4AE;
    db $80,$80,$80,$80,$86,$08,$C1,$46   ;84E4B6;
    db $41,$43,$54,$4F,$52,$59,$20,$53   ;84E4BE;
    db $54,$41,$47,$45,$80,$80,$86,$02   ;84E4C6;
    db $80,$80,$86,$02,$C2,$83,$05,$53   ;84E4CE;
    db $43,$52,$41,$50,$20,$52,$4F,$42   ;84E4D6;
    db $4F,$80,$80,$86,$02,$83,$05,$44   ;84E4DE;
    db $49,$47,$20,$4C,$41,$42,$4F,$55   ;84E4E6;
    db $52,$80,$80,$86,$02,$83,$05,$52   ;84E4EE;
    db $4F,$4C,$4C,$49,$4E,$47,$20,$47   ;84E4F6;
    db $41,$42,$59,$4F,$4F,$4C,$80,$80   ;84E4FE;
    db $86,$02,$83,$05,$48,$4F,$47,$41   ;84E506;
    db $4E,$4D,$45,$52,$80,$80,$86,$02   ;84E50E;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84E516;
    db $86,$08,$87,$3C,$80,$80,$80,$80   ;84E51E;
    db $80,$80,$86,$06,$C1,$47,$41,$4C   ;84E526;
    db $4C,$45,$52,$59,$20,$53,$54,$41   ;84E52E;
    db $47,$45,$80,$80,$86,$02,$80,$80   ;84E536;
    db $86,$02,$C2,$83,$05,$42,$41,$54   ;84E53E;
    db $54,$4F,$4E,$20,$42,$4F,$4E,$45   ;84E546;
    db $80,$80,$86,$02,$83,$05,$42,$41   ;84E54E;
    db $54,$54,$4F,$4E,$20,$4D,$2D,$35   ;84E556;
    db $30,$31,$80,$80,$86,$02,$83,$05   ;84E55E;
    db $4D,$45,$54,$54,$4F,$4F,$4C,$20   ;84E566;
    db $43,$2D,$31,$35,$80,$80,$86,$02   ;84E56E;
    db $83,$05,$4D,$45,$54,$41,$4C,$20   ;84E576;
    db $57,$49,$4E,$47,$80,$80,$86,$02   ;84E57E;
    db $80,$80,$86,$02,$83,$05,$4D,$4F   ;84E586;
    db $4C,$45,$20,$42,$4F,$52,$45,$52   ;84E58E;
    db $80,$80,$86,$02,$80,$80,$80,$80   ;84E596;
    db $80,$80,$86,$06,$87,$3C,$80,$80   ;84E59E;
    db $80,$80,$80,$80,$86,$06,$C1,$54   ;84E5A6;
    db $4F,$57,$45,$52,$20,$53,$54,$41   ;84E5AE;
    db $47,$45,$80,$80,$86,$02,$80,$80   ;84E5B6;
    db $86,$02,$C2,$83,$05,$44,$4F,$44   ;84E5BE;
    db $47,$45,$20,$42,$4C,$41,$53,$54   ;84E5C6;
    db $45,$52,$80,$80,$86,$02,$83,$05   ;84E5CE;
    db $53,$49,$4E,$45,$20,$46,$41,$4C   ;84E5D6;
    db $4C,$45,$52,$80,$80,$86,$02,$83   ;84E5DE;
    db $05,$4A,$41,$4D,$4D,$49,$4E,$47   ;84E5E6;
    db $45,$52,$80,$80,$86,$02,$83,$05   ;84E5EE;
    db $4D,$45,$47,$41,$20,$54,$4F,$52   ;84E5F6;
    db $54,$4F,$49,$53,$80,$80,$86,$02   ;84E5FE;
    db $83,$05,$53,$4C,$49,$44,$45,$20   ;84E606;
    db $43,$41,$4E,$4E,$4F,$4E,$80,$80   ;84E60E;
    db $86,$02,$83,$05,$4C,$41,$44,$44   ;84E616;
    db $45,$52,$20,$59,$41,$44,$44,$45   ;84E61E;
    db $52,$80,$80,$86,$02,$80,$80,$80   ;84E626;
    db $80,$80,$80,$86,$06,$87,$3C,$80   ;84E62E;
    db $80,$80,$80,$86,$04,$C1,$46,$4F   ;84E636;
    db $52,$45,$53,$54,$20,$53,$54,$41   ;84E63E;
    db $47,$45,$80,$80,$86,$02,$80,$80   ;84E646;
    db $86,$02,$C2,$83,$05,$50,$4C,$41   ;84E64E;
    db $4E,$54,$59,$80,$80,$86,$02,$83   ;84E656;
    db $05,$49,$57,$4F,$52,$4D,$80,$80   ;84E65E;
    db $86,$02,$83,$05,$41,$58,$45,$20   ;84E666;
    db $4D,$41,$58,$80,$80,$86,$02,$83   ;84E66E;
    db $05,$43,$52,$41,$47,$20,$4D,$41   ;84E676;
    db $4E,$80,$80,$86,$02,$83,$05,$4D   ;84E67E;
    db $41,$44,$20,$50,$45,$43,$4B,$45   ;84E686;
    db $52,$80,$80,$86,$02,$83,$05,$43   ;84E68E;
    db $52,$45,$45,$50,$45,$52,$80,$80   ;84E696;
    db $86,$02,$80,$80,$86,$02,$83,$05   ;84E69E;
    db $52,$54,$2D,$35,$35,$4A,$80,$80   ;84E6A6;
    db $86,$02,$80,$80,$80,$80,$86,$04   ;84E6AE;
    db $87,$3C,$80,$80,$80,$80,$80,$80   ;84E6B6;
    db $80,$80,$86,$08,$C1,$53,$49,$47   ;84E6BE;
    db $4D,$41,$20,$53,$54,$41,$47,$45   ;84E6C6;
    db $80,$80,$86,$02,$80,$80,$86,$02   ;84E6CE;
    db $C2,$83,$05,$42,$4F,$53,$50,$49   ;84E6D6;
    db $44,$45,$52,$80,$80,$86,$02,$83   ;84E6DE;
    db $05,$52,$41,$4E,$47,$44,$41,$20   ;84E6E6;
    db $42,$41,$4E,$47,$44,$41,$80,$80   ;84E6EE;
    db $86,$02,$83,$05,$44,$2D,$52,$45   ;84E6F6;
    db $58,$80,$80,$86,$02,$83,$05,$56   ;84E6FE;
    db $45,$4C,$47,$55,$41,$44,$45,$52   ;84E706;
    db $80,$80,$86,$02,$80,$80,$80,$80   ;84E70E;
    db $80,$80,$80,$80,$86,$08,$87,$3C   ;84E716;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84E71E;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84E726;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84E72E;
    db $86,$18,$80,$80,$80,$80,$80,$80   ;84E736;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84E73E;
    db $80,$80,$86,$10,$87,$5A,$88,$03   ;84E746;
    db $8A,$89,$8A,$09,$43,$48,$49,$4C   ;84E74E;
    db $4C,$20,$50,$45,$4E,$47,$55,$49   ;84E756;
    db $4E,$87,$9C,$89,$8A,$09,$20,$20   ;84E75E;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E766;
    db $20,$20,$20,$87,$3C,$8A,$89,$89   ;84E76E;
    db $09,$4C,$41,$55,$4E,$43,$48,$20   ;84E776;
    db $4F,$43,$54,$4F,$50,$55,$53,$87   ;84E77E;
    db $9C,$89,$89,$09,$20,$20,$20,$20   ;84E786;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E78E;
    db $20,$20,$87,$3C,$8A,$89,$8B,$09   ;84E796;
    db $53,$54,$4F,$52,$4D,$20,$45,$41   ;84E79E;
    db $47,$4C,$45,$87,$9C,$89,$8B,$09   ;84E7A6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E7AE;
    db $20,$20,$20,$87,$3C,$8A,$89,$87   ;84E7B6;
    db $09,$41,$52,$4D,$4F,$52,$45,$44   ;84E7BE;
    db $20,$41,$52,$4D,$41,$44,$49,$4C   ;84E7C6;
    db $4C,$4F,$87,$9C,$89,$87,$09,$20   ;84E7CE;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E7D6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E7DE;
    db $87,$3C,$8A,$89,$8A,$09,$46,$4C   ;84E7E6;
    db $41,$4D,$45,$20,$4D,$41,$4D,$4D   ;84E7EE;
    db $4F,$54,$48,$87,$9C,$89,$8A,$09   ;84E7F6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E7FE;
    db $20,$20,$20,$20,$20,$87,$3C,$8A   ;84E806;
    db $89,$89,$09,$53,$54,$49,$4E,$47   ;84E80E;
    db $20,$43,$48,$41,$4D,$45,$4C,$45   ;84E816;
    db $4F,$4E,$87,$9C,$89,$89,$09,$20   ;84E81E;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E826;
    db $20,$20,$20,$20,$20,$20,$87,$3C   ;84E82E;
    db $8A,$80,$89,$89,$09,$53,$50,$41   ;84E836;
    db $52,$4B,$20,$4D,$41,$4E,$44,$52   ;84E83E;
    db $49,$4C,$4C,$87,$9C,$89,$89,$09   ;84E846;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E84E;
    db $20,$20,$20,$20,$20,$20,$87,$3C   ;84E856;
    db $8A,$89,$89,$09,$42,$4F,$4F,$4D   ;84E85E;
    db $45,$52,$20,$4B,$55,$57,$41,$4E   ;84E866;
    db $47,$45,$52,$87,$9C,$89,$89,$09   ;84E86E;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84E876;
    db $20,$20,$20,$20,$20,$20,$20,$87   ;84E87E;
    db $B0,$8A,$89,$8E,$09,$56,$49,$4C   ;84E886;
    db $45,$87,$9C,$89,$8E,$09,$20,$20   ;84E88E;
    db $20,$20,$87,$3C,$8A,$89,$8E,$09   ;84E896;
    db $53,$49,$47,$4D,$41,$87,$9C,$89   ;84E89E;
    db $8E,$09,$20,$20,$20,$20,$20,$87   ;84E8A6;
    db $3C,$8A,$89,$8E,$09,$5A,$45,$52   ;84E8AE;
    db $4F,$87,$9C,$89,$8E,$09,$20,$20   ;84E8B6;
    db $20,$20,$87,$3C,$8A,$8A,$86,$1C   ;84E8BE;
    db $82,$89,$62,$0B,$C1,$88,$00,$80   ;84E8C6;
    db $86,$01,$54,$48,$45,$20,$57,$41   ;84E8CE;
    db $52,$20,$48,$41,$53,$20,$45,$4E   ;84E8D6;
    db $44,$45,$44,$80,$80,$86,$02,$46   ;84E8DE;
    db $4F,$52,$20,$4E,$4F,$57,$20,$41   ;84E8E6;
    db $4E,$44,$20,$50,$45,$41,$43,$45   ;84E8EE;
    db $80,$80,$86,$02,$48,$41,$53,$20   ;84E8F6;
    db $42,$45,$45,$4E,$20,$52,$45,$53   ;84E8FE;
    db $54,$4F,$52,$45,$44,$2E,$80,$80   ;84E906;
    db $86,$02,$42,$55,$54,$20,$54,$48   ;84E90E;
    db $4F,$53,$45,$20,$57,$48,$4F,$80   ;84E916;
    db $80,$86,$02,$53,$41,$43,$52,$49   ;84E91E;
    db $46,$49,$43,$45,$44,$20,$54,$48   ;84E926;
    db $45,$4D,$2D,$80,$80,$86,$02,$53   ;84E92E;
    db $45,$4C,$56,$45,$53,$20,$46,$4F   ;84E936;
    db $52,$20,$54,$48,$45,$80,$80,$86   ;84E93E;
    db $02,$56,$49,$43,$54,$4F,$52,$59   ;84E946;
    db $20,$57,$49,$4C,$4C,$20,$4E,$45   ;84E94E;
    db $56,$45,$52,$80,$80,$86,$02,$52   ;84E956;
    db $45,$54,$55,$52,$4E,$2E,$80,$80   ;84E95E;
    db $80,$86,$03,$45,$58,$48,$41,$55   ;84E966;
    db $53,$54,$45,$44,$2C,$20,$58,$20   ;84E96E;
    db $47,$41,$5A,$45,$53,$80,$80,$86   ;84E976;
    db $02,$41,$54,$20,$54,$48,$45,$20   ;84E97E;
    db $44,$45,$53,$54,$52,$55,$43,$54   ;84E986;
    db $49,$4F,$4E,$80,$80,$86,$02,$48   ;84E98E;
    db $45,$20,$48,$45,$4C,$50,$45,$44   ;84E996;
    db $20,$43,$41,$55,$53,$45,$80,$80   ;84E99E;
    db $86,$02,$41,$4E,$44,$20,$57,$4F   ;84E9A6;
    db $4E,$44,$45,$52,$53,$20,$57,$48   ;84E9AE;
    db $59,$20,$48,$45,$80,$80,$86,$02   ;84E9B6;
    db $43,$48,$4F,$53,$45,$20,$54,$4F   ;84E9BE;
    db $20,$46,$49,$47,$48,$54,$2E,$80   ;84E9C6;
    db $80,$86,$02,$57,$41,$53,$20,$54   ;84E9CE;
    db $48,$45,$52,$45,$20,$41,$4E,$4F   ;84E9D6;
    db $54,$48,$45,$52,$80,$80,$86,$02   ;84E9DE;
    db $57,$41,$59,$3F,$80,$80,$80,$80   ;84E9E6;
    db $80,$86,$05,$53,$54,$41,$4E,$44   ;84E9EE;
    db $49,$4E,$47,$20,$4F,$4E,$20,$54   ;84E9F6;
    db $48,$45,$80,$80,$86,$02,$43,$4C   ;84E9FE;
    db $49,$46,$46,$2C,$20,$54,$48,$45   ;84EA06;
    db $20,$41,$4E,$53,$57,$45,$52,$53   ;84EA0E;
    db $80,$80,$86,$02,$53,$45,$45,$4D   ;84EA16;
    db $20,$54,$4F,$20,$45,$53,$43,$41   ;84EA1E;
    db $50,$45,$20,$48,$49,$4D,$2E,$80   ;84EA26;
    db $80,$86,$02,$48,$45,$20,$4F,$4E   ;84EA2E;
    db $4C,$59,$20,$4B,$4E,$4F,$57,$53   ;84EA36;
    db $20,$54,$48,$41,$54,$80,$80,$86   ;84EA3E;
    db $02,$48,$45,$27,$4C,$4C,$20,$46   ;84EA46;
    db $49,$47,$48,$54,$20,$54,$48,$45   ;84EA4E;
    db $80,$80,$86,$02,$4D,$41,$56,$45   ;84EA56;
    db $52,$49,$43,$4B,$53,$20,$41,$47   ;84EA5E;
    db $41,$49,$4E,$80,$80,$86,$02,$42   ;84EA66;
    db $45,$46,$4F,$52,$45,$20,$48,$45   ;84EA6E;
    db $20,$46,$49,$4E,$44,$53,$80,$80   ;84EA76;
    db $86,$02,$48,$49,$53,$20,$41,$4E   ;84EA7E;
    db $53,$57,$45,$52,$2E,$80,$80,$80   ;84EA86;
    db $80,$80,$86,$05,$48,$4F,$57,$20   ;84EA8E;
    db $4C,$4F,$4E,$47,$20,$57,$49,$4C   ;84EA96;
    db $4C,$20,$48,$45,$80,$80,$86,$02   ;84EA9E;
    db $4B,$45,$45,$50,$20,$4F,$4E,$20   ;84EAA6;
    db $46,$49,$47,$48,$54,$49,$4E,$47   ;84EAAE;
    db $3F,$80,$80,$86,$02,$48,$4F,$57   ;84EAB6;
    db $20,$4C,$4F,$4E,$47,$20,$57,$49   ;84EABE;
    db $4C,$4C,$20,$48,$49,$53,$80,$80   ;84EAC6;
    db $86,$02,$50,$41,$49,$4E,$20,$4C   ;84EACE;
    db $41,$53,$54,$3F,$80,$80,$86,$02   ;84EAD6;
    db $4D,$41,$59,$42,$45,$20,$4F,$4E   ;84EADE;
    db $4C,$59,$20,$54,$48,$45,$80,$80   ;84EAE6;
    db $86,$02,$58,$2D,$42,$55,$53,$54   ;84EAEE;
    db $45,$52,$20,$4F,$4E,$20,$48,$49   ;84EAF6;
    db $53,$80,$80,$86,$02,$48,$41,$4E   ;84EAFE;
    db $44,$20,$4B,$4E,$4F,$57,$53,$20   ;84EB06;
    db $46,$4F,$52,$80,$80,$86,$02,$53   ;84EB0E;
    db $55,$52,$45,$2E,$2E,$2E,$2E,$2E   ;84EB16;
    db $86,$1E,$82,$89,$24,$0A,$C1,$88   ;84EB1E;
    db $04,$59,$4F,$55,$20,$48,$41,$56   ;84EB26;
    db $45,$20,$57,$4F,$4E,$20,$41,$20   ;84EB2E;
    db $54,$45,$4D,$50,$4F,$52,$41,$52   ;84EB36;
    db $59,$80,$80,$56,$49,$43,$54,$4F   ;84EB3E;
    db $52,$59,$2C,$58,$21,$20,$57,$48   ;84EB46;
    db $41,$54,$20,$59,$4F,$55,$80,$80   ;84EB4E;
    db $44,$45,$53,$54,$52,$4F,$59,$45   ;84EB56;
    db $44,$20,$57,$41,$53,$20,$4F,$4E   ;84EB5E;
    db $4C,$59,$20,$41,$80,$80,$54,$45   ;84EB66;
    db $4D,$50,$4F,$52,$41,$52,$59,$20   ;84EB6E;
    db $42,$4F,$44,$59,$20,$2D,$2D,$20   ;84EB76;
    db $4D,$59,$80,$80,$53,$50,$49,$52   ;84EB7E;
    db $49,$54,$20,$52,$45,$4D,$41,$49   ;84EB86;
    db $4E,$53,$20,$49,$4E,$54,$41,$43   ;84EB8E;
    db $54,$2E,$80,$80,$87,$F0,$89,$24   ;84EB96;
    db $0A,$88,$00,$20,$20,$20,$20,$20   ;84EB9E;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBA6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBAE;
    db $20,$20,$20,$80,$80,$87,$01,$20   ;84EBB6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBBE;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBC6;
    db $20,$20,$20,$20,$20,$20,$20,$80   ;84EBCE;
    db $80,$87,$01,$20,$20,$20,$20,$20   ;84EBD6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBDE;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBE6;
    db $20,$20,$20,$80,$80,$87,$01,$20   ;84EBEE;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBF6;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EBFE;
    db $20,$20,$20,$20,$20,$20,$20,$80   ;84EC06;
    db $80,$87,$01,$20,$20,$20,$20,$20   ;84EC0E;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EC16;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84EC1E;
    db $20,$20,$20,$80,$80,$87,$01,$89   ;84EC26;
    db $24,$0A,$88,$04,$49,$4E,$20,$54   ;84EC2E;
    db $49,$4D,$45,$20,$49,$20,$57,$49   ;84EC36;
    db $4C,$4C,$20,$46,$49,$4E,$44,$20   ;84EC3E;
    db $4F,$54,$48,$45,$52,$80,$80,$42   ;84EC46;
    db $4F,$44,$49,$45,$53,$20,$53,$54   ;84EC4E;
    db $52,$4F,$4E,$47,$20,$45,$4E,$4F   ;84EC56;
    db $55,$47,$48,$20,$54,$4F,$80,$80   ;84EC5E;
    db $44,$4F,$20,$4D,$59,$20,$42,$49   ;84EC66;
    db $44,$44,$49,$4E,$47,$20,$41,$4E   ;84EC6E;
    db $44,$20,$49,$20,$57,$49,$4C,$4C   ;84EC76;
    db $80,$80,$52,$45,$54,$55,$52,$4E   ;84EC7E;
    db $2E,$20,$49,$20,$53,$48,$41,$4C   ;84EC86;
    db $4C,$20,$53,$45,$45,$20,$59,$4F   ;84EC8E;
    db $55,$80,$80,$53,$4F,$4F,$4E,$2C   ;84EC96;
    db $20,$58,$2E,$20,$56,$45,$52,$59   ;84EC9E;
    db $20,$53,$4F,$4F,$4E,$2E,$2E,$2E   ;84ECA6;
    db $80,$80,$82,$89,$66,$0B,$C1,$88   ;84ECAE;
    db $00,$83,$07,$53,$54,$41,$46,$46   ;84ECB6;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84ECBE;
    db $80,$80,$80,$80,$80,$80,$80,$86   ;84ECC6;
    db $0F,$87,$3C,$80,$80,$80,$80,$80   ;84ECCE;
    db $80,$80,$80,$80,$86,$09,$C1,$50   ;84ECD6;
    db $52,$4F,$47,$52,$41,$4D,$4D,$45   ;84ECDE;
    db $52,$53,$80,$80,$86,$02,$C2,$83   ;84ECE6;
    db $07,$4B,$4F,$57,$80,$80,$86,$02   ;84ECEE;
    db $83,$07,$53,$41,$42,$4F,$52,$49   ;84ECF6;
    db $80,$80,$86,$02,$83,$07,$53,$41   ;84ECFE;
    db $4B,$41,$80,$80,$86,$02,$83,$07   ;84ED06;
    db $44,$55,$45,$59,$80,$80,$86,$02   ;84ED0E;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84ED16;
    db $80,$86,$09,$87,$3C,$80,$80,$80   ;84ED1E;
    db $80,$80,$80,$80,$80,$80,$80,$86   ;84ED26;
    db $0A,$C1,$4F,$42,$4A,$45,$43,$54   ;84ED2E;
    db $20,$44,$45,$53,$49,$47,$4E,$45   ;84ED36;
    db $52,$53,$80,$80,$86,$02,$C2,$83   ;84ED3E;
    db $07,$52,$49,$50,$50,$41,$20,$48   ;84ED46;
    db $2E,$4B,$80,$80,$86,$02,$83,$07   ;84ED4E;
    db $49,$4B,$4B,$49,$80,$80,$86,$02   ;84ED56;
    db $83,$07,$54,$41,$54,$53,$55,$4E   ;84ED5E;
    db $4F,$4B,$4F,$80,$80,$86,$02,$80   ;84ED66;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84ED6E;
    db $80,$86,$0A,$87,$3C,$80,$80,$80   ;84ED76;
    db $80,$80,$80,$80,$80,$86,$08,$C1   ;84ED7E;
    db $53,$43,$52,$4F,$4C,$4C,$20,$44   ;84ED86;
    db $45,$53,$49,$47,$4E,$45,$52,$53   ;84ED8E;
    db $80,$80,$86,$02,$C2,$83,$07,$41   ;84ED96;
    db $4B,$41,$80,$80,$86,$02,$83,$07   ;84ED9E;
    db $49,$52,$49,$4B,$4F,$80,$80,$86   ;84EDA6;
    db $02,$83,$07,$53,$43,$52,$20,$44   ;84EDAE;
    db $41,$4D,$41,$53,$48,$49,$49,$80   ;84EDB6;
    db $80,$86,$02,$83,$07,$42,$41,$4E   ;84EDBE;
    db $44,$59,$80,$80,$86,$02,$83,$07   ;84EDC6;
    db $4E,$4F,$52,$80,$80,$86,$02,$83   ;84EDCE;
    db $07,$41,$49,$80,$80,$86,$02,$80   ;84EDD6;
    db $80,$80,$80,$80,$80,$80,$80,$86   ;84EDDE;
    db $08,$87,$3C,$80,$80,$80,$80,$80   ;84EDE6;
    db $80,$80,$86,$07,$C1,$49,$4C,$4C   ;84EDEE;
    db $55,$53,$54,$52,$41,$54,$4F,$52   ;84EDF6;
    db $53,$80,$80,$86,$02,$C2,$83,$07   ;84EDFE;
    db $4D,$41,$4E,$41,$53,$48,$49,$80   ;84EE06;
    db $80,$86,$02,$83,$07,$55,$4B,$41   ;84EE0E;
    db $42,$49,$4E,$80,$80,$86,$02,$83   ;84EE16;
    db $07,$59,$41,$53,$55,$59,$4F,$80   ;84EE1E;
    db $80,$86,$02,$83,$07,$52,$49,$50   ;84EE26;
    db $50,$41,$20,$48,$2E,$4B,$80,$80   ;84EE2E;
    db $86,$02,$83,$07,$49,$4B,$4B,$49   ;84EE36;
    db $80,$80,$86,$02,$83,$07,$54,$41   ;84EE3E;
    db $54,$53,$55,$4E,$4F,$4B,$4F,$80   ;84EE46;
    db $80,$86,$02,$80,$80,$80,$80,$80   ;84EE4E;
    db $80,$80,$86,$07,$87,$3C,$80,$80   ;84EE56;
    db $80,$80,$80,$86,$05,$C1,$53,$4F   ;84EE5E;
    db $55,$4E,$44,$20,$44,$45,$53,$49   ;84EE66;
    db $47,$4E,$45,$52,$80,$80,$86,$02   ;84EE6E;
    db $C2,$83,$07,$45,$4C,$46,$80,$80   ;84EE76;
    db $80,$80,$86,$04,$C1,$4D,$55,$53   ;84EE7E;
    db $49,$43,$20,$43,$4F,$4D,$50,$4F   ;84EE86;
    db $53,$45,$52,$53,$80,$80,$86,$02   ;84EE8E;
    db $C2,$83,$07,$53,$45,$54,$53,$55   ;84EE96;
    db $4F,$80,$80,$86,$02,$83,$07,$54   ;84EE9E;
    db $4F,$4D,$4F,$5A,$4F,$55,$80,$80   ;84EEA6;
    db $86,$02,$83,$07,$53,$41,$54,$4F   ;84EEAE;
    db $80,$80,$86,$02,$83,$07,$59,$55   ;84EEB6;
    db $4B,$4F,$80,$80,$86,$02,$83,$07   ;84EEBE;
    db $4B,$49,$52,$52,$59,$80,$80,$86   ;84EEC6;
    db $02,$80,$80,$80,$80,$80,$86,$05   ;84EECE;
    db $87,$3C,$80,$80,$80,$80,$80,$80   ;84EED6;
    db $80,$80,$80,$86,$09,$C1,$50,$4C   ;84EEDE;
    db $41,$4E,$4E,$45,$52,$53,$80,$80   ;84EEE6;
    db $86,$02,$C2,$83,$07,$44,$72,$2E   ;84EEEE;
    db $4B,$55,$4E,$80,$80,$86,$02,$83   ;84EEF6;
    db $07,$49,$4E,$45,$4D,$55,$52,$59   ;84EEFE;
    db $41,$52,$80,$80,$86,$02,$83,$07   ;84EF06;
    db $42,$55,$52,$55,$53,$45,$52,$41   ;84EF0E;
    db $20,$5A,$4F,$46,$59,$80,$80,$86   ;84EF16;
    db $02,$83,$07,$47,$55,$43,$48,$49   ;84EF1E;
    db $4B,$4F,$53,$48,$49,$80,$80,$86   ;84EF26;
    db $02,$80,$80,$80,$80,$80,$80,$80   ;84EF2E;
    db $80,$80,$86,$09,$87,$3C,$80,$80   ;84EF36;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84EF3E;
    db $80,$80,$86,$0C,$C1,$50,$52,$4F   ;84EF46;
    db $44,$55,$43,$45,$52,$80,$80,$86   ;84EF4E;
    db $02,$C2,$83,$07,$50,$52,$4F,$46   ;84EF56;
    db $45,$53,$53,$4F,$52,$20,$46,$80   ;84EF5E;
    db $80,$86,$02,$80,$80,$80,$80,$80   ;84EF66;
    db $80,$80,$80,$80,$80,$80,$80,$86   ;84EF6E;
    db $0C,$87,$3C,$80,$80,$80,$80,$80   ;84EF76;
    db $80,$80,$80,$80,$86,$09,$C1,$41   ;84EF7E;
    db $53,$53,$49,$53,$54,$41,$4E,$54   ;84EF86;
    db $53,$80,$80,$86,$02,$C2,$83,$07   ;84EF8E;
    db $48,$4F,$4E,$4F,$4C,$55,$4C,$55   ;84EF96;
    db $20,$59,$41,$4D,$41,$80,$80,$86   ;84EF9E;
    db $02,$83,$07,$57,$48,$49,$54,$45   ;84EFA6;
    db $20,$52,$4F,$43,$4B,$80,$80,$86   ;84EFAE;
    db $02,$83,$07,$4B,$41,$47,$47,$59   ;84EFB6;
    db $80,$80,$86,$02,$83,$07,$4F,$4D   ;84EFBE;
    db $41,$4F,$4D,$41,$80,$80,$86,$02   ;84EFC6;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84EFCE;
    db $80,$86,$09,$87,$3C,$80,$80,$80   ;84EFD6;
    db $80,$80,$80,$80,$80,$80,$86,$09   ;84EFDE;
    db $C1,$4D,$41,$52,$4B,$45,$54,$20   ;84EFE6;
    db $50,$4C,$41,$4E,$4E,$45,$52,$53   ;84EFEE;
    db $80,$80,$86,$02,$C2,$83,$07,$53   ;84EFF6;
    db $41,$57,$41,$52,$49,$4E,$80,$80   ;84EFFE;
    db $86,$02,$83,$07,$4E,$41,$42,$45   ;84F006;
    db $80,$80,$86,$02,$83,$07,$4D,$49   ;84F00E;
    db $54,$43,$48,$41,$4E,$80,$80,$86   ;84F016;
    db $02,$83,$07,$47,$4F,$45,$20,$43   ;84F01E;
    db $48,$41,$4E,$80,$80,$86,$02,$80   ;84F026;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84F02E;
    db $86,$09,$87,$3C,$80,$80,$80,$80   ;84F036;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84F03E;
    db $86,$0C,$C1,$53,$50,$45,$43,$49   ;84F046;
    db $41,$4C,$20,$54,$48,$41,$4E,$4B   ;84F04E;
    db $53,$80,$80,$86,$02,$C2,$83,$07   ;84F056;
    db $43,$41,$50,$43,$4F,$4D,$20,$41   ;84F05E;
    db $4C,$4C,$20,$53,$54,$41,$46,$46   ;84F066;
    db $80,$80,$86,$02,$80,$80,$80,$80   ;84F06E;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84F076;
    db $86,$0C,$87,$3C,$80,$80,$80,$80   ;84F07E;
    db $80,$80,$80,$80,$80,$80,$80,$80   ;84F086;
    db $80,$80,$80,$80,$86,$10,$89,$26   ;84F08E;
    db $0A,$54,$48,$41,$4E,$4B,$53,$20   ;84F096;
    db $46,$4F,$52,$20,$50,$4C,$41,$59   ;84F09E;
    db $49,$4E,$47,$21,$21,$80,$80,$83   ;84F0A6;
    db $06,$50,$52,$45,$53,$45,$4E,$54   ;84F0AE;
    db $45,$44,$80,$80,$83,$09,$42,$59   ;84F0B6;
    db $80,$80,$87,$1E,$C3,$88,$00,$83   ;84F0BE;
    db $06,$10,$11,$12,$13,$14,$15,$16   ;84F0C6;
    db $17,$80,$83,$06,$18,$19,$1A,$1B   ;84F0CE;
    db $1C,$7F,$24,$26,$87,$F0,$87,$F0   ;84F0D6;
    db $87,$F0,$87,$F0,$87,$F0,$87,$F0   ;84F0DE;
    db $87,$F0,$87,$F0,$87,$F0,$87,$78   ;84F0E6;
    db $89,$26,$0A,$20,$20,$20,$20,$20   ;84F0EE;
    db $20,$20,$20,$20,$20,$20,$20,$20   ;84F0F6;
    db $20,$20,$20,$20,$20,$20,$20,$80   ;84F0FE;
    db $80,$87,$01,$83,$06,$20,$20,$20   ;84F106;
    db $20,$20,$20,$20,$20,$20,$80,$80   ;84F10E;
    db $87,$01,$83,$09,$20,$20,$80,$80   ;84F116;
    db $87,$01,$83,$06,$20,$20,$20,$20   ;84F11E;
    db $20,$20,$20,$20,$80,$87,$01,$83   ;84F126;
    db $06,$20,$20,$20,$20,$20,$20,$20   ;84F12E;
    db $20,$87,$01,$82,$FF,$FF,$FF,$FF   ;84F136;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F13E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F146;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F14E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F156;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F15E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F166;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F16E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F176;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F17E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F186;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F18E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F196;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F19E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F1FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F206;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F20E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F216;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F21E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F226;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F22E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F236;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F23E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F246;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F24E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F256;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F25E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F266;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F26E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F276;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F27E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F286;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F28E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F296;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F29E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F2FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F306;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F30E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F316;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F31E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F326;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F32E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F336;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F33E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F346;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F34E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F356;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F35E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F366;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F36E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F376;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F37E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F386;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F38E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F396;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F39E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F3FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F406;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F40E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F416;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F41E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F426;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F42E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F436;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F43E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F446;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F44E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F456;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F45E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F466;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F46E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F476;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F47E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F486;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F48E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F496;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F49E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F4FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F506;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F50E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F516;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F51E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F526;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F52E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F536;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F53E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F546;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F54E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F556;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F55E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F566;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F56E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F576;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F57E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F586;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F58E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F596;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F59E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F5FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F606;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F60E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F616;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F61E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F626;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F62E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F636;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F63E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F646;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F64E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F656;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F65E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F666;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F66E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F676;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F67E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F686;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F68E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F696;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F69E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F6FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F706;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F70E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F716;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F71E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F726;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F72E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F736;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F73E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F746;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F74E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F756;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F75E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F766;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F76E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F776;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F77E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F786;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F78E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F796;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F79E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F7FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F806;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F80E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F816;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F81E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F826;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F82E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F836;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F83E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F846;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F84E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F856;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F85E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F866;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F86E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F876;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F87E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F886;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F88E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F896;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F89E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F8FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F906;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F90E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F916;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F91E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F926;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F92E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F936;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F93E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F946;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F94E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F956;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F95E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F966;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F96E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F976;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F97E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F986;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F98E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F996;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F99E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9A6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9AE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9B6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9BE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9C6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9CE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9D6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9DE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9E6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9EE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9F6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84F9FE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FA9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FABE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FACE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAD6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FADE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAF6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FAFE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FB9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBBE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBCE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBD6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBDE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBF6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FBFE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FC9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCBE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCCE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCD6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCDE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCF6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FCFE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FD9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDBE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDCE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDD6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDDE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDF6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FDFE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FE9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEBE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FECE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FED6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEDE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEF6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FEFE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF06;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF0E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF16;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF1E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF26;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF2E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF36;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF3E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF46;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF4E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF56;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF5E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF66;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF76;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF7E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF86;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF8E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF96;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FF9E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFA6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFAE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFB6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFBE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFC6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFCE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFD6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFDE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFE6;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFEE;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;84FFF6;
    db $FF,$FF                           ;84FFFE;

ORG $818000

CODE_818000:
    PHD                                  ;818000;
    PEA.W $0E68                          ;818001;
    PLD                                  ;818004;
    LDX.B $01                            ;818005;
    JSR.W (PTR16_81801D,X)               ;818007;
    LDA.W $1E5D                          ;81800A;
    BEQ CODE_818013                      ;81800D;
    LDA.B $0F                            ;81800F;
    BMI CODE_818017                      ;818011;

CODE_818013:
    JSL.L CODE_848EEA                    ;818013;

CODE_818017:
    JSL.L CODE_8280B4                    ;818017;
    PLD                                  ;81801B;
    RTL                                  ;81801C;

PTR16_81801D:
    dw CODE_818021                       ;81801D;
    dw CODE_81803D                       ;81801F;

CODE_818021:
    LDA.B #$02                           ;818021;
    STA.B $01                            ;818023;
    LDA.B #$38                           ;818025;
    STA.B $11                            ;818027;
    STZ.B $18                            ;818029;
    STZ.B $12                            ;81802B;
    STZ.B $06                            ;81802D;
    STZ.B $09                            ;81802F;
    LDA.B #$40                           ;818031;
    STA.B $16                            ;818033;
    LDA.B #$00                           ;818035;
    JSL.L CODE_848F07                    ;818037;
    BRA CODE_81804D                      ;81803B;

CODE_81803D:
    LDA.W $1E4C                          ;81803D;
    CMP.W $1E6A                          ;818040;
    BNE CODE_81804D                      ;818043;
    LDA.W $1E4F                          ;818045;
    CMP.W $1E6C                          ;818048;
    BEQ CODE_81808E                      ;81804B;

CODE_81804D:
    LDX.W $1E4C                          ;81804D;
    LDA.W DATA8_86A6B6,X                 ;818050;
    STA.B $05                            ;818053;
    LDX.W $1E4F                          ;818055;
    LDA.W DATA8_86A6BA,X                 ;818058;
    STA.B $08                            ;81805B;
    LDA.B #$80                           ;81805D;
    SEC                                  ;81805F;
    SBC.B $05                            ;818060;
    BCS CODE_818067                      ;818062;
    EOR.B #$FF                           ;818064;
    INC A                                ;818066;

CODE_818067:
    CMP.B #$20                           ;818067;
    BCS CODE_818088                      ;818069;
    LDA.B #$70                           ;81806B;
    SEC                                  ;81806D;
    SBC.B $08                            ;81806E;
    BCS CODE_818075                      ;818070;
    EOR.B #$FF                           ;818072;
    INC A                                ;818074;

CODE_818075:
    CMP.B #$20                           ;818075;
    BCS CODE_818088                      ;818077;
    LDA.B #$80                           ;818079;
    STA.B $05                            ;81807B;
    LDA.B #$70                           ;81807D;
    STA.B $08                            ;81807F;
    LDA.B #$01                           ;818081;
    JSL.L CODE_848F07                    ;818083;
    RTS                                  ;818087;

CODE_818088:
    LDA.B #$00                           ;818088;
    JSL.L CODE_848F07                    ;81808A;

CODE_81808E:
    RTS                                  ;81808E;

CODE_81808F:
    PHD                                  ;81808F;
    PEA.W $1428                          ;818090;
    PLD                                  ;818093;
    LDA.B $01                            ;818094;
    BNE CODE_8180B0                      ;818096;
    INC.B $01                            ;818098;
    LDA.B #$38                           ;81809A;
    STA.B $11                            ;81809C;
    STZ.B $18                            ;81809E;
    STZ.B $12                            ;8180A0;
    STZ.B $06                            ;8180A2;
    STZ.B $09                            ;8180A4;
    LDA.B #$40                           ;8180A6;
    STA.B $16                            ;8180A8;
    LDA.B #$02                           ;8180AA;
    JSL.L CODE_848F07                    ;8180AC;

CODE_8180B0:
    LDA.W $1E4B                          ;8180B0;
    CMP.B #$02                           ;8180B3;
    BNE CODE_8180D4                      ;8180B5;
    LDA.W $1E4F                          ;8180B7;
    ASL A                                ;8180BA;
    ASL A                                ;8180BB;
    ADC.W $1E4C                          ;8180BC;
    TAX                                  ;8180BF;
    LDA.W DATA8_86A6BE,X                 ;8180C0;
    BMI CODE_8180D4                      ;8180C3;
    TAX                                  ;8180C5;
    LDA.W DATA8_86A6CE,X                 ;8180C6;
    STA.B $05                            ;8180C9;
    LDA.W DATA8_86A6D6,X                 ;8180CB;
    STA.B $08                            ;8180CE;
    JSL.L CODE_8280B4                    ;8180D0;

CODE_8180D4:
    LDA.W $1E5D                          ;8180D4;
    BEQ CODE_8180DD                      ;8180D7;
    LDA.B $0F                            ;8180D9;
    BPL CODE_8180E1                      ;8180DB;

CODE_8180DD:
    JSL.L CODE_848EEA                    ;8180DD;

CODE_8180E1:
    PLD                                  ;8180E1;
    RTL                                  ;8180E2;

CODE_8180E3:
    JSR.W CODE_8180E7                    ;8180E3;
    RTL                                  ;8180E6;

CODE_8180E7:
    PHD                                  ;8180E7;
    PHP                                  ;8180E8;
    REP #$20                             ;8180E9;
    LDA.W #$0000                         ;8180EB;
    TCD                                  ;8180EE;
    SEP #$30                             ;8180EF;
    LDA.W PTR16_86A6DE,Y                 ;8180F1;
    STA.B $10                            ;8180F4;
    LDA.W PTR16_86A6DF,Y                 ;8180F6;
    STA.B $11                            ;8180F9;
    LDY.B #$00                           ;8180FB;

CODE_8180FD:
    LDA.B ($10),Y                        ;8180FD;
    BEQ CODE_81812B                      ;8180FF;
    INY                                  ;818101;
    STA.B $00                            ;818102;
    LDA.B ($10),Y                        ;818104;
    INY                                  ;818106;
    STA.B $02                            ;818107;

CODE_818109:
    LDA.B ($10),Y                        ;818109;
    INY                                  ;81810B;
    STA.B $14                            ;81810C;
    LDA.B ($10),Y                        ;81810E;
    INY                                  ;818110;
    STA.B $15                            ;818111;
    LDX.B $02                            ;818113;

CODE_818115:
    LDA.B ($10),Y                        ;818115;
    INY                                  ;818117;
    STA.B ($14)                          ;818118;
    DEX                                  ;81811A;
    BEQ CODE_818125                      ;81811B;
    REP #$20                             ;81811D;
    INC.B $14                            ;81811F;
    SEP #$20                             ;818121;
    BRA CODE_818115                      ;818123;

CODE_818125:
    DEC.B $00                            ;818125;
    BNE CODE_818109                      ;818127;
    BRA CODE_8180FD                      ;818129;

CODE_81812B:
    PLP                                  ;81812B;
    PLD                                  ;81812C;
    RTS                                  ;81812D;

CODE_81812E:
    PHP                                  ;81812E;
    PHD                                  ;81812F;
    SEP #$30                             ;818130;
    PEA.W $0BA8                          ;818132;
    PLD                                  ;818135;
    JSL.L CODE_849ACD                    ;818136;
    STA.B $65                            ;81813A;
    LDA.B $2B                            ;81813C;
    ORA.B $2C                            ;81813E;
    STA.B $5E                            ;818140;
    LDA.W $1F0C                          ;818142;
    ORA.B $30                            ;818145;
    ORA.B $89                            ;818147;
    STA.B $8A                            ;818149;
    JSR.W CODE_819AC2                    ;81814B;
    JSR.W CODE_819B23                    ;81814E;
    JSR.W CODE_819FD7                    ;818151;
    LDA.B $02                            ;818154;
    CMP.B #$40                           ;818156;
    BNE CODE_81815C                      ;818158;
    STZ.B $37                            ;81815A;

CODE_81815C:
    LDA.B $8C                            ;81815C;
    TSB.B $37                            ;81815E;
    LDX.B $01                            ;818160;
    JSR.W (PTR16_81819A,X)               ;818162;
    STZ.B $2C                            ;818165;
    LDA.B $65                            ;818167;
    STA.B $66                            ;818169;
    STA.L $700800                        ;81816B;
    CMP.L $700800                        ;81816F;
    BEQ CODE_81817D                      ;818173;
    DEC.B $83                            ;818175;
    BPL CODE_81817F                      ;818177;
    STZ.B $83                            ;818179;
    BRA CODE_81817F                      ;81817B;

CODE_81817D:
    INC.B $83                            ;81817D;

CODE_81817F:
    JSR.W CODE_8199C9                    ;81817F;
    JSR.W CODE_819B71                    ;818182;
    JSL.L CODE_848FCA                    ;818185;
    LDA.B #$08                           ;818189;
    TRB.B $7E                            ;81818B;
    STZ.B $19                            ;81818D;
    LDA.B $11                            ;81818F;
    AND.B #$3F                           ;818191;
    ORA.B $69                            ;818193;
    STA.B $11                            ;818195;
    PLD                                  ;818197;
    PLP                                  ;818198;
    RTL                                  ;818199;

PTR16_81819A:
    dw CODE_81819E                       ;81819A;
    dw CODE_818258                       ;81819C;

CODE_81819E:
    LDA.B #$FF                           ;81819E;
    STA.B $10                            ;8181A0;
    STZ.B $18                            ;8181A2;
    STZ.B $73                            ;8181A4;
    LDA.B #$40                           ;8181A6;
    STA.B $69                            ;8181A8;
    LDA.W $1F7F                          ;8181AA;
    BEQ CODE_8181B1                      ;8181AD;
    STZ.B $69                            ;8181AF;

CODE_8181B1:
    LDA.B #$FF                           ;8181B1;
    STA.B $10                            ;8181B3;
    STZ.B $64                            ;8181B5;
    LDA.B #$04                           ;8181B7;
    STA.B $78                            ;8181B9;
    STZ.B $04                            ;8181BB;
    STZ.B $07                            ;8181BD;
    LDA.B #$22                           ;8181BF;
    STA.B $6F                            ;8181C1;
    LDA.B #$02                           ;8181C3;
    STA.B $01                            ;8181C5;
    LDA.B #$22                           ;8181C7;
    STA.B $02                            ;8181C9;
    LDA.W $1F7F                          ;8181CB;
    BEQ CODE_8181D4                      ;8181CE;
    LDA.B #$44                           ;8181D0;
    STA.B $02                            ;8181D2;

CODE_8181D4:
    LDX.W $1F7A                          ;8181D4;
    LDA.B #$02                           ;8181D7;
    ORA.W DATA8_86BAC2,X                 ;8181D9;
    STA.B $11                            ;8181DC;
    STZ.B $5B                            ;8181DE;
    STZ.B $5A                            ;8181E0;
    LDA.B #$FF                           ;8181E2;
    STA.B $66                            ;8181E4;
    STZ.B $82                            ;8181E6;
    LDA.W $1F7A                          ;8181E8;
    ASL A                                ;8181EB;
    ASL A                                ;8181EC;
    TAX                                  ;8181ED;
    REP #$20                             ;8181EE;
    JSL.L CODE_80E689                    ;8181F0;
    STZ.B $79                            ;8181F4;
    LDA.B $05                            ;8181F6;
    STA.B $22                            ;8181F8;
    LDA.B $08                            ;8181FA;
    STA.B $24                            ;8181FC;
    LDA.W #$A552                         ;8181FE;
    STA.B $20                            ;818201;
    LDA.W #$FA80                         ;818203;
    STA.B $5F                            ;818206;
    LDA.W #$0060                         ;818208;
    STA.W $1E70                          ;81820B;
    LDA.W #$0080                         ;81820E;
    STA.W $1E72                          ;818211;
    LDA.W #$0080                         ;818214;
    STA.W $1E74                          ;818217;
    LDA.W #$0080                         ;81821A;
    STA.W $1E76                          ;81821D;
    LDA.W #$A597                         ;818220;
    STA.B $31                            ;818223;
    SEP #$20                             ;818225;
    INC.B $0E                            ;818227;
    STZ.B $30                            ;818229;
    STZ.B $89                            ;81822B;
    STZ.B $88                            ;81822D;
    STZ.B $8A                            ;81822F;
    STZ.B $7F                            ;818231;
    STZ.B $80                            ;818233;
    LDA.B #$03                           ;818235;
    STA.B $67                            ;818237;
    LDA.B #$08                           ;818239;
    STA.B $2F                            ;81823B;
    JSL.L CODE_849086                    ;81823D;
    TAX                                  ;818241;
    LDA.L CODE_008000,X                  ;818242;
    CMP.L CODE_408000,X                  ;818246;
    BEQ CODE_81824F                      ;81824A;
    STZ.W $1F99                          ;81824C;

CODE_81824F:
    LDA.B #$47                           ;81824F;
    JSL.L CODE_848F07                    ;818251;
    JMP.W CODE_819D7E                    ;818255;

CODE_818258:
    LDA.W $1F23                          ;818258;
    BEQ CODE_81826C                      ;81825B;
    BMI CODE_81826C                      ;81825D;
    LDA.B $02                            ;81825F;
    CMP.B #$1A                           ;818261;
    BEQ CODE_81826C                      ;818263;
    LDA.B $27                            ;818265;
    BEQ CODE_81826C                      ;818267;
    JMP.W CODE_8196DC                    ;818269;

CODE_81826C:
    LDA.B $6B                            ;81826C;
    BEQ CODE_818287                      ;81826E;
    LDA.W $0B9C                          ;818270;
    AND.B #$01                           ;818273;
    STA.B $0E                            ;818275;
    LDA.B $02                            ;818277;
    CMP.B #$18                           ;818279;
    BEQ CODE_818287                      ;81827B;
    DEC.B $6B                            ;81827D;
    BNE CODE_818287                      ;81827F;
    LDA.B #$01                           ;818281;
    STA.B $0E                            ;818283;
    STZ.B $30                            ;818285;

CODE_818287:
    LDA.B $56                            ;818287;
    BEQ CODE_81828D                      ;818289;
    DEC.B $56                            ;81828B;

CODE_81828D:
    JSR.W CODE_81A058                    ;81828D;
    JSR.W CODE_8197C8                    ;818290;
    JSR.W CODE_819712                    ;818293;
    JSR.W CODE_819789                    ;818296;
    JSR.W CODE_819A66                    ;818299;
    LDX.B $02                            ;81829C;
    JMP.W (PTR16_8182A1,X)               ;81829E;

PTR16_8182A1:
    dw CODE_8182E9                       ;8182A1;
    dw CODE_818398                       ;8182A3;
    dw CODE_818403                       ;8182A5;
    dw CODE_818481                       ;8182A7;
    dw CODE_81851D                       ;8182A9;
    dw CODE_8185F6                       ;8182AB;
    dw CODE_818A45                       ;8182AD;
    dw CODE_818651                       ;8182AF;
    dw CODE_81870E                       ;8182B1;
    dw CODE_818834                       ;8182B3;
    dw CODE_818904                       ;8182B5;
    dw CODE_818B31                       ;8182B7;
    dw CODE_818B43                       ;8182B9;
    dw CODE_818BA7                       ;8182BB;
    dw CODE_818B44                       ;8182BD;
    dw CODE_818B4D                       ;8182BF;
    dw CODE_8189A0                       ;8182C1;
    dw CODE_8189F0                       ;8182C3;
    dw CODE_818D29                       ;8182C5;
    dw CODE_818D69                       ;8182C7;
    dw CODE_818DAB                       ;8182C9;
    dw CODE_818DE1                       ;8182CB;
    dw CODE_818E75                       ;8182CD;
    dw CODE_818E86                       ;8182CF;
    dw CODE_818F41                       ;8182D1;
    dw CODE_81917C                       ;8182D3;
    dw CODE_8191DD                       ;8182D5;
    dw CODE_81923F                       ;8182D7;
    dw CODE_8192E9                       ;8182D9;
    dw CODE_81930E                       ;8182DB;
    dw CODE_818F29                       ;8182DD;
    dw CODE_818F4E                       ;8182DF;
    dw CODE_818FB4                       ;8182E1;
    dw CODE_81900D                       ;8182E3;
    dw CODE_819051                       ;8182E5;
    dw CODE_818B4D                       ;8182E7;

CODE_8182E9:
    LDX.B $03                            ;8182E9;
    JMP.W (PTR16_8182EE,X)               ;8182EB;

PTR16_8182EE:
    dw CODE_8182F2                       ;8182EE;
    dw CODE_81831B                       ;8182F0;

CODE_8182F2:
    LDA.B #$02                           ;8182F2;
    STA.B $03                            ;8182F4;
    REP #$20                             ;8182F6;
    LDA.W #$0178                         ;8182F8;
    STA.B $5C                            ;8182FB;
    LDA.W #$A552                         ;8182FD;
    STA.B $20                            ;818300;
    LDA.W #$A597                         ;818302;
    STA.B $31                            ;818305;
    JSR.W CODE_81992A                    ;818307;
    SEP #$20                             ;81830A;
    JSR.W CODE_819588                    ;81830C;
    LDA.B #$00                           ;81830F;
    CLC                                  ;818311;
    ADC.B $6F                            ;818312;
    CLC                                  ;818314;
    ADC.B $73                            ;818315;
    JSL.L CODE_848F07                    ;818317;

CODE_81831B:
    JSR.W CODE_819E45                    ;81831B;
    LDA.B $5E                            ;81831E;
    BIT.B #$04                           ;818320;
    BNE CODE_818327                      ;818322;
    JMP.W CODE_819658                    ;818324;

CODE_818327:
    LDA.B $59                            ;818327;
    BNE CODE_818331                      ;818329;
    LDA.B $3B                            ;81832B;
    BIT.B #$40                           ;81832D;
    BEQ CODE_818339                      ;81832F;

CODE_818331:
    LDA.B #$00                           ;818331;
    CLC                                  ;818333;
    ADC.B $73                            ;818334;
    JSR.W CODE_81942B                    ;818336;

CODE_818339:
    LDA.B $3B                            ;818339;
    BIT.B #$80                           ;81833B;
    BEQ CODE_818348                      ;81833D;
    JSL.L CODE_849958                    ;81833F;
    BCS CODE_818348                      ;818343;
    JMP.W CODE_8195E2                    ;818345;

CODE_818348:
    LDA.B $4F                            ;818348;
    BEQ CODE_81834E                      ;81834A;
    DEC.B $4F                            ;81834C;

CODE_81834E:
    JSR.W CODE_819576                    ;81834E;
    BEQ CODE_818368                      ;818351;
    JSL.L CODE_8499AF                    ;818353;
    BCS CODE_818368                      ;818357;
    LDA.B #$02                           ;818359;
    STA.B $02                            ;81835B;
    STZ.B $03                            ;81835D;
    LDA.B $4F                            ;81835F;
    BEQ CODE_818368                      ;818361;
    LDA.B #$04                           ;818363;
    STA.B $02                            ;818365;
    RTS                                  ;818367;

CODE_818368:
    LDA.B $37                            ;818368;
    BIT.B #$04                           ;81836A;
    BEQ CODE_81837E                      ;81836C;
    STZ.B $29                            ;81836E;
    LDA.B #$18                           ;818370;
    STA.B $2A                            ;818372;
    JSR.W CODE_819D70                    ;818374;
    CMP.B #$13                           ;818377;
    BNE CODE_81837E                      ;818379;
    JMP.W CODE_8196F7                    ;81837B;

CODE_81837E:
    LDA.B $37                            ;81837E;
    BIT.B #$08                           ;818380;
    BEQ CODE_818390                      ;818382;
    JSR.W CODE_819FB1                    ;818384;
    BNE CODE_818390                      ;818387;
    LDA.B #$2A                           ;818389;
    STA.B $4E                            ;81838B;
    JMP.W CODE_8196E5                    ;81838D;

CODE_818390:
    LDA.B #$22                           ;818390;
    CLC                                  ;818392;
    ADC.B $73                            ;818393;
    JMP.W CODE_819560                    ;818395;

CODE_818398:
    LDX.B $03                            ;818398;
    JMP.W (PTR16_81839D,X)               ;81839A;

PTR16_81839D:
    dw CODE_8183A1                       ;81839D;
    dw CODE_8183B5                       ;81839F;

CODE_8183A1:
    LDA.B #$02                           ;8183A1;
    STA.B $03                            ;8183A3;
    JSR.W CODE_81992A                    ;8183A5;
    LDA.B #$05                           ;8183A8;
    STA.B $4E                            ;8183AA;
    LDA.B #$1C                           ;8183AC;
    CLC                                  ;8183AE;
    ADC.B $6F                            ;8183AF;
    JSL.L CODE_848F07                    ;8183B1;

CODE_8183B5:
    LDA.B $59                            ;8183B5;
    BNE CODE_8183BF                      ;8183B7;
    LDA.B $3B                            ;8183B9;
    BIT.B #$40                           ;8183BB;
    BEQ CODE_8183C4                      ;8183BD;

CODE_8183BF:
    LDA.B #$1C                           ;8183BF;
    JSR.W CODE_81942B                    ;8183C1;

CODE_8183C4:
    LDA.B $3B                            ;8183C4;
    BIT.B #$80                           ;8183C6;
    BEQ CODE_8183D3                      ;8183C8;
    JSL.L CODE_849958                    ;8183CA;
    BCS CODE_8183D3                      ;8183CE;
    JMP.W CODE_8195E2                    ;8183D0;

CODE_8183D3:
    LDA.B $37                            ;8183D3;
    AND.B #$03                           ;8183D5;
    BIT.B $5E                            ;8183D7;
    BEQ CODE_8183DE                      ;8183D9;
    JMP.W CODE_8195CC                    ;8183DB;

CODE_8183DE:
    LDA.B $5E                            ;8183DE;
    BIT.B #$04                           ;8183E0;
    BNE CODE_8183E7                      ;8183E2;
    JMP.W CODE_819658                    ;8183E4;

CODE_8183E7:
    JSR.W CODE_819576                    ;8183E7;
    BNE CODE_8183EF                      ;8183EA;
    JMP.W CODE_8195CC                    ;8183EC;

CODE_8183EF:
    DEC.B $4E                            ;8183EF;
    BNE CODE_8183FA                      ;8183F1;
    LDA.B #$04                           ;8183F3;
    STA.B $02                            ;8183F5;
    STZ.B $03                            ;8183F7;
    RTS                                  ;8183F9;

CODE_8183FA:
    JSL.L CODE_82823E                    ;8183FA;
    LDA.B #$3E                           ;8183FE;
    JMP.W CODE_819560                    ;818400;

CODE_818403:
    LDX.B $03                            ;818403;
    JMP.W (PTR16_818408,X)               ;818405;

PTR16_818408:
    dw CODE_81840C                       ;818408;
    dw CODE_818425                       ;81840A;

CODE_81840C:
    LDA.B #$02                           ;81840C;
    STA.B $03                            ;81840E;
    REP #$20                             ;818410;
    LDA.W #$0178                         ;818412;
    STA.B $5C                            ;818415;
    SEP #$20                             ;818417;
    JSR.W CODE_81992A                    ;818419;
    LDA.B #$09                           ;81841C;
    CLC                                  ;81841E;
    ADC.B $6F                            ;81841F;
    JSL.L CODE_848F07                    ;818421;

CODE_818425:
    LDA.B $59                            ;818425;
    BNE CODE_81842F                      ;818427;
    LDA.B $3B                            ;818429;
    BIT.B #$40                           ;81842B;
    BEQ CODE_818434                      ;81842D;

CODE_81842F:
    LDA.B #$09                           ;81842F;
    JSR.W CODE_8193A8                    ;818431;

CODE_818434:
    LDA.B $3B                            ;818434;
    BIT.B #$80                           ;818436;
    BEQ CODE_818446                      ;818438;
    JSL.L CODE_849958                    ;81843A;
    BCS CODE_818446                      ;81843E;
    JSR.W CODE_8195E2                    ;818440;
    JMP.W CODE_818481                    ;818443;

CODE_818446:
    LDA.B $37                            ;818446;
    AND.B #$03                           ;818448;
    BIT.B $5E                            ;81844A;
    BEQ CODE_818453                      ;81844C;
    STZ.B $4F                            ;81844E;
    JMP.W CODE_8195CC                    ;818450;

CODE_818453:
    LDA.B $5E                            ;818453;
    BIT.B #$04                           ;818455;
    BNE CODE_81845C                      ;818457;
    JMP.W CODE_819658                    ;818459;

CODE_81845C:
    JSR.W CODE_819576                    ;81845C;
    BNE CODE_818468                      ;81845F;
    LDA.B #$0A                           ;818461;
    STA.B $4F                            ;818463;
    JMP.W CODE_8195CC                    ;818465;

CODE_818468:
    JSR.W CODE_819960                    ;818468;
    JSL.L CODE_82823E                    ;81846B;
    LDA.B $7E                            ;81846F;
    BIT.B #$08                           ;818471;
    BEQ CODE_81847B                      ;818473;
    LDA.W $0B9C                          ;818475;
    LSR A                                ;818478;
    BCC CODE_818480                      ;818479;

CODE_81847B:
    LDA.B #$2B                           ;81847B;
    JMP.W CODE_819536                    ;81847D;

CODE_818480:
    RTS                                  ;818480;

CODE_818481:
    LDX.B $03                            ;818481;
    JMP.W (PTR16_818486,X)               ;818483;

PTR16_818486:
    dw CODE_81848C                       ;818486;
    dw CODE_8184A2                       ;818488;
    dw CODE_818514                       ;81848A;

CODE_81848C:
    LDA.B #$02                           ;81848C;
    STA.B $03                            ;81848E;
    JSR.W CODE_819978                    ;818490;
    LDA.B #$06                           ;818493;
    JSL.L CODE_8088CD                    ;818495;
    LDA.B #$01                           ;818499;
    CLC                                  ;81849B;
    ADC.B $6F                            ;81849C;
    JSL.L CODE_848F07                    ;81849E;

CODE_8184A2:
    LDA.W $1F9E                          ;8184A2;
    BPL CODE_8184AD                      ;8184A5;
    BIT.B #$01                           ;8184A7;
    BNE CODE_8184AD                      ;8184A9;
    STA.B $1E                            ;8184AB;

CODE_8184AD:
    LDA.B $59                            ;8184AD;
    BNE CODE_8184B7                      ;8184AF;
    LDA.B $3B                            ;8184B1;
    BIT.B #$40                           ;8184B3;
    BEQ CODE_8184BC                      ;8184B5;

CODE_8184B7:
    LDA.B #$01                           ;8184B7;
    JSR.W CODE_8193A8                    ;8184B9;

CODE_8184BC:
    LDA.B $5E                            ;8184BC;
    BIT.B #$08                           ;8184BE;
    BEQ CODE_8184D9                      ;8184C0;
    JSR.W CODE_819E97                    ;8184C2;
    BEQ CODE_8184D6                      ;8184C5;
    LDA.B #$04                           ;8184C7;
    STA.B $03                            ;8184C9;
    LDA.B #$02                           ;8184CB;
    STA.B $84                            ;8184CD;
    LDA.B #$0F                           ;8184CF;
    JSL.L CODE_84A333                    ;8184D1;
    RTS                                  ;8184D5;

CODE_8184D6:
    JMP.W CODE_819658                    ;8184D6;

CODE_8184D9:
    STZ.B $1A                            ;8184D9;
    STZ.B $1B                            ;8184DB;
    STZ.B $1F                            ;8184DD;
    JSR.W CODE_819978                    ;8184DF;
    LDA.B $1D                            ;8184E2;
    BPL CODE_8184EC                      ;8184E4;
    JSR.W CODE_819658                    ;8184E6;
    JMP.W CODE_81851D                    ;8184E9;

CODE_8184EC:
    LDA.B $37                            ;8184EC;
    BIT.B #$80                           ;8184EE;
    BNE CODE_8184F8                      ;8184F0;
    JSR.W CODE_819658                    ;8184F2;
    JMP.W CODE_81851D                    ;8184F5;

CODE_8184F8:
    BIT.B #$08                           ;8184F8;
    BEQ CODE_818508                      ;8184FA;
    JSR.W CODE_819FB1                    ;8184FC;
    BNE CODE_818508                      ;8184FF;
    LDA.B #$2A                           ;818501;
    STA.B $4E                            ;818503;
    JMP.W CODE_8196E5                    ;818505;

CODE_818508:
    JSL.L CODE_828174                    ;818508;
    JSR.W CODE_819D00                    ;81850C;
    LDA.B #$23                           ;81850F;
    JMP.W CODE_819536                    ;818511;

CODE_818514:
    DEC.B $84                            ;818514;
    BNE CODE_81851C                      ;818516;
    LDA.B #$02                           ;818518;
    STA.B $03                            ;81851A;

CODE_81851C:
    RTS                                  ;81851C;

CODE_81851D:
    LDX.B $03                            ;81851D;
    JMP.W (PTR16_818522,X)               ;81851F;

PTR16_818522:
    dw CODE_818526                       ;818522;
    dw CODE_818552                       ;818524;

CODE_818526:
    STA.L $700804                        ;818526;
    CMP.L $700804                        ;81852A;
    BEQ CODE_81853A                      ;81852E;
    DEC.W $1F9E                          ;818530;

CODE_818533:
    BPL CODE_818542                      ;818533;
    STZ.W $1F9E                          ;818535;
    BRA CODE_818542                      ;818538;

CODE_81853A:
    INC.W $1F9E                          ;81853A;
    BNE CODE_818542                      ;81853D;
    DEC.W $1F9E                          ;81853F;

CODE_818542:
    LDA.B #$02                           ;818542;
    STA.B $03                            ;818544;
    JSR.W CODE_81992A                    ;818546;
    LDA.B #$04                           ;818549;
    CLC                                  ;81854B;
    ADC.B $6F                            ;81854C;
    JSL.L CODE_848F07                    ;81854E;

CODE_818552:
    LDA.B $59                            ;818552;
    BNE CODE_81855C                      ;818554;
    LDA.B $3B                            ;818556;
    BIT.B #$40                           ;818558;
    BEQ CODE_818561                      ;81855A;

CODE_81855C:
    LDA.B #$04                           ;81855C;
    JSR.W CODE_8193A8                    ;81855E;

CODE_818561:
    LDA.B $5E                            ;818561;
    BIT.B #$04                           ;818563;
    BEQ CODE_81856D                      ;818565;
    JSR.W CODE_819665                    ;818567;
    JMP.W CODE_8185F6                    ;81856A;

CODE_81856D:
    LDA.B $3B                            ;81856D;
    BIT.B #$80                           ;81856F;
    BEQ CODE_8185B4                      ;818571;
    LDA.B $2C                            ;818573;
    BPL CODE_818581                      ;818575;
    AND.B #$40                           ;818577;
    TAY                                  ;818579;
    STZ.B $81                            ;81857A;
    INC.B $81                            ;81857C;
    JMP.W CODE_819687                    ;81857E;

CODE_818581:
    JSL.L CODE_849958                    ;818581;
    BCS CODE_8185B4                      ;818585;
    JSL.L CODE_849A24                    ;818587;
    BCC CODE_8185AD                      ;81858B;
    CMP.B #$3E                           ;81858D;
    BEQ CODE_81859F                      ;81858F;
    CMP.B #$3F                           ;818591;
    BEQ CODE_8185A6                      ;818593;
    BVC CODE_81859C                      ;818595;
    PHY                                  ;818597;
    JSR.W CODE_8198F2                    ;818598;
    PLY                                  ;81859B;

CODE_81859C:
    JMP.W CODE_819687                    ;81859C;

CODE_81859F:
    LDA.B $8A                            ;81859F;
    BNE CODE_81859C                      ;8185A1;
    JMP.W CODE_81967C                    ;8185A3;

CODE_8185A6:
    LDA.B $8A                            ;8185A6;
    BNE CODE_81859C                      ;8185A8;
    JMP.W CODE_8196CB                    ;8185AA;

CODE_8185AD:
    LDA.B $3C                            ;8185AD;
    BEQ CODE_8185B4                      ;8185AF;
    JMP.W CODE_8195E2                    ;8185B1;

CODE_8185B4:
    LDA.B $37                            ;8185B4;
    AND.B #$03                           ;8185B6;
    BIT.B $5E                            ;8185B8;
    BEQ CODE_8185C5                      ;8185BA;
    LDA.B $2D                            ;8185BC;
    CMP.B #$36                           ;8185BE;
    BEQ CODE_8185C5                      ;8185C0;
    JSR.W CODE_819699                    ;8185C2;

CODE_8185C5:
    STZ.B $1F                            ;8185C5;
    REP #$20                             ;8185C7;
    STZ.B $1A                            ;8185C9;
    JSR.W CODE_819978                    ;8185CB;
    LDA.B $5F                            ;8185CE;
    CMP.B $1C                            ;8185D0;
    BMI CODE_8185D6                      ;8185D2;
    STA.B $1C                            ;8185D4;

CODE_8185D6:
    JSL.L CODE_828174                    ;8185D6;
    JSR.W CODE_819D00                    ;8185DA;
    SEP #$20                             ;8185DD;
    LDA.B $37                            ;8185DF;
    BIT.B #$08                           ;8185E1;
    BEQ CODE_8185F1                      ;8185E3;
    JSR.W CODE_819FB1                    ;8185E5;
    BNE CODE_8185F1                      ;8185E8;
    LDA.B #$2A                           ;8185EA;
    STA.B $4E                            ;8185EC;
    JMP.W CODE_8196E5                    ;8185EE;

CODE_8185F1:
    LDA.B #$26                           ;8185F1;
    JMP.W CODE_819536                    ;8185F3;

CODE_8185F6:
    LDX.B $03                            ;8185F6;
    JMP.W (PTR16_8185FB,X)               ;8185F8;

PTR16_8185FB:
    dw CODE_8185FF                       ;8185FB;
    dw CODE_81861F                       ;8185FD;

CODE_8185FF:
    LDA.B #$02                           ;8185FF;
    STA.B $03                            ;818601;
    REP #$20                             ;818603;
    LDA.W #$0178                         ;818605;
    STA.B $5C                            ;818608;
    SEP #$20                             ;81860A;
    LDA.B #$04                           ;81860C;
    STA.B $4E                            ;81860E;
    LDA.B #$07                           ;818610;
    JSL.L CODE_8088CD                    ;818612;
    LDA.B #$07                           ;818616;
    CLC                                  ;818618;
    ADC.B $6F                            ;818619;
    JSL.L CODE_848F07                    ;81861B;

CODE_81861F:
    LDA.B $59                            ;81861F;
    BNE CODE_818629                      ;818621;
    LDA.B $3B                            ;818623;
    BIT.B #$40                           ;818625;
    BEQ CODE_81862E                      ;818627;

CODE_818629:
    LDA.B #$07                           ;818629;
    JSR.W CODE_8193A8                    ;81862B;

CODE_81862E:
    DEC.B $4E                            ;81862E;
    BNE CODE_818637                      ;818630;
    STZ.B $4F                            ;818632;
    JMP.W CODE_8195CC                    ;818634;

CODE_818637:
    LDA.B $3B                            ;818637;
    BIT.B #$80                           ;818639;
    BEQ CODE_818640                      ;81863B;
    JMP.W CODE_8195E2                    ;81863D;

CODE_818640:
    LDA.B $37                            ;818640;
    BIT.B #$03                           ;818642;
    BEQ CODE_81864C                      ;818644;
    JSR.W CODE_8195D7                    ;818646;
    JMP.W CODE_818403                    ;818649;

CODE_81864C:
    LDA.B #$29                           ;81864C;
    JMP.W CODE_819536                    ;81864E;

CODE_818651:
    LDX.B $03                            ;818651;
    JMP.W (PTR16_818656,X)               ;818653;

PTR16_818656:
    dw CODE_81865A                       ;818656;
    dw CODE_818699                       ;818658;

CODE_81865A:
    LDA.B #$02                           ;81865A;
    STA.B $03                            ;81865C;
    LDA.B #$09                           ;81865E;
    JSL.L CODE_8088CD                    ;818660;
    LDA.B #$08                           ;818664;
    STA.B $2F                            ;818666;
    STA.B $30                            ;818668;
    LDA.B #$80                           ;81866A;
    TRB.B $87                            ;81866C;
    REP #$20                             ;81866E;
    STZ.B $79                            ;818670;
    LDA.W #$A552                         ;818672;
    STA.B $20                            ;818675;
    SEP #$20                             ;818677;
    STZ.B $6E                            ;818679;
    STZ.B $64                            ;81867B;
    STZ.B $50                            ;81867D;
    JSR.W CODE_81992A                    ;81867F;
    LDX.B #$44                           ;818682;
    LDA.W $1F99                          ;818684;
    BIT.B #$04                           ;818687;
    BEQ CODE_818693                      ;818689;
    REP #$20                             ;81868B;
    LSR.B $1C                            ;81868D;
    SEP #$20                             ;81868F;
    LDX.B #$4D                           ;818691;

CODE_818693:
    TXA                                  ;818693;
    JSL.L CODE_848F07                    ;818694;
    RTS                                  ;818698;

CODE_818699:
    REP #$20                             ;818699;
    LDA.W #$FA80                         ;81869B;
    CMP.B $1C                            ;81869E;
    BMI CODE_8186A4                      ;8186A0;
    STA.B $1C                            ;8186A2;

CODE_8186A4:
    SEP #$20                             ;8186A4;
    LDA.B $0F                            ;8186A6;
    BPL CODE_8186CB                      ;8186A8;
    LDA.B #$3C                           ;8186AA;
    STA.B $6B                            ;8186AC;
    LDA.B $5E                            ;8186AE;
    BIT.B #$04                           ;8186B0;
    BEQ CODE_8186BD                      ;8186B2;
    LDA.B #$07                           ;8186B4;
    JSL.L CODE_8088CD                    ;8186B6;
    JMP.W CODE_8195CC                    ;8186BA;

CODE_8186BD:
    JSR.W CODE_819658                    ;8186BD;
    LDA.B #$02                           ;8186C0;
    STA.B $03                            ;8186C2;
    LDA.B #$26                           ;8186C4;
    JSL.L CODE_848F07                    ;8186C6;
    RTS                                  ;8186CA;

CODE_8186CB:
    JSL.L CODE_848EEA                    ;8186CB;
    LDA.B $37                            ;8186CF;
    AND.B #$03                           ;8186D1;
    BIT.B $5E                            ;8186D3;
    BEQ CODE_8186E3                      ;8186D5;
    JSR.W CODE_819576                    ;8186D7;
    JSR.W CODE_819699                    ;8186DA;
    LDA.B #$3C                           ;8186DD;
    STA.B $6B                            ;8186DF;
    STZ.B $0F                            ;8186E1;

CODE_8186E3:
    LDA.B $5E                            ;8186E3;
    BIT.B #$04                           ;8186E5;
    BEQ CODE_8186EF                      ;8186E7;
    STZ.B $2F                            ;8186E9;
    STZ.B $1C                            ;8186EB;
    STZ.B $1D                            ;8186ED;

CODE_8186EF:
    JSL.L CODE_828174                    ;8186EF;
    LDA.B #$02                           ;8186F3;
    BIT.B $0F                            ;8186F5;
    BVC CODE_8186FB                      ;8186F7;
    LDA.B #$02                           ;8186F9;

CODE_8186FB:
    LDX.W $1F7A                          ;8186FB;
    ORA.W DATA8_86BAC2,X                 ;8186FE;
    STA.B $11                            ;818701;
    LDA.B $0F                            ;818703;
    LSR A                                ;818705;
    BCC CODE_81870D                      ;818706;
    LDA.B #$00                           ;818708;
    JMP.W CODE_819C66                    ;81870A;

CODE_81870D:
    RTS                                  ;81870D;

CODE_81870E:
    LDX.B $03                            ;81870E;
    JMP.W (PTR16_818713,X)               ;818710;

PTR16_818713:
    dw CODE_81871B                       ;818713;
    dw CODE_818745                       ;818715;
    dw CODE_818790                       ;818717;
    dw CODE_818824                       ;818719;

CODE_81871B:
    LDA.B #$02                           ;81871B;
    STA.B $03                            ;81871D;
    LDA.B #$04                           ;81871F;
    STA.B $4E                            ;818721;
    LDA.B #$06                           ;818723;
    JSL.L CODE_8088CD                    ;818725;
    LDA.B $4F                            ;818729;
    STA.B $69                            ;81872B;
    STZ.B $79                            ;81872D;
    STZ.B $7A                            ;81872F;
    LDA.B $11                            ;818731;
    AND.B #$3F                           ;818733;
    ORA.B $69                            ;818735;
    STA.B $11                            ;818737;
    JSR.W CODE_819DBE                    ;818739;
    LDA.B #$1A                           ;81873C;
    CLC                                  ;81873E;
    ADC.B $6F                            ;81873F;
    JSL.L CODE_848F07                    ;818741;

CODE_818745:
    DEC.B $4E                            ;818745;
    BMI CODE_81875D                      ;818747;
    LDA.B $59                            ;818749;
    BNE CODE_818753                      ;81874B;
    LDA.B $3B                            ;81874D;
    BIT.B #$40                           ;81874F;
    BEQ CODE_818758                      ;818751;

CODE_818753:
    LDA.B #$1A                           ;818753;
    JSR.W CODE_81942B                    ;818755;

CODE_818758:
    LDA.B #$3C                           ;818758;
    JMP.W CODE_819560                    ;81875A;

CODE_81875D:
    LDA.B #$04                           ;81875D;
    STA.B $03                            ;81875F;
    LDA.B #$08                           ;818761;
    STA.B $4E                            ;818763;
    JSR.W CODE_81882D                    ;818765;
    JSR.W CODE_81992A                    ;818768;
    REP #$20                             ;81876B;
    LDA.W #$0178                         ;81876D;
    LDX.B $56                            ;818770;
    BEQ CODE_81877F                      ;818772;
    LDX.B $6C                            ;818774;
    BNE CODE_81877F                      ;818776;
    LDX.B #$10                           ;818778;
    STX.B $55                            ;81877A;
    LDA.W #$0375                         ;81877C;

CODE_81877F:
    STA.B $5C                            ;81877F;
    BIT.B $68                            ;818781;
    BVS CODE_818789                      ;818783;
    EOR.W #$FFFF                         ;818785;
    INC A                                ;818788;

CODE_818789:
    STA.B $1A                            ;818789;
    SEP #$20                             ;81878B;
    JMP.W CODE_81882D                    ;81878D;

CODE_818790:
    LDA.B $59                            ;818790;
    BNE CODE_81879A                      ;818792;
    LDA.B $3B                            ;818794;
    BIT.B #$40                           ;818796;
    BEQ CODE_81879F                      ;818798;

CODE_81879A:
    LDA.B #$1A                           ;81879A;
    JSR.W CODE_8193A8                    ;81879C;

CODE_81879F:
    LDA.B $5E                            ;81879F;
    BIT.B #$08                           ;8187A1;
    BEQ CODE_8187BC                      ;8187A3;
    JSR.W CODE_819E97                    ;8187A5;
    BEQ CODE_8187B9                      ;8187A8;
    LDA.B #$06                           ;8187AA;
    STA.B $03                            ;8187AC;
    LDA.B #$02                           ;8187AE;
    STA.B $84                            ;8187B0;
    LDA.B #$0F                           ;8187B2;
    JSL.L CODE_84A333                    ;8187B4;
    RTS                                  ;8187B8;

CODE_8187B9:
    JMP.W CODE_819658                    ;8187B9;

CODE_8187BC:
    LDA.B $3B                            ;8187BC;
    BIT.B #$80                           ;8187BE;
    BEQ CODE_8187FC                      ;8187C0;
    LDA.B $2C                            ;8187C2;
    BPL CODE_8187D0                      ;8187C4;
    AND.B #$40                           ;8187C6;
    TAY                                  ;8187C8;
    STZ.B $81                            ;8187C9;
    INC.B $81                            ;8187CB;
    JMP.W CODE_819687                    ;8187CD;

CODE_8187D0:
    JSL.L CODE_849958                    ;8187D0;
    BCS CODE_8187FC                      ;8187D4;
    JSL.L CODE_849A24                    ;8187D6;
    BCC CODE_8187FC                      ;8187DA;
    CMP.B #$3E                           ;8187DC;
    BEQ CODE_8187EE                      ;8187DE;
    CMP.B #$3F                           ;8187E0;
    BEQ CODE_8187F5                      ;8187E2;
    BVC CODE_8187EB                      ;8187E4;
    PHY                                  ;8187E6;
    JSR.W CODE_8198F2                    ;8187E7;
    PLY                                  ;8187EA;

CODE_8187EB:
    JMP.W CODE_819687                    ;8187EB;

CODE_8187EE:
    LDA.B $8A                            ;8187EE;
    BNE CODE_8187EB                      ;8187F0;
    JMP.W CODE_81967C                    ;8187F2;

CODE_8187F5:
    LDA.B $8A                            ;8187F5;
    BNE CODE_8187EB                      ;8187F7;
    JMP.W CODE_8196CB                    ;8187F9;

CODE_8187FC:
    DEC.B $4E                            ;8187FC;
    BNE CODE_81881B                      ;8187FE;
    LDA.B $37                            ;818800;
    BIT.B #$80                           ;818802;
    BEQ CODE_818818                      ;818804;
    LDA.B #$06                           ;818806;
    STA.B $02                            ;818808;
    LDA.B #$02                           ;81880A;
    STA.B $03                            ;81880C;
    LDA.B #$03                           ;81880E;
    CLC                                  ;818810;
    ADC.B $6F                            ;818811;
    JSL.L CODE_848F07                    ;818813;
    RTS                                  ;818817;

CODE_818818:
    JMP.W CODE_819658                    ;818818;

CODE_81881B:
    JSL.L CODE_828174                    ;81881B;
    LDA.B #$3C                           ;81881F;
    JMP.W CODE_819536                    ;818821;

CODE_818824:
    DEC.B $84                            ;818824;
    BNE CODE_81882C                      ;818826;
    LDA.B #$04                           ;818828;
    STA.B $03                            ;81882A;

CODE_81882C:
    RTS                                  ;81882C;

CODE_81882D:
    LDA.B $69                            ;81882D;
    EOR.B #$40                           ;81882F;
    STA.B $69                            ;818831;
    RTS                                  ;818833;

CODE_818834:
    LDX.B $03                            ;818834;
    JMP.W (PTR16_818839,X)               ;818836;

PTR16_818839:
    dw CODE_81883D                       ;818839;
    dw CODE_81886A                       ;81883B;

CODE_81883D:
    LDA.B #$02                           ;81883D;
    STA.B $03                            ;81883F;
    LDA.B #$07                           ;818841;
    JSL.L CODE_8088CD                    ;818843;
    JSR.W CODE_81992A                    ;818847;
    LDA.B #$08                           ;81884A;
    STA.B $77                            ;81884C;
    LDA.B $69                            ;81884E;
    STA.B $4E                            ;818850;
    REP #$20                             ;818852;
    LDA.W #$0178                         ;818854;
    STA.B $5C                            ;818857;
    LDA.B $1C                            ;818859;
    STA.B $61                            ;81885B;
    STZ.B $79                            ;81885D;
    SEP #$20                             ;81885F;
    LDA.B #$17                           ;818861;
    CLC                                  ;818863;
    ADC.B $6F                            ;818864;
    JSL.L CODE_848F07                    ;818866;

CODE_81886A:
    LDA.B $59                            ;81886A;
    BNE CODE_818874                      ;81886C;
    LDA.B $3B                            ;81886E;
    BIT.B #$40                           ;818870;
    BEQ CODE_818879                      ;818872;

CODE_818874:
    LDA.B #$17                           ;818874;
    JSR.W CODE_8193A8                    ;818876;

CODE_818879:
    LDA.B #$39                           ;818879;
    JSR.W CODE_819536                    ;81887B;
    LDA.B $0F                            ;81887E;
    AND.B #$40                           ;818880;
    STA.W $0000                          ;818882;
    LDA.B $4E                            ;818885;
    EOR.W $0000                          ;818887;
    STA.B $69                            ;81888A;
    LDA.B $11                            ;81888C;
    AND.B #$3F                           ;81888E;
    ORA.B $69                            ;818890;
    STA.B $11                            ;818892;
    LDA.B $3B                            ;818894;
    BIT.B #$80                           ;818896;
    BEQ CODE_8188BC                      ;818898;
    LDA.B $4E                            ;81889A;
    STA.B $4F                            ;81889C;
    JSR.W CODE_819CD3                    ;81889E;
    BNE CODE_8188A6                      ;8188A1;
    JSR.W CODE_8198F2                    ;8188A3;

CODE_8188A6:
    JSL.L CODE_849A24                    ;8188A6;
    LDA.B $2C                            ;8188AA;
    BIT.B #$03                           ;8188AC;
    BEQ CODE_8188B4                      ;8188AE;
    LDA.B #$01                           ;8188B0;
    STA.B $81                            ;8188B2;

CODE_8188B4:
    LDA.B $4E                            ;8188B4;
    EOR.B #$40                           ;8188B6;
    TAY                                  ;8188B8;
    JMP.W CODE_819687                    ;8188B9;

CODE_8188BC:
    LDA.B $5E                            ;8188BC;
    BIT.B #$04                           ;8188BE;
    BEQ CODE_8188C5                      ;8188C0;
    JMP.W CODE_8195CC                    ;8188C2;

CODE_8188C5:
    LDA.B $37                            ;8188C5;
    AND.B #$03                           ;8188C7;
    BIT.B $5E                            ;8188C9;
    BEQ CODE_8188D3                      ;8188CB;
    LDA.B $2D                            ;8188CD;
    CMP.B #$36                           ;8188CF;
    BNE CODE_8188D6                      ;8188D1;

CODE_8188D3:
    JMP.W CODE_819658                    ;8188D3;

CODE_8188D6:
    LDA.B $8A                            ;8188D6;
    BNE CODE_8188EB                      ;8188D8;
    JSR.W CODE_819CD3                    ;8188DA;
    CMP.B #$3E                           ;8188DD;
    BNE CODE_8188E4                      ;8188DF;
    JMP.W CODE_81967C                    ;8188E1;

CODE_8188E4:
    CMP.B #$3F                           ;8188E4;
    BNE CODE_8188EB                      ;8188E6;
    JMP.W CODE_8196CB                    ;8188E8;

CODE_8188EB:
    LDA.B $61                            ;8188EB;
    STA.B $1C                            ;8188ED;
    LDA.B $62                            ;8188EF;
    STA.B $1D                            ;8188F1;
    LDA.B $77                            ;8188F3;
    BEQ CODE_8188FD                      ;8188F5;
    DEC.B $77                            ;8188F7;
    STZ.B $1C                            ;8188F9;
    STZ.B $1D                            ;8188FB;

CODE_8188FD:
    JSL.L CODE_82820A                    ;8188FD;
    JMP.W CODE_819BB5                    ;818901;

CODE_818904:
    LDX.B $03                            ;818904;
    JMP.W (PTR16_818909,X)               ;818906;

PTR16_818909:
    dw CODE_81890D                       ;818909;
    dw CODE_818943                       ;81890B;

CODE_81890D:
    LDA.B #$02                           ;81890D;
    STA.B $03                            ;81890F;
    STZ.B $75                            ;818911;
    JSR.W CODE_81992A                    ;818913;
    LDA.B #$08                           ;818916;
    JSL.L CODE_8088CD                    ;818918;
    JSR.W CODE_819588                    ;81891C;
    LDA.B #$13                           ;81891F;
    CLC                                  ;818921;
    ADC.B $6F                            ;818922;
    JSL.L CODE_848F07                    ;818924;
    LDA.B #$10                           ;818928;
    STA.B $55                            ;81892A;
    REP #$20                             ;81892C;
    LDA.W #$0375                         ;81892E;
    STA.B $5C                            ;818931;
    LDA.W #$BB38                         ;818933;
    STA.B $20                            ;818936;
    LDA.W #$A597                         ;818938;
    STA.B $31                            ;81893B;
    SEP #$20                             ;81893D;
    LDA.B #$20                           ;81893F;
    STA.B $52                            ;818941;

CODE_818943:
    JSR.W CODE_819C0B                    ;818943;
    LDA.B $59                            ;818946;
    BNE CODE_818950                      ;818948;
    LDA.B $3B                            ;81894A;
    BIT.B #$40                           ;81894C;
    BEQ CODE_818955                      ;81894E;

CODE_818950:
    LDA.B #$13                           ;818950;
    JSR.W CODE_8193A8                    ;818952;

CODE_818955:
    LDA.B $3B                            ;818955;
    BIT.B #$80                           ;818957;
    BEQ CODE_818967                      ;818959;
    JSL.L CODE_849958                    ;81895B;
    BCS CODE_818967                      ;81895F;
    JSR.W CODE_819E04                    ;818961;
    JMP.W CODE_8195E2                    ;818964;

CODE_818967:
    LDA.B $5E                            ;818967;
    BIT.B #$04                           ;818969;
    BNE CODE_818973                      ;81896B;
    JSR.W CODE_819E04                    ;81896D;
    JMP.W CODE_819658                    ;818970;

CODE_818973:
    LDA.B #$01                           ;818973;
    BIT.B $69                            ;818975;
    BVS CODE_81897B                      ;818977;
    LDA.B #$02                           ;818979;

CODE_81897B:
    BIT.B $5E                            ;81897B;
    BNE CODE_818984                      ;81897D;
    JSR.W CODE_819D1A                    ;81897F;
    BNE CODE_818987                      ;818982;

CODE_818984:
    JMP.W CODE_819709                    ;818984;

CODE_818987:
    JSL.L CODE_82823E                    ;818987;
    DEC.B $52                            ;81898B;
    BPL CODE_818992                      ;81898D;
    JMP.W CODE_819709                    ;81898F;

CODE_818992:
    BIT.B $0F                            ;818992;
    BVC CODE_81899B                      ;818994;
    LDA.B #$01                           ;818996;
    JSR.W CODE_819C66                    ;818998;

CODE_81899B:
    LDA.B #$35                           ;81899B;
    JMP.W CODE_819536                    ;81899D;

CODE_8189A0:
    LDX.B $03                            ;8189A0;
    BNE CODE_8189C1                      ;8189A2;
    INC.B $03                            ;8189A4;
    REP #$20                             ;8189A6;
    LDA.W #$0178                         ;8189A8;
    STA.B $5C                            ;8189AB;
    LDA.W #$A552                         ;8189AD;
    STA.B $20                            ;8189B0;
    SEP #$20                             ;8189B2;
    LDA.B #$08                           ;8189B4;
    STA.B $4E                            ;8189B6;
    LDA.B #$16                           ;8189B8;
    CLC                                  ;8189BA;
    ADC.B $6F                            ;8189BB;
    JSL.L CODE_848F07                    ;8189BD;

CODE_8189C1:
    LDA.B $59                            ;8189C1;
    BNE CODE_8189CB                      ;8189C3;
    LDA.B $3B                            ;8189C5;
    BIT.B #$40                           ;8189C7;
    BEQ CODE_8189D0                      ;8189C9;

CODE_8189CB:
    LDA.B #$16                           ;8189CB;
    JSR.W CODE_81942B                    ;8189CD;

CODE_8189D0:
    DEC.B $4E                            ;8189D0;
    BNE CODE_8189D9                      ;8189D2;
    STZ.B $4F                            ;8189D4;
    JMP.W CODE_8195CC                    ;8189D6;

CODE_8189D9:
    LDA.B $3B                            ;8189D9;
    BIT.B #$80                           ;8189DB;
    BEQ CODE_8189E2                      ;8189DD;
    JMP.W CODE_8195E2                    ;8189DF;

CODE_8189E2:
    LDA.B $37                            ;8189E2;
    BIT.B #$03                           ;8189E4;
    BEQ CODE_8189EB                      ;8189E6;
    JMP.W CODE_8195D7                    ;8189E8;

CODE_8189EB:
    LDA.B #$29                           ;8189EB;
    JMP.W CODE_819560                    ;8189ED;

CODE_8189F0:
    LDX.B $03                            ;8189F0;
    JMP.W (PTR16_8189F5,X)               ;8189F2;

PTR16_8189F5:
    dw CODE_8189FB                       ;8189F5;
    dw CODE_818A1B                       ;8189F7;
    dw CODE_818A39                       ;8189F9;

CODE_8189FB:
    LDA.B #$02                           ;8189FB;
    STA.B $03                            ;8189FD;
    STZ.B $2B                            ;8189FF;
    STZ.B $2C                            ;818A01;
    REP #$20                             ;818A03;
    STZ.B $1A                            ;818A05;
    LDA.W #$F800                         ;818A07;
    STA.B $1C                            ;818A0A;
    SEP #$20                             ;818A0C;
    LDA.B #$0E                           ;818A0E;
    JSL.L CODE_8088CD                    ;818A10;
    LDA.B #$47                           ;818A14;
    JSL.L CODE_848F07                    ;818A16;
    RTS                                  ;818A1A;

CODE_818A1B:
    LDA.B $64                            ;818A1B;
    BEQ CODE_818A21                      ;818A1D;
    DEC.B $64                            ;818A1F;

CODE_818A21:
    LDA.B $5E                            ;818A21;
    BIT.B #$04                           ;818A23;
    BEQ CODE_818A34                      ;818A25;
    LDA.B #$04                           ;818A27;
    STA.B $03                            ;818A29;
    STZ.B $64                            ;818A2B;
    LDA.B #$48                           ;818A2D;
    JSL.L CODE_848F07                    ;818A2F;
    RTS                                  ;818A33;

CODE_818A34:
    JSL.L CODE_82820A                    ;818A34;
    RTS                                  ;818A38;

CODE_818A39:
    LDA.B $0F                            ;818A39;
    BPL CODE_818A40                      ;818A3B;
    JMP.W CODE_8195CC                    ;818A3D;

CODE_818A40:
    JSL.L CODE_848EEA                    ;818A40;
    RTS                                  ;818A44;

CODE_818A45:
    LDX.B $03                            ;818A45;
    JMP.W (PTR16_818A4A,X)               ;818A47;

PTR16_818A4A:
    dw CODE_818A52                       ;818A4A;
    dw CODE_818A88                       ;818A4C;
    dw CODE_818B02                       ;818A4E;
    dw CODE_818B30                       ;818A50;

CODE_818A52:
    LDA.B #$02                           ;818A52;
    STA.B $03                            ;818A54;
    REP #$20                             ;818A56;
    LDA.W #$0101                         ;818A58;
    STA.W $1F13                          ;818A5B;
    STA.W $1F15                          ;818A5E;
    STA.W $1F17                          ;818A61;
    LDA.W #$A597                         ;818A64;
    STA.B $31                            ;818A67;
    SEP #$20                             ;818A69;
    STA.W $1F19                          ;818A6B;
    JSR.W CODE_819E85                    ;818A6E;
    STZ.B $6B                            ;818A71;
    STZ.B $58                            ;818A73;
    LDA.B #$1E                           ;818A75;
    STA.B $8B                            ;818A77;
    STA.B $64                            ;818A79;
    JSR.W CODE_819E0E                    ;818A7B;
    JSR.W CODE_819588                    ;818A7E;
    LDA.B #$44                           ;818A81;
    JSL.L CODE_848F07                    ;818A83;

CODE_818A87:
    RTS                                  ;818A87;

CODE_818A88:
    LDA.B $8B                            ;818A88;
    CMP.B #$02                           ;818A8A;
    BNE CODE_818A92                      ;818A8C;
    LDA.B #$0E                           ;818A8E;
    TRB.B $11                            ;818A90;

CODE_818A92:
    DEC.B $8B                            ;818A92;
    BNE CODE_818A87                      ;818A94;
    LDA.B #$04                           ;818A96;
    STA.B $03                            ;818A98;
    LDA.B #$0A                           ;818A9A;
    JSL.L CODE_8088CD                    ;818A9C;
    STZ.B $19                            ;818AA0;
    STZ.B $0E                            ;818AA2;
    STZ.W $0C38                          ;818AA4;
    STZ.W $0C58                          ;818AA7;
    STZ.W $0C78                          ;818AAA;
    STZ.W $1F13                          ;818AAD;
    STZ.W $1F14                          ;818AB0;
    STZ.W $1F15                          ;818AB3;
    STZ.W $1F16                          ;818AB6;
    STZ.W $1F17                          ;818AB9;
    STZ.W $1F18                          ;818ABC;
    STZ.W $1F19                          ;818ABF;
    LDA.B #$3C                           ;818AC2;
    STA.B $4F                            ;818AC4;
    LDA.B #$A0                           ;818AC6;
    STA.B $8B                            ;818AC8;
    LDY.B #$04                           ;818ACA;
    JSL.L CODE_808A7B                    ;818ACC;
    STZ.W $0000                          ;818AD0;

CODE_818AD3:
    REP #$10                             ;818AD3;
    LDY.W #$0007                         ;818AD5;

CODE_818AD8:
    JSL.L CODE_8282D3                    ;818AD8;
    BNE CODE_818AFF                      ;818ADC;
    INC.W $0000,X                        ;818ADE;
    LDA.B #$0E                           ;818AE1;
    STA.W $000A,X                        ;818AE3;
    TYA                                  ;818AE6;
    CLC                                  ;818AE7;
    ADC.W $0000                          ;818AE8;
    STA.W $000B,X                        ;818AEB;
    REP #$20                             ;818AEE;
    LDA.B $05                            ;818AF0;
    STA.W $0005,X                        ;818AF2;
    LDA.B $08                            ;818AF5;
    STA.W $0008,X                        ;818AF7;
    SEP #$20                             ;818AFA;
    DEY                                  ;818AFC;
    BPL CODE_818AD8                      ;818AFD;

CODE_818AFF:
    SEP #$10                             ;818AFF;
    RTS                                  ;818B01;

CODE_818B02:
    DEC.B $4F                            ;818B02;
    BNE CODE_818B0D                      ;818B04;
    LDA.B #$03                           ;818B06;
    STA.B $4F                            ;818B08;
    JSR.W CODE_819C85                    ;818B0A;

CODE_818B0D:
    LDA.B $8B                            ;818B0D;
    CMP.B #$01                           ;818B0F;
    BCC CODE_818B1F                      ;818B11;
    AND.B #$1F                           ;818B13;
    BNE CODE_818B1F                      ;818B15;
    LDA.B #$08                           ;818B17;
    STA.W $0000                          ;818B19;
    JSR.W CODE_818AD3                    ;818B1C;

CODE_818B1F:
    DEC.B $8B                            ;818B1F;
    BNE CODE_818B30                      ;818B21;
    LDA.B #$06                           ;818B23;
    STA.B $03                            ;818B25;
    INC.W $1F0B                          ;818B27;
    STZ.W $1F0E                          ;818B2A;
    STZ.W $1F0F                          ;818B2D;

CODE_818B30:
    RTS                                  ;818B30;

CODE_818B31:
    LDX.B $03                            ;818B31;
    BNE CODE_818B3E                      ;818B33;
    INC.B $03                            ;818B35;
    LDA.B #$45                           ;818B37;
    JSL.L CODE_848F07                    ;818B39;
    RTS                                  ;818B3D;

CODE_818B3E:
    JSL.L CODE_848EEA                    ;818B3E;
    RTS                                  ;818B42;

CODE_818B43:
    RTS                                  ;818B43;

CODE_818B44:
    LDA.B $2F                            ;818B44;
    BNE CODE_818B43                      ;818B46;
    JSL.L CODE_848EEA                    ;818B48;
    RTS                                  ;818B4C;

CODE_818B4D:
    LDX.B $03                            ;818B4D;
    JMP.W (PTR16_818B52,X)               ;818B4F;

PTR16_818B52:
    dw CODE_818B58                       ;818B52;
    dw CODE_818B7C                       ;818B54;
    dw CODE_818B94                       ;818B56;

CODE_818B58:
    LDA.B #$22                           ;818B58;
    STA.B $6F                            ;818B5A;
    LDA.B $5E                            ;818B5C;
    BIT.B #$04                           ;818B5E;
    BNE CODE_818B6F                      ;818B60;
    LDA.B #$02                           ;818B62;
    STA.B $03                            ;818B64;
    LDA.B #$28                           ;818B66;
    JSL.L CODE_848F07                    ;818B68;
    JMP.W CODE_81992A                    ;818B6C;

CODE_818B6F:
    LDA.B #$04                           ;818B6F;
    STA.B $03                            ;818B71;
    STZ.B $2F                            ;818B73;
    LDA.B #$22                           ;818B75;
    JSL.L CODE_848F07                    ;818B77;
    RTS                                  ;818B7B;

CODE_818B7C:
    LDA.B $5E                            ;818B7C;
    BIT.B #$04                           ;818B7E;
    BEQ CODE_818B8F                      ;818B80;
    LDA.B #$04                           ;818B82;
    STA.B $03                            ;818B84;
    STZ.B $2F                            ;818B86;
    LDA.B #$22                           ;818B88;
    JSL.L CODE_848F07                    ;818B8A;
    RTS                                  ;818B8E;

CODE_818B8F:
    JSL.L CODE_828174                    ;818B8F;
    RTS                                  ;818B93;

CODE_818B94:
    LDA.B $02                            ;818B94;
    CMP.B #$46                           ;818B96;
    BEQ CODE_818BA2                      ;818B98;
    LDA.B $5E                            ;818B9A;
    BIT.B #$04                           ;818B9C;
    BNE CODE_818BA2                      ;818B9E;
    STZ.B $03                            ;818BA0;

CODE_818BA2:
    JSL.L CODE_848EEA                    ;818BA2;
    RTS                                  ;818BA6;

CODE_818BA7:
    LDX.B $03                            ;818BA7;
    JMP.W (PTR16_818BAC,X)               ;818BA9;

PTR16_818BAC:
    dw CODE_818BBC                       ;818BAC;
    dw CODE_818C25                       ;818BAE;
    dw CODE_818C35                       ;818BB0;
    dw CODE_818C8B                       ;818BB2;
    dw CODE_818CAA                       ;818BB4;
    dw CODE_818CD1                       ;818BB6;
    dw CODE_818CF1                       ;818BB8;
    dw CODE_818D17                       ;818BBA;

CODE_818BBC:
    REP #$20                             ;818BBC;
    LDA.W #$FFE0                         ;818BBE;
    STA.W $1E70                          ;818BC1;
    STA.W $1E74                          ;818BC4;
    LDA.W #$0120                         ;818BC7;
    STA.W $1E72                          ;818BCA;
    STA.W $1E76                          ;818BCD;
    SEP #$20                             ;818BD0;
    INC.B $30                            ;818BD2;
    JSR.W CODE_819E85                    ;818BD4;
    STZ.B $5B                            ;818BD7;
    LDA.B $2B                            ;818BD9;
    BIT.B #$04                           ;818BDB;
    BNE CODE_818BF1                      ;818BDD;
    LDA.B #$02                           ;818BDF;
    STA.B $03                            ;818BE1;
    REP #$20                             ;818BE3;
    JSR.W CODE_81992A                    ;818BE5;
    SEP #$20                             ;818BE8;
    LDA.B #$28                           ;818BEA;
    JSL.L CODE_848F07                    ;818BEC;
    RTS                                  ;818BF0;

CODE_818BF1:
    LDA.B #$04                           ;818BF1;
    STA.B $03                            ;818BF3;
    REP #$20                             ;818BF5;
    LDX.B #$00                           ;818BF7;
    LDA.B $05                            ;818BF9;
    SEC                                  ;818BFB;
    SBC.W $1E4D                          ;818BFC;
    CMP.W #$0080                         ;818BFF;
    BPL CODE_818C06                      ;818C02;
    LDX.B #$40                           ;818C04;

CODE_818C06:
    STX.B $69                            ;818C06;
    LDA.W #$0178                         ;818C08;
    BIT.B $68                            ;818C0B;
    BVS CODE_818C12                      ;818C0D;
    LDA.W #$FE88                         ;818C0F;

CODE_818C12:
    STA.B $1A                            ;818C12;
    LDA.W #$A597                         ;818C14;
    STA.B $31                            ;818C17;
    SEP #$20                             ;818C19;
    JSR.W CODE_819588                    ;818C1B;
    LDA.B #$2B                           ;818C1E;
    JSL.L CODE_848F07                    ;818C20;
    RTS                                  ;818C24;

CODE_818C25:
    LDA.B $2B                            ;818C25;
    BIT.B #$04                           ;818C27;
    BEQ CODE_818C30                      ;818C29;
    STZ.B $03                            ;818C2B;
    STZ.B $2F                            ;818C2D;
    RTS                                  ;818C2F;

CODE_818C30:
    JSL.L CODE_828174                    ;818C30;
    RTS                                  ;818C34;

CODE_818C35:
    REP #$20                             ;818C35;
    LDA.B $05                            ;818C37;
    SEC                                  ;818C39;
    SBC.W $1E4D                          ;818C3A;
    SEC                                  ;818C3D;
    SBC.W #$0080                         ;818C3E;
    BPL CODE_818C47                      ;818C41;
    EOR.W #$FFFF                         ;818C43;
    INC A                                ;818C46;

CODE_818C47:
    CMP.W #$0002                         ;818C47;
    SEP #$20                             ;818C4A;
    BPL CODE_818C82                      ;818C4C;
    LDA.B #$06                           ;818C4E;
    STA.B $03                            ;818C50;
    STA.B $64                            ;818C52;
    LDA.L $001F26                        ;818C54;
    BEQ CODE_818C6B                      ;818C58;
    LDA.W $1F7A                          ;818C5A;
    CMP.B #$09                           ;818C5D;
    BCS CODE_818C73                      ;818C5F;
    LDA.W $1FA0                          ;818C61;
    BNE CODE_818C6B                      ;818C64;
    LDA.W $1F7A                          ;818C66;
    BNE CODE_818C73                      ;818C69;

CODE_818C6B:
    LDA.B #$20                           ;818C6B;
    STA.B $8B                            ;818C6D;
    STZ.B $8C                            ;818C6F;
    BRA CODE_818C7B                      ;818C71;

CODE_818C73:
    LDA.B #$68                           ;818C73;
    STA.B $8B                            ;818C75;
    LDA.B #$01                           ;818C77;
    STA.B $8C                            ;818C79;

CODE_818C7B:
    LDA.B #$22                           ;818C7B;
    JSL.L CODE_848F07                    ;818C7D;
    RTS                                  ;818C81;

CODE_818C82:
    JSL.L CODE_82823E                    ;818C82;
    JSL.L CODE_848EEA                    ;818C86;
    RTS                                  ;818C8A;

CODE_818C8B:
    LDA.B #$08                           ;818C8B;
    STA.B $03                            ;818C8D;
    LDA.L $001F26                        ;818C8F;
    BEQ CODE_818CA9                      ;818C93;
    LDA.W $1F7A                          ;818C95;
    BEQ CODE_818CA9                      ;818C98;
    CMP.B #$09                           ;818C9A;
    BCS CODE_818CA3                      ;818C9C;
    LDA.W $1FA0                          ;818C9E;
    BNE CODE_818CA9                      ;818CA1;

CODE_818CA3:
    LDA.B #$21                           ;818CA3;
    JSL.L CODE_8087A2                    ;818CA5;

CODE_818CA9:
    RTS                                  ;818CA9;

CODE_818CAA:
    REP #$20                             ;818CAA;
    DEC.B $8B                            ;818CAC;
    SEP #$20                             ;818CAE;
    BNE CODE_818CD0                      ;818CB0;
    LDA.L $001F26                        ;818CB2;
    BEQ CODE_818CD5                      ;818CB6;
    LDA.W $1F7A                          ;818CB8;
    BEQ CODE_818CD5                      ;818CBB;
    CMP.B #$09                           ;818CBD;
    BCS CODE_818CC6                      ;818CBF;
    LDA.W $1FA0                          ;818CC1;
    BNE CODE_818CD5                      ;818CC4;

CODE_818CC6:
    LDA.B #$0A                           ;818CC6;
    STA.B $03                            ;818CC8;
    LDA.B #$4E                           ;818CCA;
    JSL.L CODE_848F07                    ;818CCC;

CODE_818CD0:
    RTS                                  ;818CD0;

CODE_818CD1:
    LDA.B $0F                            ;818CD1;
    BPL CODE_818CE0                      ;818CD3;

CODE_818CD5:
    LDA.B #$0C                           ;818CD5;
    STA.B $03                            ;818CD7;
    LDA.B #$49                           ;818CD9;
    JSL.L CODE_848F07                    ;818CDB;
    RTS                                  ;818CDF;

CODE_818CE0:
    LSR A                                ;818CE0;
    BCC CODE_818CEC                      ;818CE1;
    LDA.B #$2D                           ;818CE3;
    JSL.L CODE_8088CD                    ;818CE5;
    JSR.W CODE_819A89                    ;818CE9;

CODE_818CEC:
    JSL.L CODE_848EEA                    ;818CEC;
    RTS                                  ;818CF0;

CODE_818CF1:
    LDA.B $0F                            ;818CF1;
    BPL CODE_818D12                      ;818CF3;
    LDA.B #$0E                           ;818CF5;
    STA.B $03                            ;818CF7;
    INC.B $64                            ;818CF9;
    LDA.B #$0F                           ;818CFB;
    JSL.L CODE_8088CD                    ;818CFD;
    REP #$20                             ;818D01;
    STZ.B $1A                            ;818D03;
    LDA.W #$0AA6                         ;818D05;
    STA.B $1C                            ;818D08;
    SEP #$20                             ;818D0A;
    LDA.B #$47                           ;818D0C;
    JSL.L CODE_848F07                    ;818D0E;

CODE_818D12:
    JSL.L CODE_848EEA                    ;818D12;

CODE_818D16:
    RTS                                  ;818D16;

CODE_818D17:
    JSL.L CODE_82820A                    ;818D17;
    JSL.L CODE_82806E                    ;818D1B;
    BCC CODE_818D16                      ;818D1F;
    LDA.B #$FF                           ;818D21;
    STA.W $1F23                          ;818D23;
    JMP.W CODE_8196C2                    ;818D26;

CODE_818D29:
    LDX.B $03                            ;818D29;
    BNE CODE_818D59                      ;818D2B;
    INC.B $03                            ;818D2D;
    REP #$21                             ;818D2F;
    LDA.B $86                            ;818D31;
    AND.W #$00FF                         ;818D33;
    BIT.W #$0080                         ;818D36;
    BEQ CODE_818D3E                      ;818D39;
    ORA.W #$FF00                         ;818D3B;

CODE_818D3E:
    ADC.B $05                            ;818D3E;
    STA.B $05                            ;818D40;
    LDA.B $05                            ;818D42;
    AND.W #$FFF0                         ;818D44;
    CLC                                  ;818D47;
    ADC.W #$0008                         ;818D48;
    STA.B $05                            ;818D4B;
    STZ.B $79                            ;818D4D;
    SEP #$20                             ;818D4F;
    STZ.B $50                            ;818D51;
    LDA.B #$40                           ;818D53;
    JSL.L CODE_848F07                    ;818D55;

CODE_818D59:
    LDA.B $0F                            ;818D59;
    BPL CODE_818D64                      ;818D5B;
    LDA.B $4E                            ;818D5D;
    STA.B $02                            ;818D5F;
    STZ.B $03                            ;818D61;
    RTS                                  ;818D63;

CODE_818D64:
    LDA.B #$40                           ;818D64;
    JMP.W CODE_819560                    ;818D66;

CODE_818D69:
    LDX.B $03                            ;818D69;
    BNE CODE_818D8E                      ;818D6B;
    INC.B $03                            ;818D6D;
    REP #$21                             ;818D6F;
    LDA.B $08                            ;818D71;
    AND.W #$FFF0                         ;818D73;
    ADC.W #$FFF9                         ;818D76;
    STA.B $08                            ;818D79;
    LDA.W #$0200                         ;818D7B;
    STA.B $1C                            ;818D7E;
    SEP #$20                             ;818D80;
    STZ.B $50                            ;818D82;
    LDA.B #$04                           ;818D84;
    STA.B $4E                            ;818D86;
    LDA.B #$41                           ;818D88;
    JSL.L CODE_848F07                    ;818D8A;

CODE_818D8E:
    JSL.L CODE_82825D                    ;818D8E;
    LDA.B $4E                            ;818D92;
    BNE CODE_818DA8                      ;818D94;
    STZ.B $1C                            ;818D96;
    STZ.B $1D                            ;818D98;
    LDA.B $0F                            ;818D9A;
    BPL CODE_818DA3                      ;818D9C;
    STZ.B $64                            ;818D9E;
    JMP.W CODE_8195CC                    ;818DA0;

CODE_818DA3:
    LDA.B #$41                           ;818DA3;
    JMP.W CODE_819560                    ;818DA5;

CODE_818DA8:
    DEC.B $4E                            ;818DA8;
    RTS                                  ;818DAA;

CODE_818DAB:
    LDX.B $03                            ;818DAB;
    BNE CODE_818DC7                      ;818DAD;
    INC.B $03                            ;818DAF;
    REP #$21                             ;818DB1;
    LDA.B $05                            ;818DB3;
    AND.W #$FFF0                         ;818DB5;
    ADC.W #$0008                         ;818DB8;
    STA.B $05                            ;818DBB;
    SEP #$20                             ;818DBD;
    STZ.B $50                            ;818DBF;
    LDA.B #$42                           ;818DC1;
    JSL.L CODE_848F07                    ;818DC3;

CODE_818DC7:
    LDA.B $0F                            ;818DC7;
    BPL CODE_818DDC                      ;818DC9;
    REP #$21                             ;818DCB;
    LDA.B $08                            ;818DCD;
    ADC.W #$0018                         ;818DCF;
    STA.B $08                            ;818DD2;
    SEP #$20                             ;818DD4;
    JSR.W CODE_819700                    ;818DD6;
    JMP.W CODE_818DE1                    ;818DD9;

CODE_818DDC:
    LDA.B #$42                           ;818DDC;
    JMP.W CODE_819560                    ;818DDE;

CODE_818DE1:
    LDX.B $03                            ;818DE1;
    BNE CODE_818E04                      ;818DE3;
    INC.B $03                            ;818DE5;
    INC.B $64                            ;818DE7;
    STZ.B $5E                            ;818DE9;
    STZ.B $2B                            ;818DEB;
    STZ.B $2C                            ;818DED;
    JSR.W CODE_81992A                    ;818DEF;
    REP #$20                             ;818DF2;
    LDA.W #$0178                         ;818DF4;
    STA.B $5C                            ;818DF7;
    SEP #$20                             ;818DF9;
    LDA.B #$21                           ;818DFB;
    CLC                                  ;818DFD;
    ADC.B $6F                            ;818DFE;
    JSL.L CODE_848F07                    ;818E00;

CODE_818E04:
    LDA.B $59                            ;818E04;
    BNE CODE_818E0E                      ;818E06;
    LDA.B $3B                            ;818E08;
    BIT.B #$40                           ;818E0A;
    BEQ CODE_818E16                      ;818E0C;

CODE_818E0E:
    JSR.W CODE_819576                    ;818E0E;
    LDA.B #$21                           ;818E11;
    JSR.W CODE_81942B                    ;818E13;

CODE_818E16:
    REP #$10                             ;818E16;
    STZ.B $1C                            ;818E18;
    STZ.B $1D                            ;818E1A;
    LDX.W #$FE88                         ;818E1C;
    LDA.B $37                            ;818E1F;
    BIT.B #$0C                           ;818E21;
    BEQ CODE_818E2E                      ;818E23;
    BIT.B #$04                           ;818E25;
    BNE CODE_818E2C                      ;818E27;
    LDX.W #$0178                         ;818E29;

CODE_818E2C:
    STX.B $1C                            ;818E2C;

CODE_818E2E:
    SEP #$10                             ;818E2E;
    STZ.B $29                            ;818E30;
    STZ.B $2A                            ;818E32;
    JSR.W CODE_819D70                    ;818E34;
    CMP.B #$00                           ;818E37;
    BEQ CODE_818E4E                      ;818E39;
    CMP.B #$13                           ;818E3B;
    BNE CODE_818E48                      ;818E3D;
    LDA.B $37                            ;818E3F;
    BIT.B #$08                           ;818E41;
    BEQ CODE_818E48                      ;818E43;
    JMP.W CODE_8196EE                    ;818E45;

CODE_818E48:
    LDA.B $3B                            ;818E48;
    BIT.B #$80                           ;818E4A;
    BEQ CODE_818E53                      ;818E4C;

CODE_818E4E:
    STZ.B $64                            ;818E4E;
    JMP.W CODE_819658                    ;818E50;

CODE_818E53:
    LDA.B #$10                           ;818E53;
    STA.B $2A                            ;818E55;
    JSR.W CODE_819D70                    ;818E57;
    CMP.B #$3B                           ;818E5A;
    BNE CODE_818E63                      ;818E5C;
    STZ.B $64                            ;818E5E;
    JMP.W CODE_8195CC                    ;818E60;

CODE_818E63:
    LDA.B $50                            ;818E63;
    BPL CODE_818E6F                      ;818E65;
    LDA.B $1D                            ;818E67;
    BEQ CODE_818E74                      ;818E69;
    JSL.L CODE_82825D                    ;818E6B;

CODE_818E6F:
    LDA.B #$43                           ;818E6F;
    JMP.W CODE_819560                    ;818E71;

CODE_818E74:
    RTS                                  ;818E74;

CODE_818E75:
    LDX.B $03                            ;818E75;
    BNE CODE_818E81                      ;818E77;
    INC.B $03                            ;818E79;
    LDA.B $7B                            ;818E7B;
    JSL.L CODE_848F07                    ;818E7D;

CODE_818E81:
    JSL.L CODE_848EEA                    ;818E81;
    RTS                                  ;818E85;

CODE_818E86:
    LDX.B $03                            ;818E86;
    JMP.W (PTR16_818E8B,X)               ;818E88;

PTR16_818E8B:
    dw CODE_818E91                       ;818E8B;
    dw CODE_818EBF                       ;818E8D;
    dw CODE_818F28                       ;818E8F;

CODE_818E91:
    LDA.B #$02                           ;818E91;
    STA.B $03                            ;818E93;
    LDA.B #$08                           ;818E95;
    STA.B $2F                            ;818E97;
    LDA.W $1F7A                          ;818E99;
    CMP.B #$09                           ;818E9C;
    BNE CODE_818EA4                      ;818E9E;
    LDA.B #$40                           ;818EA0;
    STA.B $69                            ;818EA2;

CODE_818EA4:
    STZ.B $5B                            ;818EA4;
    STZ.B $58                            ;818EA6;
    JSR.W CODE_819E85                    ;818EA8;
    LDA.B #$97                           ;818EAB;
    STA.B $31                            ;818EAD;
    LDA.B #$A5                           ;818EAF;
    STA.B $32                            ;818EB1;
    JSR.W CODE_819588                    ;818EB3;
    LDA.B #$44                           ;818EB6;
    JSL.L CODE_848F07                    ;818EB8;
    JMP.W CODE_81992A                    ;818EBC;

CODE_818EBF:
    LDA.B $0F                            ;818EBF;
    BPL CODE_818EED                      ;818EC1;
    LDA.B $5E                            ;818EC3;
    BIT.B #$04                           ;818EC5;
    BEQ CODE_818EED                      ;818EC7;
    LDA.B #$07                           ;818EC9;
    JSL.L CODE_8088CD                    ;818ECB;
    LDA.B #$04                           ;818ECF;
    STA.B $03                            ;818ED1;
    LDA.B #$02                           ;818ED3;
    TSB.B $11                            ;818ED5;
    LDA.B #$80                           ;818ED7;
    TSB.B $7E                            ;818ED9;
    JSR.W CODE_8195AA                    ;818EDB;
    LDA.B #$86                           ;818EDE;
    STA.B $31                            ;818EE0;
    LDA.B #$A8                           ;818EE2;
    STA.B $32                            ;818EE4;
    LDA.B #$00                           ;818EE6;
    JSL.L CODE_848F07                    ;818EE8;
    RTS                                  ;818EEC;

CODE_818EED:
    JSL.L CODE_848EEA                    ;818EED;
    LDA.B $5E                            ;818EF1;
    BIT.B #$04                           ;818EF3;
    BEQ CODE_818EFD                      ;818EF5;
    STZ.B $2F                            ;818EF7;
    STZ.B $1C                            ;818EF9;
    STZ.B $1D                            ;818EFB;

CODE_818EFD:
    JSL.L CODE_828174                    ;818EFD;
    REP #$20                             ;818F01;
    LDA.W #$FA80                         ;818F03;
    CMP.B $1C                            ;818F06;
    BMI CODE_818F0C                      ;818F08;
    STA.B $1C                            ;818F0A;

CODE_818F0C:
    SEP #$20                             ;818F0C;
    LDA.B #$02                           ;818F0E;
    BIT.B $0F                            ;818F10;
    BVC CODE_818F16                      ;818F12;
    LDA.B #$00                           ;818F14;

CODE_818F16:
    LDX.W $1F7A                          ;818F16;
    ORA.W DATA8_86BAC2,X                 ;818F19;
    STA.B $11                            ;818F1C;
    LDA.B $0F                            ;818F1E;
    LSR A                                ;818F20;
    BCC CODE_818F28                      ;818F21;
    LDA.B #$00                           ;818F23;
    JMP.W CODE_819C66                    ;818F25;

CODE_818F28:
    RTS                                  ;818F28;

CODE_818F29:
    LDX.B $03                            ;818F29;
    BNE CODE_818F40                      ;818F2B;
    INC.B $03                            ;818F2D;
    JSR.W CODE_8195AA                    ;818F2F;
    LDA.B #$86                           ;818F32;
    STA.B $31                            ;818F34;
    LDA.B #$A8                           ;818F36;
    STA.B $32                            ;818F38;
    LDA.B #$00                           ;818F3A;
    JSL.L CODE_848F07                    ;818F3C;

CODE_818F40:
    RTS                                  ;818F40;

CODE_818F41:
    LDX.B $03                            ;818F41;
    BNE CODE_818F4D                      ;818F43;
    INC.B $03                            ;818F45;
    LDA.B #$02                           ;818F47;
    JSL.L CODE_848F07                    ;818F49;

CODE_818F4D:
    RTS                                  ;818F4D;

CODE_818F4E:
    LDX.B $03                            ;818F4E;
    JMP.W (PTR16_818F53,X)               ;818F50;

PTR16_818F53:
    dw CODE_818F5B                       ;818F53;
    dw CODE_818F78                       ;818F55;
    dw CODE_818F8D                       ;818F57;
    dw CODE_818FB3                       ;818F59;

CODE_818F5B:
    LDA.B #$02                           ;818F5B;
    STA.B $03                            ;818F5D;
    STZ.B $30                            ;818F5F;
    REP #$20                             ;818F61;
    LDA.W #$A597                         ;818F63;
    STA.B $31                            ;818F66;
    SEP #$20                             ;818F68;
    LDA.B #$05                           ;818F6A;
    STA.B $8B                            ;818F6C;
    JSR.W CODE_819588                    ;818F6E;
    LDA.B #$4E                           ;818F71;
    JSL.L CODE_848F07                    ;818F73;
    RTS                                  ;818F77;

CODE_818F78:
    DEC.B $8B                            ;818F78;
    BNE CODE_818F8C                      ;818F7A;
    LDA.B #$04                           ;818F7C;
    STA.B $03                            ;818F7E;
    LDA.B #$02                           ;818F80;
    STA.B $8B                            ;818F82;
    JSL.L CODE_84A28B                    ;818F84;
    JML.L CODE_81A02D                    ;818F88;

CODE_818F8C:
    RTS                                  ;818F8C;

CODE_818F8D:
    DEC.B $8B                            ;818F8D;
    BNE CODE_818FB2                      ;818F8F;
    LDA.B #$02                           ;818F91;
    STA.B $8B                            ;818F93;
    LDA.B #$0C                           ;818F95;
    JSL.L CODE_8088CD                    ;818F97;
    INC.B $27                            ;818F9B;
    LDA.B $27                            ;818F9D;
    CMP.W $1F9A                          ;818F9F;
    BCC CODE_818FAE                      ;818FA2;
    LDA.B #$06                           ;818FA4;
    STA.B $03                            ;818FA6;
    LDA.B #$22                           ;818FA8;
    JSL.L CODE_848F07                    ;818FAA;

CODE_818FAE:
    LDA.B #$80                           ;818FAE;
    TSB.B $27                            ;818FB0;

CODE_818FB2:
    RTS                                  ;818FB2;

CODE_818FB3:
    RTS                                  ;818FB3;

CODE_818FB4:
    LDX.B $03                            ;818FB4;
    JMP.W (PTR16_818FB9,X)               ;818FB6;

PTR16_818FB9:
    dw CODE_818FBF                       ;818FB9;
    dw CODE_818FDE                       ;818FBB;
    dw CODE_818FF2                       ;818FBD;

CODE_818FBF:
    LDA.B #$02                           ;818FBF;
    STA.B $03                            ;818FC1;
    STZ.B $30                            ;818FC3;
    STZ.B $6E                            ;818FC5;
    REP #$20                             ;818FC7;
    LDA.W #$A597                         ;818FC9;
    STA.B $31                            ;818FCC;
    SEP #$20                             ;818FCE;
    LDA.B #$C8                           ;818FD0;
    STA.B $8B                            ;818FD2;
    JSR.W CODE_819588                    ;818FD4;
    LDA.B #$22                           ;818FD7;
    JSL.L CODE_848F07                    ;818FD9;
    RTS                                  ;818FDD;

CODE_818FDE:
    DEC.B $8B                            ;818FDE;
    BNE CODE_818FED                      ;818FE0;
    LDA.B #$04                           ;818FE2;
    STA.B $03                            ;818FE4;
    LDA.B #$3C                           ;818FE6;
    STA.B $8B                            ;818FE8;
    STZ.B $8C                            ;818FEA;
    RTS                                  ;818FEC;

CODE_818FED:
    LDA.B #$40                           ;818FED;
    TSB.B $8C                            ;818FEF;
    RTS                                  ;818FF1;

CODE_818FF2:
    DEC.B $8B                            ;818FF2;
    BNE CODE_818FFF                      ;818FF4;
    STZ.W $1F31                          ;818FF6;
    STZ.W $1F3B                          ;818FF9;
    JMP.W CODE_8195CC                    ;818FFC;

CODE_818FFF:
    LDA.B $59                            ;818FFF;
    BEQ CODE_819008                      ;819001;
    LDA.B #$00                           ;819003;
    JSR.W CODE_81942B                    ;819005;

CODE_819008:
    LDA.B #$22                           ;819008;
    JMP.W CODE_819560                    ;81900A;

CODE_81900D:
    LDX.B $03                            ;81900D;
    JMP.W (PTR16_819012,X)               ;81900F;

PTR16_819012:
    dw CODE_819018                       ;819012;
    dw CODE_819025                       ;819014;
    dw CODE_819045                       ;819016;

CODE_819018:
    LDA.B #$02                           ;819018;
    STA.B $03                            ;81901A;
    STZ.B $50                            ;81901C;
    LDA.B #$4F                           ;81901E;
    JSL.L CODE_848F07                    ;819020;
    RTS                                  ;819024;

CODE_819025:
    LDA.B $0F                            ;819025;
    BPL CODE_819040                      ;819027;
    LDA.B #$04                           ;819029;
    STA.B $03                            ;81902B;
    LDA.B #$50                           ;81902D;
    JSL.L CODE_848F07                    ;81902F;
    LDA.B $33                            ;819033;
    BNE CODE_819040                      ;819035;
    LDA.B #$AF                           ;819037;
    JSL.L CODE_8088CD                    ;819039;
    JMP.W CODE_81A10A                    ;81903D;

CODE_819040:
    JSL.L CODE_848EEA                    ;819040;
    RTS                                  ;819044;

CODE_819045:
    LDA.B $0F                            ;819045;
    BPL CODE_81904C                      ;819047;
    JMP.W CODE_8195CC                    ;819049;

CODE_81904C:
    JSL.L CODE_848EEA                    ;81904C;
    RTS                                  ;819050;

CODE_819051:
    LDX.B $03                            ;819051;
    JMP.W (PTR16_819056,X)               ;819053;

PTR16_819056:
    dw CODE_819062                       ;819056;
    dw CODE_819093                       ;819058;
    dw CODE_8190DE                       ;81905A;
    dw CODE_81912B                       ;81905C;
    dw CODE_81914B                       ;81905E;
    dw CODE_81917B                       ;819060;

CODE_819062:
    LDA.B #$02                           ;819062;
    STA.B $03                            ;819064;
    REP #$20                             ;819066;
    STZ.B $36                            ;819068;
    STZ.B $38                            ;81906A;
    STZ.B $3A                            ;81906C;
    LDA.W #$00C0                         ;81906E;
    STA.W $1E74                          ;819071;
    LDA.W #$00C0                         ;819074;
    STA.W $1E76                          ;819077;
    LDA.W #$FED0                         ;81907A;
    STA.B $1A                            ;81907D;
    SEP #$20                             ;81907F;
    LDA.B #$2B                           ;819081;
    JSL.L CODE_848F07                    ;819083;
    LDA.B #$DF                           ;819087;
    JSL.L CODE_80E9EE                    ;819089;
    LDA.B #$01                           ;81908D;
    STA.W $1F34                          ;81908F;
    RTS                                  ;819092;

CODE_819093:
    LDA.W $0060                          ;819093;
    BNE CODE_8190BE                      ;819096;
    REP #$20                             ;819098;
    LDA.W $1E4D                          ;81909A;
    STA.W $1E5E                          ;81909D;
    LDA.W #$FC8B                         ;8190A0;
    STA.B $1A                            ;8190A3;
    SEP #$20                             ;8190A5;
    LDA.B #$04                           ;8190A7;
    STA.B $03                            ;8190A9;
    LDA.B #$40                           ;8190AB;
    STA.B $8C                            ;8190AD;
    STZ.B $75                            ;8190AF;
    LDA.B #$08                           ;8190B1;
    JSL.L CODE_8088CD                    ;8190B3;
    LDA.B #$35                           ;8190B7;
    JSL.L CODE_848F07                    ;8190B9;
    RTS                                  ;8190BD;

CODE_8190BE:
    LDA.W $1F3C                          ;8190BE;
    CMP.B #$0C                           ;8190C1;
    BNE CODE_8190CD                      ;8190C3;
    LDY.B #$01                           ;8190C5;
    LDA.B #$F6                           ;8190C7;
    JSL.L CODE_80887F                    ;8190C9;

CODE_8190CD:
    CMP.B #$0D                           ;8190CD;
    BNE CODE_8190D5                      ;8190CF;
    LDA.B #$40                           ;8190D1;
    STA.B $8C                            ;8190D3;

CODE_8190D5:
    JSL.L CODE_82823E                    ;8190D5;
    JSL.L CODE_848EEA                    ;8190D9;
    RTS                                  ;8190DD;

CODE_8190DE:
    LDA.B #$40                           ;8190DE;
    STA.B $8C                            ;8190E0;
    REP #$21                             ;8190E2;
    LDA.W $1E4D                          ;8190E4;
    ADC.W #$0088                         ;8190E7;
    CMP.B $05                            ;8190EA;
    SEP #$20                             ;8190EC;
    BCC CODE_819116                      ;8190EE;
    LDA.B #$06                           ;8190F0;
    STA.B $03                            ;8190F2;
    STZ.B $8C                            ;8190F4;
    STZ.B $37                            ;8190F6;
    LDA.B #$15                           ;8190F8;
    JSL.L CODE_848F07                    ;8190FA;
    LDA.B #$05                           ;8190FE;
    JSL.L CODE_8088CD                    ;819100;
    STZ.W $00C9                          ;819104;
    LDA.B #$2F                           ;819107;
    STA.W $00CA                          ;819109;
    STZ.W $00CB                          ;81910C;
    STZ.W $00CC                          ;81910F;
    STZ.W $00CD                          ;819112;
    RTS                                  ;819115;

CODE_819116:
    JSR.W CODE_819C0B                    ;819116;
    JSL.L CODE_82823E                    ;819119;
    BIT.B $0F                            ;81911D;
    BVC CODE_819126                      ;81911F;
    LDA.B #$01                           ;819121;
    JSR.W CODE_819C66                    ;819123;

CODE_819126:
    JSL.L CODE_848EEA                    ;819126;
    RTS                                  ;81912A;

CODE_81912B:
    LDA.W $0B9C                          ;81912B;
    LSR A                                ;81912E;
    BCC CODE_81914A                      ;81912F;
    INC.W $00CB                          ;819131;
    INC.W $00CC                          ;819134;
    INC.W $00CD                          ;819137;
    LDA.W $00CD                          ;81913A;
    CMP.B #$1F                           ;81913D;
    BNE CODE_81914A                      ;81913F;
    LDA.B #$08                           ;819141;
    STA.B $03                            ;819143;
    LDA.B #$04                           ;819145;
    TSB.W $00A2                          ;819147;

CODE_81914A:
    RTS                                  ;81914A;

CODE_81914B:
    LDA.W $00CB                          ;81914B;
    BNE CODE_81916C                      ;81914E;
    LDA.B #$0A                           ;819150;
    STA.B $03                            ;819152;
    LDA.B #$80                           ;819154;
    STA.W $00C9                          ;819156;
    LDA.B #$A0                           ;819159;
    STA.W $00CA                          ;81915B;
    LDA.B #$1F                           ;81915E;
    STA.W $00CB                          ;819160;
    STA.W $00CC                          ;819163;
    STA.W $00CD                          ;819166;
    JMP.W CODE_81A11D                    ;819169;

CODE_81916C:
    LDA.W $0B9C                          ;81916C;
    LSR A                                ;81916F;
    BCC CODE_81917B                      ;819170;
    DEC.W $00CB                          ;819172;
    DEC.W $00CC                          ;819175;
    DEC.W $00CD                          ;819178;

CODE_81917B:
    RTS                                  ;81917B;

CODE_81917C:
    LDX.B $03                            ;81917C;
    JMP.W (PTR16_819181,X)               ;81917E;

PTR16_819181:
    dw CODE_81918B                       ;819181;
    dw CODE_81919B                       ;819183;
    dw CODE_8191B1                       ;819185;
    dw CODE_8191C7                       ;819187;
    dw CODE_8191D8                       ;819189;

CODE_81918B:
    LDA.W $1F3C                          ;81918B;
    BEQ CODE_81919A                      ;81918E;
    LDA.B #$02                           ;819190;
    STA.B $03                            ;819192;
    LDA.B #$01                           ;819194;
    JSL.L CODE_848F07                    ;819196;

CODE_81919A:
    RTS                                  ;81919A;

CODE_81919B:
    LDA.W $1F3C                          ;81919B;
    CMP.B #$02                           ;81919E;
    BNE CODE_8191AC                      ;8191A0;
    LDA.B #$04                           ;8191A2;
    STA.B $03                            ;8191A4;
    LDA.B #$01                           ;8191A6;
    JSL.L CODE_848F07                    ;8191A8;

CODE_8191AC:
    JSL.L CODE_848EEA                    ;8191AC;
    RTS                                  ;8191B0;

CODE_8191B1:
    LDA.W $1F3C                          ;8191B1;
    CMP.B #$03                           ;8191B4;
    BNE CODE_8191C2                      ;8191B6;
    LDA.B #$06                           ;8191B8;
    STA.B $03                            ;8191BA;
    LDA.B #$03                           ;8191BC;
    JSL.L CODE_848F07                    ;8191BE;

CODE_8191C2:
    JSL.L CODE_848EEA                    ;8191C2;
    RTS                                  ;8191C6;

CODE_8191C7:
    LDA.W $1F3C                          ;8191C7;
    CMP.B #$05                           ;8191CA;
    BNE CODE_8191D8                      ;8191CC;
    LDA.B #$08                           ;8191CE;
    STA.B $03                            ;8191D0;
    LDA.B #$04                           ;8191D2;
    JSL.L CODE_848F07                    ;8191D4;

CODE_8191D8:
    JSL.L CODE_848EEA                    ;8191D8;
    RTS                                  ;8191DC;

CODE_8191DD:
    LDX.B $03                            ;8191DD;
    JMP.W (PTR16_8191E2,X)               ;8191DF;

PTR16_8191E2:
    dw CODE_8191E8                       ;8191E2;
    dw CODE_8191F3                       ;8191E4;
    dw CODE_81922D                       ;8191E6;

CODE_8191E8:
    LDA.B #$02                           ;8191E8;
    STA.B $03                            ;8191EA;
    LDA.B #$49                           ;8191EC;
    JSL.L CODE_848F07                    ;8191EE;
    RTS                                  ;8191F2;

CODE_8191F3:
    LDA.B $0F                            ;8191F3;
    BPL CODE_819228                      ;8191F5;
    LDA.B #$04                           ;8191F7;
    STA.B $03                            ;8191F9;
    STA.B $64                            ;8191FB;
    STA.B $30                            ;8191FD;
    LDA.B #$0F                           ;8191FF;
    JSL.L CODE_8088CD                    ;819201;
    REP #$20                             ;819205;
    STZ.B $1A                            ;819207;
    LDA.W #$0AA6                         ;819209;
    STA.B $1C                            ;81920C;
    LDA.W $1E4D                          ;81920E;
    STA.W $1E5E                          ;819211;
    STA.W $1E60                          ;819214;
    LDA.W $1E50                          ;819217;
    STA.W $1E68                          ;81921A;
    STA.W $1E6E                          ;81921D;
    SEP #$20                             ;819220;
    LDA.B #$47                           ;819222;
    JSL.L CODE_848F07                    ;819224;

CODE_819228:
    JSL.L CODE_848EEA                    ;819228;

CODE_81922C:
    RTS                                  ;81922C;

CODE_81922D:
    JSL.L CODE_82825D                    ;81922D;
    JSL.L CODE_82806E                    ;819231;
    BCC CODE_81922C                      ;819235;
    LDA.B #$FF                           ;819237;
    STA.W $1F23                          ;819239;
    JMP.W CODE_8196C2                    ;81923C;

CODE_81923F:
    LDX.B $03                            ;81923F;
    JMP.W (PTR16_819244,X)               ;819241;

PTR16_819244:
    dw CODE_81924E                       ;819244;
    dw CODE_819271                       ;819246;
    dw CODE_81929D                       ;819248;
    dw CODE_8192BE                       ;81924A;
    dw CODE_8192CE                       ;81924C;

CODE_81924E:
    LDA.B #$09                           ;81924E;
    JSL.L CODE_8088CD                    ;819250;
    LDA.B #$4A                           ;819254;
    JSL.L CODE_848F07                    ;819256;
    LDA.B #$80                           ;81925A;
    TSB.B $87                            ;81925C;
    JSR.W CODE_81992A                    ;81925E;
    LDA.B $5E                            ;819261;
    BIT.B #$04                           ;819263;
    BEQ CODE_81926C                      ;819265;
    LDA.B #$08                           ;819267;
    STA.B $03                            ;819269;
    RTS                                  ;81926B;

CODE_81926C:
    LDA.B #$02                           ;81926C;
    STA.B $03                            ;81926E;
    RTS                                  ;819270;

CODE_819271:
    LDA.B $5E                            ;819271;
    BIT.B #$04                           ;819273;
    BEQ CODE_819294                      ;819275;
    LDA.B #$04                           ;819277;
    STA.B $03                            ;819279;
    LDA.B #$4B                           ;81927B;
    JSL.L CODE_848F07                    ;81927D;
    LDA.B #$07                           ;819281;
    JSL.L CODE_8088CD                    ;819283;
    REP #$20                             ;819287;
    LDA.B $1C                            ;819289;
    EOR.W #$FFFF                         ;81928B;
    INC A                                ;81928E;
    LSR A                                ;81928F;
    STA.B $1C                            ;819290;
    SEP #$20                             ;819292;

CODE_819294:
    JSL.L CODE_828174                    ;819294;
    JSL.L CODE_848EEA                    ;819298;
    RTS                                  ;81929C;

CODE_81929D:
    LDA.B $5E                            ;81929D;
    BIT.B #$04                           ;81929F;
    BEQ CODE_8192B5                      ;8192A1;
    LDA.B #$06                           ;8192A3;
    STA.B $03                            ;8192A5;
    LDA.B #$07                           ;8192A7;
    JSL.L CODE_8088CD                    ;8192A9;
    STZ.B $2F                            ;8192AD;
    LDA.B #$4C                           ;8192AF;
    JSL.L CODE_848F07                    ;8192B1;

CODE_8192B5:
    JSL.L CODE_828174                    ;8192B5;
    JSL.L CODE_848EEA                    ;8192B9;
    RTS                                  ;8192BD;

CODE_8192BE:
    DEC.B $85                            ;8192BE;
    BNE CODE_8192C9                      ;8192C0;
    LDA.B #$80                           ;8192C2;
    TRB.B $87                            ;8192C4;
    JMP.W CODE_8195CC                    ;8192C6;

CODE_8192C9:
    JSL.L CODE_848EEA                    ;8192C9;
    RTS                                  ;8192CD;

CODE_8192CE:
    LDA.B $0F                            ;8192CE;
    BPL CODE_8192E4                      ;8192D0;
    LDA.B #$04                           ;8192D2;
    STA.B $03                            ;8192D4;
    LDA.B #$4B                           ;8192D6;
    JSL.L CODE_848F07                    ;8192D8;
    LDA.B #$60                           ;8192DC;
    STA.B $1C                            ;8192DE;
    LDA.B #$03                           ;8192E0;
    STA.B $1D                            ;8192E2;

CODE_8192E4:
    JSL.L CODE_848EEA                    ;8192E4;
    RTS                                  ;8192E8;

CODE_8192E9:
    LDX.B $03                            ;8192E9;
    BNE CODE_8192F6                      ;8192EB;
    INC.B $03                            ;8192ED;
    LDA.B #$4E                           ;8192EF;
    JSL.L CODE_848F07                    ;8192F1;
    RTS                                  ;8192F5;

CODE_8192F6:
    LDA.B $0F                            ;8192F6;
    BPL CODE_8192FD                      ;8192F8;
    JMP.W CODE_8195CC                    ;8192FA;

CODE_8192FD:
    LSR A                                ;8192FD;
    BCC CODE_819309                      ;8192FE;
    LDA.B #$2D                           ;819300;
    JSL.L CODE_8088CD                    ;819302;
    JSR.W CODE_819A89                    ;819306;

CODE_819309:
    JSL.L CODE_848EEA                    ;819309;
    RTS                                  ;81930D;

CODE_81930E:
    LDX.B $03                            ;81930E;
    JMP.W (PTR16_819313,X)               ;819310;

PTR16_819313:
    dw CODE_81931D                       ;819313;
    dw CODE_819339                       ;819315;
    dw CODE_819349                       ;819317;
    dw CODE_819377                       ;819319;
    dw CODE_8193A7                       ;81931B;

CODE_81931D:
    LDA.B #$22                           ;81931D;
    STA.B $6F                            ;81931F;
    LDA.B $5E                            ;819321;
    BIT.B #$04                           ;819323;
    BNE CODE_819334                      ;819325;
    LDA.B #$02                           ;819327;
    STA.B $03                            ;819329;
    LDA.B #$28                           ;81932B;
    JSL.L CODE_848F07                    ;81932D;
    JMP.W CODE_81992A                    ;819331;

CODE_819334:
    LDA.B #$04                           ;819334;
    STA.B $03                            ;819336;
    RTS                                  ;819338;

CODE_819339:
    LDA.B $5E                            ;819339;
    BIT.B #$04                           ;81933B;
    BEQ CODE_819344                      ;81933D;
    LDA.B #$04                           ;81933F;
    STA.B $03                            ;819341;
    RTS                                  ;819343;

CODE_819344:
    JSL.L CODE_828174                    ;819344;
    RTS                                  ;819348;

CODE_819349:
    LDA.B #$06                           ;819349;
    STA.B $03                            ;81934B;
    STZ.B $2F                            ;81934D;
    LDA.B #$2B                           ;81934F;
    JSL.L CODE_848F07                    ;819351;
    REP #$30                             ;819355;
    LDX.W #$0178                         ;819357;
    LDA.B $05                            ;81935A;
    SEC                                  ;81935C;
    SBC.W $1E4D                          ;81935D;
    CMP.W #$0030                         ;819360;
    BCC CODE_819368                      ;819363;
    LDX.W #$FE88                         ;819365;

CODE_819368:
    STX.B $1A                            ;819368;
    SEP #$30                             ;81936A;
    LDA.B #$00                           ;81936C;
    BIT.B $1B                            ;81936E;
    BMI CODE_819374                      ;819370;
    LDA.B #$40                           ;819372;

CODE_819374:
    STA.B $69                            ;819374;
    RTS                                  ;819376;

CODE_819377:
    REP #$20                             ;819377;
    LDA.B $05                            ;819379;
    SEC                                  ;81937B;
    SBC.W $1E4D                          ;81937C;
    SEC                                  ;81937F;
    SBC.W #$0030                         ;819380;
    BPL CODE_819389                      ;819383;
    EOR.W #$FFFF                         ;819385;
    INC A                                ;819388;

CODE_819389:
    CMP.W #$0002                         ;819389;
    SEP #$20                             ;81938C;
    BCS CODE_81939F                      ;81938E;
    LDA.B #$08                           ;819390;
    STA.B $03                            ;819392;
    LDA.B #$22                           ;819394;
    JSL.L CODE_848F07                    ;819396;
    LDA.B #$40                           ;81939A;
    STA.B $69                            ;81939C;
    RTS                                  ;81939E;

CODE_81939F:
    JSL.L CODE_82823E                    ;81939F;
    JSL.L CODE_848EEA                    ;8193A3;

CODE_8193A7:
    RTS                                  ;8193A7;

CODE_8193A8:
    STA.W $0000                          ;8193A8;
    LDA.B $35                            ;8193AB;
    CMP.B $67                            ;8193AD;
    BCS CODE_819426                      ;8193AF;
    LDA.W $1F0D                          ;8193B1;
    BNE CODE_819426                      ;8193B4;
    LDA.B $33                            ;8193B6;
    CMP.B #$08                           ;8193B8;
    BNE CODE_8193C0                      ;8193BA;
    LDA.B $7D                            ;8193BC;
    BNE CODE_819426                      ;8193BE;

CODE_8193C0:
    JSL.L CODE_82833E                    ;8193C0;
    BNE CODE_819426                      ;8193C4;
    JSR.W CODE_8194A5                    ;8193C6;
    BEQ CODE_819426                      ;8193C9;
    INC A                                ;8193CB;
    STA.W $1F0D                          ;8193CC;
    JSR.W CODE_819FFA                    ;8193CF;
    BIT.B $87                            ;8193D2;
    BVC CODE_8193E0                      ;8193D4;
    LDA.B #$40                           ;8193D6;
    TRB.B $87                            ;8193D8;
    LDA.B #$17                           ;8193DA;
    JSL.L CODE_8088CD                    ;8193DC;

CODE_8193E0:
    STZ.B $59                            ;8193E0;
    LDA.B $3D                            ;8193E2;
    BNE CODE_819426                      ;8193E4;
    INC.B $35                            ;8193E6;
    INC.W $0000,X                        ;8193E8;
    STZ.W $000B,X                        ;8193EB;
    JSR.W CODE_819D3D                    ;8193EE;
    LDA.W $1F0D                          ;8193F1;
    AND.B #$FF                           ;8193F4;
    TAY                                  ;8193F6;
    LDA.W DATA8_86BB1F,Y                 ;8193F7;
    BEQ CODE_819426                      ;8193FA;
    LDA.B #$10                           ;8193FC;
    STA.B $50                            ;8193FE;
    STZ.B $6F                            ;819400;
    LDA.B $13                            ;819402;
    STA.W $0001                          ;819404;
    PHX                                  ;819407;
    LDA.B $0F                            ;819408;
    AND.B #$0F                           ;81940A;
    CLC                                  ;81940C;
    ADC.W $0000                          ;81940D;
    JSL.L CODE_848F07                    ;819410;
    PLX                                  ;819414;
    LDA.B $0F                            ;819415;
    AND.B #$0F                           ;819417;
    CLC                                  ;819419;
    ADC.W $0000                          ;81941A;
    ASL A                                ;81941D;
    STA.W $003C,X                        ;81941E;
    LDA.W $0001                          ;819421;
    STA.B $13                            ;819424;

CODE_819426:
    SEP #$10                             ;819426;
    STZ.B $59                            ;819428;
    RTS                                  ;81942A;

CODE_81942B:
    STA.W $0000                          ;81942B;
    LDA.L CODE_809E75                    ;81942E;
    CMP.L CODE_81853A                    ;819432;
    BEQ CODE_81943D                      ;819436;
    LDA.B #$80                           ;819438;
    TSB.W $1F9E                          ;81943A;

CODE_81943D:
    LDA.B $35                            ;81943D;
    CMP.B $67                            ;81943F;
    BCS CODE_8194A0                      ;819441;
    LDA.W $1F0D                          ;819443;
    BNE CODE_8194A0                      ;819446;
    LDA.B $33                            ;819448;
    CMP.B #$08                           ;81944A;
    BNE CODE_819452                      ;81944C;
    LDA.B $7D                            ;81944E;
    BNE CODE_8194A0                      ;819450;

CODE_819452:
    JSL.L CODE_82833E                    ;819452;
    BNE CODE_8194A0                      ;819456;
    JSR.W CODE_8194A5                    ;819458;
    BEQ CODE_8194A0                      ;81945B;
    INC A                                ;81945D;
    STA.W $1F0D                          ;81945E;
    JSR.W CODE_819FFA                    ;819461;
    BIT.B $87                            ;819464;
    BVC CODE_819472                      ;819466;
    LDA.B #$40                           ;819468;
    TRB.B $87                            ;81946A;
    LDA.B #$17                           ;81946C;
    JSL.L CODE_8088CD                    ;81946E;

CODE_819472:
    LDA.B $3D                            ;819472;
    BNE CODE_8194A0                      ;819474;
    INC.B $35                            ;819476;
    INC.W $0000,X                        ;819478;
    STZ.W $000B,X                        ;81947B;
    JSR.W CODE_819D3D                    ;81947E;
    LDA.W $1F0D                          ;819481;
    AND.B #$FF                           ;819484;
    TAY                                  ;819486;
    LDA.W DATA8_86BB1F,Y                 ;819487;
    BEQ CODE_8194A0                      ;81948A;
    LDA.B #$10                           ;81948C;
    STA.B $50                            ;81948E;
    STZ.B $6F                            ;819490;
    LDA.W $0000                          ;819492;
    ASL A                                ;819495;
    STA.W $003C,X                        ;819496;
    LDA.W $0000                          ;819499;
    JSL.L CODE_848F07                    ;81949C;

CODE_8194A0:
    SEP #$10                             ;8194A0;
    STZ.B $59                            ;8194A2;
    RTS                                  ;8194A4;

CODE_8194A5:
    LDA.B $59                            ;8194A5;
    BEQ CODE_8194B4                      ;8194A7;
    CMP.B #$01                           ;8194A9;
    BEQ CODE_8194B4                      ;8194AB;
    LDA.B $7D                            ;8194AD;
    BEQ CODE_8194B4                      ;8194AF;
    LDA.B #$00                           ;8194B1;
    RTS                                  ;8194B3;

CODE_8194B4:
    TXY                                  ;8194B4;
    LDA.B $59                            ;8194B5;
    LSR A                                ;8194B7;
    TAX                                  ;8194B8;
    LDA.W DATA8_86BA76,X                 ;8194B9;
    STA.W $000A,Y                        ;8194BC;
    BNE CODE_8194CE                      ;8194BF;
    LDA.B $55                            ;8194C1;
    BEQ CODE_8194CE                      ;8194C3;
    LDA.B $63                            ;8194C5;
    BNE CODE_8194CE                      ;8194C7;
    LDA.B #$06                           ;8194C9;
    STA.W $000A,Y                        ;8194CB;

CODE_8194CE:
    LDA.B $33                            ;8194CE;
    BEQ CODE_81952F                      ;8194D0;
    REP #$20                             ;8194D2;
    LDX.B $33                            ;8194D4;
    LDA.W $1F85,X                        ;8194D6;
    BIT.W #$3F00                         ;8194D9;
    BEQ CODE_819533                      ;8194DC;
    AND.W #$3FFF                         ;8194DE;
    SEC                                  ;8194E1;
    SBC.W DATA8_86BA92,X                 ;8194E2;
    BPL CODE_8194EA                      ;8194E5;
    LDA.W #$0000                         ;8194E7;

CODE_8194EA:
    ORA.W #$C000                         ;8194EA;
    STA.W $1F85,X                        ;8194ED;
    STZ.W $0004                          ;8194F0;
    LDA.B $59                            ;8194F3;
    AND.W #$00FF                         ;8194F5;
    CMP.W #$0004                         ;8194F8;
    BNE CODE_819518                      ;8194FB;
    LDA.W $1F85,X                        ;8194FD;
    AND.W #$3FFF                         ;819500;
    SEC                                  ;819503;
    SBC.W DATA8_86BAA4,X                 ;819504;
    BPL CODE_81950C                      ;819507;
    LDA.W #$0000                         ;819509;

CODE_81950C:
    ORA.W #$C000                         ;81950C;
    STA.W $1F85,X                        ;81950F;
    LDA.W #$0009                         ;819512;
    STA.W $0004                          ;819515;

CODE_819518:
    SEP #$20                             ;819518;
    LDA.B $33                            ;81951A;
    CMP.B #$02                           ;81951C;
    BNE CODE_819524                      ;81951E;
    TYX                                  ;819520;
    STZ.W $000B,X                        ;819521;

CODE_819524:
    LSR A                                ;819524;
    CLC                                  ;819525;
    ADC.B #$06                           ;819526;
    CLC                                  ;819528;
    ADC.W $0004                          ;819529;
    STA.W $000A,Y                        ;81952C;

CODE_81952F:
    LDA.W $000A,Y                        ;81952F;
    TYX                                  ;819532;

CODE_819533:
    SEP #$20                             ;819533;
    RTS                                  ;819535;

CODE_819536:
    STA.W $0000                          ;819536;
    LDA.B $50                            ;819539;
    BMI CODE_81955B                      ;81953B;
    DEC.B $50                            ;81953D;
    BPL CODE_81955B                      ;81953F;
    LDA.B #$22                           ;819541;
    STA.B $6F                            ;819543;
    LDA.B $13                            ;819545;
    STA.W $0001                          ;819547;
    LDA.B $0F                            ;81954A;
    AND.B #$0F                           ;81954C;
    CLC                                  ;81954E;
    ADC.W $0000                          ;81954F;
    JSL.L CODE_848F07                    ;819552;
    LDA.W $0001                          ;819556;
    STA.B $13                            ;819559;

CODE_81955B:
    JSL.L CODE_848EEA                    ;81955B;
    RTS                                  ;81955F;

CODE_819560:
    LDX.B $50                            ;819560;
    BMI CODE_819571                      ;819562;
    DEC.B $50                            ;819564;
    BPL CODE_819571                      ;819566;
    JSL.L CODE_848F07                    ;819568;
    LDA.B #$22                           ;81956C;
    STA.B $6F                            ;81956E;
    RTS                                  ;819570;

CODE_819571:
    JSL.L CODE_848EEA                    ;819571;
    RTS                                  ;819575;

CODE_819576:
    LDA.B $37                            ;819576;
    BIT.B #$02                           ;819578;
    BEQ CODE_81957F                      ;81957A;
    STZ.B $69                            ;81957C;
    RTS                                  ;81957E;

CODE_81957F:
    BIT.B #$01                           ;81957F;
    BEQ CODE_819587                      ;819581;
    LDA.B #$40                           ;819583;
    STA.B $69                            ;819585;

CODE_819587:
    RTS                                  ;819587;

CODE_819588:
    LDX.B #$00                           ;819588;
    LDA.W $1F99                          ;81958A;
    BIT.B #$01                           ;81958D;
    BEQ CODE_819593                      ;81958F;
    LDX.B #$18                           ;819591;

CODE_819593:
    STX.B $16                            ;819593;
    LDA.B #$5D                           ;819595;
    STA.W $0C48                          ;819597;
    STA.W $0C68                          ;81959A;
    STA.W $0C88                          ;81959D;
    STZ.W $0C39                          ;8195A0;
    STZ.W $0C59                          ;8195A3;
    STZ.W $0C79                          ;8195A6;
    RTS                                  ;8195A9;

CODE_8195AA:
    LDX.B #$66                           ;8195AA;
    LDA.W $1F99                          ;8195AC;
    BIT.B #$01                           ;8195AF;
    BEQ CODE_8195B5                      ;8195B1;
    LDX.B #$A4                           ;8195B3;

CODE_8195B5:
    STX.B $16                            ;8195B5;
    LDA.B #$A5                           ;8195B7;
    STA.W $0C48                          ;8195B9;
    STA.W $0C68                          ;8195BC;
    STA.W $0C88                          ;8195BF;
    STZ.W $0C39                          ;8195C2;
    STZ.W $0C59                          ;8195C5;
    STZ.W $0C79                          ;8195C8;
    RTS                                  ;8195CB;

CODE_8195CC:
    SEP #$30                             ;8195CC;
    STZ.B $55                            ;8195CE;
    STZ.B $2F                            ;8195D0;
    STZ.B $02                            ;8195D2;
    STZ.B $03                            ;8195D4;
    RTS                                  ;8195D6;

CODE_8195D7:
    SEP #$30                             ;8195D7;
    STZ.B $55                            ;8195D9;
    LDA.B #$04                           ;8195DB;
    STA.B $02                            ;8195DD;
    STZ.B $03                            ;8195DF;
    RTS                                  ;8195E1;

CODE_8195E2:
    SEP #$30                             ;8195E2;
    LDA.B #$08                           ;8195E4;
    STA.B $2F                            ;8195E6;
    LDA.B $02                            ;8195E8;
    CMP.B #$04                           ;8195EA;
    BEQ CODE_819614                      ;8195EC;
    LDA.B $55                            ;8195EE;
    BNE CODE_819646                      ;8195F0;
    LDA.B #$06                           ;8195F2;
    STA.B $02                            ;8195F4;
    STZ.B $03                            ;8195F6;
    JSR.W CODE_81992A                    ;8195F8;
    REP #$20                             ;8195FB;
    LDA.W #$0178                         ;8195FD;
    STA.B $5C                            ;819600;
    LDA.L LOOSE_OP_81853B                ;819602;
    CMP.W #$1F9E                         ;819606;
    BEQ CODE_819611                      ;819609;
    LDA.W #$0080                         ;81960B;
    TSB.W $1F9E                          ;81960E;

CODE_819611:
    SEP #$20                             ;819611;
    RTS                                  ;819613;

CODE_819614:
    LDA.B #$06                           ;819614;
    STA.B $02                            ;819616;
    STZ.B $03                            ;819618;
    REP #$20                             ;81961A;
    LDA.B $1A                            ;81961C;
    BPL CODE_819624                      ;81961E;
    EOR.W #$FFFF                         ;819620;
    INC A                                ;819623;

CODE_819624:
    STA.B $5C                            ;819624;
    CMP.W #$01C8                         ;819626;
    BEQ CODE_819635                      ;819629;
    CMP.W #$0198                         ;81962B;
    BEQ CODE_81963A                      ;81962E;
    SEP #$20                             ;819630;
    JMP.W CODE_81992A                    ;819632;

CODE_819635:
    LDA.W #$0621                         ;819635;
    BRA CODE_81963D                      ;819638;

CODE_81963A:
    LDA.W #$05C9                         ;81963A;

CODE_81963D:
    STA.B $1C                            ;81963D;
    SEP #$20                             ;81963F;
    LDA.B #$40                           ;819641;
    STA.B $1E                            ;819643;
    RTS                                  ;819645;

CODE_819646:
    LDA.B #$06                           ;819646;
    STA.B $02                            ;819648;
    STZ.B $03                            ;81964A;
    REP #$20                             ;81964C;
    LDA.W #$0375                         ;81964E;
    STA.B $5C                            ;819651;
    SEP #$20                             ;819653;
    JMP.W CODE_81992A                    ;819655;

CODE_819658:
    SEP #$30                             ;819658;
    LDA.B #$08                           ;81965A;
    STA.B $02                            ;81965C;
    STZ.B $03                            ;81965E;
    LDA.B #$08                           ;819660;
    STA.B $2F                            ;819662;
    RTS                                  ;819664;

CODE_819665:
    SEP #$30                             ;819665;
    LDA.W $1F9E                          ;819667;

CODE_81966A:
    BPL CODE_81966F                      ;81966A;
    STZ.W $1F81                          ;81966C;

CODE_81966F:
    STZ.B $55                            ;81966F;
    STZ.B $6C                            ;819671;
    LDA.B #$0A                           ;819673;
    STA.B $02                            ;819675;
    STZ.B $03                            ;819677;
    STZ.B $2F                            ;819679;
    RTS                                  ;81967B;

CODE_81967C:
    SEP #$30                             ;81967C;
    STZ.B $6C                            ;81967E;
    LDA.B #$0E                           ;819680;
    STA.B $02                            ;819682;
    STZ.B $03                            ;819684;
    RTS                                  ;819686;

CODE_819687:
    SEP #$30                             ;819687;
    STZ.B $55                            ;819689;
    STZ.B $6C                            ;81968B;
    TYA                                  ;81968D;
    EOR.B #$40                           ;81968E;
    STA.B $4F                            ;819690;
    LDA.B #$10                           ;819692;
    STA.B $02                            ;819694;
    STZ.B $03                            ;819696;
    RTS                                  ;819698;

CODE_819699:
    SEP #$30                             ;819699;
    LDA.W $1F9E                          ;81969B;
    BPL CODE_8196AC                      ;81969E;
    LDA.B $27                            ;8196A0;
    CMP.B #$01                           ;8196A2;
    BEQ CODE_8196AC                      ;8196A4;
    DEC.B $27                            ;8196A6;
    LDA.B #$80                           ;8196A8;
    TSB.B $27                            ;8196AA;

CODE_8196AC:
    STZ.B $55                            ;8196AC;
    STZ.B $2F                            ;8196AE;
    STZ.B $6C                            ;8196B0;
    LDA.B #$12                           ;8196B2;
    STA.B $02                            ;8196B4;
    STZ.B $03                            ;8196B6;
    RTS                                  ;8196B8;

CODE_8196B9:
    SEP #$30                             ;8196B9;
    LDA.B #$14                           ;8196BB;
    STA.B $02                            ;8196BD;
    STZ.B $03                            ;8196BF;
    RTS                                  ;8196C1;

CODE_8196C2:
    SEP #$30                             ;8196C2;
    LDA.B #$18                           ;8196C4;
    STA.B $02                            ;8196C6;
    STZ.B $03                            ;8196C8;

CODE_8196CA:
    RTS                                  ;8196CA;

CODE_8196CB:
    SEP #$30                             ;8196CB;
    LDA.B #$80                           ;8196CD;
    STA.B $27                            ;8196CF;
    STZ.B $6C                            ;8196D1;
    LDA.B #$0C                           ;8196D3;
    STA.B $02                            ;8196D5;
    STZ.B $03                            ;8196D7;
    STA.B $30                            ;8196D9;
    RTS                                  ;8196DB;

CODE_8196DC:
    SEP #$30                             ;8196DC;
    LDA.B #$1A                           ;8196DE;
    STA.B $02                            ;8196E0;
    STZ.B $03                            ;8196E2;
    RTS                                  ;8196E4;

CODE_8196E5:
    SEP #$30                             ;8196E5;
    LDA.B #$24                           ;8196E7;
    STA.B $02                            ;8196E9;
    STZ.B $03                            ;8196EB;
    RTS                                  ;8196ED;

CODE_8196EE:
    SEP #$30                             ;8196EE;
    LDA.B #$26                           ;8196F0;
    STA.B $02                            ;8196F2;
    STZ.B $03                            ;8196F4;
    RTS                                  ;8196F6;

CODE_8196F7:
    SEP #$30                             ;8196F7;
    LDA.B #$28                           ;8196F9;
    STA.B $02                            ;8196FB;
    STZ.B $03                            ;8196FD;
    RTS                                  ;8196FF;

CODE_819700:
    SEP #$30                             ;819700;
    LDA.B #$2A                           ;819702;
    STA.B $02                            ;819704;
    STZ.B $03                            ;819706;
    RTS                                  ;819708;

CODE_819709:
    SEP #$30                             ;819709;
    LDA.B #$20                           ;81970B;
    STA.B $02                            ;81970D;
    STZ.B $03                            ;81970F;
    RTS                                  ;819711;

CODE_819712:
    LDA.W $1F99                          ;819712;
    BIT.B #$08                           ;819715;
    BEQ CODE_8196CA                      ;819717;
    LDA.W $1F23                          ;819719;
    BNE CODE_8196CA                      ;81971C;
    LDX.B $54                            ;81971E;
    JMP.W (PTR16_819723,X)               ;819720;

PTR16_819723:
    dw CODE_819727                       ;819723;
    dw CODE_819738                       ;819725;

CODE_819727:
    LDA.B $3B                            ;819727;
    AND.B #$03                           ;819729;
    BEQ CODE_819737                      ;81972B;
    STA.B $53                            ;81972D;
    LDA.B #$02                           ;81972F;
    STA.B $54                            ;819731;
    LDA.B #$0C                           ;819733;
    STA.B $51                            ;819735;

CODE_819737:
    RTS                                  ;819737;

CODE_819738:
    LDA.B $53                            ;819738;
    BIT.B $3B                            ;81973A;
    BEQ CODE_819766                      ;81973C;
    LDA.B $02                            ;81973E;
    CMP.B #$02                           ;819740;
    BEQ CODE_819748                      ;819742;
    CMP.B #$08                           ;819744;
    BNE CODE_819757                      ;819746;

CODE_819748:
    LDA.B $2C                            ;819748;
    BMI CODE_819752                      ;81974A;
    JSL.L CODE_849A24                    ;81974C;
    BCC CODE_819757                      ;819750;

CODE_819752:
    LDA.B #$0A                           ;819752;
    STA.B $56                            ;819754;
    RTS                                  ;819756;

CODE_819757:
    JSR.W CODE_81976D                    ;819757;
    BNE CODE_819766                      ;81975A;
    JSR.W CODE_819576                    ;81975C;
    LDA.B #$40                           ;81975F;
    TRB.B $7E                            ;819761;
    JMP.W CODE_8196B9                    ;819763;

CODE_819766:
    DEC.B $51                            ;819766;
    BNE CODE_81976C                      ;819768;
    STZ.B $54                            ;81976A;

CODE_81976C:
    RTS                                  ;81976C;

CODE_81976D:
    LDA.B $02                            ;81976D;
    BEQ CODE_819780                      ;81976F;
    CMP.B #$02                           ;819771;
    BEQ CODE_819780                      ;819773;
    CMP.B #$04                           ;819775;
    BEQ CODE_819780                      ;819777;
    CMP.B #$0A                           ;819779;
    BEQ CODE_819780                      ;81977B;

CODE_81977D:
    LDA.B #$01                           ;81977D;
    RTS                                  ;81977F;

CODE_819780:
    JSL.L CODE_8499AF                    ;819780;
    BCS CODE_81977D                      ;819784;
    LDA.B #$00                           ;819786;

CODE_819788:
    RTS                                  ;819788;

CODE_819789:
    LDA.W $1F99                          ;819789;
    BIT.B #$08                           ;81978C;
    BEQ CODE_819788                      ;81978E;
    LDA.W $1F23                          ;819790;
    BNE CODE_819788                      ;819793;
    LDA.B $3A                            ;819795;
    BIT.B #$80                           ;819797;
    BEQ CODE_819788                      ;819799;
    LDA.B $02                            ;81979B;
    CMP.B #$02                           ;81979D;
    BEQ CODE_8197AD                      ;81979F;
    CMP.B #$08                           ;8197A1;
    BEQ CODE_8197AD                      ;8197A3;
    CMP.B #$10                           ;8197A5;
    BEQ CODE_8197AD                      ;8197A7;
    CMP.B #$12                           ;8197A9;
    BNE CODE_8197BC                      ;8197AB;

CODE_8197AD:
    LDA.B $2C                            ;8197AD;
    BMI CODE_8197B7                      ;8197AF;
    JSL.L CODE_849A24                    ;8197B1;
    BCC CODE_8197BC                      ;8197B5;

CODE_8197B7:
    LDA.B #$0A                           ;8197B7;
    STA.B $56                            ;8197B9;
    RTS                                  ;8197BB;

CODE_8197BC:
    JSR.W CODE_81976D                    ;8197BC;
    BNE CODE_819788                      ;8197BF;
    LDA.B #$40                           ;8197C1;
    TSB.B $7E                            ;8197C3;
    JMP.W CODE_8196B9                    ;8197C5;

CODE_8197C8:
    LDA.B $7D                            ;8197C8;
    BNE CODE_8197F8                      ;8197CA;
    LDA.B $27                            ;8197CC;
    BEQ CODE_8197F8                      ;8197CE;
    LDA.W $1F99                          ;8197D0;
    BIT.B #$02                           ;8197D3;
    BNE CODE_8197DB                      ;8197D5;
    LDA.B $33                            ;8197D7;
    BNE CODE_8197E4                      ;8197D9;

CODE_8197DB:
    LDA.B $7C                            ;8197DB;
    BNE CODE_8197E4                      ;8197DD;
    LDA.W $1F23                          ;8197DF;
    BEQ CODE_8197F9                      ;8197E2;

CODE_8197E4:
    BIT.B $87                            ;8197E4;
    BVC CODE_8197F2                      ;8197E6;
    LDA.B #$40                           ;8197E8;
    TRB.B $87                            ;8197EA;
    LDA.B #$17                           ;8197EC;
    JSL.L CODE_8088CD                    ;8197EE;

CODE_8197F2:
    STZ.B $58                            ;8197F2;
    STZ.B $5B                            ;8197F4;
    STZ.B $5A                            ;8197F6;

CODE_8197F8:
    RTS                                  ;8197F8;

CODE_8197F9:
    LDA.B $5B                            ;8197F9;
    BEQ CODE_819831                      ;8197FB;
    LDA.B $0E                            ;8197FD;
    BEQ CODE_819831                      ;8197FF;
    DEC.B $5A                            ;819801;
    BNE CODE_819831                      ;819803;
    LDA.B #$02                           ;819805;
    STA.B $5A                            ;819807;
    LDX.B $82                            ;819809;
    REP #$30                             ;81980B;
    LDY.W DATA8_86BAD2,X                 ;81980D;
    BEQ CODE_81981B                      ;819810;
    LDX.W #$0010                         ;819812;
    JSL.L CODE_828000                    ;819815;
    BRA CODE_819829                      ;819819;

CODE_81981B:
    LDA.B $33                            ;81981B;
    AND.W #$00FF                         ;81981D;
    CLC                                  ;819820;
    ADC.W #$0100                         ;819821;
    TAY                                  ;819824;
    JSL.L CODE_828011                    ;819825;

CODE_819829:
    SEP #$30                             ;819829;
    LDA.B $82                            ;81982B;
    EOR.B #$02                           ;81982D;
    STA.B $82                            ;81982F;

CODE_819831:
    LDA.B $6E                            ;819831;
    BNE CODE_8197F8                      ;819833;
    LDX.B $58                            ;819835;
    JMP.W (PTR16_81983A,X)               ;819837;

PTR16_81983A:
    dw CODE_819840                       ;81983A;
    dw CODE_81984F                       ;81983C;
    dw CODE_819880                       ;81983E;

CODE_819840:
    LDA.B $37                            ;819840;
    BIT.B #$40                           ;819842;
    BEQ CODE_81984E                      ;819844;
    LDA.B #$02                           ;819846;
    STA.B $58                            ;819848;
    LDA.B #$B4                           ;81984A;
    STA.B $57                            ;81984C;

CODE_81984E:
    RTS                                  ;81984E;

CODE_81984F:
    LDA.B $37                            ;81984F;
    BIT.B #$40                           ;819851;
    BNE CODE_81985F                      ;819853;
    STZ.B $58                            ;819855;
    JSR.W CODE_819E85                    ;819857;
    STZ.B $5B                            ;81985A;
    STZ.B $5A                            ;81985C;
    RTS                                  ;81985E;

CODE_81985F:
    DEC.B $57                            ;81985F;
    LDA.B $57                            ;819861;
    CMP.B #$96                           ;819863;
    BNE CODE_81984E                      ;819865;
    LDA.B #$04                           ;819867;
    STA.B $58                            ;819869;
    LDA.B #$40                           ;81986B;
    TSB.B $87                            ;81986D;
    LDA.B #$03                           ;81986F;
    JSL.L CODE_8088CD                    ;819871;
    LDA.B #$03                           ;819875;
    STA.B $5B                            ;819877;
    STA.B $5A                            ;819879;
    STZ.B $82                            ;81987B;
    JSR.W CODE_819E34                    ;81987D;

CODE_819880:
    LDA.B $37                            ;819880;
    BIT.B #$40                           ;819882;
    BNE CODE_8198AE                      ;819884;
    LDA.B #$40                           ;819886;
    TRB.B $87                            ;819888;
    LDA.B #$17                           ;81988A;
    JSL.L CODE_8088CD                    ;81988C;
    JSR.W CODE_8198D5                    ;819890;
    BEQ CODE_8198A4                      ;819893;
    LDA.B $7D                            ;819895;
    BEQ CODE_81989D                      ;819897;
    LDA.B #$04                           ;819899;
    STA.B $5B                            ;81989B;

CODE_81989D:
    LDX.B $5B                            ;81989D;
    LDA.W DATA8_86BA71,X                 ;81989F;
    STA.B $59                            ;8198A2;

CODE_8198A4:
    STZ.B $58                            ;8198A4;
    JSR.W CODE_819E85                    ;8198A6;
    STZ.B $5B                            ;8198A9;
    STZ.B $5A                            ;8198AB;
    RTS                                  ;8198AD;

CODE_8198AE:
    LDA.B $57                            ;8198AE;
    BEQ CODE_8198D4                      ;8198B0;
    DEC.B $57                            ;8198B2;
    LDY.B #$00                           ;8198B4;
    LDX.B #$02                           ;8198B6;
    CMP.B #$50                           ;8198B8;
    BEQ CODE_8198CE                      ;8198BA;
    LDA.W $1F99                          ;8198BC;
    BIT.B #$02                           ;8198BF;
    BEQ CODE_8198D4                      ;8198C1;
    LDY.B #$04                           ;8198C3;
    LDX.B #$01                           ;8198C5;
    LDA.B $57                            ;8198C7;
    CMP.B #$01                           ;8198C9;
    BEQ CODE_8198CE                      ;8198CB;
    RTS                                  ;8198CD;

CODE_8198CE:
    STX.B $5B                            ;8198CE;
    STX.B $5A                            ;8198D0;
    STY.B $82                            ;8198D2;

CODE_8198D4:
    RTS                                  ;8198D4;

CODE_8198D5:
    LDA.B $02                            ;8198D5;
    CMP.B #$0E                           ;8198D7;
    BEQ CODE_8198F1                      ;8198D9;
    CMP.B #$16                           ;8198DB;
    BEQ CODE_8198F1                      ;8198DD;
    CMP.B #$18                           ;8198DF;
    BEQ CODE_8198F1                      ;8198E1;
    CMP.B #$22                           ;8198E3;
    BEQ CODE_8198F1                      ;8198E5;
    CMP.B #$2E                           ;8198E7;
    BEQ CODE_8198F1                      ;8198E9;
    CMP.B #$36                           ;8198EB;
    BEQ CODE_8198F1                      ;8198ED;
    CMP.B #$42                           ;8198EF;

CODE_8198F1:
    RTS                                  ;8198F1;

CODE_8198F2:
    LDA.W $1F99                          ;8198F2;
    BIT.B #$08                           ;8198F5;
    BEQ CODE_819929                      ;8198F7;
    REP #$31                             ;8198F9;
    LDA.B $29                            ;8198FB;
    AND.W #$00FF                         ;8198FD;
    BIT.W #$0080                         ;819900;
    BEQ CODE_819908                      ;819903;
    ORA.W #$FF00                         ;819905;

CODE_819908:
    ADC.B $05                            ;819908;
    STA.W $0000                          ;81990A;
    LDA.B $08                            ;81990D;
    CLC                                  ;81990F;
    ADC.W #$0008                         ;819910;
    STA.W $0002                          ;819913;
    JSL.L CODE_849129                    ;819916;
    JSL.L CODE_80B8D7                    ;81991A;
    SEP #$30                             ;81991E;
    JSR.W CODE_819F08                    ;819920;
    LDA.B #$23                           ;819923;
    JSL.L CODE_8088CD                    ;819925;

CODE_819929:
    RTS                                  ;819929;

CODE_81992A:
    LDA.B $02                            ;81992A;
    STA.W $0000                          ;81992C;
    ASL A                                ;81992F;
    CLC                                  ;819930;
    ADC.W $0000                          ;819931;
    TAX                                  ;819934;
    REP #$20                             ;819935;
    LDA.W DATA8_86B9B1,X                 ;819937;
    BIT.B $68                            ;81993A;
    BVS CODE_819942                      ;81993C;
    EOR.W #$FFFF                         ;81993E;
    INC A                                ;819941;

CODE_819942:
    STA.B $1A                            ;819942;
    LDA.W DATA8_86B9B3,X                 ;819944;
    STA.B $1C                            ;819947;
    SEP #$20                             ;819949;
    LDA.W DATA8_86B9B5,X                 ;81994B;
    STA.B $1E                            ;81994E;
    LDA.L CODE_818533                    ;819950;
    CMP.L CODE_81966A                    ;819954;
    BEQ CODE_81995F                      ;819958;
    LDA.B #$80                           ;81995A;
    TSB.W $1F9E                          ;81995C;

CODE_81995F:
    RTS                                  ;81995F;

CODE_819960:
    JSL.L CODE_849ACD                    ;819960;
    ASL A                                ;819964;
    TAX                                  ;819965;
    REP #$20                             ;819966;
    LDA.W DATA8_86BA65,X                 ;819968;
    BIT.B $68                            ;81996B;
    BVS CODE_819973                      ;81996D;
    EOR.W #$FFFF                         ;81996F;
    INC A                                ;819972;

CODE_819973:
    STA.B $1A                            ;819973;
    SEP #$20                             ;819975;
    RTS                                  ;819977;

CODE_819978:
    PHP                                  ;819978;
    SEP #$30                             ;819979;
    JSR.W CODE_819576                    ;81997B;
    BEQ CODE_81998E                      ;81997E;
    REP #$20                             ;819980;
    LDA.B $5C                            ;819982;
    BIT.B $68                            ;819984;
    BVS CODE_81998C                      ;819986;
    EOR.W #$FFFF                         ;819988;
    INC A                                ;81998B;

CODE_81998C:
    STA.B $1A                            ;81998C;

CODE_81998E:
    PLP                                  ;81998E;
    RTS                                  ;81998F;
    JSR.W CODE_819994                    ;819990;
    RTL                                  ;819993;

CODE_819994:
    LDA.W $1F21                          ;819994;
    CMP.B #$01                           ;819997;
    BNE CODE_8199C6                      ;819999;
    LDA.B $2F                            ;81999B;
    BNE CODE_8199C5                      ;81999D;
    REP #$20                             ;81999F;
    LDA.B $05                            ;8199A1;
    SEC                                  ;8199A3;
    SBC.W $1E4D                          ;8199A4;
    LSR A                                ;8199A7;
    LSR A                                ;8199A8;
    AND.W #$FFFE                         ;8199A9;
    DEC A                                ;8199AC;
    DEC A                                ;8199AD;
    AND.W #$003F                         ;8199AE;
    TAX                                  ;8199B1;
    LDA.L $7EFE04,X                      ;8199B2;
    AND.W #$0FFF                         ;8199B6;
    SEC                                  ;8199B9;
    SBC.W $1E50                          ;8199BA;
    EOR.W #$FFFF                         ;8199BD;
    INC A                                ;8199C0;
    SEP #$20                             ;8199C1;
    STA.B $19                            ;8199C3;

CODE_8199C5:
    RTS                                  ;8199C5;

CODE_8199C6:
    STZ.B $19                            ;8199C6;

CODE_8199C8:
    RTS                                  ;8199C8;

CODE_8199C9:
    LDA.W $1F23                          ;8199C9;
    BNE CODE_8199C8                      ;8199CC;
    LDA.B $35                            ;8199CE;
    BNE CODE_8199C8                      ;8199D0;
    LDA.W $1F31                          ;8199D2;
    BNE CODE_8199C8                      ;8199D5;
    LDA.B $02                            ;8199D7;
    CMP.B #$18                           ;8199D9;
    BEQ CODE_8199C8                      ;8199DB;
    CMP.B #$42                           ;8199DD;
    BEQ CODE_8199C8                      ;8199DF;
    LDA.B $36                            ;8199E1;
    AND.B #$30                           ;8199E3;
    CMP.B #$30                           ;8199E5;
    BEQ CODE_819A0A                      ;8199E7;
    LDA.B $3A                            ;8199E9;
    BIT.B #$20                           ;8199EB;
    BEQ CODE_819A13                      ;8199ED;

CODE_8199EF:
    LDA.B $33                            ;8199EF;
    BEQ CODE_819A04                      ;8199F1;
    CMP.B #$02                           ;8199F3;
    BEQ CODE_819A0A                      ;8199F5;
    DEC.B $33                            ;8199F7;
    DEC.B $33                            ;8199F9;

CODE_8199FB:
    LDX.B $33                            ;8199FB;
    BIT.W $1F86,X                        ;8199FD;
    BVS CODE_819A28                      ;819A00;
    BRA CODE_8199EF                      ;819A02;

CODE_819A04:
    LDA.B #$10                           ;819A04;
    STA.B $33                            ;819A06;
    BRA CODE_8199FB                      ;819A08;

CODE_819A0A:
    STZ.B $33                            ;819A0A;
    LDA.B #$04                           ;819A0C;
    STA.W $1F12                          ;819A0E;
    BRA CODE_819A3F                      ;819A11;

CODE_819A13:
    BIT.B #$10                           ;819A13;
    BEQ CODE_819A65                      ;819A15;

CODE_819A17:
    LDA.B $33                            ;819A17;
    CMP.B #$10                           ;819A19;
    BEQ CODE_819A0A                      ;819A1B;
    INC.B $33                            ;819A1D;
    INC.B $33                            ;819A1F;
    LDX.B $33                            ;819A21;
    BIT.W $1F86,X                        ;819A23;
    BVC CODE_819A17                      ;819A26;

CODE_819A28:
    LDX.W $1F7A                          ;819A28;
    LDA.B #$02                           ;819A2B;
    ORA.W DATA8_86BAC2,X                 ;819A2D;
    STA.B $11                            ;819A30;
    STZ.W $1F12                          ;819A32;
    LDA.B $33                            ;819A35;
    CLC                                  ;819A37;
    ADC.B #$3E                           ;819A38;
    TAY                                  ;819A3A;
    JSL.L CODE_808A7B                    ;819A3B;

CODE_819A3F:
    LDA.B $33                            ;819A3F;
    LSR A                                ;819A41;
    TAX                                  ;819A42;
    LDA.W DATA8_86BAB8,X                 ;819A43;
    STA.B $67                            ;819A46;
    LDX.B #$30                           ;819A48;
    LDA.B $33                            ;819A4A;
    CLC                                  ;819A4C;
    ADC.B #$40                           ;819A4D;
    TAY                                  ;819A4F;
    JSL.L CODE_828000                    ;819A50;
    REP #$31                             ;819A54;
    LDA.B $33                            ;819A56;
    AND.W #$00FF                         ;819A58;
    ADC.W #$0100                         ;819A5B;
    TAY                                  ;819A5E;
    JSL.L CODE_828011                    ;819A5F;
    SEP #$30                             ;819A63;

CODE_819A65:
    RTS                                  ;819A65;

CODE_819A66:
    LDA.W $1F9A                          ;819A66;
    LSR A                                ;819A69;
    LSR A                                ;819A6A;
    CMP.B $27                            ;819A6B;
    BCC CODE_819A74                      ;819A6D;
    LDA.B #$1D                           ;819A6F;
    STA.B $73                            ;819A71;
    RTS                                  ;819A73;

CODE_819A74:
    LDA.B $73                            ;819A74;
    BEQ CODE_819A88                      ;819A76;
    LDA.B $02                            ;819A78;
    BEQ CODE_819A84                      ;819A7A;
    CMP.B #$18                           ;819A7C;
    BNE CODE_819A86                      ;819A7E;
    LDA.B $6A                            ;819A80;
    BNE CODE_819A86                      ;819A82;

CODE_819A84:
    STZ.B $03                            ;819A84;

CODE_819A86:
    STZ.B $73                            ;819A86;

CODE_819A88:
    RTS                                  ;819A88;

CODE_819A89:
    LDY.B #$16                           ;819A89;
    JSL.L CODE_808A7B                    ;819A8B;
    JSL.L CODE_8282D3                    ;819A8F;
    BNE CODE_819ABF                      ;819A93;
    INC.W $0000,X                        ;819A95;
    LDA.B #$10                           ;819A98;
    STA.W $000A,X                        ;819A9A;
    LDA.B #$2D                           ;819A9D;
    STA.W $000B,X                        ;819A9F;
    LDA.B $11                            ;819AA2;
    STA.W $0011,X                        ;819AA4;
    LDA.B #$30                           ;819AA7;
    STA.L $7F839B                        ;819AA9;
    LDA.B #$08                           ;819AAD;
    STA.L $7F829B                        ;819AAF;
    REP #$21                             ;819AB3;
    LDA.B $05                            ;819AB5;
    STA.W $0005,X                        ;819AB7;
    LDA.B $08                            ;819ABA;
    STA.W $0008,X                        ;819ABC;

CODE_819ABF:
    SEP #$30                             ;819ABF;
    RTS                                  ;819AC1;

CODE_819AC2:
    ASL.B $72                            ;819AC2;
    STZ.B $29                            ;819AC4;
    LDA.B #$08                           ;819AC6;
    STA.B $2A                            ;819AC8;
    JSR.W CODE_819D70                    ;819ACA;
    CMP.B #$0E                           ;819ACD;
    BNE CODE_819B20                      ;819ACF;
    LDA.B $27                            ;819AD1;
    BEQ CODE_819B20                      ;819AD3;
    LDA.B #$01                           ;819AD5;
    TSB.B $72                            ;819AD7;
    LDA.B #$02                           ;819AD9;
    BIT.B $72                            ;819ADB;
    BNE CODE_819B20                      ;819ADD;
    JSL.L CODE_8282D3                    ;819ADF;
    BNE CODE_819B20                      ;819AE3;
    LDA.B #$2E                           ;819AE5;
    JSL.L CODE_8088CD                    ;819AE7;
    INC.W $0000,X                        ;819AEB;
    LDA.B #$0C                           ;819AEE;
    STA.W $000A,X                        ;819AF0;
    LDY.W #$0001                         ;819AF3;
    REP #$20                             ;819AF6;
    LDA.B $08                            ;819AF8;
    SEC                                  ;819AFA;
    SBC.B $24                            ;819AFB;
    SEP #$20                             ;819AFD;
    BEQ CODE_819B03                      ;819AFF;
    BMI CODE_819B08                      ;819B01;

CODE_819B03:
    LDA.B #$20                           ;819B03;
    STA.B $74                            ;819B05;
    DEY                                  ;819B07;

CODE_819B08:
    TYA                                  ;819B08;
    STA.W $000B,X                        ;819B09;
    REP #$21                             ;819B0C;
    LDA.B $05                            ;819B0E;
    STA.W $0005,X                        ;819B10;
    LDA.B $2A                            ;819B13;
    AND.W #$00FF                         ;819B15;
    ADC.B $08                            ;819B18;
    AND.W #$FFF0                         ;819B1A;
    STA.W $0008,X                        ;819B1D;

CODE_819B20:
    SEP #$30                             ;819B20;
    RTS                                  ;819B22;

CODE_819B23:
    REP #$10                             ;819B23;
    LDA.B $74                            ;819B25;
    BEQ CODE_819B6E                      ;819B27;
    DEC A                                ;819B29;
    STA.B $74                            ;819B2A;
    AND.B #$03                           ;819B2C;
    BNE CODE_819B6E                      ;819B2E;
    LDY.W #$0003                         ;819B30;

CODE_819B33:
    JSL.L CODE_8282D3                    ;819B33;
    BNE CODE_819B6E                      ;819B37;
    INC.W $0000,X                        ;819B39;
    LDA.B #$0C                           ;819B3C;
    STA.W $000A,X                        ;819B3E;
    LDA.B #$02                           ;819B41;
    STA.W $000B,X                        ;819B43;
    REP #$21                             ;819B46;
    JSL.L CODE_849086                    ;819B48;
    AND.W #$000F                         ;819B4C;
    ADC.B $05                            ;819B4F;
    SEC                                  ;819B51;
    SBC.W #$0008                         ;819B52;
    STA.W $0005,X                        ;819B55;
    JSL.L CODE_849086                    ;819B58;
    AND.W #$0007                         ;819B5C;
    CLC                                  ;819B5F;
    ADC.B $08                            ;819B60;
    CLC                                  ;819B62;
    ADC.W #$0008                         ;819B63;
    STA.W $0008,X                        ;819B66;
    SEP #$20                             ;819B69;
    DEY                                  ;819B6B;
    BNE CODE_819B33                      ;819B6C;

CODE_819B6E:
    SEP #$30                             ;819B6E;
    RTS                                  ;819B70;

CODE_819B71:
    LDA.B $70                            ;819B71;
    BEQ CODE_819BB2                      ;819B73;
    LDA.B $27                            ;819B75;
    BEQ CODE_819BB2                      ;819B77;
    INC.B $71                            ;819B79;
    LDA.B $71                            ;819B7B;
    CMP.B #$3C                           ;819B7D;
    BCC CODE_819BB2                      ;819B7F;
    JSL.L CODE_8282D3                    ;819B81;
    BNE CODE_819BAE                      ;819B85;
    INC.W $0000,X                        ;819B87;
    LDA.B #$0C                           ;819B8A;
    STA.W $000A,X                        ;819B8C;
    LDA.B #$03                           ;819B8F;
    STA.W $000B,X                        ;819B91;
    REP #$21                             ;819B94;
    LDA.W #$0007                         ;819B96;
    BIT.B $68                            ;819B99;
    BVS CODE_819BA0                      ;819B9B;
    LDA.W #$FFF9                         ;819B9D;

CODE_819BA0:
    CLC                                  ;819BA0;
    ADC.B $05                            ;819BA1;
    STA.W $0005,X                        ;819BA3;
    LDA.B $08                            ;819BA6;
    ADC.W #$FFFA                         ;819BA8;
    STA.W $0008,X                        ;819BAB;

CODE_819BAE:
    SEP #$20                             ;819BAE;
    STZ.B $71                            ;819BB0;

CODE_819BB2:
    SEP #$30                             ;819BB2;
    RTS                                  ;819BB4;

CODE_819BB5:
    LDA.B $70                            ;819BB5;
    BIT.B #$01                           ;819BB7;
    BNE CODE_819C08                      ;819BB9;
    LDA.B $77                            ;819BBB;
    BNE CODE_819C08                      ;819BBD;
    LDA.W $0B9C                          ;819BBF;
    BIT.B #$03                           ;819BC2;
    BNE CODE_819C08                      ;819BC4;
    JSL.L CODE_8282D3                    ;819BC6;
    BNE CODE_819C08                      ;819BCA;
    INC.W $0000,X                        ;819BCC;
    LDA.B #$10                           ;819BCF;
    STA.W $000A,X                        ;819BD1;
    LDA.B #$0D                           ;819BD4;
    STA.W $000B,X                        ;819BD6;
    LDA.B $11                            ;819BD9;
    EOR.B #$40                           ;819BDB;
    STA.W $0011,X                        ;819BDD;
    REP #$21                             ;819BE0;
    LDA.B $08                            ;819BE2;
    ADC.W #$000C                         ;819BE4;
    STA.W $0008,X                        ;819BE7;
    JSL.L CODE_849086                    ;819BEA;
    AND.W #$0003                         ;819BEE;
    STA.W $0000                          ;819BF1;
    LDA.W #$000C                         ;819BF4;
    BIT.B $4D                            ;819BF7;
    BVS CODE_819BFE                      ;819BF9;
    LDA.W #$FFF4                         ;819BFB;

CODE_819BFE:
    CLC                                  ;819BFE;
    ADC.W $0000                          ;819BFF;
    CLC                                  ;819C02;
    ADC.B $05                            ;819C03;
    STA.W $0005,X                        ;819C05;

CODE_819C08:
    SEP #$30                             ;819C08;
    RTS                                  ;819C0A;

CODE_819C0B:
    LDA.B $70                            ;819C0B;
    BIT.B #$01                           ;819C0D;
    BNE CODE_819C4A                      ;819C0F;
    LDA.B $75                            ;819C11;
    CMP.B #$06                           ;819C13;
    BCS CODE_819C4A                      ;819C15;
    LDA.W $0B9C                          ;819C17;
    BIT.B #$03                           ;819C1A;
    BNE CODE_819C4A                      ;819C1C;
    JSR.W CODE_819C4D                    ;819C1E;
    BEQ CODE_819C4A                      ;819C21;
    JSL.L CODE_8282D3                    ;819C23;
    BNE CODE_819C4A                      ;819C27;
    INC.B $75                            ;819C29;
    INC.W $0000,X                        ;819C2B;
    LDA.B #$31                           ;819C2E;
    STA.W $000A,X                        ;819C30;
    STZ.W $000B,X                        ;819C33;
    LDA.B $11                            ;819C36;
    STA.W $0011,X                        ;819C38;
    REP #$21                             ;819C3B;
    LDA.B $08                            ;819C3D;
    ADC.W #$000F                         ;819C3F;
    STA.W $0008,X                        ;819C42;
    LDA.B $05                            ;819C45;
    STA.W $0005,X                        ;819C47;

CODE_819C4A:
    SEP #$30                             ;819C4A;
    RTS                                  ;819C4C;

CODE_819C4D:
    STZ.B $29                            ;819C4D;
    LDA.B #$22                           ;819C4F;
    STA.B $2A                            ;819C51;
    JSL.L CODE_8490A0                    ;819C53;
    CMP.B #$11                           ;819C57;
    BEQ CODE_819C65                      ;819C59;
    LDA.B #$10                           ;819C5B;
    STA.B $2A                            ;819C5D;
    JSL.L CODE_8490A0                    ;819C5F;
    CMP.B #$11                           ;819C63;

CODE_819C65:
    RTS                                  ;819C65;

CODE_819C66:
    STA.W $0000                          ;819C66;
    JSL.L CODE_8282D3                    ;819C69;
    BNE CODE_819C82                      ;819C6D;
    INC.W $0000,X                        ;819C6F;
    LDA.B #$0B                           ;819C72;
    STA.W $000A,X                        ;819C74;
    LDA.B $11                            ;819C77;
    STA.W $0011,X                        ;819C79;
    LDA.W $0000                          ;819C7C;
    STA.W $000B,X                        ;819C7F;

CODE_819C82:
    SEP #$10                             ;819C82;
    RTS                                  ;819C84;

CODE_819C85:
    REP #$30                             ;819C85;
    LDX.W #$01FE                         ;819C87;

CODE_819C8A:
    LDA.W $0300,X                        ;819C8A;
    STA.W $0000                          ;819C8D;
    STZ.W $0002                          ;819C90;
    AND.W #$001F                         ;819C93;
    CMP.W #$001F                         ;819C96;
    BEQ CODE_819C9C                      ;819C99;
    INC A                                ;819C9B;

CODE_819C9C:
    STA.W $0002                          ;819C9C;
    LDA.W $0000                          ;819C9F;
    AND.W #$03E0                         ;819CA2;
    CMP.W #$03E0                         ;819CA5;
    BEQ CODE_819CAE                      ;819CA8;
    CLC                                  ;819CAA;
    ADC.W #$0020                         ;819CAB;

CODE_819CAE:
    TSB.W $0002                          ;819CAE;
    LDA.W $0000                          ;819CB1;
    AND.W #$7C00                         ;819CB4;
    CMP.W #$7C00                         ;819CB7;
    BEQ CODE_819CC0                      ;819CBA;
    CLC                                  ;819CBC;
    ADC.W #$0400                         ;819CBD;

CODE_819CC0:
    TSB.W $0002                          ;819CC0;
    LDA.W $0002                          ;819CC3;
    STA.W $0300,X                        ;819CC6;
    DEX                                  ;819CC9;
    DEX                                  ;819CCA;
    BPL CODE_819C8A                      ;819CCB;
    SEP #$30                             ;819CCD;
    INC.W $00A1                          ;819CCF;
    RTS                                  ;819CD2;

CODE_819CD3:
    SEP #$20                             ;819CD3;
    REP #$11                             ;819CD5;
    LDX.B $20                            ;819CD7;
    LDA.W $0007,X                        ;819CD9;
    ADC.B #$08                           ;819CDC;
    BIT.B $4F                            ;819CDE;
    BVS CODE_819CE5                      ;819CE0;
    EOR.B #$FF                           ;819CE2;
    INC A                                ;819CE4;

CODE_819CE5:
    CLC                                  ;819CE5;
    ADC.W $0005,X                        ;819CE6;
    STA.B $29                            ;819CE9;
    LDA.W $0006,X                        ;819CEB;
    CLC                                  ;819CEE;
    ADC.W $0008,X                        ;819CEF;
    SEC                                  ;819CF2;
    SBC.W $0009,X                        ;819CF3;
    STA.B $2A                            ;819CF6;
    JSR.W CODE_819D70                    ;819CF8;
    CMP.B #$3C                           ;819CFB;
    SEP #$10                             ;819CFD;
    RTS                                  ;819CFF;

CODE_819D00:
    REP #$21                             ;819D00;
    STZ.W $0000                          ;819D02;
    LDA.B $79                            ;819D05;
    BPL CODE_819D0C                      ;819D07;
    DEC.W $0000                          ;819D09;

CODE_819D0C:
    ADC.B $04                            ;819D0C;
    STA.B $04                            ;819D0E;
    SEP #$20                             ;819D10;
    LDA.B $06                            ;819D12;
    ADC.W $0000                          ;819D14;
    STA.B $06                            ;819D17;
    RTS                                  ;819D19;

CODE_819D1A:
    BIT.B $7E                            ;819D1A;
    BVS CODE_819D29                      ;819D1C;
    LDA.B #$01                           ;819D1E;
    BIT.B $69                            ;819D20;
    BVS CODE_819D26                      ;819D22;
    LDA.B #$02                           ;819D24;

CODE_819D26:
    BIT.B $37                            ;819D26;
    RTS                                  ;819D28;

CODE_819D29:
    LDA.B #$02                           ;819D29;
    BIT.B $69                            ;819D2B;
    BVS CODE_819D31                      ;819D2D;
    LDA.B #$01                           ;819D2F;

CODE_819D31:
    BIT.B $37                            ;819D31;
    BNE CODE_819D3A                      ;819D33;
    LDA.B #$80                           ;819D35;
    BIT.B $36                            ;819D37;
    RTS                                  ;819D39;

CODE_819D3A:
    LDA.B #$00                           ;819D3A;
    RTS                                  ;819D3C;

CODE_819D3D:
    LDA.B $33                            ;819D3D;
    BNE CODE_819D58                      ;819D3F;
    LDA.W $000A,X                        ;819D41;
    CMP.B #$02                           ;819D44;
    BNE CODE_819D58                      ;819D46;
    PHX                                  ;819D48;
    JSL.L CODE_82833E                    ;819D49;
    BNE CODE_819D57                      ;819D4D;
    INC.W $0000,X                        ;819D4F;
    LDA.B #$1D                           ;819D52;
    STA.W $000A,X                        ;819D54;

CODE_819D57:
    PLX                                  ;819D57;

CODE_819D58:
    RTS                                  ;819D58;
    JSR.W CODE_819D5D                    ;819D59;
    RTL                                  ;819D5C;

CODE_819D5D:
    PHD                                  ;819D5D;
    REP #$20                             ;819D5E;
    LDA.W #$0BA8                         ;819D60;
    TCD                                  ;819D63;
    SEP #$20                             ;819D64;
    LDA.B $64                            ;819D66;
    BNE CODE_819D6E                      ;819D68;
    JSL.L CODE_8491BE                    ;819D6A;

CODE_819D6E:
    PLD                                  ;819D6E;
    RTL                                  ;819D6F;

CODE_819D70:
    LDA.B $7E                            ;819D70;
    BIT.B #$10                           ;819D72;
    BNE CODE_819D7B                      ;819D74;
    JSL.L CODE_8490A0                    ;819D76;
    RTS                                  ;819D7A;

CODE_819D7B:
    LDA.B #$00                           ;819D7B;
    RTS                                  ;819D7D;

CODE_819D7E:
    REP #$10                             ;819D7E;
    STZ.B $16                            ;819D80;
    LDA.W $1F99                          ;819D82;
    LSR A                                ;819D85;
    STA.W $0000                          ;819D86;
    BCC CODE_819D8F                      ;819D89;
    LDA.B #$18                           ;819D8B;
    STA.B $16                            ;819D8D;

CODE_819D8F:
    LDX.W #$0C38                         ;819D8F;
    LDY.W #$0000                         ;819D92;

CODE_819D95:
    LSR.W $0000                          ;819D95;
    BCC CODE_819DAC                      ;819D98;
    INC.W $0000,X                        ;819D9A;
    STZ.W $000A,X                        ;819D9D;
    STZ.W $0001,X                        ;819DA0;
    TYA                                  ;819DA3;
    STA.W $000B,X                        ;819DA4;
    LDA.B #$5D                           ;819DA7;
    STA.W $0010,X                        ;819DA9;

CODE_819DAC:
    REP #$21                             ;819DAC;
    TXA                                  ;819DAE;
    ADC.W #$0020                         ;819DAF;
    TAX                                  ;819DB2;
    SEP #$20                             ;819DB3;
    INY                                  ;819DB5;
    CPY.W #$0003                         ;819DB6;
    BNE CODE_819D95                      ;819DB9;
    SEP #$30                             ;819DBB;
    RTS                                  ;819DBD;

CODE_819DBE:
    JSL.L CODE_8282D3                    ;819DBE;
    BNE CODE_819E01                      ;819DC2;
    INC.W $0000,X                        ;819DC4;
    LDA.B #$10                           ;819DC7;
    STA.W $000A,X                        ;819DC9;
    LDA.B #$0E                           ;819DCC;
    STA.W $000B,X                        ;819DCE;
    LDA.B $11                            ;819DD1;
    STA.W $0011,X                        ;819DD3;
    REP #$21                             ;819DD6;
    LDA.W #$FFF2                         ;819DD8;
    BIT.B $68                            ;819DDB;
    BVC CODE_819DE2                      ;819DDD;
    LDA.W #$000E                         ;819DDF;

CODE_819DE2:
    ADC.B $05                            ;819DE2;
    STA.W $0005,X                        ;819DE4;
    LDA.B $81                            ;819DE7;
    AND.W #$00FF                         ;819DE9;
    TAY                                  ;819DEC;
    LDA.W DATA8_86BACF,Y                 ;819DED;
    AND.W #$00FF                         ;819DF0;
    BIT.W #$0080                         ;819DF3;
    BEQ CODE_819DFB                      ;819DF6;
    ORA.W #$FF00                         ;819DF8;

CODE_819DFB:
    CLC                                  ;819DFB;
    ADC.B $08                            ;819DFC;
    STA.W $0008,X                        ;819DFE;

CODE_819E01:
    SEP #$30                             ;819E01;
    RTS                                  ;819E03;

CODE_819E04:
    REP #$20                             ;819E04;
    LDA.W #$A552                         ;819E06;
    STA.B $20                            ;819E09;
    SEP #$20                             ;819E0B;
    RTS                                  ;819E0D;

CODE_819E0E:
    JSL.L CODE_8282D3                    ;819E0E;
    BNE CODE_819E31                      ;819E12;
    DEC.W $0000,X                        ;819E14;
    LDA.B #$10                           ;819E17;
    STA.W $000A,X                        ;819E19;
    INC A                                ;819E1C;
    STA.W $000B,X                        ;819E1D;
    LDA.B $11                            ;819E20;
    STA.W $0011,X                        ;819E22;
    REP #$20                             ;819E25;
    LDA.B $05                            ;819E27;
    STA.W $0005,X                        ;819E29;
    LDA.B $08                            ;819E2C;
    STA.W $0008,X                        ;819E2E;

CODE_819E31:
    SEP #$30                             ;819E31;
    RTS                                  ;819E33;

CODE_819E34:
    JSL.L CODE_8282ED                    ;819E34;
    BNE CODE_819E42                      ;819E38;
    DEC.W $0000,X                        ;819E3A;
    LDA.B #$01                           ;819E3D;
    STA.W $000A,X                        ;819E3F;

CODE_819E42:
    SEP #$10                             ;819E42;
    RTS                                  ;819E44;

CODE_819E45:
    LDA.W $1F7A                          ;819E45;
    CMP.B #$08                           ;819E48;
    BNE CODE_819E84                      ;819E4A;
    BIT.B $0F                            ;819E4C;
    BVC CODE_819E84                      ;819E4E;
    JSL.L CODE_8282D3                    ;819E50;
    BNE CODE_819E82                      ;819E54;
    INC.W $0000,X                        ;819E56;
    LDA.B #$31                           ;819E59;
    STA.W $000A,X                        ;819E5B;
    LDA.B $11                            ;819E5E;
    STA.W $0011,X                        ;819E60;
    LDA.B #$07                           ;819E63;
    STA.W $000B,X                        ;819E65;
    REP #$21                             ;819E68;
    LDA.B $08                            ;819E6A;
    ADC.W #$FFFD                         ;819E6C;
    STA.W $0008,X                        ;819E6F;
    LDA.W #$FFF5                         ;819E72;
    BIT.B $68                            ;819E75;
    BVC CODE_819E7C                      ;819E77;
    LDA.W #$000B                         ;819E79;

CODE_819E7C:
    CLC                                  ;819E7C;
    ADC.B $05                            ;819E7D;
    STA.W $0005,X                        ;819E7F;

CODE_819E82:
    SEP #$30                             ;819E82;

CODE_819E84:
    RTS                                  ;819E84;

CODE_819E85:
    REP #$31                             ;819E85;
    LDA.B $33                            ;819E87;
    AND.W #$00FF                         ;819E89;
    ADC.W #$0100                         ;819E8C;
    TAY                                  ;819E8F;
    JSL.L CODE_828011                    ;819E90;
    SEP #$30                             ;819E94;
    RTS                                  ;819E96;

CODE_819E97:
    LDA.B #$04                           ;819E97;
    TRB.B $7E                            ;819E99;
    LDA.W $1F99                          ;819E9B;
    BIT.B #$01                           ;819E9E;
    BEQ CODE_819EE4                      ;819EA0;
    LDA.B #$ED                           ;819EA2;
    STA.B $2A                            ;819EA4;
    LDA.B #$08                           ;819EA6;
    STA.B $29                            ;819EA8;
    JSL.L CODE_8490A0                    ;819EAA;
    CMP.B #$3C                           ;819EAE;
    BNE CODE_819EC5                      ;819EB0;
    REP #$21                             ;819EB2;
    LDA.B $05                            ;819EB4;
    ADC.W #$0008                         ;819EB6;
    STA.W $0000                          ;819EB9;
    JSR.W CODE_819EE9                    ;819EBC;
    SEP #$20                             ;819EBF;
    LDA.B #$04                           ;819EC1;
    TSB.B $7E                            ;819EC3;

CODE_819EC5:
    LDA.B #$F8                           ;819EC5;
    STA.B $29                            ;819EC7;
    JSL.L CODE_8490A0                    ;819EC9;
    CMP.B #$3C                           ;819ECD;
    BNE CODE_819EE4                      ;819ECF;
    REP #$21                             ;819ED1;
    LDA.B $05                            ;819ED3;
    ADC.W #$FFF8                         ;819ED5;
    STA.W $0000                          ;819ED8;
    JSR.W CODE_819EE9                    ;819EDB;
    SEP #$20                             ;819EDE;
    LDA.B #$04                           ;819EE0;
    TSB.B $7E                            ;819EE2;

CODE_819EE4:
    LDA.B $7E                            ;819EE4;
    BIT.B #$04                           ;819EE6;
    RTS                                  ;819EE8;

CODE_819EE9:
    LDA.B $08                            ;819EE9;
    CLC                                  ;819EEB;
    ADC.W #$FFED                         ;819EEC;
    STA.W $0002                          ;819EEF;
    JSL.L CODE_849129                    ;819EF2;
    JSL.L CODE_80B8D7                    ;819EF6;
    SEP #$20                             ;819EFA;
    LDA.B #$23                           ;819EFC;
    JSL.L CODE_8088CD                    ;819EFE;
    JSR.W CODE_819F0E                    ;819F02;
    REP #$20                             ;819F05;
    RTS                                  ;819F07;

CODE_819F08:
    LDA.B #$02                           ;819F08;
    TSB.B $7E                            ;819F0A;
    BRA CODE_819F12                      ;819F0C;

CODE_819F0E:
    LDA.B #$02                           ;819F0E;
    TRB.B $7E                            ;819F10;

CODE_819F12:
    REP #$10                             ;819F12;
    LDY.W #$0004                         ;819F14;

CODE_819F17:
    JSL.L CODE_8282D3                    ;819F17;
    BEQ CODE_819F20                      ;819F1B;
    JMP.W CODE_819FAE                    ;819F1D;

CODE_819F20:
    INC.W $0000,X                        ;819F20;
    LDA.B #$2B                           ;819F23;
    STA.W $000A,X                        ;819F25;
    JSL.L CODE_849086                    ;819F28;
    AND.B #$03                           ;819F2C;
    CLC                                  ;819F2E;
    STA.W $0000                          ;819F2F;
    PHY                                  ;819F32;
    LDA.B #$00                           ;819F33;
    XBA                                  ;819F35;
    LDA.W $1F7A                          ;819F36;
    ASL A                                ;819F39;
    ASL A                                ;819F3A;
    ADC.W $0000                          ;819F3B;
    TAY                                  ;819F3E;
    LDA.W DATA8_86BADA,Y                 ;819F3F;
    STA.W $000B,X                        ;819F42;
    LDA.B #$30                           ;819F45;
    STA.W $0011,X                        ;819F47;
    REP #$21                             ;819F4A;
    LDY.W #$FFED                         ;819F4C;
    LDA.B $7E                            ;819F4F;
    BIT.W #$0002                         ;819F51;
    BEQ CODE_819F59                      ;819F54;
    LDY.W #$0008                         ;819F56;

CODE_819F59:
    STY.W $0000                          ;819F59;
    LDA.B $08                            ;819F5C;
    ADC.W $0000                          ;819F5E;
    STA.W $0008,X                        ;819F61;
    STZ.W $000C,X                        ;819F64;
    LDY.W #$0008                         ;819F67;
    LDA.B $7E                            ;819F6A;
    BIT.W #$0002                         ;819F6C;
    BEQ CODE_819F74                      ;819F6F;
    LDY.W #$0010                         ;819F71;

CODE_819F74:
    TYA                                  ;819F74;
    BIT.B $28                            ;819F75;
    BPL CODE_819F7D                      ;819F77;
    EOR.W #$FFFF                         ;819F79;
    INC A                                ;819F7C;

CODE_819F7D:
    CLC                                  ;819F7D;
    ADC.B $05                            ;819F7E;
    STA.W $0005,X                        ;819F80;
    LDA.W #$0030                         ;819F83;
    STA.W $001E,X                        ;819F86;
    JSL.L CODE_849086                    ;819F89;
    AND.W #$000C                         ;819F8D;
    TAY                                  ;819F90;
    LDA.W DATA8_86CE69,Y                 ;819F91;
    STA.W $001A,X                        ;819F94;
    JSL.L CODE_849086                    ;819F97;
    AND.W #$000C                         ;819F9B;
    TAY                                  ;819F9E;
    LDA.W DATA8_86CE71,Y                 ;819F9F;
    STA.W $001C,X                        ;819FA2;
    PLY                                  ;819FA5;
    SEP #$20                             ;819FA6;
    DEY                                  ;819FA8;
    BMI CODE_819FAE                      ;819FA9;
    JMP.W CODE_819F17                    ;819FAB;

CODE_819FAE:
    SEP #$10                             ;819FAE;
    RTS                                  ;819FB0;

CODE_819FB1:
    STZ.B $2A                            ;819FB1;
    STZ.B $29                            ;819FB3;
    JSR.W CODE_819D70                    ;819FB5;
    CMP.B #$12                           ;819FB8;
    BEQ CODE_819FD0                      ;819FBA;
    LDA.B #$08                           ;819FBC;
    STA.B $29                            ;819FBE;
    JSR.W CODE_819D70                    ;819FC0;
    CMP.B #$12                           ;819FC3;
    BEQ CODE_819FD0                      ;819FC5;
    LDA.B #$F8                           ;819FC7;
    STA.B $29                            ;819FC9;
    JSR.W CODE_819D70                    ;819FCB;
    CMP.B #$12                           ;819FCE;

CODE_819FD0:
    PHP                                  ;819FD0;
    LDA.B $29                            ;819FD1;
    STA.B $86                            ;819FD3;
    PLP                                  ;819FD5;
    RTS                                  ;819FD6;

CODE_819FD7:
    LDA.B $33                            ;819FD7;
    CMP.B #$08                           ;819FD9;
    BNE CODE_819FF9                      ;819FDB;
    LDA.B #$40                           ;819FDD;
    BIT.B $37                            ;819FDF;
    BEQ CODE_819FF9                      ;819FE1;
    LDA.B $7D                            ;819FE3;
    BNE CODE_819FF9                      ;819FE5;
    LDA.B $5B                            ;819FE7;
    CMP.B #$01                           ;819FE9;
    BEQ CODE_819FF9                      ;819FEB;
    DEC.B $78                            ;819FED;
    BNE CODE_819FF9                      ;819FEF;
    LDA.B #$02                           ;819FF1;
    STA.B $78                            ;819FF3;
    LDA.B #$40                           ;819FF5;
    TSB.B $3B                            ;819FF7;

CODE_819FF9:
    RTS                                  ;819FF9;

CODE_819FFA:
    PHX                                  ;819FFA;
    SEP #$10                             ;819FFB;
    LDA.B $33                            ;819FFD;
    BNE CODE_81A013                      ;819FFF;
    LDA.B $59                            ;81A001;
    CMP.B #$02                           ;81A003;
    BEQ CODE_81A00F                      ;81A005;
    CMP.B #$08                           ;81A007;
    BNE CODE_81A013                      ;81A009;
    LDA.B #$02                           ;81A00B;
    BRA CODE_81A025                      ;81A00D;

CODE_81A00F:
    LDA.B #$04                           ;81A00F;
    BRA CODE_81A025                      ;81A011;

CODE_81A013:
    LDA.B #$00                           ;81A013;
    LDX.B $59                            ;81A015;
    CPX.B #$04                           ;81A017;
    BNE CODE_81A01C                      ;81A019;
    INC A                                ;81A01B;

CODE_81A01C:
    CLC                                  ;81A01C;
    ADC.B $33                            ;81A01D;
    TAX                                  ;81A01F;
    LDA.W DATA8_86BB0E,X                 ;81A020;
    BMI CODE_81A029                      ;81A023;

CODE_81A025:
    JSL.L CODE_8088CD                    ;81A025;

CODE_81A029:
    REP #$10                             ;81A029;
    PLX                                  ;81A02B;
    RTS                                  ;81A02C;

CODE_81A02D:
    REP #$10                             ;81A02D;
    LDY.W #$0007                         ;81A02F;

CODE_81A032:
    JSL.L CODE_8282D3                    ;81A032;
    BNE CODE_81A055                      ;81A036;
    INC.W $0000,X                        ;81A038;
    LDA.B #$40                           ;81A03B;
    STA.W $000A,X                        ;81A03D;
    TYA                                  ;81A040;
    STA.W $000B,X                        ;81A041;
    REP #$20                             ;81A044;
    LDA.B $05                            ;81A046;
    STA.W $0005,X                        ;81A048;
    LDA.B $08                            ;81A04B;
    STA.W $0008,X                        ;81A04D;
    SEP #$20                             ;81A050;
    DEY                                  ;81A052;
    BPL CODE_81A032                      ;81A053;

CODE_81A055:
    SEP #$10                             ;81A055;
    RTS                                  ;81A057;

CODE_81A058:
    LDX.B $7F                            ;81A058;
    JMP.W (PTR16_81A05D,X)               ;81A05A;

PTR16_81A05D:
    dw CODE_81A065                       ;81A05D;
    dw CODE_81A076                       ;81A05F;
    dw CODE_81A099                       ;81A061;
    dw CODE_81A0BC                       ;81A063;

CODE_81A065:
    LDA.B $37                            ;81A065;
    AND.B #$0F                           ;81A067;
    CMP.B #$04                           ;81A069;
    BNE CODE_81A075                      ;81A06B;
    LDA.B #$02                           ;81A06D;
    STA.B $7F                            ;81A06F;
    LDA.B #$14                           ;81A071;
    STA.B $80                            ;81A073;

CODE_81A075:
    RTS                                  ;81A075;

CODE_81A076:
    DEC.B $80                            ;81A076;
    BNE CODE_81A07C                      ;81A078;
    STZ.B $7F                            ;81A07A;

CODE_81A07C:
    LDA.B #$05                           ;81A07C;
    BIT.B $69                            ;81A07E;
    BVS CODE_81A084                      ;81A080;
    LDA.B #$06                           ;81A082;

CODE_81A084:
    STA.W $0000                          ;81A084;
    LDA.B $37                            ;81A087;
    AND.B #$0F                           ;81A089;
    CMP.W $0000                          ;81A08B;
    BNE CODE_81A098                      ;81A08E;
    LDA.B #$04                           ;81A090;
    STA.B $7F                            ;81A092;
    LDA.B #$14                           ;81A094;
    STA.B $80                            ;81A096;

CODE_81A098:
    RTS                                  ;81A098;

CODE_81A099:
    DEC.B $80                            ;81A099;
    BNE CODE_81A09F                      ;81A09B;
    STZ.B $7F                            ;81A09D;

CODE_81A09F:
    LDA.B #$01                           ;81A09F;
    BIT.B $69                            ;81A0A1;
    BVS CODE_81A0A7                      ;81A0A3;
    LDA.B #$02                           ;81A0A5;

CODE_81A0A7:
    STA.W $0000                          ;81A0A7;
    LDA.B $37                            ;81A0AA;
    AND.B #$0F                           ;81A0AC;
    CMP.W $0000                          ;81A0AE;
    BNE CODE_81A0BB                      ;81A0B1;
    LDA.B #$06                           ;81A0B3;
    STA.B $7F                            ;81A0B5;
    LDA.B #$14                           ;81A0B7;
    STA.B $80                            ;81A0B9;

CODE_81A0BB:
    RTS                                  ;81A0BB;

CODE_81A0BC:
    DEC.B $80                            ;81A0BC;
    BNE CODE_81A0C2                      ;81A0BE;
    STZ.B $7F                            ;81A0C0;

CODE_81A0C2:
    LDA.B $39                            ;81A0C2;
    EOR.B $37                            ;81A0C4;
    AND.B $39                            ;81A0C6;
    BIT.B #$40                           ;81A0C8;
    BNE CODE_81A0D2                      ;81A0CA;
    LDA.B $3B                            ;81A0CC;
    BIT.B #$40                           ;81A0CE;
    BEQ CODE_81A0DF                      ;81A0D0;

CODE_81A0D2:
    JSR.W CODE_81A0E0                    ;81A0D2;
    BNE CODE_81A0DF                      ;81A0D5;
    LDA.B #$42                           ;81A0D7;
    STA.B $02                            ;81A0D9;
    STZ.B $03                            ;81A0DB;
    STZ.B $7F                            ;81A0DD;

CODE_81A0DF:
    RTS                                  ;81A0DF;

CODE_81A0E0:
    LDA.B $8D                            ;81A0E0;
    BNE CODE_81A109                      ;81A0E2;
    LDA.B $7D                            ;81A0E4;
    BNE CODE_81A109                      ;81A0E6;
    LDA.B $33                            ;81A0E8;
    BNE CODE_81A109                      ;81A0EA;
    LDA.B $27                            ;81A0EC;
    CMP.B #$20                           ;81A0EE;
    BNE CODE_81A109                      ;81A0F0;
    LDA.W $1F7E                          ;81A0F2;
    AND.B #$80                           ;81A0F5;
    CMP.B #$80                           ;81A0F7;
    BNE CODE_81A109                      ;81A0F9;
    LDA.B $02                            ;81A0FB;
    BEQ CODE_81A109                      ;81A0FD;
    CMP.B #$02                           ;81A0FF;
    BEQ CODE_81A109                      ;81A101;
    CMP.B #$04                           ;81A103;
    BEQ CODE_81A109                      ;81A105;
    CMP.B #$0A                           ;81A107;

CODE_81A109:
    RTS                                  ;81A109;

CODE_81A10A:
    JSL.L CODE_82833E                    ;81A10A;
    BNE CODE_81A11A                      ;81A10E;
    INC.W $0000,X                        ;81A110;
    INC.B $35                            ;81A113;
    LDA.B #$04                           ;81A115;
    STA.W $000A,X                        ;81A117;

CODE_81A11A:
    SEP #$10                             ;81A11A;
    RTS                                  ;81A11C;

CODE_81A11D:
    JSL.L CODE_8282D3                    ;81A11D;
    BNE CODE_81A130                      ;81A121;
    INC.W $0000,X                        ;81A123;
    LDA.B #$44                           ;81A126;
    STA.W $000A,X                        ;81A128;
    LDA.B #$80                           ;81A12B;
    TSB.W $1F2C                          ;81A12D;

CODE_81A130:
    SEP #$10                             ;81A130;
    RTS                                  ;81A132;

CODE_81A133:
    LDX.B $01                            ;81A133;
    BNE CODE_81A142                      ;81A135;
    INC.B $01                            ;81A137;
    STZ.B $18                            ;81A139;
    LDA.B $0B                            ;81A13B;
    CLC                                  ;81A13D;
    ADC.B $10                            ;81A13E;
    STA.B $16                            ;81A140;

CODE_81A142:
    LDA.W $0BB6                          ;81A142;
    STA.B $0E                            ;81A145;
    LDA.W $0BBF                          ;81A147;
    STA.B $17                            ;81A14A;
    LDA.W $0BB9                          ;81A14C;
    STA.B $11                            ;81A14F;
    LDA.W $0BC1                          ;81A151;
    STA.B $19                            ;81A154;
    REP #$20                             ;81A156;
    LDA.W $0BAD                          ;81A158;
    STA.B $05                            ;81A15B;
    LDA.W $0BB0                          ;81A15D;
    STA.B $08                            ;81A160;
    RTL                                  ;81A162;

CODE_81A163:
    LDX.B $01                            ;81A163;
    BNE CODE_81A17D                      ;81A165;
    INC.B $01                            ;81A167;
    STZ.B $18                            ;81A169;
    LDA.B #$0E                           ;81A16B;
    STA.B $16                            ;81A16D;
    LDA.B #$7F                           ;81A16F;
    STA.B $1C                            ;81A171;
    LDX.B $0B                            ;81A173;
    LDA.W DATA8_86BDCF,X                 ;81A175;
    JSL.L CODE_848F07                    ;81A178;
    RTL                                  ;81A17C;

CODE_81A17D:
    REP #$10                             ;81A17D;
    LDA.B #$00                           ;81A17F;
    XBA                                  ;81A181;
    LDA.B $0B                            ;81A182;
    TAY                                  ;81A184;
    LDX.B $0C                            ;81A185;

CODE_81A187:
    LDA.W $003A,X                        ;81A187;
    SEC                                  ;81A18A;
    SBC.W DATA8_86BDD3,Y                 ;81A18B;
    TAY                                  ;81A18E;
    REP #$20                             ;81A18F;
    SEP #$10                             ;81A191;
    LDA.B [$1A],Y                        ;81A193;
    BPL CODE_81A19B                      ;81A195;
    JML.L CODE_828398                    ;81A197;

CODE_81A19B:
    LDX.B #$00                           ;81A19B;
    BIT.W #$4000                         ;81A19D;
    BEQ CODE_81A1A4                      ;81A1A0;
    LDX.B #$02                           ;81A1A2;

CODE_81A1A4:
    STX.B $12                            ;81A1A4;
    AND.W #$1FFF                         ;81A1A6;
    STA.B $05                            ;81A1A9;
    INY                                  ;81A1AB;
    INY                                  ;81A1AC;
    LDA.B [$1A],Y                        ;81A1AD;
    STA.B $08                            ;81A1AF;
    JML.L CODE_8280B4                    ;81A1B1;

CODE_81A1B5:
    LDX.B $01                            ;81A1B5;
    BNE CODE_81A1CF                      ;81A1B7;
    INC.B $01                            ;81A1B9;
    STZ.B $18                            ;81A1BB;
    LDA.B #$02                           ;81A1BD;
    STA.B $12                            ;81A1BF;
    LDA.B #$6F                           ;81A1C1;
    STA.B $16                            ;81A1C3;
    STZ.B $11                            ;81A1C5;
    STZ.B $10                            ;81A1C7;
    LDA.B #$00                           ;81A1C9;
    JSL.L CODE_848F07                    ;81A1CB;

CODE_81A1CF:
    LDA.W $0C00                          ;81A1CF;
    BNE CODE_81A1D8                      ;81A1D2;
    JML.L CODE_828398                    ;81A1D4;

CODE_81A1D8:
    LDX.B #$70                           ;81A1D8;
    LDA.W $0BFF                          ;81A1DA;
    CMP.B #$50                           ;81A1DD;
    BEQ CODE_81A1F9                      ;81A1DF;
    LDA.W $1F99                          ;81A1E1;
    BIT.B #$02                           ;81A1E4;
    BEQ CODE_81A1FF                      ;81A1E6;
    LDX.B #$71                           ;81A1E8;
    LDA.W $0BFF                          ;81A1EA;
    CMP.B #$01                           ;81A1ED;
    BNE CODE_81A1FF                      ;81A1EF;
    STX.B $16                            ;81A1F1;
    LDA.B #$06                           ;81A1F3;
    TSB.B $10                            ;81A1F5;
    BRA CODE_81A1FF                      ;81A1F7;

CODE_81A1F9:
    STX.B $16                            ;81A1F9;
    LDA.B #$04                           ;81A1FB;
    TSB.B $10                            ;81A1FD;

CODE_81A1FF:
    REP #$20                             ;81A1FF;
    LDA.W $0BAD                          ;81A201;
    STA.B $05                            ;81A204;
    LDA.W $0BB0                          ;81A206;
    STA.B $08                            ;81A209;
    SEP #$20                             ;81A20B;
    LDA.W $0BB9                          ;81A20D;
    AND.B #$70                           ;81A210;
    ORA.B $10                            ;81A212;
    STA.B $11                            ;81A214;
    JSL.L CODE_848EEA                    ;81A216;
    JML.L CODE_8280B4                    ;81A21A;

CODE_81A21E:
    LDX.B $01                            ;81A21E;
    JSR.W (PTR16_81A224,X)               ;81A220;
    RTL                                  ;81A223;

PTR16_81A224:
    dw CODE_81A22E                       ;81A224;
    dw CODE_81A25F                       ;81A226;
    dw CODE_81A294                       ;81A228;
    dw CODE_81A2BA                       ;81A22A;
    dw CODE_81A2BA                       ;81A22C;

CODE_81A22E:
    JSR.W CODE_81A54C                    ;81A22E;
    REP #$20                             ;81A231;
    LDA.W #$0400                         ;81A233;
    BIT.B $10                            ;81A236;
    BVS CODE_81A23D                      ;81A238;
    LDA.W #$FC00                         ;81A23A;

CODE_81A23D:
    STA.B $1A                            ;81A23D;
    STZ.B $1C                            ;81A23F;
    LDA.W #$BE1D                         ;81A241;
    STA.B $20                            ;81A244;
    SEP #$20                             ;81A246;
    STZ.B $2F                            ;81A248;
    LDA.B #$40                           ;81A24A;
    STA.B $1F                            ;81A24C;
    STZ.B $1E                            ;81A24E;
    JSL.L CODE_8280B4                    ;81A250;
    LDA.B #$08                           ;81A254;
    STA.B $16                            ;81A256;
    LDA.B #$04                           ;81A258;
    JSL.L CODE_848F07                    ;81A25A;
    RTS                                  ;81A25E;

CODE_81A25F:
    BIT.B $11                            ;81A25F;
    BVS CODE_81A276                      ;81A261;
    JSL.L CODE_828174                    ;81A263;
    REP #$20                             ;81A267;
    LDA.W #$FA00                         ;81A269;
    CMP.B $1A                            ;81A26C;
    BMI CODE_81A272                      ;81A26E;
    STA.B $1A                            ;81A270;

CODE_81A272:
    SEP #$20                             ;81A272;
    BRA CODE_81A287                      ;81A274;

CODE_81A276:
    JSL.L CODE_828195                    ;81A276;
    REP #$20                             ;81A27A;
    LDA.W #$0600                         ;81A27C;
    CMP.B $1A                            ;81A27F;
    BPL CODE_81A285                      ;81A281;
    STA.B $1A                            ;81A283;

CODE_81A285:
    SEP #$20                             ;81A285;

CODE_81A287:
    JSL.L CODE_8280B4                    ;81A287;

CODE_81A28B:
    LDA.B $0E                            ;81A28B;
    BEQ CODE_81A2C0                      ;81A28D;
    JSL.L CODE_848EEA                    ;81A28F;
    RTS                                  ;81A293;

CODE_81A294:
    REP #$20                             ;81A294;
    LDA.B $1A                            ;81A296;
    EOR.W #$FFFF                         ;81A298;
    INC A                                ;81A29B;
    STA.B $1A                            ;81A29C;
    LDA.W #$0300                         ;81A29E;
    STA.B $1C                            ;81A2A1;
    STZ.B $1E                            ;81A2A3;
    SEP #$20                             ;81A2A5;
    JSL.L CODE_8280B4                    ;81A2A7;
    LDA.W $1F9D                          ;81A2AB;
    BPL CODE_81A2B3                      ;81A2AE;
    STA.W $1F23                          ;81A2B0;

CODE_81A2B3:
    INC.B $30                            ;81A2B3;
    LDA.B #$02                           ;81A2B5;
    STA.B $01                            ;81A2B7;
    RTS                                  ;81A2B9;

CODE_81A2BA:
    INC.B $30                            ;81A2BA;
    JSL.L CODE_84A51A                    ;81A2BC;

CODE_81A2C0:
    DEC.W $0BDD                          ;81A2C0;
    JSL.L CODE_8283A3                    ;81A2C3;
    RTS                                  ;81A2C7;

CODE_81A2C8:
    LDX.B $01                            ;81A2C8;
    JSR.W (PTR16_81A2D2,X)               ;81A2CA;
    JSL.L CODE_848FCA                    ;81A2CD;
    RTL                                  ;81A2D1;

PTR16_81A2D2:
    dw CODE_81A2DC                       ;81A2D2;
    dw CODE_81A324                       ;81A2D4;
    dw CODE_81A38B                       ;81A2D6;
    dw CODE_81A320                       ;81A2D8;
    dw CODE_81A3C4                       ;81A2DA;

CODE_81A2DC:
    JSR.W CODE_81A54C                    ;81A2DC;
    INC.W $0C25                          ;81A2DF;
    LDA.B #$FF                           ;81A2E2;
    STA.B $10                            ;81A2E4;
    REP #$21                             ;81A2E6;
    LDA.W $0BB0                          ;81A2E8;
    ADC.W $0002                          ;81A2EB;
    STA.B $08                            ;81A2EE;
    LDA.W #$BE21                         ;81A2F0;
    STA.B $20                            ;81A2F3;
    LDA.W #$AAF3                         ;81A2F5;
    STA.B $31                            ;81A2F8;
    LDA.W #$0600                         ;81A2FA;
    BIT.B $10                            ;81A2FD;
    BVS CODE_81A304                      ;81A2FF;
    LDA.W #$FA00                         ;81A301;

CODE_81A304:
    STA.B $1A                            ;81A304;
    STZ.B $1C                            ;81A306;
    LDX.W $1F9F                          ;81A308;
    BPL CODE_81A30F                      ;81A30B;
    STZ.B $1A                            ;81A30D;

CODE_81A30F:
    SEP #$20                             ;81A30F;
    JSL.L CODE_8280B4                    ;81A311;
    LDA.B #$0E                           ;81A315;
    STA.B $16                            ;81A317;
    LDA.B #$00                           ;81A319;
    JSL.L CODE_848F07                    ;81A31B;
    RTS                                  ;81A31F;

CODE_81A320:
    LDA.B #$02                           ;81A320;
    STA.B $01                            ;81A322;

CODE_81A324:
    LDX.B $02                            ;81A324;
    JSR.W (PTR16_81A33C,X)               ;81A326;
    JSL.L CODE_8280B4                    ;81A329;
    LDA.B $0E                            ;81A32D;
    BNE CODE_81A33B                      ;81A32F;
    LDA.B #$08                           ;81A331;
    STA.B $01                            ;81A333;
    LDA.B #$04                           ;81A335;
    STA.B $02                            ;81A337;
    STA.B $30                            ;81A339;

CODE_81A33B:
    RTS                                  ;81A33B;

PTR16_81A33C:
    dw CODE_81A340                       ;81A33C;
    dw CODE_81A36D                       ;81A33E;

CODE_81A340:
    LDX.B $03                            ;81A340;
    BNE CODE_81A34C                      ;81A342;
    INC.B $03                            ;81A344;
    LDA.B #$00                           ;81A346;
    JSL.L CODE_848F07                    ;81A348;

CODE_81A34C:
    LDA.B $0F                            ;81A34C;
    BPL CODE_81A356                      ;81A34E;
    LDA.B #$02                           ;81A350;
    STA.B $02                            ;81A352;
    STZ.B $03                            ;81A354;

CODE_81A356:
    JSL.L CODE_848EEA                    ;81A356;
    JSR.W CODE_81A56E                    ;81A35A;
    REP #$20                             ;81A35D;
    LDA.B $0F                            ;81A35F;
    AND.W #$007F                         ;81A361;
    CLC                                  ;81A364;
    ADC.W #$BE21                         ;81A365;
    STA.B $20                            ;81A368;
    SEP #$20                             ;81A36A;
    RTS                                  ;81A36C;

CODE_81A36D:
    LDX.B $03                            ;81A36D;
    BNE CODE_81A382                      ;81A36F;
    INC.B $03                            ;81A371;
    REP #$20                             ;81A373;
    LDA.W #$BE31                         ;81A375;
    STA.B $20                            ;81A378;
    SEP #$20                             ;81A37A;
    LDA.B #$01                           ;81A37C;
    JSL.L CODE_848F07                    ;81A37E;

CODE_81A382:
    JSL.L CODE_82820A                    ;81A382;
    JSL.L CODE_848EEA                    ;81A386;
    RTS                                  ;81A38A;

CODE_81A38B:
    LDX.B $02                            ;81A38B;
    JSR.W (PTR16_81A395,X)               ;81A38D;
    JSL.L CODE_8280B4                    ;81A390;
    RTS                                  ;81A394;

PTR16_81A395:
    dw CODE_81A399                       ;81A395;
    dw CODE_81A3B2                       ;81A397;

CODE_81A399:
    REP #$31                             ;81A399;
    LDA.B $33                            ;81A39B;
    STA.B $05                            ;81A39D;
    LDA.B $35                            ;81A39F;
    STA.B $08                            ;81A3A1;
    SEP #$30                             ;81A3A3;
    LDA.B #$02                           ;81A3A5;
    STA.B $02                            ;81A3A7;
    INC.B $30                            ;81A3A9;
    LDA.B #$03                           ;81A3AB;
    JSL.L CODE_848F07                    ;81A3AD;
    RTS                                  ;81A3B1;

CODE_81A3B2:
    LDA.B $0F                            ;81A3B2;
    BPL CODE_81A3BF                      ;81A3B4;
    LDA.B #$08                           ;81A3B6;
    STA.B $01                            ;81A3B8;
    LDA.B #$04                           ;81A3BA;
    STA.B $02                            ;81A3BC;
    RTS                                  ;81A3BE;

CODE_81A3BF:
    JSL.L CODE_848EEA                    ;81A3BF;
    RTS                                  ;81A3C3;

CODE_81A3C4:
    LDX.B $02                            ;81A3C4;
    JMP.W (PTR16_81A3C9,X)               ;81A3C6;

PTR16_81A3C9:
    dw CODE_81A3CF                       ;81A3C9;
    dw CODE_81A3EC                       ;81A3CB;
    dw CODE_81A3FD                       ;81A3CD;

CODE_81A3CF:
    REP #$31                             ;81A3CF;
    LDA.B $33                            ;81A3D1;
    STA.B $05                            ;81A3D3;
    LDA.B $35                            ;81A3D5;
    STA.B $08                            ;81A3D7;
    SEP #$30                             ;81A3D9;
    INC.B $30                            ;81A3DB;
    LDA.B #$02                           ;81A3DD;
    STA.B $02                            ;81A3DF;
    JSL.L CODE_8280B4                    ;81A3E1;
    LDA.B #$02                           ;81A3E5;
    JSL.L CODE_848F07                    ;81A3E7;
    RTS                                  ;81A3EB;

CODE_81A3EC:
    LDA.B $0F                            ;81A3EC;
    BPL CODE_81A3F4                      ;81A3EE;
    LDA.B #$04                           ;81A3F0;
    STA.B $02                            ;81A3F2;

CODE_81A3F4:
    JSL.L CODE_8280B4                    ;81A3F4;
    JSL.L CODE_848EEA                    ;81A3F8;
    RTS                                  ;81A3FC;

CODE_81A3FD:
    DEC.W $0BDD                          ;81A3FD;
    DEC.W $0C25                          ;81A400;
    JSL.L CODE_8283A3                    ;81A403;
    RTS                                  ;81A407;

CODE_81A408:
    LDX.B $01                            ;81A408;
    JSR.W (PTR16_81A40E,X)               ;81A40A;
    RTL                                  ;81A40D;

PTR16_81A40E:
    dw CODE_81A418                       ;81A40E;
    dw CODE_81A43C                       ;81A410;
    dw CODE_81A498                       ;81A412;
    dw CODE_81A4AF                       ;81A414;
    dw CODE_81A4B8                       ;81A416;

CODE_81A418:
    JSR.W CODE_81A54C                    ;81A418;
    STZ.B $37                            ;81A41B;
    REP #$20                             ;81A41D;
    LDA.W #$0600                         ;81A41F;
    STA.B $38                            ;81A422;
    STZ.B $3A                            ;81A424;
    LDA.W #$BE35                         ;81A426;
    STA.B $20                            ;81A429;
    SEP #$20                             ;81A42B;
    JSL.L CODE_8280B4                    ;81A42D;
    LDA.B #$08                           ;81A431;
    STA.B $16                            ;81A433;
    LDA.B #$05                           ;81A435;
    JSL.L CODE_848F07                    ;81A437;
    RTS                                  ;81A43B;

CODE_81A43C:
    BIT.B $11                            ;81A43C;
    BVC CODE_81A44E                      ;81A43E;
    LDA.B $37                            ;81A440;
    INC A                                ;81A442;
    INC A                                ;81A443;
    INC A                                ;81A444;
    INC A                                ;81A445;
    CMP.B #$1D                           ;81A446;
    BMI CODE_81A458                      ;81A448;
    LDA.B #$00                           ;81A44A;
    BRA CODE_81A458                      ;81A44C;

CODE_81A44E:
    LDA.B $37                            ;81A44E;
    DEC A                                ;81A450;
    DEC A                                ;81A451;
    DEC A                                ;81A452;
    DEC A                                ;81A453;
    BPL CODE_81A458                      ;81A454;
    LDA.B #$1C                           ;81A456;

CODE_81A458:
    STA.B $37                            ;81A458;
    ASL A                                ;81A45A;
    ASL A                                ;81A45B;
    TAX                                  ;81A45C;
    REP #$20                             ;81A45D;
    LDA.W DATA8_86EEB7,X                 ;81A45F;
    ASL A                                ;81A462;
    ASL A                                ;81A463;
    ASL A                                ;81A464;
    STA.B $1A                            ;81A465;
    LDA.W DATA8_86EEB9,X                 ;81A467;
    ASL A                                ;81A46A;
    ASL A                                ;81A46B;
    ASL A                                ;81A46C;
    STA.B $1C                            ;81A46D;
    LDA.B $38                            ;81A46F;
    BIT.B $10                            ;81A471;
    BVS CODE_81A479                      ;81A473;
    EOR.W #$FFFF                         ;81A475;
    INC A                                ;81A478;

CODE_81A479:
    CLC                                  ;81A479;
    ADC.B $1A                            ;81A47A;
    STA.B $1A                            ;81A47C;
    LDA.B $3A                            ;81A47E;
    CLC                                  ;81A480;
    ADC.B $1C                            ;81A481;
    STA.B $1C                            ;81A483;
    SEP #$20                             ;81A485;
    JSL.L CODE_82820A                    ;81A487;
    JSL.L CODE_8280B4                    ;81A48B;
    LDA.B $0E                            ;81A48F;
    BEQ CODE_81A4B8                      ;81A491;
    JSL.L CODE_848EEA                    ;81A493;
    RTS                                  ;81A497;

CODE_81A498:
    REP #$20                             ;81A498;
    LDA.B $38                            ;81A49A;
    EOR.W #$FFFF                         ;81A49C;
    INC A                                ;81A49F;
    STA.B $38                            ;81A4A0;
    LDA.W #$0300                         ;81A4A2;
    STA.B $3A                            ;81A4A5;
    SEP #$20                             ;81A4A7;
    JSL.L CODE_8280B4                    ;81A4A9;
    INC.B $30                            ;81A4AD;

CODE_81A4AF:
    LDA.B #$02                           ;81A4AF;
    STA.B $01                            ;81A4B1;
    JSL.L CODE_848EEA                    ;81A4B3;
    RTS                                  ;81A4B7;

CODE_81A4B8:
    INC.B $30                            ;81A4B8;
    DEC.W $0BDD                          ;81A4BA;
    JSL.L CODE_8283A3                    ;81A4BD;
    RTS                                  ;81A4C1;

CODE_81A4C2:
    LDX.B $01                            ;81A4C2;
    JSR.W (PTR16_81A4C8,X)               ;81A4C4;
    RTL                                  ;81A4C7;

PTR16_81A4C8:
    dw CODE_81A4D2                       ;81A4C8;
    dw CODE_81A50A                       ;81A4CA;
    dw CODE_81A51B                       ;81A4CC;
    dw CODE_81A53B                       ;81A4CE;
    dw CODE_81A53B                       ;81A4D0;

CODE_81A4D2:
    JSR.W CODE_81A54C                    ;81A4D2;
    INC.W $0C0B                          ;81A4D5;
    REP #$20                             ;81A4D8;
    LDA.W #$0600                         ;81A4DA;
    BIT.B $10                            ;81A4DD;
    BVS CODE_81A4E4                      ;81A4DF;
    LDA.W #$FA00                         ;81A4E1;

CODE_81A4E4:
    STA.B $1A                            ;81A4E4;
    STZ.B $1C                            ;81A4E6;
    LDA.W #$BE1D                         ;81A4E8;
    STA.B $20                            ;81A4EB;
    SEP #$20                             ;81A4ED;
    LDA.W $1F9D                          ;81A4EF;
    BPL CODE_81A4F7                      ;81A4F2;
    STZ.W $1F9B                          ;81A4F4;

CODE_81A4F7:
    STZ.B $1F                            ;81A4F7;
    STZ.B $1E                            ;81A4F9;
    JSL.L CODE_8280B4                    ;81A4FB;
    LDA.B #$08                           ;81A4FF;
    STA.B $16                            ;81A501;
    LDA.B #$04                           ;81A503;
    JSL.L CODE_848F07                    ;81A505;
    RTS                                  ;81A509;

CODE_81A50A:
    JSL.L CODE_828174                    ;81A50A;
    JSL.L CODE_8280B4                    ;81A50E;
    LDA.B $0E                            ;81A512;
    BEQ CODE_81A541                      ;81A514;
    JSL.L CODE_848EEA                    ;81A516;
    RTS                                  ;81A51A;

CODE_81A51B:
    REP #$20                             ;81A51B;
    LDA.B $1A                            ;81A51D;
    EOR.W #$FFFF                         ;81A51F;
    INC A                                ;81A522;
    STA.B $1A                            ;81A523;
    LDA.W #$0300                         ;81A525;
    STA.B $1C                            ;81A528;
    SEP #$20                             ;81A52A;
    LDA.B #$40                           ;81A52C;
    STA.B $1E                            ;81A52E;
    JSL.L CODE_8280B4                    ;81A530;
    INC.B $30                            ;81A534;
    LDA.B #$02                           ;81A536;
    STA.B $01                            ;81A538;
    RTS                                  ;81A53A;

CODE_81A53B:
    INC.B $30                            ;81A53B;
    JSL.L CODE_84A51A                    ;81A53D;

CODE_81A541:
    DEC.W $0BDD                          ;81A541;
    DEC.W $0C0B                          ;81A544;
    JSL.L CODE_8283A3                    ;81A547;
    RTS                                  ;81A54B;

CODE_81A54C:
    LDA.B #$02                           ;81A54C;
    STA.B $01                            ;81A54E;
    STZ.B $18                            ;81A550;
    LDY.B #$04                           ;81A552;
    LDA.B $0A                            ;81A554;
    CMP.B #$01                           ;81A556;
    BNE CODE_81A55C                      ;81A558;
    LDY.B #$06                           ;81A55A;

CODE_81A55C:
    STY.W $0000                          ;81A55C;
    LDX.W $1F7A                          ;81A55F;
    LDA.W $0BB9                          ;81A562;
    AND.B #$70                           ;81A565;
    ORA.W $0000                          ;81A567;
    STA.B $11                            ;81A56A;
    STZ.B $30                            ;81A56C;

CODE_81A56E:
    LDX.B $3C                            ;81A56E;
    LDA.W DATA8_86BE39,X                 ;81A570;
    STA.W $0000                          ;81A573;
    STZ.W $0001                          ;81A576;
    STZ.W $0003                          ;81A579;
    LDA.W DATA8_86BE3A,X                 ;81A57C;
    STA.W $0002                          ;81A57F;
    BPL CODE_81A587                      ;81A582;
    DEC.W $0003                          ;81A584;

CODE_81A587:
    REP #$20                             ;81A587;
    LDA.W $0000                          ;81A589;
    BIT.B $10                            ;81A58C;
    BVS CODE_81A594                      ;81A58E;
    EOR.W #$FFFF                         ;81A590;
    INC A                                ;81A593;

CODE_81A594:
    CLC                                  ;81A594;
    ADC.W $0BAD                          ;81A595;
    STA.B $05                            ;81A598;
    LDX.B $0A                            ;81A59A;
    CPX.B #$01                           ;81A59C;
    BEQ CODE_81A5A9                      ;81A59E;
    LDA.W $0BB0                          ;81A5A0;
    CLC                                  ;81A5A3;
    ADC.W $0002                          ;81A5A4;
    STA.B $08                            ;81A5A7;

CODE_81A5A9:
    SEP #$20                             ;81A5A9;
    RTS                                  ;81A5AB;

CODE_81A5AC:
    LDX.B $01                            ;81A5AC;
    JSR.W (PTR16_81A5B6,X)               ;81A5AE;
    JSL.L CODE_848FCA                    ;81A5B1;
    RTL                                  ;81A5B5;

PTR16_81A5B6:
    dw CODE_81A5C0                       ;81A5B6;
    dw CODE_81A60E                       ;81A5B8;
    dw CODE_81A66C                       ;81A5BA;
    dw CODE_81A60A                       ;81A5BC;
    dw CODE_81A6A5                       ;81A5BE;

CODE_81A5C0:
    LDA.B #$02                           ;81A5C0;
    STA.B $01                            ;81A5C2;
    STZ.B $18                            ;81A5C4;
    LDA.B $11                            ;81A5C6;
    AND.B #$0E                           ;81A5C8;
    CLC                                  ;81A5CA;
    ADC.B #$02                           ;81A5CB;
    STA.W $0000                          ;81A5CD;
    LDA.B $11                            ;81A5D0;
    AND.B #$F1                           ;81A5D2;
    ORA.W $0000                          ;81A5D4;
    STA.B $11                            ;81A5D7;
    STZ.B $30                            ;81A5D9;
    LDA.B #$FF                           ;81A5DB;
    STA.B $10                            ;81A5DD;
    REP #$20                             ;81A5DF;
    LDA.W #$C03A                         ;81A5E1;
    STA.B $20                            ;81A5E4;
    LDA.W #$AAF3                         ;81A5E6;
    STA.B $31                            ;81A5E9;
    LDA.W #$0500                         ;81A5EB;
    BIT.B $10                            ;81A5EE;
    BVS CODE_81A5F5                      ;81A5F0;
    LDA.W #$FB00                         ;81A5F2;

CODE_81A5F5:
    STA.B $1A                            ;81A5F5;
    STZ.B $1C                            ;81A5F7;
    SEP #$20                             ;81A5F9;
    JSL.L CODE_8280B4                    ;81A5FB;
    LDA.B #$0E                           ;81A5FF;
    STA.B $16                            ;81A601;
    LDA.B #$00                           ;81A603;
    JSL.L CODE_848F07                    ;81A605;
    RTS                                  ;81A609;

CODE_81A60A:
    LDA.B #$02                           ;81A60A;
    STA.B $01                            ;81A60C;

CODE_81A60E:
    LDX.B $02                            ;81A60E;
    JSR.W (PTR16_81A624,X)               ;81A610;
    JSL.L CODE_8280B4                    ;81A613;
    LDA.B $0E                            ;81A617;
    BNE CODE_81A623                      ;81A619;
    LDA.B #$08                           ;81A61B;
    STA.B $01                            ;81A61D;
    LDA.B #$06                           ;81A61F;
    STA.B $02                            ;81A621;

CODE_81A623:
    RTS                                  ;81A623;

PTR16_81A624:
    dw CODE_81A628                       ;81A624;
    dw CODE_81A64E                       ;81A626;

CODE_81A628:
    LDX.B $03                            ;81A628;
    BNE CODE_81A634                      ;81A62A;
    INC.B $03                            ;81A62C;
    LDA.B #$00                           ;81A62E;
    JSL.L CODE_848F07                    ;81A630;

CODE_81A634:
    LDA.B $0F                            ;81A634;
    BPL CODE_81A63E                      ;81A636;
    LDA.B #$02                           ;81A638;
    STA.B $02                            ;81A63A;
    STZ.B $03                            ;81A63C;

CODE_81A63E:
    JSL.L CODE_848EEA                    ;81A63E;
    LDA.B $0F                            ;81A642;
    AND.B #$7F                           ;81A644;
    CLC                                  ;81A646;
    ADC.B #$3A                           ;81A647;
    STA.B $20                            ;81A649;
    SEP #$20                             ;81A64B;
    RTS                                  ;81A64D;

CODE_81A64E:
    LDX.B $03                            ;81A64E;
    BNE CODE_81A663                      ;81A650;
    INC.B $03                            ;81A652;
    REP #$20                             ;81A654;
    LDA.W #$C046                         ;81A656;
    STA.B $20                            ;81A659;
    SEP #$20                             ;81A65B;
    LDA.B #$01                           ;81A65D;
    JSL.L CODE_848F07                    ;81A65F;

CODE_81A663:
    JSL.L CODE_82820A                    ;81A663;
    JSL.L CODE_848EEA                    ;81A667;
    RTS                                  ;81A66B;

CODE_81A66C:
    LDX.B $02                            ;81A66C;
    JSR.W (PTR16_81A676,X)               ;81A66E;
    JSL.L CODE_8280B4                    ;81A671;
    RTS                                  ;81A675;

PTR16_81A676:
    dw CODE_81A67A                       ;81A676;
    dw CODE_81A693                       ;81A678;

CODE_81A67A:
    REP #$31                             ;81A67A;
    LDA.B $33                            ;81A67C;
    STA.B $05                            ;81A67E;
    LDA.B $35                            ;81A680;
    STA.B $08                            ;81A682;
    SEP #$30                             ;81A684;
    LDA.B #$02                           ;81A686;
    STA.B $02                            ;81A688;
    INC.B $30                            ;81A68A;
    LDA.B #$03                           ;81A68C;
    JSL.L CODE_848F07                    ;81A68E;
    RTS                                  ;81A692;

CODE_81A693:
    LDA.B $0F                            ;81A693;
    BPL CODE_81A6A0                      ;81A695;
    LDA.B #$08                           ;81A697;
    STA.B $01                            ;81A699;
    LDA.B #$06                           ;81A69B;
    STA.B $02                            ;81A69D;
    RTS                                  ;81A69F;

CODE_81A6A0:
    JSL.L CODE_848EEA                    ;81A6A0;
    RTS                                  ;81A6A4;

CODE_81A6A5:
    LDX.B $02                            ;81A6A5;
    JMP.W (PTR16_81A6AA,X)               ;81A6A7;

PTR16_81A6AA:
    dw CODE_81A6B2                       ;81A6AA;
    dw CODE_81A6D3                       ;81A6AC;
    dw CODE_81A6EA                       ;81A6AE;
    dw CODE_81A6FB                       ;81A6B0;

CODE_81A6B2:
    REP #$31                             ;81A6B2;
    LDA.B $33                            ;81A6B4;
    STA.B $05                            ;81A6B6;
    LDA.B $35                            ;81A6B8;
    STA.B $08                            ;81A6BA;
    SEP #$30                             ;81A6BC;
    JSL.L CODE_84A28B                    ;81A6BE;
    INC.B $30                            ;81A6C2;
    LDA.B #$02                           ;81A6C4;
    STA.B $02                            ;81A6C6;
    JSL.L CODE_8280B4                    ;81A6C8;
    LDA.B #$02                           ;81A6CC;
    JSL.L CODE_848F07                    ;81A6CE;
    RTS                                  ;81A6D2;

CODE_81A6D3:
    REP #$10                             ;81A6D3;
    LDX.B $0C                            ;81A6D5;
    LDA.W $003B,X                        ;81A6D7;
    ORA.B #$80                           ;81A6DA;
    STA.W $003B,X                        ;81A6DC;
    SEP #$10                             ;81A6DF;
    JSL.L CODE_8280B4                    ;81A6E1;
    LDA.B #$04                           ;81A6E5;
    STA.B $02                            ;81A6E7;
    RTS                                  ;81A6E9;

CODE_81A6EA:
    LDA.B $0F                            ;81A6EA;
    BPL CODE_81A6F2                      ;81A6EC;
    LDA.B #$06                           ;81A6EE;
    STA.B $02                            ;81A6F0;

CODE_81A6F2:
    JSL.L CODE_8280B4                    ;81A6F2;
    JSL.L CODE_848EEA                    ;81A6F6;
    RTS                                  ;81A6FA;

CODE_81A6FB:
    JSL.L CODE_8283A3                    ;81A6FB;
    RTS                                  ;81A6FF;

CODE_81A700:
    LDX.B $01                            ;81A700;
    JMP.W (PTR16_81A705,X)               ;81A702;

PTR16_81A705:
    dw CODE_81A70F                       ;81A705;
    dw CODE_81A71A                       ;81A707;
    dw CODE_81A71A                       ;81A709;
    dw CODE_81A71A                       ;81A70B;
    dw CODE_81A71A                       ;81A70D;

CODE_81A70F:
    LDA.B #$02                           ;81A70F;
    STA.B $01                            ;81A711;
    DEC A                                ;81A713;
    STA.B $0E                            ;81A714;
    STZ.B $1A                            ;81A716;
    STZ.B $1B                            ;81A718;

CODE_81A71A:
    STX.B $30                            ;81A71A;
    LDA.W $0E3F                          ;81A71C;
    AND.B #$7F                           ;81A71F;
    BNE CODE_81A727                      ;81A721;

CODE_81A723:
    JML.L CODE_8283A3                    ;81A723;

CODE_81A727:
    BIT.W $0E27                          ;81A727;
    BMI CODE_81A723                      ;81A72A;
    BVC CODE_81A750                      ;81A72C;
    STZ.B $30                            ;81A72E;
    LDA.W $0E29                          ;81A730;
    STA.B $11                            ;81A733;
    REP #$21                             ;81A735;
    LDA.W $0E27                          ;81A737;
    AND.W #$0030                         ;81A73A;
    LSR A                                ;81A73D;
    LSR A                                ;81A73E;
    ADC.W #$C02A                         ;81A73F;
    STA.B $20                            ;81A742;
    LDA.W $0E1D                          ;81A744;
    STA.B $05                            ;81A747;
    LDA.W $0E20                          ;81A749;
    STA.B $08                            ;81A74C;
    SEP #$20                             ;81A74E;

CODE_81A750:
    RTL                                  ;81A750;

CODE_81A751:
    LDX.B $01                            ;81A751;
    JMP.W (PTR16_81A756,X)               ;81A753;

PTR16_81A756:
    dw CODE_81A760                       ;81A756;
    dw CODE_81A76E                       ;81A758;
    dw CODE_81A76E                       ;81A75A;
    dw CODE_81A76E                       ;81A75C;
    dw CODE_81A76E                       ;81A75E;

CODE_81A760:
    LDA.B #$02                           ;81A760;
    STA.B $01                            ;81A762;
    STZ.B $30                            ;81A764;
    LDA.B #$36                           ;81A766;
    STA.B $20                            ;81A768;
    LDA.B #$C0                           ;81A76A;
    STA.B $21                            ;81A76C;

CODE_81A76E:
    REP #$30                             ;81A76E;
    LDX.B $0C                            ;81A770;
    LDA.W $0005,X                        ;81A772;
    STA.B $05                            ;81A775;
    LDA.W $0008,X                        ;81A777;
    STA.B $08                            ;81A77A;
    LDA.W $001A,X                        ;81A77C;
    STA.B $1A                            ;81A77F;
    SEP #$20                             ;81A781;
    LDA.W $0011,X                        ;81A783;
    STA.B $11                            ;81A786;
    LDA.W $000A,X                        ;81A788;
    CMP.B #$2B                           ;81A78B;
    BNE CODE_81A794                      ;81A78D;
    LDA.W $0000,X                        ;81A78F;
    BNE CODE_81A798                      ;81A792;

CODE_81A794:
    JML.L CODE_8283A3                    ;81A794;

CODE_81A798:
    RTL                                  ;81A798;

CODE_81A799:
    LDX.B $01                            ;81A799;
    JSR.W (PTR16_81A79F,X)               ;81A79B;
    RTL                                  ;81A79E;

PTR16_81A79F:
    dw CODE_81A7A5                       ;81A79F;
    dw CODE_81A7D2                       ;81A7A1;
    dw CODE_81A8EB                       ;81A7A3;

CODE_81A7A5:
    LDA.B #$02                           ;81A7A5;
    STA.B $01                            ;81A7A7;
    STA.B $27                            ;81A7A9;
    STZ.B $28                            ;81A7AB;
    LDA.B #$02                           ;81A7AD;
    STA.B $26                            ;81A7AF;
    STZ.B $12                            ;81A7B1;
    REP #$10                             ;81A7B3;
    LDX.B $33                            ;81A7B5;
    LDA.W $0011,X                        ;81A7B7;
    STA.B $11                            ;81A7BA;
    LDX.W #$C06A                         ;81A7BC;
    STX.B $20                            ;81A7BF;
    SEP #$10                             ;81A7C1;
    JSL.L CODE_8280B4                    ;81A7C3;
    LDA.B #$02                           ;81A7C7;
    STA.B $16                            ;81A7C9;
    LDA.B #$09                           ;81A7CB;
    JSL.L CODE_848F07                    ;81A7CD;
    RTS                                  ;81A7D1;

CODE_81A7D2:
    LDX.B $02                            ;81A7D2;
    JSR.W (CODE_81A804,X)                ;81A7D4;
    JSL.L CODE_8280B4                    ;81A7D7;
    REP #$10                             ;81A7DB;
    LDX.B $33                            ;81A7DD;
    LDA.W $0011,X                        ;81A7DF;
    STA.B $11                            ;81A7E2;
    LDA.W $0027,X                        ;81A7E4;
    AND.B #$7F                           ;81A7E7;
    BNE CODE_81A7F1                      ;81A7E9;
    LDA.B #$04                           ;81A7EB;
    STA.B $01                            ;81A7ED;
    STZ.B $02                            ;81A7EF;

CODE_81A7F1:
    SEP #$10                             ;81A7F1;
    LDA.B $30                            ;81A7F3;
    PHA                                  ;81A7F5;
    STZ.B $30                            ;81A7F6;
    JSL.L CODE_849B43                    ;81A7F8;
    PLA                                  ;81A7FC;
    STA.B $30                            ;81A7FD;
    JSL.L CODE_849B03                    ;81A7FF;
    RTS                                  ;81A803;

CODE_81A804:
    TSB.W DATA8_86A2A8                   ;81A804;
    TAY                                  ;81A807;
    LDA.B $A8,X                          ;81A808;
    DEC.B $A8,X                          ;81A80A;
    LDA.B #$02                           ;81A80C;
    STA.B $02                            ;81A80E;
    LDA.B $35                            ;81A810;
    BIT.B $11                            ;81A812;
    BVC CODE_81A82B                      ;81A814;
    CMP.B #$0C                           ;81A816;
    BMI CODE_81A823                      ;81A818;
    LDX.B #$0C                           ;81A81A;
    CMP.B #$18                           ;81A81C;
    BMI CODE_81A822                      ;81A81E;
    LDX.B #$04                           ;81A820;

CODE_81A822:
    TXA                                  ;81A822;

CODE_81A823:
    CMP.B #$04                           ;81A823;
    BPL CODE_81A83E                      ;81A825;
    LDA.B #$04                           ;81A827;
    BRA CODE_81A83E                      ;81A829;

CODE_81A82B:
    CMP.B #$1C                           ;81A82B;
    BMI CODE_81A831                      ;81A82D;
    LDA.B #$1C                           ;81A82F;

CODE_81A831:
    CMP.B #$14                           ;81A831;
    BPL CODE_81A83E                      ;81A833;
    LDX.B #$14                           ;81A835;
    CMP.B #$08                           ;81A837;
    BPL CODE_81A83D                      ;81A839;
    LDX.B #$1C                           ;81A83B;

CODE_81A83D:
    TXA                                  ;81A83D;

CODE_81A83E:
    ASL A                                ;81A83E;
    ASL A                                ;81A83F;
    TAX                                  ;81A840;
    STZ.B $0B                            ;81A841;
    REP #$21                             ;81A843;
    LDA.W DATA8_86EEB7,X                 ;81A845;
    ASL A                                ;81A848;
    STA.B $1A                            ;81A849;
    BPL CODE_81A855                      ;81A84B;
    INC.B $0B                            ;81A84D;
    INC.B $0B                            ;81A84F;
    EOR.W #$FFFF                         ;81A851;
    INC A                                ;81A854;

CODE_81A855:
    LSR A                                ;81A855;
    LSR A                                ;81A856;
    LSR A                                ;81A857;
    LSR A                                ;81A858;
    LSR A                                ;81A859;
    LSR A                                ;81A85A;
    SEP #$20                             ;81A85B;
    STA.B $1F                            ;81A85D;
    REP #$20                             ;81A85F;
    CLC                                  ;81A861;
    LDA.W DATA8_86EEB9,X                 ;81A862;
    ASL A                                ;81A865;
    STA.B $1C                            ;81A866;
    BPL CODE_81A876                      ;81A868;
    INC.B $0B                            ;81A86A;
    INC.B $0B                            ;81A86C;
    INC.B $0B                            ;81A86E;
    INC.B $0B                            ;81A870;
    EOR.W #$FFFF                         ;81A872;
    INC A                                ;81A875;

CODE_81A876:
    LSR A                                ;81A876;
    LSR A                                ;81A877;
    LSR A                                ;81A878;
    LSR A                                ;81A879;
    LSR A                                ;81A87A;
    LSR A                                ;81A87B;
    SEP #$20                             ;81A87C;
    STA.B $1E                            ;81A87E;
    LDA.B #$25                           ;81A880;
    STA.B $03                            ;81A882;
    JSR.W CODE_81A96F                    ;81A884;
    BNE CODE_81A897                      ;81A887;
    REP #$10                             ;81A889;
    LDX.B $33                            ;81A88B;
    INC.W $0036,X                        ;81A88D;
    SEP #$10                             ;81A890;
    JSL.L CODE_8283A3                    ;81A892;
    RTS                                  ;81A896;

CODE_81A897:
    LDA.B #$02                           ;81A897;
    STA.B $16                            ;81A899;
    LDA.B #$09                           ;81A89B;
    JSL.L CODE_848F07                    ;81A89D;
    RTS                                  ;81A8A1;
    DEC.B $03                            ;81A8A2;
    BNE CODE_81A8AF                      ;81A8A4;
    LDA.B #$04                           ;81A8A6;
    STA.B $02                            ;81A8A8;
    LDA.B #$10                           ;81A8AA;
    STA.B $03                            ;81A8AC;
    RTS                                  ;81A8AE;

CODE_81A8AF:
    JSR.W CODE_81AB03                    ;81A8AF;
    JMP.W CODE_81A9C4                    ;81A8B2;
    DEC.B $03                            ;81A8B5;
    BNE CODE_81A8D5                      ;81A8B7;
    LDA.B #$06                           ;81A8B9;
    STA.B $02                            ;81A8BB;
    LDA.B #$25                           ;81A8BD;
    STA.B $03                            ;81A8BF;
    REP #$20                             ;81A8C1;
    LDA.B $1A                            ;81A8C3;
    EOR.W #$FFFF                         ;81A8C5;
    INC A                                ;81A8C8;
    STA.B $1A                            ;81A8C9;
    LDA.B $1C                            ;81A8CB;
    EOR.W #$FFFF                         ;81A8CD;
    INC A                                ;81A8D0;
    STA.B $1C                            ;81A8D1;
    SEP #$20                             ;81A8D3;

CODE_81A8D5:
    RTS                                  ;81A8D5;
    DEC.B $03                            ;81A8D6;
    BNE CODE_81A8E5                      ;81A8D8;
    REP #$10                             ;81A8DA;
    LDX.B $33                            ;81A8DC;
    INC.W $0036,X                        ;81A8DE;
    SEP #$10                             ;81A8E1;
    BRA CODE_81A955                      ;81A8E3;

CODE_81A8E5:
    JSR.W CODE_81AB03                    ;81A8E5;
    JMP.W CODE_81A9C4                    ;81A8E8;

CODE_81A8EB:
    LDX.B $02                            ;81A8EB;
    JMP.W (PTR16_81A8F0,X)               ;81A8ED;

PTR16_81A8F0:
    dw CODE_81A8F6                       ;81A8F0;
    dw CODE_81A93D                       ;81A8F2;
    dw CODE_81A955                       ;81A8F4;

CODE_81A8F6:
    LDA.B #$02                           ;81A8F6;
    STA.B $02                            ;81A8F8;
    LDA.B $11                            ;81A8FA;
    AND.B #$F0                           ;81A8FC;
    ORA.L $7F8300                        ;81A8FE;
    STA.B $11                            ;81A902;
    REP #$20                             ;81A904;
    LDA.W #$0300                         ;81A906;
    BIT.B $10                            ;81A909;
    BVS CODE_81A910                      ;81A90B;
    LDA.W #$FD00                         ;81A90D;

CODE_81A910:
    STA.B $1A                            ;81A910;
    LDA.W #$0300                         ;81A912;
    STA.B $1C                            ;81A915;
    SEP #$20                             ;81A917;
    STZ.B $1F                            ;81A919;
    LDA.B #$40                           ;81A91B;
    STA.B $1E                            ;81A91D;
    REP #$10                             ;81A91F;
    LDY.W #$0008                         ;81A921;

CODE_81A924:
    LDX.B $29,Y                          ;81A924;
    LDA.B #$04                           ;81A926;
    STA.W $0001,X                        ;81A928;
    STZ.W $0002,X                        ;81A92B;
    TYA                                  ;81A92E;
    STA.W $000B,X                        ;81A92F;
    DEY                                  ;81A932;
    DEY                                  ;81A933;
    BPL CODE_81A924                      ;81A934;
    SEP #$10                             ;81A936;
    JSL.L CODE_8280B4                    ;81A938;
    RTS                                  ;81A93C;

CODE_81A93D:
    LDA.W $0B9C                          ;81A93D;
    LSR A                                ;81A940;
    BCC CODE_81A950                      ;81A941;
    JSL.L CODE_8280B4                    ;81A943;
    LDA.B $0E                            ;81A947;
    BNE CODE_81A950                      ;81A949;
    JSL.L CODE_8283A3                    ;81A94B;
    RTS                                  ;81A94F;

CODE_81A950:
    JSL.L CODE_828174                    ;81A950;
    RTS                                  ;81A954;

CODE_81A955:
    REP #$10                             ;81A955;
    LDY.W #$0008                         ;81A957;

CODE_81A95A:
    LDX.B $29,Y                          ;81A95A;
    LDA.B #$04                           ;81A95C;
    STA.W $0001,X                        ;81A95E;
    STA.W $0002,X                        ;81A961;
    DEY                                  ;81A964;
    DEY                                  ;81A965;
    BPL CODE_81A95A                      ;81A966;
    SEP #$10                             ;81A968;
    JSL.L CODE_8283A3                    ;81A96A;
    RTS                                  ;81A96E;

CODE_81A96F:
    REP #$10                             ;81A96F;
    LDY.W #$0008                         ;81A971;

CODE_81A974:
    JSL.L CODE_8282D3                    ;81A974;
    BNE CODE_81A9B3                      ;81A978;
    INC.W $0000,X                        ;81A97A;
    LDA.B #$05                           ;81A97D;
    STA.W $000A,X                        ;81A97F;
    LDA.B $18                            ;81A982;
    STA.W $0018,X                        ;81A984;
    LDA.B $11                            ;81A987;
    STA.W $0011,X                        ;81A989;
    REP #$21                             ;81A98C;
    LDA.W #$0004                         ;81A98E;
    BIT.B $10                            ;81A991;
    BVC CODE_81A998                      ;81A993;
    LDA.W #$FFFC                         ;81A995;

CODE_81A998:
    ADC.B $05                            ;81A998;
    STA.W $0005,X                        ;81A99A;
    LDA.B $08                            ;81A99D;
    STA.W $0008,X                        ;81A99F;
    TDC                                  ;81A9A2;
    STA.W $000C,X                        ;81A9A3;
    SEP #$20                             ;81A9A6;
    STX.B $29,Y                          ;81A9A8;
    DEY                                  ;81A9AA;
    DEY                                  ;81A9AB;
    BPL CODE_81A974                      ;81A9AC;
    LDA.B #$01                           ;81A9AE;
    SEP #$10                             ;81A9B0;
    RTS                                  ;81A9B2;

CODE_81A9B3:
    CPY.W #$0008                         ;81A9B3;
    BEQ CODE_81A9C1                      ;81A9B6;
    INY                                  ;81A9B8;
    INY                                  ;81A9B9;
    LDX.B $29,Y                          ;81A9BA;
    STZ.W $0000,X                        ;81A9BC;
    BRA CODE_81A9B3                      ;81A9BF;

CODE_81A9C1:
    SEP #$12                             ;81A9C1;
    RTS                                  ;81A9C3;

CODE_81A9C4:
    REP #$31                             ;81A9C4;
    LDY.B $33                            ;81A9C6;
    LDA.W #$0008                         ;81A9C8;
    BIT.B $10                            ;81A9CB;
    BVS CODE_81A9D2                      ;81A9CD;
    LDA.W #$FFF8                         ;81A9CF;

CODE_81A9D2:
    ADC.W $0005,Y                        ;81A9D2;
    STA.W $0000                          ;81A9D5;
    LDA.W $0008,Y                        ;81A9D8;
    STA.W $0002                          ;81A9DB;
    SEP #$10                             ;81A9DE;
    LDA.B $05                            ;81A9E0;
    SEC                                  ;81A9E2;
    SBC.W $0000                          ;81A9E3;
    BPL CODE_81A9EC                      ;81A9E6;
    EOR.W #$FFFF                         ;81A9E8;
    INC A                                ;81A9EB;

CODE_81A9EC:
    STA.W $4204                          ;81A9EC;
    LDX.B #$06                           ;81A9EF;
    STX.W $4206                          ;81A9F1;
    LDA.B $08                            ;81A9F4;
    SEC                                  ;81A9F6;
    SBC.W $0002                          ;81A9F7;
    BPL CODE_81AA00                      ;81A9FA;
    EOR.W #$FFFF                         ;81A9FC;
    INC A                                ;81A9FF;

CODE_81AA00:
    STA.W $0006                          ;81AA00;
    NOP                                  ;81AA03;
    LDA.W $4214                          ;81AA04;
    STA.W $0004                          ;81AA07;
    LDA.W $0006                          ;81AA0A;
    STA.W $4204                          ;81AA0D;
    STX.W $4206                          ;81AA10;
    REP #$10                             ;81AA13;
    LDX.W #$0000                         ;81AA15;
    LDA.B $05                            ;81AA18;
    CMP.W $0000                          ;81AA1A;
    BPL CODE_81AA2C                      ;81AA1D;
    INX                                  ;81AA1F;
    INX                                  ;81AA20;
    STA.W $0008                          ;81AA21;
    LDA.W $0000                          ;81AA24;
    STA.W $000A                          ;81AA27;
    BRA CODE_81AA35                      ;81AA2A;

CODE_81AA2C:
    STA.W $000A                          ;81AA2C;
    LDA.W $0000                          ;81AA2F;
    STA.W $0008                          ;81AA32;

CODE_81AA35:
    LDA.W $4214                          ;81AA35;
    STA.W $0006                          ;81AA38;
    LDA.B $08                            ;81AA3B;
    CMP.W $0002                          ;81AA3D;
    BPL CODE_81AA51                      ;81AA40;
    INX                                  ;81AA42;
    INX                                  ;81AA43;
    INX                                  ;81AA44;
    INX                                  ;81AA45;
    STA.W $000C                          ;81AA46;
    LDA.W $0002                          ;81AA49;
    STA.W $000E                          ;81AA4C;
    BRA CODE_81AA5A                      ;81AA4F;

CODE_81AA51:
    STA.W $000E                          ;81AA51;
    LDA.W $0002                          ;81AA54;
    STA.W $000C                          ;81AA57;

CODE_81AA5A:
    LDY.B $29                            ;81AA5A;
    LDA.B $05                            ;81AA5C;
    CLC                                  ;81AA5E;
    ADC.W $0000                          ;81AA5F;
    LSR A                                ;81AA62;
    STA.W $0005,Y                        ;81AA63;
    STA.W $0010                          ;81AA66;
    LDA.B $08                            ;81AA69;
    CLC                                  ;81AA6B;
    ADC.W $0002                          ;81AA6C;
    LSR A                                ;81AA6F;
    STA.W $0008,Y                        ;81AA70;
    STA.W $0012                          ;81AA73;
    JSR.W (PTR16_81AA8A,X)               ;81AA76;
    LDX.B $2B                            ;81AA79;
    LDY.B $2F                            ;81AA7B;
    JSR.W CODE_81AAEC                    ;81AA7D;
    LDX.B $2D                            ;81AA80;
    LDY.B $31                            ;81AA82;
    JSR.W CODE_81AAEC                    ;81AA84;
    SEP #$30                             ;81AA87;
    RTS                                  ;81AA89;

PTR16_81AA8A:
    dw CODE_81AA92                       ;81AA8A;
    dw CODE_81AABF                       ;81AA8C;
    dw CODE_81AABF                       ;81AA8E;
    dw CODE_81AA92                       ;81AA90;

CODE_81AA92:
    LDY.B $2B                            ;81AA92;
    LDA.W $0008                          ;81AA94;
    CLC                                  ;81AA97;
    ADC.W $0004                          ;81AA98;
    STA.W $0005,Y                        ;81AA9B;
    LDA.W $000C                          ;81AA9E;
    CLC                                  ;81AAA1;
    ADC.W $0006                          ;81AAA2;
    STA.W $0008,Y                        ;81AAA5;
    LDY.B $2D                            ;81AAA8;
    LDA.W $000A                          ;81AAAA;
    SEC                                  ;81AAAD;
    SBC.W $0004                          ;81AAAE;
    STA.W $0005,Y                        ;81AAB1;
    LDA.W $000E                          ;81AAB4;
    SEC                                  ;81AAB7;
    SBC.W $0006                          ;81AAB8;
    STA.W $0008,Y                        ;81AABB;
    RTS                                  ;81AABE;

CODE_81AABF:
    LDY.B $2B                            ;81AABF;
    LDA.W $0008                          ;81AAC1;
    CLC                                  ;81AAC4;
    ADC.W $0004                          ;81AAC5;
    STA.W $0005,Y                        ;81AAC8;
    LDA.W $000E                          ;81AACB;
    SEC                                  ;81AACE;
    SBC.W $0006                          ;81AACF;
    STA.W $0008,Y                        ;81AAD2;
    LDY.B $2D                            ;81AAD5;
    LDA.W $000A                          ;81AAD7;
    SEC                                  ;81AADA;
    SBC.W $0004                          ;81AADB;
    STA.W $0005,Y                        ;81AADE;
    LDA.W $000C                          ;81AAE1;
    CLC                                  ;81AAE4;
    ADC.W $0006                          ;81AAE5;
    STA.W $0008,Y                        ;81AAE8;
    RTS                                  ;81AAEB;

CODE_81AAEC:
    LDA.W $0005,X                        ;81AAEC;
    CLC                                  ;81AAEF;
    ADC.W $0010                          ;81AAF0;
    LSR A                                ;81AAF3;
    STA.W $0005,Y                        ;81AAF4;
    LDA.W $0008,X                        ;81AAF7;
    CLC                                  ;81AAFA;
    ADC.W $0012                          ;81AAFB;
    LSR A                                ;81AAFE;
    STA.W $0008,Y                        ;81AAFF;
    RTS                                  ;81AB02;

CODE_81AB03:
    LDX.B $0B                            ;81AB03;
    JMP.W (PTR16_81AB08,X)               ;81AB05;

PTR16_81AB08:
    dw CODE_81AB10                       ;81AB08;
    dw CODE_81AB15                       ;81AB0A;
    dw CODE_81AB1A                       ;81AB0C;
    dw CODE_81AB1F                       ;81AB0E;

CODE_81AB10:
    JSL.L CODE_828174                    ;81AB10;
    RTS                                  ;81AB14;

CODE_81AB15:
    JSL.L CODE_828195                    ;81AB15;
    RTS                                  ;81AB19;

CODE_81AB1A:
    JSL.L CODE_8281B2                    ;81AB1A;
    RTS                                  ;81AB1E;

CODE_81AB1F:
    JSL.L CODE_8281CF                    ;81AB1F;
    RTS                                  ;81AB23;

CODE_81AB24:
    LDX.B $01                            ;81AB24;
    JSR.W (PTR16_81AB2A,X)               ;81AB26;
    RTL                                  ;81AB29;

PTR16_81AB2A:
    dw CODE_81AB30                       ;81AB2A;
    dw CODE_81AB5E                       ;81AB2C;
    dw CODE_81ABF7                       ;81AB2E;

CODE_81AB30:
    LDA.B #$02                           ;81AB30;
    STA.B $01                            ;81AB32;
    LDA.B #$04                           ;81AB34;
    STA.B $27                            ;81AB36;
    LDA.B #$02                           ;81AB38;
    STA.B $26                            ;81AB3A;
    LDA.B #$03                           ;81AB3C;
    STA.B $28                            ;81AB3E;
    LDA.B $11                            ;81AB40;
    STA.B $3C                            ;81AB42;
    STZ.B $12                            ;81AB44;
    REP #$10                             ;81AB46;
    LDX.W #$C06E                         ;81AB48;
    STX.B $20                            ;81AB4B;
    SEP #$10                             ;81AB4D;
    JSL.L CODE_8280B4                    ;81AB4F;
    LDA.B #$09                           ;81AB53;
    STA.B $16                            ;81AB55;
    LDA.B #$00                           ;81AB57;
    JSL.L CODE_848F07                    ;81AB59;
    RTS                                  ;81AB5D;

CODE_81AB5E:
    LDA.B $3C                            ;81AB5E;
    STA.B $11                            ;81AB60;
    LDX.B $02                            ;81AB62;
    JSR.W (PTR16_81ABB2,X)               ;81AB64;
    REP #$30                             ;81AB67;
    LDX.B $3A                            ;81AB69;
    LDA.W $0005,X                        ;81AB6B;
    SEC                                  ;81AB6E;
    SBC.B $05                            ;81AB6F;
    BPL CODE_81AB77                      ;81AB71;
    EOR.W #$FFFF                         ;81AB73;
    INC A                                ;81AB76;

CODE_81AB77:
    CMP.W #$0120                         ;81AB77;
    SEP #$30                             ;81AB7A;
    BCC CODE_81AB85                      ;81AB7C;
    LDA.B #$04                           ;81AB7E;
    STA.B $01                            ;81AB80;
    STZ.B $02                            ;81AB82;
    RTS                                  ;81AB84;

CODE_81AB85:
    JSL.L CODE_8280B4                    ;81AB85;
    JSL.L CODE_849B03                    ;81AB89;
    BEQ CODE_81AB9F                      ;81AB8D;

CODE_81AB8F:
    REP #$10                             ;81AB8F;
    LDX.B $3A                            ;81AB91;
    INC.W $0035,X                        ;81AB93;
    SEP #$10                             ;81AB96;
    LDA.B #$04                           ;81AB98;
    STA.B $01                            ;81AB9A;
    STZ.B $02                            ;81AB9C;
    RTS                                  ;81AB9E;

CODE_81AB9F:
    JSL.L CODE_849B43                    ;81AB9F;
    BEQ CODE_81ABB1                      ;81ABA3;
    BPL CODE_81ABAD                      ;81ABA5;
    JSL.L CODE_84A4AB                    ;81ABA7;
    BRA CODE_81AB8F                      ;81ABAB;

CODE_81ABAD:
    LDA.B #$0E                           ;81ABAD;
    TRB.B $11                            ;81ABAF;

CODE_81ABB1:
    RTS                                  ;81ABB1;

PTR16_81ABB2:
    dw CODE_81ABB6                       ;81ABB2;
    dw CODE_81ABE2                       ;81ABB4;

CODE_81ABB6:
    LDA.B #$02                           ;81ABB6;
    STA.B $02                            ;81ABB8;
    JSL.L CODE_84A07C                    ;81ABBA;
    STA.W $0000                          ;81ABBE;
    LDA.B #$00                           ;81ABC1;
    BIT.B $11                            ;81ABC3;
    BVC CODE_81ABC9                      ;81ABC5;
    LDA.B #$20                           ;81ABC7;

CODE_81ABC9:
    CLC                                  ;81ABC9;
    ADC.W $0000                          ;81ABCA;
    TAX                                  ;81ABCD;
    LDA.W DATA8_86C072,X                 ;81ABCE;
    ASL A                                ;81ABD1;
    ASL A                                ;81ABD2;
    TAX                                  ;81ABD3;
    REP #$20                             ;81ABD4;
    LDA.W DATA8_86EEB7,X                 ;81ABD6;
    STA.B $1A                            ;81ABD9;
    LDA.W DATA8_86EEB9,X                 ;81ABDB;
    STA.B $1C                            ;81ABDE;
    SEP #$20                             ;81ABE0;

CODE_81ABE2:
    JSL.L CODE_82820A                    ;81ABE2;
    JSL.L CODE_82806E                    ;81ABE6;
    BCC CODE_81ABF2                      ;81ABEA;
    LDA.B #$04                           ;81ABEC;
    STA.B $01                            ;81ABEE;
    STZ.B $02                            ;81ABF0;

CODE_81ABF2:
    JSL.L CODE_848EEA                    ;81ABF2;
    RTS                                  ;81ABF6;

CODE_81ABF7:
    JSL.L CODE_8283A3                    ;81ABF7;
    RTS                                  ;81ABFB;

CODE_81ABFC:
    LDX.B $01                            ;81ABFC;
    JSR.W (PTR16_81AC02,X)               ;81ABFE;
    RTL                                  ;81AC01;

PTR16_81AC02:
    dw CODE_81AC08                       ;81AC02;
    dw CODE_81AC5A                       ;81AC04;
    dw CODE_81AE19                       ;81AC06;

CODE_81AC08:
    LDA.B #$02                           ;81AC08;
    STA.B $01                            ;81AC0A;
    LDA.B #$02                           ;81AC0C;
    STA.B $27                            ;81AC0E;
    LDA.B #$01                           ;81AC10;
    STA.B $26                            ;81AC12;
    STA.B $28                            ;81AC14;
    LDA.W $0C2B                          ;81AC16;
    BPL CODE_81AC1F                      ;81AC19;
    LDA.B #$05                           ;81AC1B;
    STA.B $28                            ;81AC1D;

CODE_81AC1F:
    LDA.L $7F8304                        ;81AC1F;
    STA.B $11                            ;81AC23;
    LDA.B #$06                           ;81AC25;
    STA.B $12                            ;81AC27;
    STA.B $2F                            ;81AC29;
    STZ.B $30                            ;81AC2B;
    LDA.B #$40                           ;81AC2D;
    STA.B $1E                            ;81AC2F;
    REP #$10                             ;81AC31;
    LDX.W #$C0B2                         ;81AC33;
    STX.B $20                            ;81AC36;
    SEP #$10                             ;81AC38;
    STZ.B $38                            ;81AC3A;
    JSL.L CODE_849086                    ;81AC3C;
    CMP.B #$0A                           ;81AC40;
    BNE CODE_81AC48                      ;81AC42;
    LDA.B #$03                           ;81AC44;
    STA.B $38                            ;81AC46;

CODE_81AC48:
    JSL.L CODE_8280B4                    ;81AC48;
    LDA.B #$0B                           ;81AC4C;
    STA.B $16                            ;81AC4E;
    LDA.B #$02                           ;81AC50;
    CLC                                  ;81AC52;
    ADC.B $38                            ;81AC53;
    JSL.L CODE_848F07                    ;81AC55;
    RTS                                  ;81AC59;

CODE_81AC5A:
    JSL.L CODE_82806E                    ;81AC5A;
    BCC CODE_81AC67                      ;81AC5E;
    LDA.B #$04                           ;81AC60;
    STA.B $01                            ;81AC62;
    STZ.B $02                            ;81AC64;
    RTS                                  ;81AC66;

CODE_81AC67:
    LDX.B $02                            ;81AC67;
    JSR.W (PTR16_81ACAB,X)               ;81AC69;
    JSL.L CODE_8280B4                    ;81AC6C;
    LDA.B $11                            ;81AC70;
    AND.B #$C0                           ;81AC72;
    ORA.L $7F8304                        ;81AC74;
    STA.B $11                            ;81AC78;
    JSL.L CODE_849B43                    ;81AC7A;
    BEQ CODE_81ACA2                      ;81AC7E;
    LDA.B #$0E                           ;81AC80;
    TRB.B $11                            ;81AC82;
    LDA.B $27                            ;81AC84;
    AND.B #$7F                           ;81AC86;
    BNE CODE_81ACA2                      ;81AC88;
    LDA.B #$04                           ;81AC8A;
    STA.B $01                            ;81AC8C;
    JSL.L CODE_84A4AB                    ;81AC8E;
    LDX.B $38                            ;81AC92;
    BEQ CODE_81AC9B                      ;81AC94;
    JSL.L CODE_84A3F7                    ;81AC96;
    RTS                                  ;81AC9A;

CODE_81AC9B:
    LDA.B #$01                           ;81AC9B;
    JSL.L CODE_84A37F                    ;81AC9D;
    RTS                                  ;81ACA1;

CODE_81ACA2:
    JSL.L CODE_849B03                    ;81ACA2;
    JSL.L CODE_8491BE                    ;81ACA6;
    RTS                                  ;81ACAA;

PTR16_81ACAB:
    dw CODE_81ACB3                       ;81ACAB;
    dw CODE_81AD1A                       ;81ACAD;
    dw CODE_81AD7B                       ;81ACAF;
    dw CODE_81ADB1                       ;81ACB1;

CODE_81ACB3:
    LDX.B $03                            ;81ACB3;
    BNE CODE_81ACD6                      ;81ACB5;
    INC.B $03                            ;81ACB7;
    LDA.B #$21                           ;81ACB9;
    STA.B $39                            ;81ACBB;
    STA.B $30                            ;81ACBD;
    LDA.B #$08                           ;81ACBF;
    STA.B $37                            ;81ACC1;
    REP #$20                             ;81ACC3;
    LDA.W #$0020                         ;81ACC5;
    STA.B $1C                            ;81ACC8;
    SEP #$20                             ;81ACCA;
    LDA.B #$02                           ;81ACCC;
    CLC                                  ;81ACCE;
    ADC.B $38                            ;81ACCF;
    JSL.L CODE_848F07                    ;81ACD1;
    RTS                                  ;81ACD5;

CODE_81ACD6:
    REP #$10                             ;81ACD6;
    LDX.B $3A                            ;81ACD8;
    LDA.W $0027,X                        ;81ACDA;
    AND.B #$7F                           ;81ACDD;
    SEP #$10                             ;81ACDF;
    BNE CODE_81ACF0                      ;81ACE1;
    LDA.B #$04                           ;81ACE3;
    STA.B $02                            ;81ACE5;
    STZ.B $03                            ;81ACE7;
    STZ.B $1A                            ;81ACE9;
    STZ.B $1B                            ;81ACEB;
    STZ.B $30                            ;81ACED;
    RTS                                  ;81ACEF;

CODE_81ACF0:
    DEC.B $39                            ;81ACF0;
    BNE CODE_81AD07                      ;81ACF2;
    REP #$21                             ;81ACF4;
    LDA.B $08                            ;81ACF6;
    ADC.W #$FFF8                         ;81ACF8;
    STA.B $08                            ;81ACFB;
    SEP #$20                             ;81ACFD;
    LDA.B #$02                           ;81ACFF;
    STA.B $02                            ;81AD01;
    STZ.B $03                            ;81AD03;
    STZ.B $30                            ;81AD05;

CODE_81AD07:
    DEC.B $37                            ;81AD07;
    BNE CODE_81AD15                      ;81AD09;
    LDA.B #$08                           ;81AD0B;
    STA.B $37                            ;81AD0D;
    LDA.B $11                            ;81AD0F;
    EOR.B #$40                           ;81AD11;
    STA.B $11                            ;81AD13;

CODE_81AD15:
    JSL.L CODE_82825D                    ;81AD15;
    RTS                                  ;81AD19;

CODE_81AD1A:
    LDX.B $03                            ;81AD1A;
    BNE CODE_81AD56                      ;81AD1C;
    INC.B $03                            ;81AD1E;
    REP #$20                             ;81AD20;
    LDX.B #$00                           ;81AD22;
    LDA.W $0BAD                          ;81AD24;
    CMP.B $05                            ;81AD27;
    BCC CODE_81AD2D                      ;81AD29;
    LDX.B #$40                           ;81AD2B;

CODE_81AD2D:
    STX.B $37                            ;81AD2D;
    LDA.W #$0200                         ;81AD2F;
    BIT.B $36                            ;81AD32;
    BVS CODE_81AD39                      ;81AD34;
    LDA.W #$FE00                         ;81AD36;

CODE_81AD39:
    STA.B $1A                            ;81AD39;
    LDA.W #$0300                         ;81AD3B;
    STA.B $1C                            ;81AD3E;
    SEP #$20                             ;81AD40;
    LDA.B #$08                           ;81AD42;
    STA.B $37                            ;81AD44;
    LDA.B #$08                           ;81AD46;
    STA.B $39                            ;81AD48;
    STZ.B $1F                            ;81AD4A;
    LDA.B #$02                           ;81AD4C;
    CLC                                  ;81AD4E;
    ADC.B $38                            ;81AD4F;
    JSL.L CODE_848F07                    ;81AD51;
    RTS                                  ;81AD55;

CODE_81AD56:
    DEC.B $39                            ;81AD56;
    BNE CODE_81AD5E                      ;81AD58;
    LDA.B #$02                           ;81AD5A;
    STA.B $12                            ;81AD5C;

CODE_81AD5E:
    JSL.L CODE_828174                    ;81AD5E;
    LDA.B $1D                            ;81AD62;
    BPL CODE_81AD6C                      ;81AD64;
    LDA.B #$04                           ;81AD66;
    STA.B $02                            ;81AD68;
    STZ.B $03                            ;81AD6A;

CODE_81AD6C:
    DEC.B $37                            ;81AD6C;
    BNE CODE_81AD7A                      ;81AD6E;
    LDA.B #$08                           ;81AD70;
    STA.B $37                            ;81AD72;
    LDA.B $11                            ;81AD74;
    EOR.B #$40                           ;81AD76;
    STA.B $11                            ;81AD78;

CODE_81AD7A:
    RTS                                  ;81AD7A;

CODE_81AD7B:
    LDX.B $03                            ;81AD7B;
    BNE CODE_81AD8F                      ;81AD7D;
    INC.B $03                            ;81AD7F;
    STZ.B $1C                            ;81AD81;
    STZ.B $1D                            ;81AD83;
    LDA.B #$02                           ;81AD85;
    CLC                                  ;81AD87;
    ADC.B $38                            ;81AD88;
    JSL.L CODE_848F07                    ;81AD8A;
    RTS                                  ;81AD8E;

CODE_81AD8F:
    LDA.B $2B                            ;81AD8F;
    BIT.B #$04                           ;81AD91;
    BEQ CODE_81AD9E                      ;81AD93;
    LDA.B #$06                           ;81AD95;
    STA.B $02                            ;81AD97;
    STZ.B $03                            ;81AD99;
    STZ.B $2F                            ;81AD9B;
    RTS                                  ;81AD9D;

CODE_81AD9E:
    JSL.L CODE_828174                    ;81AD9E;
    DEC.B $37                            ;81ADA2;
    BNE CODE_81ADB0                      ;81ADA4;
    LDA.B #$08                           ;81ADA6;
    STA.B $37                            ;81ADA8;
    LDA.B $11                            ;81ADAA;
    EOR.B #$40                           ;81ADAC;
    STA.B $11                            ;81ADAE;

CODE_81ADB0:
    RTS                                  ;81ADB0;

CODE_81ADB1:
    LDX.B $03                            ;81ADB1;
    BNE CODE_81ADE6                      ;81ADB3;
    INC.B $03                            ;81ADB5;
    REP #$20                             ;81ADB7;
    LDX.B #$00                           ;81ADB9;
    LDA.W $0BAD                          ;81ADBB;
    CMP.B $05                            ;81ADBE;
    BCC CODE_81ADC4                      ;81ADC0;
    LDX.B #$40                           ;81ADC2;

CODE_81ADC4:
    STX.B $37                            ;81ADC4;
    LDA.W #$0080                         ;81ADC6;
    BIT.B $36                            ;81ADC9;
    BVS CODE_81ADD0                      ;81ADCB;
    LDA.W #$FF80                         ;81ADCD;

CODE_81ADD0:
    STA.B $1A                            ;81ADD0;
    SEP #$20                             ;81ADD2;
    LDA.B $11                            ;81ADD4;
    AND.B #$3F                           ;81ADD6;
    ORA.B $37                            ;81ADD8;
    STA.B $11                            ;81ADDA;
    LDA.B #$03                           ;81ADDC;
    CLC                                  ;81ADDE;
    ADC.B $38                            ;81ADDF;
    JSL.L CODE_848F07                    ;81ADE1;
    RTS                                  ;81ADE5;

CODE_81ADE6:
    LDA.B $2B                            ;81ADE6;
    BIT.B #$04                           ;81ADE8;
    BNE CODE_81ADF9                      ;81ADEA;
    LDA.B #$04                           ;81ADEC;
    STA.B $02                            ;81ADEE;
    STZ.B $03                            ;81ADF0;
    STA.B $2F                            ;81ADF2;
    LDA.B #$08                           ;81ADF4;
    STA.B $37                            ;81ADF6;
    RTS                                  ;81ADF8;

CODE_81ADF9:
    BIT.B #$03                           ;81ADF9;
    BEQ CODE_81AE10                      ;81ADFB;
    REP #$20                             ;81ADFD;
    LDA.B $1A                            ;81ADFF;
    EOR.W #$FFFF                         ;81AE01;
    INC A                                ;81AE04;
    STA.B $1A                            ;81AE05;
    LDA.B $11                            ;81AE07;
    EOR.W #$0040                         ;81AE09;
    STA.B $11                            ;81AE0C;
    SEP #$20                             ;81AE0E;

CODE_81AE10:
    JSL.L CODE_82823E                    ;81AE10;
    JSL.L CODE_848EEA                    ;81AE14;
    RTS                                  ;81AE18;

CODE_81AE19:
    JSL.L CODE_8283A3                    ;81AE19;
    RTS                                  ;81AE1D;

CODE_81AE1E:
    LDY.B #$11                           ;81AE1E;
    LDA.B ($0C),Y                        ;81AE20;
    STA.B $11                            ;81AE22;
    LDX.B $01                            ;81AE24;
    JSR.W (PTR16_81AE78,X)               ;81AE26;
    JSL.L CODE_849B43                    ;81AE29;
    JSL.L CODE_849B03                    ;81AE2D;
    BEQ CODE_81AE4D                      ;81AE31;
    LDA.B $26                            ;81AE33;
    BPL CODE_81AE4D                      ;81AE35;
    LDA.B #$0A                           ;81AE37;
    STA.B $01                            ;81AE39;
    JSL.L CODE_849F14                    ;81AE3B;
    LDA.B #$01                           ;81AE3F;
    STA.B $3A                            ;81AE41;
    LDA.B #$0C                           ;81AE43;
    JSL.L CODE_848F07                    ;81AE45;
    STZ.B $1A                            ;81AE49;
    STZ.B $1B                            ;81AE4B;

CODE_81AE4D:
    LDA.B $01                            ;81AE4D;
    CMP.B #$10                           ;81AE4F;
    BEQ CODE_81AE6D                      ;81AE51;
    LDY.B #$37                           ;81AE53;
    LDA.B ($0C),Y                        ;81AE55;
    BEQ CODE_81AE6D                      ;81AE57;
    LDA.B #$10                           ;81AE59;
    STA.B $01                            ;81AE5B;
    STZ.B $02                            ;81AE5D;
    STZ.B $03                            ;81AE5F;
    STZ.B $27                            ;81AE61;
    LDA.B $3A                            ;81AE63;
    BEQ CODE_81AE6D                      ;81AE65;
    STZ.B $3A                            ;81AE67;
    JSL.L CODE_849F79                    ;81AE69;

CODE_81AE6D:
    LDA.B $00                            ;81AE6D;
    BNE CODE_81AE74                      ;81AE6F;
    STZ.B $01                            ;81AE71;
    RTL                                  ;81AE73;

CODE_81AE74:
    JML.L CODE_8280B4                    ;81AE74;

PTR16_81AE78:
    dw CODE_81AE8A                       ;81AE78;
    dw CODE_81AF0F                       ;81AE7A;
    dw CODE_81AF5F                       ;81AE7C;
    dw CODE_81AF6C                       ;81AE7E;
    dw CODE_81AF90                       ;81AE80;
    dw CODE_81AFC4                       ;81AE82;
    dw CODE_81AFFE                       ;81AE84;
    dw CODE_81B07E                       ;81AE86;
    dw CODE_81B0B9                       ;81AE88;

CODE_81AE8A:
    LDA.B #$02                           ;81AE8A;
    STA.B $01                            ;81AE8C;
    STZ.B $18                            ;81AE8E;
    STZ.B $3A                            ;81AE90;
    LDA.B #$02                           ;81AE92;
    STA.B $12                            ;81AE94;
    STZ.B $37                            ;81AE96;
    LDA.B #$16                           ;81AE98;
    STA.B $16                            ;81AE9A;
    LDA.B #$06                           ;81AE9C;
    JSL.L CODE_848F07                    ;81AE9E;
    LDA.B $11                            ;81AEA2;
    ASL A                                ;81AEA4;
    ASL A                                ;81AEA5;
    REP #$20                             ;81AEA6;
    BCS CODE_81AEB7                      ;81AEA8;
    LDA.W #$FA00                         ;81AEAA;
    STA.B $1A                            ;81AEAD;
    LDA.B $05                            ;81AEAF;
    SEC                                  ;81AEB1;
    SBC.W #$0024                         ;81AEB2;
    BRA CODE_81AEC2                      ;81AEB5;

CODE_81AEB7:
    LDA.W #$0600                         ;81AEB7;
    STA.B $1A                            ;81AEBA;
    LDA.B $05                            ;81AEBC;
    CLC                                  ;81AEBE;
    ADC.W #$0024                         ;81AEBF;

CODE_81AEC2:
    STA.B $05                            ;81AEC2;
    STZ.B $1C                            ;81AEC4;
    LDA.B $05                            ;81AEC6;
    STA.B $31                            ;81AEC8;
    LDA.W #$C0BC                         ;81AECA;
    STA.B $20                            ;81AECD;
    SEP #$20                             ;81AECF;
    LDA.B #$30                           ;81AED1;
    STA.B $1F                            ;81AED3;
    STZ.B $1E                            ;81AED5;
    LDA.B #$01                           ;81AED7;
    STA.B $27                            ;81AED9;
    STZ.B $28                            ;81AEDB;
    JSR.W CODE_81B112                    ;81AEDD;
    LDA.B $0B                            ;81AEE0;
    BMI CODE_81AEE5                      ;81AEE2;
    RTS                                  ;81AEE4;

CODE_81AEE5:
    LDA.B #$0E                           ;81AEE5;
    STA.B $01                            ;81AEE7;
    LDA.B #$01                           ;81AEE9;
    STA.B $3A                            ;81AEEB;
    LDA.B #$0C                           ;81AEED;
    JSL.L CODE_848F07                    ;81AEEF;
    REP #$20                             ;81AEF3;
    LDA.B $1A                            ;81AEF5;
    ASL A                                ;81AEF7;
    LDA.W #$0800                         ;81AEF8;
    BCC CODE_81AF00                      ;81AEFB;
    LDA.W #$F800                         ;81AEFD;

CODE_81AF00:
    STA.B $1A                            ;81AF00;
    LDA.B $05                            ;81AF02;
    STA.W $0BAD                          ;81AF04;
    LDA.B $08                            ;81AF07;
    STA.W $0BB0                          ;81AF09;
    SEP #$20                             ;81AF0C;
    RTS                                  ;81AF0E;

CODE_81AF0F:
    LDA.B $11                            ;81AF0F;
    ASL A                                ;81AF11;
    ASL A                                ;81AF12;
    BCC CODE_81AF1B                      ;81AF13;
    JSL.L CODE_828174                    ;81AF15;
    BRA CODE_81AF1F                      ;81AF19;

CODE_81AF1B:
    JSL.L CODE_828195                    ;81AF1B;

CODE_81AF1F:
    JSL.L CODE_8491BE                    ;81AF1F;
    LDA.B $2B                            ;81AF23;
    AND.B #$03                           ;81AF25;
    BEQ CODE_81AF46                      ;81AF27;
    LDA.B #$06                           ;81AF29;
    JSL.L CODE_848F07                    ;81AF2B;
    LDA.B #$10                           ;81AF2F;
    JSL.L CODE_84A311                    ;81AF31;
    LDA.B #$3C                           ;81AF35;
    STA.B $38                            ;81AF37;
    LDA.B #$06                           ;81AF39;
    STA.B $01                            ;81AF3B;
    LDA.B #$01                           ;81AF3D;
    STA.B $37                            ;81AF3F;
    LDA.B #$02                           ;81AF41;
    STA.B $26                            ;81AF43;
    RTS                                  ;81AF45;

CODE_81AF46:
    REP #$20                             ;81AF46;
    LDA.B $1A                            ;81AF48;
    SEP #$20                             ;81AF4A;
    BNE CODE_81AF5A                      ;81AF4C;
    LDA.B #$1E                           ;81AF4E;
    STA.B $38                            ;81AF50;
    LDA.B #$04                           ;81AF52;
    STA.B $01                            ;81AF54;
    LDA.B #$02                           ;81AF56;
    STA.B $26                            ;81AF58;

CODE_81AF5A:
    JSL.L CODE_848EEA                    ;81AF5A;
    RTS                                  ;81AF5E;

CODE_81AF5F:
    DEC.B $38                            ;81AF5F;
    BNE CODE_81AF67                      ;81AF61;
    LDA.B #$08                           ;81AF63;
    STA.B $01                            ;81AF65;

CODE_81AF67:
    JSL.L CODE_848EEA                    ;81AF67;
    RTS                                  ;81AF6B;

CODE_81AF6C:
    DEC.B $38                            ;81AF6C;
    BNE CODE_81AF8F                      ;81AF6E;
    STZ.B $1A                            ;81AF70;
    STZ.B $1B                            ;81AF72;
    STZ.B $37                            ;81AF74;
    LDA.W $0BD8                          ;81AF76;
    BNE CODE_81AF82                      ;81AF79;
    JSL.L CODE_849086                    ;81AF7B;
    LSR A                                ;81AF7F;
    BCC CODE_81AF87                      ;81AF80;

CODE_81AF82:
    LDA.B #$08                           ;81AF82;
    STA.B $01                            ;81AF84;
    RTS                                  ;81AF86;

CODE_81AF87:
    LDA.B #$0C                           ;81AF87;
    STA.B $01                            ;81AF89;
    LDA.B #$14                           ;81AF8B;
    STA.B $38                            ;81AF8D;

CODE_81AF8F:
    RTS                                  ;81AF8F;

CODE_81AF90:
    JSL.L CODE_848EEA                    ;81AF90;
    LDA.B $11                            ;81AF94;
    ASL A                                ;81AF96;
    ASL A                                ;81AF97;
    BCC CODE_81AFA0                      ;81AF98;
    JSL.L CODE_828174                    ;81AF9A;
    BRA CODE_81AFA4                      ;81AF9E;

CODE_81AFA0:
    JSL.L CODE_828195                    ;81AFA0;

CODE_81AFA4:
    REP #$20                             ;81AFA4;
    LDA.B $31                            ;81AFA6;
    SEC                                  ;81AFA8;
    SBC.B $05                            ;81AFA9;
    SEP #$20                             ;81AFAB;
    BEQ CODE_81AFB9                      ;81AFAD;
    LDA.B #$00                           ;81AFAF;
    ROR A                                ;81AFB1;
    LSR A                                ;81AFB2;
    EOR.B $11                            ;81AFB3;
    AND.B #$40                           ;81AFB5;
    BNE CODE_81AFC3                      ;81AFB7;

CODE_81AFB9:
    LDA.B #$01                           ;81AFB9;
    LDY.B #$36                           ;81AFBB;
    STA.B ($0C),Y                        ;81AFBD;
    JSL.L CODE_8283A3                    ;81AFBF;

CODE_81AFC3:
    RTS                                  ;81AFC3;

CODE_81AFC4:
    LDA.B $11                            ;81AFC4;
    ASL A                                ;81AFC6;
    ASL A                                ;81AFC7;
    BCC CODE_81AFD0                      ;81AFC8;
    JSL.L CODE_828174                    ;81AFCA;
    BRA CODE_81AFD4                      ;81AFCE;

CODE_81AFD0:
    JSL.L CODE_828195                    ;81AFD0;

CODE_81AFD4:
    REP #$20                             ;81AFD4;
    LDA.B $05                            ;81AFD6;
    STA.W $0BAD                          ;81AFD8;
    LDA.B $08                            ;81AFDB;
    STA.W $0BB0                          ;81AFDD;
    LDA.B $31                            ;81AFE0;
    SEC                                  ;81AFE2;
    SBC.B $05                            ;81AFE3;
    SEP #$20                             ;81AFE5;
    BEQ CODE_81AFF3                      ;81AFE7;
    LDA.B #$00                           ;81AFE9;
    ROR A                                ;81AFEB;
    LSR A                                ;81AFEC;
    EOR.B $11                            ;81AFED;
    AND.B #$40                           ;81AFEF;
    BNE CODE_81AFFD                      ;81AFF1;

CODE_81AFF3:
    LDA.B #$80                           ;81AFF3;
    LDY.B #$36                           ;81AFF5;
    STA.B ($0C),Y                        ;81AFF7;
    JSL.L CODE_8283A3                    ;81AFF9;

CODE_81AFFD:
    RTS                                  ;81AFFD;

CODE_81AFFE:
    LDA.B $38                            ;81AFFE;
    BEQ CODE_81B008                      ;81B000;
    DEC.B $38                            ;81B002;
    BNE CODE_81B07D                      ;81B004;
    STZ.B $37                            ;81B006;

CODE_81B008:
    REP #$10                             ;81B008;
    LDX.B $0C                            ;81B00A;
    LDA.B $11                            ;81B00C;
    AND.B #$40                           ;81B00E;
    REP #$20                             ;81B010;
    BEQ CODE_81B032                      ;81B012;
    LDA.W $0B9C                          ;81B014;
    AND.W #$0003                         ;81B017;
    ASL A                                ;81B01A;
    TAX                                  ;81B01B;
    LDA.W DATA8_86C0C6,X                 ;81B01C;
    CLC                                  ;81B01F;
    ADC.B $31                            ;81B020;
    STA.B $31                            ;81B022;
    LDA.W DATA8_86C0C6,X                 ;81B024;
    LDX.B $0C                            ;81B027;
    CLC                                  ;81B029;
    ADC.W $0005,X                        ;81B02A;
    STA.W $0005,X                        ;81B02D;
    BRA CODE_81B056                      ;81B030;

CODE_81B032:
    LDA.W $0B9C                          ;81B032;
    AND.W #$0003                         ;81B035;
    ASL A                                ;81B038;
    TAX                                  ;81B039;
    LDA.W DATA8_86C0C6,X                 ;81B03A;
    EOR.W #$FFFF                         ;81B03D;
    INC A                                ;81B040;
    CLC                                  ;81B041;
    ADC.B $31                            ;81B042;
    STA.B $31                            ;81B044;
    LDA.W DATA8_86C0C6,X                 ;81B046;
    EOR.W #$FFFF                         ;81B049;
    INC A                                ;81B04C;
    LDX.B $0C                            ;81B04D;
    CLC                                  ;81B04F;
    ADC.W $0005,X                        ;81B050;
    STA.W $0005,X                        ;81B053;

CODE_81B056:
    SEP #$10                             ;81B056;
    LDA.B $05                            ;81B058;
    SEC                                  ;81B05A;
    SBC.B $31                            ;81B05B;
    SEP #$20                             ;81B05D;
    LDA.B #$00                           ;81B05F;
    ROR A                                ;81B061;
    ROR A                                ;81B062;
    EOR.B $11                            ;81B063;
    AND.B #$40                           ;81B065;
    BEQ CODE_81B073                      ;81B067;
    JSL.L CODE_8283A3                    ;81B069;
    LDA.B #$01                           ;81B06D;
    LDY.B #$36                           ;81B06F;
    STA.B ($0C),Y                        ;81B071;

CODE_81B073:
    LDA.W $0B9C                          ;81B073;
    AND.B #$03                           ;81B076;
    BNE CODE_81B07D                      ;81B078;
    JSR.W CODE_81B14A                    ;81B07A;

CODE_81B07D:
    RTS                                  ;81B07D;

CODE_81B07E:
    JSL.L CODE_82823E                    ;81B07E;
    JSL.L CODE_8491BE                    ;81B082;
    LDA.B $2B                            ;81B086;
    AND.B #$03                           ;81B088;
    BEQ CODE_81B0AA                      ;81B08A;
    LDA.B #$02                           ;81B08C;
    STA.W $0BCE                          ;81B08E;
    JSL.L CODE_849F2A                    ;81B091;
    LDA.B #$06                           ;81B095;
    STA.B $01                            ;81B097;
    LDA.B #$1E                           ;81B099;
    STA.B $38                            ;81B09B;
    LDA.B #$10                           ;81B09D;
    JSL.L CODE_84A311                    ;81B09F;
    LDA.B #$06                           ;81B0A3;
    JSL.L CODE_848F07                    ;81B0A5;
    RTS                                  ;81B0A9;

CODE_81B0AA:
    REP #$20                             ;81B0AA;
    LDA.B $05                            ;81B0AC;
    STA.W $0BAD                          ;81B0AE;
    LDA.B $08                            ;81B0B1;
    STA.W $0BB0                          ;81B0B3;
    SEP #$20                             ;81B0B6;
    RTS                                  ;81B0B8;

CODE_81B0B9:
    LDX.B $02                            ;81B0B9;
    JSR.W (PTR16_81B0CB,X)               ;81B0BB;
    LDA.B $0E                            ;81B0BE;
    AND.B #$7F                           ;81B0C0;
    BNE CODE_81B0CA                      ;81B0C2;
    JSL.L CODE_8283A3                    ;81B0C4;
    SEP #$10                             ;81B0C8;

CODE_81B0CA:
    RTS                                  ;81B0CA;

PTR16_81B0CB:
    dw CODE_81B0D1                       ;81B0CB;
    dw CODE_81B0E4                       ;81B0CD;
    dw CODE_81B0FB                       ;81B0CF;

CODE_81B0D1:
    LDA.B #$02                           ;81B0D1;
    STA.B $02                            ;81B0D3;
    REP #$20                             ;81B0D5;
    LDA.W #$0400                         ;81B0D7;
    STA.B $1C                            ;81B0DA;
    SEP #$20                             ;81B0DC;
    LDA.B #$40                           ;81B0DE;
    STA.B $1E                            ;81B0E0;
    STZ.B $1F                            ;81B0E2;

CODE_81B0E4:
    JSL.L CODE_8491BE                    ;81B0E4;
    LDA.B $2B                            ;81B0E8;
    AND.B #$04                           ;81B0EA;
    BEQ CODE_81B0FB                      ;81B0EC;
    LDA.B #$04                           ;81B0EE;
    STA.B $02                            ;81B0F0;
    REP #$20                             ;81B0F2;
    LDA.W #$0300                         ;81B0F4;
    STA.B $1C                            ;81B0F7;
    SEP #$20                             ;81B0F9;

CODE_81B0FB:
    JSL.L CODE_8281E8                    ;81B0FB;
    RTS                                  ;81B0FF;
    REP #$10                             ;81B100;
    LDX.B $0C                            ;81B102;
    LDA.B $37                            ;81B104;
    ORA.B #$01                           ;81B106;
    STA.W $0036,X                        ;81B108;
    INC.B $39                            ;81B10B;
    JSL.L CODE_8283A3                    ;81B10D;
    RTS                                  ;81B111;

CODE_81B112:
    LDA.B #$01                           ;81B112;

CODE_81B114:
    PHA                                  ;81B114;
    JSL.L CODE_8282D3                    ;81B115;
    BNE CODE_81B146                      ;81B119;
    INC.W $0000,X                        ;81B11B;
    LDA.B #$0D                           ;81B11E;
    STA.W $000A,X                        ;81B120;
    REP #$20                             ;81B123;
    LDA.B $05                            ;81B125;
    STA.W $0005,X                        ;81B127;
    LDA.B $08                            ;81B12A;
    STA.W $0008,X                        ;81B12C;
    TDC                                  ;81B12F;
    STA.W $000C,X                        ;81B130;
    LDA.B $0C                            ;81B133;
    STA.W $001A,X                        ;81B135;
    SEP #$20                             ;81B138;
    PLA                                  ;81B13A;
    STA.W $000B,X                        ;81B13B;
    INC A                                ;81B13E;
    CMP.B #$0B                           ;81B13F;
    BCC CODE_81B114                      ;81B141;
    SEP #$10                             ;81B143;
    RTS                                  ;81B145;

CODE_81B146:
    SEP #$30                             ;81B146;
    PLA                                  ;81B148;
    RTS                                  ;81B149;

CODE_81B14A:
    JSL.L CODE_8282D3                    ;81B14A;
    BNE CODE_81B184                      ;81B14E;
    INC.W $0000,X                        ;81B150;
    STZ.W $000B,X                        ;81B153;
    LDA.B #$09                           ;81B156;
    STA.W $000A,X                        ;81B158;
    LDY.B $0C                            ;81B15B;
    LDA.B $11                            ;81B15D;
    AND.B #$40                           ;81B15F;
    REP #$20                             ;81B161;
    BEQ CODE_81B16A                      ;81B163;
    LDA.W #$0010                         ;81B165;
    BRA CODE_81B16D                      ;81B168;

CODE_81B16A:
    LDA.W #$FFF0                         ;81B16A;

CODE_81B16D:
    STA.W $0000                          ;81B16D;
    LDA.W $0005,Y                        ;81B170;
    CLC                                  ;81B173;
    ADC.W $0000                          ;81B174;
    STA.W $0005,X                        ;81B177;
    LDA.W $0008,Y                        ;81B17A;
    CLC                                  ;81B17D;
    ADC.W #$0020                         ;81B17E;
    STA.W $0008,X                        ;81B181;

CODE_81B184:
    SEP #$30                             ;81B184;
    RTS                                  ;81B186;

CODE_81B187:
    LDA.B #$03                           ;81B187;
    STA.B $28                            ;81B189;
    LDA.B $3D                            ;81B18B;
    BEQ CODE_81B19A                      ;81B18D;
    REP #$10                             ;81B18F;
    LDX.B $37                            ;81B191;
    LDA.W $0000,X                        ;81B193;
    STA.B $3D                            ;81B196;
    SEP #$10                             ;81B198;

CODE_81B19A:
    LDA.B $3C                            ;81B19A;
    TSB.B $11                            ;81B19C;
    LDX.B $01                            ;81B19E;
    JSR.W (PTR16_81B1C7,X)               ;81B1A0;
    JSL.L CODE_8280B4                    ;81B1A3;
    JSL.L CODE_82806E                    ;81B1A7;
    BCS CODE_81B1C1                      ;81B1AB;
    JSL.L CODE_849B43                    ;81B1AD;
    BEQ CODE_81B1B7                      ;81B1B1;
    LDA.B #$0E                           ;81B1B3;
    TRB.B $11                            ;81B1B5;

CODE_81B1B7:
    LDA.B $27                            ;81B1B7;
    AND.B #$7F                           ;81B1B9;
    BNE CODE_81B1C4                      ;81B1BB;
    JSL.L CODE_84A4AB                    ;81B1BD;

CODE_81B1C1:
    JSR.W CODE_81B353                    ;81B1C1;

CODE_81B1C4:
    STZ.B $28                            ;81B1C4;
    RTL                                  ;81B1C6;

PTR16_81B1C7:
    dw CODE_81B1D1                       ;81B1C7;
    dw CODE_81B215                       ;81B1C9;
    dw CODE_81B20E                       ;81B1CB;
    dw CODE_81B236                       ;81B1CD;
    dw CODE_81B286                       ;81B1CF;

CODE_81B1D1:
    LDA.B #$0B                           ;81B1D1;
    STA.B $0A                            ;81B1D3;
    JSL.L CODE_82827D                    ;81B1D5;
    LDA.B #$01                           ;81B1D9;
    STA.B $3D                            ;81B1DB;
    LDA.B #$08                           ;81B1DD;
    STA.B $0A                            ;81B1DF;
    LDA.B $0D                            ;81B1E1;
    STA.B $01                            ;81B1E3;
    LDA.B $11                            ;81B1E5;
    AND.B #$0E                           ;81B1E7;
    STA.B $3C                            ;81B1E9;
    LDA.B $0C                            ;81B1EB;
    CMP.B #$02                           ;81B1ED;
    BNE CODE_81B1F3                      ;81B1EF;
    INC.B $30                            ;81B1F1;

CODE_81B1F3:
    JSL.L CODE_848F07                    ;81B1F3;
    LDA.B #$03                           ;81B1F7;
    STA.B $27                            ;81B1F9;
    LDA.B #$02                           ;81B1FB;
    STA.B $26                            ;81B1FD;
    LDA.B #$7D                           ;81B1FF;
    JSL.L CODE_8088A2                    ;81B201;
    REP #$20                             ;81B205;
    LDA.W #$C0D6                         ;81B207;
    STA.B $20                            ;81B20A;
    SEP #$20                             ;81B20C;

CODE_81B20E:
    LDA.B #$04                           ;81B20E;
    STA.B $12                            ;81B210;
    JMP.W CODE_81B2B6                    ;81B212;

CODE_81B215:
    LDA.B $02                            ;81B215;
    BNE CODE_81B223                      ;81B217;
    INC.B $02                            ;81B219;
    LDA.B #$10                           ;81B21B;
    STA.B $39                            ;81B21D;
    LDA.B #$06                           ;81B21F;
    STA.B $12                            ;81B221;

CODE_81B223:
    REP #$20                             ;81B223;
    DEC.B $08                            ;81B225;
    SEP #$20                             ;81B227;
    DEC.B $39                            ;81B229;
    BNE CODE_81B233                      ;81B22B;
    LDA.B #$04                           ;81B22D;
    STA.B $01                            ;81B22F;
    STZ.B $02                            ;81B231;

CODE_81B233:
    JMP.W CODE_81B2B6                    ;81B233;

CODE_81B236:
    LDA.B $02                            ;81B236;
    BNE CODE_81B25A                      ;81B238;
    INC.B $02                            ;81B23A;
    REP #$30                             ;81B23C;
    LDX.B $37                            ;81B23E;
    LDA.W $0005,X                        ;81B240;
    SEC                                  ;81B243;
    SBC.B $05                            ;81B244;
    BCC CODE_81B24D                      ;81B246;
    LDA.W #$FD00                         ;81B248;
    BRA CODE_81B250                      ;81B24B;

CODE_81B24D:
    LDA.W #$0300                         ;81B24D;

CODE_81B250:
    STA.B $1A                            ;81B250;
    SEP #$20                             ;81B252;
    LDA.B #$04                           ;81B254;
    JSL.L CODE_848F07                    ;81B256;

CODE_81B25A:
    JSL.L CODE_82823E                    ;81B25A;
    JSR.W CODE_81B2B6                    ;81B25E;
    JSL.L CODE_849B03                    ;81B261;
    BEQ CODE_81B27B                      ;81B265;
    JSL.L CODE_84A4AB                    ;81B267;
    LDA.B $3D                            ;81B26B;
    BEQ CODE_81B276                      ;81B26D;
    REP #$10                             ;81B26F;
    LDX.B $37                            ;81B271;
    INC.W $003D,X                        ;81B273;

CODE_81B276:
    JSR.W CODE_81B353                    ;81B276;
    SEP #$10                             ;81B279;

CODE_81B27B:
    JSL.L CODE_8491BE                    ;81B27B;
    LDA.B $2B                            ;81B27F;
    BEQ CODE_81B285                      ;81B281;
    STZ.B $27                            ;81B283;

CODE_81B285:
    RTS                                  ;81B285;

CODE_81B286:
    LDA.B $02                            ;81B286;
    BNE CODE_81B298                      ;81B288;
    INC.B $02                            ;81B28A;
    REP #$20                             ;81B28C;
    STZ.B $1C                            ;81B28E;
    STZ.B $1A                            ;81B290;
    SEP #$20                             ;81B292;
    LDA.B #$40                           ;81B294;
    STA.B $1E                            ;81B296;

CODE_81B298:
    JSL.L CODE_8281E8                    ;81B298;
    REP #$20                             ;81B29C;
    LDA.B $08                            ;81B29E;
    SEC                                  ;81B2A0;
    SBC.B $3A                            ;81B2A1;
    BCC CODE_81B2B1                      ;81B2A3;
    LDA.B $3A                            ;81B2A5;
    STA.B $08                            ;81B2A7;
    LDX.B #$04                           ;81B2A9;
    STX.B $01                            ;81B2AB;
    LDX.B #$00                           ;81B2AD;
    STX.B $02                            ;81B2AF;

CODE_81B2B1:
    SEP #$20                             ;81B2B1;
    JMP.W CODE_81B2B6                    ;81B2B3;

CODE_81B2B6:
    LDA.W $0BCF                          ;81B2B6;
    AND.B #$7F                           ;81B2B9;
    BNE CODE_81B2BE                      ;81B2BB;
    RTS                                  ;81B2BD;

CODE_81B2BE:
    REP #$10                             ;81B2BE;
    STZ.B $2C                            ;81B2C0;
    LDX.W #$C0CE                         ;81B2C2;
    STX.B $20                            ;81B2C5;
    LDX.W #$0BA8                         ;81B2C7;
    JSL.L CODE_849C0E                    ;81B2CA;
    LDX.W #$C0D2                         ;81B2CE;
    STX.B $20                            ;81B2D1;
    BCC CODE_81B31C                      ;81B2D3;
    REP #$20                             ;81B2D5;
    LDA.W $0004                          ;81B2D7;
    CMP.W $0006                          ;81B2DA;
    BEQ CODE_81B302                      ;81B2DD;
    BCC CODE_81B302                      ;81B2DF;
    LDA.W $0002                          ;81B2E1;
    BPL CODE_81B2EE                      ;81B2E4;
    INC A                                ;81B2E6;
    CLC                                  ;81B2E7;
    ADC.W $0BB0                          ;81B2E8;
    STA.W $0BB0                          ;81B2EB;

CODE_81B2EE:
    SEP #$20                             ;81B2EE;
    LDA.W $0003                          ;81B2F0;
    BMI CODE_81B2F9                      ;81B2F3;
    LDA.B #$08                           ;81B2F5;
    BRA CODE_81B2FD                      ;81B2F7;

CODE_81B2F9:
    LDA.B #$04                           ;81B2F9;
    STA.B $2C                            ;81B2FB;

CODE_81B2FD:
    TSB.W $0BD4                          ;81B2FD;
    BRA CODE_81B31C                      ;81B300;

CODE_81B302:
    LDA.W $0000                          ;81B302;
    CLC                                  ;81B305;
    ADC.W $0BAD                          ;81B306;
    STA.W $0BAD                          ;81B309;
    SEP #$20                             ;81B30C;
    LDA.W $0001                          ;81B30E;
    BMI CODE_81B317                      ;81B311;
    LDA.B #$02                           ;81B313;
    BRA CODE_81B319                      ;81B315;

CODE_81B317:
    LDA.B #$01                           ;81B317;

CODE_81B319:
    TSB.W $0BD4                          ;81B319;

CODE_81B31C:
    SEP #$10                             ;81B31C;
    LDA.B $2C                            ;81B31E;
    BEQ CODE_81B332                      ;81B320;
    REP #$20                             ;81B322;
    LDA.B $05                            ;81B324;
    SEC                                  ;81B326;
    SBC.B $22                            ;81B327;
    CLC                                  ;81B329;
    ADC.W $0BAD                          ;81B32A;
    STA.W $0BAD                          ;81B32D;
    SEP #$20                             ;81B330;

CODE_81B332:
    REP #$10                             ;81B332;
    LDX.W #$0BA8                         ;81B334;
    JSL.L CODE_849C0E                    ;81B337;
    LDX.W #$C0D6                         ;81B33B;
    STX.B $20                            ;81B33E;
    SEP #$10                             ;81B340;
    BCC CODE_81B352                      ;81B342;
    LDA.W $0001                          ;81B344;
    BMI CODE_81B34D                      ;81B347;
    LDA.B #$02                           ;81B349;
    BRA CODE_81B34F                      ;81B34B;

CODE_81B34D:
    LDA.B #$01                           ;81B34D;

CODE_81B34F:
    TSB.W $0BD4                          ;81B34F;

CODE_81B352:
    RTS                                  ;81B352;

CODE_81B353:
    PHP                                  ;81B353;
    SEP #$20                             ;81B354;
    REP #$10                             ;81B356;
    LDA.B $3D                            ;81B358;
    BEQ CODE_81B373                      ;81B35A;
    LDX.B $37                            ;81B35C;
    REP #$20                             ;81B35E;
    TDC                                  ;81B360;
    CMP.W $0037,X                        ;81B361;
    BNE CODE_81B36B                      ;81B364;
    STZ.W $0037,X                        ;81B366;
    BRA CODE_81B373                      ;81B369;

CODE_81B36B:
    CMP.W $0039,X                        ;81B36B;
    BNE CODE_81B373                      ;81B36E;
    STZ.W $0039,X                        ;81B370;

CODE_81B373:
    JSL.L CODE_8283A3                    ;81B373;
    PLP                                  ;81B377;
    RTS                                  ;81B378;

CODE_81B379:
    LDX.B $01                            ;81B379;
    BNE CODE_81B3BF                      ;81B37B;
    INC.B $01                            ;81B37D;
    STZ.B $30                            ;81B37F;
    LDA.L $7F8249                        ;81B381;
    STA.B $18                            ;81B385;
    STZ.B $28                            ;81B387;
    LDA.B $11                            ;81B389;
    AND.B #$40                           ;81B38B;
    ORA.L $7F8349                        ;81B38D;
    STA.B $11                            ;81B391;
    STZ.B $12                            ;81B393;
    LDA.B #$01                           ;81B395;
    STA.B $26                            ;81B397;
    STA.B $27                            ;81B399;
    REP #$20                             ;81B39B;
    LDA.W #$0300                         ;81B39D;
    BIT.B $10                            ;81B3A0;
    BVS CODE_81B3A7                      ;81B3A2;
    LDA.W #$FD00                         ;81B3A4;

CODE_81B3A7:
    STA.B $1A                            ;81B3A7;
    LDA.W #$C2CD                         ;81B3A9;
    STA.B $20                            ;81B3AC;
    SEP #$20                             ;81B3AE;
    LDA.B #$2A                           ;81B3B0;
    STA.B $10                            ;81B3B2;
    LDA.B #$4F                           ;81B3B4;
    STA.B $16                            ;81B3B6;
    LDA.B #$19                           ;81B3B8;
    JSL.L CODE_848F07                    ;81B3BA;
    RTL                                  ;81B3BE;

CODE_81B3BF:
    DEC.B $10                            ;81B3BF;
    BEQ CODE_81B3C9                      ;81B3C1;
    JSL.L CODE_82806E                    ;81B3C3;
    BCC CODE_81B3CD                      ;81B3C7;

CODE_81B3C9:
    JML.L CODE_8283A3                    ;81B3C9;

CODE_81B3CD:
    JSL.L CODE_82823E                    ;81B3CD;
    JSL.L CODE_8280B4                    ;81B3D1;
    JML.L CODE_849B03                    ;81B3D5;

CODE_81B3D9:
    LDX.B $01                            ;81B3D9;
    BNE CODE_81B444                      ;81B3DB;
    INC.B $01                            ;81B3DD;
    STZ.B $30                            ;81B3DF;
    LDA.L $7F8250                        ;81B3E1;
    STA.B $18                            ;81B3E5;
    LDA.B $11                            ;81B3E7;
    AND.B #$40                           ;81B3E9;
    ORA.L $7F8350                        ;81B3EB;
    STA.B $11                            ;81B3EF;
    STZ.B $12                            ;81B3F1;
    STZ.B $26                            ;81B3F3;
    LDA.B #$01                           ;81B3F5;
    STA.B $27                            ;81B3F7;
    JSL.L CODE_84A07C                    ;81B3F9;
    STA.W $0000                          ;81B3FD;
    LDA.B #$00                           ;81B400;
    BIT.B $11                            ;81B402;
    BVC CODE_81B408                      ;81B404;
    LDA.B #$20                           ;81B406;

CODE_81B408:
    CLC                                  ;81B408;
    ADC.W $0000                          ;81B409;
    TAX                                  ;81B40C;
    LDA.W DATA8_86C072,X                 ;81B40D;
    ASL A                                ;81B410;
    ASL A                                ;81B411;
    TAX                                  ;81B412;
    REP #$20                             ;81B413;
    LDA.W DATA8_86EEB7,X                 ;81B415;
    STA.B $1A                            ;81B418;
    LDA.W DATA8_86EEB9,X                 ;81B41A;
    STA.B $1C                            ;81B41D;
    LDA.W #$C2D1                         ;81B41F;
    STA.B $20                            ;81B422;
    JSL.L CODE_849086                    ;81B424;
    AND.W #$0003                         ;81B428;
    BNE CODE_81B437                      ;81B42B;
    LDA.B $1A                            ;81B42D;
    ASL A                                ;81B42F;
    STA.B $1A                            ;81B430;
    LDA.B $1C                            ;81B432;
    ASL A                                ;81B434;
    STA.B $1C                            ;81B435;

CODE_81B437:
    SEP #$20                             ;81B437;
    LDA.B #$52                           ;81B439;
    STA.B $16                            ;81B43B;
    LDA.B #$12                           ;81B43D;
    JSL.L CODE_848F07                    ;81B43F;
    RTL                                  ;81B443;

CODE_81B444:
    JSL.L CODE_82806E                    ;81B444;
    BCC CODE_81B44E                      ;81B448;
    JML.L CODE_8283A3                    ;81B44A;

CODE_81B44E:
    LDX.B $02                            ;81B44E;
    JSR.W (PTR16_81B457,X)               ;81B450;
    JML.L CODE_8280B4                    ;81B453;

PTR16_81B457:
    dw CODE_81B45B                       ;81B457;
    dw CODE_81B47E                       ;81B459;

CODE_81B45B:
    JSL.L CODE_82820A                    ;81B45B;
    JSL.L CODE_849B03                    ;81B45F;
    BEQ CODE_81B479                      ;81B463;
    LDA.B #$02                           ;81B465;
    STA.B $02                            ;81B467;
    LDA.B #$09                           ;81B469;
    JSL.L CODE_8088A2                    ;81B46B;
    LDA.B #$13                           ;81B46F;
    JSL.L CODE_848F07                    ;81B471;
    JSL.L CODE_84A04D                    ;81B475;

CODE_81B479:
    JSL.L CODE_848EEA                    ;81B479;
    RTS                                  ;81B47D;

CODE_81B47E:
    REP #$20                             ;81B47E;
    LDA.W $0BAD                          ;81B480;
    STA.B $05                            ;81B483;
    LDA.W $0BB0                          ;81B485;
    STA.B $08                            ;81B488;
    SEP #$20                             ;81B48A;
    LDA.W $0BCF                          ;81B48C;
    AND.B #$7F                           ;81B48F;
    BNE CODE_81B497                      ;81B491;
    JSL.L CODE_8283A3                    ;81B493;

CODE_81B497:
    JSL.L CODE_848EEA                    ;81B497;
    RTS                                  ;81B49B;

CODE_81B49C:
    LDX.B $01                            ;81B49C;
    BNE CODE_81B4D3                      ;81B49E;
    INC.B $01                            ;81B4A0;
    STZ.B $30                            ;81B4A2;
    LDA.L $7F825C                        ;81B4A4;
    STA.B $18                            ;81B4A8;
    LDA.L $7F835C                        ;81B4AA;
    STA.B $11                            ;81B4AE;
    STZ.B $12                            ;81B4B0;
    LDA.B #$04                           ;81B4B2;
    STA.B $26                            ;81B4B4;
    STA.B $27                            ;81B4B6;
    LDA.B #$D9                           ;81B4B8;
    STA.B $20                            ;81B4BA;
    LDA.B #$61                           ;81B4BC;
    STA.B $16                            ;81B4BE;
    LDA.B #$02                           ;81B4C0;
    BIT.W $1F90                          ;81B4C2;
    BVC CODE_81B4C9                      ;81B4C5;
    LDA.B #$05                           ;81B4C7;

CODE_81B4C9:
    JSL.L CODE_848F07                    ;81B4C9;
    LDA.B #$44                           ;81B4CD;
    JSL.L CODE_8088A2                    ;81B4CF;

CODE_81B4D3:
    JSL.L CODE_848EEA                    ;81B4D3;
    LDA.B $0F                            ;81B4D7;
    BPL CODE_81B4DF                      ;81B4D9;
    JML.L CODE_8283A3                    ;81B4DB;

CODE_81B4DF:
    BIT.B #$40                           ;81B4DF;
    BEQ CODE_81B4F5                      ;81B4E1;
    STA.B $30                            ;81B4E3;
    BIT.W $1F90                          ;81B4E5;
    BVC CODE_81B4F5                      ;81B4E8;
    REP #$21                             ;81B4EA;
    LDA.B $08                            ;81B4EC;
    ADC.W #$FFBC                         ;81B4EE;
    STA.B $08                            ;81B4F1;
    SEP #$20                             ;81B4F3;

CODE_81B4F5:
    REP #$20                             ;81B4F5;
    LDA.B $0F                            ;81B4F7;
    AND.W #$003F                         ;81B4F9;
    CLC                                  ;81B4FC;
    ADC.W #$C2D9                         ;81B4FD;
    STA.B $20                            ;81B500;
    SEP #$20                             ;81B502;
    JSL.L CODE_8280B4                    ;81B504;
    JML.L CODE_849B03                    ;81B508;

CODE_81B50C:
    LDX.B $01                            ;81B50C;
    JMP.W (PTR16_81B511,X)               ;81B50E;

PTR16_81B511:
    dw CODE_81B519                       ;81B511;
    dw CODE_81B577                       ;81B513;
    dw CODE_81B61F                       ;81B515;
    dw CODE_81BB4D                       ;81B517;

CODE_81B519:
    LDA.B $02                            ;81B519;
    BNE CODE_81B53C                      ;81B51B;
    JSL.L CODE_84AAD3                    ;81B51D;
    BEQ CODE_81B527                      ;81B521;
    JML.L CODE_828398                    ;81B523;

CODE_81B527:
    JSL.L CODE_849FE6                    ;81B527;
    INC.B $02                            ;81B52B;
    LDA.B #$3C                           ;81B52D;
    STA.B $34                            ;81B52F;
    LDA.W $1F26                          ;81B531;
    BEQ CODE_81B53C                      ;81B534;
    LDA.B #$2E                           ;81B536;
    JSL.L CODE_8087A2                    ;81B538;

CODE_81B53C:
    DEC.B $34                            ;81B53C;
    BEQ CODE_81B541                      ;81B53E;
    RTL                                  ;81B540;

CODE_81B541:
    JSL.L CODE_82827D                    ;81B541;
    LDA.B $11                            ;81B545;
    AND.B #$0E                           ;81B547;
    STA.B $33                            ;81B549;
    LDA.B #$04                           ;81B54B;
    STA.B $12                            ;81B54D;
    STZ.B $35                            ;81B54F;
    STZ.B $30                            ;81B551;
    STZ.B $39                            ;81B553;
    LDA.B #$06                           ;81B555;
    STA.B $26                            ;81B557;
    REP #$20                             ;81B559;
    LDA.W #$C42D                         ;81B55B;
    STA.B $20                            ;81B55E;
    SEP #$20                             ;81B560;
    LDA.B #$40                           ;81B562;
    STA.B $1E                            ;81B564;
    LDA.B #$FF                           ;81B566;
    STA.B $2F                            ;81B568;
    LDA.B #$07                           ;81B56A;
    JSL.L CODE_848F07                    ;81B56C;
    LDA.B #$02                           ;81B570;
    STA.B $01                            ;81B572;
    STZ.B $02                            ;81B574;
    RTL                                  ;81B576;

CODE_81B577:
    LDX.B $02                            ;81B577;
    JSR.W (PTR16_81B580,X)               ;81B579;
    JML.L CODE_8280B4                    ;81B57C;

PTR16_81B580:
    dw LOOSE_OP_00B58A                   ;81B580;
    dw LOOSE_OP_00B5A3                   ;81B582;
    dw CODE_00B5C0                       ;81B584;
    dw CODE_00B5E5                       ;81B586;
    dw CODE_00B614                       ;81B588;
    JSL.L CODE_8281E8                    ;81B58A;
    JSL.L CODE_8491BE                    ;81B58E;
    LDA.B $2B                            ;81B592;
    AND.B #$04                           ;81B594;
    BEQ CODE_81B5A2                      ;81B596;
    LDA.B #$02                           ;81B598;
    STA.B $02                            ;81B59A;
    LDA.B #$08                           ;81B59C;
    JSL.L CODE_848F07                    ;81B59E;

CODE_81B5A2:
    RTS                                  ;81B5A2;
    JSL.L CODE_848EEA                    ;81B5A3;
    LDA.B $0F                            ;81B5A7;
    BPL CODE_81B5BF                      ;81B5A9;
    LDA.B #$04                           ;81B5AB;
    STA.B $02                            ;81B5AD;
    LDA.B #$10                           ;81B5AF;
    JSL.L CODE_848F07                    ;81B5B1;
    REP #$20                             ;81B5B5;
    TDC                                  ;81B5B7;
    STA.W $1F0E                          ;81B5B8;
    SEP #$20                             ;81B5BB;
    STZ.B $27                            ;81B5BD;

CODE_81B5BF:
    RTS                                  ;81B5BF;
    JSL.L CODE_848EEA                    ;81B5C0;
    LDA.B $0F                            ;81B5C4;
    BPL CODE_81B5E4                      ;81B5C6;
    LDA.B #$06                           ;81B5C8;
    STA.B $02                            ;81B5CA;
    JSL.L CODE_8282B9                    ;81B5CC;
    BNE CODE_81B5E2                      ;81B5D0;
    INC.W $0000,X                        ;81B5D2;
    LDA.B #$12                           ;81B5D5;
    STA.W $000A,X                        ;81B5D7;
    REP #$20                             ;81B5DA;
    TDC                                  ;81B5DC;
    STA.W $000C,X                        ;81B5DD;
    STX.B $0C                            ;81B5E0;

CODE_81B5E2:
    SEP #$30                             ;81B5E2;

CODE_81B5E4:
    RTS                                  ;81B5E4;
    LDA.W $0B9C                          ;81B5E5;
    LSR A                                ;81B5E8;
    BCC CODE_81B613                      ;81B5E9;
    LDA.B #$0C                           ;81B5EB;
    JSL.L CODE_8088CD                    ;81B5ED;
    LDA.B $27                            ;81B5F1;
    INC A                                ;81B5F3;
    ORA.B #$80                           ;81B5F4;
    STA.B $27                            ;81B5F6;
    AND.B #$7F                           ;81B5F8;
    CMP.B #$20                           ;81B5FA;
    BCC CODE_81B613                      ;81B5FC;
    LDA.B #$00                           ;81B5FE;
    JSL.L CODE_848F07                    ;81B600;
    LDA.B #$08                           ;81B604;
    STA.B $02                            ;81B606;
    LDA.W $1F26                          ;81B608;
    BEQ CODE_81B613                      ;81B60B;
    LDA.B #$1E                           ;81B60D;
    JSL.L CODE_8087A2                    ;81B60F;

CODE_81B613:
    RTS                                  ;81B613;
    LDA.B #$04                           ;81B614;
    STA.B $01                            ;81B616;
    STZ.B $02                            ;81B618;
    JSL.L CODE_849FFE                    ;81B61A;
    RTS                                  ;81B61E;

CODE_81B61F:
    LDA.B $33                            ;81B61F;
    TSB.B $11                            ;81B621;
    REP #$20                             ;81B623;
    LDA.W #$C42D                         ;81B625;
    STA.B $20                            ;81B628;
    SEP #$20                             ;81B62A;
    LDX.B $02                            ;81B62C;
    JSR.W (PTR16_81B6E9,X)               ;81B62E;
    LDA.B #$09                           ;81B631;
    LDX.B $35                            ;81B633;
    BEQ CODE_81B639                      ;81B635;
    LDA.B #$05                           ;81B637;

CODE_81B639:
    STA.B $28                            ;81B639;
    LDA.B $39                            ;81B63B;
    BEQ CODE_81B641                      ;81B63D;
    STZ.B $28                            ;81B63F;

CODE_81B641:
    LDA.B $17                            ;81B641;
    AND.B #$7F                           ;81B643;
    TAX                                  ;81B645;
    LDA.W DATA8_86C4AB,X                 ;81B646;
    ASL A                                ;81B649;
    ASL A                                ;81B64A;
    REP #$20                             ;81B64B;
    AND.W #$00FF                         ;81B64D;
    CLC                                  ;81B650;
    ADC.W #$C437                         ;81B651;
    STA.B $20                            ;81B654;
    SEP #$20                             ;81B656;
    JSL.L CODE_849B43                    ;81B658;
    BEQ CODE_81B6BA                      ;81B65C;
    LDA.B $35                            ;81B65E;
    BNE CODE_81B6BA                      ;81B660;
    LDA.B #$46                           ;81B662;
    STA.B $35                            ;81B664;
    LDA.B $38                            ;81B666;
    BEQ CODE_81B679                      ;81B668;
    LDA.B #$40                           ;81B66A;
    TRB.B $11                            ;81B66C;
    LDA.W $1F1B                          ;81B66E;
    TSB.B $11                            ;81B671;
    LDA.B #$0A                           ;81B673;
    STA.B $02                            ;81B675;
    STZ.B $03                            ;81B677;

CODE_81B679:
    LDA.W $1F1D                          ;81B679;
    CMP.B #$0A                           ;81B67C;
    BEQ CODE_81B684                      ;81B67E;
    CMP.B #$13                           ;81B680;
    BNE CODE_81B694                      ;81B682;

CODE_81B684:
    LDA.B #$0A                           ;81B684;
    STA.B $02                            ;81B686;
    LDA.B #$02                           ;81B688;
    STA.B $03                            ;81B68A;
    LDA.B #$4A                           ;81B68C;
    JSL.L CODE_8088A2                    ;81B68E;
    BRA CODE_81B69A                      ;81B692;

CODE_81B694:
    LDA.B #$13                           ;81B694;
    JSL.L CODE_8088A2                    ;81B696;

CODE_81B69A:
    LDA.B $27                            ;81B69A;
    AND.B #$7F                           ;81B69C;
    BNE CODE_81B6BA                      ;81B69E;
    LDA.B #$06                           ;81B6A0;
    STA.B $01                            ;81B6A2;
    STZ.B $02                            ;81B6A4;
    STZ.B $03                            ;81B6A6;
    LDA.B #$01                           ;81B6A8;
    STA.W $0BD8                          ;81B6AA;
    STA.W $1F0C                          ;81B6AD;
    LDA.B #$04                           ;81B6B0;
    JSL.L CODE_848F07                    ;81B6B2;
    JML.L CODE_8280B4                    ;81B6B6;

CODE_81B6BA:
    LDA.B $35                            ;81B6BA;
    BEQ CODE_81B6D6                      ;81B6BC;
    DEC.B $35                            ;81B6BE;
    LDA.B $02                            ;81B6C0;
    CMP.B #$0A                           ;81B6C2;
    BNE CODE_81B6CC                      ;81B6C4;
    LDA.B $03                            ;81B6C6;
    CMP.B #$08                           ;81B6C8;
    BCS CODE_81B6D6                      ;81B6CA;

CODE_81B6CC:
    LDA.B $35                            ;81B6CC;
    LSR A                                ;81B6CE;
    LSR A                                ;81B6CF;
    BCC CODE_81B6D6                      ;81B6D0;
    LDA.B #$0E                           ;81B6D2;
    TRB.B $11                            ;81B6D4;

CODE_81B6D6:
    JSL.L CODE_849B03                    ;81B6D6;
    LDA.W $0BCF                          ;81B6DA;
    AND.B #$7F                           ;81B6DD;
    BNE CODE_81B6E5                      ;81B6DF;
    LDA.B #$01                           ;81B6E1;
    STA.B $30                            ;81B6E3;

CODE_81B6E5:
    JML.L CODE_8280B4                    ;81B6E5;

PTR16_81B6E9:
    dw CODE_00B6F5                       ;81B6E9;
    dw LOOSE_OP_00B78C                   ;81B6EB;
    dw LOOSE_OP_00B884                   ;81B6ED;
    dw LOOSE_OP_00B931                   ;81B6EF;
    dw CODE_00B9F2                       ;81B6F1;
    dw CODE_00BAB5                       ;81B6F3;
    LDX.B $03                            ;81B6F5;
    JMP.W (PTR16_81B6FA,X)               ;81B6F7;

PTR16_81B6FA:
    dw CODE_00B700                       ;81B6FA;
    dw CODE_00B717                       ;81B6FC;
    dw LOOSE_OP_00B77C                   ;81B6FE;
    LDA.B #$02                           ;81B700;
    STA.B $03                            ;81B702;
    LDA.B #$01                           ;81B704;
    JSL.L CODE_848F07                    ;81B706;
    LDA.B #$04                           ;81B70A;
    STA.B $36                            ;81B70C;
    JSL.L CODE_84AC9B                    ;81B70E;
    LDA.B #$01                           ;81B712;
    STA.B $38                            ;81B714;
    RTS                                  ;81B716;
    JSL.L CODE_848EEA                    ;81B717;
    LDA.B $17                            ;81B71B;
    BPL CODE_81B761                      ;81B71D;
    AND.B #$7F                           ;81B71F;
    STA.B $17                            ;81B721;
    LDA.B $0F                            ;81B723;
    AND.B #$7F                           ;81B725;
    BEQ CODE_81B761                      ;81B727;
    JSL.L CODE_828358                    ;81B729;
    BNE CODE_81B75D                      ;81B72D;
    INC.W $0000,X                        ;81B72F;
    LDA.B #$06                           ;81B732;
    STA.W $000A,X                        ;81B734;
    LDA.B $11                            ;81B737;
    AND.B #$40                           ;81B739;
    STA.W $0011,X                        ;81B73B;
    ASL A                                ;81B73E;
    ASL A                                ;81B73F;
    REP #$20                             ;81B740;
    LDA.W #$001A                         ;81B742;
    BCS CODE_81B74A                      ;81B745;
    LDA.W #$FFE6                         ;81B747;

CODE_81B74A:
    CLC                                  ;81B74A;
    ADC.B $05                            ;81B74B;
    STA.W $0005,X                        ;81B74D;
    LDA.B $08                            ;81B750;
    SEC                                  ;81B752;
    SBC.W #$0002                         ;81B753;
    STA.W $0008,X                        ;81B756;
    TDC                                  ;81B759;
    STA.W $000C,X                        ;81B75A;

CODE_81B75D:
    SEP #$30                             ;81B75D;
    DEC.B $36                            ;81B75F;

CODE_81B761:
    LDA.B $0F                            ;81B761;
    BPL CODE_81B77B                      ;81B763;
    JSL.L CODE_84AC9B                    ;81B765;
    LDA.B $36                            ;81B769;
    BNE CODE_81B77B                      ;81B76B;
    LDA.B #$04                           ;81B76D;
    STA.B $03                            ;81B76F;
    LDA.B #$00                           ;81B771;
    JSL.L CODE_848F07                    ;81B773;
    LDA.B #$78                           ;81B777;
    STA.B $34                            ;81B779;

CODE_81B77B:
    RTS                                  ;81B77B;
    JSL.L CODE_848EEA                    ;81B77C;
    JSL.L CODE_84AC9B                    ;81B780;
    DEC.B $34                            ;81B784;
    BNE CODE_81B78B                      ;81B786;
    JSR.W CODE_81C00F                    ;81B788;

CODE_81B78B:
    RTS                                  ;81B78B;
    LDX.B $03                            ;81B78C;
    JMP.W (PTR16_81B791,X)               ;81B78E;

PTR16_81B791:
    dw CODE_81B79D                       ;81B791;
    dw CODE_81B7E1                       ;81B793;
    dw CODE_81B81C                       ;81B795;
    dw CODE_81B842                       ;81B797;
    dw CODE_81B861                       ;81B799;
    dw CODE_81B878                       ;81B79B;

CODE_81B79D:
    LDA.B #$02                           ;81B79D;
    STA.B $03                            ;81B79F;
    LDA.B #$05                           ;81B7A1;
    JSL.L CODE_848F07                    ;81B7A3;
    LDA.B #$40                           ;81B7A7;
    STA.B $1E                            ;81B7A9;
    REP #$20                             ;81B7AB;
    LDA.W #$07DE                         ;81B7AD;
    STA.B $1C                            ;81B7B0;
    LDA.W $1E60                          ;81B7B2;
    CLC                                  ;81B7B5;
    ADC.W #$0080                         ;81B7B6;
    CMP.B $05                            ;81B7B9;
    BCC CODE_81B7C5                      ;81B7BB;
    LDX.B #$40                           ;81B7BD;
    SEC                                  ;81B7BF;
    SBC.W #$000A                         ;81B7C0;
    BRA CODE_81B7CB                      ;81B7C3;

CODE_81B7C5:
    LDX.B #$00                           ;81B7C5;
    CLC                                  ;81B7C7;
    ADC.W #$000A                         ;81B7C8;

CODE_81B7CB:
    SEC                                  ;81B7CB;
    SBC.B $05                            ;81B7CC;
    ASL A                                ;81B7CE;
    ASL A                                ;81B7CF;
    ASL A                                ;81B7D0;
    STA.B $1A                            ;81B7D1;
    SEP #$20                             ;81B7D3;
    LDA.B #$40                           ;81B7D5;
    TRB.B $11                            ;81B7D7;
    TXA                                  ;81B7D9;
    TSB.B $11                            ;81B7DA;
    LDA.B #$FF                           ;81B7DC;
    STA.B $2F                            ;81B7DE;
    RTS                                  ;81B7E0;

CODE_81B7E1:
    JSL.L CODE_848EEA                    ;81B7E1;
    LDA.B $0F                            ;81B7E5;
    BEQ CODE_81B81B                      ;81B7E7;
    JSL.L CODE_8281E8                    ;81B7E9;
    LDA.B $1D                            ;81B7ED;
    BPL CODE_81B81B                      ;81B7EF;
    LDA.B #$04                           ;81B7F1;
    STA.B $03                            ;81B7F3;
    LDA.B #$09                           ;81B7F5;
    JSL.L CODE_848F07                    ;81B7F7;
    LDA.B $11                            ;81B7FB;
    ASL A                                ;81B7FD;
    ASL A                                ;81B7FE;
    REP #$20                             ;81B7FF;
    LDA.W #$000A                         ;81B801;
    BCC CODE_81B809                      ;81B804;
    LDA.W #$FFF6                         ;81B806;

CODE_81B809:
    CLC                                  ;81B809;
    ADC.W #$0080                         ;81B80A;
    CLC                                  ;81B80D;
    ADC.W $1E60                          ;81B80E;
    STA.B $05                            ;81B811;
    STZ.B $1C                            ;81B813;
    STZ.B $1A                            ;81B815;
    SEP #$20                             ;81B817;
    STZ.B $34                            ;81B819;

CODE_81B81B:
    RTS                                  ;81B81B;

CODE_81B81C:
    LDA.B $34                            ;81B81C;
    BEQ CODE_81B82F                      ;81B81E;
    DEC.B $34                            ;81B820;
    BNE CODE_81B841                      ;81B822;
    LDA.B #$06                           ;81B824;
    STA.B $03                            ;81B826;
    LDA.B #$07                           ;81B828;
    JSL.L CODE_848F07                    ;81B82A;
    RTS                                  ;81B82E;

CODE_81B82F:
    JSL.L CODE_848EEA                    ;81B82F;
    LDA.B $0F                            ;81B833;
    BPL CODE_81B841                      ;81B835;
    LDA.B #$1E                           ;81B837;
    STA.B $34                            ;81B839;
    LDY.B #$1B                           ;81B83B;
    LDA.B #$01                           ;81B83D;
    STA.B ($0C),Y                        ;81B83F;

CODE_81B841:
    RTS                                  ;81B841;

CODE_81B842:
    JSL.L CODE_848EEA                    ;81B842;
    JSL.L CODE_8281E8                    ;81B846;
    JSL.L CODE_8491BE                    ;81B84A;
    LDA.B $2B                            ;81B84E;
    AND.B #$04                           ;81B850;
    BEQ CODE_81B860                      ;81B852;
    LDA.B #$08                           ;81B854;
    STA.B $03                            ;81B856;
    LDA.B #$08                           ;81B858;
    JSL.L CODE_848F07                    ;81B85A;
    STZ.B $2F                            ;81B85E;

CODE_81B860:
    RTS                                  ;81B860;

CODE_81B861:
    JSL.L CODE_848EEA                    ;81B861;
    LDA.B $0F                            ;81B865;
    BPL CODE_81B877                      ;81B867;
    LDA.B #$0A                           ;81B869;
    STA.B $03                            ;81B86B;
    LDA.B #$00                           ;81B86D;
    JSL.L CODE_848F07                    ;81B86F;
    LDA.B #$1E                           ;81B873;
    STA.B $34                            ;81B875;

CODE_81B877:
    RTS                                  ;81B877;

CODE_81B878:
    JSL.L CODE_848EEA                    ;81B878;
    DEC.B $34                            ;81B87C;
    BNE CODE_81B883                      ;81B87E;
    JSR.W CODE_81C00F                    ;81B880;

CODE_81B883:
    RTS                                  ;81B883;
    LDX.B $03                            ;81B884;
    JMP.W (PTR16_81B889,X)               ;81B886;

PTR16_81B889:
    dw CODE_81B891                       ;81B889;
    dw CODE_81B8C2                       ;81B88B;
    dw CODE_81B8D7                       ;81B88D;
    dw CODE_81B925                       ;81B88F;

CODE_81B891:
    LDA.B #$02                           ;81B891;
    STA.B $03                            ;81B893;
    STZ.B $38                            ;81B895;
    JSL.L CODE_84AC9B                    ;81B897;
    LDA.B #$02                           ;81B89B;
    JSL.L CODE_848F07                    ;81B89D;
    STZ.B $2F                            ;81B8A1;
    LDA.B #$10                           ;81B8A3;
    STA.B $1F                            ;81B8A5;
    STZ.B $1E                            ;81B8A7;
    LDA.B $11                            ;81B8A9;
    ASL A                                ;81B8AB;
    ASL A                                ;81B8AC;
    REP #$20                             ;81B8AD;
    LDA.W #$0600                         ;81B8AF;
    BCS CODE_81B8B7                      ;81B8B2;
    LDA.W #$FA00                         ;81B8B4;

CODE_81B8B7:
    STA.B $1A                            ;81B8B7;
    STZ.B $1C                            ;81B8B9;
    SEP #$20                             ;81B8BB;
    LDA.B #$01                           ;81B8BD;
    STA.B $39                            ;81B8BF;
    RTS                                  ;81B8C1;

CODE_81B8C2:
    JSL.L CODE_848EEA                    ;81B8C2;
    LDA.B $0F                            ;81B8C6;
    AND.B #$7F                           ;81B8C8;
    BEQ CODE_81B8D6                      ;81B8CA;
    LDA.B #$04                           ;81B8CC;
    STA.B $03                            ;81B8CE;
    LDA.B #$49                           ;81B8D0;
    JSL.L CODE_8088A2                    ;81B8D2;

CODE_81B8D6:
    RTS                                  ;81B8D6;

CODE_81B8D7:
    JSL.L CODE_848EEA                    ;81B8D7;
    LDA.B $11                            ;81B8DB;
    ASL A                                ;81B8DD;
    ASL A                                ;81B8DE;
    BCS CODE_81B8E7                      ;81B8DF;
    JSL.L CODE_828195                    ;81B8E1;
    BRA CODE_81B8EB                      ;81B8E5;

CODE_81B8E7:
    JSL.L CODE_828174                    ;81B8E7;

CODE_81B8EB:
    JSL.L CODE_8491BE                    ;81B8EB;
    REP #$20                             ;81B8EF;
    LDA.B $1A                            ;81B8F1;
    SEP #$20                             ;81B8F3;
    BEQ CODE_81B910                      ;81B8F5;
    LDA.B $2B                            ;81B8F7;
    AND.B #$03                           ;81B8F9;
    BEQ CODE_81B924                      ;81B8FB;
    REP #$20                             ;81B8FD;
    LDA.B $1A                            ;81B8FF;
    EOR.W #$FFFF                         ;81B901;
    INC A                                ;81B904;
    STA.B $1A                            ;81B905;
    SEP #$20                             ;81B907;
    LDA.B $11                            ;81B909;
    EOR.B #$40                           ;81B90B;
    STA.B $11                            ;81B90D;
    RTS                                  ;81B90F;

CODE_81B910:
    LDA.B #$06                           ;81B910;
    STA.B $03                            ;81B912;
    LDA.B #$00                           ;81B914;
    JSL.L CODE_848F07                    ;81B916;
    LDA.B #$01                           ;81B91A;
    STA.B $38                            ;81B91C;
    LDA.B #$1E                           ;81B91E;
    STA.B $34                            ;81B920;
    STZ.B $39                            ;81B922;

CODE_81B924:
    RTS                                  ;81B924;

CODE_81B925:
    JSL.L CODE_848EEA                    ;81B925;
    DEC.B $34                            ;81B929;
    BEQ CODE_81B930                      ;81B92B;
    JSR.W CODE_81C00F                    ;81B92D;

CODE_81B930:
    RTS                                  ;81B930;
    LDX.B $03                            ;81B931;
    JMP.W (PTR16_81B936,X)               ;81B933;

PTR16_81B936:
    dw CODE_81B942                       ;81B936;
    dw CODE_81B970                       ;81B938;
    dw CODE_81B97F                       ;81B93A;
    dw CODE_81B99E                       ;81B93C;
    dw CODE_81B9CF                       ;81B93E;
    dw CODE_81B9E6                       ;81B940;

CODE_81B942:
    JSL.L CODE_84AC9B                    ;81B942;
    LDA.B #$02                           ;81B946;
    STA.B $03                            ;81B948;
    LDA.B #$01                           ;81B94A;
    STA.B $38                            ;81B94C;
    LDA.B #$40                           ;81B94E;
    STA.B $1E                            ;81B950;
    LDA.B #$FF                           ;81B952;
    STA.B $2F                            ;81B954;
    REP #$20                             ;81B956;
    LDA.W $0BAD                          ;81B958;
    SEC                                  ;81B95B;
    SBC.B $05                            ;81B95C;
    ASL A                                ;81B95E;
    ASL A                                ;81B95F;
    STA.B $1A                            ;81B960;
    LDA.W #$087E                         ;81B962;
    STA.B $1C                            ;81B965;
    SEP #$20                             ;81B967;
    LDA.B #$05                           ;81B969;
    JSL.L CODE_848F07                    ;81B96B;
    RTS                                  ;81B96F;

CODE_81B970:
    JSL.L CODE_848EEA                    ;81B970;
    LDA.B $0F                            ;81B974;
    AND.B #$7F                           ;81B976;
    BEQ CODE_81B97E                      ;81B978;
    LDA.B #$04                           ;81B97A;
    STA.B $03                            ;81B97C;

CODE_81B97E:
    RTS                                  ;81B97E;

CODE_81B97F:
    JSL.L CODE_8281E8                    ;81B97F;
    JSL.L CODE_8491BE                    ;81B983;
    JSL.L CODE_848EEA                    ;81B987;
    REP #$20                             ;81B98B;
    LDA.B $1C                            ;81B98D;
    SEP #$20                             ;81B98F;
    BPL CODE_81B99D                      ;81B991;
    LDA.B #$06                           ;81B993;
    STA.B $03                            ;81B995;
    LDA.B #$07                           ;81B997;
    JSL.L CODE_848F07                    ;81B999;

CODE_81B99D:
    RTS                                  ;81B99D;

CODE_81B99E:
    JSL.L CODE_8281E8                    ;81B99E;
    JSL.L CODE_8491BE                    ;81B9A2;
    JSL.L CODE_848EEA                    ;81B9A6;
    REP #$20                             ;81B9AA;
    LDA.B $1C                            ;81B9AC;
    CMP.W #$F900                         ;81B9AE;
    BPL CODE_81B9BC                      ;81B9B1;
    LDA.W #$F900                         ;81B9B3;
    STA.B $1C                            ;81B9B6;
    SEP #$20                             ;81B9B8;
    STZ.B $1E                            ;81B9BA;

CODE_81B9BC:
    SEP #$20                             ;81B9BC;
    LDA.B $2B                            ;81B9BE;
    AND.B #$04                           ;81B9C0;
    BEQ CODE_81B9CE                      ;81B9C2;
    LDA.B #$08                           ;81B9C4;
    STA.B $03                            ;81B9C6;
    LDA.B #$08                           ;81B9C8;
    JSL.L CODE_848F07                    ;81B9CA;

CODE_81B9CE:
    RTS                                  ;81B9CE;

CODE_81B9CF:
    JSL.L CODE_848EEA                    ;81B9CF;
    LDA.B $0F                            ;81B9D3;
    BPL CODE_81B9E5                      ;81B9D5;
    LDA.B #$0A                           ;81B9D7;
    STA.B $03                            ;81B9D9;
    LDA.B #$00                           ;81B9DB;
    JSL.L CODE_848F07                    ;81B9DD;
    LDA.B #$1E                           ;81B9E1;
    STA.B $34                            ;81B9E3;

CODE_81B9E5:
    RTS                                  ;81B9E5;

CODE_81B9E6:
    JSL.L CODE_848EEA                    ;81B9E6;
    DEC.B $34                            ;81B9EA;
    BNE CODE_81B9F1                      ;81B9EC;
    JSR.W CODE_81C00F                    ;81B9EE;

CODE_81B9F1:
    RTS                                  ;81B9F1;
    LDX.B $03                            ;81B9F2;
    JMP.W (PTR16_81B9F7,X)               ;81B9F4;

PTR16_81B9F7:
    dw CODE_81BA01                       ;81B9F7;
    dw CODE_81BA44                       ;81B9F9;
    dw CODE_81BA61                       ;81B9FB;
    dw CODE_81BA8B                       ;81B9FD;
    dw CODE_81BAA9                       ;81B9FF;

CODE_81BA01:
    JSL.L CODE_84AC9B                    ;81BA01;
    STZ.B $38                            ;81BA05;
    REP #$30                             ;81BA07;
    LDX.W #$1428                         ;81BA09;

CODE_81BA0C:
    SEP #$20                             ;81BA0C;
    LDA.W $0000,X                        ;81BA0E;
    BEQ CODE_81BA2A                      ;81BA11;
    LDA.W $000A,X                        ;81BA13;
    CMP.B #$1A                           ;81BA16;
    BNE CODE_81BA2A                      ;81BA18;
    LDA.W $000B,X                        ;81BA1A;
    BEQ CODE_81BA2A                      ;81BA1D;
    SEP #$10                             ;81BA1F;
    STZ.B $02                            ;81BA21;
    STZ.B $03                            ;81BA23;
    LDA.B #$01                           ;81BA25;
    STA.B $38                            ;81BA27;
    RTS                                  ;81BA29;

CODE_81BA2A:
    REP #$20                             ;81BA2A;
    TXA                                  ;81BA2C;
    CLC                                  ;81BA2D;
    ADC.W #$0040                         ;81BA2E;
    TAX                                  ;81BA31;
    CMP.W #$1628                         ;81BA32;
    BCC CODE_81BA0C                      ;81BA35;
    SEP #$30                             ;81BA37;
    LDA.B #$01                           ;81BA39;
    JSL.L CODE_848F07                    ;81BA3B;
    LDA.B #$02                           ;81BA3F;
    STA.B $03                            ;81BA41;
    RTS                                  ;81BA43;

CODE_81BA44:
    JSL.L CODE_848EEA                    ;81BA44;
    LDA.B $0F                            ;81BA48;
    BEQ CODE_81BA60                      ;81BA4A;
    LDA.B #$04                           ;81BA4C;
    STA.B $03                            ;81BA4E;
    LDA.B #$0E                           ;81BA50;
    JSL.L CODE_848F07                    ;81BA52;
    LDA.B #$3C                           ;81BA56;
    STA.B $34                            ;81BA58;
    LDA.B #$72                           ;81BA5A;
    JSL.L CODE_8088A2                    ;81BA5C;

CODE_81BA60:
    RTS                                  ;81BA60;

CODE_81BA61:
    JSL.L CODE_848EEA                    ;81BA61;
    JSR.W CODE_81BF0C                    ;81BA65;
    DEC.B $34                            ;81BA68;
    BNE CODE_81BA8A                      ;81BA6A;
    LDA.B #$30                           ;81BA6C;
    STA.W $0000                          ;81BA6E;
    STZ.W $0001                          ;81BA71;
    JSR.W CODE_81BF52                    ;81BA74;
    LDA.B #$50                           ;81BA77;
    STA.W $0000                          ;81BA79;
    STZ.W $0001                          ;81BA7C;
    JSR.W CODE_81BF52                    ;81BA7F;
    LDA.B #$06                           ;81BA82;
    STA.B $03                            ;81BA84;
    LDA.B #$3C                           ;81BA86;
    STA.B $34                            ;81BA88;

CODE_81BA8A:
    RTS                                  ;81BA8A;

CODE_81BA8B:
    JSL.L CODE_848EEA                    ;81BA8B;
    JSR.W CODE_81BF0C                    ;81BA8F;
    DEC.B $34                            ;81BA92;
    BNE CODE_81BAA8                      ;81BA94;
    LDA.B #$08                           ;81BA96;
    STA.B $03                            ;81BA98;
    LDA.B #$1E                           ;81BA9A;
    STA.B $34                            ;81BA9C;
    LDA.B #$00                           ;81BA9E;
    JSL.L CODE_848F07                    ;81BAA0;
    LDA.B #$01                           ;81BAA4;
    STA.B $38                            ;81BAA6;

CODE_81BAA8:
    RTS                                  ;81BAA8;

CODE_81BAA9:
    JSL.L CODE_848EEA                    ;81BAA9;
    DEC.B $34                            ;81BAAD;
    BNE CODE_81BAB4                      ;81BAAF;
    JSR.W CODE_81C00F                    ;81BAB1;

CODE_81BAB4:
    RTS                                  ;81BAB4;
    LDX.B $03                            ;81BAB5;
    JMP.W (PTR16_81BABA,X)               ;81BAB7;

PTR16_81BABA:
    dw CODE_81BAC6                       ;81BABA;
    dw CODE_81BAD2                       ;81BABC;
    dw CODE_81BB00                       ;81BABE;
    dw CODE_81BB2A                       ;81BAC0;
    dw CODE_81BB00                       ;81BAC2;
    dw CODE_81BB2A                       ;81BAC4;

CODE_81BAC6:
    LDA.B #$04                           ;81BAC6;
    STA.B $03                            ;81BAC8;
    LDA.B #$14                           ;81BACA;
    STA.B $37                            ;81BACC;
    LDA.B #$04                           ;81BACE;
    BRA CODE_81BADC                      ;81BAD0;

CODE_81BAD2:
    LDA.B #$08                           ;81BAD2;
    STA.B $03                            ;81BAD4;
    LDA.B #$3C                           ;81BAD6;
    STA.B $37                            ;81BAD8;
    LDA.B #$0D                           ;81BADA;

CODE_81BADC:
    JSL.L CODE_848F07                    ;81BADC;
    LDA.B $11                            ;81BAE0;
    ASL A                                ;81BAE2;
    ASL A                                ;81BAE3;
    REP #$20                             ;81BAE4;
    LDA.W #$0100                         ;81BAE6;
    BCC CODE_81BAEE                      ;81BAE9;
    LDA.W #$FF00                         ;81BAEB;

CODE_81BAEE:
    STA.B $1A                            ;81BAEE;
    LDA.W #$0221                         ;81BAF0;
    STA.B $1C                            ;81BAF3;
    SEP #$20                             ;81BAF5;
    LDA.B #$40                           ;81BAF7;
    STA.B $1E                            ;81BAF9;
    LDA.B #$FF                           ;81BAFB;
    STA.B $2F                            ;81BAFD;
    RTS                                  ;81BAFF;

CODE_81BB00:
    JSL.L CODE_8281E8                    ;81BB00;
    JSL.L CODE_848EEA                    ;81BB04;
    JSL.L CODE_8491BE                    ;81BB08;
    LDA.B $2B                            ;81BB0C;
    AND.B #$04                           ;81BB0E;
    BEQ CODE_81BB23                      ;81BB10;
    INC.B $03                            ;81BB12;
    INC.B $03                            ;81BB14;
    REP #$20                             ;81BB16;
    LDA.B $1A                            ;81BB18;
    AND.W #$8000                         ;81BB1A;
    LSR.B $1A                            ;81BB1D;
    TSB.B $1A                            ;81BB1F;
    SEP #$20                             ;81BB21;

CODE_81BB23:
    LDA.B $37                            ;81BB23;
    BEQ CODE_81BB29                      ;81BB25;
    DEC.B $37                            ;81BB27;

CODE_81BB29:
    RTS                                  ;81BB29;

CODE_81BB2A:
    JSL.L CODE_82823E                    ;81BB2A;
    JSL.L CODE_848EEA                    ;81BB2E;
    JSL.L CODE_8491BE                    ;81BB32;
    LDA.B $37                            ;81BB36;
    BNE CODE_81BB4A                      ;81BB38;
    STZ.B $02                            ;81BB3A;
    JSR.W CODE_81C00F                    ;81BB3C;
    LDA.B #$00                           ;81BB3F;
    JSL.L CODE_848F07                    ;81BB41;
    JSL.L CODE_84AC9B                    ;81BB45;
    RTS                                  ;81BB49;

CODE_81BB4A:
    DEC.B $37                            ;81BB4A;
    RTS                                  ;81BB4C;

CODE_81BB4D:
    JSL.L CODE_84A66D                    ;81BB4D;
    BPL CODE_81BB6C                      ;81BB51;
    LDA.W $1F7A                          ;81BB53;
    CMP.B #$09                           ;81BB56;
    BCC CODE_81BB68                      ;81BB58;
    LDA.B #$1B                           ;81BB5A;
    JSL.L CODE_8087A2                    ;81BB5C;
    LDA.B #$F5                           ;81BB60;
    LDY.B #$03                           ;81BB62;
    JSL.L CODE_80887F                    ;81BB64;

CODE_81BB68:
    JML.L CODE_828398                    ;81BB68;

CODE_81BB6C:
    LDA.B $03                            ;81BB6C;
    CMP.B #$14                           ;81BB6E;
    BCS CODE_81BB76                      ;81BB70;
    JML.L CODE_8280B4                    ;81BB72;

CODE_81BB76:
    RTL                                  ;81BB76;

CODE_81BB77:
    LDY.B #$27                           ;81BB77;
    LDA.B ($0C),Y                        ;81BB79;
    AND.B #$7F                           ;81BB7B;
    BNE CODE_81BB83                      ;81BB7D;
    JML.L CODE_8283A3                    ;81BB7F;

CODE_81BB83:
    LDX.B $01                            ;81BB83;
    JSR.W (PTR16_81BBDC,X)               ;81BB85;
    LDA.B $2B                            ;81BB88;
    AND.B #$03                           ;81BB8A;
    BEQ CODE_81BB9B                      ;81BB8C;

CODE_81BB8E:
    LDA.B #$78                           ;81BB8E;
    JSL.L CODE_8088A2                    ;81BB90;
    JSR.W CODE_81BF8F                    ;81BB94;
    JML.L CODE_8283A3                    ;81BB97;

CODE_81BB9B:
    JSL.L CODE_849B03                    ;81BB9B;
    BNE CODE_81BB8E                      ;81BB9F;
    JSL.L CODE_849B43                    ;81BBA1;
    BEQ CODE_81BBA9                      ;81BBA5;
    BMI CODE_81BB8E                      ;81BBA7;

CODE_81BBA9:
    REP #$10                             ;81BBA9;
    LDX.W #$1428                         ;81BBAB;

CODE_81BBAE:
    LDA.W $0000,X                        ;81BBAE;
    BEQ CODE_81BBC9                      ;81BBB1;
    LDA.W $000A,X                        ;81BBB3;
    CMP.B #$1A                           ;81BBB6;
    BNE CODE_81BBC9                      ;81BBB8;
    LDA.W $000B,X                        ;81BBBA;
    BEQ CODE_81BBC9                      ;81BBBD;
    JSL.L CODE_849C0E                    ;81BBBF;
    BCC CODE_81BBC9                      ;81BBC3;
    SEP #$10                             ;81BBC5;
    BRA CODE_81BB8E                      ;81BBC7;

CODE_81BBC9:
    REP #$30                             ;81BBC9;
    TXA                                  ;81BBCB;
    CLC                                  ;81BBCC;
    ADC.W #$0040                         ;81BBCD;
    TAX                                  ;81BBD0;
    SEP #$20                             ;81BBD1;
    CPX.W #$1628                         ;81BBD3;
    BCC CODE_81BBAE                      ;81BBD6;
    JML.L CODE_8280B4                    ;81BBD8;

PTR16_81BBDC:
    dw CODE_81BBE4                       ;81BBDC;
    dw CODE_81BC56                       ;81BBDE;
    dw CODE_81BC56                       ;81BBE0;
    dw CODE_81BC72                       ;81BBE2;

CODE_81BBE4:
    LDA.L $7F8261                        ;81BBE4;
    STA.B $18                            ;81BBE8;
    LDA.L $7F8362                        ;81BBEA;
    ORA.B #$01                           ;81BBEE;
    TSB.B $11                            ;81BBF0;
    LDA.B #$67                           ;81BBF2;
    STA.B $16                            ;81BBF4;
    STZ.B $2B                            ;81BBF6;
    LDA.B #$03                           ;81BBF8;
    STA.B $27                            ;81BBFA;
    STZ.B $28                            ;81BBFC;
    LDA.B #$02                           ;81BBFE;
    STA.B $26                            ;81BC00;
    STZ.B $30                            ;81BC02;
    LDA.B #$FF                           ;81BC04;
    STA.B $2F                            ;81BC06;
    LDA.B #$02                           ;81BC08;
    STA.B $12                            ;81BC0A;
    LDA.B $11                            ;81BC0C;
    ASL A                                ;81BC0E;
    ASL A                                ;81BC0F;
    REP #$20                             ;81BC10;
    LDA.W #$0400                         ;81BC12;
    BCS CODE_81BC1A                      ;81BC15;
    LDA.W #$FC00                         ;81BC17;

CODE_81BC1A:
    STA.B $1A                            ;81BC1A;
    LDA.W #$C447                         ;81BC1C;
    STA.B $20                            ;81BC1F;
    SEP #$20                             ;81BC21;
    LDA.B #$0A                           ;81BC23;
    JSL.L CODE_848F07                    ;81BC25;
    JSL.L CODE_849086                    ;81BC29;
    AND.B #$0F                           ;81BC2D;
    CMP.B #$0A                           ;81BC2F;
    BCS CODE_81BC38                      ;81BC31;
    LDA.B #$06                           ;81BC33;
    STA.B $01                            ;81BC35;
    RTS                                  ;81BC37;

CODE_81BC38:
    REP #$20                             ;81BC38;
    LDA.W #$0221                         ;81BC3A;
    STA.B $1C                            ;81BC3D;
    LDA.W #$0200                         ;81BC3F;
    LDX.B $1B                            ;81BC42;
    BPL CODE_81BC49                      ;81BC44;
    LDA.W #$FE00                         ;81BC46;

CODE_81BC49:
    STA.B $1A                            ;81BC49;
    SEP #$20                             ;81BC4B;
    LDA.B #$40                           ;81BC4D;
    STA.B $1E                            ;81BC4F;
    LDA.B #$02                           ;81BC51;
    STA.B $01                            ;81BC53;
    RTS                                  ;81BC55;

CODE_81BC56:
    JSL.L CODE_8281E8                    ;81BC56;
    JSL.L CODE_8491BE                    ;81BC5A;
    LDA.B $2B                            ;81BC5E;
    AND.B #$04                           ;81BC60;
    BEQ CODE_81BC71                      ;81BC62;
    INC.B $01                            ;81BC64;
    INC.B $01                            ;81BC66;
    REP #$20                             ;81BC68;
    LDA.W #$018B                         ;81BC6A;
    STA.B $1C                            ;81BC6D;
    SEP #$20                             ;81BC6F;

CODE_81BC71:
    RTS                                  ;81BC71;

CODE_81BC72:
    JSL.L CODE_82823E                    ;81BC72;
    JSL.L CODE_8491BE                    ;81BC76;
    RTS                                  ;81BC7A;

CODE_81BC7B:
    LDY.B #$27                           ;81BC7B;
    LDA.B ($0C),Y                        ;81BC7D;
    AND.B #$7F                           ;81BC7F;
    BNE CODE_81BC87                      ;81BC81;
    JML.L CODE_8283A3                    ;81BC83;

CODE_81BC87:
    LDX.B $01                            ;81BC87;
    JMP.W (PTR16_81BC8C,X)               ;81BC89;

PTR16_81BC8C:
    dw CODE_81BC98                       ;81BC8C;
    dw CODE_81BD0C                       ;81BC8E;
    dw CODE_81BD4A                       ;81BC90;
    dw CODE_81BD79                       ;81BC92;
    dw CODE_81BD79                       ;81BC94;
    dw CODE_81BDBB                       ;81BC96;

CODE_81BC98:
    LDA.B $0B                            ;81BC98;
    BNE CODE_81BCD7                      ;81BC9A;
    LDA.B #$02                           ;81BC9C;
    STA.B $01                            ;81BC9E;
    LDA.L $7F8261                        ;81BCA0;
    STA.B $18                            ;81BCA4;
    LDA.L $7F8362                        ;81BCA6;
    ORA.B #$01                           ;81BCAA;
    TSB.B $11                            ;81BCAC;
    LDA.B #$67                           ;81BCAE;
    STA.B $16                            ;81BCB0;
    LDA.B #$0F                           ;81BCB2;
    JSL.L CODE_848F07                    ;81BCB4;
    LDA.B $11                            ;81BCB8;
    ASL A                                ;81BCBA;
    ASL A                                ;81BCBB;
    REP #$20                             ;81BCBC;
    LDA.W #$0200                         ;81BCBE;
    BCS CODE_81BCC6                      ;81BCC1;
    LDA.W #$FE00                         ;81BCC3;

CODE_81BCC6:
    STA.B $1A                            ;81BCC6;
    LDA.W #$C447                         ;81BCC8;
    STA.B $20                            ;81BCCB;
    SEP #$20                             ;81BCCD;
    LDA.B #$28                           ;81BCCF;
    STA.B $34                            ;81BCD1;
    JML.L CODE_8280B4                    ;81BCD3;

CODE_81BCD7:
    LDA.L $7F8262                        ;81BCD7;
    STA.B $18                            ;81BCDB;
    LDA.L $7F8362                        ;81BCDD;
    TSB.B $11                            ;81BCE1;
    LDA.B #$68                           ;81BCE3;
    STA.B $16                            ;81BCE5;
    LDA.B #$00                           ;81BCE7;
    JSL.L CODE_848F07                    ;81BCE9;
    REP #$20                             ;81BCED;
    LDA.W #$C451                         ;81BCEF;
    STA.B $20                            ;81BCF2;
    SEP #$20                             ;81BCF4;
    LDA.B #$04                           ;81BCF6;
    STA.B $01                            ;81BCF8;
    LDA.B #$03                           ;81BCFA;
    STA.B $28                            ;81BCFC;
    LDA.B #$08                           ;81BCFE;
    STA.B $27                            ;81BD00;
    LDA.B #$04                           ;81BD02;
    STA.B $26                            ;81BD04;
    STZ.B $30                            ;81BD06;
    JML.L CODE_8280B4                    ;81BD08;

CODE_81BD0C:
    JSL.L CODE_82823E                    ;81BD0C;
    JSL.L CODE_848EEA                    ;81BD10;
    DEC.B $34                            ;81BD14;
    BNE CODE_81BD1C                      ;81BD16;
    JML.L CODE_8283A3                    ;81BD18;

CODE_81BD1C:
    LDA.W $0C16                          ;81BD1C;
    BNE CODE_81BD46                      ;81BD1F;
    REP #$10                             ;81BD21;
    LDX.W #$0BA8                         ;81BD23;
    JSL.L CODE_849C0E                    ;81BD26;
    BCC CODE_81BD44                      ;81BD2A;
    JSL.L CODE_8282D3                    ;81BD2C;
    BNE CODE_81BD44                      ;81BD30;
    INC.W $0000,X                        ;81BD32;
    LDA.B #$08                           ;81BD35;
    STA.W $000A,X                        ;81BD37;
    STZ.W $000B,X                        ;81BD3A;
    REP #$20                             ;81BD3D;
    LDA.B $0C                            ;81BD3F;
    STA.W $000C,X                        ;81BD41;

CODE_81BD44:
    SEP #$30                             ;81BD44;

CODE_81BD46:
    JML.L CODE_8280B4                    ;81BD46;

CODE_81BD4A:
    JSL.L CODE_848EEA                    ;81BD4A;
    LDA.B $0F                            ;81BD4E;
    BPL CODE_81BD75                      ;81BD50;
    JSL.L CODE_8491BE                    ;81BD52;
    LDA.B $2B                            ;81BD56;
    BEQ CODE_81BD61                      ;81BD58;
    JSR.W CODE_81BF8F                    ;81BD5A;
    JML.L CODE_8283A3                    ;81BD5D;

CODE_81BD61:
    LDA.B #$06                           ;81BD61;
    STA.B $01                            ;81BD63;
    REP #$20                             ;81BD65;
    STZ.B $1A                            ;81BD67;
    STZ.B $1C                            ;81BD69;
    SEP #$20                             ;81BD6B;
    LDA.B #$40                           ;81BD6D;
    STA.B $1E                            ;81BD6F;
    LDA.B #$FF                           ;81BD71;
    STA.B $2F                            ;81BD73;

CODE_81BD75:
    JML.L CODE_8280B4                    ;81BD75;

CODE_81BD79:
    JSL.L CODE_8281E8                    ;81BD79;
    JSL.L CODE_8491BE                    ;81BD7D;
    JSL.L CODE_849B03                    ;81BD81;
    JSL.L CODE_849B43                    ;81BD85;
    BEQ CODE_81BD94                      ;81BD89;
    BPL CODE_81BD94                      ;81BD8B;
    JSR.W CODE_81BF8F                    ;81BD8D;
    JML.L CODE_8283A3                    ;81BD90;

CODE_81BD94:
    LDA.B $2B                            ;81BD94;
    AND.B #$04                           ;81BD96;
    BEQ CODE_81BDA4                      ;81BD98;
    INC.B $01                            ;81BD9A;
    INC.B $01                            ;81BD9C;
    LDA.B #$02                           ;81BD9E;
    STA.B $1D                            ;81BDA0;
    STZ.B $1C                            ;81BDA2;

CODE_81BDA4:
    LDA.B $2B                            ;81BDA4;
    AND.B #$03                           ;81BDA6;
    BEQ CODE_81BDB7                      ;81BDA8;
    LDA.B #$4C                           ;81BDAA;
    JSL.L CODE_8088A2                    ;81BDAC;
    JSR.W CODE_81BF8F                    ;81BDB0;
    JML.L CODE_8283A3                    ;81BDB3;

CODE_81BDB7:
    JML.L CODE_8280B4                    ;81BDB7;

CODE_81BDBB:
    LDA.W $1F3F                          ;81BDBB;
    BEQ CODE_81BDD7                      ;81BDBE;
    LDA.W $1F40                          ;81BDC0;
    ASL A                                ;81BDC3;
    ASL A                                ;81BDC4;
    REP #$20                             ;81BDC5;
    LDA.W #$0200                         ;81BDC7;
    BCS CODE_81BDCF                      ;81BDCA;
    LDA.W #$FE00                         ;81BDCC;

CODE_81BDCF:
    STA.B $1A                            ;81BDCF;
    SEP #$20                             ;81BDD1;
    JSL.L CODE_82823E                    ;81BDD3;

CODE_81BDD7:
    JSL.L CODE_8491BE                    ;81BDD7;
    JSL.L CODE_849B03                    ;81BDDB;
    JSL.L CODE_849B43                    ;81BDDF;
    BEQ CODE_81BDF4                      ;81BDE3;
    BPL CODE_81BDF4                      ;81BDE5;

CODE_81BDE7:
    LDA.B #$4C                           ;81BDE7;
    JSL.L CODE_8088A2                    ;81BDE9;
    JSR.W CODE_81BF8F                    ;81BDED;
    JML.L CODE_8283A3                    ;81BDF0;

CODE_81BDF4:
    LDA.B $2B                            ;81BDF4;
    AND.B #$03                           ;81BDF6;
    BNE CODE_81BDE7                      ;81BDF8;
    REP #$10                             ;81BDFA;
    LDX.B $0C                            ;81BDFC;
    LDA.W $0027,X                        ;81BDFE;
    AND.B #$7F                           ;81BE01;
    BEQ CODE_81BDE7                      ;81BE03;
    JSL.L CODE_849C0E                    ;81BE05;
    SEP #$10                             ;81BE09;
    BCS CODE_81BDE7                      ;81BE0B;
    JML.L CODE_8280B4                    ;81BE0D;

CODE_81BE11:
    LDY.B #$27                           ;81BE11;
    LDA.B ($0C),Y                        ;81BE13;
    AND.B #$7F                           ;81BE15;
    BNE CODE_81BE1D                      ;81BE17;
    JML.L CODE_828398                    ;81BE19;

CODE_81BE1D:
    LDX.B $01                            ;81BE1D;
    JMP.W (PTR16_81BE22,X)               ;81BE1F;

PTR16_81BE22:
    dw CODE_81BE28                       ;81BE22;
    dw CODE_81BE93                       ;81BE24;
    dw CODE_81BEFB                       ;81BE26;

CODE_81BE28:
    LDA.L $7F8362                        ;81BE28;
    STA.B $11                            ;81BE2C;
    LDA.B $0B                            ;81BE2E;
    BNE CODE_81BE71                      ;81BE30;
    LDA.B #$02                           ;81BE32;
    STA.B $12                            ;81BE34;
    LDA.L $7F8262                        ;81BE36;
    STA.B $18                            ;81BE3A;
    LDA.B #$02                           ;81BE3C;
    STA.B $01                            ;81BE3E;
    LDA.W $0C16                          ;81BE40;
    BNE CODE_81BE56                      ;81BE43;
    LDA.W $0C32                          ;81BE45;
    BNE CODE_81BE56                      ;81BE48;
    LDA.W $0BCF                          ;81BE4A;
    AND.B #$7F                           ;81BE4D;
    BEQ CODE_81BE56                      ;81BE4F;
    LDA.W $1F0C                          ;81BE51;
    BEQ CODE_81BE5A                      ;81BE54;

CODE_81BE56:
    JML.L CODE_828398                    ;81BE56;

CODE_81BE5A:
    JSL.L CODE_849FE6                    ;81BE5A;
    LDA.B #$68                           ;81BE5E;
    STA.B $16                            ;81BE60;
    LDA.B #$01                           ;81BE62;
    JSL.L CODE_848F07                    ;81BE64;
    REP #$20                             ;81BE68;
    LDA.W #$012C                         ;81BE6A;
    STA.B $1A                            ;81BE6D;
    BRA CODE_81BE93                      ;81BE6F;

CODE_81BE71:
    LDA.L $7F8261                        ;81BE71;
    STA.B $18                            ;81BE75;
    LDA.B #$01                           ;81BE77;
    TSB.B $11                            ;81BE79;
    STZ.B $12                            ;81BE7B;
    LDA.B #$04                           ;81BE7D;
    STA.B $01                            ;81BE7F;
    LDA.B #$67                           ;81BE81;
    STA.B $16                            ;81BE83;
    LDA.B #$0B                           ;81BE85;
    JSL.L CODE_848F07                    ;81BE87;
    LDA.B #$40                           ;81BE8B;
    STA.B $1E                            ;81BE8D;
    JML.L CODE_8280B4                    ;81BE8F;

CODE_81BE93:
    REP #$20                             ;81BE93;
    LDA.W $0BAD                          ;81BE95;
    STA.B $05                            ;81BE98;
    LDA.W $0BB0                          ;81BE9A;
    STA.B $08                            ;81BE9D;
    SEP #$20                             ;81BE9F;
    LDA.B #$40                           ;81BEA1;
    TRB.B $11                            ;81BEA3;
    LDA.W $0BB9                          ;81BEA5;
    AND.B #$40                           ;81BEA8;
    TSB.B $11                            ;81BEAA;
    LDA.W $0C16                          ;81BEAC;
    BEQ CODE_81BEB8                      ;81BEAF;
    LDA.W $0BCF                          ;81BEB1;
    AND.B #$7F                           ;81BEB4;
    BNE CODE_81BEC5                      ;81BEB6;

CODE_81BEB8:
    LDA.B #$4C                           ;81BEB8;
    JSL.L CODE_8088A2                    ;81BEBA;
    JSR.W CODE_81BF8F                    ;81BEBE;
    JML.L CODE_828398                    ;81BEC1;

CODE_81BEC5:
    REP #$20                             ;81BEC5;
    LDA.W $0BE3                          ;81BEC7;
    BEQ CODE_81BEDB                      ;81BECA;
    LDA.B $1A                            ;81BECC;
    SEC                                  ;81BECE;
    SBC.W #$000A                         ;81BECF;
    BEQ CODE_81BED6                      ;81BED2;
    BPL CODE_81BED9                      ;81BED4;

CODE_81BED6:
    LDA.W #$0001                         ;81BED6;

CODE_81BED9:
    STA.B $1A                            ;81BED9;

CODE_81BEDB:
    DEC.B $1A                            ;81BEDB;
    SEP #$20                             ;81BEDD;
    BNE CODE_81BEF7                      ;81BEDF;
    LDA.W $0C32                          ;81BEE1;
    BNE CODE_81BEEA                      ;81BEE4;
    JSL.L CODE_849FFE                    ;81BEE6;

CODE_81BEEA:
    LDA.B #$4C                           ;81BEEA;
    JSL.L CODE_8088A2                    ;81BEEC;
    JSR.W CODE_81BF8F                    ;81BEF0;
    JML.L CODE_828398                    ;81BEF3;

CODE_81BEF7:
    JML.L CODE_8280B4                    ;81BEF7;

CODE_81BEFB:
    JSL.L CODE_8281E8                    ;81BEFB;
    JSL.L CODE_8280B4                    ;81BEFF;
    LDA.B $0E                            ;81BF03;
    BNE CODE_81BF0B                      ;81BF05;
    JML.L CODE_828398                    ;81BF07;

CODE_81BF0B:
    RTL                                  ;81BF0B;

CODE_81BF0C:
    LDA.B $17                            ;81BF0C;
    BPL CODE_81BF51                      ;81BF0E;
    AND.B #$7F                           ;81BF10;
    STA.B $17                            ;81BF12;
    LDA.B $0F                            ;81BF14;
    BPL CODE_81BF51                      ;81BF16;
    JSL.L CODE_828358                    ;81BF18;
    BNE CODE_81BF4F                      ;81BF1C;
    INC.W $0000,X                        ;81BF1E;
    LDA.B #$1A                           ;81BF21;
    STA.W $000A,X                        ;81BF23;
    STZ.W $000B,X                        ;81BF26;
    LDA.B $11                            ;81BF29;
    AND.B #$40                           ;81BF2B;
    STA.W $0011,X                        ;81BF2D;
    ASL A                                ;81BF30;
    ASL A                                ;81BF31;
    REP #$20                             ;81BF32;
    LDA.W #$001A                         ;81BF34;
    BCS CODE_81BF3C                      ;81BF37;
    LDA.W #$FFE6                         ;81BF39;

CODE_81BF3C:
    CLC                                  ;81BF3C;
    ADC.B $05                            ;81BF3D;
    STA.W $0005,X                        ;81BF3F;
    LDA.B $08                            ;81BF42;
    SEC                                  ;81BF44;
    SBC.W #$0002                         ;81BF45;
    STA.W $0008,X                        ;81BF48;
    TDC                                  ;81BF4B;
    STA.W $000C,X                        ;81BF4C;

CODE_81BF4F:
    SEP #$30                             ;81BF4F;

CODE_81BF51:
    RTS                                  ;81BF51;

CODE_81BF52:
    JSL.L CODE_828358                    ;81BF52;
    BNE CODE_81BF8C                      ;81BF56;
    INC.W $0000,X                        ;81BF58;
    LDA.B #$1A                           ;81BF5B;
    STA.W $000A,X                        ;81BF5D;
    LDA.B #$01                           ;81BF60;
    STA.W $000B,X                        ;81BF62;
    LDA.B $11                            ;81BF65;
    AND.B #$40                           ;81BF67;
    STA.W $0011,X                        ;81BF69;
    ASL A                                ;81BF6C;
    ASL A                                ;81BF6D;
    REP #$20                             ;81BF6E;
    LDA.W $0000                          ;81BF70;
    BCS CODE_81BF79                      ;81BF73;
    EOR.W #$FFFF                         ;81BF75;
    INC A                                ;81BF78;

CODE_81BF79:
    CLC                                  ;81BF79;
    ADC.B $05                            ;81BF7A;
    STA.W $0005,X                        ;81BF7C;
    LDA.B $08                            ;81BF7F;
    SEC                                  ;81BF81;
    SBC.W #$0010                         ;81BF82;
    STA.W $0008,X                        ;81BF85;
    TDC                                  ;81BF88;
    STA.W $000C,X                        ;81BF89;

CODE_81BF8C:
    SEP #$30                             ;81BF8C;
    RTS                                  ;81BF8E;

CODE_81BF8F:
    LDA.B #$04                           ;81BF8F;
    STA.W $0000                          ;81BF91;

CODE_81BF94:
    JSL.L CODE_8282D3                    ;81BF94;
    BNE CODE_81C00C                      ;81BF98;
    INC.W $0000,X                        ;81BF9A;
    LDA.B #$08                           ;81BF9D;
    STA.W $000A,X                        ;81BF9F;
    LDA.W $0000                          ;81BFA2;
    STA.W $000B,X                        ;81BFA5;
    DEC A                                ;81BFA8;
    LSR A                                ;81BFA9;
    REP #$20                             ;81BFAA;
    LDA.W #$0008                         ;81BFAC;
    BCS CODE_81BFB4                      ;81BFAF;
    LDA.W #$FFF8                         ;81BFB1;

CODE_81BFB4:
    CLC                                  ;81BFB4;
    ADC.B $05                            ;81BFB5;
    STA.W $0005,X                        ;81BFB7;
    LDA.B $0C                            ;81BFBA;
    STA.W $000C,X                        ;81BFBC;
    LDA.W $0000                          ;81BFBF;
    DEC A                                ;81BFC2;
    LSR A                                ;81BFC3;
    LSR A                                ;81BFC4;
    LDA.W #$0004                         ;81BFC5;
    BCS CODE_81BFCD                      ;81BFC8;
    LDA.W #$FFFC                         ;81BFCA;

CODE_81BFCD:
    CLC                                  ;81BFCD;
    ADC.B $08                            ;81BFCE;
    STA.W $0008,X                        ;81BFD0;
    JSL.L CODE_849086                    ;81BFD3;
    AND.W #$01FF                         ;81BFD7;
    CLC                                  ;81BFDA;
    ADC.W #$0080                         ;81BFDB;
    PHA                                  ;81BFDE;
    LDA.W $0000                          ;81BFDF;
    INC A                                ;81BFE2;
    LSR A                                ;81BFE3;
    PLA                                  ;81BFE4;
    BCS CODE_81BFEB                      ;81BFE5;
    EOR.W #$FFFF                         ;81BFE7;
    INC A                                ;81BFEA;

CODE_81BFEB:
    STA.W $001A,X                        ;81BFEB;
    JSL.L CODE_849086                    ;81BFEE;
    AND.W #$03FF                         ;81BFF2;
    PHA                                  ;81BFF5;
    LDA.W $0000                          ;81BFF6;
    DEC A                                ;81BFF9;
    LSR A                                ;81BFFA;
    LSR A                                ;81BFFB;
    PLA                                  ;81BFFC;
    BCS CODE_81C002                      ;81BFFD;
    AND.W #$01FF                         ;81BFFF;

CODE_81C002:
    STA.W $001C,X                        ;81C002;
    SEP #$20                             ;81C005;
    DEC.W $0000                          ;81C007;
    BNE CODE_81BF94                      ;81C00A;

CODE_81C00C:
    SEP #$30                             ;81C00C;
    RTS                                  ;81C00E;

CODE_81C00F:
    LDA.B $02                            ;81C00F;
    ASL A                                ;81C011;
    ASL A                                ;81C012;
    ASL A                                ;81C013;
    STA.W $0000                          ;81C014;
    JSL.L CODE_849086                    ;81C017;
    AND.B #$0F                           ;81C01B;
    CLC                                  ;81C01D;
    ADC.W $0000                          ;81C01E;
    TAX                                  ;81C021;
    LDA.W DATA8_86C45B,X                 ;81C022;
    STA.B $02                            ;81C025;
    STZ.B $03                            ;81C027;
    RTS                                  ;81C029;

CODE_81C02A:
    LDX.B $01                            ;81C02A;
    JSR.W (PTR16_81C030,X)               ;81C02C;
    RTL                                  ;81C02F;

PTR16_81C030:
    dw CODE_81C036                       ;81C030;
    dw CODE_81C063                       ;81C032;
    dw CODE_81C1A4                       ;81C034;

CODE_81C036:
    JSL.L CODE_82827D                    ;81C036;
    LDA.B #$08                           ;81C03A;
    STA.B $27                            ;81C03C;
    LDA.B #$03                           ;81C03E;
    STA.B $26                            ;81C040;
    LDA.B #$02                           ;81C042;
    STA.B $12                            ;81C044;
    STZ.B $2F                            ;81C046;
    STZ.B $35                            ;81C048;
    LDA.L $7F8302                        ;81C04A;
    STA.B $11                            ;81C04E;
    REP #$20                             ;81C050;
    LDX.B #$00                           ;81C052;
    STX.B $33                            ;81C054;
    JSL.L CODE_8280B4                    ;81C056;
    SEP #$20                             ;81C05A;
    LDA.B #$01                           ;81C05C;
    JSL.L CODE_848F07                    ;81C05E;
    RTS                                  ;81C062;

CODE_81C063:
    LDX.B $02                            ;81C063;
    JSR.W (PTR16_81C0C8,X)               ;81C065;
    JSL.L CODE_8280B4                    ;81C068;
    LDA.L $7F8302                        ;81C06C;
    STA.B $11                            ;81C070;
    LDA.B $11                            ;81C072;
    AND.B #$3F                           ;81C074;
    ORA.B $33                            ;81C076;
    STA.B $11                            ;81C078;
    REP #$20                             ;81C07A;
    LDA.B $0F                            ;81C07C;
    AND.W #$003F                         ;81C07E;
    ASL A                                ;81C081;
    CLC                                  ;81C082;
    ADC.W #$C559                         ;81C083;
    STA.B $20                            ;81C086;
    SEP #$20                             ;81C088;
    JSL.L CODE_849B03                    ;81C08A;
    STZ.B $30                            ;81C08E;
    JSL.L CODE_849B43                    ;81C090;
    BEQ CODE_81C0A6                      ;81C094;
    LDA.B #$0E                           ;81C096;
    TRB.B $11                            ;81C098;
    STA.B $30                            ;81C09A;
    LDA.B $27                            ;81C09C;
    AND.B #$7F                           ;81C09E;
    BNE CODE_81C0A6                      ;81C0A0;
    LDA.B #$04                           ;81C0A2;
    STA.B $01                            ;81C0A4;

CODE_81C0A6:
    REP #$20                             ;81C0A6;
    LDA.W #$C555                         ;81C0A8;
    STA.B $20                            ;81C0AB;
    SEP #$20                             ;81C0AD;
    JSL.L CODE_849B43                    ;81C0AF;
    BEQ CODE_81C0C3                      ;81C0B3;
    LDA.B #$0E                           ;81C0B5;
    TRB.B $11                            ;81C0B7;
    LDA.B $27                            ;81C0B9;
    AND.B #$7F                           ;81C0BB;
    BNE CODE_81C0C3                      ;81C0BD;
    LDA.B #$04                           ;81C0BF;
    STA.B $01                            ;81C0C1;

CODE_81C0C3:
    JSL.L CODE_849B03                    ;81C0C3;
    RTS                                  ;81C0C7;

PTR16_81C0C8:
    dw CODE_81C0D0                       ;81C0C8;
    dw CODE_81C12F                       ;81C0CA;
    dw CODE_81C150                       ;81C0CC;
    dw CODE_81C170                       ;81C0CE;

CODE_81C0D0:
    LDX.B $03                            ;81C0D0;
    BNE CODE_81C0E1                      ;81C0D2;
    INC.B $03                            ;81C0D4;
    LDA.B #$78                           ;81C0D6;
    STA.B $34                            ;81C0D8;
    LDA.B #$01                           ;81C0DA;
    JSL.L CODE_848F07                    ;81C0DC;
    RTS                                  ;81C0E0;

CODE_81C0E1:
    REP #$10                             ;81C0E1;
    LDA.B #$00                           ;81C0E3;
    LDX.W $0BAD                          ;81C0E5;
    CPX.B $05                            ;81C0E8;
    BCC CODE_81C0EE                      ;81C0EA;
    LDA.B #$40                           ;81C0EC;

CODE_81C0EE:
    CMP.B $33                            ;81C0EE;
    BRA CODE_81C0F9                      ;81C0F0;
    LDA.B #$04                           ;81C0F2;
    STA.B $02                            ;81C0F4;
    STZ.B $03                            ;81C0F6;
    RTS                                  ;81C0F8;

CODE_81C0F9:
    LDA.B $34                            ;81C0F9;
    BEQ CODE_81C10E                      ;81C0FB;
    LDA.B $35                            ;81C0FD;
    BEQ CODE_81C10A                      ;81C0FF;
    STZ.B $35                            ;81C101;
    LDA.B #$06                           ;81C103;
    STA.B $02                            ;81C105;
    STZ.B $03                            ;81C107;
    RTS                                  ;81C109;

CODE_81C10A:
    DEC.B $34                            ;81C10A;
    BRA CODE_81C12A                      ;81C10C;

CODE_81C10E:
    LDX.B $20                            ;81C10E;
    PHX                                  ;81C110;
    LDX.W #$C551                         ;81C111;
    STX.B $20                            ;81C114;
    LDX.W #$0BA8                         ;81C116;
    JSL.L CODE_849C0E                    ;81C119;
    BCC CODE_81C125                      ;81C11D;
    LDA.B #$02                           ;81C11F;
    STA.B $02                            ;81C121;
    STZ.B $03                            ;81C123;

CODE_81C125:
    PLX                                  ;81C125;
    STX.B $20                            ;81C126;
    SEP #$10                             ;81C128;

CODE_81C12A:
    JSL.L CODE_848EEA                    ;81C12A;
    RTS                                  ;81C12E;

CODE_81C12F:
    LDX.B $03                            ;81C12F;
    BNE CODE_81C13C                      ;81C131;
    INC.B $03                            ;81C133;
    LDA.B #$02                           ;81C135;
    JSL.L CODE_848F07                    ;81C137;
    RTS                                  ;81C13B;

CODE_81C13C:
    BIT.B $0F                            ;81C13C;
    BVC CODE_81C143                      ;81C13E;
    JSR.W CODE_81C200                    ;81C140;

CODE_81C143:
    LDA.B $0F                            ;81C143;
    BPL CODE_81C14B                      ;81C145;
    STZ.B $02                            ;81C147;
    STZ.B $03                            ;81C149;

CODE_81C14B:
    JSL.L CODE_848EEA                    ;81C14B;
    RTS                                  ;81C14F;

CODE_81C150:
    LDX.B $03                            ;81C150;
    BNE CODE_81C15D                      ;81C152;
    INC.B $03                            ;81C154;
    LDA.B #$03                           ;81C156;
    JSL.L CODE_848F07                    ;81C158;
    RTS                                  ;81C15C;

CODE_81C15D:
    LDA.B $0F                            ;81C15D;
    BPL CODE_81C16B                      ;81C15F;
    LDA.B $33                            ;81C161;
    EOR.B #$40                           ;81C163;
    STA.B $33                            ;81C165;
    STZ.B $02                            ;81C167;
    STZ.B $03                            ;81C169;

CODE_81C16B:
    JSL.L CODE_848EEA                    ;81C16B;
    RTS                                  ;81C16F;

CODE_81C170:
    LDX.B $03                            ;81C170;
    JMP.W (PTR16_81C175,X)               ;81C172;

PTR16_81C175:
    dw CODE_81C17B                       ;81C175;
    dw CODE_81C184                       ;81C177;
    dw CODE_81C197                       ;81C179;

CODE_81C17B:
    LDA.B #$02                           ;81C17B;
    STA.B $03                            ;81C17D;
    JSL.L CODE_848F07                    ;81C17F;
    RTS                                  ;81C183;

CODE_81C184:
    LDA.B $0F                            ;81C184;
    BPL CODE_81C192                      ;81C186;
    LDA.B #$04                           ;81C188;
    STA.B $03                            ;81C18A;
    LDA.B #$02                           ;81C18C;
    JSL.L CODE_848F07                    ;81C18E;

CODE_81C192:
    JSL.L CODE_848EEA                    ;81C192;
    RTS                                  ;81C196;

CODE_81C197:
    LDA.B $0F                            ;81C197;
    BPL CODE_81C19F                      ;81C199;
    STZ.B $02                            ;81C19B;
    STZ.B $03                            ;81C19D;

CODE_81C19F:
    JSL.L CODE_848EEA                    ;81C19F;
    RTS                                  ;81C1A3;

CODE_81C1A4:
    LDA.B #$00                           ;81C1A4;
    JSL.L CODE_84A37F                    ;81C1A6;
    JSL.L CODE_84A4AB                    ;81C1AA;
    REP #$21                             ;81C1AE;
    JSL.L CODE_849086                    ;81C1B0;
    AND.W #$0003                         ;81C1B4;
    ASL A                                ;81C1B7;
    TAX                                  ;81C1B8;
    JSL.L CODE_849086                    ;81C1B9;
    AND.W #$0003                         ;81C1BD;
    ASL A                                ;81C1C0;
    TAY                                  ;81C1C1;
    LDA.B $05                            ;81C1C2;
    ADC.W DATA8_86C57D,X                 ;81C1C4;
    STA.W $0000                          ;81C1C7;
    LDA.B $08                            ;81C1CA;
    SEC                                  ;81C1CC;
    SBC.W DATA8_86C585,Y                 ;81C1CD;
    STA.W $0002                          ;81C1D0;
    LDA.W #$0508                         ;81C1D3;
    STA.W $0004                          ;81C1D6;
    PHX                                  ;81C1D9;
    PHY                                  ;81C1DA;
    JSL.L CODE_84A462                    ;81C1DB;
    PLX                                  ;81C1DF;
    PLY                                  ;81C1E0;
    LDA.B $05                            ;81C1E1;
    CLC                                  ;81C1E3;
    ADC.W DATA8_86C57D,X                 ;81C1E4;
    STA.W $0000                          ;81C1E7;
    LDA.B $08                            ;81C1EA;
    CLC                                  ;81C1EC;
    ADC.W DATA8_86C585,Y                 ;81C1ED;
    STA.W $0002                          ;81C1F0;
    JSL.L CODE_84A462                    ;81C1F3;
    SEP #$20                             ;81C1F7;
    JSL.L CODE_828387                    ;81C1F9;
    STZ.B $30                            ;81C1FD;
    RTS                                  ;81C1FF;

CODE_81C200:
    JSL.L CODE_828358                    ;81C200;
    BNE CODE_81C23E                      ;81C204;
    INC.W $0000,X                        ;81C206;
    LDA.B #$03                           ;81C209;
    STA.W $000A,X                        ;81C20B;
    LDA.B $18                            ;81C20E;
    STA.W $0018,X                        ;81C210;
    LDA.B $11                            ;81C213;
    AND.B #$F0                           ;81C215;
    ORA.L $7F8302                        ;81C217;
    STA.W $0011,X                        ;81C21B;
    REP #$21                             ;81C21E;
    LDA.W #$0010                         ;81C220;
    BIT.B $10                            ;81C223;
    BVS CODE_81C22A                      ;81C225;
    LDA.W #$FFF0                         ;81C227;

CODE_81C22A:
    ADC.B $05                            ;81C22A;
    STA.W $0005,X                        ;81C22C;
    LDA.B $08                            ;81C22F;
    SEC                                  ;81C231;
    SBC.W #$0010                         ;81C232;
    STA.W $0008,X                        ;81C235;
    TDC                                  ;81C238;
    STA.W $003A,X                        ;81C239;
    SEP #$20                             ;81C23C;

CODE_81C23E:
    SEP #$10                             ;81C23E;
    RTS                                  ;81C240;

CODE_81C241:
    LDX.B $01                            ;81C241;
    JSR.W (PTR16_81C24F,X)               ;81C243;
    LDA.B $11                            ;81C246;
    AND.B #$3F                           ;81C248;
    ORA.B $33                            ;81C24A;
    STA.B $11                            ;81C24C;
    RTL                                  ;81C24E;

PTR16_81C24F:
    dw CODE_81C255                       ;81C24F;
    dw CODE_81C283                       ;81C251;
    dw CODE_81C390                       ;81C253;

CODE_81C255:
    JSL.L CODE_82827D                    ;81C255;
    LDA.B #$02                           ;81C259;
    STA.B $27                            ;81C25B;
    LDA.B #$03                           ;81C25D;
    STA.B $26                            ;81C25F;
    LDA.B #$04                           ;81C261;
    STA.B $12                            ;81C263;
    STZ.B $2F                            ;81C265;
    REP #$20                             ;81C267;
    LDX.B #$00                           ;81C269;
    LDA.W $0BAD                          ;81C26B;
    CMP.B $05                            ;81C26E;
    BCC CODE_81C274                      ;81C270;
    LDX.B #$40                           ;81C272;

CODE_81C274:
    STX.B $33                            ;81C274;
    JSL.L CODE_8280B4                    ;81C276;
    SEP #$20                             ;81C27A;
    LDA.B #$00                           ;81C27C;
    JSL.L CODE_848F07                    ;81C27E;
    RTS                                  ;81C282;

CODE_81C283:
    JSL.L CODE_82806E                    ;81C283;
    BCC CODE_81C28E                      ;81C287;
    LDA.B #$04                           ;81C289;
    STA.B $01                            ;81C28B;
    RTS                                  ;81C28D;

CODE_81C28E:
    LDX.B $02                            ;81C28E;
    JSR.W (PTR16_81C2C9,X)               ;81C290;
    JSL.L CODE_8280B4                    ;81C293;
    LDA.L $7F8304                        ;81C297;
    STA.B $11                            ;81C29B;
    JSL.L CODE_849B43                    ;81C29D;
    BEQ CODE_81C2C4                      ;81C2A1;
    LDA.B #$0E                           ;81C2A3;
    TRB.B $11                            ;81C2A5;
    LDA.B $27                            ;81C2A7;
    AND.B #$7F                           ;81C2A9;
    BNE CODE_81C2C4                      ;81C2AB;
    LDA.B #$04                           ;81C2AD;
    STA.B $01                            ;81C2AF;
    LDA.B #$00                           ;81C2B1;
    JSL.L CODE_84A37F                    ;81C2B3;
    JSL.L CODE_84A4AB                    ;81C2B7;
    STZ.W $0000                          ;81C2BB;
    STZ.W $0001                          ;81C2BE;
    JMP.W CODE_81C3C1                    ;81C2C1;

CODE_81C2C4:
    JSL.L CODE_849B03                    ;81C2C4;
    RTS                                  ;81C2C8;

PTR16_81C2C9:
    dw CODE_81C2D1                       ;81C2C9;
    dw CODE_81C2F2                       ;81C2CB;
    dw CODE_81C32D                       ;81C2CD;
    dw CODE_81C368                       ;81C2CF;

CODE_81C2D1:
    LDX.B $03                            ;81C2D1;
    BNE CODE_81C2E4                      ;81C2D3;
    INC.B $03                            ;81C2D5;
    STZ.B $20                            ;81C2D7;
    STZ.B $21                            ;81C2D9;
    INC.B $30                            ;81C2DB;
    LDA.B #$00                           ;81C2DD;
    JSL.L CODE_848F07                    ;81C2DF;
    RTS                                  ;81C2E3;

CODE_81C2E4:
    JSR.W CODE_81C407                    ;81C2E4;
    BEQ CODE_81C2F1                      ;81C2E7;
    STZ.B $30                            ;81C2E9;
    LDA.B #$02                           ;81C2EB;
    STA.B $02                            ;81C2ED;
    STZ.B $03                            ;81C2EF;

CODE_81C2F1:
    RTS                                  ;81C2F1;

CODE_81C2F2:
    LDX.B $03                            ;81C2F2;
    BNE CODE_81C2FF                      ;81C2F4;
    INC.B $03                            ;81C2F6;
    LDA.B #$00                           ;81C2F8;
    JSL.L CODE_848F07                    ;81C2FA;
    RTS                                  ;81C2FE;

CODE_81C2FF:
    LDA.B $0F                            ;81C2FF;
    BPL CODE_81C30A                      ;81C301;
    LDA.B #$04                           ;81C303;
    STA.B $02                            ;81C305;
    STZ.B $03                            ;81C307;
    RTS                                  ;81C309;

CODE_81C30A:
    BIT.B #$02                           ;81C30A;
    BEQ CODE_81C328                      ;81C30C;
    REP #$20                             ;81C30E;
    LDA.W #$C5E3                         ;81C310;
    STA.B $20                            ;81C313;
    SEP #$20                             ;81C315;
    LDA.B #$2F                           ;81C317;
    JSL.L CODE_8088A2                    ;81C319;
    LDA.B #$08                           ;81C31D;
    STA.W $0000                          ;81C31F;
    STZ.W $0001                          ;81C322;
    JSR.W CODE_81C3C1                    ;81C325;

CODE_81C328:
    JSL.L CODE_848EEA                    ;81C328;
    RTS                                  ;81C32C;

CODE_81C32D:
    LDX.B $03                            ;81C32D;
    BNE CODE_81C33A                      ;81C32F;
    INC.B $03                            ;81C331;
    LDA.B #$01                           ;81C333;
    JSL.L CODE_848F07                    ;81C335;
    RTS                                  ;81C339;

CODE_81C33A:
    REP #$20                             ;81C33A;
    LDX.B #$00                           ;81C33C;
    LDA.W $0BAD                          ;81C33E;
    CMP.B $05                            ;81C341;
    BCC CODE_81C347                      ;81C343;
    LDX.B #$40                           ;81C345;

CODE_81C347:
    STX.B $33                            ;81C347;
    SEP #$20                             ;81C349;
    LDA.B $0F                            ;81C34B;
    BIT.B #$01                           ;81C34D;
    BEQ CODE_81C354                      ;81C34F;
    JSR.W CODE_81C395                    ;81C351;

CODE_81C354:
    LDA.B $0F                            ;81C354;
    BPL CODE_81C363                      ;81C356;
    JSR.W CODE_81C407                    ;81C358;
    BNE CODE_81C363                      ;81C35B;
    LDA.B #$06                           ;81C35D;
    STA.B $02                            ;81C35F;
    STZ.B $03                            ;81C361;

CODE_81C363:
    JSL.L CODE_848EEA                    ;81C363;
    RTS                                  ;81C367;

CODE_81C368:
    LDX.B $03                            ;81C368;
    BNE CODE_81C375                      ;81C36A;
    INC.B $03                            ;81C36C;
    LDA.B #$04                           ;81C36E;
    JSL.L CODE_848F07                    ;81C370;
    RTS                                  ;81C374;

CODE_81C375:
    LDA.B $0F                            ;81C375;
    BPL CODE_81C37E                      ;81C377;
    STZ.B $02                            ;81C379;
    STZ.B $03                            ;81C37B;
    RTS                                  ;81C37D;

CODE_81C37E:
    BIT.B #$02                           ;81C37E;
    BEQ CODE_81C38B                      ;81C380;
    STZ.W $0000                          ;81C382;
    STZ.W $0001                          ;81C385;
    JSR.W CODE_81C3C1                    ;81C388;

CODE_81C38B:
    JSL.L CODE_848EEA                    ;81C38B;
    RTS                                  ;81C38F;

CODE_81C390:
    JSL.L CODE_828387                    ;81C390;
    RTS                                  ;81C394;

CODE_81C395:
    JSL.L CODE_828358                    ;81C395;
    BNE CODE_81C3BE                      ;81C399;
    INC.W $0000,X                        ;81C39B;
    LDA.B #$05                           ;81C39E;
    STA.W $000A,X                        ;81C3A0;
    LDA.B $18                            ;81C3A3;
    STA.W $0018,X                        ;81C3A5;
    REP #$20                             ;81C3A8;
    LDA.B $05                            ;81C3AA;
    STA.W $0005,X                        ;81C3AC;
    LDA.B $08                            ;81C3AF;
    SEC                                  ;81C3B1;
    SBC.W #$0006                         ;81C3B2;
    STA.W $0008,X                        ;81C3B5;
    TDC                                  ;81C3B8;
    STA.W $003A,X                        ;81C3B9;
    SEP #$20                             ;81C3BC;

CODE_81C3BE:
    SEP #$20                             ;81C3BE;
    RTS                                  ;81C3C0;

CODE_81C3C1:
    REP #$10                             ;81C3C1;
    LDY.W #$0008                         ;81C3C3;

CODE_81C3C6:
    JSL.L CODE_8282D3                    ;81C3C6;
    BNE CODE_81C404                      ;81C3CA;
    INC.W $0000,X                        ;81C3CC;
    LDA.B #$01                           ;81C3CF;
    STA.W $000A,X                        ;81C3D1;
    LDA.B $18                            ;81C3D4;
    STA.W $0018,X                        ;81C3D6;
    REP #$21                             ;81C3D9;
    LDA.B $05                            ;81C3DB;
    ADC.W DATA8_86C5EF,Y                 ;81C3DD;
    STA.W $0005,X                        ;81C3E0;
    LDA.B $08                            ;81C3E3;
    CLC                                  ;81C3E5;
    ADC.W DATA8_86C5F1,Y                 ;81C3E6;
    SEC                                  ;81C3E9;
    SBC.W $0000                          ;81C3EA;
    STA.W $0008,X                        ;81C3ED;
    LDA.W DATA8_86C5FB,Y                 ;81C3F0;
    STA.W $001A,X                        ;81C3F3;
    LDA.W DATA8_86C5FD,Y                 ;81C3F6;
    STA.W $001C,X                        ;81C3F9;
    SEP #$20                             ;81C3FC;
    DEY                                  ;81C3FE;
    DEY                                  ;81C3FF;
    DEY                                  ;81C400;
    DEY                                  ;81C401;
    BPL CODE_81C3C6                      ;81C402;

CODE_81C404:
    SEP #$20                             ;81C404;
    RTS                                  ;81C406;

CODE_81C407:
    REP #$10                             ;81C407;
    LDX.B $20                            ;81C409;
    PHX                                  ;81C40B;
    LDX.W #$C5E7                         ;81C40C;
    STX.B $20                            ;81C40F;
    LDX.W #$0BA8                         ;81C411;
    JSL.L CODE_849C0E                    ;81C414;
    BCC CODE_81C41F                      ;81C418;
    LDY.W #$0001                         ;81C41A;
    BRA CODE_81C422                      ;81C41D;

CODE_81C41F:
    LDY.W #$0000                         ;81C41F;

CODE_81C422:
    PLX                                  ;81C422;
    STX.B $20                            ;81C423;
    SEP #$10                             ;81C425;
    TYA                                  ;81C427;
    RTS                                  ;81C428;

CODE_81C429:
    LDX.B $01                            ;81C429;
    JMP.W (PTR16_81C42E,X)               ;81C42B;

PTR16_81C42E:
    dw CODE_81C436                       ;81C42E;
    dw CODE_81C48E                       ;81C430;
    dw CODE_81C530                       ;81C432;
    dw CODE_81C9C4                       ;81C434;

CODE_81C436:
    LDA.B $02                            ;81C436;
    BNE CODE_81C459                      ;81C438;
    JSL.L CODE_84AAD3                    ;81C43A;
    BEQ CODE_81C444                      ;81C43E;
    JML.L CODE_828398                    ;81C440;

CODE_81C444:
    LDA.B #$3C                           ;81C444;
    STA.B $34                            ;81C446;
    INC.B $02                            ;81C448;
    JSL.L CODE_849FE6                    ;81C44A;
    LDA.W $1F26                          ;81C44E;
    BEQ CODE_81C459                      ;81C451;
    LDA.B #$2E                           ;81C453;
    JSL.L CODE_8087A2                    ;81C455;

CODE_81C459:
    DEC.B $34                            ;81C459;
    BEQ CODE_81C45E                      ;81C45B;
    RTL                                  ;81C45D;

CODE_81C45E:
    JSL.L CODE_82827D                    ;81C45E;
    LDA.B $11                            ;81C462;
    AND.B #$0E                           ;81C464;
    STA.B $33                            ;81C466;
    LDA.B #$04                           ;81C468;
    STA.B $12                            ;81C46A;
    STZ.B $02                            ;81C46C;
    STZ.B $36                            ;81C46E;
    LDA.B #$FF                           ;81C470;
    STA.B $2F                            ;81C472;
    STZ.B $39                            ;81C474;
    STZ.B $3A                            ;81C476;
    STZ.B $3C                            ;81C478;
    LDA.B #$03                           ;81C47A;
    STA.B $0C                            ;81C47C;
    STZ.B $3B                            ;81C47E;
    LDA.B #$04                           ;81C480;
    STA.B $26                            ;81C482;
    REP #$20                             ;81C484;
    LDA.W #$C607                         ;81C486;
    STA.B $20                            ;81C489;
    SEP #$20                             ;81C48B;
    RTL                                  ;81C48D;

CODE_81C48E:
    LDX.B $02                            ;81C48E;
    JSR.W (PTR16_81C497,X)               ;81C490;
    JML.L CODE_8280B4                    ;81C493;

PTR16_81C497:
    dw CODE_81C49F                       ;81C497;
    dw CODE_81C4BE                       ;81C499;
    dw CODE_81C4EB                       ;81C49B;
    dw CODE_81C510                       ;81C49D;

CODE_81C49F:
    LDA.B #$02                           ;81C49F;
    STA.B $02                            ;81C4A1;
    LDA.B #$01                           ;81C4A3;
    JSR.W CODE_81CA35                    ;81C4A5;
    REP #$20                             ;81C4A8;
    LDA.B $08                            ;81C4AA;
    SEC                                  ;81C4AC;
    SBC.W #$0010                         ;81C4AD;
    STA.B $08                            ;81C4B0;
    LDA.W #$FF00                         ;81C4B2;
    STA.B $1C                            ;81C4B5;
    SEP #$20                             ;81C4B7;
    LDA.B #$28                           ;81C4B9;
    STA.B $34                            ;81C4BB;
    RTS                                  ;81C4BD;

CODE_81C4BE:
    JSL.L CODE_82825D                    ;81C4BE;
    JSL.L CODE_848EEA                    ;81C4C2;
    LDA.B $34                            ;81C4C6;
    BEQ CODE_81C4CE                      ;81C4C8;
    DEC.B $34                            ;81C4CA;
    BNE CODE_81C4EA                      ;81C4CC;

CODE_81C4CE:
    JSL.L CODE_8491BE                    ;81C4CE;
    LDA.B $2B                            ;81C4D2;
    AND.B #$04                           ;81C4D4;
    BEQ CODE_81C4EA                      ;81C4D6;
    LDA.B #$04                           ;81C4D8;
    STA.B $02                            ;81C4DA;
    LDA.B #$02                           ;81C4DC;
    JSL.L CODE_848F07                    ;81C4DE;
    REP #$20                             ;81C4E2;
    TDC                                  ;81C4E4;
    STA.W $1F0E                          ;81C4E5;
    SEP #$20                             ;81C4E8;

CODE_81C4EA:
    RTS                                  ;81C4EA;

CODE_81C4EB:
    JSL.L CODE_848EEA                    ;81C4EB;
    INC.B $34                            ;81C4EF;
    LDA.B $34                            ;81C4F1;
    LSR A                                ;81C4F3;
    BCC CODE_81C50B                      ;81C4F4;
    LDA.B #$0C                           ;81C4F6;
    JSL.L CODE_8088CD                    ;81C4F8;
    LDA.B $27                            ;81C4FC;
    AND.B #$7F                           ;81C4FE;
    INC A                                ;81C500;
    STA.B $27                            ;81C501;
    CMP.B #$20                           ;81C503;
    BCC CODE_81C50B                      ;81C505;
    LDA.B #$06                           ;81C507;
    STA.B $02                            ;81C509;

CODE_81C50B:
    LDA.B #$80                           ;81C50B;
    TSB.B $27                            ;81C50D;
    RTS                                  ;81C50F;

CODE_81C510:
    JSL.L CODE_848EEA                    ;81C510;
    LDA.B $0F                            ;81C514;
    BPL CODE_81C52F                      ;81C516;
    JSL.L CODE_849FFE                    ;81C518;
    LDA.B #$04                           ;81C51C;
    STA.B $01                            ;81C51E;
    STZ.B $02                            ;81C520;
    STZ.B $03                            ;81C522;
    LDA.W $1F26                          ;81C524;
    BEQ CODE_81C52F                      ;81C527;
    LDA.B #$1E                           ;81C529;
    JSL.L CODE_8087A2                    ;81C52B;

CODE_81C52F:
    RTS                                  ;81C52F;

CODE_81C530:
    LDA.B $33                            ;81C530;
    TSB.B $11                            ;81C532;
    LDX.B $02                            ;81C534;
    JSR.W (PTR16_81C5D7,X)               ;81C536;
    LDA.B #$0C                           ;81C539;
    LDX.B $3C                            ;81C53B;
    BEQ CODE_81C541                      ;81C53D;
    LDA.B #$05                           ;81C53F;

CODE_81C541:
    LDX.B $3A                            ;81C541;
    BEQ CODE_81C547                      ;81C543;
    LDA.B #$00                           ;81C545;

CODE_81C547:
    STA.B $28                            ;81C547;
    JSL.L CODE_849B43                    ;81C549;
    BEQ CODE_81C58E                      ;81C54D;
    BMI CODE_81C5B8                      ;81C54F;
    LDA.B $3C                            ;81C551;
    BNE CODE_81C58E                      ;81C553;
    LDA.B #$3C                           ;81C555;
    STA.B $3C                            ;81C557;
    LDA.B $02                            ;81C559;
    STA.B $3D                            ;81C55B;
    LDA.B #$08                           ;81C55D;
    STA.B $02                            ;81C55F;
    LDA.B $17                            ;81C561;
    STA.B $2C                            ;81C563;
    LDA.B $0F                            ;81C565;
    STA.B $10                            ;81C567;
    LDA.B $13                            ;81C569;
    STA.B $3E                            ;81C56B;
    LDA.B $14                            ;81C56D;
    STA.B $31                            ;81C56F;
    LDA.B $15                            ;81C571;
    STA.B $32                            ;81C573;
    LDA.B #$04                           ;81C575;
    JSR.W CODE_81CA35                    ;81C577;
    LDA.B #$13                           ;81C57A;
    JSL.L CODE_8088A2                    ;81C57C;
    LDA.W $1F1D                          ;81C580;
    CMP.B #$0D                           ;81C583;
    BEQ CODE_81C58B                      ;81C585;
    CMP.B #$16                           ;81C587;
    BNE CODE_81C58E                      ;81C589;

CODE_81C58B:
    JSR.W CODE_81CAA7                    ;81C58B;

CODE_81C58E:
    LDA.B $3C                            ;81C58E;
    BEQ CODE_81C59D                      ;81C590;
    DEC A                                ;81C592;
    STA.B $3C                            ;81C593;
    AND.B #$03                           ;81C595;
    BNE CODE_81C59D                      ;81C597;
    LDA.B #$0E                           ;81C599;
    TRB.B $11                            ;81C59B;

CODE_81C59D:
    LDA.B #$80                           ;81C59D;
    TSB.B $27                            ;81C59F;
    LDA.B $3B                            ;81C5A1;
    BNE CODE_81C5A9                      ;81C5A3;
    JSL.L CODE_849B03                    ;81C5A5;

CODE_81C5A9:
    LDA.W $0BCF                          ;81C5A9;
    AND.B #$7F                           ;81C5AC;
    BNE CODE_81C5B4                      ;81C5AE;
    LDA.B #$01                           ;81C5B0;
    STA.B $30                            ;81C5B2;

CODE_81C5B4:
    JML.L CODE_8280B4                    ;81C5B4;

CODE_81C5B8:
    LDA.B #$06                           ;81C5B8;
    STA.B $01                            ;81C5BA;
    STZ.B $02                            ;81C5BC;
    STZ.B $03                            ;81C5BE;
    LDA.B #$01                           ;81C5C0;
    TSB.W $0BD8                          ;81C5C2;
    TSB.W $1F0C                          ;81C5C5;
    LDA.B #$04                           ;81C5C8;
    JSR.W CODE_81CA35                    ;81C5CA;
    LDA.B #$13                           ;81C5CD;
    JSL.L CODE_8088A2                    ;81C5CF;
    JML.L CODE_8280B4                    ;81C5D3;

PTR16_81C5D7:
    dw CODE_81C5E3                       ;81C5D7;
    dw CODE_81C694                       ;81C5D9;
    dw CODE_81C8B6                       ;81C5DB;
    dw CODE_81C92E                       ;81C5DD;
    dw CODE_81C976                       ;81C5DF;
    dw CODE_81C997                       ;81C5E1;

CODE_81C5E3:
    LDX.B $03                            ;81C5E3;
    JMP.W (PTR16_81C5E8,X)               ;81C5E5;

PTR16_81C5E8:
    dw CODE_81C5F2                       ;81C5E8;
    dw CODE_81C61F                       ;81C5EA;
    dw CODE_81C639                       ;81C5EC;
    dw CODE_81C664                       ;81C5EE;
    dw CODE_81C684                       ;81C5F0;

CODE_81C5F2:
    LDA.B #$02                           ;81C5F2;
    STA.B $03                            ;81C5F4;
    JSL.L CODE_849086                    ;81C5F6;
    AND.B #$03                           ;81C5FA;
    ASL A                                ;81C5FC;
    TAX                                  ;81C5FD;
    LDA.B $11                            ;81C5FE;
    ASL A                                ;81C600;
    ASL A                                ;81C601;
    REP #$20                             ;81C602;
    LDA.W #$0180                         ;81C604;
    BCS CODE_81C60C                      ;81C607;
    LDA.W #$FE80                         ;81C609;

CODE_81C60C:
    STA.B $1A                            ;81C60C;
    LDA.W DATA8_86C6F5,X                 ;81C60E;
    STA.B $1C                            ;81C611;
    SEP #$20                             ;81C613;
    LDA.B #$2C                           ;81C615;
    STA.B $1E                            ;81C617;
    LDA.B #$02                           ;81C619;
    JSR.W CODE_81CA35                    ;81C61B;
    RTS                                  ;81C61E;

CODE_81C61F:
    JSL.L CODE_84AC9B                    ;81C61F;
    JSL.L CODE_848EEA                    ;81C623;
    LDA.B $0F                            ;81C627;
    BEQ CODE_81C638                      ;81C629;
    JSR.W CODE_81CA45                    ;81C62B;
    LDA.B #$04                           ;81C62E;
    STA.B $03                            ;81C630;
    LDA.B $17                            ;81C632;
    AND.B #$7F                           ;81C634;
    STA.B $17                            ;81C636;

CODE_81C638:
    RTS                                  ;81C638;

CODE_81C639:
    JSL.L CODE_84AC9B                    ;81C639;
    JSL.L CODE_8281E8                    ;81C63D;
    JSL.L CODE_8491BE                    ;81C641;
    JSL.L CODE_848EEA                    ;81C645;
    LDA.B $17                            ;81C649;
    BPL CODE_81C663                      ;81C64B;
    AND.B #$7F                           ;81C64D;
    STA.B $17                            ;81C64F;
    LDA.B $0F                            ;81C651;
    BEQ CODE_81C663                      ;81C653;
    BMI CODE_81C65A                      ;81C655;
    JMP.W CODE_81CA45                    ;81C657;

CODE_81C65A:
    LDA.B #$06                           ;81C65A;
    STA.B $03                            ;81C65C;
    LDA.B #$01                           ;81C65E;
    JSR.W CODE_81CA35                    ;81C660;

CODE_81C663:
    RTS                                  ;81C663;

CODE_81C664:
    JSL.L CODE_84AC9B                    ;81C664;
    JSL.L CODE_8281E8                    ;81C668;
    JSL.L CODE_8491BE                    ;81C66C;
    LDA.B $2B                            ;81C670;
    AND.B #$04                           ;81C672;
    BEQ CODE_81C683                      ;81C674;
    LDA.B #$08                           ;81C676;
    STA.B $03                            ;81C678;
    LDA.B #$00                           ;81C67A;
    JSR.W CODE_81CA35                    ;81C67C;
    LDA.B #$1E                           ;81C67F;
    STA.B $34                            ;81C681;

CODE_81C683:
    RTS                                  ;81C683;

CODE_81C684:
    JSL.L CODE_84AC9B                    ;81C684;
    JSL.L CODE_848EEA                    ;81C688;
    DEC.B $34                            ;81C68C;
    BNE CODE_81C693                      ;81C68E;
    JMP.W CODE_81C9F7                    ;81C690;

CODE_81C693:
    RTS                                  ;81C693;

CODE_81C694:
    LDX.B $03                            ;81C694;
    JMP.W (PTR16_81C699,X)               ;81C696;

PTR16_81C699:
    dw CODE_81C6A5                       ;81C699;
    dw CODE_81C6E9                       ;81C69B;
    dw CODE_81C740                       ;81C69D;
    dw CODE_81C7AB                       ;81C69F;
    dw CODE_81C86B                       ;81C6A1;
    dw CODE_81C89C                       ;81C6A3;

CODE_81C6A5:
    LDA.B #$02                           ;81C6A5;
    STA.B $03                            ;81C6A7;
    JSL.L CODE_84AC9B                    ;81C6A9;
    LDA.B #$01                           ;81C6AD;
    JSR.W CODE_81CA35                    ;81C6AF;
    REP #$20                             ;81C6B2;
    LDA.W $0BAD                          ;81C6B4;
    SEC                                  ;81C6B7;
    SBC.B $05                            ;81C6B8;
    BCS CODE_81C6C0                      ;81C6BA;
    EOR.W #$FFFF                         ;81C6BC;
    INC A                                ;81C6BF;

CODE_81C6C0:
    XBA                                  ;81C6C0;
    AND.W #$FF00                         ;81C6C1;
    STA.W $4204                          ;81C6C4;
    LDA.W #$002A                         ;81C6C7;
    STA.W $4206                          ;81C6CA;
    LDA.W #$0720                         ;81C6CD;
    STA.B $1C                            ;81C6D0;
    LDX.B #$2C                           ;81C6D2;
    STX.B $1E                            ;81C6D4;
    NOP                                  ;81C6D6;
    LDA.B $10                            ;81C6D7;
    ASL A                                ;81C6D9;
    ASL A                                ;81C6DA;
    LDA.W $4214                          ;81C6DB;
    BCS CODE_81C6E4                      ;81C6DE;
    EOR.W #$FFFF                         ;81C6E0;
    INC A                                ;81C6E3;

CODE_81C6E4:
    STA.B $1A                            ;81C6E4;
    SEP #$20                             ;81C6E6;
    RTS                                  ;81C6E8;

CODE_81C6E9:
    JSL.L CODE_848EEA                    ;81C6E9;
    JSL.L CODE_8281E8                    ;81C6ED;
    JSL.L CODE_8491BE                    ;81C6F1;
    LDA.B $1D                            ;81C6F5;
    BPL CODE_81C73F                      ;81C6F7;
    LDA.B #$04                           ;81C6F9;
    STA.B $03                            ;81C6FB;
    LDA.B #$07                           ;81C6FD;
    JSL.L CODE_848F07                    ;81C6FF;
    LDA.B #$48                           ;81C703;
    STA.B $34                            ;81C705;
    REP #$20                             ;81C707;
    LDA.W #$FF00                         ;81C709;
    STA.B $1C                            ;81C70C;
    STZ.B $1A                            ;81C70E;
    LDA.W #$C611                         ;81C710;
    STA.B $20                            ;81C713;
    SEP #$20                             ;81C715;
    LDA.B #$01                           ;81C717;
    STA.B $39                            ;81C719;
    STA.B $3A                            ;81C71B;
    JSL.L CODE_828358                    ;81C71D;
    BNE CODE_81C73D                      ;81C721;
    INC.W $0000,X                        ;81C723;
    LDA.B #$1D                           ;81C726;
    STA.W $000A,X                        ;81C728;
    LDA.B $11                            ;81C72B;
    AND.B #$40                           ;81C72D;
    STA.W $0011,X                        ;81C72F;
    REP #$20                             ;81C732;
    LDA.B $05                            ;81C734;
    STA.W $0005,X                        ;81C736;
    TDC                                  ;81C739;
    STA.W $000C,X                        ;81C73A;

CODE_81C73D:
    SEP #$30                             ;81C73D;

CODE_81C73F:
    RTS                                  ;81C73F;

CODE_81C740:
    JSL.L CODE_848EEA                    ;81C740;
    JSL.L CODE_82825D                    ;81C744;
    JSL.L CODE_8491BE                    ;81C748;
    LDA.B $2B                            ;81C74C;
    AND.B #$04                           ;81C74E;
    BEQ CODE_81C766                      ;81C750;
    REP #$20                             ;81C752;
    LDA.W #$0200                         ;81C754;
    STA.B $1C                            ;81C757;
    SEP #$20                             ;81C759;
    LDA.B #$08                           ;81C75B;
    STA.B $03                            ;81C75D;
    LDA.B #$08                           ;81C75F;
    JSL.L CODE_848F07                    ;81C761;
    RTS                                  ;81C765;

CODE_81C766:
    LDA.W $0BCF                          ;81C766;
    AND.B #$7F                           ;81C769;
    BEQ CODE_81C7AA                      ;81C76B;
    LDA.W $0C32                          ;81C76D;
    ORA.W $1F0C                          ;81C770;
    BNE CODE_81C7AA                      ;81C773;
    REP #$10                             ;81C775;
    LDX.W #$0BA8                         ;81C777;
    JSL.L CODE_849C0E                    ;81C77A;
    SEP #$10                             ;81C77E;
    BCC CODE_81C7AA                      ;81C780;
    REP #$20                             ;81C782;
    LDA.W $0BB0                          ;81C784;
    CMP.B $08                            ;81C787;
    SEP #$20                             ;81C789;
    BCC CODE_81C7AA                      ;81C78B;
    LDA.B #$06                           ;81C78D;
    STA.B $03                            ;81C78F;
    JSL.L CODE_849F14                    ;81C791;
    LDA.B #$09                           ;81C795;
    JSL.L CODE_848F07                    ;81C797;
    REP #$20                             ;81C79B;
    LDA.W #$01E1                         ;81C79D;
    STA.B $34                            ;81C7A0;
    SEP #$20                             ;81C7A2;
    LDA.B #$20                           ;81C7A4;
    STA.B $3B                            ;81C7A6;
    STZ.B $39                            ;81C7A8;

CODE_81C7AA:
    RTS                                  ;81C7AA;

CODE_81C7AB:
    REP #$20                             ;81C7AB;
    LDA.B $05                            ;81C7AD;
    STA.W $0BAD                          ;81C7AF;
    LDA.B $08                            ;81C7B2;
    CLC                                  ;81C7B4;
    ADC.W #$0020                         ;81C7B5;
    STA.W $0BB0                          ;81C7B8;
    SEP #$20                             ;81C7BB;
    JSL.L CODE_848EEA                    ;81C7BD;
    LDA.W $0BE3                          ;81C7C1;
    AND.B #$EF                           ;81C7C4;
    ORA.W $0BE2                          ;81C7C6;
    REP #$20                             ;81C7C9;
    BEQ CODE_81C7DA                      ;81C7CB;
    LDA.B $34                            ;81C7CD;
    SEC                                  ;81C7CF;
    SBC.W #$0010                         ;81C7D0;
    BCS CODE_81C7D8                      ;81C7D3;
    LDA.W #$0001                         ;81C7D5;

CODE_81C7D8:
    STA.B $34                            ;81C7D8;

CODE_81C7DA:
    DEC.B $34                            ;81C7DA;
    SEP #$20                             ;81C7DC;
    BEQ CODE_81C837                      ;81C7DE;
    DEC.B $3B                            ;81C7E0;
    BNE CODE_81C818                      ;81C7E2;
    LDA.W $0BCF                          ;81C7E4;
    AND.B #$7F                           ;81C7E7;
    DEC A                                ;81C7E9;
    BNE CODE_81C7F7                      ;81C7EA;
    LDA.B #$02                           ;81C7EC;
    STA.W $0BCE                          ;81C7EE;
    JSL.L CODE_849F2A                    ;81C7F1;
    BRA CODE_81C847                      ;81C7F5;

CODE_81C7F7:
    ORA.B #$80                           ;81C7F7;
    STA.W $0BCF                          ;81C7F9;
    JSL.L CODE_849F14                    ;81C7FC;
    LDA.B $27                            ;81C800;
    AND.B #$7F                           ;81C802;
    INC A                                ;81C804;
    CMP.B #$21                           ;81C805;
    BCC CODE_81C80A                      ;81C807;
    DEC A                                ;81C809;

CODE_81C80A:
    ORA.B #$80                           ;81C80A;
    STA.B $27                            ;81C80C;
    LDA.B #$4F                           ;81C80E;
    JSL.L CODE_8088CD                    ;81C810;
    LDA.B #$20                           ;81C814;
    STA.B $3B                            ;81C816;

CODE_81C818:
    LDA.B $17                            ;81C818;
    BPL CODE_81C836                      ;81C81A;
    AND.B #$7F                           ;81C81C;
    STA.B $17                            ;81C81E;
    LDA.B $0F                            ;81C820;
    REP #$30                             ;81C822;
    AND.W #$007F                         ;81C824;
    CLC                                  ;81C827;
    ADC.W #$009F                         ;81C828;
    ASL A                                ;81C82B;
    TAY                                  ;81C82C;
    LDX.W #$0040                         ;81C82D;
    JSL.L CODE_828000                    ;81C830;
    SEP #$30                             ;81C834;

CODE_81C836:
    RTS                                  ;81C836;

CODE_81C837:
    JSL.L CODE_849F79                    ;81C837;
    REP #$20                             ;81C83B;
    LDA.B $08                            ;81C83D;
    SEC                                  ;81C83F;
    SBC.W #$0008                         ;81C840;
    STA.B $08                            ;81C843;
    SEP #$20                             ;81C845;

CODE_81C847:
    LDA.B #$08                           ;81C847;
    JSL.L CODE_848F07                    ;81C849;
    STZ.B $3B                            ;81C84D;
    REP #$20                             ;81C84F;
    LDA.W #$0200                         ;81C851;
    STA.B $1C                            ;81C854;
    SEP #$20                             ;81C856;
    LDA.B #$08                           ;81C858;
    STA.B $03                            ;81C85A;
    REP #$10                             ;81C85C;
    LDY.W #$013E                         ;81C85E;
    LDX.W #$0040                         ;81C861;
    JSL.L CODE_828000                    ;81C864;
    SEP #$10                             ;81C868;
    RTS                                  ;81C86A;

CODE_81C86B:
    JSL.L CODE_82825D                    ;81C86B;
    JSL.L CODE_848EEA                    ;81C86F;
    JSL.L CODE_8491BE                    ;81C873;
    LDA.B $2B                            ;81C877;
    AND.B #$08                           ;81C879;
    BEQ CODE_81C89B                      ;81C87B;
    LDA.B #$0A                           ;81C87D;
    STA.B $03                            ;81C87F;
    STZ.B $39                            ;81C881;
    STZ.B $3A                            ;81C883;
    LDA.B #$01                           ;81C885;
    JSR.W CODE_81CA35                    ;81C887;
    STZ.B $1C                            ;81C88A;
    STZ.B $1D                            ;81C88C;
    LDA.B #$2C                           ;81C88E;
    STA.B $1E                            ;81C890;
    REP #$20                             ;81C892;
    LDA.W #$C607                         ;81C894;
    STA.B $20                            ;81C897;
    SEP #$20                             ;81C899;

CODE_81C89B:
    RTS                                  ;81C89B;

CODE_81C89C:
    JSL.L CODE_84AC9B                    ;81C89C;
    JSL.L CODE_848EEA                    ;81C8A0;
    JSL.L CODE_8281E8                    ;81C8A4;
    JSL.L CODE_8491BE                    ;81C8A8;
    LDA.B $2B                            ;81C8AC;
    AND.B #$04                           ;81C8AE;
    BEQ CODE_81C8B5                      ;81C8B0;
    JMP.W CODE_81C9F7                    ;81C8B2;

CODE_81C8B5:
    RTS                                  ;81C8B5;

CODE_81C8B6:
    LDX.B $03                            ;81C8B6;
    JMP.W (PTR16_81C8BB,X)               ;81C8B8;

PTR16_81C8BB:
    dw CODE_81C8C1                       ;81C8BB;
    dw CODE_81C8CC                       ;81C8BD;
    dw CODE_81C922                       ;81C8BF;

CODE_81C8C1:
    LDA.B #$02                           ;81C8C1;
    STA.B $03                            ;81C8C3;
    LDA.B #$03                           ;81C8C5;
    JSL.L CODE_848F07                    ;81C8C7;
    RTS                                  ;81C8CB;

CODE_81C8CC:
    JSL.L CODE_84AC9B                    ;81C8CC;
    JSL.L CODE_848EEA                    ;81C8D0;
    LDA.B $0F                            ;81C8D4;
    BEQ CODE_81C921                      ;81C8D6;
    LDA.B #$03                           ;81C8D8;
    STA.B $0B                            ;81C8DA;
    LDA.B #$04                           ;81C8DC;
    STA.B $03                            ;81C8DE;
    LDA.B #$1E                           ;81C8E0;
    JSL.L CODE_8088A2                    ;81C8E2;

CODE_81C8E6:
    JSL.L CODE_828321                    ;81C8E6;
    BNE CODE_81C91F                      ;81C8EA;
    INC.W $0000,X                        ;81C8EC;
    LDA.B #$08                           ;81C8EF;
    STA.W $000A,X                        ;81C8F1;
    LDA.B $0B                            ;81C8F4;
    STA.W $000B,X                        ;81C8F6;
    REP #$20                             ;81C8F9;
    TDC                                  ;81C8FB;
    STA.W $000C,X                        ;81C8FC;
    LDA.B $0B                            ;81C8FF;
    AND.W #$0003                         ;81C901;
    ASL A                                ;81C904;
    ASL A                                ;81C905;
    TAY                                  ;81C906;
    LDA.W DATA8_86C6E5,Y                 ;81C907;
    CLC                                  ;81C90A;
    ADC.B $05                            ;81C90B;
    STA.W $0005,X                        ;81C90D;
    LDA.W DATA8_86C6E7,Y                 ;81C910;
    CLC                                  ;81C913;
    ADC.B $08                            ;81C914;
    STA.W $0008,X                        ;81C916;
    SEP #$20                             ;81C919;
    DEC.B $0B                            ;81C91B;
    BPL CODE_81C8E6                      ;81C91D;

CODE_81C91F:
    SEP #$30                             ;81C91F;

CODE_81C921:
    RTS                                  ;81C921;

CODE_81C922:
    JSL.L CODE_848EEA                    ;81C922;
    LDA.B $0F                            ;81C926;
    BPL CODE_81C92D                      ;81C928;
    JMP.W CODE_81C9F7                    ;81C92A;

CODE_81C92D:
    RTS                                  ;81C92D;

CODE_81C92E:
    LDX.B $03                            ;81C92E;
    JMP.W (PTR16_81C933,X)               ;81C930;

PTR16_81C933:
    dw CODE_81C939                       ;81C933;
    dw CODE_81C947                       ;81C935;
    dw CODE_81C96A                       ;81C937;

CODE_81C939:
    JSL.L CODE_84AC9B                    ;81C939;
    LDA.B #$02                           ;81C93D;
    STA.B $03                            ;81C93F;
    LDA.B #$03                           ;81C941;
    JSR.W CODE_81CA35                    ;81C943;
    RTS                                  ;81C946;

CODE_81C947:
    JSL.L CODE_848EEA                    ;81C947;
    LDA.B $17                            ;81C94B;
    BPL CODE_81C969                      ;81C94D;
    AND.B #$7F                           ;81C94F;
    STA.B $17                            ;81C951;
    LDA.B $0F                            ;81C953;
    BEQ CODE_81C969                      ;81C955;
    BMI CODE_81C95C                      ;81C957;
    JMP.W CODE_81CA45                    ;81C959;

CODE_81C95C:
    LDA.B #$04                           ;81C95C;
    STA.B $03                            ;81C95E;
    LDA.B #$00                           ;81C960;
    JSR.W CODE_81CA35                    ;81C962;
    LDA.B #$1E                           ;81C965;
    STA.B $34                            ;81C967;

CODE_81C969:
    RTS                                  ;81C969;

CODE_81C96A:
    JSL.L CODE_848EEA                    ;81C96A;
    DEC.B $34                            ;81C96E;
    BNE CODE_81C975                      ;81C970;
    JMP.W CODE_81C9F7                    ;81C972;

CODE_81C975:
    RTS                                  ;81C975;

CODE_81C976:
    JSL.L CODE_848EEA                    ;81C976;
    LDA.B $0F                            ;81C97A;
    BPL CODE_81C996                      ;81C97C;
    LDA.B $3D                            ;81C97E;
    STA.B $02                            ;81C980;
    LDA.B $2C                            ;81C982;
    STA.B $17                            ;81C984;
    LDA.B $31                            ;81C986;
    STA.B $14                            ;81C988;
    LDA.B $32                            ;81C98A;
    STA.B $15                            ;81C98C;
    LDA.B $3E                            ;81C98E;
    STA.B $13                            ;81C990;
    LDA.B $10                            ;81C992;
    STA.B $0F                            ;81C994;

CODE_81C996:
    RTS                                  ;81C996;

CODE_81C997:
    LDA.B $03                            ;81C997;
    BNE CODE_81C9AE                      ;81C999;
    LDA.B #$01                           ;81C99B;
    JSR.W CODE_81CA35                    ;81C99D;
    REP #$20                             ;81C9A0;
    STZ.B $1C                            ;81C9A2;
    STZ.B $1A                            ;81C9A4;
    SEP #$20                             ;81C9A6;
    LDA.B #$2C                           ;81C9A8;
    STA.B $1E                            ;81C9AA;
    INC.B $03                            ;81C9AC;

CODE_81C9AE:
    JSL.L CODE_848EEA                    ;81C9AE;
    JSL.L CODE_8281E8                    ;81C9B2;
    JSL.L CODE_8491BE                    ;81C9B6;
    LDA.B $2B                            ;81C9BA;
    AND.B #$04                           ;81C9BC;
    BEQ CODE_81C9C3                      ;81C9BE;
    JMP.W CODE_81C9F7                    ;81C9C0;

CODE_81C9C3:
    RTS                                  ;81C9C3;

CODE_81C9C4:
    JSL.L CODE_84A66D                    ;81C9C4;
    BPL CODE_81C9E3                      ;81C9C8;
    LDA.W $1F7A                          ;81C9CA;
    CMP.B #$09                           ;81C9CD;
    BCC CODE_81C9DF                      ;81C9CF;
    LDA.B #$1C                           ;81C9D1;
    JSL.L CODE_8087A2                    ;81C9D3;
    LDA.B #$F5                           ;81C9D7;
    LDY.B #$03                           ;81C9D9;
    JSL.L CODE_80887F                    ;81C9DB;

CODE_81C9DF:
    JML.L CODE_828398                    ;81C9DF;

CODE_81C9E3:
    LDA.W $1F15                          ;81C9E3;
    BNE CODE_81C9EC                      ;81C9E6;
    JSL.L CODE_848EEA                    ;81C9E8;

CODE_81C9EC:
    LDA.B $03                            ;81C9EC;
    CMP.B #$14                           ;81C9EE;
    BCS CODE_81C9F6                      ;81C9F0;
    JML.L CODE_8280B4                    ;81C9F2;

CODE_81C9F6:
    RTL                                  ;81C9F6;

CODE_81C9F7:
    REP #$20                             ;81C9F7;
    LDA.B $05                            ;81C9F9;
    SEC                                  ;81C9FB;
    SBC.W $0BAD                          ;81C9FC;
    BCS CODE_81CA05                      ;81C9FF;
    EOR.W #$FFFF                         ;81CA01;
    INC A                                ;81CA04;

CODE_81CA05:
    CMP.W #$0080                         ;81CA05;
    SEP #$20                             ;81CA08;
    BCS CODE_81CA14                      ;81CA0A;
    CMP.B #$50                           ;81CA0C;
    BCS CODE_81CA18                      ;81CA0E;
    LDA.B #$00                           ;81CA10;
    BRA CODE_81CA1A                      ;81CA12;

CODE_81CA14:
    LDA.B #$20                           ;81CA14;
    BRA CODE_81CA1A                      ;81CA16;

CODE_81CA18:
    LDA.B #$40                           ;81CA18;

CODE_81CA1A:
    LDX.B $36                            ;81CA1A;
    BEQ CODE_81CA21                      ;81CA1C;
    CLC                                  ;81CA1E;
    ADC.B #$60                           ;81CA1F;

CODE_81CA21:
    STA.B $37                            ;81CA21;
    JSL.L CODE_849086                    ;81CA23;
    AND.B #$1F                           ;81CA27;
    CLC                                  ;81CA29;
    ADC.B $37                            ;81CA2A;
    TAX                                  ;81CA2C;
    LDA.W DATA8_86C625,X                 ;81CA2D;
    STA.B $02                            ;81CA30;
    STZ.B $03                            ;81CA32;
    RTS                                  ;81CA34;

CODE_81CA35:
    LDX.B $36                            ;81CA35;
    BEQ CODE_81CA3C                      ;81CA37;
    CLC                                  ;81CA39;
    ADC.B #$05                           ;81CA3A;

CODE_81CA3C:
    TAX                                  ;81CA3C;
    LDA.W DATA8_86C61B,X                 ;81CA3D;
    JSL.L CODE_848F07                    ;81CA40;
    RTS                                  ;81CA44;

CODE_81CA45:
    LDA.B #$02                           ;81CA45;
    STA.W $0000                          ;81CA47;
    STZ.W $0001                          ;81CA4A;
    LDA.B $0F                            ;81CA4D;
    LSR A                                ;81CA4F;
    REP #$20                             ;81CA50;
    LDA.W #$FFF5                         ;81CA52;
    BCS CODE_81CA5A                      ;81CA55;
    LDA.W #$0006                         ;81CA57;

CODE_81CA5A:
    STA.B $37                            ;81CA5A;

CODE_81CA5C:
    JSL.L CODE_828358                    ;81CA5C;
    BNE CODE_81CA97                      ;81CA60;
    INC.W $0000,X                        ;81CA62;
    LDA.B #$1E                           ;81CA65;
    STA.W $000A,X                        ;81CA67;
    LDA.W $0000                          ;81CA6A;
    STA.W $000B,X                        ;81CA6D;
    LDA.B $11                            ;81CA70;
    AND.B #$40                           ;81CA72;
    STA.W $0011,X                        ;81CA74;
    ASL A                                ;81CA77;
    ASL A                                ;81CA78;
    REP #$20                             ;81CA79;
    LDA.B $37                            ;81CA7B;
    BCC CODE_81CA83                      ;81CA7D;
    EOR.W #$FFFF                         ;81CA7F;
    INC A                                ;81CA82;

CODE_81CA83:
    CLC                                  ;81CA83;
    ADC.B $05                            ;81CA84;
    STA.W $0005,X                        ;81CA86;
    LDA.B $08                            ;81CA89;
    SEC                                  ;81CA8B;
    SBC.W #$0007                         ;81CA8C;
    STA.W $0008,X                        ;81CA8F;
    DEC.W $0000                          ;81CA92;
    BPL CODE_81CA5C                      ;81CA95;

CODE_81CA97:
    SEP #$30                             ;81CA97;
    LDA.W $0000                          ;81CA99;
    CMP.B #$02                           ;81CA9C;
    BEQ CODE_81CAA6                      ;81CA9E;
    LDA.B #$1E                           ;81CAA0;
    JSL.L CODE_8088A2                    ;81CAA2;

CODE_81CAA6:
    RTS                                  ;81CAA6;

CODE_81CAA7:
    LDA.B $0C                            ;81CAA7;
    BEQ CODE_81CAF5                      ;81CAA9;
    DEC.B $0C                            ;81CAAB;
    BNE CODE_81CAF5                      ;81CAAD;
    INC.B $36                            ;81CAAF;
    LDA.B #$04                           ;81CAB1;
    JSR.W CODE_81CA35                    ;81CAB3;
    LDA.B $17                            ;81CAB6;
    STA.B $2C                            ;81CAB8;
    LDA.B $0F                            ;81CABA;
    STA.B $10                            ;81CABC;
    LDA.B $13                            ;81CABE;
    STA.B $3E                            ;81CAC0;
    LDA.B $14                            ;81CAC2;
    STA.B $31                            ;81CAC4;
    LDA.B $15                            ;81CAC6;
    STA.B $32                            ;81CAC8;
    LDA.B #$0A                           ;81CACA;
    STA.B $3D                            ;81CACC;
    STZ.B $03                            ;81CACE;
    LDY.B #$03                           ;81CAD0;

CODE_81CAD2:
    JSL.L CODE_8282D3                    ;81CAD2;
    BNE CODE_81CAF3                      ;81CAD6;
    INC.W $0000,X                        ;81CAD8;
    LDA.B #$07                           ;81CADB;
    STA.W $000A,X                        ;81CADD;
    TYA                                  ;81CAE0;
    STA.W $000B,X                        ;81CAE1;
    REP #$20                             ;81CAE4;
    LDA.B $05                            ;81CAE6;
    STA.W $0005,X                        ;81CAE8;
    LDA.B $08                            ;81CAEB;
    STA.W $0008,X                        ;81CAED;
    DEY                                  ;81CAF0;
    BPL CODE_81CAD2                      ;81CAF1;

CODE_81CAF3:
    SEP #$30                             ;81CAF3;

CODE_81CAF5:
    RTS                                  ;81CAF5;

CODE_81CAF6:
    LDY.B #$27                           ;81CAF6;
    LDA.B ($0C),Y                        ;81CAF8;
    AND.B #$7F                           ;81CAFA;
    BNE CODE_81CB02                      ;81CAFC;
    JML.L CODE_828398                    ;81CAFE;

CODE_81CB02:
    LDX.B $01                            ;81CB02;
    JMP.W (PTR16_81CB07,X)               ;81CB04;

PTR16_81CB07:
    dw CODE_81CB13                       ;81CB07;
    dw CODE_81CB5D                       ;81CB09;
    dw CODE_81CBD0                       ;81CB0B;
    dw CODE_81CBD6                       ;81CB0D;
    dw CODE_81CBDC                       ;81CB0F;
    dw CODE_81CBE2                       ;81CB11;

CODE_81CB13:
    JSL.L CODE_82827D                    ;81CB13;
    LDA.B #$01                           ;81CB17;
    STA.B $27                            ;81CB19;
    LDA.B #$02                           ;81CB1B;
    STA.B $26                            ;81CB1D;
    LDA.B $11                            ;81CB1F;
    CLC                                  ;81CB21;
    ADC.B #$02                           ;81CB22;
    STA.B $11                            ;81CB24;
    LDA.B $0B                            ;81CB26;
    LSR A                                ;81CB28;
    BCC CODE_81CB37                      ;81CB29;
    LDA.B #$08                           ;81CB2B;
    STA.B $33                            ;81CB2D;
    LDA.B #$21                           ;81CB2F;
    BRA CODE_81CB3D                      ;81CB31;
    JSL.L CODE_848F07                    ;81CB33;

CODE_81CB37:
    LDA.B #$18                           ;81CB37;
    STA.B $33                            ;81CB39;
    LDA.B #$19                           ;81CB3B;

CODE_81CB3D:
    JSL.L CODE_848F07                    ;81CB3D;
    LDA.B $33                            ;81CB41;
    ASL A                                ;81CB43;
    ASL A                                ;81CB44;
    TAX                                  ;81CB45;
    REP #$20                             ;81CB46;
    LDA.W DATA8_86EE37,X                 ;81CB48;
    STA.B $1A                            ;81CB4B;
    LDA.W DATA8_86EE39,X                 ;81CB4D;
    STA.B $1C                            ;81CB50;
    LDA.W #$C6FD                         ;81CB52;
    STA.B $20                            ;81CB55;
    SEP #$20                             ;81CB57;
    JML.L CODE_8280B4                    ;81CB59;

CODE_81CB5D:
    JSL.L CODE_82820A                    ;81CB5D;
    LDA.B $0B                            ;81CB61;
    EOR.W $0B9C                          ;81CB63;
    LSR A                                ;81CB66;
    BCC CODE_81CBCE                      ;81CB67;
    JSL.L CODE_84A07C                    ;81CB69;
    SEC                                  ;81CB6D;
    SBC.B $33                            ;81CB6E;
    BEQ CODE_81CBA2                      ;81CB70;
    AND.B #$10                           ;81CB72;
    BEQ CODE_81CB7A                      ;81CB74;
    DEC.B $33                            ;81CB76;
    BRA CODE_81CB7C                      ;81CB78;

CODE_81CB7A:
    INC.B $33                            ;81CB7A;

CODE_81CB7C:
    LDA.B $33                            ;81CB7C;
    AND.B #$1F                           ;81CB7E;
    STA.B $33                            ;81CB80;
    ASL A                                ;81CB82;
    ASL A                                ;81CB83;
    TAX                                  ;81CB84;
    REP #$20                             ;81CB85;
    LDA.W DATA8_86EE37,X                 ;81CB87;
    STA.B $1A                            ;81CB8A;
    LDA.W DATA8_86EE39,X                 ;81CB8C;
    STA.B $1C                            ;81CB8F;
    SEP #$20                             ;81CB91;
    LDA.B $33                            ;81CB93;
    EOR.B #$1F                           ;81CB95;
    LSR A                                ;81CB97;
    CLC                                  ;81CB98;
    ADC.B #$15                           ;81CB99;
    JSL.L CODE_848F07                    ;81CB9B;
    JMP.W CODE_81CBE6                    ;81CB9F;

CODE_81CBA2:
    REP #$20                             ;81CBA2;
    LDA.B $1A                            ;81CBA4;
    BPL CODE_81CBAC                      ;81CBA6;
    EOR.W #$FFFF                         ;81CBA8;
    INC A                                ;81CBAB;

CODE_81CBAC:
    LSR A                                ;81CBAC;
    LSR A                                ;81CBAD;
    LSR A                                ;81CBAE;
    LSR A                                ;81CBAF;
    TAX                                  ;81CBB0;
    STX.B $1F                            ;81CBB1;
    LDA.B $1C                            ;81CBB3;
    BPL CODE_81CBBB                      ;81CBB5;
    EOR.W #$FFFF                         ;81CBB7;
    INC A                                ;81CBBA;

CODE_81CBBB:
    LSR A                                ;81CBBB;
    LSR A                                ;81CBBC;
    LSR A                                ;81CBBD;
    LSR A                                ;81CBBE;
    SEP #$20                             ;81CBBF;
    STA.B $1E                            ;81CBC1;
    LDA.B $33                            ;81CBC3;
    LSR A                                ;81CBC5;
    LSR A                                ;81CBC6;
    AND.B #$06                           ;81CBC7;
    CLC                                  ;81CBC9;
    ADC.B #$04                           ;81CBCA;
    STA.B $01                            ;81CBCC;

CODE_81CBCE:
    BRA CODE_81CBE6                      ;81CBCE;

CODE_81CBD0:
    JSL.L CODE_8281CF                    ;81CBD0;
    BRA CODE_81CBE6                      ;81CBD4;

CODE_81CBD6:
    JSL.L CODE_828195                    ;81CBD6;
    BRA CODE_81CBE6                      ;81CBDA;

CODE_81CBDC:
    JSL.L CODE_828174                    ;81CBDC;
    BRA CODE_81CBE6                      ;81CBE0;

CODE_81CBE2:
    JSL.L CODE_8281B2                    ;81CBE2;

CODE_81CBE6:
    JSL.L CODE_849B43                    ;81CBE6;
    BNE CODE_81CBFB                      ;81CBEA;
    JSL.L CODE_849B03                    ;81CBEC;
    BNE CODE_81CBFF                      ;81CBF0;
    JSL.L CODE_8280B4                    ;81CBF2;
    LDA.B $0E                            ;81CBF6;
    BEQ CODE_81CBFF                      ;81CBF8;
    RTL                                  ;81CBFA;

CODE_81CBFB:
    JSL.L CODE_84A4AB                    ;81CBFB;

CODE_81CBFF:
    JML.L CODE_828398                    ;81CBFF;

CODE_81CC03:
    LDA.B $33                            ;81CC03;
    TSB.B $11                            ;81CC05;
    LDX.B $01                            ;81CC07;
    JSR.W (PTR16_81CC67,X)               ;81CC09;
    LDA.B $39                            ;81CC0C;
    BNE CODE_81CC2C                      ;81CC0E;
    STZ.B $28                            ;81CC10;
    REP #$20                             ;81CC12;
    LDA.W #$C70B                         ;81CC14;
    STA.B $20                            ;81CC17;
    SEP #$20                             ;81CC19;
    JSL.L CODE_849B03                    ;81CC1B;
    JSL.L CODE_849B43                    ;81CC1F;
    REP #$20                             ;81CC23;
    LDA.W #$C701                         ;81CC25;
    STA.B $20                            ;81CC28;
    SEP #$20                             ;81CC2A;

CODE_81CC2C:
    LDA.B #$06                           ;81CC2C;
    LDX.B $3A                            ;81CC2E;
    BEQ CODE_81CC36                      ;81CC30;
    DEC.B $3A                            ;81CC32;
    LDA.B #$05                           ;81CC34;

CODE_81CC36:
    STA.B $28                            ;81CC36;
    JSL.L CODE_849B03                    ;81CC38;
    JSL.L CODE_849B43                    ;81CC3C;
    BEQ CODE_81CC60                      ;81CC40;
    BPL CODE_81CC54                      ;81CC42;
    INC.B $37                            ;81CC44;
    LDA.B #$0A                           ;81CC46;
    STA.B $01                            ;81CC48;
    STZ.B $02                            ;81CC4A;
    LDA.B $38                            ;81CC4C;
    BEQ CODE_81CC54                      ;81CC4E;
    JSL.L CODE_849F79                    ;81CC50;

CODE_81CC54:
    LDA.B $3A                            ;81CC54;
    BNE CODE_81CC60                      ;81CC56;
    LDA.B #$0E                           ;81CC58;
    TRB.B $11                            ;81CC5A;
    LDA.B #$1E                           ;81CC5C;
    STA.B $3A                            ;81CC5E;

CODE_81CC60:
    JSR.W CODE_81CF9B                    ;81CC60;
    JML.L CODE_8280B4                    ;81CC63;

PTR16_81CC67:
    dw CODE_81CC73                       ;81CC67;
    dw CODE_81CCA9                       ;81CC69;
    dw CODE_81CD01                       ;81CC6B;
    dw CODE_81CD5C                       ;81CC6D;
    dw CODE_81CDB4                       ;81CC6F;
    dw CODE_81CEC6                       ;81CC71;

CODE_81CC73:
    JSL.L CODE_82827D                    ;81CC73;
    LDA.B $11                            ;81CC77;
    AND.B #$0E                           ;81CC79;
    STA.B $33                            ;81CC7B;
    LDA.B #$02                           ;81CC7D;
    STA.B $26                            ;81CC7F;
    LDA.B #$04                           ;81CC81;
    STA.B $12                            ;81CC83;
    LDA.B #$40                           ;81CC85;
    STA.B $27                            ;81CC87;
    STZ.B $37                            ;81CC89;
    STZ.B $38                            ;81CC8B;
    STZ.B $39                            ;81CC8D;
    STZ.B $3A                            ;81CC8F;
    REP #$20                             ;81CC91;
    LDA.W #$C701                         ;81CC93;
    STA.B $20                            ;81CC96;
    SEP #$20                             ;81CC98;
    LDA.B #$04                           ;81CC9A;
    JSL.L CODE_848F07                    ;81CC9C;
    LDA.B #$FF                           ;81CCA0;
    STA.B $2F                            ;81CCA2;
    LDA.B #$04                           ;81CCA4;
    STA.B $01                            ;81CCA6;
    RTS                                  ;81CCA8;

CODE_81CCA9:
    LDX.B $02                            ;81CCA9;
    JMP.W (PTR16_81CCAE,X)               ;81CCAB;

PTR16_81CCAE:
    dw CODE_81CCB4                       ;81CCAE;
    dw CODE_81CCD9                       ;81CCB0;
    dw CODE_81CCEE                       ;81CCB2;

CODE_81CCB4:
    LDA.B #$02                           ;81CCB4;
    STA.B $02                            ;81CCB6;
    JSL.L CODE_84AC9B                    ;81CCB8;
    REP #$20                             ;81CCBC;
    LDA.W #$0618                         ;81CCBE;
    STA.B $1C                            ;81CCC1;
    LDA.W $0BAD                          ;81CCC3;
    SEC                                  ;81CCC6;
    SBC.B $05                            ;81CCC7;
    ASL A                                ;81CCC9;
    ASL A                                ;81CCCA;
    STA.B $1A                            ;81CCCB;
    SEP #$20                             ;81CCCD;
    LDA.B #$30                           ;81CCCF;
    STA.B $1E                            ;81CCD1;
    LDA.B #$02                           ;81CCD3;
    JSL.L CODE_848F07                    ;81CCD5;

CODE_81CCD9:
    JSL.L CODE_848EEA                    ;81CCD9;
    LDA.B $0F                            ;81CCDD;
    BPL CODE_81CCED                      ;81CCDF;
    LDA.B #$04                           ;81CCE1;
    STA.B $02                            ;81CCE3;
    JSL.L CODE_8281E8                    ;81CCE5;
    JSL.L CODE_8491BE                    ;81CCE9;

CODE_81CCED:
    RTS                                  ;81CCED;

CODE_81CCEE:
    JSL.L CODE_8281E8                    ;81CCEE;
    JSL.L CODE_8491BE                    ;81CCF2;
    LDA.B $1D                            ;81CCF6;
    BPL CODE_81CD00                      ;81CCF8;
    LDA.B #$04                           ;81CCFA;
    STA.B $01                            ;81CCFC;
    STZ.B $02                            ;81CCFE;

CODE_81CD00:
    RTS                                  ;81CD00;

CODE_81CD01:
    LDX.B $02                            ;81CD01;
    JMP.W (PTR16_81CD06,X)               ;81CD03;

PTR16_81CD06:
    dw CODE_81CD0C                       ;81CD06;
    dw CODE_81CD20                       ;81CD08;
    dw CODE_81CD49                       ;81CD0A;

CODE_81CD0C:
    LDA.B #$02                           ;81CD0C;
    STA.B $02                            ;81CD0E;
    LDA.B #$04                           ;81CD10;
    JSL.L CODE_848F07                    ;81CD12;
    REP #$20                             ;81CD16;
    STZ.B $1C                            ;81CD18;
    SEP #$20                             ;81CD1A;
    LDA.B #$30                           ;81CD1C;
    STA.B $1E                            ;81CD1E;

CODE_81CD20:
    JSL.L CODE_8281E8                    ;81CD20;
    JSL.L CODE_848EEA                    ;81CD24;
    JSL.L CODE_8491BE                    ;81CD28;
    LDA.B $2B                            ;81CD2C;
    AND.B #$04                           ;81CD2E;
    BEQ CODE_81CD48                      ;81CD30;
    LDA.B #$04                           ;81CD32;
    STA.B $02                            ;81CD34;
    LDA.B #$05                           ;81CD36;
    JSL.L CODE_848F07                    ;81CD38;
    LDA.B #$10                           ;81CD3C;
    JSL.L CODE_84A333                    ;81CD3E;
    LDA.B #$1A                           ;81CD42;
    JSL.L CODE_8088A2                    ;81CD44;

CODE_81CD48:
    RTS                                  ;81CD48;

CODE_81CD49:
    JSL.L CODE_848EEA                    ;81CD49;
    LDA.B $0F                            ;81CD4D;
    BPL CODE_81CD5B                      ;81CD4F;
    LDA.B #$06                           ;81CD51;
    STA.B $01                            ;81CD53;
    STZ.B $02                            ;81CD55;
    LDA.B #$3C                           ;81CD57;
    STA.B $34                            ;81CD59;

CODE_81CD5B:
    RTS                                  ;81CD5B;

CODE_81CD5C:
    LDA.B $02                            ;81CD5C;
    BNE CODE_81CD68                      ;81CD5E;
    INC.B $02                            ;81CD60;
    LDA.B #$00                           ;81CD62;
    JSL.L CODE_848F07                    ;81CD64;

CODE_81CD68:
    JSL.L CODE_84AC9B                    ;81CD68;
    DEC.B $34                            ;81CD6C;
    BNE CODE_81CDAF                      ;81CD6E;
    LDA.B #$02                           ;81CD70;
    STA.B $01                            ;81CD72;
    STZ.B $02                            ;81CD74;
    STZ.B $03                            ;81CD76;
    JSR.W CODE_81CEF9                    ;81CD78;
    BCS CODE_81CDAF                      ;81CD7B;
    REP #$20                             ;81CD7D;
    LDA.B $05                            ;81CD7F;
    SEC                                  ;81CD81;
    SBC.W $0BAD                          ;81CD82;
    BCS CODE_81CD8B                      ;81CD85;
    EOR.W #$FFFF                         ;81CD87;
    INC A                                ;81CD8A;

CODE_81CD8B:
    CMP.W #$0080                         ;81CD8B;
    BCS CODE_81CDAD                      ;81CD8E;
    LDA.B $08                            ;81CD90;
    SEC                                  ;81CD92;
    SBC.W $0BB0                          ;81CD93;
    BCC CODE_81CD9D                      ;81CD96;
    CMP.W #$0080                         ;81CD98;
    BCS CODE_81CDAD                      ;81CD9B;

CODE_81CD9D:
    SEP #$20                             ;81CD9D;
    JSL.L CODE_849086                    ;81CD9F;
    AND.B #$1F                           ;81CDA3;
    CMP.B #$16                           ;81CDA5;
    BCS CODE_81CDAF                      ;81CDA7;
    LDA.B #$08                           ;81CDA9;
    STA.B $01                            ;81CDAB;

CODE_81CDAD:
    SEP #$30                             ;81CDAD;

CODE_81CDAF:
    JSL.L CODE_848EEA                    ;81CDAF;
    RTS                                  ;81CDB3;

CODE_81CDB4:
    LDX.B $02                            ;81CDB4;
    JMP.W (PTR16_81CDB9,X)               ;81CDB6;

PTR16_81CDB9:
    dw CODE_81CDC5                       ;81CDB9;
    dw CODE_81CDD4                       ;81CDBB;
    dw CODE_81CE19                       ;81CDBD;
    dw CODE_81CE4A                       ;81CDBF;
    dw CODE_81CE9C                       ;81CDC1;
    dw CODE_81CEB7                       ;81CDC3;

CODE_81CDC5:
    LDA.B #$02                           ;81CDC5;
    STA.B $02                            ;81CDC7;
    JSL.L CODE_84AC9B                    ;81CDC9;
    LDA.B #$01                           ;81CDCD;
    JSL.L CODE_848F07                    ;81CDCF;
    RTS                                  ;81CDD3;

CODE_81CDD4:
    JSL.L CODE_848EEA                    ;81CDD4;
    LDA.B $0F                            ;81CDD8;
    BNE CODE_81CE18                      ;81CDDA;
    LDA.B #$04                           ;81CDDC;
    STA.B $02                            ;81CDDE;
    STZ.B $36                            ;81CDE0;
    REP #$10                             ;81CDE2;
    JSL.L CODE_828358                    ;81CDE4;
    BNE CODE_81CE14                      ;81CDE8;
    INC.W $0000,X                        ;81CDEA;
    LDA.B #$07                           ;81CDED;
    STA.W $000A,X                        ;81CDEF;
    STZ.W $000B,X                        ;81CDF2;
    STZ.W $0028,X                        ;81CDF5;
    JSR.W CODE_81CF38                    ;81CDF8;
    REP #$20                             ;81CDFB;
    LDA.B $08                            ;81CDFD;
    CLC                                  ;81CDFF;
    ADC.W #$000B                         ;81CE00;
    STA.W $0008,X                        ;81CE03;
    LDA.B $05                            ;81CE06;
    STA.W $0005,X                        ;81CE08;
    TDC                                  ;81CE0B;
    STA.W $000C,X                        ;81CE0C;
    SEP #$30                             ;81CE0F;
    INC.B $39                            ;81CE11;
    RTS                                  ;81CE13;

CODE_81CE14:
    SEP #$30                             ;81CE14;
    INC.B $36                            ;81CE16;

CODE_81CE18:
    RTS                                  ;81CE18;

CODE_81CE19:
    JSL.L CODE_848EEA                    ;81CE19;
    LDA.B $36                            ;81CE1D;
    BEQ CODE_81CE35                      ;81CE1F;
    BMI CODE_81CE36                      ;81CE21;
    LDA.B #$06                           ;81CE23;
    STA.B $01                            ;81CE25;
    STZ.B $02                            ;81CE27;
    STZ.B $39                            ;81CE29;
    LDA.B #$00                           ;81CE2B;
    JSL.L CODE_848F07                    ;81CE2D;
    LDA.B #$3C                           ;81CE31;
    STA.B $34                            ;81CE33;

CODE_81CE35:
    RTS                                  ;81CE35;

CODE_81CE36:
    LDA.B #$0B                           ;81CE36;
    JSL.L CODE_848F07                    ;81CE38;
    LDA.B #$06                           ;81CE3C;
    STA.B $02                            ;81CE3E;
    STZ.B $39                            ;81CE40;
    LDA.B #$01                           ;81CE42;
    LDA.B $38                            ;81CE44;
    JSR.W CODE_81CF74                    ;81CE46;
    RTS                                  ;81CE49;

CODE_81CE4A:
    JSL.L CODE_848EEA                    ;81CE4A;
    LDA.B $0F                            ;81CE4E;
    BNE CODE_81CE98                      ;81CE50;
    LDA.B #$08                           ;81CE52;
    STA.B $02                            ;81CE54;
    STZ.B $36                            ;81CE56;
    REP #$10                             ;81CE58;
    JSL.L CODE_828358                    ;81CE5A;
    BNE CODE_81CE8B                      ;81CE5E;
    INC.W $0000,X                        ;81CE60;
    LDA.B #$07                           ;81CE63;
    STA.W $000A,X                        ;81CE65;
    LDA.B #$80                           ;81CE68;
    STA.W $000B,X                        ;81CE6A;
    STZ.W $0026,X                        ;81CE6D;
    REP #$20                             ;81CE70;
    LDA.B $08                            ;81CE72;
    CLC                                  ;81CE74;
    ADC.W #$000B                         ;81CE75;
    STA.W $0008,X                        ;81CE78;
    LDA.B $05                            ;81CE7B;
    STA.W $0005,X                        ;81CE7D;
    TDC                                  ;81CE80;
    STA.W $000C,X                        ;81CE81;
    SEP #$30                             ;81CE84;
    INC.B $39                            ;81CE86;
    STZ.B $38                            ;81CE88;
    RTS                                  ;81CE8A;

CODE_81CE8B:
    SEP #$30                             ;81CE8B;
    INC.B $36                            ;81CE8D;
    LDA.B $38                            ;81CE8F;
    BEQ CODE_81CE98                      ;81CE91;
    JSL.L CODE_849F79                    ;81CE93;
    RTS                                  ;81CE97;

CODE_81CE98:
    JSR.W CODE_81CF74                    ;81CE98;
    RTS                                  ;81CE9B;

CODE_81CE9C:
    JSL.L CODE_848EEA                    ;81CE9C;
    LDA.B $36                            ;81CEA0;
    BEQ CODE_81CEB6                      ;81CEA2;
    LDA.B #$06                           ;81CEA4;
    STA.B $01                            ;81CEA6;
    STZ.B $02                            ;81CEA8;
    STZ.B $39                            ;81CEAA;
    LDA.B #$00                           ;81CEAC;
    JSL.L CODE_848F07                    ;81CEAE;
    LDA.B #$3C                           ;81CEB2;
    STA.B $34                            ;81CEB4;

CODE_81CEB6:
    RTS                                  ;81CEB6;

CODE_81CEB7:
    JSL.L CODE_848EEA                    ;81CEB7;
    LDA.B $0F                            ;81CEBB;
    BPL CODE_81CEC5                      ;81CEBD;
    LDA.B #$06                           ;81CEBF;
    STA.B $01                            ;81CEC1;
    STZ.B $02                            ;81CEC3;

CODE_81CEC5:
    RTS                                  ;81CEC5;

CODE_81CEC6:
    LDA.B $02                            ;81CEC6;
    BNE CODE_81CED0                      ;81CEC8;
    LDA.B #$78                           ;81CECA;
    STA.B $34                            ;81CECC;
    INC.B $02                            ;81CECE;

CODE_81CED0:
    REP #$20                             ;81CED0;
    LDA.W #$FFE1                         ;81CED2;
    STA.W $0000                          ;81CED5;
    STA.W $0002                          ;81CED8;
    LDA.W #$003F                         ;81CEDB;
    STA.W $0004                          ;81CEDE;
    STA.W $0006                          ;81CEE1;
    LDA.W #$0003                         ;81CEE4;
    STA.W $0008                          ;81CEE7;
    SEP #$20                             ;81CEEA;
    JSL.L CODE_84A4C6                    ;81CEEC;
    DEC.B $34                            ;81CEF0;
    BNE CODE_81CEF8                      ;81CEF2;
    JSL.L CODE_828398                    ;81CEF4;

CODE_81CEF8:
    RTS                                  ;81CEF8;

CODE_81CEF9:
    LDA.B #$0C                           ;81CEF9;
    STA.B $2A                            ;81CEFB;
    LDX.B #$16                           ;81CEFD;
    LDA.B $11                            ;81CEFF;
    AND.B #$40                           ;81CF01;
    BNE CODE_81CF07                      ;81CF03;
    LDX.B #$EA                           ;81CF05;

CODE_81CF07:
    STX.B $29                            ;81CF07;
    JSL.L CODE_8490A0                    ;81CF09;
    CMP.B #$34                           ;81CF0D;
    BCS CODE_81CF37                      ;81CF0F;
    LDX.B #$26                           ;81CF11;
    LDA.B $11                            ;81CF13;
    AND.B #$40                           ;81CF15;
    BNE CODE_81CF1B                      ;81CF17;
    LDX.B #$DA                           ;81CF19;

CODE_81CF1B:
    STX.B $29                            ;81CF1B;
    JSL.L CODE_8490A0                    ;81CF1D;
    CMP.B #$34                           ;81CF21;
    BCS CODE_81CF37                      ;81CF23;
    LDX.B #$36                           ;81CF25;
    LDA.B $11                            ;81CF27;
    AND.B #$40                           ;81CF29;
    BNE CODE_81CF2F                      ;81CF2B;
    LDX.B #$CA                           ;81CF2D;

CODE_81CF2F:
    STX.B $29                            ;81CF2F;
    JSL.L CODE_8490A0                    ;81CF31;
    CMP.B #$34                           ;81CF35;

CODE_81CF37:
    RTS                                  ;81CF37;

CODE_81CF38:
    LDA.B $11                            ;81CF38;
    AND.B #$40                           ;81CF3A;
    REP #$20                             ;81CF3C;
    BEQ CODE_81CF4D                      ;81CF3E;
    LDA.B $05                            ;81CF40;
    SEC                                  ;81CF42;
    SBC.W $1E4D                          ;81CF43;
    CMP.W #$0080                         ;81CF46;
    SEP #$20                             ;81CF49;
    BRA CODE_81CF58                      ;81CF4B;

CODE_81CF4D:
    LDA.B $05                            ;81CF4D;
    SEC                                  ;81CF4F;
    SBC.W $1E4D                          ;81CF50;
    CMP.W #$0080                         ;81CF53;
    SEP #$20                             ;81CF56;

CODE_81CF58:
    LDA.B $0B                            ;81CF58;
    BNE CODE_81CF68                      ;81CF5A;
    JSL.L CODE_849086                    ;81CF5C;
    LSR A                                ;81CF60;
    BCC CODE_81CF6E                      ;81CF61;
    LSR A                                ;81CF63;
    LSR A                                ;81CF64;
    LSR A                                ;81CF65;
    BCC CODE_81CF6E                      ;81CF66;

CODE_81CF68:
    LDA.B #$02                           ;81CF68;
    STA.W $0026,X                        ;81CF6A;
    RTS                                  ;81CF6D;

CODE_81CF6E:
    LDA.B #$FF                           ;81CF6E;
    STA.W $0026,X                        ;81CF70;
    RTS                                  ;81CF73;

CODE_81CF74:
    LDA.B $0F                            ;81CF74;
    DEC A                                ;81CF76;
    DEC A                                ;81CF77;
    ASL A                                ;81CF78;
    TAX                                  ;81CF79;
    LDA.B $11                            ;81CF7A;
    ASL A                                ;81CF7C;
    ASL A                                ;81CF7D;
    REP #$20                             ;81CF7E;
    LDA.W DATA8_86C70F,X                 ;81CF80;
    BCC CODE_81CF89                      ;81CF83;
    EOR.W #$FFFF                         ;81CF85;
    INC A                                ;81CF88;

CODE_81CF89:
    CLC                                  ;81CF89;
    ADC.B $05                            ;81CF8A;
    STA.W $0BAD                          ;81CF8C;
    LDA.W DATA8_86C717,X                 ;81CF8F;
    CLC                                  ;81CF92;
    ADC.B $08                            ;81CF93;
    STA.W $0BB0                          ;81CF95;
    SEP #$20                             ;81CF98;
    RTS                                  ;81CF9A;

CODE_81CF9B:
    LDA.B $27                            ;81CF9B;
    AND.B #$7F                           ;81CF9D;
    CMP.B #$20                           ;81CF9F;
    BCS CODE_81D022                      ;81CFA1;
    INC.B $35                            ;81CFA3;
    LDA.B $27                            ;81CFA5;
    AND.B #$7F                           ;81CFA7;
    SEC                                  ;81CFA9;
    SBC.B #$10                           ;81CFAA;
    BCS CODE_81CFB0                      ;81CFAC;
    LDA.B #$00                           ;81CFAE;

CODE_81CFB0:
    ASL A                                ;81CFB0;
    CLC                                  ;81CFB1;
    ADC.B #$0C                           ;81CFB2;
    CMP.B $35                            ;81CFB4;
    BCS CODE_81D022                      ;81CFB6;
    JSL.L CODE_8282D3                    ;81CFB8;
    BNE CODE_81D01E                      ;81CFBC;
    INC.W $0000,X                        ;81CFBE;
    LDA.B #$09                           ;81CFC1;
    STA.W $000A,X                        ;81CFC3;
    LDA.B #$80                           ;81CFC6;
    STA.W $000B,X                        ;81CFC8;
    STZ.W $0001                          ;81CFCB;
    STZ.W $0003                          ;81CFCE;
    JSL.L CODE_849086                    ;81CFD1;
    AND.B #$0F                           ;81CFD5;
    STA.W $0000                          ;81CFD7;
    JSL.L CODE_849086                    ;81CFDA;
    STA.W $0002                          ;81CFDE;
    STA.W $0004                          ;81CFE1;
    CMP.B #$00                           ;81CFE4;
    REP #$20                             ;81CFE6;
    BPL CODE_81CFF8                      ;81CFE8;
    LDA.W #$FFF0                         ;81CFEA;
    TRB.W $0002                          ;81CFED;
    LDA.B $05                            ;81CFF0;
    SEC                                  ;81CFF2;
    SBC.W $0002                          ;81CFF3;
    BRA CODE_81D001                      ;81CFF6;

CODE_81CFF8:
    LDA.W $0002                          ;81CFF8;
    AND.W #$000F                         ;81CFFB;
    CLC                                  ;81CFFE;
    ADC.B $05                            ;81CFFF;

CODE_81D001:
    STA.W $0005,X                        ;81D001;
    LDA.B $08                            ;81D004;
    SEC                                  ;81D006;
    SBC.W $0000                          ;81D007;
    SEC                                  ;81D00A;
    SBC.W #$0006                         ;81D00B;
    STA.W $0008,X                        ;81D00E;
    TDC                                  ;81D011;
    STA.W $001A,X                        ;81D012;
    LDA.W $0004                          ;81D015;
    AND.W #$0080                         ;81D018;
    STA.W $000C,X                        ;81D01B;

CODE_81D01E:
    SEP #$30                             ;81D01E;
    STZ.B $35                            ;81D020;

CODE_81D022:
    RTS                                  ;81D022;

CODE_81D023:
    LDA.B $3C                            ;81D023;
    TSB.B $11                            ;81D025;
    LDX.B $01                            ;81D027;
    JSR.W (PTR16_81D068,X)               ;81D029;
    LDA.B $27                            ;81D02C;
    AND.B #$7F                           ;81D02E;
    BEQ CODE_81D036                      ;81D030;
    JSL.L CODE_849B03                    ;81D032;

CODE_81D036:
    JSL.L CODE_849B43                    ;81D036;
    BEQ CODE_81D05A                      ;81D03A;
    LDA.B #$0E                           ;81D03C;
    TRB.B $11                            ;81D03E;
    LDA.B $27                            ;81D040;
    AND.B #$7F                           ;81D042;
    BNE CODE_81D05A                      ;81D044;
    LDA.B #$06                           ;81D046;
    STA.B $01                            ;81D048;
    JSL.L CODE_84A4AB                    ;81D04A;
    REP #$20                             ;81D04E;
    LDA.B $33                            ;81D050;
    STA.B $05                            ;81D052;
    LDA.B $35                            ;81D054;
    STA.B $08                            ;81D056;
    SEP #$20                             ;81D058;

CODE_81D05A:
    JSR.W CODE_81D2AE                    ;81D05A;
    LDA.B $27                            ;81D05D;
    AND.B #$7F                           ;81D05F;
    BNE CODE_81D064                      ;81D061;
    RTL                                  ;81D063;

CODE_81D064:
    JML.L CODE_8280B4                    ;81D064;

PTR16_81D068:
    dw CODE_81D070                       ;81D068;
    dw CODE_81D106                       ;81D06A;
    dw CODE_81D168                       ;81D06C;
    dw CODE_81D1EA                       ;81D06E;

CODE_81D070:
    JSL.L CODE_82827D                    ;81D070;
    LDA.B $11                            ;81D074;
    AND.B #$0E                           ;81D076;
    STA.B $3C                            ;81D078;
    LDA.B #$03                           ;81D07A;
    STA.B $26                            ;81D07C;
    LDA.B #$08                           ;81D07E;
    STA.B $27                            ;81D080;
    STZ.B $3D                            ;81D082;
    REP #$20                             ;81D084;
    LDA.W #$C82F                         ;81D086;
    STA.B $20                            ;81D089;
    LDA.B $05                            ;81D08B;
    STA.B $33                            ;81D08D;
    STA.W $0000                          ;81D08F;
    LDA.B $08                            ;81D092;
    STA.B $35                            ;81D094;
    STA.W $0002                          ;81D096;
    LDA.W #$0402                         ;81D099;
    STA.W $0004                          ;81D09C;
    JSR.W CODE_81D1F0                    ;81D09F;
    CMP.W #$0000                         ;81D0A2;
    BNE CODE_81D0AC                      ;81D0A5;
    PLA                                  ;81D0A7;
    JML.L CODE_828387                    ;81D0A8;

CODE_81D0AC:
    LDA.B $05                            ;81D0AC;
    STA.W $0000                          ;81D0AE;
    LDA.B $08                            ;81D0B1;
    SEC                                  ;81D0B3;
    SBC.W #$0010                         ;81D0B4;
    STA.W $0002                          ;81D0B7;
    LDA.W #$0403                         ;81D0BA;
    STA.W $0004                          ;81D0BD;
    JSR.W CODE_81D1F0                    ;81D0C0;
    STA.B $37                            ;81D0C3;
    LDA.B $05                            ;81D0C5;
    STA.W $0000                          ;81D0C7;
    LDA.B $08                            ;81D0CA;
    SEC                                  ;81D0CC;
    SBC.W #$0020                         ;81D0CD;
    STA.W $0002                          ;81D0D0;
    LDA.W #$0403                         ;81D0D3;
    JSR.W CODE_81D1F0                    ;81D0D6;
    STA.B $39                            ;81D0D9;
    SEP #$20                             ;81D0DB;
    LDA.B #$04                           ;81D0DD;
    STA.B $12                            ;81D0DF;
    REP #$20                             ;81D0E1;
    LDA.W #$0020                         ;81D0E3;
    CLC                                  ;81D0E6;
    ADC.B $05                            ;81D0E7;
    STA.B $05                            ;81D0E9;
    LDA.B $08                            ;81D0EB;
    SEC                                  ;81D0ED;
    SBC.W #$000E                         ;81D0EE;
    STA.B $08                            ;81D0F1;
    SEP #$20                             ;81D0F3;
    STZ.B $0B                            ;81D0F5;
    LDA.B #$40                           ;81D0F7;
    STA.B $1E                            ;81D0F9;
    LDA.B #$1E                           ;81D0FB;
    STA.B $3B                            ;81D0FD;
    LDA.B #$05                           ;81D0FF;
    JSL.L CODE_848F07                    ;81D101;
    RTS                                  ;81D105;

CODE_81D106:
    JSR.W CODE_81D22A                    ;81D106;
    LDX.B $02                            ;81D109;
    JSR.W (PTR16_81D111,X)               ;81D10B;
    JMP.W CODE_81D272                    ;81D10E;

PTR16_81D111:
    dw CODE_81D117                       ;81D111;
    dw CODE_81D117                       ;81D113;
    dw CODE_81D151                       ;81D115;

CODE_81D117:
    JSL.L CODE_848EEA                    ;81D117;
    LDA.B $3D                            ;81D11B;
    BEQ CODE_81D130                      ;81D11D;
    LDA.B #$78                           ;81D11F;
    STA.B $3B                            ;81D121;
    LDA.B #$00                           ;81D123;
    JSL.L CODE_848F07                    ;81D125;
    LDA.B #$04                           ;81D129;
    STA.B $02                            ;81D12B;
    STZ.B $3D                            ;81D12D;
    RTS                                  ;81D12F;

CODE_81D130:
    DEC.B $3B                            ;81D130;
    BNE CODE_81D150                      ;81D132;
    REP #$10                             ;81D134;
    LDX.B $39                            ;81D136;
    BEQ CODE_81D14A                      ;81D138;
    LDA.W $0001,X                        ;81D13A;
    CMP.B #$04                           ;81D13D;
    BNE CODE_81D14A                      ;81D13F;
    SEP #$10                             ;81D141;
    LDA.B #$04                           ;81D143;
    STA.B $01                            ;81D145;
    STZ.B $02                            ;81D147;
    RTS                                  ;81D149;

CODE_81D14A:
    SEP #$10                             ;81D14A;
    LDA.B #$01                           ;81D14C;
    STA.B $3B                            ;81D14E;

CODE_81D150:
    RTS                                  ;81D150;

CODE_81D151:
    JSL.L CODE_848EEA                    ;81D151;
    DEC.B $3B                            ;81D155;
    BNE CODE_81D167                      ;81D157;
    LDA.B #$05                           ;81D159;
    JSL.L CODE_848F07                    ;81D15B;
    LDA.B #$20                           ;81D15F;
    STA.B $3B                            ;81D161;
    LDA.B #$02                           ;81D163;
    STA.B $02                            ;81D165;

CODE_81D167:
    RTS                                  ;81D167;

CODE_81D168:
    JSR.W CODE_81D22A                    ;81D168;
    LDX.B $02                            ;81D16B;
    JMP.W (PTR16_81D170,X)               ;81D16D;

PTR16_81D170:
    dw CODE_81D17E                       ;81D170;
    dw CODE_81D18C                       ;81D172;
    dw CODE_81D1B4                       ;81D174;
    dw CODE_81D17E                       ;81D176;
    dw CODE_81D18C                       ;81D178;
    dw CODE_81D1B4                       ;81D17A;
    dw CODE_81D1C7                       ;81D17C;

CODE_81D17E:
    INC.B $02                            ;81D17E;
    INC.B $02                            ;81D180;
    LDA.B #$01                           ;81D182;
    JSL.L CODE_848F07                    ;81D184;
    LDA.B #$24                           ;81D188;
    STA.B $3B                            ;81D18A;

CODE_81D18C:
    JSL.L CODE_848EEA                    ;81D18C;
    DEC.B $3B                            ;81D190;
    BNE CODE_81D1B3                      ;81D192;
    REP #$10                             ;81D194;
    LDX.B $37                            ;81D196;
    BEQ CODE_81D1AD                      ;81D198;
    LDA.B #$06                           ;81D19A;
    STA.W $0001,X                        ;81D19C;
    STZ.W $0002,X                        ;81D19F;
    SEP #$10                             ;81D1A2;
    INC.B $02                            ;81D1A4;
    INC.B $02                            ;81D1A6;
    STZ.B $37                            ;81D1A8;
    STZ.B $38                            ;81D1AA;
    RTS                                  ;81D1AC;

CODE_81D1AD:
    SEP #$10                             ;81D1AD;
    LDA.B #$0C                           ;81D1AF;
    STA.B $02                            ;81D1B1;

CODE_81D1B3:
    RTS                                  ;81D1B3;

CODE_81D1B4:
    JSL.L CODE_848EEA                    ;81D1B4;
    LDA.B $0F                            ;81D1B8;
    BPL CODE_81D1C6                      ;81D1BA;
    LDA.B $13                            ;81D1BC;
    CMP.B #$02                           ;81D1BE;
    BNE CODE_81D1C6                      ;81D1C0;
    INC.B $02                            ;81D1C2;
    INC.B $02                            ;81D1C4;

CODE_81D1C6:
    RTS                                  ;81D1C6;

CODE_81D1C7:
    JSL.L CODE_848EEA                    ;81D1C7;
    LDA.B $0F                            ;81D1CB;
    BPL CODE_81D1E9                      ;81D1CD;
    LDA.B $13                            ;81D1CF;
    CMP.B #$01                           ;81D1D1;
    BNE CODE_81D1E9                      ;81D1D3;
    LDA.B #$05                           ;81D1D5;
    JSL.L CODE_848F07                    ;81D1D7;
    LDA.B #$02                           ;81D1DB;
    STA.B $01                            ;81D1DD;
    STA.B $02                            ;81D1DF;
    LDA.B #$20                           ;81D1E1;
    STA.B $3B                            ;81D1E3;
    LDA.B #$28                           ;81D1E5;
    STA.B $0B                            ;81D1E7;

CODE_81D1E9:
    RTS                                  ;81D1E9;

CODE_81D1EA:
    JSR.W CODE_81D22A                    ;81D1EA;
    JMP.W CODE_81D272                    ;81D1ED;

CODE_81D1F0:
    PHP                                  ;81D1F0;
    JSL.L CODE_828358                    ;81D1F1;
    BNE CODE_81D223                      ;81D1F5;
    INC.W $0000,X                        ;81D1F7;
    LDA.B #$08                           ;81D1FA;
    STA.W $000A,X                        ;81D1FC;
    REP #$20                             ;81D1FF;
    LDA.W $0000                          ;81D201;
    STA.W $0005,X                        ;81D204;
    LDA.W $0002                          ;81D207;
    STA.W $0008,X                        ;81D20A;
    LDA.W $0004                          ;81D20D;
    STA.W $000C,X                        ;81D210;
    LDA.B $35                            ;81D213;
    SEC                                  ;81D215;
    SBC.W #$0010                         ;81D216;
    STA.W $003A,X                        ;81D219;
    TDC                                  ;81D21C;
    STA.W $0037,X                        ;81D21D;
    TXA                                  ;81D220;
    PLP                                  ;81D221;
    RTS                                  ;81D222;

CODE_81D223:
    REP #$20                             ;81D223;
    LDA.W #$0000                         ;81D225;
    PLP                                  ;81D228;
    RTS                                  ;81D229;

CODE_81D22A:
    LDA.B $0B                            ;81D22A;
    BNE CODE_81D232                      ;81D22C;
    LDA.B #$10                           ;81D22E;
    STA.B $0B                            ;81D230;

CODE_81D232:
    REP #$10                             ;81D232;
    LDX.B $37                            ;81D234;
    BEQ CODE_81D252                      ;81D236;
    LDA.W $0000,X                        ;81D238;
    BEQ CODE_81D252                      ;81D23B;
    LDX.B $39                            ;81D23D;
    BEQ CODE_81D24B                      ;81D23F;
    LDA.W $0000,X                        ;81D241;
    BEQ CODE_81D24B                      ;81D244;
    REP #$10                             ;81D246;
    STZ.B $0B                            ;81D248;
    RTS                                  ;81D24A;

CODE_81D24B:
    STZ.B $39                            ;81D24B;
    STZ.B $3A                            ;81D24D;
    SEP #$10                             ;81D24F;
    RTS                                  ;81D251;

CODE_81D252:
    LDX.B $39                            ;81D252;
    BEQ CODE_81D267                      ;81D254;
    LDA.W $0000,X                        ;81D256;
    BEQ CODE_81D267                      ;81D259;
    STX.B $37                            ;81D25B;
    LDA.B #$08                           ;81D25D;
    STA.W $0001,X                        ;81D25F;
    STZ.W $0002,X                        ;81D262;
    BRA CODE_81D26B                      ;81D265;

CODE_81D267:
    STZ.B $37                            ;81D267;
    STZ.B $38                            ;81D269;

CODE_81D26B:
    STZ.B $39                            ;81D26B;
    STZ.B $3A                            ;81D26D;
    SEP #$10                             ;81D26F;
    RTS                                  ;81D271;

CODE_81D272:
    LDA.B $0B                            ;81D272;
    BEQ CODE_81D2AD                      ;81D274;
    DEC.B $0B                            ;81D276;
    BNE CODE_81D2AD                      ;81D278;
    REP #$30                             ;81D27A;
    LDA.B $33                            ;81D27C;
    STA.W $0000                          ;81D27E;
    LDA.W #$0203                         ;81D281;
    STA.W $0004                          ;81D284;
    LDX.B $37                            ;81D287;
    BEQ CODE_81D29B                      ;81D289;
    LDA.B $35                            ;81D28B;
    SEC                                  ;81D28D;
    SBC.W #$0010                         ;81D28E;
    STA.W $0002                          ;81D291;
    JSR.W CODE_81D1F0                    ;81D294;
    STA.B $39                            ;81D297;
    BRA CODE_81D2AB                      ;81D299;

CODE_81D29B:
    LDA.B $35                            ;81D29B;
    STA.W $0002                          ;81D29D;
    JSR.W CODE_81D1F0                    ;81D2A0;
    STA.B $37                            ;81D2A3;
    SEP #$20                             ;81D2A5;
    LDA.B #$10                           ;81D2A7;
    STA.B $0B                            ;81D2A9;

CODE_81D2AB:
    SEP #$30                             ;81D2AB;

CODE_81D2AD:
    RTS                                  ;81D2AD;

CODE_81D2AE:
    REP #$10                             ;81D2AE;
    LDX.B $05                            ;81D2B0;
    PHX                                  ;81D2B2;
    LDX.B $08                            ;81D2B3;
    PHX                                  ;81D2B5;
    LDX.B $33                            ;81D2B6;
    STX.B $05                            ;81D2B8;
    LDX.B $35                            ;81D2BA;
    STX.B $08                            ;81D2BC;
    JSL.L CODE_82806E                    ;81D2BE;
    PLX                                  ;81D2C2;
    STX.B $08                            ;81D2C3;
    PLX                                  ;81D2C5;
    STX.B $05                            ;81D2C6;
    BCC CODE_81D2CE                      ;81D2C8;
    JSL.L CODE_828387                    ;81D2CA;

CODE_81D2CE:
    RTS                                  ;81D2CE;

CODE_81D2CF:
    LDA.B $36                            ;81D2CF;
    TSB.B $11                            ;81D2D1;
    LDX.B $01                            ;81D2D3;
    JSR.W (PTR16_81D30F,X)               ;81D2D5;
    JSL.L CODE_849B03                    ;81D2D8;
    BEQ CODE_81D2E0                      ;81D2DC;
    INC.B $3B                            ;81D2DE;

CODE_81D2E0:
    JSL.L CODE_849B43                    ;81D2E0;
    BEQ CODE_81D302                      ;81D2E4;
    LDA.B #$0E                           ;81D2E6;
    TRB.B $11                            ;81D2E8;
    STZ.B $1A                            ;81D2EA;
    STZ.B $1B                            ;81D2EC;
    LDA.B $27                            ;81D2EE;
    AND.B #$7F                           ;81D2F0;
    BNE CODE_81D302                      ;81D2F2;
    LDA.B #$00                           ;81D2F4;
    JSL.L CODE_84A37F                    ;81D2F6;
    JSL.L CODE_84A4AB                    ;81D2FA;

CODE_81D2FE:
    JML.L CODE_828398                    ;81D2FE;

CODE_81D302:
    LDA.B $00                            ;81D302;
    BEQ CODE_81D30E                      ;81D304;
    JSL.L CODE_8280B4                    ;81D306;
    LDA.B $0E                            ;81D30A;
    BEQ CODE_81D2FE                      ;81D30C;

CODE_81D30E:
    RTL                                  ;81D30E;

PTR16_81D30F:
    dw CODE_81D31B                       ;81D30F;
    dw CODE_81D37A                       ;81D311;
    dw CODE_81D3A0                       ;81D313;
    dw CODE_81D447                       ;81D315;
    dw CODE_81D476                       ;81D317;
    dw CODE_81D4A5                       ;81D319;

CODE_81D31B:
    JSL.L CODE_84A1D0                    ;81D31B;
    CPY.B #$03                           ;81D31F;
    BCC CODE_81D328                      ;81D321;
    JSL.L CODE_828398                    ;81D323;
    RTS                                  ;81D327;

CODE_81D328:
    JSL.L CODE_82827D                    ;81D328;
    LDA.B $11                            ;81D32C;
    AND.B #$0E                           ;81D32E;
    STA.B $36                            ;81D330;
    STZ.B $3B                            ;81D332;
    LDA.B #$01                           ;81D334;
    STA.B $27                            ;81D336;
    LDA.B #$02                           ;81D338;
    STA.B $26                            ;81D33A;
    LDA.B #$04                           ;81D33C;
    STA.B $12                            ;81D33E;
    REP #$20                             ;81D340;
    STZ.B $1A                            ;81D342;
    LDA.W #$FE00                         ;81D344;
    STA.B $1C                            ;81D347;
    LDA.W #$C8D5                         ;81D349;
    STA.B $20                            ;81D34C;
    SEP #$20                             ;81D34E;
    LDA.B #$00                           ;81D350;
    JSL.L CODE_848F07                    ;81D352;
    LDA.B $0B                            ;81D356;
    BEQ CODE_81D375                      ;81D358;
    LDA.L $7F8211                        ;81D35A;
    STA.B $18                            ;81D35E;
    LDA.L $7F8311                        ;81D360;
    STA.B $11                            ;81D364;
    AND.B #$0E                           ;81D366;
    STA.B $36                            ;81D368;
    LDA.B #$13                           ;81D36A;
    STA.B $16                            ;81D36C;
    LDA.B #$00                           ;81D36E;
    JSL.L CODE_848F07                    ;81D370;
    RTS                                  ;81D374;

CODE_81D375:
    LDA.B #$30                           ;81D375;
    TSB.B $11                            ;81D377;
    RTS                                  ;81D379;

CODE_81D37A:
    JSL.L CODE_848EEA                    ;81D37A;
    JSL.L CODE_82820A                    ;81D37E;
    REP #$20                             ;81D382;
    LDA.W $1E50                          ;81D384;
    CLC                                  ;81D387;
    ADC.W #$0020                         ;81D388;
    SEC                                  ;81D38B;
    SBC.B $08                            ;81D38C;
    BCS CODE_81D39B                      ;81D38E;
    CMP.W #$0040                         ;81D390;
    BCC CODE_81D39B                      ;81D393;
    SEP #$20                             ;81D395;
    LDA.B #$04                           ;81D397;
    STA.B $01                            ;81D399;

CODE_81D39B:
    SEP #$20                             ;81D39B;
    JMP.W CODE_81D4F8                    ;81D39D;

CODE_81D3A0:
    LDA.B $3B                            ;81D3A0;
    BEQ CODE_81D3AB                      ;81D3A2;
    LDA.B #$06                           ;81D3A4;
    STA.B $01                            ;81D3A6;
    STZ.B $02                            ;81D3A8;
    RTS                                  ;81D3AA;

CODE_81D3AB:
    JSL.L CODE_848EEA                    ;81D3AB;
    LDX.B $02                            ;81D3AF;
    JSR.W (PTR16_81D3BC,X)               ;81D3B1;
    LDA.B $0B                            ;81D3B4;
    BEQ CODE_81D3BB                      ;81D3B6;
    JMP.W CODE_81D52C                    ;81D3B8;

CODE_81D3BB:
    RTS                                  ;81D3BB;

PTR16_81D3BC:
    dw CODE_81D3C2                       ;81D3BC;
    dw CODE_81D3E0                       ;81D3BE;
    dw CODE_81D428                       ;81D3C0;

CODE_81D3C2:
    REP #$20                             ;81D3C2;
    STZ.B $1A                            ;81D3C4;
    LDA.W #$FFC0                         ;81D3C6;
    STA.B $1C                            ;81D3C9;
    LDA.B $05                            ;81D3CB;
    SEC                                  ;81D3CD;
    SBC.W $0BAD                          ;81D3CE;
    SEP #$20                             ;81D3D1;
    STZ.B $34                            ;81D3D3;
    ROR.B $34                            ;81D3D5;
    LDA.B #$40                           ;81D3D7;
    STA.B $1F                            ;81D3D9;
    LDA.B #$02                           ;81D3DB;
    STA.B $02                            ;81D3DD;
    RTS                                  ;81D3DF;

CODE_81D3E0:
    LDA.B $34                            ;81D3E0;
    BMI CODE_81D3EA                      ;81D3E2;
    JSL.L CODE_8281CF                    ;81D3E4;
    BRA CODE_81D3EE                      ;81D3E8;

CODE_81D3EA:
    JSL.L CODE_8281B2                    ;81D3EA;

CODE_81D3EE:
    REP #$20                             ;81D3EE;
    LDA.W $0BAD                          ;81D3F0;
    SEC                                  ;81D3F3;
    SBC.B $05                            ;81D3F4;
    SEP #$20                             ;81D3F6;
    XBA                                  ;81D3F8;
    AND.B #$80                           ;81D3F9;
    EOR.B $34                            ;81D3FB;
    BEQ CODE_81D407                      ;81D3FD;
    LDA.B #$20                           ;81D3FF;
    STA.B $1F                            ;81D401;
    LDA.B #$04                           ;81D403;
    STA.B $02                            ;81D405;

CODE_81D407:
    REP #$20                             ;81D407;
    LDA.B $1A                            ;81D409;
    BMI CODE_81D419                      ;81D40B;
    CMP.W #$0400                         ;81D40D;
    BMI CODE_81D423                      ;81D410;
    LDA.W #$0400                         ;81D412;
    STA.B $1A                            ;81D415;
    BRA CODE_81D423                      ;81D417;

CODE_81D419:
    CMP.W #$FC00                         ;81D419;
    BPL CODE_81D423                      ;81D41C;
    LDA.W #$FC00                         ;81D41E;
    STA.B $1A                            ;81D421;

CODE_81D423:
    SEP #$20                             ;81D423;
    JMP.W CODE_81D4F8                    ;81D425;

CODE_81D428:
    REP #$20                             ;81D428;
    LDA.B $1A                            ;81D42A;
    SEP #$20                             ;81D42C;
    BNE CODE_81D435                      ;81D42E;
    STZ.B $02                            ;81D430;
    JMP.W CODE_81D4F8                    ;81D432;

CODE_81D435:
    LDA.B $34                            ;81D435;
    BMI CODE_81D440                      ;81D437;
    JSL.L CODE_8281B2                    ;81D439;
    JMP.W CODE_81D4F8                    ;81D43D;

CODE_81D440:
    JSL.L CODE_8281CF                    ;81D440;
    JMP.W CODE_81D4F8                    ;81D444;

CODE_81D447:
    LDA.B $02                            ;81D447;
    BNE CODE_81D466                      ;81D449;
    INC.B $02                            ;81D44B;
    REP #$20                             ;81D44D;
    LDA.W #$0400                         ;81D44F;
    STA.B $1C                            ;81D452;
    STZ.B $1A                            ;81D454;
    SEP #$20                             ;81D456;
    LDA.B $36                            ;81D458;
    TSB.B $11                            ;81D45A;
    LDA.B $0B                            ;81D45C;
    BNE CODE_81D466                      ;81D45E;
    LDA.B #$01                           ;81D460;
    JSL.L CODE_848F07                    ;81D462;

CODE_81D466:
    JSL.L CODE_82820A                    ;81D466;
    JSL.L CODE_848EEA                    ;81D46A;
    LDA.B $0B                            ;81D46E;
    BEQ CODE_81D475                      ;81D470;
    JMP.W CODE_81D52C                    ;81D472;

CODE_81D475:
    RTS                                  ;81D475;

CODE_81D476:
    LDA.B $02                            ;81D476;
    BNE CODE_81D48E                      ;81D478;
    INC.B $02                            ;81D47A;
    REP #$20                             ;81D47C;
    STZ.B $1A                            ;81D47E;
    STZ.B $1C                            ;81D480;
    SEP #$20                             ;81D482;
    LDA.B #$40                           ;81D484;
    STA.B $1E                            ;81D486;
    LDA.B #$01                           ;81D488;
    JSL.L CODE_848F07                    ;81D48A;

CODE_81D48E:
    JSL.L CODE_8281E8                    ;81D48E;
    JSL.L CODE_8491BE                    ;81D492;
    LDA.B $2B                            ;81D496;
    AND.B #$04                           ;81D498;
    BEQ CODE_81D4A4                      ;81D49A;
    LDA.B #$0A                           ;81D49C;
    STA.B $01                            ;81D49E;
    LDA.B #$02                           ;81D4A0;
    STA.B $02                            ;81D4A2;

CODE_81D4A4:
    RTS                                  ;81D4A4;

CODE_81D4A5:
    LDX.B $02                            ;81D4A5;
    JMP.W (PTR16_81D4AA,X)               ;81D4A7;

PTR16_81D4AA:
    dw CODE_81D4B2                       ;81D4AA;
    dw CODE_81D4BC                       ;81D4AC;
    dw CODE_81D4DC                       ;81D4AE;
    dw CODE_81D4F3                       ;81D4B0;

CODE_81D4B2:
    LDA.B #$02                           ;81D4B2;
    STA.B $02                            ;81D4B4;
    LDA.B #$01                           ;81D4B6;
    JSL.L CODE_848F07                    ;81D4B8;

CODE_81D4BC:
    JSL.L CODE_848EEA                    ;81D4BC;
    LDA.B $0F                            ;81D4C0;
    BPL CODE_81D4DB                      ;81D4C2;
    LDA.B #$04                           ;81D4C4;
    STA.B $02                            ;81D4C6;
    LDA.B #$02                           ;81D4C8;
    JSL.L CODE_848F07                    ;81D4CA;
    LDA.B #$30                           ;81D4CE;
    STA.B $35                            ;81D4D0;
    REP #$20                             ;81D4D2;
    LDA.W #$FFC0                         ;81D4D4;
    STA.B $1C                            ;81D4D7;
    SEP #$20                             ;81D4D9;

CODE_81D4DB:
    RTS                                  ;81D4DB;

CODE_81D4DC:
    JSL.L CODE_848EEA                    ;81D4DC;
    JSL.L CODE_82825D                    ;81D4E0;
    DEC.B $35                            ;81D4E4;
    BNE CODE_81D4F2                      ;81D4E6;
    LDA.B #$06                           ;81D4E8;
    STA.B $02                            ;81D4EA;
    LDA.B #$03                           ;81D4EC;
    JSL.L CODE_848F07                    ;81D4EE;

CODE_81D4F2:
    RTS                                  ;81D4F2;

CODE_81D4F3:
    JSL.L CODE_848EEA                    ;81D4F3;
    RTS                                  ;81D4F7;

CODE_81D4F8:
    LDA.B $00                            ;81D4F8;
    BEQ CODE_81D522                      ;81D4FA;
    REP #$20                             ;81D4FC;
    LDA.B $37                            ;81D4FE;
    SEC                                  ;81D500;
    SBC.W $0BAD                          ;81D501;
    BCS CODE_81D50A                      ;81D504;
    EOR.W #$FFFF                         ;81D506;
    INC A                                ;81D509;

CODE_81D50A:
    CMP.W #$0100                         ;81D50A;
    BCS CODE_81D523                      ;81D50D;
    LDA.B $39                            ;81D50F;
    SEC                                  ;81D511;
    SBC.W $0BB0                          ;81D512;
    BCS CODE_81D51B                      ;81D515;
    EOR.W #$FFFF                         ;81D517;
    INC A                                ;81D51A;

CODE_81D51B:
    CMP.W #$00C0                         ;81D51B;
    BCS CODE_81D523                      ;81D51E;
    SEP #$20                             ;81D520;

CODE_81D522:
    RTS                                  ;81D522;

CODE_81D523:
    SEP #$20                             ;81D523;
    LDA.B #$06                           ;81D525;
    STA.B $01                            ;81D527;
    STZ.B $02                            ;81D529;
    RTS                                  ;81D52B;

CODE_81D52C:
    JSL.L CODE_8491BE                    ;81D52C;
    LDA.B $2B                            ;81D530;
    BEQ CODE_81D540                      ;81D532;
    STZ.B $02                            ;81D534;
    LDX.B #$08                           ;81D536;
    AND.B #$04                           ;81D538;
    BEQ CODE_81D53E                      ;81D53A;
    LDX.B #$0A                           ;81D53C;

CODE_81D53E:
    STX.B $01                            ;81D53E;

CODE_81D540:
    RTS                                  ;81D540;

CODE_81D541:
    LDA.B $3D                            ;81D541;
    TSB.B $11                            ;81D543;
    LDX.B $01                            ;81D545;
    JSR.W (PTR16_81D5C1,X)               ;81D547;
    LDA.B $00                            ;81D54A;
    BNE CODE_81D54F                      ;81D54C;
    RTL                                  ;81D54E;

CODE_81D54F:
    REP #$20                             ;81D54F;
    LDA.B $38                            ;81D551;
    STA.B $20                            ;81D553;
    SEP #$20                             ;81D555;
    STZ.B $31                            ;81D557;
    JSL.L CODE_849B43                    ;81D559;
    BEQ CODE_81D589                      ;81D55D;
    INC.B $31                            ;81D55F;
    LDA.B #$0E                           ;81D561;
    TRB.B $11                            ;81D563;
    LDA.B $27                            ;81D565;
    AND.B #$7F                           ;81D567;
    BEQ CODE_81D57F                      ;81D569;
    LDA.B #$04                           ;81D56B;
    STA.B $3B                            ;81D56D;
    LDA.B #$0A                           ;81D56F;
    CMP.B $01                            ;81D571;
    BEQ CODE_81D589                      ;81D573;
    LDA.B $01                            ;81D575;
    STA.B $3C                            ;81D577;
    LDA.B #$0A                           ;81D579;
    STA.B $01                            ;81D57B;
    BRA CODE_81D589                      ;81D57D;

CODE_81D57F:
    LDA.B $3B                            ;81D57F;
    BEQ CODE_81D589                      ;81D581;
    LDA.B $3C                            ;81D583;
    STA.B $01                            ;81D585;
    STZ.B $3B                            ;81D587;

CODE_81D589:
    REP #$20                             ;81D589;
    LDA.W #$C8DF                         ;81D58B;
    STA.B $20                            ;81D58E;
    SEP #$20                             ;81D590;
    LDA.B $00                            ;81D592;
    BEQ CODE_81D5C0                      ;81D594;
    REP #$20                             ;81D596;
    LDA.W $0BAD                          ;81D598;
    SEC                                  ;81D59B;
    SBC.B $05                            ;81D59C;
    BCS CODE_81D5A4                      ;81D59E;
    EOR.W #$FFFF                         ;81D5A0;
    INC A                                ;81D5A3;

CODE_81D5A4:
    CMP.W #$0180                         ;81D5A4;
    BCS CODE_81D5B0                      ;81D5A7;
    LDA.B $08                            ;81D5A9;
    CMP.W #$0300                         ;81D5AB;
    BCC CODE_81D5BC                      ;81D5AE;

CODE_81D5B0:
    LDX.B $0B                            ;81D5B0;
    BMI CODE_81D5B8                      ;81D5B2;
    JML.L CODE_828387                    ;81D5B4;

CODE_81D5B8:
    JML.L CODE_828398                    ;81D5B8;

CODE_81D5BC:
    JML.L CODE_8280B4                    ;81D5BC;

CODE_81D5C0:
    RTL                                  ;81D5C0;

PTR16_81D5C1:
    dw CODE_81D5D1                       ;81D5C1;
    dw CODE_81D6E1                       ;81D5C3;
    dw CODE_81D805                       ;81D5C5;
    dw CODE_81D992                       ;81D5C7;
    dw CODE_81DA17                       ;81D5C9;
    dw CODE_81DC4B                       ;81D5CB;
    dw CODE_81DA86                       ;81D5CD;
    dw CODE_81DAB8                       ;81D5CF;

CODE_81D5D1:
    STZ.B $3B                            ;81D5D1;
    LDA.B $0B                            ;81D5D3;
    BMI CODE_81D5F1                      ;81D5D5;
    REP #$20                             ;81D5D7;
    LDA.B $05                            ;81D5D9;
    SEC                                  ;81D5DB;
    SBC.W $0BAD                          ;81D5DC;
    SEP #$20                             ;81D5DF;
    BCC CODE_81D613                      ;81D5E1;
    LDA.B #$10                           ;81D5E3;
    STA.B $2A                            ;81D5E5;
    STZ.B $29                            ;81D5E7;
    JSL.L CODE_8490A0                    ;81D5E9;
    CMP.B #$34                           ;81D5ED;
    BCC CODE_81D613                      ;81D5EF;

CODE_81D5F1:
    JSL.L CODE_84A1D0                    ;81D5F1;
    CPY.B #$00                           ;81D5F5;
    BEQ CODE_81D60F                      ;81D5F7;
    CPY.B #$04                           ;81D5F9;
    BCS CODE_81D613                      ;81D5FB;
    REP #$10                             ;81D5FD;
    LDX.W $0000                          ;81D5FF;
    LDA.W $0012,X                        ;81D602;
    CMP.B #$06                           ;81D605;
    SEP #$10                             ;81D607;
    BNE CODE_81D60F                      ;81D609;
    LDA.B #$02                           ;81D60B;
    BRA CODE_81D621                      ;81D60D;

CODE_81D60F:
    LDA.B #$06                           ;81D60F;
    BRA CODE_81D621                      ;81D611;

CODE_81D613:
    LDA.B $0B                            ;81D613;
    BMI CODE_81D61C                      ;81D615;
    JSL.L CODE_828387                    ;81D617;
    RTS                                  ;81D61B;

CODE_81D61C:
    JSL.L CODE_828398                    ;81D61C;
    RTS                                  ;81D620;

CODE_81D621:
    STA.B $12                            ;81D621;
    JSL.L CODE_82827D                    ;81D623;
    LDA.B $0B                            ;81D627;
    BPL CODE_81D631                      ;81D629;
    LDA.B #$0C                           ;81D62B;
    STA.B $01                            ;81D62D;
    STZ.B $35                            ;81D62F;

CODE_81D631:
    LDA.B $11                            ;81D631;
    AND.B #$0E                           ;81D633;
    STA.B $3D                            ;81D635;
    LDA.B #$FF                           ;81D637;
    STA.B $2F                            ;81D639;
    LDA.B #$64                           ;81D63B;
    STA.B $36                            ;81D63D;
    LDA.B #$06                           ;81D63F;
    JSL.L CODE_848F07                    ;81D641;
    STZ.B $37                            ;81D645;
    LDA.B #$05                           ;81D647;
    STA.B $27                            ;81D649;
    LDA.B #$02                           ;81D64B;
    STA.B $26                            ;81D64D;
    STZ.B $3A                            ;81D64F;
    JSL.L CODE_828321                    ;81D651;
    BEQ CODE_81D665                      ;81D655;
    LDA.B $0B                            ;81D657;
    BMI CODE_81D660                      ;81D659;
    JSL.L CODE_828387                    ;81D65B;
    RTS                                  ;81D65F;

CODE_81D660:
    JSL.L CODE_828398                    ;81D660;
    RTS                                  ;81D664;

CODE_81D665:
    REP #$20                             ;81D665;
    TDC                                  ;81D667;
    STA.W $0000                          ;81D668;
    CPX.W $0000                          ;81D66B;
    BCS CODE_81D688                      ;81D66E;
    TXY                                  ;81D670;
    PHX                                  ;81D671;
    LDX.W $0000                          ;81D672;
    LDA.W #$001F                         ;81D675;
    PHB                                  ;81D678;
    MVN $00,$00                          ;81D679;
    PLB                                  ;81D67C;
    PLX                                  ;81D67D;
    STZ.W $0001,X                        ;81D67E;
    JSL.L CODE_828398                    ;81D681;
    SEP #$30                             ;81D685;
    RTS                                  ;81D687;

CODE_81D688:
    TDC                                  ;81D688;
    STA.W $0033,X                        ;81D689;
    STX.B $33                            ;81D68C;
    LDA.W #$C8DF                         ;81D68E;
    STA.B $20                            ;81D691;
    STA.B $38                            ;81D693;
    SEP #$20                             ;81D695;
    INC.W $0000,X                        ;81D697;
    LDA.B #$12                           ;81D69A;
    STA.W $000A,X                        ;81D69C;
    LDA.B $12                            ;81D69F;
    DEC A                                ;81D6A1;
    DEC A                                ;81D6A2;
    STA.W $0012,X                        ;81D6A3;
    LDA.B $0B                            ;81D6A6;
    BPL CODE_81D6DE                      ;81D6A8;
    JSL.L CODE_828321                    ;81D6AA;
    BEQ CODE_81D6C1                      ;81D6AE;
    LDX.B $33                            ;81D6B0;
    REP #$20                             ;81D6B2;
    STZ.W $0000,X                        ;81D6B4;
    STZ.W $0002,X                        ;81D6B7;
    JSL.L CODE_828398                    ;81D6BA;
    SEP #$30                             ;81D6BE;
    RTS                                  ;81D6C0;

CODE_81D6C1:
    INC.W $0000,X                        ;81D6C1;
    LDA.B #$1B                           ;81D6C4;
    STA.W $000A,X                        ;81D6C6;
    REP #$20                             ;81D6C9;
    LDA.B $05                            ;81D6CB;
    STA.W $0005,X                        ;81D6CD;
    LDA.B $08                            ;81D6D0;
    STA.W $0008,X                        ;81D6D2;
    TDC                                  ;81D6D5;
    STA.W $0020,X                        ;81D6D6;
    LDA.B $0C                            ;81D6D9;
    STA.W $000C,X                        ;81D6DB;

CODE_81D6DE:
    SEP #$30                             ;81D6DE;
    RTS                                  ;81D6E0;

CODE_81D6E1:
    LDX.B $02                            ;81D6E1;
    JSR.W (PTR16_81D6EB,X)               ;81D6E3;
    JSL.L CODE_849B03                    ;81D6E6;
    RTS                                  ;81D6EA;

PTR16_81D6EB:
    dw CODE_81D6F3                       ;81D6EB;
    dw CODE_81D73C                       ;81D6ED;
    dw CODE_81D78F                       ;81D6EF;
    dw CODE_81D7CA                       ;81D6F1;

CODE_81D6F3:
    LDA.B $03                            ;81D6F3;
    BNE CODE_81D6FF                      ;81D6F5;
    LDA.B #$30                           ;81D6F7;
    STA.B $1E                            ;81D6F9;
    STZ.B $1F                            ;81D6FB;
    INC.B $03                            ;81D6FD;

CODE_81D6FF:
    JSL.L CODE_8281E8                    ;81D6FF;
    JSL.L CODE_8491BE                    ;81D703;
    REP #$20                             ;81D707;
    LDA.B $1C                            ;81D709;
    CMP.W #$F800                         ;81D70B;
    BPL CODE_81D715                      ;81D70E;
    LDA.W #$F800                         ;81D710;
    STA.B $1C                            ;81D713;

CODE_81D715:
    SEP #$20                             ;81D715;
    LDA.B $2B                            ;81D717;
    AND.B #$04                           ;81D719;
    BEQ CODE_81D734                      ;81D71B;
    LDA.B #$02                           ;81D71D;
    STA.B $02                            ;81D71F;
    STZ.B $03                            ;81D721;
    STZ.B $1C                            ;81D723;
    STZ.B $1D                            ;81D725;
    STZ.B $2F                            ;81D727;
    REP #$10                             ;81D729;
    LDX.B $33                            ;81D72B;
    LDA.B #$04                           ;81D72D;
    STA.W $0037,X                        ;81D72F;
    SEP #$10                             ;81D732;

CODE_81D734:
    JSL.L CODE_848EEA                    ;81D734;
    JSR.W CODE_81DB3A                    ;81D738;
    RTS                                  ;81D73B;

CODE_81D73C:
    LDA.B $03                            ;81D73C;
    BNE CODE_81D75A                      ;81D73E;
    INC.B $03                            ;81D740;
    LDA.B #$40                           ;81D742;
    TRB.B $11                            ;81D744;
    LDA.B $37                            ;81D746;
    TSB.B $11                            ;81D748;
    LDA.B #$07                           ;81D74A;
    JSL.L CODE_848F07                    ;81D74C;
    STZ.B $1C                            ;81D750;
    SEP #$20                             ;81D752;
    LDA.B #$10                           ;81D754;
    STA.B $1F                            ;81D756;
    STZ.B $1E                            ;81D758;

CODE_81D75A:
    JSR.W CODE_81DB05                    ;81D75A;
    JSL.L CODE_8491BE                    ;81D75D;
    LDA.B $3A                            ;81D761;
    BEQ CODE_81D769                      ;81D763;
    DEC.B $3A                            ;81D765;
    BNE CODE_81D774                      ;81D767;

CODE_81D769:
    JSR.W CODE_81DAF2                    ;81D769;
    BEQ CODE_81D774                      ;81D76C;
    LDA.B #$04                           ;81D76E;
    STA.B $02                            ;81D770;
    STZ.B $03                            ;81D772;

CODE_81D774:
    JSR.W CODE_81DBF5                    ;81D774;
    LDA.B $2B                            ;81D777;
    AND.B #$04                           ;81D779;
    BNE CODE_81D785                      ;81D77B;
    LDA.B #$FF                           ;81D77D;
    STA.B $2F                            ;81D77F;
    STZ.B $02                            ;81D781;
    STZ.B $03                            ;81D783;

CODE_81D785:
    JSL.L CODE_848EEA                    ;81D785;
    JSR.W CODE_81DB3A                    ;81D789;
    JMP.W CODE_81DC6E                    ;81D78C;

CODE_81D78F:
    LDA.B $03                            ;81D78F;
    BNE CODE_81D799                      ;81D791;
    INC.B $03                            ;81D793;
    LDA.B #$20                           ;81D795;
    STA.B $35                            ;81D797;

CODE_81D799:
    DEC.B $35                            ;81D799;
    BNE CODE_81D7AE                      ;81D79B;
    JSR.W CODE_81DAF2                    ;81D79D;
    BEQ CODE_81D7A8                      ;81D7A0;
    LDA.B #$06                           ;81D7A2;
    STA.B $02                            ;81D7A4;
    BRA CODE_81D7AC                      ;81D7A6;

CODE_81D7A8:
    LDA.B #$02                           ;81D7A8;
    STA.B $02                            ;81D7AA;

CODE_81D7AC:
    STZ.B $03                            ;81D7AC;

CODE_81D7AE:
    JSR.W CODE_81DBF5                    ;81D7AE;
    JSR.W CODE_81DB05                    ;81D7B1;
    JSL.L CODE_848EEA                    ;81D7B4;
    JSL.L CODE_8491BE                    ;81D7B8;
    LDA.B $2B                            ;81D7BC;
    AND.B #$04                           ;81D7BE;
    BNE CODE_81D7C6                      ;81D7C0;
    STZ.B $02                            ;81D7C2;
    STZ.B $03                            ;81D7C4;

CODE_81D7C6:
    JSR.W CODE_81DB3A                    ;81D7C6;
    RTS                                  ;81D7C9;

CODE_81D7CA:
    LDA.B $03                            ;81D7CA;
    BNE CODE_81D7DE                      ;81D7CC;
    INC.B $03                            ;81D7CE;
    LDA.B #$10                           ;81D7D0;
    STA.B $1F                            ;81D7D2;
    LDA.B #$14                           ;81D7D4;
    STA.B $35                            ;81D7D6;
    LDA.B #$11                           ;81D7D8;
    JSL.L CODE_848F07                    ;81D7DA;

CODE_81D7DE:
    LDA.B $11                            ;81D7DE;
    AND.B #$40                           ;81D7E0;
    BEQ CODE_81D7EA                      ;81D7E2;
    JSL.L CODE_828174                    ;81D7E4;
    BRA CODE_81D7EE                      ;81D7E8;

CODE_81D7EA:
    JSL.L CODE_828195                    ;81D7EA;

CODE_81D7EE:
    JSL.L CODE_8491BE                    ;81D7EE;
    DEC.B $35                            ;81D7F2;
    BNE CODE_81D804                      ;81D7F4;
    LDA.B #$02                           ;81D7F6;
    STA.B $02                            ;81D7F8;
    STZ.B $03                            ;81D7FA;
    LDA.B $11                            ;81D7FC;
    AND.B #$40                           ;81D7FE;
    EOR.B #$40                           ;81D800;
    STA.B $37                            ;81D802;

CODE_81D804:
    RTS                                  ;81D804;

CODE_81D805:
    LDX.B $02                            ;81D805;
    JSR.W (PTR16_81D83A,X)               ;81D807;
    REP #$20                             ;81D80A;
    LDA.W #$C8F1                         ;81D80C;
    STA.B $20                            ;81D80F;
    SEP #$20                             ;81D811;
    JSL.L CODE_849B03                    ;81D813;
    REP #$20                             ;81D817;
    LDA.W #$C8DF                         ;81D819;
    STA.B $20                            ;81D81C;
    SEP #$20                             ;81D81E;
    REP #$10                             ;81D820;
    LDX.B $33                            ;81D822;
    LDA.W $002C,X                        ;81D824;
    SEP #$10                             ;81D827;
    BEQ CODE_81D831                      ;81D829;
    LDA.B #$FF                           ;81D82B;
    STA.B $35                            ;81D82D;
    BRA CODE_81D837                      ;81D82F;

CODE_81D831:
    DEC.B $35                            ;81D831;
    BNE CODE_81D837                      ;81D833;
    STZ.B $27                            ;81D835;

CODE_81D837:
    JMP.W CODE_81DB3A                    ;81D837;

PTR16_81D83A:
    dw CODE_81D844                       ;81D83A;
    dw CODE_81D87F                       ;81D83C;
    dw CODE_81D8D7                       ;81D83E;
    dw CODE_81D92F                       ;81D840;
    dw CODE_81D956                       ;81D842;

CODE_81D844:
    LDA.B #$04                           ;81D844;
    STA.B $27                            ;81D846;
    LDA.B #$FF                           ;81D848;
    STA.B $35                            ;81D84A;
    STZ.B $2F                            ;81D84C;
    LDA.B #$07                           ;81D84E;
    JSL.L CODE_848F07                    ;81D850;
    REP #$20                             ;81D854;
    LDA.W #$C8E9                         ;81D856;
    STA.B $38                            ;81D859;
    LDA.B $1A                            ;81D85B;
    BPL CODE_81D863                      ;81D85D;
    EOR.W #$FFFF                         ;81D85F;
    INC A                                ;81D862;

CODE_81D863:
    CMP.W #$0180                         ;81D863;
    SEP #$20                             ;81D866;
    BEQ CODE_81D870                      ;81D868;
    BCC CODE_81D874                      ;81D86A;
    LDA.B #$04                           ;81D86C;
    BRA CODE_81D876                      ;81D86E;

CODE_81D870:
    LDA.B #$06                           ;81D870;
    BRA CODE_81D876                      ;81D872;

CODE_81D874:
    LDA.B #$02                           ;81D874;

CODE_81D876:
    STA.B $02                            ;81D876;
    LDA.B #$10                           ;81D878;
    STA.B $1F                            ;81D87A;
    STZ.B $1E                            ;81D87C;
    RTS                                  ;81D87E;

CODE_81D87F:
    LDA.B $11                            ;81D87F;
    AND.B #$40                           ;81D881;
    BEQ CODE_81D88B                      ;81D883;
    JSL.L CODE_828195                    ;81D885;
    BRA CODE_81D88F                      ;81D889;

CODE_81D88B:
    JSL.L CODE_828174                    ;81D88B;

CODE_81D88F:
    JSL.L CODE_8491BE                    ;81D88F;
    REP #$20                             ;81D893;
    LDA.B $1A                            ;81D895;
    BPL CODE_81D89D                      ;81D897;
    EOR.W #$FFFF                         ;81D899;
    INC A                                ;81D89C;

CODE_81D89D:
    CMP.W #$0180                         ;81D89D;
    BCC CODE_81D8B6                      ;81D8A0;
    LDA.B $1A                            ;81D8A2;
    BMI CODE_81D8AB                      ;81D8A4;
    LDA.W #$0180                         ;81D8A6;
    BRA CODE_81D8AE                      ;81D8A9;

CODE_81D8AB:
    LDA.W #$FE80                         ;81D8AB;

CODE_81D8AE:
    STA.B $1A                            ;81D8AE;
    SEP #$20                             ;81D8B0;
    LDA.B #$06                           ;81D8B2;
    STA.B $02                            ;81D8B4;

CODE_81D8B6:
    SEP #$20                             ;81D8B6;
    LDA.B $2B                            ;81D8B8;
    AND.B #$04                           ;81D8BA;
    BNE CODE_81D8CA                      ;81D8BC;
    LDA.B #$08                           ;81D8BE;
    STA.B $02                            ;81D8C0;
    LDA.B #$30                           ;81D8C2;
    STA.B $1E                            ;81D8C4;
    LDA.B #$FF                           ;81D8C6;
    STA.B $2F                            ;81D8C8;

CODE_81D8CA:
    JSL.L CODE_848EEA                    ;81D8CA;
    LDA.B $2B                            ;81D8CE;
    AND.B #$03                           ;81D8D0;
    BEQ CODE_81D8D6                      ;81D8D2;
    STZ.B $27                            ;81D8D4;

CODE_81D8D6:
    RTS                                  ;81D8D6;

CODE_81D8D7:
    LDA.B $11                            ;81D8D7;
    AND.B #$40                           ;81D8D9;
    BEQ CODE_81D8E3                      ;81D8DB;
    JSL.L CODE_828174                    ;81D8DD;
    BRA CODE_81D8E7                      ;81D8E1;

CODE_81D8E3:
    JSL.L CODE_828195                    ;81D8E3;

CODE_81D8E7:
    JSL.L CODE_8491BE                    ;81D8E7;
    REP #$20                             ;81D8EB;
    LDA.B $1A                            ;81D8ED;
    BPL CODE_81D8F5                      ;81D8EF;
    EOR.W #$FFFF                         ;81D8F1;
    INC A                                ;81D8F4;

CODE_81D8F5:
    CMP.W #$0180                         ;81D8F5;
    BCS CODE_81D90E                      ;81D8F8;
    LDA.B $1A                            ;81D8FA;
    BMI CODE_81D903                      ;81D8FC;
    LDA.W #$0180                         ;81D8FE;
    BRA CODE_81D906                      ;81D901;

CODE_81D903:
    LDA.W #$FE80                         ;81D903;

CODE_81D906:
    STA.B $1A                            ;81D906;
    SEP #$20                             ;81D908;
    LDA.B #$06                           ;81D90A;
    STA.B $02                            ;81D90C;

CODE_81D90E:
    SEP #$20                             ;81D90E;
    LDA.B $2B                            ;81D910;
    AND.B #$04                           ;81D912;
    BNE CODE_81D922                      ;81D914;
    LDA.B #$08                           ;81D916;
    STA.B $02                            ;81D918;
    LDA.B #$30                           ;81D91A;
    STA.B $1E                            ;81D91C;
    LDA.B #$FF                           ;81D91E;
    STA.B $2F                            ;81D920;

CODE_81D922:
    JSL.L CODE_848EEA                    ;81D922;
    LDA.B $2B                            ;81D926;
    AND.B #$03                           ;81D928;
    BEQ CODE_81D92E                      ;81D92A;
    STZ.B $27                            ;81D92C;

CODE_81D92E:
    RTS                                  ;81D92E;

CODE_81D92F:
    JSL.L CODE_82823E                    ;81D92F;
    JSL.L CODE_8491BE                    ;81D933;
    LDA.B $2B                            ;81D937;
    AND.B #$04                           ;81D939;
    BNE CODE_81D949                      ;81D93B;
    LDA.B #$08                           ;81D93D;
    STA.B $02                            ;81D93F;
    LDA.B #$30                           ;81D941;
    STA.B $1E                            ;81D943;
    LDA.B #$FF                           ;81D945;
    STA.B $2F                            ;81D947;

CODE_81D949:
    JSL.L CODE_848EEA                    ;81D949;
    LDA.B $2B                            ;81D94D;
    AND.B #$03                           ;81D94F;
    BEQ CODE_81D955                      ;81D951;
    STZ.B $27                            ;81D953;

CODE_81D955:
    RTS                                  ;81D955;

CODE_81D956:
    JSL.L CODE_8281E8                    ;81D956;
    JSL.L CODE_8491BE                    ;81D95A;
    LDA.B $2B                            ;81D95E;
    AND.B #$04                           ;81D960;
    BEQ CODE_81D98D                      ;81D962;
    STZ.B $2F                            ;81D964;
    REP #$10                             ;81D966;
    LDX.B $33                            ;81D968;
    LDA.B #$04                           ;81D96A;
    STA.W $0037,X                        ;81D96C;
    SEP #$10                             ;81D96F;
    LDA.B $11                            ;81D971;
    AND.B #$40                           ;81D973;
    REP #$20                             ;81D975;
    BEQ CODE_81D97E                      ;81D977;
    LDA.W #$0100                         ;81D979;
    BRA CODE_81D981                      ;81D97C;

CODE_81D97E:
    LDA.W #$FF00                         ;81D97E;

CODE_81D981:
    STA.B $1A                            ;81D981;
    STZ.B $1C                            ;81D983;
    SEP #$20                             ;81D985;
    STZ.B $1E                            ;81D987;
    LDA.B #$06                           ;81D989;
    STA.B $02                            ;81D98B;

CODE_81D98D:
    JSL.L CODE_848EEA                    ;81D98D;
    RTS                                  ;81D991;

CODE_81D992:
    LDX.B $02                            ;81D992;
    JSR.W (PTR16_81D9B1,X)               ;81D994;
    REP #$10                             ;81D997;
    LDX.B $33                            ;81D999;
    LDA.W $002C,X                        ;81D99B;
    SEP #$10                             ;81D99E;
    BEQ CODE_81D9A8                      ;81D9A0;
    LDA.B #$FF                           ;81D9A2;
    STA.B $35                            ;81D9A4;
    BRA CODE_81D9AE                      ;81D9A6;

CODE_81D9A8:
    DEC.B $35                            ;81D9A8;
    BNE CODE_81D9AE                      ;81D9AA;
    STZ.B $27                            ;81D9AC;

CODE_81D9AE:
    JMP.W CODE_81DB3A                    ;81D9AE;

PTR16_81D9B1:
    dw CODE_81D9B7                       ;81D9B1;
    dw CODE_81D9F3                       ;81D9B3;
    dw CODE_81DA02                       ;81D9B5;

CODE_81D9B7:
    LDA.B #$02                           ;81D9B7;
    STA.B $02                            ;81D9B9;
    LDA.B #$03                           ;81D9BB;
    STA.B $27                            ;81D9BD;
    LDA.B #$FF                           ;81D9BF;
    STA.B $35                            ;81D9C1;
    STZ.B $1A                            ;81D9C3;
    STZ.B $1B                            ;81D9C5;
    STZ.B $1F                            ;81D9C7;
    LDA.B #$30                           ;81D9C9;
    STA.B $1E                            ;81D9CB;
    JSL.L CODE_8491BE                    ;81D9CD;
    LDA.B $2B                            ;81D9D1;
    BEQ CODE_81D9DB                      ;81D9D3;
    STZ.B $2F                            ;81D9D5;
    LDA.B #$02                           ;81D9D7;
    BRA CODE_81D9E1                      ;81D9D9;

CODE_81D9DB:
    LDA.B #$FF                           ;81D9DB;
    STA.B $2F                            ;81D9DD;
    LDA.B #$04                           ;81D9DF;

CODE_81D9E1:
    STA.B $02                            ;81D9E1;
    LDA.B #$06                           ;81D9E3;
    JSL.L CODE_848F07                    ;81D9E5;
    REP #$20                             ;81D9E9;
    LDA.W #$C8E9                         ;81D9EB;
    STA.B $38                            ;81D9EE;
    SEP #$20                             ;81D9F0;
    RTS                                  ;81D9F2;

CODE_81D9F3:
    JSL.L CODE_8491BE                    ;81D9F3;
    LDA.B $2B                            ;81D9F7;
    AND.B #$04                           ;81D9F9;
    BNE CODE_81DA01                      ;81D9FB;
    LDA.B #$04                           ;81D9FD;
    STA.B $02                            ;81D9FF;

CODE_81DA01:
    RTS                                  ;81DA01;

CODE_81DA02:
    JSL.L CODE_8281E8                    ;81DA02;
    JSL.L CODE_8491BE                    ;81DA06;
    LDA.B $2B                            ;81DA0A;
    AND.B #$04                           ;81DA0C;
    BEQ CODE_81DA16                      ;81DA0E;
    LDA.B #$02                           ;81DA10;
    STA.B $02                            ;81DA12;
    STZ.B $2F                            ;81DA14;

CODE_81DA16:
    RTS                                  ;81DA16;

CODE_81DA17:
    LDA.B $02                            ;81DA17;
    BNE CODE_81DA2F                      ;81DA19;
    INC.B $02                            ;81DA1B;
    LDA.B #$11                           ;81DA1D;
    JSL.L CODE_848F07                    ;81DA1F;
    JSL.L CODE_84A4AB                    ;81DA23;
    LDA.B #$05                           ;81DA27;
    STA.B $35                            ;81DA29;
    LDA.B #$03                           ;81DA2B;
    STA.B $36                            ;81DA2D;

CODE_81DA2F:
    DEC.B $35                            ;81DA2F;
    BNE CODE_81DA83                      ;81DA31;
    DEC.B $36                            ;81DA33;
    LDA.B #$05                           ;81DA35;
    STA.B $35                            ;81DA37;
    LDA.B $36                            ;81DA39;
    ASL A                                ;81DA3B;
    TAX                                  ;81DA3C;
    REP #$20                             ;81DA3D;
    LDA.W #$0508                         ;81DA3F;
    STA.W $0004                          ;81DA42;
    LDA.W DATA8_86C90D,X                 ;81DA45;
    CLC                                  ;81DA48;
    ADC.B $05                            ;81DA49;
    STA.W $0000                          ;81DA4B;
    LDA.B $08                            ;81DA4E;
    STA.W $0002                          ;81DA50;
    SEP #$20                             ;81DA53;
    JSL.L CODE_84A462                    ;81DA55;
    LDA.B #$23                           ;81DA59;
    JSL.L CODE_8088A2                    ;81DA5B;
    LDA.B $36                            ;81DA5F;
    BNE CODE_81DA83                      ;81DA61;
    LDA.B #$01                           ;81DA63;
    JSL.L CODE_84A37F                    ;81DA65;
    LDA.B $0B                            ;81DA69;
    BMI CODE_81DA74                      ;81DA6B;
    JSL.L CODE_828387                    ;81DA6D;
    SEP #$10                             ;81DA71;
    RTS                                  ;81DA73;

CODE_81DA74:
    JSL.L CODE_828398                    ;81DA74;
    LDA.B $32                            ;81DA78;
    BEQ CODE_81DA83                      ;81DA7A;
    REP #$10                             ;81DA7C;
    LDX.B $0C                            ;81DA7E;
    INC.W $000E,X                        ;81DA80;

CODE_81DA83:
    SEP #$10                             ;81DA83;
    RTS                                  ;81DA85;

CODE_81DA86:
    LDA.B $35                            ;81DA86;
    ASL A                                ;81DA88;
    TAX                                  ;81DA89;
    REP #$30                             ;81DA8A;
    LDA.L DATA8_8581F6,X                 ;81DA8C;
    SEC                                  ;81DA90;
    SBC.W #$0014                         ;81DA91;
    LDX.B $0C                            ;81DA94;
    CLC                                  ;81DA96;
    ADC.W $0008,X                        ;81DA97;
    STA.B $08                            ;81DA9A;
    LDA.W $0005,X                        ;81DA9C;
    STA.B $05                            ;81DA9F;
    SEP #$30                             ;81DAA1;
    INC.B $35                            ;81DAA3;
    LDA.B $35                            ;81DAA5;
    CMP.B #$44                           ;81DAA7;
    BCC CODE_81DAB7                      ;81DAA9;
    LDA.B #$0E                           ;81DAAB;
    STA.B $01                            ;81DAAD;
    STZ.B $35                            ;81DAAF;
    LDA.B #$07                           ;81DAB1;
    JSL.L CODE_848F07                    ;81DAB3;

CODE_81DAB7:
    RTS                                  ;81DAB7;

CODE_81DAB8:
    LDA.B $35                            ;81DAB8;
    ASL A                                ;81DABA;
    TAX                                  ;81DABB;
    REP #$31                             ;81DABC;
    LDA.L DATA8_85827E,X                 ;81DABE;
    LDX.B $0C                            ;81DAC2;
    ADC.W $0005,X                        ;81DAC4;
    STA.B $05                            ;81DAC7;
    LDA.W $0008,X                        ;81DAC9;
    CLC                                  ;81DACC;
    ADC.W #$0014                         ;81DACD;
    STA.B $08                            ;81DAD0;
    SEP #$20                             ;81DAD2;
    INC.B $35                            ;81DAD4;
    LDA.B $35                            ;81DAD6;
    CMP.B #$22                           ;81DAD8;
    BCC CODE_81DAED                      ;81DADA;
    LDA.B #$02                           ;81DADC;
    STA.B $01                            ;81DADE;
    STZ.B $02                            ;81DAE0;
    STZ.B $03                            ;81DAE2;
    REP #$20                             ;81DAE4;
    LDA.W #$FDC6                         ;81DAE6;
    STA.B $1A                            ;81DAE9;
    SEP #$20                             ;81DAEB;

CODE_81DAED:
    JSL.L CODE_848EEA                    ;81DAED;
    RTS                                  ;81DAF1;

CODE_81DAF2:
    REP #$20                             ;81DAF2;
    LDA.W $0BAD                          ;81DAF4;
    SEC                                  ;81DAF7;
    SBC.B $05                            ;81DAF8;
    SEP #$20                             ;81DAFA;
    LDA.B #$00                           ;81DAFC;
    ROR A                                ;81DAFE;
    ROR A                                ;81DAFF;
    EOR.B $11                            ;81DB00;
    AND.B #$40                           ;81DB02;
    RTS                                  ;81DB04;

CODE_81DB05:
    LDA.B $11                            ;81DB05;
    AND.B #$40                           ;81DB07;
    BEQ CODE_81DB23                      ;81DB09;
    JSL.L CODE_828195                    ;81DB0B;
    REP #$20                             ;81DB0F;
    LDA.B $1A                            ;81DB11;
    CMP.W #$0200                         ;81DB13;
    BEQ CODE_81DB37                      ;81DB16;
    BMI CODE_81DB37                      ;81DB18;
    LDA.W #$0200                         ;81DB1A;
    STA.B $1A                            ;81DB1D;
    STZ.B $1E                            ;81DB1F;
    BRA CODE_81DB37                      ;81DB21;

CODE_81DB23:
    JSL.L CODE_828174                    ;81DB23;
    REP #$20                             ;81DB27;
    LDA.B $1A                            ;81DB29;
    CMP.W #$FE00                         ;81DB2B;
    BPL CODE_81DB37                      ;81DB2E;
    LDA.W #$FE00                         ;81DB30;
    STA.B $1A                            ;81DB33;
    STZ.B $1E                            ;81DB35;

CODE_81DB37:
    SEP #$30                             ;81DB37;
    RTS                                  ;81DB39;

CODE_81DB3A:
    LDA.B $27                            ;81DB3A;
    AND.B #$7F                           ;81DB3C;
    BNE CODE_81DB55                      ;81DB3E;
    LDA.B #$23                           ;81DB40;
    JSL.L CODE_8088A2                    ;81DB42;
    JSR.W CODE_81DB56                    ;81DB46;
    INC.B $01                            ;81DB49;
    INC.B $01                            ;81DB4B;
    STZ.B $02                            ;81DB4D;
    STZ.B $03                            ;81DB4F;
    LDA.B $31                            ;81DB51;
    STA.B $32                            ;81DB53;

CODE_81DB55:
    RTS                                  ;81DB55;

CODE_81DB56:
    LDX.B $01                            ;81DB56;
    DEX                                  ;81DB58;
    DEX                                  ;81DB59;
    JMP.W (PTR16_81DB5D,X)               ;81DB5A;

PTR16_81DB5D:
    dw CODE_81DB63                       ;81DB5D;
    dw CODE_81DB95                       ;81DB5F;
    dw CODE_81DBC7                       ;81DB61;

CODE_81DB63:
    LDY.B #$05                           ;81DB63;

CODE_81DB65:
    JSL.L CODE_8282D3                    ;81DB65;
    BNE CODE_81DB8E                      ;81DB69;
    INC.W $0000,X                        ;81DB6B;
    LDA.B #$0F                           ;81DB6E;
    STA.W $000A,X                        ;81DB70;
    LDA.W DATA8_86C8F5,Y                 ;81DB73;
    STA.W $000B,X                        ;81DB76;
    LDA.B $11                            ;81DB79;
    STA.W $0011,X                        ;81DB7B;
    LDA.B $18                            ;81DB7E;
    STA.W $0018,X                        ;81DB80;
    REP #$20                             ;81DB83;
    TDC                                  ;81DB85;
    STA.W $000C,X                        ;81DB86;
    SEP #$20                             ;81DB89;
    DEY                                  ;81DB8B;
    BPL CODE_81DB65                      ;81DB8C;

CODE_81DB8E:
    SEP #$10                             ;81DB8E;
    JSL.L CODE_84A4AB                    ;81DB90;
    RTS                                  ;81DB94;

CODE_81DB95:
    LDY.B #$05                           ;81DB95;

CODE_81DB97:
    JSL.L CODE_8282D3                    ;81DB97;
    BNE CODE_81DBC0                      ;81DB9B;
    INC.W $0000,X                        ;81DB9D;
    LDA.B #$0F                           ;81DBA0;
    STA.W $000A,X                        ;81DBA2;
    LDA.W DATA8_86C8FB,Y                 ;81DBA5;
    STA.W $000B,X                        ;81DBA8;
    LDA.B $11                            ;81DBAB;
    STA.W $0011,X                        ;81DBAD;
    LDA.B $18                            ;81DBB0;
    STA.W $0018,X                        ;81DBB2;
    REP #$20                             ;81DBB5;
    TDC                                  ;81DBB7;
    STA.W $000C,X                        ;81DBB8;
    SEP #$20                             ;81DBBB;
    DEY                                  ;81DBBD;
    BPL CODE_81DB97                      ;81DBBE;

CODE_81DBC0:
    SEP #$10                             ;81DBC0;
    JSL.L CODE_84A4AB                    ;81DBC2;
    RTS                                  ;81DBC6;

CODE_81DBC7:
    LDY.B #$0B                           ;81DBC7;

CODE_81DBC9:
    JSL.L CODE_8282D3                    ;81DBC9;
    BNE CODE_81DBF2                      ;81DBCD;
    INC.W $0000,X                        ;81DBCF;
    LDA.B #$0F                           ;81DBD2;
    STA.W $000A,X                        ;81DBD4;
    LDA.W DATA8_86C901,Y                 ;81DBD7;
    STA.W $000B,X                        ;81DBDA;
    LDA.B $11                            ;81DBDD;
    STA.W $0011,X                        ;81DBDF;
    LDA.B $18                            ;81DBE2;
    STA.W $0018,X                        ;81DBE4;
    REP #$20                             ;81DBE7;
    TDC                                  ;81DBE9;
    STA.W $000C,X                        ;81DBEA;
    SEP #$20                             ;81DBED;
    DEY                                  ;81DBEF;
    BPL CODE_81DBC9                      ;81DBF0;

CODE_81DBF2:
    SEP #$10                             ;81DBF2;
    RTS                                  ;81DBF4;

CODE_81DBF5:
    LDA.B $11                            ;81DBF5;
    AND.B #$40                           ;81DBF7;
    BNE CODE_81DBFF                      ;81DBF9;
    LDA.B #$C0                           ;81DBFB;
    BRA CODE_81DC01                      ;81DBFD;

CODE_81DBFF:
    LDA.B #$40                           ;81DBFF;

CODE_81DC01:
    STA.B $29                            ;81DC01;
    STZ.B $2A                            ;81DC03;
    JSL.L CODE_8490A0                    ;81DC05;
    CMP.B #$34                           ;81DC09;
    BCC CODE_81DC32                      ;81DC0B;
    LDA.B $11                            ;81DC0D;
    AND.B #$40                           ;81DC0F;
    BNE CODE_81DC17                      ;81DC11;
    LDA.B #$E0                           ;81DC13;
    BRA CODE_81DC19                      ;81DC15;

CODE_81DC17:
    LDA.B #$20                           ;81DC17;

CODE_81DC19:
    STA.B $29                            ;81DC19;
    JSL.L CODE_8490A0                    ;81DC1B;
    CMP.B #$00                           ;81DC1F;
    BEQ CODE_81DC27                      ;81DC21;
    CMP.B #$0D                           ;81DC23;
    BCC CODE_81DC31                      ;81DC25;

CODE_81DC27:
    LDA.B #$06                           ;81DC27;
    STA.B $02                            ;81DC29;
    STZ.B $03                            ;81DC2B;
    LDA.B #$3C                           ;81DC2D;
    STA.B $3A                            ;81DC2F;

CODE_81DC31:
    RTS                                  ;81DC31;

CODE_81DC32:
    LDA.B $11                            ;81DC32;
    AND.B #$40                           ;81DC34;
    BNE CODE_81DC3C                      ;81DC36;
    LDA.B #$E0                           ;81DC38;
    BRA CODE_81DC3E                      ;81DC3A;

CODE_81DC3C:
    LDA.B #$20                           ;81DC3C;

CODE_81DC3E:
    STA.B $29                            ;81DC3E;
    STZ.B $2A                            ;81DC40;
    JSL.L CODE_8490A0                    ;81DC42;
    CMP.B #$34                           ;81DC46;
    BCS CODE_81DC27                      ;81DC48;
    RTS                                  ;81DC4A;

CODE_81DC4B:
    DEC.B $3B                            ;81DC4B;
    LDX.B $3B                            ;81DC4D;
    LDA.W DATA8_86C913,X                 ;81DC4F;
    REP #$20                             ;81DC52;
    BMI CODE_81DC5B                      ;81DC54;
    AND.W #$00FF                         ;81DC56;
    BRA CODE_81DC5E                      ;81DC59;

CODE_81DC5B:
    ORA.W #$FF00                         ;81DC5B;

CODE_81DC5E:
    CLC                                  ;81DC5E;
    ADC.B $05                            ;81DC5F;
    STA.B $05                            ;81DC61;
    SEP #$20                             ;81DC63;
    LDA.B $3B                            ;81DC65;
    BNE CODE_81DC6D                      ;81DC67;
    LDA.B $3C                            ;81DC69;
    STA.B $01                            ;81DC6B;

CODE_81DC6D:
    RTS                                  ;81DC6D;

CODE_81DC6E:
    DEC.B $36                            ;81DC6E;
    BNE CODE_81DCBF                      ;81DC70;
    JSL.L CODE_828358                    ;81DC72;
    BNE CODE_81DCBB                      ;81DC76;
    INC.W $0000,X                        ;81DC78;
    LDA.B #$0A                           ;81DC7B;
    STA.W $000A,X                        ;81DC7D;
    STZ.W $000B,X                        ;81DC80;
    LDA.B $11                            ;81DC83;
    STA.W $0011,X                        ;81DC85;
    AND.B #$40                           ;81DC88;
    REP #$21                             ;81DC8A;
    BEQ CODE_81DC93                      ;81DC8C;
    LDA.W #$0018                         ;81DC8E;
    BRA CODE_81DC96                      ;81DC91;

CODE_81DC93:
    LDA.W #$FFE8                         ;81DC93;

CODE_81DC96:
    ADC.B $05                            ;81DC96;
    STA.W $0005,X                        ;81DC98;
    LDA.B $08                            ;81DC9B;
    CLC                                  ;81DC9D;
    ADC.W #$FFF4                         ;81DC9E;
    STA.W $0008,X                        ;81DCA1;
    SEP #$20                             ;81DCA4;
    JSL.L CODE_849086                    ;81DCA6;
    AND.B #$0F                           ;81DCAA;
    XBA                                  ;81DCAC;
    LDA.B #$00                           ;81DCAD;
    XBA                                  ;81DCAF;
    TAX                                  ;81DCB0;
    LDA.W DATA8_86C91B,X                 ;81DCB1;
    STA.B $36                            ;81DCB4;
    LDX.B $33                            ;81DCB6;
    INC.W $003B,X                        ;81DCB8;

CODE_81DCBB:
    SEP #$10                             ;81DCBB;
    INC.B $36                            ;81DCBD;

CODE_81DCBF:
    RTS                                  ;81DCBF;

CODE_81DCC0:
    REP #$30                             ;81DCC0;
    LDX.B $33                            ;81DCC2;
    LDA.W $0005,X                        ;81DCC4;
    STA.B $05                            ;81DCC7;
    LDA.W $0008,X                        ;81DCC9;
    STA.B $08                            ;81DCCC;
    SEP #$20                             ;81DCCE;
    LDA.W $0011,X                        ;81DCD0;
    STA.B $11                            ;81DCD3;
    SEP #$10                             ;81DCD5;
    LDX.B $01                            ;81DCD7;
    JSR.W (PTR16_81DD0D,X)               ;81DCD9;
    JSR.W CODE_81DDD0                    ;81DCDC;
    REP #$30                             ;81DCDF;
    LDA.B $35                            ;81DCE1;
    CLC                                  ;81DCE3;
    ADC.B $2C                            ;81DCE4;
    AND.W #$00FF                         ;81DCE6;
    CLC                                  ;81DCE9;
    ADC.B $08                            ;81DCEA;
    STA.B $08                            ;81DCEC;
    LDX.B $33                            ;81DCEE;
    LDA.W $0000,X                        ;81DCF0;
    STA.B $00                            ;81DCF3;
    LDA.W $0002,X                        ;81DCF5;
    STA.B $02                            ;81DCF8;
    SEP #$30                             ;81DCFA;
    LDA.B $01                            ;81DCFC;
    CMP.B #$04                           ;81DCFE;
    BCC CODE_81DD09                      ;81DD00;
    CMP.B #$0A                           ;81DD02;
    BEQ CODE_81DD09                      ;81DD04;
    JSR.W CODE_81DE0C                    ;81DD06;

CODE_81DD09:
    JML.L CODE_8280B4                    ;81DD09;

PTR16_81DD0D:
    dw CODE_81DD1D                       ;81DD0D;
    dw CODE_81DD3B                       ;81DD0F;
    dw CODE_81DD90                       ;81DD11;
    dw CODE_81DDA8                       ;81DD13;
    dw CODE_81DDC0                       ;81DD15;
    dw CODE_81DD3A                       ;81DD17;
    dw CODE_81DDCF                       ;81DD19;
    dw CODE_81DDCB                       ;81DD1B;

CODE_81DD1D:
    JSL.L CODE_82827D                    ;81DD1D;
    STZ.B $3B                            ;81DD21;
    LDA.B #$03                           ;81DD23;
    JSL.L CODE_848F07                    ;81DD25;
    STZ.B $36                            ;81DD29;
    STZ.B $35                            ;81DD2B;
    STZ.B $37                            ;81DD2D;
    STZ.B $2C                            ;81DD2F;
    REP #$20                             ;81DD31;
    LDA.W #$C92B                         ;81DD33;
    STA.B $20                            ;81DD36;
    SEP #$20                             ;81DD38;

CODE_81DD3A:
    RTS                                  ;81DD3A;

CODE_81DD3B:
    LDX.B $02                            ;81DD3B;
    JMP.W (PTR16_81DD40,X)               ;81DD3D;

PTR16_81DD40:
    dw CODE_81DD48                       ;81DD40;
    dw CODE_81DD57                       ;81DD42;
    dw CODE_81DD72                       ;81DD44;
    dw CODE_81DD81                       ;81DD46;

CODE_81DD48:
    LDA.B $03                            ;81DD48;
    BNE CODE_81DD52                      ;81DD4A;
    LDA.B #$03                           ;81DD4C;
    JSL.L CODE_848F07                    ;81DD4E;

CODE_81DD52:
    JSL.L CODE_848EEA                    ;81DD52;
    RTS                                  ;81DD56;

CODE_81DD57:
    LDA.B $03                            ;81DD57;
    BNE CODE_81DD61                      ;81DD59;
    LDA.B #$03                           ;81DD5B;
    JSL.L CODE_848F07                    ;81DD5D;

CODE_81DD61:
    LDA.B $3B                            ;81DD61;
    BEQ CODE_81DD6D                      ;81DD63;
    STZ.B $3B                            ;81DD65;
    LDA.B #$05                           ;81DD67;
    JSL.L CODE_848F07                    ;81DD69;

CODE_81DD6D:
    JSL.L CODE_848EEA                    ;81DD6D;
    RTS                                  ;81DD71;

CODE_81DD72:
    LDA.B $03                            ;81DD72;
    BNE CODE_81DD7C                      ;81DD74;
    LDA.B #$04                           ;81DD76;
    JSL.L CODE_848F07                    ;81DD78;

CODE_81DD7C:
    JSL.L CODE_848EEA                    ;81DD7C;
    RTS                                  ;81DD80;

CODE_81DD81:
    LDA.B $03                            ;81DD81;
    BNE CODE_81DD8B                      ;81DD83;
    LDA.B #$10                           ;81DD85;
    JSL.L CODE_848F07                    ;81DD87;

CODE_81DD8B:
    JSL.L CODE_848EEA                    ;81DD8B;
    RTS                                  ;81DD8F;

CODE_81DD90:
    LDX.B $02                            ;81DD90;
    BNE CODE_81DDA3                      ;81DD92;
    LDA.B #$01                           ;81DD94;
    JSL.L CODE_848F07                    ;81DD96;
    REP #$20                             ;81DD9A;
    LDA.W #$C92F                         ;81DD9C;
    STA.B $20                            ;81DD9F;
    SEP #$20                             ;81DDA1;

CODE_81DDA3:
    JSL.L CODE_848EEA                    ;81DDA3;
    RTS                                  ;81DDA7;

CODE_81DDA8:
    LDA.B $02                            ;81DDA8;
    BNE CODE_81DDBB                      ;81DDAA;
    LDA.B #$02                           ;81DDAC;
    JSL.L CODE_848F07                    ;81DDAE;
    REP #$20                             ;81DDB2;
    LDA.W #$C933                         ;81DDB4;
    STA.B $20                            ;81DDB7;
    SEP #$20                             ;81DDB9;

CODE_81DDBB:
    JSL.L CODE_848EEA                    ;81DDBB;
    RTS                                  ;81DDBF;

CODE_81DDC0:
    LDA.B $02                            ;81DDC0;
    BNE CODE_81DDCA                      ;81DDC2;
    LDA.B #$11                           ;81DDC4;
    JSL.L CODE_848F07                    ;81DDC6;

CODE_81DDCA:
    RTS                                  ;81DDCA;

CODE_81DDCB:
    JSL.L CODE_848EEA                    ;81DDCB;

CODE_81DDCF:
    RTS                                  ;81DDCF;

CODE_81DDD0:
    LDA.B $37                            ;81DDD0;
    BNE CODE_81DDDB                      ;81DDD2;
    LDA.B $36                            ;81DDD4;
    CMP.B $35                            ;81DDD6;
    BNE CODE_81DDE3                      ;81DDD8;
    RTS                                  ;81DDDA;

CODE_81DDDB:
    STA.B $36                            ;81DDDB;
    STZ.B $37                            ;81DDDD;
    LDA.B #$01                           ;81DDDF;
    STA.B $39                            ;81DDE1;

CODE_81DDE3:
    DEC.B $39                            ;81DDE3;
    BNE CODE_81DE0B                      ;81DDE5;
    LDA.B #$01                           ;81DDE7;
    STA.B $39                            ;81DDE9;
    LDA.B $36                            ;81DDEB;
    CMP.B $35                            ;81DDED;
    BCC CODE_81DDF5                      ;81DDEF;
    INC.B $35                            ;81DDF1;
    BRA CODE_81DDF7                      ;81DDF3;

CODE_81DDF5:
    DEC.B $35                            ;81DDF5;

CODE_81DDF7:
    LDA.B $36                            ;81DDF7;
    BNE CODE_81DDFF                      ;81DDF9;
    LDA.B #$03                           ;81DDFB;
    STA.B $39                            ;81DDFD;

CODE_81DDFF:
    LDA.B $35                            ;81DDFF;
    CMP.B $36                            ;81DE01;
    BNE CODE_81DE0B                      ;81DE03;
    STZ.B $36                            ;81DE05;
    LDA.B #$03                           ;81DE07;
    STA.B $39                            ;81DE09;

CODE_81DE0B:
    RTS                                  ;81DE0B;

CODE_81DE0C:
    LDA.B $2C                            ;81DE0C;
    STA.B $3A                            ;81DE0E;
    BEQ CODE_81DE35                      ;81DE10;
    LDA.W $0BD4                          ;81DE12;
    AND.B #$04                           ;81DE15;
    BNE CODE_81DE35                      ;81DE17;
    REP #$20                             ;81DE19;
    LDA.B $05                            ;81DE1B;
    SEC                                  ;81DE1D;
    SBC.B $22                            ;81DE1E;
    CLC                                  ;81DE20;
    ADC.W $0BAD                          ;81DE21;
    STA.W $0BAD                          ;81DE24;
    LDA.B $08                            ;81DE27;
    SEC                                  ;81DE29;
    SBC.B $24                            ;81DE2A;
    CLC                                  ;81DE2C;
    ADC.W $0BB0                          ;81DE2D;
    STA.W $0BB0                          ;81DE30;
    SEP #$20                             ;81DE33;

CODE_81DE35:
    STZ.B $2C                            ;81DE35;
    REP #$10                             ;81DE37;
    LDX.W #$0BA8                         ;81DE39;
    JSL.L CODE_849C0E                    ;81DE3C;
    BCC CODE_81DEA4                      ;81DE40;
    REP #$20                             ;81DE42;
    LDA.W $0004                          ;81DE44;
    CMP.W $0006                          ;81DE47;
    BEQ CODE_81DE84                      ;81DE4A;
    BCC CODE_81DE84                      ;81DE4C;
    LDA.W $0002                          ;81DE4E;
    BPL CODE_81DE5C                      ;81DE51;
    INC A                                ;81DE53;
    INC A                                ;81DE54;
    CLC                                  ;81DE55;
    ADC.W $0BB0                          ;81DE56;
    STA.W $0BB0                          ;81DE59;

CODE_81DE5C:
    SEP #$20                             ;81DE5C;
    LDA.W $0003                          ;81DE5E;
    BMI CODE_81DE71                      ;81DE61;
    LDA.W $0BD3                          ;81DE63;
    ORA.W $0BD4                          ;81DE66;
    AND.B #$04                           ;81DE69;
    BNE CODE_81DEA4                      ;81DE6B;
    LDA.B #$08                           ;81DE6D;
    BRA CODE_81DE7F                      ;81DE6F;

CODE_81DE71:
    LDA.B $3A                            ;81DE71;
    BNE CODE_81DE79                      ;81DE73;
    LDA.B #$02                           ;81DE75;
    STA.B $37                            ;81DE77;

CODE_81DE79:
    LDA.B #$01                           ;81DE79;
    STA.B $2C                            ;81DE7B;
    LDA.B #$04                           ;81DE7D;

CODE_81DE7F:
    TSB.W $0BD4                          ;81DE7F;
    BRA CODE_81DEA4                      ;81DE82;

CODE_81DE84:
    LDA.W $0000                          ;81DE84;
    BMI CODE_81DE8C                      ;81DE87;
    DEC A                                ;81DE89;
    BRA CODE_81DE8D                      ;81DE8A;

CODE_81DE8C:
    INC A                                ;81DE8C;

CODE_81DE8D:
    CLC                                  ;81DE8D;
    ADC.W $0BAD                          ;81DE8E;
    STA.W $0BAD                          ;81DE91;
    SEP #$20                             ;81DE94;
    LDA.W $0001                          ;81DE96;
    BMI CODE_81DE9F                      ;81DE99;
    LDA.B #$02                           ;81DE9B;
    BRA CODE_81DEA1                      ;81DE9D;

CODE_81DE9F:
    LDA.B #$01                           ;81DE9F;

CODE_81DEA1:
    TSB.W $0BD4                          ;81DEA1;

CODE_81DEA4:
    SEP #$30                             ;81DEA4;
    RTS                                  ;81DEA6;

CODE_81DEA7:
    LDX.B $01                            ;81DEA7;
    JSR.W (PTR16_81DEAD,X)               ;81DEA9;
    RTL                                  ;81DEAC;

PTR16_81DEAD:
    dw CODE_81DEB3                       ;81DEAD;
    dw CODE_81DEF0                       ;81DEAF;
    dw CODE_81E0F4                       ;81DEB1;

CODE_81DEB3:
    LDA.B #$02                           ;81DEB3;
    STA.B $01                            ;81DEB5;
    STZ.B $12                            ;81DEB7;
    STZ.B $18                            ;81DEB9;
    STZ.B $28                            ;81DEBB;
    LDA.B #$FF                           ;81DEBD;
    STA.B $26                            ;81DEBF;
    LDA.W $0BB9                          ;81DEC1;
    AND.B #$30                           ;81DEC4;
    ORA.B #$04                           ;81DEC6;
    STA.B $11                            ;81DEC8;
    STA.B $2F                            ;81DECA;
    REP #$10                             ;81DECC;
    LDX.W #$D8A5                         ;81DECE;
    LDA.B $0B                            ;81DED1;
    AND.B #$7F                           ;81DED3;
    BEQ CODE_81DEDA                      ;81DED5;
    LDX.W #$D89B                         ;81DED7;

CODE_81DEDA:
    STX.B $20                            ;81DEDA;
    SEP #$10                             ;81DEDC;
    JSL.L CODE_8280B4                    ;81DEDE;
    LDA.B #$07                           ;81DEE2;
    STA.B $16                            ;81DEE4;
    LDA.B $0B                            ;81DEE6;
    AND.B #$7F                           ;81DEE8;
    INC A                                ;81DEEA;
    JSL.L CODE_848F07                    ;81DEEB;
    RTS                                  ;81DEEF;

CODE_81DEF0:
    JSL.L CODE_82806E                    ;81DEF0;
    BCC CODE_81DF04                      ;81DEF4;
    LDA.B $0B                            ;81DEF6;
    BPL CODE_81DEFF                      ;81DEF8;
    JSL.L CODE_828387                    ;81DEFA;
    RTS                                  ;81DEFE;

CODE_81DEFF:
    LDA.B #$04                           ;81DEFF;
    STA.B $01                            ;81DF01;
    RTS                                  ;81DF03;

CODE_81DF04:
    LDX.B $02                            ;81DF04;
    JMP.W (PTR16_81DF09,X)               ;81DF06;

PTR16_81DF09:
    dw CODE_81DF11                       ;81DF09;
    dw CODE_81DF70                       ;81DF0B;
    dw CODE_81DFD0                       ;81DF0D;
    dw CODE_81E027                       ;81DF0F;

CODE_81DF11:
    LDX.B $03                            ;81DF11;
    BNE CODE_81DF2F                      ;81DF13;
    INC.B $03                            ;81DF15;
    REP #$20                             ;81DF17;
    STZ.B $1A                            ;81DF19;
    LDA.W #$02F5                         ;81DF1B;
    STA.B $1C                            ;81DF1E;
    LDY.B $0B                            ;81DF20;
    BPL CODE_81DF26                      ;81DF22;
    STZ.B $1C                            ;81DF24;

CODE_81DF26:
    SEP #$20                             ;81DF26;
    LDA.B #$37                           ;81DF28;
    STA.B $1E                            ;81DF2A;
    STZ.B $1F                            ;81DF2C;
    RTS                                  ;81DF2E;

CODE_81DF2F:
    LDA.B $2B                            ;81DF2F;
    BIT.B #$08                           ;81DF31;
    BNE CODE_81DF41                      ;81DF33;
    JSL.L CODE_828174                    ;81DF35;
    JSL.L CODE_8280B4                    ;81DF39;
    LDA.B $1D                            ;81DF3D;
    BPL CODE_81DF4A                      ;81DF3F;

CODE_81DF41:
    LDA.B #$02                           ;81DF41;
    STA.B $02                            ;81DF43;
    STZ.B $1C                            ;81DF45;
    STZ.B $1D                            ;81DF47;
    RTS                                  ;81DF49;

CODE_81DF4A:
    JSL.L CODE_81E0F9                    ;81DF4A;
    LDA.W $0BCF                          ;81DF4E;
    AND.B #$7F                           ;81DF51;
    BEQ CODE_81DF6B                      ;81DF53;
    REP #$10                             ;81DF55;
    LDX.W #$0BA8                         ;81DF57;
    JSL.L CODE_849C0E                    ;81DF5A;
    SEP #$10                             ;81DF5E;
    BCC CODE_81DF6B                      ;81DF60;
    LDA.B #$06                           ;81DF62;
    STA.B $02                            ;81DF64;
    STZ.B $03                            ;81DF66;
    JMP.W CODE_81E027                    ;81DF68;

CODE_81DF6B:
    JSL.L CODE_848EEA                    ;81DF6B;
    RTS                                  ;81DF6F;

CODE_81DF70:
    LDA.B $2B                            ;81DF70;
    BIT.B #$04                           ;81DF72;
    BEQ CODE_81DF86                      ;81DF74;
    STZ.B $2F                            ;81DF76;
    LDA.B #$04                           ;81DF78;
    STA.B $02                            ;81DF7A;
    LDA.B $26                            ;81DF7C;
    BPL CODE_81DF84                      ;81DF7E;
    LDA.B #$F0                           ;81DF80;
    STA.B $26                            ;81DF82;

CODE_81DF84:
    STZ.B $27                            ;81DF84;

CODE_81DF86:
    JSL.L CODE_828174                    ;81DF86;
    REP #$20                             ;81DF8A;
    LDA.B $1C                            ;81DF8C;
    CMP.W #$FB00                         ;81DF8E;
    BPL CODE_81DF98                      ;81DF91;
    LDA.W #$FB00                         ;81DF93;
    STA.B $1C                            ;81DF96;

CODE_81DF98:
    SEP #$20                             ;81DF98;
    LDA.B $26                            ;81DF9A;
    CMP.B #$3C                           ;81DF9C;
    BCS CODE_81DFA6                      ;81DF9E;
    LDA.W $0B9C                          ;81DFA0;
    LSR A                                ;81DFA3;
    BCC CODE_81DFAA                      ;81DFA4;

CODE_81DFA6:
    JSL.L CODE_8280B4                    ;81DFA6;

CODE_81DFAA:
    JSL.L CODE_81E0F9                    ;81DFAA;
    LDA.W $0BCF                          ;81DFAE;
    AND.B #$7F                           ;81DFB1;
    BEQ CODE_81DFCB                      ;81DFB3;
    REP #$10                             ;81DFB5;
    LDX.W #$0BA8                         ;81DFB7;
    JSL.L CODE_849C0E                    ;81DFBA;
    SEP #$10                             ;81DFBE;
    BCC CODE_81DFCB                      ;81DFC0;
    LDA.B #$06                           ;81DFC2;
    STA.B $02                            ;81DFC4;
    STZ.B $03                            ;81DFC6;
    JMP.W CODE_81E027                    ;81DFC8;

CODE_81DFCB:
    JSL.L CODE_848EEA                    ;81DFCB;
    RTS                                  ;81DFCF;

CODE_81DFD0:
    JSL.L CODE_81E0F9                    ;81DFD0;
    LDA.B $2B                            ;81DFD4;
    BIT.B #$04                           ;81DFD6;
    BNE CODE_81DFE3                      ;81DFD8;
    LDA.B #$02                           ;81DFDA;
    STA.B $02                            ;81DFDC;
    STZ.B $1C                            ;81DFDE;
    STZ.B $1D                            ;81DFE0;
    RTS                                  ;81DFE2;

CODE_81DFE3:
    LDA.B $28                            ;81DFE3;
    BNE CODE_81E002                      ;81DFE5;
    LDA.B $0B                            ;81DFE7;
    BMI CODE_81E002                      ;81DFE9;
    LDA.B $26                            ;81DFEB;
    CMP.B #$3C                           ;81DFED;
    BCS CODE_81DFF3                      ;81DFEF;
    DEC.B $27                            ;81DFF1;

CODE_81DFF3:
    DEC.B $26                            ;81DFF3;
    BNE CODE_81DFFC                      ;81DFF5;
    LDA.B #$04                           ;81DFF7;
    STA.B $01                            ;81DFF9;
    RTS                                  ;81DFFB;

CODE_81DFFC:
    LDA.B $27                            ;81DFFC;
    BIT.B #$01                           ;81DFFE;
    BNE CODE_81E006                      ;81E000;

CODE_81E002:
    JSL.L CODE_8280B4                    ;81E002;

CODE_81E006:
    LDA.W $0BCF                          ;81E006;
    AND.B #$7F                           ;81E009;
    BEQ CODE_81E022                      ;81E00B;
    REP #$10                             ;81E00D;
    LDX.W #$0BA8                         ;81E00F;
    JSL.L CODE_849C0E                    ;81E012;
    SEP #$10                             ;81E016;
    BCC CODE_81E022                      ;81E018;
    LDA.B #$06                           ;81E01A;
    STA.B $02                            ;81E01C;
    STZ.B $03                            ;81E01E;
    BRA CODE_81E027                      ;81E020;

CODE_81E022:
    JSL.L CODE_848EEA                    ;81E022;
    RTS                                  ;81E026;

CODE_81E027:
    LDX.B $03                            ;81E027;
    JMP.W (PTR16_81E02C,X)               ;81E029;

PTR16_81E02C:
    dw CODE_81E032                       ;81E02C;
    dw CODE_81E086                       ;81E02E;
    dw CODE_81E0D2                       ;81E030;

CODE_81E032:
    LDA.W $0BCF                          ;81E032;
    AND.B #$7F                           ;81E035;
    BEQ CODE_81E04D                      ;81E037;
    LDX.B #$08                           ;81E039;
    LDA.B $0B                            ;81E03B;
    AND.B #$7F                           ;81E03D;
    BEQ CODE_81E043                      ;81E03F;
    LDX.B #$02                           ;81E041;

CODE_81E043:
    STX.B $27                            ;81E043;
    LDY.W $0BDB                          ;81E045;
    BNE CODE_81E052                      ;81E048;

CODE_81E04A:
    JSR.W CODE_81E10A                    ;81E04A;

CODE_81E04D:
    LDA.B #$04                           ;81E04D;
    STA.B $01                            ;81E04F;
    RTS                                  ;81E051;

CODE_81E052:
    LDA.W $1F86,Y                        ;81E052;
    AND.B #$3F                           ;81E055;
    CMP.B #$1C                           ;81E057;
    BEQ CODE_81E04A                      ;81E059;
    LDA.B #$02                           ;81E05B;
    STA.B $03                            ;81E05D;
    LDA.B #$01                           ;81E05F;
    STA.W $1F13                          ;81E061;
    STA.W $1F14                          ;81E064;
    STA.W $1F15                          ;81E067;
    STA.W $1F16                          ;81E06A;
    STA.W $1F17                          ;81E06D;
    STA.W $1F18                          ;81E070;
    STA.W $1F19                          ;81E073;
    STA.W $0BB6                          ;81E076;
    LDA.B #$80                           ;81E079;
    TSB.B $00                            ;81E07B;
    LDA.B #$04                           ;81E07D;
    STA.B $26                            ;81E07F;
    JSL.L CODE_849F85                    ;81E081;
    RTS                                  ;81E085;

CODE_81E086:
    LDA.B #$CF                           ;81E086;
    AND.B #$7F                           ;81E088;
    BEQ CODE_81E0CD                      ;81E08A;
    DEC.B $26                            ;81E08C;
    BNE CODE_81E0D1                      ;81E08E;
    LDA.B #$04                           ;81E090;
    STA.B $26                            ;81E092;
    LDY.W $0BDB                          ;81E094;
    REP #$21                             ;81E097;
    LDA.W $1F85,Y                        ;81E099;
    AND.W #$3FFF                         ;81E09C;
    ADC.W #$0100                         ;81E09F;
    CMP.W #$1C00                         ;81E0A2;
    BCC CODE_81E0BB                      ;81E0A5;
    LDA.B $27                            ;81E0A7;
    AND.W #$00FF                         ;81E0A9;
    DEC A                                ;81E0AC;
    BEQ CODE_81E0B4                      ;81E0AD;
    STA.B $27                            ;81E0AF;
    JSR.W CODE_81E10A                    ;81E0B1;

CODE_81E0B4:
    LDX.B #$04                           ;81E0B4;
    STX.B $03                            ;81E0B6;
    LDA.W #$1C00                         ;81E0B8;

CODE_81E0BB:
    ORA.W #$C000                         ;81E0BB;
    STA.W $1F85,Y                        ;81E0BE;
    SEP #$20                             ;81E0C1;
    LDA.B #$0C                           ;81E0C3;
    JSL.L CODE_8088CD                    ;81E0C5;
    DEC.B $27                            ;81E0C9;
    BNE CODE_81E0D1                      ;81E0CB;

CODE_81E0CD:
    LDA.B #$04                           ;81E0CD;
    STA.B $03                            ;81E0CF;

CODE_81E0D1:
    RTS                                  ;81E0D1;

CODE_81E0D2:
    STZ.W $1F13                          ;81E0D2;
    STZ.W $1F14                          ;81E0D5;
    STZ.W $1F15                          ;81E0D8;
    STZ.W $1F16                          ;81E0DB;
    STZ.W $1F17                          ;81E0DE;
    STZ.W $1F18                          ;81E0E1;
    STZ.W $1F19                          ;81E0E4;
    LDA.B #$04                           ;81E0E7;
    STA.B $01                            ;81E0E9;
    LDA.B #$80                           ;81E0EB;
    TRB.B $00                            ;81E0ED;
    JSL.L CODE_849FAD                    ;81E0EF;
    RTS                                  ;81E0F3;

CODE_81E0F4:
    JSL.L CODE_828398                    ;81E0F4;
    RTS                                  ;81E0F8;

CODE_81E0F9:
    LDA.B $28                            ;81E0F9;
    BNE CODE_81E109                      ;81E0FB;
    LDA.B $30                            ;81E0FD;
    PHA                                  ;81E0FF;
    STZ.B $30                            ;81E100;
    JSL.L CODE_8491BE                    ;81E102;
    PLA                                  ;81E106;
    STA.B $30                            ;81E107;

CODE_81E109:
    RTL                                  ;81E109;

CODE_81E10A:
    PHP                                  ;81E10A;
    REP #$20                             ;81E10B;
    STZ.W $0002                          ;81E10D;
    LDA.B $27                            ;81E110;
    AND.W #$00FF                         ;81E112;
    XBA                                  ;81E115;
    STA.W $0000                          ;81E116;
    LDX.B #$02                           ;81E119;

CODE_81E11B:
    LDA.W $1F85,X                        ;81E11B;
    BIT.W #$4000                         ;81E11E;
    BEQ CODE_81E153                      ;81E121;
    AND.W #$3FFF                         ;81E123;
    CMP.W #$1C00                         ;81E126;
    BCS CODE_81E153                      ;81E129;
    ADC.W $0000                          ;81E12B;
    CMP.W #$1C00                         ;81E12E;
    BCC CODE_81E141                      ;81E131;
    SBC.W #$1C00                         ;81E133;
    STA.W $0000                          ;81E136;
    BEQ CODE_81E13E                      ;81E139;
    INC.W $0002                          ;81E13B;

CODE_81E13E:
    LDA.W #$1C00                         ;81E13E;

CODE_81E141:
    ORA.W #$C000                         ;81E141;
    STA.W $1F85,X                        ;81E144;
    LDA.W #$000D                         ;81E147;
    JSL.L CODE_8088CD                    ;81E14A;
    LDA.W $0002                          ;81E14E;
    BEQ CODE_81E159                      ;81E151;

CODE_81E153:
    INX                                  ;81E153;
    INX                                  ;81E154;
    CPX.B #$12                           ;81E155;
    BNE CODE_81E11B                      ;81E157;

CODE_81E159:
    PLP                                  ;81E159;
    RTS                                  ;81E15A;

CODE_81E15B:
    LDX.B $01                            ;81E15B;
    JSR.W (PTR16_81E16E,X)               ;81E15D;
    REP #$10                             ;81E160;
    LDX.B $29                            ;81E162;
    LDA.W $0011,X                        ;81E164;
    ORA.B $2C                            ;81E167;
    STA.B $11                            ;81E169;
    SEP #$10                             ;81E16B;
    RTL                                  ;81E16D;

PTR16_81E16E:
    dw CODE_81E174                       ;81E16E;
    dw CODE_81E19E                       ;81E170;
    dw CODE_81E2E0                       ;81E172;

CODE_81E174:
    LDA.B #$02                           ;81E174;
    STA.B $01                            ;81E176;
    STZ.B $2B                            ;81E178;
    LDA.B #$00                           ;81E17A;
    STA.B $2C                            ;81E17C;
    STZ.B $2D                            ;81E17E;
    STZ.B $28                            ;81E180;
    STA.B $26                            ;81E182;
    LDA.B #$08                           ;81E184;
    STA.B $27                            ;81E186;
    STZ.B $12                            ;81E188;
    REP #$20                             ;81E18A;
    LDA.W #$D8AF                         ;81E18C;
    STA.B $20                            ;81E18F;
    SEP #$20                             ;81E191;
    LDA.B #$02                           ;81E193;
    STA.B $16                            ;81E195;
    LDA.B #$01                           ;81E197;
    JSL.L CODE_848F07                    ;81E199;
    RTS                                  ;81E19D;

CODE_81E19E:
    LDA.B #$00                           ;81E19E;
    STA.B $2C                            ;81E1A0;
    LDX.B $02                            ;81E1A2;
    JSR.W (PTR16_81E1CA,X)               ;81E1A4;
    REP #$10                             ;81E1A7;
    LDX.B $29                            ;81E1A9;
    LDA.W $0002,X                        ;81E1AB;
    CMP.B $2B                            ;81E1AE;
    BEQ CODE_81E1B6                      ;81E1B0;
    STA.B $02                            ;81E1B2;
    STZ.B $03                            ;81E1B4;

CODE_81E1B6:
    STA.B $2B                            ;81E1B6;
    LDA.B $27                            ;81E1B8;
    AND.B #$7F                           ;81E1BA;
    BEQ CODE_81E1C3                      ;81E1BC;
    LDA.W $0001,X                        ;81E1BE;
    STA.B $01                            ;81E1C1;

CODE_81E1C3:
    SEP #$10                             ;81E1C3;
    JSL.L CODE_8280B4                    ;81E1C5;
    RTS                                  ;81E1C9;

PTR16_81E1CA:
    dw CODE_81E1D4                       ;81E1CA;
    dw CODE_81E23A                       ;81E1CC;
    dw CODE_81E29A                       ;81E1CE;
    dw CODE_81E23A                       ;81E1D0;
    dw CODE_81E1D4                       ;81E1D2;

CODE_81E1D4:
    LDX.B $03                            ;81E1D4;
    JSR.W (PTR16_81E214,X)               ;81E1D6;
    LDA.B $30                            ;81E1D9;
    STA.B $2E                            ;81E1DB;
    STZ.B $30                            ;81E1DD;
    JSL.L CODE_849B43                    ;81E1DF;
    BEQ CODE_81E20B                      ;81E1E3;
    LDA.B $2E                            ;81E1E5;
    STA.B $30                            ;81E1E7;
    LDA.B #$0E                           ;81E1E9;
    STA.B $2C                            ;81E1EB;
    LDA.B $27                            ;81E1ED;
    AND.B #$7F                           ;81E1EF;
    BNE CODE_81E1FE                      ;81E1F1;
    LDA.B #$04                           ;81E1F3;
    STA.B $01                            ;81E1F5;
    LDA.B #$03                           ;81E1F7;
    JSL.L CODE_84A37F                    ;81E1F9;
    RTS                                  ;81E1FD;

CODE_81E1FE:
    CMP.B #$07                           ;81E1FE;
    BPL CODE_81E20B                      ;81E200;
    STA.B $2D                            ;81E202;
    LDA.B #$07                           ;81E204;
    JSL.L CODE_848F07                    ;81E206;
    RTS                                  ;81E20A;

CODE_81E20B:
    LDA.B $2E                            ;81E20B;
    STA.B $30                            ;81E20D;
    JSL.L CODE_849B03                    ;81E20F;
    RTS                                  ;81E213;

PTR16_81E214:
    dw CODE_81E218                       ;81E214;
    dw CODE_81E239                       ;81E216;

CODE_81E218:
    REP #$10                             ;81E218;
    LDA.B #$02                           ;81E21A;
    STA.B $03                            ;81E21C;
    LDX.B $29                            ;81E21E;
    LDY.W $0005,X                        ;81E220;
    STY.B $05                            ;81E223;
    LDY.W $0008,X                        ;81E225;
    STY.B $08                            ;81E228;
    SEP #$10                             ;81E22A;
    LDA.B #$01                           ;81E22C;
    LDX.B $2D                            ;81E22E;
    BEQ CODE_81E234                      ;81E230;
    LDA.B #$07                           ;81E232;

CODE_81E234:
    JSL.L CODE_848F07                    ;81E234;
    RTS                                  ;81E238;

CODE_81E239:
    RTS                                  ;81E239;

CODE_81E23A:
    LDX.B $03                            ;81E23A;
    JSR.W (PTR16_81E274,X)               ;81E23C;
    LDA.B $30                            ;81E23F;
    STA.B $2E                            ;81E241;
    STZ.B $30                            ;81E243;
    JSL.L CODE_849B43                    ;81E245;
    BEQ CODE_81E26B                      ;81E249;
    LDA.B $2E                            ;81E24B;
    STA.B $30                            ;81E24D;
    LDA.B #$0E                           ;81E24F;
    STA.B $2C                            ;81E251;
    LDA.B $27                            ;81E253;
    AND.B #$7F                           ;81E255;
    BNE CODE_81E25E                      ;81E257;
    LDA.B #$04                           ;81E259;
    STA.B $01                            ;81E25B;
    RTS                                  ;81E25D;

CODE_81E25E:
    CMP.B #$07                           ;81E25E;
    BPL CODE_81E26B                      ;81E260;
    STA.B $2D                            ;81E262;
    LDA.B #$07                           ;81E264;
    JSL.L CODE_848F07                    ;81E266;
    RTS                                  ;81E26A;

CODE_81E26B:
    LDA.B $2E                            ;81E26B;
    STA.B $30                            ;81E26D;
    JSL.L CODE_849B03                    ;81E26F;
    RTS                                  ;81E273;

PTR16_81E274:
    dw CODE_81E278                       ;81E274;
    dw CODE_81E289                       ;81E276;

CODE_81E278:
    LDA.B #$02                           ;81E278;
    STA.B $03                            ;81E27A;
    LDA.B #$01                           ;81E27C;
    LDX.B $2D                            ;81E27E;
    BEQ CODE_81E284                      ;81E280;
    LDA.B #$07                           ;81E282;

CODE_81E284:
    JSL.L CODE_848F07                    ;81E284;
    RTS                                  ;81E288;

CODE_81E289:
    REP #$30                             ;81E289;
    LDX.B $29                            ;81E28B;
    LDA.W $0005,X                        ;81E28D;
    STA.B $05                            ;81E290;
    LDA.W $0008,X                        ;81E292;
    STA.B $08                            ;81E295;
    SEP #$30                             ;81E297;
    RTS                                  ;81E299;

CODE_81E29A:
    LDX.B $03                            ;81E29A;
    JMP.W (PTR16_81E29F,X)               ;81E29C;

PTR16_81E29F:
    dw CODE_81E2A7                       ;81E29F;
    dw CODE_81E2B8                       ;81E2A1;
    dw CODE_81E2C5                       ;81E2A3;
    dw CODE_81E2DB                       ;81E2A5;

CODE_81E2A7:
    LDA.B #$02                           ;81E2A7;
    STA.B $03                            ;81E2A9;
    LDA.B #$03                           ;81E2AB;
    LDX.B $2D                            ;81E2AD;
    BEQ CODE_81E2B3                      ;81E2AF;
    LDA.B #$08                           ;81E2B1;

CODE_81E2B3:
    JSL.L CODE_848F07                    ;81E2B3;
    RTS                                  ;81E2B7;

CODE_81E2B8:
    LDA.B $0F                            ;81E2B8;
    BPL CODE_81E2C0                      ;81E2BA;
    LDA.B #$04                           ;81E2BC;
    STA.B $03                            ;81E2BE;

CODE_81E2C0:
    JSL.L CODE_848EEA                    ;81E2C0;
    RTS                                  ;81E2C4;

CODE_81E2C5:
    REP #$10                             ;81E2C5;
    LDX.B $29                            ;81E2C7;
    LDA.W $0036,X                        ;81E2C9;
    SEP #$10                             ;81E2CC;
    BEQ CODE_81E2C0                      ;81E2CE;
    LDA.B #$06                           ;81E2D0;
    STA.B $03                            ;81E2D2;
    LDA.B #$05                           ;81E2D4;
    JSL.L CODE_848F07                    ;81E2D6;
    RTS                                  ;81E2DA;

CODE_81E2DB:
    JSL.L CODE_848EEA                    ;81E2DB;
    RTS                                  ;81E2DF;

CODE_81E2E0:
    REP #$10                             ;81E2E0;
    LDX.B $29                            ;81E2E2;
    INC.W $0037,X                        ;81E2E4;
    STZ.W $0034,X                        ;81E2E7;
    STZ.W $0035,X                        ;81E2EA;
    LDY.W #$0002                         ;81E2ED;

CODE_81E2F0:
    JSL.L CODE_8282D3                    ;81E2F0;
    BNE CODE_81E323                      ;81E2F4;
    INC.W $0000,X                        ;81E2F6;
    LDA.B #$04                           ;81E2F9;
    STA.W $000A,X                        ;81E2FB;
    TYA                                  ;81E2FE;
    STA.W $000B,X                        ;81E2FF;
    LDA.B $11                            ;81E302;
    AND.B #$F0                           ;81E304;
    ORA.L $7F8300                        ;81E306;
    STA.W $0011,X                        ;81E30A;
    LDA.B $18                            ;81E30D;
    STA.W $0018,X                        ;81E30F;
    REP #$20                             ;81E312;
    LDA.B $05                            ;81E314;
    STA.W $0005,X                        ;81E316;
    LDA.B $08                            ;81E319;
    STA.W $0008,X                        ;81E31B;
    SEP #$20                             ;81E31E;
    DEY                                  ;81E320;
    BPL CODE_81E2F0                      ;81E321;

CODE_81E323:
    SEP #$10                             ;81E323;
    JSL.L CODE_828398                    ;81E325;
    RTS                                  ;81E329;

CODE_81E32A:
    LDX.B $01                            ;81E32A;
    JSR.W (PTR16_81E330,X)               ;81E32C;
    RTL                                  ;81E32F;

PTR16_81E330:
    dw CODE_81E336                       ;81E330;
    dw CODE_81E367                       ;81E332;
    dw CODE_81E48A                       ;81E334;

CODE_81E336:
    LDA.B #$02                           ;81E336;
    STA.B $01                            ;81E338;
    STZ.B $12                            ;81E33A;
    STZ.B $18                            ;81E33C;
    STZ.B $28                            ;81E33E;
    LDA.B #$FF                           ;81E340;
    STA.B $26                            ;81E342;
    LDA.W $0BB9                          ;81E344;
    AND.B #$30                           ;81E347;
    ORA.B #$02                           ;81E349;
    STA.B $11                            ;81E34B;
    STA.B $2F                            ;81E34D;
    REP #$20                             ;81E34F;
    LDA.W #$D8B3                         ;81E351;
    STA.B $20                            ;81E354;
    SEP #$20                             ;81E356;
    JSL.L CODE_8280B4                    ;81E358;
    LDA.B #$11                           ;81E35C;
    STA.B $16                            ;81E35E;
    LDA.B #$00                           ;81E360;
    JSL.L CODE_848F07                    ;81E362;
    RTS                                  ;81E366;

CODE_81E367:
    JSL.L CODE_82806E                    ;81E367;
    BCC CODE_81E37B                      ;81E36B;
    LDA.B $0B                            ;81E36D;
    BPL CODE_81E376                      ;81E36F;
    JSL.L CODE_828387                    ;81E371;
    RTS                                  ;81E375;

CODE_81E376:
    LDA.B #$04                           ;81E376;
    STA.B $01                            ;81E378;
    RTS                                  ;81E37A;

CODE_81E37B:
    LDX.B $02                            ;81E37B;
    JMP.W (PTR16_81E380,X)               ;81E37D;

PTR16_81E380:
    dw CODE_81E386                       ;81E380;
    dw CODE_81E3DF                       ;81E382;
    dw CODE_81E439                       ;81E384;

CODE_81E386:
    LDX.B $03                            ;81E386;
    BNE CODE_81E3A4                      ;81E388;
    INC.B $03                            ;81E38A;
    REP #$20                             ;81E38C;
    STZ.B $1A                            ;81E38E;
    LDA.W #$02F5                         ;81E390;
    STA.B $1C                            ;81E393;
    LDY.B $0B                            ;81E395;
    BPL CODE_81E39B                      ;81E397;
    STZ.B $1C                            ;81E399;

CODE_81E39B:
    SEP #$20                             ;81E39B;
    LDA.B #$37                           ;81E39D;
    STA.B $1E                            ;81E39F;
    STZ.B $1F                            ;81E3A1;
    RTS                                  ;81E3A3;

CODE_81E3A4:
    LDA.B $2B                            ;81E3A4;
    BIT.B #$08                           ;81E3A6;
    BNE CODE_81E3B6                      ;81E3A8;
    JSL.L CODE_828174                    ;81E3AA;
    JSL.L CODE_8280B4                    ;81E3AE;
    LDA.B $1D                            ;81E3B2;
    BPL CODE_81E3BF                      ;81E3B4;

CODE_81E3B6:
    LDA.B #$02                           ;81E3B6;
    STA.B $02                            ;81E3B8;
    STZ.B $1C                            ;81E3BA;
    STZ.B $1D                            ;81E3BC;
    RTS                                  ;81E3BE;

CODE_81E3BF:
    JSL.L CODE_81E0F9                    ;81E3BF;
    LDA.W $0BCF                          ;81E3C3;
    AND.B #$7F                           ;81E3C6;
    BEQ CODE_81E3DA                      ;81E3C8;
    REP #$10                             ;81E3CA;
    LDX.W #$0BA8                         ;81E3CC;
    JSL.L CODE_849C0E                    ;81E3CF;
    SEP #$10                             ;81E3D3;
    BCC CODE_81E3DA                      ;81E3D5;
    JMP.W CODE_81E48F                    ;81E3D7;

CODE_81E3DA:
    JSL.L CODE_848EEA                    ;81E3DA;
    RTS                                  ;81E3DE;

CODE_81E3DF:
    LDA.B $2B                            ;81E3DF;
    BIT.B #$04                           ;81E3E1;
    BEQ CODE_81E3F5                      ;81E3E3;
    STZ.B $2F                            ;81E3E5;
    LDA.B #$04                           ;81E3E7;
    STA.B $02                            ;81E3E9;
    LDA.B $26                            ;81E3EB;
    BPL CODE_81E3F3                      ;81E3ED;
    LDA.B #$F0                           ;81E3EF;
    STA.B $26                            ;81E3F1;

CODE_81E3F3:
    STZ.B $27                            ;81E3F3;

CODE_81E3F5:
    JSL.L CODE_828174                    ;81E3F5;
    REP #$20                             ;81E3F9;
    LDA.B $1C                            ;81E3FB;
    CMP.W #$FB00                         ;81E3FD;
    BPL CODE_81E407                      ;81E400;
    LDA.W #$FB00                         ;81E402;
    STA.B $1C                            ;81E405;

CODE_81E407:
    SEP #$20                             ;81E407;
    LDA.B $26                            ;81E409;
    CMP.B #$3C                           ;81E40B;
    BCS CODE_81E415                      ;81E40D;
    LDA.W $0B9C                          ;81E40F;
    LSR A                                ;81E412;
    BCC CODE_81E419                      ;81E413;

CODE_81E415:
    JSL.L CODE_8280B4                    ;81E415;

CODE_81E419:
    JSL.L CODE_81E0F9                    ;81E419;
    LDA.W $0BCF                          ;81E41D;
    AND.B #$7F                           ;81E420;
    BEQ CODE_81E434                      ;81E422;
    REP #$10                             ;81E424;
    LDX.W #$0BA8                         ;81E426;
    JSL.L CODE_849C0E                    ;81E429;
    SEP #$10                             ;81E42D;
    BCC CODE_81E434                      ;81E42F;
    JMP.W CODE_81E48F                    ;81E431;

CODE_81E434:
    JSL.L CODE_848EEA                    ;81E434;
    RTS                                  ;81E438;

CODE_81E439:
    JSL.L CODE_81E0F9                    ;81E439;
    LDA.B $2B                            ;81E43D;
    BIT.B #$04                           ;81E43F;
    BNE CODE_81E44C                      ;81E441;
    LDA.B #$02                           ;81E443;
    STA.B $02                            ;81E445;
    STZ.B $1C                            ;81E447;
    STZ.B $1D                            ;81E449;
    RTS                                  ;81E44B;

CODE_81E44C:
    LDA.B $28                            ;81E44C;
    BNE CODE_81E46B                      ;81E44E;
    LDA.B $0B                            ;81E450;
    BMI CODE_81E46B                      ;81E452;
    LDA.B $26                            ;81E454;
    CMP.B #$3C                           ;81E456;
    BCS CODE_81E45C                      ;81E458;
    DEC.B $27                            ;81E45A;

CODE_81E45C:
    DEC.B $26                            ;81E45C;
    BNE CODE_81E465                      ;81E45E;
    LDA.B #$04                           ;81E460;
    STA.B $01                            ;81E462;
    RTS                                  ;81E464;

CODE_81E465:
    LDA.B $27                            ;81E465;
    BIT.B #$01                           ;81E467;
    BNE CODE_81E46F                      ;81E469;

CODE_81E46B:
    JSL.L CODE_8280B4                    ;81E46B;

CODE_81E46F:
    LDA.W $0BCF                          ;81E46F;
    AND.B #$7F                           ;81E472;
    BEQ CODE_81E485                      ;81E474;
    REP #$10                             ;81E476;
    LDX.W #$0BA8                         ;81E478;
    JSL.L CODE_849C0E                    ;81E47B;
    SEP #$10                             ;81E47F;
    BCC CODE_81E485                      ;81E481;
    BRA CODE_81E48F                      ;81E483;

CODE_81E485:
    JSL.L CODE_848EEA                    ;81E485;
    RTS                                  ;81E489;

CODE_81E48A:
    JSL.L CODE_828398                    ;81E48A;
    RTS                                  ;81E48E;

CODE_81E48F:
    LDA.B #$09                           ;81E48F;
    CMP.W $1F80                          ;81E491;
    BEQ CODE_81E4A6                      ;81E494;
    BCS CODE_81E49D                      ;81E496;
    STA.W $1F80                          ;81E498;
    BRA CODE_81E4A6                      ;81E49B;

CODE_81E49D:
    LDA.B #$28                           ;81E49D;
    JSL.L CODE_8088CD                    ;81E49F;
    INC.W $1F80                          ;81E4A3;

CODE_81E4A6:
    LDA.B #$04                           ;81E4A6;
    STA.B $01                            ;81E4A8;
    RTS                                  ;81E4AA;

CODE_81E4AB:
    LDX.B $01                            ;81E4AB;
    JSR.W (PTR16_81E4B1,X)               ;81E4AD;
    RTL                                  ;81E4B0;

PTR16_81E4B1:
    dw CODE_81E4B7                       ;81E4B1;
    dw CODE_81E502                       ;81E4B3;
    dw CODE_81E6AD                       ;81E4B5;

CODE_81E4B7:
    LDA.W $1F99                          ;81E4B7;
    AND.B $0B                            ;81E4BA;
    BEQ CODE_81E4C3                      ;81E4BC;
    JSL.L CODE_828398                    ;81E4BE;
    RTS                                  ;81E4C2;

CODE_81E4C3:
    LDA.B #$02                           ;81E4C3;
    STA.B $01                            ;81E4C5;
    STZ.B $12                            ;81E4C7;
    STZ.B $18                            ;81E4C9;
    STZ.B $28                            ;81E4CB;
    LDA.B #$FF                           ;81E4CD;
    STA.B $26                            ;81E4CF;
    STA.B $2F                            ;81E4D1;
    LDA.L $7F828C                        ;81E4D3;
    STA.B $18                            ;81E4D7;
    LDA.W $0BB9                          ;81E4D9;
    AND.B #$30                           ;81E4DC;
    ORA.B #$04                           ;81E4DE;
    STA.B $11                            ;81E4E0;
    LDA.L $7F838C                        ;81E4E2;
    AND.B #$01                           ;81E4E6;
    TSB.B $11                            ;81E4E8;
    REP #$20                             ;81E4EA;
    LDA.W #$D8BD                         ;81E4EC;
    STA.B $20                            ;81E4EF;
    SEP #$20                             ;81E4F1;
    JSL.L CODE_8280B4                    ;81E4F3;
    LDA.B #$96                           ;81E4F7;
    STA.B $16                            ;81E4F9;
    LDA.B #$00                           ;81E4FB;
    JSL.L CODE_848F07                    ;81E4FD;
    RTS                                  ;81E501;

CODE_81E502:
    JSL.L CODE_82806E                    ;81E502;
    BCC CODE_81E50D                      ;81E506;
    JSL.L CODE_828387                    ;81E508;
    RTS                                  ;81E50C;

CODE_81E50D:
    LDX.B $02                            ;81E50D;
    JMP.W (PTR16_81E512,X)               ;81E50F;

PTR16_81E512:
    dw CODE_81E51A                       ;81E512;
    dw CODE_81E570                       ;81E514;
    dw CODE_81E5D0                       ;81E516;
    dw CODE_81E628                       ;81E518;

CODE_81E51A:
    LDX.B $03                            ;81E51A;
    BNE CODE_81E52F                      ;81E51C;
    INC.B $03                            ;81E51E;
    REP #$20                             ;81E520;
    STZ.B $1A                            ;81E522;
    STZ.B $1C                            ;81E524;
    SEP #$20                             ;81E526;
    LDA.B #$37                           ;81E528;
    STA.B $1E                            ;81E52A;
    STZ.B $1F                            ;81E52C;
    RTS                                  ;81E52E;

CODE_81E52F:
    LDA.B $2B                            ;81E52F;
    BIT.B #$08                           ;81E531;
    BNE CODE_81E541                      ;81E533;
    JSL.L CODE_828174                    ;81E535;
    JSL.L CODE_8280B4                    ;81E539;
    LDA.B $1D                            ;81E53D;
    BPL CODE_81E54A                      ;81E53F;

CODE_81E541:
    LDA.B #$02                           ;81E541;
    STA.B $02                            ;81E543;
    STZ.B $1C                            ;81E545;
    STZ.B $1D                            ;81E547;
    RTS                                  ;81E549;

CODE_81E54A:
    JSL.L CODE_81E0F9                    ;81E54A;
    LDA.W $0BCF                          ;81E54E;
    AND.B #$7F                           ;81E551;
    BEQ CODE_81E56B                      ;81E553;
    REP #$10                             ;81E555;
    LDX.W #$0BA8                         ;81E557;
    JSL.L CODE_849C0E                    ;81E55A;
    SEP #$10                             ;81E55E;
    BCC CODE_81E56B                      ;81E560;
    LDA.B #$06                           ;81E562;
    STA.B $02                            ;81E564;
    STZ.B $03                            ;81E566;
    STA.W $1F3B                          ;81E568;

CODE_81E56B:
    JSL.L CODE_848EEA                    ;81E56B;
    RTS                                  ;81E56F;

CODE_81E570:
    LDA.B $2B                            ;81E570;
    BIT.B #$04                           ;81E572;
    BEQ CODE_81E586                      ;81E574;
    STZ.B $2F                            ;81E576;
    LDA.B #$04                           ;81E578;
    STA.B $02                            ;81E57A;
    LDA.B $26                            ;81E57C;
    BPL CODE_81E584                      ;81E57E;
    LDA.B #$F0                           ;81E580;
    STA.B $26                            ;81E582;

CODE_81E584:
    STZ.B $27                            ;81E584;

CODE_81E586:
    JSL.L CODE_828174                    ;81E586;
    REP #$20                             ;81E58A;
    LDA.B $1C                            ;81E58C;
    CMP.W #$FB00                         ;81E58E;
    BPL CODE_81E598                      ;81E591;
    LDA.W #$FB00                         ;81E593;
    STA.B $1C                            ;81E596;

CODE_81E598:
    SEP #$20                             ;81E598;
    LDA.B $26                            ;81E59A;
    CMP.B #$3C                           ;81E59C;
    BCS CODE_81E5A6                      ;81E59E;
    LDA.W $0B9C                          ;81E5A0;
    LSR A                                ;81E5A3;
    BCC CODE_81E5AA                      ;81E5A4;

CODE_81E5A6:
    JSL.L CODE_8280B4                    ;81E5A6;

CODE_81E5AA:
    JSL.L CODE_81E0F9                    ;81E5AA;
    LDA.W $0BCF                          ;81E5AE;
    AND.B #$7F                           ;81E5B1;
    BEQ CODE_81E5CB                      ;81E5B3;
    REP #$10                             ;81E5B5;
    LDX.W #$0BA8                         ;81E5B7;
    JSL.L CODE_849C0E                    ;81E5BA;
    SEP #$10                             ;81E5BE;
    BCC CODE_81E5CB                      ;81E5C0;
    LDA.B #$06                           ;81E5C2;
    STA.B $02                            ;81E5C4;
    STZ.B $03                            ;81E5C6;
    STA.W $1F3B                          ;81E5C8;

CODE_81E5CB:
    JSL.L CODE_848EEA                    ;81E5CB;
    RTS                                  ;81E5CF;

CODE_81E5D0:
    JSL.L CODE_81E0F9                    ;81E5D0;
    LDA.B $2B                            ;81E5D4;
    BIT.B #$04                           ;81E5D6;
    BNE CODE_81E5E3                      ;81E5D8;
    LDA.B #$02                           ;81E5DA;
    STA.B $02                            ;81E5DC;
    STZ.B $1C                            ;81E5DE;
    STZ.B $1D                            ;81E5E0;
    RTS                                  ;81E5E2;

CODE_81E5E3:
    LDA.B $28                            ;81E5E3;
    BNE CODE_81E602                      ;81E5E5;
    LDA.B $0B                            ;81E5E7;
    BNE CODE_81E602                      ;81E5E9;
    LDA.B $26                            ;81E5EB;
    CMP.B #$3C                           ;81E5ED;
    BCS CODE_81E5F3                      ;81E5EF;
    DEC.B $27                            ;81E5F1;

CODE_81E5F3:
    DEC.B $26                            ;81E5F3;
    BNE CODE_81E5FC                      ;81E5F5;
    LDA.B #$04                           ;81E5F7;
    STA.B $01                            ;81E5F9;
    RTS                                  ;81E5FB;

CODE_81E5FC:
    LDA.B $27                            ;81E5FC;
    BIT.B #$01                           ;81E5FE;
    BNE CODE_81E606                      ;81E600;

CODE_81E602:
    JSL.L CODE_8280B4                    ;81E602;

CODE_81E606:
    LDA.W $0BCF                          ;81E606;
    AND.B #$7F                           ;81E609;
    BEQ CODE_81E623                      ;81E60B;
    REP #$10                             ;81E60D;
    LDX.W #$0BA8                         ;81E60F;
    JSL.L CODE_849C0E                    ;81E612;
    SEP #$10                             ;81E616;
    BCC CODE_81E623                      ;81E618;
    LDA.B #$06                           ;81E61A;
    STA.B $02                            ;81E61C;
    STZ.B $03                            ;81E61E;
    STA.W $1F3B                          ;81E620;

CODE_81E623:
    JSL.L CODE_848EEA                    ;81E623;
    RTS                                  ;81E627;

CODE_81E628:
    LDX.B $03                            ;81E628;
    JMP.W (PTR16_81E62D,X)               ;81E62A;

PTR16_81E62D:
    dw CODE_81E633                       ;81E62D;
    dw CODE_81E685                       ;81E62F;
    dw CODE_81E68E                       ;81E631;

CODE_81E633:
    LDA.W $0BCF                          ;81E633;
    AND.B #$7F                           ;81E636;
    BEQ CODE_81E652                      ;81E638;
    LDX.B #$00                           ;81E63A;

CODE_81E63C:
    LDA.W $1F83,X                        ;81E63C;
    BMI CODE_81E64D                      ;81E63F;
    LDA.B #$80                           ;81E641;
    STA.W $1F83,X                        ;81E643;
    LDA.B $0B                            ;81E646;
    TSB.W $1F99                          ;81E648;
    BRA CODE_81E657                      ;81E64B;

CODE_81E64D:
    INX                                  ;81E64D;
    CPX.B #$04                           ;81E64E;
    BNE CODE_81E63C                      ;81E650;

CODE_81E652:
    LDA.B #$04                           ;81E652;
    STA.B $01                            ;81E654;
    RTS                                  ;81E656;

CODE_81E657:
    LDA.B #$02                           ;81E657;
    STA.B $03                            ;81E659;
    LDA.B #$01                           ;81E65B;
    STA.W $1F13                          ;81E65D;
    STA.W $1F14                          ;81E660;
    STA.W $1F15                          ;81E663;
    STA.W $1F16                          ;81E666;
    STA.W $1F17                          ;81E669;
    STA.W $1F18                          ;81E66C;
    STA.W $0BB6                          ;81E66F;
    LDA.B #$80                           ;81E672;
    TSB.B $00                            ;81E674;
    JSL.L CODE_849F85                    ;81E676;
    LDA.B #$50                           ;81E67A;
    STA.B $27                            ;81E67C;
    LDA.B #$29                           ;81E67E;
    JSL.L CODE_8088CD                    ;81E680;
    RTS                                  ;81E684;

CODE_81E685:
    DEC.B $27                            ;81E685;
    BNE CODE_81E68D                      ;81E687;
    LDA.B #$04                           ;81E689;
    STA.B $03                            ;81E68B;

CODE_81E68D:
    RTS                                  ;81E68D;

CODE_81E68E:
    STZ.W $1F13                          ;81E68E;
    STZ.W $1F14                          ;81E691;
    STZ.W $1F15                          ;81E694;
    STZ.W $1F16                          ;81E697;
    STZ.W $1F17                          ;81E69A;
    STZ.W $1F18                          ;81E69D;
    LDA.B #$04                           ;81E6A0;
    STA.B $01                            ;81E6A2;
    LDA.B #$80                           ;81E6A4;
    TRB.B $00                            ;81E6A6;
    JSL.L CODE_849FAD                    ;81E6A8;
    RTS                                  ;81E6AC;

CODE_81E6AD:
    STZ.W $1F3B                          ;81E6AD;
    JSL.L CODE_828398                    ;81E6B0;
    RTS                                  ;81E6B4;

CODE_81E6B5:
    LDX.B $01                            ;81E6B5;
    JSR.W (PTR16_81E6C5,X)               ;81E6B7;
    JSL.L CODE_82806E                    ;81E6BA;
    BCC CODE_81E6C4                      ;81E6BE;
    JML.L CODE_828387                    ;81E6C0;

CODE_81E6C4:
    RTL                                  ;81E6C4;

PTR16_81E6C5:
    dw CODE_81E6CF                       ;81E6C5;
    dw CODE_81E6FD                       ;81E6C7;
    dw CODE_81E767                       ;81E6C9;
    dw CODE_81E7AE                       ;81E6CB;
    dw CODE_81E7F4                       ;81E6CD;

CODE_81E6CF:
    LDA.B #$02                           ;81E6CF;
    STA.B $01                            ;81E6D1;
    LDA.L $7F8219                        ;81E6D3;
    STA.B $18                            ;81E6D7;
    LDA.L $7F8319                        ;81E6D9;
    ORA.B #$20                           ;81E6DD;
    STA.B $11                            ;81E6DF;
    LDA.B #$04                           ;81E6E1;
    STA.B $12                            ;81E6E3;
    REP #$20                             ;81E6E5;
    LDA.B $05                            ;81E6E7;
    STA.B $1A                            ;81E6E9;
    LDA.W #$D8C7                         ;81E6EB;
    STA.B $20                            ;81E6EE;
    SEP #$20                             ;81E6F0;
    LDA.B #$1B                           ;81E6F2;
    STA.B $16                            ;81E6F4;
    LDA.B #$00                           ;81E6F6;
    JSL.L CODE_848F07                    ;81E6F8;
    RTS                                  ;81E6FC;

CODE_81E6FD:
    LDA.W $0BD8                          ;81E6FD;
    BEQ CODE_81E707                      ;81E700;
    LDA.W $0C13                          ;81E702;
    BEQ CODE_81E714                      ;81E705;

CODE_81E707:
    REP #$10                             ;81E707;
    LDX.W #$0BA8                         ;81E709;
    JSL.L CODE_849C0E                    ;81E70C;
    SEP #$10                             ;81E710;
    BCS CODE_81E715                      ;81E712;

CODE_81E714:
    RTS                                  ;81E714;

CODE_81E715:
    JSL.L CODE_849F85                    ;81E715;
    REP #$20                             ;81E719;
    LDA.W $0BC2                          ;81E71B;
    STA.B $1C                            ;81E71E;
    REP #$30                             ;81E720;
    LDA.W $0BDB                          ;81E722;
    CLC                                  ;81E725;
    ADC.W #$0100                         ;81E726;
    TAY                                  ;81E729;
    JSL.L CODE_828011                    ;81E72A;
    SEP #$30                             ;81E72E;
    LDA.B #$01                           ;81E730;
    TSB.W $0BB6                          ;81E732;
    STA.W $1F13                          ;81E735;
    STA.W $1F14                          ;81E738;
    STA.W $1F15                          ;81E73B;
    STA.W $1F16                          ;81E73E;
    STA.W $1F17                          ;81E741;
    STA.W $1F18                          ;81E744;
    JSL.L CODE_84A187                    ;81E747;
    JSL.L CODE_84A28B                    ;81E74B;
    JSL.L CODE_84A26F                    ;81E74F;
    JSL.L CODE_84A2A7                    ;81E753;
    LDA.B #$FF                           ;81E757;
    STA.B $00                            ;81E759;
    LDA.B #$04                           ;81E75B;
    STA.B $01                            ;81E75D;
    JSR.W CODE_81E8CB                    ;81E75F;
    JSL.L CODE_8280B4                    ;81E762;
    RTS                                  ;81E766;

CODE_81E767:
    JSL.L CODE_848EEA                    ;81E767;
    LDA.B $17                            ;81E76B;
    BPL CODE_81E77F                      ;81E76D;
    AND.B #$7F                           ;81E76F;
    STA.B $17                            ;81E771;
    LDA.B $0F                            ;81E773;
    AND.B #$7F                           ;81E775;
    BEQ CODE_81E77F                      ;81E777;
    LDA.B #$40                           ;81E779;
    JSL.L CODE_8088CD                    ;81E77B;

CODE_81E77F:
    LDA.B $0F                            ;81E77F;
    BMI CODE_81E788                      ;81E781;
    JSL.L CODE_8280B4                    ;81E783;
    RTS                                  ;81E787;

CODE_81E788:
    JSL.L CODE_849FAD                    ;81E788;
    JSL.L CODE_849FC9                    ;81E78C;
    JSR.W CODE_81E8CB                    ;81E790;
    LDA.B #$06                           ;81E793;
    STA.B $01                            ;81E795;
    REP #$20                             ;81E797;
    LDA.W #$0074                         ;81E799;
    STA.W $0BC2                          ;81E79C;
    LDA.B $1A                            ;81E79F;
    CLC                                  ;81E7A1;
    ADC.W #$0008                         ;81E7A2;
    STA.W $1E60                          ;81E7A5;
    STA.W $1E5E                          ;81E7A8;
    SEP #$20                             ;81E7AB;
    RTS                                  ;81E7AD;

CODE_81E7AE:
    PHD                                  ;81E7AE;
    PEA.W $0BA8                          ;81E7AF;
    PLD                                  ;81E7B2;
    JSL.L CODE_82823E                    ;81E7B3;
    PLD                                  ;81E7B7;
    REP #$20                             ;81E7B8;
    LDA.W $1E4D                          ;81E7BA;
    CMP.W $1E60                          ;81E7BD;
    SEP #$20                             ;81E7C0;
    BNE CODE_81E7EC                      ;81E7C2;
    LDA.B #$01                           ;81E7C4;
    JSL.L CODE_848F07                    ;81E7C6;
    LDA.B #$08                           ;81E7CA;
    STA.B $01                            ;81E7CC;
    REP #$20                             ;81E7CE;
    LDA.B $1A                            ;81E7D0;
    CLC                                  ;81E7D2;
    ADC.W #$0010                         ;81E7D3;
    STA.B $05                            ;81E7D6;
    SEP #$20                             ;81E7D8;
    JSL.L CODE_849FDC                    ;81E7DA;
    JSL.L CODE_849FE6                    ;81E7DE;
    LDA.B $0B                            ;81E7E2;
    BPL CODE_81E7ED                      ;81E7E4;
    LDA.B #$41                           ;81E7E6;
    JSL.L CODE_8088CD                    ;81E7E8;

CODE_81E7EC:
    RTS                                  ;81E7EC;

CODE_81E7ED:
    LDA.B #$40                           ;81E7ED;
    JSL.L CODE_8088CD                    ;81E7EF;
    RTS                                  ;81E7F3;

CODE_81E7F4:
    JSL.L CODE_848EEA                    ;81E7F4;
    LDA.B $0F                            ;81E7F8;
    BMI CODE_81E801                      ;81E7FA;
    JSL.L CODE_8280B4                    ;81E7FC;
    RTS                                  ;81E800;

CODE_81E801:
    JSR.W CODE_81E82C                    ;81E801;
    JSL.L CODE_849FFE                    ;81E804;
    STZ.W $1F13                          ;81E808;
    STZ.W $1F14                          ;81E80B;
    STZ.W $1F15                          ;81E80E;
    STZ.W $1F16                          ;81E811;
    STZ.W $1F17                          ;81E814;
    STZ.W $1F18                          ;81E817;
    REP #$20                             ;81E81A;
    LDA.B $1C                            ;81E81C;
    STA.W $0BC2                          ;81E81E;
    LDA.B $05                            ;81E821;
    CLC                                  ;81E823;
    ADC.W #$0400                         ;81E824;
    STA.B $05                            ;81E827;
    SEP #$20                             ;81E829;
    RTS                                  ;81E82B;

CODE_81E82C:
    REP #$20                             ;81E82C;
    LDA.W $1F7A                          ;81E82E;
    AND.W #$00FF                         ;81E831;
    ASL A                                ;81E834;
    STA.B $27                            ;81E835;
    ASL A                                ;81E837;
    ADC.B $27                            ;81E838;
    CLC                                  ;81E83A;
    ADC.W #$D8CB                         ;81E83B;
    STA.B $27                            ;81E83E;
    LDA.B ($27)                          ;81E840;
    STA.W $0008                          ;81E842;
    LDA.B $1A                            ;81E845;
    STA.W $0000                          ;81E847;
    LDA.B $08                            ;81E84A;
    SEC                                  ;81E84C;
    SBC.W #$0010                         ;81E84D;
    STA.W $0002                          ;81E850;
    JSL.L CODE_849111                    ;81E853;
    JSL.L CODE_80B8D7                    ;81E857;
    LDA.B $1A                            ;81E85B;
    CLC                                  ;81E85D;
    ADC.W #$0010                         ;81E85E;
    STA.W $0000                          ;81E861;
    JSL.L CODE_849111                    ;81E864;
    JSL.L CODE_80B8D7                    ;81E868;
    INC.B $27                            ;81E86C;
    INC.B $27                            ;81E86E;
    LDA.B $1A                            ;81E870;
    STA.W $0000                          ;81E872;
    LDA.B $08                            ;81E875;
    STA.W $0002                          ;81E877;
    LDA.B ($27)                          ;81E87A;
    STA.W $0008                          ;81E87C;
    JSL.L CODE_849111                    ;81E87F;
    JSL.L CODE_80B8D7                    ;81E883;
    LDA.B $1A                            ;81E887;
    CLC                                  ;81E889;
    ADC.W #$0010                         ;81E88A;
    STA.W $0000                          ;81E88D;
    JSL.L CODE_849111                    ;81E890;
    JSL.L CODE_80B8D7                    ;81E894;
    INC.B $27                            ;81E898;
    INC.B $27                            ;81E89A;
    LDA.B $1A                            ;81E89C;
    STA.W $0000                          ;81E89E;
    LDA.B $08                            ;81E8A1;
    CLC                                  ;81E8A3;
    ADC.W #$0010                         ;81E8A4;
    STA.W $0002                          ;81E8A7;
    LDA.B ($27)                          ;81E8AA;
    STA.W $0008                          ;81E8AC;
    JSL.L CODE_849111                    ;81E8AF;
    JSL.L CODE_80B8D7                    ;81E8B3;
    LDA.B $1A                            ;81E8B7;
    CLC                                  ;81E8B9;
    ADC.W #$0010                         ;81E8BA;
    STA.W $0000                          ;81E8BD;
    JSL.L CODE_849111                    ;81E8C0;
    JSL.L CODE_80B8D7                    ;81E8C4;
    SEP #$20                             ;81E8C8;
    RTS                                  ;81E8CA;

CODE_81E8CB:
    REP #$20                             ;81E8CB;
    LDA.B $0B                            ;81E8CD;
    AND.W #$007F                         ;81E8CF;
    ASL A                                ;81E8D2;
    ASL A                                ;81E8D3;
    STA.W $0000                          ;81E8D4;
    ASL A                                ;81E8D7;
    ADC.W $0000                          ;81E8D8;
    CLC                                  ;81E8DB;
    ADC.W #$D913                         ;81E8DC;
    STA.B $27                            ;81E8DF;
    LDA.B ($27)                          ;81E8E1;
    STA.W $0008                          ;81E8E3;
    LDA.B $1A                            ;81E8E6;
    STA.W $0000                          ;81E8E8;
    LDA.B $08                            ;81E8EB;
    SEC                                  ;81E8ED;
    SBC.W #$0010                         ;81E8EE;
    STA.W $0002                          ;81E8F1;
    JSL.L CODE_849111                    ;81E8F4;
    JSL.L CODE_80B8D7                    ;81E8F8;
    INC.B $27                            ;81E8FC;
    INC.B $27                            ;81E8FE;
    LDA.B ($27)                          ;81E900;
    STA.W $0008                          ;81E902;
    LDA.B $08                            ;81E905;
    STA.W $0002                          ;81E907;
    JSL.L CODE_849111                    ;81E90A;
    JSL.L CODE_80B8D7                    ;81E90E;
    INC.B $27                            ;81E912;
    INC.B $27                            ;81E914;
    LDA.B ($27)                          ;81E916;
    STA.W $0008                          ;81E918;
    LDA.B $08                            ;81E91B;
    CLC                                  ;81E91D;
    ADC.W #$0010                         ;81E91E;
    STA.W $0002                          ;81E921;
    JSL.L CODE_849111                    ;81E924;
    JSL.L CODE_80B8D7                    ;81E928;
    INC.B $27                            ;81E92C;
    INC.B $27                            ;81E92E;
    LDA.B ($27)                          ;81E930;
    STA.W $0008                          ;81E932;
    LDA.B $1A                            ;81E935;
    CLC                                  ;81E937;
    ADC.W #$0010                         ;81E938;
    STA.W $0000                          ;81E93B;
    LDA.B $08                            ;81E93E;
    SEC                                  ;81E940;
    SBC.W #$0010                         ;81E941;
    STA.W $0002                          ;81E944;
    JSL.L CODE_849111                    ;81E947;
    JSL.L CODE_80B8D7                    ;81E94B;
    INC.B $27                            ;81E94F;
    INC.B $27                            ;81E951;
    LDA.B ($27)                          ;81E953;
    STA.W $0008                          ;81E955;
    LDA.B $08                            ;81E958;
    STA.W $0002                          ;81E95A;
    JSL.L CODE_849111                    ;81E95D;
    JSL.L CODE_80B8D7                    ;81E961;
    INC.B $27                            ;81E965;
    INC.B $27                            ;81E967;
    LDA.B ($27)                          ;81E969;
    STA.W $0008                          ;81E96B;
    LDA.B $08                            ;81E96E;
    CLC                                  ;81E970;
    ADC.W #$0010                         ;81E971;
    STA.W $0002                          ;81E974;
    JSL.L CODE_849111                    ;81E977;
    JSL.L CODE_80B8D7                    ;81E97B;
    SEP #$20                             ;81E97F;
    RTS                                  ;81E981;

CODE_81E982:
    LDX.B $01                            ;81E982;
    JMP.W (PTR16_81E987,X)               ;81E984;

PTR16_81E987:
    dw CODE_81E98D                       ;81E987;
    dw CODE_81E9D1                       ;81E989;
    dw CODE_81EB82                       ;81E98B;

CODE_81E98D:
    LDA.B $0B                            ;81E98D;
    BIT.W $1F9C                          ;81E98F;
    BEQ CODE_81E998                      ;81E992;
    JML.L CODE_828398                    ;81E994;

CODE_81E998:
    LDA.B #$02                           ;81E998;
    STA.B $01                            ;81E99A;
    STZ.B $12                            ;81E99C;
    STZ.B $28                            ;81E99E;
    LDA.L $7F8236                        ;81E9A0;
    STA.B $18                            ;81E9A4;
    LDA.W $0BB9                          ;81E9A6;
    AND.B #$30                           ;81E9A9;
    STA.W $0000                          ;81E9AB;
    LDA.L $7F8336                        ;81E9AE;
    ORA.W $0000                          ;81E9B2;
    STA.B $11                            ;81E9B5;
    STA.B $2F                            ;81E9B7;
    REP #$20                             ;81E9B9;
    LDA.W #$DAA3                         ;81E9BB;
    STA.B $20                            ;81E9BE;
    SEP #$20                             ;81E9C0;
    JSL.L CODE_8280B4                    ;81E9C2;
    LDA.B #$38                           ;81E9C6;
    STA.B $16                            ;81E9C8;
    LDA.B #$00                           ;81E9CA;
    JSL.L CODE_848F07                    ;81E9CC;
    RTL                                  ;81E9D0;

CODE_81E9D1:
    JSL.L CODE_82806E                    ;81E9D1;
    BCC CODE_81E9DB                      ;81E9D5;
    JML.L CODE_828387                    ;81E9D7;

CODE_81E9DB:
    LDX.B $02                            ;81E9DB;
    JMP.W (PTR16_81E9E0,X)               ;81E9DD;

PTR16_81E9E0:
    dw CODE_81E9E8                       ;81E9E0;
    dw CODE_81EA3D                       ;81E9E2;
    dw CODE_81EA8A                       ;81E9E4;
    dw CODE_81EAC6                       ;81E9E6;

CODE_81E9E8:
    LDX.B $03                            ;81E9E8;
    BNE CODE_81E9FD                      ;81E9EA;
    INC.B $03                            ;81E9EC;
    REP #$20                             ;81E9EE;
    STZ.B $1A                            ;81E9F0;
    STZ.B $1C                            ;81E9F2;
    SEP #$20                             ;81E9F4;
    LDA.B #$37                           ;81E9F6;
    STA.B $1E                            ;81E9F8;
    STZ.B $1F                            ;81E9FA;
    RTL                                  ;81E9FC;

CODE_81E9FD:
    LDA.B $2B                            ;81E9FD;
    BIT.B #$08                           ;81E9FF;
    BNE CODE_81EA0F                      ;81EA01;
    JSL.L CODE_828174                    ;81EA03;
    JSL.L CODE_8280B4                    ;81EA07;
    LDA.B $1D                            ;81EA0B;
    BPL CODE_81EA18                      ;81EA0D;

CODE_81EA0F:
    LDA.B #$02                           ;81EA0F;
    STA.B $02                            ;81EA11;
    STZ.B $1C                            ;81EA13;
    STZ.B $1D                            ;81EA15;
    RTL                                  ;81EA17;

CODE_81EA18:
    JSL.L CODE_81E0F9                    ;81EA18;
    LDA.W $0BCF                          ;81EA1C;
    AND.B #$7F                           ;81EA1F;
    BEQ CODE_81EA3C                      ;81EA21;
    REP #$10                             ;81EA23;
    LDX.W #$0BA8                         ;81EA25;
    JSL.L CODE_849C0E                    ;81EA28;
    SEP #$10                             ;81EA2C;
    BCC CODE_81EA3C                      ;81EA2E;
    LDA.B #$06                           ;81EA30;
    STA.B $02                            ;81EA32;
    STZ.B $03                            ;81EA34;
    STA.W $1F3B                          ;81EA36;
    JMP.W CODE_81EAC6                    ;81EA39;

CODE_81EA3C:
    RTL                                  ;81EA3C;

CODE_81EA3D:
    LDA.B $2B                            ;81EA3D;
    BIT.B #$04                           ;81EA3F;
    BEQ CODE_81EA49                      ;81EA41;
    STZ.B $2F                            ;81EA43;
    LDA.B #$04                           ;81EA45;
    STA.B $02                            ;81EA47;

CODE_81EA49:
    JSL.L CODE_828174                    ;81EA49;
    REP #$20                             ;81EA4D;
    LDA.B $1C                            ;81EA4F;
    CMP.W #$FB00                         ;81EA51;
    BPL CODE_81EA5B                      ;81EA54;
    LDA.W #$FB00                         ;81EA56;
    STA.B $1C                            ;81EA59;

CODE_81EA5B:
    SEP #$20                             ;81EA5B;
    JSL.L CODE_8280B4                    ;81EA5D;
    JSL.L CODE_81E0F9                    ;81EA61;
    LDA.W $0BCF                          ;81EA65;
    AND.B #$7F                           ;81EA68;
    BEQ CODE_81EA85                      ;81EA6A;
    REP #$10                             ;81EA6C;
    LDX.W #$0BA8                         ;81EA6E;
    JSL.L CODE_849C0E                    ;81EA71;
    SEP #$10                             ;81EA75;
    BCC CODE_81EA85                      ;81EA77;
    LDA.B #$06                           ;81EA79;
    STA.B $02                            ;81EA7B;
    STZ.B $03                            ;81EA7D;
    STA.W $1F3B                          ;81EA7F;
    JMP.W CODE_81EAC6                    ;81EA82;

CODE_81EA85:
    JSL.L CODE_848EEA                    ;81EA85;
    RTL                                  ;81EA89;

CODE_81EA8A:
    JSL.L CODE_81E0F9                    ;81EA8A;
    LDA.B $2B                            ;81EA8E;
    BIT.B #$04                           ;81EA90;
    BNE CODE_81EA9D                      ;81EA92;
    LDA.B #$02                           ;81EA94;
    STA.B $02                            ;81EA96;
    STZ.B $1C                            ;81EA98;
    STZ.B $1D                            ;81EA9A;
    RTL                                  ;81EA9C;

CODE_81EA9D:
    JSL.L CODE_8280B4                    ;81EA9D;
    LDA.W $0BCF                          ;81EAA1;
    AND.B #$7F                           ;81EAA4;
    BEQ CODE_81EAC1                      ;81EAA6;
    REP #$10                             ;81EAA8;
    LDX.W #$0BA8                         ;81EAAA;
    JSL.L CODE_849C0E                    ;81EAAD;
    SEP #$10                             ;81EAB1;
    BCC CODE_81EAC1                      ;81EAB3;
    LDA.B #$06                           ;81EAB5;
    STA.B $02                            ;81EAB7;
    STZ.B $03                            ;81EAB9;
    STA.W $1F3B                          ;81EABB;
    JMP.W CODE_81EAC6                    ;81EABE;

CODE_81EAC1:
    JSL.L CODE_848EEA                    ;81EAC1;
    RTL                                  ;81EAC5;

CODE_81EAC6:
    LDX.B $03                            ;81EAC6;
    JMP.W (PTR16_81EACB,X)               ;81EAC8;

PTR16_81EACB:
    dw CODE_81EAD3                       ;81EACB;
    dw CODE_81EB1D                       ;81EACD;
    dw CODE_81EB2A                       ;81EACF;
    dw CODE_81EB62                       ;81EAD1;

CODE_81EAD3:
    LDA.W $0BCF                          ;81EAD3;
    AND.B #$7F                           ;81EAD6;
    BEQ CODE_81EAE6                      ;81EAD8;
    LDA.B $0B                            ;81EADA;
    TSB.W $1F9C                          ;81EADC;
    LDA.W $1F9A                          ;81EADF;
    CMP.B #$20                           ;81EAE2;
    BCC CODE_81EAEB                      ;81EAE4;

CODE_81EAE6:
    LDA.B #$04                           ;81EAE6;
    STA.B $01                            ;81EAE8;
    RTL                                  ;81EAEA;

CODE_81EAEB:
    LDA.B #$02                           ;81EAEB;
    STA.B $03                            ;81EAED;
    LDA.B #$01                           ;81EAEF;
    STA.W $1F13                          ;81EAF1;
    STA.W $1F14                          ;81EAF4;
    STA.W $1F15                          ;81EAF7;
    STA.W $1F16                          ;81EAFA;
    STA.W $1F17                          ;81EAFD;
    STA.W $1F18                          ;81EB00;
    STA.W $0BB6                          ;81EB03;
    LDA.B #$80                           ;81EB06;
    TSB.B $00                            ;81EB08;
    LDA.B #$04                           ;81EB0A;
    STA.B $26                            ;81EB0C;
    JSL.L CODE_849F85                    ;81EB0E;
    LDA.B #$50                           ;81EB12;
    STA.B $27                            ;81EB14;
    LDA.B #$29                           ;81EB16;
    JSL.L CODE_8088CD                    ;81EB18;
    RTL                                  ;81EB1C;

CODE_81EB1D:
    DEC.B $27                            ;81EB1D;
    BNE CODE_81EB29                      ;81EB1F;
    LDA.B #$04                           ;81EB21;
    STA.B $03                            ;81EB23;
    LDA.B #$02                           ;81EB25;
    STA.B $27                            ;81EB27;

CODE_81EB29:
    RTL                                  ;81EB29;

CODE_81EB2A:
    LDA.W $0BCF                          ;81EB2A;
    AND.B #$7F                           ;81EB2D;
    BEQ CODE_81EB5C                      ;81EB2F;
    DEC.B $26                            ;81EB31;
    BNE CODE_81EB60                      ;81EB33;
    LDA.B #$04                           ;81EB35;
    STA.B $26                            ;81EB37;
    LDA.W $1F9A                          ;81EB39;
    INC A                                ;81EB3C;
    CMP.B #$20                           ;81EB3D;
    BCC CODE_81EB47                      ;81EB3F;
    LDA.B #$06                           ;81EB41;
    STA.B $03                            ;81EB43;
    LDA.B #$20                           ;81EB45;

CODE_81EB47:
    STA.W $1F9A                          ;81EB47;
    INC.W $0BCF                          ;81EB4A;
    LDA.B #$80                           ;81EB4D;
    TSB.W $0BCF                          ;81EB4F;
    LDA.B #$0C                           ;81EB52;
    JSL.L CODE_8088CD                    ;81EB54;
    DEC.B $27                            ;81EB58;
    BNE CODE_81EB60                      ;81EB5A;

CODE_81EB5C:
    LDA.B #$06                           ;81EB5C;
    STA.B $03                            ;81EB5E;

CODE_81EB60:
    BRA CODE_81EB89                      ;81EB60;

CODE_81EB62:
    STZ.W $1F13                          ;81EB62;
    STZ.W $1F14                          ;81EB65;
    STZ.W $1F15                          ;81EB68;
    STZ.W $1F16                          ;81EB6B;
    STZ.W $1F17                          ;81EB6E;
    STZ.W $1F18                          ;81EB71;
    LDA.B #$04                           ;81EB74;
    STA.B $01                            ;81EB76;
    LDA.B #$80                           ;81EB78;
    TRB.B $00                            ;81EB7A;
    JSL.L CODE_849FAD                    ;81EB7C;
    BRA CODE_81EB9A                      ;81EB80;

CODE_81EB82:
    STZ.W $1F3B                          ;81EB82;
    JML.L CODE_828398                    ;81EB85;

CODE_81EB89:
    LDX.B #$18                           ;81EB89;

CODE_81EB8B:
    LDA.W $0703,X                        ;81EB8B;
    EOR.B #$04                           ;81EB8E;
    STA.W $0703,X                        ;81EB90;
    DEX                                  ;81EB93;
    DEX                                  ;81EB94;
    DEX                                  ;81EB95;
    DEX                                  ;81EB96;
    BPL CODE_81EB8B                      ;81EB97;
    RTL                                  ;81EB99;

CODE_81EB9A:
    LDX.B #$18                           ;81EB9A;

CODE_81EB9C:
    LDA.B #$34                           ;81EB9C;
    STA.W $0703,X                        ;81EB9E;
    DEX                                  ;81EBA1;
    DEX                                  ;81EBA2;
    DEX                                  ;81EBA3;
    DEX                                  ;81EBA4;
    BPL CODE_81EB9C                      ;81EBA5;
    RTL                                  ;81EBA7;

CODE_81EBA8:
    LDX.B $01                            ;81EBA8;
    JSR.W (PTR16_81EBB1,X)               ;81EBAA;
    JML.L CODE_8280B4                    ;81EBAD;

PTR16_81EBB1:
    dw CODE_81EBBB                       ;81EBB1;
    dw CODE_81EBE8                       ;81EBB3;
    dw CODE_81EBF5                       ;81EBB5;
    dw CODE_81EC17                       ;81EBB7;
    dw CODE_81EC2D                       ;81EBB9;

CODE_81EBBB:
    LDA.B #$1B                           ;81EBBB;
    STA.B $16                            ;81EBBD;
    LDA.L $7F8219                        ;81EBBF;
    STA.B $18                            ;81EBC3;
    LDA.L $7F8319                        ;81EBC5;
    ORA.B #$20                           ;81EBC9;
    STA.B $11                            ;81EBCB;
    LDA.B #$04                           ;81EBCD;
    STA.B $12                            ;81EBCF;
    LDA.B #$02                           ;81EBD1;
    STA.B $01                            ;81EBD3;
    LDA.B #$40                           ;81EBD5;
    STA.B $02                            ;81EBD7;
    LDA.B #$00                           ;81EBD9;
    JSL.L CODE_848F07                    ;81EBDB;
    REP #$20                             ;81EBDF;
    LDA.B $05                            ;81EBE1;
    STA.B $1A                            ;81EBE3;
    SEP #$20                             ;81EBE5;
    RTS                                  ;81EBE7;

CODE_81EBE8:
    LDA.W $1F3F                          ;81EBE8;
    BEQ CODE_81EBF4                      ;81EBEB;
    LDA.B #$04                           ;81EBED;
    STA.B $01                            ;81EBEF;
    JSR.W CODE_81E8CB                    ;81EBF1;

CODE_81EBF4:
    RTS                                  ;81EBF4;

CODE_81EBF5:
    JSL.L CODE_848EEA                    ;81EBF5;
    LDA.B $17                            ;81EBF9;
    BPL CODE_81EC0D                      ;81EBFB;
    AND.B #$7F                           ;81EBFD;
    STA.B $17                            ;81EBFF;
    LDA.B $0F                            ;81EC01;
    AND.B #$7F                           ;81EC03;
    BEQ CODE_81EC0D                      ;81EC05;
    LDA.B #$40                           ;81EC07;
    JSL.L CODE_8088CD                    ;81EC09;

CODE_81EC0D:
    LDA.B $0F                            ;81EC0D;
    BMI CODE_81EC12                      ;81EC0F;
    RTS                                  ;81EC11;

CODE_81EC12:
    LDA.B #$06                           ;81EC12;
    STA.B $01                            ;81EC14;
    RTS                                  ;81EC16;

CODE_81EC17:
    DEC.B $02                            ;81EC17;
    BNE CODE_81EC26                      ;81EC19;
    LDA.B #$08                           ;81EC1B;
    STA.B $01                            ;81EC1D;
    LDA.B #$40                           ;81EC1F;
    JSL.L CODE_8088CD                    ;81EC21;
    RTS                                  ;81EC25;

CODE_81EC26:
    LDA.B #$01                           ;81EC26;
    JSL.L CODE_848F07                    ;81EC28;
    RTS                                  ;81EC2C;

CODE_81EC2D:
    JSL.L CODE_848EEA                    ;81EC2D;
    LDA.B $0F                            ;81EC31;
    BMI CODE_81EC36                      ;81EC33;
    RTS                                  ;81EC35;

CODE_81EC36:
    JSR.W CODE_81E82C                    ;81EC36;
    JSL.L CODE_828398                    ;81EC39;
    PLA                                  ;81EC3D;
    PLA                                  ;81EC3E;
    RTL                                  ;81EC3F;

CODE_81EC40:
    LDX.B $01                            ;81EC40;
    JSR.W (PTR16_81EC50,X)               ;81EC42;
    JSL.L CODE_82806E                    ;81EC45;
    BCC CODE_81EC4F                      ;81EC49;
    JML.L CODE_828387                    ;81EC4B;

CODE_81EC4F:
    RTL                                  ;81EC4F;

PTR16_81EC50:
    dw CODE_81EC5A                       ;81EC50;
    dw CODE_81EC88                       ;81EC52;
    dw CODE_81ED09                       ;81EC54;
    dw CODE_81ED44                       ;81EC56;
    dw CODE_81ED7A                       ;81EC58;

CODE_81EC5A:
    LDA.B #$02                           ;81EC5A;
    STA.B $01                            ;81EC5C;
    LDA.L $7F8219                        ;81EC5E;
    STA.B $18                            ;81EC62;
    LDA.L $7F8319                        ;81EC64;
    ORA.B #$30                           ;81EC68;
    STA.B $11                            ;81EC6A;
    LDA.B #$04                           ;81EC6C;
    STA.B $12                            ;81EC6E;
    REP #$20                             ;81EC70;
    LDA.B $05                            ;81EC72;
    STA.B $1A                            ;81EC74;
    LDA.W #$DBB2                         ;81EC76;
    STA.B $20                            ;81EC79;
    SEP #$20                             ;81EC7B;
    LDA.B #$1B                           ;81EC7D;
    STA.B $16                            ;81EC7F;
    LDA.B #$00                           ;81EC81;
    JSL.L CODE_848F07                    ;81EC83;
    RTS                                  ;81EC87;

CODE_81EC88:
    LDA.W $1F41                          ;81EC88;
    BEQ CODE_81EC94                      ;81EC8B;
    JSL.L CODE_828398                    ;81EC8D;
    PLA                                  ;81EC91;
    PLA                                  ;81EC92;
    RTL                                  ;81EC93;

CODE_81EC94:
    LDA.W $0BD8                          ;81EC94;
    BEQ CODE_81EC9E                      ;81EC97;
    LDA.W $0C13                          ;81EC99;
    BEQ CODE_81ECB6                      ;81EC9C;

CODE_81EC9E:
    REP #$20                             ;81EC9E;
    LDA.W $0BAD                          ;81ECA0;
    CMP.B $1A                            ;81ECA3;
    SEP #$20                             ;81ECA5;
    BCC CODE_81ECB6                      ;81ECA7;
    REP #$10                             ;81ECA9;
    LDX.W #$0BA8                         ;81ECAB;
    JSL.L CODE_849C0E                    ;81ECAE;
    SEP #$10                             ;81ECB2;
    BCS CODE_81ECB7                      ;81ECB4;

CODE_81ECB6:
    RTS                                  ;81ECB6;

CODE_81ECB7:
    JSL.L CODE_849F85                    ;81ECB7;
    REP #$20                             ;81ECBB;
    LDA.W $0BC2                          ;81ECBD;
    STA.B $1C                            ;81ECC0;
    REP #$30                             ;81ECC2;
    LDA.W $0BDB                          ;81ECC4;
    CLC                                  ;81ECC7;
    ADC.W #$0100                         ;81ECC8;
    TAY                                  ;81ECCB;
    JSL.L CODE_828011                    ;81ECCC;
    SEP #$30                             ;81ECD0;
    LDA.B #$01                           ;81ECD2;
    TSB.W $0BB6                          ;81ECD4;
    STA.W $1F13                          ;81ECD7;
    STA.W $1F14                          ;81ECDA;
    STA.W $1F15                          ;81ECDD;
    STA.W $1F16                          ;81ECE0;
    STA.W $1F17                          ;81ECE3;
    STA.W $1F18                          ;81ECE6;
    JSL.L CODE_84A1A6                    ;81ECE9;
    JSL.L CODE_84A28B                    ;81ECED;
    JSL.L CODE_84A26F                    ;81ECF1;
    JSL.L CODE_84A2A7                    ;81ECF5;
    LDA.B #$FF                           ;81ECF9;
    STA.B $00                            ;81ECFB;
    LDA.B #$04                           ;81ECFD;
    STA.B $01                            ;81ECFF;
    JSR.W CODE_81E8CB                    ;81ED01;
    JSL.L CODE_8280B4                    ;81ED04;
    RTS                                  ;81ED08;

CODE_81ED09:
    JSL.L CODE_848EEA                    ;81ED09;
    LDA.B $17                            ;81ED0D;
    BPL CODE_81ED21                      ;81ED0F;
    AND.B #$7F                           ;81ED11;
    STA.B $17                            ;81ED13;
    LDA.B $0F                            ;81ED15;
    AND.B #$7F                           ;81ED17;
    BEQ CODE_81ED21                      ;81ED19;
    LDA.B #$40                           ;81ED1B;
    JSL.L CODE_8088CD                    ;81ED1D;

CODE_81ED21:
    LDA.B $0F                            ;81ED21;
    BMI CODE_81ED2A                      ;81ED23;
    JSL.L CODE_8280B4                    ;81ED25;
    RTS                                  ;81ED29;

CODE_81ED2A:
    JSL.L CODE_849FAD                    ;81ED2A;
    JSL.L CODE_849FC9                    ;81ED2E;
    JSR.W CODE_81E8CB                    ;81ED32;
    LDA.B #$06                           ;81ED35;
    STA.B $01                            ;81ED37;
    REP #$20                             ;81ED39;
    LDA.W #$FF8C                         ;81ED3B;
    STA.W $0BC2                          ;81ED3E;
    SEP #$20                             ;81ED41;
    RTS                                  ;81ED43;

CODE_81ED44:
    PHD                                  ;81ED44;
    PEA.W $0BA8                          ;81ED45;
    PLD                                  ;81ED48;
    JSL.L CODE_82823E                    ;81ED49;
    PLD                                  ;81ED4D;
    REP #$20                             ;81ED4E;
    LDA.B $1A                            ;81ED50;
    SEC                                  ;81ED52;
    SBC.W $0BAD                          ;81ED53;
    BMI CODE_81ED77                      ;81ED56;
    CMP.W #$0010                         ;81ED58;
    SEP #$20                             ;81ED5B;
    BCC CODE_81ED77                      ;81ED5D;
    LDA.B #$01                           ;81ED5F;
    JSL.L CODE_848F07                    ;81ED61;
    LDA.B #$08                           ;81ED65;
    STA.B $01                            ;81ED67;
    JSL.L CODE_849FDC                    ;81ED69;
    JSL.L CODE_849FE6                    ;81ED6D;
    LDA.B #$40                           ;81ED71;
    JSL.L CODE_8088CD                    ;81ED73;

CODE_81ED77:
    SEP #$20                             ;81ED77;
    RTS                                  ;81ED79;

CODE_81ED7A:
    JSL.L CODE_848EEA                    ;81ED7A;
    LDA.B $0F                            ;81ED7E;
    BMI CODE_81ED87                      ;81ED80;
    JSL.L CODE_8280B4                    ;81ED82;
    RTS                                  ;81ED86;

CODE_81ED87:
    REP #$20                             ;81ED87;
    LDA.B $05                            ;81ED89;
    SEC                                  ;81ED8B;
    SBC.W #$0010                         ;81ED8C;
    STA.B $05                            ;81ED8F;
    SEP #$20                             ;81ED91;
    JSR.W CODE_81EDBC                    ;81ED93;
    JSL.L CODE_849FFE                    ;81ED96;
    STZ.W $1F13                          ;81ED9A;
    STZ.W $1F14                          ;81ED9D;
    STZ.W $1F15                          ;81EDA0;
    STZ.W $1F16                          ;81EDA3;
    STZ.W $1F17                          ;81EDA6;
    STZ.W $1F18                          ;81EDA9;
    REP #$20                             ;81EDAC;
    LDA.B $1C                            ;81EDAE;
    STA.W $0BC2                          ;81EDB0;
    SEP #$20                             ;81EDB3;
    JSL.L CODE_828398                    ;81EDB5;
    PLA                                  ;81EDB9;
    PLA                                  ;81EDBA;
    RTL                                  ;81EDBB;

CODE_81EDBC:
    REP #$20                             ;81EDBC;
    LDA.W #$DBB6                         ;81EDBE;
    STA.B $27                            ;81EDC1;
    LDA.B ($27)                          ;81EDC3;
    STA.W $0008                          ;81EDC5;
    LDA.B $1A                            ;81EDC8;
    STA.W $0000                          ;81EDCA;
    LDA.B $08                            ;81EDCD;
    SEC                                  ;81EDCF;
    SBC.W #$0010                         ;81EDD0;
    STA.W $0002                          ;81EDD3;
    JSL.L CODE_849111                    ;81EDD6;
    JSL.L CODE_80B8D7                    ;81EDDA;
    INC.B $27                            ;81EDDE;
    INC.B $27                            ;81EDE0;
    LDA.B $1A                            ;81EDE2;
    STA.W $0000                          ;81EDE4;
    LDA.B $08                            ;81EDE7;
    STA.W $0002                          ;81EDE9;
    LDA.B ($27)                          ;81EDEC;
    STA.W $0008                          ;81EDEE;
    JSL.L CODE_849111                    ;81EDF1;
    JSL.L CODE_80B8D7                    ;81EDF5;
    INC.B $27                            ;81EDF9;
    INC.B $27                            ;81EDFB;
    LDA.B $1A                            ;81EDFD;
    STA.W $0000                          ;81EDFF;
    LDA.B $08                            ;81EE02;
    CLC                                  ;81EE04;
    ADC.W #$0010                         ;81EE05;
    STA.W $0002                          ;81EE08;
    LDA.B ($27)                          ;81EE0B;
    STA.W $0008                          ;81EE0D;
    JSL.L CODE_849111                    ;81EE10;
    JSL.L CODE_80B8D7                    ;81EE14;
    SEP #$20                             ;81EE18;
    RTS                                  ;81EE1A;

CODE_81EE1B:
    LDX.B $01                            ;81EE1B;
    JSR.W (PTR16_81EE21,X)               ;81EE1D;
    RTL                                  ;81EE20;

PTR16_81EE21:
    dw CODE_81EE27                       ;81EE21;
    dw CODE_81EE48                       ;81EE23;
    dw CODE_81EE82                       ;81EE25;

CODE_81EE27:
    LDA.B #$02                           ;81EE27;
    STA.B $01                            ;81EE29;
    LDA.L $7F8304                        ;81EE2B;
    STA.B $11                            ;81EE2F;
    STZ.B $12                            ;81EE31;
    STZ.B $1F                            ;81EE33;
    LDA.B #$04                           ;81EE35;
    STA.B $1E                            ;81EE37;
    JSL.L CODE_8280B4                    ;81EE39;
    LDA.B #$0B                           ;81EE3D;
    STA.B $16                            ;81EE3F;
    LDA.B #$07                           ;81EE41;
    JSL.L CODE_848F07                    ;81EE43;
    RTS                                  ;81EE47;

CODE_81EE48:
    LDX.B $02                            ;81EE48;
    BNE CODE_81EE67                      ;81EE4A;
    LDA.B $1D                            ;81EE4C;
    BPL CODE_81EE5E                      ;81EE4E;
    INC.B $02                            ;81EE50;
    LDA.B #$3C                           ;81EE52;
    STA.B $03                            ;81EE54;
    LDA.B #$E0                           ;81EE56;
    STA.B $1C                            ;81EE58;
    LDA.B #$FF                           ;81EE5A;
    STA.B $1D                            ;81EE5C;

CODE_81EE5E:
    JSL.L CODE_828174                    ;81EE5E;
    JSL.L CODE_8280B4                    ;81EE62;
    RTS                                  ;81EE66;

CODE_81EE67:
    JSL.L CODE_82825D                    ;81EE67;
    DEC.B $03                            ;81EE6B;
    BNE CODE_81EE74                      ;81EE6D;
    LDA.B #$04                           ;81EE6F;
    STA.B $01                            ;81EE71;
    RTS                                  ;81EE73;

CODE_81EE74:
    LDA.B $03                            ;81EE74;
    LSR A                                ;81EE76;
    BCC CODE_81EE7D                      ;81EE77;
    JSL.L CODE_8280B4                    ;81EE79;

CODE_81EE7D:
    JSL.L CODE_848EEA                    ;81EE7D;
    RTS                                  ;81EE81;

CODE_81EE82:
    JSL.L CODE_828398                    ;81EE82;
    RTS                                  ;81EE86;

CODE_81EE87:
    LDA.B $01                            ;81EE87;
    BNE CODE_81EEA2                      ;81EE89;
    INC.B $01                            ;81EE8B;
    LDA.W $0BB9                          ;81EE8D;
    AND.B #$30                           ;81EE90;
    ORA.B #$04                           ;81EE92;
    STA.B $11                            ;81EE94;
    STZ.B $12                            ;81EE96;
    LDA.B $0B                            ;81EE98;
    JSL.L CODE_848F07                    ;81EE9A;
    JML.L CODE_8280B4                    ;81EE9E;

CODE_81EEA2:
    JSL.L CODE_8280B4                    ;81EEA2;
    LDA.B $0E                            ;81EEA6;
    BEQ CODE_81EEB3                      ;81EEA8;
    JSL.L CODE_848EEA                    ;81EEAA;
    LDA.B $0F                            ;81EEAE;
    BMI CODE_81EEB3                      ;81EEB0;
    RTL                                  ;81EEB2;

CODE_81EEB3:
    JML.L CODE_828398                    ;81EEB3;

CODE_81EEB7:
    LDA.B $01                            ;81EEB7;
    BNE CODE_81EEED                      ;81EEB9;
    INC.B $01                            ;81EEBB;
    LDA.L $7F8289                        ;81EEBD;
    STA.B $18                            ;81EEC1;
    LDA.L $7F8389                        ;81EEC3;
    STA.B $11                            ;81EEC7;
    STZ.B $12                            ;81EEC9;
    LDA.B #$90                           ;81EECB;
    STA.B $16                            ;81EECD;
    LDA.B #$00                           ;81EECF;
    JSL.L CODE_848F07                    ;81EED1;
    LDA.B #$04                           ;81EED5;
    STA.B $1E                            ;81EED7;
    STZ.B $1F                            ;81EED9;
    REP #$20                             ;81EEDB;
    STZ.B $1A                            ;81EEDD;
    TDC                                  ;81EEDF;
    SEC                                  ;81EEE0;
    SBC.W #$1928                         ;81EEE1;
    LSR A                                ;81EEE4;
    LSR A                                ;81EEE5;
    LSR A                                ;81EEE6;
    LSR A                                ;81EEE7;
    LSR A                                ;81EEE8;
    SEP #$20                             ;81EEE9;
    STA.B $03                            ;81EEEB;

CODE_81EEED:
    JSL.L CODE_8281E8                    ;81EEED;
    JSL.L CODE_848EEA                    ;81EEF1;
    DEC.B $0B                            ;81EEF5;
    BNE CODE_81EEFD                      ;81EEF7;
    JML.L CODE_828398                    ;81EEF9;

CODE_81EEFD:
    LDA.B $03                            ;81EEFD;
    EOR.W $0B9C                          ;81EEFF;
    LSR A                                ;81EF02;
    BCC CODE_81EF09                      ;81EF03;
    JML.L CODE_8280B4                    ;81EF05;

CODE_81EF09:
    RTL                                  ;81EF09;

CODE_81EF0A:
    LDX.B $01                            ;81EF0A;
    JSR.W (PTR16_81EF10,X)               ;81EF0C;
    RTL                                  ;81EF0F;

PTR16_81EF10:
    dw CODE_81EF16                       ;81EF10;
    dw CODE_81EF4F                       ;81EF12;
    dw CODE_81EF66                       ;81EF14;

CODE_81EF16:
    LDA.B #$02                           ;81EF16;
    STA.B $01                            ;81EF18;
    STZ.B $12                            ;81EF1A;
    REP #$20                             ;81EF1C;
    LDA.B $0B                            ;81EF1E;
    ASL A                                ;81EF20;
    ASL A                                ;81EF21;
    TAX                                  ;81EF22;
    LDA.W DATA8_86DBBC,X                 ;81EF23;
    BIT.B $10                            ;81EF26;
    BVC CODE_81EF2E                      ;81EF28;
    EOR.W #$FFFF                         ;81EF2A;
    INC A                                ;81EF2D;

CODE_81EF2E:
    STA.B $1A                            ;81EF2E;
    LDA.W DATA8_86DBBE,X                 ;81EF30;
    STA.B $1C                            ;81EF33;
    SEP #$20                             ;81EF35;
    STZ.B $1F                            ;81EF37;
    LDA.B #$28                           ;81EF39;
    STA.B $1E                            ;81EF3B;
    JSL.L CODE_8280B4                    ;81EF3D;
    LDA.B #$02                           ;81EF41;
    STA.B $16                            ;81EF43;
    LDA.B #$0B                           ;81EF45;
    CLC                                  ;81EF47;
    ADC.B $0B                            ;81EF48;
    JSL.L CODE_848F07                    ;81EF4A;
    RTS                                  ;81EF4E;

CODE_81EF4F:
    LDA.W $0B9C                          ;81EF4F;
    LSR A                                ;81EF52;
    BCC CODE_81EF61                      ;81EF53;
    JSL.L CODE_8280B4                    ;81EF55;
    LDA.B $0E                            ;81EF59;
    BNE CODE_81EF61                      ;81EF5B;
    LDA.B #$04                           ;81EF5D;
    STA.B $01                            ;81EF5F;

CODE_81EF61:
    JSL.L CODE_828174                    ;81EF61;
    RTS                                  ;81EF65;

CODE_81EF66:
    JSL.L CODE_828398                    ;81EF66;
    RTS                                  ;81EF6A;

CODE_81EF6B:
    LDX.B $01                            ;81EF6B;
    JSR.W (PTR16_81EF71,X)               ;81EF6D;
    RTL                                  ;81EF70;

PTR16_81EF71:
    dw CODE_81EF77                       ;81EF71;
    dw CODE_81EF8C                       ;81EF73;
    dw CODE_81EF9C                       ;81EF75;

CODE_81EF77:
    LDA.B #$02                           ;81EF77;
    STA.B $01                            ;81EF79;
    STZ.B $12                            ;81EF7B;
    JSL.L CODE_8280B4                    ;81EF7D;
    LDA.B #$02                           ;81EF81;
    STA.B $16                            ;81EF83;
    LDA.B #$0A                           ;81EF85;
    JSL.L CODE_848F07                    ;81EF87;
    RTS                                  ;81EF8B;

CODE_81EF8C:
    JSL.L CODE_8280B4                    ;81EF8C;
    REP #$10                             ;81EF90;
    LDX.B $0C                            ;81EF92;
    LDA.W $0011,X                        ;81EF94;
    STA.B $11                            ;81EF97;
    SEP #$10                             ;81EF99;
    RTS                                  ;81EF9B;

CODE_81EF9C:
    LDX.B $02                            ;81EF9C;
    JMP.W (PTR16_81EFA1,X)               ;81EF9E;

PTR16_81EFA1:
    dw CODE_81EFA7                       ;81EFA1;
    dw CODE_81EFD9                       ;81EFA3;
    dw CODE_81EFEC                       ;81EFA5;

CODE_81EFA7:
    LDA.B #$02                           ;81EFA7;
    STA.B $02                            ;81EFA9;
    LDA.B $11                            ;81EFAB;
    AND.B #$F0                           ;81EFAD;
    ORA.L $7F8300                        ;81EFAF;
    STA.B $11                            ;81EFB3;
    LDA.B $0B                            ;81EFB5;
    TAX                                  ;81EFB7;
    REP #$20                             ;81EFB8;
    LDA.W DATA8_86DBC8,X                 ;81EFBA;
    BIT.B $10                            ;81EFBD;
    BVS CODE_81EFC5                      ;81EFBF;
    EOR.W #$FFFF                         ;81EFC1;
    INC A                                ;81EFC4;

CODE_81EFC5:
    STA.B $1A                            ;81EFC5;
    LDA.W DATA8_86DBCA,X                 ;81EFC7;
    STA.B $1C                            ;81EFCA;
    SEP #$20                             ;81EFCC;
    STZ.B $1F                            ;81EFCE;
    LDA.B #$40                           ;81EFD0;
    STA.B $1E                            ;81EFD2;
    JSL.L CODE_8280B4                    ;81EFD4;
    RTS                                  ;81EFD8;

CODE_81EFD9:
    LDA.W $0B9C                          ;81EFD9;
    LSR A                                ;81EFDC;
    BCC CODE_81EFE7                      ;81EFDD;
    JSL.L CODE_8280B4                    ;81EFDF;
    LDA.B $0E                            ;81EFE3;
    BEQ CODE_81EFEC                      ;81EFE5;

CODE_81EFE7:
    JSL.L CODE_828174                    ;81EFE7;
    RTS                                  ;81EFEB;

CODE_81EFEC:
    JSL.L CODE_828398                    ;81EFEC;
    RTS                                  ;81EFF0;

CODE_81EFF1:
    LDA.B $01                            ;81EFF1;
    BNE CODE_81F03B                      ;81EFF3;
    INC.B $01                            ;81EFF5;
    STZ.B $18                            ;81EFF7;
    LDA.W $0BB9                          ;81EFF9;
    AND.B #$30                           ;81EFFC;
    ORA.B #$04                           ;81EFFE;
    STA.B $11                            ;81F000;
    LDA.B #$17                           ;81F002;
    STA.B $16                            ;81F004;
    LDA.B #$FF                           ;81F006;
    STA.B $12                            ;81F008;
    LDA.B #$78                           ;81F00A;
    STA.B $1E                            ;81F00C;
    LDA.B $0B                            ;81F00E;
    AND.B #$7F                           ;81F010;
    JSL.L CODE_848F07                    ;81F012;
    LDA.B $0B                            ;81F016;
    BPL CODE_81F03B                      ;81F018;
    LDA.B $0C                            ;81F01A;
    BEQ CODE_81F029                      ;81F01C;
    LDA.B #$40                           ;81F01E;
    TSB.B $11                            ;81F020;
    REP #$20                             ;81F022;
    LDA.W #$FF40                         ;81F024;
    BRA CODE_81F032                      ;81F027;

CODE_81F029:
    LDA.B #$40                           ;81F029;
    TRB.B $11                            ;81F02B;
    REP #$20                             ;81F02D;
    LDA.W #$00C0                         ;81F02F;

CODE_81F032:
    STA.B $1A                            ;81F032;
    LDA.W #$0200                         ;81F034;
    STA.B $1C                            ;81F037;
    SEP #$20                             ;81F039;

CODE_81F03B:
    JSL.L CODE_848EEA                    ;81F03B;
    LDA.B $0B                            ;81F03F;
    BMI CODE_81F05B                      ;81F041;
    LDA.B $0F                            ;81F043;
    BPL CODE_81F057                      ;81F045;
    LDA.B $13                            ;81F047;
    CMP.B #$01                           ;81F049;
    BEQ CODE_81F053                      ;81F04B;
    BRA CODE_81F057                      ;81F04D;
    DEC.B $1E                            ;81F04F;
    BNE CODE_81F057                      ;81F051;

CODE_81F053:
    JML.L CODE_828398                    ;81F053;

CODE_81F057:
    JML.L CODE_8280B4                    ;81F057;

CODE_81F05B:
    JSL.L CODE_82820A                    ;81F05B;
    REP #$20                             ;81F05F;
    LDA.B $1A                            ;81F061;
    BMI CODE_81F06D                      ;81F063;
    SEC                                  ;81F065;
    SBC.W #$0006                         ;81F066;
    BMI CODE_81F07B                      ;81F069;
    BRA CODE_81F073                      ;81F06B;

CODE_81F06D:
    CLC                                  ;81F06D;
    ADC.W #$0006                         ;81F06E;
    BPL CODE_81F07B                      ;81F071;

CODE_81F073:
    STA.B $1A                            ;81F073;
    SEP #$20                             ;81F075;
    JML.L CODE_8280B4                    ;81F077;

CODE_81F07B:
    SEP #$20                             ;81F07B;
    JML.L CODE_828398                    ;81F07D;

CODE_81F081:
    LDA.B $01                            ;81F081;
    BNE CODE_81F0B0                      ;81F083;
    INC.B $01                            ;81F085;
    STZ.B $18                            ;81F087;
    LDA.B #$32                           ;81F089;
    STA.B $11                            ;81F08B;
    REP #$21                             ;81F08D;
    LDA.W $1E4D                          ;81F08F;
    ADC.W #$0080                         ;81F092;
    STA.B $05                            ;81F095;
    LDA.W $1E50                          ;81F097;
    CLC                                  ;81F09A;
    ADC.W #$0070                         ;81F09B;
    STA.B $08                            ;81F09E;
    SEP #$20                             ;81F0A0;
    LDA.B #$20                           ;81F0A2;
    STA.B $0C                            ;81F0A4;
    LDA.B #$19                           ;81F0A6;
    STA.B $16                            ;81F0A8;
    LDA.B #$00                           ;81F0AA;
    JML.L CODE_848F07                    ;81F0AC;

CODE_81F0B0:
    LDA.B $0C                            ;81F0B0;
    BEQ CODE_81F0B7                      ;81F0B2;
    DEC.B $0C                            ;81F0B4;
    RTL                                  ;81F0B6;

CODE_81F0B7:
    LDA.B $0F                            ;81F0B7;
    BPL CODE_81F0BF                      ;81F0B9;
    JML.L CODE_828398                    ;81F0BB;

CODE_81F0BF:
    JSL.L CODE_848EEA                    ;81F0BF;
    JML.L CODE_8280B4                    ;81F0C3;

CODE_81F0C7:
    LDA.B $01                            ;81F0C7;
    BNE CODE_81F0F3                      ;81F0C9;
    INC.B $01                            ;81F0CB;
    LDA.B #$80                           ;81F0CD;
    TSB.B $00                            ;81F0CF;
    STZ.B $18                            ;81F0D1;
    LDA.B $11                            ;81F0D3;
    AND.B #$70                           ;81F0D5;
    ORA.B #$02                           ;81F0D7;
    STA.B $11                            ;81F0D9;
    REP #$20                             ;81F0DB;
    LDA.W $0BAD                          ;81F0DD;
    STA.B $05                            ;81F0E0;
    LDA.W $0BB0                          ;81F0E2;
    STA.B $08                            ;81F0E5;
    SEP #$20                             ;81F0E7;
    LDA.B #$60                           ;81F0E9;
    STA.B $16                            ;81F0EB;
    LDA.B $0B                            ;81F0ED;
    JML.L CODE_848F07                    ;81F0EF;

CODE_81F0F3:
    LDX.B $0B                            ;81F0F3;
    BNE CODE_81F105                      ;81F0F5;
    REP #$20                             ;81F0F7;
    LDA.W $0BAD                          ;81F0F9;
    STA.B $05                            ;81F0FC;
    LDA.W $0BB0                          ;81F0FE;
    STA.B $08                            ;81F101;
    SEP #$20                             ;81F103;

CODE_81F105:
    LDA.W $0BAA                          ;81F105;
    CMP.W DATA8_86DC64,X                 ;81F108;
    BNE CODE_81F111                      ;81F10B;
    LDA.B $0F                            ;81F10D;
    BPL CODE_81F115                      ;81F10F;

CODE_81F111:
    JML.L CODE_828398                    ;81F111;

CODE_81F115:
    JSL.L CODE_8280B4                    ;81F115;
    JML.L CODE_848EEA                    ;81F119;

CODE_81F11D:
    LDA.B $01                            ;81F11D;
    BNE CODE_81F165                      ;81F11F;
    INC.B $01                            ;81F121;
    LDA.L $7F8218                        ;81F123;
    STA.B $18                            ;81F127;
    LDA.B #$25                           ;81F129;
    STA.B $11                            ;81F12B;
    LDA.B #$1A                           ;81F12D;
    STA.B $16                            ;81F12F;
    LDA.B $0B                            ;81F131;
    AND.B #$7F                           ;81F133;
    JSL.L CODE_848F07                    ;81F135;
    STZ.B $12                            ;81F139;
    LDA.B $0B                            ;81F13B;
    BIT.B #$02                           ;81F13D;
    BEQ CODE_81F165                      ;81F13F;
    STZ.B $1E                            ;81F141;
    STZ.B $1F                            ;81F143;
    LDA.B $0B                            ;81F145;
    BMI CODE_81F158                      ;81F147;
    LSR A                                ;81F149;
    REP #$20                             ;81F14A;
    BCC CODE_81F153                      ;81F14C;
    LDA.W #$0140                         ;81F14E;
    BRA CODE_81F15D                      ;81F151;

CODE_81F153:
    LDA.W #$0200                         ;81F153;
    BRA CODE_81F15D                      ;81F156;

CODE_81F158:
    REP #$20                             ;81F158;
    LDA.W #$00C0                         ;81F15A;

CODE_81F15D:
    STA.B $1C                            ;81F15D;
    STZ.B $1A                            ;81F15F;
    SEP #$20                             ;81F161;
    BRA CODE_81F17E                      ;81F163;

CODE_81F165:
    JSL.L CODE_848EEA                    ;81F165;
    LDA.B $0B                            ;81F169;
    BIT.B #$02                           ;81F16B;
    BNE CODE_81F17E                      ;81F16D;
    LDA.W $1F2D                          ;81F16F;
    STA.B $19                            ;81F172;
    LDA.B $0F                            ;81F174;
    BPL CODE_81F191                      ;81F176;
    STZ.B $19                            ;81F178;
    JML.L CODE_828398                    ;81F17A;

CODE_81F17E:
    JSL.L CODE_82820A                    ;81F17E;
    JSR.W CODE_81F19A                    ;81F182;
    CMP.B #$0D                           ;81F185;
    BEQ CODE_81F191                      ;81F187;
    CMP.B #$0E                           ;81F189;
    BEQ CODE_81F191                      ;81F18B;

CODE_81F18D:
    JML.L CODE_828398                    ;81F18D;

CODE_81F191:
    JSL.L CODE_8280B4                    ;81F191;
    LDA.B $0E                            ;81F195;
    BEQ CODE_81F18D                      ;81F197;
    RTL                                  ;81F199;

CODE_81F19A:
    REP #$30                             ;81F19A;
    LDA.B $05                            ;81F19C;
    STA.W $0000                          ;81F19E;
    LDA.W $1F2D                          ;81F1A1;
    AND.W #$00FF                         ;81F1A4;
    STA.W $0004                          ;81F1A7;
    LDA.B $08                            ;81F1AA;
    SEC                                  ;81F1AC;
    SBC.W $0004                          ;81F1AD;
    SEC                                  ;81F1B0;
    SBC.W #$0003                         ;81F1B1;
    STA.W $0002                          ;81F1B4;
    PHD                                  ;81F1B7;
    LDA.W #$0000                         ;81F1B8;
    TCD                                  ;81F1BB;
    JSL.L CODE_849156                    ;81F1BC;
    LDA.L $7E2000,X                      ;81F1C0;
    TAY                                  ;81F1C4;
    LDA.W $0B92                          ;81F1C5;
    STA.B $10                            ;81F1C8;
    LDA.W $0B94                          ;81F1CA;
    LDA.W $0B94                          ;81F1CD;
    STA.B $12                            ;81F1D0;
    LDA.B [$10],Y                        ;81F1D2;
    AND.W #$00FF                         ;81F1D4;
    SEP #$30                             ;81F1D7;
    PLD                                  ;81F1D9;
    RTS                                  ;81F1DA;

CODE_81F1DB:
    LDY.B #$11                           ;81F1DB;
    LDA.B ($0C),Y                        ;81F1DD;
    STA.B $11                            ;81F1DF;
    LDX.B $01                            ;81F1E1;
    JMP.W (PTR16_81F1E6,X)               ;81F1E3;

PTR16_81F1E6:
    dw CODE_81F1EC                       ;81F1E6;
    dw CODE_81F209                       ;81F1E8;
    dw CODE_81F2A9                       ;81F1EA;

CODE_81F1EC:
    LDA.B #$02                           ;81F1EC;
    STA.B $01                            ;81F1EE;
    LDA.L $7F8216                        ;81F1F0;
    STA.B $18                            ;81F1F4;
    LDA.B #$16                           ;81F1F6;
    STA.B $16                            ;81F1F8;
    LDA.B #$02                           ;81F1FA;
    STA.B $12                            ;81F1FC;
    LDA.B $0B                            ;81F1FE;
    AND.B #$06                           ;81F200;
    LSR A                                ;81F202;
    ADC.B #$07                           ;81F203;
    JSL.L CODE_848F07                    ;81F205;

CODE_81F209:
    LDY.B #$37                           ;81F209;
    LDA.B ($1A),Y                        ;81F20B;
    BNE CODE_81F280                      ;81F20D;
    LDY.B #$00                           ;81F20F;
    LDA.B ($0C),Y                        ;81F211;
    BNE CODE_81F219                      ;81F213;
    JML.L CODE_828398                    ;81F215;

CODE_81F219:
    LDY.B #$37                           ;81F219;
    LDA.B ($0C),Y                        ;81F21B;
    BNE CODE_81F223                      ;81F21D;
    JSL.L CODE_848EEA                    ;81F21F;

CODE_81F223:
    REP #$30                             ;81F223;
    LDX.B $0C                            ;81F225;
    LDA.W $0031,X                        ;81F227;
    SEC                                  ;81F22A;
    SBC.W $0005,X                        ;81F22B;
    BCS CODE_81F234                      ;81F22E;
    EOR.W #$FFFF                         ;81F230;
    INC A                                ;81F233;

CODE_81F234:
    STA.B $1C                            ;81F234;
    SEP #$10                             ;81F236;
    LDX.B $0B                            ;81F238;

CODE_81F23A:
    DEX                                  ;81F23A;
    BEQ CODE_81F242                      ;81F23B;
    CLC                                  ;81F23D;
    ADC.B $1C                            ;81F23E;
    BRA CODE_81F23A                      ;81F240;

CODE_81F242:
    STA.W $4204                          ;81F242;
    LDX.B #$0A                           ;81F245;
    STX.W $4206                          ;81F247;
    REP #$10                             ;81F24A;
    LDX.B $0C                            ;81F24C;
    LDA.B $10                            ;81F24E;
    ASL A                                ;81F250;
    ASL A                                ;81F251;
    BCS CODE_81F259                      ;81F252;
    LDA.W #$000A                         ;81F254;
    BRA CODE_81F25C                      ;81F257;

CODE_81F259:
    LDA.W #$FFF6                         ;81F259;

CODE_81F25C:
    CLC                                  ;81F25C;
    ADC.W $0031,X                        ;81F25D;
    STA.B $1C                            ;81F260;
    LDA.B $10                            ;81F262;
    ASL A                                ;81F264;
    ASL A                                ;81F265;
    LDA.W $4214                          ;81F266;
    BCS CODE_81F275                      ;81F269;
    TAX                                  ;81F26B;
    LDA.B $1C                            ;81F26C;
    STX.B $1C                            ;81F26E;
    SEC                                  ;81F270;
    SBC.B $1C                            ;81F271;
    BRA CODE_81F278                      ;81F273;

CODE_81F275:
    CLC                                  ;81F275;
    ADC.B $1C                            ;81F276;

CODE_81F278:
    STA.B $05                            ;81F278;
    SEP #$30                             ;81F27A;
    JML.L CODE_8280B4                    ;81F27C;

CODE_81F280:
    REP #$20                             ;81F280;
    JSL.L CODE_849086                    ;81F282;
    AND.W #$07FF                         ;81F286;
    LSR A                                ;81F289;
    BCC CODE_81F290                      ;81F28A;
    EOR.W #$FFFF                         ;81F28C;
    INC A                                ;81F28F;

CODE_81F290:
    STA.B $1A                            ;81F290;
    JSL.L CODE_849086                    ;81F292;
    AND.W #$07FF                         ;81F296;
    STA.B $1C                            ;81F299;
    SEP #$20                             ;81F29B;
    LDA.B #$40                           ;81F29D;
    STA.B $1E                            ;81F29F;
    LDA.B #$04                           ;81F2A1;
    STA.B $01                            ;81F2A3;
    JML.L CODE_8280B4                    ;81F2A5;

CODE_81F2A9:
    JSL.L CODE_848EEA                    ;81F2A9;
    JSL.L CODE_8281E8                    ;81F2AD;
    LDA.B $0B                            ;81F2B1;
    EOR.W $0B9C                          ;81F2B3;
    LSR A                                ;81F2B6;
    BCC CODE_81F2BA                      ;81F2B7;

CODE_81F2B9:
    RTL                                  ;81F2B9;

CODE_81F2BA:
    JSL.L CODE_8280B4                    ;81F2BA;
    LDA.B $0E                            ;81F2BE;
    BNE CODE_81F2B9                      ;81F2C0;
    JML.L CODE_828398                    ;81F2C2;

CODE_81F2C6:
    LDX.B $01                            ;81F2C6;
    JSR.W (PTR16_81F2D8,X)               ;81F2C8;
    JSL.L CODE_8280B4                    ;81F2CB;
    LDA.B $0E                            ;81F2CF;
    BNE CODE_81F2D7                      ;81F2D1;
    JML.L CODE_828398                    ;81F2D3;

CODE_81F2D7:
    RTL                                  ;81F2D7;

PTR16_81F2D8:
    dw CODE_81F2DC                       ;81F2D8;
    dw CODE_81F321                       ;81F2DA;

CODE_81F2DC:
    LDA.B #$02                           ;81F2DC;
    STA.B $01                            ;81F2DE;
    STZ.B $18                            ;81F2E0;
    STZ.B $03                            ;81F2E2;
    LDA.B #$01                           ;81F2E4;
    STA.B $0C                            ;81F2E6;
    LDA.B $0B                            ;81F2E8;
    CMP.B #$08                           ;81F2EA;
    BRA CODE_81F2F2                      ;81F2EC;
    LDA.B #$20                           ;81F2EE;
    BRA CODE_81F2F4                      ;81F2F0;

CODE_81F2F2:
    LDA.B #$40                           ;81F2F2;

CODE_81F2F4:
    STA.B $0D                            ;81F2F4;
    LDX.B $0B                            ;81F2F6;
    LDA.W DATA8_86DC66,X                 ;81F2F8;
    STA.B $0B                            ;81F2FB;
    ASL A                                ;81F2FD;
    ASL A                                ;81F2FE;
    TAX                                  ;81F2FF;
    REP #$20                             ;81F300;
    LDA.W DATA8_86EE37,X                 ;81F302;
    ASL A                                ;81F305;
    STA.B $1A                            ;81F306;
    ASL A                                ;81F308;
    LDA.W DATA8_86EE39,X                 ;81F309;
    STA.B $1C                            ;81F30C;
    STZ.B $1E                            ;81F30E;
    SEP #$20                             ;81F310;
    LDA.B #$32                           ;81F312;
    STA.B $11                            ;81F314;
    LDA.B #$1D                           ;81F316;
    STA.B $16                            ;81F318;
    LDA.B #$00                           ;81F31A;
    JSL.L CODE_848F07                    ;81F31C;
    RTS                                  ;81F320;

CODE_81F321:
    JSL.L CODE_82820A                    ;81F321;
    JSL.L CODE_848EEA                    ;81F325;
    LDA.B $03                            ;81F329;
    INC A                                ;81F32B;
    STA.B $03                            ;81F32C;
    CMP.B $0C                            ;81F32E;
    BCC CODE_81F351                      ;81F330;
    INC.B $0C                            ;81F332;
    STZ.B $03                            ;81F334;
    INC.B $0B                            ;81F336;
    INC.B $0B                            ;81F338;
    LDA.B $0B                            ;81F33A;
    AND.B #$1F                           ;81F33C;
    ASL A                                ;81F33E;
    ASL A                                ;81F33F;
    TAX                                  ;81F340;
    REP #$20                             ;81F341;
    LDA.W DATA8_86EE37,X                 ;81F343;
    ASL A                                ;81F346;
    STA.B $1A                            ;81F347;
    LDA.W DATA8_86EE39,X                 ;81F349;
    ASL A                                ;81F34C;
    STA.B $1C                            ;81F34D;
    SEP #$20                             ;81F34F;

CODE_81F351:
    JSL.L CODE_848EEA                    ;81F351;
    DEC.B $0D                            ;81F355;
    BNE CODE_81F35D                      ;81F357;
    JSL.L CODE_828398                    ;81F359;

CODE_81F35D:
    RTS                                  ;81F35D;

CODE_81F35E:
    LDA.B $01                            ;81F35E;
    BEQ CODE_81F365                      ;81F360;
    JMP.W CODE_81F3D3                    ;81F362;

CODE_81F365:
    INC.B $01                            ;81F365;
    LDA.B $0B                            ;81F367;
    ASL A                                ;81F369;
    ASL A                                ;81F36A;
    ASL A                                ;81F36B;
    CLC                                  ;81F36C;
    ADC.B $0B                            ;81F36D;
    TAY                                  ;81F36F;
    REP #$10                             ;81F370;
    LDX.B $0C                            ;81F372;
    LDA.B $11                            ;81F374;
    AND.B #$40                           ;81F376;
    REP #$20                             ;81F378;
    BEQ CODE_81F3A2                      ;81F37A;
    LDA.W DATA8_86DC77,Y                 ;81F37C;
    EOR.W #$FFFF                         ;81F37F;
    INC A                                ;81F382;
    CLC                                  ;81F383;
    ADC.W $0005,X                        ;81F384;
    STA.B $05                            ;81F387;
    LDA.W DATA8_86DC79,Y                 ;81F389;
    CLC                                  ;81F38C;
    ADC.W $0008,X                        ;81F38D;
    STA.B $08                            ;81F390;
    LDA.W DATA8_86DC7B,Y                 ;81F392;
    EOR.W #$FFFF                         ;81F395;
    INC A                                ;81F398;
    STA.B $1A                            ;81F399;
    LDA.W DATA8_86DC7D,Y                 ;81F39B;
    STA.B $1C                            ;81F39E;
    BRA CODE_81F3BE                      ;81F3A0;

CODE_81F3A2:
    LDA.W DATA8_86DC77,Y                 ;81F3A2;
    CLC                                  ;81F3A5;
    ADC.W $0005,X                        ;81F3A6;
    STA.B $05                            ;81F3A9;
    LDA.W DATA8_86DC79,Y                 ;81F3AB;
    CLC                                  ;81F3AE;
    ADC.W $0008,X                        ;81F3AF;
    STA.B $08                            ;81F3B2;
    LDA.W DATA8_86DC7B,Y                 ;81F3B4;
    STA.B $1A                            ;81F3B7;
    LDA.W DATA8_86DC7D,Y                 ;81F3B9;
    STA.B $1C                            ;81F3BC;

CODE_81F3BE:
    SEP #$30                             ;81F3BE;
    LDA.B #$1F                           ;81F3C0;
    STA.B $16                            ;81F3C2;
    LDA.B #$40                           ;81F3C4;
    STA.B $1E                            ;81F3C6;
    STZ.B $1F                            ;81F3C8;
    STZ.B $12                            ;81F3CA;
    LDA.W DATA8_86DC76,Y                 ;81F3CC;
    JML.L CODE_848F07                    ;81F3CF;

CODE_81F3D3:
    JSL.L CODE_8281E8                    ;81F3D3;
    JSL.L CODE_848EEA                    ;81F3D7;
    LDA.W $0B9C                          ;81F3DB;
    EOR.B $0B                            ;81F3DE;
    LSR A                                ;81F3E0;
    BCC CODE_81F3EF                      ;81F3E1;
    JSL.L CODE_8280B4                    ;81F3E3;
    LDA.B $0E                            ;81F3E7;
    BNE CODE_81F3EF                      ;81F3E9;
    JML.L CODE_828398                    ;81F3EB;

CODE_81F3EF:
    RTL                                  ;81F3EF;

CODE_81F3F0:
    LDA.B $01                            ;81F3F0;
    BNE CODE_81F406                      ;81F3F2;
    INC.B $01                            ;81F3F4;
    LDA.L $7F821E                        ;81F3F6;
    STA.B $18                            ;81F3FA;
    LDA.B #$20                           ;81F3FC;
    STA.B $16                            ;81F3FE;
    LDA.B #$05                           ;81F400;
    JML.L CODE_848F07                    ;81F402;

CODE_81F406:
    LDX.B $02                            ;81F406;
    BNE CODE_81F40E                      ;81F408;
    JML.L CODE_8280B4                    ;81F40A;

CODE_81F40E:
    LDX.B $03                            ;81F40E;
    BNE CODE_81F41A                      ;81F410;
    INC.B $03                            ;81F412;
    LDA.B #$06                           ;81F414;
    JML.L CODE_848F07                    ;81F416;

CODE_81F41A:
    LDA.B $0F                            ;81F41A;
    BPL CODE_81F41F                      ;81F41C;
    RTL                                  ;81F41E;

CODE_81F41F:
    JSL.L CODE_848EEA                    ;81F41F;
    JML.L CODE_8280B4                    ;81F423;

CODE_81F427:
    LDA.B $01                            ;81F427;
    BNE CODE_81F46D                      ;81F429;
    INC.B $01                            ;81F42B;
    LDA.L $7F821E                        ;81F42D;
    STA.B $18                            ;81F431;
    LDA.L $7F831E                        ;81F433;
    STA.B $11                            ;81F437;
    LDA.B #$06                           ;81F439;
    STA.B $12                            ;81F43B;
    STZ.B $1F                            ;81F43D;
    LDA.B #$40                           ;81F43F;
    STA.B $1E                            ;81F441;
    REP #$21                             ;81F443;
    LDA.W $0B9C                          ;81F445;
    ADC.B $0B                            ;81F448;
    AND.W #$0007                         ;81F44A;
    ASL A                                ;81F44D;
    ASL A                                ;81F44E;
    TAX                                  ;81F44F;
    LDA.W DATA8_86DDE3,X                 ;81F450;
    STA.B $1A                            ;81F453;
    LDA.W DATA8_86DDE5,X                 ;81F455;
    STA.B $1C                            ;81F458;
    SEP #$20                             ;81F45A;
    LDA.B #$78                           ;81F45C;
    STA.B $0C                            ;81F45E;
    LDA.B #$20                           ;81F460;
    STA.B $16                            ;81F462;
    LDX.B $0B                            ;81F464;
    LDA.W DATA8_86DDDD,X                 ;81F466;
    JML.L CODE_848F07                    ;81F469;

CODE_81F46D:
    JSL.L CODE_828174                    ;81F46D;
    DEC.B $0C                            ;81F471;
    BNE CODE_81F479                      ;81F473;
    JML.L CODE_828398                    ;81F475;

CODE_81F479:
    LDA.B $0C                            ;81F479;
    LSR A                                ;81F47B;
    BCC CODE_81F482                      ;81F47C;
    JML.L CODE_8280B4                    ;81F47E;

CODE_81F482:
    RTL                                  ;81F482;

CODE_81F483:
    LDX.B $01                            ;81F483;
    BNE CODE_81F49E                      ;81F485;
    INC.B $01                            ;81F487;
    LDA.B #$F0                           ;81F489;
    STA.B $0B                            ;81F48B;
    STZ.B $1F                            ;81F48D;
    LDA.B #$02                           ;81F48F;
    STA.B $1E                            ;81F491;
    STZ.B $1A                            ;81F493;
    STZ.B $1B                            ;81F495;
    LDA.B #$01                           ;81F497;
    JSL.L CODE_848F7D                    ;81F499;

CODE_81F49D:
    RTL                                  ;81F49D;

CODE_81F49E:
    REP #$20                             ;81F49E;
    LDA.W $0BAD                          ;81F4A0;
    CMP.W #$115C                         ;81F4A3;
    BCC CODE_81F49D                      ;81F4A6;
    CMP.W #$1800                         ;81F4A8;
    BCS CODE_81F49D                      ;81F4AB;
    LDA.W $0BB0                          ;81F4AD;
    CMP.W #$0350                         ;81F4B0;
    BCS CODE_81F49D                      ;81F4B3;
    SEP #$20                             ;81F4B5;
    LDA.W $0BCF                          ;81F4B7;
    CMP.B #$80                           ;81F4BA;
    BNE CODE_81F4C2                      ;81F4BC;
    JSR.W CODE_81F5E9                    ;81F4BE;

CODE_81F4C1:
    RTL                                  ;81F4C1;

CODE_81F4C2:
    AND.B #$7F                           ;81F4C2;
    BEQ CODE_81F4C1                      ;81F4C4;
    STZ.W $0BE4                          ;81F4C6;
    JSR.W CODE_81F5FE                    ;81F4C9;
    JSL.L CODE_848F52                    ;81F4CC;
    LDX.B $02                            ;81F4D0;
    JMP.W (PTR16_81F4D5,X)               ;81F4D2;

PTR16_81F4D5:
    dw CODE_81F4DB                       ;81F4D5;
    dw CODE_81F52B                       ;81F4D7;
    dw CODE_81F543                       ;81F4D9;

CODE_81F4DB:
    DEC.B $0B                            ;81F4DB;
    BNE CODE_81F52A                      ;81F4DD;
    LDA.B #$00                           ;81F4DF;
    JSL.L CODE_848F7D                    ;81F4E1;
    LDA.B #$3C                           ;81F4E5;
    STA.B $0B                            ;81F4E7;
    LDA.B #$02                           ;81F4E9;
    STA.B $02                            ;81F4EB;
    LDX.B #$06                           ;81F4ED;
    LDY.B #$0C                           ;81F4EF;

CODE_81F4F1:
    REP #$20                             ;81F4F1;
    LDA.W DATA8_86DE13,Y                 ;81F4F3;
    STA.W $002C                          ;81F4F6;
    LDA.W DATA8_86DE23,X                 ;81F4F9;
    STA.W $002E                          ;81F4FC;
    SEP #$20                             ;81F4FF;
    LDA.B #$0B                           ;81F501;
    PHX                                  ;81F503;
    PHY                                  ;81F504;
    JSL.L CODE_848011                    ;81F505;
    PLY                                  ;81F509;
    PLX                                  ;81F50A;
    DEY                                  ;81F50B;
    DEY                                  ;81F50C;
    DEY                                  ;81F50D;
    DEY                                  ;81F50E;
    DEX                                  ;81F50F;
    DEX                                  ;81F510;
    BPL CODE_81F4F1                      ;81F511;
    LDA.B #$25                           ;81F513;
    STA.B $16                            ;81F515;
    STZ.B $17                            ;81F517;
    LDA.B #$01                           ;81F519;
    STA.B $03                            ;81F51B;
    LDA.B #$08                           ;81F51D;
    STA.B $0C                            ;81F51F;
    REP #$20                             ;81F521;
    LDA.W #$0049                         ;81F523;
    STA.B $1C                            ;81F526;
    STZ.B $08                            ;81F528;

CODE_81F52A:
    RTL                                  ;81F52A;

CODE_81F52B:
    DEC.B $0B                            ;81F52B;
    BNE CODE_81F542                      ;81F52D;
    LDA.B #$01                           ;81F52F;
    JSL.L CODE_848F7D                    ;81F531;
    LDA.B #$04                           ;81F535;
    STA.B $02                            ;81F537;
    LDA.B #$FF                           ;81F539;
    STA.B $0B                            ;81F53B;
    LDX.B #$10                           ;81F53D;
    JSR.W CODE_81F68B                    ;81F53F;

CODE_81F542:
    RTL                                  ;81F542;

CODE_81F543:
    LDA.W $0B9C                          ;81F543;
    AND.B #$0F                           ;81F546;
    BNE CODE_81F550                      ;81F548;
    LDA.B #$75                           ;81F54A;
    JSL.L CODE_8088CD                    ;81F54C;

CODE_81F550:
    JSL.L CODE_848F52                    ;81F550;
    DEC.B $0B                            ;81F554;
    BNE CODE_81F567                      ;81F556;
    LDA.B #$F0                           ;81F558;
    STA.B $0B                            ;81F55A;
    LDX.B #$0C                           ;81F55C;
    JSR.W CODE_81F68B                    ;81F55E;
    STZ.W $0BC4                          ;81F561;
    STZ.B $02                            ;81F564;
    RTL                                  ;81F566;

CODE_81F567:
    REP #$10                             ;81F567;
    LDX.B $20                            ;81F569;
    PHX                                  ;81F56B;
    LDX.W #$DE03                         ;81F56C;
    STX.B $20                            ;81F56F;
    LDX.B $08                            ;81F571;
    STX.B $18                            ;81F573;
    LDY.W #$000C                         ;81F575;

CODE_81F578:
    REP #$21                             ;81F578;
    STY.W $0000                          ;81F57A;
    LDA.B $18                            ;81F57D;
    STA.B $08                            ;81F57F;
    LDA.W #$DE03                         ;81F581;
    ADC.W $0000                          ;81F584;
    STA.B $20                            ;81F587;
    LDA.W DATA8_86DE13,Y                 ;81F589;
    STA.B $05                            ;81F58C;
    LDA.W DATA8_86DE15,Y                 ;81F58E;
    CLC                                  ;81F591;
    ADC.B $08                            ;81F592;
    STA.B $08                            ;81F594;
    SEP #$20                             ;81F596;
    JSR.W CODE_81F630                    ;81F598;
    LDX.W #$0BA8                         ;81F59B;
    JSL.L CODE_849C0E                    ;81F59E;
    BCC CODE_81F5D9                      ;81F5A2;
    REP #$21                             ;81F5A4;
    LDA.W $0BC4                          ;81F5A6;
    BPL CODE_81F5AE                      ;81F5A9;
    STZ.W $0BC4                          ;81F5AB;

CODE_81F5AE:
    LDA.W $0006                          ;81F5AE;
    CMP.W #$0005                         ;81F5B1;
    BCC CODE_81F5C0                      ;81F5B4;
    LDA.W $0BB0                          ;81F5B6;
    CLC                                  ;81F5B9;
    ADC.W #$FFFF                         ;81F5BA;
    STA.W $0BB0                          ;81F5BD;

CODE_81F5C0:
    LDA.W $0BAD                          ;81F5C0;
    CLC                                  ;81F5C3;
    ADC.W $0BCA                          ;81F5C4;
    LSR A                                ;81F5C7;
    STA.W $0BAD                          ;81F5C8;
    SEP #$20                             ;81F5CB;
    LDA.B #$01                           ;81F5CD;
    STA.W $0BE4                          ;81F5CF;
    LDA.B #$08                           ;81F5D2;
    STA.W $0BD7                          ;81F5D4;
    BRA CODE_81F5DF                      ;81F5D7;

CODE_81F5D9:
    DEY                                  ;81F5D9;
    DEY                                  ;81F5DA;
    DEY                                  ;81F5DB;
    DEY                                  ;81F5DC;
    BPL CODE_81F578                      ;81F5DD;

CODE_81F5DF:
    PLX                                  ;81F5DF;
    STX.B $20                            ;81F5E0;
    LDX.B $18                            ;81F5E2;
    STX.B $08                            ;81F5E4;
    SEP #$10                             ;81F5E6;
    RTL                                  ;81F5E8;

CODE_81F5E9:
    REP #$20                             ;81F5E9;
    LDX.B #$1E                           ;81F5EB;

CODE_81F5ED:
    LDA.L DATA8_85D8E0,X                 ;81F5ED;
    STA.W $03A0,X                        ;81F5F1;
    DEX                                  ;81F5F4;
    DEX                                  ;81F5F5;
    BPL CODE_81F5ED                      ;81F5F6;
    SEP #$20                             ;81F5F8;
    INC.W $00A1                          ;81F5FA;
    RTS                                  ;81F5FD;

CODE_81F5FE:
    LDX.B $17                            ;81F5FE;
    BNE CODE_81F619                      ;81F600;
    DEC.B $16                            ;81F602;
    BNE CODE_81F614                      ;81F604;
    LDA.B #$21                           ;81F606;
    STA.B $16                            ;81F608;
    INC.B $17                            ;81F60A;
    LDA.B #$7D                           ;81F60C;
    STA.B $1C                            ;81F60E;
    LDA.B #$FF                           ;81F610;
    STA.B $1D                            ;81F612;

CODE_81F614:
    JSL.L CODE_828174                    ;81F614;
    RTS                                  ;81F618;

CODE_81F619:
    DEC.B $16                            ;81F619;
    BNE CODE_81F62B                      ;81F61B;
    LDA.B #$21                           ;81F61D;
    STA.B $16                            ;81F61F;
    STZ.B $17                            ;81F621;
    LDA.B #$83                           ;81F623;
    STA.B $1C                            ;81F625;
    LDA.B #$00                           ;81F627;
    STA.B $1D                            ;81F629;

CODE_81F62B:
    JSL.L CODE_8281B2                    ;81F62B;
    RTS                                  ;81F62F;

CODE_81F630:
    LDA.B $0C                            ;81F630;
    BEQ CODE_81F68A                      ;81F632;
    JSL.L CODE_82806E                    ;81F634;
    BCS CODE_81F68A                      ;81F638;
    DEC.B $03                            ;81F63A;
    BNE CODE_81F68A                      ;81F63C;
    LDA.B #$0F                           ;81F63E;
    STA.B $03                            ;81F640;
    JSL.L CODE_8282D3                    ;81F642;
    BNE CODE_81F68A                      ;81F646;
    DEC.B $0C                            ;81F648;
    INC.W $0000,X                        ;81F64A;
    LDA.B #$1B                           ;81F64D;
    STA.W $000A,X                        ;81F64F;
    LDA.B #$80                           ;81F652;
    STA.W $000B,X                        ;81F654;
    REP #$21                             ;81F657;
    JSL.L CODE_849086                    ;81F659;
    AND.W #$0007                         ;81F65D;
    STA.W $0000                          ;81F660;
    LDA.B $05                            ;81F663;
    CLC                                  ;81F665;
    ADC.W #$FFF0                         ;81F666;
    CLC                                  ;81F669;
    ADC.W $0000                          ;81F66A;
    STA.W $0005,X                        ;81F66D;
    JSL.L CODE_849086                    ;81F670;
    AND.W #$003F                         ;81F674;
    STA.W $0000                          ;81F677;
    LDA.B $08                            ;81F67A;
    CLC                                  ;81F67C;
    ADC.W $0000                          ;81F67D;
    CLC                                  ;81F680;
    STA.W $0008,X                        ;81F681;
    TDC                                  ;81F684;
    STA.W $000C,X                        ;81F685;
    SEP #$20                             ;81F688;

CODE_81F68A:
    RTS                                  ;81F68A;

CODE_81F68B:
    LDY.B #$03                           ;81F68B;

CODE_81F68D:
    TXA                                  ;81F68D;
    PHX                                  ;81F68E;
    PHY                                  ;81F68F;
    JSL.L CODE_848000                    ;81F690;
    PLY                                  ;81F694;
    PLX                                  ;81F695;
    INX                                  ;81F696;
    DEY                                  ;81F697;
    BPL CODE_81F68D                      ;81F698;
    RTS                                  ;81F69A;

CODE_81F69B:
    LDX.B $01                            ;81F69B;
    JSR.W (PTR16_81F6A4,X)               ;81F69D;
    JSR.W CODE_81F712                    ;81F6A0;
    RTL                                  ;81F6A3;

PTR16_81F6A4:
    dw CODE_81F6A8                       ;81F6A4;
    dw CODE_81F6CC                       ;81F6A6;

CODE_81F6A8:
    LDA.B #$02                           ;81F6A8;
    STA.B $01                            ;81F6AA;
    REP #$30                             ;81F6AC;
    LDA.B $0B                            ;81F6AE;
    AND.W #$00FF                         ;81F6B0;
    ASL A                                ;81F6B3;
    STA.W $0000                          ;81F6B4;
    LDA.W $1F7A                          ;81F6B7;
    AND.W #$00FF                         ;81F6BA;
    ASL A                                ;81F6BD;
    TAX                                  ;81F6BE;
    LDA.W DATA8_86E4E2,X                 ;81F6BF;
    CLC                                  ;81F6C2;
    ADC.W $0000                          ;81F6C3;
    TAX                                  ;81F6C6;
    LDA.W $0000,X                        ;81F6C7;
    STA.B $04                            ;81F6CA;

CODE_81F6CC:
    REP #$30                             ;81F6CC;
    LDX.B $04                            ;81F6CE;
    LDA.W $0BAD                          ;81F6D0;
    CMP.W $0000,X                        ;81F6D3;
    BCS CODE_81F70F                      ;81F6D6;
    CMP.W $0002,X                        ;81F6D8;
    BCC CODE_81F70F                      ;81F6DB;
    LDA.W $0BB0                          ;81F6DD;
    CMP.W $0004,X                        ;81F6E0;
    BCS CODE_81F70F                      ;81F6E3;
    CMP.W $0006,X                        ;81F6E5;
    BCC CODE_81F70F                      ;81F6E8;
    LDA.W #$0002                         ;81F6EA;
    STA.W $1E52                          ;81F6ED;

CODE_81F6F0:
    SEP #$20                             ;81F6F0;
    LDA.W $0008,X                        ;81F6F2;
    BEQ CODE_81F70F                      ;81F6F5;
    REP #$20                             ;81F6F7;
    AND.W #$00FF                         ;81F6F9;
    DEC A                                ;81F6FC;
    ASL A                                ;81F6FD;
    ASL A                                ;81F6FE;
    TAY                                  ;81F6FF;
    PHX                                  ;81F700;
    LDA.W DATA8_86ECD0,Y                 ;81F701;
    TAX                                  ;81F704;
    LDA.W DATA8_86ECD2,Y                 ;81F705;
    STA.W $0000,X                        ;81F708;
    PLX                                  ;81F70B;
    INX                                  ;81F70C;
    BRA CODE_81F6F0                      ;81F70D;

CODE_81F70F:
    SEP #$30                             ;81F70F;
    RTS                                  ;81F711;

CODE_81F712:
    REP #$30                             ;81F712;
    LDA.W $1E4D                          ;81F714;
    SEC                                  ;81F717;
    SBC.W #$0040                         ;81F718;
    STA.B $08                            ;81F71B;
    CLC                                  ;81F71D;
    ADC.W #$0180                         ;81F71E;
    STA.B $06                            ;81F721;
    LDX.B $04                            ;81F723;
    LDA.W $0000,X                        ;81F725;
    CMP.B $08                            ;81F728;
    BMI CODE_81F75B                      ;81F72A;
    CMP.B $06                            ;81F72C;
    BMI CODE_81F737                      ;81F72E;
    LDA.W $0002,X                        ;81F730;
    CMP.B $06                            ;81F733;
    BPL CODE_81F75B                      ;81F735;

CODE_81F737:
    LDA.W $1E50                          ;81F737;
    SEC                                  ;81F73A;
    SBC.W #$0040                         ;81F73B;
    STA.B $08                            ;81F73E;
    CLC                                  ;81F740;
    ADC.W #$0180                         ;81F741;
    STA.B $06                            ;81F744;
    LDA.W $0004,X                        ;81F746;
    CMP.B $08                            ;81F749;
    BMI CODE_81F75B                      ;81F74B;
    CMP.B $06                            ;81F74D;
    BMI CODE_81F758                      ;81F74F;
    LDA.W $0006,X                        ;81F751;
    CMP.B $06                            ;81F754;
    BPL CODE_81F75B                      ;81F756;

CODE_81F758:
    SEP #$30                             ;81F758;
    RTS                                  ;81F75A;

CODE_81F75B:
    SEP #$30                             ;81F75B;
    JSL.L CODE_828387                    ;81F75D;
    RTS                                  ;81F761;

CODE_81F762:
    LDA.B $01                            ;81F762;
    BNE CODE_81F778                      ;81F764;
    INC.B $01                            ;81F766;
    LDA.W $1F2C                          ;81F768;
    BEQ CODE_81F771                      ;81F76B;
    JML.L CODE_828387                    ;81F76D;

CODE_81F771:
    INC.W $1F2C                          ;81F771;
    LDA.B #$FF                           ;81F774;
    STA.B $00                            ;81F776;

CODE_81F778:
    REP #$20                             ;81F778;
    LDA.W $1E4D                          ;81F77A;
    SEC                                  ;81F77D;
    SBC.W #$0900                         ;81F77E;
    BPL CODE_81F798                      ;81F781;
    EOR.W #$FFFF                         ;81F783;
    INC A                                ;81F786;
    CMP.W #$0100                         ;81F787;
    BPL CODE_81F7B9                      ;81F78A;
    SEP #$20                             ;81F78C;
    STA.W $0000                          ;81F78E;
    LDA.B #$FF                           ;81F791;
    STA.W $0002                          ;81F793;
    BRA CODE_81F7B7                      ;81F796;

CODE_81F798:
    STZ.W $0000                          ;81F798;
    LDA.W #$0B60                         ;81F79B;
    SEC                                  ;81F79E;
    SBC.W $1E4D                          ;81F79F;
    BMI CODE_81F7B9                      ;81F7A2;
    BEQ CODE_81F7B9                      ;81F7A4;
    CMP.W #$0100                         ;81F7A6;
    SEP #$20                             ;81F7A9;
    BPL CODE_81F7B2                      ;81F7AB;
    STA.W $0002                          ;81F7AD;
    BRA CODE_81F7B7                      ;81F7B0;

CODE_81F7B2:
    LDA.B #$FF                           ;81F7B2;
    STA.W $0002                          ;81F7B4;

CODE_81F7B7:
    BRA CODE_81F7C3                      ;81F7B7;

CODE_81F7B9:
    SEP #$20                             ;81F7B9;
    LDA.B #$FF                           ;81F7BB;
    STA.W $0000                          ;81F7BD;
    STZ.W $0002                          ;81F7C0;

CODE_81F7C3:
    JSR.W CODE_81F7C7                    ;81F7C3;
    RTL                                  ;81F7C6;

CODE_81F7C7:
    REP #$20                             ;81F7C7;
    LDA.W #$0160                         ;81F7C9;
    SEC                                  ;81F7CC;
    SBC.W $1E50                          ;81F7CD;
    SEP #$20                             ;81F7D0;
    CMP.B #$80                           ;81F7D2;
    BCC CODE_81F800                      ;81F7D4;
    SEC                                  ;81F7D6;
    SBC.B #$80                           ;81F7D7;
    STA.W $0B25                          ;81F7D9;
    LDA.B #$60                           ;81F7DC;
    SEC                                  ;81F7DE;
    SBC.W $0B25                          ;81F7DF;
    STA.W $0B28                          ;81F7E2;
    LDA.B #$7F                           ;81F7E5;
    STA.W $0B22                          ;81F7E7;
    STZ.W $0B2B                          ;81F7EA;
    REP #$20                             ;81F7ED;
    LDA.W #$0ADE                         ;81F7EF;
    STA.W $0B23                          ;81F7F2;
    STA.W $0B26                          ;81F7F5;
    LDA.W #$0AE0                         ;81F7F8;
    STA.W $0B29                          ;81F7FB;
    BRA CODE_81F83D                      ;81F7FE;

CODE_81F800:
    DEC A                                ;81F800;
    STA.W $0B22                          ;81F801;
    CLC                                  ;81F804;
    ADC.B #$7F                           ;81F805;
    BCS CODE_81F820                      ;81F807;
    CMP.B #$E0                           ;81F809;
    BCS CODE_81F820                      ;81F80B;
    LDA.B #$7F                           ;81F80D;
    STA.W $0B25                          ;81F80F;
    LDA.B #$60                           ;81F812;
    SEC                                  ;81F814;
    SBC.W $0B22                          ;81F815;
    STA.W $0B28                          ;81F818;
    STZ.W $0B2B                          ;81F81B;
    BRA CODE_81F82C                      ;81F81E;

CODE_81F820:
    LDA.B #$E0                           ;81F820;
    SEC                                  ;81F822;
    SBC.W $0B22                          ;81F823;
    STA.W $0B25                          ;81F826;
    STZ.W $0B28                          ;81F829;

CODE_81F82C:
    REP #$20                             ;81F82C;
    LDA.W #$0ADE                         ;81F82E;
    STA.W $0B23                          ;81F831;
    LDA.W #$0AE0                         ;81F834;
    STA.W $0B26                          ;81F837;
    STA.W $0B29                          ;81F83A;

CODE_81F83D:
    STZ.W $0B2E                          ;81F83D;
    SEP #$20                             ;81F840;
    LDA.W $0000                          ;81F842;
    STA.W $0B30                          ;81F845;
    LDA.W $0002                          ;81F848;
    STA.W $0B31                          ;81F84B;
    LDX.W $0AA0                          ;81F84E;
    LDA.B #$41                           ;81F851;
    STA.W $0AA1,X                        ;81F853;
    LDA.B #$26                           ;81F856;
    STA.W $0AA2,X                        ;81F858;
    LDA.B #$D2                           ;81F85B;
    STA.W $0AA3,X                        ;81F85D;
    LDA.B #$0A                           ;81F860;
    STA.W $0AA4,X                        ;81F862;
    LDA.B #$00                           ;81F865;
    STA.W $0AA5,X                        ;81F867;
    STA.W $0AA6,X                        ;81F86A;
    TXA                                  ;81F86D;
    CLC                                  ;81F86E;
    ADC.B #$06                           ;81F86F;
    STA.W $0AA0                          ;81F871;
    RTS                                  ;81F874;

CODE_81F875:
    LDX.B $01                            ;81F875;
    BNE CODE_81F88E                      ;81F877;
    JSL.L CODE_84A205                    ;81F879;
    TYA                                  ;81F87D;
    BEQ CODE_81F884                      ;81F87E;
    JML.L CODE_828387                    ;81F880;

CODE_81F884:
    INC.B $01                            ;81F884;
    LDA.B #$04                           ;81F886;
    STA.B $02                            ;81F888;
    LDA.B $0B                            ;81F88A;
    STA.B $04                            ;81F88C;

CODE_81F88E:
    LDA.B $04                            ;81F88E;
    STA.B $05                            ;81F890;
    JSR.W CODE_81F8FB                    ;81F892;
    LDX.B $02                            ;81F895;
    JSR.W (PTR16_81F89B,X)               ;81F897;
    RTL                                  ;81F89A;

PTR16_81F89B:
    dw CODE_81F8A1                       ;81F89B;
    dw CODE_81F8EB                       ;81F89D;
    dw CODE_81F8C4                       ;81F89F;

CODE_81F8A1:
    LDX.B $03                            ;81F8A1;
    JMP.W (PTR16_81F8A6,X)               ;81F8A3;

PTR16_81F8A6:
    dw CODE_81F8AC                       ;81F8A6;
    dw CODE_81F8C5                       ;81F8A8;
    dw CODE_81F8DD                       ;81F8AA;

CODE_81F8AC:
    LDA.B #$02                           ;81F8AC;
    STA.B $03                            ;81F8AE;
    REP #$20                             ;81F8B0;
    LDA.W #$0400                         ;81F8B2;
    STA.W $1E8D                          ;81F8B5;
    LDA.W #$0000                         ;81F8B8;
    STA.W $1E90                          ;81F8BB;
    SEP #$20                             ;81F8BE;
    JSL.L CODE_80E02E                    ;81F8C0;

CODE_81F8C4:
    RTS                                  ;81F8C4;

CODE_81F8C5:
    LDA.W $1F27                          ;81F8C5;
    BNE CODE_81F8DC                      ;81F8C8;
    LDA.B #$04                           ;81F8CA;
    STA.B $03                            ;81F8CC;
    LDA.B #$00                           ;81F8CE;
    STA.W $1E8D                          ;81F8D0;
    LDA.B #$05                           ;81F8D3;
    STA.W $1E8E                          ;81F8D5;
    JSL.L CODE_80E02E                    ;81F8D8;

CODE_81F8DC:
    RTS                                  ;81F8DC;

CODE_81F8DD:
    LDA.W $1F27                          ;81F8DD;
    BNE CODE_81F8EA                      ;81F8E0;
    LDA.B #$04                           ;81F8E2;
    STA.B $02                            ;81F8E4;
    JSL.L CODE_80E01E                    ;81F8E6;

CODE_81F8EA:
    RTS                                  ;81F8EA;

CODE_81F8EB:
    LDA.B #$0E                           ;81F8EB;
    STA.W $1E89                          ;81F8ED;
    STZ.W $1E9A                          ;81F8F0;
    INC.W $1E88                          ;81F8F3;
    LDA.B #$04                           ;81F8F6;
    STA.B $02                            ;81F8F8;
    RTS                                  ;81F8FA;

CODE_81F8FB:
    REP #$20                             ;81F8FB;
    LDX.B #$00                           ;81F8FD;
    LDA.W $0BB0                          ;81F8FF;

CODE_81F902:
    CMP.W DATA8_86E459,X                 ;81F902;
    BMI CODE_81F90D                      ;81F905;
    INX                                  ;81F907;
    INX                                  ;81F908;
    CPX.B #$02                           ;81F909;
    BNE CODE_81F902                      ;81F90B;

CODE_81F90D:
    SEP #$20                             ;81F90D;
    STX.B $04                            ;81F90F;
    CPX.B $05                            ;81F911;
    BEQ CODE_81F919                      ;81F913;
    STX.B $02                            ;81F915;
    STZ.B $03                            ;81F917;

CODE_81F919:
    RTS                                  ;81F919;

CODE_81F91A:
    PHP                                  ;81F91A;
    REP #$20                             ;81F91B;
    SEP #$10                             ;81F91D;
    LDX.B $01                            ;81F91F;
    JSR.W (PTR16_81F930,X)               ;81F921;
    JSL.L CODE_82806E                    ;81F924;
    BCC CODE_81F92E                      ;81F928;
    JSL.L CODE_828387                    ;81F92A;

CODE_81F92E:
    PLP                                  ;81F92E;
    RTL                                  ;81F92F;

PTR16_81F930:
    dw CODE_81F934                       ;81F930;
    dw CODE_81F941                       ;81F932;

CODE_81F934:
    LDX.B #$02                           ;81F934;
    STX.B $01                            ;81F936;
    JSR.W CODE_81F96A                    ;81F938;
    BPL CODE_81F941                      ;81F93B;
    LDX.B #$02                           ;81F93D;
    STX.B $02                            ;81F93F;

CODE_81F941:
    LDX.B $02                            ;81F941;
    JMP.W (PTR16_81F946,X)               ;81F943;

PTR16_81F946:
    dw CODE_81F94A                       ;81F946;
    dw CODE_81F95B                       ;81F948;

CODE_81F94A:
    JSR.W CODE_81F96A                    ;81F94A;
    BPL CODE_81F95A                      ;81F94D;
    LDX.B #$02                           ;81F94F;
    STX.B $02                            ;81F951;
    LDA.B $0B                            ;81F953;
    ASL A                                ;81F955;
    TAX                                  ;81F956;
    JSR.W (PTR16_81F976,X)               ;81F957;

CODE_81F95A:
    RTS                                  ;81F95A;

CODE_81F95B:
    JSR.W CODE_81F96A                    ;81F95B;
    BMI CODE_81F969                      ;81F95E;
    STZ.B $02                            ;81F960;
    LDA.B $0B                            ;81F962;
    ASL A                                ;81F964;
    TAX                                  ;81F965;
    JSR.W (PTR16_81F98E,X)               ;81F966;

CODE_81F969:
    RTS                                  ;81F969;

CODE_81F96A:
    LDX.B $0B                            ;81F96A;
    LDA.W DATA8_86E45B,X                 ;81F96C;
    TAX                                  ;81F96F;
    LDA.W $0BA8,X                        ;81F970;
    CMP.B $00,X                          ;81F973;
    RTS                                  ;81F975;

PTR16_81F976:
    dw CODE_81F9A6                       ;81F976;
    dw CODE_81FA66                       ;81F978;
    dw CODE_81FA7D                       ;81F97A;
    dw CODE_81FA8E                       ;81F97C;
    dw CODE_81FAB5                       ;81F97E;
    dw CODE_81FB33                       ;81F980;
    dw CODE_81FAF7                       ;81F982;
    dw CODE_81FB98                       ;81F984;
    dw CODE_81FB5A                       ;81F986;
    dw CODE_81FBFD                       ;81F988;
    dw CODE_81FBBF                       ;81F98A;
    dw CODE_81FC24                       ;81F98C;

PTR16_81F98E:
    dw CODE_81F9A7                       ;81F98E;
    dw CODE_81FA7D                       ;81F990;
    dw CODE_81FA66                       ;81F992;
    dw CODE_81FAB5                       ;81F994;
    dw CODE_81FA8E                       ;81F996;
    dw CODE_81FAF7                       ;81F998;
    dw CODE_81FB33                       ;81F99A;
    dw CODE_81FB5A                       ;81F99C;
    dw CODE_81FB98                       ;81F99E;
    dw CODE_81FBBF                       ;81F9A0;
    dw CODE_81FBFD                       ;81F9A2;
    dw CODE_81FC3B                       ;81F9A4;

CODE_81F9A6:
    RTS                                  ;81F9A6;

CODE_81F9A7:
    LDA.W $1E4D                          ;81F9A7;
    STA.W $0000                          ;81F9AA;
    LDA.W $1E50                          ;81F9AD;
    STA.W $0002                          ;81F9B0;
    LDA.W #$0100                         ;81F9B3;
    STA.W $1E4D                          ;81F9B6;
    STA.W $1E6A                          ;81F9B9;
    STA.W $1E5E                          ;81F9BC;
    STA.W $1E60                          ;81F9BF;
    STA.W $1E56                          ;81F9C2;
    STA.W $1E58                          ;81F9C5;
    LDA.W #$0800                         ;81F9C8;
    STA.W $1E50                          ;81F9CB;
    STA.W $1E6C                          ;81F9CE;
    LDA.W #$0380                         ;81F9D1;
    STA.W $1E90                          ;81F9D4;
    STA.W $1EAC                          ;81F9D7;
    LDA.W #$0080                         ;81F9DA;
    STA.W $1E8D                          ;81F9DD;
    STA.W $1EAA                          ;81F9E0;
    LDA.W $0BAD                          ;81F9E3;
    SEC                                  ;81F9E6;
    SBC.W $0000                          ;81F9E7;
    ORA.W #$0100                         ;81F9EA;
    STA.W $0BAD                          ;81F9ED;
    STA.W $0BCA                          ;81F9F0;
    LDA.W $0BB0                          ;81F9F3;
    SEC                                  ;81F9F6;
    SBC.W $0002                          ;81F9F7;
    ORA.W #$0800                         ;81F9FA;
    STA.W $0BB0                          ;81F9FD;
    STA.W $0BCC                          ;81FA00;
    REP #$10                             ;81FA03;
    LDX.W #$1228                         ;81FA05;

CODE_81FA08:
    LDA.W $0005,X                        ;81FA08;
    SEC                                  ;81FA0B;
    SBC.W $0000                          ;81FA0C;
    CLC                                  ;81FA0F;
    ADC.W #$0100                         ;81FA10;
    STA.W $0005,X                        ;81FA13;
    STA.W $0022,X                        ;81FA16;
    LDA.W $0008,X                        ;81FA19;
    SEC                                  ;81FA1C;
    SBC.W $0002                          ;81FA1D;
    CLC                                  ;81FA20;
    ADC.W #$0800                         ;81FA21;
    STA.W $0008,X                        ;81FA24;
    STA.W $0024,X                        ;81FA27;
    TXA                                  ;81FA2A;
    CLC                                  ;81FA2B;
    ADC.W #$0040                         ;81FA2C;
    TAX                                  ;81FA2F;
    CMP.W #$1428                         ;81FA30;
    BCC CODE_81FA08                      ;81FA33;
    LDX.W #$0C98                         ;81FA35;

CODE_81FA38:
    LDA.W $0005,X                        ;81FA38;
    SEC                                  ;81FA3B;
    SBC.W $0000                          ;81FA3C;
    ORA.W #$0100                         ;81FA3F;
    STA.W $0005,X                        ;81FA42;
    STA.W $0022,X                        ;81FA45;
    LDA.W $0008,X                        ;81FA48;
    SEC                                  ;81FA4B;
    SBC.W $0002                          ;81FA4C;
    ORA.W #$0800                         ;81FA4F;
    STA.W $0008,X                        ;81FA52;
    STA.W $0024,X                        ;81FA55;
    TXA                                  ;81FA58;
    CLC                                  ;81FA59;
    ADC.W #$0020                         ;81FA5A;
    TAX                                  ;81FA5D;
    CMP.W #$0E18                         ;81FA5E;
    BCC CODE_81FA38                      ;81FA61;
    SEP #$10                             ;81FA63;
    RTS                                  ;81FA65;

CODE_81FA66:
    SEP #$30                             ;81FA66;
    LDA.B #$13                           ;81FA68;
    STA.W $00C0                          ;81FA6A;
    LDA.B #$10                           ;81FA6D;
    STA.W $00C1                          ;81FA6F;
    LDA.B #$02                           ;81FA72;
    STA.W $00C9                          ;81FA74;
    LDA.B #$4B                           ;81FA77;
    STA.W $00CA                          ;81FA79;
    RTS                                  ;81FA7C;

CODE_81FA7D:
    SEP #$30                             ;81FA7D;
    LDA.B #$17                           ;81FA7F;
    STA.W $00C0                          ;81FA81;
    STZ.W $00C1                          ;81FA84;
    STZ.W $00C9                          ;81FA87;
    STZ.W $00CA                          ;81FA8A;
    RTS                                  ;81FA8D;

CODE_81FA8E:
    REP #$30                             ;81FA8E;
    LDX.W #$1628                         ;81FA90;

CODE_81FA93:
    LDA.W $0000,X                        ;81FA93;
    BEQ CODE_81FAA9                      ;81FA96;
    LDA.W $000A,X                        ;81FA98;
    AND.W #$00FF                         ;81FA9B;
    CMP.W #$000E                         ;81FA9E;
    BNE CODE_81FAA9                      ;81FAA1;
    STZ.W $0000,X                        ;81FAA3;
    STZ.W $0002,X                        ;81FAA6;

CODE_81FAA9:
    TXA                                  ;81FAA9;
    CLC                                  ;81FAAA;
    ADC.W #$0030                         ;81FAAB;
    TAX                                  ;81FAAE;
    CMP.W #$1928                         ;81FAAF;
    BCC CODE_81FA93                      ;81FAB2;
    RTS                                  ;81FAB4;

CODE_81FAB5:
    REP #$30                             ;81FAB5;
    LDX.W #$1628                         ;81FAB7;

CODE_81FABA:
    LDA.W $0000,X                        ;81FABA;
    BEQ CODE_81FACB                      ;81FABD;
    LDA.W $000A,X                        ;81FABF;
    AND.W #$00FF                         ;81FAC2;
    CMP.W #$000E                         ;81FAC5;
    BNE CODE_81FACB                      ;81FAC8;
    RTS                                  ;81FACA;

CODE_81FACB:
    TXA                                  ;81FACB;
    CLC                                  ;81FACC;
    ADC.W #$0030                         ;81FACD;
    TAX                                  ;81FAD0;
    CMP.W #$1928                         ;81FAD1;
    BCC CODE_81FABA                      ;81FAD4;
    LDY.W #$0009                         ;81FAD6;
    SEP #$30                             ;81FAD9;

CODE_81FADB:
    JSL.L CODE_8282B9                    ;81FADB;
    BNE CODE_81FAF6                      ;81FADF;
    INC.W $0000,X                        ;81FAE1;
    LDA.B #$0E                           ;81FAE4;
    STA.W $000A,X                        ;81FAE6;
    TYA                                  ;81FAE9;
    CMP.B #$06                           ;81FAEA;
    BCC CODE_81FAF0                      ;81FAEC;
    ORA.B #$80                           ;81FAEE;

CODE_81FAF0:
    STA.W $000B,X                        ;81FAF0;
    DEY                                  ;81FAF3;
    BPL CODE_81FADB                      ;81FAF4;

CODE_81FAF6:
    RTS                                  ;81FAF6;

CODE_81FAF7:
    REP #$30                             ;81FAF7;
    LDX.W #$1628                         ;81FAF9;

CODE_81FAFC:
    LDA.W $0000,X                        ;81FAFC;
    BEQ CODE_81FB0D                      ;81FAFF;
    LDA.W $000A,X                        ;81FB01;
    AND.W #$00FF                         ;81FB04;
    CMP.W #$000F                         ;81FB07;
    BNE CODE_81FB0D                      ;81FB0A;
    RTS                                  ;81FB0C;

CODE_81FB0D:
    TXA                                  ;81FB0D;
    CLC                                  ;81FB0E;
    ADC.W #$0030                         ;81FB0F;
    TAX                                  ;81FB12;
    CMP.W #$1928                         ;81FB13;
    BCC CODE_81FAFC                      ;81FB16;
    LDY.W #$000B                         ;81FB18;
    SEP #$30                             ;81FB1B;

CODE_81FB1D:
    JSL.L CODE_8282B9                    ;81FB1D;
    BNE CODE_81FB32                      ;81FB21;
    INC.W $0000,X                        ;81FB23;
    LDA.B #$0F                           ;81FB26;
    STA.W $000A,X                        ;81FB28;
    TYA                                  ;81FB2B;
    STA.W $000B,X                        ;81FB2C;
    DEY                                  ;81FB2F;
    BPL CODE_81FB1D                      ;81FB30;

CODE_81FB32:
    RTS                                  ;81FB32;

CODE_81FB33:
    REP #$30                             ;81FB33;
    LDX.W #$1628                         ;81FB35;

CODE_81FB38:
    LDA.W $0000,X                        ;81FB38;
    BEQ CODE_81FB4E                      ;81FB3B;
    LDA.W $000A,X                        ;81FB3D;
    AND.W #$00FF                         ;81FB40;
    CMP.W #$000F                         ;81FB43;
    BNE CODE_81FB4E                      ;81FB46;
    STZ.W $0000,X                        ;81FB48;
    STZ.W $0002,X                        ;81FB4B;

CODE_81FB4E:
    TXA                                  ;81FB4E;
    CLC                                  ;81FB4F;
    ADC.W #$0030                         ;81FB50;
    TAX                                  ;81FB53;
    CMP.W #$1928                         ;81FB54;
    BCC CODE_81FB38                      ;81FB57;
    RTS                                  ;81FB59;

CODE_81FB5A:
    REP #$30                             ;81FB5A;
    LDX.W #$1628                         ;81FB5C;

CODE_81FB5F:
    LDA.W $0000,X                        ;81FB5F;
    BEQ CODE_81FB70                      ;81FB62;
    LDA.W $000A,X                        ;81FB64;
    AND.W #$00FF                         ;81FB67;
    CMP.W #$0013                         ;81FB6A;
    BNE CODE_81FB70                      ;81FB6D;
    RTS                                  ;81FB6F;

CODE_81FB70:
    TXA                                  ;81FB70;
    CLC                                  ;81FB71;
    ADC.W #$0030                         ;81FB72;
    TAX                                  ;81FB75;
    CMP.W #$1928                         ;81FB76;
    BCC CODE_81FB5F                      ;81FB79;
    LDY.W #$0006                         ;81FB7B;
    SEP #$30                             ;81FB7E;

CODE_81FB80:
    JSL.L CODE_8282B9                    ;81FB80;
    BNE CODE_81FB97                      ;81FB84;
    INC.W $0000,X                        ;81FB86;
    LDA.B #$13                           ;81FB89;
    STA.W $000A,X                        ;81FB8B;
    LDA.W DATA8_86E467,Y                 ;81FB8E;
    STA.W $000B,X                        ;81FB91;
    DEY                                  ;81FB94;
    BPL CODE_81FB80                      ;81FB95;

CODE_81FB97:
    RTS                                  ;81FB97;

CODE_81FB98:
    REP #$30                             ;81FB98;
    LDX.W #$1628                         ;81FB9A;

CODE_81FB9D:
    LDA.W $0000,X                        ;81FB9D;
    BEQ CODE_81FBB3                      ;81FBA0;
    LDA.W $000A,X                        ;81FBA2;
    AND.W #$00FF                         ;81FBA5;
    CMP.W #$0013                         ;81FBA8;
    BNE CODE_81FBB3                      ;81FBAB;
    STZ.W $0000,X                        ;81FBAD;
    STZ.W $0002,X                        ;81FBB0;

CODE_81FBB3:
    TXA                                  ;81FBB3;
    CLC                                  ;81FBB4;
    ADC.W #$0030                         ;81FBB5;
    TAX                                  ;81FBB8;
    CMP.W #$1928                         ;81FBB9;
    BCC CODE_81FB9D                      ;81FBBC;
    RTS                                  ;81FBBE;

CODE_81FBBF:
    REP #$30                             ;81FBBF;
    LDX.W #$1628                         ;81FBC1;

CODE_81FBC4:
    LDA.W $0000,X                        ;81FBC4;
    BEQ CODE_81FBD5                      ;81FBC7;
    LDA.W $000A,X                        ;81FBC9;
    AND.W #$00FF                         ;81FBCC;
    CMP.W #$0014                         ;81FBCF;
    BNE CODE_81FBD5                      ;81FBD2;
    RTS                                  ;81FBD4;

CODE_81FBD5:
    TXA                                  ;81FBD5;
    CLC                                  ;81FBD6;
    ADC.W #$0030                         ;81FBD7;
    TAX                                  ;81FBDA;
    CMP.W #$1928                         ;81FBDB;
    BCC CODE_81FBC4                      ;81FBDE;
    LDY.W #$0002                         ;81FBE0;
    SEP #$30                             ;81FBE3;

CODE_81FBE5:
    JSL.L CODE_8282B9                    ;81FBE5;
    BNE CODE_81FBFC                      ;81FBE9;
    INC.W $0000,X                        ;81FBEB;
    LDA.B #$14                           ;81FBEE;
    STA.W $000A,X                        ;81FBF0;
    LDA.W DATA8_86E46E,Y                 ;81FBF3;
    STA.W $000B,X                        ;81FBF6;
    DEY                                  ;81FBF9;
    BPL CODE_81FBE5                      ;81FBFA;

CODE_81FBFC:
    RTS                                  ;81FBFC;

CODE_81FBFD:
    REP #$30                             ;81FBFD;
    LDX.W #$1628                         ;81FBFF;

CODE_81FC02:
    LDA.W $0000,X                        ;81FC02;
    BEQ CODE_81FC18                      ;81FC05;
    LDA.W $000A,X                        ;81FC07;
    AND.W #$00FF                         ;81FC0A;
    CMP.W #$0014                         ;81FC0D;
    BNE CODE_81FC18                      ;81FC10;
    STZ.W $0000,X                        ;81FC12;
    STZ.W $0002,X                        ;81FC15;

CODE_81FC18:
    TXA                                  ;81FC18;
    CLC                                  ;81FC19;
    ADC.W #$0030                         ;81FC1A;
    TAX                                  ;81FC1D;
    CMP.W #$1928                         ;81FC1E;
    BCC CODE_81FC02                      ;81FC21;
    RTS                                  ;81FC23;

CODE_81FC24:
    SEP #$30                             ;81FC24;
    LDA.B #$17                           ;81FC26;
    STA.W $00C0                          ;81FC28;
    LDA.B #$15                           ;81FC2B;
    STA.W $00C1                          ;81FC2D;
    LDA.B #$02                           ;81FC30;
    STA.W $00C9                          ;81FC32;
    LDA.B #$7F                           ;81FC35;
    STA.W $00CA                          ;81FC37;
    RTS                                  ;81FC3A;

CODE_81FC3B:
    SEP #$30                             ;81FC3B;
    STZ.W $00C1                          ;81FC3D;
    STZ.W $00CA                          ;81FC40;
    STZ.W $00C9                          ;81FC43;
    RTS                                  ;81FC46;

CODE_81FC47:
    LDA.B $01                            ;81FC47;
    BEQ CODE_81FC50                      ;81FC49;
    BRA CODE_81FC58                      ;81FC4B;

CODE_81FC4D:
    JMP.W CODE_81FCD2                    ;81FC4D;

CODE_81FC50:
    INC.B $01                            ;81FC50;
    LDA.B #$01                           ;81FC52;
    STA.B $0E                            ;81FC54;
    STZ.B $0F                            ;81FC56;

CODE_81FC58:
    JSR.W CODE_81FCA4                    ;81FC58;
    BNE CODE_81FCA1                      ;81FC5B;
    REP #$20                             ;81FC5D;
    DEC.B $0E                            ;81FC5F;
    SEP #$20                             ;81FC61;
    BNE CODE_81FCA1                      ;81FC63;
    JSL.L CODE_828321                    ;81FC65;
    BNE CODE_81FC9A                      ;81FC69;
    REP #$20                             ;81FC6B;
    TDC                                  ;81FC6D;
    STA.W $000C,X                        ;81FC6E;
    LDA.W $1E4D                          ;81FC71;
    CLC                                  ;81FC74;
    ADC.W #$0090                         ;81FC75;
    STA.W $0005,X                        ;81FC78;
    LDA.W $1E50                          ;81FC7B;
    STA.W $0008,X                        ;81FC7E;
    LDA.B $05                            ;81FC81;
    STA.W $0037,X                        ;81FC83;
    LDA.B $08                            ;81FC86;
    STA.W $0039,X                        ;81FC88;
    SEP #$20                             ;81FC8B;
    LDA.B #$10                           ;81FC8D;
    STA.W $000A,X                        ;81FC8F;
    INC.W $0000,X                        ;81FC92;
    LDA.B $0B                            ;81FC95;
    STA.W $000B,X                        ;81FC97;

CODE_81FC9A:
    LDX.W #$01A4                         ;81FC9A;
    STX.B $0E                            ;81FC9D;
    SEP #$10                             ;81FC9F;

CODE_81FCA1:
    JMP.W CODE_81FC4D                    ;81FCA1;

CODE_81FCA4:
    REP #$20                             ;81FCA4;
    LDA.B $05                            ;81FCA6;
    SEC                                  ;81FCA8;
    SBC.W $0BAD                          ;81FCA9;
    BCS CODE_81FCB2                      ;81FCAC;
    EOR.W #$FFFF                         ;81FCAE;
    INC A                                ;81FCB1;

CODE_81FCB2:
    CMP.W #$0080                         ;81FCB2;
    BCS CODE_81FCCD                      ;81FCB5;
    LDA.B $08                            ;81FCB7;
    SEC                                  ;81FCB9;
    SBC.W $0BB0                          ;81FCBA;
    BCS CODE_81FCC3                      ;81FCBD;
    EOR.W #$FFFF                         ;81FCBF;
    INC A                                ;81FCC2;

CODE_81FCC3:
    CMP.W #$0080                         ;81FCC3;
    BCS CODE_81FCCD                      ;81FCC6;
    SEP #$20                             ;81FCC8;
    LDA.B #$00                           ;81FCCA;
    RTS                                  ;81FCCC;

CODE_81FCCD:
    SEP #$20                             ;81FCCD;
    LDA.B #$01                           ;81FCCF;
    RTS                                  ;81FCD1;

CODE_81FCD2:
    JSL.L CODE_82806E                    ;81FCD2;
    BCC CODE_81FCDC                      ;81FCD6;
    JML.L CODE_828387                    ;81FCD8;

CODE_81FCDC:
    RTL                                  ;81FCDC;

CODE_81FCDD:
    LDA.B $01                            ;81FCDD;
    BEQ CODE_81FCE6                      ;81FCDF;
    BRA CODE_81FCEC                      ;81FCE1;

CODE_81FCE3:
    JMP.W CODE_81FD61                    ;81FCE3;

CODE_81FCE6:
    INC.B $01                            ;81FCE6;
    LDA.B #$01                           ;81FCE8;
    STA.B $02                            ;81FCEA;

CODE_81FCEC:
    JSR.W CODE_81FD33                    ;81FCEC;
    BNE CODE_81FD30                      ;81FCEF;
    DEC.B $02                            ;81FCF1;
    BNE CODE_81FD30                      ;81FCF3;
    JSL.L CODE_828321                    ;81FCF5;
    BNE CODE_81FD2A                      ;81FCF9;
    REP #$20                             ;81FCFB;
    JSL.L CODE_849086                    ;81FCFD;
    AND.W #$007F                         ;81FD01;
    BIT.W #$0001                         ;81FD04;
    BNE CODE_81FD0D                      ;81FD07;
    EOR.W #$FFFF                         ;81FD09;
    INC A                                ;81FD0C;

CODE_81FD0D:
    CLC                                  ;81FD0D;
    ADC.W $0BAD                          ;81FD0E;
    AND.W #$FFF0                         ;81FD11;
    CLC                                  ;81FD14;
    ADC.W #$0008                         ;81FD15;
    STA.W $0005,X                        ;81FD18;
    LDA.B $08                            ;81FD1B;
    STA.W $0008,X                        ;81FD1D;
    SEP #$20                             ;81FD20;
    LDA.B #$07                           ;81FD22;
    STA.W $000A,X                        ;81FD24;
    INC.W $0000,X                        ;81FD27;

CODE_81FD2A:
    SEP #$10                             ;81FD2A;
    LDA.B #$78                           ;81FD2C;
    STA.B $02                            ;81FD2E;

CODE_81FD30:
    JMP.W CODE_81FCE3                    ;81FD30;

CODE_81FD33:
    REP #$20                             ;81FD33;
    LDA.B $05                            ;81FD35;
    SEC                                  ;81FD37;
    SBC.W $0BAD                          ;81FD38;
    BCS CODE_81FD41                      ;81FD3B;
    EOR.W #$FFFF                         ;81FD3D;
    INC A                                ;81FD40;

CODE_81FD41:
    CMP.W #$0080                         ;81FD41;
    BCS CODE_81FD5C                      ;81FD44;
    LDA.B $08                            ;81FD46;
    SEC                                  ;81FD48;
    SBC.W $0BB0                          ;81FD49;
    BCS CODE_81FD52                      ;81FD4C;
    EOR.W #$FFFF                         ;81FD4E;
    INC A                                ;81FD51;

CODE_81FD52:
    CMP.W #$0080                         ;81FD52;
    BCS CODE_81FD5C                      ;81FD55;
    SEP #$20                             ;81FD57;
    LDA.B #$00                           ;81FD59;
    RTS                                  ;81FD5B;

CODE_81FD5C:
    SEP #$20                             ;81FD5C;
    LDA.B #$01                           ;81FD5E;
    RTS                                  ;81FD60;

CODE_81FD61:
    JSL.L CODE_82806E                    ;81FD61;
    BCC CODE_81FD6B                      ;81FD65;
    JML.L CODE_828387                    ;81FD67;

CODE_81FD6B:
    RTL                                  ;81FD6B;

CODE_81FD6C:
    LDA.B $01                            ;81FD6C;
    BEQ CODE_81FD75                      ;81FD6E;
    BRA CODE_81FD7B                      ;81FD70;

CODE_81FD72:
    JMP.W CODE_81FDEE                    ;81FD72;

CODE_81FD75:
    INC.B $01                            ;81FD75;
    LDA.B #$01                           ;81FD77;
    STA.B $02                            ;81FD79;

CODE_81FD7B:
    JSR.W CODE_81FDC0                    ;81FD7B;
    BNE CODE_81FDBD                      ;81FD7E;
    DEC.B $02                            ;81FD80;
    BNE CODE_81FDBD                      ;81FD82;
    JSL.L CODE_828321                    ;81FD84;
    BNE CODE_81FDB7                      ;81FD88;
    REP #$20                             ;81FD8A;
    JSL.L CODE_849086                    ;81FD8C;
    AND.W #$0100                         ;81FD90;
    PHA                                  ;81FD93;
    CLC                                  ;81FD94;
    ADC.W $1E4D                          ;81FD95;
    STA.W $0005,X                        ;81FD98;
    LDA.W $1E50                          ;81FD9B;
    CLC                                  ;81FD9E;
    ADC.W #$0020                         ;81FD9F;
    STA.W $0008,X                        ;81FDA2;
    PLA                                  ;81FDA5;
    LSR A                                ;81FDA6;
    LSR A                                ;81FDA7;
    SEP #$20                             ;81FDA8;
    EOR.B #$40                           ;81FDAA;
    STA.W $000B,X                        ;81FDAC;
    LDA.B #$02                           ;81FDAF;
    STA.W $000A,X                        ;81FDB1;
    INC.W $0000,X                        ;81FDB4;

CODE_81FDB7:
    SEP #$10                             ;81FDB7;
    LDA.B #$5A                           ;81FDB9;
    STA.B $02                            ;81FDBB;

CODE_81FDBD:
    JMP.W CODE_81FD72                    ;81FDBD;

CODE_81FDC0:
    REP #$20                             ;81FDC0;
    LDA.B $05                            ;81FDC2;
    SEC                                  ;81FDC4;
    SBC.W $0BAD                          ;81FDC5;
    BCS CODE_81FDCE                      ;81FDC8;
    EOR.W #$FFFF                         ;81FDCA;
    INC A                                ;81FDCD;

CODE_81FDCE:
    CMP.W #$0080                         ;81FDCE;
    BCS CODE_81FDE9                      ;81FDD1;
    LDA.B $08                            ;81FDD3;
    SEC                                  ;81FDD5;
    SBC.W $0BB0                          ;81FDD6;
    BCS CODE_81FDDF                      ;81FDD9;
    EOR.W #$FFFF                         ;81FDDB;
    INC A                                ;81FDDE;

CODE_81FDDF:
    CMP.W #$0080                         ;81FDDF;
    BCS CODE_81FDE9                      ;81FDE2;
    SEP #$20                             ;81FDE4;
    LDA.B #$00                           ;81FDE6;
    RTS                                  ;81FDE8;

CODE_81FDE9:
    SEP #$20                             ;81FDE9;
    LDA.B #$01                           ;81FDEB;
    RTS                                  ;81FDED;

CODE_81FDEE:
    JSL.L CODE_82806E                    ;81FDEE;
    BCC CODE_81FDF8                      ;81FDF2;
    JML.L CODE_828387                    ;81FDF4;

CODE_81FDF8:
    RTL                                  ;81FDF8;

CODE_81FDF9:
    LDA.B $01                            ;81FDF9;
    BNE CODE_81FE0E                      ;81FDFB;
    INC.B $01                            ;81FDFD;
    LDA.W $1F81                          ;81FDFF;
    BEQ CODE_81FE08                      ;81FE02;
    JML.L CODE_828398                    ;81FE04;

CODE_81FE08:
    LDA.B #$0A                           ;81FE08;
    STA.B $0B                            ;81FE0A;
    STZ.B $03                            ;81FE0C;

CODE_81FE0E:
    LDY.B #$03                           ;81FE0E;

CODE_81FE10:
    SEP #$20                             ;81FE10;
    JSL.L CODE_8282D3                    ;81FE12;
    BNE CODE_81FE69                      ;81FE16;
    INC.W $0000,X                        ;81FE18;
    LDA.B #$03                           ;81FE1B;
    STA.W $000A,X                        ;81FE1D;
    JSL.L CODE_849086                    ;81FE20;
    AND.B #$3F                           ;81FE24;
    CLC                                  ;81FE26;
    ADC.B #$10                           ;81FE27;
    STA.W $000B,X                        ;81FE29;
    JSL.L CODE_849086                    ;81FE2C;
    AND.B #$7F                           ;81FE30;
    STA.W $001C,X                        ;81FE32;
    STZ.W $001D,X                        ;81FE35;
    JSL.L CODE_849086                    ;81FE38;
    AND.B #$1F                           ;81FE3C;
    LSR A                                ;81FE3E;
    BCC CODE_81FE44                      ;81FE3F;
    EOR.B #$FF                           ;81FE41;
    INC A                                ;81FE43;

CODE_81FE44:
    CLC                                  ;81FE44;
    ADC.B $03                            ;81FE45;
    STA.W $0008,X                        ;81FE47;
    LDA.B #$02                           ;81FE4A;
    STA.W $0009,X                        ;81FE4C;
    REP #$20                             ;81FE4F;
    JSL.L CODE_849086                    ;81FE51;
    AND.W #$003F                         ;81FE55;
    LSR A                                ;81FE58;
    BCC CODE_81FE5F                      ;81FE59;
    EOR.W #$FFFF                         ;81FE5B;
    INC A                                ;81FE5E;

CODE_81FE5F:
    CLC                                  ;81FE5F;
    ADC.W #$0080                         ;81FE60;
    STA.W $0005,X                        ;81FE63;
    DEY                                  ;81FE66;
    BNE CODE_81FE10                      ;81FE67;

CODE_81FE69:
    SEP #$30                             ;81FE69;
    DEC.B $0B                            ;81FE6B;
    BNE CODE_81FE79                      ;81FE6D;
    LDA.B #$2F                           ;81FE6F;
    JSL.L CODE_8088CD                    ;81FE71;
    JML.L CODE_828398                    ;81FE75;

CODE_81FE79:
    LDA.B $0B                            ;81FE79;
    LSR A                                ;81FE7B;
    BCC CODE_81FE85                      ;81FE7C;
    LDA.B $03                            ;81FE7E;
    CLC                                  ;81FE80;
    ADC.B #$06                           ;81FE81;
    STA.B $03                            ;81FE83;

CODE_81FE85:
    RTL                                  ;81FE85;

CODE_81FE86:
    LDX.B $01                            ;81FE86;
    JSR.W (PTR16_81FE8C,X)               ;81FE88;
    RTL                                  ;81FE8B;

PTR16_81FE8C:
    dw CODE_81FE96                       ;81FE8C;
    dw CODE_81FEAB                       ;81FE8E;
    dw CODE_81FEE6                       ;81FE90;
    dw CODE_81FF11                       ;81FE92;
    dw CODE_81FF11                       ;81FE94;

CODE_81FE96:
    REP #$20                             ;81FE96;
    LDA.W $0BAD                          ;81FE98;
    CMP.W #$0F00                         ;81FE9B;
    SEP #$20                             ;81FE9E;
    BCC CODE_81FEAA                      ;81FEA0;
    LDA.B #$02                           ;81FEA2;
    STA.B $01                            ;81FEA4;
    LDA.B #$FF                           ;81FEA6;
    STA.B $00                            ;81FEA8;

CODE_81FEAA:
    RTS                                  ;81FEAA;

CODE_81FEAB:
    REP #$20                             ;81FEAB;
    LDA.W #$0F00                         ;81FEAD;
    STA.W $1E60                          ;81FEB0;
    STA.W $1E5E                          ;81FEB3;
    LDA.W #$0400                         ;81FEB6;
    STA.W $1E6E                          ;81FEB9;
    STA.W $1E68                          ;81FEBC;
    SEP #$20                             ;81FEBF;
    LDA.B #$02                           ;81FEC1;
    STA.W $1E52                          ;81FEC3;
    LDA.B #$04                           ;81FEC6;
    STA.B $01                            ;81FEC8;
    INC.W $1F13                          ;81FECA;
    INC.W $1F14                          ;81FECD;
    INC.W $1F15                          ;81FED0;
    INC.W $1F16                          ;81FED3;
    INC.W $1F17                          ;81FED6;
    JSR.W LOOSE_OP_819F85                ;81FED9;
    JSR.W CODE_81A187                    ;81FEDC;
    JSR.W LOOSE_OP_81A26F                ;81FEDF;
    JSR.W CODE_81A28B                    ;81FEE2;
    RTS                                  ;81FEE5;

CODE_81FEE6:
    REP #$20                             ;81FEE6;
    LDA.W $1E4D                          ;81FEE8;
    CMP.W #$0F00                         ;81FEEB;
    BNE CODE_81FF10                      ;81FEEE;
    LDA.W $1E50                          ;81FEF0;
    CMP.W #$0400                         ;81FEF3;
    BNE CODE_81FF10                      ;81FEF6;
    SEP #$20                             ;81FEF8;
    JSR.W LOOSE_OP_819FAD                ;81FEFA;
    STZ.W $1F13                          ;81FEFD;
    STZ.W $1F14                          ;81FF00;
    STZ.W $1F15                          ;81FF03;
    STZ.W $1F16                          ;81FF06;
    STZ.W $1F17                          ;81FF09;
    LDA.B #$06                           ;81FF0C;
    STA.B $01                            ;81FF0E;

CODE_81FF10:
    RTS                                  ;81FF10;

CODE_81FF11:
    RTS                                  ;81FF11;

CODE_81FF12:
    LDA.B $01                            ;81FF12;
    BNE CODE_81FF2D                      ;81FF14;
    INC.B $01                            ;81FF16;
    LDA.B $0B                            ;81FF18;
    AND.B #$3F                           ;81FF1A;
    CMP.W $1F81                          ;81FF1C;
    BEQ CODE_81FF23                      ;81FF1F;
    BCS CODE_81FF27                      ;81FF21;

CODE_81FF23:
    JML.L CODE_828387                    ;81FF23;

CODE_81FF27:
    LDA.B $0B                            ;81FF27;
    AND.B #$40                           ;81FF29;
    STA.B $02                            ;81FF2B;

CODE_81FF2D:
    REP #$20                             ;81FF2D;
    LDX.B $02                            ;81FF2F;
    BNE CODE_81FF3A                      ;81FF31;
    LDA.B $05                            ;81FF33;
    CMP.W $0BAD                          ;81FF35;
    BRA CODE_81FF3F                      ;81FF38;

CODE_81FF3A:
    LDA.B $08                            ;81FF3A;
    CMP.W $0BB0                          ;81FF3C;

CODE_81FF3F:
    SEP #$20                             ;81FF3F;
    LDA.B #$00                           ;81FF41;
    ROR A                                ;81FF43;
    EOR.B $0B                            ;81FF44;
    AND.B #$80                           ;81FF46;
    BNE CODE_81FF55                      ;81FF48;
    LDA.B $0B                            ;81FF4A;
    AND.B #$3F                           ;81FF4C;
    STA.W $1F81                          ;81FF4E;
    JML.L CODE_828387                    ;81FF51;

CODE_81FF55:
    JSL.L CODE_82806E                    ;81FF55;
    BCC CODE_81FF5F                      ;81FF59;
    JML.L CODE_828387                    ;81FF5B;

CODE_81FF5F:
    RTL                                  ;81FF5F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FF98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;81FFF8;

ORG $878000

CODE_878000:
    PHP                                  ;878000;
    PHD                                  ;878001;
    REP #$20                             ;878002;
    LDA.W #$1928                         ;878004;

CODE_878007:
    TCD                                  ;878007;
    SEP #$30                             ;878008;
    JSR.W CODE_87801C                    ;87800A;
    REP #$20                             ;87800D;
    TDC                                  ;87800F;
    CLC                                  ;878010;
    ADC.W #$0020                         ;878011;
    CMP.W #$1AA8                         ;878014;
    BCC CODE_878007                      ;878017;
    PLD                                  ;878019;
    PLP                                  ;87801A;
    RTL                                  ;87801B;

CODE_87801C:
    LDA.B $01                            ;87801C;
    BNE CODE_878057                      ;87801E;
    INC.B $01                            ;878020;
    STZ.B $18                            ;878022;
    LDA.B #$55                           ;878024;
    STA.B $16                            ;878026;
    REP #$20                             ;878028;
    TDC                                  ;87802A;
    SEC                                  ;87802B;
    SBC.W #$1928                         ;87802C;
    LSR A                                ;87802F;
    LSR A                                ;878030;
    LSR A                                ;878031;
    LSR A                                ;878032;
    LSR A                                ;878033;
    SEP #$20                             ;878034;
    STA.B $0B                            ;878036;
    STZ.B $07                            ;878038;
    BRA CODE_87803E                      ;87803A;

CODE_87803C:
    INC.B $07                            ;87803C;

CODE_87803E:
    SEC                                  ;87803E;
    SBC.B #$04                           ;87803F;
    BCS CODE_87803C                      ;878041;
    CLC                                  ;878043;
    ADC.B #$04                           ;878044;
    TAX                                  ;878046;
    LDA.W DATA8_86BD60,X                 ;878047;
    STA.B $05                            ;87804A;
    STZ.B $06                            ;87804C;
    LDX.B $07                            ;87804E;
    LDA.W DATA8_86BD64,X                 ;878050;
    STA.B $08                            ;878053;
    STZ.B $09                            ;878055;

CODE_878057:
    LDX.B $0B                            ;878057;
    LDA.W $1E54,X                        ;878059;
    STA.W $0000                          ;87805C;
    LDA.B $0B                            ;87805F;
    ASL A                                ;878061;
    ASL A                                ;878062;
    ASL A                                ;878063;
    CLC                                  ;878064;
    ADC.W $0000                          ;878065;
    TAX                                  ;878068;
    LDA.W DATA8_86BD6F,X                 ;878069;
    TAX                                  ;87806C;
    LDA.W DATA8_86BD67,X                 ;87806D;
    ORA.B #$30                           ;878070;
    STA.B $11                            ;878072;
    TXA                                  ;878074;
    JSL.L CODE_848F07                    ;878075;
    JSL.L CODE_8280B4                    ;878079;
    RTS                                  ;87807D;

CODE_87807E:
    PHD                                  ;87807E;
    PEA.W $0E68                          ;87807F;
    PLD                                  ;878082;
    LDA.B $01                            ;878083;
    BNE CODE_8780A5                      ;878085;
    INC.B $01                            ;878087;
    STZ.B $18                            ;878089;
    LDA.B #$55                           ;87808B;
    STA.B $16                            ;87808D;
    LDA.B #$34                           ;87808F;
    STA.B $11                            ;878091;
    LDA.B #$FF                           ;878093;
    STA.B $04                            ;878095;
    STA.B $07                            ;878097;
    STZ.B $06                            ;878099;
    STZ.B $09                            ;87809B;
    LDA.B #$09                           ;87809D;
    STA.B $0B                            ;87809F;
    JSL.L CODE_848F07                    ;8780A1;

CODE_8780A5:
    LDA.W $1E4F                          ;8780A5;
    CMP.B $07                            ;8780A8;
    BEQ CODE_8780E9                      ;8780AA;
    CMP.B #$03                           ;8780AC;
    BCS CODE_8780D1                      ;8780AE;
    STA.B $07                            ;8780B0;
    LDA.B #$09                           ;8780B2;
    CMP.B $0B                            ;8780B4;
    BEQ CODE_8780BE                      ;8780B6;
    STA.B $0B                            ;8780B8;
    JSL.L CODE_848F07                    ;8780BA;

CODE_8780BE:
    LDA.B $07                            ;8780BE;
    ASL A                                ;8780C0;
    ASL A                                ;8780C1;
    ASL A                                ;8780C2;
    ASL A                                ;8780C3;
    STA.B $08                            ;8780C4;
    ASL A                                ;8780C6;
    CLC                                  ;8780C7;
    ADC.B $08                            ;8780C8;
    CLC                                  ;8780CA;
    ADC.B #$26                           ;8780CB;
    STA.B $08                            ;8780CD;
    BRA CODE_8780E9                      ;8780CF;

CODE_8780D1:
    STA.B $07                            ;8780D1;
    LDA.B #$08                           ;8780D3;
    STA.B $0B                            ;8780D5;
    JSL.L CODE_848F07                    ;8780D7;
    LDA.B $07                            ;8780DB;
    SEC                                  ;8780DD;
    SBC.B #$03                           ;8780DE;
    ASL A                                ;8780E0;
    ASL A                                ;8780E1;
    ASL A                                ;8780E2;
    ASL A                                ;8780E3;
    CLC                                  ;8780E4;
    ADC.B #$AB                           ;8780E5;
    STA.B $08                            ;8780E7;

CODE_8780E9:
    LDA.B $07                            ;8780E9;
    CMP.B #$03                           ;8780EB;
    BCS CODE_878105                      ;8780ED;
    LDA.W $1E4C                          ;8780EF;
    STA.B $04                            ;8780F2;
    ASL A                                ;8780F4;
    ASL A                                ;8780F5;
    ASL A                                ;8780F6;
    ASL A                                ;8780F7;
    STA.B $05                            ;8780F8;
    ASL A                                ;8780FA;
    CLC                                  ;8780FB;
    ADC.B $05                            ;8780FC;
    CLC                                  ;8780FE;
    ADC.B #$38                           ;8780FF;
    STA.B $05                            ;878101;
    BRA CODE_87810E                      ;878103;

CODE_878105:
    LDA.W $1E4C                          ;878105;
    STA.B $04                            ;878108;
    LDA.B #$30                           ;87810A;
    STA.B $05                            ;87810C;

CODE_87810E:
    JSL.L CODE_848EEA                    ;87810E;
    JSL.L CODE_8280B4                    ;878112;
    PLD                                  ;878116;
    RTL                                  ;878117;

CODE_878118:
    LDA.W $00AC                          ;878118;
    BIT.B #$08                           ;87811B;
    BEQ CODE_878123                      ;87811D;
    DEC.B $07                            ;87811F;
    BRA CODE_878129                      ;878121;

CODE_878123:
    BIT.B #$04                           ;878123;
    BEQ CODE_878129                      ;878125;
    INC.B $07                            ;878127;

CODE_878129:
    LDA.W $00AC                          ;878129;
    BIT.B #$02                           ;87812C;
    BEQ CODE_878134                      ;87812E;
    DEC.B $04                            ;878130;
    BRA CODE_87813A                      ;878132;

CODE_878134:
    BIT.B #$01                           ;878134;
    BEQ CODE_87813A                      ;878136;
    INC.B $04                            ;878138;

CODE_87813A:
    RTL                                  ;87813A;

CODE_87813B:
    PHP                                  ;87813B;
    PHD                                  ;87813C;
    SEP #$30                             ;87813D;
    PEA.W $1628                          ;87813F;
    PLD                                  ;878142;
    LDY.B #$0B                           ;878143;

CODE_878145:
    SEP #$30                             ;878145;
    PHY                                  ;878147;
    JSR.W CODE_87815C                    ;878148;
    SEP #$30                             ;87814B;
    PLY                                  ;87814D;
    REP #$20                             ;87814E;
    TDC                                  ;878150;
    CLC                                  ;878151;
    ADC.W #$0030                         ;878152;
    TCD                                  ;878155;
    DEY                                  ;878156;
    BPL CODE_878145                      ;878157;
    PLD                                  ;878159;
    PLP                                  ;87815A;
    RTL                                  ;87815B;

CODE_87815C:
    LDX.B $01                            ;87815C;
    JSR.W (PTR16_878166,X)               ;87815E;
    JSL.L CODE_8280B4                    ;878161;
    RTS                                  ;878165;

PTR16_878166:
    dw CODE_878170                       ;878166;
    dw CODE_8781C1                       ;878168;
    dw CODE_8781E1                       ;87816A;
    dw CODE_878204                       ;87816C;
    dw CODE_878218                       ;87816E;

CODE_878170:
    STY.B $0B                            ;878170;
    LDA.B #$02                           ;878172;
    STA.B $01                            ;878174;
    LDA.B #$30                           ;878176;
    STA.B $18                            ;878178;
    JSL.L CODE_849086                    ;87817A;
    AND.B #$40                           ;87817E;
    ORA.B #$38                           ;878180;
    STA.B $11                            ;878182;
    LDA.B #$4D                           ;878184;
    STA.B $16                            ;878186;
    LDA.B #$00                           ;878188;
    JSL.L CODE_848F07                    ;87818A;
    LDA.B $0B                            ;87818E;
    LDY.B #$00                           ;878190;

CODE_878192:
    SEC                                  ;878192;
    SBC.B #$04                           ;878193;
    BCC CODE_87819A                      ;878195;
    INY                                  ;878197;
    BRA CODE_878192                      ;878198;

CODE_87819A:
    CLC                                  ;87819A;
    ADC.B #$04                           ;87819B;
    ASL A                                ;87819D;
    ASL A                                ;87819E;
    ASL A                                ;87819F;
    ASL A                                ;8781A0;
    STA.B $1C                            ;8781A1;
    ASL A                                ;8781A3;
    CLC                                  ;8781A4;
    ADC.B $1C                            ;8781A5;
    CLC                                  ;8781A7;
    ADC.B #$3C                           ;8781A8;
    STA.B $05                            ;8781AA;
    STZ.B $06                            ;8781AC;
    TYA                                  ;8781AE;
    ASL A                                ;8781AF;
    ASL A                                ;8781B0;
    ASL A                                ;8781B1;
    ASL A                                ;8781B2;
    STA.B $1C                            ;8781B3;
    ASL A                                ;8781B5;
    CLC                                  ;8781B6;
    ADC.B $1C                            ;8781B7;
    CLC                                  ;8781B9;
    ADC.B #$37                           ;8781BA;
    STA.B $08                            ;8781BC;
    STZ.B $09                            ;8781BE;
    RTS                                  ;8781C0;

CODE_8781C1:
    JSR.W CODE_87822B                    ;8781C1;
    BEQ CODE_8781D6                      ;8781C4;
    JSL.L CODE_849086                    ;8781C6;
    CMP.B #$3A                           ;8781CA;
    BNE CODE_8781E0                      ;8781CC;
    JSL.L CODE_849086                    ;8781CE;
    AND.B #$03                           ;8781D2;
    BNE CODE_8781E0                      ;8781D4;

CODE_8781D6:
    LDA.B #$01                           ;8781D6;
    JSL.L CODE_848F07                    ;8781D8;
    LDA.B #$04                           ;8781DC;
    STA.B $01                            ;8781DE;

CODE_8781E0:
    RTS                                  ;8781E0;

CODE_8781E1:
    JSL.L CODE_848EEA                    ;8781E1;
    LDA.B $0F                            ;8781E5;
    BPL CODE_878203                      ;8781E7;
    JSR.W CODE_87822B                    ;8781E9;
    BNE CODE_8781F9                      ;8781EC;
    LDA.B #$02                           ;8781EE;
    JSL.L CODE_848F07                    ;8781F0;
    LDA.B #$06                           ;8781F4;
    STA.B $01                            ;8781F6;
    RTS                                  ;8781F8;

CODE_8781F9:
    LDA.B #$03                           ;8781F9;
    JSL.L CODE_848F07                    ;8781FB;
    LDA.B #$08                           ;8781FF;
    STA.B $01                            ;878201;

CODE_878203:
    RTS                                  ;878203;

CODE_878204:
    JSL.L CODE_848EEA                    ;878204;
    JSR.W CODE_87822B                    ;878208;
    BEQ CODE_878217                      ;87820B;
    LDA.B #$03                           ;87820D;
    JSL.L CODE_848F07                    ;87820F;
    LDA.B #$08                           ;878213;
    STA.B $01                            ;878215;

CODE_878217:
    RTS                                  ;878217;

CODE_878218:
    JSL.L CODE_848EEA                    ;878218;
    LDA.B $0F                            ;87821C;
    BPL CODE_87822A                      ;87821E;
    LDA.B #$00                           ;878220;
    JSL.L CODE_848F07                    ;878222;
    LDA.B #$02                           ;878226;
    STA.B $01                            ;878228;

CODE_87822A:
    RTS                                  ;87822A;

CODE_87822B:
    LDA.W $1E4F                          ;87822B;
    ASL A                                ;87822E;
    ASL A                                ;87822F;
    ADC.W $1E4C                          ;878230;
    CMP.B $0B                            ;878233;
    RTS                                  ;878235;

CODE_878236:
    LDX.B $01                            ;878236;
    JMP.W (PTR16_87823B,X)               ;878238;

PTR16_87823B:
    dw CODE_878241                       ;87823B;
    dw CODE_8782A9                       ;87823D;
    dw CODE_8782B8                       ;87823F;

CODE_878241:
    STZ.B $12                            ;878241;
    LDA.B #$02                           ;878243;
    STA.B $18                            ;878245;
    LDA.B #$44                           ;878247;
    STA.B $16                            ;878249;
    LDX.B $0B                            ;87824B;
    LDA.W DATA8_86BDD7,X                 ;87824D;
    JSL.L CODE_848F07                    ;878250;
    INC.W $1F31                          ;878254;
    LDA.B $0B                            ;878257;
    BNE CODE_878276                      ;878259;
    LDA.B #$02                           ;87825B;
    STA.B $01                            ;87825D;
    REP #$20                             ;87825F;
    LDA.W #$00A0                         ;878261;
    STA.B $1C                            ;878264;
    STZ.B $1A                            ;878266;
    SEP #$20                             ;878268;
    LDA.B #$10                           ;87826A;
    STA.B $1E                            ;87826C;
    LDA.B #$1E                           ;87826E;
    STA.B $1F                            ;878270;
    JML.L CODE_8280B4                    ;878272;

CODE_878276:
    LDA.B #$04                           ;878276;
    STA.B $01                            ;878278;
    JSL.L CODE_849086                    ;87827A;
    AND.B #$0E                           ;87827E;
    TAX                                  ;878280;
    LDA.B $11                            ;878281;
    ASL A                                ;878283;
    ASL A                                ;878284;
    REP #$20                             ;878285;
    LDA.W DATA8_86BDDA,X                 ;878287;
    BCS CODE_878290                      ;87828A;
    EOR.W #$FFFF                         ;87828C;
    INC A                                ;87828F;

CODE_878290:
    STA.B $1A                            ;878290;
    JSL.L CODE_849086                    ;878292;
    AND.W #$000E                         ;878296;
    TAX                                  ;878299;
    LDA.W DATA8_86BDEA,X                 ;87829A;
    STA.B $1C                            ;87829D;
    SEP #$20                             ;87829F;
    LDA.B #$30                           ;8782A1;
    STA.B $1E                            ;8782A3;
    JML.L CODE_8280B4                    ;8782A5;

CODE_8782A9:
    JSL.L CODE_848EEA                    ;8782A9;
    DEC.B $1F                            ;8782AD;
    BNE CODE_8782B8                      ;8782AF;
    DEC.W $1F31                          ;8782B1;
    JML.L CODE_828398                    ;8782B4;

CODE_8782B8:
    JSL.L CODE_8281E8                    ;8782B8;
    JSL.L CODE_8280B4                    ;8782BC;
    LDA.B $0E                            ;8782C0;
    BNE CODE_8782CB                      ;8782C2;
    DEC.W $1F31                          ;8782C4;
    JML.L CODE_828398                    ;8782C7;

CODE_8782CB:
    RTL                                  ;8782CB;

CODE_8782CC:
    LDY.B #$0B                           ;8782CC;
    LDA.B ($0C),Y                        ;8782CE;
    STA.B $0B                            ;8782D0;
    LDX.B $01                            ;8782D2;
    JMP.W (PTR16_8782D7,X)               ;8782D4;

PTR16_8782D7:
    dw CODE_8782DB                       ;8782D7;
    dw CODE_8782F3                       ;8782D9;

CODE_8782DB:
    LDA.B #$02                           ;8782DB;
    STA.B $01                            ;8782DD;
    INC.W $1F31                          ;8782DF;
    LDA.B #$0C                           ;8782E2;
    STA.B $18                            ;8782E4;
    STZ.B $12                            ;8782E6;
    LDA.B #$97                           ;8782E8;
    STA.B $16                            ;8782EA;
    LDA.B #$01                           ;8782EC;
    JSL.L CODE_848F07                    ;8782EE;
    RTL                                  ;8782F2;

CODE_8782F3:
    REP #$10                             ;8782F3;
    LDX.B $0C                            ;8782F5;
    LDA.W $0000,X                        ;8782F7;
    BEQ CODE_878321                      ;8782FA;
    LDA.B $17                            ;8782FC;
    LSR A                                ;8782FE;
    REP #$20                             ;8782FF;
    BCC CODE_87830F                      ;878301;
    LDA.W $0028,X                        ;878303;
    STA.B $05                            ;878306;
    LDA.W $003A,X                        ;878308;
    STA.B $08                            ;87830B;
    BRA CODE_878319                      ;87830D;

CODE_87830F:
    LDA.W $002D,X                        ;87830F;
    STA.B $05                            ;878312;
    LDA.W $003E,X                        ;878314;
    STA.B $08                            ;878317;

CODE_878319:
    JSL.L CODE_848EEA                    ;878319;
    JML.L CODE_8280B4                    ;87831D;

CODE_878321:
    DEC.W $1F31                          ;878321;
    JML.L CODE_828398                    ;878324;

CODE_878328:
    LDY.B #$27                           ;878328;
    LDA.B ($0C),Y                        ;87832A;
    AND.B #$7F                           ;87832C;
    BEQ CODE_878335                      ;87832E;
    LDX.B $01                            ;878330;
    JMP.W (PTR16_878339,X)               ;878332;

CODE_878335:
    JML.L CODE_8283A3                    ;878335;

PTR16_878339:
    dw CODE_87833F                       ;878339;
    dw CODE_8783E4                       ;87833B;
    dw CODE_8783F9                       ;87833D;

CODE_87833F:
    LDA.L $7F8220                        ;87833F;
    STA.B $18                            ;878343;
    LDA.L $7F8320                        ;878345;
    STA.B $11                            ;878349;
    LDA.B #$23                           ;87834B;
    STA.B $16                            ;87834D;
    LDA.B #$02                           ;87834F;
    STA.B $26                            ;878351;
    STA.B $27                            ;878353;
    STA.B $28                            ;878355;
    STZ.B $30                            ;878357;
    LDA.B #$02                           ;878359;
    STA.B $12                            ;87835B;
    LDA.B $0B                            ;87835D;
    BNE CODE_8783AC                      ;87835F;
    LDA.B #$08                           ;878361;
    JSL.L CODE_84A311                    ;878363;
    REP #$20                             ;878367;
    LDA.W #$C2B3                         ;878369;
    STA.B $20                            ;87836C;
    JSL.L CODE_849086                    ;87836E;
    AND.W #$00FF                         ;878372;
    CLC                                  ;878375;
    ADC.W $1E4D                          ;878376;
    STA.B $05                            ;878379;
    LDA.W $1E50                          ;87837B;
    CLC                                  ;87837E;
    ADC.W #$0008                         ;87837F;
    STA.B $08                            ;878382;
    STZ.B $1A                            ;878384;
    LDA.W #$0200                         ;878386;
    STA.B $1C                            ;878389;
    SEP #$20                             ;87838B;
    LDA.B #$40                           ;87838D;
    STA.B $1E                            ;87838F;
    LDA.B #$02                           ;878391;
    STA.B $01                            ;878393;
    JSL.L CODE_849086                    ;878395;
    AND.B #$01                           ;878399;
    CLC                                  ;87839B;
    ADC.B #$7A                           ;87839C;
    JSL.L CODE_8088A2                    ;87839E;
    LDA.B #$10                           ;8783A2;
    JSL.L CODE_848F07                    ;8783A4;
    JML.L CODE_8280B4                    ;8783A8;

CODE_8783AC:
    LDA.B $0B                            ;8783AC;
    CMP.B #$05                           ;8783AE;
    BCS CODE_8783B6                      ;8783B0;
    LDA.B #$40                           ;8783B2;
    TSB.B $11                            ;8783B4;

CODE_8783B6:
    LDX.B $0B                            ;8783B6;
    LDA.W DATA8_86C2BA,X                 ;8783B8;
    JSL.L CODE_848F07                    ;8783BB;
    LDA.B $0B                            ;8783BF;
    ASL A                                ;8783C1;
    ADC.B #$06                           ;8783C2;
    ASL A                                ;8783C4;
    ASL A                                ;8783C5;
    TAX                                  ;8783C6;
    REP #$20                             ;8783C7;
    LDA.W DATA8_86EE37,X                 ;8783C9;
    ASL A                                ;8783CC;
    STA.B $1A                            ;8783CD;
    LDA.W DATA8_86EE39,X                 ;8783CF;
    ASL A                                ;8783D2;
    STA.B $1C                            ;8783D3;
    LDA.W #$C2B7                         ;8783D5;
    STA.B $20                            ;8783D8;
    SEP #$20                             ;8783DA;
    LDA.B #$04                           ;8783DC;
    STA.B $01                            ;8783DE;
    JML.L CODE_8280B4                    ;8783E0;

CODE_8783E4:
    JSL.L CODE_8281E8                    ;8783E4;

CODE_8783E8:
    JSL.L CODE_849B03                    ;8783E8;
    JSL.L CODE_8280B4                    ;8783EC;
    LDA.B $0E                            ;8783F0;
    BEQ CODE_8783F5                      ;8783F2;
    RTL                                  ;8783F4;

CODE_8783F5:
    JML.L CODE_8283A3                    ;8783F5;

CODE_8783F9:
    JSL.L CODE_82820A                    ;8783F9;
    BRA CODE_8783E8                      ;8783FD;

CODE_8783FF:
    LDX.B $01                            ;8783FF;
    JMP.W (PTR16_878404,X)               ;878401;

PTR16_878404:
    dw CODE_87840C                       ;878404;
    dw CODE_87843F                       ;878406;
    dw CODE_878463                       ;878408;
    dw CODE_8784C8                       ;87840A;

CODE_87840C:
    LDA.B #$02                           ;87840C;
    STA.B $01                            ;87840E;
    STZ.B $28                            ;878410;
    LDA.B #$02                           ;878412;
    STA.B $37                            ;878414;
    LDA.L $7F826B                        ;878416;
    STA.B $18                            ;87841A;
    LDA.L $7F836B                        ;87841C;
    ORA.B #$20                           ;878420;
    TSB.B $11                            ;878422;
    STZ.B $12                            ;878424;
    LDA.B #$77                           ;878426;
    STA.B $16                            ;878428;
    LDA.B #$00                           ;87842A;
    JSL.L CODE_848F07                    ;87842C;
    REP #$20                             ;878430;
    LDA.W $1E50                          ;878432;
    CLC                                  ;878435;
    ADC.W #$0050                         ;878436;
    STA.B $08                            ;878439;
    JML.L CODE_8280B4                    ;87843B;

CODE_87843F:
    JSL.L CODE_848EEA                    ;87843F;
    LDA.B $0F                            ;878443;
    BPL CODE_878451                      ;878445;
    LDA.B #$04                           ;878447;
    STA.B $01                            ;878449;
    LDA.B #$01                           ;87844B;
    JSL.L CODE_848F07                    ;87844D;

CODE_878451:
    DEC.B $37                            ;878451;
    BNE CODE_87845F                      ;878453;
    LDA.B #$1E                           ;878455;
    STA.B $37                            ;878457;
    LDA.B #$31                           ;878459;
    JSL.L CODE_8088A2                    ;87845B;

CODE_87845F:
    JML.L CODE_8280B4                    ;87845F;

CODE_878463:
    JSL.L CODE_848EEA                    ;878463;
    DEC.B $37                            ;878467;
    BNE CODE_878475                      ;878469;
    LDA.B #$1E                           ;87846B;
    STA.B $37                            ;87846D;
    LDA.B #$31                           ;87846F;
    JSL.L CODE_8088A2                    ;878471;

CODE_878475:
    REP #$20                             ;878475;
    LDA.B $05                            ;878477;
    CMP.W $0BAD                          ;878479;
    BEQ CODE_8784A0                      ;87847C;
    BPL CODE_878491                      ;87847E;
    LDA.W $0BAC                          ;878480;
    SEC                                  ;878483;
    SBC.W #$0180                         ;878484;
    STA.W $0BAC                          ;878487;
    BCS CODE_8784A0                      ;87848A;
    DEC.W $0BAE                          ;87848C;
    BRA CODE_8784A0                      ;87848F;

CODE_878491:
    LDA.W $0BAC                          ;878491;
    CLC                                  ;878494;
    ADC.W #$0180                         ;878495;
    STA.W $0BAC                          ;878498;
    BCC CODE_8784A0                      ;87849B;
    INC.W $0BAE                          ;87849D;

CODE_8784A0:
    SEP #$20                             ;8784A0;
    REP #$10                             ;8784A2;
    LDX.B $0C                            ;8784A4;
    LDA.W $0027,X                        ;8784A6;
    AND.B #$7F                           ;8784A9;
    BEQ CODE_8784B8                      ;8784AB;
    LDA.W $0039,X                        ;8784AD;
    BEQ CODE_8784B8                      ;8784B0;
    SEP #$10                             ;8784B2;
    JML.L CODE_8280B4                    ;8784B4;

CODE_8784B8:
    SEP #$10                             ;8784B8;
    LDA.B #$06                           ;8784BA;
    STA.B $01                            ;8784BC;
    LDA.B #$02                           ;8784BE;
    JSL.L CODE_848F07                    ;8784C0;
    JML.L CODE_8280B4                    ;8784C4;

CODE_8784C8:
    JSL.L CODE_848EEA                    ;8784C8;
    LDA.B $0F                            ;8784CC;
    BPL CODE_8784D4                      ;8784CE;
    JML.L CODE_8283A3                    ;8784D0;

CODE_8784D4:
    JML.L CODE_8280B4                    ;8784D4;

CODE_8784D8:
    LDX.B $01                            ;8784D8;
    JMP.W (PTR16_8784DD,X)               ;8784DA;

PTR16_8784DD:
    dw CODE_8784E1                       ;8784DD;
    dw CODE_878550                       ;8784DF;

CODE_8784E1:
    LDA.B #$02                           ;8784E1;
    STA.B $01                            ;8784E3;
    LDA.B #$03                           ;8784E5;
    STA.B $28                            ;8784E7;
    LDA.B #$76                           ;8784E9;
    STA.B $16                            ;8784EB;
    LDA.L $7F826A                        ;8784ED;
    STA.B $18                            ;8784F1;
    LDA.L $7F836A                        ;8784F3;
    ORA.B $11                            ;8784F7;
    STA.B $11                            ;8784F9;
    ASL A                                ;8784FB;
    ASL A                                ;8784FC;
    LDA.B #$08                           ;8784FD;
    BCS CODE_878503                      ;8784FF;
    LDA.B #$18                           ;878501;

CODE_878503:
    CLC                                  ;878503;
    ADC.B $0B                            ;878504;
    DEC A                                ;878506;
    STA.B $37                            ;878507;
    ASL A                                ;878509;
    ASL A                                ;87850A;
    TAX                                  ;87850B;
    REP #$20                             ;87850C;
    LDA.W DATA8_86EE37,X                 ;87850E;
    STA.B $1A                            ;878511;
    BPL CODE_878519                      ;878513;
    EOR.W #$FFFF                         ;878515;
    INC A                                ;878518;

CODE_878519:
    ASL A                                ;878519;
    ASL A                                ;87851A;
    ASL A                                ;87851B;
    XBA                                  ;87851C;
    TAY                                  ;87851D;
    STY.B $1F                            ;87851E;
    LDA.W DATA8_86EE39,X                 ;878520;
    BNE CODE_878528                      ;878523;
    LDA.W #$0040                         ;878525;

CODE_878528:
    STA.B $1C                            ;878528;
    BPL CODE_878530                      ;87852A;
    EOR.W #$FFFF                         ;87852C;
    INC A                                ;87852F;

CODE_878530:
    ASL A                                ;878530;
    ASL A                                ;878531;
    ASL A                                ;878532;
    XBA                                  ;878533;
    TAY                                  ;878534;
    STY.B $1E                            ;878535;
    LDA.W #$C35C                         ;878537;
    STA.B $20                            ;87853A;
    SEP #$20                             ;87853C;
    LDA.B #$7F                           ;87853E;
    STA.B $27                            ;878540;
    LDA.B #$02                           ;878542;
    STA.B $26                            ;878544;
    LDA.B #$10                           ;878546;
    JSL.L CODE_848F07                    ;878548;
    JML.L CODE_8280B4                    ;87854C;

CODE_878550:
    LDA.B $1D                            ;878550;
    BPL CODE_878564                      ;878552;
    LDA.B $1B                            ;878554;
    BPL CODE_87855E                      ;878556;
    JSL.L CODE_828174                    ;878558;
    BRA CODE_878572                      ;87855C;

CODE_87855E:
    JSL.L CODE_828195                    ;87855E;
    BRA CODE_878572                      ;878562;

CODE_878564:
    LDA.B $1B                            ;878564;
    BPL CODE_87856E                      ;878566;
    JSL.L CODE_8281B2                    ;878568;
    BRA CODE_878572                      ;87856C;

CODE_87856E:
    JSL.L CODE_8281CF                    ;87856E;

CODE_878572:
    JSL.L CODE_849B03                    ;878572;
    BEQ CODE_878580                      ;878576;

CODE_878578:
    JSL.L CODE_84A4AB                    ;878578;

CODE_87857C:
    JML.L CODE_8283A3                    ;87857C;

CODE_878580:
    JSL.L CODE_849B43                    ;878580;
    BNE CODE_878578                      ;878584;
    JSL.L CODE_8280B4                    ;878586;
    LDA.B $0E                            ;87858A;
    BEQ CODE_87857C                      ;87858C;
    RTL                                  ;87858E;

CODE_87858F:
    LDX.B $01                            ;87858F;
    JSR.W (PTR16_8785B9,X)               ;878591;
    LDA.B $03                            ;878594;
    BNE CODE_8785B4                      ;878596;
    LDA.B $37                            ;878598;
    BNE CODE_8785AC                      ;87859A;
    LDA.W $0BCF                          ;87859C;
    STA.B $02                            ;87859F;
    JSL.L CODE_849B03                    ;8785A1;
    LDA.W $0BCF                          ;8785A5;
    CMP.B $02                            ;8785A8;
    BNE CODE_8785B4                      ;8785AA;

CODE_8785AC:
    JSL.L CODE_8280B4                    ;8785AC;
    LDA.B $0E                            ;8785B0;
    BNE CODE_8785B8                      ;8785B2;

CODE_8785B4:
    JSL.L CODE_8283A3                    ;8785B4;

CODE_8785B8:
    RTL                                  ;8785B8;

PTR16_8785B9:
    dw CODE_8785BF                       ;8785B9;
    dw CODE_8785F1                       ;8785BB;
    dw CODE_878613                       ;8785BD;

CODE_8785BF:
    LDA.B #$02                           ;8785BF;
    STA.B $01                            ;8785C1;
    STA.B $27                            ;8785C3;
    LDA.B #$01                           ;8785C5;
    STA.B $28                            ;8785C7;
    LDA.B #$02                           ;8785C9;
    STA.B $26                            ;8785CB;
    LDA.B #$06                           ;8785CD;
    STA.B $12                            ;8785CF;
    STZ.B $03                            ;8785D1;
    STZ.B $37                            ;8785D3;
    STZ.B $38                            ;8785D5;
    LDA.B #$01                           ;8785D7;
    STA.B $28                            ;8785D9;
    REP #$20                             ;8785DB;
    LDA.W #$C360                         ;8785DD;
    STA.B $20                            ;8785E0;
    SEP #$20                             ;8785E2;
    STZ.B $29                            ;8785E4;
    LDA.B #$08                           ;8785E6;
    STA.B $2A                            ;8785E8;
    LDA.B #$02                           ;8785EA;
    JSL.L CODE_848F07                    ;8785EC;
    RTS                                  ;8785F0;

CODE_8785F1:
    JSL.L CODE_8490A0                    ;8785F1;
    CMP.B #$00                           ;8785F5;
    BEQ CODE_87860A                      ;8785F7;
    LDA.B #$03                           ;8785F9;
    JSL.L CODE_848F07                    ;8785FB;
    LDA.B #$01                           ;8785FF;
    STA.B $37                            ;878601;
    LDA.B #$04                           ;878603;
    STA.B $01                            ;878605;
    JMP.W CODE_878612                    ;878607;

CODE_87860A:
    JSL.L CODE_8281E8                    ;87860A;
    JSL.L CODE_848EEA                    ;87860E;

CODE_878612:
    RTS                                  ;878612;

CODE_878613:
    LDA.B $38                            ;878613;
    BNE CODE_878627                      ;878615;
    LDA.B $0F                            ;878617;
    CMP.B #$01                           ;878619;
    BNE CODE_878627                      ;87861B;
    LDA.B #$01                           ;87861D;
    STA.B $38                            ;87861F;
    LDA.B #$56                           ;878621;
    JSL.L CODE_8088A2                    ;878623;

CODE_878627:
    LDA.B $0F                            ;878627;
    BMI CODE_878632                      ;878629;
    JSL.L CODE_848EEA                    ;87862B;
    JMP.W CODE_878636                    ;87862F;

CODE_878632:
    LDA.B #$01                           ;878632;
    STA.B $03                            ;878634;

CODE_878636:
    RTS                                  ;878636;

CODE_878637:
    LDY.B #$27                           ;878637;
    LDA.B ($0C),Y                        ;878639;
    AND.B #$7F                           ;87863B;
    BNE CODE_878643                      ;87863D;
    JML.L CODE_8283A3                    ;87863F;

CODE_878643:
    LDX.B $01                            ;878643;
    JMP.W (PTR16_878648,X)               ;878645;

PTR16_878648:
    dw CODE_87864E                       ;878648;
    dw CODE_8786AE                       ;87864A;
    dw CODE_8786CA                       ;87864C;

CODE_87864E:
    LDA.B #$02                           ;87864E;
    STA.B $01                            ;878650;
    STA.B $28                            ;878652;
    LDA.B #$06                           ;878654;
    STA.B $16                            ;878656;
    LDA.L $7F8201                        ;878658;
    STA.B $18                            ;87865C;
    LDA.L $7F8301                        ;87865E;
    ORA.B $11                            ;878662;
    STA.B $11                            ;878664;
    LDA.B #$02                           ;878666;
    STA.B $26                            ;878668;
    STA.B $27                            ;87866A;
    REP #$20                             ;87866C;
    LDA.W #$C365                         ;87866E;
    STA.B $20                            ;878671;
    LDA.B $05                            ;878673;
    SEC                                  ;878675;
    SBC.W $0BAD                          ;878676;
    BCS CODE_87867F                      ;878679;
    EOR.W #$FFFF                         ;87867B;
    INC A                                ;87867E;

CODE_87867F:
    CMP.W #$0050                         ;87867F;
    LDA.W #$0440                         ;878682;
    BCS CODE_87868A                      ;878685;
    LDA.W #$0260                         ;878687;

CODE_87868A:
    STA.B $1A                            ;87868A;
    LDA.B $10                            ;87868C;
    ASL A                                ;87868E;
    ASL A                                ;87868F;
    BCS CODE_87869A                      ;878690;
    LDA.B $1A                            ;878692;
    EOR.W #$FFFF                         ;878694;
    INC A                                ;878697;
    STA.B $1A                            ;878698;

CODE_87869A:
    STZ.B $1C                            ;87869A;
    SEP #$20                             ;87869C;
    LDA.B #$10                           ;87869E;
    STA.B $1E                            ;8786A0;
    LDA.B #$17                           ;8786A2;
    JSL.L CODE_848F07                    ;8786A4;
    LDA.B #$5B                           ;8786A8;
    JSL.L CODE_8088A2                    ;8786AA;

CODE_8786AE:
    JSL.L CODE_8281E8                    ;8786AE;
    JSL.L CODE_848EEA                    ;8786B2;
    JSL.L CODE_8491BE                    ;8786B6;
    LDA.B $2B                            ;8786BA;
    BEQ CODE_8786DA                      ;8786BC;
    LDA.B #$04                           ;8786BE;
    STA.B $01                            ;8786C0;
    LDA.B #$18                           ;8786C2;
    JSL.L CODE_848F07                    ;8786C4;
    BRA CODE_8786DA                      ;8786C8;

CODE_8786CA:
    JSL.L CODE_848EEA                    ;8786CA;
    JSL.L CODE_8491BE                    ;8786CE;
    LDA.B $0F                            ;8786D2;
    BPL CODE_8786DA                      ;8786D4;
    JML.L CODE_8283A3                    ;8786D6;

CODE_8786DA:
    JSL.L CODE_849B03                    ;8786DA;
    JML.L CODE_8280B4                    ;8786DE;

CODE_8786E2:
    LDY.B #$27                           ;8786E2;
    LDA.B ($0C),Y                        ;8786E4;
    AND.B #$7F                           ;8786E6;
    BNE CODE_8786EE                      ;8786E8;
    JML.L CODE_8283A3                    ;8786EA;

CODE_8786EE:
    LDX.B $01                            ;8786EE;
    JMP.W (PTR16_8786F3,X)               ;8786F0;

PTR16_8786F3:
    dw CODE_878701                       ;8786F3;
    dw CODE_87875B                       ;8786F5;
    dw CODE_87877F                       ;8786F7;
    dw CODE_8787D3                       ;8786F9;
    dw CODE_878817                       ;8786FB;
    dw CODE_87885A                       ;8786FD;
    dw CODE_878881                       ;8786FF;

CODE_878701:
    LDA.B #$02                           ;878701;
    STA.B $01                            ;878703;
    STA.B $12                            ;878705;
    STA.B $28                            ;878707;
    LDA.B #$02                           ;878709;
    STA.B $26                            ;87870B;
    STA.B $27                            ;87870D;
    LDA.L $7F8201                        ;87870F;
    STA.B $18                            ;878713;
    LDA.L $7F8301                        ;878715;
    ORA.B $11                            ;878719;
    STA.B $11                            ;87871B;
    ASL A                                ;87871D;
    ASL A                                ;87871E;
    REP #$20                             ;87871F;
    LDA.W #$0280                         ;878721;
    BCS CODE_878729                      ;878724;
    LDA.W #$FD00                         ;878726;

CODE_878729:
    STA.W $0000                          ;878729;
    JSL.L CODE_849086                    ;87872C;
    AND.W #$007F                         ;878730;
    CLC                                  ;878733;
    ADC.W $0000                          ;878734;
    STA.B $1A                            ;878737;
    LDA.W #$0200                         ;878739;
    STA.B $1C                            ;87873C;
    LDA.W #$C36F                         ;87873E;
    STA.B $20                            ;878741;
    SEP #$20                             ;878743;
    LDA.B #$30                           ;878745;
    STA.B $1E                            ;878747;
    LDA.B #$06                           ;878749;
    STA.B $16                            ;87874B;
    LDA.B #$0E                           ;87874D;
    JSL.L CODE_848F07                    ;87874F;
    LDA.B #$FF                           ;878753;
    STA.B $2F                            ;878755;
    JML.L CODE_8280B4                    ;878757;

CODE_87875B:
    JSL.L CODE_8281E8                    ;87875B;
    JSL.L CODE_8491BE                    ;87875F;
    LDA.B $2B                            ;878763;
    AND.B #$04                           ;878765;
    BEQ CODE_87877B                      ;878767;
    LDA.B #$56                           ;878769;
    JSL.L CODE_8088A2                    ;87876B;
    LDA.B #$04                           ;87876F;
    STA.B $01                            ;878771;
    STZ.B $2F                            ;878773;
    LDA.B #$0F                           ;878775;
    JSL.L CODE_848F07                    ;878777;

CODE_87877B:
    JML.L CODE_8280B4                    ;87877B;

CODE_87877F:
    JSL.L CODE_848EEA                    ;87877F;
    JSL.L CODE_8491BE                    ;878783;
    JSR.W CODE_878886                    ;878787;
    JSR.W CODE_878881                    ;87878A;
    BEQ CODE_878793                      ;87878D;
    JML.L CODE_8283A3                    ;87878F;

CODE_878793:
    REP #$10                             ;878793;
    LDX.W #$1428                         ;878795;

CODE_878798:
    LDA.W $0000,X                        ;878798;
    BEQ CODE_8787C0                      ;87879B;
    LDA.W $000A,X                        ;87879D;
    CMP.B #$20                           ;8787A0;
    BNE CODE_8787C0                      ;8787A2;
    JSL.L CODE_849C0E                    ;8787A4;
    BCC CODE_8787C0                      ;8787A8;
    SEP #$10                             ;8787AA;
    LDA.B #$06                           ;8787AC;
    STA.B $01                            ;8787AE;
    LDA.B #$11                           ;8787B0;
    JSL.L CODE_848F07                    ;8787B2;
    LDA.B #$5C                           ;8787B6;
    JSL.L CODE_8088A2                    ;8787B8;
    JML.L CODE_8280B4                    ;8787BC;

CODE_8787C0:
    REP #$20                             ;8787C0;
    TXA                                  ;8787C2;
    CLC                                  ;8787C3;
    ADC.W #$0040                         ;8787C4;
    TAX                                  ;8787C7;
    SEP #$20                             ;8787C8;
    CPX.W #$1628                         ;8787CA;
    BCC CODE_878798                      ;8787CD;
    JML.L CODE_8280B4                    ;8787CF;

CODE_8787D3:
    JSL.L CODE_8491BE                    ;8787D3;
    JSL.L CODE_848EEA                    ;8787D7;
    JSR.W CODE_878881                    ;8787DB;
    BEQ CODE_8787E4                      ;8787DE;
    JML.L CODE_8283A3                    ;8787E0;

CODE_8787E4:
    LDA.B $0F                            ;8787E4;
    BPL CODE_878813                      ;8787E6;
    LDA.B #$08                           ;8787E8;
    STA.B $01                            ;8787EA;
    LDA.L $7F8205                        ;8787EC;
    STA.B $18                            ;8787F0;
    LDA.L $7F8305                        ;8787F2;
    STA.B $11                            ;8787F6;
    LDA.B #$0C                           ;8787F8;
    STA.B $16                            ;8787FA;
    LDA.B #$02                           ;8787FC;
    JSL.L CODE_848F07                    ;8787FE;
    REP #$20                             ;878802;
    LDA.B $08                            ;878804;
    SEC                                  ;878806;
    SBC.W #$0010                         ;878807;
    STA.B $08                            ;87880A;
    LDA.W #$C383                         ;87880C;
    STA.B $20                            ;87880F;
    SEP #$20                             ;878811;

CODE_878813:
    JML.L CODE_8280B4                    ;878813;

CODE_878817:
    JSL.L CODE_848EEA                    ;878817;
    JSL.L CODE_8491BE                    ;87881B;
    JSR.W CODE_878881                    ;87881F;
    BEQ CODE_878828                      ;878822;
    JML.L CODE_8283A3                    ;878824;

CODE_878828:
    LDA.B $0F                            ;878828;
    REP #$20                             ;87882A;
    AND.W #$000F                         ;87882C;
    CLC                                  ;87882F;
    ADC.W #$C38D                         ;878830;
    STA.B $20                            ;878833;
    SEP #$20                             ;878835;
    JSL.L CODE_849B03                    ;878837;
    REP #$20                             ;87883B;
    LDA.W #$C383                         ;87883D;
    STA.B $20                            ;878840;
    SEP #$20                             ;878842;
    LDA.B $0F                            ;878844;
    BPL CODE_878856                      ;878846;
    LDA.B #$0A                           ;878848;
    STA.B $01                            ;87884A;
    LDA.B #$00                           ;87884C;
    JSL.L CODE_848F07                    ;87884E;
    LDA.B #$B4                           ;878852;
    STA.B $37                            ;878854;

CODE_878856:
    JML.L CODE_8280B4                    ;878856;

CODE_87885A:
    JSL.L CODE_848EEA                    ;87885A;
    JSL.L CODE_8491BE                    ;87885E;
    JSR.W CODE_878881                    ;878862;
    BNE CODE_87886B                      ;878865;
    DEC.B $37                            ;878867;
    BNE CODE_87886F                      ;878869;

CODE_87886B:
    JML.L CODE_8283A3                    ;87886B;

CODE_87886F:
    JSL.L CODE_849B03                    ;87886F;
    LDA.B $37                            ;878873;
    CMP.B #$1E                           ;878875;
    BCS CODE_87887D                      ;878877;
    LSR A                                ;878879;
    BCS CODE_87887D                      ;87887A;
    RTL                                  ;87887C;

CODE_87887D:
    JML.L CODE_8280B4                    ;87887D;

CODE_878881:
    LDA.B $2B                            ;878881;
    AND.B #$03                           ;878883;
    RTS                                  ;878885;

CODE_878886:
    REP #$10                             ;878886;
    LDX.W #$0BA8                         ;878888;
    JSL.L CODE_849C0E                    ;87888B;
    BCC CODE_8788B2                      ;87888F;
    REP #$20                             ;878891;
    LDX.W #$0000                         ;878893;
    LDA.W $0BCA                          ;878896;
    CMP.W $0BAD                          ;878899;
    BCS CODE_8788A1                      ;87889C;
    LDX.W #$0001                         ;87889E;

CODE_8788A1:
    STX.W $0000                          ;8788A1;
    CLC                                  ;8788A4;
    ADC.W $0BAD                          ;8788A5;
    LSR A                                ;8788A8;
    BCC CODE_8788AF                      ;8788A9;
    CLC                                  ;8788AB;
    ADC.W $0000                          ;8788AC;

CODE_8788AF:
    STA.W $0BAD                          ;8788AF;

CODE_8788B2:
    SEP #$30                             ;8788B2;
    RTS                                  ;8788B4;

CODE_8788B5:
    LDX.B $01                            ;8788B5;
    JSR.W (PTR16_8788BB,X)               ;8788B7;
    RTL                                  ;8788BA;

PTR16_8788BB:
    dw CODE_8788C1                       ;8788BB;
    dw CODE_8788E0                       ;8788BD;
    dw CODE_878931                       ;8788BF;

CODE_8788C1:
    LDA.B #$02                           ;8788C1;
    STA.B $01                            ;8788C3;
    STA.B $27                            ;8788C5;
    LDA.B #$02                           ;8788C7;
    STA.B $26                            ;8788C9;
    INC.B $28                            ;8788CB;
    LDA.B #$02                           ;8788CD;
    STA.B $12                            ;8788CF;
    JSL.L CODE_8280B4                    ;8788D1;
    LDA.B #$40                           ;8788D5;
    STA.B $39                            ;8788D7;
    LDA.B $0B                            ;8788D9;
    JSL.L CODE_848F07                    ;8788DB;
    RTS                                  ;8788DF;

CODE_8788E0:
    LDA.B $0F                            ;8788E0;
    BMI CODE_8788EB                      ;8788E2;
    JSL.L CODE_848EEA                    ;8788E4;
    JMP.W CODE_87892C                    ;8788E8;

CODE_8788EB:
    LDA.B #$04                           ;8788EB;
    JSL.L CODE_848F07                    ;8788ED;
    LDA.B $11                            ;8788F1;
    AND.B #$40                           ;8788F3;
    BEQ CODE_878902                      ;8788F5;
    REP #$20                             ;8788F7;
    LDA.W #$0012                         ;8788F9;
    STA.W $0000                          ;8788FC;
    JMP.W CODE_87890A                    ;8788FF;

CODE_878902:
    REP #$20                             ;878902;
    LDA.W #$FFEE                         ;878904;
    STA.W $0000                          ;878907;

CODE_87890A:
    LDA.W #$0014                         ;87890A;
    STA.W $0002                          ;87890D;
    LDA.B $05                            ;878910;
    CLC                                  ;878912;
    ADC.W $0000                          ;878913;
    STA.B $05                            ;878916;
    LDA.B $08                            ;878918;
    SEC                                  ;87891A;
    SBC.W $0002                          ;87891B;
    STA.B $08                            ;87891E;
    SEP #$20                             ;878920;
    LDA.B #$04                           ;878922;
    STA.B $01                            ;878924;
    LDA.B #$33                           ;878926;
    JSL.L CODE_8088A2                    ;878928;

CODE_87892C:
    JSL.L CODE_8280B4                    ;87892C;
    RTS                                  ;878930;

CODE_878931:
    DEC.B $39                            ;878931;
    BNE CODE_878938                      ;878933;
    JMP.W CODE_878959                    ;878935;

CODE_878938:
    LDA.B $28                            ;878938;
    BNE CODE_878940                      ;87893A;
    JSL.L CODE_849B43                    ;87893C;

CODE_878940:
    JSL.L CODE_849B03                    ;878940;
    BNE CODE_878959                      ;878944;
    JSL.L CODE_82823E                    ;878946;
    JSL.L CODE_848EEA                    ;87894A;
    JSL.L CODE_8280B4                    ;87894E;
    LDA.B $0E                            ;878952;
    BNE CODE_878967                      ;878954;
    JMP.W CODE_878963                    ;878956;

CODE_878959:
    LDA.B $16                            ;878959;
    CMP.B #$28                           ;87895B;
    BNE CODE_878963                      ;87895D;
    JSL.L CODE_84A4AB                    ;87895F;

CODE_878963:
    JSL.L CODE_8283A3                    ;878963;

CODE_878967:
    RTS                                  ;878967;

CODE_878968:
    LDX.B $01                            ;878968;
    JSR.W (PTR16_87896E,X)               ;87896A;
    RTL                                  ;87896D;

PTR16_87896E:
    dw CODE_878972                       ;87896E;
    dw CODE_8789A2                       ;878970;

CODE_878972:
    LDA.B #$02                           ;878972;
    STA.B $01                            ;878974;
    STA.B $27                            ;878976;
    LDA.B #$02                           ;878978;
    STA.B $26                            ;87897A;
    LDA.B #$06                           ;87897C;
    STA.B $12                            ;87897E;
    LDA.B #$01                           ;878980;
    STA.B $28                            ;878982;
    REP #$20                             ;878984;
    LDA.W #$C3A2                         ;878986;
    STA.B $20                            ;878989;
    SEP #$20                             ;87898B;
    JSL.L CODE_8280B4                    ;87898D;
    LDA.B $0B                            ;878991;
    JSL.L CODE_848F07                    ;878993;
    LDA.B #$40                           ;878997;
    STA.B $38                            ;878999;
    LDA.B #$34                           ;87899B;
    JSL.L CODE_8088A2                    ;87899D;
    RTS                                  ;8789A1;

CODE_8789A2:
    DEC.B $38                            ;8789A2;
    BEQ CODE_8789BA                      ;8789A4;
    JSL.L CODE_849B03                    ;8789A6;
    JSL.L CODE_82820A                    ;8789AA;
    JSL.L CODE_848EEA                    ;8789AE;
    JSL.L CODE_8280B4                    ;8789B2;
    LDA.B $0E                            ;8789B6;
    BNE CODE_8789BE                      ;8789B8;

CODE_8789BA:
    JSL.L CODE_8283A3                    ;8789BA;

CODE_8789BE:
    RTS                                  ;8789BE;

CODE_8789BF:
    LDX.B $01                            ;8789BF;
    JMP.W (PTR16_8789C4,X)               ;8789C1;

PTR16_8789C4:
    dw CODE_8789CA                       ;8789C4;
    dw CODE_878A21                       ;8789C6;
    dw CODE_878A35                       ;8789C8;

CODE_8789CA:
    LDA.B #$02                           ;8789CA;
    STA.B $01                            ;8789CC;
    STZ.B $28                            ;8789CE;
    LDA.B #$83                           ;8789D0;
    STA.B $10                            ;8789D2;
    STZ.B $12                            ;8789D4;
    LDA.B #$FF                           ;8789D6;
    STA.B $0B                            ;8789D8;
    STZ.B $18                            ;8789DA;
    LDA.L $7F8383                        ;8789DC;
    ORA.B $11                            ;8789E0;
    ORA.B #$30                           ;8789E2;
    CLC                                  ;8789E4;
    ADC.B #$02                           ;8789E5;
    STA.B $11                            ;8789E7;
    ASL A                                ;8789E9;
    ASL A                                ;8789EA;
    REP #$20                             ;8789EB;
    LDA.W #$0400                         ;8789ED;
    BCS CODE_8789F5                      ;8789F0;
    LDA.W #$FC00                         ;8789F2;

CODE_8789F5:
    STA.B $1A                            ;8789F5;
    LDA.W #$B32E                         ;8789F7;
    STA.B $31                            ;8789FA;
    LDA.W #$C3A7                         ;8789FC;
    STA.B $20                            ;8789FF;
    SEP #$20                             ;878A01;
    STZ.B $26                            ;878A03;
    LDA.B #$01                           ;878A05;
    STA.B $27                            ;878A07;
    LDA.B #$8A                           ;878A09;
    STA.B $16                            ;878A0B;
    LDA.B #$00                           ;878A0D;
    JSL.L CODE_848F07                    ;878A0F;
    JSL.L CODE_848FCA                    ;878A13;
    LDA.B #$5A                           ;878A17;
    JSL.L CODE_8088A2                    ;878A19;
    JML.L CODE_8280B4                    ;878A1D;

CODE_878A21:
    JSL.L CODE_848EEA                    ;878A21;
    LDA.B $0F                            ;878A25;
    CMP.B #$10                           ;878A27;
    BNE CODE_878A3D                      ;878A29;
    LDA.B #$04                           ;878A2B;
    STA.B $01                            ;878A2D;
    LDA.B #$55                           ;878A2F;
    STA.B $0B                            ;878A31;
    BRA CODE_878A3D                      ;878A33;

CODE_878A35:
    JSL.L CODE_848EEA                    ;878A35;
    JSL.L CODE_82823E                    ;878A39;

CODE_878A3D:
    REP #$20                             ;878A3D;
    LDA.B $0F                            ;878A3F;
    AND.W #$001F                         ;878A41;
    CLC                                  ;878A44;
    ADC.W #$C3A7                         ;878A45;
    STA.B $20                            ;878A48;
    SEP #$20                             ;878A4A;
    JSL.L CODE_849B03                    ;878A4C;
    BEQ CODE_878A6D                      ;878A50;
    LDA.B $11                            ;878A52;
    ASL A                                ;878A54;
    ASL A                                ;878A55;
    REP #$20                             ;878A56;
    BCS CODE_878A63                      ;878A58;
    LDA.W $0BAD                          ;878A5A;
    SEC                                  ;878A5D;
    SBC.W #$0004                         ;878A5E;
    BRA CODE_878A6A                      ;878A61;

CODE_878A63:
    LDA.W $0BAD                          ;878A63;
    CLC                                  ;878A66;
    ADC.W #$0004                         ;878A67;

CODE_878A6A:
    STA.W $0BAD                          ;878A6A;

CODE_878A6D:
    JSL.L CODE_82808F                    ;878A6D;
    LDA.B $0E                            ;878A71;
    BEQ CODE_878A7A                      ;878A73;
    DEC.B $0B                            ;878A75;
    BEQ CODE_878A7A                      ;878A77;
    RTL                                  ;878A79;

CODE_878A7A:
    JML.L CODE_8283A3                    ;878A7A;

CODE_878A7E:
    LDX.B $01                            ;878A7E;
    JMP.W (PTR16_878A83,X)               ;878A80;

PTR16_878A83:
    dw CODE_878A8B                       ;878A83;
    dw CODE_878AD2                       ;878A85;
    dw CODE_878C1A                       ;878A87;
    dw CODE_87907E                       ;878A89;

CODE_878A8B:
    LDA.B $02                            ;878A8B;
    BNE CODE_878AAE                      ;878A8D;
    JSL.L CODE_84AAD3                    ;878A8F;
    BEQ CODE_878A99                      ;878A93;
    JML.L CODE_828398                    ;878A95;

CODE_878A99:
    JSL.L CODE_849FE6                    ;878A99;
    INC.B $02                            ;878A9D;
    LDA.B #$3C                           ;878A9F;
    STA.B $34                            ;878AA1;
    LDA.W $1F26                          ;878AA3;
    BEQ CODE_878AAE                      ;878AA6;
    LDA.B #$2E                           ;878AA8;
    JSL.L CODE_8087A2                    ;878AAA;

CODE_878AAE:
    DEC.B $34                            ;878AAE;
    BEQ CODE_878AB3                      ;878AB0;
    RTL                                  ;878AB2;

CODE_878AB3:
    JSL.L CODE_82827D                    ;878AB3;
    LDA.B $11                            ;878AB7;
    AND.B #$0E                           ;878AB9;
    STA.B $33                            ;878ABB;
    LDA.B #$02                           ;878ABD;
    STA.B $12                            ;878ABF;
    LDA.B #$04                           ;878AC1;
    STA.B $26                            ;878AC3;
    STZ.B $30                            ;878AC5;
    STZ.B $02                            ;878AC7;
    STZ.B $38                            ;878AC9;
    STZ.B $3C                            ;878ACB;
    STZ.B $32                            ;878ACD;
    STZ.B $39                            ;878ACF;
    RTL                                  ;878AD1;

CODE_878AD2:
    LDX.B $02                            ;878AD2;
    JSR.W (PTR16_878ADB,X)               ;878AD4;
    JML.L CODE_8280B4                    ;878AD7;

PTR16_878ADB:
    dw CODE_878AE7                       ;878ADB;
    dw CODE_878B1A                       ;878ADD;
    dw CODE_878B59                       ;878ADF;
    dw CODE_878B94                       ;878AE1;
    dw CODE_878BCB                       ;878AE3;
    dw CODE_878BF8                       ;878AE5;

CODE_878AE7:
    REP #$20                             ;878AE7;
    LDA.W $1E4D                          ;878AE9;
    CLC                                  ;878AEC;
    ADC.W #$0010                         ;878AED;
    STA.B $05                            ;878AF0;
    STA.B $36                            ;878AF2;
    LDA.W #$1000                         ;878AF4;
    STA.B $1A                            ;878AF7;
    LDA.W #$F000                         ;878AF9;
    STA.B $1C                            ;878AFC;
    LDA.W #$C58D                         ;878AFE;
    STA.B $20                            ;878B01;
    SEP #$20                             ;878B03;
    LDA.B #$07                           ;878B05;
    STA.B $34                            ;878B07;
    STA.B $35                            ;878B09;
    LDA.B #$40                           ;878B0B;
    TSB.B $11                            ;878B0D;
    LDA.B #$02                           ;878B0F;
    STA.B $02                            ;878B11;
    LDA.B #$18                           ;878B13;
    JSL.L CODE_848F07                    ;878B15;
    RTS                                  ;878B19;

CODE_878B1A:
    JSL.L CODE_82823E                    ;878B1A;
    DEC.B $34                            ;878B1E;
    BNE CODE_878B58                      ;878B20;
    LDA.B $35                            ;878B22;
    DEC A                                ;878B24;
    BEQ CODE_878B3A                      ;878B25;
    STA.B $34                            ;878B27;
    STA.B $35                            ;878B29;
    REP #$20                             ;878B2B;
    LDA.B $36                            ;878B2D;
    CLC                                  ;878B2F;
    ADC.W #$0010                         ;878B30;
    STA.B $05                            ;878B33;
    STA.B $36                            ;878B35;
    SEP #$20                             ;878B37;
    RTS                                  ;878B39;

CODE_878B3A:
    REP #$20                             ;878B3A;
    LDA.B $05                            ;878B3C;
    SEC                                  ;878B3E;
    SBC.W #$0010                         ;878B3F;
    STA.B $05                            ;878B42;
    LDA.B $08                            ;878B44;
    STA.B $36                            ;878B46;
    SEP #$20                             ;878B48;
    LDA.B #$09                           ;878B4A;
    STA.B $34                            ;878B4C;
    STA.B $35                            ;878B4E;
    LDA.B #$40                           ;878B50;
    TRB.B $11                            ;878B52;
    LDA.B #$04                           ;878B54;
    STA.B $02                            ;878B56;

CODE_878B58:
    RTS                                  ;878B58;

CODE_878B59:
    JSL.L CODE_82825D                    ;878B59;
    DEC.B $34                            ;878B5D;
    BNE CODE_878B93                      ;878B5F;
    LDA.B $35                            ;878B61;
    DEC A                                ;878B63;
    BEQ CODE_878B79                      ;878B64;
    STA.B $34                            ;878B66;
    STA.B $35                            ;878B68;
    REP #$20                             ;878B6A;
    LDA.B $36                            ;878B6C;
    CLC                                  ;878B6E;
    ADC.W #$0010                         ;878B6F;
    STA.B $36                            ;878B72;
    STA.B $08                            ;878B74;
    SEP #$20                             ;878B76;
    RTS                                  ;878B78;

CODE_878B79:
    REP #$20                             ;878B79;
    LDA.B $08                            ;878B7B;
    SEC                                  ;878B7D;
    SBC.W #$0010                         ;878B7E;
    STA.B $08                            ;878B81;
    LDA.B $05                            ;878B83;
    STA.B $36                            ;878B85;
    SEP #$20                             ;878B87;
    LDA.B #$07                           ;878B89;
    STA.B $34                            ;878B8B;
    STA.B $35                            ;878B8D;
    LDA.B #$06                           ;878B8F;
    STA.B $02                            ;878B91;

CODE_878B93:
    RTS                                  ;878B93;

CODE_878B94:
    JSL.L CODE_82823E                    ;878B94;
    DEC.B $34                            ;878B98;
    BNE CODE_878BCA                      ;878B9A;
    LDA.B $35                            ;878B9C;
    DEC A                                ;878B9E;
    BEQ CODE_878BB4                      ;878B9F;
    STA.B $34                            ;878BA1;
    STA.B $35                            ;878BA3;
    REP #$20                             ;878BA5;
    LDA.B $36                            ;878BA7;
    CLC                                  ;878BA9;
    ADC.W #$0010                         ;878BAA;
    STA.B $36                            ;878BAD;
    STA.B $05                            ;878BAF;
    SEP #$20                             ;878BB1;
    RTS                                  ;878BB3;

CODE_878BB4:
    REP #$20                             ;878BB4;
    LDA.B $05                            ;878BB6;
    SEC                                  ;878BB8;
    SBC.W #$0010                         ;878BB9;
    STA.B $05                            ;878BBC;
    TDC                                  ;878BBE;
    STA.W $1F0E                          ;878BBF;
    SEP #$20                             ;878BC2;
    STZ.B $27                            ;878BC4;
    LDA.B #$08                           ;878BC6;
    STA.B $02                            ;878BC8;

CODE_878BCA:
    RTS                                  ;878BCA;

CODE_878BCB:
    LDA.B $0F                            ;878BCB;
    BMI CODE_878BD4                      ;878BCD;
    JSL.L CODE_848EEA                    ;878BCF;
    RTS                                  ;878BD3;

CODE_878BD4:
    LDA.W $0B9C                          ;878BD4;
    LSR A                                ;878BD7;
    BCC CODE_878BF3                      ;878BD8;
    LDA.B #$0C                           ;878BDA;
    JSL.L CODE_8088CD                    ;878BDC;
    LDA.B $27                            ;878BE0;
    AND.B #$7F                           ;878BE2;
    INC A                                ;878BE4;
    STA.B $27                            ;878BE5;
    CMP.B #$20                           ;878BE7;
    BCC CODE_878BF3                      ;878BE9;
    LDA.B #$0A                           ;878BEB;
    STA.B $02                            ;878BED;
    LDA.B #$1E                           ;878BEF;
    STA.B $34                            ;878BF1;

CODE_878BF3:
    LDA.B #$80                           ;878BF3;
    TSB.B $27                            ;878BF5;
    RTS                                  ;878BF7;

CODE_878BF8:
    DEC.B $34                            ;878BF8;
    BNE CODE_878C19                      ;878BFA;
    JSL.L CODE_849FFE                    ;878BFC;
    LDA.B #$04                           ;878C00;
    STA.B $01                            ;878C02;
    STZ.B $02                            ;878C04;
    STZ.B $03                            ;878C06;
    STZ.B $35                            ;878C08;
    STZ.B $37                            ;878C0A;
    STZ.B $36                            ;878C0C;
    LDA.W $1F26                          ;878C0E;
    BEQ CODE_878C19                      ;878C11;
    LDA.B #$1E                           ;878C13;
    JSL.L CODE_8087A2                    ;878C15;

CODE_878C19:
    RTS                                  ;878C19;

CODE_878C1A:
    LDA.B $33                            ;878C1A;
    TSB.B $11                            ;878C1C;
    LDX.B $02                            ;878C1E;
    JSR.W (PTR16_878CF2,X)               ;878C20;
    LDA.B $37                            ;878C23;
    BEQ CODE_878C39                      ;878C25;
    STZ.B $37                            ;878C27;
    STZ.B $35                            ;878C29;
    LDA.B $13                            ;878C2B;
    PHA                                  ;878C2D;
    LDA.B $0F                            ;878C2E;
    AND.B #$7F                           ;878C30;
    JSL.L CODE_848F07                    ;878C32;
    PLA                                  ;878C36;
    STA.B $13                            ;878C37;

CODE_878C39:
    LDA.B #$0D                           ;878C39;
    LDX.B $3D                            ;878C3B;
    BEQ CODE_878C41                      ;878C3D;
    LDA.B #$05                           ;878C3F;

CODE_878C41:
    STA.B $28                            ;878C41;
    LDA.W $0BDB                          ;878C43;
    CMP.B #$02                           ;878C46;
    BEQ CODE_878C4E                      ;878C48;
    LDA.B $38                            ;878C4A;
    BNE CODE_878C9B                      ;878C4C;

CODE_878C4E:
    JSL.L CODE_849B43                    ;878C4E;
    BEQ CODE_878C9B                      ;878C52;
    LDA.B $3D                            ;878C54;
    BNE CODE_878C9B                      ;878C56;
    LDA.B #$3C                           ;878C58;
    STA.B $3D                            ;878C5A;
    LDA.B $02                            ;878C5C;
    STA.B $3E                            ;878C5E;
    LDA.B #$08                           ;878C60;
    STA.B $02                            ;878C62;
    LDA.B #$40                           ;878C64;
    TRB.B $11                            ;878C66;
    LDA.W $1F1B                          ;878C68;
    TSB.B $11                            ;878C6B;
    LDA.B #$10                           ;878C6D;
    STA.B $34                            ;878C6F;
    STZ.B $38                            ;878C71;
    STZ.B $36                            ;878C73;
    LDA.B $3C                            ;878C75;
    BEQ CODE_878C7F                      ;878C77;
    BMI CODE_878C7F                      ;878C79;
    JSL.L CODE_849F79                    ;878C7B;

CODE_878C7F:
    LDA.B #$03                           ;878C7F;
    LDX.W $1F1D                          ;878C81;
    CPX.B #$07                           ;878C84;
    BEQ CODE_878C8C                      ;878C86;
    CPX.B #$10                           ;878C88;
    BNE CODE_878C92                      ;878C8A;

CODE_878C8C:
    LDA.B #$18                           ;878C8C;
    STA.B $34                            ;878C8E;
    LDA.B #$04                           ;878C90;

CODE_878C92:
    JSR.W CODE_8790B1                    ;878C92;
    LDA.B #$13                           ;878C95;
    JSL.L CODE_8088A2                    ;878C97;

CODE_878C9B:
    LDA.B $3D                            ;878C9B;
    BEQ CODE_878CAA                      ;878C9D;
    DEC A                                ;878C9F;
    STA.B $3D                            ;878CA0;
    AND.B #$03                           ;878CA2;
    BNE CODE_878CAA                      ;878CA4;
    LDA.B #$0E                           ;878CA6;
    TRB.B $11                            ;878CA8;

CODE_878CAA:
    LDA.B $27                            ;878CAA;
    AND.B #$7F                           ;878CAC;
    BNE CODE_878CC9                      ;878CAE;
    LDA.B #$06                           ;878CB0;
    STA.B $01                            ;878CB2;
    STZ.B $02                            ;878CB4;
    STZ.B $03                            ;878CB6;
    LDA.B #$01                           ;878CB8;
    STA.W $1F0C                          ;878CBA;
    STA.W $0BD8                          ;878CBD;
    LDA.B #$04                           ;878CC0;
    JSR.W CODE_8790B1                    ;878CC2;
    JML.L CODE_8280B4                    ;878CC5;

CODE_878CC9:
    LDA.B $38                            ;878CC9;
    BNE CODE_878CE0                      ;878CCB;
    LDA.B $39                            ;878CCD;
    BNE CODE_878CE0                      ;878CCF;
    JSL.L CODE_849B03                    ;878CD1;
    LDA.W $0BCF                          ;878CD5;
    AND.B #$7F                           ;878CD8;
    BNE CODE_878CE0                      ;878CDA;
    LDA.B #$01                           ;878CDC;
    STA.B $30                            ;878CDE;

CODE_878CE0:
    JSR.W CODE_879170                    ;878CE0;
    LDA.B $39                            ;878CE3;
    BEQ CODE_878CEE                      ;878CE5;
    DEC A                                ;878CE7;
    STA.B $39                            ;878CE8;
    LSR A                                ;878CEA;
    BCC CODE_878CEE                      ;878CEB;
    RTL                                  ;878CED;

CODE_878CEE:
    JML.L CODE_8280B4                    ;878CEE;

PTR16_878CF2:
    dw CODE_878CFC                       ;878CF2;
    dw CODE_878DE6                       ;878CF4;
    dw CODE_878E5A                       ;878CF6;
    dw CODE_878F46                       ;878CF8;
    dw CODE_878FF4                       ;878CFA;

CODE_878CFC:
    LDX.B $03                            ;878CFC;
    JMP.W (PTR16_878D01,X)               ;878CFE;

PTR16_878D01:
    dw CODE_878D09                       ;878D01;
    dw CODE_878D6D                       ;878D03;
    dw CODE_878D94                       ;878D05;
    dw CODE_878DBA                       ;878D07;

CODE_878D09:
    JSL.L CODE_84AC9B                    ;878D09;
    LDA.B #$02                           ;878D0D;
    STA.B $03                            ;878D0F;
    LDA.B #$53                           ;878D11;
    JSL.L CODE_8088A2                    ;878D13;
    STZ.B $31                            ;878D17;
    LDA.B #$01                           ;878D19;
    JSR.W CODE_8790B1                    ;878D1B;
    LDA.B $11                            ;878D1E;
    ASL A                                ;878D20;
    ASL A                                ;878D21;
    REP #$20                             ;878D22;
    LDA.W #$0400                         ;878D24;
    BCS CODE_878D2C                      ;878D27;
    LDA.W #$FC00                         ;878D29;

CODE_878D2C:
    STA.B $1A                            ;878D2C;
    LDA.W $0BAD                          ;878D2E;
    SEC                                  ;878D31;
    SBC.B $05                            ;878D32;
    BCS CODE_878D3A                      ;878D34;
    EOR.W #$FFFF                         ;878D36;
    INC A                                ;878D39;

CODE_878D3A:
    LSR A                                ;878D3A;
    LSR A                                ;878D3B;
    TAX                                  ;878D3C;
    INX                                  ;878D3D;
    STX.B $34                            ;878D3E;
    LDA.W $0BAD                          ;878D40;
    SEC                                  ;878D43;
    SBC.B $05                            ;878D44;
    BCS CODE_878D4C                      ;878D46;
    EOR.W #$FFFF                         ;878D48;
    INC A                                ;878D4B;

CODE_878D4C:
    CMP.W #$0080                         ;878D4C;
    SEP #$20                             ;878D4F;
    BCS CODE_878D62                      ;878D51;
    JSL.L CODE_849086                    ;878D53;
    AND.B #$0F                           ;878D57;
    CMP.B #$06                           ;878D59;
    BCC CODE_878D6C                      ;878D5B;

CODE_878D5D:
    LDA.B #$08                           ;878D5D;
    STA.B $34                            ;878D5F;
    RTS                                  ;878D61;

CODE_878D62:
    JSL.L CODE_849086                    ;878D62;
    AND.B #$0F                           ;878D66;
    CMP.B #$06                           ;878D68;
    BCC CODE_878D5D                      ;878D6A;

CODE_878D6C:
    RTS                                  ;878D6C;

CODE_878D6D:
    JSL.L CODE_848EEA                    ;878D6D;
    LDA.B $0F                            ;878D71;
    BPL CODE_878D91                      ;878D73;
    LDA.B #$04                           ;878D75;
    STA.B $03                            ;878D77;
    JSL.L CODE_8282D3                    ;878D79;
    BNE CODE_878D8F                      ;878D7D;
    INC.W $0000,X                        ;878D7F;
    LDA.B #$34                           ;878D82;
    STA.W $000A,X                        ;878D84;
    INC.B $36                            ;878D87;
    REP #$20                             ;878D89;
    TDC                                  ;878D8B;
    STA.W $000C,X                        ;878D8C;

CODE_878D8F:
    SEP #$30                             ;878D8F;

CODE_878D91:
    JMP.W CODE_879113                    ;878D91;

CODE_878D94:
    INC.B $31                            ;878D94;
    JSL.L CODE_82823E                    ;878D96;
    JSL.L CODE_8491BE                    ;878D9A;
    LDA.B $2B                            ;878D9E;
    AND.B #$03                           ;878DA0;
    BNE CODE_878DA8                      ;878DA2;
    DEC.B $34                            ;878DA4;
    BNE CODE_878DB7                      ;878DA6;

CODE_878DA8:
    LDA.B #$06                           ;878DA8;
    STA.B $03                            ;878DAA;
    LDA.B #$14                           ;878DAC;
    STA.B $34                            ;878DAE;
    LDA.B #$00                           ;878DB0;
    JSR.W CODE_8790B1                    ;878DB2;
    STZ.B $36                            ;878DB5;

CODE_878DB7:
    JMP.W CODE_879113                    ;878DB7;

CODE_878DBA:
    JSL.L CODE_84AC9B                    ;878DBA;
    JSL.L CODE_848EEA                    ;878DBE;
    DEC.B $34                            ;878DC2;
    BNE CODE_878DE3                      ;878DC4;
    LDA.B $35                            ;878DC6;
    BNE CODE_878DE1                      ;878DC8;
    JSL.L CODE_849086                    ;878DCA;
    AND.B #$0F                           ;878DCE;
    TAX                                  ;878DD0;
    LDA.B $31                            ;878DD1;
    CMP.B #$09                           ;878DD3;
    BCS CODE_878DDC                      ;878DD5;
    LDA.W DATA8_86C5A3,X                 ;878DD7;
    BRA CODE_878DDF                      ;878DDA;

CODE_878DDC:
    LDA.W DATA8_86C5B3,X                 ;878DDC;

CODE_878DDF:
    STA.B $02                            ;878DDF;

CODE_878DE1:
    STZ.B $03                            ;878DE1;

CODE_878DE3:
    JMP.W CODE_879113                    ;878DE3;

CODE_878DE6:
    LDX.B $03                            ;878DE6;
    JMP.W (PTR16_878DEB,X)               ;878DE8;

PTR16_878DEB:
    dw CODE_878DF1                       ;878DEB;
    dw CODE_878DFF                       ;878DED;
    dw CODE_878E4D                       ;878DEF;

CODE_878DF1:
    JSL.L CODE_84AC9B                    ;878DF1;
    LDA.B #$05                           ;878DF5;
    JSR.W CODE_8790B1                    ;878DF7;
    LDA.B #$02                           ;878DFA;
    STA.B $03                            ;878DFC;
    RTS                                  ;878DFE;

CODE_878DFF:
    JSL.L CODE_84AC9B                    ;878DFF;
    JSL.L CODE_848EEA                    ;878E03;
    LDA.B $17                            ;878E07;
    BPL CODE_878E4C                      ;878E09;
    AND.B #$7F                           ;878E0B;
    STA.B $17                            ;878E0D;
    LDA.B $0F                            ;878E0F;
    AND.B #$7F                           ;878E11;
    BEQ CODE_878E3B                      ;878E13;
    JSL.L CODE_828358                    ;878E15;
    BNE CODE_878E39                      ;878E19;
    INC.B $35                            ;878E1B;
    INC.W $0000,X                        ;878E1D;
    LDA.B #$1B                           ;878E20;
    STA.W $000A,X                        ;878E22;
    REP #$20                             ;878E25;
    LDA.B $05                            ;878E27;
    STA.W $0005,X                        ;878E29;
    LDA.B $08                            ;878E2C;
    SEC                                  ;878E2E;
    SBC.W #$0018                         ;878E2F;
    STA.W $0008,X                        ;878E32;
    TDC                                  ;878E35;
    STA.W $000C,X                        ;878E36;

CODE_878E39:
    SEP #$30                             ;878E39;

CODE_878E3B:
    LDA.B $0F                            ;878E3B;
    BPL CODE_878E4C                      ;878E3D;
    LDA.B #$04                           ;878E3F;
    STA.B $03                            ;878E41;
    LDA.B #$00                           ;878E43;
    JSR.W CODE_8790B1                    ;878E45;
    LDA.B #$08                           ;878E48;
    STA.B $34                            ;878E4A;

CODE_878E4C:
    RTS                                  ;878E4C;

CODE_878E4D:
    JSL.L CODE_848EEA                    ;878E4D;
    DEC.B $34                            ;878E51;
    BNE CODE_878E59                      ;878E53;
    STZ.B $03                            ;878E55;
    STZ.B $02                            ;878E57;

CODE_878E59:
    RTS                                  ;878E59;

CODE_878E5A:
    LDX.B $03                            ;878E5A;
    JMP.W (PTR16_878E5F,X)               ;878E5C;

PTR16_878E5F:
    dw CODE_878E69                       ;878E5F;
    dw CODE_878E8F                       ;878E61;
    dw CODE_878EB1                       ;878E63;
    dw CODE_878EEC                       ;878E65;
    dw CODE_878F05                       ;878E67;

CODE_878E69:
    LDA.B #$02                           ;878E69;
    STA.B $03                            ;878E6B;
    JSR.W CODE_8790C1                    ;878E6D;
    REP #$20                             ;878E70;
    LDA.B $3A                            ;878E72;
    SEC                                  ;878E74;
    SBC.B $05                            ;878E75;
    LDA.W #$0800                         ;878E77;
    BCS CODE_878E7F                      ;878E7A;
    LDA.W #$F800                         ;878E7C;

CODE_878E7F:
    STA.B $1A                            ;878E7F;
    SEP #$20                             ;878E81;
    LDA.B #$02                           ;878E83;
    JSR.W CODE_8790B1                    ;878E85;
    LDA.B #$50                           ;878E88;
    JSL.L CODE_8088A2                    ;878E8A;
    RTS                                  ;878E8E;

CODE_878E8F:
    LDA.B $0F                            ;878E8F;
    BPL CODE_878EA0                      ;878E91;
    LDA.B $39                            ;878E93;
    BNE CODE_878E9F                      ;878E95;
    LDA.B #$04                           ;878E97;
    STA.B $03                            ;878E99;
    LDA.B #$02                           ;878E9B;
    STA.B $39                            ;878E9D;

CODE_878E9F:
    RTS                                  ;878E9F;

CODE_878EA0:
    JSL.L CODE_848EEA                    ;878EA0;
    LDA.B $0F                            ;878EA4;
    BPL CODE_878EB0                      ;878EA6;
    LDA.B #$14                           ;878EA8;
    STA.B $39                            ;878EAA;
    LDA.B #$01                           ;878EAC;
    STA.B $38                            ;878EAE;

CODE_878EB0:
    RTS                                  ;878EB0;

CODE_878EB1:
    LDA.B #$02                           ;878EB1;
    STA.B $39                            ;878EB3;
    JSL.L CODE_82823E                    ;878EB5;
    JSL.L CODE_8491BE                    ;878EB9;
    LDA.B $2B                            ;878EBD;
    AND.B #$03                           ;878EBF;
    BNE CODE_878ED9                      ;878EC1;
    REP #$20                             ;878EC3;
    LDA.B $05                            ;878EC5;
    SEC                                  ;878EC7;
    SBC.B $3A                            ;878EC8;
    BCS CODE_878ED0                      ;878ECA;
    EOR.W #$FFFF                         ;878ECC;
    INC A                                ;878ECF;

CODE_878ED0:
    CMP.W #$0005                         ;878ED0;
    BCS CODE_878EE9                      ;878ED3;
    LDA.B $3A                            ;878ED5;
    STA.B $05                            ;878ED7;

CODE_878ED9:
    SEP #$20                             ;878ED9;
    LDA.B #$06                           ;878EDB;
    STA.B $03                            ;878EDD;
    LDA.B #$50                           ;878EDF;
    JSL.L CODE_8088A2                    ;878EE1;
    LDA.B #$14                           ;878EE5;
    STA.B $39                            ;878EE7;

CODE_878EE9:
    SEP #$20                             ;878EE9;
    RTS                                  ;878EEB;

CODE_878EEC:
    JSL.L CODE_84AC9B                    ;878EEC;
    LDA.B $39                            ;878EF0;
    BNE CODE_878F04                      ;878EF2;
    LDA.B #$00                           ;878EF4;
    JSL.L CODE_848F07                    ;878EF6;
    LDA.B #$08                           ;878EFA;
    STA.B $03                            ;878EFC;
    LDA.B #$08                           ;878EFE;
    STA.B $34                            ;878F00;
    STZ.B $38                            ;878F02;

CODE_878F04:
    RTS                                  ;878F04;

CODE_878F05:
    JSL.L CODE_84AC9B                    ;878F05;
    JSL.L CODE_848EEA                    ;878F09;
    DEC.B $34                            ;878F0D;
    BNE CODE_878F42                      ;878F0F;
    LDA.B $32                            ;878F11;
    BEQ CODE_878F1A                      ;878F13;
    DEC.B $32                            ;878F15;
    STZ.B $03                            ;878F17;
    RTS                                  ;878F19;

CODE_878F1A:
    JSL.L CODE_849086                    ;878F1A;
    AND.B #$0F                           ;878F1E;
    TAX                                  ;878F20;
    REP #$20                             ;878F21;
    LDA.W $0BAD                          ;878F23;
    SEC                                  ;878F26;
    SBC.B $05                            ;878F27;
    BCS CODE_878F2F                      ;878F29;
    EOR.W #$FFFF                         ;878F2B;
    INC A                                ;878F2E;

CODE_878F2F:
    CMP.W #$0080                         ;878F2F;
    SEP #$20                             ;878F32;
    BCC CODE_878F3B                      ;878F34;
    LDA.W DATA8_86C5C3,X                 ;878F36;
    BRA CODE_878F3E                      ;878F39;

CODE_878F3B:
    LDA.W DATA8_86C5D3,X                 ;878F3B;

CODE_878F3E:
    STA.B $02                            ;878F3E;
    STZ.B $03                            ;878F40;

CODE_878F42:
    JSR.W CODE_879113                    ;878F42;
    RTS                                  ;878F45;

CODE_878F46:
    LDX.B $03                            ;878F46;
    JMP.W (PTR16_878F4B,X)               ;878F48;

PTR16_878F4B:
    dw CODE_878F55                       ;878F4B;
    dw CODE_878F63                       ;878F4D;
    dw CODE_878FA2                       ;878F4F;
    dw CODE_878FD0                       ;878F51;
    dw CODE_878FE7                       ;878F53;

CODE_878F55:
    LDA.B #$06                           ;878F55;
    JSR.W CODE_8790B1                    ;878F57;
    LDA.B #$02                           ;878F5A;
    STA.B $03                            ;878F5C;
    JSL.L CODE_84AC9B                    ;878F5E;
    RTS                                  ;878F62;

CODE_878F63:
    JSL.L CODE_848EEA                    ;878F63;
    LDA.B $0F                            ;878F67;
    BEQ CODE_878FA1                      ;878F69;
    JSR.W CODE_879129                    ;878F6B;
    BEQ CODE_878F9D                      ;878F6E;
    LDA.B #$04                           ;878F70;
    STA.B $03                            ;878F72;
    JSL.L CODE_849F14                    ;878F74;
    LDA.B #$01                           ;878F78;
    STA.B $3C                            ;878F7A;
    LDA.B #$52                           ;878F7C;
    JSL.L CODE_8088CD                    ;878F7E;
    LDA.B #$14                           ;878F82;
    STA.B $34                            ;878F84;
    LDA.B $11                            ;878F86;
    ASL A                                ;878F88;
    ASL A                                ;878F89;
    REP #$20                             ;878F8A;
    LDA.W #$0020                         ;878F8C;
    BCS CODE_878F94                      ;878F8F;
    LDA.W #$FFE0                         ;878F91;

CODE_878F94:
    CLC                                  ;878F94;
    ADC.B $05                            ;878F95;
    STA.W $0BAD                          ;878F97;
    SEP #$20                             ;878F9A;
    RTS                                  ;878F9C;

CODE_878F9D:
    LDA.B #$06                           ;878F9D;
    STA.B $03                            ;878F9F;

CODE_878FA1:
    RTS                                  ;878FA1;

CODE_878FA2:
    LDA.B $11                            ;878FA2;
    ASL A                                ;878FA4;
    ASL A                                ;878FA5;
    REP #$20                             ;878FA6;
    LDA.W #$0020                         ;878FA8;
    BCS CODE_878FB0                      ;878FAB;
    LDA.W #$FFE0                         ;878FAD;

CODE_878FB0:
    CLC                                  ;878FB0;
    ADC.B $05                            ;878FB1;
    STA.W $0BAD                          ;878FB3;
    SEP #$20                             ;878FB6;
    LDA.B $34                            ;878FB8;
    BNE CODE_878FCD                      ;878FBA;
    JSL.L CODE_848EEA                    ;878FBC;
    LDA.B $0F                            ;878FC0;
    BEQ CODE_878FCC                      ;878FC2;
    LDA.B #$06                           ;878FC4;
    STA.B $03                            ;878FC6;
    LDA.B #$80                           ;878FC8;
    STA.B $3C                            ;878FCA;

CODE_878FCC:
    RTS                                  ;878FCC;

CODE_878FCD:
    DEC.B $34                            ;878FCD;
    RTS                                  ;878FCF;

CODE_878FD0:
    JSL.L CODE_848EEA                    ;878FD0;
    LDA.B $0F                            ;878FD4;
    BPL CODE_878FE6                      ;878FD6;
    LDA.B #$08                           ;878FD8;
    STA.B $03                            ;878FDA;
    LDA.B #$00                           ;878FDC;
    JSL.L CODE_848F07                    ;878FDE;
    LDA.B #$1E                           ;878FE2;
    STA.B $34                            ;878FE4;

CODE_878FE6:
    RTS                                  ;878FE6;

CODE_878FE7:
    JSL.L CODE_848EEA                    ;878FE7;
    DEC.B $34                            ;878FEB;
    BNE CODE_878FF3                      ;878FED;
    STZ.B $02                            ;878FEF;
    STZ.B $03                            ;878FF1;

CODE_878FF3:
    RTS                                  ;878FF3;

CODE_878FF4:
    JSL.L CODE_848EEA                    ;878FF4;
    LDA.B $11                            ;878FF8;
    ASL A                                ;878FFA;
    ASL A                                ;878FFB;
    REP #$20                             ;878FFC;
    LDA.B $05                            ;878FFE;
    BCC CODE_879006                      ;879000;
    DEC A                                ;879002;
    DEC A                                ;879003;
    BRA CODE_879008                      ;879004;

CODE_879006:
    INC A                                ;879006;
    INC A                                ;879007;

CODE_879008:
    STA.B $05                            ;879008;
    SEP #$20                             ;87900A;
    JSL.L CODE_8491BE                    ;87900C;
    DEC.B $34                            ;879010;
    BEQ CODE_879015                      ;879012;
    RTS                                  ;879014;

CODE_879015:
    LDA.B $35                            ;879015;
    BNE CODE_879041                      ;879017;
    LDA.B $32                            ;879019;
    BNE CODE_87903A                      ;87901B;
    LDA.B $27                            ;87901D;
    AND.B #$7F                           ;87901F;
    CMP.B #$11                           ;879021;
    BCS CODE_879041                      ;879023;
    JSL.L CODE_849086                    ;879025;
    AND.B #$0F                           ;879029;
    CMP.B #$06                           ;87902B;
    BCS CODE_879041                      ;87902D;
    JSL.L CODE_849086                    ;87902F;
    AND.B #$07                           ;879033;
    CLC                                  ;879035;
    ADC.B #$06                           ;879036;
    STA.B $32                            ;879038;

CODE_87903A:
    LDA.B #$04                           ;87903A;
    STA.B $02                            ;87903C;
    STZ.B $03                            ;87903E;
    RTS                                  ;879040;

CODE_879041:
    LDX.B $3E                            ;879041;
    JMP.W (PTR16_879046,X)               ;879043;

PTR16_879046:
    dw CODE_879050                       ;879046;
    dw CODE_879059                       ;879048;
    dw CODE_87906A                       ;87904A;
    dw CODE_879077                       ;87904C;
    dw CODE_879050                       ;87904E;

CODE_879050:
    STZ.B $02                            ;879050;
    STZ.B $03                            ;879052;
    LDA.B #$00                           ;879054;
    JMP.W CODE_8790B1                    ;879056;

CODE_879059:
    LDA.B $35                            ;879059;
    BNE CODE_879050                      ;87905B;
    LDA.B $03                            ;87905D;
    CMP.B #$04                           ;87905F;
    BEQ CODE_879050                      ;879061;
    LDA.B #$02                           ;879063;
    STA.B $02                            ;879065;
    STZ.B $03                            ;879067;
    RTS                                  ;879069;

CODE_87906A:
    LDA.B $03                            ;87906A;
    CMP.B #$04                           ;87906C;
    BCS CODE_879050                      ;87906E;
    LDA.B #$04                           ;879070;
    STA.B $02                            ;879072;
    STZ.B $03                            ;879074;
    RTS                                  ;879076;

CODE_879077:
    STZ.B $02                            ;879077;
    STZ.B $03                            ;879079;
    JMP.W CODE_879113                    ;87907B;

CODE_87907E:
    JSL.L CODE_84A66D                    ;87907E;
    BPL CODE_87909D                      ;879082;
    LDA.W $1F7A                          ;879084;
    CMP.B #$09                           ;879087;
    BCC CODE_879099                      ;879089;
    LDA.B #$1A                           ;87908B;
    JSL.L CODE_8087A2                    ;87908D;
    LDA.B #$F5                           ;879091;
    LDY.B #$03                           ;879093;
    JSL.L CODE_80887F                    ;879095;

CODE_879099:
    JML.L CODE_828398                    ;879099;

CODE_87909D:
    LDA.W $1F15                          ;87909D;
    BNE CODE_8790A6                      ;8790A0;
    JSL.L CODE_848EEA                    ;8790A2;

CODE_8790A6:
    LDA.B $03                            ;8790A6;
    CMP.B #$14                           ;8790A8;
    BCS CODE_8790B0                      ;8790AA;
    JML.L CODE_8280B4                    ;8790AC;

CODE_8790B0:
    RTL                                  ;8790B0;

CODE_8790B1:
    LDX.B $35                            ;8790B1;
    BEQ CODE_8790B8                      ;8790B3;
    CLC                                  ;8790B5;
    ADC.B #$07                           ;8790B6;

CODE_8790B8:
    TAX                                  ;8790B8;
    LDA.W DATA8_86C597,X                 ;8790B9;
    JSL.L CODE_848F07                    ;8790BC;
    RTS                                  ;8790C0;

CODE_8790C1:
    JSL.L CODE_849086                    ;8790C1;
    AND.B #$03                           ;8790C5;
    ASL A                                ;8790C7;
    TAX                                  ;8790C8;
    REP #$20                             ;8790C9;
    JMP.W (PTR16_8790CE,X)               ;8790CB;

PTR16_8790CE:
    dw CODE_8790D6                       ;8790CE;
    dw CODE_8790DB                       ;8790D0;
    dw CODE_8790E0                       ;8790D2;
    dw CODE_8790FE                       ;8790D4;

CODE_8790D6:
    LDA.W #$001C                         ;8790D6;
    BRA CODE_8790E3                      ;8790D9;

CODE_8790DB:
    LDA.W #$0030                         ;8790DB;
    BRA CODE_8790E3                      ;8790DE;

CODE_8790E0:
    LDA.W #$0050                         ;8790E0;

CODE_8790E3:
    STA.B $3A                            ;8790E3;
    LDA.W $0BAD                          ;8790E5;
    SEC                                  ;8790E8;
    SBC.W #$0080                         ;8790E9;
    SEC                                  ;8790EC;
    SBC.W $1E4D                          ;8790ED;
    LDA.W $0BAD                          ;8790F0;
    BCS CODE_8790F9                      ;8790F3;
    ADC.B $3A                            ;8790F5;
    BRA CODE_8790FB                      ;8790F7;

CODE_8790F9:
    SBC.B $3A                            ;8790F9;

CODE_8790FB:
    STA.B $3A                            ;8790FB;
    RTS                                  ;8790FD;

CODE_8790FE:
    LDA.B $05                            ;8790FE;
    SEC                                  ;879100;
    SBC.W $0BAD                          ;879101;
    LDA.W #$0020                         ;879104;
    BCS CODE_87910C                      ;879107;
    LDA.W #$00E0                         ;879109;

CODE_87910C:
    CLC                                  ;87910C;
    ADC.W $1E4D                          ;87910D;
    STA.B $3A                            ;879110;
    RTS                                  ;879112;

CODE_879113:
    LDA.B #$20                           ;879113;
    STA.W $0000                          ;879115;
    STZ.W $0001                          ;879118;
    JSR.W CODE_879131                    ;87911B;
    BEQ CODE_879128                      ;87911E;
    LDA.B #$06                           ;879120;
    STA.B $02                            ;879122;
    STZ.B $03                            ;879124;
    STZ.B $36                            ;879126;

CODE_879128:
    RTS                                  ;879128;

CODE_879129:
    LDA.B #$28                           ;879129;
    STA.W $0000                          ;87912B;
    STZ.W $0001                          ;87912E;

CODE_879131:
    LDA.B $35                            ;879131;
    ORA.B $3C                            ;879133;
    ORA.W $0C32                          ;879135;
    ORA.W $1F0C                          ;879138;
    BNE CODE_87916D                      ;87913B;
    REP #$20                             ;87913D;
    LDA.W $0BAD                          ;87913F;
    SEC                                  ;879142;
    SBC.B $05                            ;879143;
    BCS CODE_87915A                      ;879145;
    EOR.W #$FFFF                         ;879147;
    INC A                                ;87914A;
    CMP.W $0000                          ;87914B;
    SEP #$20                             ;87914E;
    BCS CODE_87916D                      ;879150;
    LDA.B $11                            ;879152;
    ASL A                                ;879154;
    ASL A                                ;879155;
    BCS CODE_87916D                      ;879156;
    BRA CODE_879167                      ;879158;

CODE_87915A:
    CMP.W $0000                          ;87915A;
    SEP #$20                             ;87915D;
    BCS CODE_87916D                      ;87915F;
    LDA.B $11                            ;879161;
    ASL A                                ;879163;
    ASL A                                ;879164;
    BCC CODE_87916D                      ;879165;

CODE_879167:
    LDA.W $0BD3                          ;879167;
    AND.B #$04                           ;87916A;
    RTS                                  ;87916C;

CODE_87916D:
    LDA.B #$00                           ;87916D;
    RTS                                  ;87916F;

CODE_879170:
    LDA.B $3C                            ;879170;
    BPL CODE_8791A6                      ;879172;
    LDA.W $0BD3                          ;879174;
    AND.B #$08                           ;879177;
    BEQ CODE_879198                      ;879179;
    STZ.B $3C                            ;87917B;
    LDA.B #$04                           ;87917D;
    STA.W $0BCE                          ;87917F;
    JSL.L CODE_849F2A                    ;879182;
    LDA.W $0BCF                          ;879186;
    AND.B #$7F                           ;879189;
    BNE CODE_879191                      ;87918B;
    LDA.B #$01                           ;87918D;
    STA.B $30                            ;87918F;

CODE_879191:
    LDA.B #$20                           ;879191;
    JSL.L CODE_84A333                    ;879193;
    RTS                                  ;879197;

CODE_879198:
    REP #$20                             ;879198;
    LDA.W $0BB0                          ;87919A;
    SEC                                  ;87919D;
    SBC.W #$0008                         ;87919E;
    STA.W $0BB0                          ;8791A1;
    SEP #$20                             ;8791A4;

CODE_8791A6:
    RTS                                  ;8791A6;

CODE_8791A7:
    LDA.B #$FF                           ;8791A7;
    STA.B $37                            ;8791A9;
    LDX.B $01                            ;8791AB;
    JMP.W (PTR16_8791B0,X)               ;8791AD;

PTR16_8791B0:
    dw CODE_8791BA                       ;8791B0;
    dw CODE_879229                       ;8791B2;
    dw CODE_879303                       ;8791B4;
    dw CODE_879639                       ;8791B6;
    dw CODE_879639                       ;8791B8;

CODE_8791BA:
    LDA.B $02                            ;8791BA;
    BNE CODE_879202                      ;8791BC;
    JSL.L CODE_84AAD3                    ;8791BE;
    BEQ CODE_8791C8                      ;8791C2;
    JML.L CODE_828398                    ;8791C4;

CODE_8791C8:
    LDA.B #$3C                           ;8791C8;
    STA.B $34                            ;8791CA;
    LDA.B #$03                           ;8791CC;
    STA.B $36                            ;8791CE;
    LDA.B #$02                           ;8791D0;
    STA.B $38                            ;8791D2;
    STZ.B $3A                            ;8791D4;
    STZ.B $35                            ;8791D6;
    STZ.B $39                            ;8791D8;
    JSL.L CODE_828321                    ;8791DA;
    BEQ CODE_8791E1                      ;8791DE;
    RTL                                  ;8791E0;

CODE_8791E1:
    INC.W $0000,X                        ;8791E1;
    LDA.B #$0E                           ;8791E4;
    STA.W $000A,X                        ;8791E6;
    REP #$20                             ;8791E9;
    TDC                                  ;8791EB;
    STA.W $000C,X                        ;8791EC;
    SEP #$30                             ;8791EF;
    INC.B $02                            ;8791F1;
    JSL.L CODE_849FE6                    ;8791F3;
    LDA.W $1F26                          ;8791F7;
    BEQ CODE_879202                      ;8791FA;
    LDA.B #$2E                           ;8791FC;
    JSL.L CODE_8087A2                    ;8791FE;

CODE_879202:
    DEC.B $34                            ;879202;
    BEQ CODE_879207                      ;879204;
    RTL                                  ;879206;

CODE_879207:
    JSL.L CODE_82827D                    ;879207;
    LDA.B $11                            ;87920B;
    AND.B #$0E                           ;87920D;
    STA.B $33                            ;87920F;
    LDA.B #$06                           ;879211;
    STA.B $12                            ;879213;
    LDA.B #$04                           ;879215;
    STA.B $26                            ;879217;
    REP #$20                             ;879219;
    LDA.W #$C839                         ;87921B;
    STA.B $20                            ;87921E;
    SEP #$20                             ;879220;
    STZ.B $02                            ;879222;
    STZ.B $3B                            ;879224;
    STZ.B $3C                            ;879226;
    RTL                                  ;879228;

CODE_879229:
    LDX.B $02                            ;879229;
    JSR.W (PTR16_879232,X)               ;87922B;
    JML.L CODE_8280B4                    ;87922E;

PTR16_879232:
    dw CODE_87923C                       ;879232;
    dw CODE_879270                       ;879234;
    dw CODE_87929B                       ;879236;
    dw CODE_8792A8                       ;879238;
    dw CODE_8792DC                       ;87923A;

CODE_87923C:
    LDA.B #$02                           ;87923C;
    STA.B $02                            ;87923E;
    LDA.B #$00                           ;879240;
    JSL.L CODE_848F07                    ;879242;
    LDA.B #$06                           ;879246;
    STA.B $37                            ;879248;
    STZ.B $2B                            ;87924A;
    REP #$20                             ;87924C;
    LDA.W $1E60                          ;87924E;
    CLC                                  ;879251;
    ADC.W #$0070                         ;879252;
    STA.W $1E60                          ;879255;
    LDA.B $05                            ;879258;
    CLC                                  ;87925A;
    ADC.W #$0040                         ;87925B;
    STA.B $05                            ;87925E;
    LDA.W $0BAD                          ;879260;
    SEC                                  ;879263;
    SBC.W $1E4D                          ;879264;
    STA.W $1E74                          ;879267;
    STA.W $1E76                          ;87926A;
    SEP #$20                             ;87926D;
    RTS                                  ;87926F;

CODE_879270:
    JSL.L CODE_8491BE                    ;879270;
    REP #$20                             ;879274;
    LDA.B $05                            ;879276;
    SEC                                  ;879278;
    SBC.W $0BAD                          ;879279;
    CMP.W #$0080                         ;87927C;
    BCS CODE_879298                      ;87927F;
    TDC                                  ;879281;
    STA.W $1F0E                          ;879282;
    SEP #$20                             ;879285;
    INC.W $0C0C                          ;879287;
    LDA.B #$04                           ;87928A;
    STA.B $02                            ;87928C;
    LDA.B #$0C                           ;87928E;
    JSL.L CODE_848F07                    ;879290;
    LDA.B #$13                           ;879294;
    STA.B $37                            ;879296;

CODE_879298:
    SEP #$20                             ;879298;
    RTS                                  ;87929A;

CODE_87929B:
    JSL.L CODE_848EEA                    ;87929B;
    LDA.B $0F                            ;87929F;
    BEQ CODE_8792A7                      ;8792A1;
    LDA.B #$06                           ;8792A3;
    STA.B $02                            ;8792A5;

CODE_8792A7:
    RTS                                  ;8792A7;

CODE_8792A8:
    INC.B $34                            ;8792A8;
    LDA.B $34                            ;8792AA;
    LSR A                                ;8792AC;
    BCC CODE_8792D7                      ;8792AD;
    LDA.B #$0C                           ;8792AF;
    JSL.L CODE_8088CD                    ;8792B1;
    LDA.B $27                            ;8792B5;
    AND.B #$7F                           ;8792B7;
    INC A                                ;8792B9;
    STA.B $27                            ;8792BA;
    CMP.B #$20                           ;8792BC;
    BCC CODE_8792D7                      ;8792BE;
    LDA.B #$08                           ;8792C0;
    STA.B $02                            ;8792C2;
    REP #$20                             ;8792C4;
    LDA.W #$0080                         ;8792C6;
    STA.W $1E74                          ;8792C9;
    STA.W $1E76                          ;8792CC;
    LDA.W #$0002                         ;8792CF;
    STA.W $1E54                          ;8792D2;
    SEP #$20                             ;8792D5;

CODE_8792D7:
    LDA.B #$80                           ;8792D7;
    TSB.B $27                            ;8792D9;
    RTS                                  ;8792DB;

CODE_8792DC:
    DEC.B $34                            ;8792DC;
    BNE CODE_879302                      ;8792DE;
    LDA.B #$04                           ;8792E0;
    STA.B $01                            ;8792E2;
    STZ.B $02                            ;8792E4;
    JSL.L CODE_849FFE                    ;8792E6;
    STZ.W $0C0C                          ;8792EA;
    REP #$20                             ;8792ED;
    LDA.W #$0008                         ;8792EF;
    STA.W $1E54                          ;8792F2;
    SEP #$20                             ;8792F5;
    LDA.W $1F26                          ;8792F7;
    BEQ CODE_879302                      ;8792FA;
    LDA.B #$1E                           ;8792FC;
    JSL.L CODE_8087A2                    ;8792FE;

CODE_879302:
    RTS                                  ;879302;

CODE_879303:
    LDA.B $33                            ;879303;
    TSB.B $11                            ;879305;
    LDX.B $02                            ;879307;
    JSR.W (PTR16_879394,X)               ;879309;
    LDA.B #$08                           ;87930C;
    LDX.B $39                            ;87930E;
    BEQ CODE_879314                      ;879310;
    LDA.B #$05                           ;879312;

CODE_879314:
    STA.B $28                            ;879314;
    JSL.L CODE_849B43                    ;879316;
    BEQ CODE_87936F                      ;87931A;
    BPL CODE_879350                      ;87931C;
    LDA.B #$06                           ;87931E;
    STA.B $01                            ;879320;
    STZ.B $02                            ;879322;
    STZ.B $03                            ;879324;
    LDA.B #$01                           ;879326;
    STA.W $1F0C                          ;879328;
    STA.W $0BD8                          ;87932B;
    LDA.W $1F7A                          ;87932E;
    CMP.B #$09                           ;879331;
    BCS CODE_87933B                      ;879333;
    LDA.B #$04                           ;879335;
    JSL.L CODE_848000                    ;879337;

CODE_87933B:
    LDA.B #$14                           ;87933B;
    JSL.L CODE_848F07                    ;87933D;
    LDA.B #$15                           ;879341;
    STA.B $37                            ;879343;
    JSL.L CODE_84AC9B                    ;879345;
    LDA.B #$13                           ;879349;
    JSL.L CODE_8088A2                    ;87934B;
    RTL                                  ;87934F;

CODE_879350:
    LDA.B $39                            ;879350;
    BNE CODE_87936F                      ;879352;
    LDA.B #$3C                           ;879354;
    STA.B $39                            ;879356;
    LDA.B #$13                           ;879358;
    JSL.L CODE_8088A2                    ;87935A;
    LDA.W $1F1D                          ;87935E;
    CMP.B #$0D                           ;879361;
    BEQ CODE_879369                      ;879363;
    CMP.B #$16                           ;879365;
    BNE CODE_87936F                      ;879367;

CODE_879369:
    LDA.B $36                            ;879369;
    BEQ CODE_87936F                      ;87936B;
    DEC.B $36                            ;87936D;

CODE_87936F:
    LDA.B $39                            ;87936F;
    BEQ CODE_87937E                      ;879371;
    DEC A                                ;879373;
    STA.B $39                            ;879374;
    AND.B #$03                           ;879376;
    BNE CODE_87937E                      ;879378;
    LDA.B #$0E                           ;87937A;
    TRB.B $11                            ;87937C;

CODE_87937E:
    JSL.L CODE_849B03                    ;87937E;
    LDA.W $0BCF                          ;879382;
    AND.B #$7F                           ;879385;
    BNE CODE_87938D                      ;879387;
    LDA.B #$01                           ;879389;
    STA.B $30                            ;87938B;

CODE_87938D:
    JSR.W CODE_87971B                    ;87938D;
    JML.L CODE_8280B4                    ;879390;

PTR16_879394:
    dw CODE_87939C                       ;879394;
    dw CODE_879475                       ;879396;
    dw CODE_879503                       ;879398;
    dw CODE_8795B4                       ;87939A;

CODE_87939C:
    LDX.B $03                            ;87939C;
    JMP.W (PTR16_8793A1,X)               ;87939E;

PTR16_8793A1:
    dw CODE_8793AD                       ;8793A1;
    dw CODE_8793D7                       ;8793A3;
    dw CODE_8793F0                       ;8793A5;
    dw CODE_87940F                       ;8793A7;
    dw CODE_879442                       ;8793A9;
    dw CODE_879461                       ;8793AB;

CODE_8793AD:
    LDA.B #$02                           ;8793AD;
    STA.B $03                            ;8793AF;
    JSL.L CODE_84AC9B                    ;8793B1;
    LDA.B #$01                           ;8793B5;
    JSL.L CODE_848F07                    ;8793B7;
    LDA.B #$07                           ;8793BB;
    STA.B $37                            ;8793BD;
    REP #$20                             ;8793BF;
    LDA.W $0BAD                          ;8793C1;
    SEC                                  ;8793C4;
    SBC.B $05                            ;8793C5;
    ASL A                                ;8793C7;
    ASL A                                ;8793C8;
    STA.B $1A                            ;8793C9;
    LDA.W #$0593                         ;8793CB;
    STA.B $1C                            ;8793CE;
    SEP #$20                             ;8793D0;
    LDA.B #$30                           ;8793D2;
    STA.B $1E                            ;8793D4;
    RTS                                  ;8793D6;

CODE_8793D7:
    JSL.L CODE_848EEA                    ;8793D7;
    JSL.L CODE_8491BE                    ;8793DB;
    LDA.B $0F                            ;8793DF;
    BPL CODE_8793EF                      ;8793E1;
    LDA.B #$04                           ;8793E3;
    STA.B $03                            ;8793E5;
    LDA.B #$FF                           ;8793E7;
    STA.B $2F                            ;8793E9;
    JSL.L CODE_8281E8                    ;8793EB;

CODE_8793EF:
    RTS                                  ;8793EF;

CODE_8793F0:
    JSL.L CODE_8281E8                    ;8793F0;
    JSL.L CODE_848EEA                    ;8793F4;
    JSL.L CODE_8491BE                    ;8793F8;
    LDA.B $1D                            ;8793FC;
    BPL CODE_87940E                      ;8793FE;
    LDA.B #$06                           ;879400;
    STA.B $03                            ;879402;
    LDA.B #$03                           ;879404;
    JSL.L CODE_848F07                    ;879406;
    LDA.B #$09                           ;87940A;
    STA.B $37                            ;87940C;

CODE_87940E:
    RTS                                  ;87940E;

CODE_87940F:
    JSL.L CODE_8281E8                    ;87940F;
    JSL.L CODE_848EEA                    ;879413;
    JSL.L CODE_8491BE                    ;879417;
    LDA.B $2B                            ;87941B;
    AND.B #$04                           ;87941D;
    BEQ CODE_879441                      ;87941F;
    LDA.B #$08                           ;879421;
    STA.B $03                            ;879423;
    LDA.B #$04                           ;879425;
    JSL.L CODE_848F07                    ;879427;
    LDA.B #$0A                           ;87942B;
    STA.B $37                            ;87942D;
    STZ.B $2F                            ;87942F;
    LDA.B #$4D                           ;879431;
    JSL.L CODE_8088A2                    ;879433;
    LDA.B #$1E                           ;879437;
    STA.B $3A                            ;879439;
    LDA.B #$4B                           ;87943B;
    JSL.L CODE_84A333                    ;87943D;

CODE_879441:
    RTS                                  ;879441;

CODE_879442:
    JSL.L CODE_848EEA                    ;879442;
    JSL.L CODE_8491BE                    ;879446;
    LDA.B $0F                            ;87944A;
    BPL CODE_879460                      ;87944C;
    LDA.B #$0A                           ;87944E;
    STA.B $03                            ;879450;
    LDA.B #$3C                           ;879452;
    STA.B $34                            ;879454;
    LDA.B #$00                           ;879456;
    JSL.L CODE_848F07                    ;879458;
    LDA.B #$06                           ;87945C;
    STA.B $37                            ;87945E;

CODE_879460:
    RTS                                  ;879460;

CODE_879461:
    JSL.L CODE_84AC9B                    ;879461;
    JSL.L CODE_848EEA                    ;879465;
    JSL.L CODE_8491BE                    ;879469;
    DEC.B $34                            ;87946D;
    BNE CODE_879474                      ;87946F;
    JMP.W CODE_879663                    ;879471;

CODE_879474:
    RTS                                  ;879474;

CODE_879475:
    LDX.B $03                            ;879475;
    JMP.W (PTR16_87947A,X)               ;879477;

PTR16_87947A:
    dw CODE_879480                       ;87947A;
    dw CODE_879497                       ;87947C;
    dw CODE_8794EF                       ;87947E;

CODE_879480:
    LDA.B #$02                           ;879480;
    STA.B $03                            ;879482;
    JSL.L CODE_84AC9B                    ;879484;
    LDA.B #$0D                           ;879488;
    JSL.L CODE_848F07                    ;87948A;
    LDA.B #$16                           ;87948E;
    STA.B $37                            ;879490;
    JSL.L CODE_8491BE                    ;879492;
    RTS                                  ;879496;

CODE_879497:
    JSL.L CODE_848EEA                    ;879497;
    JSL.L CODE_8491BE                    ;87949B;
    LDA.B $0F                            ;87949F;
    BEQ CODE_8794EE                      ;8794A1;
    BMI CODE_8794DC                      ;8794A3;
    JSL.L CODE_828358                    ;8794A5;
    BNE CODE_8794D9                      ;8794A9;
    INC.W $0000,X                        ;8794AB;
    LDA.B #$21                           ;8794AE;
    STA.W $000A,X                        ;8794B0;
    LDA.B $11                            ;8794B3;
    AND.B #$40                           ;8794B5;
    STA.W $0011,X                        ;8794B7;
    ASL A                                ;8794BA;
    ASL A                                ;8794BB;
    REP #$20                             ;8794BC;
    LDA.W #$002E                         ;8794BE;
    BCS CODE_8794C6                      ;8794C1;
    LDA.W #$FFD2                         ;8794C3;

CODE_8794C6:
    CLC                                  ;8794C6;
    ADC.B $05                            ;8794C7;
    STA.W $0005,X                        ;8794C9;
    LDA.B $08                            ;8794CC;
    SEC                                  ;8794CE;
    SBC.W #$0006                         ;8794CF;
    STA.W $0008,X                        ;8794D2;
    TDC                                  ;8794D5;
    STA.W $000C,X                        ;8794D6;

CODE_8794D9:
    SEP #$30                             ;8794D9;
    RTS                                  ;8794DB;

CODE_8794DC:
    LDA.B #$00                           ;8794DC;
    JSL.L CODE_848F07                    ;8794DE;
    LDA.B #$06                           ;8794E2;
    STA.B $37                            ;8794E4;
    LDA.B #$3C                           ;8794E6;
    STA.B $34                            ;8794E8;
    LDA.B #$04                           ;8794EA;
    STA.B $03                            ;8794EC;

CODE_8794EE:
    RTS                                  ;8794EE;

CODE_8794EF:
    JSL.L CODE_84AC9B                    ;8794EF;
    JSL.L CODE_8491BE                    ;8794F3;
    JSL.L CODE_848EEA                    ;8794F7;
    DEC.B $34                            ;8794FB;
    BNE CODE_879502                      ;8794FD;
    JMP.W CODE_879663                    ;8794FF;

CODE_879502:
    RTS                                  ;879502;

CODE_879503:
    LDX.B $03                            ;879503;
    JMP.W (PTR16_879508,X)               ;879505;

PTR16_879508:
    dw CODE_87950E                       ;879508;
    dw CODE_87953C                       ;87950A;
    dw CODE_8795A0                       ;87950C;

CODE_87950E:
    LDA.B #$02                           ;87950E;
    STA.B $03                            ;879510;
    LDA.B #$05                           ;879512;
    JSL.L CODE_848F07                    ;879514;
    LDA.B #$0B                           ;879518;
    STA.B $37                            ;87951A;
    LDA.B $35                            ;87951C;
    BNE CODE_879537                      ;87951E;
    LDA.B #$04                           ;879520;
    STA.B $35                            ;879522;
    JSL.L CODE_849086                    ;879524;
    LSR A                                ;879528;
    BCC CODE_879537                      ;879529;
    AND.B #$0F                           ;87952B;
    CMP.B #$03                           ;87952D;
    BCS CODE_879535                      ;87952F;
    DEC.B $35                            ;879531;
    BRA CODE_879537                      ;879533;

CODE_879535:
    INC.B $35                            ;879535;

CODE_879537:
    JSL.L CODE_8491BE                    ;879537;
    RTS                                  ;87953B;

CODE_87953C:
    JSL.L CODE_84AC9B                    ;87953C;
    JSL.L CODE_848EEA                    ;879540;
    JSL.L CODE_8491BE                    ;879544;
    LDA.B $0F                            ;879548;
    BEQ CODE_87959D                      ;87954A;
    BMI CODE_879587                      ;87954C;
    JSL.L CODE_828358                    ;87954E;
    BNE CODE_879582                      ;879552;
    INC.W $0000,X                        ;879554;
    LDA.B #$20                           ;879557;
    STA.W $000A,X                        ;879559;
    LDA.B $11                            ;87955C;
    AND.B #$40                           ;87955E;
    STA.W $0011,X                        ;879560;
    ASL A                                ;879563;
    ASL A                                ;879564;
    REP #$20                             ;879565;
    LDA.W #$002A                         ;879567;
    BCS CODE_87956F                      ;87956A;
    LDA.W #$FFD6                         ;87956C;

CODE_87956F:
    CLC                                  ;87956F;
    ADC.B $05                            ;879570;
    STA.W $0005,X                        ;879572;
    LDA.B $08                            ;879575;
    SEC                                  ;879577;
    SBC.W #$0007                         ;879578;
    STA.W $0008,X                        ;87957B;
    TDC                                  ;87957E;
    STA.W $000C,X                        ;87957F;

CODE_879582:
    SEP #$30                             ;879582;
    DEC.B $35                            ;879584;
    RTS                                  ;879586;

CODE_879587:
    LDA.B $35                            ;879587;
    BNE CODE_87959D                      ;879589;
    LDA.B #$04                           ;87958B;
    STA.B $03                            ;87958D;
    LDA.B #$5A                           ;87958F;
    STA.B $34                            ;879591;
    LDA.B #$00                           ;879593;
    JSL.L CODE_848F07                    ;879595;
    LDA.B #$06                           ;879599;
    STA.B $37                            ;87959B;

CODE_87959D:
    JMP.W CODE_87973C                    ;87959D;

CODE_8795A0:
    JSL.L CODE_84AC9B                    ;8795A0;
    JSL.L CODE_848EEA                    ;8795A4;
    JSL.L CODE_8491BE                    ;8795A8;
    DEC.B $34                            ;8795AC;
    BNE CODE_8795B3                      ;8795AE;
    JMP.W CODE_879663                    ;8795B0;

CODE_8795B3:
    RTS                                  ;8795B3;

CODE_8795B4:
    LDX.B $03                            ;8795B4;
    JMP.W (PTR16_8795B9,X)               ;8795B6;

PTR16_8795B9:
    dw CODE_8795C1                       ;8795B9;
    dw CODE_8795D8                       ;8795BB;
    dw CODE_8795F3                       ;8795BD;
    dw CODE_879618                       ;8795BF;

CODE_8795C1:
    LDA.B #$02                           ;8795C1;
    STA.B $03                            ;8795C3;
    LDA.B #$0C                           ;8795C5;
    JSL.L CODE_848F07                    ;8795C7;
    LDA.B #$13                           ;8795CB;
    STA.B $37                            ;8795CD;
    JSL.L CODE_8491BE                    ;8795CF;
    JSL.L CODE_84AC9B                    ;8795D3;
    RTS                                  ;8795D7;

CODE_8795D8:
    JSL.L CODE_848EEA                    ;8795D8;
    JSL.L CODE_8491BE                    ;8795DC;
    LDA.B $0F                            ;8795E0;
    BPL CODE_8795F2                      ;8795E2;
    LDA.B #$3C                           ;8795E4;
    STA.B $34                            ;8795E6;
    LDA.B #$04                           ;8795E8;
    STA.B $03                            ;8795EA;
    LDA.B #$A1                           ;8795EC;
    JSL.L CODE_8088CD                    ;8795EE;

CODE_8795F2:
    RTS                                  ;8795F2;

CODE_8795F3:
    JSL.L CODE_8491BE                    ;8795F3;
    DEC.B $34                            ;8795F7;
    BNE CODE_879617                      ;8795F9;
    LDA.B $38                            ;8795FB;
    EOR.B #$01                           ;8795FD;
    STA.B $38                            ;8795FF;
    JSL.L CODE_848000                    ;879601;
    LDA.B #$00                           ;879605;
    JSL.L CODE_848F07                    ;879607;
    LDA.B #$06                           ;87960B;
    STA.B $37                            ;87960D;
    LDA.B #$06                           ;87960F;
    STA.B $03                            ;879611;
    LDA.B #$3C                           ;879613;
    STA.B $34                            ;879615;

CODE_879617:
    RTS                                  ;879617;

CODE_879618:
    JSL.L CODE_8491BE                    ;879618;
    JSL.L CODE_84AC9B                    ;87961C;
    DEC.B $34                            ;879620;
    BNE CODE_879638                      ;879622;
    LDA.B $35                            ;879624;
    BEQ CODE_879635                      ;879626;
    LDA.B #$04                           ;879628;
    STA.B $02                            ;87962A;
    STA.B $3B                            ;87962C;
    LDA.B #$01                           ;87962E;
    STA.B $3C                            ;879630;
    STZ.B $03                            ;879632;
    RTS                                  ;879634;

CODE_879635:
    JMP.W CODE_879663                    ;879635;

CODE_879638:
    RTS                                  ;879638;

CODE_879639:
    JSL.L CODE_84A66D                    ;879639;
    BPL CODE_879658                      ;87963D;
    LDA.W $1F7A                          ;87963F;
    CMP.B #$09                           ;879642;
    BCC CODE_879654                      ;879644;
    LDA.B #$1C                           ;879646;
    JSL.L CODE_8087A2                    ;879648;
    LDA.B #$F5                           ;87964C;
    LDY.B #$03                           ;87964E;
    JSL.L CODE_80887F                    ;879650;

CODE_879654:
    JML.L CODE_828398                    ;879654;

CODE_879658:
    LDA.B $03                            ;879658;
    CMP.B #$14                           ;87965A;
    BCS CODE_879662                      ;87965C;
    JML.L CODE_8280B4                    ;87965E;

CODE_879662:
    RTL                                  ;879662;

CODE_879663:
    STZ.B $03                            ;879663;
    REP #$20                             ;879665;
    LDA.W $0BB0                          ;879667;
    SEC                                  ;87966A;
    SBC.W $1E50                          ;87966B;
    CMP.W #$0070                         ;87966E;
    BCS CODE_879687                      ;879671;
    SEP #$20                             ;879673;
    STZ.B $02                            ;879675;
    STZ.B $03                            ;879677;
    LDA.B $3B                            ;879679;
    BEQ CODE_879684                      ;87967B;
    STZ.B $3B                            ;87967D;
    LDA.B #$01                           ;87967F;
    STA.B $3C                            ;879681;
    RTS                                  ;879683;

CODE_879684:
    INC.B $3C                            ;879684;
    RTS                                  ;879686;

CODE_879687:
    REP #$20                             ;879687;
    LDA.B $05                            ;879689;
    SEC                                  ;87968B;
    SBC.W $0BAD                          ;87968C;
    BCS CODE_879695                      ;87968F;
    EOR.W #$FFFF                         ;879691;
    INC A                                ;879694;

CODE_879695:
    CMP.W #$0080                         ;879695;
    SEP #$20                             ;879698;
    BCC CODE_8796A0                      ;87969A;
    LDA.B #$20                           ;87969C;
    BRA CODE_8796AA                      ;87969E;

CODE_8796A0:
    CMP.B #$50                           ;8796A0;
    BCC CODE_8796A8                      ;8796A2;
    LDA.B #$10                           ;8796A4;
    BRA CODE_8796AA                      ;8796A6;

CODE_8796A8:
    LDA.B #$00                           ;8796A8;

CODE_8796AA:
    LDX.B $36                            ;8796AA;
    BNE CODE_8796B1                      ;8796AC;
    CLC                                  ;8796AE;
    ADC.B #$30                           ;8796AF;

CODE_8796B1:
    STA.W $0000                          ;8796B1;
    JSL.L CODE_849086                    ;8796B4;
    AND.B #$0F                           ;8796B8;
    CLC                                  ;8796BA;
    ADC.W $0000                          ;8796BB;
    TAX                                  ;8796BE;
    LDA.W DATA8_86C843,X                 ;8796BF;
    STA.B $02                            ;8796C2;
    CMP.B #$02                           ;8796C4;
    BNE CODE_8796F9                      ;8796C6;
    LDA.B #$02                           ;8796C8;
    STA.W $0000                          ;8796CA;
    REP #$10                             ;8796CD;
    LDX.W #$1428                         ;8796CF;

CODE_8796D2:
    LDA.W $0000,X                        ;8796D2;
    BEQ CODE_8796E8                      ;8796D5;
    LDA.W $000A,X                        ;8796D7;
    CMP.B #$21                           ;8796DA;
    BNE CODE_8796E8                      ;8796DC;
    DEC.W $0000                          ;8796DE;
    BNE CODE_8796E8                      ;8796E1;
    SEP #$10                             ;8796E3;
    JMP.W CODE_879663                    ;8796E5;

CODE_8796E8:
    REP #$20                             ;8796E8;
    TXA                                  ;8796EA;
    CLC                                  ;8796EB;
    ADC.W #$0040                         ;8796EC;
    TAX                                  ;8796EF;
    SEP #$20                             ;8796F0;
    CPX.W #$1628                         ;8796F2;
    BCC CODE_8796D2                      ;8796F5;
    SEP #$10                             ;8796F7;

CODE_8796F9:
    LDA.B $02                            ;8796F9;
    CMP.B $3B                            ;8796FB;
    BEQ CODE_879707                      ;8796FD;
    STA.B $3B                            ;8796FF;
    LDA.B #$01                           ;879701;
    STA.B $3C                            ;879703;
    BRA CODE_879717                      ;879705;

CODE_879707:
    LDA.B $3C                            ;879707;
    CMP.B #$03                           ;879709;
    BCC CODE_879714                      ;87970B;
    LDX.B $36                            ;87970D;
    BEQ CODE_879714                      ;87970F;
    JMP.W CODE_879687                    ;879711;

CODE_879714:
    INC A                                ;879714;
    STA.B $3C                            ;879715;

CODE_879717:
    JSR.W CODE_87973C                    ;879717;
    RTS                                  ;87971A;

CODE_87971B:
    LDA.B $3A                            ;87971B;
    BEQ CODE_87973B                      ;87971D;
    BMI CODE_87973B                      ;87971F;
    LDA.W $0C32                          ;879721;
    ORA.W $1F0C                          ;879724;
    BNE CODE_879739                      ;879727;
    LDA.W $0C06                          ;879729;
    AND.B #$04                           ;87972C;
    BEQ CODE_879739                      ;87972E;
    LDA.B $3A                            ;879730;
    JSL.L CODE_84A008                    ;879732;
    STZ.B $3A                            ;879736;
    RTS                                  ;879738;

CODE_879739:
    DEC.B $3A                            ;879739;

CODE_87973B:
    RTS                                  ;87973B;

CODE_87973C:
    LDA.B $36                            ;87973C;
    BEQ CODE_879793                      ;87973E;
    REP #$10                             ;879740;
    LDX.W #$1428                         ;879742;

CODE_879745:
    LDA.W $0000,X                        ;879745;
    BEQ CODE_879782                      ;879748;
    LDA.W $000A,X                        ;87974A;
    CMP.B #$21                           ;87974D;
    BNE CODE_879782                      ;87974F;
    LDA.B $38                            ;879751;
    LSR A                                ;879753;
    REP #$20                             ;879754;
    BCC CODE_879761                      ;879756;
    LDA.W $0005,X                        ;879758;
    SEC                                  ;87975B;
    SBC.W $1E5E                          ;87975C;
    BRA CODE_87976C                      ;87975F;

CODE_879761:
    LDA.W $1E60                          ;879761;
    CLC                                  ;879764;
    ADC.W #$0100                         ;879765;
    SEC                                  ;879768;
    SBC.W $0005,X                        ;879769;

CODE_87976C:
    BCC CODE_879782                      ;87976C;
    CMP.W #$0040                         ;87976E;
    BCS CODE_879782                      ;879771;
    SEP #$30                             ;879773;
    LDA.B #$06                           ;879775;
    STA.B $02                            ;879777;
    STA.B $3B                            ;879779;
    LDA.B #$01                           ;87977B;
    STA.B $3C                            ;87977D;
    STZ.B $03                            ;87977F;
    RTS                                  ;879781;

CODE_879782:
    REP #$20                             ;879782;
    TXA                                  ;879784;
    CLC                                  ;879785;
    ADC.W #$0040                         ;879786;
    TAX                                  ;879789;
    SEP #$20                             ;87978A;
    CPX.W #$0040                         ;87978C;
    BCC CODE_879745                      ;87978F;
    SEP #$10                             ;879791;

CODE_879793:
    RTS                                  ;879793;

CODE_879794:
    LDX.B $01                            ;879794;
    JSR.W (PTR16_8797AA,X)               ;879796;
    JSL.L CODE_82806E                    ;879799;
    BCC CODE_8797A6                      ;87979D;
    JSR.W CODE_879930                    ;87979F;
    JML.L CODE_828387                    ;8797A2;

CODE_8797A6:
    JML.L CODE_8280B4                    ;8797A6;

PTR16_8797AA:
    dw CODE_8797B0                       ;8797AA;
    dw CODE_8797F7                       ;8797AC;
    dw CODE_8798BE                       ;8797AE;

CODE_8797B0:
    JSL.L CODE_82827D                    ;8797B0;
    LDA.B #$01                           ;8797B4;
    STA.B $27                            ;8797B6;
    STA.B $30                            ;8797B8;
    LDA.B #$04                           ;8797BA;
    STA.B $12                            ;8797BC;
    STA.B $2F                            ;8797BE;
    STZ.B $28                            ;8797C0;
    STZ.B $35                            ;8797C2;
    STZ.B $36                            ;8797C4;
    LDA.B $0B                            ;8797C6;
    REP #$20                             ;8797C8;
    BMI CODE_8797D3                      ;8797CA;
    LDA.W #$0180                         ;8797CC;
    STA.B $1A                            ;8797CF;
    BRA CODE_8797DC                      ;8797D1;

CODE_8797D3:
    LDA.W #$FE80                         ;8797D3;
    STA.B $1A                            ;8797D6;
    LDA.B $05                            ;8797D8;
    STA.B $37                            ;8797DA;

CODE_8797DC:
    STZ.B $1C                            ;8797DC;
    LDA.W #$CA3F                         ;8797DE;
    STA.B $20                            ;8797E1;
    SEP #$20                             ;8797E3;
    STZ.B $1F                            ;8797E5;
    STZ.B $1E                            ;8797E7;
    LDA.B #$00                           ;8797E9;
    JSL.L CODE_848F07                    ;8797EB;
    LDA.B #$02                           ;8797EF;
    STA.B $01                            ;8797F1;
    JSR.W CODE_8798E5                    ;8797F3;
    RTS                                  ;8797F6;

CODE_8797F7:
    LDA.B $35                            ;8797F7;
    BNE CODE_8797FD                      ;8797F9;
    STZ.B $36                            ;8797FB;

CODE_8797FD:
    LDA.B $36                            ;8797FD;
    BNE CODE_879809                      ;8797FF;
    JSL.L CODE_82823E                    ;879801;
    JSL.L CODE_8491BE                    ;879805;

CODE_879809:
    JSL.L CODE_848EEA                    ;879809;
    JSL.L CODE_84AB77                    ;87980D;
    REP #$10                             ;879811;
    LDX.W #$CA49                         ;879813;
    STX.B $20                            ;879816;
    SEP #$10                             ;879818;
    JSL.L CODE_84AB4C                    ;87981A;
    REP #$10                             ;87981E;
    LDX.W #$CA3F                         ;879820;
    STX.B $20                            ;879823;
    LDX.B $33                            ;879825;
    LDA.B $35                            ;879827;
    BEQ CODE_879847                      ;879829;
    BPL CODE_87983E                      ;87982B;
    REP #$20                             ;87982D;
    STZ.W $0000,X                        ;87982F;
    STZ.W $000E,X                        ;879832;
    STZ.W $0002,X                        ;879835;
    SEP #$20                             ;879838;
    STZ.B $35                            ;87983A;
    BRA CODE_879847                      ;87983C;

CODE_87983E:
    REP #$20                             ;87983E;
    LDA.B $05                            ;879840;
    STA.W $0005,X                        ;879842;
    SEP #$20                             ;879845;

CODE_879847:
    LDA.B $1B                            ;879847;
    BMI CODE_879884                      ;879849;
    LDA.B $0B                            ;87984B;
    BPL CODE_87985F                      ;87984D;
    REP #$20                             ;87984F;
    LDA.B $05                            ;879851;
    SEC                                  ;879853;
    SBC.B $37                            ;879854;
    BMI CODE_8798BB                      ;879856;
    CMP.W #$0030                         ;879858;
    SEP #$20                             ;87985B;
    BCS CODE_879865                      ;87985D;

CODE_87985F:
    LDA.B $2B                            ;87985F;
    BIT.B #$01                           ;879861;
    BEQ CODE_8798BB                      ;879863;

CODE_879865:
    LDA.B $35                            ;879865;
    BNE CODE_879873                      ;879867;
    LDA.B #$04                           ;879869;
    STA.B $01                            ;87986B;
    LDA.B #$40                           ;87986D;
    STA.B $39                            ;87986F;
    BRA CODE_87987D                      ;879871;

CODE_879873:
    LDX.B $33                            ;879873;
    LDA.W $0011,X                        ;879875;
    ORA.B #$40                           ;879878;
    STA.W $0011,X                        ;87987A;

CODE_87987D:
    LDX.W #$FE80                         ;87987D;
    STX.B $1A                            ;879880;
    BRA CODE_8798BB                      ;879882;

CODE_879884:
    LDA.B $0B                            ;879884;
    BPL CODE_879898                      ;879886;
    REP #$20                             ;879888;
    LDA.B $37                            ;87988A;
    SEC                                  ;87988C;
    SBC.B $05                            ;87988D;
    BMI CODE_8798BB                      ;87988F;
    CMP.W #$0030                         ;879891;
    SEP #$20                             ;879894;
    BCS CODE_87989E                      ;879896;

CODE_879898:
    LDA.B $2B                            ;879898;
    BIT.B #$02                           ;87989A;
    BEQ CODE_8798BB                      ;87989C;

CODE_87989E:
    LDA.B $35                            ;87989E;
    BNE CODE_8798AC                      ;8798A0;
    LDA.B #$04                           ;8798A2;
    STA.B $01                            ;8798A4;
    LDA.B #$40                           ;8798A6;
    STA.B $39                            ;8798A8;
    BRA CODE_8798B6                      ;8798AA;

CODE_8798AC:
    LDX.B $33                            ;8798AC;
    LDA.W $0011,X                        ;8798AE;
    AND.B #$BF                           ;8798B1;
    STA.W $0011,X                        ;8798B3;

CODE_8798B6:
    LDX.W #$0180                         ;8798B6;
    STX.B $1A                            ;8798B9;

CODE_8798BB:
    SEP #$10                             ;8798BB;
    RTS                                  ;8798BD;

CODE_8798BE:
    DEC.B $39                            ;8798BE;
    BNE CODE_8798C6                      ;8798C0;
    LDA.B #$02                           ;8798C2;
    STA.B $01                            ;8798C4;

CODE_8798C6:
    JSL.L CODE_848EEA                    ;8798C6;
    JSL.L CODE_84AB77                    ;8798CA;
    REP #$10                             ;8798CE;
    LDX.W #$CA49                         ;8798D0;
    STX.B $20                            ;8798D3;
    SEP #$10                             ;8798D5;
    JSL.L CODE_84AB4C                    ;8798D7;
    REP #$10                             ;8798DB;
    LDX.W #$CA3F                         ;8798DD;
    STX.B $20                            ;8798E0;
    SEP #$10                             ;8798E2;
    RTS                                  ;8798E4;

CODE_8798E5:
    REP #$10                             ;8798E5;
    LDA.B $0B                            ;8798E7;
    BIT.B #$01                           ;8798E9;
    BEQ CODE_87992D                      ;8798EB;
    JSL.L CODE_828321                    ;8798ED;
    BNE CODE_87992D                      ;8798F1;
    INC.B $35                            ;8798F3;
    STX.B $33                            ;8798F5;
    INC.W $0000,X                        ;8798F7;
    LDA.B #$17                           ;8798FA;
    STA.W $000A,X                        ;8798FC;
    LDA.L $7F8287                        ;8798FF;
    STA.W $0018,X                        ;879903;
    LDA.B #$8D                           ;879906;
    STA.W $0016,X                        ;879908;
    LDA.B $11                            ;87990B;
    STA.W $0011,X                        ;87990D;
    LDA.B #$80                           ;879910;
    STA.W $000B,X                        ;879912;
    LDA.B #$02                           ;879915;
    STA.W $0001,X                        ;879917;
    REP #$21                             ;87991A;
    LDA.B $08                            ;87991C;
    SBC.W #$0010                         ;87991E;
    STA.W $0008,X                        ;879921;
    LDA.B $05                            ;879924;
    STA.W $0005,X                        ;879926;
    TDC                                  ;879929;
    STA.W $0033,X                        ;87992A;

CODE_87992D:
    SEP #$30                             ;87992D;
    RTS                                  ;87992F;

CODE_879930:
    LDA.B $35                            ;879930;
    BEQ CODE_879943                      ;879932;
    REP #$30                             ;879934;
    LDX.B $33                            ;879936;
    STZ.W $0000,X                        ;879938;
    STZ.W $000E,X                        ;87993B;
    STZ.W $0002,X                        ;87993E;
    SEP #$30                             ;879941;

CODE_879943:
    RTS                                  ;879943;

CODE_879944:
    LDX.B $01                            ;879944;
    JSR.W (PTR16_87997F,X)               ;879946;
    LDA.B $36                            ;879949;
    TSB.B $11                            ;87994B;
    JSL.L CODE_849B43                    ;87994D;
    BEQ CODE_87996B                      ;879951;
    BPL CODE_879967                      ;879953;
    JSL.L CODE_84A4AB                    ;879955;
    LDA.B $0B                            ;879959;
    BMI CODE_879973                      ;87995B;
    LDA.B #$00                           ;87995D;
    JSL.L CODE_84A37F                    ;87995F;
    JML.L CODE_828387                    ;879963;

CODE_879967:
    LDA.B #$0E                           ;879967;
    TRB.B $11                            ;879969;

CODE_87996B:
    JSL.L CODE_849B03                    ;87996B;
    JML.L CODE_8280B4                    ;87996F;

CODE_879973:
    REP #$10                             ;879973;
    LDX.B $33                            ;879975;
    LDA.B #$FF                           ;879977;
    STA.W $0035,X                        ;879979;
    SEP #$10                             ;87997C;
    RTL                                  ;87997E;

PTR16_87997F:
    dw CODE_879987                       ;87997F;
    dw CODE_87998B                       ;879981;
    dw CODE_8799C8                       ;879983;
    dw CODE_8799F9                       ;879985;

CODE_879987:
    JSL.L CODE_82827D                    ;879987;

CODE_87998B:
    LDA.B $11                            ;87998B;
    AND.B #$0E                           ;87998D;
    STA.B $36                            ;87998F;
    LDA.B #$05                           ;879991;
    STA.B $27                            ;879993;
    LDA.B #$03                           ;879995;
    STA.B $26                            ;879997;
    STA.B $28                            ;879999;
    LDA.B #$04                           ;87999B;
    STA.B $12                            ;87999D;
    STZ.B $30                            ;87999F;
    REP #$20                             ;8799A1;
    LDA.W #$CA4D                         ;8799A3;
    STA.B $20                            ;8799A6;
    SEP #$20                             ;8799A8;

CODE_8799AA:
    LDA.B $0B                            ;8799AA;
    LSR A                                ;8799AC;
    BCS CODE_8799B7                      ;8799AD;
    LDA.B #$00                           ;8799AF;
    JSL.L CODE_848F07                    ;8799B1;
    BRA CODE_8799BD                      ;8799B5;

CODE_8799B7:
    LDA.B #$08                           ;8799B7;
    JSL.L CODE_848F07                    ;8799B9;

CODE_8799BD:
    LDA.B #$04                           ;8799BD;
    STA.B $01                            ;8799BF;
    STZ.B $02                            ;8799C1;
    LDA.B #$30                           ;8799C3;
    STA.B $39                            ;8799C5;
    RTS                                  ;8799C7;

CODE_8799C8:
    DEC.B $39                            ;8799C8;
    BNE CODE_8799F4                      ;8799CA;
    INC.B $39                            ;8799CC;
    LDA.B $0F                            ;8799CE;
    BIT.B #$02                           ;8799D0;
    BEQ CODE_8799F4                      ;8799D2;
    LDA.B $0B                            ;8799D4;
    LSR A                                ;8799D6;
    BCS CODE_8799E5                      ;8799D7;
    LDA.B #$04                           ;8799D9;
    STA.B $02                            ;8799DB;
    LDA.B #$01                           ;8799DD;
    JSL.L CODE_848F07                    ;8799DF;
    BRA CODE_8799EF                      ;8799E3;

CODE_8799E5:
    LDA.B #$06                           ;8799E5;
    STA.B $02                            ;8799E7;
    LDA.B #$09                           ;8799E9;
    JSL.L CODE_848F07                    ;8799EB;

CODE_8799EF:
    LDA.B #$06                           ;8799EF;
    STA.B $01                            ;8799F1;
    RTS                                  ;8799F3;

CODE_8799F4:
    JSL.L CODE_848EEA                    ;8799F4;
    RTS                                  ;8799F8;

CODE_8799F9:
    JSL.L CODE_848EEA                    ;8799F9;
    LDA.B $0B                            ;8799FD;
    BPL CODE_879A0A                      ;8799FF;
    REP #$10                             ;879A01;
    LDX.B $33                            ;879A03;
    STZ.W $0036,X                        ;879A05;
    SEP #$10                             ;879A08;

CODE_879A0A:
    LDA.B $0F                            ;879A0A;
    BMI CODE_8799AA                      ;879A0C;
    BEQ CODE_879A25                      ;879A0E;
    LDA.B $0B                            ;879A10;
    BPL CODE_879A1D                      ;879A12;
    REP #$10                             ;879A14;
    LDX.B $33                            ;879A16;
    INC.W $0036,X                        ;879A18;
    SEP #$10                             ;879A1B;

CODE_879A1D:
    LDA.B $0F                            ;879A1D;
    CMP.B #$02                           ;879A1F;
    BEQ CODE_879A26                      ;879A21;
    BMI CODE_879A5B                      ;879A23;

CODE_879A25:
    RTS                                  ;879A25;

CODE_879A26:
    REP #$10                             ;879A26;
    JSL.L CODE_828358                    ;879A28;
    BNE CODE_879A58                      ;879A2C;
    LDY.W #$0000                         ;879A2E;
    JSR.W CODE_879A90                    ;879A31;
    JSL.L CODE_8282D3                    ;879A34;
    BNE CODE_879A58                      ;879A38;
    LDY.W #$0000                         ;879A3A;
    JSR.W CODE_879B3A                    ;879A3D;
    JSL.L CODE_828358                    ;879A40;
    BNE CODE_879A58                      ;879A44;
    LDY.W #$0004                         ;879A46;
    JSR.W CODE_879A90                    ;879A49;
    JSL.L CODE_8282D3                    ;879A4C;
    BNE CODE_879A58                      ;879A50;
    LDY.W #$0004                         ;879A52;
    JSR.W CODE_879B3A                    ;879A55;

CODE_879A58:
    SEP #$10                             ;879A58;
    RTS                                  ;879A5A;

CODE_879A5B:
    REP #$10                             ;879A5B;
    JSL.L CODE_828358                    ;879A5D;
    BNE CODE_879A8D                      ;879A61;
    LDY.W #$0010                         ;879A63;
    JSR.W CODE_879ADB                    ;879A66;
    JSL.L CODE_8282D3                    ;879A69;
    BNE CODE_879A8D                      ;879A6D;
    LDY.W #$0010                         ;879A6F;
    JSR.W CODE_879B3A                    ;879A72;
    JSL.L CODE_828358                    ;879A75;
    BNE CODE_879A8D                      ;879A79;
    LDY.W #$0014                         ;879A7B;
    JSR.W CODE_879ADB                    ;879A7E;
    JSL.L CODE_8282D3                    ;879A81;
    BNE CODE_879A8D                      ;879A85;
    LDY.W #$0014                         ;879A87;
    JSR.W CODE_879B3A                    ;879A8A;

CODE_879A8D:
    SEP #$10                             ;879A8D;
    RTS                                  ;879A8F;

CODE_879A90:
    INC.W $0000,X                        ;879A90;
    LDA.B $18                            ;879A93;
    STA.W $0018,X                        ;879A95;
    LDA.B $11                            ;879A98;
    ORA.B $36                            ;879A9A;
    STA.W $0011,X                        ;879A9C;
    LDA.B $16                            ;879A9F;
    STA.W $0016,X                        ;879AA1;
    LDA.B #$13                           ;879AA4;
    STA.W $000A,X                        ;879AA6;
    LDA.B #$05                           ;879AA9;
    STA.W $000B,X                        ;879AAB;
    REP #$20                             ;879AAE;
    TYA                                  ;879AB0;
    BNE CODE_879AB8                      ;879AB1;
    LDA.W #$FE00                         ;879AB3;
    BRA CODE_879ABB                      ;879AB6;

CODE_879AB8:
    LDA.W #$0200                         ;879AB8;

CODE_879ABB:
    STA.W $001A,X                        ;879ABB;
    LDA.W DATA8_86CA5C,Y                 ;879ABE;
    CLC                                  ;879AC1;
    ADC.B $05                            ;879AC2;
    STA.W $0005,X                        ;879AC4;
    INY                                  ;879AC7;
    INY                                  ;879AC8;
    LDA.W DATA8_86CA5C,Y                 ;879AC9;
    CLC                                  ;879ACC;
    ADC.B $08                            ;879ACD;
    STA.W $0008,X                        ;879ACF;
    LDA.W #$CA57                         ;879AD2;
    STA.W $0020,X                        ;879AD5;
    SEP #$20                             ;879AD8;
    RTS                                  ;879ADA;

CODE_879ADB:
    INC.W $0000,X                        ;879ADB;
    LDA.B $18                            ;879ADE;
    STA.W $0018,X                        ;879AE0;
    LDA.B $11                            ;879AE3;
    ORA.B $36                            ;879AE5;
    STA.W $0011,X                        ;879AE7;
    LDA.B $16                            ;879AEA;
    STA.W $0016,X                        ;879AEC;
    LDA.B #$27                           ;879AEF;
    STA.W $000A,X                        ;879AF1;
    REP #$20                             ;879AF4;
    TYA                                  ;879AF6;
    AND.W #$0004                         ;879AF7;
    BNE CODE_879B01                      ;879AFA;
    LDA.W #$FE90                         ;879AFC;
    BRA CODE_879B04                      ;879AFF;

CODE_879B01:
    LDA.W #$0170                         ;879B01;

CODE_879B04:
    STA.W $001A,X                        ;879B04;
    LDA.B $0B                            ;879B07;
    LSR A                                ;879B09;
    BCS CODE_879B11                      ;879B0A;
    LDA.W #$0170                         ;879B0C;
    BRA CODE_879B1A                      ;879B0F;

CODE_879B11:
    TYA                                  ;879B11;
    CLC                                  ;879B12;
    ADC.W #$0008                         ;879B13;
    TAY                                  ;879B16;
    LDA.W #$FE90                         ;879B17;

CODE_879B1A:
    STA.W $001C,X                        ;879B1A;
    LDA.W DATA8_86CA5C,Y                 ;879B1D;
    CLC                                  ;879B20;
    ADC.B $05                            ;879B21;
    STA.W $0005,X                        ;879B23;
    INY                                  ;879B26;
    INY                                  ;879B27;
    LDA.W DATA8_86CA5C,Y                 ;879B28;
    CLC                                  ;879B2B;
    ADC.B $08                            ;879B2C;
    STA.W $0008,X                        ;879B2E;
    LDA.W #$CA57                         ;879B31;
    STA.W $0020,X                        ;879B34;
    SEP #$20                             ;879B37;
    RTS                                  ;879B39;

CODE_879B3A:
    INC.W $0000,X                        ;879B3A;
    LDA.B #$09                           ;879B3D;
    STA.W $000A,X                        ;879B3F;
    STZ.W $000B,X                        ;879B42;
    LDA.B $11                            ;879B45;
    ORA.B $36                            ;879B47;
    STA.W $0011,X                        ;879B49;
    REP #$20                             ;879B4C;
    LDA.B $0B                            ;879B4E;
    LSR A                                ;879B50;
    BCC CODE_879B59                      ;879B51;
    TYA                                  ;879B53;
    CLC                                  ;879B54;
    ADC.W #$0008                         ;879B55;
    TAY                                  ;879B58;

CODE_879B59:
    LDA.W DATA8_86CA7C,Y                 ;879B59;
    CLC                                  ;879B5C;
    ADC.B $05                            ;879B5D;
    STA.W $0005,X                        ;879B5F;
    INY                                  ;879B62;
    INY                                  ;879B63;
    LDA.W DATA8_86CA7C,Y                 ;879B64;
    CLC                                  ;879B67;
    ADC.B $08                            ;879B68;
    STA.W $0008,X                        ;879B6A;
    SEP #$20                             ;879B6D;
    RTS                                  ;879B6F;

CODE_879B70:
    LDX.B $01                            ;879B70;
    JSR.W (PTR16_879BDF,X)               ;879B72;
    LDA.B $3B                            ;879B75;
    BNE CODE_879B89                      ;879B77;
    LDA.B $27                            ;879B79;
    BEQ CODE_879BD0                      ;879B7B;
    JSL.L CODE_849B43                    ;879B7D;
    BEQ CODE_879BBB                      ;879B81;
    LDA.B $27                            ;879B83;
    AND.B #$7F                           ;879B85;
    BNE CODE_879BB3                      ;879B87;

CODE_879B89:
    LDA.B $11                            ;879B89;
    AND.B #$40                           ;879B8B;
    BNE CODE_879B99                      ;879B8D;
    LDA.B #$09                           ;879B8F;
    STA.W $0000                          ;879B91;
    LDY.B #$03                           ;879B94;
    JMP.W CODE_879BA0                    ;879B96;

CODE_879B99:
    LDA.B #$0D                           ;879B99;
    STA.W $0000                          ;879B9B;
    LDY.B #$03                           ;879B9E;

CODE_879BA0:
    JSR.W CODE_879EF2                    ;879BA0;
    JSL.L CODE_84A4AB                    ;879BA3;
    LDA.B $3B                            ;879BA7;
    BNE CODE_879BB1                      ;879BA9;
    LDA.B #$01                           ;879BAB;
    JSL.L CODE_84A37F                    ;879BAD;

CODE_879BB1:
    BRA CODE_879BDA                      ;879BB1;

CODE_879BB3:
    LDA.B #$F1                           ;879BB3;
    AND.B $11                            ;879BB5;
    STA.B $11                            ;879BB7;
    BRA CODE_879BC1                      ;879BB9;

CODE_879BBB:
    LDA.B $34                            ;879BBB;
    ORA.B $11                            ;879BBD;
    STA.B $11                            ;879BBF;

CODE_879BC1:
    LDA.B $0B                            ;879BC1;
    BEQ CODE_879BC8                      ;879BC3;
    JMP.W CODE_879BD0                    ;879BC5;

CODE_879BC8:
    LDA.B $39                            ;879BC8;
    BNE CODE_879BD0                      ;879BCA;
    JSL.L CODE_849B03                    ;879BCC;

CODE_879BD0:
    JSL.L CODE_8280B4                    ;879BD0;
    JSL.L CODE_82806E                    ;879BD4;
    BCC CODE_879BDE                      ;879BD8;

CODE_879BDA:
    JSL.L CODE_828398                    ;879BDA;

CODE_879BDE:
    RTL                                  ;879BDE;

PTR16_879BDF:
    dw CODE_879BEB                       ;879BDF;
    dw CODE_879C67                       ;879BE1;
    dw CODE_879D0A                       ;879BE3;
    dw CODE_879D75                       ;879BE5;
    dw CODE_879E4E                       ;879BE7;
    dw CODE_879E96                       ;879BE9;

CODE_879BEB:
    STZ.B $3B                            ;879BEB;
    LDA.B $0B                            ;879BED;
    BEQ CODE_879BF7                      ;879BEF;
    JSR.W CODE_879FAA                    ;879BF1;
    JMP.W CODE_879BFB                    ;879BF4;

CODE_879BF7:
    JSL.L CODE_82827D                    ;879BF7;

CODE_879BFB:
    LDA.B #$2A                           ;879BFB;
    STA.B $0A                            ;879BFD;
    LDA.B $11                            ;879BFF;
    AND.B #$F1                           ;879C01;
    ORA.B #$08                           ;879C03;
    STA.B $11                            ;879C05;
    AND.B #$0E                           ;879C07;
    STA.B $34                            ;879C09;
    LDA.B $0B                            ;879C0B;
    BNE CODE_879C16                      ;879C0D;
    LDA.B #$08                           ;879C0F;
    STA.B $27                            ;879C11;
    JMP.W CODE_879C1A                    ;879C13;

CODE_879C16:
    LDA.B #$0C                           ;879C16;
    STA.B $27                            ;879C18;

CODE_879C1A:
    LDA.B #$01                           ;879C1A;
    STA.B $28                            ;879C1C;
    LDA.B #$03                           ;879C1E;
    STA.B $26                            ;879C20;
    LDA.B #$06                           ;879C22;
    STA.B $12                            ;879C24;
    LDA.B #$01                           ;879C26;
    STA.B $33                            ;879C28;
    STZ.B $35                            ;879C2A;
    STZ.B $36                            ;879C2C;
    STZ.B $2F                            ;879C2E;
    STZ.B $37                            ;879C30;
    STZ.B $2C                            ;879C32;
    STZ.B $39                            ;879C34;
    STZ.B $38                            ;879C36;
    LDA.B #$04                           ;879C38;
    STA.B $3A                            ;879C3A;
    LDA.B $0B                            ;879C3C;
    BNE CODE_879C4E                      ;879C3E;
    JSL.L CODE_879ED4                    ;879C40;
    REP #$20                             ;879C44;
    LDA.W #$CE16                         ;879C46;
    STA.B $20                            ;879C49;
    JMP.W CODE_879C55                    ;879C4B;

CODE_879C4E:
    REP #$20                             ;879C4E;
    LDA.W #$CE2A                         ;879C50;
    STA.B $20                            ;879C53;

CODE_879C55:
    LDA.W #$FE80                         ;879C55;
    STA.B $1C                            ;879C58;
    SEP #$20                             ;879C5A;
    LDA.B #$30                           ;879C5C;
    STA.B $1E                            ;879C5E;
    LDA.B #$00                           ;879C60;
    JSL.L CODE_848F07                    ;879C62;
    RTS                                  ;879C66;

CODE_879C67:
    LDA.B $0B                            ;879C67;
    BNE CODE_879C73                      ;879C69;
    LDA.B #$80                           ;879C6B;
    STA.B $2C                            ;879C6D;
    LDA.B $39                            ;879C6F;
    BEQ CODE_879CB6                      ;879C71;

CODE_879C73:
    LDA.B #$80                           ;879C73;
    STA.B $2C                            ;879C75;
    JSL.L CODE_82D7D0                    ;879C77;
    REP #$20                             ;879C7B;
    LDA.W $0006                          ;879C7D;
    CMP.W #$0008                         ;879C80;
    BCS CODE_879CB4                      ;879C83;
    LDA.W $0002                          ;879C85;
    BMI CODE_879CB4                      ;879C88;
    LDA.W $0006                          ;879C8A;
    CMP.W #$0004                         ;879C8D;
    LDA.W #$CE16                         ;879C90;
    BCC CODE_879C9B                      ;879C93;
    LDA.W #$0003                         ;879C95;
    STA.W $0006                          ;879C98;

CODE_879C9B:
    REP #$20                             ;879C9B;
    LDA.W $0BB0                          ;879C9D;
    SEC                                  ;879CA0;
    SBC.W $0006                          ;879CA1;
    STA.W $0BB0                          ;879CA4;
    SEP #$20                             ;879CA7;
    LDA.W $0BD3                          ;879CA9;
    AND.B #$04                           ;879CAC;
    BEQ CODE_879CB4                      ;879CAE;
    JSL.L CODE_849B03                    ;879CB0;

CODE_879CB4:
    SEP #$20                             ;879CB4;

CODE_879CB6:
    JSL.L CODE_8281E8                    ;879CB6;
    LDA.B $2C                            ;879CBA;
    AND.B #$7F                           ;879CBC;
    BEQ CODE_879CC4                      ;879CBE;
    JSL.L CODE_82C70E                    ;879CC0;

CODE_879CC4:
    JSL.L CODE_8491BE                    ;879CC4;
    LDA.B $2E                            ;879CC8;
    CMP.B #$00                           ;879CCA;
    BEQ CODE_879D05                      ;879CCC;
    LDA.B #$08                           ;879CCE;
    STA.B $01                            ;879CD0;
    LDA.B $0B                            ;879CD2;
    BNE CODE_879CE0                      ;879CD4;
    LDA.B $39                            ;879CD6;
    BNE CODE_879CE0                      ;879CD8;
    LDA.B #$01                           ;879CDA;
    JSL.L CODE_848F07                    ;879CDC;

CODE_879CE0:
    JSR.W CODE_879F49                    ;879CE0;
    LDA.B $38                            ;879CE3;
    BNE CODE_879D09                      ;879CE5;
    REP #$20                             ;879CE7;
    LDA.W #$0300                         ;879CE9;
    STA.B $1C                            ;879CEC;
    SEP #$20                             ;879CEE;
    LDA.B #$C0                           ;879CF0;
    STA.B $1E                            ;879CF2;
    JSL.L CODE_849086                    ;879CF4;
    AND.B #$07                           ;879CF8;
    STA.W $0000                          ;879CFA;
    LDY.B #$03                           ;879CFD;
    JSR.W CODE_879EF2                    ;879CFF;
    JMP.W CODE_879D09                    ;879D02;

CODE_879D05:
    JSL.L CODE_848EEA                    ;879D05;

CODE_879D09:
    RTS                                  ;879D09;

CODE_879D0A:
    LDA.B $0B                            ;879D0A;
    BNE CODE_879D16                      ;879D0C;
    LDA.B #$80                           ;879D0E;
    STA.B $2C                            ;879D10;
    LDA.B $39                            ;879D12;
    BEQ CODE_879D1E                      ;879D14;

CODE_879D16:
    LDA.B #$80                           ;879D16;
    STA.B $2C                            ;879D18;
    JSL.L CODE_82D7D0                    ;879D1A;

CODE_879D1E:
    JSR.W CODE_879F49                    ;879D1E;
    BNE CODE_879D26                      ;879D21;
    JMP.W CODE_879D6A                    ;879D23;

CODE_879D26:
    JSR.W CODE_879FCB                    ;879D26;
    LDA.B $39                            ;879D29;
    BEQ CODE_879D30                      ;879D2B;
    JMP.W CODE_879D6A                    ;879D2D;

CODE_879D30:
    LDA.B $0F                            ;879D30;
    CMP.B #$80                           ;879D32;
    BNE CODE_879D45                      ;879D34;
    LDA.B #$06                           ;879D36;
    STA.B $01                            ;879D38;
    LDA.B #$01                           ;879D3A;
    JSL.L CODE_848F07                    ;879D3C;
    INC.B $37                            ;879D40;
    JMP.W CODE_879D6A                    ;879D42;

CODE_879D45:
    LDA.B $0F                            ;879D45;
    BEQ CODE_879D66                      ;879D47;
    LDA.B $11                            ;879D49;
    AND.B #$40                           ;879D4B;
    BEQ CODE_879D59                      ;879D4D;
    REP #$20                             ;879D4F;
    LDA.W #$0040                         ;879D51;
    STA.B $1A                            ;879D54;
    JMP.W CODE_879D60                    ;879D56;

CODE_879D59:
    REP #$20                             ;879D59;
    LDA.W #$FFC0                         ;879D5B;
    STA.B $1A                            ;879D5E;

CODE_879D60:
    SEP #$20                             ;879D60;
    JSL.L CODE_82823E                    ;879D62;

CODE_879D66:
    JSL.L CODE_848EEA                    ;879D66;

CODE_879D6A:
    LDA.B $2C                            ;879D6A;
    AND.B #$7F                           ;879D6C;
    BEQ CODE_879D74                      ;879D6E;
    JSL.L CODE_82C70E                    ;879D70;

CODE_879D74:
    RTS                                  ;879D74;

CODE_879D75:
    LDA.B $0B                            ;879D75;
    BNE CODE_879D81                      ;879D77;
    LDA.B #$80                           ;879D79;
    STA.B $2C                            ;879D7B;
    LDA.B $39                            ;879D7D;
    BEQ CODE_879D89                      ;879D7F;

CODE_879D81:
    LDA.B #$80                           ;879D81;
    STA.B $2C                            ;879D83;
    JSL.L CODE_82D7D0                    ;879D85;

CODE_879D89:
    JSR.W CODE_879F49                    ;879D89;
    BNE CODE_879D91                      ;879D8C;
    JMP.W CODE_879E43                    ;879D8E;

CODE_879D91:
    LDA.B $35                            ;879D91;
    BEQ CODE_879D98                      ;879D93;
    JMP.W CODE_879E3F                    ;879D95;

CODE_879D98:
    JSR.W CODE_879FCB                    ;879D98;
    LDA.B $39                            ;879D9B;
    BEQ CODE_879DA2                      ;879D9D;
    JMP.W CODE_879E43                    ;879D9F;

CODE_879DA2:
    LDA.B $0B                            ;879DA2;
    BEQ CODE_879DA9                      ;879DA4;
    JMP.W CODE_879E3F                    ;879DA6;

CODE_879DA9:
    LDA.B $36                            ;879DA9;
    BNE CODE_879DC2                      ;879DAB;
    DEC.B $33                            ;879DAD;
    BEQ CODE_879DB4                      ;879DAF;
    JMP.W CODE_879E3F                    ;879DB1;

CODE_879DB4:
    JSL.L CODE_879ED4                    ;879DB4;
    LDA.B #$03                           ;879DB8;
    JSL.L CODE_848F07                    ;879DBA;
    LDA.B #$01                           ;879DBE;
    STA.B $36                            ;879DC0;

CODE_879DC2:
    LDA.B $0F                            ;879DC2;
    CMP.B #$80                           ;879DC4;
    BNE CODE_879E3F                      ;879DC6;
    LDA.B #$01                           ;879DC8;
    JSL.L CODE_848F07                    ;879DCA;
    STZ.B $36                            ;879DCE;
    LDA.B #$50                           ;879DD0;
    STA.B $33                            ;879DD2;
    JSL.L CODE_828358                    ;879DD4;
    BNE CODE_879E3D                      ;879DD8;
    INC.W $0000,X                        ;879DDA;
    LDA.B #$13                           ;879DDD;
    STA.W $000A,X                        ;879DDF;
    LDA.L $7F8245                        ;879DE2;
    STA.W $0018,X                        ;879DE6;
    LDA.L $7F8345                        ;879DE9;
    AND.B #$F9                           ;879DED;
    STA.W $0011,X                        ;879DEF;
    LDA.B #$09                           ;879DF2;
    STA.W $000B,X                        ;879DF4;
    LDA.B #$42                           ;879DF7;
    STA.W $0016,X                        ;879DF9;
    LDA.B #$01                           ;879DFC;
    STA.W $0028,X                        ;879DFE;
    LDA.B $11                            ;879E01;
    AND.B #$40                           ;879E03;
    BEQ CODE_879E15                      ;879E05;
    REP #$20                             ;879E07;
    LDA.W #$0400                         ;879E09;
    STA.W $001A,X                        ;879E0C;
    LDA.W #$0019                         ;879E0F;
    JMP.W CODE_879E20                    ;879E12;

CODE_879E15:
    REP #$20                             ;879E15;
    LDA.W #$FC00                         ;879E17;
    STA.W $001A,X                        ;879E1A;
    LDA.W #$FFE7                         ;879E1D;

CODE_879E20:
    CLC                                  ;879E20;
    ADC.B $05                            ;879E21;
    STA.W $0005,X                        ;879E23;
    LDA.B $08                            ;879E26;
    SEC                                  ;879E28;
    SBC.W #$0004                         ;879E29;
    STA.W $0008,X                        ;879E2C;
    LDA.W #$CE3E                         ;879E2F;
    STA.W $0020,X                        ;879E32;
    SEP #$30                             ;879E35;
    LDA.B #$55                           ;879E37;
    JSL.L CODE_8088A2                    ;879E39;

CODE_879E3D:
    SEP #$30                             ;879E3D;

CODE_879E3F:
    JSL.L CODE_848EEA                    ;879E3F;

CODE_879E43:
    LDA.B $2C                            ;879E43;
    AND.B #$7F                           ;879E45;
    BEQ CODE_879E4D                      ;879E47;
    JSL.L CODE_82C70E                    ;879E49;

CODE_879E4D:
    RTS                                  ;879E4D;

CODE_879E4E:
    JSL.L CODE_8281E8                    ;879E4E;
    LDA.B #$FF                           ;879E52;
    STA.B $2F                            ;879E54;
    JSL.L CODE_8491BE                    ;879E56;
    LDA.B $2E                            ;879E5A;
    CMP.B #$00                           ;879E5C;
    BEQ CODE_879E91                      ;879E5E;
    LDA.B $37                            ;879E60;
    BEQ CODE_879E79                      ;879E62;
    LDA.B #$06                           ;879E64;
    STA.B $01                            ;879E66;
    LDA.B $0B                            ;879E68;
    BNE CODE_879E76                      ;879E6A;
    LDA.B $39                            ;879E6C;
    BNE CODE_879E76                      ;879E6E;
    LDA.B #$01                           ;879E70;
    JSL.L CODE_848F07                    ;879E72;

CODE_879E76:
    JMP.W CODE_879E95                    ;879E76;

CODE_879E79:
    LDA.B #$04                           ;879E79;
    STA.B $01                            ;879E7B;
    LDA.B $0B                            ;879E7D;
    BEQ CODE_879E88                      ;879E7F;
    LDA.B #$06                           ;879E81;
    STA.B $01                            ;879E83;
    JMP.W CODE_879E8E                    ;879E85;

CODE_879E88:
    LDA.B #$02                           ;879E88;
    JSL.L CODE_848F07                    ;879E8A;

CODE_879E8E:
    JMP.W CODE_879E95                    ;879E8E;

CODE_879E91:
    JSL.L CODE_848EEA                    ;879E91;

CODE_879E95:
    RTS                                  ;879E95;

CODE_879E96:
    BIT.W $1F96                          ;879E96;
    BVS CODE_879ECF                      ;879E99;
    DEC.B $33                            ;879E9B;
    BNE CODE_879EB6                      ;879E9D;
    INC.B $33                            ;879E9F;
    LDA.B $11                            ;879EA1;
    AND.B #$F1                           ;879EA3;
    ORA.B #$0A                           ;879EA5;
    STA.B $11                            ;879EA7;
    REP #$20                             ;879EA9;
    LDA.W #$FFE8                         ;879EAB;
    STA.W $0000                          ;879EAE;
    SEP #$20                             ;879EB1;
    JSR.W CODE_87A027                    ;879EB3;

CODE_879EB6:
    LDA.B #$80                           ;879EB6;
    STA.B $2C                            ;879EB8;
    JSL.L CODE_82D7D0                    ;879EBA;
    JSL.L CODE_8281E8                    ;879EBE;
    LDA.B $2C                            ;879EC2;
    AND.B #$7F                           ;879EC4;
    BEQ CODE_879ED3                      ;879EC6;
    JSL.L CODE_82C70E                    ;879EC8;
    JMP.W CODE_879ED3                    ;879ECC;

CODE_879ECF:
    LDA.B #$01                           ;879ECF;
    STA.B $3B                            ;879ED1;

CODE_879ED3:
    RTS                                  ;879ED3;

CODE_879ED4:
    REP #$20                             ;879ED4;
    LDA.W $0BAD                          ;879ED6;
    SEC                                  ;879ED9;
    SBC.B $05                            ;879EDA;
    BCC CODE_879EE9                      ;879EDC;
    SEP #$20                             ;879EDE;
    LDA.B #$40                           ;879EE0;
    ORA.B $11                            ;879EE2;
    STA.B $11                            ;879EE4;
    JMP.W CODE_879EF1                    ;879EE6;

CODE_879EE9:
    SEP #$20                             ;879EE9;
    LDA.B #$BF                           ;879EEB;
    AND.B $11                            ;879EED;
    STA.B $11                            ;879EEF;

CODE_879EF1:
    RTL                                  ;879EF1;

CODE_879EF2:
    REP #$10                             ;879EF2;
    SEP #$20                             ;879EF4;
    JSL.L CODE_8282D3                    ;879EF6;
    BNE CODE_879F46                      ;879EFA;
    INC.W $0000,X                        ;879EFC;
    LDA.B #$28                           ;879EFF;
    STA.W $000A,X                        ;879F01;
    TYA                                  ;879F04;
    CLC                                  ;879F05;
    ADC.W $0000                          ;879F06;
    STA.W $000B,X                        ;879F09;
    LDA.B $0B                            ;879F0C;
    BEQ CODE_879F16                      ;879F0E;
    INC.W $0002,X                        ;879F10;
    JMP.W CODE_879F1B                    ;879F13;

CODE_879F16:
    LDA.B #$00                           ;879F16;
    STA.W $0002,X                        ;879F18;

CODE_879F1B:
    LDA.B $34                            ;879F1B;
    ORA.B $11                            ;879F1D;
    STA.W $0011,X                        ;879F1F;
    LDA.B $0B                            ;879F22;
    BNE CODE_879F30                      ;879F24;
    LDA.L $7F8245                        ;879F26;
    STA.W $0018,X                        ;879F2A;
    JMP.W CODE_879F37                    ;879F2D;

CODE_879F30:
    LDA.L $7F8247                        ;879F30;
    STA.W $0018,X                        ;879F34;

CODE_879F37:
    REP #$20                             ;879F37;
    LDA.B $05                            ;879F39;
    STA.W $0005,X                        ;879F3B;
    LDA.B $08                            ;879F3E;
    STA.W $0008,X                        ;879F40;
    DEY                                  ;879F43;
    BPL CODE_879EF2                      ;879F44;

CODE_879F46:
    SEP #$30                             ;879F46;
    RTS                                  ;879F48;

CODE_879F49:
    STZ.B $2F                            ;879F49;
    JSL.L CODE_8491BE                    ;879F4B;
    LDA.B $2E                            ;879F4F;
    CMP.B #$00                           ;879F51;
    BEQ CODE_879F7D                      ;879F53;
    CMP.B #$3E                           ;879F55;
    BEQ CODE_879F61                      ;879F57;
    CMP.B #$33                           ;879F59;
    BEQ CODE_879F61                      ;879F5B;
    CMP.B #$3F                           ;879F5D;
    BNE CODE_879F7A                      ;879F5F;

CODE_879F61:
    LDA.B #$0A                           ;879F61;
    STA.B $01                            ;879F63;
    REP #$20                             ;879F65;
    LDA.W #$FFA0                         ;879F67;
    STA.B $1C                            ;879F6A;
    SEP #$20                             ;879F6C;
    LDA.B #$10                           ;879F6E;
    STA.B $1E                            ;879F70;
    LDA.B #$07                           ;879F72;
    STA.B $33                            ;879F74;
    LDA.B #$01                           ;879F76;
    STA.B $38                            ;879F78;

CODE_879F7A:
    LDA.B #$01                           ;879F7A;
    RTS                                  ;879F7C;

CODE_879F7D:
    REP #$20                             ;879F7D;
    LDA.W #$FE80                         ;879F7F;
    STA.B $1C                            ;879F82;
    LDA.W #$0000                         ;879F84;
    STA.B $1A                            ;879F87;
    SEP #$20                             ;879F89;
    LDA.B #$30                           ;879F8B;
    STA.B $1E                            ;879F8D;
    LDA.B #$02                           ;879F8F;
    STA.B $01                            ;879F91;
    LDA.B $0F                            ;879F93;
    CMP.B #$02                           ;879F95;
    BEQ CODE_879FA7                      ;879F97;
    LDA.B $0B                            ;879F99;
    BNE CODE_879FA7                      ;879F9B;
    LDA.B $39                            ;879F9D;
    BNE CODE_879FA7                      ;879F9F;
    LDA.B #$01                           ;879FA1;
    JSL.L CODE_848F07                    ;879FA3;

CODE_879FA7:
    LDA.B #$00                           ;879FA7;
    RTS                                  ;879FA9;

CODE_879FAA:
    LDA.B #$02                           ;879FAA;
    STA.B $01                            ;879FAC;
    LDA.B #$45                           ;879FAE;
    STA.B $16                            ;879FB0;
    LDA.L $7F8247                        ;879FB2;
    STA.B $18                            ;879FB6;
    LDA.L $7F8347                        ;879FB8;
    STA.B $11                            ;879FBC;
    STZ.B $30                            ;879FBE;
    REP #$20                             ;879FC0;
    STZ.B $1A                            ;879FC2;
    STZ.B $1C                            ;879FC4;
    STZ.B $1E                            ;879FC6;
    SEP #$20                             ;879FC8;
    RTS                                  ;879FCA;

CODE_879FCB:
    JSL.L CODE_849B7E                    ;879FCB;
    BEQ CODE_87A024                      ;879FCF;
    CMP.B #$39                           ;879FD1;
    BNE CODE_87A024                      ;879FD3;
    REP #$10                             ;879FD5;
    LDX.W $0000                          ;879FD7;
    LDA.W $0001,X                        ;879FDA;
    CMP.B #$06                           ;879FDD;
    BNE CODE_87A024                      ;879FDF;
    SEP #$10                             ;879FE1;
    LDA.B $0B                            ;879FE3;
    BNE CODE_879FEC                      ;879FE5;
    LDA.B #$04                           ;879FE7;
    JMP.W CODE_879FEE                    ;879FE9;

CODE_879FEC:
    LDA.B #$01                           ;879FEC;

CODE_879FEE:
    JSL.L CODE_848F07                    ;879FEE;
    LDA.B $0B                            ;879FF2;
    BNE CODE_87A000                      ;879FF4;
    REP #$20                             ;879FF6;
    LDA.W #$CE20                         ;879FF8;
    STA.B $20                            ;879FFB;
    JMP.W CODE_87A007                    ;879FFD;

CODE_87A000:
    REP #$20                             ;87A000;
    LDA.W #$CE34                         ;87A002;
    STA.B $20                            ;87A005;

CODE_87A007:
    SEP #$20                             ;87A007;
    INC.B $35                            ;87A009;
    LDA.B #$01                           ;87A00B;
    STA.B $39                            ;87A00D;
    LDA.B #$3E                           ;87A00F;
    JSL.L CODE_8088A2                    ;87A011;
    JSL.L CODE_849086                    ;87A015;
    AND.B #$07                           ;87A019;
    STA.W $0000                          ;87A01B;
    LDY.B #$03                           ;87A01E;
    JSR.W CODE_879EF2                    ;87A020;
    RTS                                  ;87A023;

CODE_87A024:
    SEP #$10                             ;87A024;
    RTS                                  ;87A026;

CODE_87A027:
    REP #$10                             ;87A027;
    DEC.B $3A                            ;87A029;
    BEQ CODE_87A078                      ;87A02B;
    REP #$20                             ;87A02D;
    LDA.W $0000                          ;87A02F;
    CLC                                  ;87A032;
    ADC.W #$000C                         ;87A033;
    STA.W $0000                          ;87A036;
    JSL.L CODE_849086                    ;87A039;
    AND.W #$0008                         ;87A03D;
    STA.W $0002                          ;87A040;
    SEP #$20                             ;87A043;
    JSL.L CODE_8282D3                    ;87A045;
    BNE CODE_87A078                      ;87A049;
    INC.W $0000,X                        ;87A04B;
    LDA.B #$31                           ;87A04E;
    STA.W $000A,X                        ;87A050;
    LDA.B $11                            ;87A053;
    STA.W $0011,X                        ;87A055;
    STZ.W $000B,X                        ;87A058;
    REP #$20                             ;87A05B;
    LDA.B $08                            ;87A05D;
    CLC                                  ;87A05F;
    ADC.W #$0010                         ;87A060;
    SEC                                  ;87A063;
    SBC.W $0002                          ;87A064;
    STA.W $0008,X                        ;87A067;
    LDA.B $05                            ;87A06A;
    CLC                                  ;87A06C;
    ADC.W $0000                          ;87A06D;
    STA.W $0005,X                        ;87A070;
    SEP #$20                             ;87A073;
    JMP.W CODE_87A027                    ;87A075;

CODE_87A078:
    SEP #$10                             ;87A078;
    LDA.B #$01                           ;87A07A;
    STA.B $3A                            ;87A07C;
    RTS                                  ;87A07E;

CODE_87A07F:
    LDX.B $01                            ;87A07F;
    JSR.W (PTR16_87A105,X)               ;87A081;
    LDA.B $27                            ;87A084;
    BEQ CODE_87A0F6                      ;87A086;
    JSL.L CODE_849B43                    ;87A088;
    BEQ CODE_87A0B7                      ;87A08C;
    LDA.B $27                            ;87A08E;
    AND.B #$7F                           ;87A090;
    BNE CODE_87A0AF                      ;87A092;
    JSL.L CODE_84A4AB                    ;87A094;
    JSL.L CODE_828387                    ;87A098;
    SEP #$10                             ;87A09C;
    LDA.B $0B                            ;87A09E;
    BEQ CODE_87A0A7                      ;87A0A0;
    LDA.B #$01                           ;87A0A2;
    JMP.W CODE_87A0A9                    ;87A0A4;

CODE_87A0A7:
    LDA.B #$06                           ;87A0A7;

CODE_87A0A9:
    JSL.L CODE_84A37F                    ;87A0A9;
    BRA CODE_87A104                      ;87A0AD;

CODE_87A0AF:
    LDA.B #$F1                           ;87A0AF;
    AND.B $11                            ;87A0B1;
    STA.B $11                            ;87A0B3;
    BRA CODE_87A0BD                      ;87A0B5;

CODE_87A0B7:
    LDA.B $36                            ;87A0B7;
    ORA.B $11                            ;87A0B9;
    STA.B $11                            ;87A0BB;

CODE_87A0BD:
    LDA.B $35                            ;87A0BD;
    BEQ CODE_87A0F6                      ;87A0BF;
    LDA.W $0BCF                          ;87A0C1;
    AND.B #$7F                           ;87A0C4;
    STA.B $35                            ;87A0C6;
    BEQ CODE_87A0D7                      ;87A0C8;
    JSL.L CODE_849B03                    ;87A0CA;
    LDA.W $0BCF                          ;87A0CE;
    AND.B #$7F                           ;87A0D1;
    CMP.B $35                            ;87A0D3;
    BPL CODE_87A0F6                      ;87A0D5;

CODE_87A0D7:
    LDA.B $0F                            ;87A0D7;
    AND.B #$02                           ;87A0D9;
    BEQ CODE_87A0E3                      ;87A0DB;
    LDA.B #$02                           ;87A0DD;
    JSL.L CODE_848F07                    ;87A0DF;

CODE_87A0E3:
    LDA.B #$06                           ;87A0E3;
    STA.B $01                            ;87A0E5;
    LDA.B #$01                           ;87A0E7;
    STA.B $37                            ;87A0E9;
    STZ.B $02                            ;87A0EB;
    REP #$20                             ;87A0ED;
    LDA.W #$0280                         ;87A0EF;
    STA.B $1C                            ;87A0F2;
    SEP #$20                             ;87A0F4;

CODE_87A0F6:
    JSL.L CODE_8280B4                    ;87A0F6;
    JSL.L CODE_82806E                    ;87A0FA;
    BCC CODE_87A104                      ;87A0FE;
    JSL.L CODE_828387                    ;87A100;

CODE_87A104:
    RTL                                  ;87A104;

PTR16_87A105:
    dw CODE_87A10D                       ;87A105;
    dw CODE_87A189                       ;87A107;
    dw CODE_87A1AD                       ;87A109;
    dw CODE_87A2BE                       ;87A10B;

CODE_87A10D:
    LDA.B $0B                            ;87A10D;
    AND.B #$01                           ;87A10F;
    BNE CODE_87A11C                      ;87A111;
    JSL.L CODE_82827D                    ;87A113;
    STZ.B $28                            ;87A117;
    JMP.W CODE_87A136                    ;87A119;

CODE_87A11C:
    LDA.B #$4B                           ;87A11C;
    STA.B $16                            ;87A11E;
    LDA.L $7F824A                        ;87A120;
    STA.B $18                            ;87A124;
    LDA.L $7F834A                        ;87A126;
    STA.B $11                            ;87A12A;
    STZ.B $30                            ;87A12C;
    LDA.B #$02                           ;87A12E;
    STA.B $01                            ;87A130;
    LDA.B #$01                           ;87A132;
    STA.B $28                            ;87A134;

CODE_87A136:
    LDA.B $11                            ;87A136;
    AND.B #$0E                           ;87A138;
    STA.B $36                            ;87A13A;
    LDA.B #$02                           ;87A13C;
    STA.B $27                            ;87A13E;
    LDA.B #$FF                           ;87A140;
    STA.B $35                            ;87A142;
    LDA.B #$01                           ;87A144;
    STA.B $26                            ;87A146;
    LDA.B #$04                           ;87A148;
    STA.B $12                            ;87A14A;
    STZ.B $3B                            ;87A14C;
    LDA.B #$08                           ;87A14E;
    STA.B $3A                            ;87A150;
    LDA.B #$01                           ;87A152;
    STA.B $2F                            ;87A154;
    LDA.B #$01                           ;87A156;
    STA.B $37                            ;87A158;
    JSR.W CODE_87A3AE                    ;87A15A;
    REP #$20                             ;87A15D;
    LDA.W #$0001                         ;87A15F;
    STA.B $33                            ;87A162;
    LDA.B $05                            ;87A164;
    STA.B $3C                            ;87A166;
    LDA.B $08                            ;87A168;
    STA.B $3E                            ;87A16A;
    LDA.B $0B                            ;87A16C;
    AND.W #$000F                         ;87A16E;
    BNE CODE_87A17B                      ;87A171;
    LDA.W #$CEFB                         ;87A173;
    STA.B $20                            ;87A176;
    JMP.W CODE_87A180                    ;87A178;

CODE_87A17B:
    LDA.W #$CF0F                         ;87A17B;
    STA.B $20                            ;87A17E;

CODE_87A180:
    SEP #$20                             ;87A180;
    LDA.B #$00                           ;87A182;
    JSL.L CODE_848F07                    ;87A184;
    RTS                                  ;87A188;

CODE_87A189:
    LDX.B #$02                           ;87A189;
    LDY.B #$00                           ;87A18B;
    JSL.L CODE_82FC41                    ;87A18D;
    BNE CODE_87A1A8                      ;87A191;
    LDA.B #$04                           ;87A193;
    STA.B $01                            ;87A195;
    STZ.B $02                            ;87A197;
    LDA.B $0B                            ;87A199;
    AND.B #$01                           ;87A19B;
    BNE CODE_87A1A8                      ;87A19D;
    LDA.B #$01                           ;87A19F;
    JSL.L CODE_848F07                    ;87A1A1;
    JMP.W CODE_87A1AC                    ;87A1A5;

CODE_87A1A8:
    JSL.L CODE_848EEA                    ;87A1A8;

CODE_87A1AC:
    RTS                                  ;87A1AC;

CODE_87A1AD:
    LDX.B $02                            ;87A1AD;
    JSR.W (PTR16_87A1B3,X)               ;87A1AF;
    RTS                                  ;87A1B2;

PTR16_87A1B3:
    dw CODE_87A1B7                       ;87A1B3;
    dw CODE_87A207                       ;87A1B5;

CODE_87A1B7:
    LDA.B $0F                            ;87A1B7;
    BPL CODE_87A202                      ;87A1B9;
    LDA.B $3B                            ;87A1BB;
    BNE CODE_87A1D0                      ;87A1BD;
    LDA.B $0B                            ;87A1BF;
    AND.B #$01                           ;87A1C1;
    BEQ CODE_87A1D0                      ;87A1C3;
    LDA.B #$01                           ;87A1C5;
    STA.B $3B                            ;87A1C7;
    JSL.L CODE_848F07                    ;87A1C9;
    JMP.W CODE_87A202                    ;87A1CD;

CODE_87A1D0:
    LDA.B #$02                           ;87A1D0;
    STA.B $02                            ;87A1D2;
    LDA.B #$01                           ;87A1D4;
    STA.B $28                            ;87A1D6;
    REP #$20                             ;87A1D8;
    LDA.W #$0258                         ;87A1DA;
    STA.B $33                            ;87A1DD;
    LDA.B $0B                            ;87A1DF;
    AND.W #$000F                         ;87A1E1;
    BNE CODE_87A1EE                      ;87A1E4;
    LDA.W #$CF05                         ;87A1E6;
    STA.B $20                            ;87A1E9;
    JMP.W CODE_87A1F3                    ;87A1EB;

CODE_87A1EE:
    LDA.W #$CF19                         ;87A1EE;
    STA.B $20                            ;87A1F1;

CODE_87A1F3:
    STZ.B $1A                            ;87A1F3;
    STZ.B $1C                            ;87A1F5;
    SEP #$20                             ;87A1F7;
    LDA.B #$02                           ;87A1F9;
    JSL.L CODE_848F07                    ;87A1FB;
    JMP.W CODE_87A206                    ;87A1FF;

CODE_87A202:
    JSL.L CODE_848EEA                    ;87A202;

CODE_87A206:
    RTS                                  ;87A206;

CODE_87A207:
    LDA.B $0B                            ;87A207;
    AND.B #$01                           ;87A209;
    BNE CODE_87A210                      ;87A20B;
    JSR.W CODE_87A452                    ;87A20D;

CODE_87A210:
    REP #$20                             ;87A210;
    LDA.W #$0128                         ;87A212;
    STA.W $0000                          ;87A215;
    LDA.B $3C                            ;87A218;
    STA.W $0002                          ;87A21A;
    LDA.W #$00C0                         ;87A21D;
    STA.W $0004                          ;87A220;
    LDA.B $3E                            ;87A223;
    STA.W $0008                          ;87A225;
    SEP #$20                             ;87A228;
    JSL.L CODE_87A3EC                    ;87A22A;
    JSR.W CODE_87A438                    ;87A22E;
    BEQ CODE_87A238                      ;87A231;
    REP #$20                             ;87A233;
    JMP.W CODE_87A2BB                    ;87A235;

CODE_87A238:
    REP #$20                             ;87A238;
    DEC.B $33                            ;87A23A;
    SEP #$20                             ;87A23C;
    BEQ CODE_87A299                      ;87A23E;
    DEC.B $37                            ;87A240;
    BNE CODE_87A28E                      ;87A242;
    LDA.B $38                            ;87A244;
    STA.B $37                            ;87A246;
    REP #$20                             ;87A248;
    STZ.B $1A                            ;87A24A;
    STZ.B $1C                            ;87A24C;
    SEP #$20                             ;87A24E;
    JSL.L CODE_84A07C                    ;87A250;
    STA.B $39                            ;87A254;
    ASL A                                ;87A256;
    ASL A                                ;87A257;
    TAX                                  ;87A258;
    CMP.B #$40                           ;87A259;
    BMI CODE_87A266                      ;87A25B;
    LDA.B $11                            ;87A25D;
    AND.B #$BF                           ;87A25F;
    STA.B $11                            ;87A261;
    JMP.W CODE_87A26C                    ;87A263;

CODE_87A266:
    LDA.B $11                            ;87A266;
    ORA.B #$40                           ;87A268;
    STA.B $11                            ;87A26A;

CODE_87A26C:
    REP #$20                             ;87A26C;
    LDA.W DATA8_86EE37,X                 ;87A26E;
    BPL CODE_87A27A                      ;87A271;
    LSR A                                ;87A273;
    ORA.W #$F000                         ;87A274;
    JMP.W CODE_87A27B                    ;87A277;

CODE_87A27A:
    LSR A                                ;87A27A;

CODE_87A27B:
    STA.B $1A                            ;87A27B;
    LDA.W DATA8_86EE39,X                 ;87A27D;
    BPL CODE_87A289                      ;87A280;
    LSR A                                ;87A282;
    ORA.W #$F000                         ;87A283;
    JMP.W CODE_87A28A                    ;87A286;

CODE_87A289:
    LSR A                                ;87A289;

CODE_87A28A:
    STA.B $1C                            ;87A28A;
    SEP #$20                             ;87A28C;

CODE_87A28E:
    JSL.L CODE_82820A                    ;87A28E;
    JSL.L CODE_848EEA                    ;87A292;
    JMP.W CODE_87A2AA                    ;87A296;

CODE_87A299:
    REP #$20                             ;87A299;
    STZ.B $1A                            ;87A29B;
    LDA.W #$0280                         ;87A29D;
    STA.B $1C                            ;87A2A0;
    SEP #$20                             ;87A2A2;
    LDA.B #$06                           ;87A2A4;
    STA.B $01                            ;87A2A6;
    STZ.B $02                            ;87A2A8;

CODE_87A2AA:
    LDA.B $0B                            ;87A2AA;
    AND.B #$01                           ;87A2AC;
    BEQ CODE_87A2BB                      ;87A2AE;
    DEC.B $3A                            ;87A2B0;
    BNE CODE_87A2BB                      ;87A2B2;
    LDA.B #$08                           ;87A2B4;
    STA.B $3A                            ;87A2B6;
    JSR.W CODE_87A3C8                    ;87A2B8;

CODE_87A2BB:
    SEP #$20                             ;87A2BB;
    RTS                                  ;87A2BD;

CODE_87A2BE:
    LDX.B $02                            ;87A2BE;
    JSR.W (PTR16_87A2C4,X)               ;87A2C0;
    RTS                                  ;87A2C3;

PTR16_87A2C4:
    dw CODE_87A2CA                       ;87A2C4;
    dw CODE_87A359                       ;87A2C6;
    dw CODE_87A38B                       ;87A2C8;

CODE_87A2CA:
    LDA.B $0B                            ;87A2CA;
    AND.B #$01                           ;87A2CC;
    BNE CODE_87A2D3                      ;87A2CE;
    JSR.W CODE_87A452                    ;87A2D0;

CODE_87A2D3:
    JSL.L CODE_82825D                    ;87A2D3;
    LDA.B $0B                            ;87A2D7;
    AND.B #$01                           ;87A2D9;
    BEQ CODE_87A2E8                      ;87A2DB;
    DEC.B $3A                            ;87A2DD;
    BNE CODE_87A2E8                      ;87A2DF;
    LDA.B #$08                           ;87A2E1;
    STA.B $3A                            ;87A2E3;
    JSR.W CODE_87A3C8                    ;87A2E5;

CODE_87A2E8:
    LDA.B $3B                            ;87A2E8;
    BMI CODE_87A354                      ;87A2EA;
    LDA.B $03                            ;87A2EC;
    BNE CODE_87A328                      ;87A2EE;
    LDA.B #$F0                           ;87A2F0;
    STA.B $2A                            ;87A2F2;
    STZ.B $29                            ;87A2F4;
    JSL.L CODE_8490A0                    ;87A2F6;
    CMP.B #$00                           ;87A2FA;
    BNE CODE_87A354                      ;87A2FC;
    LDA.B #$10                           ;87A2FE;
    STA.B $2A                            ;87A300;
    JSL.L CODE_8490A0                    ;87A302;
    CMP.B #$00                           ;87A306;
    BNE CODE_87A354                      ;87A308;
    LDA.B #$10                           ;87A30A;
    STA.B $29                            ;87A30C;
    STZ.B $2A                            ;87A30E;
    JSL.L CODE_8490A0                    ;87A310;
    CMP.B #$00                           ;87A314;
    BNE CODE_87A354                      ;87A316;
    LDA.B #$F0                           ;87A318;
    STA.B $29                            ;87A31A;
    JSL.L CODE_8490A0                    ;87A31C;
    CMP.B #$00                           ;87A320;
    BNE CODE_87A354                      ;87A322;
    LDA.B #$01                           ;87A324;
    STA.B $03                            ;87A326;

CODE_87A328:
    JSL.L CODE_8491BE                    ;87A328;
    LDA.B $2B                            ;87A32C;
    CMP.B #$08                           ;87A32E;
    BNE CODE_87A354                      ;87A330;
    LDA.B #$02                           ;87A332;
    STA.B $02                            ;87A334;
    STZ.B $03                            ;87A336;
    LDA.B $0B                            ;87A338;
    AND.B #$01                           ;87A33A;
    BNE CODE_87A349                      ;87A33C;
    LDA.B #$03                           ;87A33E;
    JSL.L CODE_848F07                    ;87A340;
    STZ.B $28                            ;87A344;
    JMP.W CODE_87A358                    ;87A346;

CODE_87A349:
    LDA.B #$01                           ;87A349;
    STA.B $28                            ;87A34B;
    JSL.L CODE_848F07                    ;87A34D;
    JMP.W CODE_87A358                    ;87A351;

CODE_87A354:
    JSL.L CODE_848EEA                    ;87A354;

CODE_87A358:
    RTS                                  ;87A358;

CODE_87A359:
    LDA.B $0F                            ;87A359;
    BPL CODE_87A386                      ;87A35B;
    LDA.B #$04                           ;87A35D;
    STA.B $02                            ;87A35F;
    REP #$20                             ;87A361;
    LDA.W #$003C                         ;87A363;
    STA.B $33                            ;87A366;
    LDA.B $0B                            ;87A368;
    AND.W #$000F                         ;87A36A;
    BNE CODE_87A377                      ;87A36D;
    LDA.W #$CEFB                         ;87A36F;
    STA.B $20                            ;87A372;
    JMP.W CODE_87A384                    ;87A374;

CODE_87A377:
    LDA.W #$CF0F                         ;87A377;
    STA.B $20                            ;87A37A;
    SEP #$20                             ;87A37C;
    LDA.B #$00                           ;87A37E;
    JSL.L CODE_848F07                    ;87A380;

CODE_87A384:
    SEP #$20                             ;87A384;

CODE_87A386:
    JSL.L CODE_848EEA                    ;87A386;
    RTS                                  ;87A38A;

CODE_87A38B:
    REP #$20                             ;87A38B;
    DEC.B $33                            ;87A38D;
    SEP #$20                             ;87A38F;
    BNE CODE_87A3A9                      ;87A391;
    LDA.B #$02                           ;87A393;
    STA.B $01                            ;87A395;
    STZ.B $02                            ;87A397;
    LDA.B #$00                           ;87A399;
    JSL.L CODE_848F07                    ;87A39B;
    LDA.B #$01                           ;87A39F;
    STA.B $37                            ;87A3A1;
    JSR.W CODE_87A3AE                    ;87A3A3;
    JMP.W CODE_87A3AD                    ;87A3A6;

CODE_87A3A9:
    JSL.L CODE_848EEA                    ;87A3A9;

CODE_87A3AD:
    RTS                                  ;87A3AD;

CODE_87A3AE:
    REP #$20                             ;87A3AE;
    TDC                                  ;87A3B0;
    LSR A                                ;87A3B1;
    LSR A                                ;87A3B2;
    LSR A                                ;87A3B3;
    LSR A                                ;87A3B4;
    LSR A                                ;87A3B5;
    CLC                                  ;87A3B6;
    ADC.W $0B9C                          ;87A3B7;
    AND.W #$0003                         ;87A3BA;
    CLC                                  ;87A3BD;
    ADC.W #$0014                         ;87A3BE;
    SEP #$20                             ;87A3C1;
    STA.B $38                            ;87A3C3;
    STZ.B $39                            ;87A3C5;
    RTS                                  ;87A3C7;

CODE_87A3C8:
    REP #$10                             ;87A3C8;
    JSL.L CODE_8282D3                    ;87A3CA;
    BNE CODE_87A3E9                      ;87A3CE;
    INC.W $0000,X                        ;87A3D0;
    LDA.B #$10                           ;87A3D3;
    STA.W $000A,X                        ;87A3D5;
    LDA.B #$0C                           ;87A3D8;
    STA.W $000B,X                        ;87A3DA;
    REP #$20                             ;87A3DD;
    LDA.B $05                            ;87A3DF;
    STA.W $0005,X                        ;87A3E1;
    LDA.B $08                            ;87A3E4;
    STA.W $0008,X                        ;87A3E6;

CODE_87A3E9:
    SEP #$30                             ;87A3E9;
    RTS                                  ;87A3EB;

CODE_87A3EC:
    REP #$20                             ;87A3EC;
    LDA.B $05                            ;87A3EE;
    SEC                                  ;87A3F0;
    SBC.W $0002                          ;87A3F1;
    BCC CODE_87A3FE                      ;87A3F4;
    CMP.W $0000                          ;87A3F6;
    BCS CODE_87A433                      ;87A3F9;
    JMP.W CODE_87A409                    ;87A3FB;

CODE_87A3FE:
    REP #$20                             ;87A3FE;
    EOR.W #$FFFF                         ;87A400;
    INC A                                ;87A403;
    CMP.W $0000                          ;87A404;
    BCS CODE_87A433                      ;87A407;

CODE_87A409:
    SEP #$20                             ;87A409;
    LDA.B $0B                            ;87A40B;
    AND.B #$80                           ;87A40D;
    BEQ CODE_87A42E                      ;87A40F;
    REP #$20                             ;87A411;
    LDA.B $08                            ;87A413;
    SEC                                  ;87A415;
    SBC.W $0008                          ;87A416;
    BCC CODE_87A423                      ;87A419;
    CMP.W $0004                          ;87A41B;
    BCS CODE_87A433                      ;87A41E;
    JMP.W CODE_87A42E                    ;87A420;

CODE_87A423:
    REP #$20                             ;87A423;
    EOR.W #$FFFF                         ;87A425;
    INC A                                ;87A428;
    CMP.W $0004                          ;87A429;
    BCS CODE_87A433                      ;87A42C;

CODE_87A42E:
    SEP #$20                             ;87A42E;
    LDA.B #$00                           ;87A430;
    RTL                                  ;87A432;

CODE_87A433:
    SEP #$20                             ;87A433;
    LDA.B #$01                           ;87A435;
    RTL                                  ;87A437;

CODE_87A438:
    BEQ CODE_87A451                      ;87A438;
    LDA.B #$06                           ;87A43A;
    STA.B $01                            ;87A43C;
    STZ.B $02                            ;87A43E;
    LDA.B #$80                           ;87A440;
    STA.B $3B                            ;87A442;
    REP #$20                             ;87A444;
    STZ.B $1A                            ;87A446;
    LDA.W #$0280                         ;87A448;
    STA.B $1C                            ;87A44B;
    SEP #$20                             ;87A44D;
    LDA.B #$01                           ;87A44F;

CODE_87A451:
    RTS                                  ;87A451;

CODE_87A452:
    LDA.B $0F                            ;87A452;
    CMP.B #$01                           ;87A454;
    BNE CODE_87A45E                      ;87A456;
    LDA.B #$43                           ;87A458;
    JSL.L CODE_8088A2                    ;87A45A;

CODE_87A45E:
    RTS                                  ;87A45E;

CODE_87A45F:
    LDX.B $01                            ;87A45F;
    JSR.W (PTR16_87A4CE,X)               ;87A461;
    LDA.B $1C                            ;87A464;
    BEQ CODE_87A46B                      ;87A466;
    JMP.W CODE_87A4CD                    ;87A468;

CODE_87A46B:
    LDA.B $27                            ;87A46B;
    BEQ CODE_87A485                      ;87A46D;
    JSL.L CODE_849B43                    ;87A46F;
    BEQ CODE_87A4A3                      ;87A473;
    LDA.B $27                            ;87A475;
    AND.B #$7F                           ;87A477;
    BNE CODE_87A4A1                      ;87A479;
    JSL.L CODE_84A4AB                    ;87A47B;
    LDA.B #$01                           ;87A47F;
    JSL.L CODE_84A37F                    ;87A481;

CODE_87A485:
    LDA.B #$00                           ;87A485;
    STA.B $27                            ;87A487;
    JSR.W CODE_87A8DA                    ;87A489;
    JSL.L CODE_87A5AE                    ;87A48C;
    LDA.B $1F                            ;87A490;
    CMP.B #$F0                           ;87A492;
    BNE CODE_87A49F                      ;87A494;
    JSR.W CODE_87A94F                    ;87A496;
    JSL.L CODE_828387                    ;87A499;
    SEP #$10                             ;87A49D;

CODE_87A49F:
    BRA CODE_87A4CD                      ;87A49F;

CODE_87A4A1:
    BRA CODE_87A4A3                      ;87A4A1;

CODE_87A4A3:
    JSL.L CODE_849B03                    ;87A4A3;
    JSL.L CODE_87A5AE                    ;87A4A7;
    JSL.L CODE_8280B4                    ;87A4AB;
    JSL.L CODE_82806E                    ;87A4AF;
    BCC CODE_87A4CD                      ;87A4B3;
    LDA.B #$00                           ;87A4B5;
    STA.B $27                            ;87A4B7;
    JSR.W CODE_87A8DA                    ;87A4B9;
    JSL.L CODE_87A5AE                    ;87A4BC;
    LDA.B $1F                            ;87A4C0;
    CMP.B #$F0                           ;87A4C2;
    BNE CODE_87A4CD                      ;87A4C4;
    JSR.W CODE_87A94F                    ;87A4C6;
    JSL.L CODE_828387                    ;87A4C9;

CODE_87A4CD:
    RTL                                  ;87A4CD;

PTR16_87A4CE:
    dw CODE_87A4D2                       ;87A4CE;
    dw CODE_87A597                       ;87A4D0;

CODE_87A4D2:
    JSL.L CODE_82827D                    ;87A4D2;
    STZ.B $1C                            ;87A4D6;
    JSL.L CODE_84A1D0                    ;87A4D8;
    CPY.B #$04                           ;87A4DC;
    BPL CODE_87A4E7                      ;87A4DE;
    LDA.W $1F2C                          ;87A4E0;
    CMP.B #$C0                           ;87A4E3;
    BNE CODE_87A4F3                      ;87A4E5;

CODE_87A4E7:
    NOP                                  ;87A4E7;
    JSL.L CODE_828387                    ;87A4E8;
    LDA.B #$01                           ;87A4EC;
    STA.B $1C                            ;87A4EE;
    JMP.W CODE_87A596                    ;87A4F0;

CODE_87A4F3:
    LDA.W $1F2C                          ;87A4F3;
    CMP.B #$40                           ;87A4F6;
    BEQ CODE_87A507                      ;87A4F8;
    LDA.B #$40                           ;87A4FA;
    STA.B $2D                            ;87A4FC;
    ORA.W $1F2C                          ;87A4FE;
    STA.W $1F2C                          ;87A501;
    JMP.W CODE_87A511                    ;87A504;

CODE_87A507:
    LDA.B #$80                           ;87A507;
    STA.B $2D                            ;87A509;
    ORA.W $1F2C                          ;87A50B;
    STA.W $1F2C                          ;87A50E;

CODE_87A511:
    LDA.B #$02                           ;87A511;
    STA.B $27                            ;87A513;
    LDA.B #$01                           ;87A515;
    STA.B $28                            ;87A517;
    LDA.B #$02                           ;87A519;
    STA.B $26                            ;87A51B;
    LDA.B #$04                           ;87A51D;
    STA.B $12                            ;87A51F;
    LDA.B #$03                           ;87A521;
    STA.B $2F                            ;87A523;
    STZ.B $0B                            ;87A525;
    JSL.L CODE_879ED4                    ;87A527;
    LDA.B $11                            ;87A52B;
    AND.B #$40                           ;87A52D;
    BNE CODE_87A54C                      ;87A52F;
    REP #$20                             ;87A531;
    LDA.W #$FA00                         ;87A533;
    STA.B $1A                            ;87A536;
    LDA.W #$0020                         ;87A538;
    STA.B $3C                            ;87A53B;
    STZ.B $36                            ;87A53D;
    SEP #$20                             ;87A53F;
    LDA.B #$18                           ;87A541;
    STA.B $1E                            ;87A543;
    LDA.B #$0C                           ;87A545;
    STA.B $3E                            ;87A547;
    JMP.W CODE_87A562                    ;87A549;

CODE_87A54C:
    REP #$20                             ;87A54C;
    LDA.W #$0600                         ;87A54E;
    STA.B $1A                            ;87A551;
    LDA.W #$FFE0                         ;87A553;
    STA.B $3C                            ;87A556;
    SEP #$20                             ;87A558;
    LDA.B #$E8                           ;87A55A;
    STA.B $1E                            ;87A55C;
    LDA.B #$01                           ;87A55E;
    STA.B $0B                            ;87A560;

CODE_87A562:
    REP #$20                             ;87A562;
    LDA.W #$D0C6                         ;87A564;
    STA.B $20                            ;87A567;
    STZ.B $2B                            ;87A569;
    SEP #$20                             ;87A56B;
    LDA.W $1F2C                          ;87A56D;
    BEQ CODE_87A590                      ;87A570;
    CMP.B #$40                           ;87A572;
    BEQ CODE_87A588                      ;87A574;
    CMP.B #$80                           ;87A576;
    BEQ CODE_87A57D                      ;87A578;
    JMP.W CODE_87A590                    ;87A57A;

CODE_87A57D:
    LDA.B #$FF                           ;87A57D;
    STA.W $2126                          ;87A57F;
    STZ.W $2127                          ;87A582;
    JMP.W CODE_87A590                    ;87A585;

CODE_87A588:
    LDA.B #$FF                           ;87A588;
    STA.W $2128                          ;87A58A;
    STZ.W $2129                          ;87A58D;

CODE_87A590:
    LDA.B #$00                           ;87A590;
    JSL.L CODE_848F07                    ;87A592;

CODE_87A596:
    RTS                                  ;87A596;

CODE_87A597:
    JSL.L CODE_82823E                    ;87A597;
    JSL.L CODE_848EEA                    ;87A59B;
    LDA.B $2F                            ;87A59F;
    DEC A                                ;87A5A1;
    STA.B $2F                            ;87A5A2;
    BNE CODE_87A5AD                      ;87A5A4;
    JSR.W CODE_87A974                    ;87A5A6;
    LDA.B #$03                           ;87A5A9;
    STA.B $2F                            ;87A5AB;

CODE_87A5AD:
    RTS                                  ;87A5AD;

CODE_87A5AE:
    LDX.B $02                            ;87A5AE;
    BNE CODE_87A5DD                      ;87A5B0;
    PHB                                  ;87A5B2;
    REP #$30                             ;87A5B3;
    LDA.B $2D                            ;87A5B5;
    AND.W #$00FF                         ;87A5B7;
    CMP.W #$0040                         ;87A5BA;
    BNE CODE_87A5CE                      ;87A5BD;
    LDX.W #$D0CA                         ;87A5BF;
    LDY.W #$0AA1                         ;87A5C2;
    LDA.W #$000D                         ;87A5C5;
    MVN $00,$86                          ;87A5C8;
    JMP.W CODE_87A5DA                    ;87A5CB;

CODE_87A5CE:
    LDX.W #$D0D8                         ;87A5CE;
    LDY.W #$0AAF                         ;87A5D1;
    LDA.W #$000D                         ;87A5D4;
    MVN $00,$86                          ;87A5D7;

CODE_87A5DA:
    SEP #$30                             ;87A5DA;
    PLB                                  ;87A5DC;

CODE_87A5DD:
    JMP.W CODE_87A5E6                    ;87A5DD;

PTR16_87A5E0:
    dw CODE_87A6A1                       ;87A5E0;
    dw CODE_87A740                       ;87A5E2;
    dw CODE_87A74D                       ;87A5E4;

CODE_87A5E6:
    LDX.B $02                            ;87A5E6;
    JSR.W (PTR16_87A5E0,X)               ;87A5E8;
    PHB                                  ;87A5EB;
    LDA.B $2D                            ;87A5EC;
    CMP.B #$40                           ;87A5EE;
    BNE CODE_87A647                      ;87A5F0;
    REP #$30                             ;87A5F2;
    LDA.B $2B                            ;87A5F4;
    BNE CODE_87A61E                      ;87A5F6;
    LDX.W #$D0E6                         ;87A5F8;
    LDY.W #$0B22                         ;87A5FB;
    LDA.W #$0013                         ;87A5FE;
    MVN $00,$86                          ;87A601;
    LDX.W #$D000                         ;87A604;
    LDY.W #$D1FE                         ;87A607;
    LDA.W #$00E0                         ;87A60A;
    MVN $7F,$7F                          ;87A60D;
    LDX.W #$D0FF                         ;87A610;
    LDY.W #$D2FD                         ;87A613;
    LDA.W #$00E0                         ;87A616;
    MVN $7F,$7F                          ;87A619;
    BRA CODE_87A642                      ;87A61C;

CODE_87A61E:
    LDX.W #$D0FA                         ;87A61E;
    LDY.W #$0B22                         ;87A621;
    LDA.W #$0013                         ;87A624;
    MVN $00,$86                          ;87A627;
    LDX.W #$D000                         ;87A62A;
    LDY.W #$D3FC                         ;87A62D;
    LDA.W #$00E0                         ;87A630;
    MVN $7F,$7F                          ;87A633;
    LDX.W #$D0FF                         ;87A636;
    LDY.W #$D4FB                         ;87A639;
    LDA.W #$00E0                         ;87A63C;
    MVN $7F,$7F                          ;87A63F;

CODE_87A642:
    SEP #$30                             ;87A642;
    JMP.W CODE_87A697                    ;87A644;

CODE_87A647:
    REP #$30                             ;87A647;
    LDA.B $2B                            ;87A649;
    BNE CODE_87A673                      ;87A64B;
    LDX.W #$D10E                         ;87A64D;
    LDY.W #$0B36                         ;87A650;
    LDA.W #$0013                         ;87A653;
    MVN $00,$86                          ;87A656;
    LDX.W #$D000                         ;87A659;
    LDY.W #$D5FA                         ;87A65C;
    LDA.W #$00E0                         ;87A65F;
    MVN $7F,$7F                          ;87A662;
    LDX.W #$D0FF                         ;87A665;
    LDY.W #$D6F9                         ;87A668;
    LDA.W #$00E0                         ;87A66B;
    MVN $7F,$7F                          ;87A66E;
    BRA CODE_87A697                      ;87A671;

CODE_87A673:
    LDX.W #$D122                         ;87A673;
    LDY.W #$0B36                         ;87A676;
    LDA.W #$0013                         ;87A679;
    MVN $00,$86                          ;87A67C;
    LDX.W #$D000                         ;87A67F;
    LDY.W #$D7F8                         ;87A682;
    LDA.W #$00E0                         ;87A685;
    MVN $7F,$7F                          ;87A688;
    LDX.W #$D0FF                         ;87A68B;
    LDY.W #$D8F7                         ;87A68E;
    LDA.W #$00E0                         ;87A691;
    MVN $7F,$7F                          ;87A694;

CODE_87A697:
    SEP #$30                             ;87A697;
    LDA.B $2B                            ;87A699;
    EOR.B #$01                           ;87A69B;
    STA.B $2B                            ;87A69D;
    PLB                                  ;87A69F;
    RTL                                  ;87A6A0;

CODE_87A6A1:
    LDA.B #$33                           ;87A6A1;
    JSL.L CODE_8088A2                    ;87A6A3;
    REP #$20                             ;87A6A7;
    LDA.B $05                            ;87A6A9;
    CLC                                  ;87A6AB;
    ADC.B $3C                            ;87A6AC;
    SEC                                  ;87A6AE;
    SBC.W $1E4D                          ;87A6AF;
    CMP.W #$0100                         ;87A6B2;
    BCC CODE_87A6BA                      ;87A6B5;
    SEP #$20                             ;87A6B7;
    RTS                                  ;87A6B9;

CODE_87A6BA:
    SEP #$20                             ;87A6BA;
    LDA.B #$02                           ;87A6BC;
    STA.B $02                            ;87A6BE;
    LDA.B $2D                            ;87A6C0;
    CMP.B #$40                           ;87A6C2;
    BNE CODE_87A6CF                      ;87A6C4;
    INC.W $0AA1                          ;87A6C6;
    INC.W $0AA8                          ;87A6C9;
    JMP.W CODE_87A6D5                    ;87A6CC;

CODE_87A6CF:
    INC.W $0AAF                          ;87A6CF;
    INC.W $0AB6                          ;87A6D2;

CODE_87A6D5:
    STZ.B $03                            ;87A6D5;
    STZ.B $39                            ;87A6D7;
    REP #$20                             ;87A6D9;
    LDA.B $05                            ;87A6DB;
    STA.B $34                            ;87A6DD;
    LDA.B $1E                            ;87A6DF;
    AND.W #$00FF                         ;87A6E1;
    CLC                                  ;87A6E4;
    ADC.B $34                            ;87A6E5;
    SEC                                  ;87A6E7;
    SBC.W $1E4D                          ;87A6E8;
    STA.B $34                            ;87A6EB;
    LDA.B $08                            ;87A6ED;
    SEC                                  ;87A6EF;
    SBC.W $1E50                          ;87A6F0;
    SEC                                  ;87A6F3;
    SBC.W #$0018                         ;87A6F4;
    STA.B $36                            ;87A6F7;
    BPL CODE_87A725                      ;87A6F9;
    LDA.W #$0001                         ;87A6FB;
    STA.B $39                            ;87A6FE;
    LDA.W $1E50                          ;87A700;
    SEC                                  ;87A703;
    SBC.W $1E6C                          ;87A704;
    BMI CODE_87A70F                      ;87A707;
    STA.W $0000                          ;87A709;
    JMP.W CODE_87A715                    ;87A70C;

CODE_87A70F:
    LDA.W #$0001                         ;87A70F;
    STA.W $0000                          ;87A712;

CODE_87A715:
    SEP #$20                             ;87A715;
    LDA.B #$FF                           ;87A717;
    SEC                                  ;87A719;
    SBC.B $36                            ;87A71A;
    CLC                                  ;87A71C;
    ADC.W $0000                          ;87A71D;
    STA.B $38                            ;87A720;
    JMP.W CODE_87A72B                    ;87A722;

CODE_87A725:
    REP #$20                             ;87A725;
    STZ.B $38                            ;87A727;
    STZ.B $39                            ;87A729;

CODE_87A72B:
    SEP #$20                             ;87A72B;
    LDA.B #$02                           ;87A72D;
    STA.W $0004                          ;87A72F;
    STZ.B $3E                            ;87A732;
    STZ.B $1F                            ;87A734;
    LDA.B #$31                           ;87A736;
    STA.B $3B                            ;87A738;
    STA.W $0002                          ;87A73A;
    JMP.W CODE_87A7F6                    ;87A73D;

CODE_87A740:
    LDA.B #$04                           ;87A740;
    STA.B $02                            ;87A742;
    LDA.B #$20                           ;87A744;
    STA.W $00C9                          ;87A746;
    STA.W $2130                          ;87A749;
    RTS                                  ;87A74C;

CODE_87A74D:
    REP #$20                             ;87A74D;
    LDA.B $05                            ;87A74F;
    STA.B $34                            ;87A751;
    LDA.B $1E                            ;87A753;
    AND.W #$00FF                         ;87A755;
    CLC                                  ;87A758;
    ADC.B $34                            ;87A759;
    SEC                                  ;87A75B;
    SBC.W $1E4D                          ;87A75C;
    STA.B $34                            ;87A75F;
    LDA.B $0B                            ;87A761;
    AND.W #$00FF                         ;87A763;
    CMP.W #$0001                         ;87A766;
    BNE CODE_87A77A                      ;87A769;
    LDA.B $34                            ;87A76B;
    CMP.W #$0200                         ;87A76D;
    BMI CODE_87A786                      ;87A770;
    LDA.W #$00FF                         ;87A772;
    STA.B $34                            ;87A775;
    JMP.W CODE_87A786                    ;87A777;

CODE_87A77A:
    LDA.B $34                            ;87A77A;
    CMP.W #$0001                         ;87A77C;
    BPL CODE_87A786                      ;87A77F;
    LDA.W #$0000                         ;87A781;
    STA.B $34                            ;87A784;

CODE_87A786:
    JMP.W CODE_87A792                    ;87A786;
    SEP #$20                             ;87A789;
    LDA.B #$06                           ;87A78B;
    STA.B $02                            ;87A78D;
    JMP.W CODE_87A7F2                    ;87A78F;

CODE_87A792:
    SEP #$20                             ;87A792;
    LDA.B $03                            ;87A794;
    BNE CODE_87A79C                      ;87A796;
    LDA.B #$0C                           ;87A798;
    STA.B $3E                            ;87A79A;

CODE_87A79C:
    LDA.B $3B                            ;87A79C;
    STA.B $3B                            ;87A79E;
    STA.W $0002                          ;87A7A0;
    LDA.B #$02                           ;87A7A3;
    STA.W $0004                          ;87A7A5;
    LDA.B $03                            ;87A7A8;
    BNE CODE_87A7ED                      ;87A7AA;
    REP #$20                             ;87A7AC;
    LDA.B $08                            ;87A7AE;
    SEC                                  ;87A7B0;
    SBC.W $1E50                          ;87A7B1;
    SEC                                  ;87A7B4;
    SBC.W #$0018                         ;87A7B5;
    STA.B $36                            ;87A7B8;
    BPL CODE_87A7E7                      ;87A7BA;
    LDA.W #$0001                         ;87A7BC;
    STA.B $39                            ;87A7BF;
    LDA.W $1E50                          ;87A7C1;
    SEC                                  ;87A7C4;
    SBC.W $1E6C                          ;87A7C5;
    BMI CODE_87A7D1                      ;87A7C8;
    INC A                                ;87A7CA;
    STA.W $0000                          ;87A7CB;
    JMP.W CODE_87A7D7                    ;87A7CE;

CODE_87A7D1:
    LDA.W #$0001                         ;87A7D1;
    STA.W $0000                          ;87A7D4;

CODE_87A7D7:
    SEP #$20                             ;87A7D7;
    LDA.B #$FF                           ;87A7D9;
    SEC                                  ;87A7DB;
    SBC.B $36                            ;87A7DC;
    CLC                                  ;87A7DE;
    ADC.W $0000                          ;87A7DF;
    STA.B $38                            ;87A7E2;
    JMP.W CODE_87A7ED                    ;87A7E4;

CODE_87A7E7:
    REP #$20                             ;87A7E7;
    STZ.B $38                            ;87A7E9;
    STZ.B $39                            ;87A7EB;

CODE_87A7ED:
    SEP #$20                             ;87A7ED;
    JSR.W CODE_87A7F6                    ;87A7EF;

CODE_87A7F2:
    RTS                                  ;87A7F2;

CODE_87A7F3:
    SEP #$30                             ;87A7F3;
    RTS                                  ;87A7F5;

CODE_87A7F6:
    LDY.B #$00                           ;87A7F6;
    LDA.W DATA8_86D136,Y                 ;87A7F8;
    STA.B $3F                            ;87A7FB;
    REP #$30                             ;87A7FD;
    LDX.W #$0000                         ;87A7FF;

CODE_87A802:
    LDA.B $39                            ;87A802;
    BNE CODE_87A822                      ;87A804;
    LDA.W #$FFFF                         ;87A806;
    STA.L $7FD000,X                      ;87A809;
    LDA.W #$0000                         ;87A80D;
    STA.L $7FD0FF,X                      ;87A810;
    INX                                  ;87A814;
    INX                                  ;87A815;
    CPX.B $36                            ;87A816;
    BCC CODE_87A802                      ;87A818;
    CPX.W #$00E8                         ;87A81A;
    BPL CODE_87A7F3                      ;87A81D;
    JMP.W CODE_87A835                    ;87A81F;

CODE_87A822:
    REP #$20                             ;87A822;
    LDA.B $39                            ;87A824;
    BEQ CODE_87A835                      ;87A826;
    SEP #$20                             ;87A828;
    LDA.B $38                            ;87A82A;
    BEQ CODE_87A835                      ;87A82C;
    DEC.B $38                            ;87A82E;
    BNE CODE_87A835                      ;87A830;
    LDX.W #$0000                         ;87A832;

CODE_87A835:
    SEP #$20                             ;87A835;
    LDA.B $0B                            ;87A837;
    CMP.B #$01                           ;87A839;
    BNE CODE_87A878                      ;87A83B;
    LDA.B $34                            ;87A83D;
    SEC                                  ;87A83F;
    SBC.B $3E                            ;87A840;
    STA.L $7FD0FF,X                      ;87A842;
    LDA.B #$00                           ;87A846;
    CLC                                  ;87A848;
    ADC.B $1F                            ;87A849;
    STA.L $7FD000,X                      ;87A84B;
    LDA.B $03                            ;87A84F;
    BNE CODE_87A86A                      ;87A851;
    LDA.B $3F                            ;87A853;
    BNE CODE_87A873                      ;87A855;
    LDA.W DATA8_86D136,Y                 ;87A857;
    STA.B $3F                            ;87A85A;
    CMP.B #$05                           ;87A85C;
    BMI CODE_87A86D                      ;87A85E;
    LDA.B $3F                            ;87A860;
    SEC                                  ;87A862;
    SBC.B #$05                           ;87A863;
    STA.B $3F                            ;87A865;
    INC.B $3E                            ;87A867;
    INY                                  ;87A869;

CODE_87A86A:
    JMP.W CODE_87A8B0                    ;87A86A;

CODE_87A86D:
    DEC.B $3E                            ;87A86D;
    INY                                  ;87A86F;
    JMP.W CODE_87A8B0                    ;87A870;

CODE_87A873:
    DEC.B $3F                            ;87A873;
    JMP.W CODE_87A8B0                    ;87A875;

CODE_87A878:
    LDA.B $34                            ;87A878;
    CLC                                  ;87A87A;
    ADC.B $3E                            ;87A87B;
    STA.L $7FD000,X                      ;87A87D;
    LDA.B #$FF                           ;87A881;
    SEC                                  ;87A883;
    SBC.B $1F                            ;87A884;
    STA.L $7FD0FF,X                      ;87A886;
    LDA.B $03                            ;87A88A;
    BNE CODE_87A8B0                      ;87A88C;
    LDA.B $3F                            ;87A88E;
    BNE CODE_87A8AE                      ;87A890;
    LDA.W DATA8_86D136,Y                 ;87A892;
    STA.B $3F                            ;87A895;
    CMP.B #$05                           ;87A897;
    BMI CODE_87A8A8                      ;87A899;
    LDA.B $3F                            ;87A89B;
    SEC                                  ;87A89D;
    SBC.B #$05                           ;87A89E;
    STA.B $3F                            ;87A8A0;
    INC.B $3E                            ;87A8A2;
    INY                                  ;87A8A4;
    JMP.W CODE_87A8B0                    ;87A8A5;

CODE_87A8A8:
    DEC.B $3E                            ;87A8A8;
    INY                                  ;87A8AA;
    JMP.W CODE_87A8B0                    ;87A8AB;

CODE_87A8AE:
    DEC.B $3F                            ;87A8AE;

CODE_87A8B0:
    INX                                  ;87A8B0;
    DEC.W $0002                          ;87A8B1;
    BEQ CODE_87A8B9                      ;87A8B4;
    JMP.W CODE_87A822                    ;87A8B6;

CODE_87A8B9:
    LDA.B $38                            ;87A8B9;
    BEQ CODE_87A8C0                      ;87A8BB;
    JMP.W CODE_87A822                    ;87A8BD;

CODE_87A8C0:
    REP #$20                             ;87A8C0;
    LDA.W #$FFFF                         ;87A8C2;
    STA.L $7FD000,X                      ;87A8C5;
    LDA.W #$0000                         ;87A8C9;
    STA.L $7FD0FF,X                      ;87A8CC;
    INX                                  ;87A8D0;
    INX                                  ;87A8D1;
    CPX.W #$00E8                         ;87A8D2;
    BCC CODE_87A8C0                      ;87A8D5;
    SEP #$30                             ;87A8D7;
    RTS                                  ;87A8D9;

CODE_87A8DA:
    LDA.B $3B                            ;87A8DA;
    CMP.B #$01                           ;87A8DC;
    BEQ CODE_87A916                      ;87A8DE;
    REP #$20                             ;87A8E0;
    LDA.B $36                            ;87A8E2;
    CLC                                  ;87A8E4;
    ADC.W #$0003                         ;87A8E5;
    STA.B $36                            ;87A8E8;
    BPL CODE_87A916                      ;87A8EA;
    LDA.W $1E50                          ;87A8EC;
    SEC                                  ;87A8EF;
    SBC.W $1E6C                          ;87A8F0;
    BMI CODE_87A8FC                      ;87A8F3;
    INC A                                ;87A8F5;
    STA.W $0000                          ;87A8F6;
    JMP.W CODE_87A902                    ;87A8F9;

CODE_87A8FC:
    LDA.W #$0001                         ;87A8FC;
    STA.W $0000                          ;87A8FF;

CODE_87A902:
    SEP #$20                             ;87A902;
    LDA.B #$FF                           ;87A904;
    SEC                                  ;87A906;
    SBC.B $36                            ;87A907;
    CLC                                  ;87A909;
    ADC.W $0000                          ;87A90A;
    STA.B $38                            ;87A90D;
    LDA.B #$01                           ;87A90F;
    STA.B $39                            ;87A911;
    JMP.W CODE_87A91C                    ;87A913;

CODE_87A916:
    SEP #$20                             ;87A916;
    STZ.B $38                            ;87A918;
    STZ.B $39                            ;87A91A;

CODE_87A91C:
    LDA.B #$01                           ;87A91C;
    STA.B $03                            ;87A91E;
    STZ.B $3E                            ;87A920;
    LDA.B $3B                            ;87A922;
    SEC                                  ;87A924;
    SBC.B #$06                           ;87A925;
    STA.B $3B                            ;87A927;
    STA.W $0002                          ;87A929;
    CMP.B #$01                           ;87A92C;
    BPL CODE_87A94B                      ;87A92E;
    LDA.B #$01                           ;87A930;
    STA.B $3B                            ;87A932;
    STA.W $0002                          ;87A934;
    LDA.B $1F                            ;87A937;
    CLC                                  ;87A939;
    ADC.B #$18                           ;87A93A;
    STA.B $1F                            ;87A93C;
    CMP.B #$F0                           ;87A93E;
    BNE CODE_87A94B                      ;87A940;
    REP #$20                             ;87A942;
    LDA.W #$00E8                         ;87A944;
    STA.B $36                            ;87A947;
    SEP #$20                             ;87A949;

CODE_87A94B:
    JSR.W CODE_87A7F6                    ;87A94B;
    RTS                                  ;87A94E;

CODE_87A94F:
    LDA.B $2D                            ;87A94F;
    CMP.B #$40                           ;87A951;
    BNE CODE_87A95E                      ;87A953;
    STZ.W $0AA1                          ;87A955;
    STZ.W $0AA8                          ;87A958;
    JMP.W CODE_87A964                    ;87A95B;

CODE_87A95E:
    STZ.W $0AAF                          ;87A95E;
    STZ.W $0AB6                          ;87A961;

CODE_87A964:
    LDA.B $2D                            ;87A964;
    TRB.W $1F2C                          ;87A966;
    LDA.W $1F2C                          ;87A969;
    BNE CODE_87A973                      ;87A96C;
    LDA.B #$00                           ;87A96E;
    STA.W $00C9                          ;87A970;

CODE_87A973:
    RTS                                  ;87A973;

CODE_87A974:
    REP #$10                             ;87A974;
    JSL.L CODE_8282D3                    ;87A976;
    BNE CODE_87A9DC                      ;87A97A;
    INC.W $0000,X                        ;87A97C;
    LDA.B #$30                           ;87A97F;
    STA.W $000A,X                        ;87A981;
    LDA.B $11                            ;87A984;
    STA.W $0011,X                        ;87A986;
    LDA.L $7F8255                        ;87A989;
    STA.W $0018,X                        ;87A98D;
    LDA.B $16                            ;87A990;
    STA.W $0016,X                        ;87A992;
    LDA.B #$01                           ;87A995;
    STA.W $000B,X                        ;87A997;
    LDA.B $11                            ;87A99A;
    AND.B #$40                           ;87A99C;
    BNE CODE_87A9AE                      ;87A99E;
    REP #$20                             ;87A9A0;
    LDA.B $05                            ;87A9A2;
    CLC                                  ;87A9A4;
    ADC.W #$0010                         ;87A9A5;
    STA.W $0005,X                        ;87A9A8;
    JMP.W CODE_87A9B9                    ;87A9AB;

CODE_87A9AE:
    REP #$20                             ;87A9AE;
    LDA.B $05                            ;87A9B0;
    SEC                                  ;87A9B2;
    SBC.W #$0010                         ;87A9B3;
    STA.W $0005,X                        ;87A9B6;

CODE_87A9B9:
    REP #$20                             ;87A9B9;
    LDA.B $08                            ;87A9BB;
    CLC                                  ;87A9BD;
    ADC.W #$000D                         ;87A9BE;
    STA.W $0008,X                        ;87A9C1;
    LDA.W #$0000                         ;87A9C4;
    STA.W $001A,X                        ;87A9C7;
    LDA.W #$0100                         ;87A9CA;
    STA.W $001C,X                        ;87A9CD;
    SEP #$20                             ;87A9D0;
    LDA.B #$1E                           ;87A9D2;
    STA.W $0002,X                        ;87A9D4;
    LDA.B #$10                           ;87A9D7;
    STA.W $001E,X                        ;87A9D9;

CODE_87A9DC:
    SEP #$30                             ;87A9DC;
    RTS                                  ;87A9DE;

CODE_87A9DF:
    LDX.B $01                            ;87A9DF;
    JMP.W (PTR16_87A9E4,X)               ;87A9E1;

PTR16_87A9E4:
    dw CODE_87A9EA                       ;87A9E4;
    dw CODE_87AA0C                       ;87A9E6;
    dw CODE_87AB6A                       ;87A9E8;

CODE_87A9EA:
    JSL.L CODE_82827D                    ;87A9EA;
    LDA.B #$03                           ;87A9EE;
    STA.B $27                            ;87A9F0;
    LDA.B #$03                           ;87A9F2;
    STA.B $28                            ;87A9F4;
    LDA.B #$02                           ;87A9F6;
    STA.B $26                            ;87A9F8;
    LDA.B #$20                           ;87A9FA;
    STA.B $33                            ;87A9FC;
    STZ.B $29                            ;87A9FE;
    REP #$20                             ;87AA00;
    LDA.B $05                            ;87AA02;
    STA.B $35                            ;87AA04;
    LDA.W #$D16F                         ;87AA06;
    STA.B $20                            ;87AA09;
    RTL                                  ;87AA0B;

CODE_87AA0C:
    JSL.L CODE_82806E                    ;87AA0C;
    BCC CODE_87AA16                      ;87AA10;
    JML.L CODE_828387                    ;87AA12;

CODE_87AA16:
    LDA.L $7F836C                        ;87AA16;
    AND.B #$0F                           ;87AA1A;
    ORA.B $34                            ;87AA1C;
    STA.B $11                            ;87AA1E;
    LDX.B $02                            ;87AA20;
    JSR.W (PTR16_87AA4E,X)               ;87AA22;
    LDA.B #$04                           ;87AA25;
    STA.B $12                            ;87AA27;
    BIT.B $0F                            ;87AA29;
    BVS CODE_87AA4A                      ;87AA2B;
    LDA.B #$02                           ;87AA2D;
    STA.B $12                            ;87AA2F;
    JSL.L CODE_849B43                    ;87AA31;
    BEQ CODE_87AA46                      ;87AA35;
    BPL CODE_87AA42                      ;87AA37;
    JSL.L CODE_84A4AB                    ;87AA39;
    LDA.B #$04                           ;87AA3D;
    STA.B $01                            ;87AA3F;
    RTL                                  ;87AA41;

CODE_87AA42:
    LDA.B #$0E                           ;87AA42;
    TRB.B $11                            ;87AA44;

CODE_87AA46:
    JSL.L CODE_849B03                    ;87AA46;

CODE_87AA4A:
    JML.L CODE_8280B4                    ;87AA4A;

PTR16_87AA4E:
    dw CODE_87AA56                       ;87AA4E;
    dw CODE_87AAA8                       ;87AA50;
    dw CODE_87AADB                       ;87AA52;
    dw CODE_87AB35                       ;87AA54;

CODE_87AA56:
    LDX.B $03                            ;87AA56;
    JMP.W (PTR16_87AA5B,X)               ;87AA58;

PTR16_87AA5B:
    dw CODE_87AA61                       ;87AA5B;
    dw CODE_87AA80                       ;87AA5D;
    dw CODE_87AA89                       ;87AA5F;

CODE_87AA61:
    LDA.B #$02                           ;87AA61;
    STA.B $03                            ;87AA63;
    LDA.B #$20                           ;87AA65;
    STA.B $37                            ;87AA67;
    LDA.B #$30                           ;87AA69;
    STA.B $34                            ;87AA6B;
    REP #$20                             ;87AA6D;
    LDA.B $35                            ;87AA6F;
    STA.B $05                            ;87AA71;
    LDA.W #$0100                         ;87AA73;
    STA.B $1C                            ;87AA76;
    SEP #$20                             ;87AA78;
    LDA.B #$00                           ;87AA7A;
    JSL.L CODE_848F07                    ;87AA7C;

CODE_87AA80:
    DEC.B $37                            ;87AA80;
    BNE CODE_87AA88                      ;87AA82;
    LDA.B #$04                           ;87AA84;
    STA.B $03                            ;87AA86;

CODE_87AA88:
    RTS                                  ;87AA88;

CODE_87AA89:
    DEC.B $33                            ;87AA89;
    BNE CODE_87AA9C                      ;87AA8B;
    LDA.B #$20                           ;87AA8D;
    STA.B $33                            ;87AA8F;
    LDA.B #$02                           ;87AA91;
    STA.B $03                            ;87AA93;
    LDA.B #$20                           ;87AA95;
    STA.B $37                            ;87AA97;
    JMP.W CODE_87AB73                    ;87AA99;

CODE_87AA9C:
    JSR.W CODE_87AB80                    ;87AA9C;
    JSL.L CODE_82825D                    ;87AA9F;
    JSL.L CODE_848EEA                    ;87AAA3;
    RTS                                  ;87AAA7;

CODE_87AAA8:
    LDX.B $03                            ;87AAA8;
    BNE CODE_87AAB4                      ;87AAAA;
    INC.B $03                            ;87AAAC;
    LDA.B #$01                           ;87AAAE;
    JSL.L CODE_848F07                    ;87AAB0;

CODE_87AAB4:
    JSL.L CODE_848EEA                    ;87AAB4;
    LDA.B $0F                            ;87AAB8;
    BPL CODE_87AAC1                      ;87AABA;
    LDA.B #$04                           ;87AABC;
    JMP.W CODE_87AB6E                    ;87AABE;

CODE_87AAC1:
    AND.B #$0F                           ;87AAC1;
    TAX                                  ;87AAC3;
    CMP.B #$02                           ;87AAC4;
    BNE CODE_87AACC                      ;87AAC6;
    LDA.B #$00                           ;87AAC8;
    STA.B $34                            ;87AACA;

CODE_87AACC:
    REP #$21                             ;87AACC;
    LDA.W DATA8_86D173,X                 ;87AACE;
    AND.W #$00FF                         ;87AAD1;
    ADC.B $35                            ;87AAD4;
    STA.B $05                            ;87AAD6;
    SEP #$20                             ;87AAD8;
    RTS                                  ;87AADA;

CODE_87AADB:
    LDX.B $03                            ;87AADB;
    JMP.W (PTR16_87AAE0,X)               ;87AADD;

PTR16_87AAE0:
    dw CODE_87AAE6                       ;87AAE0;
    dw CODE_87AB04                       ;87AAE2;
    dw CODE_87AB0D                       ;87AAE4;

CODE_87AAE6:
    LDA.B #$02                           ;87AAE6;
    STA.B $03                            ;87AAE8;
    LDA.B $35                            ;87AAEA;
    STA.B $05                            ;87AAEC;
    LDA.B $36                            ;87AAEE;
    STA.B $06                            ;87AAF0;
    LDA.B #$3C                           ;87AAF2;
    STA.B $38                            ;87AAF4;
    LDA.B #$40                           ;87AAF6;
    STA.B $34                            ;87AAF8;
    LDA.B #$20                           ;87AAFA;
    STA.B $37                            ;87AAFC;
    LDA.B #$02                           ;87AAFE;
    JSL.L CODE_848F07                    ;87AB00;

CODE_87AB04:
    DEC.B $37                            ;87AB04;
    BNE CODE_87AB0C                      ;87AB06;
    LDA.B #$04                           ;87AB08;
    STA.B $03                            ;87AB0A;

CODE_87AB0C:
    RTS                                  ;87AB0C;

CODE_87AB0D:
    DEC.B $38                            ;87AB0D;
    BNE CODE_87AB16                      ;87AB0F;
    LDA.B #$06                           ;87AB11;
    JMP.W CODE_87AB6E                    ;87AB13;

CODE_87AB16:
    DEC.B $33                            ;87AB16;
    BNE CODE_87AB29                      ;87AB18;
    LDA.B #$20                           ;87AB1A;
    STA.B $33                            ;87AB1C;
    LDA.B #$02                           ;87AB1E;
    STA.B $03                            ;87AB20;
    LDA.B #$20                           ;87AB22;
    STA.B $37                            ;87AB24;
    JMP.W CODE_87AB73                    ;87AB26;

CODE_87AB29:
    JSR.W CODE_87AB80                    ;87AB29;
    JSL.L CODE_82825D                    ;87AB2C;
    JSL.L CODE_848EEA                    ;87AB30;
    RTS                                  ;87AB34;

CODE_87AB35:
    LDX.B $03                            ;87AB35;
    BNE CODE_87AB41                      ;87AB37;
    INC.B $03                            ;87AB39;
    LDA.B #$03                           ;87AB3B;
    JSL.L CODE_848F07                    ;87AB3D;

CODE_87AB41:
    JSL.L CODE_848EEA                    ;87AB41;
    LDA.B $0F                            ;87AB45;
    BPL CODE_87AB4E                      ;87AB47;
    LDA.B #$00                           ;87AB49;
    JMP.W CODE_87AB6E                    ;87AB4B;

CODE_87AB4E:
    AND.B #$0F                           ;87AB4E;
    TAX                                  ;87AB50;
    BNE CODE_87AB57                      ;87AB51;
    LDA.B #$70                           ;87AB53;
    STA.B $34                            ;87AB55;

CODE_87AB57:
    REP #$20                             ;87AB57;
    LDA.W DATA8_86D173,X                 ;87AB59;
    AND.W #$00FF                         ;87AB5C;
    EOR.W #$FFFF                         ;87AB5F;
    INC A                                ;87AB62;
    ADC.B $35                            ;87AB63;
    STA.B $05                            ;87AB65;
    SEP #$20                             ;87AB67;
    RTS                                  ;87AB69;

CODE_87AB6A:
    JML.L CODE_828387                    ;87AB6A;

CODE_87AB6E:
    STA.B $02                            ;87AB6E;
    STZ.B $03                            ;87AB70;
    RTS                                  ;87AB72;

CODE_87AB73:
    REP #$20                             ;87AB73;
    LDA.B $1C                            ;87AB75;
    EOR.W #$FFFF                         ;87AB77;
    INC A                                ;87AB7A;
    STA.B $1C                            ;87AB7B;
    SEP #$20                             ;87AB7D;
    RTS                                  ;87AB7F;

CODE_87AB80:
    LDA.B #$10                           ;87AB80;
    LDX.B $1D                            ;87AB82;
    BMI CODE_87AB88                      ;87AB84;
    LDA.B #$F0                           ;87AB86;

CODE_87AB88:
    STA.B $2A                            ;87AB88;
    JSL.L CODE_8490A0                    ;87AB8A;
    CMP.B #$12                           ;87AB8E;
    BEQ CODE_87ABA2                      ;87AB90;
    REP #$20                             ;87AB92;
    LDA.B $1C                            ;87AB94;
    EOR.W #$FFFF                         ;87AB96;
    INC A                                ;87AB99;
    STA.B $1C                            ;87AB9A;
    SEP #$20                             ;87AB9C;
    LDA.B #$20                           ;87AB9E;
    STA.B $33                            ;87ABA0;

CODE_87ABA2:
    RTS                                  ;87ABA2;

CODE_87ABA3:
    LDX.B $01                            ;87ABA3;
    JMP.W (PTR16_87ABA8,X)               ;87ABA5;

PTR16_87ABA8:
    dw CODE_87ABAE                       ;87ABA8;
    dw CODE_87ABF9                       ;87ABAA;
    dw CODE_87ADCC                       ;87ABAC;

CODE_87ABAE:
    LDA.B #$02                           ;87ABAE;
    STA.B $01                            ;87ABB0;
    LDA.B #$06                           ;87ABB2;
    STA.B $12                            ;87ABB4;
    LDA.B #$20                           ;87ABB6;
    STA.B $18                            ;87ABB8;
    REP #$20                             ;87ABBA;
    LDA.B $0B                            ;87ABBC;
    AND.W #$00FF                         ;87ABBE;
    ASL A                                ;87ABC1;
    TAX                                  ;87ABC2;
    LDA.W DATA8_86D176,X                 ;87ABC3;
    AND.W #$00FF                         ;87ABC6;
    CLC                                  ;87ABC9;
    ADC.W $1E4D                          ;87ABCA;
    STA.B $05                            ;87ABCD;
    LDA.W DATA8_86D177,X                 ;87ABCF;
    AND.W #$00FF                         ;87ABD2;
    CLC                                  ;87ABD5;
    ADC.W $1E50                          ;87ABD6;
    STA.B $08                            ;87ABD9;
    LDA.W #$A8E8                         ;87ABDB;
    STA.B $31                            ;87ABDE;
    SEP #$20                             ;87ABE0;
    LDY.B $0B                            ;87ABE2;
    LDA.W DATA8_86D194,Y                 ;87ABE4;
    STA.B $10                            ;87ABE7;
    TAX                                  ;87ABE9;
    LDA.L $7F8300,X                      ;87ABEA;
    ORA.W DATA8_86D18A,Y                 ;87ABEE;
    ORA.B #$30                           ;87ABF1;
    STA.B $11                            ;87ABF3;
    LDA.B #$7A                           ;87ABF5;
    STA.B $16                            ;87ABF7;

CODE_87ABF9:
    LDA.B $0B                            ;87ABF9;
    ASL A                                ;87ABFB;
    TAX                                  ;87ABFC;
    JMP.W (PTR16_87AC00,X)               ;87ABFD;

PTR16_87AC00:
    dw CODE_87AC14                       ;87AC00;
    dw CODE_87AC5D                       ;87AC02;
    dw CODE_87AC7F                       ;87AC04;
    dw CODE_87ACAB                       ;87AC06;
    dw CODE_87ACD5                       ;87AC08;
    dw CODE_87AD03                       ;87AC0A;
    dw CODE_87AD2F                       ;87AC0C;
    dw CODE_87AD79                       ;87AC0E;
    dw CODE_87AD03                       ;87AC10;
    dw CODE_87AC5D                       ;87AC12;

CODE_87AC14:
    LDX.B $02                            ;87AC14;
    JMP.W (PTR16_87AC19,X)               ;87AC16;

PTR16_87AC19:
    dw CODE_87AC1F                       ;87AC19;
    dw CODE_87AC32                       ;87AC1B;
    dw CODE_87AC52                       ;87AC1D;

CODE_87AC1F:
    LDA.W $1F3C                          ;87AC1F;
    BNE CODE_87AC25                      ;87AC22;
    RTL                                  ;87AC24;

CODE_87AC25:
    LDA.B #$02                           ;87AC25;
    STA.B $02                            ;87AC27;

CODE_87AC29:
    LDA.B #$01                           ;87AC29;
    JSL.L CODE_848F07                    ;87AC2B;
    JMP.W CODE_87ADD0                    ;87AC2F;

CODE_87AC32:
    LDA.W $1F3C                          ;87AC32;
    CMP.B #$03                           ;87AC35;
    BNE CODE_87AC46                      ;87AC37;
    LDA.B #$04                           ;87AC39;
    STA.B $02                            ;87AC3B;
    LDA.B #$00                           ;87AC3D;
    JSL.L CODE_848F07                    ;87AC3F;
    JMP.W CODE_87ADD0                    ;87AC43;

CODE_87AC46:
    LDA.W $1F3D                          ;87AC46;
    BNE CODE_87AC29                      ;87AC49;

CODE_87AC4B:
    JSL.L CODE_848EEA                    ;87AC4B;
    JMP.W CODE_87ADD0                    ;87AC4F;

CODE_87AC52:
    LDA.W $1F3C                          ;87AC52;
    CMP.B #$04                           ;87AC55;
    BNE CODE_87AC4B                      ;87AC57;
    JML.L CODE_828398                    ;87AC59;

CODE_87AC5D:
    LDX.B $02                            ;87AC5D;
    BNE CODE_87AC72                      ;87AC5F;
    LDA.W $1F3C                          ;87AC61;
    BNE CODE_87AC67                      ;87AC64;
    RTL                                  ;87AC66;

CODE_87AC67:
    INC.B $02                            ;87AC67;
    LDA.B #$03                           ;87AC69;
    JSL.L CODE_848F07                    ;87AC6B;
    JMP.W CODE_87ADD0                    ;87AC6F;

CODE_87AC72:
    LDA.W $0060                          ;87AC72;
    BNE CODE_87AC7B                      ;87AC75;
    JML.L CODE_828398                    ;87AC77;

CODE_87AC7B:
    JML.L CODE_8280B4                    ;87AC7B;

CODE_87AC7F:
    LDX.B $02                            ;87AC7F;
    BNE CODE_87AC96                      ;87AC81;
    LDA.W $1F3C                          ;87AC83;
    CMP.B #$04                           ;87AC86;
    BEQ CODE_87AC8B                      ;87AC88;
    RTL                                  ;87AC8A;

CODE_87AC8B:
    INC.B $02                            ;87AC8B;

CODE_87AC8D:
    LDA.B #$05                           ;87AC8D;
    JSL.L CODE_848F07                    ;87AC8F;
    JMP.W CODE_87ADD0                    ;87AC93;

CODE_87AC96:
    LDA.W $0060                          ;87AC96;
    BNE CODE_87AC9F                      ;87AC99;
    JML.L CODE_828398                    ;87AC9B;

CODE_87AC9F:
    LDA.W $1F3D                          ;87AC9F;
    BNE CODE_87AC8D                      ;87ACA2;
    JSL.L CODE_848EEA                    ;87ACA4;
    JMP.W CODE_87ADD0                    ;87ACA8;

CODE_87ACAB:
    LDX.B $02                            ;87ACAB;
    BNE CODE_87ACC0                      ;87ACAD;
    LDA.W $1F3C                          ;87ACAF;
    BNE CODE_87ACB5                      ;87ACB2;
    RTL                                  ;87ACB4;

CODE_87ACB5:
    INC.B $02                            ;87ACB5;

CODE_87ACB7:
    LDA.B #$05                           ;87ACB7;
    JSL.L CODE_848F07                    ;87ACB9;
    JMP.W CODE_87ADD0                    ;87ACBD;

CODE_87ACC0:
    LDA.W $1F3C                          ;87ACC0;
    BNE CODE_87ACC9                      ;87ACC3;
    JML.L CODE_828398                    ;87ACC5;

CODE_87ACC9:
    LDA.W $1F3D                          ;87ACC9;
    BNE CODE_87ACB7                      ;87ACCC;
    JSL.L CODE_848EEA                    ;87ACCE;
    JMP.W CODE_87ADD0                    ;87ACD2;

CODE_87ACD5:
    LDX.B $02                            ;87ACD5;
    BNE CODE_87ACEC                      ;87ACD7;
    LDA.W $1F3C                          ;87ACD9;
    CMP.B #$03                           ;87ACDC;
    BEQ CODE_87ACE1                      ;87ACDE;
    RTL                                  ;87ACE0;

CODE_87ACE1:
    INC.B $02                            ;87ACE1;

CODE_87ACE3:
    LDA.B #$05                           ;87ACE3;
    JSL.L CODE_848F07                    ;87ACE5;
    JMP.W CODE_87ADD0                    ;87ACE9;

CODE_87ACEC:
    LDA.W $1F3C                          ;87ACEC;
    CMP.B #$05                           ;87ACEF;
    BNE CODE_87ACF7                      ;87ACF1;
    JML.L CODE_828398                    ;87ACF3;

CODE_87ACF7:
    LDA.W $1F3D                          ;87ACF7;
    BNE CODE_87ACE3                      ;87ACFA;
    JSL.L CODE_848EEA                    ;87ACFC;
    JMP.W CODE_87ADD0                    ;87AD00;

CODE_87AD03:
    LDX.B $02                            ;87AD03;
    BNE CODE_87AD18                      ;87AD05;
    LDA.W $1F3C                          ;87AD07;
    BNE CODE_87AD0D                      ;87AD0A;
    RTL                                  ;87AD0C;

CODE_87AD0D:
    INC.B $02                            ;87AD0D;

CODE_87AD0F:
    LDA.B #$05                           ;87AD0F;
    JSL.L CODE_848F07                    ;87AD11;
    JMP.W CODE_87ADD0                    ;87AD15;

CODE_87AD18:
    LDA.W $1F3C                          ;87AD18;
    CMP.B #$02                           ;87AD1B;
    BNE CODE_87AD23                      ;87AD1D;
    JML.L CODE_828398                    ;87AD1F;

CODE_87AD23:
    LDA.W $1F3D                          ;87AD23;
    BNE CODE_87AD0F                      ;87AD26;
    JSL.L CODE_848EEA                    ;87AD28;
    JMP.W CODE_87ADD0                    ;87AD2C;

CODE_87AD2F:
    LDX.B $02                            ;87AD2F;
    BNE CODE_87AD49                      ;87AD31;
    LDA.W $1F3C                          ;87AD33;
    BNE CODE_87AD39                      ;87AD36;
    RTL                                  ;87AD38;

CODE_87AD39:
    INC.B $02                            ;87AD39;
    LDA.W $1F3D                          ;87AD3B;
    STA.B $33                            ;87AD3E;
    LDA.B #$07                           ;87AD40;
    JSL.L CODE_848F07                    ;87AD42;
    JMP.W CODE_87ADD0                    ;87AD46;

CODE_87AD49:
    LDA.W $1F3C                          ;87AD49;
    CMP.B #$02                           ;87AD4C;
    BNE CODE_87AD54                      ;87AD4E;
    JML.L CODE_828398                    ;87AD50;

CODE_87AD54:
    LDA.W $1F3D                          ;87AD54;
    CMP.B $33                            ;87AD57;
    BEQ CODE_87AD6D                      ;87AD59;
    LDA.B $33                            ;87AD5B;
    BNE CODE_87AD67                      ;87AD5D;
    LDA.B #$06                           ;87AD5F;
    JSL.L CODE_848F07                    ;87AD61;
    BRA CODE_87AD6D                      ;87AD65;

CODE_87AD67:
    LDA.B #$07                           ;87AD67;
    JSL.L CODE_848F07                    ;87AD69;

CODE_87AD6D:
    JSL.L CODE_848EEA                    ;87AD6D;
    LDA.W $1F3D                          ;87AD71;
    STA.B $33                            ;87AD74;
    JMP.W CODE_87ADD0                    ;87AD76;

CODE_87AD79:
    LDX.B $02                            ;87AD79;
    JMP.W (PTR16_87AD7E,X)               ;87AD7B;

PTR16_87AD7E:
    dw CODE_87AD86                       ;87AD7E;
    dw CODE_87AD99                       ;87AD80;
    dw CODE_87ADA8                       ;87AD82;
    dw CODE_87ADBD                       ;87AD84;

CODE_87AD86:
    LDA.W $1F3C                          ;87AD86;
    BNE CODE_87AD8C                      ;87AD89;
    RTL                                  ;87AD8B;

CODE_87AD8C:
    LDA.B #$02                           ;87AD8C;
    STA.B $02                            ;87AD8E;
    LDA.B #$02                           ;87AD90;
    JSL.L CODE_848F07                    ;87AD92;
    JMP.W CODE_87ADD0                    ;87AD96;

CODE_87AD99:
    LDA.W $1F3C                          ;87AD99;
    CMP.B #$02                           ;87AD9C;
    BNE CODE_87ADA4                      ;87AD9E;
    LDA.B #$04                           ;87ADA0;
    STA.B $02                            ;87ADA2;

CODE_87ADA4:
    JML.L CODE_8280B4                    ;87ADA4;

CODE_87ADA8:
    LDA.W $1F3C                          ;87ADA8;
    CMP.B #$06                           ;87ADAB;
    BNE CODE_87ADBC                      ;87ADAD;
    LDA.B #$06                           ;87ADAF;
    STA.B $02                            ;87ADB1;
    LDA.B #$02                           ;87ADB3;
    JSL.L CODE_848F07                    ;87ADB5;
    JMP.W CODE_87ADD0                    ;87ADB9;

CODE_87ADBC:
    RTL                                  ;87ADBC;

CODE_87ADBD:
    LDA.W $1F3C                          ;87ADBD;
    CMP.B #$07                           ;87ADC0;
    BNE CODE_87ADC8                      ;87ADC2;
    JML.L CODE_828398                    ;87ADC4;

CODE_87ADC8:
    JML.L CODE_8280B4                    ;87ADC8;

CODE_87ADCC:
    JML.L CODE_828398                    ;87ADCC;

CODE_87ADD0:
    JSL.L CODE_848FCA                    ;87ADD0;
    JML.L CODE_8280B4                    ;87ADD4;

CODE_87ADD8:
    LDX.B $01                            ;87ADD8;
    BNE CODE_87ADFE                      ;87ADDA;
    JSL.L CODE_82827D                    ;87ADDC;
    STZ.B $12                            ;87ADE0;
    LDA.B #$00                           ;87ADE2;
    JSL.L CODE_848F07                    ;87ADE4;
    LDA.B #$01                           ;87ADE8;
    STA.B $30                            ;87ADEA;
    REP #$20                             ;87ADEC;
    LDA.W #$0580                         ;87ADEE;
    STA.B $05                            ;87ADF1;
    LDA.W #$1180                         ;87ADF3;
    STA.B $08                            ;87ADF6;
    LDA.W #$D19E                         ;87ADF8;
    STA.B $20                            ;87ADFB;
    RTL                                  ;87ADFD;

CODE_87ADFE:
    JSL.L CODE_82806E                    ;87ADFE;
    BCC CODE_87AE05                      ;87AE02;
    RTL                                  ;87AE04;

CODE_87AE05:
    STZ.B $2C                            ;87AE05;
    JSR.W CODE_87AF10                    ;87AE07;
    LDX.B $02                            ;87AE0A;
    JSR.W (PTR16_87AE1B,X)               ;87AE0C;
    LDA.B $2C                            ;87AE0F;
    BEQ CODE_87AE17                      ;87AE11;
    JSL.L CODE_82C70E                    ;87AE13;

CODE_87AE17:
    JML.L CODE_82808F                    ;87AE17;

PTR16_87AE1B:
    dw CODE_87AE21                       ;87AE1B;
    dw CODE_87AE62                       ;87AE1D;
    dw CODE_87AEA2                       ;87AE1F;

CODE_87AE21:
    LDA.B $2C                            ;87AE21;
    BEQ CODE_87AE61                      ;87AE23;
    LDA.B #$02                           ;87AE25;
    STA.B $02                            ;87AE27;
    LDA.B #$00                           ;87AE29;
    JSL.L CODE_848000                    ;87AE2B;
    LDA.B #$5E                           ;87AE2F;
    JSL.L CODE_8088A2                    ;87AE31;
    LDA.B #$3C                           ;87AE35;
    STA.B $33                            ;87AE37;
    LDA.B #$40                           ;87AE39;
    STA.B $35                            ;87AE3B;
    STA.B $34                            ;87AE3D;
    REP #$20                             ;87AE3F;
    LDA.W #$0080                         ;87AE41;
    STA.W $1E70                          ;87AE44;
    LDA.W #$00A0                         ;87AE47;
    STA.W $1E72                          ;87AE4A;
    LDA.W #$0500                         ;87AE4D;
    STA.W $1E5E                          ;87AE50;
    LDA.W #$0500                         ;87AE53;
    STA.W $1E60                          ;87AE56;
    LDA.W #$0A00                         ;87AE59;
    STA.W $1E68                          ;87AE5C;
    SEP #$20                             ;87AE5F;

CODE_87AE61:
    RTS                                  ;87AE61;

CODE_87AE62:
    LDX.B $03                            ;87AE62;
    JMP.W (PTR16_87AE67,X)               ;87AE64;

PTR16_87AE67:
    dw CODE_87AE6D                       ;87AE67;
    dw CODE_87AE76                       ;87AE69;
    dw CODE_87AE80                       ;87AE6B;

CODE_87AE6D:
    DEC.B $33                            ;87AE6D;
    BNE CODE_87AE75                      ;87AE6F;
    LDA.B #$02                           ;87AE71;
    STA.B $03                            ;87AE73;

CODE_87AE75:
    RTS                                  ;87AE75;

CODE_87AE76:
    LDA.B #$04                           ;87AE76;
    STA.B $03                            ;87AE78;
    LDA.B #$10                           ;87AE7A;
    JSL.L CODE_84A333                    ;87AE7C;

CODE_87AE80:
    DEC.B $34                            ;87AE80;
    BNE CODE_87AE8E                      ;87AE82;
    LDA.B $35                            ;87AE84;
    STA.B $34                            ;87AE86;
    LDA.B #$5F                           ;87AE88;
    JSL.L CODE_8088A2                    ;87AE8A;

CODE_87AE8E:
    JSR.W CODE_87AEDA                    ;87AE8E;
    LDA.B $1C                            ;87AE91;
    ORA.B $1D                            ;87AE93;
    BNE CODE_87AE9D                      ;87AE95;
    LDA.B #$04                           ;87AE97;
    STA.B $02                            ;87AE99;
    STZ.B $03                            ;87AE9B;

CODE_87AE9D:
    JSL.L CODE_82825D                    ;87AE9D;
    RTS                                  ;87AEA1;

CODE_87AEA2:
    LDX.B $03                            ;87AEA2;
    BNE CODE_87AED9                      ;87AEA4;
    INC.B $03                            ;87AEA6;
    LDA.B #$10                           ;87AEA8;
    LDX.B #$01                           ;87AEAA;
    LDY.B #$04                           ;87AEAC;
    JSL.L CODE_84A33C                    ;87AEAE;
    LDA.B #$5D                           ;87AEB2;
    JSL.L CODE_8088A2                    ;87AEB4;
    REP #$20                             ;87AEB8;
    LDA.W #$0ACF                         ;87AEBA;
    STA.B $08                            ;87AEBD;
    LDA.W #$0060                         ;87AEBF;
    STA.W $1E70                          ;87AEC2;
    LDA.W #$0080                         ;87AEC5;
    STA.W $1E72                          ;87AEC8;
    LDA.W #$0600                         ;87AECB;
    STA.W $1E60                          ;87AECE;
    LDA.W #$0A00                         ;87AED1;
    STA.W $1E6E                          ;87AED4;
    SEP #$20                             ;87AED7;

CODE_87AED9:
    RTS                                  ;87AED9;

CODE_87AEDA:
    REP #$20                             ;87AEDA;
    LDX.B #$00                           ;87AEDC;
    LDY.B #$10                           ;87AEDE;
    LDA.B $08                            ;87AEE0;
    CMP.W #$1040                         ;87AEE2;
    BCS CODE_87AF06                      ;87AEE5;
    INX                                  ;87AEE7;
    INX                                  ;87AEE8;
    LDY.B #$10                           ;87AEE9;
    CMP.W #$0F80                         ;87AEEB;
    BCS CODE_87AF06                      ;87AEEE;
    INX                                  ;87AEF0;
    INX                                  ;87AEF1;
    LDY.B #$10                           ;87AEF2;
    CMP.W #$0C80                         ;87AEF4;
    BCS CODE_87AF06                      ;87AEF7;
    INX                                  ;87AEF9;
    INX                                  ;87AEFA;
    LDY.B #$10                           ;87AEFB;
    CMP.W #$0ACF                         ;87AEFD;
    BCS CODE_87AF06                      ;87AF00;
    INX                                  ;87AF02;
    INX                                  ;87AF03;
    LDY.B #$10                           ;87AF04;

CODE_87AF06:
    LDA.W DATA8_86D1A2,X                 ;87AF06;
    STA.B $1C                            ;87AF09;
    STY.B $35                            ;87AF0B;
    SEP #$20                             ;87AF0D;
    RTS                                  ;87AF0F;

CODE_87AF10:
    LDA.W $0BCF                          ;87AF10;
    AND.B #$7F                           ;87AF13;
    BEQ CODE_87AF5C                      ;87AF15;
    REP #$20                             ;87AF17;
    LDA.W $0BAD                          ;87AF19;
    CMP.W #$0520                         ;87AF1C;
    BCC CODE_87AF5A                      ;87AF1F;
    CMP.W #$05DF                         ;87AF21;
    BCS CODE_87AF5A                      ;87AF24;
    LDA.B $08                            ;87AF26;
    CLC                                  ;87AF28;
    ADC.W #$002D                         ;87AF29;
    CMP.W $0BB0                          ;87AF2C;
    BCC CODE_87AF5A                      ;87AF2F;
    LDA.B $08                            ;87AF31;
    CLC                                  ;87AF33;
    ADC.W #$FFED                         ;87AF34;
    STA.W $0000                          ;87AF37;
    LDA.W $0BB0                          ;87AF3A;
    CLC                                  ;87AF3D;
    ADC.W #$000D                         ;87AF3E;
    SEC                                  ;87AF41;
    SBC.W $0000                          ;87AF42;
    BCC CODE_87AF5A                      ;87AF45;
    EOR.W #$FFFF                         ;87AF47;
    INC A                                ;87AF4A;
    CLC                                  ;87AF4B;
    ADC.W $0BB0                          ;87AF4C;
    STA.W $0BB0                          ;87AF4F;
    LDA.W #$0004                         ;87AF52;
    TSB.W $0BD4                          ;87AF55;
    STA.B $2C                            ;87AF58;

CODE_87AF5A:
    SEP #$20                             ;87AF5A;

CODE_87AF5C:
    RTS                                  ;87AF5C;

CODE_87AF5D:
    LDX.B $01                            ;87AF5D;
    JSR.W (PTR16_87AFA5,X)               ;87AF5F;
    LDA.B $27                            ;87AF62;
    BEQ CODE_87AF99                      ;87AF64;
    JSR.W CODE_87B1FA                    ;87AF66;
    JSL.L CODE_849B43                    ;87AF69;
    BEQ CODE_87AF8F                      ;87AF6D;
    LDA.B $27                            ;87AF6F;
    AND.B #$7F                           ;87AF71;
    BNE CODE_87AF87                      ;87AF73;
    JSL.L CODE_84A4AB                    ;87AF75;
    JSR.W CODE_87B16F                    ;87AF79;
    JSR.W CODE_87B134                    ;87AF7C;
    JSL.L CODE_828398                    ;87AF7F;
    SEP #$10                             ;87AF83;
    BRA CODE_87AFA4                      ;87AF85;

CODE_87AF87:
    LDA.B #$F1                           ;87AF87;
    AND.B $11                            ;87AF89;
    STA.B $11                            ;87AF8B;
    BRA CODE_87AF95                      ;87AF8D;

CODE_87AF8F:
    LDA.B $37                            ;87AF8F;
    ORA.B $11                            ;87AF91;
    STA.B $11                            ;87AF93;

CODE_87AF95:
    JSL.L CODE_849B03                    ;87AF95;

CODE_87AF99:
    JSL.L CODE_8280B4                    ;87AF99;
    JMP.W CODE_87AFA4                    ;87AF9D;
    JSL.L CODE_828398                    ;87AFA0;

CODE_87AFA4:
    RTL                                  ;87AFA4;

PTR16_87AFA5:
    dw CODE_87AFB1                       ;87AFA5;
    dw CODE_87AFF3                       ;87AFA7;
    dw CODE_87B032                       ;87AFA9;
    dw CODE_87B042                       ;87AFAB;
    dw CODE_87B0B9                       ;87AFAD;
    dw CODE_87B0C9                       ;87AFAF;

CODE_87AFB1:
    JSL.L CODE_82827D                    ;87AFB1;
    LDA.B $11                            ;87AFB5;
    ORA.B #$10                           ;87AFB7;
    STA.B $11                            ;87AFB9;
    AND.B #$0E                           ;87AFBB;
    STA.B $37                            ;87AFBD;
    LDA.B $0B                            ;87AFBF;
    BEQ CODE_87AFC9                      ;87AFC1;
    LDA.B $11                            ;87AFC3;
    ORA.B #$40                           ;87AFC5;
    STA.B $11                            ;87AFC7;

CODE_87AFC9:
    LDA.B $0B                            ;87AFC9;
    CMP.B #$02                           ;87AFCB;
    BEQ CODE_87AFD2                      ;87AFCD;
    JSR.W CODE_87B0F7                    ;87AFCF;

CODE_87AFD2:
    LDA.B #$06                           ;87AFD2;
    STA.B $27                            ;87AFD4;
    LDA.B #$04                           ;87AFD6;
    STA.B $26                            ;87AFD8;
    LDA.B #$04                           ;87AFDA;
    STA.B $12                            ;87AFDC;
    REP #$20                             ;87AFDE;
    LDA.W #$003C                         ;87AFE0;
    STA.B $33                            ;87AFE3;
    LDA.W #$D1AC                         ;87AFE5;
    STA.B $20                            ;87AFE8;
    SEP #$20                             ;87AFEA;
    LDA.B #$00                           ;87AFEC;
    JSL.L CODE_848F07                    ;87AFEE;
    RTS                                  ;87AFF2;

CODE_87AFF3:
    LDA.B #$3A                           ;87AFF3;
    STA.B $0A                            ;87AFF5;
    JSL.L CODE_84A1D0                    ;87AFF7;
    LDA.B #$3E                           ;87AFFB;
    STA.B $0A                            ;87AFFD;
    TYA                                  ;87AFFF;
    CMP.B #$04                           ;87B000;
    BPL CODE_87B02B                      ;87B002;
    REP #$20                             ;87B004;
    DEC.B $33                            ;87B006;
    BNE CODE_87B02B                      ;87B008;
    LDA.W #$0080                         ;87B00A;
    STA.B $33                            ;87B00D;
    SEP #$20                             ;87B00F;
    LDA.B #$04                           ;87B011;
    STA.B $01                            ;87B013;
    LDA.B #$10                           ;87B015;
    STA.B $35                            ;87B017;
    REP #$20                             ;87B019;
    LDA.W #$D1B1                         ;87B01B;
    STA.B $20                            ;87B01E;
    SEP #$20                             ;87B020;
    LDA.B #$01                           ;87B022;
    JSL.L CODE_848F07                    ;87B024;
    JMP.W CODE_87B031                    ;87B028;

CODE_87B02B:
    SEP #$20                             ;87B02B;
    JSL.L CODE_848EEA                    ;87B02D;

CODE_87B031:
    RTS                                  ;87B031;

CODE_87B032:
    LDA.B $0F                            ;87B032;
    BMI CODE_87B03D                      ;87B034;
    JSL.L CODE_848EEA                    ;87B036;
    JMP.W CODE_87B041                    ;87B03A;

CODE_87B03D:
    LDA.B #$06                           ;87B03D;
    STA.B $01                            ;87B03F;

CODE_87B041:
    RTS                                  ;87B041;

CODE_87B042:
    REP #$20                             ;87B042;
    DEC.B $33                            ;87B044;
    BNE CODE_87B05E                      ;87B046;

CODE_87B048:
    REP #$20                             ;87B048;
    LDA.W #$0080                         ;87B04A;
    STA.B $33                            ;87B04D;
    SEP #$20                             ;87B04F;
    LDA.B #$08                           ;87B051;
    STA.B $01                            ;87B053;
    LDA.B #$02                           ;87B055;
    JSL.L CODE_848F07                    ;87B057;
    JMP.W CODE_87B0B6                    ;87B05B;

CODE_87B05E:
    SEP #$20                             ;87B05E;
    LDA.B #$3A                           ;87B060;
    STA.B $0A                            ;87B062;
    JSL.L CODE_84A1D0                    ;87B064;
    LDA.B #$3E                           ;87B068;
    STA.B $0A                            ;87B06A;
    LDA.B $0B                            ;87B06C;
    AND.B #$02                           ;87B06E;
    CMP.B #$02                           ;87B070;
    BNE CODE_87B07C                      ;87B072;
    LDA.B #$0C                           ;87B074;
    STA.W $0000                          ;87B076;
    JMP.W CODE_87B081                    ;87B079;

CODE_87B07C:
    LDA.B #$04                           ;87B07C;
    STA.W $0000                          ;87B07E;

CODE_87B081:
    TYA                                  ;87B081;
    CMP.W $0000                          ;87B082;
    BPL CODE_87B048                      ;87B085;
    DEC.B $35                            ;87B087;
    BNE CODE_87B0B6                      ;87B089;
    LDA.B #$60                           ;87B08B;
    STA.B $35                            ;87B08D;
    SEP #$20                             ;87B08F;
    JSL.L CODE_828321                    ;87B091;
    BNE CODE_87B0B6                      ;87B095;
    REP #$20                             ;87B097;
    LDA.B $05                            ;87B099;
    STA.W $0005,X                        ;87B09B;
    LDA.B $08                            ;87B09E;
    CLC                                  ;87B0A0;
    ADC.W #$0017                         ;87B0A1;
    STA.W $0008,X                        ;87B0A4;
    SEP #$20                             ;87B0A7;
    LDA.B #$3A                           ;87B0A9;
    STA.W $000A,X                        ;87B0AB;
    INC.W $0000,X                        ;87B0AE;
    LDA.B $0B                            ;87B0B1;
    STA.W $000B,X                        ;87B0B3;

CODE_87B0B6:
    SEP #$30                             ;87B0B6;
    RTS                                  ;87B0B8;

CODE_87B0B9:
    LDA.B $0F                            ;87B0B9;
    BMI CODE_87B0C4                      ;87B0BB;
    JSL.L CODE_848EEA                    ;87B0BD;
    JMP.W CODE_87B0C8                    ;87B0C1;

CODE_87B0C4:
    LDA.B #$0A                           ;87B0C4;
    STA.B $01                            ;87B0C6;

CODE_87B0C8:
    RTS                                  ;87B0C8;

CODE_87B0C9:
    REP #$20                             ;87B0C9;
    DEC.B $33                            ;87B0CB;
    BNE CODE_87B0F0                      ;87B0CD;
    LDA.W #$0040                         ;87B0CF;
    STA.B $33                            ;87B0D2;
    SEP #$20                             ;87B0D4;
    LDA.B #$02                           ;87B0D6;
    STA.B $01                            ;87B0D8;
    LDA.B #$10                           ;87B0DA;
    STA.B $35                            ;87B0DC;
    LDA.B #$00                           ;87B0DE;
    JSL.L CODE_848F07                    ;87B0E0;
    REP #$20                             ;87B0E4;
    LDA.W #$D1AC                         ;87B0E6;
    STA.B $20                            ;87B0E9;
    SEP #$20                             ;87B0EB;
    JMP.W CODE_87B0F6                    ;87B0ED;

CODE_87B0F0:
    SEP #$20                             ;87B0F0;
    JSL.L CODE_848EEA                    ;87B0F2;

CODE_87B0F6:
    RTS                                  ;87B0F6;

CODE_87B0F7:
    REP #$10                             ;87B0F7;
    JSL.L CODE_8282D3                    ;87B0F9;
    BNE CODE_87B131                      ;87B0FD;
    INC.W $0000,X                        ;87B0FF;
    LDA.B #$38                           ;87B102;
    STA.W $000A,X                        ;87B104;
    REP #$20                             ;87B107;
    LDA.B $05                            ;87B109;
    STA.W $0005,X                        ;87B10B;
    LDA.B $08                            ;87B10E;
    CLC                                  ;87B110;
    ADC.W #$001C                         ;87B111;
    STA.W $0008,X                        ;87B114;
    SEP #$20                             ;87B117;
    LDA.B $37                            ;87B119;
    ORA.B $11                            ;87B11B;
    AND.B #$EF                           ;87B11D;
    STA.W $0011,X                        ;87B11F;
    LDA.B #$00                           ;87B122;
    STA.W $0002,X                        ;87B124;
    LDA.B #$00                           ;87B127;
    STA.W $000B,X                        ;87B129;
    LDA.B #$00                           ;87B12C;
    STA.W $000C,X                        ;87B12E;

CODE_87B131:
    SEP #$10                             ;87B131;
    RTS                                  ;87B133;

CODE_87B134:
    REP #$10                             ;87B134;
    JSL.L CODE_8282D3                    ;87B136;
    BNE CODE_87B16C                      ;87B13A;
    INC.W $0000,X                        ;87B13C;
    LDA.B #$38                           ;87B13F;
    STA.W $000A,X                        ;87B141;
    REP #$20                             ;87B144;
    LDA.B $05                            ;87B146;
    STA.W $0005,X                        ;87B148;
    LDA.B $08                            ;87B14B;
    CLC                                  ;87B14D;
    ADC.W #$0008                         ;87B14E;
    STA.W $0008,X                        ;87B151;
    SEP #$20                             ;87B154;
    LDA.B $37                            ;87B156;
    ORA.B $11                            ;87B158;
    STA.W $0011,X                        ;87B15A;
    LDA.B #$00                           ;87B15D;
    STA.W $0002,X                        ;87B15F;
    LDA.B #$01                           ;87B162;
    STA.W $000B,X                        ;87B164;
    LDA.B #$01                           ;87B167;
    STA.W $000C,X                        ;87B169;

CODE_87B16C:
    SEP #$10                             ;87B16C;
    RTS                                  ;87B16E;

CODE_87B16F:
    REP #$10                             ;87B16F;
    LDY.W #$0006                         ;87B171;

CODE_87B174:
    JSL.L CODE_8282D3                    ;87B174;
    BNE CODE_87B1AA                      ;87B178;
    INC.W $0000,X                        ;87B17A;
    LDA.B #$2B                           ;87B17D;
    STA.W $000A,X                        ;87B17F;
    REP #$20                             ;87B182;
    LDA.B $05                            ;87B184;
    STA.W $0005,X                        ;87B186;
    LDA.B $08                            ;87B189;
    STA.W $0008,X                        ;87B18B;
    SEP #$20                             ;87B18E;
    PHY                                  ;87B190;
    JSL.L CODE_849086                    ;87B191;
    REP #$20                             ;87B195;
    AND.W #$0003                         ;87B197;
    TAY                                  ;87B19A;
    SEP #$20                             ;87B19B;
    LDA.W DATA8_86D1B6,Y                 ;87B19D;
    STA.W $000B,X                        ;87B1A0;
    PLY                                  ;87B1A3;
    STZ.W $000C,X                        ;87B1A4;
    DEY                                  ;87B1A7;
    BNE CODE_87B174                      ;87B1A8;

CODE_87B1AA:
    SEP #$10                             ;87B1AA;
    RTS                                  ;87B1AC;
    REP #$10                             ;87B1AD;
    LDY.W #$0003                         ;87B1AF;

CODE_87B1B2:
    JSL.L CODE_8282D3                    ;87B1B2;
    BNE CODE_87B1F7                      ;87B1B6;
    INC.W $0000,X                        ;87B1B8;
    LDA.B #$39                           ;87B1BB;
    STA.W $000A,X                        ;87B1BD;
    LDA.B #$01                           ;87B1C0;
    STA.W $000C,X                        ;87B1C2;
    LDA.B #$80                           ;87B1C5;
    STA.W $000B,X                        ;87B1C7;
    REP #$20                             ;87B1CA;
    JSL.L CODE_849086                    ;87B1CC;
    AND.W #$000F                         ;87B1D0;
    STA.W $0000                          ;87B1D3;
    JSL.L CODE_849086                    ;87B1D6;
    AND.W #$000F                         ;87B1DA;
    STA.W $0002                          ;87B1DD;
    LDA.B $05                            ;87B1E0;
    CLC                                  ;87B1E2;
    ADC.W $0000                          ;87B1E3;
    STA.W $0005,X                        ;87B1E6;
    LDA.B $08                            ;87B1E9;
    CLC                                  ;87B1EB;
    ADC.W $0002                          ;87B1EC;
    STA.W $0008,X                        ;87B1EF;
    SEP #$20                             ;87B1F2;
    DEY                                  ;87B1F4;
    BNE CODE_87B1B2                      ;87B1F5;

CODE_87B1F7:
    SEP #$10                             ;87B1F7;
    RTS                                  ;87B1F9;

CODE_87B1FA:
    LDA.B $0F                            ;87B1FA;
    AND.B #$01                           ;87B1FC;
    STA.B $28                            ;87B1FE;
    BEQ CODE_87B20C                      ;87B200;
    REP #$20                             ;87B202;
    LDA.W #$D1AC                         ;87B204;
    STA.B $20                            ;87B207;
    JMP.W CODE_87B213                    ;87B209;

CODE_87B20C:
    REP #$20                             ;87B20C;
    LDA.W #$D1B1                         ;87B20E;
    STA.B $20                            ;87B211;

CODE_87B213:
    SEP #$20                             ;87B213;
    RTS                                  ;87B215;

CODE_87B216:
    LDX.B $01                            ;87B216;
    JSR.W (PTR16_87B279,X)               ;87B218;
    LDA.B $38                            ;87B21B;
    BNE CODE_87B230                      ;87B21D;
    JSL.L CODE_8490A0                    ;87B21F;
    CMP.B #$00                           ;87B223;
    BNE CODE_87B22C                      ;87B225;
    STZ.B $30                            ;87B227;
    JMP.W CODE_87B230                    ;87B229;

CODE_87B22C:
    LDA.B #$01                           ;87B22C;
    STA.B $30                            ;87B22E;

CODE_87B230:
    LDA.B $27                            ;87B230;
    BEQ CODE_87B254                      ;87B232;
    JSL.L CODE_849B43                    ;87B234;
    BEQ CODE_87B24E                      ;87B238;
    LDA.B $27                            ;87B23A;
    AND.B #$7F                           ;87B23C;
    BNE CODE_87B246                      ;87B23E;
    JSL.L CODE_84A4AB                    ;87B240;
    BRA CODE_87B270                      ;87B244;

CODE_87B246:
    LDA.B #$F1                           ;87B246;
    AND.B $11                            ;87B248;
    STA.B $11                            ;87B24A;
    BRA CODE_87B254                      ;87B24C;

CODE_87B24E:
    LDA.B $3B                            ;87B24E;
    ORA.B $11                            ;87B250;
    STA.B $11                            ;87B252;

CODE_87B254:
    LDA.B $38                            ;87B254;
    BNE CODE_87B25C                      ;87B256;
    JSL.L CODE_849B03                    ;87B258;

CODE_87B25C:
    JSL.L CODE_8280B4                    ;87B25C;
    REP #$10                             ;87B260;
    LDX.B $36                            ;87B262;
    LDA.W $0000,X                        ;87B264;
    BEQ CODE_87B270                      ;87B267;
    LDA.W $000A,X                        ;87B269;
    CMP.B #$1E                           ;87B26C;
    BEQ CODE_87B276                      ;87B26E;

CODE_87B270:
    SEP #$10                             ;87B270;
    JSL.L CODE_828398                    ;87B272;

CODE_87B276:
    SEP #$10                             ;87B276;
    RTL                                  ;87B278;

PTR16_87B279:
    dw CODE_87B283                       ;87B279;
    dw CODE_87B2FD                       ;87B27B;
    dw CODE_87B31F                       ;87B27D;
    dw CODE_87B35B                       ;87B27F;
    dw CODE_87B3B0                       ;87B281;

CODE_87B283:
    JSL.L CODE_82827D                    ;87B283;
    LDA.B $11                            ;87B287;
    AND.B #$0E                           ;87B289;
    STA.B $3B                            ;87B28B;
    STZ.B $29                            ;87B28D;
    STZ.B $2A                            ;87B28F;
    LDA.B $0B                            ;87B291;
    BEQ CODE_87B29B                      ;87B293;
    LDA.B #$40                           ;87B295;
    ORA.B $11                            ;87B297;
    STA.B $11                            ;87B299;

CODE_87B29B:
    LDA.B #$06                           ;87B29B;
    STA.B $27                            ;87B29D;
    LDA.B #$02                           ;87B29F;
    STA.B $26                            ;87B2A1;
    LDA.B #$08                           ;87B2A3;
    STA.B $12                            ;87B2A5;
    LDA.B $38                            ;87B2A7;
    BEQ CODE_87B2B8                      ;87B2A9;
    LDA.B #$01                           ;87B2AB;
    STA.B $30                            ;87B2AD;
    STZ.B $39                            ;87B2AF;
    LDA.B #$04                           ;87B2B1;
    STA.B $3A                            ;87B2B3;
    JMP.W CODE_87B2C2                    ;87B2B5;

CODE_87B2B8:
    LDA.B #$01                           ;87B2B8;
    STA.B $28                            ;87B2BA;
    STA.B $39                            ;87B2BC;
    LDA.B #$05                           ;87B2BE;
    STA.B $3A                            ;87B2C0;

CODE_87B2C2:
    STZ.B $34                            ;87B2C2;
    STZ.B $35                            ;87B2C4;
    REP #$20                             ;87B2C6;
    LDA.B $38                            ;87B2C8;
    AND.W #$00FF                         ;87B2CA;
    BEQ CODE_87B2D7                      ;87B2CD;
    LDA.W #$D1BC                         ;87B2CF;
    STA.B $20                            ;87B2D2;
    JMP.W CODE_87B2DC                    ;87B2D4;

CODE_87B2D7:
    LDA.W #$D1C1                         ;87B2D7;
    STA.B $20                            ;87B2DA;

CODE_87B2DC:
    LDA.B $0B                            ;87B2DC;
    AND.W #$00FF                         ;87B2DE;
    BEQ CODE_87B2EB                      ;87B2E1;
    LDA.W #$0100                         ;87B2E3;
    STA.B $1A                            ;87B2E6;
    JMP.W CODE_87B2F0                    ;87B2E8;

CODE_87B2EB:
    LDA.W #$FF00                         ;87B2EB;
    STA.B $1A                            ;87B2EE;

CODE_87B2F0:
    SEP #$20                             ;87B2F0;
    LDA.B #$5A                           ;87B2F2;
    STA.B $33                            ;87B2F4;
    LDA.B $39                            ;87B2F6;
    JSL.L CODE_848F07                    ;87B2F8;
    RTS                                  ;87B2FC;

CODE_87B2FD:
    JSR.W CODE_87B3CA                    ;87B2FD;
    DEC.B $33                            ;87B300;
    BNE CODE_87B31E                      ;87B302;
    LDA.B $34                            ;87B304;
    BEQ CODE_87B316                      ;87B306;
    REP #$20                             ;87B308;
    LDA.B $1A                            ;87B30A;
    EOR.W #$FFFF                         ;87B30C;
    INC A                                ;87B30F;
    STA.B $1A                            ;87B310;
    SEP #$20                             ;87B312;
    STZ.B $34                            ;87B314;

CODE_87B316:
    LDA.B #$04                           ;87B316;
    STA.B $01                            ;87B318;
    LDA.B #$45                           ;87B31A;
    STA.B $33                            ;87B31C;

CODE_87B31E:
    RTS                                  ;87B31E;

CODE_87B31F:
    JSR.W CODE_87B3CA                    ;87B31F;
    DEC.B $33                            ;87B322;
    BEQ CODE_87B337                      ;87B324;
    JSL.L CODE_82823E                    ;87B326;
    LDA.B $2C                            ;87B32A;
    AND.B #$7F                           ;87B32C;
    BEQ CODE_87B334                      ;87B32E;
    JSL.L CODE_82C70E                    ;87B330;

CODE_87B334:
    JMP.W CODE_87B35A                    ;87B334;

CODE_87B337:
    LDA.B $34                            ;87B337;
    BEQ CODE_87B34C                      ;87B339;
    LDA.B #$04                           ;87B33B;
    STA.B $01                            ;87B33D;
    LDA.B #$1E                           ;87B33F;
    STA.B $33                            ;87B341;
    LDA.B $39                            ;87B343;
    JSL.L CODE_848F07                    ;87B345;
    JMP.W CODE_87B35A                    ;87B349;

CODE_87B34C:
    LDA.B #$06                           ;87B34C;
    STA.B $01                            ;87B34E;
    LDA.B #$03                           ;87B350;
    STA.B $33                            ;87B352;
    LDA.B $3A                            ;87B354;
    JSL.L CODE_848F07                    ;87B356;

CODE_87B35A:
    RTS                                  ;87B35A;

CODE_87B35B:
    JSR.W CODE_87B3CA                    ;87B35B;
    DEC.B $33                            ;87B35E;
    BEQ CODE_87B37A                      ;87B360;
    LDA.B $33                            ;87B362;
    AND.B #$01                           ;87B364;
    BNE CODE_87B371                      ;87B366;
    LDA.B $39                            ;87B368;
    JSL.L CODE_848F07                    ;87B36A;
    JMP.W CODE_87B3AF                    ;87B36E;

CODE_87B371:
    LDA.B $3A                            ;87B371;
    JSL.L CODE_848F07                    ;87B373;
    JMP.W CODE_87B3AF                    ;87B377;

CODE_87B37A:
    LDA.B #$02                           ;87B37A;
    STA.B $01                            ;87B37C;
    LDA.B $35                            ;87B37E;
    EOR.B #$01                           ;87B380;
    STA.B $35                            ;87B382;
    BEQ CODE_87B3A1                      ;87B384;
    LDA.B $38                            ;87B386;
    BNE CODE_87B39A                      ;87B388;
    LDA.B #$08                           ;87B38A;
    STA.B $01                            ;87B38C;
    LDA.B #$02                           ;87B38E;
    JSL.L CODE_848F07                    ;87B390;
    JSR.W CODE_87B3D7                    ;87B394;
    JMP.W CODE_87B3AB                    ;87B397;

CODE_87B39A:
    LDA.B #$52                           ;87B39A;
    STA.B $33                            ;87B39C;
    JMP.W CODE_87B3A5                    ;87B39E;

CODE_87B3A1:
    LDA.B #$1E                           ;87B3A1;
    STA.B $33                            ;87B3A3;

CODE_87B3A5:
    LDA.B $39                            ;87B3A5;
    JSL.L CODE_848F07                    ;87B3A7;

CODE_87B3AB:
    LDA.B #$01                           ;87B3AB;
    STA.B $34                            ;87B3AD;

CODE_87B3AF:
    RTS                                  ;87B3AF;

CODE_87B3B0:
    LDA.B $0F                            ;87B3B0;
    BPL CODE_87B3C5                      ;87B3B2;
    LDA.B #$3F                           ;87B3B4;
    STA.B $33                            ;87B3B6;
    LDA.B #$02                           ;87B3B8;
    STA.B $01                            ;87B3BA;
    LDA.B #$01                           ;87B3BC;
    JSL.L CODE_848F07                    ;87B3BE;
    JMP.W CODE_87B3C9                    ;87B3C2;

CODE_87B3C5:
    JSL.L CODE_848EEA                    ;87B3C5;

CODE_87B3C9:
    RTS                                  ;87B3C9;

CODE_87B3CA:
    LDA.B #$80                           ;87B3CA;
    STA.B $2C                            ;87B3CC;
    LDA.B $38                            ;87B3CE;
    BEQ CODE_87B3D6                      ;87B3D0;
    JSL.L CODE_82D7D0                    ;87B3D2;

CODE_87B3D6:
    RTS                                  ;87B3D6;

CODE_87B3D7:
    JSL.L CODE_828358                    ;87B3D7;
    BNE CODE_87B440                      ;87B3DB;
    INC.W $0000,X                        ;87B3DD;
    LDA.B #$13                           ;87B3E0;
    STA.W $000A,X                        ;87B3E2;
    LDA.B $18                            ;87B3E5;
    STA.W $0018,X                        ;87B3E7;
    LDA.B $3B                            ;87B3EA;
    ORA.B $11                            ;87B3EC;
    STA.W $0011,X                        ;87B3EE;
    LDA.B $16                            ;87B3F1;
    STA.W $0016,X                        ;87B3F3;
    LDA.B #$03                           ;87B3F6;
    STA.W $000B,X                        ;87B3F8;
    LDA.B #$00                           ;87B3FB;
    STA.W $0028,X                        ;87B3FD;
    LDA.B $11                            ;87B400;
    AND.B #$40                           ;87B402;
    BEQ CODE_87B417                      ;87B404;
    REP #$20                             ;87B406;
    LDA.W #$0200                         ;87B408;
    STA.W $001A,X                        ;87B40B;
    LDA.W #$0017                         ;87B40E;
    STA.W $0000                          ;87B411;
    JMP.W CODE_87B425                    ;87B414;

CODE_87B417:
    REP #$20                             ;87B417;
    LDA.W #$FE00                         ;87B419;
    STA.W $001A,X                        ;87B41C;
    LDA.W #$FFE9                         ;87B41F;
    STA.W $0000                          ;87B422;

CODE_87B425:
    LDA.B $05                            ;87B425;
    CLC                                  ;87B427;
    ADC.W $0000                          ;87B428;
    STA.W $0005,X                        ;87B42B;
    LDA.B $08                            ;87B42E;
    STA.W $0008,X                        ;87B430;
    LDA.W #$D1C6                         ;87B433;
    STA.W $0020,X                        ;87B436;
    LDA.W #$0033                         ;87B439;
    JSL.L CODE_8088A2                    ;87B43C;

CODE_87B440:
    SEP #$30                             ;87B440;
    RTS                                  ;87B442;

CODE_87B443:
    LDX.B $01                            ;87B443;
    JSR.W (PTR16_87B45B,X)               ;87B445;
    JSL.L CODE_849B43                    ;87B448;
    JSL.L CODE_8280B4                    ;87B44C;
    JSL.L CODE_82806E                    ;87B450;
    BCC CODE_87B45A                      ;87B454;
    JSL.L CODE_828387                    ;87B456;

CODE_87B45A:
    RTL                                  ;87B45A;

PTR16_87B45B:
    dw CODE_87B461                       ;87B45B;
    dw CODE_87B481                       ;87B45D;
    dw CODE_87B4CA                       ;87B45F;

CODE_87B461:
    JSL.L CODE_82827D                    ;87B461;
    LDA.B #$01                           ;87B465;
    STA.B $27                            ;87B467;
    STZ.B $28                            ;87B469;
    STZ.B $36                            ;87B46B;
    LDA.B #$04                           ;87B46D;
    STA.B $12                            ;87B46F;
    REP #$20                             ;87B471;
    LDA.W #$D1CB                         ;87B473;
    STA.B $20                            ;87B476;
    SEP #$20                             ;87B478;
    LDA.B #$00                           ;87B47A;
    JSL.L CODE_848F07                    ;87B47C;
    RTS                                  ;87B480;

CODE_87B481:
    LDA.B $0F                            ;87B481;
    CMP.B #$81                           ;87B483;
    BNE CODE_87B48D                      ;87B485;
    LDA.B #$00                           ;87B487;
    JSL.L CODE_848F07                    ;87B489;

CODE_87B48D:
    REP #$10                             ;87B48D;
    LDX.W #$0BA8                         ;87B48F;
    JSL.L CODE_849C0E                    ;87B492;
    BCC CODE_87B4C3                      ;87B496;
    LDA.B #$01                           ;87B498;
    JSL.L CODE_848F07                    ;87B49A;
    LDA.B #$70                           ;87B49E;
    JSL.L CODE_8088CD                    ;87B4A0;
    LDA.B #$04                           ;87B4A4;
    STA.B $01                            ;87B4A6;
    STA.B $36                            ;87B4A8;
    REP #$20                             ;87B4AA;
    LDA.B $08                            ;87B4AC;
    SEC                                  ;87B4AE;
    SBC.W #$0007                         ;87B4AF;
    STA.B $34                            ;87B4B2;
    LDA.W #$0800                         ;87B4B4;
    STA.B $1C                            ;87B4B7;
    SEP #$20                             ;87B4B9;
    LDA.B $07                            ;87B4BB;
    STA.B $33                            ;87B4BD;
    LDA.B #$40                           ;87B4BF;
    STA.B $1E                            ;87B4C1;

CODE_87B4C3:
    SEP #$10                             ;87B4C3;
    JSL.L CODE_848EEA                    ;87B4C5;
    RTS                                  ;87B4C9;

CODE_87B4CA:
    LDA.B $0F                            ;87B4CA;
    CMP.B #$81                           ;87B4CC;
    BNE CODE_87B4D6                      ;87B4CE;
    LDA.B #$00                           ;87B4D0;
    JSL.L CODE_848F07                    ;87B4D2;

CODE_87B4D6:
    LDA.B $36                            ;87B4D6;
    BEQ CODE_87B4DF                      ;87B4D8;
    STZ.B $36                            ;87B4DA;
    JMP.W CODE_87B50A                    ;87B4DC;

CODE_87B4DF:
    REP #$20                             ;87B4DF;
    LDA.B $1C                            ;87B4E1;
    BPL CODE_87B4F2                      ;87B4E3;
    REP #$10                             ;87B4E5;
    SEP #$20                             ;87B4E7;
    LDX.W #$0BA8                         ;87B4E9;
    JSL.L CODE_849C0E                    ;87B4EC;
    BCS CODE_87B501                      ;87B4F0;

CODE_87B4F2:
    SEP #$20                             ;87B4F2;
    LDA.W $0BD3                          ;87B4F4;
    BEQ CODE_87B4FC                      ;87B4F7;
    JMP.W CODE_87B501                    ;87B4F9;

CODE_87B4FC:
    LDA.W $0C06                          ;87B4FC;
    BEQ CODE_87B50A                      ;87B4FF;

CODE_87B501:
    SEP #$10                             ;87B501;
    LDA.B #$02                           ;87B503;
    STA.B $01                            ;87B505;
    JMP.W CODE_87B53D                    ;87B507;

CODE_87B50A:
    REP #$20                             ;87B50A;
    SEC                                  ;87B50C;
    LDA.B $1E                            ;87B50D;
    AND.W #$00FF                         ;87B50F;
    SBC.B $1C                            ;87B512;
    EOR.W #$FFFF                         ;87B514;
    INC A                                ;87B517;
    STA.B $1C                            ;87B518;
    SEC                                  ;87B51A;
    LDA.B $33                            ;87B51B;
    SBC.B $1C                            ;87B51D;
    STA.B $33                            ;87B51F;
    SEP #$20                             ;87B521;
    STZ.W $0000                          ;87B523;
    BIT.B $1D                            ;87B526;
    BPL CODE_87B52D                      ;87B528;
    DEC.W $0000                          ;87B52A;

CODE_87B52D:
    LDA.B $35                            ;87B52D;
    SBC.W $0000                          ;87B52F;
    STA.B $35                            ;87B532;
    REP #$20                             ;87B534;
    LDA.B $34                            ;87B536;
    STA.W $0BB0                          ;87B538;
    SEP #$20                             ;87B53B;

CODE_87B53D:
    JSL.L CODE_848EEA                    ;87B53D;
    RTS                                  ;87B541;

CODE_87B542:
    LDA.B $0B                            ;87B542;
    BMI CODE_87B5A2                      ;87B544;
    LDX.B $01                            ;87B546;
    BNE CODE_87B560                      ;87B548;
    LDA.B #$02                           ;87B54A;
    STA.B $01                            ;87B54C;
    STA.B $27                            ;87B54E;
    STA.B $0E                            ;87B550;
    LDA.B #$03                           ;87B552;
    STA.B $28                            ;87B554;
    STZ.B $30                            ;87B556;
    REP #$20                             ;87B558;
    LDA.W #$D1D0                         ;87B55A;
    STA.B $20                            ;87B55D;

CODE_87B55F:
    RTL                                  ;87B55F;

CODE_87B560:
    JSL.L CODE_82806E                    ;87B560;
    BCC CODE_87B56A                      ;87B564;
    JML.L CODE_828387                    ;87B566;

CODE_87B56A:
    LDX.B $0B                            ;87B56A;
    LDA.W $1F3F,X                        ;87B56C;
    BNE CODE_87B59E                      ;87B56F;
    JSL.L CODE_849B43                    ;87B571;
    BEQ CODE_87B55F                      ;87B575;
    REP #$20                             ;87B577;
    LDA.W DATA8_86D1F3                   ;87B579;
    LDX.B $0B                            ;87B57C;
    BEQ CODE_87B583                      ;87B57E;
    LDA.W DATA8_86D203                   ;87B580;

CODE_87B583:
    STA.W $002C                          ;87B583;
    LDA.W #$0230                         ;87B586;
    STA.W $002E                          ;87B589;
    SEP #$20                             ;87B58C;
    LDA.B $0B                            ;87B58E;
    JSL.L CODE_848011                    ;87B590;
    LDA.B $0B                            ;87B594;
    JSR.W CODE_87B69F                    ;87B596;
    LDX.B $0B                            ;87B599;
    INC.W $1F3F,X                        ;87B59B;

CODE_87B59E:
    JML.L CODE_828398                    ;87B59E;

CODE_87B5A2:
    LDX.B $01                            ;87B5A2;
    BNE CODE_87B5B0                      ;87B5A4;
    INC.B $01                            ;87B5A6;
    STZ.B $38                            ;87B5A8;
    STZ.B $39                            ;87B5AA;
    JSR.W CODE_87B675                    ;87B5AC;
    RTL                                  ;87B5AF;

CODE_87B5B0:
    LDA.B $33                            ;87B5B0;
    ORA.B $34                            ;87B5B2;
    BEQ CODE_87B5C3                      ;87B5B4;
    JSL.L CODE_82806E                    ;87B5B6;
    BCC CODE_87B5C3                      ;87B5BA;
    JSR.W CODE_87B7F4                    ;87B5BC;
    JML.L CODE_828387                    ;87B5BF;

CODE_87B5C3:
    JSR.W CODE_87B7CF                    ;87B5C3;
    LDX.B $02                            ;87B5C6;
    JSR.W (PTR16_87B5D0,X)               ;87B5C8;
    LDX.B $03                            ;87B5CB;
    JMP.W (PTR16_87B5D6,X)               ;87B5CD;

PTR16_87B5D0:
    dw CODE_87B5FE                       ;87B5D0;
    dw CODE_87B5DC                       ;87B5D2;
    dw CODE_87B5E9                       ;87B5D4;

PTR16_87B5D6:
    dw CODE_87B674                       ;87B5D6;
    dw CODE_87B5FF                       ;87B5D8;
    dw CODE_87B62A                       ;87B5DA;

CODE_87B5DC:
    LDA.B #$04                           ;87B5DC;
    STA.B $02                            ;87B5DE;
    STZ.B $37                            ;87B5E0;
    LDA.B #$06                           ;87B5E2;
    STA.B $36                            ;87B5E4;
    JMP.W CODE_87B77F                    ;87B5E6;

CODE_87B5E9:
    DEC.B $36                            ;87B5E9;
    BNE CODE_87B5FE                      ;87B5EB;
    LDA.B #$06                           ;87B5ED;
    STA.B $36                            ;87B5EF;
    JSR.W CODE_87B6EA                    ;87B5F1;
    INC.B $37                            ;87B5F4;
    LDA.B $37                            ;87B5F6;
    CMP.B #$08                           ;87B5F8;
    BNE CODE_87B5FE                      ;87B5FA;
    STZ.B $02                            ;87B5FC;

CODE_87B5FE:
    RTS                                  ;87B5FE;

CODE_87B5FF:
    DEC.B $10                            ;87B5FF;
    BNE CODE_87B674                      ;87B601;
    LDA.B #$04                           ;87B603;
    STA.B $03                            ;87B605;
    LDA.B #$06                           ;87B607;
    STA.B $10                            ;87B609;
    STZ.B $35                            ;87B60B;
    REP #$20                             ;87B60D;
    LDA.W #$0670                         ;87B60F;
    STA.W $002C                          ;87B612;
    LDA.W #$0230                         ;87B615;
    STA.W $002E                          ;87B618;
    SEP #$20                             ;87B61B;
    LDA.W DATA8_86D1DC                   ;87B61D;
    JSL.L CODE_848011                    ;87B620;
    LDA.B #$14                           ;87B624;
    JML.L CODE_84A311                    ;87B626;

CODE_87B62A:
    DEC.B $10                            ;87B62A;
    BNE CODE_87B674                      ;87B62C;
    LDA.B #$06                           ;87B62E;
    STA.B $10                            ;87B630;
    REP #$20                             ;87B632;
    LDA.B $35                            ;87B634;
    ASL A                                ;87B636;
    TAX                                  ;87B637;
    LDA.W DATA8_86D1E5,X                 ;87B638;
    STA.W $002C                          ;87B63B;
    LDA.W #$0230                         ;87B63E;
    STA.W $002E                          ;87B641;
    LDX.B $35                            ;87B644;
    LDA.W DATA8_86D1D4,X                 ;87B646;
    JSL.L CODE_848011                    ;87B649;
    LDA.B $35                            ;87B64D;
    ASL A                                ;87B64F;
    TAX                                  ;87B650;
    LDA.W DATA8_86D1F5,X                 ;87B651;
    STA.W $002C                          ;87B654;
    LDA.W #$0230                         ;87B657;
    STA.W $002E                          ;87B65A;
    LDX.B $35                            ;87B65D;
    LDA.W DATA8_86D1DD,X                 ;87B65F;
    JSL.L CODE_848011                    ;87B662;
    SEP #$20                             ;87B666;
    INC.B $35                            ;87B668;
    LDA.B $35                            ;87B66A;
    CMP.B #$08                           ;87B66C;
    BNE CODE_87B674                      ;87B66E;
    JML.L CODE_828398                    ;87B670;

CODE_87B674:
    RTL                                  ;87B674;

CODE_87B675:
    JSL.L CODE_828321                    ;87B675;
    BNE CODE_87B69C                      ;87B679;
    INC.W $0000,X                        ;87B67B;
    LDA.B #$29                           ;87B67E;
    STA.W $000A,X                        ;87B680;
    LDA.B #$80                           ;87B683;
    STA.W $000B,X                        ;87B685;
    STX.B $33                            ;87B688;
    REP #$21                             ;87B68A;
    LDA.B $08                            ;87B68C;
    ADC.W #$FFFA                         ;87B68E;
    STA.W $0008,X                        ;87B691;
    LDA.B $05                            ;87B694;
    STA.W $0005,X                        ;87B696;
    STZ.W $000C,X                        ;87B699;

CODE_87B69C:
    SEP #$30                             ;87B69C;
    RTS                                  ;87B69E;

CODE_87B69F:
    STA.W $0000                          ;87B69F;
    STZ.W $0001                          ;87B6A2;
    JSL.L CODE_8282D3                    ;87B6A5;
    BNE CODE_87B6E7                      ;87B6A9;
    INC.W $0000,X                        ;87B6AB;
    LDA.B #$10                           ;87B6AE;
    STA.W $000A,X                        ;87B6B0;
    LDA.B #$13                           ;87B6B3;
    STA.W $000B,X                        ;87B6B5;
    LDA.B #$30                           ;87B6B8;
    LDY.W $0000                          ;87B6BA;
    BEQ CODE_87B6C1                      ;87B6BD;
    LDA.B #$70                           ;87B6BF;

CODE_87B6C1:
    STA.W $0011,X                        ;87B6C1;
    REP #$21                             ;87B6C4;
    JSR.W CODE_87B7C4                    ;87B6C6;
    LDA.W DATA8_86D1F3                   ;87B6C9;
    LDY.W $0000                          ;87B6CC;
    BEQ CODE_87B6D4                      ;87B6CF;
    LDA.W DATA8_86D203                   ;87B6D1;

CODE_87B6D4:
    ADC.W #$0008                         ;87B6D4;
    STA.W $0005,X                        ;87B6D7;
    STA.B $05                            ;87B6DA;
    LDA.W #$025C                         ;87B6DC;
    STA.W $0008,X                        ;87B6DF;
    STA.B $08                            ;87B6E2;
    JSR.W CODE_87B7B2                    ;87B6E4;

CODE_87B6E7:
    SEP #$30                             ;87B6E7;

CODE_87B6E9:
    RTS                                  ;87B6E9;

CODE_87B6EA:
    LDA.B $37                            ;87B6EA;
    CMP.B #$07                           ;87B6EC;
    BNE CODE_87B70A                      ;87B6EE;
    LDA.W $1F3F                          ;87B6F0;
    BNE CODE_87B6FD                      ;87B6F3;
    INC.W $1F3F                          ;87B6F5;
    LDA.B #$00                           ;87B6F8;
    JSR.W CODE_87B69F                    ;87B6FA;

CODE_87B6FD:
    LDA.W $1F40                          ;87B6FD;
    BNE CODE_87B6E9                      ;87B700;
    INC.W $1F40                          ;87B702;
    LDA.B #$01                           ;87B705;
    JMP.W CODE_87B69F                    ;87B707;

CODE_87B70A:
    REP #$10                             ;87B70A;
    LDY.W #$0001                         ;87B70C;

CODE_87B70F:
    JSL.L CODE_8282D3                    ;87B70F;
    BNE CODE_87B751                      ;87B713;
    INC.W $0000,X                        ;87B715;
    LDA.B #$10                           ;87B718;
    STA.W $000A,X                        ;87B71A;
    LDA.B #$12                           ;87B71D;
    STA.W $000B,X                        ;87B71F;
    LDA.B #$30                           ;87B722;
    STA.W $0011,X                        ;87B724;
    REP #$20                             ;87B727;
    JSR.W CODE_87B7C4                    ;87B729;
    JSR.W CODE_87B75A                    ;87B72C;
    LDA.W #$0260                         ;87B72F;
    STA.W $0008,X                        ;87B732;
    STA.B $08                            ;87B735;
    CPY.B $38                            ;87B737;
    BNE CODE_87B742                      ;87B739;
    LDA.W #$001B                         ;87B73B;
    JSL.L CODE_8088A2                    ;87B73E;

CODE_87B742:
    LDA.W $0000                          ;87B742;
    STA.B $05                            ;87B745;
    LDA.W $0002                          ;87B747;
    STA.B $08                            ;87B74A;
    SEP #$20                             ;87B74C;
    DEY                                  ;87B74E;
    BPL CODE_87B70F                      ;87B74F;

CODE_87B751:
    SEP #$10                             ;87B751;
    LDA.B $38                            ;87B753;
    EOR.B #$01                           ;87B755;
    STA.B $38                            ;87B757;
    RTS                                  ;87B759;

CODE_87B75A:
    PHY                                  ;87B75A;
    TYA                                  ;87B75B;
    BNE CODE_87B76A                      ;87B75C;
    LDA.B $37                            ;87B75E;
    AND.W #$00FF                         ;87B760;
    ASL A                                ;87B763;
    TAY                                  ;87B764;
    LDA.W DATA8_86D1E5,Y                 ;87B765;
    BRA CODE_87B774                      ;87B768;

CODE_87B76A:
    LDA.B $37                            ;87B76A;
    AND.W #$00FF                         ;87B76C;
    ASL A                                ;87B76F;
    TAY                                  ;87B770;
    LDA.W DATA8_86D1F5,Y                 ;87B771;

CODE_87B774:
    CLC                                  ;87B774;
    ADC.W #$0010                         ;87B775;
    STA.W $0005,X                        ;87B778;
    STA.B $05                            ;87B77B;
    PLY                                  ;87B77D;
    RTS                                  ;87B77E;

CODE_87B77F:
    JSL.L CODE_8282D3                    ;87B77F;
    BNE CODE_87B7AF                      ;87B783;
    INC.W $0000,X                        ;87B785;
    LDA.B #$10                           ;87B788;
    STA.W $000A,X                        ;87B78A;
    LDA.B #$12                           ;87B78D;
    STA.W $000B,X                        ;87B78F;
    LDA.B #$30                           ;87B792;
    STA.W $0011,X                        ;87B794;
    REP #$20                             ;87B797;
    JSR.W CODE_87B7C4                    ;87B799;
    LDA.W #$0680                         ;87B79C;
    STA.W $0005,X                        ;87B79F;
    STA.B $05                            ;87B7A2;
    LDA.W #$0260                         ;87B7A4;
    STA.W $0008,X                        ;87B7A7;
    STA.B $08                            ;87B7AA;
    JSR.W CODE_87B7B2                    ;87B7AC;

CODE_87B7AF:
    SEP #$30                             ;87B7AF;
    RTS                                  ;87B7B1;

CODE_87B7B2:
    LDA.W #$001B                         ;87B7B2;
    JSL.L CODE_8088A2                    ;87B7B5;
    LDA.W $0000                          ;87B7B9;
    STA.B $05                            ;87B7BC;
    LDA.W $0002                          ;87B7BE;
    STA.B $08                            ;87B7C1;
    RTS                                  ;87B7C3;

CODE_87B7C4:
    LDA.B $05                            ;87B7C4;
    STA.W $0000                          ;87B7C6;
    LDA.B $08                            ;87B7C9;
    STA.W $0002                          ;87B7CB;
    RTS                                  ;87B7CE;

CODE_87B7CF:
    REP #$10                             ;87B7CF;
    LDX.B $33                            ;87B7D1;
    BEQ CODE_87B7F1                      ;87B7D3;
    LDA.W $0027,X                        ;87B7D5;
    CMP.B #$80                           ;87B7D8;
    BEQ CODE_87B7E3                      ;87B7DA;
    LDA.W $000A,X                        ;87B7DC;
    CMP.B #$29                           ;87B7DF;
    BEQ CODE_87B7F1                      ;87B7E1;

CODE_87B7E3:
    LDA.B #$02                           ;87B7E3;
    STA.B $02                            ;87B7E5;
    STA.B $03                            ;87B7E7;
    LDA.B #$08                           ;87B7E9;
    STA.B $10                            ;87B7EB;
    STZ.B $33                            ;87B7ED;
    STZ.B $34                            ;87B7EF;

CODE_87B7F1:
    SEP #$10                             ;87B7F1;
    RTS                                  ;87B7F3;

CODE_87B7F4:
    REP #$30                             ;87B7F4;
    LDX.B $33                            ;87B7F6;
    BEQ CODE_87B805                      ;87B7F8;
    STZ.W $0000,X                        ;87B7FA;
    STZ.W $0002,X                        ;87B7FD;
    STZ.W $000E,X                        ;87B800;
    STZ.B $33                            ;87B803;

CODE_87B805:
    SEP #$30                             ;87B805;
    RTS                                  ;87B807;

CODE_87B808:
    LDX.B $01                            ;87B808;
    JSR.W (PTR16_87B81C,X)               ;87B80A;
    JSL.L CODE_8280B4                    ;87B80D;
    JSL.L CODE_82806E                    ;87B811;
    BCC CODE_87B81B                      ;87B815;
    JML.L CODE_828387                    ;87B817;

CODE_87B81B:
    RTL                                  ;87B81B;

PTR16_87B81C:
    dw CODE_87B824                       ;87B81C;
    dw CODE_87B873                       ;87B81E;
    dw CODE_87B89D                       ;87B820;
    dw CODE_87B8CF                       ;87B822;

CODE_87B824:
    LDA.B #$73                           ;87B824;
    STA.B $16                            ;87B826;
    LDX.B #$67                           ;87B828;
    LDA.L $7F8200,X                      ;87B82A;
    STA.B $18                            ;87B82E;
    LDA.L $7F8300,X                      ;87B830;
    STA.B $11                            ;87B834;
    LDA.B #$02                           ;87B836;
    STA.B $01                            ;87B838;
    LDA.B #$06                           ;87B83A;
    STA.B $12                            ;87B83C;
    INC.B $30                            ;87B83E;
    STZ.B $1F                            ;87B840;
    STZ.B $1A                            ;87B842;
    STZ.B $1B                            ;87B844;
    LDA.B $0B                            ;87B846;
    AND.B #$0F                           ;87B848;
    LSR A                                ;87B84A;
    TAX                                  ;87B84B;
    STX.B $1E                            ;87B84C;
    STX.B $1D                            ;87B84E;
    CPX.B #$04                           ;87B850;
    BNE CODE_87B85A                      ;87B852;
    LDA.B #$01                           ;87B854;
    STA.B $1F                            ;87B856;
    STA.B $1D                            ;87B858;

CODE_87B85A:
    LDA.W DATA8_86D205,X                 ;87B85A;
    JSL.L CODE_848F07                    ;87B85D;
    LDA.B $0B                            ;87B861;
    AND.B #$10                           ;87B863;
    BEQ CODE_87B86E                      ;87B865;
    LDA.B #$14                           ;87B867;
    STA.B $03                            ;87B869;
    JMP.W CODE_87B872                    ;87B86B;

CODE_87B86E:
    LDA.B #$01                           ;87B86E;
    STA.B $03                            ;87B870;

CODE_87B872:
    RTS                                  ;87B872;

CODE_87B873:
    DEC.B $03                            ;87B873;
    BNE CODE_87B898                      ;87B875;
    LDX.B $1E                            ;87B877;
    LDA.W DATA8_86D20A,X                 ;87B879;
    JSL.L CODE_848F07                    ;87B87C;
    LDA.B #$04                           ;87B880;
    STA.B $01                            ;87B882;
    LDA.B $1A                            ;87B884;
    BNE CODE_87B88F                      ;87B886;
    LDA.B #$20                           ;87B888;
    STA.B $03                            ;87B88A;
    JMP.W CODE_87B89C                    ;87B88C;

CODE_87B88F:
    LDA.B #$3C                           ;87B88F;
    STA.B $03                            ;87B891;
    STZ.B $1A                            ;87B893;
    JMP.W CODE_87B89C                    ;87B895;

CODE_87B898:
    JSL.L CODE_848EEA                    ;87B898;

CODE_87B89C:
    RTS                                  ;87B89C;

CODE_87B89D:
    DEC.B $03                            ;87B89D;
    BNE CODE_87B8CA                      ;87B89F;
    LDA.B #$32                           ;87B8A1;
    STA.B $03                            ;87B8A3;
    LDA.B #$06                           ;87B8A5;
    STA.B $01                            ;87B8A7;
    LDX.B $1E                            ;87B8A9;
    CPX.B #$02                           ;87B8AB;
    BNE CODE_87B8B3                      ;87B8AD;
    LDA.B #$01                           ;87B8AF;
    STA.B $02                            ;87B8B1;

CODE_87B8B3:
    LDA.B $1F                            ;87B8B3;
    BEQ CODE_87B8BD                      ;87B8B5;
    LDA.B $1D                            ;87B8B7;
    EOR.B #$01                           ;87B8B9;
    STA.B $1D                            ;87B8BB;

CODE_87B8BD:
    LDA.W DATA8_86D205,X                 ;87B8BD;
    JSL.L CODE_848F07                    ;87B8C0;
    JSR.W CODE_87B8ED                    ;87B8C4;
    JMP.W CODE_87B8CE                    ;87B8C7;

CODE_87B8CA:
    JSL.L CODE_848EEA                    ;87B8CA;

CODE_87B8CE:
    RTS                                  ;87B8CE;

CODE_87B8CF:
    DEC.B $03                            ;87B8CF;
    BNE CODE_87B8E8                      ;87B8D1;
    LDA.B #$02                           ;87B8D3;
    STA.B $01                            ;87B8D5;
    LDA.B $0B                            ;87B8D7;
    AND.B #$10                           ;87B8D9;
    BEQ CODE_87B8E4                      ;87B8DB;
    LDA.B #$14                           ;87B8DD;
    STA.B $03                            ;87B8DF;
    JMP.W CODE_87B8E8                    ;87B8E1;

CODE_87B8E4:
    LDA.B #$01                           ;87B8E4;
    STA.B $03                            ;87B8E6;

CODE_87B8E8:
    JSL.L CODE_848EEA                    ;87B8E8;
    RTS                                  ;87B8EC;

CODE_87B8ED:
    REP #$10                             ;87B8ED;
    JSL.L CODE_828321                    ;87B8EF;
    BNE CODE_87B919                      ;87B8F3;
    LDA.B #$43                           ;87B8F5;
    STA.W $000A,X                        ;87B8F7;
    INC.W $0000,X                        ;87B8FA;
    LDA.B $0B                            ;87B8FD;
    STA.W $000B,X                        ;87B8FF;
    LDA.B $1D                            ;87B902;
    STA.W $0033,X                        ;87B904;
    REP #$20                             ;87B907;
    LDA.B $05                            ;87B909;
    STA.W $0005,X                        ;87B90B;
    LDA.B $08                            ;87B90E;
    STA.W $0008,X                        ;87B910;
    TDC                                  ;87B913;
    STA.W $0035,X                        ;87B914;
    SEP #$20                             ;87B917;

CODE_87B919:
    SEP #$10                             ;87B919;
    RTS                                  ;87B91B;

CODE_87B91C:
    LDX.B $01                            ;87B91C;
    JSR.W (PTR16_87B930,X)               ;87B91E;
    LDA.B $3A                            ;87B921;
    BNE CODE_87B92F                      ;87B923;
    JSL.L CODE_82806E                    ;87B925;
    BCC CODE_87B92F                      ;87B929;
    JSL.L CODE_828398                    ;87B92B;

CODE_87B92F:
    RTL                                  ;87B92F;

PTR16_87B930:
    dw CODE_87B936                       ;87B930;
    dw CODE_87B982                       ;87B932;
    dw CODE_87BA02                       ;87B934;

CODE_87B936:
    JSL.L CODE_82827D                    ;87B936;
    LDA.B #$01                           ;87B93A;
    STA.B $27                            ;87B93C;
    INC.B $30                            ;87B93E;
    STZ.B $3A                            ;87B940;
    LDA.B #$06                           ;87B942;
    STA.B $12                            ;87B944;
    REP #$10                             ;87B946;
    LDA.B $33                            ;87B948;
    BEQ CODE_87B95D                      ;87B94A;
    CMP.B #$01                           ;87B94C;
    BEQ CODE_87B965                      ;87B94E;
    LDX.W #$D20F                         ;87B950;
    STX.B $20                            ;87B953;
    LDX.W #$D214                         ;87B955;
    STX.B $3B                            ;87B958;
    JMP.W CODE_87B96A                    ;87B95A;

CODE_87B95D:
    LDX.W #$D20F                         ;87B95D;
    STX.B $20                            ;87B960;
    JMP.W CODE_87B96A                    ;87B962;

CODE_87B965:
    LDX.W #$D214                         ;87B965;
    STX.B $20                            ;87B968;

CODE_87B96A:
    SEP #$10                             ;87B96A;
    LDX.B $33                            ;87B96C;
    LDA.W DATA8_86D21E,X                 ;87B96E;
    JSL.L CODE_848F07                    ;87B971;
    LDA.B #$32                           ;87B975;
    STA.B $34                            ;87B977;
    LDA.B #$04                           ;87B979;
    STA.B $01                            ;87B97B;
    LDA.B #$08                           ;87B97D;
    STA.B $3D                            ;87B97F;
    RTS                                  ;87B981;

CODE_87B982:
    DEC.B $34                            ;87B982;
    BEQ CODE_87B9F9                      ;87B984;
    REP #$10                             ;87B986;
    LDA.B $33                            ;87B988;
    CMP.B #$02                           ;87B98A;
    BNE CODE_87B9A3                      ;87B98C;
    LDX.B $3B                            ;87B98E;
    STX.B $20                            ;87B990;
    LDX.W #$0BA8                         ;87B992;
    JSL.L CODE_849C0E                    ;87B995;
    BCC CODE_87B99E                      ;87B999;
    JMP.W CODE_87B9AC                    ;87B99B;

CODE_87B99E:
    LDX.W #$D20F                         ;87B99E;
    STX.B $20                            ;87B9A1;

CODE_87B9A3:
    LDX.W #$0BA8                         ;87B9A3;
    JSL.L CODE_849C0E                    ;87B9A6;
    BCC CODE_87B9EC                      ;87B9AA;

CODE_87B9AC:
    LDX.B $35                            ;87B9AC;
    LDA.W $000A,X                        ;87B9AE;
    CMP.B #$42                           ;87B9B1;
    BNE CODE_87B9E7                      ;87B9B3;
    LDA.B #$02                           ;87B9B5;
    STA.W $0001,X                        ;87B9B7;
    LDA.B #$01                           ;87B9BA;
    STA.W $0003,X                        ;87B9BC;
    STA.W $001A,X                        ;87B9BF;
    LDA.B #$01                           ;87B9C2;
    STA.W $001B,X                        ;87B9C4;
    LDA.B $0B                            ;87B9C7;
    AND.B #$20                           ;87B9C9;
    BEQ CODE_87B9E4                      ;87B9CB;
    LDA.B #$01                           ;87B9CD;
    STA.B $0A                            ;87B9CF;
    JSL.L CODE_84A1D0                    ;87B9D1;
    LDA.B #$43                           ;87B9D5;
    STA.B $0A                            ;87B9D7;
    TYA                                  ;87B9D9;
    CMP.B #$02                           ;87B9DA;
    BPL CODE_87B9E7                      ;87B9DC;
    JSR.W CODE_87BA17                    ;87B9DE;
    JMP.W CODE_87B9E7                    ;87B9E1;

CODE_87B9E4:
    JSR.W CODE_87BA44                    ;87B9E4;

CODE_87B9E7:
    SEP #$10                             ;87B9E7;
    JMP.W CODE_87B9F9                    ;87B9E9;

CODE_87B9EC:
    SEP #$10                             ;87B9EC;
    JSL.L CODE_848EEA                    ;87B9EE;
    JSL.L CODE_8280B4                    ;87B9F2;
    JMP.W CODE_87BA01                    ;87B9F6;

CODE_87B9F9:
    LDA.B #$01                           ;87B9F9;
    STA.B $3A                            ;87B9FB;
    JSL.L CODE_828398                    ;87B9FD;

CODE_87BA01:
    RTS                                  ;87BA01;

CODE_87BA02:
    DEC.B $3D                            ;87BA02;
    BNE CODE_87BA0E                      ;87BA04;
    LDA.B #$02                           ;87BA06;
    STA.B $01                            ;87BA08;
    LDA.B #$08                           ;87BA0A;
    STA.B $3D                            ;87BA0C;

CODE_87BA0E:
    JSL.L CODE_848EEA                    ;87BA0E;
    JSL.L CODE_8280B4                    ;87BA12;
    RTS                                  ;87BA16;

CODE_87BA17:
    JSL.L CODE_828321                    ;87BA17;
    BNE CODE_87BA43                      ;87BA1B;
    LDA.B #$01                           ;87BA1D;
    STA.W $000A,X                        ;87BA1F;
    INC.W $0000,X                        ;87BA22;
    REP #$20                             ;87BA25;
    LDA.W #$0030                         ;87BA27;
    STA.W $0000                          ;87BA2A;
    LDA.B $05                            ;87BA2D;
    CLC                                  ;87BA2F;
    ADC.W $0000                          ;87BA30;
    STA.W $0005,X                        ;87BA33;
    LDA.B $08                            ;87BA36;
    SEC                                  ;87BA38;
    SBC.W #$0040                         ;87BA39;
    STA.W $0008,X                        ;87BA3C;
    SEP #$20                             ;87BA3F;
    STX.B $38                            ;87BA41;

CODE_87BA43:
    RTS                                  ;87BA43;

CODE_87BA44:
    REP #$20                             ;87BA44;
    TDC                                  ;87BA46;
    STA.W $0002                          ;87BA47;
    LDA.W #$0E68                         ;87BA4A;

CODE_87BA4D:
    TCD                                  ;87BA4D;
    SEP #$20                             ;87BA4E;
    LDA.B $00                            ;87BA50;
    BEQ CODE_87BA5E                      ;87BA52;
    LDA.B $0A                            ;87BA54;
    CMP.B #$44                           ;87BA56;
    BNE CODE_87BA5E                      ;87BA58;
    LDA.B #$01                           ;87BA5A;
    STA.B $36                            ;87BA5C;

CODE_87BA5E:
    REP #$21                             ;87BA5E;
    TDC                                  ;87BA60;
    ADC.W #$0040                         ;87BA61;
    CMP.W #$1228                         ;87BA64;
    BCC CODE_87BA4D                      ;87BA67;
    REP #$20                             ;87BA69;
    LDA.W $0002                          ;87BA6B;
    TCD                                  ;87BA6E;
    SEP #$20                             ;87BA6F;
    RTS                                  ;87BA71;

CODE_87BA72:
    LDX.B $01                            ;87BA72;
    JSR.W (PTR16_87BAA4,X)               ;87BA74;
    LDA.B $27                            ;87BA77;
    BEQ CODE_87BA8D                      ;87BA79;
    JSL.L CODE_849B43                    ;87BA7B;
    BEQ CODE_87BA8D                      ;87BA7F;
    LDA.B $27                            ;87BA81;
    AND.B #$7F                           ;87BA83;
    BNE CODE_87BA8D                      ;87BA85;
    JSL.L CODE_84A4AB                    ;87BA87;
    BRA CODE_87BA9F                      ;87BA8B;

CODE_87BA8D:
    LDA.B #$80                           ;87BA8D;
    STA.B $2C                            ;87BA8F;
    JSL.L CODE_82D7D0                    ;87BA91;
    JSL.L CODE_8280B4                    ;87BA95;
    JSL.L CODE_82806E                    ;87BA99;
    BCC CODE_87BAA3                      ;87BA9D;

CODE_87BA9F:
    JSL.L CODE_828387                    ;87BA9F;

CODE_87BAA3:
    RTL                                  ;87BAA3;

PTR16_87BAA4:
    dw CODE_87BAAC                       ;87BAA4;
    dw CODE_87BACE                       ;87BAA6;
    dw CODE_87BAE8                       ;87BAA8;
    dw CODE_87BB6F                       ;87BAAA;

CODE_87BAAC:
    JSL.L CODE_82827D                    ;87BAAC;
    LDA.B #$01                           ;87BAB0;
    STA.B $27                            ;87BAB2;
    STA.B $26                            ;87BAB4;
    STZ.B $28                            ;87BAB6;
    LDA.B #$06                           ;87BAB8;
    STA.B $12                            ;87BABA;
    STZ.B $36                            ;87BABC;
    REP #$20                             ;87BABE;
    LDA.W #$D221                         ;87BAC0;
    STA.B $20                            ;87BAC3;
    SEP #$20                             ;87BAC5;
    LDA.B #$00                           ;87BAC7;
    JSL.L CODE_848F07                    ;87BAC9;
    RTS                                  ;87BACD;

CODE_87BACE:
    LDA.B $36                            ;87BACE;
    BNE CODE_87BAD9                      ;87BAD0;
    JSL.L CODE_848EEA                    ;87BAD2;
    JMP.W CODE_87BAE7                    ;87BAD6;

CODE_87BAD9:
    LDA.B #$04                           ;87BAD9;
    STA.B $01                            ;87BADB;
    LDA.B #$01                           ;87BADD;
    JSL.L CODE_848F07                    ;87BADF;
    LDA.B #$20                           ;87BAE3;
    STA.B $33                            ;87BAE5;

CODE_87BAE7:
    RTS                                  ;87BAE7;

CODE_87BAE8:
    DEC.B $33                            ;87BAE8;
    LDA.B $33                            ;87BAEA;
    CMP.B #$04                           ;87BAEC;
    BNE CODE_87BAF3                      ;87BAEE;
    JSR.W CODE_87BB09                    ;87BAF0;

CODE_87BAF3:
    LDA.B $33                            ;87BAF3;
    BEQ CODE_87BAFE                      ;87BAF5;
    JSL.L CODE_848EEA                    ;87BAF7;
    JMP.W CODE_87BB08                    ;87BAFB;

CODE_87BAFE:
    LDA.B #$00                           ;87BAFE;
    JSL.L CODE_848F07                    ;87BB00;
    LDA.B #$06                           ;87BB04;
    STA.B $01                            ;87BB06;

CODE_87BB08:
    RTS                                  ;87BB08;

CODE_87BB09:
    JSL.L CODE_84A07C                    ;87BB09;
    STA.B $34                            ;87BB0D;
    AND.B #$01                           ;87BB0F;
    BEQ CODE_87BB15                      ;87BB11;
    DEC.B $34                            ;87BB13;

CODE_87BB15:
    LDA.B $34                            ;87BB15;
    CMP.B #$10                           ;87BB17;
    BPL CODE_87BB20                      ;87BB19;
    LSR A                                ;87BB1B;
    TAX                                  ;87BB1C;
    JMP.W CODE_87BB27                    ;87BB1D;

CODE_87BB20:
    LDA.B #$20                           ;87BB20;
    SEC                                  ;87BB22;
    SBC.B $34                            ;87BB23;
    LSR A                                ;87BB25;
    TAX                                  ;87BB26;

CODE_87BB27:
    LDA.W DATA8_86D226,X                 ;87BB27;
    STA.B $0B                            ;87BB2A;
    LDA.B $34                            ;87BB2C;
    ASL A                                ;87BB2E;
    ASL A                                ;87BB2F;
    TAX                                  ;87BB30;
    CMP.B #$40                           ;87BB31;
    BMI CODE_87BB3E                      ;87BB33;
    LDA.B $11                            ;87BB35;
    AND.B #$BF                           ;87BB37;
    STA.B $35                            ;87BB39;
    JMP.W CODE_87BB44                    ;87BB3B;

CODE_87BB3E:
    LDA.B $11                            ;87BB3E;
    ORA.B #$40                           ;87BB40;
    STA.B $35                            ;87BB42;

CODE_87BB44:
    REP #$20                             ;87BB44;
    LDA.W DATA8_86EE37,X                 ;87BB46;
    BPL CODE_87BB54                      ;87BB49;
    ASL A                                ;87BB4B;
    ASL A                                ;87BB4C;
    ASL A                                ;87BB4D;
    ORA.W #$F000                         ;87BB4E;
    JMP.W CODE_87BB57                    ;87BB51;

CODE_87BB54:
    ASL A                                ;87BB54;
    ASL A                                ;87BB55;
    ASL A                                ;87BB56;

CODE_87BB57:
    STA.B $1A                            ;87BB57;
    LDA.W DATA8_86EE39,X                 ;87BB59;
    BPL CODE_87BB67                      ;87BB5C;
    ASL A                                ;87BB5E;
    ASL A                                ;87BB5F;
    ASL A                                ;87BB60;
    ORA.W #$F000                         ;87BB61;
    JMP.W CODE_87BB6A                    ;87BB64;

CODE_87BB67:
    ASL A                                ;87BB67;
    ASL A                                ;87BB68;
    ASL A                                ;87BB69;

CODE_87BB6A:
    STA.B $1C                            ;87BB6A;
    SEP #$20                             ;87BB6C;
    RTS                                  ;87BB6E;

CODE_87BB6F:
    REP #$10                             ;87BB6F;
    JSL.L CODE_828358                    ;87BB71;
    BNE CODE_87BBB7                      ;87BB75;
    STZ.B $36                            ;87BB77;
    INC.W $0000,X                        ;87BB79;
    LDA.B #$1C                           ;87BB7C;
    STA.W $000A,X                        ;87BB7E;
    LDA.B $18                            ;87BB81;
    STA.W $0018,X                        ;87BB83;
    LDA.B $35                            ;87BB86;
    STA.W $0011,X                        ;87BB88;
    LDA.B $16                            ;87BB8B;
    STA.W $0016,X                        ;87BB8D;
    LDA.B $0B                            ;87BB90;
    STA.W $000B,X                        ;87BB92;
    REP #$20                             ;87BB95;
    LDA.B $05                            ;87BB97;
    STA.W $0005,X                        ;87BB99;
    LDA.B $08                            ;87BB9C;
    STA.W $0008,X                        ;87BB9E;
    LDA.B $1A                            ;87BBA1;
    STA.W $001A,X                        ;87BBA3;
    LDA.B $1C                            ;87BBA6;
    STA.W $001C,X                        ;87BBA8;
    LDA.W #$FE00                         ;87BBAB;
    STA.B $1C                            ;87BBAE;
    LDA.W #$0055                         ;87BBB0;
    JSL.L CODE_8088A2                    ;87BBB3;

CODE_87BBB7:
    SEP #$30                             ;87BBB7;
    LDA.B #$02                           ;87BBB9;
    STA.B $01                            ;87BBBB;
    RTS                                  ;87BBBD;

CODE_87BBBE:
    LDX.B $01                            ;87BBBE;
    JSR.W (PTR16_87BC0D,X)               ;87BBC0;
    LDA.W $0BCF                          ;87BBC3;
    STA.B $34                            ;87BBC6;
    JSL.L CODE_849B03                    ;87BBC8;
    LDA.W $0BCF                          ;87BBCC;
    CMP.B $34                            ;87BBCF;
    BNE CODE_87BC04                      ;87BBD1;
    JSL.L CODE_82808F                    ;87BBD3;
    LDA.B $0B                            ;87BBD7;
    AND.B #$0C                           ;87BBD9;
    BNE CODE_87BBED                      ;87BBDB;
    REP #$20                             ;87BBDD;
    LDA.B $05                            ;87BBDF;
    SEC                                  ;87BBE1;
    SBC.B $35                            ;87BBE2;
    BCS CODE_87BBFA                      ;87BBE4;
    EOR.W #$FFFF                         ;87BBE6;
    INC A                                ;87BBE9;
    JMP.W CODE_87BBFA                    ;87BBEA;

CODE_87BBED:
    REP #$20                             ;87BBED;
    LDA.B $08                            ;87BBEF;
    SEC                                  ;87BBF1;
    SBC.B $37                            ;87BBF2;
    BCS CODE_87BBFA                      ;87BBF4;
    EOR.W #$FFFF                         ;87BBF6;
    INC A                                ;87BBF9;

CODE_87BBFA:
    CMP.W #$0140                         ;87BBFA;
    BCS CODE_87BC04                      ;87BBFD;
    SEP #$20                             ;87BBFF;
    JMP.W CODE_87BC0A                    ;87BC01;

CODE_87BC04:
    SEP #$20                             ;87BC04;
    JSL.L CODE_828398                    ;87BC06;

CODE_87BC0A:
    SEP #$20                             ;87BC0A;
    RTL                                  ;87BC0C;

PTR16_87BC0D:
    dw CODE_87BC13                       ;87BC0D;
    dw CODE_87BC68                       ;87BC0F;
    dw CODE_87BC75                       ;87BC11;

CODE_87BC13:
    JSL.L CODE_82827D                    ;87BC13;
    LDA.B #$01                           ;87BC17;
    STA.B $27                            ;87BC19;
    STA.B $26                            ;87BC1B;
    STA.B $30                            ;87BC1D;
    LDA.B #$04                           ;87BC1F;
    STA.B $12                            ;87BC21;
    REP #$20                             ;87BC23;
    LDA.W #$D22F                         ;87BC25;
    STA.B $20                            ;87BC28;
    LDA.B $0B                            ;87BC2A;
    AND.W #$000F                         ;87BC2C;
    CMP.W #$0001                         ;87BC2F;
    BEQ CODE_87BC46                      ;87BC32;
    CMP.W #$0002                         ;87BC34;
    BEQ CODE_87BC4E                      ;87BC37;
    CMP.W #$0004                         ;87BC39;
    BEQ CODE_87BC56                      ;87BC3C;
    LDA.W #$0300                         ;87BC3E;
    STA.B $1C                            ;87BC41;
    JMP.W CODE_87BC5B                    ;87BC43;

CODE_87BC46:
    LDA.W #$0300                         ;87BC46;
    STA.B $1A                            ;87BC49;
    JMP.W CODE_87BC5B                    ;87BC4B;

CODE_87BC4E:
    LDA.W #$FD00                         ;87BC4E;
    STA.B $1A                            ;87BC51;
    JMP.W CODE_87BC5B                    ;87BC53;

CODE_87BC56:
    LDA.W #$FD00                         ;87BC56;
    STA.B $1C                            ;87BC59;

CODE_87BC5B:
    SEP #$20                             ;87BC5B;
    LDA.B #$00                           ;87BC5D;
    JSL.L CODE_848F07                    ;87BC5F;
    LDA.B #$40                           ;87BC63;
    STA.B $33                            ;87BC65;
    RTS                                  ;87BC67;

CODE_87BC68:
    DEC.B $33                            ;87BC68;
    BNE CODE_87BC70                      ;87BC6A;
    LDA.B #$04                           ;87BC6C;
    STA.B $01                            ;87BC6E;

CODE_87BC70:
    JSL.L CODE_848EEA                    ;87BC70;
    RTS                                  ;87BC74;

CODE_87BC75:
    LDA.B $0B                            ;87BC75;
    AND.B #$0C                           ;87BC77;
    BNE CODE_87BC82                      ;87BC79;
    JSL.L CODE_82823E                    ;87BC7B;
    JMP.W CODE_87BC86                    ;87BC7F;

CODE_87BC82:
    JSL.L CODE_82825D                    ;87BC82;

CODE_87BC86:
    JSL.L CODE_848EEA                    ;87BC86;
    RTS                                  ;87BC8A;

CODE_87BC8B:
    LDX.B $01                            ;87BC8B;
    BNE CODE_87BCB5                      ;87BC8D;
    INC.B $01                            ;87BC8F;
    LDA.B #$20                           ;87BC91;
    STA.B $27                            ;87BC93;
    LDA.B #$03                           ;87BC95;
    STA.B $28                            ;87BC97;
    STZ.B $30                            ;87BC99;
    REP #$21                             ;87BC9B;
    LDA.B $0B                            ;87BC9D;
    AND.W #$00FF                         ;87BC9F;
    ASL A                                ;87BCA2;
    ASL A                                ;87BCA3;
    TAX                                  ;87BCA4;
    ADC.W #$D234                         ;87BCA5;
    STA.B $20                            ;87BCA8;
    LDA.W DATA8_86D26A,X                 ;87BCAA;
    STA.B $05                            ;87BCAD;
    LDA.W DATA8_86D26C,X                 ;87BCAF;
    STA.B $08                            ;87BCB2;
    RTL                                  ;87BCB4;

CODE_87BCB5:
    LDA.B #$01                           ;87BCB5;
    STA.B $0E                            ;87BCB7;
    JSL.L CODE_849B43                    ;87BCB9;
    BEQ CODE_87BCC5                      ;87BCBD;
    BPL CODE_87BCC5                      ;87BCBF;
    LDA.B #$02                           ;87BCC1;
    STA.B $02                            ;87BCC3;

CODE_87BCC5:
    STZ.B $0E                            ;87BCC5;
    LDX.B $02                            ;87BCC7;
    JMP.W (PTR16_87BCCC,X)               ;87BCC9;

PTR16_87BCCC:
    dw CODE_87BD36                       ;87BCCC;
    dw CODE_87BCD2                       ;87BCCE;
    dw CODE_87BCDD                       ;87BCD0;

CODE_87BCD2:
    LDA.B #$04                           ;87BCD2;
    STA.B $02                            ;87BCD4;
    LDA.B #$06                           ;87BCD6;
    STA.B $10                            ;87BCD8;
    STZ.B $33                            ;87BCDA;
    RTL                                  ;87BCDC;

CODE_87BCDD:
    DEC.B $10                            ;87BCDD;
    BNE CODE_87BD36                      ;87BCDF;
    LDA.B #$06                           ;87BCE1;
    STA.B $10                            ;87BCE3;
    LDX.B #$05                           ;87BCE5;
    LDY.B #$02                           ;87BCE7;
    LDA.B #$06                           ;87BCE9;
    JSL.L CODE_84A31A                    ;87BCEB;
    REP #$20                             ;87BCEF;
    LDA.B $0B                            ;87BCF1;
    AND.W #$00FF                         ;87BCF3;
    ASL A                                ;87BCF6;
    ASL A                                ;87BCF7;
    TAX                                  ;87BCF8;
    LDA.B $33                            ;87BCF9;
    AND.W #$00FF                         ;87BCFB;
    ASL A                                ;87BCFE;
    ASL A                                ;87BCFF;
    ASL A                                ;87BD00;
    ASL A                                ;87BD01;
    CLC                                  ;87BD02;
    ADC.W DATA8_86D24C,X                 ;87BD03;
    STA.W $002C                          ;87BD06;
    LDA.W DATA8_86D24E,X                 ;87BD09;
    STA.W $002E                          ;87BD0C;
    JSR.W CODE_87BD37                    ;87BD0F;
    SEP #$20                             ;87BD12;
    LDA.B #$09                           ;87BD14;
    LDX.B $0B                            ;87BD16;
    CPX.B #$05                           ;87BD18;
    BEQ CODE_87BD23                      ;87BD1A;
    LDA.B $33                            ;87BD1C;
    AND.B #$01                           ;87BD1E;
    CLC                                  ;87BD20;
    ADC.B #$07                           ;87BD21;

CODE_87BD23:
    JSL.L CODE_848011                    ;87BD23;
    INC.B $33                            ;87BD27;
    LDX.B $0B                            ;87BD29;
    LDA.W DATA8_86D264,X                 ;87BD2B;
    CMP.B $33                            ;87BD2E;
    BNE CODE_87BD36                      ;87BD30;
    JML.L CODE_828398                    ;87BD32;

CODE_87BD36:
    RTL                                  ;87BD36;

CODE_87BD37:
    LDA.W #$0508                         ;87BD37;
    STA.W $0004                          ;87BD3A;
    LDY.B #$01                           ;87BD3D;

CODE_87BD3F:
    JSL.L CODE_849086                    ;87BD3F;
    AND.W #$000F                         ;87BD43;
    CLC                                  ;87BD46;
    ADC.W $002C                          ;87BD47;
    STA.W $0000                          ;87BD4A;
    STA.B $05                            ;87BD4D;
    JSL.L CODE_849086                    ;87BD4F;
    AND.W #$003F                         ;87BD53;
    CLC                                  ;87BD56;
    ADC.W $002E                          ;87BD57;
    STA.W $0002                          ;87BD5A;
    STA.B $08                            ;87BD5D;
    LDA.W #$0023                         ;87BD5F;
    JSL.L CODE_8088A2                    ;87BD62;
    PHY                                  ;87BD66;
    JSL.L CODE_84A462                    ;87BD67;
    PLY                                  ;87BD6B;
    DEY                                  ;87BD6C;
    BPL CODE_87BD3F                      ;87BD6D;
    RTS                                  ;87BD6F;

CODE_87BD70:
    LDX.B $01                            ;87BD70;
    JSR.W (PTR16_87BDAB,X)               ;87BD72;
    BIT.W $1F96                          ;87BD75;
    BVS CODE_87BDA6                      ;87BD78;
    JSL.L CODE_849B03                    ;87BD7A;
    REP #$20                             ;87BD7E;
    LDA.B $08                            ;87BD80;
    STA.B $36                            ;87BD82;
    LDA.B $38                            ;87BD84;
    STA.B $08                            ;87BD86;
    SEP #$20                             ;87BD88;
    JSL.L CODE_8280B4                    ;87BD8A;
    JSL.L CODE_82806E                    ;87BD8E;
    BCC CODE_87BD9B                      ;87BD92;
    JSL.L CODE_828387                    ;87BD94;
    JMP.W CODE_87BDAA                    ;87BD98;

CODE_87BD9B:
    REP #$20                             ;87BD9B;
    LDA.B $36                            ;87BD9D;
    STA.B $08                            ;87BD9F;
    SEP #$20                             ;87BDA1;
    JMP.W CODE_87BDAA                    ;87BDA3;

CODE_87BDA6:
    JSL.L CODE_828398                    ;87BDA6;

CODE_87BDAA:
    RTL                                  ;87BDAA;

PTR16_87BDAB:
    dw CODE_87BDB5                       ;87BDAB;
    dw CODE_87BDF0                       ;87BDAD;
    dw CODE_87BE37                       ;87BDAF;
    dw CODE_87BECE                       ;87BDB1;
    dw CODE_87BEF3                       ;87BDB3;

CODE_87BDB5:
    JSL.L CODE_82827D                    ;87BDB5;
    LDA.B #$0C                           ;87BDB9;
    STA.B $27                            ;87BDBB;
    LDA.B #$02                           ;87BDBD;
    STA.B $26                            ;87BDBF;
    LDA.B #$04                           ;87BDC1;
    STA.B $12                            ;87BDC3;
    LDA.B #$01                           ;87BDC5;
    STA.B $30                            ;87BDC7;
    LDA.B #$05                           ;87BDC9;
    STA.B $28                            ;87BDCB;
    STZ.B $3B                            ;87BDCD;
    STZ.B $3C                            ;87BDCF;
    REP #$20                             ;87BDD1;
    LDA.W #$D282                         ;87BDD3;
    STA.B $20                            ;87BDD6;
    LDA.B $08                            ;87BDD8;
    STA.B $38                            ;87BDDA;
    LDA.W #$0423                         ;87BDDC;
    STA.B $08                            ;87BDDF;
    STA.B $34                            ;87BDE1;
    STZ.B $3D                            ;87BDE3;
    SEP #$20                             ;87BDE5;
    LDA.B #$DB                           ;87BDE7;
    STA.B $2A                            ;87BDE9;
    LDA.B #$30                           ;87BDEB;
    STA.B $33                            ;87BDED;
    RTS                                  ;87BDEF;

CODE_87BDF0:
    DEC.B $33                            ;87BDF0;
    BNE CODE_87BE14                      ;87BDF2;
    LDA.B #$04                           ;87BDF4;
    STA.B $01                            ;87BDF6;
    LDA.B #$3F                           ;87BDF8;
    JSL.L CODE_8088A2                    ;87BDFA;
    REP #$20                             ;87BDFE;
    LDA.W #$0100                         ;87BE00;
    STA.B $1C                            ;87BE03;
    SEP #$20                             ;87BE05;
    LDA.B #$80                           ;87BE07;
    STA.B $1E                            ;87BE09;
    LDA.B #$00                           ;87BE0B;
    JSL.L CODE_848F07                    ;87BE0D;
    JMP.W CODE_87BE36                    ;87BE11;

CODE_87BE14:
    LDA.B $33                            ;87BE14;
    CMP.B #$12                           ;87BE16;
    BEQ CODE_87BE29                      ;87BE18;
    CMP.B #$10                           ;87BE1A;
    BEQ CODE_87BE29                      ;87BE1C;
    CMP.B #$07                           ;87BE1E;
    BEQ CODE_87BE29                      ;87BE20;
    CMP.B #$13                           ;87BE22;
    BEQ CODE_87BE33                      ;87BE24;
    JMP.W CODE_87BE36                    ;87BE26;

CODE_87BE29:
    LDA.B #$02                           ;87BE29;
    STA.B $3A                            ;87BE2B;
    JSR.W CODE_87BF17                    ;87BE2D;
    JMP.W CODE_87BE36                    ;87BE30;

CODE_87BE33:
    JSR.W CODE_87C042                    ;87BE33;

CODE_87BE36:
    RTS                                  ;87BE36;

CODE_87BE37:
    REP #$20                             ;87BE37;
    LDA.B $3B                            ;87BE39;
    AND.W #$00FF                         ;87BE3B;
    BEQ CODE_87BE4A                      ;87BE3E;
    DEC.B $3B                            ;87BE40;
    BEQ CODE_87BE47                      ;87BE42;
    JMP.W CODE_87BEC7                    ;87BE44;

CODE_87BE47:
    JMP.W CODE_87BE81                    ;87BE47;

CODE_87BE4A:
    LDA.B $1C                            ;87BE4A;
    CMP.W #$0200                         ;87BE4C;
    BEQ CODE_87BE5A                      ;87BE4F;
    SEP #$20                             ;87BE51;
    JSL.L CODE_8281FB                    ;87BE53;
    JMP.W CODE_87BE60                    ;87BE57;

CODE_87BE5A:
    SEP #$20                             ;87BE5A;
    JSL.L CODE_82820A                    ;87BE5C;

CODE_87BE60:
    STZ.B $29                            ;87BE60;
    JSL.L CODE_8490A0                    ;87BE62;
    CMP.B #$3F                           ;87BE66;
    BEQ CODE_87BEB0                      ;87BE68;
    CMP.B #$00                           ;87BE6A;
    BEQ CODE_87BEB0                      ;87BE6C;
    CMP.B #$3E                           ;87BE6E;
    BEQ CODE_87BEB0                      ;87BE70;
    CMP.B #$33                           ;87BE72;
    BEQ CODE_87BEB0                      ;87BE74;
    LDA.B $0B                            ;87BE76;
    BNE CODE_87BE81                      ;87BE78;
    LDA.B #$02                           ;87BE7A;
    STA.B $3B                            ;87BE7C;
    JMP.W CODE_87BEC7                    ;87BE7E;

CODE_87BE81:
    REP #$20                             ;87BE81;
    LDA.B $05                            ;87BE83;
    SEC                                  ;87BE85;
    SBC.W #$0020                         ;87BE86;
    STA.W $002C                          ;87BE89;
    LDA.B $08                            ;87BE8C;
    SEC                                  ;87BE8E;
    SBC.W #$0025                         ;87BE8F;
    STA.W $002E                          ;87BE92;
    SEP #$20                             ;87BE95;
    LDA.B $0B                            ;87BE97;
    JSL.L CODE_848011                    ;87BE99;
    LDA.B $0B                            ;87BE9D;
    BNE CODE_87BEAB                      ;87BE9F;
    LDA.B #$20                           ;87BEA1;
    LDX.B #$06                           ;87BEA3;
    LDY.B #$01                           ;87BEA5;
    JSL.L CODE_84A31A                    ;87BEA7;

CODE_87BEAB:
    INC.B $0B                            ;87BEAB;
    JSR.W CODE_87BFE5                    ;87BEAD;

CODE_87BEB0:
    REP #$20                             ;87BEB0;
    LDA.B $34                            ;87BEB2;
    SEC                                  ;87BEB4;
    SBC.B $08                            ;87BEB5;
    CMP.W #$0080                         ;87BEB7;
    BCC CODE_87BEC7                      ;87BEBA;
    LDA.W #$FE00                         ;87BEBC;
    STA.B $1C                            ;87BEBF;
    SEP #$20                             ;87BEC1;
    LDA.B #$06                           ;87BEC3;
    STA.B $01                            ;87BEC5;

CODE_87BEC7:
    SEP #$20                             ;87BEC7;
    JSL.L CODE_848EEA                    ;87BEC9;
    RTS                                  ;87BECD;

CODE_87BECE:
    JSL.L CODE_82825D                    ;87BECE;
    JSL.L CODE_848EEA                    ;87BED2;
    REP #$20                             ;87BED6;
    LDA.B $34                            ;87BED8;
    SEC                                  ;87BEDA;
    SBC.B $08                            ;87BEDB;
    CMP.W #$0080                         ;87BEDD;
    BCC CODE_87BEF0                      ;87BEE0;
    LDA.B $34                            ;87BEE2;
    STA.B $08                            ;87BEE4;
    SEP #$20                             ;87BEE6;
    LDA.B #$02                           ;87BEE8;
    STA.B $01                            ;87BEEA;
    LDA.B #$5A                           ;87BEEC;
    STA.B $33                            ;87BEEE;

CODE_87BEF0:
    SEP #$20                             ;87BEF0;
    RTS                                  ;87BEF2;

CODE_87BEF3:
    REP #$20                             ;87BEF3;
    SEP #$20                             ;87BEF5;
    LDA.B #$01                           ;87BEF7;
    STA.B $28                            ;87BEF9;
    LDA.B #$80                           ;87BEFB;
    STA.B $2C                            ;87BEFD;
    JSL.L CODE_82D7D0                    ;87BEFF;
    JMP.W CODE_87BF16                    ;87BF03;
    SEP #$20                             ;87BF06;
    LDA.B $03                            ;87BF08;
    STA.B $01                            ;87BF0A;
    LDA.B #$05                           ;87BF0C;
    STA.B $28                            ;87BF0E;
    STZ.B $3C                            ;87BF10;
    LDA.B #$0C                           ;87BF12;
    STA.B $27                            ;87BF14;

CODE_87BF16:
    RTS                                  ;87BF16;

CODE_87BF17:
    REP #$10                             ;87BF17;
    JSL.L CODE_8282D3                    ;87BF19;
    BEQ CODE_87BF22                      ;87BF1D;
    JMP.W CODE_87BFD5                    ;87BF1F;

CODE_87BF22:
    INC.W $0000,X                        ;87BF22;
    LDA.B #$35                           ;87BF25;
    STA.W $000A,X                        ;87BF27;
    STZ.W $001F,X                        ;87BF2A;
    LDA.B #$20                           ;87BF2D;
    STA.W $001E,X                        ;87BF2F;
    LDA.B $18                            ;87BF32;
    STA.W $0018,X                        ;87BF34;
    LDA.B $3A                            ;87BF37;
    CMP.B #$01                           ;87BF39;
    BEQ CODE_87BF52                      ;87BF3B;
    LDA.B $11                            ;87BF3D;
    STA.W $0011,X                        ;87BF3F;
    REP #$20                             ;87BF42;
    LDA.W #$0000                         ;87BF44;
    STA.W $0000                          ;87BF47;
    STA.W $0002                          ;87BF4A;
    SEP #$20                             ;87BF4D;
    JMP.W CODE_87BF69                    ;87BF4F;

CODE_87BF52:
    LDA.B $11                            ;87BF52;
    ORA.B #$40                           ;87BF54;
    STA.W $0011,X                        ;87BF56;
    REP #$20                             ;87BF59;
    LDA.W #$FFF4                         ;87BF5B;
    STA.W $0000                          ;87BF5E;
    LDA.W #$FFF0                         ;87BF61;
    STA.W $0002                          ;87BF64;
    SEP #$20                             ;87BF67;

CODE_87BF69:
    LDA.B $16                            ;87BF69;
    STA.W $0016,X                        ;87BF6B;
    REP #$20                             ;87BF6E;
    LDA.B $05                            ;87BF70;
    SEC                                  ;87BF72;
    SBC.W $0002                          ;87BF73;
    STA.W $0005,X                        ;87BF76;
    LDA.W #$03D9                         ;87BF79;
    SEC                                  ;87BF7C;
    SBC.W $0000                          ;87BF7D;
    STA.W $0008,X                        ;87BF80;
    LDA.B $33                            ;87BF83;
    AND.W #$00FF                         ;87BF85;
    CMP.W #$0012                         ;87BF88;
    BNE CODE_87BF93                      ;87BF8B;
    STZ.W $001A,X                        ;87BF8D;
    JMP.W CODE_87BFAC                    ;87BF90;

CODE_87BF93:
    LDA.B $3A                            ;87BF93;
    AND.W #$00FF                         ;87BF95;
    CMP.W #$0002                         ;87BF98;
    BNE CODE_87BFA6                      ;87BF9B;
    LDA.W #$0100                         ;87BF9D;
    STA.W $001A,X                        ;87BFA0;
    JMP.W CODE_87BFAC                    ;87BFA3;

CODE_87BFA6:
    LDA.W #$FF00                         ;87BFA6;
    STA.W $001A,X                        ;87BFA9;

CODE_87BFAC:
    LDA.W #$0200                         ;87BFAC;
    STA.W $001C,X                        ;87BFAF;
    SEP #$20                             ;87BFB2;
    LDA.B $33                            ;87BFB4;
    CMP.B #$12                           ;87BFB6;
    BNE CODE_87BFC2                      ;87BFB8;
    LDA.B #$06                           ;87BFBA;
    STA.W $000B,X                        ;87BFBC;
    JMP.W CODE_87BFD5                    ;87BFBF;

CODE_87BFC2:
    LDA.B $33                            ;87BFC2;
    CMP.B #$10                           ;87BFC4;
    BNE CODE_87BFD0                      ;87BFC6;
    LDA.B #$04                           ;87BFC8;
    STA.W $000B,X                        ;87BFCA;
    JMP.W CODE_87BFD5                    ;87BFCD;

CODE_87BFD0:
    LDA.B #$07                           ;87BFD0;
    STA.W $000B,X                        ;87BFD2;

CODE_87BFD5:
    LDX.W #$0005                         ;87BFD5;
    STX.W $0000                          ;87BFD8;
    DEC.B $3A                            ;87BFDB;
    BEQ CODE_87BFE2                      ;87BFDD;
    JMP.W CODE_87BF17                    ;87BFDF;

CODE_87BFE2:
    SEP #$10                             ;87BFE2;
    RTS                                  ;87BFE4;

CODE_87BFE5:
    REP #$10                             ;87BFE5;
    LDY.W #$0004                         ;87BFE7;

CODE_87BFEA:
    JSL.L CODE_8282D3                    ;87BFEA;
    BNE CODE_87C03F                      ;87BFEE;
    INC.W $0000,X                        ;87BFF0;
    LDA.B #$2B                           ;87BFF3;
    STA.W $000A,X                        ;87BFF5;
    LDA.W DATA8_86D287,Y                 ;87BFF8;
    STA.W $000B,X                        ;87BFFB;
    STZ.W $001F,X                        ;87BFFE;
    LDA.B #$40                           ;87C001;
    STA.W $001E,X                        ;87C003;
    REP #$20                             ;87C006;
    LDA.W #$0C80                         ;87C008;
    STA.W $000C,X                        ;87C00B;
    LDA.B $05                            ;87C00E;
    STA.W $0005,X                        ;87C010;
    LDA.B $08                            ;87C013;
    SEC                                  ;87C015;
    SBC.W #$0025                         ;87C016;
    STA.W $0008,X                        ;87C019;
    PHY                                  ;87C01C;
    JSL.L CODE_849086                    ;87C01D;
    AND.W #$0006                         ;87C021;
    TAY                                  ;87C024;
    LDA.W DATA8_86D28C,Y                 ;87C025;
    STA.W $001A,X                        ;87C028;
    JSL.L CODE_849086                    ;87C02B;
    AND.W #$0006                         ;87C02F;
    TAY                                  ;87C032;
    LDA.W DATA8_86D294,Y                 ;87C033;
    STA.W $001C,X                        ;87C036;
    PLY                                  ;87C039;
    SEP #$20                             ;87C03A;
    DEY                                  ;87C03C;
    BPL CODE_87BFEA                      ;87C03D;

CODE_87C03F:
    SEP #$10                             ;87C03F;
    RTS                                  ;87C041;

CODE_87C042:
    REP #$10                             ;87C042;
    JSL.L CODE_8282D3                    ;87C044;
    BNE CODE_87C077                      ;87C048;
    INC.W $0000,X                        ;87C04A;
    LDA.B #$36                           ;87C04D;
    STA.W $000A,X                        ;87C04F;
    LDA.B #$00                           ;87C052;
    STA.W $000B,X                        ;87C054;
    LDA.B #$00                           ;87C057;
    STA.W $0002,X                        ;87C059;
    LDA.B $11                            ;87C05C;
    ORA.B #$10                           ;87C05E;
    STA.W $0011,X                        ;87C060;
    LDA.B #$8C                           ;87C063;
    STA.W $0003,X                        ;87C065;
    REP #$20                             ;87C068;
    LDA.B $05                            ;87C06A;
    STA.W $0005,X                        ;87C06C;
    LDA.W #$03DE                         ;87C06F;
    STA.W $0008,X                        ;87C072;
    STX.B $3D                            ;87C075;

CODE_87C077:
    SEP #$30                             ;87C077;
    RTS                                  ;87C079;

CODE_87C07A:
    LDX.B $01                            ;87C07A;
    JMP.W (PTR16_87C07F,X)               ;87C07C;

PTR16_87C07F:
    dw CODE_87C085                       ;87C07F;
    dw CODE_87C0AE                       ;87C081;
    dw CODE_87C211                       ;87C083;

CODE_87C085:
    JSL.L CODE_82827D                    ;87C085;
    LDA.B #$04                           ;87C089;
    STA.B $12                            ;87C08B;
    LDA.B #$40                           ;87C08D;
    TSB.B $11                            ;87C08F;
    LDA.B #$02                           ;87C091;
    JSL.L CODE_848F07                    ;87C093;
    REP #$20                             ;87C097;
    LDA.W #$0100                         ;87C099;
    STA.B $1C                            ;87C09C;
    LDA.W #$1840                         ;87C09E;
    STA.B $05                            ;87C0A1;
    LDA.W #$0160                         ;87C0A3;
    STA.B $08                            ;87C0A6;
    LDA.W #$D29C                         ;87C0A8;
    STA.B $20                            ;87C0AB;

CODE_87C0AD:
    RTL                                  ;87C0AD;

CODE_87C0AE:
    STZ.B $2C                            ;87C0AE;
    JSL.L CODE_82D7D0                    ;87C0B0;
    LDX.B $02                            ;87C0B4;
    JSR.W (PTR16_87C0D0,X)               ;87C0B6;
    LDA.B $2C                            ;87C0B9;
    BEQ CODE_87C0C1                      ;87C0BB;
    JSL.L CODE_82C70E                    ;87C0BD;

CODE_87C0C1:
    REP #$20                             ;87C0C1;
    LDA.B $08                            ;87C0C3;
    CMP.W #$0120                         ;87C0C5;
    SEP #$20                             ;87C0C8;
    BCC CODE_87C0AD                      ;87C0CA;
    JML.L CODE_82808F                    ;87C0CC;

PTR16_87C0D0:
    dw CODE_87C0D6                       ;87C0D0;
    dw CODE_87C103                       ;87C0D2;
    dw CODE_87C171                       ;87C0D4;

CODE_87C0D6:
    LDA.B $2C                            ;87C0D6;
    BEQ CODE_87C100                      ;87C0D8;
    LDA.B #$02                           ;87C0DA;
    STA.B $02                            ;87C0DC;
    STA.W $0C0C                          ;87C0DE;
    LDA.B #$02                           ;87C0E1;
    STA.W $1F81                          ;87C0E3;
    JSL.L CODE_849FF2                    ;87C0E6;
    JSR.W CODE_87C35F                    ;87C0EA;
    JSL.L CODE_84A28B                    ;87C0ED;
    JSL.L CODE_84A2A7                    ;87C0F1;
    INC.W $1F41                          ;87C0F5;
    REP #$20                             ;87C0F8;
    LDA.B $08                            ;87C0FA;
    STA.B $33                            ;87C0FC;
    SEP #$20                             ;87C0FE;

CODE_87C100:
    JMP.W CODE_87C242                    ;87C100;

CODE_87C103:
    LDX.B $03                            ;87C103;
    JMP.W (PTR16_87C108,X)               ;87C105;

PTR16_87C108:
    dw CODE_87C10E                       ;87C108;
    dw CODE_87C11D                       ;87C10A;
    dw CODE_87C157                       ;87C10C;

CODE_87C10E:
    LDA.B #$02                           ;87C10E;
    STA.B $03                            ;87C110;
    LDA.B #$10                           ;87C112;
    TRB.W $0BB9                          ;87C114;
    LDA.B #$10                           ;87C117;
    JSL.L CODE_84A333                    ;87C119;

CODE_87C11D:
    JSL.L CODE_848EEA                    ;87C11D;
    LDX.B $0F                            ;87C121;
    BPL CODE_87C143                      ;87C123;
    LDA.B #$04                           ;87C125;
    STA.B $03                            ;87C127;
    REP #$20                             ;87C129;
    LDA.W #$D2A0                         ;87C12B;
    STA.B $20                            ;87C12E;
    LDA.W #$1760                         ;87C130;
    STA.W $1E5E                          ;87C133;
    LDA.W #$1760                         ;87C136;
    STA.W $1E60                          ;87C139;
    SEP #$20                             ;87C13C;
    STZ.B $35                            ;87C13E;
    JMP.W CODE_87C215                    ;87C140;

CODE_87C143:
    REP #$21                             ;87C143;
    LDA.W DATA8_86D2A4,X                 ;87C145;
    AND.W #$00FF                         ;87C148;
    EOR.W #$FFFF                         ;87C14B;
    INC A                                ;87C14E;
    ADC.B $33                            ;87C14F;
    STA.W $0BB0                          ;87C151;
    SEP #$20                             ;87C154;
    RTS                                  ;87C156;

CODE_87C157:
    DEC.B $33                            ;87C157;
    BNE CODE_87C16C                      ;87C159;
    JSR.W CODE_87C215                    ;87C15B;
    BPL CODE_87C16C                      ;87C15E;
    LDA.B #$40                           ;87C160;
    STA.W $0C11                          ;87C162;
    LDA.B #$04                           ;87C165;
    STA.B $02                            ;87C167;
    STZ.B $03                            ;87C169;
    RTS                                  ;87C16B;

CODE_87C16C:
    JSL.L CODE_82820A                    ;87C16C;
    RTS                                  ;87C170;

CODE_87C171:
    LDX.B $03                            ;87C171;
    JMP.W (PTR16_87C176,X)               ;87C173;

PTR16_87C176:
    dw CODE_87C180                       ;87C176;
    dw CODE_87C1A3                       ;87C178;
    dw CODE_87C1B2                       ;87C17A;
    dw CODE_87C1E5                       ;87C17C;
    dw CODE_87C1F7                       ;87C17E;

CODE_87C180:
    LDA.B #$02                           ;87C180;
    STA.B $03                            ;87C182;
    LDX.B #$05                           ;87C184;
    LDY.B #$02                           ;87C186;
    LDA.B #$78                           ;87C188;
    JSL.L CODE_84A31A                    ;87C18A;
    REP #$20                             ;87C18E;
    LDA.W #$002F                         ;87C190;
    STA.W $1E68                          ;87C193;
    LDA.W #$002F                         ;87C196;
    STA.W $1E6E                          ;87C199;
    SEP #$20                             ;87C19C;
    LDA.B #$3C                           ;87C19E;
    STA.B $33                            ;87C1A0;
    RTS                                  ;87C1A2;

CODE_87C1A3:
    DEC.B $33                            ;87C1A3;
    BNE CODE_87C1B1                      ;87C1A5;
    INC.B $33                            ;87C1A7;
    LDA.B #$04                           ;87C1A9;
    STA.B $03                            ;87C1AB;
    LDA.B #$0A                           ;87C1AD;
    STA.B $34                            ;87C1AF;

CODE_87C1B1:
    RTS                                  ;87C1B1;

CODE_87C1B2:
    DEC.B $33                            ;87C1B2;
    BNE CODE_87C1E4                      ;87C1B4;
    LDA.B #$06                           ;87C1B6;
    STA.B $33                            ;87C1B8;
    LDA.B #$21                           ;87C1BA;
    JSL.L CODE_8088A2                    ;87C1BC;
    JSR.W CODE_87C2AA                    ;87C1C0;
    JSR.W CODE_87C269                    ;87C1C3;
    LDA.B $34                            ;87C1C6;
    JSL.L CODE_848000                    ;87C1C8;
    INC.B $34                            ;87C1CC;
    LDA.B $34                            ;87C1CE;
    CMP.B #$15                           ;87C1D0;
    BNE CODE_87C1E4                      ;87C1D2;
    LDA.B #$10                           ;87C1D4;
    TSB.W $0BB9                          ;87C1D6;
    STZ.W $0C0C                          ;87C1D9;
    LDA.B #$06                           ;87C1DC;
    STA.B $03                            ;87C1DE;
    LDA.B #$3C                           ;87C1E0;
    STA.B $33                            ;87C1E2;

CODE_87C1E4:
    RTS                                  ;87C1E4;

CODE_87C1E5:
    DEC.B $33                            ;87C1E5;
    BNE CODE_87C1F6                      ;87C1E7;
    LDA.B #$08                           ;87C1E9;
    STA.B $03                            ;87C1EB;
    LDA.B #$07                           ;87C1ED;
    STA.W $1F08                          ;87C1EF;
    JSL.L CODE_80B087                    ;87C1F2;

CODE_87C1F6:
    RTS                                  ;87C1F6;

CODE_87C1F7:
    LDA.W $0040                          ;87C1F7;
    BNE CODE_87C210                      ;87C1FA;
    LDA.B #$04                           ;87C1FC;
    STA.B $01                            ;87C1FE;
    JSL.L CODE_828321                    ;87C200;
    BNE CODE_87C20E                      ;87C204;
    INC.W $0000,X                        ;87C206;
    LDA.B #$52                           ;87C209;
    STA.W $000A,X                        ;87C20B;

CODE_87C20E:
    SEP #$10                             ;87C20E;

CODE_87C210:
    RTS                                  ;87C210;

CODE_87C211:
    JML.L CODE_828398                    ;87C211;

CODE_87C215:
    REP #$20                             ;87C215;
    LDX.B $35                            ;87C217;
    LDA.W DATA8_86D2A8,X                 ;87C219;
    BMI CODE_87C23F                      ;87C21C;
    CMP.W #$0001                         ;87C21E;
    BNE CODE_87C22A                      ;87C221;
    LDA.W #$1840                         ;87C223;
    SEC                                  ;87C226;
    SBC.W $0BAD                          ;87C227;

CODE_87C22A:
    STA.B $33                            ;87C22A;
    LDA.W DATA8_86D2AA,X                 ;87C22C;
    STA.B $1A                            ;87C22F;
    LDA.W DATA8_86D2AC,X                 ;87C231;
    STA.B $1C                            ;87C234;
    SEP #$20                             ;87C236;
    LDA.B $35                            ;87C238;
    CLC                                  ;87C23A;
    ADC.B #$06                           ;87C23B;
    STA.B $35                            ;87C23D;

CODE_87C23F:
    SEP #$20                             ;87C23F;
    RTS                                  ;87C241;

CODE_87C242:
    REP #$20                             ;87C242;
    LDX.B #$20                           ;87C244;
    LDA.W $0BAD                          ;87C246;
    CMP.W #$1500                         ;87C249;
    BCC CODE_87C257                      ;87C24C;
    LDX.B #$30                           ;87C24E;
    CMP.W #$1920                         ;87C250;
    BCC CODE_87C257                      ;87C253;
    LDX.B #$20                           ;87C255;

CODE_87C257:
    SEP #$20                             ;87C257;
    LDA.W $0BB9                          ;87C259;
    AND.B #$CF                           ;87C25C;
    STA.W $0000                          ;87C25E;
    TXA                                  ;87C261;
    ORA.W $0000                          ;87C262;
    STA.W $0BB9                          ;87C265;
    RTS                                  ;87C268;

CODE_87C269:
    REP #$10                             ;87C269;
    LDA.B #$04                           ;87C26B;
    STA.L $7F830A                        ;87C26D;
    LDY.W #$0003                         ;87C271;

CODE_87C274:
    JSL.L CODE_8282D3                    ;87C274;
    BNE CODE_87C2A7                      ;87C278;
    INC.W $0000,X                        ;87C27A;
    LDA.B #$10                           ;87C27D;
    STA.W $000A,X                        ;87C27F;
    LDA.B #$1C                           ;87C282;
    STA.W $000B,X                        ;87C284;
    LDA.B #$30                           ;87C287;
    STA.W $0011,X                        ;87C289;
    PHY                                  ;87C28C;
    REP #$20                             ;87C28D;
    LDA.W #$007F                         ;87C28F;
    STA.W $0000                          ;87C292;
    STZ.W $0002                          ;87C295;
    LDA.W #$000F                         ;87C298;
    STA.W $0004                          ;87C29B;
    JSR.W CODE_87C320                    ;87C29E;
    SEP #$20                             ;87C2A1;
    PLY                                  ;87C2A3;
    DEY                                  ;87C2A4;
    BPL CODE_87C274                      ;87C2A5;

CODE_87C2A7:
    SEP #$10                             ;87C2A7;
    RTS                                  ;87C2A9;

CODE_87C2AA:
    REP #$10                             ;87C2AA;
    LDY.W #$0001                         ;87C2AC;

CODE_87C2AF:
    JSL.L CODE_8282D3                    ;87C2AF;
    BNE CODE_87C31D                      ;87C2B3;
    INC.W $0000,X                        ;87C2B5;
    LDA.B #$2B                           ;87C2B8;
    STA.W $000A,X                        ;87C2BA;
    JSL.L CODE_849086                    ;87C2BD;
    AND.B #$07                           ;87C2C1;
    CLC                                  ;87C2C3;
    ADC.B #$3C                           ;87C2C4;
    ORA.B #$80                           ;87C2C6;
    STA.W $000B,X                        ;87C2C8;
    LDA.B #$30                           ;87C2CB;
    STA.W $0011,X                        ;87C2CD;
    PHY                                  ;87C2D0;
    REP #$20                             ;87C2D1;
    LDA.W #$007F                         ;87C2D3;
    STA.W $0000                          ;87C2D6;
    STZ.W $0002                          ;87C2D9;
    LDA.W #$000F                         ;87C2DC;
    STA.W $0004                          ;87C2DF;
    JSR.W CODE_87C320                    ;87C2E2;
    SEP #$20                             ;87C2E5;
    PLY                                  ;87C2E7;
    DEY                                  ;87C2E8;
    BPL CODE_87C2AF                      ;87C2E9;
    LDY.W #$0001                         ;87C2EB;

CODE_87C2EE:
    JSL.L CODE_8282D3                    ;87C2EE;
    BNE CODE_87C31D                      ;87C2F2;
    INC.W $0000,X                        ;87C2F4;
    LDA.B #$10                           ;87C2F7;
    STA.W $000A,X                        ;87C2F9;
    ASL A                                ;87C2FC;
    STA.W $000B,X                        ;87C2FD;
    LDA.B #$30                           ;87C300;
    STA.W $0011,X                        ;87C302;
    PHY                                  ;87C305;
    REP #$20                             ;87C306;
    STZ.W $0000                          ;87C308;
    LDA.W #$0040                         ;87C30B;
    STA.W $0002                          ;87C30E;
    STZ.W $0004                          ;87C311;
    JSR.W CODE_87C320                    ;87C314;
    SEP #$20                             ;87C317;
    PLY                                  ;87C319;
    DEY                                  ;87C31A;
    BPL CODE_87C2EE                      ;87C31B;

CODE_87C31D:
    SEP #$10                             ;87C31D;
    RTS                                  ;87C31F;

CODE_87C320:
    JSL.L CODE_849086                    ;87C320;
    AND.W $0000                          ;87C324;
    CLC                                  ;87C327;
    ADC.W #$0070                         ;87C328;
    CLC                                  ;87C32B;
    ADC.W $0002                          ;87C32C;
    STA.W $0008,X                        ;87C32F;
    JSL.L CODE_849086                    ;87C332;
    AND.W $0004                          ;87C336;
    STA.W $0000                          ;87C339;
    TYA                                  ;87C33C;
    AND.W #$0001                         ;87C33D;
    ASL A                                ;87C340;
    STA.W $0002                          ;87C341;
    LDA.B $34                            ;87C344;
    AND.W #$00FF                         ;87C346;
    SEC                                  ;87C349;
    SBC.W #$000A                         ;87C34A;
    ASL A                                ;87C34D;
    ASL A                                ;87C34E;
    CLC                                  ;87C34F;
    ADC.W $0002                          ;87C350;
    TAY                                  ;87C353;
    LDA.W DATA8_86D2BC,Y                 ;87C354;
    CLC                                  ;87C357;
    ADC.W $0000                          ;87C358;
    STA.W $0005,X                        ;87C35B;
    RTS                                  ;87C35E;

CODE_87C35F:
    REP #$30                             ;87C35F;
    LDX.W #$0E68                         ;87C361;

CODE_87C364:
    TDC                                  ;87C364;
    STA.W $0000                          ;87C365;
    CPX.W $0000                          ;87C368;
    BEQ CODE_87C379                      ;87C36B;
    STZ.W $0000,X                        ;87C36D;
    STZ.W $0002,X                        ;87C370;
    STZ.W $0027,X                        ;87C373;
    STZ.W $000E,X                        ;87C376;

CODE_87C379:
    TXA                                  ;87C379;
    CLC                                  ;87C37A;
    ADC.W #$0040                         ;87C37B;
    TAX                                  ;87C37E;
    CMP.W #$1228                         ;87C37F;
    BCC CODE_87C364                      ;87C382;
    SEP #$30                             ;87C384;
    RTS                                  ;87C386;

CODE_87C387:
    LDX.B $01                            ;87C387;
    JMP.W (PTR16_87C38C,X)               ;87C389;

PTR16_87C38C:
    dw CODE_87C392                       ;87C38C;
    dw CODE_87C3C5                       ;87C38E;
    dw CODE_87C5D9                       ;87C390;

CODE_87C392:
    JSL.L CODE_84A1D0                    ;87C392;
    CPY.B #$04                           ;87C396;
    BCC CODE_87C39E                      ;87C398;
    JML.L CODE_87C6FE                    ;87C39A;

CODE_87C39E:
    JSL.L CODE_82827D                    ;87C39E;
    LDA.B #$02                           ;87C3A2;
    STA.B $12                            ;87C3A4;
    LDA.B #$02                           ;87C3A6;
    STA.B $26                            ;87C3A8;
    LDA.B #$02                           ;87C3AA;
    STA.B $27                            ;87C3AC;
    LDA.B #$03                           ;87C3AE;
    STA.B $28                            ;87C3B0;
    STZ.B $2F                            ;87C3B2;
    LDA.B $05                            ;87C3B4;
    STA.B $37                            ;87C3B6;
    LDA.B $06                            ;87C3B8;
    STA.B $38                            ;87C3BA;
    LDA.B $0B                            ;87C3BC;
    BPL CODE_87C3C4                      ;87C3BE;
    LDA.B #$06                           ;87C3C0;
    STA.B $02                            ;87C3C2;

CODE_87C3C4:
    RTL                                  ;87C3C4;

CODE_87C3C5:
    JSL.L CODE_82806E                    ;87C3C5;
    BCC CODE_87C3CF                      ;87C3C9;
    JML.L CODE_87C6FE                    ;87C3CB;

CODE_87C3CF:
    LDA.L $7F8378                        ;87C3CF;
    STA.B $11                            ;87C3D3;
    LDX.B $02                            ;87C3D5;
    JSR.W (PTR16_87C404,X)               ;87C3D7;
    LDA.B #$F1                           ;87C3DA;
    STA.B $20                            ;87C3DC;
    LDA.B #$D2                           ;87C3DE;
    STA.B $21                            ;87C3E0;
    JSL.L CODE_849B43                    ;87C3E2;
    BEQ CODE_87C3F4                      ;87C3E6;
    BPL CODE_87C3F0                      ;87C3E8;
    LDA.B #$04                           ;87C3EA;
    STA.B $01                            ;87C3EC;
    STZ.B $02                            ;87C3EE;

CODE_87C3F0:
    LDA.B #$0E                           ;87C3F0;
    TRB.B $11                            ;87C3F2;

CODE_87C3F4:
    LDA.B #$E8                           ;87C3F4;
    STA.B $20                            ;87C3F6;
    LDA.B #$D2                           ;87C3F8;
    STA.B $21                            ;87C3FA;
    JSL.L CODE_849B03                    ;87C3FC;
    JML.L CODE_8280B4                    ;87C400;

PTR16_87C404:
    dw CODE_87C40C                       ;87C404;
    dw CODE_87C462                       ;87C406;
    dw CODE_87C4D1                       ;87C408;
    dw CODE_87C5B0                       ;87C40A;

CODE_87C40C:
    LDX.B $03                            ;87C40C;
    JMP.W (PTR16_87C411,X)               ;87C40E;

PTR16_87C411:
    dw CODE_87C417                       ;87C411;
    dw CODE_87C435                       ;87C413;
    dw CODE_87C454                       ;87C415;

CODE_87C417:
    LDA.B #$02                           ;87C417;
    STA.B $03                            ;87C419;
    REP #$30                             ;87C41B;
    LDX.W #$0180                         ;87C41D;
    LDA.W $0BAD                          ;87C420;
    CMP.B $05                            ;87C423;
    BCS CODE_87C42A                      ;87C425;
    LDX.W #$FE80                         ;87C427;

CODE_87C42A:
    STX.B $1A                            ;87C42A;
    SEP #$30                             ;87C42C;
    LDA.B #$00                           ;87C42E;
    JSL.L CODE_848F07                    ;87C430;
    RTS                                  ;87C434;

CODE_87C435:
    REP #$20                             ;87C435;
    LDA.W $0BAD                          ;87C437;
    SEC                                  ;87C43A;
    SBC.B $05                            ;87C43B;
    CLC                                  ;87C43D;
    ADC.W #$0004                         ;87C43E;
    CMP.W #$0008                         ;87C441;
    SEP #$20                             ;87C444;
    BCS CODE_87C44E                      ;87C446;
    LDA.B #$02                           ;87C448;
    STA.B $02                            ;87C44A;
    STZ.B $03                            ;87C44C;

CODE_87C44E:
    JSR.W CODE_87C5FF                    ;87C44E;
    JMP.W CODE_87C6DD                    ;87C451;

CODE_87C454:
    DEC.B $33                            ;87C454;
    BNE CODE_87C45F                      ;87C456;
    LDA.B #$02                           ;87C458;
    STA.B $03                            ;87C45A;
    JMP.W CODE_87C5F2                    ;87C45C;

CODE_87C45F:
    JMP.W CODE_87C5FF                    ;87C45F;

CODE_87C462:
    LDX.B $03                            ;87C462;
    JMP.W (PTR16_87C467,X)               ;87C464;

PTR16_87C467:
    dw CODE_87C46F                       ;87C467;
    dw CODE_87C486                       ;87C469;
    dw CODE_87C4A4                       ;87C46B;
    dw CODE_87C4C0                       ;87C46D;

CODE_87C46F:
    LDA.B #$02                           ;87C46F;
    STA.B $03                            ;87C471;
    LDA.B #$00                           ;87C473;
    STA.B $1C                            ;87C475;
    LDA.B #$FE                           ;87C477;
    STA.B $1D                            ;87C479;
    LDA.B #$15                           ;87C47B;
    STA.B $33                            ;87C47D;
    LDA.B #$01                           ;87C47F;
    JSL.L CODE_848F07                    ;87C481;
    RTS                                  ;87C485;

CODE_87C486:
    DEC.B $33                            ;87C486;
    BNE CODE_87C499                      ;87C488;
    LDA.B #$04                           ;87C48A;
    STA.B $03                            ;87C48C;
    LDA.B #$02                           ;87C48E;
    JSL.L CODE_848F07                    ;87C490;
    LDA.B #$1E                           ;87C494;
    STA.B $33                            ;87C496;
    RTS                                  ;87C498;

CODE_87C499:
    JSL.L CODE_82825D                    ;87C499;
    JSL.L CODE_848EEA                    ;87C49D;
    JMP.W CODE_87C608                    ;87C4A1;

CODE_87C4A4:
    DEC.B $33                            ;87C4A4;
    BNE CODE_87C4B9                      ;87C4A6;
    LDA.B #$06                           ;87C4A8;
    STA.B $03                            ;87C4AA;
    LDA.B #$15                           ;87C4AC;
    STA.B $33                            ;87C4AE;
    LDA.B #$00                           ;87C4B0;
    STA.B $1C                            ;87C4B2;
    LDA.B #$02                           ;87C4B4;
    STA.B $1D                            ;87C4B6;
    RTS                                  ;87C4B8;

CODE_87C4B9:
    JSL.L CODE_848EEA                    ;87C4B9;
    JMP.W CODE_87C608                    ;87C4BD;

CODE_87C4C0:
    DEC.B $33                            ;87C4C0;
    BNE CODE_87C4C8                      ;87C4C2;
    STZ.B $02                            ;87C4C4;
    STZ.B $03                            ;87C4C6;

CODE_87C4C8:
    JSL.L CODE_82825D                    ;87C4C8;
    JSL.L CODE_848EEA                    ;87C4CC;
    RTS                                  ;87C4D0;

CODE_87C4D1:
    LDX.B $03                            ;87C4D1;
    JMP.W (PTR16_87C4D6,X)               ;87C4D3;

PTR16_87C4D6:
    dw CODE_87C4E0                       ;87C4D6;
    dw CODE_87C501                       ;87C4D8;
    dw CODE_87C533                       ;87C4DA;
    dw CODE_87C588                       ;87C4DC;
    dw CODE_87C59C                       ;87C4DE;

CODE_87C4E0:
    LDA.B #$02                           ;87C4E0;
    STA.B $03                            ;87C4E2;
    LDA.B #$01                           ;87C4E4;
    LDX.B $0B                            ;87C4E6;
    BPL CODE_87C4EC                      ;87C4E8;
    LDA.B #$08                           ;87C4EA;

CODE_87C4EC:
    STA.B $33                            ;87C4EC;
    LDA.B #$00                           ;87C4EE;
    STA.B $1C                            ;87C4F0;
    LDA.B #$02                           ;87C4F2;
    STA.B $1D                            ;87C4F4;
    STZ.B $26                            ;87C4F6;
    LDA.B #$02                           ;87C4F8;
    JSL.L CODE_848F07                    ;87C4FA;
    JMP.W CODE_87C6B1                    ;87C4FE;

CODE_87C501:
    DEC.B $33                            ;87C501;
    BNE CODE_87C528                      ;87C503;
    LDA.B #$04                           ;87C505;
    STA.B $03                            ;87C507;
    REP #$31                             ;87C509;
    LDX.W #$0180                         ;87C50B;
    LDA.B $0B                            ;87C50E;
    LSR A                                ;87C510;
    BCC CODE_87C516                      ;87C511;
    LDX.W #$FE80                         ;87C513;

CODE_87C516:
    STX.B $1A                            ;87C516;
    SEP #$30                             ;87C518;
    LDA.B #$3C                           ;87C51A;
    STA.B $33                            ;87C51C;
    LDA.B #$0F                           ;87C51E;
    STA.B $36                            ;87C520;
    LDA.B #$08                           ;87C522;
    STA.B $34                            ;87C524;
    STA.B $35                            ;87C526;

CODE_87C528:
    JSL.L CODE_82825D                    ;87C528;
    JSL.L CODE_848EEA                    ;87C52C;
    JMP.W CODE_87C6B1                    ;87C530;

CODE_87C533:
    DEC.B $34                            ;87C533;
    BNE CODE_87C549                      ;87C535;
    LDA.B #$0E                           ;87C537;
    TRB.B $11                            ;87C539;
    LDA.B $35                            ;87C53B;
    STA.B $34                            ;87C53D;
    DEC.B $35                            ;87C53F;
    LDA.B $35                            ;87C541;
    CMP.B #$01                           ;87C543;
    BNE CODE_87C549                      ;87C545;
    INC.B $35                            ;87C547;

CODE_87C549:
    DEC.B $33                            ;87C549;
    BNE CODE_87C55A                      ;87C54B;

CODE_87C54D:
    LDA.B #$06                           ;87C54D;
    STA.B $03                            ;87C54F;
    LDA.B #$04                           ;87C551;
    STA.B $33                            ;87C553;
    JSL.L CODE_84A445                    ;87C555;
    RTS                                  ;87C559;

CODE_87C55A:
    LDA.W $0BE2                          ;87C55A;
    ORA.W $0BE3                          ;87C55D;
    BEQ CODE_87C578                      ;87C560;
    DEC.B $36                            ;87C562;
    BNE CODE_87C578                      ;87C564;
    LDA.B #$08                           ;87C566;
    STA.B $03                            ;87C568;
    LDA.B #$1E                           ;87C56A;
    STA.B $33                            ;87C56C;
    LDA.B #$02                           ;87C56E;
    STA.B $26                            ;87C570;
    LDA.B #$01                           ;87C572;
    JSL.L CODE_848F07                    ;87C574;

CODE_87C578:
    LDA.W $0BD3                          ;87C578;
    BIT.B #$03                           ;87C57B;
    BNE CODE_87C54D                      ;87C57D;
    JSR.W CODE_87C5FF                    ;87C57F;
    JSR.W CODE_87C6DD                    ;87C582;
    JMP.W CODE_87C6B1                    ;87C585;

CODE_87C588:
    DEC.B $33                            ;87C588;
    BNE CODE_87C599                      ;87C58A;
    LDA.B #$01                           ;87C58C;
    TRB.W $0C26                          ;87C58E;
    TRB.B $37                            ;87C591;
    LDA.B #$04                           ;87C593;
    STA.B $01                            ;87C595;
    STA.B $02                            ;87C597;

CODE_87C599:
    JMP.W CODE_87C6B1                    ;87C599;

CODE_87C59C:
    DEC.B $33                            ;87C59C;
    BNE CODE_87C5AB                      ;87C59E;
    LDA.B #$01                           ;87C5A0;
    TRB.W $0C26                          ;87C5A2;
    TRB.B $37                            ;87C5A5;
    STZ.B $02                            ;87C5A7;
    STZ.B $03                            ;87C5A9;

CODE_87C5AB:
    JSL.L CODE_848EEA                    ;87C5AB;
    RTS                                  ;87C5AF;

CODE_87C5B0:
    LDX.B $03                            ;87C5B0;
    BNE CODE_87C5C8                      ;87C5B2;
    INC.B $03                            ;87C5B4;
    LDA.B #$80                           ;87C5B6;
    STA.B $1C                            ;87C5B8;
    LDA.B #$01                           ;87C5BA;
    STA.B $1D                            ;87C5BC;
    LDA.B #$20                           ;87C5BE;
    STA.B $33                            ;87C5C0;
    LDA.B #$00                           ;87C5C2;
    JSL.L CODE_848F07                    ;87C5C4;

CODE_87C5C8:
    DEC.B $33                            ;87C5C8;
    BNE CODE_87C5D0                      ;87C5CA;
    STZ.B $02                            ;87C5CC;
    STZ.B $03                            ;87C5CE;

CODE_87C5D0:
    JSL.L CODE_82825D                    ;87C5D0;
    JSL.L CODE_848EEA                    ;87C5D4;
    RTS                                  ;87C5D8;

CODE_87C5D9:
    LDX.B $02                            ;87C5D9;
    BNE CODE_87C5E1                      ;87C5DB;
    JSL.L CODE_84A4AB                    ;87C5DD;

CODE_87C5E1:
    JSR.W CODE_87C646                    ;87C5E1;
    LDA.B $37                            ;87C5E4;
    LSR A                                ;87C5E6;
    BCC CODE_87C5EE                      ;87C5E7;
    LDA.B #$01                           ;87C5E9;
    TRB.W $0C26                          ;87C5EB;

CODE_87C5EE:
    JML.L CODE_87C6FE                    ;87C5EE;

CODE_87C5F2:
    REP #$20                             ;87C5F2;
    LDA.B $1A                            ;87C5F4;
    EOR.W #$FFFF                         ;87C5F6;
    INC A                                ;87C5F9;
    STA.B $1A                            ;87C5FA;
    SEP #$20                             ;87C5FC;
    RTS                                  ;87C5FE;

CODE_87C5FF:
    JSL.L CODE_82823E                    ;87C5FF;
    JSL.L CODE_848EEA                    ;87C603;
    RTS                                  ;87C607;

CODE_87C608:
    REP #$21                             ;87C608;
    LDA.B $08                            ;87C60A;
    ADC.W #$0010                         ;87C60C;
    CMP.W $0BB0                          ;87C60F;
    SEP #$20                             ;87C612;
    BCS CODE_87C645                      ;87C614;
    STZ.B $26                            ;87C616;
    LDA.B #$ED                           ;87C618;
    STA.B $20                            ;87C61A;
    LDA.B #$D2                           ;87C61C;
    STA.B $21                            ;87C61E;
    JSL.L CODE_849B03                    ;87C620;
    BEQ CODE_87C639                      ;87C624;
    LDA.W $0C26                          ;87C626;
    LSR A                                ;87C629;
    BCS CODE_87C639                      ;87C62A;
    LDA.B #$01                           ;87C62C;
    TSB.W $0C26                          ;87C62E;
    TSB.B $37                            ;87C631;
    LDA.B #$04                           ;87C633;
    STA.B $02                            ;87C635;
    STZ.B $03                            ;87C637;

CODE_87C639:
    LDA.B #$02                           ;87C639;
    STA.B $26                            ;87C63B;
    LDA.B #$E8                           ;87C63D;
    STA.B $20                            ;87C63F;
    LDA.B #$D2                           ;87C641;
    STA.B $21                            ;87C643;

CODE_87C645:
    RTS                                  ;87C645;

CODE_87C646:
    REP #$10                             ;87C646;
    LDY.W #$0001                         ;87C648;

CODE_87C64B:
    JSL.L CODE_8282D3                    ;87C64B;
    BNE CODE_87C69C                      ;87C64F;
    INC.W $0000,X                        ;87C651;
    LDA.B #$2B                           ;87C654;
    STA.W $000A,X                        ;87C656;
    LDA.B #$BB                           ;87C659;
    STA.W $000B,X                        ;87C65B;
    LDA.B #$30                           ;87C65E;
    CPY.W #$0000                         ;87C660;
    BEQ CODE_87C667                      ;87C663;
    LDA.B #$70                           ;87C665;

CODE_87C667:
    ORA.B $11                            ;87C667;
    STA.W $0011,X                        ;87C669;
    JSR.W CODE_87C69F                    ;87C66C;
    DEY                                  ;87C66F;
    BPL CODE_87C64B                      ;87C670;
    LDY.W #$0005                         ;87C672;

CODE_87C675:
    JSL.L CODE_8282D3                    ;87C675;
    BNE CODE_87C69C                      ;87C679;
    INC.W $0000,X                        ;87C67B;
    LDA.B #$2B                           ;87C67E;
    STA.W $000A,X                        ;87C680;
    LDA.B #$30                           ;87C683;
    STA.W $0011,X                        ;87C685;
    JSL.L CODE_849086                    ;87C688;
    AND.B #$01                           ;87C68C;
    CLC                                  ;87C68E;
    ADC.B #$39                           ;87C68F;
    ORA.B #$80                           ;87C691;
    STA.W $000B,X                        ;87C693;
    JSR.W CODE_87C69F                    ;87C696;
    DEY                                  ;87C699;
    BPL CODE_87C675                      ;87C69A;

CODE_87C69C:
    SEP #$10                             ;87C69C;
    RTS                                  ;87C69E;

CODE_87C69F:
    REP #$20                             ;87C69F;
    LDA.B $05                            ;87C6A1;
    STA.W $0005,X                        ;87C6A3;
    LDA.B $08                            ;87C6A6;
    STA.W $0008,X                        ;87C6A8;
    STZ.W $000C,X                        ;87C6AB;
    SEP #$20                             ;87C6AE;
    RTS                                  ;87C6B0;

CODE_87C6B1:
    LDA.W $0BCF                          ;87C6B1;
    AND.B #$7F                           ;87C6B4;
    BEQ CODE_87C6DC                      ;87C6B6;
    REP #$21                             ;87C6B8;
    LDA.B $08                            ;87C6BA;
    ADC.W #$0010                         ;87C6BC;
    STA.W $0BB0                          ;87C6BF;
    LDA.W #$0006                         ;87C6C2;
    BIT.W $0BB8                          ;87C6C5;
    BVC CODE_87C6CD                      ;87C6C8;
    LDA.W #$FFFA                         ;87C6CA;

CODE_87C6CD:
    CLC                                  ;87C6CD;
    ADC.B $05                            ;87C6CE;
    STA.W $0BAD                          ;87C6D0;
    SEP #$20                             ;87C6D3;
    LDA.B $0F                            ;87C6D5;
    AND.B #$01                           ;87C6D7;
    STA.W $0BC1                          ;87C6D9;

CODE_87C6DC:
    RTS                                  ;87C6DC;

CODE_87C6DD:
    REP #$20                             ;87C6DD;
    LDA.B $05                            ;87C6DF;
    SEC                                  ;87C6E1;
    SBC.B $37                            ;87C6E2;
    BPL CODE_87C6EA                      ;87C6E4;
    EOR.W #$FFFF                         ;87C6E6;
    INC A                                ;87C6E9;

CODE_87C6EA:
    CMP.W #$0040                         ;87C6EA;
    BCC CODE_87C6FB                      ;87C6ED;
    LDA.B $1A                            ;87C6EF;
    EOR.W #$FFFF                         ;87C6F1;
    INC A                                ;87C6F4;
    STA.B $1A                            ;87C6F5;
    JSL.L CODE_82823E                    ;87C6F7;

CODE_87C6FB:
    SEP #$20                             ;87C6FB;
    RTS                                  ;87C6FD;

CODE_87C6FE:
    LDA.B $0B                            ;87C6FE;
    BPL CODE_87C706                      ;87C700;
    JML.L CODE_828398                    ;87C702;

CODE_87C706:
    JML.L CODE_828387                    ;87C706;

CODE_87C70A:
    LDX.B $01                            ;87C70A;
    BNE CODE_87C747                      ;87C70C;
    JSL.L CODE_82827D                    ;87C70E;
    LDA.W $0BB9                          ;87C712;
    AND.B #$30                           ;87C715;
    STA.W $0000                          ;87C717;
    LDA.B $11                            ;87C71A;
    AND.B #$01                           ;87C71C;
    ORA.W $0000                          ;87C71E;
    ORA.B #$04                           ;87C721;
    STA.B $11                            ;87C723;
    STZ.B $12                            ;87C725;
    LDA.B #$03                           ;87C727;
    STA.B $26                            ;87C729;
    STA.B $27                            ;87C72B;
    LDA.B #$00                           ;87C72D;
    JSL.L CODE_848F07                    ;87C72F;
    JSL.L CODE_82806E                    ;87C733;
    BCS CODE_87C73F                      ;87C737;
    LDA.B #$23                           ;87C739;
    JSL.L CODE_8088A2                    ;87C73B;

CODE_87C73F:
    REP #$20                             ;87C73F;
    LDA.W #$D2F5                         ;87C741;
    STA.B $20                            ;87C744;
    RTL                                  ;87C746;

CODE_87C747:
    LDA.B $0F                            ;87C747;
    BPL CODE_87C74F                      ;87C749;
    JML.L CODE_828398                    ;87C74B;

CODE_87C74F:
    LSR A                                ;87C74F;
    BCC CODE_87C756                      ;87C750;
    JSL.L CODE_849B03                    ;87C752;

CODE_87C756:
    JSL.L CODE_848EEA                    ;87C756;
    JML.L CODE_8280B4                    ;87C75A;

CODE_87C75E:
    LDX.B $01                            ;87C75E;
    JMP.W (PTR16_87C763,X)               ;87C760;

PTR16_87C763:
    dw CODE_87C769                       ;87C763;
    dw CODE_87C78B                       ;87C765;
    dw CODE_87C8DD                       ;87C767;

CODE_87C769:
    JSL.L CODE_82827D                    ;87C769;
    LDA.B #$06                           ;87C76D;
    STA.B $12                            ;87C76F;
    LDA.B #$03                           ;87C771;
    STA.B $26                            ;87C773;
    STA.B $27                            ;87C775;
    STZ.B $28                            ;87C777;
    LDA.B $0B                            ;87C779;
    CMP.B #$03                           ;87C77B;
    BCC CODE_87C783                      ;87C77D;
    LDA.B #$02                           ;87C77F;
    STA.B $02                            ;87C781;

CODE_87C783:
    REP #$20                             ;87C783;
    LDA.W #$D2F9                         ;87C785;
    STA.B $20                            ;87C788;
    RTL                                  ;87C78A;

CODE_87C78B:
    JSR.W CODE_87C94C                    ;87C78B;
    LDX.B $02                            ;87C78E;
    JSR.W (PTR16_87C79F,X)               ;87C790;
    JSL.L CODE_849B43                    ;87C793;
    JSL.L CODE_849B03                    ;87C797;
    JML.L CODE_8280B4                    ;87C79B;

PTR16_87C79F:
    dw CODE_87C7A9                       ;87C79F;
    dw CODE_87C817                       ;87C7A1;
    dw CODE_87C856                       ;87C7A3;
    dw CODE_87C888                       ;87C7A5;
    dw CODE_87C8B6                       ;87C7A7;

CODE_87C7A9:
    LDX.B $03                            ;87C7A9;
    BNE CODE_87C7E1                      ;87C7AB;
    INC.B $03                            ;87C7AD;
    REP #$20                             ;87C7AF;
    JSL.L CODE_849086                    ;87C7B1;
    AND.W #$00FF                         ;87C7B5;
    STA.W $0000                          ;87C7B8;
    LDA.B $0B                            ;87C7BB;
    AND.W #$00FF                         ;87C7BD;
    ASL A                                ;87C7C0;
    TAX                                  ;87C7C1;
    LDA.W DATA8_86D305,X                 ;87C7C2;
    CLC                                  ;87C7C5;
    ADC.W $0000                          ;87C7C6;
    STA.B $1A                            ;87C7C9;
    LDA.W #$0700                         ;87C7CB;
    STA.B $1C                            ;87C7CE;
    LDA.W #$0040                         ;87C7D0;
    STA.B $1E                            ;87C7D3;
    SEP #$20                             ;87C7D5;
    LDA.B #$05                           ;87C7D7;
    STA.B $33                            ;87C7D9;
    LDA.B #$01                           ;87C7DB;
    JSL.L CODE_848F07                    ;87C7DD;

CODE_87C7E1:
    LDA.B $33                            ;87C7E1;
    BEQ CODE_87C7F0                      ;87C7E3;
    DEC.B $33                            ;87C7E5;
    BNE CODE_87C7F0                      ;87C7E7;
    JSR.W CODE_87C8EF                    ;87C7E9;
    LDA.B #$30                           ;87C7EC;
    TSB.B $11                            ;87C7EE;

CODE_87C7F0:
    REP #$20                             ;87C7F0;
    LDA.B $08                            ;87C7F2;
    CMP.W #$01A0                         ;87C7F4;
    SEP #$20                             ;87C7F7;
    BCC CODE_87C80E                      ;87C7F9;
    JSR.W CODE_87C91F                    ;87C7FB;
    LDX.B #$02                           ;87C7FE;
    JSL.L CODE_849086                    ;87C800;
    AND.B #$03                           ;87C804;
    BNE CODE_87C80A                      ;87C806;
    LDX.B #$08                           ;87C808;

CODE_87C80A:
    STX.B $02                            ;87C80A;
    STZ.B $03                            ;87C80C;

CODE_87C80E:
    JSL.L CODE_828174                    ;87C80E;
    JSL.L CODE_848EEA                    ;87C812;
    RTS                                  ;87C816;

CODE_87C817:
    LDX.B $03                            ;87C817;
    BNE CODE_87C843                      ;87C819;
    INC.B $03                            ;87C81B;
    JSL.L CODE_849086                    ;87C81D;
    AND.B #$03                           ;87C821;
    TAX                                  ;87C823;
    LDA.W DATA8_86D301,X                 ;87C824;
    STA.B $33                            ;87C827;
    LDA.B #$30                           ;87C829;
    TSB.B $11                            ;87C82B;
    REP #$20                             ;87C82D;
    JSL.L CODE_849086                    ;87C82F;
    AND.W #$01FF                         ;87C833;
    STA.B $34                            ;87C836;
    SEP #$20                             ;87C838;
    LDA.B #$01                           ;87C83A;
    JSL.L CODE_848F07                    ;87C83C;
    JMP.W CODE_87C8E6                    ;87C840;

CODE_87C843:
    DEC.B $33                            ;87C843;
    BNE CODE_87C84D                      ;87C845;
    LDA.B #$04                           ;87C847;
    STA.B $02                            ;87C849;
    STZ.B $03                            ;87C84B;

CODE_87C84D:
    JSL.L CODE_82825D                    ;87C84D;
    JSL.L CODE_848EEA                    ;87C851;
    RTS                                  ;87C855;

CODE_87C856:
    LDX.B $03                            ;87C856;
    BNE CODE_87C870                      ;87C858;
    INC.B $03                            ;87C85A;
    JSL.L CODE_849086                    ;87C85C;
    AND.B #$1F                           ;87C860;
    CLC                                  ;87C862;
    ADC.B #$30                           ;87C863;
    STA.B $33                            ;87C865;
    LDA.B #$01                           ;87C867;
    JSL.L CODE_848F07                    ;87C869;
    JMP.W CODE_87C8E6                    ;87C86D;

CODE_87C870:
    DEC.B $33                            ;87C870;
    BNE CODE_87C87A                      ;87C872;
    LDA.B #$06                           ;87C874;
    STA.B $02                            ;87C876;
    STZ.B $03                            ;87C878;

CODE_87C87A:
    JSL.L CODE_82825D                    ;87C87A;
    JSL.L CODE_848EEA                    ;87C87E;
    JSR.W CODE_87C982                    ;87C882;
    JMP.W CODE_87C977                    ;87C885;

CODE_87C888:
    LDX.B $03                            ;87C888;
    BNE CODE_87C8A1                      ;87C88A;
    INC.B $03                            ;87C88C;
    LDA.B #$1E                           ;87C88E;
    STA.B $33                            ;87C890;
    LDA.B #$00                           ;87C892;
    STA.B $1C                            ;87C894;
    LDA.B #$01                           ;87C896;
    STA.B $1D                            ;87C898;
    LDA.B #$00                           ;87C89A;
    JSL.L CODE_848F07                    ;87C89C;
    RTS                                  ;87C8A0;

CODE_87C8A1:
    DEC.B $33                            ;87C8A1;
    BNE CODE_87C8AB                      ;87C8A3;
    LDA.B #$04                           ;87C8A5;
    STA.B $02                            ;87C8A7;
    STZ.B $03                            ;87C8A9;

CODE_87C8AB:
    JSL.L CODE_82825D                    ;87C8AB;
    JSL.L CODE_848EEA                    ;87C8AF;
    JMP.W CODE_87C977                    ;87C8B3;

CODE_87C8B6:
    LDX.B $03                            ;87C8B6;
    BNE CODE_87C8C1                      ;87C8B8;
    INC.B $03                            ;87C8BA;
    LDA.B #$01                           ;87C8BC;
    STA.B $33                            ;87C8BE;
    RTS                                  ;87C8C0;

CODE_87C8C1:
    LDA.L $7F8379                        ;87C8C1;
    STA.B $11                            ;87C8C5;
    LDA.B $33                            ;87C8C7;
    LSR A                                ;87C8C9;
    BCC CODE_87C8D0                      ;87C8CA;
    LDA.B #$0E                           ;87C8CC;
    TRB.B $11                            ;87C8CE;

CODE_87C8D0:
    DEC.B $33                            ;87C8D0;
    BNE CODE_87C8DC                      ;87C8D2;
    LDA.B #$04                           ;87C8D4;
    STA.B $01                            ;87C8D6;
    JSL.L CODE_84A445                    ;87C8D8;

CODE_87C8DC:
    RTS                                  ;87C8DC;

CODE_87C8DD:
    LDX.B $0B                            ;87C8DD;
    STZ.W $1F3F,X                        ;87C8DF;
    JML.L CODE_828398                    ;87C8E2;

CODE_87C8E6:
    LDA.B #$00                           ;87C8E6;
    STA.B $1C                            ;87C8E8;
    LDA.B #$FF                           ;87C8EA;
    STA.B $1D                            ;87C8EC;
    RTS                                  ;87C8EE;

CODE_87C8EF:
    JSL.L CODE_8282D3                    ;87C8EF;
    BNE CODE_87C91C                      ;87C8F3;
    INC.W $0000,X                        ;87C8F5;
    LDA.B #$10                           ;87C8F8;
    STA.W $000A,X                        ;87C8FA;
    LDA.B #$1A                           ;87C8FD;
    STA.W $000B,X                        ;87C8FF;
    LDA.B #$30                           ;87C902;
    STA.W $0011,X                        ;87C904;
    REP #$20                             ;87C907;
    LDA.B $0B                            ;87C909;
    AND.W #$00FF                         ;87C90B;
    ASL A                                ;87C90E;
    TAY                                  ;87C90F;
    LDA.W DATA8_86D30B,Y                 ;87C910;
    STA.W $0005,X                        ;87C913;
    LDA.W #$0178                         ;87C916;
    STA.W $0008,X                        ;87C919;

CODE_87C91C:
    SEP #$30                             ;87C91C;
    RTS                                  ;87C91E;

CODE_87C91F:
    JSL.L CODE_82806E                    ;87C91F;
    BCS CODE_87C94B                      ;87C923;
    JSL.L CODE_8282D3                    ;87C925;
    BNE CODE_87C949                      ;87C929;
    INC.W $0000,X                        ;87C92B;
    LDA.B #$0C                           ;87C92E;
    STA.W $000A,X                        ;87C930;
    STZ.W $000B,X                        ;87C933;
    LDA.B #$2E                           ;87C936;
    JSL.L CODE_8088A2                    ;87C938;
    REP #$20                             ;87C93C;
    LDA.B $05                            ;87C93E;
    STA.W $0005,X                        ;87C940;
    LDA.W #$01A0                         ;87C943;
    STA.W $0008,X                        ;87C946;

CODE_87C949:
    SEP #$30                             ;87C949;

CODE_87C94B:
    RTS                                  ;87C94B;

CODE_87C94C:
    LDA.B $02                            ;87C94C;
    BEQ CODE_87C976                      ;87C94E;
    CMP.B #$08                           ;87C950;
    BEQ CODE_87C976                      ;87C952;
    LDA.B #$FD                           ;87C954;
    STA.B $20                            ;87C956;
    LDA.B #$D2                           ;87C958;
    STA.B $21                            ;87C95A;
    STZ.B $26                            ;87C95C;
    JSL.L CODE_849B03                    ;87C95E;
    BEQ CODE_87C96A                      ;87C962;
    LDA.B #$08                           ;87C964;
    STA.B $02                            ;87C966;
    STZ.B $03                            ;87C968;

CODE_87C96A:
    LDA.B #$F9                           ;87C96A;
    STA.B $20                            ;87C96C;
    LDA.B #$D2                           ;87C96E;
    STA.B $21                            ;87C970;
    LDA.B #$03                           ;87C972;
    STA.B $26                            ;87C974;

CODE_87C976:
    RTS                                  ;87C976;

CODE_87C977:
    DEC.B $34                            ;87C977;
    BNE CODE_87C981                      ;87C979;
    LDA.B #$08                           ;87C97B;
    STA.B $02                            ;87C97D;
    STZ.B $03                            ;87C97F;

CODE_87C981:
    RTS                                  ;87C981;

CODE_87C982:
    REP #$20                             ;87C982;
    LDA.B $08                            ;87C984;
    CMP.W #$02B0                         ;87C986;
    SEP #$20                             ;87C989;
    BCC CODE_87C993                      ;87C98B;
    LDA.B #$08                           ;87C98D;
    STA.B $02                            ;87C98F;
    STZ.B $03                            ;87C991;

CODE_87C993:
    RTS                                  ;87C993;

CODE_87C994:
    LDX.B $01                            ;87C994;
    JSR.W (PTR16_87C9AC,X)               ;87C996;
    JSL.L CODE_849B03                    ;87C999;
    JSL.L CODE_8280B4                    ;87C99D;
    JSL.L CODE_82806E                    ;87C9A1;
    BCC CODE_87C9AB                      ;87C9A5;
    JSL.L CODE_828387                    ;87C9A7;

CODE_87C9AB:
    RTL                                  ;87C9AB;

PTR16_87C9AC:
    dw CODE_87C9B4                       ;87C9AC;
    dw CODE_87C9DA                       ;87C9AE;
    dw CODE_87C9F4                       ;87C9B0;
    dw CODE_87CA2F                       ;87C9B2;

CODE_87C9B4:
    JSL.L CODE_82827D                    ;87C9B4;
    LDA.B #$01                           ;87C9B8;
    STA.B $27                            ;87C9BA;
    LDA.B #$02                           ;87C9BC;
    STA.B $26                            ;87C9BE;
    LDA.B #$04                           ;87C9C0;
    STA.B $12                            ;87C9C2;
    LDA.B #$01                           ;87C9C4;
    STA.B $30                            ;87C9C6;
    STZ.B $35                            ;87C9C8;
    REP #$20                             ;87C9CA;
    LDA.W #$D311                         ;87C9CC;
    STA.B $20                            ;87C9CF;
    SEP #$20                             ;87C9D1;
    LDA.B #$00                           ;87C9D3;
    JSL.L CODE_848F07                    ;87C9D5;
    RTS                                  ;87C9D9;

CODE_87C9DA:
    LDA.B $0F                            ;87C9DA;
    BPL CODE_87C9EF                      ;87C9DC;
    LDA.B #$04                           ;87C9DE;
    STA.B $01                            ;87C9E0;
    LDA.B #$01                           ;87C9E2;
    JSL.L CODE_848F07                    ;87C9E4;
    LDA.B #$15                           ;87C9E8;
    STA.B $33                            ;87C9EA;
    JMP.W CODE_87C9F3                    ;87C9EC;

CODE_87C9EF:
    JSL.L CODE_848EEA                    ;87C9EF;

CODE_87C9F3:
    RTS                                  ;87C9F3;

CODE_87C9F4:
    DEC.B $33                            ;87C9F4;
    BNE CODE_87CA2A                      ;87C9F6;
    JSR.W CODE_87CA3F                    ;87C9F8;
    LDA.B #$06                           ;87C9FB;
    STA.B $01                            ;87C9FD;
    LDA.B #$00                           ;87C9FF;
    JSL.L CODE_848F07                    ;87CA01;
    JSL.L CODE_849086                    ;87CA05;
    AND.B #$03                           ;87CA09;
    BEQ CODE_87CA15                      ;87CA0B;
    CMP.B #$01                           ;87CA0D;
    BEQ CODE_87CA1C                      ;87CA0F;
    CMP.B #$02                           ;87CA11;
    BEQ CODE_87CA23                      ;87CA13;

CODE_87CA15:
    LDA.B #$50                           ;87CA15;
    STA.B $33                            ;87CA17;
    JMP.W CODE_87CA27                    ;87CA19;

CODE_87CA1C:
    LDA.B #$3C                           ;87CA1C;
    STA.B $33                            ;87CA1E;
    JMP.W CODE_87CA27                    ;87CA20;

CODE_87CA23:
    LDA.B #$28                           ;87CA23;
    STA.B $33                            ;87CA25;

CODE_87CA27:
    JMP.W CODE_87CA2E                    ;87CA27;

CODE_87CA2A:
    JSL.L CODE_848EEA                    ;87CA2A;

CODE_87CA2E:
    RTS                                  ;87CA2E;

CODE_87CA2F:
    DEC.B $33                            ;87CA2F;
    BNE CODE_87CA3A                      ;87CA31;
    LDA.B #$02                           ;87CA33;
    STA.B $01                            ;87CA35;
    JMP.W CODE_87CA3E                    ;87CA37;

CODE_87CA3A:
    JSL.L CODE_848EEA                    ;87CA3A;

CODE_87CA3E:
    RTS                                  ;87CA3E;

CODE_87CA3F:
    REP #$10                             ;87CA3F;
    JSL.L CODE_828358                    ;87CA41;
    BNE CODE_87CA78                      ;87CA45;
    INC.W $0000,X                        ;87CA47;
    LDA.B #$1F                           ;87CA4A;
    STA.W $000A,X                        ;87CA4C;
    LDA.B $18                            ;87CA4F;
    STA.W $0018,X                        ;87CA51;
    LDA.B $11                            ;87CA54;
    STA.W $0011,X                        ;87CA56;
    LDA.B $16                            ;87CA59;
    STA.W $0016,X                        ;87CA5B;
    LDA.B #$40                           ;87CA5E;
    STA.W $001E,X                        ;87CA60;
    STZ.W $001F,X                        ;87CA63;
    REP #$20                             ;87CA66;
    LDA.B $05                            ;87CA68;
    STA.W $0005,X                        ;87CA6A;
    LDA.B $08                            ;87CA6D;
    STA.W $0008,X                        ;87CA6F;
    STZ.W $001A,X                        ;87CA72;
    STZ.W $001C,X                        ;87CA75;

CODE_87CA78:
    SEP #$30                             ;87CA78;
    RTS                                  ;87CA7A;

CODE_87CA7B:
    LDX.B $01                            ;87CA7B;
    JMP.W (PTR16_87CA80,X)               ;87CA7D;

PTR16_87CA80:
    dw CODE_87CA86                       ;87CA80;
    dw CODE_87CB16                       ;87CA82;
    dw CODE_87CE4F                       ;87CA84;

CODE_87CA86:
    LDX.W $1F7A                          ;87CA86;
    CPX.B #$03                           ;87CA89;
    BNE CODE_87CAB9                      ;87CA8B;
    LDA.W $1F7E                          ;87CA8D;
    BMI CODE_87CAC4                      ;87CA90;
    INC A                                ;87CA92;
    STA.W $1F7E                          ;87CA93;
    CMP.B #$05                           ;87CA96;
    BCC CODE_87CAC4                      ;87CA98;
    LDA.B #$05                           ;87CA9A;
    STA.W $1F7E                          ;87CA9C;
    LDA.W $1F99                          ;87CA9F;
    AND.W $1F9C                          ;87CAA2;
    CMP.B #$FF                           ;87CAA5;
    BNE CODE_87CAC4                      ;87CAA7;
    BIT.W $1F7C                          ;87CAA9;
    BVC CODE_87CAC4                      ;87CAAC;
    LDA.W $0BCF                          ;87CAAE;
    AND.B #$7F                           ;87CAB1;
    CMP.B #$20                           ;87CAB3;
    BNE CODE_87CAC4                      ;87CAB5;
    BRA CODE_87CAC8                      ;87CAB7;

CODE_87CAB9:
    LDY.W DATA8_86D362,X                 ;87CAB9;
    LDA.W DATA8_86D3D5,Y                 ;87CABC;
    AND.W $1F99                          ;87CABF;
    BEQ CODE_87CAC8                      ;87CAC2;

CODE_87CAC4:
    JML.L CODE_828398                    ;87CAC4;

CODE_87CAC8:
    JSL.L CODE_82827D                    ;87CAC8;
    STZ.B $18                            ;87CACC;
    STZ.B $26                            ;87CACE;
    LDA.B #$02                           ;87CAD0;
    STA.B $12                            ;87CAD2;
    STA.B $30                            ;87CAD4;
    LDA.B #$01                           ;87CAD6;
    STA.B $27                            ;87CAD8;
    STZ.B $0F                            ;87CADA;
    LDA.B #$25                           ;87CADC;
    STA.B $10                            ;87CADE;
    LDA.B #$02                           ;87CAE0;
    STA.B $02                            ;87CAE2;
    REP #$20                             ;87CAE4;
    LDA.W $1F7A                          ;87CAE6;
    AND.W #$00FF                         ;87CAE9;
    ASL A                                ;87CAEC;
    ASL A                                ;87CAED;
    TAX                                  ;87CAEE;
    LDA.W DATA8_86D33E,X                 ;87CAEF;
    STA.B $05                            ;87CAF2;
    LDA.W DATA8_86D340,X                 ;87CAF4;
    STA.B $08                            ;87CAF7;
    LDA.W #$D316                         ;87CAF9;
    STA.B $20                            ;87CAFC;
    LDA.W #$B2E0                         ;87CAFE;
    STA.B $31                            ;87CB01;
    SEP #$20                             ;87CB03;
    LDA.W $1F7A                          ;87CB05;
    CMP.B #$02                           ;87CB08;
    BEQ CODE_87CB10                      ;87CB0A;
    CMP.B #$05                           ;87CB0C;
    BNE CODE_87CB15                      ;87CB0E;

CODE_87CB10:
    STZ.B $02                            ;87CB10;
    JSR.W CODE_87CF38                    ;87CB12;

CODE_87CB15:
    RTL                                  ;87CB15;

CODE_87CB16:
    JSL.L CODE_82806E                    ;87CB16;
    BCC CODE_87CB20                      ;87CB1A;
    JML.L CODE_828387                    ;87CB1C;

CODE_87CB20:
    LDA.B #$80                           ;87CB20;
    TSB.B $2C                            ;87CB22;
    REP #$21                             ;87CB24;
    LDA.B $0F                            ;87CB26;
    AND.W #$000F                         ;87CB28;
    ADC.W #$D316                         ;87CB2B;
    STA.B $20                            ;87CB2E;
    JSL.L CODE_82D7D0                    ;87CB30;
    JSR.W CODE_87CFE1                    ;87CB34;
    JSL.L CODE_849A02                    ;87CB37;
    LDA.B $0F                            ;87CB3B;
    AND.W #$000F                         ;87CB3D;
    CLC                                  ;87CB40;
    ADC.W #$D31A                         ;87CB41;
    STA.B $20                            ;87CB44;
    JSL.L CODE_82D7D0                    ;87CB46;
    JSR.W CODE_87CFE1                    ;87CB4A;
    JSL.L CODE_849A02                    ;87CB4D;
    SEP #$20                             ;87CB51;
    LDX.B $02                            ;87CB53;
    JSR.W (PTR16_87CB60,X)               ;87CB55;
    JSL.L CODE_848FCA                    ;87CB58;
    JML.L CODE_82808F                    ;87CB5C;

PTR16_87CB60:
    dw CODE_87CB6A                       ;87CB60;
    dw CODE_87CBBB                       ;87CB62;
    dw CODE_87CC2A                       ;87CB64;
    dw CODE_87CC84                       ;87CB66;
    dw CODE_87CCB2                       ;87CB68;

CODE_87CB6A:
    LDX.B $03                            ;87CB6A;
    BNE CODE_87CB97                      ;87CB6C;
    INC.B $03                            ;87CB6E;
    REP #$20                             ;87CB70;
    LDA.W #$0200                         ;87CB72;
    STA.B $1C                            ;87CB75;
    LDA.W #$2C00                         ;87CB77;
    STA.B $29                            ;87CB7A;
    SEP #$20                             ;87CB7C;
    LDA.W $1F7A                          ;87CB7E;
    CMP.B #$02                           ;87CB81;
    BNE CODE_87CB8B                      ;87CB83;
    LDA.B #$20                           ;87CB85;
    JSL.L CODE_8088A2                    ;87CB87;

CODE_87CB8B:
    LDA.B #$40                           ;87CB8B;
    JSL.L CODE_84A311                    ;87CB8D;
    LDA.B #$00                           ;87CB91;
    JSL.L CODE_848F07                    ;87CB93;

CODE_87CB97:
    LDA.W $1F7A                          ;87CB97;
    CMP.B #$05                           ;87CB9A;
    BEQ CODE_87CBA4                      ;87CB9C;
    JSR.W CODE_87CF5D                    ;87CB9E;
    JSR.W CODE_87CF90                    ;87CBA1;

CODE_87CBA4:
    JSL.L CODE_8490A0                    ;87CBA4;
    CMP.B #$34                           ;87CBA8;
    BCS CODE_87CBB2                      ;87CBAA;
    LDA.B #$02                           ;87CBAC;
    STA.B $02                            ;87CBAE;
    STZ.B $03                            ;87CBB0;

CODE_87CBB2:
    JSL.L CODE_82825D                    ;87CBB2;
    JSL.L CODE_848EEA                    ;87CBB6;
    RTS                                  ;87CBBA;

CODE_87CBBB:
    LDX.B $03                            ;87CBBB;
    BNE CODE_87CBC7                      ;87CBBD;
    INC.B $03                            ;87CBBF;
    LDA.B #$00                           ;87CBC1;
    JSL.L CODE_848F07                    ;87CBC3;

CODE_87CBC7:
    LDA.B #$36                           ;87CBC7;
    STA.B $20                            ;87CBC9;
    LDA.B #$D3                           ;87CBCB;
    STA.B $21                            ;87CBCD;
    JSL.L CODE_849B03                    ;87CBCF;
    BEQ CODE_87CC25                      ;87CBD3;
    LDA.B #$F1                           ;87CBD5;
    JSL.L CODE_80887F                    ;87CBD7;
    LDA.B #$04                           ;87CBDB;
    STA.B $02                            ;87CBDD;
    STZ.B $03                            ;87CBDF;
    STA.W $1F49                          ;87CBE1;
    JSL.L CODE_849FE6                    ;87CBE4;
    REP #$20                             ;87CBE8;
    LDA.W $1E56                          ;87CBEA;
    STA.L $7FF000                        ;87CBED;
    LDA.W $1E58                          ;87CBF1;
    STA.L $7FF002                        ;87CBF4;
    LDA.W $1E5A                          ;87CBF8;
    STA.L $7FF004                        ;87CBFB;
    LDA.W $1E5C                          ;87CBFF;
    STA.L $7FF006                        ;87CC02;
    LDA.W $1F7A                          ;87CC06;
    AND.W #$00FF                         ;87CC09;
    ASL A                                ;87CC0C;
    ASL A                                ;87CC0D;
    TAX                                  ;87CC0E;
    LDA.W DATA8_86D3A1,X                 ;87CC0F;
    BEQ CODE_87CC23                      ;87CC12;
    STA.W $1E5E                          ;87CC14;
    STA.W $1E60                          ;87CC17;
    LDA.W DATA8_86D3A3,X                 ;87CC1A;
    STA.W $1E68                          ;87CC1D;
    STA.W $1E6E                          ;87CC20;

CODE_87CC23:
    SEP #$20                             ;87CC23;

CODE_87CC25:
    JSL.L CODE_848EEA                    ;87CC25;
    RTS                                  ;87CC29;

CODE_87CC2A:
    LDX.B $03                            ;87CC2A;
    JMP.W (PTR16_87CC2F,X)               ;87CC2C;

PTR16_87CC2F:
    dw CODE_87CC35                       ;87CC2F;
    dw CODE_87CC62                       ;87CC31;
    dw CODE_87CC72                       ;87CC33;

CODE_87CC35:
    REP #$20                             ;87CC35;
    LDA.W $1F7A                          ;87CC37;
    AND.W #$00FF                         ;87CC3A;
    ASL A                                ;87CC3D;
    ASL A                                ;87CC3E;
    TAX                                  ;87CC3F;
    LDA.W DATA8_86D3A1,X                 ;87CC40;
    BEQ CODE_87CC58                      ;87CC43;
    LDA.W $1E4D                          ;87CC45;
    CMP.W $1E6A                          ;87CC48;
    BNE CODE_87CC55                      ;87CC4B;
    LDA.W $1E50                          ;87CC4D;
    CMP.W $1E6C                          ;87CC50;
    BEQ CODE_87CC58                      ;87CC53;

CODE_87CC55:
    SEP #$20                             ;87CC55;
    RTS                                  ;87CC57;

CODE_87CC58:
    SEP #$20                             ;87CC58;
    LDA.B #$02                           ;87CC5A;
    STA.B $03                            ;87CC5C;
    STZ.W $1F49                          ;87CC5E;
    RTS                                  ;87CC61;

CODE_87CC62:
    LDA.B #$04                           ;87CC62;
    STA.B $03                            ;87CC64;
    LDA.B #$2A                           ;87CC66;
    JSL.L CODE_8088A2                    ;87CC68;
    LDA.B #$01                           ;87CC6C;
    JSL.L CODE_848F07                    ;87CC6E;

CODE_87CC72:
    LDA.B $0F                            ;87CC72;
    BPL CODE_87CC7F                      ;87CC74;
    LDA.B #$06                           ;87CC76;
    STA.B $02                            ;87CC78;
    STZ.B $03                            ;87CC7A;
    JMP.W CODE_87CFEA                    ;87CC7C;

CODE_87CC7F:
    JSL.L CODE_848EEA                    ;87CC7F;
    RTS                                  ;87CC83;

CODE_87CC84:
    LDX.B $03                            ;87CC84;
    BNE CODE_87CC90                      ;87CC86;
    INC.B $03                            ;87CC88;
    LDA.B #$02                           ;87CC8A;
    JSL.L CODE_848F07                    ;87CC8C;

CODE_87CC90:
    LDA.B #$3A                           ;87CC90;
    STA.B $20                            ;87CC92;
    LDA.B #$D3                           ;87CC94;
    STA.B $21                            ;87CC96;
    JSL.L CODE_849B03                    ;87CC98;
    BEQ CODE_87CCAD                      ;87CC9C;
    LDA.B #$08                           ;87CC9E;
    STA.B $02                            ;87CCA0;
    STZ.B $03                            ;87CCA2;
    STA.W $1F49                          ;87CCA4;
    STA.W $0BD8                          ;87CCA7;
    STA.W $1F3B                          ;87CCAA;

CODE_87CCAD:
    JSL.L CODE_848EEA                    ;87CCAD;
    RTS                                  ;87CCB1;

CODE_87CCB2:
    LDX.B $03                            ;87CCB2;
    JMP.W (PTR16_87CCB7,X)               ;87CCB4;

PTR16_87CCB7:
    dw CODE_87CCC9                       ;87CCB7;
    dw CODE_87CD24                       ;87CCB9;
    dw CODE_87CD49                       ;87CCBB;
    dw CODE_87CD6B                       ;87CCBD;
    dw CODE_87CD9B                       ;87CCBF;
    dw CODE_87CDAD                       ;87CCC1;
    dw CODE_87CDBE                       ;87CCC3;
    dw CODE_87CDED                       ;87CCC5;
    dw CODE_87CE40                       ;87CCC7;

CODE_87CCC9:
    LDA.B #$02                           ;87CCC9;
    STA.B $03                            ;87CCCB;
    STZ.W $1F49                          ;87CCCD;
    REP #$20                             ;87CCD0;
    LDA.B $05                            ;87CCD2;
    STA.W $0BAD                          ;87CCD4;
    STZ.W $00A7                          ;87CCD7;
    STZ.W $00A9                          ;87CCDA;
    STZ.W $00AB                          ;87CCDD;
    STZ.W $0BDE                          ;87CCE0;
    STZ.W $0BE0                          ;87CCE3;
    SEP #$20                             ;87CCE6;
    LDA.B #$14                           ;87CCE8;
    STA.B $33                            ;87CCEA;
    STA.W $1F48                          ;87CCEC;
    STA.W $1F31                          ;87CCEF;
    STZ.W $0BDB                          ;87CCF2;
    LDA.B #$04                           ;87CCF5;
    STA.W $1F12                          ;87CCF7;
    LDA.B #$03                           ;87CCFA;
    STA.W $0C0F                          ;87CCFC;
    LDX.B #$30                           ;87CCFF;
    LDY.B #$40                           ;87CD01;
    JSL.L CODE_828000                    ;87CD03;
    REP #$10                             ;87CD07;
    LDY.W #$0100                         ;87CD09;
    JSL.L CODE_828011                    ;87CD0C;
    SEP #$10                             ;87CD10;
    JSL.L CODE_84A2A7                    ;87CD12;
    LDA.B #$4B                           ;87CD16;
    JSL.L CODE_8088A2                    ;87CD18;
    JSL.L CODE_849FE6                    ;87CD1C;
    STZ.W $0C16                          ;87CD20;
    RTS                                  ;87CD23;

CODE_87CD24:
    DEC.B $33                            ;87CD24;
    BNE CODE_87CD48                      ;87CD26;
    LDA.B #$04                           ;87CD28;
    STA.B $03                            ;87CD2A;
    LDA.B #$FF                           ;87CD2C;
    STA.B $33                            ;87CD2E;
    LDA.B #$08                           ;87CD30;
    STA.B $38                            ;87CD32;
    STA.B $37                            ;87CD34;
    LDA.B #$03                           ;87CD36;
    STA.B $3A                            ;87CD38;
    STZ.B $39                            ;87CD3A;
    LDA.B #$08                           ;87CD3C;
    STA.B $36                            ;87CD3E;
    LDA.B #$08                           ;87CD40;
    STA.B $35                            ;87CD42;
    LDA.B #$01                           ;87CD44;
    STA.B $34                            ;87CD46;

CODE_87CD48:
    RTS                                  ;87CD48;

CODE_87CD49:
    LDA.B #$00                           ;87CD49;
    JSR.W CODE_87CE53                    ;87CD4B;
    DEC.B $33                            ;87CD4E;
    BNE CODE_87CD5B                      ;87CD50;
    LDA.B #$06                           ;87CD52;
    STA.B $03                            ;87CD54;
    LDA.B #$80                           ;87CD56;
    STA.B $33                            ;87CD58;
    RTS                                  ;87CD5A;

CODE_87CD5B:
    LDA.B $33                            ;87CD5B;
    CMP.B #$14                           ;87CD5D;
    BNE CODE_87CD66                      ;87CD5F;
    LDA.B #$00                           ;87CD61;
    JSR.W CODE_87CECD                    ;87CD63;

CODE_87CD66:
    LDX.B #$00                           ;87CD66;
    JMP.W CODE_87CEF3                    ;87CD68;

CODE_87CD6B:
    LDA.B #$01                           ;87CD6B;
    JSR.W CODE_87CE53                    ;87CD6D;
    DEC.B $33                            ;87CD70;
    BNE CODE_87CD96                      ;87CD72;
    LDA.B #$08                           ;87CD74;
    STA.B $03                            ;87CD76;
    LDA.B #$1E                           ;87CD78;
    STA.B $33                            ;87CD7A;
    REP #$30                             ;87CD7C;
    LDY.W #$0160                         ;87CD7E;
    JSL.L CODE_828011                    ;87CD81;
    LDA.W $0BDB                          ;87CD85;
    AND.W #$00FF                         ;87CD88;
    ADC.W #$0100                         ;87CD8B;
    TAY                                  ;87CD8E;
    JSL.L CODE_828011                    ;87CD8F;
    SEP #$30                             ;87CD93;
    RTS                                  ;87CD95;

CODE_87CD96:
    LDX.B #$01                           ;87CD96;
    JMP.W CODE_87CEF3                    ;87CD98;

CODE_87CD9B:
    DEC.B $33                            ;87CD9B;
    BNE CODE_87CDAC                      ;87CD9D;
    LDA.B #$0A                           ;87CD9F;
    STA.B $03                            ;87CDA1;
    LDA.B #$1E                           ;87CDA3;
    STA.B $33                            ;87CDA5;
    LDA.B #$01                           ;87CDA7;
    JSR.W CODE_87CECD                    ;87CDA9;

CODE_87CDAC:
    RTS                                  ;87CDAC;

CODE_87CDAD:
    DEC.B $33                            ;87CDAD;
    BNE CODE_87CDBD                      ;87CDAF;
    LDA.B #$0C                           ;87CDB1;
    STA.B $03                            ;87CDB3;
    LDA.B #$3C                           ;87CDB5;
    STA.B $33                            ;87CDB7;
    JSL.L CODE_84A01D                    ;87CDB9;

CODE_87CDBD:
    RTS                                  ;87CDBD;

CODE_87CDBE:
    DEC.B $33                            ;87CDBE;
    BNE CODE_87CDEC                      ;87CDC0;
    STZ.W $0BD8                          ;87CDC2;
    STZ.W $1F3B                          ;87CDC5;
    LDA.B #$0E                           ;87CDC8;
    STA.B $03                            ;87CDCA;
    STZ.B $3B                            ;87CDCC;
    LDA.B #$01                           ;87CDCE;
    STA.B $3C                            ;87CDD0;
    LDX.B #$05                           ;87CDD2;

CODE_87CDD4:
    LDA.L $7EFFC0,X                      ;87CDD4;
    STA.L $7FF008,X                      ;87CDD8;
    DEX                                  ;87CDDC;
    BPL CODE_87CDD4                      ;87CDDD;
    LDX.B #$05                           ;87CDDF;

CODE_87CDE1:
    LDA.L DATA8_86EE20,X                 ;87CDE1;
    STA.L $7EFFC0,X                      ;87CDE5;
    DEX                                  ;87CDE9;
    BPL CODE_87CDE1                      ;87CDEA;

CODE_87CDEC:
    RTS                                  ;87CDEC;

CODE_87CDED:
    DEC.B $3C                            ;87CDED;
    BNE CODE_87CE2B                      ;87CDEF;
    LDX.W $1F7A                          ;87CDF1;
    LDA.W DATA8_86D36B,X                 ;87CDF4;
    CLC                                  ;87CDF7;
    ADC.B $3B                            ;87CDF8;
    TAX                                  ;87CDFA;
    LDA.W DATA8_86D36B,X                 ;87CDFB;
    CMP.B #$FF                           ;87CDFE;
    BNE CODE_87CE20                      ;87CE00;
    LDA.B #$10                           ;87CE02;
    STA.B $03                            ;87CE04;
    STZ.W $1F48                          ;87CE06;
    STZ.W $1F31                          ;87CE09;
    STZ.W $0BD8                          ;87CE0C;
    STZ.W $1F3B                          ;87CE0F;
    LDX.B #$05                           ;87CE12;

CODE_87CE14:
    LDA.L $7FF008,X                      ;87CE14;
    STA.L $7EFFC0,X                      ;87CE18;
    DEX                                  ;87CE1C;
    BPL CODE_87CE14                      ;87CE1D;
    RTS                                  ;87CE1F;

CODE_87CE20:
    STA.B $3C                            ;87CE20;
    LDA.W DATA8_86D36C,X                 ;87CE22;
    STA.B $3D                            ;87CE25;
    INC.B $3B                            ;87CE27;
    INC.B $3B                            ;87CE29;

CODE_87CE2B:
    LDA.W $00A8                          ;87CE2B;
    STA.W $00AA                          ;87CE2E;
    LDA.B $3D                            ;87CE31;
    STA.W $00A8                          ;87CE33;
    EOR.W $00AA                          ;87CE36;
    AND.W $00A8                          ;87CE39;
    STA.W $00AC                          ;87CE3C;
    RTS                                  ;87CE3F;

CODE_87CE40:
    JSL.L CODE_82806E                    ;87CE40;
    BCC CODE_87CE4A                      ;87CE44;
    LDA.B #$04                           ;87CE46;
    STA.B $01                            ;87CE48;

CODE_87CE4A:
    JSL.L CODE_848EEA                    ;87CE4A;
    RTS                                  ;87CE4E;

CODE_87CE4F:
    JML.L CODE_828398                    ;87CE4F;

CODE_87CE53:
    STA.W $0000                          ;87CE53;
    DEC.B $35                            ;87CE56;
    BNE CODE_87CEB2                      ;87CE58;
    LDA.B #$09                           ;87CE5A;
    SEC                                  ;87CE5C;
    SBC.B $34                            ;87CE5D;
    STA.B $35                            ;87CE5F;
    DEC.B $36                            ;87CE61;
    BNE CODE_87CE72                      ;87CE63;
    LDA.W $0000                          ;87CE65;
    BNE CODE_87CE6F                      ;87CE68;
    JSR.W CODE_87CEB3                    ;87CE6A;
    BRA CODE_87CE72                      ;87CE6D;

CODE_87CE6F:
    JSR.W CODE_87CEC0                    ;87CE6F;

CODE_87CE72:
    REP #$10                             ;87CE72;
    LDY.W #$0003                         ;87CE74;

CODE_87CE77:
    JSL.L CODE_8282D3                    ;87CE77;
    BNE CODE_87CEB0                      ;87CE7B;
    INC.W $0000,X                        ;87CE7D;
    LDA.B #$37                           ;87CE80;
    STA.W $000A,X                        ;87CE82;
    LDA.B $34                            ;87CE85;
    STA.W $000B,X                        ;87CE87;
    REP #$21                             ;87CE8A;
    LDA.B $08                            ;87CE8C;
    ADC.W #$FFE8                         ;87CE8E;
    STA.W $0008,X                        ;87CE91;
    JSL.L CODE_849086                    ;87CE94;
    AND.W #$001F                         ;87CE98;
    STA.W $0000                          ;87CE9B;
    LDA.B $05                            ;87CE9E;
    CLC                                  ;87CEA0;
    ADC.W #$FFF0                         ;87CEA1;
    CLC                                  ;87CEA4;
    ADC.W $0000                          ;87CEA5;
    STA.W $0005,X                        ;87CEA8;
    SEP #$20                             ;87CEAB;
    DEY                                  ;87CEAD;
    BPL CODE_87CE77                      ;87CEAE;

CODE_87CEB0:
    SEP #$10                             ;87CEB0;

CODE_87CEB2:
    RTS                                  ;87CEB2;

CODE_87CEB3:
    LDA.B $34                            ;87CEB3;
    CMP.B #$07                           ;87CEB5;
    BEQ CODE_87CEBB                      ;87CEB7;
    INC.B $34                            ;87CEB9;

CODE_87CEBB:
    LDA.B #$03                           ;87CEBB;
    STA.B $36                            ;87CEBD;
    RTS                                  ;87CEBF;

CODE_87CEC0:
    LDA.B $34                            ;87CEC0;
    CMP.B #$01                           ;87CEC2;
    BEQ CODE_87CEC8                      ;87CEC4;
    DEC.B $34                            ;87CEC6;

CODE_87CEC8:
    LDA.B #$01                           ;87CEC8;
    STA.B $36                            ;87CECA;
    RTS                                  ;87CECC;

CODE_87CECD:
    STA.W $0000                          ;87CECD;
    JSL.L CODE_828321                    ;87CED0;
    BNE CODE_87CEF0                      ;87CED4;
    INC.W $0000,X                        ;87CED6;
    LDA.B #$4E                           ;87CED9;
    STA.W $000A,X                        ;87CEDB;
    LDA.W $0000                          ;87CEDE;
    STA.W $0003,X                        ;87CEE1;
    LDA.W $1F7A                          ;87CEE4;
    AND.B #$FF                           ;87CEE7;
    TAY                                  ;87CEE9;
    LDA.W DATA8_86D362,Y                 ;87CEEA;
    STA.W $000B,X                        ;87CEED;

CODE_87CEF0:
    SEP #$10                             ;87CEF0;
    RTS                                  ;87CEF2;

CODE_87CEF3:
    DEC.B $37                            ;87CEF3;
    BNE CODE_87CF25                      ;87CEF5;
    LDA.B $38                            ;87CEF7;
    STA.B $37                            ;87CEF9;
    DEC.B $3A                            ;87CEFB;
    BNE CODE_87CF0E                      ;87CEFD;
    LDA.B #$03                           ;87CEFF;
    STA.B $3A                            ;87CF01;
    TXA                                  ;87CF03;
    BEQ CODE_87CF0B                      ;87CF04;
    JSR.W CODE_87CF2F                    ;87CF06;
    BRA CODE_87CF0E                      ;87CF09;

CODE_87CF0B:
    JSR.W CODE_87CF26                    ;87CF0B;

CODE_87CF0E:
    LDA.B $39                            ;87CF0E;
    INC A                                ;87CF10;
    AND.B #$03                           ;87CF11;
    STA.B $39                            ;87CF13;
    REP #$31                             ;87CF15;
    AND.W #$00FF                         ;87CF17;
    ASL A                                ;87CF1A;
    ADC.W #$0160                         ;87CF1B;
    TAY                                  ;87CF1E;
    JSL.L CODE_828011                    ;87CF1F;
    SEP #$30                             ;87CF23;

CODE_87CF25:
    RTS                                  ;87CF25;

CODE_87CF26:
    LDA.B $38                            ;87CF26;
    CMP.B #$01                           ;87CF28;
    BEQ CODE_87CF2E                      ;87CF2A;
    DEC.B $38                            ;87CF2C;

CODE_87CF2E:
    RTS                                  ;87CF2E;

CODE_87CF2F:
    LDA.B $38                            ;87CF2F;
    CMP.B #$08                           ;87CF31;
    BEQ CODE_87CF37                      ;87CF33;
    INC.B $38                            ;87CF35;

CODE_87CF37:
    RTS                                  ;87CF37;

CODE_87CF38:
    JSL.L CODE_8282D3                    ;87CF38;
    BNE CODE_87CF5A                      ;87CF3C;
    INC.W $0000,X                        ;87CF3E;
    LDA.B #$10                           ;87CF41;
    STA.W $000A,X                        ;87CF43;
    LDA.B #$1D                           ;87CF46;
    STA.W $000B,X                        ;87CF48;
    STZ.W $0011,X                        ;87CF4B;
    REP #$20                             ;87CF4E;
    LDA.B $05                            ;87CF50;
    STA.W $0005,X                        ;87CF52;
    LDA.B $08                            ;87CF55;
    STA.W $0008,X                        ;87CF57;

CODE_87CF5A:
    SEP #$30                             ;87CF5A;
    RTS                                  ;87CF5C;

CODE_87CF5D:
    LDA.W $0B9C                          ;87CF5D;
    AND.B #$0F                           ;87CF60;
    BNE CODE_87CF8F                      ;87CF62;
    REP #$10                             ;87CF64;
    LDY.W #$0003                         ;87CF66;

CODE_87CF69:
    JSL.L CODE_8282D3                    ;87CF69;
    BNE CODE_87CF8D                      ;87CF6D;
    INC.W $0000,X                        ;87CF6F;
    LDA.B #$2B                           ;87CF72;
    STA.W $000A,X                        ;87CF74;
    TYA                                  ;87CF77;
    CLC                                  ;87CF78;
    ADC.B #$2A                           ;87CF79;
    ORA.B #$80                           ;87CF7B;
    STA.W $000B,X                        ;87CF7D;
    LDA.B #$30                           ;87CF80;
    STA.W $0011,X                        ;87CF82;
    PHY                                  ;87CF85;
    JSR.W CODE_87CFB3                    ;87CF86;
    PLY                                  ;87CF89;
    DEY                                  ;87CF8A;
    BPL CODE_87CF69                      ;87CF8B;

CODE_87CF8D:
    SEP #$10                             ;87CF8D;

CODE_87CF8F:
    RTS                                  ;87CF8F;

CODE_87CF90:
    LDA.W $0B9C                          ;87CF90;
    BIT.B #$03                           ;87CF93;
    BNE CODE_87CFB0                      ;87CF95;
    JSL.L CODE_8282D3                    ;87CF97;
    BNE CODE_87CFB0                      ;87CF9B;
    INC.W $0000,X                        ;87CF9D;
    LDA.B #$31                           ;87CFA0;
    STA.W $000A,X                        ;87CFA2;
    STZ.W $000B,X                        ;87CFA5;
    LDA.B #$30                           ;87CFA8;
    STA.W $0011,X                        ;87CFAA;
    JSR.W CODE_87CFB3                    ;87CFAD;

CODE_87CFB0:
    SEP #$20                             ;87CFB0;
    RTS                                  ;87CFB2;

CODE_87CFB3:
    REP #$21                             ;87CFB3;
    LDA.W $1F7A                          ;87CFB5;
    AND.W #$00FF                         ;87CFB8;
    ASL A                                ;87CFBB;
    ASL A                                ;87CFBC;
    TAY                                  ;87CFBD;
    LDA.W DATA8_86D340,Y                 ;87CFBE;
    ADC.W #$FFD0                         ;87CFC1;
    STA.W $0008,X                        ;87CFC4;
    JSL.L CODE_849086                    ;87CFC7;
    AND.W #$001F                         ;87CFCB;
    STA.W $0000                          ;87CFCE;
    LDA.B $05                            ;87CFD1;
    CLC                                  ;87CFD3;
    ADC.W #$FFF0                         ;87CFD4;
    CLC                                  ;87CFD7;
    ADC.W $0000                          ;87CFD8;
    STA.W $0005,X                        ;87CFDB;
    SEP #$20                             ;87CFDE;
    RTS                                  ;87CFE0;

CODE_87CFE1:
    LDA.B $20                            ;87CFE1;
    CLC                                  ;87CFE3;
    ADC.W #$0010                         ;87CFE4;
    STA.B $20                            ;87CFE7;
    RTS                                  ;87CFE9;

CODE_87CFEA:
    JSL.L CODE_828321                    ;87CFEA;
    BNE CODE_87D00F                      ;87CFEE;
    INC.W $0000,X                        ;87CFF0;
    LDA.B #$5C                           ;87CFF3;
    STA.W $000A,X                        ;87CFF5;
    LDA.B $11                            ;87CFF8;
    STA.W $0011,X                        ;87CFFA;
    STZ.W $000B,X                        ;87CFFD;
    REP #$21                             ;87D000;
    LDA.B $08                            ;87D002;
    ADC.W #$000A                         ;87D004;
    STA.W $0008,X                        ;87D007;
    LDA.B $05                            ;87D00A;
    STA.W $0005,X                        ;87D00C;

CODE_87D00F:
    SEP #$30                             ;87D00F;
    RTS                                  ;87D011;

CODE_87D012:
    LDX.B $01                            ;87D012;
    JMP.W (PTR16_87D017,X)               ;87D014;

PTR16_87D017:
    dw CODE_87D01D                       ;87D017;
    dw CODE_87D065                       ;87D019;
    dw CODE_87D0B9                       ;87D01B;

CODE_87D01D:
    LDA.B #$02                           ;87D01D;
    STA.B $01                            ;87D01F;
    LDA.B #$20                           ;87D021;
    STA.B $18                            ;87D023;
    LDA.B #$02                           ;87D025;
    STA.B $12                            ;87D027;
    STZ.B $26                            ;87D029;
    LDA.B $0B                            ;87D02B;
    ASL A                                ;87D02D;
    TAX                                  ;87D02E;
    LDA.W DATA8_86D3CD,X                 ;87D02F;
    STA.B $16                            ;87D032;
    LDA.B #$7C                           ;87D034;
    STA.B $10                            ;87D036;
    LDA.W DATA8_86D3CE,X                 ;87D038;
    TAX                                  ;87D03B;
    LDA.W $0BB9                          ;87D03C;
    AND.B #$70                           ;87D03F;
    ORA.L $7F8300,X                      ;87D041;
    STA.B $11                            ;87D045;
    STA.B $34                            ;87D047;
    REP #$21                             ;87D049;
    LDA.W $0BB0                          ;87D04B;
    ADC.W #$FFC0                         ;87D04E;
    STA.B $08                            ;87D051;
    LDA.W $0BAD                          ;87D053;
    STA.B $05                            ;87D056;
    LDA.B $0B                            ;87D058;
    AND.W #$00FF                         ;87D05A;
    ASL A                                ;87D05D;
    TAX                                  ;87D05E;
    LDA.W DATA8_86D3C5,X                 ;87D05F;
    STA.B $31                            ;87D062;
    RTL                                  ;87D064;

CODE_87D065:
    LDA.B $34                            ;87D065;
    STA.B $11                            ;87D067;
    JSR.W CODE_87D082                    ;87D069;
    LDA.B $0F                            ;87D06C;
    LSR A                                ;87D06E;
    BCC CODE_87D07A                      ;87D06F;
    LDA.B $0B                            ;87D071;
    ASL A                                ;87D073;
    TAX                                  ;87D074;
    LDA.W DATA8_86D3CE,X                 ;87D075;
    STA.B $10                            ;87D078;

CODE_87D07A:
    JSL.L CODE_848FCA                    ;87D07A;
    JML.L CODE_8280B4                    ;87D07E;

CODE_87D082:
    LDX.B $02                            ;87D082;
    BNE CODE_87D099                      ;87D084;
    INC.B $02                            ;87D086;
    LDA.B $03                            ;87D088;
    BNE CODE_87D092                      ;87D08A;
    LDA.B #$44                           ;87D08C;
    JSL.L CODE_8088A2                    ;87D08E;

CODE_87D092:
    LDA.B $03                            ;87D092;
    JSL.L CODE_848F07                    ;87D094;
    RTS                                  ;87D098;

CODE_87D099:
    JSL.L CODE_848EEA                    ;87D099;
    LDA.B $0F                            ;87D09D;
    BPL CODE_87D0A5                      ;87D09F;
    LDA.B #$04                           ;87D0A1;
    STA.B $01                            ;87D0A3;

CODE_87D0A5:
    BIT.B $0F                            ;87D0A5;
    BVC CODE_87D0B8                      ;87D0A7;
    LDA.B #$0E                           ;87D0A9;
    TRB.B $11                            ;87D0AB;
    LDX.B $0B                            ;87D0AD;
    LDA.W DATA8_86D3D5,X                 ;87D0AF;
    TSB.W $1F99                          ;87D0B2;
    JMP.W CODE_87D0BD                    ;87D0B5;

CODE_87D0B8:
    RTS                                  ;87D0B8;

CODE_87D0B9:
    JML.L CODE_828398                    ;87D0B9;

CODE_87D0BD:
    LDA.B $0B                            ;87D0BD;
    ASL A                                ;87D0BF;
    TAX                                  ;87D0C0;
    JMP.W (PTR16_87D0C4,X)               ;87D0C1;

PTR16_87D0C4:
    dw CODE_87D0CC                       ;87D0C4;
    dw CODE_87D0D2                       ;87D0C6;
    dw CODE_87D0F1                       ;87D0C8;
    dw CODE_87D105                       ;87D0CA;

CODE_87D0CC:
    LDA.B #$18                           ;87D0CC;
    STA.W $0BBE                          ;87D0CE;
    RTS                                  ;87D0D1;

CODE_87D0D2:
    LDA.W $1F7A                          ;87D0D2;
    CMP.B #$03                           ;87D0D5;
    BNE CODE_87D0DF                      ;87D0D7;
    LDA.B #$80                           ;87D0D9;
    TSB.W $1F7E                          ;87D0DB;
    RTS                                  ;87D0DE;

CODE_87D0DF:
    INC.W $0C38                          ;87D0DF;
    STZ.W $0C42                          ;87D0E2;
    STZ.W $0C43                          ;87D0E5;
    STZ.W $0C39                          ;87D0E8;
    LDA.B #$5D                           ;87D0EB;
    STA.W $0C48                          ;87D0ED;
    RTS                                  ;87D0F0;

CODE_87D0F1:
    INC.W $0C58                          ;87D0F1;
    STZ.W $0C62                          ;87D0F4;
    LDA.B #$01                           ;87D0F7;
    STA.W $0C63                          ;87D0F9;
    STZ.W $0C59                          ;87D0FC;
    LDA.B #$5D                           ;87D0FF;
    STA.W $0C68                          ;87D101;
    RTS                                  ;87D104;

CODE_87D105:
    INC.W $0C78                          ;87D105;
    STZ.W $0C82                          ;87D108;
    LDA.B #$02                           ;87D10B;
    STA.W $0C83                          ;87D10D;
    STZ.W $0C79                          ;87D110;
    LDA.B #$5D                           ;87D113;
    STA.W $0C88                          ;87D115;
    RTS                                  ;87D118;

CODE_87D119:
    LDX.B $01                            ;87D119;
    JSR.W (PTR16_87D173,X)               ;87D11B;
    LDA.B $0F                            ;87D11E;
    AND.B #$10                           ;87D120;
    CMP.B #$10                           ;87D122;
    BEQ CODE_87D131                      ;87D124;
    LDA.B $0F                            ;87D126;
    AND.B #$22                           ;87D128;
    CMP.B #$22                           ;87D12A;
    BEQ CODE_87D13B                      ;87D12C;
    JMP.W CODE_87D145                    ;87D12E;

CODE_87D131:
    REP #$20                             ;87D131;
    LDA.W #$D3D9                         ;87D133;
    STA.B $20                            ;87D136;
    JMP.W CODE_87D14C                    ;87D138;

CODE_87D13B:
    REP #$20                             ;87D13B;
    LDA.W #$D3E3                         ;87D13D;
    STA.B $20                            ;87D140;
    JMP.W CODE_87D14C                    ;87D142;

CODE_87D145:
    REP #$20                             ;87D145;
    LDA.W #$D3DE                         ;87D147;
    STA.B $20                            ;87D14A;

CODE_87D14C:
    SEP #$20                             ;87D14C;
    LDA.B $0F                            ;87D14E;
    AND.B #$30                           ;87D150;
    CMP.B #$30                           ;87D152;
    BEQ CODE_87D15A                      ;87D154;
    JSL.L CODE_849B43                    ;87D156;

CODE_87D15A:
    LDA.B $0F                            ;87D15A;
    AND.B #$20                           ;87D15C;
    BNE CODE_87D164                      ;87D15E;
    JSL.L CODE_849B03                    ;87D160;

CODE_87D164:
    JSL.L CODE_8280B4                    ;87D164;
    JSL.L CODE_82806E                    ;87D168;
    BCC CODE_87D172                      ;87D16C;
    JSL.L CODE_828387                    ;87D16E;

CODE_87D172:
    RTL                                  ;87D172;

PTR16_87D173:
    dw CODE_87D179                       ;87D173;
    dw CODE_87D1C0                       ;87D175;
    dw CODE_87D1D9                       ;87D177;

CODE_87D179:
    JSL.L CODE_82827D                    ;87D179;
    LDA.B #$01                           ;87D17D;
    STA.B $27                            ;87D17F;
    STZ.B $28                            ;87D181;
    LDA.B #$03                           ;87D183;
    STA.B $26                            ;87D185;
    LDA.B #$04                           ;87D187;
    STA.B $12                            ;87D189;
    STZ.B $29                            ;87D18B;
    STZ.B $2A                            ;87D18D;
    REP #$20                             ;87D18F;
    LDA.W #$D3D9                         ;87D191;
    STA.B $20                            ;87D194;
    LDA.W $0BAD                          ;87D196;
    SEC                                  ;87D199;
    SBC.B $05                            ;87D19A;
    BCC CODE_87D1A6                      ;87D19C;
    LDA.W #$00C0                         ;87D19E;
    STA.B $1A                            ;87D1A1;
    JMP.W CODE_87D1AB                    ;87D1A3;

CODE_87D1A6:
    LDA.W #$FF40                         ;87D1A6;
    STA.B $1A                            ;87D1A9;

CODE_87D1AB:
    LDA.B $05                            ;87D1AB;
    STA.B $34                            ;87D1AD;
    SEP #$20                             ;87D1AF;
    LDA.B #$28                           ;87D1B1;
    STA.B $33                            ;87D1B3;
    LDA.B #$03                           ;87D1B5;
    JSL.L CODE_848F07                    ;87D1B7;
    LDA.B #$01                           ;87D1BB;
    STA.B $0B                            ;87D1BD;
    RTS                                  ;87D1BF;

CODE_87D1C0:
    DEC.B $33                            ;87D1C0;
    BNE CODE_87D1D1                      ;87D1C2;
    STZ.B $36                            ;87D1C4;
    JSR.W CODE_87D2EA                    ;87D1C6;
    CMP.B #$FF                           ;87D1C9;
    BNE CODE_87D1D8                      ;87D1CB;
    LDA.B #$28                           ;87D1CD;
    STA.B $33                            ;87D1CF;

CODE_87D1D1:
    JSL.L CODE_82823E                    ;87D1D1;
    JSR.W CODE_87D368                    ;87D1D5;

CODE_87D1D8:
    RTS                                  ;87D1D8;

CODE_87D1D9:
    LDX.B $02                            ;87D1D9;
    JSR.W (PTR16_87D1DF,X)               ;87D1DB;
    RTS                                  ;87D1DE;

PTR16_87D1DF:
    dw CODE_87D1E9                       ;87D1DF;
    dw CODE_87D258                       ;87D1E1;
    dw CODE_87D277                       ;87D1E3;
    dw CODE_87D296                       ;87D1E5;
    dw CODE_87D2CD                       ;87D1E7;

CODE_87D1E9:
    LDA.B $36                            ;87D1E9;
    AND.B #$03                           ;87D1EB;
    CMP.B #$01                           ;87D1ED;
    BEQ CODE_87D200                      ;87D1EF;
    LDA.B #$02                           ;87D1F1;
    JSL.L CODE_848F07                    ;87D1F3;
    STZ.B $0B                            ;87D1F7;
    LDA.B #$02                           ;87D1F9;
    STA.B $02                            ;87D1FB;
    JMP.W CODE_87D20E                    ;87D1FD;

CODE_87D200:
    LDA.B #$01                           ;87D200;
    JSL.L CODE_848F07                    ;87D202;
    LDA.B #$01                           ;87D206;
    STA.B $0B                            ;87D208;
    LDA.B #$04                           ;87D20A;
    STA.B $02                            ;87D20C;

CODE_87D20E:
    LDA.B $36                            ;87D20E;
    AND.B #$0C                           ;87D210;
    CMP.B #$04                           ;87D212;
    BEQ CODE_87D220                      ;87D214;
    REP #$20                             ;87D216;
    LDA.W #$FF40                         ;87D218;
    STA.B $1A                            ;87D21B;
    JMP.W CODE_87D22A                    ;87D21D;

CODE_87D220:
    REP #$20                             ;87D220;
    LDA.W #$00C0                         ;87D222;
    STA.B $1A                            ;87D225;
    JMP.W CODE_87D22A                    ;87D227;

CODE_87D22A:
    SEP #$20                             ;87D22A;
    LDA.B $39                            ;87D22C;
    BEQ CODE_87D257                      ;87D22E;
    LDA.B #$06                           ;87D230;
    STA.B $02                            ;87D232;
    LDA.B #$80                           ;87D234;
    STA.B $33                            ;87D236;
    REP #$20                             ;87D238;
    LDA.B $1A                            ;87D23A;
    BMI CODE_87D247                      ;87D23C;
    LDA.W #$0020                         ;87D23E;
    STA.W $0004                          ;87D241;
    JMP.W CODE_87D24D                    ;87D244;

CODE_87D247:
    LDA.W #$FFE0                         ;87D247;
    STA.W $0004                          ;87D24A;

CODE_87D24D:
    LDA.B $37                            ;87D24D;
    CLC                                  ;87D24F;
    ADC.W $0004                          ;87D250;
    STA.B $37                            ;87D253;
    SEP #$20                             ;87D255;

CODE_87D257:
    RTS                                  ;87D257;

CODE_87D258:
    LDA.B $0F                            ;87D258;
    BMI CODE_87D26A                      ;87D25A;
    JSL.L CODE_82823E                    ;87D25C;
    JSR.W CODE_87D368                    ;87D260;
    JSL.L CODE_848EEA                    ;87D263;
    JMP.W CODE_87D276                    ;87D267;

CODE_87D26A:
    LDA.B #$02                           ;87D26A;
    STA.B $01                            ;87D26C;
    LDA.B #$00                           ;87D26E;
    STA.B $02                            ;87D270;
    LDA.B #$28                           ;87D272;
    STA.B $33                            ;87D274;

CODE_87D276:
    RTS                                  ;87D276;

CODE_87D277:
    LDA.B $0F                            ;87D277;
    BMI CODE_87D289                      ;87D279;
    JSL.L CODE_82823E                    ;87D27B;
    JSR.W CODE_87D368                    ;87D27F;
    JSL.L CODE_848EEA                    ;87D282;
    JMP.W CODE_87D295                    ;87D286;

CODE_87D289:
    LDA.B #$02                           ;87D289;
    STA.B $01                            ;87D28B;
    LDA.B #$00                           ;87D28D;
    STA.B $02                            ;87D28F;
    LDA.B #$28                           ;87D291;
    STA.B $33                            ;87D293;

CODE_87D295:
    RTS                                  ;87D295;

CODE_87D296:
    DEC.B $33                            ;87D296;
    BEQ CODE_87D2C8                      ;87D298;
    LDA.B $0F                            ;87D29A;
    BPL CODE_87D2BA                      ;87D29C;
    AND.B #$0F                           ;87D29E;
    CMP.B #$01                           ;87D2A0;
    BNE CODE_87D2AF                      ;87D2A2;
    LDA.B #$02                           ;87D2A4;
    JSL.L CODE_848F07                    ;87D2A6;
    STZ.B $0B                            ;87D2AA;
    JMP.W CODE_87D2BE                    ;87D2AC;

CODE_87D2AF:
    LDA.B #$01                           ;87D2AF;
    STA.B $0B                            ;87D2B1;
    JSL.L CODE_848F07                    ;87D2B3;
    JMP.W CODE_87D2BE                    ;87D2B7;

CODE_87D2BA:
    JSL.L CODE_848EEA                    ;87D2BA;

CODE_87D2BE:
    JSL.L CODE_82823E                    ;87D2BE;
    JSR.W CODE_87D368                    ;87D2C2;
    JMP.W CODE_87D2CC                    ;87D2C5;

CODE_87D2C8:
    LDA.B #$08                           ;87D2C8;
    STA.B $02                            ;87D2CA;

CODE_87D2CC:
    RTS                                  ;87D2CC;

CODE_87D2CD:
    LDA.B $0F                            ;87D2CD;
    BMI CODE_87D2DF                      ;87D2CF;
    JSL.L CODE_848EEA                    ;87D2D1;
    JSL.L CODE_82823E                    ;87D2D5;
    JSR.W CODE_87D368                    ;87D2D9;
    JMP.W CODE_87D2E9                    ;87D2DC;

CODE_87D2DF:
    LDA.B #$02                           ;87D2DF;
    STA.B $01                            ;87D2E1;
    STZ.B $02                            ;87D2E3;
    LDA.B #$28                           ;87D2E5;
    STA.B $33                            ;87D2E7;

CODE_87D2E9:
    RTS                                  ;87D2E9;

CODE_87D2EA:
    JSR.W CODE_87D328                    ;87D2EA;
    BNE CODE_87D327                      ;87D2ED;
    LDA.B #$04                           ;87D2EF;
    STA.B $01                            ;87D2F1;
    LDA.B $0B                            ;87D2F3;
    BEQ CODE_87D302                      ;87D2F5;
    LDA.B #$02                           ;87D2F7;
    ORA.B $36                            ;87D2F9;
    STA.B $36                            ;87D2FB;
    STZ.B $0B                            ;87D2FD;
    JMP.W CODE_87D30A                    ;87D2FF;

CODE_87D302:
    LDA.B #$01                           ;87D302;
    STA.B $0B                            ;87D304;
    ORA.B $36                            ;87D306;
    STA.B $36                            ;87D308;

CODE_87D30A:
    REP #$20                             ;87D30A;
    LDA.W $0BAD                          ;87D30C;
    SEC                                  ;87D30F;
    SBC.B $05                            ;87D310;
    BCC CODE_87D31F                      ;87D312;
    SEP #$20                             ;87D314;
    LDA.B #$04                           ;87D316;
    ORA.B $36                            ;87D318;
    STA.B $36                            ;87D31A;
    JMP.W CODE_87D327                    ;87D31C;

CODE_87D31F:
    SEP #$20                             ;87D31F;
    LDA.B #$08                           ;87D321;
    ORA.B $36                            ;87D323;
    STA.B $36                            ;87D325;

CODE_87D327:
    RTS                                  ;87D327;

CODE_87D328:
    LDA.B $0B                            ;87D328;
    BNE CODE_87D354                      ;87D32A;
    JSL.L CODE_849086                    ;87D32C;
    AND.B #$07                           ;87D330;
    LSR A                                ;87D332;
    BEQ CODE_87D34B                      ;87D333;
    LSR A                                ;87D335;
    BEQ CODE_87D33B                      ;87D336;
    LDA.B #$FF                           ;87D338;
    RTS                                  ;87D33A;

CODE_87D33B:
    LDA.B #$01                           ;87D33B;
    STA.B $39                            ;87D33D;
    REP #$20                             ;87D33F;
    LDA.W $0BAD                          ;87D341;
    STA.B $37                            ;87D344;
    SEP #$20                             ;87D346;
    JMP.W CODE_87D34D                    ;87D348;

CODE_87D34B:
    STZ.B $39                            ;87D34B;

CODE_87D34D:
    LDA.B #$00                           ;87D34D;
    STA.B $02                            ;87D34F;
    LDA.B #$00                           ;87D351;
    RTS                                  ;87D353;

CODE_87D354:
    JSL.L CODE_849086                    ;87D354;
    AND.B #$07                           ;87D358;
    BEQ CODE_87D363                      ;87D35A;
    LSR A                                ;87D35C;
    LSR A                                ;87D35D;
    BEQ CODE_87D34B                      ;87D35E;
    JMP.W CODE_87D33B                    ;87D360;

CODE_87D363:
    STZ.B $39                            ;87D363;
    LDA.B #$FF                           ;87D365;
    RTS                                  ;87D367;

CODE_87D368:
    REP #$20                             ;87D368;
    LDA.B $05                            ;87D36A;
    SEC                                  ;87D36C;
    SBC.B $34                            ;87D36D;
    STA.W $0000                          ;87D36F;
    LDA.W #$0030                         ;87D372;
    STA.W $0002                          ;87D375;
    BCS CODE_87D38A                      ;87D378;
    LDA.W $0000                          ;87D37A;
    EOR.W #$FFFF                         ;87D37D;
    INC A                                ;87D380;
    STA.W $0000                          ;87D381;
    LDA.W #$FFD0                         ;87D384;
    STA.W $0002                          ;87D387;

CODE_87D38A:
    LDA.W $0000                          ;87D38A;
    CMP.W #$0030                         ;87D38D;
    BMI CODE_87D3AC                      ;87D390;
    REP #$20                             ;87D392;
    LDA.B $34                            ;87D394;
    CLC                                  ;87D396;
    ADC.W $0002                          ;87D397;
    STA.B $05                            ;87D39A;
    LDA.B $1A                            ;87D39C;
    EOR.W #$FFFF                         ;87D39E;
    INC A                                ;87D3A1;
    STA.B $1A                            ;87D3A2;
    SEP #$20                             ;87D3A4;
    LDA.B $11                            ;87D3A6;
    EOR.B #$40                           ;87D3A8;
    STA.B $11                            ;87D3AA;

CODE_87D3AC:
    SEP #$20                             ;87D3AC;
    RTS                                  ;87D3AE;

CODE_87D3AF:
    LDX.B $01                            ;87D3AF;
    JSR.W (PTR16_87D3FF,X)               ;87D3B1;
    LDA.B $0F                            ;87D3B4;
    AND.B #$06                           ;87D3B6;
    CMP.B #$06                           ;87D3B8;
    BEQ CODE_87D3C5                      ;87D3BA;
    LDA.B $01                            ;87D3BC;
    CMP.B #$04                           ;87D3BE;
    BEQ CODE_87D3C5                      ;87D3C0;
    JSR.W CODE_87D53A                    ;87D3C2;

CODE_87D3C5:
    LDA.B $27                            ;87D3C5;
    BEQ CODE_87D3F3                      ;87D3C7;
    JSL.L CODE_849B43                    ;87D3C9;
    BEQ CODE_87D3E9                      ;87D3CD;
    LDA.B $27                            ;87D3CF;
    AND.B #$7F                           ;87D3D1;
    BNE CODE_87D3E1                      ;87D3D3;
    JSR.W CODE_87D592                    ;87D3D5;
    JSR.W CODE_87D5C9                    ;87D3D8;
    JSL.L CODE_84A4AB                    ;87D3DB;
    BRA CODE_87D3FA                      ;87D3DF;

CODE_87D3E1:
    LDA.B #$F1                           ;87D3E1;
    AND.B $11                            ;87D3E3;
    STA.B $11                            ;87D3E5;
    BRA CODE_87D3EF                      ;87D3E7;

CODE_87D3E9:
    LDA.B $34                            ;87D3E9;
    ORA.B $11                            ;87D3EB;
    STA.B $11                            ;87D3ED;

CODE_87D3EF:
    JSL.L CODE_849B03                    ;87D3EF;

CODE_87D3F3:
    JSL.L CODE_8280B4                    ;87D3F3;
    JMP.W CODE_87D3FE                    ;87D3F7;

CODE_87D3FA:
    JSL.L CODE_828398                    ;87D3FA;

CODE_87D3FE:
    RTL                                  ;87D3FE;

PTR16_87D3FF:
    dw CODE_87D405                       ;87D3FF;
    dw CODE_87D43D                       ;87D401;
    dw CODE_87D472                       ;87D403;

CODE_87D405:
    JSL.L CODE_82827D                    ;87D405;
    LDA.B $11                            ;87D409;
    ORA.B #$10                           ;87D40B;
    STA.B $11                            ;87D40D;
    AND.B #$0E                           ;87D40F;
    STA.B $34                            ;87D411;
    JSL.L CODE_879ED4                    ;87D413;
    LDA.B #$0D                           ;87D417;
    STA.B $27                            ;87D419;
    LDA.B #$01                           ;87D41B;
    STA.B $28                            ;87D41D;
    LDA.B #$03                           ;87D41F;
    STA.B $26                            ;87D421;
    LDA.B #$04                           ;87D423;
    STA.B $12                            ;87D425;
    STZ.B $35                            ;87D427;
    REP #$20                             ;87D429;
    LDA.W #$D3E8                         ;87D42B;
    STA.B $20                            ;87D42E;
    SEP #$20                             ;87D430;
    LDA.B #$01                           ;87D432;
    STA.B $33                            ;87D434;
    LDA.B #$01                           ;87D436;
    JSL.L CODE_848F07                    ;87D438;
    RTS                                  ;87D43C;

CODE_87D43D:
    DEC.B $33                            ;87D43D;
    BNE CODE_87D471                      ;87D43F;
    LDA.B $35                            ;87D441;
    BNE CODE_87D44F                      ;87D443;
    LDA.B #$00                           ;87D445;
    JSL.L CODE_848F07                    ;87D447;
    LDA.B #$01                           ;87D44B;
    STA.B $35                            ;87D44D;

CODE_87D44F:
    LDA.B $0F                            ;87D44F;
    BPL CODE_87D45C                      ;87D451;
    JSR.W CODE_87D492                    ;87D453;
    JSR.W CODE_87D4FA                    ;87D456;
    JMP.W CODE_87D465                    ;87D459;

CODE_87D45C:
    INC.B $33                            ;87D45C;
    JSL.L CODE_848EEA                    ;87D45E;
    JMP.W CODE_87D471                    ;87D462;

CODE_87D465:
    LDA.B #$5A                           ;87D465;
    STA.B $33                            ;87D467;
    LDA.B #$01                           ;87D469;
    JSL.L CODE_848F07                    ;87D46B;
    STZ.B $35                            ;87D46F;

CODE_87D471:
    RTS                                  ;87D471;

CODE_87D472:
    LDA.B $0F                            ;87D472;
    BPL CODE_87D48D                      ;87D474;
    LDA.B $11                            ;87D476;
    EOR.B #$40                           ;87D478;
    STA.B $11                            ;87D47A;
    LDA.B #$01                           ;87D47C;
    JSL.L CODE_848F07                    ;87D47E;
    LDA.B #$02                           ;87D482;
    STA.B $01                            ;87D484;
    LDA.B #$5A                           ;87D486;
    STA.B $33                            ;87D488;
    JMP.W CODE_87D491                    ;87D48A;

CODE_87D48D:
    JSL.L CODE_848EEA                    ;87D48D;

CODE_87D491:
    RTS                                  ;87D491;

CODE_87D492:
    REP #$10                             ;87D492;
    JSL.L CODE_828358                    ;87D494;
    BNE CODE_87D4F7                      ;87D498;
    INC.W $0000,X                        ;87D49A;
    LDA.B #$13                           ;87D49D;
    STA.W $000A,X                        ;87D49F;
    LDA.B $18                            ;87D4A2;
    STA.W $0018,X                        ;87D4A4;
    LDA.B $34                            ;87D4A7;
    ORA.B $11                            ;87D4A9;
    STA.W $0011,X                        ;87D4AB;
    LDA.B $16                            ;87D4AE;
    STA.W $0016,X                        ;87D4B0;
    LDA.B #$02                           ;87D4B3;
    STA.W $000B,X                        ;87D4B5;
    STZ.W $0028,X                        ;87D4B8;
    REP #$20                             ;87D4BB;
    LDA.B $11                            ;87D4BD;
    AND.W #$0040                         ;87D4BF;
    BEQ CODE_87D4D3                      ;87D4C2;
    LDA.W #$0020                         ;87D4C4;
    STA.W $0000                          ;87D4C7;
    LDA.W #$0200                         ;87D4CA;
    STA.W $001A,X                        ;87D4CD;
    JMP.W CODE_87D4DF                    ;87D4D0;

CODE_87D4D3:
    LDA.W #$FFE0                         ;87D4D3;
    STA.W $0000                          ;87D4D6;
    LDA.W #$FE00                         ;87D4D9;
    STA.W $001A,X                        ;87D4DC;

CODE_87D4DF:
    LDA.B $05                            ;87D4DF;
    CLC                                  ;87D4E1;
    ADC.W $0000                          ;87D4E2;
    STA.W $0005,X                        ;87D4E5;
    LDA.B $08                            ;87D4E8;
    SEC                                  ;87D4EA;
    SBC.W #$0002                         ;87D4EB;
    STA.W $0008,X                        ;87D4EE;
    LDA.W #$D3ED                         ;87D4F1;
    STA.W $0020,X                        ;87D4F4;

CODE_87D4F7:
    SEP #$30                             ;87D4F7;
    RTS                                  ;87D4F9;

CODE_87D4FA:
    REP #$20                             ;87D4FA;
    JSL.L CODE_8282D3                    ;87D4FC;
    BNE CODE_87D537                      ;87D500;
    INC.W $0000,X                        ;87D502;
    LDA.B #$09                           ;87D505;
    STA.W $000A,X                        ;87D507;
    STZ.W $000B,X                        ;87D50A;
    REP #$20                             ;87D50D;
    LDA.B $11                            ;87D50F;
    AND.W #$0040                         ;87D511;
    BEQ CODE_87D51F                      ;87D514;
    LDA.W #$0020                         ;87D516;
    STA.W $0000                          ;87D519;
    JMP.W CODE_87D525                    ;87D51C;

CODE_87D51F:
    LDA.W #$FFE0                         ;87D51F;
    STA.W $0000                          ;87D522;

CODE_87D525:
    LDA.B $05                            ;87D525;
    CLC                                  ;87D527;
    ADC.W $0000                          ;87D528;
    STA.W $0005,X                        ;87D52B;
    LDA.B $08                            ;87D52E;
    SEC                                  ;87D530;
    SBC.W #$0002                         ;87D531;
    STA.W $0008,X                        ;87D534;

CODE_87D537:
    SEP #$30                             ;87D537;
    RTS                                  ;87D539;

CODE_87D53A:
    REP #$20                             ;87D53A;
    LDA.W $0BAD                          ;87D53C;
    SEC                                  ;87D53F;
    SBC.B $05                            ;87D540;
    BCC CODE_87D54E                      ;87D542;
    LDA.B $11                            ;87D544;
    AND.W #$0040                         ;87D546;
    BNE CODE_87D564                      ;87D549;
    JMP.W CODE_87D555                    ;87D54B;

CODE_87D54E:
    LDA.B $11                            ;87D54E;
    AND.W #$0040                         ;87D550;
    BEQ CODE_87D564                      ;87D553;

CODE_87D555:
    SEP #$20                             ;87D555;
    LDA.B #$04                           ;87D557;
    STA.B $01                            ;87D559;
    LDA.B #$01                           ;87D55B;
    JSL.L CODE_848F07                    ;87D55D;
    JMP.W CODE_87D575                    ;87D561;

CODE_87D564:
    SEP #$20                             ;87D564;
    LDA.W $0BD3                          ;87D566;
    BEQ CODE_87D575                      ;87D569;
    JSR.W CODE_87D576                    ;87D56B;
    LDA.B $36                            ;87D56E;
    BNE CODE_87D575                      ;87D570;
    JMP.W CODE_87D555                    ;87D572;

CODE_87D575:
    RTS                                  ;87D575;

CODE_87D576:
    JSL.L CODE_84A07C                    ;87D576;
    CMP.B #$04                           ;87D57A;
    BMI CODE_87D58F                      ;87D57C;
    CMP.B #$1C                           ;87D57E;
    BPL CODE_87D58F                      ;87D580;
    LDA.B #$01                           ;87D582;
    JSL.L CODE_848F07                    ;87D584;
    LDA.B #$01                           ;87D588;
    STA.B $36                            ;87D58A;
    JMP.W CODE_87D591                    ;87D58C;

CODE_87D58F:
    STZ.B $36                            ;87D58F;

CODE_87D591:
    RTS                                  ;87D591;

CODE_87D592:
    REP #$10                             ;87D592;
    JSL.L CODE_8282D3                    ;87D594;
    BNE CODE_87D5C6                      ;87D598;
    INC.W $0000,X                        ;87D59A;
    LDA.B #$38                           ;87D59D;
    STA.W $000A,X                        ;87D59F;
    REP #$20                             ;87D5A2;
    LDA.B $05                            ;87D5A4;
    STA.W $0005,X                        ;87D5A6;
    LDA.B $08                            ;87D5A9;
    STA.W $0008,X                        ;87D5AB;
    SEP #$20                             ;87D5AE;
    LDA.B $34                            ;87D5B0;
    ORA.B $11                            ;87D5B2;
    STA.W $0011,X                        ;87D5B4;
    LDA.B #$00                           ;87D5B7;
    STA.W $0002,X                        ;87D5B9;
    LDA.B #$02                           ;87D5BC;
    STA.W $000B,X                        ;87D5BE;
    LDA.B #$01                           ;87D5C1;
    STA.W $000C,X                        ;87D5C3;

CODE_87D5C6:
    SEP #$10                             ;87D5C6;
    RTS                                  ;87D5C8;

CODE_87D5C9:
    REP #$10                             ;87D5C9;
    LDY.W #$0006                         ;87D5CB;

CODE_87D5CE:
    JSL.L CODE_8282D3                    ;87D5CE;
    BNE CODE_87D604                      ;87D5D2;
    INC.W $0000,X                        ;87D5D4;
    LDA.B #$2B                           ;87D5D7;
    STA.W $000A,X                        ;87D5D9;
    REP #$20                             ;87D5DC;
    LDA.B $05                            ;87D5DE;
    STA.W $0005,X                        ;87D5E0;
    LDA.B $08                            ;87D5E3;
    STA.W $0008,X                        ;87D5E5;
    SEP #$20                             ;87D5E8;
    PHY                                  ;87D5EA;
    JSL.L CODE_849086                    ;87D5EB;
    REP #$20                             ;87D5EF;
    AND.W #$0003                         ;87D5F1;
    TAY                                  ;87D5F4;
    SEP #$20                             ;87D5F5;
    LDA.W DATA8_86D3F2,Y                 ;87D5F7;
    STA.W $000B,X                        ;87D5FA;
    PLY                                  ;87D5FD;
    STZ.W $000C,X                        ;87D5FE;
    DEY                                  ;87D601;
    BNE CODE_87D5CE                      ;87D602;

CODE_87D604:
    SEP #$10                             ;87D604;
    RTS                                  ;87D606;

CODE_87D607:
    LDX.B $01                            ;87D607;
    JSR.W (PTR16_87D649,X)               ;87D609;
    LDA.B $27                            ;87D60C;
    BEQ CODE_87D636                      ;87D60E;
    JSL.L CODE_849B43                    ;87D610;
    BEQ CODE_87D630                      ;87D614;
    LDA.B $27                            ;87D616;
    AND.B #$7F                           ;87D618;
    BNE CODE_87D628                      ;87D61A;
    JSL.L CODE_84A4AB                    ;87D61C;
    LDA.B #$01                           ;87D620;
    JSL.L CODE_84A37F                    ;87D622;
    BRA CODE_87D644                      ;87D626;

CODE_87D628:
    LDA.B #$F1                           ;87D628;
    AND.B $11                            ;87D62A;
    STA.B $11                            ;87D62C;
    BRA CODE_87D636                      ;87D62E;

CODE_87D630:
    LDA.B $34                            ;87D630;
    ORA.B $11                            ;87D632;
    STA.B $11                            ;87D634;

CODE_87D636:
    JSL.L CODE_849B03                    ;87D636;
    JSL.L CODE_8280B4                    ;87D63A;
    JSL.L CODE_82806E                    ;87D63E;
    BCC CODE_87D648                      ;87D642;

CODE_87D644:
    JSL.L CODE_828387                    ;87D644;

CODE_87D648:
    RTL                                  ;87D648;

PTR16_87D649:
    dw CODE_87D651                       ;87D649;
    dw CODE_87D698                       ;87D64B;
    dw CODE_87D6F6                       ;87D64D;
    dw CODE_87D748                       ;87D64F;

CODE_87D651:
    JSL.L CODE_82827D                    ;87D651;
    LDA.B $11                            ;87D655;
    AND.B #$0E                           ;87D657;
    STA.B $34                            ;87D659;
    LDA.B #$04                           ;87D65B;
    STA.B $27                            ;87D65D;
    LDA.B #$01                           ;87D65F;
    STA.B $28                            ;87D661;
    LDA.B #$04                           ;87D663;
    STA.B $26                            ;87D665;
    LDA.B #$04                           ;87D667;
    STA.B $12                            ;87D669;
    LDA.B #$FF                           ;87D66B;
    STA.B $2F                            ;87D66D;
    STZ.B $35                            ;87D66F;
    STZ.B $36                            ;87D671;
    STZ.B $37                            ;87D673;
    STZ.B $38                            ;87D675;
    STZ.B $3B                            ;87D677;
    REP #$20                             ;87D679;
    LDA.W #$D3F8                         ;87D67B;
    STA.B $20                            ;87D67E;
    LDA.B $05                            ;87D680;
    STA.B $39                            ;87D682;
    SEP #$20                             ;87D684;
    LDA.B #$01                           ;87D686;
    STA.B $33                            ;87D688;
    JSR.W CODE_87D76A                    ;87D68A;
    LDA.B #$01                           ;87D68D;
    STA.B $36                            ;87D68F;
    LDA.B #$05                           ;87D691;
    JSL.L CODE_848F07                    ;87D693;
    RTS                                  ;87D697;

CODE_87D698:
    LDA.B $0F                            ;87D698;
    CMP.B #$01                           ;87D69A;
    BEQ CODE_87D6E8                      ;87D69C;
    LDA.B $33                            ;87D69E;
    CMP.B #$10                           ;87D6A0;
    BNE CODE_87D6B3                      ;87D6A2;
    JSR.W CODE_87D791                    ;87D6A4;
    LDA.B $3B                            ;87D6A7;
    BNE CODE_87D6B1                      ;87D6A9;
    JSR.W CODE_87D76A                    ;87D6AB;
    JMP.W CODE_87D6B3                    ;87D6AE;

CODE_87D6B1:
    STZ.B $3B                            ;87D6B1;

CODE_87D6B3:
    DEC.B $33                            ;87D6B3;
    BNE CODE_87D6F5                      ;87D6B5;
    LDA.B $36                            ;87D6B7;
    BEQ CODE_87D6CC                      ;87D6B9;
    CMP.B #$01                           ;87D6BB;
    BEQ CODE_87D6CF                      ;87D6BD;
    LDA.B #$02                           ;87D6BF;
    JSL.L CODE_848F07                    ;87D6C1;
    LDA.B #$06                           ;87D6C5;
    STA.B $01                            ;87D6C7;
    JMP.W CODE_87D6F5                    ;87D6C9;

CODE_87D6CC:
    JSR.W CODE_87D7D3                    ;87D6CC;

CODE_87D6CF:
    INC.B $33                            ;87D6CF;
    LDA.B $35                            ;87D6D1;
    BNE CODE_87D6E4                      ;87D6D3;
    LDA.B #$00                           ;87D6D5;
    STA.B $0B                            ;87D6D7;
    JSL.L CODE_848F07                    ;87D6D9;
    LDA.B #$01                           ;87D6DD;
    STA.B $35                            ;87D6DF;
    JMP.W CODE_87D6F5                    ;87D6E1;

CODE_87D6E4:
    LDA.B $0F                            ;87D6E4;
    BNE CODE_87D6EF                      ;87D6E6;

CODE_87D6E8:
    JSL.L CODE_848EEA                    ;87D6E8;
    JMP.W CODE_87D6F5                    ;87D6EC;

CODE_87D6EF:
    LDA.B #$04                           ;87D6EF;
    STA.B $01                            ;87D6F1;
    STZ.B $35                            ;87D6F3;

CODE_87D6F5:
    RTS                                  ;87D6F5;

CODE_87D6F6:
    JSL.L CODE_8281E8                    ;87D6F6;
    JSL.L CODE_8491BE                    ;87D6FA;
    LDA.B $2B                            ;87D6FE;
    AND.B #$01                           ;87D700;
    BEQ CODE_87D709                      ;87D702;
    STZ.B $1A                            ;87D704;
    JMP.W CODE_87D711                    ;87D706;

CODE_87D709:
    LDA.B $2B                            ;87D709;
    AND.B #$02                           ;87D70B;
    BEQ CODE_87D711                      ;87D70D;
    STZ.B $1A                            ;87D70F;

CODE_87D711:
    LDA.B $2B                            ;87D711;
    AND.B #$04                           ;87D713;
    BEQ CODE_87D72A                      ;87D715;
    LDA.B #$02                           ;87D717;
    STA.B $01                            ;87D719;
    STZ.B $36                            ;87D71B;
    LDA.B #$1E                           ;87D71D;
    STA.B $33                            ;87D71F;
    LDA.B #$05                           ;87D721;
    JSL.L CODE_848F07                    ;87D723;
    JMP.W CODE_87D747                    ;87D727;

CODE_87D72A:
    REP #$20                             ;87D72A;
    LDA.B $1C                            ;87D72C;
    BPL CODE_87D741                      ;87D72E;
    SEP #$20                             ;87D730;
    LDA.B $0B                            ;87D732;
    BNE CODE_87D747                      ;87D734;
    LDA.B #$01                           ;87D736;
    STA.B $0B                            ;87D738;
    JSL.L CODE_848F07                    ;87D73A;
    JMP.W CODE_87D747                    ;87D73E;

CODE_87D741:
    SEP #$20                             ;87D741;
    JSL.L CODE_848EEA                    ;87D743;

CODE_87D747:
    RTS                                  ;87D747;

CODE_87D748:
    LDA.B $37                            ;87D748;
    BNE CODE_87D759                      ;87D74A;
    LDA.B $0F                            ;87D74C;
    CMP.B #$01                           ;87D74E;
    BNE CODE_87D759                      ;87D750;
    JSR.W CODE_87D7F7                    ;87D752;
    LDA.B #$01                           ;87D755;
    STA.B $37                            ;87D757;

CODE_87D759:
    LDA.B $0F                            ;87D759;
    BMI CODE_87D764                      ;87D75B;
    JSL.L CODE_848EEA                    ;87D75D;
    JMP.W CODE_87D769                    ;87D761;

CODE_87D764:
    JSR.W CODE_87D849                    ;87D764;
    STZ.B $37                            ;87D767;

CODE_87D769:
    RTS                                  ;87D769;

CODE_87D76A:
    JSL.L CODE_879ED4                    ;87D76A;

CODE_87D76E:
    LDA.B $11                            ;87D76E;
    AND.B #$40                           ;87D770;
    BEQ CODE_87D77E                      ;87D772;
    REP #$20                             ;87D774;
    LDA.W #$0180                         ;87D776;
    STA.B $1A                            ;87D779;
    JMP.W CODE_87D785                    ;87D77B;

CODE_87D77E:
    REP #$20                             ;87D77E;
    LDA.W #$FE80                         ;87D780;
    STA.B $1A                            ;87D783;

CODE_87D785:
    LDA.W #$0400                         ;87D785;
    STA.B $1C                            ;87D788;
    SEP #$20                             ;87D78A;
    LDA.B #$40                           ;87D78C;
    STA.B $1E                            ;87D78E;
    RTS                                  ;87D790;

CODE_87D791:
    REP #$20                             ;87D791;
    LDA.B $39                            ;87D793;
    STA.W $0002                          ;87D795;
    LDA.W #$0080                         ;87D798;
    STA.W $0000                          ;87D79B;
    LDA.B $05                            ;87D79E;
    SEC                                  ;87D7A0;
    SBC.W $0002                          ;87D7A1;
    BCC CODE_87D7B6                      ;87D7A4;
    CMP.W $0000                          ;87D7A6;
    BCC CODE_87D7D0                      ;87D7A9;
    SEP #$20                             ;87D7AB;
    LDA.B $11                            ;87D7AD;
    AND.B #$BF                           ;87D7AF;
    STA.B $11                            ;87D7B1;
    JMP.W CODE_87D7C9                    ;87D7B3;

CODE_87D7B6:
    REP #$20                             ;87D7B6;
    EOR.W #$FFFF                         ;87D7B8;
    INC A                                ;87D7BB;
    CMP.W $0000                          ;87D7BC;
    BCC CODE_87D7D0                      ;87D7BF;
    SEP #$20                             ;87D7C1;
    LDA.B $11                            ;87D7C3;
    ORA.B #$40                           ;87D7C5;
    STA.B $11                            ;87D7C7;

CODE_87D7C9:
    LDA.B #$01                           ;87D7C9;
    STA.B $3B                            ;87D7CB;
    JSR.W CODE_87D76E                    ;87D7CD;

CODE_87D7D0:
    SEP #$20                             ;87D7D0;
    RTS                                  ;87D7D2;

CODE_87D7D3:
    JSL.L CODE_849086                    ;87D7D3;
    AND.B #$03                           ;87D7D7;
    BNE CODE_87D7E4                      ;87D7D9;
    LDA.B #$02                           ;87D7DB;
    STA.B $36                            ;87D7DD;
    STZ.B $38                            ;87D7DF;
    JMP.W CODE_87D7F6                    ;87D7E1;

CODE_87D7E4:
    LDA.B #$01                           ;87D7E4;
    STA.B $36                            ;87D7E6;
    INC.B $38                            ;87D7E8;
    LDA.B #$03                           ;87D7EA;
    CMP.B $38                            ;87D7EC;
    BPL CODE_87D7F6                      ;87D7EE;
    LDA.B #$02                           ;87D7F0;
    STA.B $36                            ;87D7F2;
    STZ.B $38                            ;87D7F4;

CODE_87D7F6:
    RTS                                  ;87D7F6;

CODE_87D7F7:
    REP #$10                             ;87D7F7;
    JSL.L CODE_828358                    ;87D7F9;
    BNE CODE_87D846                      ;87D7FD;
    INC.W $0000,X                        ;87D7FF;
    LDA.B #$22                           ;87D802;
    STA.W $000A,X                        ;87D804;
    LDA.B $18                            ;87D807;
    STA.W $0018,X                        ;87D809;
    LDA.B $34                            ;87D80C;
    ORA.B $11                            ;87D80E;
    STA.W $0011,X                        ;87D810;
    LDA.B #$03                           ;87D813;
    STA.W $000B,X                        ;87D815;
    LDA.B #$85                           ;87D818;
    STA.W $0016,X                        ;87D81A;
    LDA.B $11                            ;87D81D;
    AND.B #$40                           ;87D81F;
    BEQ CODE_87D82E                      ;87D821;
    REP #$20                             ;87D823;
    LDA.W #$0240                         ;87D825;
    STA.W $001A,X                        ;87D828;
    JMP.W CODE_87D836                    ;87D82B;

CODE_87D82E:
    REP #$20                             ;87D82E;
    LDA.W #$FDC0                         ;87D830;
    STA.W $001A,X                        ;87D833;

CODE_87D836:
    LDA.B $05                            ;87D836;
    STA.W $0005,X                        ;87D838;
    LDA.B $08                            ;87D83B;
    STA.W $0008,X                        ;87D83D;
    LDA.W #$D402                         ;87D840;
    STA.W $0020,X                        ;87D843;

CODE_87D846:
    SEP #$30                             ;87D846;
    RTS                                  ;87D848;

CODE_87D849:
    LDA.B #$05                           ;87D849;
    JSL.L CODE_848F07                    ;87D84B;
    LDA.B #$1E                           ;87D84F;
    STA.B $33                            ;87D851;
    LDA.B #$02                           ;87D853;
    STA.B $01                            ;87D855;
    STZ.B $36                            ;87D857;
    STZ.B $35                            ;87D859;
    RTS                                  ;87D85B;

CODE_87D85C:
    LDX.B $01                            ;87D85C;
    JMP.W (PTR16_87D861,X)               ;87D85E;

PTR16_87D861:
    dw CODE_87D869                       ;87D861;
    dw CODE_87D8BE                       ;87D863;
    dw CODE_87D9A1                       ;87D865;
    dw CODE_87DDE0                       ;87D867;

CODE_87D869:
    LDA.B $02                            ;87D869;
    BNE CODE_87D888                      ;87D86B;
    INC.B $02                            ;87D86D;
    JSL.L CODE_84AAD3                    ;87D86F;
    BEQ CODE_87D879                      ;87D873;
    JML.L CODE_828398                    ;87D875;

CODE_87D879:
    LDA.B #$3C                           ;87D879;
    STA.B $34                            ;87D87B;
    LDA.W $1F26                          ;87D87D;
    BEQ CODE_87D888                      ;87D880;
    LDA.B #$2E                           ;87D882;
    JSL.L CODE_8087A2                    ;87D884;

CODE_87D888:
    DEC.B $34                            ;87D888;
    BEQ CODE_87D88D                      ;87D88A;
    RTL                                  ;87D88C;

CODE_87D88D:
    JSL.L CODE_82827D                    ;87D88D;
    LDA.B $11                            ;87D891;
    ORA.B #$30                           ;87D893;
    STA.B $11                            ;87D895;
    AND.B #$0E                           ;87D897;
    STA.B $33                            ;87D899;
    LDA.B #$83                           ;87D89B;
    STA.B $10                            ;87D89D;
    LDA.B #$02                           ;87D89F;
    STA.B $12                            ;87D8A1;
    STZ.B $27                            ;87D8A3;
    STZ.B $36                            ;87D8A5;
    STZ.B $37                            ;87D8A7;
    LDA.B #$04                           ;87D8A9;
    STA.B $26                            ;87D8AB;
    REP #$20                             ;87D8AD;
    LDA.W #$D407                         ;87D8AF;
    STA.B $20                            ;87D8B2;
    LDA.W #$B32E                         ;87D8B4;
    STA.B $31                            ;87D8B7;
    SEP #$20                             ;87D8B9;
    STZ.B $02                            ;87D8BB;
    RTL                                  ;87D8BD;

CODE_87D8BE:
    LDX.B $02                            ;87D8BE;
    JSR.W (PTR16_87D8C7,X)               ;87D8C0;
    JML.L CODE_8280B4                    ;87D8C3;

PTR16_87D8C7:
    dw CODE_87D8D1                       ;87D8C7;
    dw CODE_87D902                       ;87D8C9;
    dw CODE_87D93D                       ;87D8CB;
    dw CODE_87D94A                       ;87D8CD;
    dw CODE_87D992                       ;87D8CF;

CODE_87D8D1:
    LDA.B #$02                           ;87D8D1;
    STA.B $02                            ;87D8D3;
    LDA.B #$05                           ;87D8D5;
    STA.B $38                            ;87D8D7;
    JSL.L CODE_848F07                    ;87D8D9;
    LDA.B #$01                           ;87D8DD;
    TSB.B $11                            ;87D8DF;
    REP #$20                             ;87D8E1;
    LDA.W $1E4D                          ;87D8E3;
    CLC                                  ;87D8E6;
    ADC.W #$00D0                         ;87D8E7;
    STA.B $05                            ;87D8EA;
    LDA.W $1E50                          ;87D8EC;
    STA.B $08                            ;87D8EF;
    LDA.W #$FF00                         ;87D8F1;
    STA.B $1C                            ;87D8F4;
    LDA.W #$D407                         ;87D8F6;
    STA.B $20                            ;87D8F9;
    SEP #$20                             ;87D8FB;
    LDA.B #$FF                           ;87D8FD;
    STA.B $2F                            ;87D8FF;
    RTS                                  ;87D901;

CODE_87D902:
    JSL.L CODE_82825D                    ;87D902;
    JSL.L CODE_848EEA                    ;87D906;
    LDA.B $17                            ;87D90A;
    BPL CODE_87D91C                      ;87D90C;
    AND.B #$7F                           ;87D90E;
    STA.B $17                            ;87D910;
    LDA.B $0F                            ;87D912;
    BPL CODE_87D91C                      ;87D914;
    LDA.B #$58                           ;87D916;
    JSL.L CODE_8088A2                    ;87D918;

CODE_87D91C:
    JSL.L CODE_8491BE                    ;87D91C;
    LDA.B $2B                            ;87D920;
    AND.B #$04                           ;87D922;
    BEQ CODE_87D93C                      ;87D924;
    LDA.B #$04                           ;87D926;
    STA.B $02                            ;87D928;
    STZ.B $2F                            ;87D92A;
    LDA.B #$0B                           ;87D92C;
    STA.B $38                            ;87D92E;
    JSL.L CODE_848F07                    ;87D930;
    REP #$20                             ;87D934;
    TDC                                  ;87D936;
    STA.W $1F0E                          ;87D937;
    SEP #$20                             ;87D93A;

CODE_87D93C:
    RTS                                  ;87D93C;

CODE_87D93D:
    JSL.L CODE_848EEA                    ;87D93D;
    LDA.B $0F                            ;87D941;
    BPL CODE_87D949                      ;87D943;
    LDA.B #$06                           ;87D945;
    STA.B $02                            ;87D947;

CODE_87D949:
    RTS                                  ;87D949;

CODE_87D94A:
    INC.B $34                            ;87D94A;
    LDA.B $34                            ;87D94C;
    LSR A                                ;87D94E;
    BCC CODE_87D98D                      ;87D94F;
    LDA.B #$0C                           ;87D951;
    JSL.L CODE_8088CD                    ;87D953;
    LDA.B $27                            ;87D957;
    AND.B #$7F                           ;87D959;
    INC A                                ;87D95B;
    STA.B $27                            ;87D95C;
    CMP.B #$20                           ;87D95E;
    BCC CODE_87D98D                      ;87D960;
    LDA.B #$08                           ;87D962;
    STA.B $02                            ;87D964;
    LDA.B #$1E                           ;87D966;
    STA.B $34                            ;87D968;
    REP #$20                             ;87D96A;
    LDA.W $1E4D                          ;87D96C;
    AND.W #$FF00                         ;87D96F;
    SEC                                  ;87D972;
    SBC.W #$0100                         ;87D973;
    STA.W $1E5E                          ;87D976;
    CLC                                  ;87D979;
    ADC.W #$0200                         ;87D97A;
    STA.W $1E60                          ;87D97D;
    SEP #$20                             ;87D980;
    LDA.W $1F26                          ;87D982;
    BEQ CODE_87D98D                      ;87D985;
    LDA.B #$1E                           ;87D987;
    JSL.L CODE_8087A2                    ;87D989;

CODE_87D98D:
    LDA.B #$80                           ;87D98D;
    TSB.B $27                            ;87D98F;
    RTS                                  ;87D991;

CODE_87D992:
    DEC.B $34                            ;87D992;
    BNE CODE_87D9A0                      ;87D994;
    JSL.L CODE_849FFE                    ;87D996;
    LDA.B #$04                           ;87D99A;
    STA.B $01                            ;87D99C;
    STZ.B $02                            ;87D99E;

CODE_87D9A0:
    RTS                                  ;87D9A0;

CODE_87D9A1:
    LDA.B $33                            ;87D9A1;
    TSB.B $11                            ;87D9A3;
    LDX.B $02                            ;87D9A5;
    JSR.W (PTR16_87DA22,X)               ;87D9A7;
    JSR.W CODE_87DE3F                    ;87D9AA;
    LDA.B #$07                           ;87D9AD;
    LDX.B $37                            ;87D9AF;
    BEQ CODE_87D9B5                      ;87D9B1;
    LDA.B #$05                           ;87D9B3;

CODE_87D9B5:
    STA.B $28                            ;87D9B5;
    JSL.L CODE_849B43                    ;87D9B7;
    BEQ CODE_87DA00                      ;87D9BB;
    BPL CODE_87D9F2                      ;87D9BD;
    LDA.B #$01                           ;87D9BF;
    TSB.W $0BD8                          ;87D9C1;
    TSB.W $1F0C                          ;87D9C4;
    LDA.B #$06                           ;87D9C7;
    STA.B $01                            ;87D9C9;
    STZ.B $02                            ;87D9CB;
    STZ.B $03                            ;87D9CD;
    LDA.B #$89                           ;87D9CF;
    STA.B $16                            ;87D9D1;
    LDA.B #$01                           ;87D9D3;
    TSB.B $11                            ;87D9D5;
    LDA.B #$0A                           ;87D9D7;
    STA.B $38                            ;87D9D9;
    JSL.L CODE_848F07                    ;87D9DB;
    JSL.L CODE_84AC9B                    ;87D9DF;
    LDA.B #$01                           ;87D9E3;
    TSB.W $1F42                          ;87D9E5;
    LDA.B #$13                           ;87D9E8;
    JSL.L CODE_8088A2                    ;87D9EA;
    JML.L CODE_8280B4                    ;87D9EE;

CODE_87D9F2:
    LDA.B $37                            ;87D9F2;
    BNE CODE_87DA00                      ;87D9F4;
    LDA.B #$3C                           ;87D9F6;
    STA.B $37                            ;87D9F8;
    LDA.B #$13                           ;87D9FA;
    JSL.L CODE_8088A2                    ;87D9FC;

CODE_87DA00:
    LDA.B $37                            ;87DA00;
    BEQ CODE_87DA0F                      ;87DA02;
    DEC A                                ;87DA04;
    STA.B $37                            ;87DA05;
    AND.B #$03                           ;87DA07;
    BNE CODE_87DA0F                      ;87DA09;
    LDA.B #$0E                           ;87DA0B;
    TRB.B $11                            ;87DA0D;

CODE_87DA0F:
    JSL.L CODE_849B03                    ;87DA0F;
    LDA.W $0BCF                          ;87DA13;
    AND.B #$7F                           ;87DA16;
    BNE CODE_87DA1E                      ;87DA18;
    LDA.B #$01                           ;87DA1A;
    STA.B $30                            ;87DA1C;

CODE_87DA1E:
    JML.L CODE_8280B4                    ;87DA1E;

PTR16_87DA22:
    dw CODE_87DA2A                       ;87DA22;
    dw CODE_87DB33                       ;87DA24;
    dw CODE_87DC7C                       ;87DA26;
    dw CODE_87DD31                       ;87DA28;

CODE_87DA2A:
    LDX.B $03                            ;87DA2A;
    JMP.W (PTR16_87DA2F,X)               ;87DA2C;

PTR16_87DA2F:
    dw CODE_87DA37                       ;87DA2F;
    dw CODE_87DA98                       ;87DA31;
    dw CODE_87DABD                       ;87DA33;
    dw CODE_87DB27                       ;87DA35;

CODE_87DA37:
    LDA.B #$04                           ;87DA37;
    STA.B $03                            ;87DA39;
    LDA.B #$03                           ;87DA3B;
    STA.B $39                            ;87DA3D;
    JSL.L CODE_84AC9B                    ;87DA3F;
    REP #$20                             ;87DA43;
    JSL.L CODE_849086                    ;87DA45;
    LSR A                                ;87DA49;
    BCC CODE_87DA51                      ;87DA4A;
    LDA.W #$00F0                         ;87DA4C;
    BRA CODE_87DA5C                      ;87DA4F;

CODE_87DA51:
    LSR A                                ;87DA51;
    BCC CODE_87DA59                      ;87DA52;
    LDA.W #$0168                         ;87DA54;
    BRA CODE_87DA5C                      ;87DA57;

CODE_87DA59:
    LDA.W #$0078                         ;87DA59;

CODE_87DA5C:
    STA.B $34                            ;87DA5C;
    SEP #$20                             ;87DA5E;
    LDA.B $2F                            ;87DA60;
    BEQ CODE_87DA8F                      ;87DA62;
    LDA.B #$02                           ;87DA64;
    STA.B $03                            ;87DA66;
    REP #$20                             ;87DA68;
    LDA.W #$FF00                         ;87DA6A;
    STA.B $1C                            ;87DA6D;
    LDA.W $1E60                          ;87DA6F;
    CLC                                  ;87DA72;
    ADC.W $1E5E                          ;87DA73;
    CLC                                  ;87DA76;
    ADC.W #$0100                         ;87DA77;
    LSR A                                ;87DA7A;
    SEC                                  ;87DA7B;
    SBC.B $05                            ;87DA7C;
    BCS CODE_87DA84                      ;87DA7E;
    EOR.W #$FFFF                         ;87DA80;
    INC A                                ;87DA83;

CODE_87DA84:
    CMP.W #$00F0                         ;87DA84;
    SEP #$20                             ;87DA87;
    BCC CODE_87DA8E                      ;87DA89;
    JMP.W CODE_87DE1F                    ;87DA8B;

CODE_87DA8E:
    RTS                                  ;87DA8E;

CODE_87DA8F:
    LDA.B #$01                           ;87DA8F;
    STA.B $38                            ;87DA91;
    JSL.L CODE_848F07                    ;87DA93;
    RTS                                  ;87DA97;

CODE_87DA98:
    JSL.L CODE_848EEA                    ;87DA98;
    JSL.L CODE_82825D                    ;87DA9C;
    JSL.L CODE_84AC9B                    ;87DAA0;
    JSL.L CODE_8491BE                    ;87DAA4;
    LDA.B $2B                            ;87DAA8;
    AND.B #$04                           ;87DAAA;
    BEQ CODE_87DABC                      ;87DAAC;
    LDA.B #$01                           ;87DAAE;
    STA.B $38                            ;87DAB0;
    JSL.L CODE_848F07                    ;87DAB2;
    STZ.B $2F                            ;87DAB6;
    LDA.B #$04                           ;87DAB8;
    STA.B $03                            ;87DABA;

CODE_87DABC:
    RTS                                  ;87DABC;

CODE_87DABD:
    JSL.L CODE_848EEA                    ;87DABD;
    JSR.W CODE_87DE63                    ;87DAC1;
    REP #$20                             ;87DAC4;
    LDA.W $0BB0                          ;87DAC6;
    SEC                                  ;87DAC9;
    SBC.B $08                            ;87DACA;
    BCC CODE_87DAD3                      ;87DACC;
    CMP.W #$0010                         ;87DACE;
    BCS CODE_87DB0E                      ;87DAD1;

CODE_87DAD3:
    LDA.B $10                            ;87DAD3;
    ASL A                                ;87DAD5;
    ASL A                                ;87DAD6;
    LDA.W $0BAD                          ;87DAD7;
    BCS CODE_87DAF6                      ;87DADA;
    CMP.B $05                            ;87DADC;
    BCS CODE_87DB0E                      ;87DADE;
    LDA.W $0BAC                          ;87DAE0;
    SEC                                  ;87DAE3;
    SBC.W #$0200                         ;87DAE4;
    STA.W $0BAC                          ;87DAE7;
    SEP #$20                             ;87DAEA;
    LDA.W $0BAE                          ;87DAEC;
    SBC.B #$00                           ;87DAEF;
    STA.W $0BAE                          ;87DAF1;
    BRA CODE_87DB0E                      ;87DAF4;

CODE_87DAF6:
    CMP.B $05                            ;87DAF6;
    BCC CODE_87DB0E                      ;87DAF8;
    LDA.W $0BAC                          ;87DAFA;
    CLC                                  ;87DAFD;
    ADC.W #$0200                         ;87DAFE;
    STA.W $0BAC                          ;87DB01;
    SEP #$20                             ;87DB04;
    LDA.W $0BAE                          ;87DB06;
    ADC.B #$00                           ;87DB09;
    STA.W $0BAE                          ;87DB0B;

CODE_87DB0E:
    REP #$20                             ;87DB0E;
    DEC.B $34                            ;87DB10;
    SEP #$20                             ;87DB12;
    BNE CODE_87DB26                      ;87DB14;
    LDA.B #$28                           ;87DB16;
    STA.B $34                            ;87DB18;
    LDA.B #$00                           ;87DB1A;
    STA.B $38                            ;87DB1C;
    JSL.L CODE_848F07                    ;87DB1E;
    LDA.B #$06                           ;87DB22;
    STA.B $03                            ;87DB24;

CODE_87DB26:
    RTS                                  ;87DB26;

CODE_87DB27:
    JSL.L CODE_848EEA                    ;87DB27;
    DEC.B $34                            ;87DB2B;
    BNE CODE_87DB32                      ;87DB2D;
    JSR.W CODE_87DE1F                    ;87DB2F;

CODE_87DB32:
    RTS                                  ;87DB32;

CODE_87DB33:
    LDX.B $03                            ;87DB33;
    JMP.W (PTR16_87DB38,X)               ;87DB35;

PTR16_87DB38:
    dw CODE_87DB44                       ;87DB38;
    dw CODE_87DB7D                       ;87DB3A;
    dw CODE_87DBEC                       ;87DB3C;
    dw CODE_87DC10                       ;87DB3E;
    dw CODE_87DC46                       ;87DB40;
    dw CODE_87DC6C                       ;87DB42;

CODE_87DB44:
    LDA.B #$02                           ;87DB44;
    STA.B $03                            ;87DB46;
    LDA.B $2F                            ;87DB48;
    BNE CODE_87DB58                      ;87DB4A;
    LDA.B #$05                           ;87DB4C;
    STA.B $38                            ;87DB4E;
    JSL.L CODE_848F07                    ;87DB50;
    LDA.B #$FF                           ;87DB54;
    STA.B $2F                            ;87DB56;

CODE_87DB58:
    REP #$20                             ;87DB58;
    LDA.W #$0180                         ;87DB5A;
    STA.B $1C                            ;87DB5D;
    SEP #$20                             ;87DB5F;
    LDA.B $36                            ;87DB61;
    BNE CODE_87DB7A                      ;87DB63;
    JSL.L CODE_849086                    ;87DB65;
    AND.B #$0F                           ;87DB69;
    CMP.B #$04                           ;87DB6B;
    BCC CODE_87DB7C                      ;87DB6D;
    JSL.L CODE_849086                    ;87DB6F;
    AND.B #$03                           ;87DB73;
    CLC                                  ;87DB75;
    ADC.B #$06                           ;87DB76;
    STA.B $36                            ;87DB78;

CODE_87DB7A:
    DEC.B $36                            ;87DB7A;

CODE_87DB7C:
    RTS                                  ;87DB7C;

CODE_87DB7D:
    JSL.L CODE_848EEA                    ;87DB7D;
    JSL.L CODE_82825D                    ;87DB81;
    REP #$20                             ;87DB85;
    LDA.W $1E50                          ;87DB87;
    SEC                                  ;87DB8A;
    SBC.B $08                            ;87DB8B;
    BMI CODE_87DBE5                      ;87DB8D;
    CMP.W #$0030                         ;87DB8F;
    BCC CODE_87DBE5                      ;87DB92;
    LDA.W $0BB0                          ;87DB94;
    SEC                                  ;87DB97;
    SBC.B $08                            ;87DB98;
    STA.W $0000                          ;87DB9A;
    JSL.L CODE_849086                    ;87DB9D;
    LSR A                                ;87DBA1;
    BCC CODE_87DBB2                      ;87DBA2;
    LDA.W $0BAD                          ;87DBA4;
    SEC                                  ;87DBA7;
    SBC.W $0000                          ;87DBA8;
    STA.B $05                            ;87DBAB;
    LDA.W #$0400                         ;87DBAD;
    BRA CODE_87DBBE                      ;87DBB0;

CODE_87DBB2:
    LDA.W $0BAD                          ;87DBB2;
    CLC                                  ;87DBB5;
    ADC.W $0000                          ;87DBB6;
    STA.B $05                            ;87DBB9;
    LDA.W #$FC00                         ;87DBBB;

CODE_87DBBE:
    STA.B $1A                            ;87DBBE;
    LDA.W #$FC00                         ;87DBC0;
    STA.B $1C                            ;87DBC3;
    SEP #$20                             ;87DBC5;
    LDA.B #$04                           ;87DBC7;
    STA.B $03                            ;87DBC9;
    LDA.B #$8A                           ;87DBCB;
    STA.B $16                            ;87DBCD;
    LDA.B #$01                           ;87DBCF;
    TRB.B $11                            ;87DBD1;
    LDA.B #$02                           ;87DBD3;
    STA.B $38                            ;87DBD5;
    JSL.L CODE_848F07                    ;87DBD7;
    JSL.L CODE_848FCA                    ;87DBDB;
    LDA.B #$0E                           ;87DBDF;
    JSL.L CODE_8088A2                    ;87DBE1;

CODE_87DBE5:
    SEP #$20                             ;87DBE5;
    JSL.L CODE_84AC9B                    ;87DBE7;
    RTS                                  ;87DBEB;

CODE_87DBEC:
    JSL.L CODE_848EEA                    ;87DBEC;
    JSL.L CODE_82820A                    ;87DBF0;
    REP #$20                             ;87DBF4;
    LDA.B $08                            ;87DBF6;
    SEC                                  ;87DBF8;
    SBC.W $1E50                          ;87DBF9;
    BMI CODE_87DC0D                      ;87DBFC;
    CMP.W #$0110                         ;87DBFE;
    BCC CODE_87DC0D                      ;87DC01;
    SEP #$20                             ;87DC03;
    LDA.B #$06                           ;87DC05;
    STA.B $03                            ;87DC07;
    LDA.B #$28                           ;87DC09;
    STA.B $34                            ;87DC0B;

CODE_87DC0D:
    SEP #$20                             ;87DC0D;
    RTS                                  ;87DC0F;

CODE_87DC10:
    DEC.B $34                            ;87DC10;
    BNE CODE_87DC45                      ;87DC12;
    REP #$20                             ;87DC14;
    LDA.W $1E50                          ;87DC16;
    SEC                                  ;87DC19;
    SBC.W #$0030                         ;87DC1A;
    STA.B $08                            ;87DC1D;
    SEP #$20                             ;87DC1F;
    LDA.B #$01                           ;87DC21;
    TSB.B $11                            ;87DC23;
    LDA.B #$89                           ;87DC25;
    STA.B $16                            ;87DC27;
    LDA.B #$05                           ;87DC29;
    STA.B $38                            ;87DC2B;
    JSL.L CODE_848F07                    ;87DC2D;
    LDA.B $36                            ;87DC31;
    BEQ CODE_87DC38                      ;87DC33;
    STZ.B $03                            ;87DC35;
    RTS                                  ;87DC37;

CODE_87DC38:
    REP #$20                             ;87DC38;
    LDA.W #$FF00                         ;87DC3A;
    STA.B $1C                            ;87DC3D;
    SEP #$20                             ;87DC3F;
    LDA.B #$08                           ;87DC41;
    STA.B $03                            ;87DC43;

CODE_87DC45:
    RTS                                  ;87DC45;

CODE_87DC46:
    JSL.L CODE_82825D                    ;87DC46;
    JSL.L CODE_848EEA                    ;87DC4A;
    JSL.L CODE_84AC9B                    ;87DC4E;
    REP #$20                             ;87DC52;
    LDA.B $08                            ;87DC54;
    SEC                                  ;87DC56;
    SBC.W $1E50                          ;87DC57;
    BMI CODE_87DC69                      ;87DC5A;
    CMP.W #$0040                         ;87DC5C;
    BCC CODE_87DC69                      ;87DC5F;
    LDX.B #$0A                           ;87DC61;
    STX.B $03                            ;87DC63;
    LDX.B #$18                           ;87DC65;
    STX.B $34                            ;87DC67;

CODE_87DC69:
    SEP #$20                             ;87DC69;
    RTS                                  ;87DC6B;

CODE_87DC6C:
    JSL.L CODE_848EEA                    ;87DC6C;
    JSL.L CODE_84AC9B                    ;87DC70;
    DEC.B $34                            ;87DC74;
    BNE CODE_87DC7B                      ;87DC76;
    JSR.W CODE_87DE1F                    ;87DC78;

CODE_87DC7B:
    RTS                                  ;87DC7B;

CODE_87DC7C:
    LDX.B $03                            ;87DC7C;
    JMP.W (PTR16_87DC81,X)               ;87DC7E;

PTR16_87DC81:
    dw CODE_87DC89                       ;87DC81;
    dw CODE_87DCCD                       ;87DC83;
    dw CODE_87DCE4                       ;87DC85;
    dw CODE_87DD25                       ;87DC87;

CODE_87DC89:
    JSL.L CODE_84AC9B                    ;87DC89;
    LDA.B $2F                            ;87DC8D;
    BEQ CODE_87DCBE                      ;87DC8F;
    LDA.B #$02                           ;87DC91;
    STA.B $03                            ;87DC93;
    REP #$20                             ;87DC95;
    LDA.W $1E5E                          ;87DC97;
    CLC                                  ;87DC9A;
    ADC.W $1E60                          ;87DC9B;
    CLC                                  ;87DC9E;
    ADC.W #$0100                         ;87DC9F;
    LSR A                                ;87DCA2;
    SEC                                  ;87DCA3;
    SBC.B $05                            ;87DCA4;
    BCS CODE_87DCAC                      ;87DCA6;
    EOR.W #$FFFF                         ;87DCA8;
    INC A                                ;87DCAB;

CODE_87DCAC:
    CMP.W #$00F0                         ;87DCAC;
    BCC CODE_87DCB6                      ;87DCAF;
    SEP #$20                             ;87DCB1;
    JMP.W CODE_87DE1F                    ;87DCB3;

CODE_87DCB6:
    LDA.W #$FF00                         ;87DCB6;
    STA.B $1C                            ;87DCB9;
    SEP #$20                             ;87DCBB;
    RTS                                  ;87DCBD;

CODE_87DCBE:
    LDA.B #$04                           ;87DCBE;
    STA.B $03                            ;87DCC0;
    STZ.B $2F                            ;87DCC2;
    LDA.B #$03                           ;87DCC4;
    STA.B $38                            ;87DCC6;
    JSL.L CODE_848F07                    ;87DCC8;
    RTS                                  ;87DCCC;

CODE_87DCCD:
    JSL.L CODE_848EEA                    ;87DCCD;
    JSL.L CODE_82825D                    ;87DCD1;
    JSL.L CODE_84AC9B                    ;87DCD5;
    JSL.L CODE_8491BE                    ;87DCD9;
    LDA.B $2B                            ;87DCDD;
    AND.B #$04                           ;87DCDF;
    BNE CODE_87DCBE                      ;87DCE1;
    RTS                                  ;87DCE3;

CODE_87DCE4:
    JSL.L CODE_848EEA                    ;87DCE4;
    LDA.B $0F                            ;87DCE8;
    BEQ CODE_87DD24                      ;87DCEA;
    REP #$10                             ;87DCEC;
    JSL.L CODE_828358                    ;87DCEE;
    BNE CODE_87DD1E                      ;87DCF2;
    INC.W $0000,X                        ;87DCF4;
    LDA.B #$24                           ;87DCF7;
    STA.W $000A,X                        ;87DCF9;
    LDA.B $11                            ;87DCFC;
    AND.B #$40                           ;87DCFE;
    STA.W $0011,X                        ;87DD00;
    ASL A                                ;87DD03;
    ASL A                                ;87DD04;
    REP #$20                             ;87DD05;
    LDA.W #$0027                         ;87DD07;
    BCS CODE_87DD0F                      ;87DD0A;
    LDA.W #$FFD9                         ;87DD0C;

CODE_87DD0F:
    CLC                                  ;87DD0F;
    ADC.B $05                            ;87DD10;
    STA.W $0005,X                        ;87DD12;
    LDA.B $08                            ;87DD15;
    SEC                                  ;87DD17;
    SBC.W #$000A                         ;87DD18;
    STA.W $0008,X                        ;87DD1B;

CODE_87DD1E:
    SEP #$30                             ;87DD1E;
    LDA.B #$06                           ;87DD20;
    STA.B $03                            ;87DD22;

CODE_87DD24:
    RTS                                  ;87DD24;

CODE_87DD25:
    JSL.L CODE_848EEA                    ;87DD25;
    LDA.B $0F                            ;87DD29;
    BPL CODE_87DD30                      ;87DD2B;
    JSR.W CODE_87DE1F                    ;87DD2D;

CODE_87DD30:
    RTS                                  ;87DD30;

CODE_87DD31:
    LDX.B $03                            ;87DD31;
    JMP.W (PTR16_87DD36,X)               ;87DD33;

PTR16_87DD36:
    dw CODE_87DD3E                       ;87DD36;
    dw CODE_87DD71                       ;87DD38;
    dw CODE_87DD82                       ;87DD3A;
    dw CODE_87DDD0                       ;87DD3C;

CODE_87DD3E:
    JSL.L CODE_84AC9B                    ;87DD3E;
    LDA.B $2F                            ;87DD42;
    BNE CODE_87DD64                      ;87DD44;
    REP #$20                             ;87DD46;
    LDA.W #$0100                         ;87DD48;
    STA.B $1C                            ;87DD4B;
    SEP #$20                             ;87DD4D;
    LDA.B #$05                           ;87DD4F;
    STA.B $38                            ;87DD51;
    JSL.L CODE_848F07                    ;87DD53;
    LDA.B #$5A                           ;87DD57;
    STA.B $34                            ;87DD59;
    LDA.B #$FF                           ;87DD5B;
    STA.B $2F                            ;87DD5D;
    LDA.B #$02                           ;87DD5F;
    STA.B $03                            ;87DD61;
    RTS                                  ;87DD63;

CODE_87DD64:
    LDA.B #$06                           ;87DD64;
    STA.B $38                            ;87DD66;
    JSL.L CODE_848F07                    ;87DD68;
    LDA.B #$04                           ;87DD6C;
    STA.B $03                            ;87DD6E;
    RTS                                  ;87DD70;

CODE_87DD71:
    JSL.L CODE_848EEA                    ;87DD71;
    JSL.L CODE_82825D                    ;87DD75;
    JSL.L CODE_84AC9B                    ;87DD79;
    DEC.B $34                            ;87DD7D;
    BEQ CODE_87DD64                      ;87DD7F;
    RTS                                  ;87DD81;

CODE_87DD82:
    JSL.L CODE_848EEA                    ;87DD82;
    LDA.B $0F                            ;87DD86;
    BEQ CODE_87DDCF                      ;87DD88;
    BPL CODE_87DD9D                      ;87DD8A;
    LDA.B #$06                           ;87DD8C;
    STA.B $03                            ;87DD8E;
    LDA.B #$05                           ;87DD90;
    STA.B $38                            ;87DD92;
    JSL.L CODE_848F07                    ;87DD94;
    LDA.B #$14                           ;87DD98;
    STA.B $34                            ;87DD9A;
    RTS                                  ;87DD9C;

CODE_87DD9D:
    JSL.L CODE_828321                    ;87DD9D;
    BNE CODE_87DDCD                      ;87DDA1;
    INC.W $0000,X                        ;87DDA3;
    LDA.B #$55                           ;87DDA6;
    STA.W $000A,X                        ;87DDA8;
    LDA.B $11                            ;87DDAB;
    AND.B #$40                           ;87DDAD;
    STA.W $0011,X                        ;87DDAF;
    ASL A                                ;87DDB2;
    ASL A                                ;87DDB3;
    REP #$20                             ;87DDB4;
    LDA.W #$0012                         ;87DDB6;
    BCS CODE_87DDBE                      ;87DDB9;
    LDA.W #$FFEE                         ;87DDBB;

CODE_87DDBE:
    CLC                                  ;87DDBE;
    ADC.B $05                            ;87DDBF;
    STA.W $0005,X                        ;87DDC1;
    LDA.B $08                            ;87DDC4;
    SEC                                  ;87DDC6;
    SBC.W #$0006                         ;87DDC7;
    STA.W $0008,X                        ;87DDCA;

CODE_87DDCD:
    SEP #$30                             ;87DDCD;

CODE_87DDCF:
    RTS                                  ;87DDCF;

CODE_87DDD0:
    JSL.L CODE_848EEA                    ;87DDD0;
    JSL.L CODE_84AC9B                    ;87DDD4;
    DEC.B $34                            ;87DDD8;
    BNE CODE_87DDDF                      ;87DDDA;
    JSR.W CODE_87DE1F                    ;87DDDC;

CODE_87DDDF:
    RTS                                  ;87DDDF;

CODE_87DDE0:
    JSL.L CODE_84A66D                    ;87DDE0;
    BPL CODE_87DE14                      ;87DDE4;
    LDA.W $1F7A                          ;87DDE6;
    CMP.B #$09                           ;87DDE9;
    BCC CODE_87DE10                      ;87DDEB;
    LDA.B #$1B                           ;87DDED;
    JSL.L CODE_8087A2                    ;87DDEF;
    LDA.B #$F5                           ;87DDF3;
    LDY.B #$03                           ;87DDF5;
    JSL.L CODE_80887F                    ;87DDF7;
    REP #$20                             ;87DDFB;
    LDA.W #$1200                         ;87DDFD;
    STA.W $1E60                          ;87DE00;
    LDA.W #$0D00                         ;87DE03;
    STA.W $1E5E                          ;87DE06;
    SEP #$20                             ;87DE09;
    LDA.B #$02                           ;87DE0B;
    STA.W $1F81                          ;87DE0D;

CODE_87DE10:
    JML.L CODE_828398                    ;87DE10;

CODE_87DE14:
    LDA.B $03                            ;87DE14;
    CMP.B #$14                           ;87DE16;
    BCS CODE_87DE1E                      ;87DE18;
    JML.L CODE_8280B4                    ;87DE1A;

CODE_87DE1E:
    RTL                                  ;87DE1E;

CODE_87DE1F:
    LDA.B $02                            ;87DE1F;
    ASL A                                ;87DE21;
    CLC                                  ;87DE22;
    ADC.B #$03                           ;87DE23;
    TAX                                  ;87DE25;
    LDY.B #$03                           ;87DE26;
    JSL.L CODE_849086                    ;87DE28;
    AND.B #$1F                           ;87DE2C;

CODE_87DE2E:
    SEC                                  ;87DE2E;
    SBC.W DATA8_86D41B,X                 ;87DE2F;
    BCC CODE_87DE38                      ;87DE32;
    DEX                                  ;87DE34;
    DEY                                  ;87DE35;
    BNE CODE_87DE2E                      ;87DE36;

CODE_87DE38:
    TYA                                  ;87DE38;
    ASL A                                ;87DE39;
    STA.B $02                            ;87DE3A;
    STZ.B $03                            ;87DE3C;
    RTS                                  ;87DE3E;

CODE_87DE3F:
    LDA.B $17                            ;87DE3F;
    BPL CODE_87DE62                      ;87DE41;
    AND.B #$7F                           ;87DE43;
    STA.B $17                            ;87DE45;
    LDA.B $0F                            ;87DE47;
    BPL CODE_87DE62                      ;87DE49;
    LDA.B $38                            ;87DE4B;
    CMP.B #$05                           ;87DE4D;
    BNE CODE_87DE58                      ;87DE4F;
    LDA.B #$58                           ;87DE51;
    JSL.L CODE_8088A2                    ;87DE53;
    RTS                                  ;87DE57;

CODE_87DE58:
    CMP.B #$01                           ;87DE58;
    BNE CODE_87DE62                      ;87DE5A;
    LDA.B #$59                           ;87DE5C;
    JSL.L CODE_8088A2                    ;87DE5E;

CODE_87DE62:
    RTS                                  ;87DE62;

CODE_87DE63:
    DEC.B $39                            ;87DE63;
    BNE CODE_87DE92                      ;87DE65;
    LDA.B #$03                           ;87DE67;
    STA.B $39                            ;87DE69;
    JSL.L CODE_8282D3                    ;87DE6B;
    BNE CODE_87DE90                      ;87DE6F;
    INC.W $0000,X                        ;87DE71;
    LDA.B #$29                           ;87DE74;
    STA.W $000A,X                        ;87DE76;
    LDA.B $11                            ;87DE79;
    AND.B #$40                           ;87DE7B;
    STA.W $0011,X                        ;87DE7D;
    REP #$20                             ;87DE80;
    LDA.B $05                            ;87DE82;
    STA.W $0005,X                        ;87DE84;
    LDA.B $08                            ;87DE87;
    CLC                                  ;87DE89;
    ADC.W #$001A                         ;87DE8A;
    STA.W $0008,X                        ;87DE8D;

CODE_87DE90:
    SEP #$30                             ;87DE90;

CODE_87DE92:
    RTS                                  ;87DE92;

CODE_87DE93:
    LDX.B $01                            ;87DE93;
    JSR.W (PTR16_87DEF9,X)               ;87DE95;
    LDA.B $27                            ;87DE98;
    BEQ CODE_87DED2                      ;87DE9A;
    JSL.L CODE_849B43                    ;87DE9C;
    BEQ CODE_87DEC8                      ;87DEA0;
    LDA.B $27                            ;87DEA2;
    AND.B #$7F                           ;87DEA4;
    BNE CODE_87DEC0                      ;87DEA6;
    REP #$20                             ;87DEA8;
    LDA.B $08                            ;87DEAA;
    CLC                                  ;87DEAC;
    ADC.W #$0020                         ;87DEAD;
    STA.B $08                            ;87DEB0;
    SEP #$20                             ;87DEB2;
    JSL.L CODE_84A4AB                    ;87DEB4;
    LDA.B #$01                           ;87DEB8;
    JSL.L CODE_84A37F                    ;87DEBA;
    BRA CODE_87DEF4                      ;87DEBE;

CODE_87DEC0:
    LDA.B #$F1                           ;87DEC0;
    AND.B $11                            ;87DEC2;
    STA.B $11                            ;87DEC4;
    BRA CODE_87DECE                      ;87DEC6;

CODE_87DEC8:
    LDA.B $34                            ;87DEC8;
    ORA.B $11                            ;87DECA;
    STA.B $11                            ;87DECC;

CODE_87DECE:
    JSL.L CODE_849B03                    ;87DECE;

CODE_87DED2:
    REP #$20                             ;87DED2;
    LDA.B $08                            ;87DED4;
    CLC                                  ;87DED6;
    ADC.W #$0020                         ;87DED7;
    STA.B $08                            ;87DEDA;
    SEP #$20                             ;87DEDC;
    JSL.L CODE_8280B4                    ;87DEDE;
    REP #$20                             ;87DEE2;
    LDA.B $08                            ;87DEE4;
    SEC                                  ;87DEE6;
    SBC.W #$0020                         ;87DEE7;
    STA.B $08                            ;87DEEA;
    SEP #$20                             ;87DEEC;
    JSL.L CODE_82806E                    ;87DEEE;
    BCC CODE_87DEF8                      ;87DEF2;

CODE_87DEF4:
    JSL.L CODE_828387                    ;87DEF4;

CODE_87DEF8:
    RTL                                  ;87DEF8;

PTR16_87DEF9:
    dw CODE_87DEFF                       ;87DEF9;
    dw CODE_87DF31                       ;87DEFB;
    dw CODE_87DFB0                       ;87DEFD;

CODE_87DEFF:
    JSL.L CODE_82827D                    ;87DEFF;
    LDA.B $11                            ;87DF03;
    AND.B #$0E                           ;87DF05;
    STA.B $34                            ;87DF07;
    JSL.L CODE_879ED4                    ;87DF09;
    LDA.B #$08                           ;87DF0D;
    STA.B $27                            ;87DF0F;
    LDA.B #$01                           ;87DF11;
    STA.B $28                            ;87DF13;
    LDA.B #$03                           ;87DF15;
    STA.B $26                            ;87DF17;
    LDA.B #$04                           ;87DF19;
    STA.B $12                            ;87DF1B;
    REP #$20                             ;87DF1D;
    LDA.W #$D42F                         ;87DF1F;
    STA.B $20                            ;87DF22;
    SEP #$20                             ;87DF24;
    LDA.B #$14                           ;87DF26;
    STA.B $33                            ;87DF28;
    LDA.B #$01                           ;87DF2A;
    JSL.L CODE_848F07                    ;87DF2C;
    RTS                                  ;87DF30;

CODE_87DF31:
    LDA.B $33                            ;87DF31;
    CMP.B #$15                           ;87DF33;
    BMI CODE_87DF3B                      ;87DF35;
    JSL.L CODE_879ED4                    ;87DF37;

CODE_87DF3B:
    LDA.B $33                            ;87DF3B;
    CMP.B #$14                           ;87DF3D;
    BEQ CODE_87DF56                      ;87DF3F;
    DEC.B $33                            ;87DF41;
    BNE CODE_87DFAF                      ;87DF43;
    LDA.B #$04                           ;87DF45;
    STA.B $01                            ;87DF47;
    LDA.B #$30                           ;87DF49;
    STA.B $33                            ;87DF4B;
    LDA.B #$00                           ;87DF4D;
    JSL.L CODE_848F07                    ;87DF4F;
    JMP.W CODE_87DFAF                    ;87DF53;

CODE_87DF56:
    DEC.B $33                            ;87DF56;
    JSL.L CODE_84A07C                    ;87DF58;
    STA.B $35                            ;87DF5C;
    LDA.B $11                            ;87DF5E;
    AND.B #$40                           ;87DF60;
    BNE CODE_87DF71                      ;87DF62;
    LDA.B #$14                           ;87DF64;
    STA.W $0000                          ;87DF66;
    LDA.B #$1C                           ;87DF69;
    STA.W $0002                          ;87DF6B;
    JMP.W CODE_87DF7B                    ;87DF6E;

CODE_87DF71:
    LDA.B #$04                           ;87DF71;
    STA.W $0000                          ;87DF73;
    LDA.B #$0C                           ;87DF76;
    STA.W $0002                          ;87DF78;

CODE_87DF7B:
    LDA.B $35                            ;87DF7B;
    CMP.W $0000                          ;87DF7D;
    BMI CODE_87DFAB                      ;87DF80;
    LDA.B $35                            ;87DF82;
    CMP.W $0002                          ;87DF84;
    BPL CODE_87DFAB                      ;87DF87;
    LDA.B $35                            ;87DF89;
    ASL A                                ;87DF8B;
    ASL A                                ;87DF8C;
    TAX                                  ;87DF8D;
    REP #$20                             ;87DF8E;
    LDA.W DATA8_86EE37,X                 ;87DF90;
    ASL A                                ;87DF93;
    BPL CODE_87DF99                      ;87DF94;
    ORA.W #$F000                         ;87DF96;

CODE_87DF99:
    STA.B $1A                            ;87DF99;
    LDA.W DATA8_86EE39,X                 ;87DF9B;
    ASL A                                ;87DF9E;
    BPL CODE_87DFA4                      ;87DF9F;
    ORA.W #$F000                         ;87DFA1;

CODE_87DFA4:
    STA.B $1C                            ;87DFA4;
    SEP #$20                             ;87DFA6;
    JMP.W CODE_87DFAF                    ;87DFA8;

CODE_87DFAB:
    LDA.B #$5A                           ;87DFAB;
    STA.B $33                            ;87DFAD;

CODE_87DFAF:
    RTS                                  ;87DFAF;

CODE_87DFB0:
    DEC.B $33                            ;87DFB0;
    BNE CODE_87DFC8                      ;87DFB2;
    LDA.B #$02                           ;87DFB4;
    STA.B $01                            ;87DFB6;
    LDA.B #$5A                           ;87DFB8;
    STA.B $33                            ;87DFBA;
    JSR.W CODE_87DFCD                    ;87DFBC;
    LDA.B #$01                           ;87DFBF;
    JSL.L CODE_848F07                    ;87DFC1;
    JMP.W CODE_87DFCC                    ;87DFC5;

CODE_87DFC8:
    JSL.L CODE_848EEA                    ;87DFC8;

CODE_87DFCC:
    RTS                                  ;87DFCC;

CODE_87DFCD:
    REP #$10                             ;87DFCD;
    JSL.L CODE_828358                    ;87DFCF;
    BNE CODE_87E034                      ;87DFD3;
    INC.W $0000,X                        ;87DFD5;
    LDA.B #$23                           ;87DFD8;
    STA.W $000A,X                        ;87DFDA;
    LDA.B $18                            ;87DFDD;
    STA.W $0018,X                        ;87DFDF;
    LDA.B $34                            ;87DFE2;
    ORA.B $11                            ;87DFE4;
    STA.W $0011,X                        ;87DFE6;
    LDA.B $16                            ;87DFE9;
    STA.W $0016,X                        ;87DFEB;
    LDA.B #$02                           ;87DFEE;
    STA.W $000B,X                        ;87DFF0;
    LDA.B $11                            ;87DFF3;
    AND.B #$40                           ;87DFF5;
    BEQ CODE_87E00A                      ;87DFF7;
    REP #$20                             ;87DFF9;
    LDA.W #$FFF0                         ;87DFFB;
    STA.W $0000                          ;87DFFE;
    LDA.W #$0000                         ;87E001;
    STA.W $0002                          ;87E004;
    JMP.W CODE_87E018                    ;87E007;

CODE_87E00A:
    REP #$20                             ;87E00A;
    LDA.W #$FFF0                         ;87E00C;
    STA.W $0000                          ;87E00F;
    LDA.W #$0000                         ;87E012;
    STA.W $0002                          ;87E015;

CODE_87E018:
    LDA.B $05                            ;87E018;
    CLC                                  ;87E01A;
    ADC.W $0002                          ;87E01B;
    STA.W $0005,X                        ;87E01E;
    LDA.B $08                            ;87E021;
    SEC                                  ;87E023;
    SBC.W $0000                          ;87E024;
    STA.W $0008,X                        ;87E027;
    LDA.B $1A                            ;87E02A;
    STA.W $001A,X                        ;87E02C;
    LDA.B $1C                            ;87E02F;
    STA.W $001C,X                        ;87E031;

CODE_87E034:
    SEP #$30                             ;87E034;
    RTS                                  ;87E036;

CODE_87E037:
    LDA.B $35                            ;87E037;
    TSB.B $11                            ;87E039;
    LDX.B $01                            ;87E03B;
    JMP.W (PTR16_87E040,X)               ;87E03D;

PTR16_87E040:
    dw CODE_87E046                       ;87E040;
    dw CODE_87E097                       ;87E042;
    dw CODE_87E1C5                       ;87E044;

CODE_87E046:
    REP #$20                             ;87E046;
    LDA.B $05                            ;87E048;
    SEC                                  ;87E04A;
    SBC.W $0BAD                          ;87E04B;
    SEP #$20                             ;87E04E;
    BCS CODE_87E056                      ;87E050;
    JML.L CODE_828387                    ;87E052;

CODE_87E056:
    JSL.L CODE_82827D                    ;87E056;
    LDA.B $11                            ;87E05A;
    AND.B #$0E                           ;87E05C;
    STA.B $35                            ;87E05E;
    LDA.B #$01                           ;87E060;
    STA.B $26                            ;87E062;
    LDA.B #$04                           ;87E064;
    STA.B $27                            ;87E066;
    LDA.B #$0C                           ;87E068;
    STA.B $1F                            ;87E06A;
    LDA.B #$40                           ;87E06C;
    STA.B $1E                            ;87E06E;
    REP #$20                             ;87E070;
    LDA.W #$FF80                         ;87E072;
    STA.B $1A                            ;87E075;
    STZ.B $1C                            ;87E077;
    LDA.W #$D439                         ;87E079;
    STA.B $20                            ;87E07C;
    SEP #$20                             ;87E07E;
    LDA.B #$00                           ;87E080;
    JSL.L CODE_848F07                    ;87E082;
    LDA.B #$02                           ;87E086;
    STA.B $01                            ;87E088;
    STZ.B $02                            ;87E08A;
    STZ.B $33                            ;87E08C;
    STZ.B $34                            ;87E08E;
    STZ.B $2B                            ;87E090;
    STZ.B $2F                            ;87E092;
    STZ.B $30                            ;87E094;
    RTL                                  ;87E096;

CODE_87E097:
    LDA.B $34                            ;87E097;
    CMP.B #$1C                           ;87E099;
    BNE CODE_87E0E3                      ;87E09B;
    STZ.B $34                            ;87E09D;
    INC.B $33                            ;87E09F;
    LDA.B $33                            ;87E0A1;
    CMP.B #$02                           ;87E0A3;
    BEQ CODE_87E0C7                      ;87E0A5;
    CMP.B #$01                           ;87E0A7;
    BNE CODE_87E0E3                      ;87E0A9;
    REP #$21                             ;87E0AB;
    LDA.B $08                            ;87E0AD;
    SBC.W #$0003                         ;87E0AF;
    STA.B $08                            ;87E0B2;
    LDA.W #$D443                         ;87E0B4;
    STA.B $20                            ;87E0B7;
    SEP #$20                             ;87E0B9;
    LDA.B #$02                           ;87E0BB;
    STA.B $26                            ;87E0BD;
    LDA.B #$01                           ;87E0BF;
    JSL.L CODE_848F07                    ;87E0C1;
    BRA CODE_87E0EC                      ;87E0C5;

CODE_87E0C7:
    REP #$21                             ;87E0C7;
    LDA.B $08                            ;87E0C9;
    SBC.W #$0007                         ;87E0CB;
    STA.B $08                            ;87E0CE;
    LDA.W #$D44D                         ;87E0D0;
    STA.B $20                            ;87E0D3;
    SEP #$20                             ;87E0D5;
    LDA.B #$03                           ;87E0D7;
    STA.B $26                            ;87E0D9;
    LDA.B #$02                           ;87E0DB;
    JSL.L CODE_848F07                    ;87E0DD;
    BRA CODE_87E0EC                      ;87E0E1;

CODE_87E0E3:
    LDX.B $02                            ;87E0E3;
    JSR.W (PTR16_87E11B,X)               ;87E0E5;
    JSL.L CODE_848EEA                    ;87E0E8;

CODE_87E0EC:
    JSL.L CODE_8491BE                    ;87E0EC;
    LDA.B $2B                            ;87E0F0;
    BIT.B #$02                           ;87E0F2;
    BNE CODE_87E102                      ;87E0F4;
    JSL.L CODE_849B03                    ;87E0F6;
    JSL.L CODE_849B43                    ;87E0FA;
    BEQ CODE_87E10D                      ;87E0FE;
    BPL CODE_87E109                      ;87E100;

CODE_87E102:
    LDA.B #$04                           ;87E102;
    STA.B $01                            ;87E104;
    STZ.B $02                            ;87E106;
    RTL                                  ;87E108;

CODE_87E109:
    LDA.B #$0E                           ;87E109;
    TRB.B $11                            ;87E10B;

CODE_87E10D:
    JSL.L CODE_82806E                    ;87E10D;
    BCC CODE_87E117                      ;87E111;
    JML.L CODE_828387                    ;87E113;

CODE_87E117:
    JML.L CODE_8280B4                    ;87E117;

PTR16_87E11B:
    dw CODE_87E11F                       ;87E11B;
    dw CODE_87E167                       ;87E11D;

CODE_87E11F:
    REP #$20                             ;87E11F;
    LDA.B $1C                            ;87E121;
    BPL CODE_87E12F                      ;87E123;
    CMP.W #$F800                         ;87E125;
    BCS CODE_87E12F                      ;87E128;
    LDA.W #$F840                         ;87E12A;
    STA.B $1C                            ;87E12D;

CODE_87E12F:
    SEP #$20                             ;87E12F;
    JSL.L CODE_8281E8                    ;87E131;
    LDA.B $1D                            ;87E135;
    BPL CODE_87E164                      ;87E137;
    LDA.B $2B                            ;87E139;
    BIT.B #$04                           ;87E13B;
    BEQ CODE_87E164                      ;87E13D;
    LDA.B #$02                           ;87E13F;
    STA.B $02                            ;87E141;
    REP #$20                             ;87E143;
    LDA.B $1C                            ;87E145;
    CMP.W #$FC00                         ;87E147;
    BCC CODE_87E150                      ;87E14A;
    STZ.B $1C                            ;87E14C;
    BRA CODE_87E157                      ;87E14E;

CODE_87E150:
    EOR.W #$FFFF                         ;87E150;
    INC A                                ;87E153;
    LSR A                                ;87E154;
    STA.B $1C                            ;87E155;

CODE_87E157:
    CMP.W #$FD00                         ;87E157;
    BCS CODE_87E164                      ;87E15A;
    SEP #$20                             ;87E15C;
    LDA.B #$57                           ;87E15E;
    JSL.L CODE_8088A2                    ;87E160;

CODE_87E164:
    SEP #$20                             ;87E164;
    RTS                                  ;87E166;

CODE_87E167:
    REP #$20                             ;87E167;
    LDA.B $1A                            ;87E169;
    CMP.W #$FC00                         ;87E16B;
    BCS CODE_87E175                      ;87E16E;
    LDA.W #$FC18                         ;87E170;
    STA.B $1A                            ;87E173;

CODE_87E175:
    SEP #$20                             ;87E175;
    JSL.L CODE_828174                    ;87E177;
    LDA.B $2B                            ;87E17B;
    BIT.B #$04                           ;87E17D;
    BNE CODE_87E185                      ;87E17F;
    STZ.B $02                            ;87E181;
    BRA CODE_87E1C4                      ;87E183;

CODE_87E185:
    REP #$10                             ;87E185;
    LDX.B $1C                            ;87E187;
    BPL CODE_87E18F                      ;87E189;
    STZ.B $1C                            ;87E18B;
    STZ.B $1D                            ;87E18D;

CODE_87E18F:
    LDA.B $34                            ;87E18F;
    AND.B #$03                           ;87E191;
    BNE CODE_87E1C0                      ;87E193;
    JSL.L CODE_8282D3                    ;87E195;
    BNE CODE_87E1C0                      ;87E199;
    INC.W $0000,X                        ;87E19B;
    LDA.B #$10                           ;87E19E;
    STA.W $000A,X                        ;87E1A0;
    LDA.B #$27                           ;87E1A3;
    STA.W $000B,X                        ;87E1A5;
    LDA.B $11                            ;87E1A8;
    STA.W $0011,X                        ;87E1AA;
    REP #$21                             ;87E1AD;
    LDA.B $05                            ;87E1AF;
    ADC.W #$0010                         ;87E1B1;
    STA.W $0005,X                        ;87E1B4;
    LDA.B $08                            ;87E1B7;
    CLC                                  ;87E1B9;
    ADC.W #$0004                         ;87E1BA;
    STA.W $0008,X                        ;87E1BD;

CODE_87E1C0:
    SEP #$30                             ;87E1C0;
    INC.B $34                            ;87E1C2;

CODE_87E1C4:
    RTS                                  ;87E1C4;

CODE_87E1C5:
    REP #$10                             ;87E1C5;
    LDA.B $33                            ;87E1C7;
    AND.B #$03                           ;87E1C9;
    ASL A                                ;87E1CB;
    ADC.B #$06                           ;87E1CC;
    STA.B $33                            ;87E1CE;

CODE_87E1D0:
    JSL.L CODE_8282D3                    ;87E1D0;
    BNE CODE_87E22E                      ;87E1D4;
    INC.W $0000,X                        ;87E1D6;
    LDA.B #$2B                           ;87E1D9;
    STA.W $000A,X                        ;87E1DB;
    LDA.B $11                            ;87E1DE;
    STA.W $0011,X                        ;87E1E0;
    JSL.L CODE_849086                    ;87E1E3;
    LDA.B #$00                           ;87E1E7;
    XBA                                  ;87E1E9;
    AND.B #$03                           ;87E1EA;
    CLC                                  ;87E1EC;
    ADC.B #$48                           ;87E1ED;
    STA.W $000B,X                        ;87E1EF;
    REP #$20                             ;87E1F2;
    JSL.L CODE_849086                    ;87E1F4;
    AND.W #$07FF                         ;87E1F8;
    LSR A                                ;87E1FB;
    BCC CODE_87E202                      ;87E1FC;
    EOR.W #$FFFF                         ;87E1FE;
    INC A                                ;87E201;

CODE_87E202:
    STA.W $001A,X                        ;87E202;
    JSL.L CODE_849086                    ;87E205;
    AND.W #$03FF                         ;87E209;
    CLC                                  ;87E20C;
    ADC.W #$0200                         ;87E20D;
    STA.W $001C,X                        ;87E210;
    LDA.B $05                            ;87E213;
    STA.W $0005,X                        ;87E215;
    LDA.B $08                            ;87E218;
    STA.W $0008,X                        ;87E21A;
    STZ.W $000C,X                        ;87E21D;
    SEP #$20                             ;87E220;
    STZ.W $001F,X                        ;87E222;
    LDA.B #$40                           ;87E225;
    STA.W $001E,X                        ;87E227;
    DEC.B $33                            ;87E22A;
    BNE CODE_87E1D0                      ;87E22C;

CODE_87E22E:
    SEP #$30                             ;87E22E;
    LDA.B #$57                           ;87E230;
    JSL.L CODE_8088A2                    ;87E232;
    JML.L CODE_828387                    ;87E236;

CODE_87E23A:
    LDA.B $01                            ;87E23A;
    BNE CODE_87E271                      ;87E23C;
    LDA.B $11                            ;87E23E;
    ORA.B #$30                           ;87E240;
    PHA                                  ;87E242;
    JSL.L CODE_82827D                    ;87E243;
    PLA                                  ;87E247;
    TSB.B $11                            ;87E248;
    ASL A                                ;87E24A;
    ASL A                                ;87E24B;
    REP #$20                             ;87E24C;
    LDA.W #$0200                         ;87E24E;
    BCS CODE_87E256                      ;87E251;
    LDA.W #$FE00                         ;87E253;

CODE_87E256:
    STA.B $1A                            ;87E256;
    STZ.B $1C                            ;87E258;
    LDA.W #$D457                         ;87E25A;
    STA.B $20                            ;87E25D;
    SEP #$20                             ;87E25F;
    LDA.B #$40                           ;87E261;
    STA.B $1E                            ;87E263;
    STZ.B $12                            ;87E265;
    LDA.B #$07                           ;87E267;
    JSL.L CODE_848F07                    ;87E269;
    JML.L CODE_8280B4                    ;87E26D;

CODE_87E271:
    JSL.L CODE_8281E8                    ;87E271;
    JSL.L CODE_8491BE                    ;87E275;
    LDA.B $2B                            ;87E279;
    AND.B #$04                           ;87E27B;
    BEQ CODE_87E2AC                      ;87E27D;
    LDA.B #$03                           ;87E27F;
    STA.B $33                            ;87E281;

CODE_87E283:
    JSL.L CODE_828321                    ;87E283;
    BNE CODE_87E2A8                      ;87E287;
    INC.W $0000,X                        ;87E289;
    LDA.B #$56                           ;87E28C;
    STA.W $000A,X                        ;87E28E;
    LDA.B $33                            ;87E291;
    STA.W $000B,X                        ;87E293;
    REP #$20                             ;87E296;
    LDA.B $05                            ;87E298;
    STA.W $0005,X                        ;87E29A;
    LDA.B $08                            ;87E29D;
    STA.W $0008,X                        ;87E29F;
    SEP #$20                             ;87E2A2;
    DEC.B $33                            ;87E2A4;
    BPL CODE_87E283                      ;87E2A6;

CODE_87E2A8:
    SEP #$30                             ;87E2A8;
    BRA CODE_87E2B4                      ;87E2AA;

CODE_87E2AC:
    JSL.L CODE_8280B4                    ;87E2AC;
    LDA.B $0E                            ;87E2B0;
    BNE CODE_87E2B8                      ;87E2B2;

CODE_87E2B4:
    JML.L CODE_828398                    ;87E2B4;

CODE_87E2B8:
    RTL                                  ;87E2B8;

CODE_87E2B9:
    LDX.B $01                            ;87E2B9;
    JMP.W (PTR16_87E2BE,X)               ;87E2BB;

PTR16_87E2BE:
    dw CODE_87E2C4                       ;87E2BE;
    dw CODE_87E308                       ;87E2C0;
    dw CODE_87E32F                       ;87E2C2;

CODE_87E2C4:
    JSL.L CODE_82827D                    ;87E2C4;
    LDA.B #$30                           ;87E2C8;
    TSB.B $11                            ;87E2CA;
    STZ.B $12                            ;87E2CC;
    LDA.B $0B                            ;87E2CE;
    ASL A                                ;87E2D0;
    ASL A                                ;87E2D1;
    ASL A                                ;87E2D2;
    CLC                                  ;87E2D3;
    ADC.B #$04                           ;87E2D4;
    ASL A                                ;87E2D6;
    ASL A                                ;87E2D7;
    TAX                                  ;87E2D8;
    REP #$20                             ;87E2D9;
    LDA.W DATA8_86EE37,X                 ;87E2DB;
    STA.B $1A                            ;87E2DE;
    LDA.W DATA8_86EE39,X                 ;87E2E0;
    STA.B $1C                            ;87E2E3;
    LDA.W #$D461                         ;87E2E5;
    STA.B $20                            ;87E2E8;
    SEP #$20                             ;87E2EA;
    LDA.B $1A                            ;87E2EC;
    BMI CODE_87E2F4                      ;87E2EE;
    LDA.B #$40                           ;87E2F0;
    TSB.B $11                            ;87E2F2;

CODE_87E2F4:
    LDA.B #$09                           ;87E2F4;
    JSL.L CODE_848F07                    ;87E2F6;
    LDA.B #$10                           ;87E2FA;
    STA.B $33                            ;87E2FC;
    LDA.B #$01                           ;87E2FE;
    STA.B $27                            ;87E300;
    STA.B $26                            ;87E302;
    JML.L CODE_8280B4                    ;87E304;

CODE_87E308:
    DEC.B $33                            ;87E308;
    BNE CODE_87E32F                      ;87E30A;
    LDA.B #$04                           ;87E30C;
    STA.B $01                            ;87E30E;
    JSL.L CODE_84A07C                    ;87E310;
    ASL A                                ;87E314;
    ASL A                                ;87E315;
    TAX                                  ;87E316;
    REP #$20                             ;87E317;
    LDA.W DATA8_86EE37,X                 ;87E319;
    STA.B $1A                            ;87E31C;
    LDA.W DATA8_86EE39,X                 ;87E31E;
    STA.B $1C                            ;87E321;
    SEP #$20                             ;87E323;
    LDA.B #$40                           ;87E325;
    TRB.B $11                            ;87E327;
    LDX.B $1B                            ;87E329;
    BMI CODE_87E32F                      ;87E32B;
    TSB.B $11                            ;87E32D;

CODE_87E32F:
    JSL.L CODE_82820A                    ;87E32F;
    JSL.L CODE_848EEA                    ;87E333;
    JSL.L CODE_849B03                    ;87E337;
    BNE CODE_87E350                      ;87E33B;
    JSL.L CODE_849B43                    ;87E33D;
    BNE CODE_87E34C                      ;87E341;
    JSL.L CODE_8280B4                    ;87E343;
    LDA.B $0E                            ;87E347;
    BEQ CODE_87E350                      ;87E349;
    RTL                                  ;87E34B;

CODE_87E34C:
    JSL.L CODE_84A4AB                    ;87E34C;

CODE_87E350:
    JML.L CODE_828398                    ;87E350;

CODE_87E354:
    LDX.B $01                            ;87E354;
    JSR.W (PTR16_87E38D,X)               ;87E356;
    LDA.B $3A                            ;87E359;
    BNE CODE_87E388                      ;87E35B;
    LDA.B $27                            ;87E35D;
    BEQ CODE_87E381                      ;87E35F;
    JSL.L CODE_849B43                    ;87E361;
    BEQ CODE_87E37B                      ;87E365;
    LDA.B $27                            ;87E367;
    AND.B #$7F                           ;87E369;
    BNE CODE_87E373                      ;87E36B;
    LDA.B #$08                           ;87E36D;
    STA.B $01                            ;87E36F;
    BRA CODE_87E38C                      ;87E371;

CODE_87E373:
    LDA.B #$F1                           ;87E373;
    AND.B $11                            ;87E375;
    STA.B $11                            ;87E377;
    BRA CODE_87E381                      ;87E379;

CODE_87E37B:
    LDA.B $37                            ;87E37B;
    ORA.B $11                            ;87E37D;
    STA.B $11                            ;87E37F;

CODE_87E381:
    JSL.L CODE_8280B4                    ;87E381;
    JMP.W CODE_87E38C                    ;87E385;

CODE_87E388:
    JSL.L CODE_828398                    ;87E388;

CODE_87E38C:
    RTL                                  ;87E38C;

PTR16_87E38D:
    dw CODE_87E397                       ;87E38D;
    dw CODE_87E3C8                       ;87E38F;
    dw CODE_87E3E3                       ;87E391;
    dw CODE_87E446                       ;87E393;
    dw CODE_87E462                       ;87E395;

CODE_87E397:
    JSL.L CODE_82827D                    ;87E397;
    LDA.B $11                            ;87E39B;
    AND.B #$0E                           ;87E39D;
    STA.B $37                            ;87E39F;
    STZ.B $3A                            ;87E3A1;
    LDA.B #$10                           ;87E3A3;
    STA.B $27                            ;87E3A5;
    LDA.B #$11                           ;87E3A7;
    STA.B $28                            ;87E3A9;
    LDA.B #$08                           ;87E3AB;
    STA.B $12                            ;87E3AD;
    LDA.B #$CB                           ;87E3AF;
    STA.B $3B                            ;87E3B1;
    REP #$20                             ;87E3B3;
    LDA.W #$003C                         ;87E3B5;
    STA.B $33                            ;87E3B8;
    LDA.W #$D465                         ;87E3BA;
    STA.B $20                            ;87E3BD;
    SEP #$20                             ;87E3BF;
    LDA.B #$06                           ;87E3C1;
    JSL.L CODE_848F07                    ;87E3C3;
    RTS                                  ;87E3C7;

CODE_87E3C8:
    REP #$20                             ;87E3C8;
    DEC.B $33                            ;87E3CA;
    BNE CODE_87E3E0                      ;87E3CC;
    LDA.W #$0120                         ;87E3CE;
    STA.B $33                            ;87E3D1;
    SEP #$20                             ;87E3D3;
    LDA.B #$04                           ;87E3D5;
    STA.B $01                            ;87E3D7;
    LDA.B #$60                           ;87E3D9;
    STA.B $35                            ;87E3DB;
    JMP.W CODE_87E3E2                    ;87E3DD;

CODE_87E3E0:
    SEP #$20                             ;87E3E0;

CODE_87E3E2:
    RTS                                  ;87E3E2;

CODE_87E3E3:
    REP #$20                             ;87E3E3;
    DEC.B $33                            ;87E3E5;
    BNE CODE_87E3F9                      ;87E3E7;

CODE_87E3E9:
    REP #$20                             ;87E3E9;
    LDA.W #$0120                         ;87E3EB;
    STA.B $33                            ;87E3EE;
    SEP #$20                             ;87E3F0;
    LDA.B #$06                           ;87E3F2;
    STA.B $01                            ;87E3F4;
    JMP.W CODE_87E443                    ;87E3F6;

CODE_87E3F9:
    SEP #$20                             ;87E3F9;
    LDA.B #$3A                           ;87E3FB;
    STA.B $0A                            ;87E3FD;
    JSL.L CODE_84A1D0                    ;87E3FF;
    LDA.B #$57                           ;87E403;
    STA.B $0A                            ;87E405;
    LDA.B #$0C                           ;87E407;
    STA.W $0000                          ;87E409;
    TYA                                  ;87E40C;
    CMP.W $0000                          ;87E40D;
    BPL CODE_87E3E9                      ;87E410;
    DEC.B $35                            ;87E412;
    BNE CODE_87E443                      ;87E414;
    LDA.B #$60                           ;87E416;
    STA.B $35                            ;87E418;
    SEP #$20                             ;87E41A;
    JSL.L CODE_828321                    ;87E41C;
    BNE CODE_87E443                      ;87E420;
    REP #$20                             ;87E422;
    LDA.B $05                            ;87E424;
    STA.W $0005,X                        ;87E426;
    LDA.B $08                            ;87E429;
    CLC                                  ;87E42B;
    ADC.W #$0026                         ;87E42C;
    STA.W $0008,X                        ;87E42F;
    SEP #$20                             ;87E432;
    LDA.B #$3A                           ;87E434;
    STA.W $000A,X                        ;87E436;
    INC.W $0000,X                        ;87E439;
    LDA.B $0B                            ;87E43C;
    LDA.B #$12                           ;87E43E;
    STA.W $000B,X                        ;87E440;

CODE_87E443:
    SEP #$30                             ;87E443;
    RTS                                  ;87E445;

CODE_87E446:
    REP #$20                             ;87E446;
    DEC.B $33                            ;87E448;
    BNE CODE_87E45F                      ;87E44A;
    LDA.W #$0180                         ;87E44C;
    STA.B $33                            ;87E44F;
    SEP #$20                             ;87E451;
    LDA.B #$04                           ;87E453;
    STA.B $01                            ;87E455;
    LDA.B #$11                           ;87E457;
    STA.B $28                            ;87E459;
    LDA.B #$60                           ;87E45B;
    STA.B $35                            ;87E45D;

CODE_87E45F:
    SEP #$20                             ;87E45F;
    RTS                                  ;87E461;

CODE_87E462:
    LDA.B #$10                           ;87E462;
    LDX.B #$03                           ;87E464;
    LDY.B #$01                           ;87E466;
    JSL.L CODE_84A31A                    ;87E468;
    JSR.W CODE_87E4A9                    ;87E46C;
    JSR.W CODE_87E504                    ;87E46F;
    REP #$20                             ;87E472;
    LDA.B $05                            ;87E474;
    SEC                                  ;87E476;
    SBC.W #$0030                         ;87E477;
    STA.W $002C                          ;87E47A;
    LDA.B $08                            ;87E47D;
    SEC                                  ;87E47F;
    SBC.W #$0020                         ;87E480;
    STA.W $002E                          ;87E483;
    SEP #$20                             ;87E486;
    LDA.B #$00                           ;87E488;
    STA.B $0B                            ;87E48A;
    JSL.L CODE_848011                    ;87E48C;
    LDA.B #$01                           ;87E490;
    STA.B $3A                            ;87E492;
    JSL.L CODE_84A4AB                    ;87E494;
    REP #$20                             ;87E498;
    LDA.B $05                            ;87E49A;
    SEC                                  ;87E49C;
    SBC.W #$0020                         ;87E49D;
    STA.B $05                            ;87E4A0;
    SEP #$20                             ;87E4A2;
    JSL.L CODE_84A4AB                    ;87E4A4;
    RTS                                  ;87E4A8;

CODE_87E4A9:
    REP #$10                             ;87E4A9;
    LDY.W #$0002                         ;87E4AB;

CODE_87E4AE:
    JSL.L CODE_8282D3                    ;87E4AE;
    BNE CODE_87E503                      ;87E4B2;
    INC.W $0000,X                        ;87E4B4;
    LDA.B #$2B                           ;87E4B7;
    STA.W $000A,X                        ;87E4B9;
    CPY.W #$0002                         ;87E4BC;
    BEQ CODE_87E4D3                      ;87E4BF;
    REP #$20                             ;87E4C1;
    LDA.W #$0024                         ;87E4C3;
    STA.W $0000                          ;87E4C6;
    SEP #$20                             ;87E4C9;
    LDA.B #$D4                           ;87E4CB;
    STA.W $000B,X                        ;87E4CD;
    JMP.W CODE_87E4E2                    ;87E4D0;

CODE_87E4D3:
    REP #$20                             ;87E4D3;
    LDA.W #$FFDC                         ;87E4D5;
    STA.W $0000                          ;87E4D8;
    SEP #$20                             ;87E4DB;
    LDA.B #$D3                           ;87E4DD;
    STA.W $000B,X                        ;87E4DF;

CODE_87E4E2:
    REP #$20                             ;87E4E2;
    LDA.B $05                            ;87E4E4;
    CLC                                  ;87E4E6;
    ADC.W $0000                          ;87E4E7;
    STA.W $0005,X                        ;87E4EA;
    LDA.B $08                            ;87E4ED;
    SEC                                  ;87E4EF;
    SBC.W #$0012                         ;87E4F0;
    STA.W $0008,X                        ;87E4F3;
    STZ.W $000C,X                        ;87E4F6;
    SEP #$20                             ;87E4F9;
    LDA.B $11                            ;87E4FB;
    STA.W $0011,X                        ;87E4FD;
    DEY                                  ;87E500;
    BNE CODE_87E4AE                      ;87E501;

CODE_87E503:
    RTS                                  ;87E503;

CODE_87E504:
    REP #$10                             ;87E504;
    LDY.W #$0019                         ;87E506;

CODE_87E509:
    JSL.L CODE_8282D3                    ;87E509;
    BNE CODE_87E544                      ;87E50D;
    INC.W $0000,X                        ;87E50F;
    LDA.B #$2B                           ;87E512;
    STA.W $000A,X                        ;87E514;
    REP #$20                             ;87E517;
    LDA.B $05                            ;87E519;
    STA.W $0005,X                        ;87E51B;
    LDA.B $08                            ;87E51E;
    STA.W $0008,X                        ;87E520;
    STZ.W $000C,X                        ;87E523;
    SEP #$20                             ;87E526;
    PHY                                  ;87E528;
    JSL.L CODE_849086                    ;87E529;
    REP #$20                             ;87E52D;
    AND.W #$000F                         ;87E52F;
    TAY                                  ;87E532;
    SEP #$20                             ;87E533;
    LDA.W DATA8_86D46A,Y                 ;87E535;
    STA.W $000B,X                        ;87E538;
    PLY                                  ;87E53B;
    LDA.B $11                            ;87E53C;
    STA.W $0011,X                        ;87E53E;
    DEY                                  ;87E541;
    BNE CODE_87E509                      ;87E542;

CODE_87E544:
    SEP #$10                             ;87E544;
    RTS                                  ;87E546;

CODE_87E547:
    LDX.B $01                            ;87E547;
    JSR.W (PTR16_87E58B,X)               ;87E549;
    LDA.B $27                            ;87E54C;
    BEQ CODE_87E574                      ;87E54E;
    JSL.L CODE_849B43                    ;87E550;
    BEQ CODE_87E56A                      ;87E554;
    LDA.B $27                            ;87E556;
    AND.B #$7F                           ;87E558;
    BNE CODE_87E562                      ;87E55A;
    JSL.L CODE_84A4AB                    ;87E55C;
    BRA CODE_87E57B                      ;87E560;

CODE_87E562:
    LDA.B #$F1                           ;87E562;
    AND.B $11                            ;87E564;
    STA.B $11                            ;87E566;
    BRA CODE_87E570                      ;87E568;

CODE_87E56A:
    LDA.B $33                            ;87E56A;
    ORA.B $11                            ;87E56C;
    STA.B $11                            ;87E56E;

CODE_87E570:
    JSL.L CODE_849B03                    ;87E570;

CODE_87E574:
    JSL.L CODE_8280B4                    ;87E574;
    JMP.W CODE_87E58A                    ;87E578;

CODE_87E57B:
    REP #$10                             ;87E57B;
    LDX.B $3A                            ;87E57D;
    LDA.B #$01                           ;87E57F;
    STA.W $003B,X                        ;87E581;
    SEP #$10                             ;87E584;
    JSL.L CODE_828398                    ;87E586;

CODE_87E58A:
    RTL                                  ;87E58A;

PTR16_87E58B:
    dw CODE_87E591                       ;87E58B;
    dw CODE_87E5C5                       ;87E58D;
    dw CODE_87E5FA                       ;87E58F;

CODE_87E591:
    JSL.L CODE_82827D                    ;87E591;
    LDA.B $11                            ;87E595;
    AND.B #$0E                           ;87E597;
    STA.B $33                            ;87E599;
    LDA.B #$04                           ;87E59B;
    STA.B $27                            ;87E59D;
    LDA.B #$01                           ;87E59F;
    STA.B $28                            ;87E5A1;
    LDA.B #$03                           ;87E5A3;
    STA.B $26                            ;87E5A5;
    LDA.B #$04                           ;87E5A7;
    STA.B $12                            ;87E5A9;
    LDA.B #$50                           ;87E5AB;
    STA.B $35                            ;87E5AD;
    STZ.B $3D                            ;87E5AF;
    REP #$20                             ;87E5B1;
    LDA.W #$D4BA                         ;87E5B3;
    STA.B $20                            ;87E5B6;
    SEP #$20                             ;87E5B8;
    LDA.B #$01                           ;87E5BA;
    STA.B $34                            ;87E5BC;
    LDA.B #$00                           ;87E5BE;
    JSL.L CODE_848F07                    ;87E5C0;
    RTS                                  ;87E5C4;

CODE_87E5C5:
    REP #$30                             ;87E5C5;
    LDX.B $3A                            ;87E5C7;
    LDA.W $0008,X                        ;87E5C9;
    SEC                                  ;87E5CC;
    SBC.W $0024,X                        ;87E5CD;
    CLC                                  ;87E5D0;
    ADC.B $08                            ;87E5D1;
    STA.B $08                            ;87E5D3;
    SEP #$30                             ;87E5D5;
    LDA.B $3C                            ;87E5D7;
    BEQ CODE_87E5E6                      ;87E5D9;
    JSR.W CODE_87E62A                    ;87E5DB;
    JSR.W CODE_87E751                    ;87E5DE;
    STZ.B $3C                            ;87E5E1;
    JMP.W CODE_87E5F9                    ;87E5E3;

CODE_87E5E6:
    REP #$10                             ;87E5E6;
    LDX.B $3A                            ;87E5E8;
    LDA.W $0001,X                        ;87E5EA;
    CMP.B #$02                           ;87E5ED;
    BEQ CODE_87E5F9                      ;87E5EF;
    CMP.B #$0A                           ;87E5F1;
    BEQ CODE_87E5F9                      ;87E5F3;
    JSL.L CODE_848EEA                    ;87E5F5;

CODE_87E5F9:
    RTS                                  ;87E5F9;

CODE_87E5FA:
    LDA.B $0F                            ;87E5FA;
    BPL CODE_87E623                      ;87E5FC;
    LDA.B $3D                            ;87E5FE;
    BEQ CODE_87E623                      ;87E600;
    LDA.B $02                            ;87E602;
    STA.B $01                            ;87E604;
    STZ.B $3D                            ;87E606;
    REP #$10                             ;87E608;
    LDX.B $3A                            ;87E60A;
    LDA.W $0003,X                        ;87E60C;
    BEQ CODE_87E61A                      ;87E60F;
    LDA.B #$00                           ;87E611;
    JSL.L CODE_848F07                    ;87E613;
    JMP.W CODE_87E627                    ;87E617;

CODE_87E61A:
    LDA.B #$0E                           ;87E61A;
    JSL.L CODE_848F07                    ;87E61C;
    JMP.W CODE_87E627                    ;87E620;

CODE_87E623:
    JSL.L CODE_848EEA                    ;87E623;

CODE_87E627:
    SEP #$10                             ;87E627;
    RTS                                  ;87E629;

CODE_87E62A:
    LDA.B #$50                           ;87E62A;
    STA.B $35                            ;87E62C;
    LDA.B #$10                           ;87E62E;
    STA.B $39                            ;87E630;
    LDA.B $01                            ;87E632;
    STA.B $02                            ;87E634;
    LDA.B #$04                           ;87E636;
    STA.B $01                            ;87E638;
    LDA.B $0F                            ;87E63A;
    STA.B $3E                            ;87E63C;
    CMP.B #$01                           ;87E63E;
    BEQ CODE_87E64B                      ;87E640;
    LDA.B #$0D                           ;87E642;
    JSL.L CODE_848F07                    ;87E644;
    JMP.W CODE_87E651                    ;87E648;

CODE_87E64B:
    LDA.B #$02                           ;87E64B;
    JSL.L CODE_848F07                    ;87E64D;

CODE_87E651:
    LDA.B #$02                           ;87E651;
    STA.B $38                            ;87E653;

CODE_87E655:
    LDA.B $38                            ;87E655;
    BNE CODE_87E65C                      ;87E657;
    JMP.W CODE_87E750                    ;87E659;

CODE_87E65C:
    REP #$10                             ;87E65C;
    JSL.L CODE_828358                    ;87E65E;
    BEQ CODE_87E667                      ;87E662;
    JMP.W CODE_87E750                    ;87E664;

CODE_87E667:
    INC.W $0000,X                        ;87E667;
    LDA.B $3E                            ;87E66A;
    CMP.B #$01                           ;87E66C;
    BNE CODE_87E678                      ;87E66E;
    LDA.B #$13                           ;87E670;
    STA.W $000A,X                        ;87E672;
    JMP.W CODE_87E67D                    ;87E675;

CODE_87E678:
    LDA.B #$27                           ;87E678;
    STA.W $000A,X                        ;87E67A;

CODE_87E67D:
    LDA.B $18                            ;87E67D;
    STA.W $0018,X                        ;87E67F;
    LDA.B $33                            ;87E682;
    ORA.B $11                            ;87E684;
    STA.W $0011,X                        ;87E686;
    LDA.B $16                            ;87E689;
    STA.W $0016,X                        ;87E68B;
    LDA.B #$05                           ;87E68E;
    STA.W $000B,X                        ;87E690;
    LDA.B $38                            ;87E693;
    CMP.B #$02                           ;87E695;
    BNE CODE_87E6BE                      ;87E697;
    LDA.B $3E                            ;87E699;
    CMP.B #$01                           ;87E69B;
    BNE CODE_87E6AD                      ;87E69D;
    REP #$20                             ;87E69F;
    LDA.W #$FFF0                         ;87E6A1;
    STA.W $0000                          ;87E6A4;
    STZ.W $0002                          ;87E6A7;
    JMP.W CODE_87E6E2                    ;87E6AA;

CODE_87E6AD:
    REP #$20                             ;87E6AD;
    LDA.W #$FFF8                         ;87E6AF;
    STA.W $0000                          ;87E6B2;
    LDA.W #$FFF8                         ;87E6B5;
    STA.W $0002                          ;87E6B8;
    JMP.W CODE_87E6E2                    ;87E6BB;

CODE_87E6BE:
    SEP #$20                             ;87E6BE;
    LDA.B $3E                            ;87E6C0;
    CMP.B #$01                           ;87E6C2;
    BNE CODE_87E6D4                      ;87E6C4;
    REP #$20                             ;87E6C6;
    LDA.W #$0010                         ;87E6C8;
    STA.W $0000                          ;87E6CB;
    STZ.W $0002                          ;87E6CE;
    JMP.W CODE_87E6E2                    ;87E6D1;

CODE_87E6D4:
    REP #$20                             ;87E6D4;
    LDA.W #$0008                         ;87E6D6;
    STA.W $0000                          ;87E6D9;
    LDA.W #$FFF8                         ;87E6DC;
    STA.W $0002                          ;87E6DF;

CODE_87E6E2:
    LDA.B $05                            ;87E6E2;
    CLC                                  ;87E6E4;
    ADC.W $0000                          ;87E6E5;
    STA.W $0005,X                        ;87E6E8;
    LDA.B $08                            ;87E6EB;
    CLC                                  ;87E6ED;
    ADC.W $0002                          ;87E6EE;
    STA.W $0008,X                        ;87E6F1;
    LDA.W #$D4C4                         ;87E6F4;
    STA.W $0020,X                        ;87E6F7;
    LDA.B $38                            ;87E6FA;
    AND.W #$00FF                         ;87E6FC;
    CMP.W #$0002                         ;87E6FF;
    BNE CODE_87E728                      ;87E702;
    SEP #$20                             ;87E704;
    LDA.B $3E                            ;87E706;
    CMP.B #$01                           ;87E708;
    BNE CODE_87E717                      ;87E70A;
    REP #$20                             ;87E70C;
    LDA.W #$FE00                         ;87E70E;
    STA.W $001A,X                        ;87E711;
    JMP.W CODE_87E749                    ;87E714;

CODE_87E717:
    REP #$20                             ;87E717;
    LDA.W #$FE90                         ;87E719;
    STA.W $001A,X                        ;87E71C;
    LDA.W #$0170                         ;87E71F;
    STA.W $001C,X                        ;87E722;
    JMP.W CODE_87E749                    ;87E725;

CODE_87E728:
    SEP #$20                             ;87E728;
    LDA.B $3E                            ;87E72A;
    CMP.B #$01                           ;87E72C;
    BNE CODE_87E73B                      ;87E72E;
    REP #$20                             ;87E730;
    LDA.W #$0200                         ;87E732;
    STA.W $001A,X                        ;87E735;
    JMP.W CODE_87E749                    ;87E738;

CODE_87E73B:
    REP #$20                             ;87E73B;
    LDA.W #$0170                         ;87E73D;
    STA.W $001A,X                        ;87E740;
    LDA.W #$0170                         ;87E743;
    STA.W $001C,X                        ;87E746;

CODE_87E749:
    SEP #$20                             ;87E749;
    DEC.B $38                            ;87E74B;
    JMP.W CODE_87E655                    ;87E74D;

CODE_87E750:
    RTS                                  ;87E750;

CODE_87E751:
    REP #$10                             ;87E751;
    LDY.W #$0002                         ;87E753;

CODE_87E756:
    JSL.L CODE_8282D3                    ;87E756;
    BNE CODE_87E7D1                      ;87E75A;
    INC.W $0000,X                        ;87E75C;
    LDA.B #$09                           ;87E75F;
    STA.W $000A,X                        ;87E761;
    STZ.W $000B,X                        ;87E764;
    LDA.B $11                            ;87E767;
    STA.W $0011,X                        ;87E769;
    CPY.W #$0002                         ;87E76C;
    BNE CODE_87E796                      ;87E76F;
    LDA.B $3E                            ;87E771;
    CMP.B #$01                           ;87E773;
    BNE CODE_87E785                      ;87E775;
    REP #$20                             ;87E777;
    LDA.W #$FFEC                         ;87E779;
    STA.W $0000                          ;87E77C;
    STZ.W $0002                          ;87E77F;
    JMP.W CODE_87E7BA                    ;87E782;

CODE_87E785:
    REP #$20                             ;87E785;
    LDA.W #$FFF4                         ;87E787;
    STA.W $0000                          ;87E78A;
    LDA.W #$FFF4                         ;87E78D;
    STA.W $0002                          ;87E790;
    JMP.W CODE_87E7BA                    ;87E793;

CODE_87E796:
    SEP #$20                             ;87E796;
    LDA.B $3E                            ;87E798;
    CMP.B #$01                           ;87E79A;
    BNE CODE_87E7AC                      ;87E79C;
    REP #$20                             ;87E79E;
    LDA.W #$0014                         ;87E7A0;
    STA.W $0000                          ;87E7A3;
    STZ.W $0002                          ;87E7A6;
    JMP.W CODE_87E7BA                    ;87E7A9;

CODE_87E7AC:
    REP #$20                             ;87E7AC;
    LDA.W #$000C                         ;87E7AE;
    STA.W $0000                          ;87E7B1;
    LDA.W #$FFF4                         ;87E7B4;
    STA.W $0002                          ;87E7B7;

CODE_87E7BA:
    LDA.B $05                            ;87E7BA;
    CLC                                  ;87E7BC;
    ADC.W $0000                          ;87E7BD;
    STA.W $0005,X                        ;87E7C0;
    LDA.B $08                            ;87E7C3;
    CLC                                  ;87E7C5;
    ADC.W $0002                          ;87E7C6;
    STA.W $0008,X                        ;87E7C9;
    SEP #$20                             ;87E7CC;
    DEY                                  ;87E7CE;
    BNE CODE_87E756                      ;87E7CF;

CODE_87E7D1:
    SEP #$10                             ;87E7D1;
    RTS                                  ;87E7D3;

CODE_87E7D4:
    LDX.B $01                            ;87E7D4;
    JSR.W (PTR16_87E801,X)               ;87E7D6;
    LDA.B $3B                            ;87E7D9;
    BEQ CODE_87E7EF                      ;87E7DB;
    LDA.B #$0C                           ;87E7DD;
    STA.B $01                            ;87E7DF;
    STZ.B $3B                            ;87E7E1;
    REP #$20                             ;87E7E3;
    STZ.B $1A                            ;87E7E5;
    STZ.B $1C                            ;87E7E7;
    SEP #$20                             ;87E7E9;
    LDA.B #$40                           ;87E7EB;
    STA.B $1E                            ;87E7ED;

CODE_87E7EF:
    JSL.L CODE_849B43                    ;87E7EF;
    JSL.L CODE_82808F                    ;87E7F3;
    BCC CODE_87E800                      ;87E7F7;
    JSR.W CODE_87EAC2                    ;87E7F9;
    JSL.L CODE_828387                    ;87E7FC;

CODE_87E800:
    RTL                                  ;87E800;

PTR16_87E801:
    dw CODE_87E813                       ;87E801;
    dw CODE_87E84F                       ;87E803;
    dw CODE_87E89E                       ;87E805;
    dw CODE_87E90D                       ;87E807;
    dw CODE_87E975                       ;87E809;
    dw CODE_87E991                       ;87E80B;
    dw CODE_87E9AB                       ;87E80D;
    dw CODE_87E9C0                       ;87E80F;
    dw CODE_87E9F1                       ;87E811;

CODE_87E813:
    JSL.L CODE_82827D                    ;87E813;
    LDA.B #$01                           ;87E817;
    STA.B $27                            ;87E819;
    STZ.B $28                            ;87E81B;
    STZ.B $3B                            ;87E81D;
    INC.B $30                            ;87E81F;
    LDA.B #$04                           ;87E821;
    STA.B $12                            ;87E823;
    LDA.B #$25                           ;87E825;
    STA.B $39                            ;87E827;
    LDA.B #$01                           ;87E829;
    STA.B $1F                            ;87E82B;
    LDA.B #$07                           ;87E82D;
    JSL.L CODE_848F07                    ;87E82F;
    STZ.B $2F                            ;87E833;
    STZ.B $03                            ;87E835;
    REP #$20                             ;87E837;
    LDA.W #$D4C9                         ;87E839;
    STA.B $20                            ;87E83C;
    LDA.B $08                            ;87E83E;
    SEC                                  ;87E840;
    SBC.W #$0090                         ;87E841;
    STA.B $3C                            ;87E844;
    SEP #$20                             ;87E846;
    JSR.W CODE_87EA41                    ;87E848;
    JSR.W CODE_87EA70                    ;87E84B;
    RTS                                  ;87E84E;

CODE_87E84F:
    LDA.B #$80                           ;87E84F;
    STA.B $2C                            ;87E851;
    JSL.L CODE_82D7D0                    ;87E853;
    DEC.B $1F                            ;87E857;
    BNE CODE_87E89D                      ;87E859;
    REP #$20                             ;87E85B;
    LDA.W $0BB0                          ;87E85D;
    SEC                                  ;87E860;
    SBC.B $08                            ;87E861;
    BCC CODE_87E879                      ;87E863;
    LDA.W #$FFE0                         ;87E865;
    STA.W $0000                          ;87E868;
    LDA.W #$FE80                         ;87E86B;
    STA.B $1C                            ;87E86E;
    SEP #$20                             ;87E870;
    LDA.B #$06                           ;87E872;
    STA.B $01                            ;87E874;
    JMP.W CODE_87E88C                    ;87E876;

CODE_87E879:
    REP #$20                             ;87E879;
    LDA.W #$0048                         ;87E87B;
    STA.W $0000                          ;87E87E;
    LDA.W #$0180                         ;87E881;
    STA.B $1C                            ;87E884;
    SEP #$20                             ;87E886;
    LDA.B #$04                           ;87E888;
    STA.B $01                            ;87E88A;

CODE_87E88C:
    REP #$20                             ;87E88C;
    LDA.W $0BB0                          ;87E88E;
    SEC                                  ;87E891;
    SBC.W $0000                          ;87E892;
    STA.B $37                            ;87E895;
    SEP #$20                             ;87E897;
    LDA.B #$60                           ;87E899;
    STA.B $1F                            ;87E89B;

CODE_87E89D:
    RTS                                  ;87E89D;

CODE_87E89E:
    LDA.B #$80                           ;87E89E;
    STA.B $2C                            ;87E8A0;
    JSL.L CODE_82D7D0                    ;87E8A2;
    LDA.B $3B                            ;87E8A6;
    BNE CODE_87E8D6                      ;87E8A8;
    REP #$10                             ;87E8AA;
    DEC.B $39                            ;87E8AC;
    BNE CODE_87E8D6                      ;87E8AE;
    LDX.B $33                            ;87E8B0;
    LDA.B $03                            ;87E8B2;
    BNE CODE_87E8C0                      ;87E8B4;
    LDA.W $000F,X                        ;87E8B6;
    AND.B #$01                           ;87E8B9;
    BNE CODE_87E8CE                      ;87E8BB;
    JMP.W CODE_87E8C7                    ;87E8BD;

CODE_87E8C0:
    LDA.W $000F,X                        ;87E8C0;
    AND.B #$02                           ;87E8C3;
    BNE CODE_87E8CE                      ;87E8C5;

CODE_87E8C7:
    SEP #$10                             ;87E8C7;
    INC.B $39                            ;87E8C9;
    JMP.W CODE_87E8D6                    ;87E8CB;

CODE_87E8CE:
    SEP #$10                             ;87E8CE;
    JSR.W CODE_87EA15                    ;87E8D0;
    JMP.W CODE_87E902                    ;87E8D3;

CODE_87E8D6:
    SEP #$10                             ;87E8D6;
    REP #$20                             ;87E8D8;
    LDA.B $08                            ;87E8DA;
    CMP.B $3C                            ;87E8DC;
    BPL CODE_87E8E9                      ;87E8DE;
    SEP #$20                             ;87E8E0;
    LDA.B #$0A                           ;87E8E2;
    STA.B $01                            ;87E8E4;
    JMP.W CODE_87E8FC                    ;87E8E6;

CODE_87E8E9:
    JSL.L CODE_82825D                    ;87E8E9;
    REP #$20                             ;87E8ED;
    LDA.B $08                            ;87E8EF;
    SEC                                  ;87E8F1;
    SBC.B $37                            ;87E8F2;
    BPL CODE_87E8FC                      ;87E8F4;
    SEP #$20                             ;87E8F6;
    LDA.B #$02                           ;87E8F8;
    STA.B $01                            ;87E8FA;

CODE_87E8FC:
    SEP #$20                             ;87E8FC;
    JSL.L CODE_848EEA                    ;87E8FE;

CODE_87E902:
    LDA.B $2C                            ;87E902;
    AND.B #$7F                           ;87E904;
    BEQ CODE_87E90C                      ;87E906;
    JSL.L CODE_82C70E                    ;87E908;

CODE_87E90C:
    RTS                                  ;87E90C;

CODE_87E90D:
    LDA.B #$80                           ;87E90D;
    STA.B $2C                            ;87E90F;
    JSL.L CODE_82D7D0                    ;87E911;
    LDA.B $3B                            ;87E915;
    BNE CODE_87E945                      ;87E917;
    REP #$10                             ;87E919;
    DEC.B $39                            ;87E91B;
    BNE CODE_87E945                      ;87E91D;
    LDX.B $33                            ;87E91F;
    LDA.B $03                            ;87E921;
    BNE CODE_87E92F                      ;87E923;
    LDA.W $000F,X                        ;87E925;
    AND.B #$01                           ;87E928;
    BNE CODE_87E93D                      ;87E92A;
    JMP.W CODE_87E936                    ;87E92C;

CODE_87E92F:
    LDA.W $000F,X                        ;87E92F;
    AND.B #$02                           ;87E932;
    BNE CODE_87E93D                      ;87E934;

CODE_87E936:
    SEP #$10                             ;87E936;
    INC.B $39                            ;87E938;
    JMP.W CODE_87E945                    ;87E93A;

CODE_87E93D:
    SEP #$10                             ;87E93D;
    JSR.W CODE_87EA15                    ;87E93F;
    JMP.W CODE_87E96A                    ;87E942;

CODE_87E945:
    SEP #$10                             ;87E945;
    JSL.L CODE_82825D                    ;87E947;
    JSL.L CODE_8491BE                    ;87E94B;
    LDA.B $2B                            ;87E94F;
    AND.B #$04                           ;87E951;
    BNE CODE_87E95E                      ;87E953;
    REP #$20                             ;87E955;
    LDA.B $37                            ;87E957;
    SEC                                  ;87E959;
    SBC.B $08                            ;87E95A;
    BPL CODE_87E964                      ;87E95C;

CODE_87E95E:
    SEP #$20                             ;87E95E;
    LDA.B #$02                           ;87E960;
    STA.B $01                            ;87E962;

CODE_87E964:
    SEP #$20                             ;87E964;
    JSL.L CODE_848EEA                    ;87E966;

CODE_87E96A:
    LDA.B $2C                            ;87E96A;
    AND.B #$7F                           ;87E96C;
    BEQ CODE_87E90C                      ;87E96E;
    JSL.L CODE_82C70E                    ;87E970;
    RTS                                  ;87E974;

CODE_87E975:
    LDA.B #$80                           ;87E975;
    STA.B $2C                            ;87E977;
    JSL.L CODE_82D7D0                    ;87E979;
    DEC.B $3A                            ;87E97D;
    BNE CODE_87E990                      ;87E97F;
    LDA.B $02                            ;87E981;
    STA.B $01                            ;87E983;
    REP #$10                             ;87E985;
    LDX.B $33                            ;87E987;
    LDA.B #$01                           ;87E989;
    STA.W $003D,X                        ;87E98B;
    SEP #$10                             ;87E98E;

CODE_87E990:
    RTS                                  ;87E990;

CODE_87E991:
    LDA.B #$80                           ;87E991;
    STA.B $2C                            ;87E993;
    JSL.L CODE_82D7D0                    ;87E995;
    LDA.B $2C                            ;87E999;
    AND.B #$7F                           ;87E99B;
    BNE CODE_87E9A6                      ;87E99D;
    LDA.B #$02                           ;87E99F;
    STA.B $01                            ;87E9A1;
    JMP.W CODE_87E9AA                    ;87E9A3;

CODE_87E9A6:
    JSL.L CODE_848EEA                    ;87E9A6;

CODE_87E9AA:
    RTS                                  ;87E9AA;

CODE_87E9AB:
    JSL.L CODE_8281E8                    ;87E9AB;
    JSL.L CODE_8491BE                    ;87E9AF;
    LDA.B $2B                            ;87E9B3;
    AND.B #$04                           ;87E9B5;
    BEQ CODE_87E9BF                      ;87E9B7;
    LDA.B #$0E                           ;87E9B9;
    STA.B $01                            ;87E9BB;
    STZ.B $1F                            ;87E9BD;

CODE_87E9BF:
    RTS                                  ;87E9BF;

CODE_87E9C0:
    LDA.B #$80                           ;87E9C0;
    STA.B $2C                            ;87E9C2;
    JSL.L CODE_82D7D0                    ;87E9C4;
    LDA.B $2C                            ;87E9C8;
    AND.B #$7F                           ;87E9CA;
    BNE CODE_87E9D3                      ;87E9CC;
    STZ.B $1F                            ;87E9CE;
    JMP.W CODE_87E9F0                    ;87E9D0;

CODE_87E9D3:
    INC.B $1F                            ;87E9D3;
    LDA.B $1F                            ;87E9D5;
    CMP.B #$5A                           ;87E9D7;
    BNE CODE_87E9F0                      ;87E9D9;
    LDA.B #$10                           ;87E9DB;
    STA.B $01                            ;87E9DD;
    REP #$20                             ;87E9DF;
    LDA.W #$0180                         ;87E9E1;
    STA.B $1C                            ;87E9E4;
    LDA.B $08                            ;87E9E6;
    SEC                                  ;87E9E8;
    SBC.W #$00C8                         ;87E9E9;
    STA.B $37                            ;87E9EC;
    SEP #$20                             ;87E9EE;

CODE_87E9F0:
    RTS                                  ;87E9F0;

CODE_87E9F1:
    LDA.B #$80                           ;87E9F1;
    STA.B $2C                            ;87E9F3;
    JSL.L CODE_82D7D0                    ;87E9F5;
    REP #$20                             ;87E9F9;
    LDA.B $08                            ;87E9FB;
    SEC                                  ;87E9FD;
    SBC.B $37                            ;87E9FE;
    BMI CODE_87EA12                      ;87EA00;
    SEP #$20                             ;87EA02;
    JSL.L CODE_82825D                    ;87EA04;
    LDA.B $2C                            ;87EA08;
    AND.B #$7F                           ;87EA0A;
    BEQ CODE_87EA12                      ;87EA0C;
    JSL.L CODE_82C70E                    ;87EA0E;

CODE_87EA12:
    SEP #$20                             ;87EA12;
    RTS                                  ;87EA14;

CODE_87EA15:
    LDA.B #$25                           ;87EA15;
    STA.B $39                            ;87EA17;
    LDA.B #$10                           ;87EA19;
    STA.B $3A                            ;87EA1B;
    LDA.B $01                            ;87EA1D;
    STA.B $02                            ;87EA1F;
    LDA.B #$08                           ;87EA21;
    STA.B $01                            ;87EA23;
    REP #$10                             ;87EA25;
    LDX.B $33                            ;87EA27;
    LDA.B #$01                           ;87EA29;
    STA.W $003C,X                        ;87EA2B;
    LDA.W $000F,X                        ;87EA2E;
    CMP.B #$01                           ;87EA31;
    BEQ CODE_87EA3A                      ;87EA33;
    STZ.B $03                            ;87EA35;
    JMP.W CODE_87EA3E                    ;87EA37;

CODE_87EA3A:
    LDA.B #$01                           ;87EA3A;
    STA.B $03                            ;87EA3C;

CODE_87EA3E:
    SEP #$10                             ;87EA3E;
    RTS                                  ;87EA40;

CODE_87EA41:
    REP #$10                             ;87EA41;
    JSL.L CODE_828321                    ;87EA43;
    BNE CODE_87EA6F                      ;87EA47;
    STX.B $33                            ;87EA49;
    INC.W $0000,X                        ;87EA4B;
    LDA.B #$58                           ;87EA4E;
    STA.W $000A,X                        ;87EA50;
    STZ.W $000B,X                        ;87EA53;
    STZ.W $003C,X                        ;87EA56;
    REP #$20                             ;87EA59;
    LDA.B $08                            ;87EA5B;
    SEC                                  ;87EA5D;
    SBC.W #$000E                         ;87EA5E;
    STA.W $0008,X                        ;87EA61;
    LDA.B $05                            ;87EA64;
    STA.W $0005,X                        ;87EA66;
    TDC                                  ;87EA69;
    STA.W $003A,X                        ;87EA6A;
    SEP #$30                             ;87EA6D;

CODE_87EA6F:
    RTS                                  ;87EA6F;

CODE_87EA70:
    REP #$10                             ;87EA70;
    JSL.L CODE_828321                    ;87EA72;
    BNE CODE_87EA9C                      ;87EA76;
    STX.B $35                            ;87EA78;
    INC.W $0000,X                        ;87EA7A;
    LDA.B #$5A                           ;87EA7D;
    STA.W $000A,X                        ;87EA7F;
    REP #$20                             ;87EA82;
    LDA.B $08                            ;87EA84;
    CLC                                  ;87EA86;
    ADC.W #$0053                         ;87EA87;
    STA.W $0008,X                        ;87EA8A;
    LDA.B $05                            ;87EA8D;
    STA.W $0005,X                        ;87EA8F;
    TDC                                  ;87EA92;
    STA.W $003A,X                        ;87EA93;
    STZ.W $0036,X                        ;87EA96;
    STZ.W $0035,X                        ;87EA99;

CODE_87EA9C:
    SEP #$30                             ;87EA9C;
    RTS                                  ;87EA9E;
    REP #$20                             ;87EA9F;
    LDA.W #$D4C9                         ;87EAA1;
    STA.B $20                            ;87EAA4;
    SEP #$20                             ;87EAA6;
    LDA.B #$80                           ;87EAA8;
    STA.B $2C                            ;87EAAA;
    JSL.L CODE_82D7D0                    ;87EAAC;
    REP #$20                             ;87EAB0;
    LDA.W #$D4C9                         ;87EAB2;
    STA.B $20                            ;87EAB5;
    SEP #$20                             ;87EAB7;
    LDA.B #$80                           ;87EAB9;
    STA.B $2C                            ;87EABB;
    JSL.L CODE_82D7D0                    ;87EABD;
    RTS                                  ;87EAC1;

CODE_87EAC2:
    REP #$30                             ;87EAC2;
    LDX.B $33                            ;87EAC4;
    SEP #$20                             ;87EAC6;
    LDA.W $000A,X                        ;87EAC8;
    CMP.B #$58                           ;87EACB;
    BNE CODE_87EADA                      ;87EACD;
    REP #$20                             ;87EACF;
    STZ.W $0000,X                        ;87EAD1;
    STZ.W $0002,X                        ;87EAD4;
    STZ.W $000E,X                        ;87EAD7;

CODE_87EADA:
    LDX.B $35                            ;87EADA;
    SEP #$20                             ;87EADC;
    LDA.W $000A,X                        ;87EADE;
    CMP.B #$5A                           ;87EAE1;
    BNE CODE_87EAF0                      ;87EAE3;
    REP #$20                             ;87EAE5;
    STZ.W $0000,X                        ;87EAE7;
    STZ.W $0002,X                        ;87EAEA;
    STZ.W $000E,X                        ;87EAED;

CODE_87EAF0:
    LDX.B $3E                            ;87EAF0;
    SEP #$20                             ;87EAF2;
    LDA.W $000A,X                        ;87EAF4;
    CMP.B #$5A                           ;87EAF7;
    BNE CODE_87EB06                      ;87EAF9;
    REP #$20                             ;87EAFB;
    STZ.W $0000,X                        ;87EAFD;
    STZ.W $0002,X                        ;87EB00;
    STZ.W $000E,X                        ;87EB03;

CODE_87EB06:
    SEP #$30                             ;87EB06;
    RTS                                  ;87EB08;

CODE_87EB09:
    LDX.B $01                            ;87EB09;
    JSR.W (PTR16_87EB33,X)               ;87EB0B;
    LDA.B $35                            ;87EB0E;
    BNE CODE_87EB16                      ;87EB10;
    JSL.L CODE_849B43                    ;87EB12;

CODE_87EB16:
    REP #$20                             ;87EB16;
    LDA.B $08                            ;87EB18;
    SEC                                  ;87EB1A;
    SBC.W #$0020                         ;87EB1B;
    STA.B $08                            ;87EB1E;
    SEP #$20                             ;87EB20;
    REP #$20                             ;87EB22;
    LDA.B $08                            ;87EB24;
    CLC                                  ;87EB26;
    ADC.W #$0020                         ;87EB27;
    STA.B $08                            ;87EB2A;
    SEP #$20                             ;87EB2C;
    JSL.L CODE_82808F                    ;87EB2E;
    RTL                                  ;87EB32;

PTR16_87EB33:
    dw CODE_87EB37                       ;87EB33;
    dw CODE_87EB7E                       ;87EB35;

CODE_87EB37:
    JSL.L CODE_82827D                    ;87EB37;
    LDA.B #$01                           ;87EB3B;
    STA.B $27                            ;87EB3D;
    STA.B $30                            ;87EB3F;
    STZ.B $28                            ;87EB41;
    LDA.B #$04                           ;87EB43;
    STA.B $12                            ;87EB45;
    LDA.B $35                            ;87EB47;
    BNE CODE_87EB52                      ;87EB49;
    REP #$20                             ;87EB4B;
    LDA.W #$D4D3                         ;87EB4D;
    STA.B $20                            ;87EB50;

CODE_87EB52:
    REP #$20                             ;87EB52;
    LDA.B $08                            ;87EB54;
    SEC                                  ;87EB56;
    SBC.W #$0060                         ;87EB57;
    STA.B $33                            ;87EB5A;
    LDA.B $36                            ;87EB5C;
    AND.W #$00FF                         ;87EB5E;
    BEQ CODE_87EB75                      ;87EB61;
    REP #$10                             ;87EB63;
    LDX.B $3A                            ;87EB65;
    LDA.W $0008,X                        ;87EB67;
    SEC                                  ;87EB6A;
    SBC.W $0024,X                        ;87EB6B;
    CLC                                  ;87EB6E;
    ADC.B $08                            ;87EB6F;
    STA.B $08                            ;87EB71;
    SEP #$10                             ;87EB73;

CODE_87EB75:
    SEP #$20                             ;87EB75;
    LDA.B #$06                           ;87EB77;
    JSL.L CODE_848F07                    ;87EB79;
    RTS                                  ;87EB7D;

CODE_87EB7E:
    LDA.B $35                            ;87EB7E;
    BNE CODE_87EB8A                      ;87EB80;
    LDA.B #$80                           ;87EB82;
    STA.B $2C                            ;87EB84;
    JSL.L CODE_82D7D0                    ;87EB86;

CODE_87EB8A:
    REP #$30                             ;87EB8A;
    LDX.B $3A                            ;87EB8C;
    LDA.W $0008,X                        ;87EB8E;
    SEC                                  ;87EB91;
    SBC.W $0024,X                        ;87EB92;
    CLC                                  ;87EB95;
    ADC.B $08                            ;87EB96;
    STA.B $08                            ;87EB98;
    LDA.B $36                            ;87EB9A;
    AND.W #$00FF                         ;87EB9C;
    BNE CODE_87EBB1                      ;87EB9F;
    LDA.B $08                            ;87EBA1;
    SEC                                  ;87EBA3;
    SBC.B $33                            ;87EBA4;
    BPL CODE_87EBB1                      ;87EBA6;
    SEP #$30                             ;87EBA8;
    LDA.B #$01                           ;87EBAA;
    STA.B $36                            ;87EBAC;
    JSR.W CODE_87EBC6                    ;87EBAE;

CODE_87EBB1:
    SEP #$30                             ;87EBB1;
    JSL.L CODE_848EEA                    ;87EBB3;
    LDA.B $35                            ;87EBB7;
    BNE CODE_87EBC5                      ;87EBB9;
    LDA.B $2C                            ;87EBBB;
    AND.B #$7F                           ;87EBBD;
    BEQ CODE_87EBC5                      ;87EBBF;
    JSL.L CODE_82C70E                    ;87EBC1;

CODE_87EBC5:
    RTS                                  ;87EBC5;

CODE_87EBC6:
    REP #$20                             ;87EBC6;
    JSL.L CODE_828321                    ;87EBC8;
    BNE CODE_87EBFB                      ;87EBCC;
    INC.W $0000,X                        ;87EBCE;
    LDA.B #$5A                           ;87EBD1;
    STA.W $000A,X                        ;87EBD3;
    LDA.B #$01                           ;87EBD6;
    STA.W $0036,X                        ;87EBD8;
    LDA.B #$01                           ;87EBDB;
    STA.W $0035,X                        ;87EBDD;
    REP #$20                             ;87EBE0;
    LDA.B $08                            ;87EBE2;
    CLC                                  ;87EBE4;
    ADC.W #$0040                         ;87EBE5;
    STA.W $0008,X                        ;87EBE8;
    LDA.B $05                            ;87EBEB;
    STA.W $0005,X                        ;87EBED;
    LDA.B $3A                            ;87EBF0;
    STA.W $003A,X                        ;87EBF2;
    TXA                                  ;87EBF5;
    LDX.B $3A                            ;87EBF6;
    STA.W $003E,X                        ;87EBF8;

CODE_87EBFB:
    SEP #$30                             ;87EBFB;
    RTS                                  ;87EBFD;

CODE_87EBFE:
    LDA.B $35                            ;87EBFE;
    TSB.B $11                            ;87EC00;
    LDX.B $01                            ;87EC02;
    JSR.W (PTR16_87EC32,X)               ;87EC04;
    JSL.L CODE_849B43                    ;87EC07;
    BEQ CODE_87EC21                      ;87EC0B;
    BPL CODE_87EC1D                      ;87EC0D;
    JSL.L CODE_84A4AB                    ;87EC0F;
    LDA.B #$01                           ;87EC13;
    JSL.L CODE_84A37F                    ;87EC15;
    JML.L CODE_828398                    ;87EC19;

CODE_87EC1D:
    LDA.B #$0E                           ;87EC1D;
    TRB.B $11                            ;87EC1F;

CODE_87EC21:
    JSL.L CODE_849B03                    ;87EC21;
    JSL.L CODE_82808F                    ;87EC25;
    LDA.B $0E                            ;87EC29;
    BEQ CODE_87EC2E                      ;87EC2B;
    RTL                                  ;87EC2D;

CODE_87EC2E:
    JML.L CODE_828387                    ;87EC2E;

PTR16_87EC32:
    dw CODE_87EC3A                       ;87EC32;
    dw CODE_87EC81                       ;87EC34;
    dw CODE_87ECA8                       ;87EC36;
    dw CODE_87ECD9                       ;87EC38;

CODE_87EC3A:
    LDA.B $0B                            ;87EC3A;
    AND.B #$01                           ;87EC3C;
    BEQ CODE_87EC4F                      ;87EC3E;
    REP #$20                             ;87EC40;
    LDA.B $05                            ;87EC42;
    SEC                                  ;87EC44;
    SBC.W $0BAD                          ;87EC45;
    BCS CODE_87EC4F                      ;87EC48;
    PLA                                  ;87EC4A;
    JML.L CODE_828387                    ;87EC4B;

CODE_87EC4F:
    SEP #$20                             ;87EC4F;
    JSL.L CODE_82827D                    ;87EC51;
    LDA.B $0B                            ;87EC55;
    TSB.B $11                            ;87EC57;
    LDA.B $11                            ;87EC59;
    AND.B #$0E                           ;87EC5B;
    STA.B $35                            ;87EC5D;
    LDA.B #$04                           ;87EC5F;
    STA.B $26                            ;87EC61;
    LDA.B #$10                           ;87EC63;
    STA.B $27                            ;87EC65;
    LDA.B #$06                           ;87EC67;
    STA.B $12                            ;87EC69;
    REP #$20                             ;87EC6B;
    LDA.W #$D4DD                         ;87EC6D;
    STA.B $20                            ;87EC70;
    SEP #$20                             ;87EC72;
    LDA.B #$00                           ;87EC74;
    JSL.L CODE_848F07                    ;87EC76;
    LDA.B #$02                           ;87EC7A;
    STA.B $01                            ;87EC7C;
    STZ.B $02                            ;87EC7E;
    RTS                                  ;87EC80;

CODE_87EC81:
    JSL.L CODE_848EEA                    ;87EC81;
    LDA.B $02                            ;87EC85;
    BNE CODE_87EC8F                      ;87EC87;
    INC.B $02                            ;87EC89;
    LDA.B #$28                           ;87EC8B;
    STA.B $34                            ;87EC8D;

CODE_87EC8F:
    DEC.B $34                            ;87EC8F;
    BNE CODE_87ECA7                      ;87EC91;
    JSR.W CODE_87ED71                    ;87EC93;
    BPL CODE_87EC9B                      ;87EC96;
    INC.B $34                            ;87EC98;
    RTS                                  ;87EC9A;

CODE_87EC9B:
    LDA.B #$01                           ;87EC9B;
    JSL.L CODE_848F07                    ;87EC9D;
    LDA.B #$06                           ;87ECA1;
    STA.B $01                            ;87ECA3;
    STZ.B $02                            ;87ECA5;

CODE_87ECA7:
    RTS                                  ;87ECA7;

CODE_87ECA8:
    JSL.L CODE_848EEA                    ;87ECA8;
    LDA.B $02                            ;87ECAC;
    BNE CODE_87ECB6                      ;87ECAE;
    INC.B $02                            ;87ECB0;
    LDA.B #$30                           ;87ECB2;
    STA.B $34                            ;87ECB4;

CODE_87ECB6:
    JSR.W CODE_87ED71                    ;87ECB6;
    BPL CODE_87ECC8                      ;87ECB9;
    LDA.B #$00                           ;87ECBB;
    JSL.L CODE_848F07                    ;87ECBD;
    LDA.B #$02                           ;87ECC1;
    STA.B $01                            ;87ECC3;
    STZ.B $02                            ;87ECC5;
    RTS                                  ;87ECC7;

CODE_87ECC8:
    DEC.B $34                            ;87ECC8;
    BNE CODE_87ECD8                      ;87ECCA;
    LDA.B #$02                           ;87ECCC;
    JSL.L CODE_848F07                    ;87ECCE;
    LDA.B #$06                           ;87ECD2;
    STA.B $01                            ;87ECD4;
    STZ.B $02                            ;87ECD6;

CODE_87ECD8:
    RTS                                  ;87ECD8;

CODE_87ECD9:
    JSL.L CODE_848EEA                    ;87ECD9;
    LDA.B $0F                            ;87ECDD;
    BMI CODE_87ECE4                      ;87ECDF;
    BNE CODE_87ECF1                      ;87ECE1;
    RTS                                  ;87ECE3;

CODE_87ECE4:
    LDA.B #$01                           ;87ECE4;
    JSL.L CODE_848F07                    ;87ECE6;
    LDA.B #$04                           ;87ECEA;
    STA.B $01                            ;87ECEC;
    STZ.B $02                            ;87ECEE;
    RTS                                  ;87ECF0;

CODE_87ECF1:
    REP #$10                             ;87ECF1;
    JSL.L CODE_828358                    ;87ECF3;
    BNE CODE_87ED6E                      ;87ECF7;
    INC.W $0000,X                        ;87ECF9;
    LDA.B #$25                           ;87ECFC;
    STA.W $000A,X                        ;87ECFE;
    LDA.B $18                            ;87ED01;
    STA.W $0018,X                        ;87ED03;
    LDA.B $16                            ;87ED06;
    STA.W $0016,X                        ;87ED08;
    LDA.B $11                            ;87ED0B;
    ORA.B $35                            ;87ED0D;
    STA.W $0011,X                        ;87ED0F;
    AND.B #$40                           ;87ED12;
    BNE CODE_87ED1A                      ;87ED14;
    LDA.B $0F                            ;87ED16;
    BRA CODE_87ED1E                      ;87ED18;

CODE_87ED1A:
    LDA.B $0F                            ;87ED1A;
    EOR.B #$03                           ;87ED1C;

CODE_87ED1E:
    CMP.B #$01                           ;87ED1E;
    REP #$21                             ;87ED20;
    BNE CODE_87ED29                      ;87ED22;
    LDA.W #$FFF9                         ;87ED24;
    BRA CODE_87ED2C                      ;87ED27;

CODE_87ED29:
    LDA.W #$0007                         ;87ED29;

CODE_87ED2C:
    ADC.B $05                            ;87ED2C;
    STA.B $36                            ;87ED2E;
    STA.W $0005,X                        ;87ED30;
    LDA.W #$FFE4                         ;87ED33;
    CLC                                  ;87ED36;
    ADC.B $08                            ;87ED37;
    STA.B $38                            ;87ED39;
    STA.W $0008,X                        ;87ED3B;
    SEP #$20                             ;87ED3E;
    JSL.L CODE_8282D3                    ;87ED40;
    BNE CODE_87ED6E                      ;87ED44;
    INC.W $0000,X                        ;87ED46;
    LDA.B #$10                           ;87ED49;
    STA.W $000A,X                        ;87ED4B;
    LDA.B #$28                           ;87ED4E;
    STA.W $000B,X                        ;87ED50;
    LDA.B $11                            ;87ED53;
    ORA.B $35                            ;87ED55;
    STA.W $0011,X                        ;87ED57;
    REP #$20                             ;87ED5A;
    LDA.B $36                            ;87ED5C;
    STA.W $0005,X                        ;87ED5E;
    LDA.B $38                            ;87ED61;
    STA.W $0008,X                        ;87ED63;
    SEP #$30                             ;87ED66;
    LDA.B #$1E                           ;87ED68;
    JSL.L CODE_8088A2                    ;87ED6A;

CODE_87ED6E:
    SEP #$30                             ;87ED6E;
    RTS                                  ;87ED70;

CODE_87ED71:
    REP #$20                             ;87ED71;
    LDA.W $0BAD                          ;87ED73;
    SEC                                  ;87ED76;
    SBC.B $05                            ;87ED77;
    SEP #$20                             ;87ED79;
    LDA.B $11                            ;87ED7B;
    BCS CODE_87ED86                      ;87ED7D;
    AND.B #$40                           ;87ED7F;
    BEQ CODE_87ED8A                      ;87ED81;

CODE_87ED83:
    LDA.B #$80                           ;87ED83;
    RTS                                  ;87ED85;

CODE_87ED86:
    AND.B #$40                           ;87ED86;
    BEQ CODE_87ED83                      ;87ED88;

CODE_87ED8A:
    LDA.B #$00                           ;87ED8A;
    RTS                                  ;87ED8C;

CODE_87ED8D:
    LDX.B $01                            ;87ED8D;
    JMP.W (PTR16_87ED92,X)               ;87ED8F;

PTR16_87ED92:
    dw CODE_87ED9A                       ;87ED92;
    dw CODE_87EDEB                       ;87ED94;
    dw CODE_87EDF9                       ;87ED96;
    dw CODE_87EE17                       ;87ED98;

CODE_87ED9A:
    LDA.W $1F7D                          ;87ED9A;
    CMP.B #$02                           ;87ED9D;
    BCC CODE_87EDAD                      ;87ED9F;
    LDA.B #$02                           ;87EDA1;
    STA.B $0B                            ;87EDA3;
    JSL.L CODE_848000                    ;87EDA5;
    JML.L CODE_828398                    ;87EDA9;

CODE_87EDAD:
    JSL.L CODE_82827D                    ;87EDAD;
    LDA.B #$00                           ;87EDB1;
    JSL.L CODE_848F07                    ;87EDB3;
    LDA.B #$02                           ;87EDB7;
    STA.B $01                            ;87EDB9;
    REP #$10                             ;87EDBB;
    JSL.L CODE_8282D3                    ;87EDBD;
    BNE CODE_87EDE8                      ;87EDC1;
    STX.B $35                            ;87EDC3;
    INC.W $0000,X                        ;87EDC5;
    LDA.B #$10                           ;87EDC8;
    STA.W $000A,X                        ;87EDCA;
    LDA.B #$2E                           ;87EDCD;
    STA.W $000B,X                        ;87EDCF;
    LDA.B $11                            ;87EDD2;
    STA.W $0011,X                        ;87EDD4;
    LDA.B #$04                           ;87EDD7;
    STA.W $0002,X                        ;87EDD9;
    REP #$20                             ;87EDDC;
    LDA.B $05                            ;87EDDE;
    STA.W $0005,X                        ;87EDE0;
    LDA.B $08                            ;87EDE3;
    STA.W $0008,X                        ;87EDE5;

CODE_87EDE8:
    SEP #$30                             ;87EDE8;
    RTL                                  ;87EDEA;

CODE_87EDEB:
    LDA.W $1F40                          ;87EDEB;
    BEQ CODE_87EDF8                      ;87EDEE;
    LDA.B #$04                           ;87EDF0;
    STA.B $01                            ;87EDF2;
    LDA.B #$20                           ;87EDF4;
    STA.B $34                            ;87EDF6;

CODE_87EDF8:
    RTL                                  ;87EDF8;

CODE_87EDF9:
    DEC.B $34                            ;87EDF9;
    BNE CODE_87EE16                      ;87EDFB;
    LDA.B #$06                           ;87EDFD;
    STA.B $01                            ;87EDFF;
    LDA.B #$1B                           ;87EE01;
    JSL.L CODE_8088A2                    ;87EE03;
    REP #$30                             ;87EE07;
    LDX.B $35                            ;87EE09;
    STZ.W $0000,X                        ;87EE0B;
    STZ.W $000E,X                        ;87EE0E;
    STZ.W $0002,X                        ;87EE11;
    SEP #$20                             ;87EE14;

CODE_87EE16:
    RTL                                  ;87EE16;

CODE_87EE17:
    REP #$10                             ;87EE17;
    LDY.W #$0000                         ;87EE19;

CODE_87EE1C:
    JSL.L CODE_8282D3                    ;87EE1C;
    BNE CODE_87EE74                      ;87EE20;
    INC.W $0000,X                        ;87EE22;
    LDA.B #$2B                           ;87EE25;
    STA.W $000A,X                        ;87EE27;
    TYA                                  ;87EE2A;
    LSR A                                ;87EE2B;
    LDA.B $11                            ;87EE2C;
    BCC CODE_87EE32                      ;87EE2E;
    ORA.B #$40                           ;87EE30;

CODE_87EE32:
    STA.W $0011,X                        ;87EE32;
    STZ.W $001F,X                        ;87EE35;
    LDA.B #$40                           ;87EE38;
    STA.W $001E,X                        ;87EE3A;
    LDA.W DATA8_86D759,Y                 ;87EE3D;
    STA.W $000B,X                        ;87EE40;
    REP #$20                             ;87EE43;
    TYA                                  ;87EE45;
    ASL A                                ;87EE46;
    TAY                                  ;87EE47;
    LDA.B $05                            ;87EE48;
    CLC                                  ;87EE4A;
    ADC.W DATA8_86D6B9,Y                 ;87EE4B;
    STA.W $0005,X                        ;87EE4E;
    LDA.B $08                            ;87EE51;
    CLC                                  ;87EE53;
    ADC.W DATA8_86D6E1,Y                 ;87EE54;
    STA.W $0008,X                        ;87EE57;
    LDA.W DATA8_86D709,Y                 ;87EE5A;
    STA.W $001A,X                        ;87EE5D;
    LDA.W DATA8_86D731,Y                 ;87EE60;
    STA.W $001C,X                        ;87EE63;
    STZ.W $000C,X                        ;87EE66;
    TYA                                  ;87EE69;
    LSR A                                ;87EE6A;
    TAY                                  ;87EE6B;
    SEP #$20                             ;87EE6C;
    INY                                  ;87EE6E;
    CPY.W #$0014                         ;87EE6F;
    BNE CODE_87EE1C                      ;87EE72;

CODE_87EE74:
    SEP #$10                             ;87EE74;
    LDA.B #$02                           ;87EE76;
    STA.B $0B                            ;87EE78;
    JSL.L CODE_848000                    ;87EE7A;
    JML.L CODE_828398                    ;87EE7E;

CODE_87EE82:
    LDX.B $01                            ;87EE82;
    JSR.W (PTR16_87EEAB,X)               ;87EE84;
    REP #$20                             ;87EE87;
    LDA.W #$DB46                         ;87EE89;
    STA.B $20                            ;87EE8C;
    SEP #$20                             ;87EE8E;
    JSL.L CODE_84AB77                    ;87EE90;
    REP #$20                             ;87EE94;
    LDA.W #$DB4A                         ;87EE96;
    STA.B $20                            ;87EE99;
    SEP #$20                             ;87EE9B;
    JSL.L CODE_82806E                    ;87EE9D;
    BCC CODE_87EEA7                      ;87EEA1;
    JML.L CODE_828387                    ;87EEA3;

CODE_87EEA7:
    JML.L CODE_8280B4                    ;87EEA7;

PTR16_87EEAB:
    dw CODE_87EEB1                       ;87EEAB;
    dw CODE_87EEE3                       ;87EEAD;
    dw CODE_87EF09                       ;87EEAF;

CODE_87EEB1:
    REP #$20                             ;87EEB1;
    LDA.W $0BAD                          ;87EEB3;
    SEC                                  ;87EEB6;
    SBC.B $05                            ;87EEB7;
    BCC CODE_87EEC0                      ;87EEB9;
    PLA                                  ;87EEBB;
    JML.L CODE_828387                    ;87EEBC;

CODE_87EEC0:
    SEP #$20                             ;87EEC0;
    LDA.B #$02                           ;87EEC2;
    STA.B $01                            ;87EEC4;
    LDA.B #$5C                           ;87EEC6;
    STA.B $16                            ;87EEC8;
    LDA.L $7F825B                        ;87EECA;
    STA.B $18                            ;87EECE;
    LDA.L $7F835B                        ;87EED0;
    STA.B $11                            ;87EED4;
    LDA.B #$04                           ;87EED6;
    STA.B $12                            ;87EED8;
    LDA.B #$00                           ;87EEDA;
    JSL.L CODE_848F07                    ;87EEDC;
    STZ.B $2C                            ;87EEE0;
    RTS                                  ;87EEE2;

CODE_87EEE3:
    JSL.L CODE_848EEA                    ;87EEE3;
    LDA.B $2C                            ;87EEE7;
    ORA.W $1F45                          ;87EEE9;
    BEQ CODE_87EF08                      ;87EEEC;
    LDA.B #$04                           ;87EEEE;
    STA.B $01                            ;87EEF0;
    LDA.B #$02                           ;87EEF2;
    JSL.L CODE_848F07                    ;87EEF4;
    REP #$20                             ;87EEF8;
    STZ.B $1A                            ;87EEFA;
    STZ.B $1C                            ;87EEFC;
    SEP #$20                             ;87EEFE;
    LDA.B #$40                           ;87EF00;
    STA.B $1E                            ;87EF02;
    LDA.B #$10                           ;87EF04;
    STA.B $0B                            ;87EF06;

CODE_87EF08:
    RTS                                  ;87EF08;

CODE_87EF09:
    JSL.L CODE_848EEA                    ;87EF09;
    LDA.B $0B                            ;87EF0D;
    BEQ CODE_87EF14                      ;87EF0F;
    DEC.B $0B                            ;87EF11;
    RTS                                  ;87EF13;

CODE_87EF14:
    JSL.L CODE_8281E8                    ;87EF14;
    RTS                                  ;87EF18;

CODE_87EF19:
    LDA.B $01                            ;87EF19;
    BNE CODE_87EF46                      ;87EF1B;
    INC.B $01                            ;87EF1D;
    LDA.L $7F8212                        ;87EF1F;
    STA.B $18                            ;87EF23;
    LDA.L $7F8312                        ;87EF25;
    STA.B $11                            ;87EF29;
    LDA.B #$14                           ;87EF2B;
    STA.B $16                            ;87EF2D;
    LDA.B #$00                           ;87EF2F;
    JSL.L CODE_848F07                    ;87EF31;
    REP #$20                             ;87EF35;
    STZ.B $1C                            ;87EF37;
    STZ.B $1A                            ;87EF39;
    LDA.W #$DB4E                         ;87EF3B;
    STA.B $20                            ;87EF3E;
    SEP #$20                             ;87EF40;
    LDA.B #$40                           ;87EF42;
    STA.B $1E                            ;87EF44;

CODE_87EF46:
    JSL.L CODE_8281E8                    ;87EF46;
    JSL.L CODE_8491BE                    ;87EF4A;
    LDA.B $2B                            ;87EF4E;
    AND.B #$04                           ;87EF50;
    BEQ CODE_87EF8E                      ;87EF52;
    LDA.B #$10                           ;87EF54;
    JSL.L CODE_84A333                    ;87EF56;
    LDA.B #$1A                           ;87EF5A;
    JSL.L CODE_8088CD                    ;87EF5C;
    REP #$20                             ;87EF60;
    LDA.B $1C                            ;87EF62;
    CMP.W #$FE00                         ;87EF64;
    BMI CODE_87EF86                      ;87EF67;
    LDA.B $05                            ;87EF69;
    SEC                                  ;87EF6B;
    SBC.W #$0008                         ;87EF6C;
    STA.W $002C                          ;87EF6F;
    LDA.B $08                            ;87EF72;
    SEC                                  ;87EF74;
    SBC.W #$0008                         ;87EF75;
    STA.W $002E                          ;87EF78;
    LDA.W #$0000                         ;87EF7B;
    JSL.L CODE_848011                    ;87EF7E;
    JML.L CODE_828398                    ;87EF82;

CODE_87EF86:
    EOR.W #$FFFF                         ;87EF86;
    INC A                                ;87EF89;
    LSR A                                ;87EF8A;
    LSR A                                ;87EF8B;
    STA.B $1C                            ;87EF8C;

CODE_87EF8E:
    JML.L CODE_8280B4                    ;87EF8E;

CODE_87EF92:
    LDX.B $01                            ;87EF92;
    JSR.W (PTR16_87EF9B,X)               ;87EF94;
    JML.L CODE_8280B4                    ;87EF97;

PTR16_87EF9B:
    dw CODE_87EFA5                       ;87EF9B;
    dw CODE_87EFE4                       ;87EF9D;
    dw CODE_87EFF6                       ;87EF9F;
    dw CODE_87F030                       ;87EFA1;
    dw CODE_87F069                       ;87EFA3;

CODE_87EFA5:
    LDA.B #$02                           ;87EFA5;
    STA.B $01                            ;87EFA7;
    LDA.B #$13                           ;87EFA9;
    STA.W $00C0                          ;87EFAB;
    STZ.B $1B                            ;87EFAE;
    STZ.W $1F3F                          ;87EFB0;
    LDA.B #$67                           ;87EFB3;
    STA.B $16                            ;87EFB5;
    LDA.L $7F8261                        ;87EFB7;
    STA.B $18                            ;87EFBB;
    LDA.L $7F8361                        ;87EFBD;
    STA.B $11                            ;87EFC1;
    LDA.B #$0C                           ;87EFC3;
    JSL.L CODE_848F07                    ;87EFC5;
    LDA.B #$10                           ;87EFC9;
    STA.B $1A                            ;87EFCB;
    REP #$20                             ;87EFCD;
    LDA.W $1E4D                          ;87EFCF;
    CLC                                  ;87EFD2;
    ADC.W #$0080                         ;87EFD3;
    STA.B $05                            ;87EFD6;
    LDA.W $1E50                          ;87EFD8;
    CLC                                  ;87EFDB;
    ADC.W #$000C                         ;87EFDC;
    STA.B $08                            ;87EFDF;
    SEP #$20                             ;87EFE1;
    RTS                                  ;87EFE3;

CODE_87EFE4:
    REP #$20                             ;87EFE4;
    LDA.B $08                            ;87EFE6;
    INC A                                ;87EFE8;
    STA.B $08                            ;87EFE9;
    SEP #$20                             ;87EFEB;
    DEC.B $1A                            ;87EFED;
    BNE CODE_87EFF5                      ;87EFEF;
    LDA.B #$04                           ;87EFF1;
    STA.B $01                            ;87EFF3;

CODE_87EFF5:
    RTS                                  ;87EFF5;

CODE_87EFF6:
    LDA.B $1B                            ;87EFF6;
    BEQ CODE_87F02D                      ;87EFF8;
    STZ.B $1B                            ;87EFFA;
    LDA.B #$78                           ;87EFFC;
    STA.W $1F3F                          ;87EFFE;
    AND.B #$03                           ;87F001;
    CLC                                  ;87F003;
    ADC.B #$30                           ;87F004;
    ASL A                                ;87F006;
    TAY                                  ;87F007;
    JSL.L CODE_808A7B                    ;87F008;
    LDA.B #$17                           ;87F00C;
    STA.W $00C0                          ;87F00E;
    LDA.B #$06                           ;87F011;
    STA.B $01                            ;87F013;
    LDA.B #$40                           ;87F015;
    TRB.B $11                            ;87F017;
    LDY.B #$11                           ;87F019;
    LDA.B ($0C),Y                        ;87F01B;
    AND.B #$40                           ;87F01D;
    TSB.B $11                            ;87F01F;
    STA.W $1F40                          ;87F021;
    JSR.W CODE_87F083                    ;87F024;
    LDA.B #$73                           ;87F027;
    JSL.L CODE_8088CD                    ;87F029;

CODE_87F02D:
    JMP.W CODE_87F0F5                    ;87F02D;

CODE_87F030:
    DEC.W $1F3F                          ;87F030;
    BNE CODE_87F041                      ;87F033;
    LDA.B #$13                           ;87F035;
    STA.W $00C0                          ;87F037;
    LDA.B #$04                           ;87F03A;
    STA.B $01                            ;87F03C;
    JMP.W CODE_87F0F5                    ;87F03E;

CODE_87F041:
    LDA.W $1F3F                          ;87F041;
    AND.B #$03                           ;87F044;
    CLC                                  ;87F046;
    ADC.B #$30                           ;87F047;
    ASL A                                ;87F049;
    TAY                                  ;87F04A;
    JSL.L CODE_808A7B                    ;87F04B;
    LDA.B $11                            ;87F04F;
    ASL A                                ;87F051;
    ASL A                                ;87F052;
    REP #$20                             ;87F053;
    LDA.W #$0002                         ;87F055;
    BCS CODE_87F05D                      ;87F058;
    LDA.W #$FFFE                         ;87F05A;

CODE_87F05D:
    CLC                                  ;87F05D;
    ADC.W $0BAD                          ;87F05E;
    STA.W $0BAD                          ;87F061;
    SEP #$20                             ;87F064;
    JMP.W CODE_87F0F5                    ;87F066;

CODE_87F069:
    REP #$20                             ;87F069;
    LDA.B $08                            ;87F06B;
    DEC A                                ;87F06D;
    STA.B $08                            ;87F06E;
    SEP #$20                             ;87F070;
    DEC.B $1A                            ;87F072;
    BNE CODE_87F082                      ;87F074;
    STZ.W $1F3F                          ;87F076;
    STZ.W $1F40                          ;87F079;
    PLA                                  ;87F07C;
    PLA                                  ;87F07D;
    JML.L CODE_828398                    ;87F07E;

CODE_87F082:
    RTS                                  ;87F082;

CODE_87F083:
    LDA.B $11                            ;87F083;
    AND.B #$40                           ;87F085;
    STA.B $1D                            ;87F087;
    STZ.B $1C                            ;87F089;
    REP #$30                             ;87F08B;
    STZ.W $00BE                          ;87F08D;
    STZ.W $00BC                          ;87F090;
    LDX.W #$0000                         ;87F093;

CODE_87F096:
    LDY.W #$0010                         ;87F096;
    LDA.W #$20FD                         ;87F099;
    ORA.B $1C                            ;87F09C;

CODE_87F09E:
    DEC A                                ;87F09E;
    STA.L $7FE000,X                      ;87F09F;
    INX                                  ;87F0A3;
    INX                                  ;87F0A4;
    INC A                                ;87F0A5;
    STA.L $7FE000,X                      ;87F0A6;
    INX                                  ;87F0AA;
    INX                                  ;87F0AB;
    DEY                                  ;87F0AC;
    BNE CODE_87F09E                      ;87F0AD;
    LDY.W #$0010                         ;87F0AF;
    LDA.W #$20FF                         ;87F0B2;
    ORA.B $1C                            ;87F0B5;

CODE_87F0B7:
    DEC A                                ;87F0B7;
    STA.L $7FE000,X                      ;87F0B8;
    INX                                  ;87F0BC;
    INX                                  ;87F0BD;
    INC A                                ;87F0BE;
    STA.L $7FE000,X                      ;87F0BF;
    INX                                  ;87F0C3;
    INX                                  ;87F0C4;
    DEY                                  ;87F0C5;
    BNE CODE_87F0B7                      ;87F0C6;
    CPX.W #$0800                         ;87F0C8;
    BCC CODE_87F096                      ;87F0CB;
    SEP #$10                             ;87F0CD;
    LDX.W $00A3                          ;87F0CF;
    LDA.W #$0800                         ;87F0D2;
    STA.W $0501,X                        ;87F0D5;
    STA.W $0503,X                        ;87F0D8;
    LDA.W #$E000                         ;87F0DB;
    STA.W $0505,X                        ;87F0DE;
    SEP #$20                             ;87F0E1;
    LDA.B #$7F                           ;87F0E3;
    STA.W $0507,X                        ;87F0E5;
    LDA.B #$80                           ;87F0E8;
    STA.W $0500,X                        ;87F0EA;
    TXA                                  ;87F0ED;
    CLC                                  ;87F0EE;
    ADC.B #$08                           ;87F0EF;
    STA.W $00A3                          ;87F0F1;
    RTS                                  ;87F0F4;

CODE_87F0F5:
    LDY.B #$27                           ;87F0F5;
    LDA.B ($0C),Y                        ;87F0F7;
    AND.B #$7F                           ;87F0F9;
    BNE CODE_87F10F                      ;87F0FB;
    LDA.B #$20                           ;87F0FD;
    STA.B $1A                            ;87F0FF;
    LDA.B #$08                           ;87F101;
    STA.B $01                            ;87F103;
    LDA.B #$04                           ;87F105;
    TSB.W $00A2                          ;87F107;
    LDA.B #$17                           ;87F10A;
    STA.W $00C0                          ;87F10C;

CODE_87F10F:
    RTS                                  ;87F10F;

CODE_87F110:
    LDA.B $0B                            ;87F110;
    BPL CODE_87F117                      ;87F112;
    JMP.W CODE_87F202                    ;87F114;

CODE_87F117:
    LDX.B $01                            ;87F117;
    JSR.W (PTR16_87F140,X)               ;87F119;
    LDA.B $00                            ;87F11C;
    BEQ CODE_87F13F                      ;87F11E;
    REP #$20                             ;87F120;
    LDX.B $0B                            ;87F122;
    LDA.W DATA8_86E211,X                 ;87F124;
    STA.W $0000                          ;87F127;
    LDA.W DATA8_86E21D,X                 ;87F12A;
    STA.W $0002                          ;87F12D;
    LDA.W DATA8_86E229,X                 ;87F130;
    STA.W $0004                          ;87F133;
    LDA.W DATA8_86E235,X                 ;87F136;
    STA.W $0006                          ;87F139;
    JSR.W CODE_87F24F                    ;87F13C;

CODE_87F13F:
    RTL                                  ;87F13F;

PTR16_87F140:
    dw CODE_87F148                       ;87F140;
    dw CODE_87F1C4                       ;87F142;
    dw CODE_87F1DD                       ;87F144;
    dw CODE_87F1FA                       ;87F146;

CODE_87F148:
    JSL.L CODE_84A23A                    ;87F148;
    TYA                                  ;87F14C;
    BEQ CODE_87F166                      ;87F14D;
    REP #$10                             ;87F14F;

CODE_87F151:
    DEY                                  ;87F151;
    DEY                                  ;87F152;
    BMI CODE_87F166                      ;87F153;
    LDX.W $0000,Y                        ;87F155;
    LDA.W $000B,X                        ;87F158;
    CMP.B $0B                            ;87F15B;
    BNE CODE_87F151                      ;87F15D;
    SEP #$10                             ;87F15F;
    JSL.L CODE_828387                    ;87F161;
    RTS                                  ;87F165;

CODE_87F166:
    SEP #$10                             ;87F166;
    LDA.B #$02                           ;87F168;
    STA.B $01                            ;87F16A;
    BIT.W $1F2C                          ;87F16C;
    BVS CODE_87F187                      ;87F16F;
    REP #$30                             ;87F171;
    PHB                                  ;87F173;
    LDX.W #$E1F5                         ;87F174;
    LDY.W #$0AA1                         ;87F177;
    LDA.W #$000D                         ;87F17A;
    MVN $00,$86                          ;87F17D;
    PLB                                  ;87F180;
    SEP #$30                             ;87F181;
    LDA.B #$40                           ;87F183;
    BRA CODE_87F19B                      ;87F185;

CODE_87F187:
    REP #$30                             ;87F187;
    PHB                                  ;87F189;
    LDX.W #$E203                         ;87F18A;
    LDY.W #$0AAF                         ;87F18D;
    LDA.W #$000D                         ;87F190;
    MVN $00,$86                          ;87F193;
    PLB                                  ;87F196;
    SEP #$30                             ;87F197;
    LDA.B #$80                           ;87F199;

CODE_87F19B:
    STA.B $10                            ;87F19B;
    TSB.W $1F2C                          ;87F19D;
    STZ.W $2123                          ;87F1A0;
    STZ.W $00C6                          ;87F1A3;
    STZ.W $2124                          ;87F1A6;
    STZ.W $00C7                          ;87F1A9;
    LDA.B #$80                           ;87F1AC;
    BIT.B $10                            ;87F1AE;
    BVS CODE_87F1B4                      ;87F1B0;
    LDA.B #$20                           ;87F1B2;

CODE_87F1B4:
    TSB.W $00C8                          ;87F1B4;
    LDA.W $00C8                          ;87F1B7;
    STA.W $2125                          ;87F1BA;
    STZ.W $212A                          ;87F1BD;
    STZ.W $212B                          ;87F1C0;
    RTS                                  ;87F1C3;

CODE_87F1C4:
    LDA.B #$04                           ;87F1C4;
    STA.B $01                            ;87F1C6;
    LDA.B #$13                           ;87F1C8;
    STA.W $00C0                          ;87F1CA;
    LDA.B #$10                           ;87F1CD;
    STA.W $00C1                          ;87F1CF;
    LDA.B #$12                           ;87F1D2;
    STA.W $00C9                          ;87F1D4;
    LDA.B #$41                           ;87F1D7;
    STA.W $00CA                          ;87F1D9;
    RTS                                  ;87F1DC;

CODE_87F1DD:
    REP #$20                             ;87F1DD;
    LDX.B $0B                            ;87F1DF;
    LDA.W $0BAD                          ;87F1E1;
    CMP.W DATA8_86E241,X                 ;87F1E4;
    BCC CODE_87F1EE                      ;87F1E7;
    CMP.W DATA8_86E24D,X                 ;87F1E9;
    BCC CODE_87F1F9                      ;87F1EC;

CODE_87F1EE:
    SEP #$20                             ;87F1EE;
    JSR.W CODE_87F38D                    ;87F1F0;
    JSL.L CODE_828387                    ;87F1F3;
    SEP #$10                             ;87F1F7;

CODE_87F1F9:
    RTS                                  ;87F1F9;

CODE_87F1FA:
    JSR.W CODE_87F38D                    ;87F1FA;
    JSL.L CODE_828398                    ;87F1FD;
    RTS                                  ;87F201;

CODE_87F202:
    REP #$20                             ;87F202;
    LDA.W $0BAD                          ;87F204;
    CMP.W #$0400                         ;87F207;
    SEP #$20                             ;87F20A;
    BCC CODE_87F20F                      ;87F20C;
    RTL                                  ;87F20E;

CODE_87F20F:
    LDX.B $01                            ;87F20F;
    BNE CODE_87F219                      ;87F211;
    INC.B $01                            ;87F213;
    LDA.B #$FF                           ;87F215;
    STA.B $04                            ;87F217;

CODE_87F219:
    LDA.B $04                            ;87F219;
    STA.B $05                            ;87F21B;
    JSR.W CODE_87F35A                    ;87F21D;
    CPX.B $05                            ;87F220;
    BEQ CODE_87F227                      ;87F222;
    JSR.W (PTR16_87F228,X)               ;87F224;

CODE_87F227:
    RTL                                  ;87F227;

PTR16_87F228:
    dw CODE_87F243                       ;87F228;
    dw CODE_87F234                       ;87F22A;
    dw CODE_87F243                       ;87F22C;
    dw CODE_87F239                       ;87F22E;
    dw CODE_87F243                       ;87F230;
    dw CODE_87F23E                       ;87F232;

CODE_87F234:
    LDA.B #$04                           ;87F234;
    JMP.W CODE_87F371                    ;87F236;

CODE_87F239:
    LDA.B #$06                           ;87F239;
    JMP.W CODE_87F371                    ;87F23B;

CODE_87F23E:
    LDA.B #$08                           ;87F23E;
    JMP.W CODE_87F371                    ;87F240;

CODE_87F243:
    REP #$10                             ;87F243;
    LDX.B $0C                            ;87F245;
    LDA.B #$06                           ;87F247;
    STA.W $0001,X                        ;87F249;
    SEP #$10                             ;87F24C;
    RTS                                  ;87F24E;

CODE_87F24F:
    REP #$20                             ;87F24F;
    LDX.B #$00                           ;87F251;
    LDY.B #$0B                           ;87F253;
    BIT.B $0F                            ;87F255;
    BVS CODE_87F25D                      ;87F257;
    LDX.B #$16                           ;87F259;
    LDY.B #$21                           ;87F25B;

CODE_87F25D:
    LDA.W $0004                          ;87F25D;
    SEC                                  ;87F260;
    SBC.W $1E4D                          ;87F261;
    BPL CODE_87F269                      ;87F264;
    LDA.W #$0000                         ;87F266;

CODE_87F269:
    CMP.W #$0100                         ;87F269;
    BCC CODE_87F271                      ;87F26C;
    JMP.W CODE_87F34F                    ;87F26E;

CODE_87F271:
    STA.W $000E                          ;87F271;
    LDA.W $0006                          ;87F274;
    SEC                                  ;87F277;
    SBC.W $1E4D                          ;87F278;
    BPL CODE_87F280                      ;87F27B;
    JMP.W CODE_87F34F                    ;87F27D;

CODE_87F280:
    CMP.W #$0100                         ;87F280;
    BCC CODE_87F288                      ;87F283;
    LDA.W #$00FF                         ;87F285;

CODE_87F288:
    STA.W $000C                          ;87F288;
    LDA.W $0000                          ;87F28B;
    SEC                                  ;87F28E;
    SBC.W $1E50                          ;87F28F;
    SEP #$20                             ;87F292;
    BPL CODE_87F298                      ;87F294;
    LDA.B #$01                           ;87F296;

CODE_87F298:
    STA.W $000A                          ;87F298;
    CMP.B #$7F                           ;87F29B;
    BCC CODE_87F2C0                      ;87F29D;
    CMP.B #$E0                           ;87F29F;
    BCC CODE_87F2A5                      ;87F2A1;
    LDA.B #$E0                           ;87F2A3;

CODE_87F2A5:
    SEC                                  ;87F2A5;
    SBC.B #$7F                           ;87F2A6;
    PHA                                  ;87F2A8;
    LDA.B #$7F                           ;87F2A9;
    STA.W $0B22,X                        ;87F2AB;
    STA.W $0B22,Y                        ;87F2AE;
    LDA.B #$FF                           ;87F2B1;
    STA.W $0B23,X                        ;87F2B3;
    LDA.B #$00                           ;87F2B6;
    STA.W $0B23,Y                        ;87F2B8;
    INX                                  ;87F2BB;
    INX                                  ;87F2BC;
    INY                                  ;87F2BD;
    INY                                  ;87F2BE;
    PLA                                  ;87F2BF;

CODE_87F2C0:
    STA.W $0B22,X                        ;87F2C0;
    STA.W $0B22,Y                        ;87F2C3;
    LDA.B #$FF                           ;87F2C6;
    STA.W $0B23,X                        ;87F2C8;
    LDA.B #$00                           ;87F2CB;
    STA.W $0B23,Y                        ;87F2CD;
    INX                                  ;87F2D0;
    INX                                  ;87F2D1;
    INY                                  ;87F2D2;
    INY                                  ;87F2D3;
    LDA.W $000A                          ;87F2D4;
    CMP.B #$E0                           ;87F2D7;
    BCS CODE_87F34F                      ;87F2D9;
    REP #$20                             ;87F2DB;
    LDA.W $0002                          ;87F2DD;
    SEC                                  ;87F2E0;
    SBC.W $1E50                          ;87F2E1;
    SEP #$20                             ;87F2E4;
    BMI CODE_87F34F                      ;87F2E6;
    CMP.B #$E0                           ;87F2E8;
    BCC CODE_87F2EE                      ;87F2EA;
    LDA.B #$E0                           ;87F2EC;

CODE_87F2EE:
    SEC                                  ;87F2EE;
    SBC.W $000A                          ;87F2EF;
    STA.W $0B22,X                        ;87F2F2;
    STA.W $0B22,Y                        ;87F2F5;
    CLC                                  ;87F2F8;
    ADC.W $000A                          ;87F2F9;
    STA.W $000A                          ;87F2FC;
    LDA.W $000E                          ;87F2FF;
    STA.W $0B23,X                        ;87F302;
    LDA.W $000C                          ;87F305;
    STA.W $0B23,Y                        ;87F308;
    INX                                  ;87F30B;
    INX                                  ;87F30C;
    INY                                  ;87F30D;
    INY                                  ;87F30E;
    LDA.W $000A                          ;87F30F;
    CMP.B #$E0                           ;87F312;
    BCS CODE_87F34F                      ;87F314;
    LDA.B #$E0                           ;87F316;
    SEC                                  ;87F318;
    SBC.W $000A                          ;87F319;
    CMP.B #$7F                           ;87F31C;
    BCC CODE_87F33B                      ;87F31E;
    SEC                                  ;87F320;
    SBC.B #$7F                           ;87F321;
    PHA                                  ;87F323;
    LDA.B #$7F                           ;87F324;
    STA.W $0B22,X                        ;87F326;
    STA.W $0B22,Y                        ;87F329;
    LDA.B #$FF                           ;87F32C;
    STA.W $0B23,X                        ;87F32E;
    LDA.B #$00                           ;87F331;
    STA.W $0B23,Y                        ;87F333;
    INX                                  ;87F336;
    INX                                  ;87F337;
    INY                                  ;87F338;
    INY                                  ;87F339;
    PLA                                  ;87F33A;

CODE_87F33B:
    STA.W $0B22,X                        ;87F33B;
    STA.W $0B22,Y                        ;87F33E;
    LDA.B #$FF                           ;87F341;
    STA.W $0B23,X                        ;87F343;
    LDA.B #$00                           ;87F346;
    STA.W $0B23,Y                        ;87F348;
    INX                                  ;87F34B;
    INX                                  ;87F34C;
    INY                                  ;87F34D;
    INY                                  ;87F34E;

CODE_87F34F:
    SEP #$20                             ;87F34F;
    STZ.W $0B22,X                        ;87F351;
    LDA.B #$00                           ;87F354;
    STA.W $0B22,Y                        ;87F356;
    RTS                                  ;87F359;

CODE_87F35A:
    REP #$20                             ;87F35A;
    LDX.B #$00                           ;87F35C;
    LDA.W $0BB0                          ;87F35E;

CODE_87F361:
    CMP.W DATA8_86E259,X                 ;87F361;
    BCC CODE_87F36C                      ;87F364;
    INX                                  ;87F366;
    INX                                  ;87F367;
    CPX.B #$0A                           ;87F368;
    BNE CODE_87F361                      ;87F36A;

CODE_87F36C:
    SEP #$20                             ;87F36C;
    STX.B $04                            ;87F36E;
    RTS                                  ;87F370;

CODE_87F371:
    STA.W $0000                          ;87F371;
    JSL.L CODE_8282D3                    ;87F374;
    BNE CODE_87F38A                      ;87F378;
    INC.W $0000,X                        ;87F37A;
    LDA.B #$2E                           ;87F37D;
    STA.W $000A,X                        ;87F37F;
    LDA.W $0000                          ;87F382;
    STA.W $000B,X                        ;87F385;
    STX.B $0C                            ;87F388;

CODE_87F38A:
    SEP #$10                             ;87F38A;
    RTS                                  ;87F38C;

CODE_87F38D:
    LDA.B #$17                           ;87F38D;
    STA.W $00C0                          ;87F38F;
    STZ.W $00C1                          ;87F392;
    STZ.W $00C9                          ;87F395;
    STZ.W $00CA                          ;87F398;
    BIT.B $10                            ;87F39B;
    BVC CODE_87F3A9                      ;87F39D;
    STZ.W $0AA1                          ;87F39F;
    STZ.W $0AA8                          ;87F3A2;
    LDA.B #$40                           ;87F3A5;
    BRA CODE_87F3B1                      ;87F3A7;

CODE_87F3A9:
    STZ.W $0AAF                          ;87F3A9;
    STZ.W $0AB6                          ;87F3AC;
    LDA.B #$80                           ;87F3AF;

CODE_87F3B1:
    TRB.W $00C8                          ;87F3B1;
    LDA.W $00C8                          ;87F3B4;
    STA.W $2125                          ;87F3B7;
    LDA.B $10                            ;87F3BA;
    TRB.W $1F2C                          ;87F3BC;
    RTS                                  ;87F3BF;

CODE_87F3C0:
    REP #$10                             ;87F3C0;
    LDX.B $0C                            ;87F3C2;
    LDA.B $01                            ;87F3C4;
    BNE CODE_87F3FF                      ;87F3C6;
    INC.B $01                            ;87F3C8;
    LDA.L $7F8269                        ;87F3CA;
    STA.B $18                            ;87F3CE;
    LDA.L $7F8369                        ;87F3D0;
    CLC                                  ;87F3D4;
    ADC.B #$02                           ;87F3D5;
    STA.B $11                            ;87F3D7;
    LDA.B #$02                           ;87F3D9;
    STA.B $12                            ;87F3DB;
    STZ.B $0B                            ;87F3DD;
    LDA.B #$75                           ;87F3DF;
    STA.B $16                            ;87F3E1;
    LDA.W $0011,X                        ;87F3E3;
    AND.B #$40                           ;87F3E6;
    TSB.B $11                            ;87F3E8;
    ASL A                                ;87F3EA;
    ASL A                                ;87F3EB;
    REP #$20                             ;87F3EC;
    LDA.W #$0010                         ;87F3EE;
    BCC CODE_87F3F6                      ;87F3F1;
    LDA.W #$FFF0                         ;87F3F3;

CODE_87F3F6:
    STA.B $1A                            ;87F3F6;
    LDA.W $0008,X                        ;87F3F8;
    STA.B $08                            ;87F3FB;
    SEP #$20                             ;87F3FD;

CODE_87F3FF:
    INC.B $0B                            ;87F3FF;
    LDA.B $0B                            ;87F401;
    CMP.B #$04                           ;87F403;
    BCS CODE_87F408                      ;87F405;
    RTL                                  ;87F407;

CODE_87F408:
    LSR A                                ;87F408;
    REP #$20                             ;87F409;
    LDA.B $1A                            ;87F40B;
    BCC CODE_87F410                      ;87F40D;
    ASL A                                ;87F40F;

CODE_87F410:
    CLC                                  ;87F410;
    ADC.W $0005,X                        ;87F411;
    STA.B $05                            ;87F414;
    SEP #$20                             ;87F416;
    LDA.W $0017,X                        ;87F418;
    STA.B $17                            ;87F41B;
    LDA.W $0036,X                        ;87F41D;
    BEQ CODE_87F426                      ;87F420;
    JML.L CODE_8280B4                    ;87F422;

CODE_87F426:
    JML.L CODE_828398                    ;87F426;

CODE_87F42A:
    LDA.B $01                            ;87F42A;
    BNE CODE_87F45C                      ;87F42C;
    INC.B $01                            ;87F42E;
    LDA.B $0B                            ;87F430;
    ASL A                                ;87F432;
    ASL A                                ;87F433;
    TAY                                  ;87F434;
    LDA.W DATA8_86E39C,Y                 ;87F435;
    TAX                                  ;87F438;
    LDA.L $7F8200,X                      ;87F439;
    STA.B $18                            ;87F43D;
    LDA.B $11                            ;87F43F;
    AND.B #$70                           ;87F441;
    ORA.L $7F8300,X                      ;87F443;
    STA.B $11                            ;87F447;
    LDA.W DATA8_86E39F,Y                 ;87F449;
    AND.B #$0F                           ;87F44C;
    STA.B $12                            ;87F44E;
    LDA.W DATA8_86E39D,Y                 ;87F450;
    STA.B $16                            ;87F453;
    LDA.W DATA8_86E39E,Y                 ;87F455;
    JML.L CODE_848F07                    ;87F458;

CODE_87F45C:
    LDX.B $02                            ;87F45C;
    JMP.W (PTR16_87F461,X)               ;87F45E;

PTR16_87F461:
    dw CODE_87F463                       ;87F461;

CODE_87F463:
    DEC.B $03                            ;87F463;
    BEQ CODE_87F472                      ;87F465;
    JSL.L CODE_848EEA                    ;87F467;
    JSL.L CODE_8280B4                    ;87F46B;
    JMP.W CODE_87F476                    ;87F46F;

CODE_87F472:
    JSL.L CODE_828398                    ;87F472;

CODE_87F476:
    RTL                                  ;87F476;

CODE_87F477:
    LDA.B $01                            ;87F477;
    BNE CODE_87F4BE                      ;87F479;
    INC.B $01                            ;87F47B;
    LDA.B $02                            ;87F47D;
    CMP.B #$02                           ;87F47F;
    BEQ CODE_87F48A                      ;87F481;
    REP #$20                             ;87F483;
    LDA.W #$0100                         ;87F485;
    STA.B $1E                            ;87F488;

CODE_87F48A:
    SEP #$20                             ;87F48A;
    LDA.B #$10                           ;87F48C;
    STA.B $03                            ;87F48E;
    LDA.B $0B                            ;87F490;
    ASL A                                ;87F492;
    ASL A                                ;87F493;
    TAY                                  ;87F494;
    LDA.W DATA8_86E3FA,Y                 ;87F495;
    TAX                                  ;87F498;
    LDA.L $7F8200,X                      ;87F499;
    STA.B $18                            ;87F49D;
    LDA.B $11                            ;87F49F;
    AND.B #$70                           ;87F4A1;
    STA.B $11                            ;87F4A3;
    LDA.L $7F8300,X                      ;87F4A5;
    AND.B #$0F                           ;87F4A9;
    TSB.B $11                            ;87F4AB;
    LDA.W DATA8_86E3FD,Y                 ;87F4AD;
    STA.B $12                            ;87F4B0;
    LDA.W DATA8_86E3FB,Y                 ;87F4B2;
    STA.B $16                            ;87F4B5;
    LDA.W DATA8_86E3FC,Y                 ;87F4B7;
    JML.L CODE_848F07                    ;87F4BA;

CODE_87F4BE:
    LDX.B $02                            ;87F4BE;
    JMP.W (PTR16_87F4C3,X)               ;87F4C0;

PTR16_87F4C3:
    dw CODE_87F4C7                       ;87F4C3;
    dw CODE_87F4F8                       ;87F4C5;

CODE_87F4C7:
    LDA.B $0C                            ;87F4C7;
    BEQ CODE_87F4E7                      ;87F4C9;
    REP #$20                             ;87F4CB;
    DEC.B $1E                            ;87F4CD;
    BEQ CODE_87F4E1                      ;87F4CF;
    SEP #$20                             ;87F4D1;
    DEC.B $03                            ;87F4D3;
    BNE CODE_87F4E7                      ;87F4D5;
    LDA.B #$08                           ;87F4D7;
    STA.B $03                            ;87F4D9;
    JSR.W CODE_87F519                    ;87F4DB;
    JMP.W CODE_87F4E7                    ;87F4DE;

CODE_87F4E1:
    REP #$20                             ;87F4E1;
    INC.B $1E                            ;87F4E3;
    SEP #$20                             ;87F4E5;

CODE_87F4E7:
    LDA.W $1F41                          ;87F4E7;
    BNE CODE_87F4F4                      ;87F4EA;
    JSL.L CODE_848EEA                    ;87F4EC;
    JML.L CODE_8280B4                    ;87F4F0;

CODE_87F4F4:
    JML.L CODE_828398                    ;87F4F4;

CODE_87F4F8:
    JSL.L CODE_848EEA                    ;87F4F8;
    JSL.L CODE_8280B4                    ;87F4FC;
    REP #$10                             ;87F500;
    LDX.B $1E                            ;87F502;
    LDA.W $0000,X                        ;87F504;
    BEQ CODE_87F512                      ;87F507;
    LDA.W $000A,X                        ;87F509;
    CMP.B #$1E                           ;87F50C;
    BEQ CODE_87F516                      ;87F50E;
    SEP #$10                             ;87F510;

CODE_87F512:
    JML.L CODE_828398                    ;87F512;

CODE_87F516:
    SEP #$10                             ;87F516;
    RTL                                  ;87F518;

CODE_87F519:
    REP #$10                             ;87F519;
    JSL.L CODE_8282D3                    ;87F51B;
    BNE CODE_87F56C                      ;87F51F;
    INC.W $0000,X                        ;87F521;
    LDA.B #$39                           ;87F524;
    STA.W $000A,X                        ;87F526;
    LDA.B #$01                           ;87F529;
    STA.W $000C,X                        ;87F52B;
    LDA.B #$80                           ;87F52E;
    STA.W $000B,X                        ;87F530;
    REP #$20                             ;87F533;
    JSL.L CODE_849086                    ;87F535;
    AND.W #$0007                         ;87F539;
    STA.W $0000                          ;87F53C;
    JSL.L CODE_849086                    ;87F53F;
    AND.W #$000F                         ;87F543;
    STA.W $0002                          ;87F546;
    LDA.B $11                            ;87F549;
    AND.W #$0040                         ;87F54B;
    BEQ CODE_87F55A                      ;87F54E;
    LDA.W $0000                          ;87F550;
    EOR.W #$FFFF                         ;87F553;
    INC A                                ;87F556;
    STA.W $0000                          ;87F557;

CODE_87F55A:
    LDA.B $05                            ;87F55A;
    CLC                                  ;87F55C;
    ADC.W $0000                          ;87F55D;
    STA.W $0005,X                        ;87F560;
    LDA.B $08                            ;87F563;
    CLC                                  ;87F565;
    ADC.W $0002                          ;87F566;
    STA.W $0008,X                        ;87F569;

CODE_87F56C:
    SEP #$30                             ;87F56C;
    RTS                                  ;87F56E;

CODE_87F56F:
    LDA.B $01                            ;87F56F;
    BNE CODE_87F5B9                      ;87F571;
    INC.B $01                            ;87F573;
    STZ.B $18                            ;87F575;
    LDA.W $0BB9                          ;87F577;
    AND.B #$30                           ;87F57A;
    ORA.B #$04                           ;87F57C;
    STA.B $11                            ;87F57E;
    LDA.B #$17                           ;87F580;
    STA.B $16                            ;87F582;
    LDA.B #$FF                           ;87F584;
    STA.B $12                            ;87F586;
    LDA.B #$78                           ;87F588;
    STA.B $1E                            ;87F58A;
    LDA.B $0B                            ;87F58C;
    AND.B #$7F                           ;87F58E;
    JSL.L CODE_848F07                    ;87F590;
    LDA.B $0B                            ;87F594;
    BPL CODE_87F5B9                      ;87F596;
    LDA.B $0C                            ;87F598;
    BEQ CODE_87F5A7                      ;87F59A;
    LDA.B #$40                           ;87F59C;
    TSB.B $11                            ;87F59E;
    REP #$20                             ;87F5A0;
    LDA.W #$FF40                         ;87F5A2;
    BRA CODE_87F5B0                      ;87F5A5;

CODE_87F5A7:
    LDA.B #$40                           ;87F5A7;
    TRB.B $11                            ;87F5A9;
    REP #$20                             ;87F5AB;
    LDA.W #$00C0                         ;87F5AD;

CODE_87F5B0:
    STA.B $1A                            ;87F5B0;
    LDA.W #$FE00                         ;87F5B2;
    STA.B $1C                            ;87F5B5;
    SEP #$20                             ;87F5B7;

CODE_87F5B9:
    JSL.L CODE_848EEA                    ;87F5B9;
    LDA.B $0B                            ;87F5BD;
    BMI CODE_87F5D9                      ;87F5BF;
    LDA.B $0F                            ;87F5C1;
    BPL CODE_87F5D5                      ;87F5C3;
    LDA.B $13                            ;87F5C5;
    CMP.B #$01                           ;87F5C7;
    BEQ CODE_87F5D1                      ;87F5C9;
    BRA CODE_87F5D5                      ;87F5CB;
    DEC.B $1E                            ;87F5CD;
    BNE CODE_87F5D5                      ;87F5CF;

CODE_87F5D1:
    JML.L CODE_828398                    ;87F5D1;

CODE_87F5D5:
    JML.L CODE_8280B4                    ;87F5D5;

CODE_87F5D9:
    JSL.L CODE_82820A                    ;87F5D9;
    REP #$20                             ;87F5DD;
    LDA.B $1A                            ;87F5DF;
    BMI CODE_87F5EB                      ;87F5E1;
    SEC                                  ;87F5E3;
    SBC.W #$0006                         ;87F5E4;
    BMI CODE_87F5F9                      ;87F5E7;
    BRA CODE_87F5F1                      ;87F5E9;

CODE_87F5EB:
    CLC                                  ;87F5EB;
    ADC.W #$0006                         ;87F5EC;
    BPL CODE_87F5F9                      ;87F5EF;

CODE_87F5F1:
    STA.B $1A                            ;87F5F1;
    SEP #$20                             ;87F5F3;
    JML.L CODE_8280B4                    ;87F5F5;

CODE_87F5F9:
    SEP #$20                             ;87F5F9;
    JML.L CODE_828398                    ;87F5FB;

CODE_87F5FF:
    LDX.B $01                            ;87F5FF;
    JSR.W (PTR16_87F610,X)               ;87F601;
    LDA.W $0BCF                          ;87F604;
    AND.B #$7F                           ;87F607;
    BNE CODE_87F60F                      ;87F609;
    LDA.B #$0A                           ;87F60B;
    STA.B $01                            ;87F60D;

CODE_87F60F:
    RTL                                  ;87F60F;

PTR16_87F610:
    dw CODE_87F61C                       ;87F610;
    dw CODE_87F69D                       ;87F612;
    dw CODE_87F6C9                       ;87F614;
    dw CODE_87F702                       ;87F616;
    dw CODE_87F73D                       ;87F618;
    dw CODE_87F785                       ;87F61A;

CODE_87F61C:
    STZ.W $00C6                          ;87F61C;
    STZ.W $2123                          ;87F61F;
    STZ.W $00C7                          ;87F622;
    STZ.W $2124                          ;87F625;
    LDA.B #$A0                           ;87F628;
    STA.W $2125                          ;87F62A;
    STA.W $00C8                          ;87F62D;
    STZ.W $212A                          ;87F630;
    STZ.W $212B                          ;87F633;
    STZ.W $00C1                          ;87F636;
    STZ.W $212E                          ;87F639;
    STZ.W $00CE                          ;87F63C;
    STZ.W $212F                          ;87F63F;
    STZ.W $00CF                          ;87F642;
    LDA.B #$AF                           ;87F645;
    STA.W $00CA                          ;87F647;
    STA.W $2131                          ;87F64A;
    LDA.B #$00                           ;87F64D;
    STA.W $00CB                          ;87F64F;
    STA.W $00CC                          ;87F652;
    STA.W $00CD                          ;87F655;
    LDA.B #$02                           ;87F658;
    STA.B $01                            ;87F65A;
    STZ.B $1F                            ;87F65C;
    STZ.B $11                            ;87F65E;
    STZ.B $12                            ;87F660;
    INC.B $10                            ;87F662;
    LDA.B #$17                           ;87F664;
    STA.B $02                            ;87F666;
    LDA.B #$00                           ;87F668;
    STA.B $03                            ;87F66A;
    BIT.W $1F90                          ;87F66C;
    BVS CODE_87F676                      ;87F66F;
    LDX.B $0B                            ;87F671;
    JMP.W CODE_87F68C                    ;87F673;

CODE_87F676:
    LDA.B #$1F                           ;87F676;
    STA.B $02                            ;87F678;
    LDA.B #$0F                           ;87F67A;
    STA.B $03                            ;87F67C;
    LDA.B #$08                           ;87F67E;
    STA.B $01                            ;87F680;
    LDA.B #$60                           ;87F682;
    STA.B $1E                            ;87F684;
    LDA.B $0B                            ;87F686;
    CLC                                  ;87F688;
    ADC.B #$08                           ;87F689;
    TAX                                  ;87F68B;

CODE_87F68C:
    REP #$20                             ;87F68C;
    LDA.W DATA8_86E40A,X                 ;87F68E;
    STA.B $1A                            ;87F691;
    INX                                  ;87F693;
    INX                                  ;87F694;
    LDA.W DATA8_86E40A,X                 ;87F695;
    STA.B $1C                            ;87F698;
    SEP #$20                             ;87F69A;
    RTS                                  ;87F69C;

CODE_87F69D:
    REP #$20                             ;87F69D;
    LDA.W $0BAD                          ;87F69F;
    CMP.B $1A                            ;87F6A2;
    BMI CODE_87F6BA                      ;87F6A4;
    LDA.W $0BAD                          ;87F6A6;
    CMP.B $1C                            ;87F6A9;
    BPL CODE_87F6BA                      ;87F6AB;
    SEP #$20                             ;87F6AD;
    LDA.B $12                            ;87F6AF;
    BNE CODE_87F6C8                      ;87F6B1;
    LDA.B #$04                           ;87F6B3;
    STA.B $01                            ;87F6B5;
    JMP.W CODE_87F6C4                    ;87F6B7;

CODE_87F6BA:
    SEP #$20                             ;87F6BA;
    LDA.B $12                            ;87F6BC;
    BEQ CODE_87F6C8                      ;87F6BE;
    LDA.B #$06                           ;87F6C0;
    STA.B $01                            ;87F6C2;

CODE_87F6C4:
    LDA.B #$02                           ;87F6C4;
    STA.B $1E                            ;87F6C6;

CODE_87F6C8:
    RTS                                  ;87F6C8;

CODE_87F6C9:
    DEC.B $1E                            ;87F6C9;
    BNE CODE_87F701                      ;87F6CB;
    INC.B $1F                            ;87F6CD;
    LDA.B $1F                            ;87F6CF;
    CMP.B $02                            ;87F6D1;
    BMI CODE_87F6F4                      ;87F6D3;
    LDA.B #$01                           ;87F6D5;
    STA.B $12                            ;87F6D7;
    LDA.B $02                            ;87F6D9;
    STA.B $1F                            ;87F6DB;
    BIT.W $1F90                          ;87F6DD;
    BVC CODE_87F6ED                      ;87F6E0;
    LDA.B #$08                           ;87F6E2;
    STA.B $01                            ;87F6E4;
    LDA.B #$60                           ;87F6E6;
    STA.B $1E                            ;87F6E8;
    JMP.W CODE_87F701                    ;87F6EA;

CODE_87F6ED:
    LDA.B #$02                           ;87F6ED;
    STA.B $01                            ;87F6EF;
    JMP.W CODE_87F701                    ;87F6F1;

CODE_87F6F4:
    STA.W $00CB                          ;87F6F4;
    STA.W $00CC                          ;87F6F7;
    STA.W $00CD                          ;87F6FA;
    LDA.B #$02                           ;87F6FD;
    STA.B $1E                            ;87F6FF;

CODE_87F701:
    RTS                                  ;87F701;

CODE_87F702:
    DEC.B $1E                            ;87F702;
    BNE CODE_87F73C                      ;87F704;
    DEC.B $1F                            ;87F706;
    LDA.B $1F                            ;87F708;
    CMP.B $03                            ;87F70A;
    BPL CODE_87F72F                      ;87F70C;
    STZ.B $12                            ;87F70E;
    LDA.B $03                            ;87F710;
    STA.B $1F                            ;87F712;
    BIT.W $1F90                          ;87F714;
    BVC CODE_87F728                      ;87F717;
    LDA.B #$08                           ;87F719;
    STA.B $01                            ;87F71B;
    LDA.B #$60                           ;87F71D;
    STA.B $1E                            ;87F71F;
    LDA.B #$0F                           ;87F721;
    STA.B $03                            ;87F723;
    JMP.W CODE_87F73C                    ;87F725;

CODE_87F728:
    LDA.B #$02                           ;87F728;
    STA.B $01                            ;87F72A;
    JMP.W CODE_87F73C                    ;87F72C;

CODE_87F72F:
    STA.W $00CB                          ;87F72F;
    STA.W $00CC                          ;87F732;
    STA.W $00CD                          ;87F735;
    LDA.B #$02                           ;87F738;
    STA.B $1E                            ;87F73A;

CODE_87F73C:
    RTS                                  ;87F73C;

CODE_87F73D:
    LDA.B $10                            ;87F73D;
    BNE CODE_87F745                      ;87F73F;
    DEC.B $1E                            ;87F741;
    BNE CODE_87F745                      ;87F743;

CODE_87F745:
    REP #$20                             ;87F745;
    LDA.W $0BAD                          ;87F747;
    CMP.B $1A                            ;87F74A;
    BMI CODE_87F770                      ;87F74C;
    LDA.W $0BAD                          ;87F74E;
    CMP.B $1C                            ;87F751;
    BPL CODE_87F770                      ;87F753;
    SEP #$20                             ;87F755;
    LDA.B $10                            ;87F757;
    BNE CODE_87F763                      ;87F759;
    LDA.B $1E                            ;87F75B;
    BNE CODE_87F782                      ;87F75D;
    LDA.B #$60                           ;87F75F;
    STA.B $1E                            ;87F761;

CODE_87F763:
    LDA.B $12                            ;87F763;
    BNE CODE_87F778                      ;87F765;
    LDA.B #$04                           ;87F767;
    STA.B $01                            ;87F769;
    STZ.B $10                            ;87F76B;
    JMP.W CODE_87F77E                    ;87F76D;

CODE_87F770:
    SEP #$20                             ;87F770;
    LDA.B #$01                           ;87F772;
    STA.B $10                            ;87F774;
    STZ.B $03                            ;87F776;

CODE_87F778:
    SEP #$20                             ;87F778;
    LDA.B #$06                           ;87F77A;
    STA.B $01                            ;87F77C;

CODE_87F77E:
    LDA.B #$02                           ;87F77E;
    STA.B $1E                            ;87F780;

CODE_87F782:
    SEP #$20                             ;87F782;
    RTS                                  ;87F784;

CODE_87F785:
    LDA.B $1F                            ;87F785;
    BEQ CODE_87F796                      ;87F787;
    DEC.B $1F                            ;87F789;
    LDA.B $1F                            ;87F78B;
    STA.W $00CB                          ;87F78D;
    STA.W $00CC                          ;87F790;
    STA.W $00CD                          ;87F793;

CODE_87F796:
    RTS                                  ;87F796;

CODE_87F797:
    LDX.B $01                            ;87F797;
    JMP.W (PTR16_87F79C,X)               ;87F799;

PTR16_87F79C:
    dw CODE_87F7A4                       ;87F79C;
    dw CODE_87F7F1                       ;87F79E;
    dw CODE_87F829                       ;87F7A0;
    dw CODE_87F861                       ;87F7A2;

CODE_87F7A4:
    LDX.B $0B                            ;87F7A4;
    LDA.W $1F81                          ;87F7A6;
    CMP.W DATA8_86E452,X                 ;87F7A9;
    BCC CODE_87F7C0                      ;87F7AC;
    REP #$20                             ;87F7AE;
    LDA.B $05                            ;87F7B0;
    CLC                                  ;87F7B2;
    ADC.W #$0010                         ;87F7B3;
    AND.W #$FFF0                         ;87F7B6;
    STA.W $1E5E                          ;87F7B9;
    JML.L CODE_828387                    ;87F7BC;

CODE_87F7C0:
    REP #$30                             ;87F7C0;
    LDX.W #$0E68                         ;87F7C2;

CODE_87F7C5:
    LDA.W $0000,X                        ;87F7C5;
    BNE CODE_87F7F0                      ;87F7C8;
    TXA                                  ;87F7CA;
    CLC                                  ;87F7CB;
    ADC.W #$0040                         ;87F7CC;
    TAX                                  ;87F7CF;
    CMP.W #$1228                         ;87F7D0;
    BCC CODE_87F7C5                      ;87F7D3;
    LDA.B $0B                            ;87F7D5;
    AND.W #$00FF                         ;87F7D7;
    ASL A                                ;87F7DA;
    STA.B $0C                            ;87F7DB;
    ASL A                                ;87F7DD;
    ADC.B $0C                            ;87F7DE;
    CLC                                  ;87F7E0;
    ADC.W #$E41A                         ;87F7E1;
    STA.B $0C                            ;87F7E4;
    SEP #$30                             ;87F7E6;
    LDA.B #$3C                           ;87F7E8;
    STA.B $03                            ;87F7EA;
    LDA.B #$02                           ;87F7EC;
    STA.B $01                            ;87F7EE;

CODE_87F7F0:
    RTL                                  ;87F7F0;

CODE_87F7F1:
    DEC.B $03                            ;87F7F1;
    BNE CODE_87F828                      ;87F7F3;
    JSL.L CODE_84A4AB                    ;87F7F5;
    REP #$20                             ;87F7F9;
    LDA.B ($0C)                          ;87F7FB;
    STA.W $0008                          ;87F7FD;
    LDA.B $05                            ;87F800;
    STA.W $0000                          ;87F802;
    LDA.B $08                            ;87F805;
    STA.W $0002                          ;87F807;
    CLC                                  ;87F80A;
    ADC.W #$0010                         ;87F80B;
    STA.B $08                            ;87F80E;
    LDA.B $0C                            ;87F810;
    INC A                                ;87F812;
    INC A                                ;87F813;
    STA.B $0C                            ;87F814;
    SEP #$20                             ;87F816;
    JSL.L CODE_849111                    ;87F818;
    JSL.L CODE_80B8D7                    ;87F81C;
    LDA.B #$0A                           ;87F820;
    STA.B $03                            ;87F822;
    LDA.B #$04                           ;87F824;
    STA.B $01                            ;87F826;

CODE_87F828:
    RTL                                  ;87F828;

CODE_87F829:
    DEC.B $03                            ;87F829;
    BNE CODE_87F860                      ;87F82B;
    JSL.L CODE_84A4AB                    ;87F82D;
    REP #$20                             ;87F831;
    LDA.B ($0C)                          ;87F833;
    STA.W $0008                          ;87F835;
    LDA.B $05                            ;87F838;
    STA.W $0000                          ;87F83A;
    LDA.B $08                            ;87F83D;
    STA.W $0002                          ;87F83F;
    CLC                                  ;87F842;
    ADC.W #$0010                         ;87F843;
    STA.B $08                            ;87F846;
    LDA.B $0C                            ;87F848;
    INC A                                ;87F84A;
    INC A                                ;87F84B;
    STA.B $0C                            ;87F84C;
    SEP #$20                             ;87F84E;
    JSL.L CODE_849111                    ;87F850;
    JSL.L CODE_80B8D7                    ;87F854;
    LDA.B #$0A                           ;87F858;
    STA.B $03                            ;87F85A;
    LDA.B #$06                           ;87F85C;
    STA.B $01                            ;87F85E;

CODE_87F860:
    RTL                                  ;87F860;

CODE_87F861:
    DEC.B $03                            ;87F861;
    BNE CODE_87F89F                      ;87F863;
    JSL.L CODE_84A4AB                    ;87F865;
    REP #$30                             ;87F869;
    LDA.B $0B                            ;87F86B;
    AND.W #$00FF                         ;87F86D;
    ASL A                                ;87F870;
    TAX                                  ;87F871;
    LDA.W DATA8_86E444,X                 ;87F872;
    STA.W $1E60                          ;87F875;
    LDA.B ($0C)                          ;87F878;
    STA.W $0008                          ;87F87A;
    LDA.B $05                            ;87F87D;
    STA.W $0000                          ;87F87F;
    LDA.B $08                            ;87F882;
    STA.W $0002                          ;87F884;
    SEP #$30                             ;87F887;
    JSL.L CODE_849111                    ;87F889;
    JSL.L CODE_80B8D7                    ;87F88D;
    LDX.B $0B                            ;87F891;
    LDA.W DATA8_86E452,X                 ;87F893;
    BMI CODE_87F89B                      ;87F896;
    STA.W $1F81                          ;87F898;

CODE_87F89B:
    JML.L CODE_828398                    ;87F89B;

CODE_87F89F:
    RTL                                  ;87F89F;

CODE_87F8A0:
    LDX.B $01                            ;87F8A0;
    BNE CODE_87F8A9                      ;87F8A2;
    LDA.W $1F2C                          ;87F8A4;
    BMI CODE_87F8EC                      ;87F8A7;

CODE_87F8A9:
    JSR.W (PTR16_87F8F0,X)               ;87F8A9;
    JSR.W CODE_87FA9A                    ;87F8AC;
    BCC CODE_87F8EB                      ;87F8AF;
    JSL.L CODE_82806E                    ;87F8B1;
    BCC CODE_87F8EB                      ;87F8B5;
    LDA.B #$80                           ;87F8B7;
    TRB.W $1F2C                          ;87F8B9;
    LDA.B #$13                           ;87F8BC;
    STA.W $00C0                          ;87F8BE;
    STA.W $212C                          ;87F8C1;
    STZ.W $00C1                          ;87F8C4;
    STZ.W $212D                          ;87F8C7;
    STZ.W $2124                          ;87F8CA;
    STZ.W $00C7                          ;87F8CD;
    STZ.W $2130                          ;87F8D0;
    STZ.W $00C9                          ;87F8D3;
    STZ.W $2131                          ;87F8D6;
    STZ.W $00CA                          ;87F8D9;
    STZ.W $212E                          ;87F8DC;
    STZ.W $00CE                          ;87F8DF;
    LDX.B $02                            ;87F8E2;
    STZ.W $0AA1,X                        ;87F8E4;
    JML.L CODE_828387                    ;87F8E7;

CODE_87F8EB:
    RTL                                  ;87F8EB;

CODE_87F8EC:
    JML.L CODE_828387                    ;87F8EC;

PTR16_87F8F0:
    dw CODE_87F8F4                       ;87F8F0;
    dw CODE_87F991                       ;87F8F2;

CODE_87F8F4:
    LDA.B #$02                           ;87F8F4;
    STA.B $01                            ;87F8F6;
    LDA.B #$80                           ;87F8F8;
    TSB.W $1F2C                          ;87F8FA;
    JSR.W CODE_87FAD6                    ;87F8FD;
    LDA.B #$E0                           ;87F900;
    STA.W $2132                          ;87F902;
    STA.W $00CB                          ;87F905;
    LDA.B #$01                           ;87F908;
    STA.W $2126                          ;87F90A;
    STZ.W $2127                          ;87F90D;
    LDA.B #$17                           ;87F910;
    STA.W $00C0                          ;87F912;
    LDA.B #$13                           ;87F915;
    STA.W $00C1                          ;87F917;
    LDA.B #$03                           ;87F91A;
    STA.W $2124                          ;87F91C;
    STA.W $00C7                          ;87F91F;
    LDA.B #$02                           ;87F922;
    STA.W $2130                          ;87F924;
    STA.W $00C9                          ;87F927;
    LDA.B #$7F                           ;87F92A;
    STA.W $2131                          ;87F92C;
    STA.W $00CA                          ;87F92F;
    LDA.B #$04                           ;87F932;
    STA.W $212E                          ;87F934;
    STA.W $00CE                          ;87F937;
    REP #$20                             ;87F93A;
    STZ.W $00BE                          ;87F93C;
    STZ.W $00BC                          ;87F93F;
    SEP #$20                             ;87F942;
    LDX.B #$00                           ;87F944;

CODE_87F946:
    LDA.W $0AA1,X                        ;87F946;
    BEQ CODE_87F952                      ;87F949;
    TXA                                  ;87F94B;
    CLC                                  ;87F94C;
    ADC.B #$07                           ;87F94D;
    TAX                                  ;87F94F;
    BRA CODE_87F946                      ;87F950;

CODE_87F952:
    STX.B $02                            ;87F952;
    LDA.B #$41                           ;87F954;
    STA.W $0AA2,X                        ;87F956;
    LDA.B #$26                           ;87F959;
    STA.W $0AA3,X                        ;87F95B;
    LDA.B #$D2                           ;87F95E;
    STA.W $0AA4,X                        ;87F960;
    LDA.B #$0A                           ;87F963;
    STA.W $0AA5,X                        ;87F965;
    LDA.B #$00                           ;87F968;
    STA.W $0AA6,X                        ;87F96A;
    LDA.B #$00                           ;87F96D;
    STA.W $0AA7,X                        ;87F96F;
    INC.W $0AA1,X                        ;87F972;
    BRA CODE_87F991                      ;87F975;

CODE_87F977:
    REP #$20                             ;87F977;
    STZ.W $0B32                          ;87F979;
    LDA.W #$0001                         ;87F97C;
    STA.W $0B22                          ;87F97F;
    LDA.W #$00E2                         ;87F982;
    STA.W $0B23                          ;87F985;
    LDA.W #$000A                         ;87F988;
    STA.W $0B24                          ;87F98B;
    SEP #$20                             ;87F98E;
    RTS                                  ;87F990;

CODE_87F991:
    REP #$20                             ;87F991;
    LDA.W DATA8_86E471                   ;87F993;
    SEC                                  ;87F996;
    SBC.W $1E4D                          ;87F997;
    BCC CODE_87F977                      ;87F99A;
    BEQ CODE_87F977                      ;87F99C;
    CMP.W #$0100                         ;87F99E;
    BCC CODE_87F9A6                      ;87F9A1;
    LDA.W #$00FF                         ;87F9A3;

CODE_87F9A6:
    STA.W $0002                          ;87F9A6;
    LDA.W $1E4D                          ;87F9A9;
    CLC                                  ;87F9AC;
    ADC.W #$0100                         ;87F9AD;
    SEC                                  ;87F9B0;
    SBC.W DATA8_86E473                   ;87F9B1;
    BCC CODE_87F977                      ;87F9B4;
    BEQ CODE_87F977                      ;87F9B6;
    CMP.W #$0100                         ;87F9B8;
    BCC CODE_87F9C2                      ;87F9BB;
    LDA.W #$0000                         ;87F9BD;
    BRA CODE_87F9CC                      ;87F9C0;

CODE_87F9C2:
    STA.W $0000                          ;87F9C2;
    LDA.W #$0100                         ;87F9C5;
    SEC                                  ;87F9C8;
    SBC.W $0000                          ;87F9C9;

CODE_87F9CC:
    STA.W $0000                          ;87F9CC;
    LDA.W DATA8_86E477                   ;87F9CF;
    SEC                                  ;87F9D2;
    SBC.W $1E50                          ;87F9D3;
    BMI CODE_87F9DF                      ;87F9D6;
    CMP.W #$00E0                         ;87F9D8;
    BCS CODE_87F977                      ;87F9DB;
    BRA CODE_87F9E2                      ;87F9DD;

CODE_87F9DF:
    LDA.W #$0000                         ;87F9DF;

CODE_87F9E2:
    STA.W $0004                          ;87F9E2;
    LDA.W $1E50                          ;87F9E5;
    CMP.W DATA8_86E475                   ;87F9E8;
    BCS CODE_87F977                      ;87F9EB;
    CLC                                  ;87F9ED;
    ADC.W #$00E0                         ;87F9EE;
    SEC                                  ;87F9F1;
    SBC.W DATA8_86E475                   ;87F9F2;
    BCS CODE_87FA02                      ;87F9F5;
    LDA.W #$00F0                         ;87F9F7;
    STA.W $0006                          ;87F9FA;
    STA.W $0008                          ;87F9FD;
    BRA CODE_87FA16                      ;87FA00;

CODE_87FA02:
    STA.W $0006                          ;87FA02;
    LDA.W #$00E0                         ;87FA05;
    SEC                                  ;87FA08;
    SBC.W $0006                          ;87FA09;
    STA.W $0006                          ;87FA0C;
    SEC                                  ;87FA0F;
    SBC.W $0004                          ;87FA10;
    STA.W $0008                          ;87FA13;

CODE_87FA16:
    STZ.W $0B32                          ;87FA16;
    SEP #$20                             ;87FA19;
    LDA.W $0000                          ;87FA1B;
    STA.W $0B34                          ;87FA1E;
    LDA.W $0002                          ;87FA21;
    STA.W $0B35                          ;87FA24;
    LDY.B #$00                           ;87FA27;
    LDA.W $0004                          ;87FA29;
    BEQ CODE_87FA58                      ;87FA2C;
    BPL CODE_87FA48                      ;87FA2E;
    LDA.B #$7F                           ;87FA30;
    STA.W $0B22,Y                        ;87FA32;
    LDA.B #$E2                           ;87FA35;
    STA.W $0B23,Y                        ;87FA37;
    LDA.B #$0A                           ;87FA3A;
    STA.W $0B24,Y                        ;87FA3C;
    INY                                  ;87FA3F;
    INY                                  ;87FA40;
    INY                                  ;87FA41;
    LDA.W $0004                          ;87FA42;
    SEC                                  ;87FA45;
    SBC.B #$7F                           ;87FA46;

CODE_87FA48:
    STA.W $0B22,Y                        ;87FA48;
    LDA.B #$E2                           ;87FA4B;
    STA.W $0B23,Y                        ;87FA4D;
    LDA.B #$0A                           ;87FA50;
    STA.W $0B24,Y                        ;87FA52;
    INY                                  ;87FA55;
    INY                                  ;87FA56;
    INY                                  ;87FA57;

CODE_87FA58:
    LDA.W $0008                          ;87FA58;
    BPL CODE_87FA75                      ;87FA5B;
    LDA.B #$7F                           ;87FA5D;
    STA.W $0B22,Y                        ;87FA5F;
    LDA.B #$E4                           ;87FA62;
    STA.W $0B23,Y                        ;87FA64;
    LDA.B #$0A                           ;87FA67;
    STA.W $0B24,Y                        ;87FA69;
    INY                                  ;87FA6C;
    INY                                  ;87FA6D;
    INY                                  ;87FA6E;
    LDA.W $0008                          ;87FA6F;
    SEC                                  ;87FA72;
    SBC.B #$7F                           ;87FA73;

CODE_87FA75:
    STA.W $0B22,Y                        ;87FA75;
    LDA.B #$E4                           ;87FA78;
    STA.W $0B23,Y                        ;87FA7A;
    LDA.B #$0A                           ;87FA7D;
    STA.W $0B24,Y                        ;87FA7F;
    INY                                  ;87FA82;
    INY                                  ;87FA83;
    INY                                  ;87FA84;
    LDA.B #$01                           ;87FA85;
    STA.W $0B22,Y                        ;87FA87;
    LDA.B #$E2                           ;87FA8A;
    STA.W $0B23,Y                        ;87FA8C;
    LDA.B #$0A                           ;87FA8F;
    STA.W $0B24,Y                        ;87FA91;
    LDA.B #$00                           ;87FA94;
    STA.W $0B25,Y                        ;87FA96;
    RTS                                  ;87FA99;

CODE_87FA9A:
    REP #$30                             ;87FA9A;
    LDA.W $1E4D                          ;87FA9C;
    SEC                                  ;87FA9F;
    SBC.W #$0040                         ;87FAA0;
    SEC                                  ;87FAA3;
    SBC.W DATA8_86E471                   ;87FAA4;
    BCS CODE_87FAD3                      ;87FAA7;
    LDA.W DATA8_86E473                   ;87FAA9;
    SEC                                  ;87FAAC;
    SBC.W #$0140                         ;87FAAD;
    SEC                                  ;87FAB0;
    SBC.W $1E4D                          ;87FAB1;
    BCS CODE_87FAD3                      ;87FAB4;
    LDA.W $1E50                          ;87FAB6;
    SEC                                  ;87FAB9;
    SBC.W #$0040                         ;87FABA;
    SEC                                  ;87FABD;
    SBC.W DATA8_86E475                   ;87FABE;
    BCS CODE_87FAD3                      ;87FAC1;
    LDA.W DATA8_86E477                   ;87FAC3;
    SEC                                  ;87FAC6;
    SBC.W #$0140                         ;87FAC7;
    SEC                                  ;87FACA;
    SBC.W $1E50                          ;87FACB;
    BCS CODE_87FAD3                      ;87FACE;
    SEP #$30                             ;87FAD0;
    RTS                                  ;87FAD2;

CODE_87FAD3:
    SEP #$30                             ;87FAD3;
    RTS                                  ;87FAD5;

CODE_87FAD6:
    LDA.B #$7F                           ;87FAD6;
    STA.W $2183                          ;87FAD8;
    LDA.B #$D0                           ;87FADB;
    STA.W $2182                          ;87FADD;
    LDA.B #$00                           ;87FAE0;
    STA.W $2181                          ;87FAE2;
    LDA.B #$17                           ;87FAE5;
    LDX.B #$30                           ;87FAE7;
    LDY.B #$00                           ;87FAE9;

CODE_87FAEB:
    STA.W $2180                          ;87FAEB;
    STX.W $2180                          ;87FAEE;
    DEY                                  ;87FAF1;
    BNE CODE_87FAEB                      ;87FAF2;
    LDY.B #$00                           ;87FAF4;

CODE_87FAF6:
    STA.W $2180                          ;87FAF6;
    STX.W $2180                          ;87FAF9;
    DEY                                  ;87FAFC;
    BNE CODE_87FAF6                      ;87FAFD;
    LDY.B #$00                           ;87FAFF;

CODE_87FB01:
    STA.W $2180                          ;87FB01;
    STX.W $2180                          ;87FB04;
    DEY                                  ;87FB07;
    BNE CODE_87FB01                      ;87FB08;
    LDY.B #$00                           ;87FB0A;

CODE_87FB0C:
    STA.W $2180                          ;87FB0C;
    STX.W $2180                          ;87FB0F;
    DEY                                  ;87FB12;
    BNE CODE_87FB0C                      ;87FB13;
    LDX.W $00A3                          ;87FB15;
    LDA.B #$00                           ;87FB18;
    STA.W $0500,X                        ;87FB1A;
    REP #$20                             ;87FB1D;
    LDA.W #$0800                         ;87FB1F;
    STA.W $0501,X                        ;87FB22;
    LDA.W #$0800                         ;87FB25;
    STA.W $0503,X                        ;87FB28;
    LDA.W #$D000                         ;87FB2B;
    STA.W $0505,X                        ;87FB2E;
    SEP #$20                             ;87FB31;
    LDA.B #$7F                           ;87FB33;
    STA.W $0507,X                        ;87FB35;
    TXA                                  ;87FB38;
    CLC                                  ;87FB39;
    ADC.B #$08                           ;87FB3A;
    STA.W $00A3                          ;87FB3C;
    RTS                                  ;87FB3F;

CODE_87FB40:
    LDX.B $01                            ;87FB40;
    JMP.W (PTR16_87FB45,X)               ;87FB42;

PTR16_87FB45:
    dw CODE_87FB55                       ;87FB45;
    dw CODE_87FB91                       ;87FB47;
    dw CODE_87FBAE                       ;87FB49;
    dw CODE_87FC08                       ;87FB4B;
    dw CODE_87FC1E                       ;87FB4D;
    dw CODE_87FC44                       ;87FB4F;
    dw CODE_87FC64                       ;87FB51;
    dw CODE_87FCC2                       ;87FB53;

CODE_87FB55:
    REP #$20                             ;87FB55;
    LDA.W $0BAD                          ;87FB57;
    SEC                                  ;87FB5A;
    SBC.W #$0030                         ;87FB5B;
    CMP.B $05                            ;87FB5E;
    SEP #$20                             ;87FB60;
    BCS CODE_87FB6F                      ;87FB62;
    JSL.L CODE_82806E                    ;87FB64;
    BCC CODE_87FB6E                      ;87FB68;
    JML.L CODE_828387                    ;87FB6A;

CODE_87FB6E:
    RTL                                  ;87FB6E;

CODE_87FB6F:
    LDA.B #$02                           ;87FB6F;
    STA.B $01                            ;87FB71;
    INC.W $1F49                          ;87FB73;
    JSL.L CODE_849FE6                    ;87FB76;
    REP #$20                             ;87FB7A;
    LDA.W #$0100                         ;87FB7C;
    STA.W $1E6E                          ;87FB7F;
    STA.W $1E68                          ;87FB82;
    LDA.W #$0600                         ;87FB85;
    STA.W $1E60                          ;87FB88;
    STA.W $1E5E                          ;87FB8B;
    SEP #$20                             ;87FB8E;
    RTL                                  ;87FB90;

CODE_87FB91:
    REP #$20                             ;87FB91;
    LDA.W $1E60                          ;87FB93;
    CMP.W $1E4D                          ;87FB96;
    BNE CODE_87FBAD                      ;87FB99;
    LDA.W #$0004                         ;87FB9B;
    STA.B $01                            ;87FB9E;
    STZ.W $1F49                          ;87FBA0;
    LDA.W #$0006                         ;87FBA3;
    STA.B $04                            ;87FBA6;
    LDA.W #$003C                         ;87FBA8;
    STA.B $07                            ;87FBAB;

CODE_87FBAD:
    RTL                                  ;87FBAD;

CODE_87FBAE:
    DEC.B $07                            ;87FBAE;
    BNE CODE_87FC07                      ;87FBB0;
    JSL.L CODE_8282B9                    ;87FBB2;
    BEQ CODE_87FBBB                      ;87FBB6;
    INC.B $07                            ;87FBB8;
    RTL                                  ;87FBBA;

CODE_87FBBB:
    INC.W $0000,X                        ;87FBBB;
    LDA.B #$11                           ;87FBBE;
    STA.W $000A,X                        ;87FBC0;
    REP #$20                             ;87FBC3;
    LDA.W #$0610                         ;87FBC5;
    STA.W $0005,X                        ;87FBC8;
    LDA.W #$0100                         ;87FBCB;
    STA.W $0008,X                        ;87FBCE;
    SEP #$20                             ;87FBD1;
    DEC.B $04                            ;87FBD3;
    BNE CODE_87FC03                      ;87FBD5;
    JSL.L CODE_849FFE                    ;87FBD7;
    JSL.L CODE_828321                    ;87FBDB;
    BNE CODE_87FBFE                      ;87FBDF;
    INC.W $0000,X                        ;87FBE1;
    LDA.B #$09                           ;87FBE4;
    STA.W $000A,X                        ;87FBE6;
    LDA.B #$06                           ;87FBE9;
    STA.B $01                            ;87FBEB;
    REP #$20                             ;87FBED;
    LDA.W #$06D0                         ;87FBEF;
    STA.W $0005,X                        ;87FBF2;
    LDA.W #$00E0                         ;87FBF5;
    STA.W $0008,X                        ;87FBF8;
    STX.B $0C                            ;87FBFB;
    RTL                                  ;87FBFD;

CODE_87FBFE:
    LDA.B #$0C                           ;87FBFE;
    STA.B $01                            ;87FC00;
    RTL                                  ;87FC02;

CODE_87FC03:
    LDA.B #$3C                           ;87FC03;
    STA.B $07                            ;87FC05;

CODE_87FC07:
    RTL                                  ;87FC07;

CODE_87FC08:
    LDA.B ($0C)                          ;87FC08;
    BNE CODE_87FC1D                      ;87FC0A;
    LDA.B #$08                           ;87FC0C;
    STA.B $01                            ;87FC0E;
    LDA.B #$60                           ;87FC10;
    STA.B $07                            ;87FC12;
    LDA.B #$09                           ;87FC14;
    STA.W $1F08                          ;87FC16;
    JSL.L CODE_80B087                    ;87FC19;

CODE_87FC1D:
    RTL                                  ;87FC1D;

CODE_87FC1E:
    DEC.B $07                            ;87FC1E;
    BNE CODE_87FC36                      ;87FC20;
    JSL.L CODE_828321                    ;87FC22;
    BNE CODE_87FC37                      ;87FC26;
    INC.W $0000,X                        ;87FC28;
    LDA.B #$4D                           ;87FC2B;
    STA.W $000A,X                        ;87FC2D;
    STX.B $0C                            ;87FC30;
    LDA.B #$0A                           ;87FC32;
    STA.B $01                            ;87FC34;

CODE_87FC36:
    RTL                                  ;87FC36;

CODE_87FC37:
    LDA.B #$0C                           ;87FC37;
    STA.B $01                            ;87FC39;
    LDA.B #$06                           ;87FC3B;
    STA.B $04                            ;87FC3D;
    LDA.B #$02                           ;87FC3F;
    STA.B $07                            ;87FC41;
    RTS                                  ;87FC43;

CODE_87FC44:
    LDA.W $1F99                          ;87FC44;
    AND.B #$04                           ;87FC47;
    BEQ CODE_87FC63                      ;87FC49;
    LDA.B #$0C                           ;87FC4B;
    STA.B $01                            ;87FC4D;
    LDA.B #$06                           ;87FC4F;
    STA.B $04                            ;87FC51;
    LDA.B #$B4                           ;87FC53;
    STA.B $07                            ;87FC55;
    REP #$20                             ;87FC57;
    LDA.W #$0610                         ;87FC59;
    STA.B $05                            ;87FC5C;
    LDA.W #$0110                         ;87FC5E;
    STA.B $08                            ;87FC61;

CODE_87FC63:
    RTL                                  ;87FC63;

CODE_87FC64:
    DEC.B $07                            ;87FC64;
    BNE CODE_87FC91                      ;87FC66;
    LDA.B $04                            ;87FC68;
    JSL.L CODE_848000                    ;87FC6A;
    JSL.L CODE_84A4AB                    ;87FC6E;
    JSR.W CODE_87FC92                    ;87FC72;
    REP #$20                             ;87FC75;
    LDA.B $08                            ;87FC77;
    CLC                                  ;87FC79;
    ADC.W #$0020                         ;87FC7A;
    STA.B $08                            ;87FC7D;
    SEP #$20                             ;87FC7F;
    LDA.B #$14                           ;87FC81;
    STA.B $07                            ;87FC83;
    DEC.B $04                            ;87FC85;
    BNE CODE_87FC91                      ;87FC87;
    LDA.B #$0E                           ;87FC89;
    STA.B $01                            ;87FC8B;
    LDA.B #$FF                           ;87FC8D;
    STA.B $07                            ;87FC8F;

CODE_87FC91:
    RTL                                  ;87FC91;

CODE_87FC92:
    LDY.B #$07                           ;87FC92;

CODE_87FC94:
    JSL.L CODE_8282D3                    ;87FC94;
    BNE CODE_87FCBF                      ;87FC98;
    INC.W $0000,X                        ;87FC9A;
    LDA.B #$2B                           ;87FC9D;
    STA.W $000A,X                        ;87FC9F;
    JSL.L CODE_849086                    ;87FCA2;
    AND.B #$03                           ;87FCA6;
    CLC                                  ;87FCA8;
    ADC.B #$C4                           ;87FCA9;
    STA.W $000B,X                        ;87FCAB;
    REP #$20                             ;87FCAE;
    LDA.B $05                            ;87FCB0;
    STA.W $0005,X                        ;87FCB2;
    LDA.B $08                            ;87FCB5;
    STA.W $0008,X                        ;87FCB7;
    SEP #$20                             ;87FCBA;
    DEY                                  ;87FCBC;
    BPL CODE_87FC94                      ;87FCBD;

CODE_87FCBF:
    SEP #$10                             ;87FCBF;
    RTS                                  ;87FCC1;

CODE_87FCC2:
    DEC.B $07                            ;87FCC2;
    BNE CODE_87FCE6                      ;87FCC4;
    LDA.B #$01                           ;87FCC6;
    TSB.W $1F3F                          ;87FCC8;
    REP #$20                             ;87FCCB;
    STZ.W $1E5E                          ;87FCCD;
    LDA.W #$1D00                         ;87FCD0;
    STA.W $1E60                          ;87FCD3;
    LDA.W #$0100                         ;87FCD6;
    STA.W $1E68                          ;87FCD9;
    LDA.W #$021F                         ;87FCDC;
    STA.W $1E6E                          ;87FCDF;
    JML.L CODE_828398                    ;87FCE2;

CODE_87FCE6:
    RTL                                  ;87FCE6;

CODE_87FCE7:
    LDX.B $01                            ;87FCE7;
    JSR.W (PTR16_87FCF8,X)               ;87FCE9;
    BIT.W $1F90                          ;87FCEC;
    BVC CODE_87FCF5                      ;87FCEF;
    JML.L CODE_828398                    ;87FCF1;

CODE_87FCF5:
    JMP.W CODE_87FD44                    ;87FCF5;

PTR16_87FCF8:
    dw CODE_87FCFC                       ;87FCF8;
    dw CODE_87FD05                       ;87FCFA;

CODE_87FCFC:
    LDA.B #$02                           ;87FCFC;
    STA.B $01                            ;87FCFE;
    LDA.B #$01                           ;87FD00;
    STA.B $02                            ;87FD02;
    RTS                                  ;87FD04;

CODE_87FD05:
    DEC.B $02                            ;87FD05;
    BNE CODE_87FD43                      ;87FD07;
    JSL.L CODE_828321                    ;87FD09;
    BNE CODE_87FD43                      ;87FD0D;
    REP #$20                             ;87FD0F;
    LDA.B $05                            ;87FD11;
    STA.W $0005,X                        ;87FD13;
    STA.W $0035,X                        ;87FD16;
    LDA.B $08                            ;87FD19;
    STA.W $0008,X                        ;87FD1B;
    STA.W $0037,X                        ;87FD1E;
    SEP #$20                             ;87FD21;
    LDA.B #$45                           ;87FD23;
    STA.W $000A,X                        ;87FD25;
    INC.W $0000,X                        ;87FD28;
    LDA.B $0B                            ;87FD2B;
    STA.W $000B,X                        ;87FD2D;
    SEP #$10                             ;87FD30;
    LDA.B $0B                            ;87FD32;
    AND.B #$10                           ;87FD34;
    BNE CODE_87FD3F                      ;87FD36;
    LDA.B #$20                           ;87FD38;
    STA.B $02                            ;87FD3A;
    JMP.W CODE_87FD43                    ;87FD3C;

CODE_87FD3F:
    LDA.B #$40                           ;87FD3F;
    STA.B $02                            ;87FD41;

CODE_87FD43:
    RTS                                  ;87FD43;

CODE_87FD44:
    JSL.L CODE_82806E                    ;87FD44;
    BCC CODE_87FD4E                      ;87FD48;
    JML.L CODE_828387                    ;87FD4A;

CODE_87FD4E:
    RTL                                  ;87FD4E;

CODE_87FD4F:
    LDX.B $01                            ;87FD4F;
    JMP.W (PTR16_87FD54,X)               ;87FD51;

PTR16_87FD54:
    dw CODE_87FD5A                       ;87FD54;
    dw CODE_87FD6C                       ;87FD56;
    dw CODE_87FDA7                       ;87FD58;

CODE_87FD5A:
    LDA.B #$02                           ;87FD5A;
    STA.B $01                            ;87FD5C;
    REP #$20                             ;87FD5E;
    LDA.B $05                            ;87FD60;
    CMP.W $0BAD                          ;87FD62;
    BCC CODE_87FD68                      ;87FD65;
    RTL                                  ;87FD67;

CODE_87FD68:
    JML.L CODE_828398                    ;87FD68;

CODE_87FD6C:
    REP #$20                             ;87FD6C;
    LDA.B $05                            ;87FD6E;
    CMP.W $0BAD                          ;87FD70;
    BCC CODE_87FD76                      ;87FD73;
    RTL                                  ;87FD75;

CODE_87FD76:
    LDX.W $1F7A                          ;87FD76;
    CPX.B #$09                           ;87FD79;
    BCS CODE_87FD91                      ;87FD7B;
    LDA.W #$1B60                         ;87FD7D;
    STA.W $1E60                          ;87FD80;
    STA.W $1E5E                          ;87FD83;
    LDA.W #$002F                         ;87FD86;
    STA.W $1E6E                          ;87FD89;
    STA.W $1E68                          ;87FD8C;
    BRA CODE_87FD9A                      ;87FD8F;

CODE_87FD91:
    LDA.W #$1060                         ;87FD91;
    STA.W $1E60                          ;87FD94;
    STA.W $1E5E                          ;87FD97;

CODE_87FD9A:
    SEP #$20                             ;87FD9A;
    JSL.L CODE_849FE6                    ;87FD9C;
    INC.W $1F49                          ;87FDA0;
    LDA.B #$04                           ;87FDA3;
    STA.B $01                            ;87FDA5;

CODE_87FDA7:
    REP #$20                             ;87FDA7;
    LDA.W $1E4D                          ;87FDA9;
    CMP.W $1E60                          ;87FDAC;
    BNE CODE_87FDC6                      ;87FDAF;
    JSL.L CODE_828321                    ;87FDB1;
    BNE CODE_87FDC6                      ;87FDB5;
    INC.W $0000,X                        ;87FDB7;
    LDA.B #$52                           ;87FDBA;
    STA.W $000A,X                        ;87FDBC;
    STZ.W $1F49                          ;87FDBF;
    JML.L CODE_828398                    ;87FDC2;

CODE_87FDC6:
    RTL                                  ;87FDC6;

CODE_87FDC7:
    LDA.B $0B                            ;87FDC7;
    CMP.B #$01                           ;87FDC9;
    BNE CODE_87FDD9                      ;87FDCB;
    JSL.L CODE_84A205                    ;87FDCD;
    CPY.B #$00                           ;87FDD1;
    BEQ CODE_87FDD9                      ;87FDD3;
    JML.L CODE_828398                    ;87FDD5;

CODE_87FDD9:
    LDA.B #$3A                           ;87FDD9;
    STA.B $0A                            ;87FDDB;
    JSL.L CODE_84A23A                    ;87FDDD;
    LDA.B #$21                           ;87FDE1;
    STA.B $0A                            ;87FDE3;
    CPY.B #$00                           ;87FDE5;
    BEQ CODE_87FDF0                      ;87FDE7;
    LDA.B #$01                           ;87FDE9;
    STA.B $0E                            ;87FDEB;
    JMP.W CODE_87FDF2                    ;87FDED;

CODE_87FDF0:
    STZ.B $0E                            ;87FDF0;

CODE_87FDF2:
    REP #$20                             ;87FDF2;
    LDA.W $0BAD                          ;87FDF4;
    CMP.W #$0130                         ;87FDF7;
    BMI CODE_87FE11                      ;87FDFA;
    CMP.W #$0B33                         ;87FDFC;
    BPL CODE_87FE11                      ;87FDFF;
    SEP #$20                             ;87FE01;
    LDA.B $0E                            ;87FE03;
    BNE CODE_87FE3A                      ;87FE05;
    STZ.B $02                            ;87FE07;
    STZ.B $03                            ;87FE09;
    JSR.W CODE_87FE83                    ;87FE0B;
    JMP.W CODE_87FE3A                    ;87FE0E;

CODE_87FE11:
    SEP #$20                             ;87FE11;
    JSR.W CODE_87FE3D                    ;87FE13;
    REP #$20                             ;87FE16;
    LDA.W $0BAD                          ;87FE18;
    CMP.W #$0D7C                         ;87FE1B;
    BMI CODE_87FE35                      ;87FE1E;
    CMP.W #$1BE2                         ;87FE20;
    BPL CODE_87FE35                      ;87FE23;
    SEP #$20                             ;87FE25;
    LDA.B $0E                            ;87FE27;
    BNE CODE_87FE3A                      ;87FE29;
    STZ.B $02                            ;87FE2B;
    STZ.B $03                            ;87FE2D;
    JSR.W CODE_87FEAC                    ;87FE2F;
    JMP.W CODE_87FE3A                    ;87FE32;

CODE_87FE35:
    SEP #$20                             ;87FE35;
    JSR.W CODE_87FE5F                    ;87FE37;

CODE_87FE3A:
    SEP #$20                             ;87FE3A;
    RTL                                  ;87FE3C;

CODE_87FE3D:
    REP #$10                             ;87FE3D;
    LDX.B $02                            ;87FE3F;
    LDA.W $000A,X                        ;87FE41;
    CMP.B #$3A                           ;87FE44;
    BNE CODE_87FE5C                      ;87FE46;
    LDA.W $000B,X                        ;87FE48;
    BNE CODE_87FE5C                      ;87FE4B;
    STZ.B $0E                            ;87FE4D;
    REP #$20                             ;87FE4F;
    STZ.W $0000,X                        ;87FE51;
    STZ.W $0002,X                        ;87FE54;
    STZ.W $000E,X                        ;87FE57;
    SEP #$20                             ;87FE5A;

CODE_87FE5C:
    SEP #$10                             ;87FE5C;
    RTS                                  ;87FE5E;

CODE_87FE5F:
    REP #$10                             ;87FE5F;
    LDX.B $02                            ;87FE61;
    LDA.W $000A,X                        ;87FE63;
    CMP.B #$3A                           ;87FE66;
    BNE CODE_87FE80                      ;87FE68;
    LDA.W $000B,X                        ;87FE6A;
    CMP.B #$04                           ;87FE6D;
    BNE CODE_87FE80                      ;87FE6F;
    STZ.B $0E                            ;87FE71;
    REP #$20                             ;87FE73;
    STZ.W $0000,X                        ;87FE75;
    STZ.W $0002,X                        ;87FE78;
    STZ.W $000E,X                        ;87FE7B;
    SEP #$20                             ;87FE7E;

CODE_87FE80:
    SEP #$10                             ;87FE80;
    RTS                                  ;87FE82;

CODE_87FE83:
    REP #$10                             ;87FE83;
    JSL.L CODE_8282D3                    ;87FE85;
    BNE CODE_87FEA9                      ;87FE89;
    INC.W $0000,X                        ;87FE8B;
    LDA.B #$3A                           ;87FE8E;
    STA.W $000A,X                        ;87FE90;
    LDA.B #$00                           ;87FE93;
    STA.W $000B,X                        ;87FE95;
    REP #$20                             ;87FE98;
    LDA.W #$0145                         ;87FE9A;
    STA.W $0005,X                        ;87FE9D;
    LDA.W #$03F7                         ;87FEA0;
    STA.W $0008,X                        ;87FEA3;
    TXA                                  ;87FEA6;
    STA.B $02                            ;87FEA7;

CODE_87FEA9:
    SEP #$30                             ;87FEA9;
    RTS                                  ;87FEAB;

CODE_87FEAC:
    REP #$10                             ;87FEAC;
    JSL.L CODE_8282D3                    ;87FEAE;
    BNE CODE_87FED2                      ;87FEB2;
    INC.W $0000,X                        ;87FEB4;
    LDA.B #$3A                           ;87FEB7;
    STA.W $000A,X                        ;87FEB9;
    LDA.B #$04                           ;87FEBC;
    STA.W $000B,X                        ;87FEBE;
    REP #$20                             ;87FEC1;
    LDA.W #$0E00                         ;87FEC3;
    STA.W $0005,X                        ;87FEC6;
    LDA.W #$03A9                         ;87FEC9;
    STA.W $0008,X                        ;87FECC;
    TXA                                  ;87FECF;
    STA.B $02                            ;87FED0;

CODE_87FED2:
    SEP #$30                             ;87FED2;
    RTS                                  ;87FED4;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FED5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FEDD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FEE5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FEED;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FEF5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FEFD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF05;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF0D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF15;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF1D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF25;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF2D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF35;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF3D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF45;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF4D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF55;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF5D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF65;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF6D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF75;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF7D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF85;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF8D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF95;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FF9D;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFA5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFAD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFB5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFBD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFC5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFCD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFD5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFDD;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFE5;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFED;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;87FFF5;
    db $FF,$FF,$FF                       ;87FFFD;

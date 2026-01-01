ORG $828000

CODE_828000:
    PHP                                  ;828000;
    PHD                                  ;828001;
    SEP #$20                             ;828002;
    REP #$10                             ;828004;
    STX.W $0002                          ;828006;
    STZ.W $0003                          ;828009;
    ASL.W $0002                          ;82800C;
    BRA CODE_82801D                      ;82800F;

CODE_828011:
    PHP                                  ;828011;
    PHD                                  ;828012;
    SEP #$20                             ;828013;
    REP #$10                             ;828015;
    STZ.W $0002                          ;828017;
    STZ.W $0003                          ;82801A;

CODE_82801D:
    PEA.W $0000                          ;82801D;
    PLD                                  ;828020;
    LDA.W PTR16_868133,Y                 ;828021;
    STA.B $10                            ;828024;
    LDA.W PTR16_868134,Y                 ;828026;
    STA.B $11                            ;828029;
    LDA.B #$85                           ;82802B;
    STA.B $16                            ;82802D;
    STZ.B $01                            ;82802F;

CODE_828031:
    SEP #$30                             ;828031;
    LDY.B #$00                           ;828033;
    LDA.B ($10),Y                        ;828035;
    BEQ CODE_828067                      ;828037;
    STA.B $00                            ;828039;
    INY                                  ;82803B;
    REP #$31                             ;82803C;
    LDA.B ($10),Y                        ;82803E;
    STA.B $14                            ;828040;
    INY                                  ;828042;
    INY                                  ;828043;
    LDA.B ($10),Y                        ;828044;
    AND.W #$00FF                         ;828046;
    ASL A                                ;828049;
    CLC                                  ;82804A;
    ADC.B $02                            ;82804B;
    TAX                                  ;82804D;
    LDA.B $10                            ;82804E;
    ADC.W #$0004                         ;828050;
    STA.B $10                            ;828053;
    LDY.W #$0000                         ;828055;

CODE_828058:
    LDA.B [$14],Y                        ;828058;
    STA.W $0300,X                        ;82805A;
    INY                                  ;82805D;
    INY                                  ;82805E;
    INX                                  ;82805F;
    INX                                  ;828060;
    DEC.B $00                            ;828061;
    BNE CODE_828058                      ;828063;
    BRA CODE_828031                      ;828065;

CODE_828067:
    LDA.B #$01                           ;828067;
    STA.B $A1                            ;828069;
    PLD                                  ;82806B;
    PLP                                  ;82806C;
    RTL                                  ;82806D;

CODE_82806E:
    REP #$20                             ;82806E;
    SEC                                  ;828070;
    LDA.B $05                            ;828071;
    SBC.W $1E4D                          ;828073;
    CLC                                  ;828076;
    ADC.W #$0040                         ;828077;
    CMP.W #$0180                         ;82807A;
    BCS CODE_82808C                      ;82807D;
    SEC                                  ;82807F;
    LDA.B $08                            ;828080;
    SBC.W $1E50                          ;828082;
    CLC                                  ;828085;
    ADC.W #$0040                         ;828086;
    CMP.W #$0160                         ;828089;

CODE_82808C:
    SEP #$20                             ;82808C;
    RTL                                  ;82808E;

CODE_82808F:
    REP #$20                             ;82808F;
    SEC                                  ;828091;
    LDA.B $05                            ;828092;
    SBC.W $1E4D                          ;828094;
    CLC                                  ;828097;
    ADC.W #$0060                         ;828098;
    CMP.W #$01C0                         ;82809B;
    BCS CODE_8280AF                      ;82809E;
    SEC                                  ;8280A0;
    LDA.B $08                            ;8280A1;
    SBC.W $1E50                          ;8280A3;
    CLC                                  ;8280A6;
    ADC.W #$0050                         ;8280A7;
    CMP.W #$0180                         ;8280AA;
    BCC CODE_8280D9                      ;8280AD;

CODE_8280AF:
    SEP #$20                             ;8280AF;
    STZ.B $0E                            ;8280B1;
    RTL                                  ;8280B3;

CODE_8280B4:
    REP #$20                             ;8280B4;
    SEC                                  ;8280B6;
    LDA.B $05                            ;8280B7;
    SBC.W $1E4D                          ;8280B9;
    CLC                                  ;8280BC;
    ADC.W #$0020                         ;8280BD;
    CMP.W #$0140                         ;8280C0;
    BCS CODE_8280D4                      ;8280C3;
    SEC                                  ;8280C5;
    LDA.B $08                            ;8280C6;
    SBC.W $1E50                          ;8280C8;
    CLC                                  ;8280CB;
    ADC.W #$0010                         ;8280CC;
    CMP.W #$0100                         ;8280CF;
    BCC CODE_8280D9                      ;8280D2;

CODE_8280D4:
    SEP #$20                             ;8280D4;
    STZ.B $0E                            ;8280D6;
    RTL                                  ;8280D8;

CODE_8280D9:
    SEP #$20                             ;8280D9;
    LDA.B #$81                           ;8280DB;
    STA.B $0E                            ;8280DD;
    SEP #$30                             ;8280DF;
    LDX.B $12                            ;8280E1;
    BPL CODE_8280E7                      ;8280E3;
    LDX.B #$0A                           ;8280E5;

CODE_8280E7:
    JMP.W (PTR16_8280EA,X)               ;8280E7;

PTR16_8280EA:
    dw CODE_82810B                       ;8280EA;
    dw CODE_828120                       ;8280EC;
    dw CODE_828135                       ;8280EE;
    dw CODE_82814A                       ;8280F0;
    dw CODE_82815F                       ;8280F2;
    dw CODE_8280F6                       ;8280F4;

CODE_8280F6:
    LDA.W $00E7                          ;8280F6;
    CMP.B #$20                           ;8280F9;
    BCS CODE_82810A                      ;8280FB;
    ASL A                                ;8280FD;
    TAX                                  ;8280FE;
    REP #$20                             ;8280FF;
    TDC                                  ;828101;
    STA.W $0920,X                        ;828102;
    SEP #$20                             ;828105;
    INC.W $00E7                          ;828107;

CODE_82810A:
    RTL                                  ;82810A;

CODE_82810B:
    LDA.W $00E8                          ;82810B;
    CMP.B #$20                           ;82810E;
    BCS CODE_82811F                      ;828110;
    ASL A                                ;828112;
    TAX                                  ;828113;
    REP #$20                             ;828114;
    TDC                                  ;828116;
    STA.W $0960,X                        ;828117;
    SEP #$20                             ;82811A;
    INC.W $00E8                          ;82811C;

CODE_82811F:
    RTL                                  ;82811F;

CODE_828120:
    LDA.W $00E9                          ;828120;
    CMP.B #$20                           ;828123;
    BCS CODE_828134                      ;828125;
    ASL A                                ;828127;
    TAX                                  ;828128;
    REP #$20                             ;828129;
    TDC                                  ;82812B;
    STA.W $09A0,X                        ;82812C;
    SEP #$20                             ;82812F;
    INC.W $00E9                          ;828131;

CODE_828134:
    RTL                                  ;828134;

CODE_828135:
    LDA.W $00EA                          ;828135;
    CMP.B #$20                           ;828138;
    BCS CODE_828149                      ;82813A;
    ASL A                                ;82813C;
    TAX                                  ;82813D;
    REP #$20                             ;82813E;
    TDC                                  ;828140;
    STA.W $09E0,X                        ;828141;
    SEP #$20                             ;828144;
    INC.W $00EA                          ;828146;

CODE_828149:
    RTL                                  ;828149;

CODE_82814A:
    LDA.W $00EB                          ;82814A;
    CMP.B #$20                           ;82814D;
    BCS CODE_82815E                      ;82814F;
    ASL A                                ;828151;
    TAX                                  ;828152;
    REP #$20                             ;828153;
    TDC                                  ;828155;
    STA.W $0A20,X                        ;828156;
    SEP #$20                             ;828159;
    INC.W $00EB                          ;82815B;

CODE_82815E:
    RTL                                  ;82815E;

CODE_82815F:
    LDA.W $00EC                          ;82815F;
    CMP.B #$20                           ;828162;
    BCS CODE_828173                      ;828164;
    ASL A                                ;828166;
    TAX                                  ;828167;
    REP #$20                             ;828168;
    TDC                                  ;82816A;
    STA.W $0A60,X                        ;82816B;
    SEP #$20                             ;82816E;
    INC.W $00EC                          ;828170;

CODE_828173:
    RTL                                  ;828173;

CODE_828174:
    PHP                                  ;828174;
    REP #$20                             ;828175;
    SEC                                  ;828177;
    LDA.B $1E                            ;828178;
    AND.W #$00FF                         ;82817A;
    SBC.B $1C                            ;82817D;
    EOR.W #$FFFF                         ;82817F;
    INC A                                ;828182;
    STA.B $1C                            ;828183;
    SEC                                  ;828185;
    LDA.B $1F                            ;828186;
    AND.W #$00FF                         ;828188;
    SBC.B $1A                            ;82818B;
    EOR.W #$FFFF                         ;82818D;
    INC A                                ;828190;
    STA.B $1A                            ;828191;
    BRA CODE_82820B                      ;828193;

CODE_828195:
    PHP                                  ;828195;
    REP #$20                             ;828196;
    SEC                                  ;828198;
    LDA.B $1E                            ;828199;
    AND.W #$00FF                         ;82819B;
    SBC.B $1C                            ;82819E;
    EOR.W #$FFFF                         ;8281A0;
    INC A                                ;8281A3;
    STA.B $1C                            ;8281A4;
    CLC                                  ;8281A6;
    LDA.B $1F                            ;8281A7;
    AND.W #$00FF                         ;8281A9;
    ADC.B $1A                            ;8281AC;
    STA.B $1A                            ;8281AE;
    BRA CODE_82820B                      ;8281B0;

CODE_8281B2:
    PHP                                  ;8281B2;
    REP #$20                             ;8281B3;
    CLC                                  ;8281B5;
    LDA.B $1E                            ;8281B6;
    AND.W #$00FF                         ;8281B8;
    ADC.B $1C                            ;8281BB;
    STA.B $1C                            ;8281BD;
    SEC                                  ;8281BF;
    LDA.B $1F                            ;8281C0;
    AND.W #$00FF                         ;8281C2;
    SBC.B $1A                            ;8281C5;
    EOR.W #$FFFF                         ;8281C7;
    INC A                                ;8281CA;
    STA.B $1A                            ;8281CB;
    BRA CODE_82820B                      ;8281CD;

CODE_8281CF:
    PHP                                  ;8281CF;
    REP #$20                             ;8281D0;
    CLC                                  ;8281D2;
    LDA.B $1E                            ;8281D3;
    AND.W #$00FF                         ;8281D5;
    ADC.B $1C                            ;8281D8;
    STA.B $1C                            ;8281DA;
    CLC                                  ;8281DC;
    LDA.B $1F                            ;8281DD;
    AND.W #$00FF                         ;8281DF;
    ADC.B $1A                            ;8281E2;
    STA.B $1A                            ;8281E4;
    BRA CODE_82820B                      ;8281E6;

CODE_8281E8:
    PHP                                  ;8281E8;
    REP #$20                             ;8281E9;
    SEC                                  ;8281EB;
    LDA.B $1E                            ;8281EC;
    AND.W #$00FF                         ;8281EE;
    SBC.B $1C                            ;8281F1;
    EOR.W #$FFFF                         ;8281F3;
    INC A                                ;8281F6;
    STA.B $1C                            ;8281F7;
    BRA CODE_82820B                      ;8281F9;

CODE_8281FB:
    PHP                                  ;8281FB;
    REP #$20                             ;8281FC;
    CLC                                  ;8281FE;
    LDA.B $1E                            ;8281FF;
    AND.W #$00FF                         ;828201;
    ADC.B $1C                            ;828204;
    STA.B $1C                            ;828206;
    BRA CODE_82820B                      ;828208;

CODE_82820A:
    PHP                                  ;82820A;

CODE_82820B:
    REP #$21                             ;82820B;
    LDA.B $04                            ;82820D;
    ADC.B $1A                            ;82820F;
    STA.B $04                            ;828211;
    SEP #$20                             ;828213;
    LDA.B #$00                           ;828215;
    BIT.B $1B                            ;828217;
    BPL CODE_82821C                      ;828219;
    DEC A                                ;82821B;

CODE_82821C:
    ADC.B $06                            ;82821C;
    STA.B $06                            ;82821E;
    REP #$20                             ;828220;
    SEC                                  ;828222;
    LDA.B $07                            ;828223;
    SBC.B $1C                            ;828225;
    STA.B $07                            ;828227;
    SEP #$20                             ;828229;
    STZ.W $0000                          ;82822B;
    BIT.B $1D                            ;82822E;
    BPL CODE_828235                      ;828230;
    DEC.W $0000                          ;828232;

CODE_828235:
    LDA.B $09                            ;828235;
    SBC.W $0000                          ;828237;
    STA.B $09                            ;82823A;
    PLP                                  ;82823C;
    RTL                                  ;82823D;

CODE_82823E:
    PHP                                  ;82823E;
    REP #$21                             ;82823F;
    LDA.B $04                            ;828241;
    ADC.B $1A                            ;828243;
    STA.B $04                            ;828245;
    SEP #$20                             ;828247;
    BIT.B $1B                            ;828249;
    BMI CODE_828255                      ;82824B;
    LDA.B $06                            ;82824D;
    ADC.B #$00                           ;82824F;
    STA.B $06                            ;828251;
    PLP                                  ;828253;
    RTL                                  ;828254;

CODE_828255:
    LDA.B $06                            ;828255;
    ADC.B #$FF                           ;828257;
    STA.B $06                            ;828259;
    PLP                                  ;82825B;
    RTL                                  ;82825C;

CODE_82825D:
    PHP                                  ;82825D;
    REP #$20                             ;82825E;
    LDA.B $07                            ;828260;
    SEC                                  ;828262;
    SBC.B $1C                            ;828263;
    STA.B $07                            ;828265;
    SEP #$20                             ;828267;
    BIT.B $1D                            ;828269;
    BMI CODE_828275                      ;82826B;
    LDA.B $09                            ;82826D;
    SBC.B #$00                           ;82826F;
    STA.B $09                            ;828271;
    PLP                                  ;828273;
    RTL                                  ;828274;

CODE_828275:
    LDA.B $09                            ;828275;
    SBC.B #$FF                           ;828277;
    STA.B $09                            ;828279;
    PLP                                  ;82827B;
    RTL                                  ;82827C;

CODE_82827D:
    LDA.B #$02                           ;82827D;
    STA.B $01                            ;82827F;
    LDA.B #$03                           ;828281;
    STA.B $28                            ;828283;
    LDA.B $0A                            ;828285;
    DEC A                                ;828287;
    ASL A                                ;828288;
    TAX                                  ;828289;
    LDA.W DATA8_86A5E4,X                 ;82828A;
    STA.B $16                            ;82828D;
    LDA.W DATA8_86A5E5,X                 ;82828F;
    TAX                                  ;828292;
    LDA.L $7F8200,X                      ;828293;
    STA.B $18                            ;828297;
    LDA.L $7F8300,X                      ;828299;
    STA.B $11                            ;82829D;
    STZ.B $30                            ;82829F;
    REP #$20                             ;8282A1;
    STZ.B $1A                            ;8282A3;
    STZ.B $1C                            ;8282A5;
    STZ.B $1E                            ;8282A7;
    SEP #$20                             ;8282A9;
    RTL                                  ;8282AB;

CODE_8282AC:
    REP #$30                             ;8282AC;
    JMP.W (PTR16_8282B1,X)               ;8282AE;

PTR16_8282B1:
    dw CODE_8282B9                       ;8282B1;
    dw CODE_8282D3                       ;8282B3;
    dw CODE_828307                       ;8282B5;
    dw CODE_828321                       ;8282B7;

CODE_8282B9:
    REP #$30                             ;8282B9;
    LDX.W #$1628                         ;8282BB;

CODE_8282BE:
    LDA.W $0000,X                        ;8282BE;
    BEQ CODE_82833B                      ;8282C1;
    TXA                                  ;8282C3;
    CLC                                  ;8282C4;
    ADC.W #$0030                         ;8282C5;
    TAX                                  ;8282C8;
    CPX.W #$1928                         ;8282C9;
    BCC CODE_8282BE                      ;8282CC;
    SEP #$20                             ;8282CE;
    LDA.B #$01                           ;8282D0;
    RTL                                  ;8282D2;

CODE_8282D3:
    REP #$30                             ;8282D3;
    LDX.W #$1928                         ;8282D5;

CODE_8282D8:
    LDA.W $0000,X                        ;8282D8;
    BEQ CODE_82833B                      ;8282DB;
    TXA                                  ;8282DD;
    CLC                                  ;8282DE;
    ADC.W #$0020                         ;8282DF;
    TAX                                  ;8282E2;
    CPX.W #$1D08                         ;8282E3;
    BCC CODE_8282D8                      ;8282E6;
    SEP #$20                             ;8282E8;
    LDA.B #$01                           ;8282EA;
    RTL                                  ;8282EC;

CODE_8282ED:
    REP #$30                             ;8282ED;
    LDX.W #$0C98                         ;8282EF;

CODE_8282F2:
    LDA.W $0000,X                        ;8282F2;
    BEQ CODE_82833B                      ;8282F5;
    TXA                                  ;8282F7;
    CLC                                  ;8282F8;
    ADC.W #$0020                         ;8282F9;
    TAX                                  ;8282FC;
    CPX.W #$0E18                         ;8282FD;
    BCC CODE_8282F2                      ;828300;
    SEP #$20                             ;828302;
    LDA.B #$01                           ;828304;
    RTL                                  ;828306;

CODE_828307:
    REP #$30                             ;828307;
    LDX.W #$1D08                         ;828309;

CODE_82830C:
    LDA.W $0000,X                        ;82830C;
    BEQ CODE_82833B                      ;82830F;
    TXA                                  ;828311;
    CLC                                  ;828312;
    ADC.W #$0010                         ;828313;
    TAX                                  ;828316;
    CPX.W #$1E08                         ;828317;
    BCC CODE_82830C                      ;82831A;
    SEP #$20                             ;82831C;
    LDA.B #$01                           ;82831E;
    RTL                                  ;828320;

CODE_828321:
    REP #$30                             ;828321;
    LDX.W #$0E68                         ;828323;

CODE_828326:
    LDA.W $0000,X                        ;828326;
    BEQ CODE_82833B                      ;828329;
    TXA                                  ;82832B;
    CLC                                  ;82832C;
    ADC.W #$0040                         ;82832D;
    TAX                                  ;828330;
    CPX.W #$1228                         ;828331;
    BCC CODE_828326                      ;828334;
    SEP #$20                             ;828336;
    LDA.B #$01                           ;828338;
    RTL                                  ;82833A;

CODE_82833B:
    SEP #$22                             ;82833B;
    RTL                                  ;82833D;

CODE_82833E:
    REP #$30                             ;82833E;
    LDX.W #$1228                         ;828340;

CODE_828343:
    LDA.W $0000,X                        ;828343;
    BEQ CODE_82833B                      ;828346;
    TXA                                  ;828348;
    CLC                                  ;828349;
    ADC.W #$0040                         ;82834A;
    TAX                                  ;82834D;
    CPX.W #$1428                         ;82834E;
    BCC CODE_828343                      ;828351;
    SEP #$20                             ;828353;
    LDA.B #$01                           ;828355;
    RTL                                  ;828357;

CODE_828358:
    REP #$30                             ;828358;
    LDX.W #$1428                         ;82835A;

CODE_82835D:
    LDA.W $0000,X                        ;82835D;
    BEQ CODE_82833B                      ;828360;
    TXA                                  ;828362;
    CLC                                  ;828363;
    ADC.W #$0040                         ;828364;
    TAX                                  ;828367;
    CPX.W #$1628                         ;828368;
    BCC CODE_82835D                      ;82836B;
    SEP #$20                             ;82836D;
    LDA.B #$01                           ;82836F;
    RTL                                  ;828371;
    SEP #$20                             ;828372;
    REP #$10                             ;828374;
    LDX.B $0C                            ;828376;
    BEQ CODE_828398                      ;828378;
    PHB                                  ;82837A;
    LDA.B #$7E                           ;82837B;
    PHA                                  ;82837D;
    PLB                                  ;82837E;
    LDA.B #$87                           ;82837F;
    STA.W $0000,X                        ;828381;
    PLB                                  ;828384;
    BRA CODE_828398                      ;828385;

CODE_828387:
    SEP #$20                             ;828387;
    REP #$10                             ;828389;
    LDX.B $0C                            ;82838B;
    BEQ CODE_828398                      ;82838D;
    PHB                                  ;82838F;
    LDA.B #$7E                           ;828390;
    PHA                                  ;828392;
    PLB                                  ;828393;
    STZ.W $0000,X                        ;828394;
    PLB                                  ;828397;

CODE_828398:
    REP #$20                             ;828398;
    STZ.B $00                            ;82839A;
    STZ.B $02                            ;82839C;
    STZ.B $0E                            ;82839E;
    SEP #$20                             ;8283A0;
    RTL                                  ;8283A2;

CODE_8283A3:
    REP #$20                             ;8283A3;
    STZ.B $00                            ;8283A5;
    STZ.B $02                            ;8283A7;
    STZ.B $0E                            ;8283A9;
    STZ.B $2C                            ;8283AB;
    SEP #$20                             ;8283AD;
    RTL                                  ;8283AF;

CODE_8283B0:
    LDX.B $01                            ;8283B0;
    JMP.W (PTR16_8283B5,X)               ;8283B2;

PTR16_8283B5:
    dw CODE_8283BF                       ;8283B5;
    dw CODE_828429                       ;8283B7;
    dw CODE_8284E0                       ;8283B9;
    dw CODE_828421                       ;8283BB;
    dw CODE_8284E0                       ;8283BD;

CODE_8283BF:
    LDA.B #$02                           ;8283BF;
    STA.B $01                            ;8283C1;
    LDX.W $1F7A                          ;8283C3;
    LDA.W $0BB9                          ;8283C6;
    AND.B #$70                           ;8283C9;
    ORA.B #$06                           ;8283CB;
    STA.B $11                            ;8283CD;
    STZ.B $30                            ;8283CF;
    STZ.B $39                            ;8283D1;
    STZ.B $3A                            ;8283D3;
    STZ.B $18                            ;8283D5;
    LDA.B #$FF                           ;8283D7;
    STA.B $10                            ;8283D9;
    LDA.B #$05                           ;8283DB;
    STA.B $16                            ;8283DD;
    LDA.B #$11                           ;8283DF;
    STA.B $37                            ;8283E1;
    LDA.B $11                            ;8283E3;
    ASL A                                ;8283E5;
    ASL A                                ;8283E6;
    LDA.B #$08                           ;8283E7;
    BCS CODE_8283ED                      ;8283E9;
    LDA.B #$18                           ;8283EB;

CODE_8283ED:
    STA.B $38                            ;8283ED;
    REP #$20                             ;8283EF;
    LDA.W #$BF68                         ;8283F1;
    STA.B $20                            ;8283F4;
    LDA.W #$AD8A                         ;8283F6;
    STA.B $31                            ;8283F9;
    LDA.W $0BAD                          ;8283FB;
    STA.B $05                            ;8283FE;
    LDA.W $0BB0                          ;828400;
    STA.B $08                            ;828403;
    LDA.B $10                            ;828405;
    ASL A                                ;828407;
    ASL A                                ;828408;
    LDA.W #$0480                         ;828409;
    BCS CODE_828411                      ;82840C;
    LDA.W #$FB80                         ;82840E;

CODE_828411:
    STA.B $1A                            ;828411;
    STZ.B $1C                            ;828413;
    SEP #$20                             ;828415;
    LDA.B #$01                           ;828417;
    JSL.L CODE_848F07                    ;828419;
    JML.L CODE_8280B4                    ;82841D;

CODE_828421:
    STZ.B $30                            ;828421;
    LDA.B #$02                           ;828423;
    STA.B $01                            ;828425;
    INC.B $39                            ;828427;

CODE_828429:
    LDX.B $02                            ;828429;
    JSR.W (PTR16_828452,X)               ;82842B;
    JSR.W CODE_828538                    ;82842E;
    JSL.L CODE_848EEA                    ;828431;
    JSL.L CODE_8280B4                    ;828435;
    JSL.L CODE_82806E                    ;828439;
    BCC CODE_828451                      ;82843D;
    LDA.B $3A                            ;82843F;
    BEQ CODE_82844A                      ;828441;
    REP #$10                             ;828443;
    LDX.B $0C                            ;828445;
    STZ.W $0028,X                        ;828447;

CODE_82844A:
    DEC.W $0BDD                          ;82844A;
    JML.L CODE_8283A3                    ;82844D;

CODE_828451:
    RTL                                  ;828451;

PTR16_828452:
    dw CODE_828456                       ;828452;
    dw CODE_828479                       ;828454;

CODE_828456:
    JSL.L CODE_82820A                    ;828456;
    DEC.B $37                            ;82845A;
    BNE CODE_828478                      ;82845C;
    LDA.B #$02                           ;82845E;
    STA.B $02                            ;828460;
    LDA.B #$02                           ;828462;
    STA.B $37                            ;828464;
    LDA.B $38                            ;828466;
    CMP.B #$10                           ;828468;
    BCS CODE_82846F                      ;82846A;
    DEC A                                ;82846C;
    BRA CODE_828470                      ;82846D;

CODE_82846F:
    INC A                                ;82846F;

CODE_828470:
    AND.B #$1F                           ;828470;
    STA.B $38                            ;828472;
    JSL.L CODE_8284F2                    ;828474;

CODE_828478:
    RTS                                  ;828478;

CODE_828479:
    DEC.B $37                            ;828479;
    BNE CODE_8284AC                      ;82847B;
    LDA.B #$02                           ;82847D;
    STA.B $37                            ;82847F;
    JSL.L CODE_84A07C                    ;828481;
    SEC                                  ;828485;
    SBC.B $38                            ;828486;
    AND.B #$1F                           ;828488;
    CMP.B #$10                           ;82848A;
    BCC CODE_828492                      ;82848C;
    DEC.B $38                            ;82848E;
    BRA CODE_828494                      ;828490;

CODE_828492:
    INC.B $38                            ;828492;

CODE_828494:
    LDA.B $38                            ;828494;
    AND.B #$1F                           ;828496;
    STA.B $38                            ;828498;
    JSL.L CODE_8284F2                    ;82849A;
    REP #$20                             ;82849E;
    LDA.W $0000                          ;8284A0;
    STA.B $1A                            ;8284A3;
    LDA.W $0002                          ;8284A5;
    STA.B $1C                            ;8284A8;
    SEP #$20                             ;8284AA;

CODE_8284AC:
    JSL.L CODE_82820A                    ;8284AC;
    LDA.W $0BCF                          ;8284B0;
    AND.B #$7F                           ;8284B3;
    BEQ CODE_8284DF                      ;8284B5;
    LDA.B $3A                            ;8284B7;
    BNE CODE_8284DF                      ;8284B9;
    REP #$10                             ;8284BB;
    LDX.W #$0BA8                         ;8284BD;
    JSL.L CODE_849C0E                    ;8284C0;
    SEP #$10                             ;8284C4;
    BCC CODE_8284DF                      ;8284C6;
    REP #$20                             ;8284C8;
    LDA.B $08                            ;8284CA;
    ADC.W #$2000                         ;8284CC;
    STA.B $08                            ;8284CF;
    SEP #$20                             ;8284D1;
    LDA.B $39                            ;8284D3;
    BNE CODE_8284DF                      ;8284D5;
    INC.W $1F94                          ;8284D7;
    LDA.B #$80                           ;8284DA;
    TSB.W $1F94                          ;8284DC;

CODE_8284DF:
    RTS                                  ;8284DF;

CODE_8284E0:
    REP #$10                             ;8284E0;
    LDA.B $3A                            ;8284E2;
    BEQ CODE_8284EB                      ;8284E4;
    LDX.B $0C                            ;8284E6;
    STZ.W $0028,X                        ;8284E8;

CODE_8284EB:
    DEC.W $0BDD                          ;8284EB;
    JML.L CODE_8283A3                    ;8284EE;

CODE_8284F2:
    ASL A                                ;8284F2;
    ASL A                                ;8284F3;
    TAX                                  ;8284F4;
    PHD                                  ;8284F5;
    PEA.W $0000                          ;8284F6;
    PLD                                  ;8284F9;
    REP #$20                             ;8284FA;
    LDA.W DATA8_86EE37,X                 ;8284FC;
    AND.W #$8000                         ;8284FF;
    STA.B $00                            ;828502;
    LDA.W DATA8_86EE39,X                 ;828504;
    AND.W #$8000                         ;828507;
    STA.B $02                            ;82850A;
    LDA.W DATA8_86EE37,X                 ;82850C;
    ASL A                                ;82850F;
    STA.B $04                            ;828510;
    LDA.W DATA8_86EE37,X                 ;828512;
    LSR A                                ;828515;
    ORA.B $00                            ;828516;
    LSR A                                ;828518;
    ORA.B $00                            ;828519;
    CLC                                  ;82851B;
    ADC.B $04                            ;82851C;
    STA.B $00                            ;82851E;
    LDA.W DATA8_86EE39,X                 ;828520;
    ASL A                                ;828523;
    STA.B $06                            ;828524;
    LDA.W DATA8_86EE39,X                 ;828526;
    LSR A                                ;828529;
    ORA.B $02                            ;82852A;
    LSR A                                ;82852C;
    ORA.B $02                            ;82852D;
    CLC                                  ;82852F;
    ADC.B $06                            ;828530;
    STA.B $02                            ;828532;
    PLD                                  ;828534;
    SEP #$20                             ;828535;
    RTL                                  ;828537;

CODE_828538:
    LDA.B $3A                            ;828538;
    BNE CODE_828581                      ;82853A;
    JSL.L CODE_84AC63                    ;82853C;
    CPY.B #$00                           ;828540;
    BEQ CODE_828580                      ;828542;
    PHY                                  ;828544;
    REP #$30                             ;828545;
    LDX.W #$0000                         ;828547;
    LDY.W #$B700                         ;82854A;
    LDA.W #$001F                         ;82854D;
    PHB                                  ;828550;
    MVN $7F,$00                          ;828551;
    PLB                                  ;828554;
    SEP #$30                             ;828555;
    PLY                                  ;828557;
    DEY                                  ;828558;
    DEY                                  ;828559;

CODE_82855A:
    PHY                                  ;82855A;
    TYX                                  ;82855B;
    REP #$30                             ;82855C;
    LDA.L $7FB700,X                      ;82855E;
    TAX                                  ;828562;
    JSL.L CODE_849C0E                    ;828563;
    BCS CODE_828572                      ;828567;
    SEP #$30                             ;828569;
    PLY                                  ;82856B;
    DEY                                  ;82856C;
    DEY                                  ;82856D;
    BMI CODE_828580                      ;82856E;
    BRA CODE_82855A                      ;828570;

CODE_828572:
    STX.B $0C                            ;828572;
    INC.W $0028,X                        ;828574;
    SEP #$30                             ;828577;
    INC.B $3A                            ;828579;
    LDA.B #$02                           ;82857B;
    STA.B $12                            ;82857D;
    PLY                                  ;82857F;

CODE_828580:
    RTS                                  ;828580;

CODE_828581:
    REP #$30                             ;828581;
    LDX.B $0C                            ;828583;
    LDA.B $05                            ;828585;
    STA.W $0005,X                        ;828587;
    LDA.B $08                            ;82858A;
    STA.W $0008,X                        ;82858C;
    SEP #$20                             ;82858F;
    LDA.W $0000,X                        ;828591;
    BNE CODE_828598                      ;828594;
    STZ.B $3A                            ;828596;

CODE_828598:
    SEP #$10                             ;828598;
    RTS                                  ;82859A;

CODE_82859B:
    LDA.B #$01                           ;82859B;
    STA.B $28                            ;82859D;
    LDX.B $01                            ;82859F;
    JSR.W (PTR16_8285A7,X)               ;8285A1;
    STZ.B $28                            ;8285A4;
    RTL                                  ;8285A6;

PTR16_8285A7:
    dw CODE_8285AD                       ;8285A7;
    dw CODE_8285DB                       ;8285A9;
    dw CODE_8288A9                       ;8285AB;

CODE_8285AD:
    LDA.B #$02                           ;8285AD;
    STA.B $01                            ;8285AF;
    LDA.B #$04                           ;8285B1;
    STA.B $26                            ;8285B3;
    STA.B $27                            ;8285B5;
    STA.B $2F                            ;8285B7;
    STZ.B $3F                            ;8285B9;
    STZ.B $2A                            ;8285BB;
    LDA.L $7F821E                        ;8285BD;
    STA.B $18                            ;8285C1;
    STA.B $2F                            ;8285C3;
    STZ.B $30                            ;8285C5;
    LDA.B #$40                           ;8285C7;
    STA.B $1E                            ;8285C9;
    STZ.B $1F                            ;8285CB;
    REP #$10                             ;8285CD;
    LDX.W #$C0E0                         ;8285CF;
    STX.B $20                            ;8285D2;
    SEP #$10                             ;8285D4;
    LDA.B #$20                           ;8285D6;
    STA.B $16                            ;8285D8;
    RTS                                  ;8285DA;

CODE_8285DB:
    LDX.B $02                            ;8285DB;
    JSR.W (PTR16_828653,X)               ;8285DD;
    LDY.W $1F7A                          ;8285E0;
    REP #$10                             ;8285E3;
    LDX.B $0C                            ;8285E5;
    LDA.W $0011,X                        ;8285E7;
    AND.B #$40                           ;8285EA;
    ORA.L $7F831E                        ;8285EC;
    ORA.W DATA8_86BAC2,Y                 ;8285F0;
    STA.B $11                            ;8285F3;
    SEP #$10                             ;8285F5;
    LDA.B $27                            ;8285F7;
    AND.B #$7F                           ;8285F9;
    BEQ CODE_828601                      ;8285FB;
    JSL.L CODE_8280B4                    ;8285FD;

CODE_828601:
    JSL.L CODE_849B43                    ;828601;
    BEQ CODE_82864E                      ;828605;
    LDA.B #$0E                           ;828607;
    TRB.B $11                            ;828609;
    LDA.B $27                            ;82860B;
    AND.B #$7F                           ;82860D;
    BNE CODE_82864E                      ;82860F;
    LDA.B $02                            ;828611;
    CMP.B #$04                           ;828613;
    BEQ CODE_828630                      ;828615;
    CMP.B #$08                           ;828617;
    BEQ CODE_82862B                      ;828619;

CODE_82861B:
    LDA.B #$06                           ;82861B;
    STA.B $02                            ;82861D;
    REP #$10                             ;82861F;
    LDX.B $0C                            ;828621;
    LDA.B #$06                           ;828623;
    STA.W $0002,X                        ;828625;
    SEP #$10                             ;828628;
    RTS                                  ;82862A;

CODE_82862B:
    LDA.B #$B0                           ;82862B;
    STA.B $27                            ;82862D;
    RTS                                  ;82862F;

CODE_828630:
    LDA.B $3F                            ;828630;
    BEQ CODE_82861B                      ;828632;
    LDA.B #$0E                           ;828634;
    STA.B $03                            ;828636;
    STZ.B $2C                            ;828638;
    REP #$10                             ;82863A;
    LDX.B $0C                            ;82863C;
    LDA.B #$04                           ;82863E;
    STA.W $0002,X                        ;828640;
    LDA.B #$08                           ;828643;
    STA.W $0003,X                        ;828645;
    STA.W $0037,X                        ;828648;
    SEP #$10                             ;82864B;
    RTS                                  ;82864D;

CODE_82864E:
    JSL.L CODE_849B03                    ;82864E;
    RTS                                  ;828652;

PTR16_828653:
    dw CODE_82865D                       ;828653;
    dw CODE_82866A                       ;828655;
    dw CODE_82871D                       ;828657;
    dw CODE_82867B                       ;828659;
    dw CODE_828686                       ;82865B;

CODE_82865D:
    LDX.B $03                            ;82865D;
    BNE CODE_828669                      ;82865F;
    INC.B $03                            ;828661;
    LDA.B #$0B                           ;828663;
    JSL.L CODE_848F07                    ;828665;

CODE_828669:
    RTS                                  ;828669;

CODE_82866A:
    LDX.B $03                            ;82866A;
    BNE CODE_828676                      ;82866C;
    INC.B $03                            ;82866E;
    LDA.B #$0B                           ;828670;
    JSL.L CODE_848F07                    ;828672;

CODE_828676:
    JSL.L CODE_848EEA                    ;828676;
    RTS                                  ;82867A;

CODE_82867B:
    JSL.L CODE_84A4AB                    ;82867B;
    STZ.B $3F                            ;82867F;
    LDA.B #$04                           ;828681;
    STA.B $01                            ;828683;
    RTS                                  ;828685;

CODE_828686:
    LDX.B $03                            ;828686;
    JMP.W (PTR16_82868B,X)               ;828688;

PTR16_82868B:
    dw CODE_828691                       ;82868B;
    dw CODE_8286B2                       ;82868D;
    dw CODE_8286D5                       ;82868F;

CODE_828691:
    STZ.B $1A                            ;828691;
    STZ.B $1B                            ;828693;
    STZ.B $1C                            ;828695;
    STZ.B $1D                            ;828697;
    LDA.B #$04                           ;828699;
    JSL.L CODE_848F07                    ;82869B;
    LDA.B #$04                           ;82869F;
    STA.B $03                            ;8286A1;
    LDA.B $3F                            ;8286A3;
    BEQ CODE_8286B1                      ;8286A5;
    LDA.B #$02                           ;8286A7;
    STA.B $03                            ;8286A9;
    LDA.B #$02                           ;8286AB;
    STA.B $0B                            ;8286AD;
    STZ.B $10                            ;8286AF;

CODE_8286B1:
    RTS                                  ;8286B1;

CODE_8286B2:
    DEC.B $0B                            ;8286B2;
    BNE CODE_8286D4                      ;8286B4;
    LDA.B #$02                           ;8286B6;
    STA.B $0B                            ;8286B8;
    LDY.B $10                            ;8286BA;
    REP #$10                             ;8286BC;
    LDX.B $31,Y                          ;8286BE;
    INC.W $0002,X                        ;8286C0;
    STZ.W $0003,X                        ;8286C3;
    SEP #$10                             ;8286C6;
    INY                                  ;8286C8;
    INY                                  ;8286C9;
    STY.B $10                            ;8286CA;
    CPY.B #$0E                           ;8286CC;
    BNE CODE_8286D4                      ;8286CE;
    LDA.B #$04                           ;8286D0;
    STA.B $03                            ;8286D2;

CODE_8286D4:
    RTS                                  ;8286D4;

CODE_8286D5:
    LDA.B $0E                            ;8286D5;
    BEQ CODE_828718                      ;8286D7;
    JSL.L CODE_828174                    ;8286D9;
    JSL.L CODE_8491BE                    ;8286DD;
    LDA.B $2B                            ;8286E1;
    BIT.B #$04                           ;8286E3;
    BEQ CODE_82871C                      ;8286E5;
    JSL.L CODE_84A4AB                    ;8286E7;
    STZ.B $27                            ;8286EB;
    LDA.B #$20                           ;8286ED;
    STA.B $2A                            ;8286EF;
    LDA.B #$F8                           ;8286F1;
    STA.B $29                            ;8286F3;
    JSL.L CODE_8490A0                    ;8286F5;
    BEQ CODE_828707                      ;8286F9;
    CMP.B #$0D                           ;8286FB;
    BCC CODE_828718                      ;8286FD;
    CMP.B #$34                           ;8286FF;
    BEQ CODE_828718                      ;828701;
    LDA.B #$08                           ;828703;
    STA.B $29                            ;828705;

CODE_828707:
    JSL.L CODE_8490A0                    ;828707;
    BEQ CODE_828715                      ;82870B;
    CMP.B #$0D                           ;82870D;
    BCC CODE_828718                      ;82870F;
    CMP.B #$34                           ;828711;
    BEQ CODE_828718                      ;828713;

CODE_828715:
    JSR.W CODE_8289B2                    ;828715;

CODE_828718:
    LDA.B #$04                           ;828718;
    STA.B $01                            ;82871A;

CODE_82871C:
    RTS                                  ;82871C;

CODE_82871D:
    LDX.B $03                            ;82871D;
    JMP.W (PTR16_828722,X)               ;82871F;

PTR16_828722:
    dw CODE_828732                       ;828722;
    dw CODE_828749                       ;828724;
    dw CODE_828779                       ;828726;
    dw CODE_8287B0                       ;828728;
    dw CODE_828806                       ;82872A;
    dw CODE_828822                       ;82872C;
    dw CODE_828841                       ;82872E;
    dw CODE_82884E                       ;828730;

CODE_828732:
    LDA.B #$02                           ;828732;
    STA.B $03                            ;828734;
    STZ.B $1A                            ;828736;
    STZ.B $1B                            ;828738;
    STZ.B $1C                            ;82873A;
    STZ.B $1D                            ;82873C;
    LDA.B #$1E                           ;82873E;
    STA.B $0B                            ;828740;
    LDA.B #$04                           ;828742;
    JSL.L CODE_848F07                    ;828744;
    RTS                                  ;828748;

CODE_828749:
    DEC.B $0B                            ;828749;
    BNE CODE_828774                      ;82874B;
    LDA.B #$04                           ;82874D;
    STA.B $03                            ;82874F;
    LDA.B #$18                           ;828751;
    STA.B $2F                            ;828753;
    STZ.B $2C                            ;828755;
    STZ.B $10                            ;828757;
    LDA.B #$04                           ;828759;
    JSL.L CODE_848F07                    ;82875B;
    REP #$10                             ;82875F;
    JSR.W CODE_8288D1                    ;828761;
    BMI CODE_828772                      ;828764;
    LDX.B $0C                            ;828766;
    STZ.W $0002,X                        ;828768;
    STZ.W $0003,X                        ;82876B;
    STZ.B $02                            ;82876E;
    STZ.B $03                            ;828770;

CODE_828772:
    SEP #$10                             ;828772;

CODE_828774:
    JSL.L CODE_848EEA                    ;828774;
    RTS                                  ;828778;

CODE_828779:
    JSL.L CODE_828174                    ;828779;
    LDA.B $2F                            ;82877D;
    BPL CODE_828786                      ;82877F;
    JSR.W CODE_8288B0                    ;828781;
    BRA CODE_828792                      ;828784;

CODE_828786:
    DEC.B $2F                            ;828786;
    BNE CODE_828792                      ;828788;
    DEC.B $2F                            ;82878A;
    INC.B $10                            ;82878C;
    STZ.B $1C                            ;82878E;
    STZ.B $1D                            ;828790;

CODE_828792:
    JSL.L CODE_8491BE                    ;828792;
    LDA.B $2B                            ;828796;
    BIT.B #$04                           ;828798;
    BEQ CODE_8287AD                      ;82879A;
    LDA.B #$06                           ;82879C;
    STA.B $03                            ;82879E;
    LDA.B #$1E                           ;8287A0;
    JSL.L CODE_84A333                    ;8287A2;
    LDA.B #$10                           ;8287A6;
    STA.B $0B                            ;8287A8;
    JSR.W CODE_8289B2                    ;8287AA;

CODE_8287AD:
    JMP.W CODE_828929                    ;8287AD;

CODE_8287B0:
    DEC.B $0B                            ;8287B0;
    BEQ CODE_8287EE                      ;8287B2;
    JSL.L CODE_828174                    ;8287B4;
    LDA.B $2F                            ;8287B8;
    BPL CODE_8287BF                      ;8287BA;
    JSR.W CODE_8288B0                    ;8287BC;

CODE_8287BF:
    DEC.B $2F                            ;8287BF;
    BNE CODE_8287CB                      ;8287C1;
    DEC.B $2F                            ;8287C3;
    INC.B $10                            ;8287C5;
    STZ.B $1C                            ;8287C7;
    STZ.B $1D                            ;8287C9;

CODE_8287CB:
    JSL.L CODE_8491BE                    ;8287CB;
    LDA.B $2B                            ;8287CF;
    BIT.B #$04                           ;8287D1;
    BEQ CODE_828803                      ;8287D3;
    LDX.B $2C                            ;8287D5;
    INX                                  ;8287D7;
    STX.B $2C                            ;8287D8;
    CPX.B #$03                           ;8287DA;
    BCS CODE_8287EE                      ;8287DC;
    JSL.L CODE_849086                    ;8287DE;
    AND.B #$0F                           ;8287E2;
    CMP.W DATA8_86C10A,X                 ;8287E4;
    BCC CODE_8287EE                      ;8287E7;
    LDA.B #$04                           ;8287E9;
    STA.B $03                            ;8287EB;
    RTS                                  ;8287ED;

CODE_8287EE:
    LDA.B #$08                           ;8287EE;
    STA.B $03                            ;8287F0;
    LDA.B #$1E                           ;8287F2;
    STA.B $0B                            ;8287F4;
    LDA.B $10                            ;8287F6;
    BEQ CODE_828803                      ;8287F8;
    REP #$10                             ;8287FA;
    LDX.B $0C                            ;8287FC;
    DEC.W $0037,X                        ;8287FE;
    SEP #$10                             ;828801;

CODE_828803:
    JMP.W CODE_828929                    ;828803;

CODE_828806:
    DEC.B $0B                            ;828806;
    BNE CODE_828821                      ;828808;
    LDA.B #$0A                           ;82880A;
    STA.B $03                            ;82880C;
    LDA.B #$00                           ;82880E;
    STA.B $1C                            ;828810;
    LDA.B #$02                           ;828812;
    STA.B $1D                            ;828814;
    REP #$10                             ;828816;
    LDX.B $0C                            ;828818;
    LDA.B #$01                           ;82881A;
    STA.W $0037,X                        ;82881C;
    SEP #$10                             ;82881F;

CODE_828821:
    RTS                                  ;828821;

CODE_828822:
    JSL.L CODE_82825D                    ;828822;
    REP #$30                             ;828826;
    LDX.B $0C                            ;828828;
    LDA.B $08                            ;82882A;
    CMP.W $0008,X                        ;82882C;
    BCS CODE_82883C                      ;82882F;
    DEC.W $0037,X                        ;828831;
    LDA.W #$000C                         ;828834;
    STA.B $03                            ;828837;
    JMP.W CODE_828995                    ;828839;

CODE_82883C:
    SEP #$30                             ;82883C;
    JMP.W CODE_828929                    ;82883E;

CODE_828841:
    REP #$30                             ;828841;
    LDX.B $0C                            ;828843;
    LDA.W $0008,X                        ;828845;
    DEC A                                ;828848;
    STA.B $08                            ;828849;
    SEP #$30                             ;82884B;
    RTS                                  ;82884D;

CODE_82884E:
    LDX.B $2C                            ;82884E;
    JMP.W (PTR16_828853,X)               ;828850;

PTR16_828853:
    dw CODE_828859                       ;828853;
    dw CODE_82886A                       ;828855;
    dw CODE_8288A0                       ;828857;

CODE_828859:
    LDA.B #$02                           ;828859;
    STA.B $2C                            ;82885B;
    JSL.L CODE_84A4AB                    ;82885D;
    LDA.B #$02                           ;828861;
    STA.B $0B                            ;828863;
    LDA.B #$0C                           ;828865;
    STA.B $10                            ;828867;
    RTS                                  ;828869;

CODE_82886A:
    DEC.B $0B                            ;82886A;
    BNE CODE_82889F                      ;82886C;
    LDA.B #$02                           ;82886E;
    STA.B $0B                            ;828870;
    LDY.B $10                            ;828872;
    REP #$10                             ;828874;
    LDX.B $31,Y                          ;828876;
    INC.W $0002,X                        ;828878;
    STZ.W $0003,X                        ;82887B;
    SEP #$10                             ;82887E;
    DEY                                  ;828880;
    DEY                                  ;828881;
    STY.B $10                            ;828882;
    BPL CODE_82889F                      ;828884;
    LDA.B $2A                            ;828886;
    CMP.B #$7F                           ;828888;
    BEQ CODE_828897                      ;82888A;
    REP #$10                             ;82888C;
    LDX.B $0C                            ;82888E;
    LDA.B #$06                           ;828890;
    STA.W $0002,X                        ;828892;
    SEP #$10                             ;828895;

CODE_828897:
    LDA.B #$04                           ;828897;
    STA.B $2C                            ;828899;
    LDA.B #$1E                           ;82889B;
    STA.B $0B                            ;82889D;

CODE_82889F:
    RTS                                  ;82889F;

CODE_8288A0:
    DEC.B $0B                            ;8288A0;
    BNE CODE_8288A8                      ;8288A2;
    LDA.B #$04                           ;8288A4;
    STA.B $01                            ;8288A6;

CODE_8288A8:
    RTS                                  ;8288A8;

CODE_8288A9:
    JSL.L CODE_8283A3                    ;8288A9;
    JMP.W CODE_828995                    ;8288AD;

CODE_8288B0:
    REP #$30                             ;8288B0;
    STZ.W $0000                          ;8288B2;
    DEC.W $0000                          ;8288B5;
    LDX.B $0C                            ;8288B8;
    LDA.W $0007,X                        ;8288BA;
    SEC                                  ;8288BD;
    SBC.B $1C                            ;8288BE;
    STA.W $0007,X                        ;8288C0;
    SEP #$20                             ;8288C3;
    LDA.W $0009,X                        ;8288C5;
    SBC.W $0000                          ;8288C8;
    STA.W $0009,X                        ;8288CB;
    SEP #$10                             ;8288CE;
    RTS                                  ;8288D0;

CODE_8288D1:
    LDY.W #$000C                         ;8288D1;

CODE_8288D4:
    JSL.L CODE_8282D3                    ;8288D4;
    BNE CODE_828912                      ;8288D8;
    INC.W $0000,X                        ;8288DA;
    LDA.B #$11                           ;8288DD;
    STA.W $000A,X                        ;8288DF;
    PHY                                  ;8288E2;
    LDA.B #$00                           ;8288E3;
    XBA                                  ;8288E5;
    LDA.W $1F7A                          ;8288E6;
    TAY                                  ;8288E9;
    LDA.B $11                            ;8288EA;
    AND.B #$40                           ;8288EC;
    ORA.L $7F831E                        ;8288EE;
    ORA.W DATA8_86BAC2,Y                 ;8288F2;
    STA.W $0011,X                        ;8288F5;
    PLY                                  ;8288F8;
    LDA.B $12                            ;8288F9;
    STA.W $0012,X                        ;8288FB;
    REP #$20                             ;8288FE;
    LDA.B $05                            ;828900;
    STA.W $0005,X                        ;828902;
    LDA.B $08                            ;828905;
    STA.W $0008,X                        ;828907;
    SEP #$20                             ;82890A;
    STX.B $31,Y                          ;82890C;
    DEY                                  ;82890E;
    DEY                                  ;82890F;
    BPL CODE_8288D4                      ;828910;

CODE_828912:
    TYA                                  ;828912;
    STA.B $3F                            ;828913;
    BMI CODE_828928                      ;828915;
    STZ.W $003F                          ;828917;

CODE_82891A:
    CPY.W #$000C                         ;82891A;
    BEQ CODE_828928                      ;82891D;
    INY                                  ;82891F;
    INY                                  ;828920;
    LDX.B $31,Y                          ;828921;
    STZ.W $0000,X                        ;828923;
    BRA CODE_82891A                      ;828926;

CODE_828928:
    RTS                                  ;828928;

CODE_828929:
    REP #$31                             ;828929;
    LDX.B $37                            ;82892B;
    LDY.B $0C                            ;82892D;
    LDA.B $08                            ;82892F;
    ADC.W $0008,Y                        ;828931;
    LSR A                                ;828934;
    STA.W $0008,X                        ;828935;
    LDY.B $3B                            ;828938;
    LDA.B $08                            ;82893A;
    CLC                                  ;82893C;
    ADC.W $0008,X                        ;82893D;
    LSR A                                ;828940;
    STA.W $0008,Y                        ;828941;
    LDX.B $3D                            ;828944;
    LDA.B $08                            ;828946;
    CLC                                  ;828948;
    ADC.W $0008,Y                        ;828949;
    LSR A                                ;82894C;
    STA.W $0008,X                        ;82894D;
    LDX.B $37                            ;828950;
    LDY.B $3B                            ;828952;
    LDA.W $0008,X                        ;828954;
    CLC                                  ;828957;
    ADC.W $0008,Y                        ;828958;
    LSR A                                ;82895B;
    LDX.B $39                            ;82895C;
    STA.W $0008,X                        ;82895E;
    LDX.B $37                            ;828961;
    LDY.B $0C                            ;828963;
    LDA.W $0008,X                        ;828965;
    CLC                                  ;828968;
    ADC.W $0008,Y                        ;828969;
    LSR A                                ;82896C;
    LDX.B $33                            ;82896D;
    STA.W $0008,X                        ;82896F;
    LDX.B $33                            ;828972;
    LDA.W $0008,X                        ;828974;
    CLC                                  ;828977;
    ADC.W $0008,Y                        ;828978;
    LSR A                                ;82897B;
    LDX.B $31                            ;82897C;
    STA.W $0008,X                        ;82897E;
    LDX.B $33                            ;828981;
    LDY.B $37                            ;828983;
    LDA.W $0008,X                        ;828985;
    CLC                                  ;828988;
    ADC.W $0008,Y                        ;828989;
    LSR A                                ;82898C;
    LDX.B $35                            ;82898D;
    STA.W $0008,X                        ;82898F;
    SEP #$30                             ;828992;
    RTS                                  ;828994;

CODE_828995:
    REP #$30                             ;828995;
    LDA.B $3F                            ;828997;
    AND.W #$00FF                         ;828999;
    BEQ CODE_8289AD                      ;82899C;
    LDY.W #$000C                         ;82899E;

CODE_8289A1:
    LDX.B $31,Y                          ;8289A1;
    STZ.W $0000,X                        ;8289A3;
    STZ.W $0002,X                        ;8289A6;
    DEY                                  ;8289A9;
    DEY                                  ;8289AA;
    BPL CODE_8289A1                      ;8289AB;

CODE_8289AD:
    SEP #$30                             ;8289AD;
    STZ.B $3F                            ;8289AF;
    RTS                                  ;8289B1;

CODE_8289B2:
    LDA.B #$18                           ;8289B2;
    STA.B $2A                            ;8289B4;
    LDA.B #$08                           ;8289B6;
    STA.B $29                            ;8289B8;
    STZ.B $0F                            ;8289BA;
    STZ.B $1F                            ;8289BC;
    JSL.L CODE_8490A0                    ;8289BE;
    CMP.B #$34                           ;8289C2;
    BCC CODE_828A2A                      ;8289C4;
    CMP.B #$35                           ;8289C6;
    BNE CODE_8289CE                      ;8289C8;
    LDA.B #$08                           ;8289CA;
    STA.B $1F                            ;8289CC;

CODE_8289CE:
    INC.B $0F                            ;8289CE;
    JSR.W CODE_828AA5                    ;8289D0;
    REP #$31                             ;8289D3;
    LDA.B $05                            ;8289D5;
    ADC.W #$0008                         ;8289D7;
    STA.W $0000                          ;8289DA;
    LDA.B $08                            ;8289DD;
    CLC                                  ;8289DF;
    ADC.W #$0018                         ;8289E0;
    STA.W $0002                          ;8289E3;
    LDX.W #$0307                         ;8289E6;
    LDA.B $1F                            ;8289E9;
    AND.W #$00FF                         ;8289EB;
    BEQ CODE_8289F3                      ;8289EE;
    LDX.W #$0304                         ;8289F0;

CODE_8289F3:
    TXA                                  ;8289F3;
    STA.W $0008                          ;8289F4;
    JSL.L CODE_849111                    ;8289F7;
    SEP #$30                             ;8289FB;
    JSR.W CODE_828AD9                    ;8289FD;
    REP #$21                             ;828A00;
    LDA.B $05                            ;828A02;
    ADC.W #$0008                         ;828A04;
    STA.W $0000                          ;828A07;
    LDA.B $08                            ;828A0A;
    CLC                                  ;828A0C;
    ADC.W #$0018                         ;828A0D;
    STA.W $0002                          ;828A10;
    LDA.B $1F                            ;828A13;
    AND.W #$00FF                         ;828A15;
    ASL A                                ;828A18;
    TAX                                  ;828A19;
    LDA.W DATA8_86C0EA,X                 ;828A1A;
    STA.W $0008                          ;828A1D;
    JSL.L CODE_849111                    ;828A20;
    JSL.L CODE_80B8D7                    ;828A24;
    SEP #$20                             ;828A28;

CODE_828A2A:
    LDA.B #$18                           ;828A2A;
    STA.B $2A                            ;828A2C;
    LDA.B #$F8                           ;828A2E;
    STA.B $29                            ;828A30;
    STZ.B $1F                            ;828A32;
    JSL.L CODE_8490A0                    ;828A34;
    CMP.B #$34                           ;828A38;
    BCC CODE_828AA2                      ;828A3A;
    CMP.B #$35                           ;828A3C;
    BNE CODE_828A44                      ;828A3E;
    LDA.B #$08                           ;828A40;
    STA.B $1F                            ;828A42;

CODE_828A44:
    LDA.B $0F                            ;828A44;
    BNE CODE_828A4B                      ;828A46;
    JSR.W CODE_828AA5                    ;828A48;

CODE_828A4B:
    REP #$31                             ;828A4B;
    LDA.B $05                            ;828A4D;
    ADC.W #$FFF8                         ;828A4F;
    STA.W $0000                          ;828A52;
    LDA.B $08                            ;828A55;
    CLC                                  ;828A57;
    ADC.W #$0018                         ;828A58;
    STA.W $0002                          ;828A5B;
    LDX.W #$0307                         ;828A5E;
    LDA.B $1F                            ;828A61;
    AND.W #$00FF                         ;828A63;
    BEQ CODE_828A6B                      ;828A66;
    LDX.W #$0304                         ;828A68;

CODE_828A6B:
    TXA                                  ;828A6B;
    STA.W $0008                          ;828A6C;
    JSL.L CODE_849111                    ;828A6F;
    SEP #$30                             ;828A73;
    JSR.W CODE_828AD9                    ;828A75;
    REP #$21                             ;828A78;
    LDA.B $05                            ;828A7A;
    ADC.W #$FFF8                         ;828A7C;
    STA.W $0000                          ;828A7F;
    LDA.B $08                            ;828A82;
    CLC                                  ;828A84;
    ADC.W #$0018                         ;828A85;
    STA.W $0002                          ;828A88;
    LDA.B $1F                            ;828A8B;
    AND.W #$00FF                         ;828A8D;
    ASL A                                ;828A90;
    TAX                                  ;828A91;
    LDA.W DATA8_86C0EA,X                 ;828A92;
    STA.W $0008                          ;828A95;
    JSL.L CODE_849111                    ;828A98;
    JSL.L CODE_80B8D7                    ;828A9C;
    SEP #$20                             ;828AA0;

CODE_828AA2:
    STZ.B $1F                            ;828AA2;
    RTS                                  ;828AA4;

CODE_828AA5:
    REP #$10                             ;828AA5;
    LDA.B #$26                           ;828AA7;
    JSL.L CODE_8088A2                    ;828AA9;
    LDY.W #$0005                         ;828AAD;

CODE_828AB0:
    JSL.L CODE_8282D3                    ;828AB0;
    BNE CODE_828AD6                      ;828AB4;
    INC.W $0000,X                        ;828AB6;
    LDA.B #$12                           ;828AB9;
    STA.W $000A,X                        ;828ABB;
    TYA                                  ;828ABE;
    STA.W $000B,X                        ;828ABF;
    REP #$21                             ;828AC2;
    LDA.B $05                            ;828AC4;
    STA.W $0005,X                        ;828AC6;
    LDA.B $08                            ;828AC9;
    ADC.W #$0020                         ;828ACB;
    STA.W $0008,X                        ;828ACE;
    SEP #$20                             ;828AD1;
    DEY                                  ;828AD3;
    BPL CODE_828AB0                      ;828AD4;

CODE_828AD6:
    SEP #$10                             ;828AD6;
    RTS                                  ;828AD8;

CODE_828AD9:
    LDA.B $29                            ;828AD9;
    CLC                                  ;828ADB;
    ADC.B #$10                           ;828ADC;
    STA.B $29                            ;828ADE;
    JSL.L CODE_8490A0                    ;828AE0;
    CMP.B #$34                           ;828AE4;
    BCS CODE_828AF5                      ;828AE6;
    CMP.B #$0F                           ;828AE8;
    BEQ CODE_828AF0                      ;828AEA;
    CMP.B #$10                           ;828AEC;
    BNE CODE_828AF9                      ;828AEE;

CODE_828AF0:
    JSR.W CODE_828B5B                    ;828AF0;
    BRA CODE_828AF9                      ;828AF3;

CODE_828AF5:
    LDA.B #$01                           ;828AF5;
    TSB.B $1F                            ;828AF7;

CODE_828AF9:
    LDA.B $29                            ;828AF9;
    SEC                                  ;828AFB;
    SBC.B #$20                           ;828AFC;
    STA.B $29                            ;828AFE;
    JSL.L CODE_8490A0                    ;828B00;
    CMP.B #$34                           ;828B04;
    BCS CODE_828B15                      ;828B06;
    CMP.B #$0F                           ;828B08;
    BEQ CODE_828B10                      ;828B0A;
    CMP.B #$10                           ;828B0C;
    BNE CODE_828B19                      ;828B0E;

CODE_828B10:
    JSR.W CODE_828B5B                    ;828B10;
    BRA CODE_828B19                      ;828B13;

CODE_828B15:
    LDA.B #$04                           ;828B15;
    TSB.B $1F                            ;828B17;

CODE_828B19:
    LDA.B $29                            ;828B19;
    CLC                                  ;828B1B;
    ADC.B #$10                           ;828B1C;
    STA.B $29                            ;828B1E;
    LDA.B $2A                            ;828B20;
    CLC                                  ;828B22;
    ADC.B #$10                           ;828B23;
    STA.B $2A                            ;828B25;
    JSL.L CODE_8490A0                    ;828B27;
    CMP.B #$34                           ;828B2B;
    BCS CODE_828B3C                      ;828B2D;
    CMP.B #$0F                           ;828B2F;
    BEQ CODE_828B37                      ;828B31;
    CMP.B #$10                           ;828B33;
    BNE CODE_828B40                      ;828B35;

CODE_828B37:
    JSR.W CODE_828B5B                    ;828B37;
    BRA CODE_828B40                      ;828B3A;

CODE_828B3C:
    LDA.B #$02                           ;828B3C;
    TSB.B $1F                            ;828B3E;

CODE_828B40:
    LDA.B $2A                            ;828B40;
    SEC                                  ;828B42;
    SBC.B #$20                           ;828B43;
    STA.B $2A                            ;828B45;
    JSL.L CODE_8490A0                    ;828B47;
    CMP.B #$34                           ;828B4B;
    BCS CODE_828B5A                      ;828B4D;
    CMP.B #$0F                           ;828B4F;
    BEQ CODE_828B57                      ;828B51;
    CMP.B #$10                           ;828B53;
    BNE CODE_828B5A                      ;828B55;

CODE_828B57:
    JSR.W CODE_828B5B                    ;828B57;

CODE_828B5A:
    RTS                                  ;828B5A;

CODE_828B5B:
    STZ.B $19                            ;828B5B;
    CMP.B #$10                           ;828B5D;
    BNE CODE_828B65                      ;828B5F;
    LDA.B #$08                           ;828B61;
    STA.B $19                            ;828B63;

CODE_828B65:
    LDA.B $29                            ;828B65;
    CLC                                  ;828B67;
    ADC.B #$10                           ;828B68;
    STA.B $29                            ;828B6A;
    JSL.L CODE_8490A0                    ;828B6C;
    CMP.B #$34                           ;828B70;
    BCC CODE_828B78                      ;828B72;
    LDA.B #$01                           ;828B74;
    TSB.B $19                            ;828B76;

CODE_828B78:
    LDA.B $29                            ;828B78;
    SEC                                  ;828B7A;
    SBC.B #$20                           ;828B7B;
    STA.B $29                            ;828B7D;
    JSL.L CODE_8490A0                    ;828B7F;
    CMP.B #$34                           ;828B83;
    BCC CODE_828B8B                      ;828B85;
    LDA.B #$04                           ;828B87;
    TSB.B $19                            ;828B89;

CODE_828B8B:
    LDA.B $29                            ;828B8B;
    CLC                                  ;828B8D;
    ADC.B #$10                           ;828B8E;
    STA.B $29                            ;828B90;
    LDA.B $2A                            ;828B92;
    CLC                                  ;828B94;
    ADC.B #$10                           ;828B95;
    STA.B $2A                            ;828B97;
    JSL.L CODE_8490A0                    ;828B99;
    CMP.B #$34                           ;828B9D;
    BCC CODE_828BA5                      ;828B9F;
    LDA.B #$02                           ;828BA1;
    TSB.B $19                            ;828BA3;

CODE_828BA5:
    LDA.B $2A                            ;828BA5;
    SEC                                  ;828BA7;
    SBC.B #$10                           ;828BA8;
    STA.B $2A                            ;828BAA;
    STZ.W $0001                          ;828BAC;
    LDA.B $29                            ;828BAF;
    STA.W $0000                          ;828BB1;
    BPL CODE_828BB9                      ;828BB4;
    DEC.W $0001                          ;828BB6;

CODE_828BB9:
    STZ.W $0003                          ;828BB9;
    LDA.B $2A                            ;828BBC;
    STA.W $0002                          ;828BBE;
    BPL CODE_828BC6                      ;828BC1;
    DEC.W $0003                          ;828BC3;

CODE_828BC6:
    REP #$21                             ;828BC6;
    LDA.B $05                            ;828BC8;
    ADC.W $0000                          ;828BCA;
    STA.W $0000                          ;828BCD;
    LDA.B $08                            ;828BD0;
    CLC                                  ;828BD2;
    ADC.W $0002                          ;828BD3;
    STA.W $0002                          ;828BD6;
    LDA.B $19                            ;828BD9;
    AND.W #$00FF                         ;828BDB;
    ASL A                                ;828BDE;
    TAX                                  ;828BDF;
    LDA.W DATA8_86C0EA,X                 ;828BE0;
    STA.W $0008                          ;828BE3;
    JSL.L CODE_849111                    ;828BE6;
    JSL.L CODE_80B8D7                    ;828BEA;
    SEP #$20                             ;828BEE;
    STZ.B $19                            ;828BF0;
    RTS                                  ;828BF2;

CODE_828BF3:
    LDX.B $01                            ;828BF3;
    JSR.W (PTR16_828C09,X)               ;828BF5;
    JSL.L CODE_849B03                    ;828BF8;
    JSL.L CODE_8280B4                    ;828BFC;
    LDA.B $0E                            ;828C00;
    BNE CODE_828C08                      ;828C02;
    JML.L CODE_8283A3                    ;828C04;

CODE_828C08:
    RTL                                  ;828C08;

PTR16_828C09:
    dw CODE_828C0D                       ;828C09;
    dw CODE_828C47                       ;828C0B;

CODE_828C0D:
    LDA.B #$02                           ;828C0D;
    STA.B $01                            ;828C0F;
    STA.B $28                            ;828C11;
    STZ.B $18                            ;828C13;
    LDA.B #$21                           ;828C15;
    STA.B $16                            ;828C17;
    LDA.B #$00                           ;828C19;
    JSL.L CODE_848F07                    ;828C1B;
    LDA.B #$01                           ;828C1F;
    STA.B $27                            ;828C21;
    STA.B $26                            ;828C23;
    STZ.B $12                            ;828C25;
    LDA.B $11                            ;828C27;
    AND.B #$F0                           ;828C29;
    ORA.B #$20                           ;828C2B;
    STA.B $11                            ;828C2D;
    AND.B #$40                           ;828C2F;
    REP #$20                             ;828C31;
    BEQ CODE_828C3A                      ;828C33;
    LDA.W #$0400                         ;828C35;
    BRA CODE_828C3D                      ;828C38;

CODE_828C3A:
    LDA.W #$FC00                         ;828C3A;

CODE_828C3D:
    STA.B $1A                            ;828C3D;
    LDA.W #$C10D                         ;828C3F;
    STA.B $20                            ;828C42;
    SEP #$20                             ;828C44;
    RTS                                  ;828C46;

CODE_828C47:
    JSL.L CODE_82823E                    ;828C47;
    RTS                                  ;828C4B;

CODE_828C4C:
    LDX.B $01                            ;828C4C;
    JMP.W (PTR16_828C51,X)               ;828C4E;

PTR16_828C51:
    dw CODE_828C5B                       ;828C51;
    dw CODE_828C9B                       ;828C53;
    dw CODE_828CE1                       ;828C55;
    dw CODE_828D18                       ;828C57;
    dw CODE_828D57                       ;828C59;

CODE_828C5B:
    LDA.B #$19                           ;828C5B;
    STA.B $0A                            ;828C5D;
    JSL.L CODE_82827D                    ;828C5F;
    LDA.B #$0B                           ;828C63;
    STA.B $0A                            ;828C65;
    STA.B $28                            ;828C67;
    LDA.B #$00                           ;828C69;
    STA.B $12                            ;828C6B;
    LDA.B #$01                           ;828C6D;
    STA.B $26                            ;828C6F;
    STA.B $27                            ;828C71;
    LDA.B #$40                           ;828C73;
    STA.B $1E                            ;828C75;
    LDA.B $0B                            ;828C77;
    ASL A                                ;828C79;
    TAX                                  ;828C7A;
    REP #$20                             ;828C7B;
    LDA.W DATA8_86C11F,X                 ;828C7D;
    LDX.B $0B                            ;828C80;
    BPL CODE_828C88                      ;828C82;
    EOR.W #$FFFF                         ;828C84;
    INC A                                ;828C87;

CODE_828C88:
    STA.B $1A                            ;828C88;
    LDA.W #$C111                         ;828C8A;
    STA.B $20                            ;828C8D;
    SEP #$20                             ;828C8F;
    LDA.B #$03                           ;828C91;
    JSL.L CODE_848F07                    ;828C93;
    JML.L CODE_8280B4                    ;828C97;

CODE_828C9B:
    JSL.L CODE_8281E8                    ;828C9B;
    JSL.L CODE_82806E                    ;828C9F;
    BCC CODE_828CA9                      ;828CA3;
    JML.L CODE_8283A3                    ;828CA5;

CODE_828CA9:
    JSL.L CODE_8491BE                    ;828CA9;
    LDA.B $2B                            ;828CAD;
    BIT.B #$07                           ;828CAF;
    BEQ CODE_828CDD                      ;828CB1;
    STZ.B $37                            ;828CB3;
    LDA.B #$28                           ;828CB5;
    STA.B $38                            ;828CB7;
    LDA.B $2B                            ;828CB9;
    BIT.B #$04                           ;828CBB;
    BEQ CODE_828CCB                      ;828CBD;
    LDA.B #$04                           ;828CBF;
    STA.B $01                            ;828CC1;
    LDA.B #$04                           ;828CC3;
    JSL.L CODE_848F07                    ;828CC5;
    BRA CODE_828CDD                      ;828CC9;

CODE_828CCB:
    BIT.B #$01                           ;828CCB;
    BEQ CODE_828CD3                      ;828CCD;
    LDA.B #$40                           ;828CCF;
    TSB.B $11                            ;828CD1;

CODE_828CD3:
    LDA.B #$06                           ;828CD3;
    STA.B $01                            ;828CD5;
    LDA.B #$08                           ;828CD7;
    JSL.L CODE_848F07                    ;828CD9;

CODE_828CDD:
    JML.L CODE_8280B4                    ;828CDD;

CODE_828CE1:
    STZ.B $29                            ;828CE1;
    LDA.B #$0C                           ;828CE3;
    STA.B $2A                            ;828CE5;
    JSL.L CODE_8490A0                    ;828CE7;
    CMP.B #$34                           ;828CEB;
    BCC CODE_828CFB                      ;828CED;
    DEC.B $38                            ;828CEF;
    BNE CODE_828D10                      ;828CF1;
    INC.B $37                            ;828CF3;
    LDA.B $37                            ;828CF5;
    CMP.B #$04                           ;828CF7;
    BCC CODE_828D02                      ;828CF9;

CODE_828CFB:
    JSR.W CODE_828D6B                    ;828CFB;
    JML.L CODE_8280B4                    ;828CFE;

CODE_828D02:
    CLC                                  ;828D02;
    ADC.B #$04                           ;828D03;
    JSL.L CODE_848F07                    ;828D05;
    LDX.B $37                            ;828D09;
    LDA.W DATA8_86C125,X                 ;828D0B;
    STA.B $38                            ;828D0E;

CODE_828D10:
    JSL.L CODE_848EEA                    ;828D10;
    JML.L CODE_8280B4                    ;828D14;

CODE_828D18:
    LDA.B $11                            ;828D18;
    ASL A                                ;828D1A;
    ASL A                                ;828D1B;
    LDA.B #$08                           ;828D1C;
    BCS CODE_828D22                      ;828D1E;
    LDA.B #$F8                           ;828D20;

CODE_828D22:
    STA.B $29                            ;828D22;
    STZ.B $2A                            ;828D24;
    JSL.L CODE_8490A0                    ;828D26;
    CMP.B #$34                           ;828D2A;
    BCC CODE_828D3A                      ;828D2C;
    DEC.B $38                            ;828D2E;
    BNE CODE_828D4F                      ;828D30;
    INC.B $37                            ;828D32;
    LDA.B $37                            ;828D34;
    CMP.B #$04                           ;828D36;
    BCC CODE_828D41                      ;828D38;

CODE_828D3A:
    JSR.W CODE_828D6B                    ;828D3A;
    JML.L CODE_8280B4                    ;828D3D;

CODE_828D41:
    CLC                                  ;828D41;
    ADC.B #$08                           ;828D42;
    JSL.L CODE_848F07                    ;828D44;
    LDX.B $37                            ;828D48;
    LDA.W DATA8_86C125,X                 ;828D4A;
    STA.B $38                            ;828D4D;

CODE_828D4F:
    JSL.L CODE_848EEA                    ;828D4F;
    JML.L CODE_8280B4                    ;828D53;

CODE_828D57:
    JSL.L CODE_849B03                    ;828D57;
    JSL.L CODE_848EEA                    ;828D5B;
    LDA.B $0F                            ;828D5F;
    BPL CODE_828D67                      ;828D61;
    JML.L CODE_8283A3                    ;828D63;

CODE_828D67:
    JML.L CODE_8280B4                    ;828D67;

CODE_828D6B:
    LDA.B #$23                           ;828D6B;
    JSL.L CODE_8088A2                    ;828D6D;
    LDA.B #$08                           ;828D71;
    STA.B $01                            ;828D73;
    LDA.L $7F8222                        ;828D75;
    STA.B $18                            ;828D79;
    LDA.B #$25                           ;828D7B;
    STA.B $16                            ;828D7D;
    LDA.B #$00                           ;828D7F;
    JSL.L CODE_848F07                    ;828D81;
    REP #$20                             ;828D85;
    LDA.W #$C11B                         ;828D87;
    STA.B $20                            ;828D8A;
    SEP #$20                             ;828D8C;
    LDA.B $11                            ;828D8E;
    AND.B #$F1                           ;828D90;
    ORA.B #$04                           ;828D92;
    STA.B $11                            ;828D94;
    RTS                                  ;828D96;

CODE_828D97:
    LDX.B $01                            ;828D97;
    JSR.W (PTR16_828DC5,X)               ;828D99;
    LDA.B $2B                            ;828D9C;
    BNE CODE_828DB4                      ;828D9E;
    LDA.B $37                            ;828DA0;
    BEQ CODE_828DB4                      ;828DA2;
    JSL.L CODE_849B03                    ;828DA4;
    BNE CODE_828DB4                      ;828DA8;
    JSL.L CODE_849B43                    ;828DAA;
    BEQ CODE_828DBC                      ;828DAE;
    JSL.L CODE_84A37F                    ;828DB0;

CODE_828DB4:
    JSL.L CODE_84A4AB                    ;828DB4;

CODE_828DB8:
    JML.L CODE_8283A3                    ;828DB8;

CODE_828DBC:
    JSL.L CODE_8280B4                    ;828DBC;
    LDA.B $0E                            ;828DC0;
    BEQ CODE_828DB8                      ;828DC2;
    RTL                                  ;828DC4;

PTR16_828DC5:
    dw CODE_828DCD                       ;828DC5;
    dw CODE_828E15                       ;828DC7;
    dw CODE_828E42                       ;828DC9;
    dw CODE_828E61                       ;828DCB;

CODE_828DCD:
    LDA.B #$20                           ;828DCD;
    STA.B $0A                            ;828DCF;
    JSL.L CODE_82827D                    ;828DD1;
    LDA.B #$0C                           ;828DD5;
    STA.B $0A                            ;828DD7;
    LDA.B #$04                           ;828DD9;
    STA.B $12                            ;828DDB;
    LDA.B #$01                           ;828DDD;
    STA.B $27                            ;828DDF;
    STA.B $26                            ;828DE1;
    LDA.B #$06                           ;828DE3;
    JSL.L CODE_848F07                    ;828DE5;
    REP #$20                             ;828DE9;
    LDA.W #$C129                         ;828DEB;
    STA.B $20                            ;828DEE;
    LDA.B $08                            ;828DF0;
    STA.B $38                            ;828DF2;
    SEP #$20                             ;828DF4;
    LDA.B #$40                           ;828DF6;
    STA.B $1E                            ;828DF8;
    JSL.L CODE_849086                    ;828DFA;
    AND.B #$03                           ;828DFE;
    TAX                                  ;828E00;
    LDA.W DATA8_86C13D,X                 ;828E01;
    STA.B $37                            ;828E04;
    JSL.L CODE_8491BE                    ;828E06;
    LDA.B $2B                            ;828E0A;
    BEQ CODE_828E14                      ;828E0C;
    LDA.B #$06                           ;828E0E;
    STA.B $01                            ;828E10;
    STZ.B $2B                            ;828E12;

CODE_828E14:
    RTS                                  ;828E14;

CODE_828E15:
    JSL.L CODE_8281E8                    ;828E15;
    JSL.L CODE_8491BE                    ;828E19;
    LDA.B $2E                            ;828E1D;
    CMP.B #$0E                           ;828E1F;
    BEQ CODE_828E27                      ;828E21;
    CMP.B #$0D                           ;828E23;
    BNE CODE_828E2F                      ;828E25;

CODE_828E27:
    LDA.B #$04                           ;828E27;
    STA.B $01                            ;828E29;
    LDA.B #$20                           ;828E2B;
    STA.B $1E                            ;828E2D;

CODE_828E2F:
    REP #$20                             ;828E2F;
    LDA.B $1C                            ;828E31;
    CMP.W #$FC00                         ;828E33;
    BPL CODE_828E3D                      ;828E36;
    LDA.W #$FC00                         ;828E38;
    STA.B $1C                            ;828E3B;

CODE_828E3D:
    SEP #$20                             ;828E3D;
    JMP.W CODE_828E64                    ;828E3F;

CODE_828E42:
    JSL.L CODE_8281E8                    ;828E42;
    JSL.L CODE_848EEA                    ;828E46;
    JSL.L CODE_8491BE                    ;828E4A;
    REP #$20                             ;828E4E;
    LDA.B $1C                            ;828E50;
    CMP.W #$FE00                         ;828E52;
    BPL CODE_828E5C                      ;828E55;
    LDA.W #$FE00                         ;828E57;
    STA.B $1C                            ;828E5A;

CODE_828E5C:
    SEP #$20                             ;828E5C;
    JMP.W CODE_828E64                    ;828E5E;

CODE_828E61:
    DEC.B $37                            ;828E61;
    RTS                                  ;828E63;

CODE_828E64:
    LDA.B $08                            ;828E64;
    SEC                                  ;828E66;
    SBC.B $38                            ;828E67;
    SEP #$20                             ;828E69;
    CMP.B $37                            ;828E6B;
    BCC CODE_828E71                      ;828E6D;
    STZ.B $37                            ;828E6F;

CODE_828E71:
    RTS                                  ;828E71;

CODE_828E72:
    LDX.B $01                            ;828E72;
    JMP.W (PTR16_828E77,X)               ;828E74;

PTR16_828E77:
    dw CODE_828E85                       ;828E77;
    dw CODE_828EFA                       ;828E79;
    dw CODE_828F16                       ;828E7B;
    dw CODE_828F26                       ;828E7D;
    dw CODE_828F56                       ;828E7F;
    dw CODE_828F5D                       ;828E81;
    dw CODE_828F9B                       ;828E83;

CODE_828E85:
    LDA.B #$22                           ;828E85;
    STA.B $0A                            ;828E87;
    JSL.L CODE_82827D                    ;828E89;
    LDA.B #$02                           ;828E8D;
    STA.B $12                            ;828E8F;
    LDA.B #$0D                           ;828E91;
    STA.B $0A                            ;828E93;
    LDA.B #$01                           ;828E95;
    STA.B $27                            ;828E97;
    LDA.B $0B                            ;828E99;
    BNE CODE_828EC8                      ;828E9B;
    LDA.B #$01                           ;828E9D;
    STA.B $26                            ;828E9F;
    LDA.B #$FF                           ;828EA1;
    STA.B $2F                            ;828EA3;
    REP #$20                             ;828EA5;
    LDA.W #$C141                         ;828EA7;
    STA.B $20                            ;828EAA;
    LDA.W DATA8_86EE87                   ;828EAC;
    ASL A                                ;828EAF;
    ASL A                                ;828EB0;
    ASL A                                ;828EB1;
    STA.B $1A                            ;828EB2;
    LDA.W DATA8_86EE89                   ;828EB4;
    ASL A                                ;828EB7;
    ASL A                                ;828EB8;
    ASL A                                ;828EB9;
    STA.B $1C                            ;828EBA;
    SEP #$20                             ;828EBC;
    LDA.B #$02                           ;828EBE;
    JSL.L CODE_848F07                    ;828EC0;
    JML.L CODE_8280B4                    ;828EC4;

CODE_828EC8:
    LDA.B #$06                           ;828EC8;
    STA.B $01                            ;828ECA;
    LDA.B #$02                           ;828ECC;
    STA.B $26                            ;828ECE;
    STZ.B $28                            ;828ED0;
    REP #$20                             ;828ED2;
    LDA.W #$C14B                         ;828ED4;
    STA.B $20                            ;828ED7;
    LDA.W #$FE00                         ;828ED9;
    STA.B $1A                            ;828EDC;
    SEP #$20                             ;828EDE;
    LDA.B #$20                           ;828EE0;
    STA.B $1F                            ;828EE2;
    LDA.B #$18                           ;828EE4;
    STA.B $37                            ;828EE6;
    LDA.B #$06                           ;828EE8;
    STA.B $38                            ;828EEA;
    LDA.B #$0C                           ;828EEC;
    STA.B $39                            ;828EEE;
    LDA.B #$04                           ;828EF0;
    JSL.L CODE_848F07                    ;828EF2;
    JML.L CODE_8280B4                    ;828EF6;

CODE_828EFA:
    JSL.L CODE_82820A                    ;828EFA;
    JSL.L CODE_849B03                    ;828EFE;
    JSL.L CODE_8491BE                    ;828F02;
    LDA.B $2B                            ;828F06;
    BEQ CODE_828F12                      ;828F08;
    INC.B $01                            ;828F0A;
    INC.B $01                            ;828F0C;
    JSL.L CODE_848EEA                    ;828F0E;

CODE_828F12:
    JML.L CODE_8280B4                    ;828F12;

CODE_828F16:
    JSL.L CODE_848EEA                    ;828F16;
    LDA.B $0F                            ;828F1A;
    BPL CODE_828F22                      ;828F1C;
    JML.L CODE_8283A3                    ;828F1E;

CODE_828F22:
    JML.L CODE_8280B4                    ;828F22;

CODE_828F26:
    JSL.L CODE_828174                    ;828F26;
    DEC.B $39                            ;828F2A;
    BNE CODE_828F4F                      ;828F2C;
    LDA.B #$06                           ;828F2E;
    STA.B $39                            ;828F30;
    LDA.B #$08                           ;828F32;
    STA.B $01                            ;828F34;
    JSL.L CODE_84A07C                    ;828F36;
    CMP.B #$18                           ;828F3A;
    BEQ CODE_828F4F                      ;828F3C;
    SEC                                  ;828F3E;
    SBC.B #$08                           ;828F3F;
    AND.B #$1F                           ;828F41;
    CMP.B #$10                           ;828F43;
    BCC CODE_828F4B                      ;828F45;
    LDA.B #$0C                           ;828F47;
    BRA CODE_828F4D                      ;828F49;

CODE_828F4B:
    LDA.B #$0A                           ;828F4B;

CODE_828F4D:
    STA.B $01                            ;828F4D;

CODE_828F4F:
    JSL.L CODE_849B43                    ;828F4F;
    JMP.W CODE_828FDC                    ;828F53;

CODE_828F56:
    JSL.L CODE_82823E                    ;828F56;
    JMP.W CODE_828FDC                    ;828F5A;

CODE_828F5D:
    LDA.B $38                            ;828F5D;
    BEQ CODE_828F94                      ;828F5F;
    DEC.B $39                            ;828F61;
    BNE CODE_828F94                      ;828F63;
    DEC.B $38                            ;828F65;
    LDA.B #$06                           ;828F67;
    STA.B $39                            ;828F69;
    DEC.B $37                            ;828F6B;
    LDA.B $37                            ;828F6D;
    ASL A                                ;828F6F;
    ASL A                                ;828F70;
    TAX                                  ;828F71;
    REP #$20                             ;828F72;
    LDA.W DATA8_86EE37,X                 ;828F74;
    ASL A                                ;828F77;
    STA.B $1A                            ;828F78;
    LDA.W DATA8_86EE39,X                 ;828F7A;
    ASL A                                ;828F7D;
    STA.B $1C                            ;828F7E;
    SEP #$20                             ;828F80;
    CPX.B #$5C                           ;828F82;
    BEQ CODE_828F94                      ;828F84;
    CPX.B #$50                           ;828F86;
    BCS CODE_828F8E                      ;828F88;
    LDA.B #$09                           ;828F8A;
    BRA CODE_828F90                      ;828F8C;

CODE_828F8E:
    LDA.B #$08                           ;828F8E;

CODE_828F90:
    JSL.L CODE_848F07                    ;828F90;

CODE_828F94:
    JSL.L CODE_82820A                    ;828F94;
    JMP.W CODE_828FDC                    ;828F98;

CODE_828F9B:
    LDA.B $38                            ;828F9B;
    BEQ CODE_828FD5                      ;828F9D;
    DEC.B $39                            ;828F9F;
    BNE CODE_828FD5                      ;828FA1;
    DEC.B $38                            ;828FA3;
    LDA.B #$06                           ;828FA5;
    STA.B $39                            ;828FA7;
    LDA.B $37                            ;828FA9;
    INC A                                ;828FAB;
    AND.B #$1F                           ;828FAC;
    STA.B $37                            ;828FAE;
    ASL A                                ;828FB0;
    ASL A                                ;828FB1;
    TAX                                  ;828FB2;
    REP #$20                             ;828FB3;
    LDA.W DATA8_86EE37,X                 ;828FB5;
    ASL A                                ;828FB8;
    STA.B $1A                            ;828FB9;
    LDA.W DATA8_86EE39,X                 ;828FBB;
    ASL A                                ;828FBE;
    STA.B $1C                            ;828FBF;
    SEP #$20                             ;828FC1;
    CPX.B #$64                           ;828FC3;
    BEQ CODE_828FD5                      ;828FC5;
    CPX.B #$74                           ;828FC7;
    BCC CODE_828FCF                      ;828FC9;
    LDA.B #$06                           ;828FCB;
    BRA CODE_828FD1                      ;828FCD;

CODE_828FCF:
    LDA.B #$05                           ;828FCF;

CODE_828FD1:
    JSL.L CODE_848F07                    ;828FD1;

CODE_828FD5:
    JSL.L CODE_82820A                    ;828FD5;
    JMP.W CODE_828FDC                    ;828FD9;

CODE_828FDC:
    JSL.L CODE_849B43                    ;828FDC;
    JSL.L CODE_849B03                    ;828FE0;
    BNE CODE_829020                      ;828FE4;
    LDY.B #$27                           ;828FE6;
    LDA.B ($0C),Y                        ;828FE8;
    AND.B #$7F                           ;828FEA;
    BEQ CODE_829020                      ;828FEC;
    JSL.L CODE_8280B4                    ;828FEE;
    LDA.B $0E                            ;828FF2;
    BEQ CODE_829024                      ;828FF4;
    DEC.B $3A                            ;828FF6;
    LDA.B $3A                            ;828FF8;
    AND.B #$01                           ;828FFA;
    BNE CODE_82901F                      ;828FFC;
    JSL.L CODE_8282D3                    ;828FFE;
    BNE CODE_82901D                      ;829002;
    INC.W $0000,X                        ;829004;
    LDA.B #$10                           ;829007;
    STA.W $000A,X                        ;829009;
    LDA.B #$01                           ;82900C;
    STA.W $000B,X                        ;82900E;
    REP #$20                             ;829011;
    LDA.B $05                            ;829013;
    STA.W $0005,X                        ;829015;
    LDA.B $08                            ;829018;
    STA.W $0008,X                        ;82901A;

CODE_82901D:
    SEP #$30                             ;82901D;

CODE_82901F:
    RTL                                  ;82901F;

CODE_829020:
    JSL.L CODE_84A4AB                    ;829020;

CODE_829024:
    JML.L CODE_8283A3                    ;829024;

CODE_829028:
    LDX.B $01                            ;829028;
    JMP.W (PTR16_82902D,X)               ;82902A;

PTR16_82902D:
    dw CODE_829033                       ;82902D;
    dw CODE_82908A                       ;82902F;
    dw CODE_8290AD                       ;829031;

CODE_829033:
    LDA.B #$29                           ;829033;
    STA.B $0A                            ;829035;
    JSL.L CODE_82827D                    ;829037;
    LDA.B #$0E                           ;82903B;
    STA.B $0A                            ;82903D;
    LDA.B #$02                           ;82903F;
    STA.B $12                            ;829041;
    LDA.B $0B                            ;829043;
    BEQ CODE_829064                      ;829045;
    LDA.B #$04                           ;829047;
    STA.B $01                            ;829049;
    LDA.B #$06                           ;82904B;
    JSL.L CODE_848F07                    ;82904D;
    REP #$20                             ;829051;
    LDA.W #$FC00                         ;829053;
    STA.B $1C                            ;829056;
    LDA.W #$FC00                         ;829058;
    STA.B $1A                            ;82905B;
    LDA.W #$C163                         ;82905D;
    STA.B $20                            ;829060;
    BRA CODE_82907A                      ;829062;

CODE_829064:
    LDA.B #$05                           ;829064;
    JSL.L CODE_848F07                    ;829066;
    LDA.B #$0C                           ;82906A;
    STA.B $1F                            ;82906C;
    REP #$20                             ;82906E;
    LDA.W #$FE00                         ;829070;
    STA.B $1A                            ;829073;
    LDA.W #$C15F                         ;829075;
    STA.B $20                            ;829078;

CODE_82907A:
    SEP #$20                             ;82907A;
    LDA.B #$01                           ;82907C;
    STA.B $27                            ;82907E;
    LDA.B #$02                           ;829080;
    STA.B $26                            ;829082;
    STZ.B $28                            ;829084;
    JML.L CODE_8280B4                    ;829086;

CODE_82908A:
    JSL.L CODE_828174                    ;82908A;
    JSL.L CODE_849B43                    ;82908E;
    JSL.L CODE_849B03                    ;829092;
    BEQ CODE_8290A0                      ;829096;
    JSL.L CODE_84A4AB                    ;829098;

CODE_82909C:
    JML.L CODE_8283A3                    ;82909C;

CODE_8290A0:
    JSL.L CODE_82806E                    ;8290A0;
    BCS CODE_82909C                      ;8290A4;
    JSR.W CODE_8290DB                    ;8290A6;
    JML.L CODE_8280B4                    ;8290A9;

CODE_8290AD:
    JSL.L CODE_848EEA                    ;8290AD;
    JSL.L CODE_82820A                    ;8290B1;
    JSL.L CODE_849B03                    ;8290B5;
    LDA.B $02                            ;8290B9;
    BNE CODE_8290CD                      ;8290BB;
    JSL.L CODE_8491BE                    ;8290BD;
    LDA.B $2B                            ;8290C1;
    AND.B #$04                           ;8290C3;
    BEQ CODE_8290CD                      ;8290C5;
    STZ.B $1C                            ;8290C7;
    STZ.B $1D                            ;8290C9;
    INC.B $02                            ;8290CB;

CODE_8290CD:
    JSL.L CODE_82806E                    ;8290CD;
    BCS CODE_8290D7                      ;8290D1;
    JML.L CODE_8280B4                    ;8290D3;

CODE_8290D7:
    JML.L CODE_8283A3                    ;8290D7;

CODE_8290DB:
    INC.B $37                            ;8290DB;
    LDA.B $37                            ;8290DD;
    AND.B #$03                           ;8290DF;
    BNE CODE_829109                      ;8290E1;
    JSL.L CODE_8282D3                    ;8290E3;
    BNE CODE_829107                      ;8290E7;
    INC.W $0000,X                        ;8290E9;
    LDA.B #$10                           ;8290EC;
    STA.W $000A,X                        ;8290EE;
    LDA.B #$02                           ;8290F1;
    STA.W $000B,X                        ;8290F3;
    REP #$20                             ;8290F6;
    LDA.B $05                            ;8290F8;
    CLC                                  ;8290FA;
    ADC.W #$0008                         ;8290FB;
    STA.W $0005,X                        ;8290FE;
    LDA.B $08                            ;829101;
    INC A                                ;829103;
    STA.W $0008,X                        ;829104;

CODE_829107:
    SEP #$30                             ;829107;

CODE_829109:
    RTS                                  ;829109;

CODE_82910A:
    LDX.B $01                            ;82910A;
    JSR.W (PTR16_82914A,X)               ;82910C;
    LDA.B $27                            ;82910F;
    BEQ CODE_82913B                      ;829111;
    JSL.L CODE_849B43                    ;829113;
    BEQ CODE_829131                      ;829117;
    LDA.B $27                            ;829119;
    AND.B #$7F                           ;82911B;
    BNE CODE_829128                      ;82911D;
    STZ.B $38                            ;82911F;
    LDA.B #$04                           ;829121;
    STA.B $01                            ;829123;
    JMP.W CODE_82913B                    ;829125;

CODE_829128:
    LDA.B #$F1                           ;829128;
    AND.B $11                            ;82912A;
    STA.B $11                            ;82912C;
    JMP.W CODE_82913B                    ;82912E;

CODE_829131:
    LDA.B $3F                            ;829131;
    ORA.B $11                            ;829133;
    STA.B $11                            ;829135;
    JSL.L CODE_849B03                    ;829137;

CODE_82913B:
    JSL.L CODE_8280B4                    ;82913B;
    JSL.L CODE_82806E                    ;82913F;
    BCC CODE_829149                      ;829143;
    JSL.L CODE_8283A3                    ;829145;

CODE_829149:
    RTL                                  ;829149;

PTR16_82914A:
    dw CODE_829150                       ;82914A;
    dw CODE_8291BB                       ;82914C;
    dw CODE_8293EF                       ;82914E;

CODE_829150:
    LDA.B #$02                           ;829150;
    STA.B $01                            ;829152;
    LDA.B #$04                           ;829154;
    STA.B $27                            ;829156;
    LDA.B #$02                           ;829158;
    STA.B $26                            ;82915A;
    LDA.B #$01                           ;82915C;
    STA.B $28                            ;82915E;
    LDA.L $7F8231                        ;829160;
    STA.B $18                            ;829164;
    LDA.L $7F8331                        ;829166;
    ORA.B #$30                           ;82916A;
    STA.B $11                            ;82916C;
    LDA.B $11                            ;82916E;
    AND.B #$0E                           ;829170;
    STA.B $3F                            ;829172;
    LDA.B #$00                           ;829174;
    STA.B $12                            ;829176;
    STZ.B $3E                            ;829178;
    REP #$20                             ;82917A;
    LDA.W #$FC80                         ;82917C;
    STA.B $1A                            ;82917F;
    STA.B $1C                            ;829181;
    SEP #$20                             ;829183;
    LDA.B #$33                           ;829185;
    STA.B $16                            ;829187;
    LDA.B $0B                            ;829189;
    BEQ CODE_8291A7                      ;82918B;
    CMP.B #$01                           ;82918D;
    BEQ CODE_829195                      ;82918F;
    CMP.B #$03                           ;829191;
    BNE CODE_8291A7                      ;829193;

CODE_829195:
    REP #$20                             ;829195;
    LDA.W #$C16D                         ;829197;
    STA.B $20                            ;82919A;
    SEP #$20                             ;82919C;
    LDA.B #$08                           ;82919E;
    STA.B $39                            ;8291A0;
    LDA.B #$01                           ;8291A2;
    JMP.W CODE_8291B6                    ;8291A4;

CODE_8291A7:
    REP #$20                             ;8291A7;
    LDA.W #$C172                         ;8291A9;
    STA.B $20                            ;8291AC;
    SEP #$20                             ;8291AE;
    LDA.B #$07                           ;8291B0;
    STA.B $39                            ;8291B2;
    LDA.B #$00                           ;8291B4;

CODE_8291B6:
    JSL.L CODE_848F07                    ;8291B6;
    RTS                                  ;8291BA;

CODE_8291BB:
    LDX.B $02                            ;8291BB;
    JSR.W (PTR16_8291C1,X)               ;8291BD;
    RTS                                  ;8291C0;

PTR16_8291C1:
    dw CODE_8291CF                       ;8291C1;
    dw CODE_8291F4                       ;8291C3;
    dw CODE_82921B                       ;8291C5;
    dw CODE_829242                       ;8291C7;
    dw CODE_829269                       ;8291C9;
    dw CODE_82938A                       ;8291CB;
    dw CODE_8293AD                       ;8291CD;

CODE_8291CF:
    LDA.B $0B                            ;8291CF;
    BEQ CODE_8291E1                      ;8291D1;
    CMP.B #$01                           ;8291D3;
    BEQ CODE_8291E7                      ;8291D5;
    CMP.B #$02                           ;8291D7;
    BEQ CODE_8291EB                      ;8291D9;
    LDA.B #$18                           ;8291DB;
    STA.B $37                            ;8291DD;
    BRA CODE_8291EF                      ;8291DF;

CODE_8291E1:
    LDA.B #$0C                           ;8291E1;
    STA.B $37                            ;8291E3;
    BRA CODE_8291EF                      ;8291E5;

CODE_8291E7:
    STZ.B $37                            ;8291E7;
    BRA CODE_8291EF                      ;8291E9;

CODE_8291EB:
    LDA.B #$32                           ;8291EB;
    STA.B $37                            ;8291ED;

CODE_8291EF:
    LDA.B #$0C                           ;8291EF;
    STA.B $02                            ;8291F1;
    RTS                                  ;8291F3;

CODE_8291F4:
    LDA.B $0B                            ;8291F4;
    BEQ CODE_829206                      ;8291F6;
    CMP.B #$01                           ;8291F8;
    BEQ CODE_82920C                      ;8291FA;
    CMP.B #$02                           ;8291FC;
    BEQ CODE_829212                      ;8291FE;
    LDA.B #$64                           ;829200;
    STA.B $37                            ;829202;
    BRA CODE_829216                      ;829204;

CODE_829206:
    LDA.B #$58                           ;829206;
    STA.B $37                            ;829208;
    BRA CODE_829216                      ;82920A;

CODE_82920C:
    LDA.B #$4C                           ;82920C;
    STA.B $37                            ;82920E;
    BRA CODE_829216                      ;829210;

CODE_829212:
    LDA.B #$6E                           ;829212;
    STA.B $37                            ;829214;

CODE_829216:
    LDA.B #$0C                           ;829216;
    STA.B $02                            ;829218;
    RTS                                  ;82921A;

CODE_82921B:
    LDA.B $0B                            ;82921B;
    BEQ CODE_82922D                      ;82921D;
    CMP.B #$01                           ;82921F;
    BEQ CODE_829233                      ;829221;
    CMP.B #$02                           ;829223;
    BEQ CODE_829239                      ;829225;
    LDA.B #$8C                           ;829227;
    STA.B $37                            ;829229;
    BRA CODE_82923D                      ;82922B;

CODE_82922D:
    LDA.B #$82                           ;82922D;
    STA.B $37                            ;82922F;
    BRA CODE_82923D                      ;829231;

CODE_829233:
    LDA.B #$78                           ;829233;
    STA.B $37                            ;829235;
    BRA CODE_82923D                      ;829237;

CODE_829239:
    LDA.B #$AE                           ;829239;
    STA.B $37                            ;82923B;

CODE_82923D:
    LDA.B #$0C                           ;82923D;
    STA.B $02                            ;82923F;
    RTS                                  ;829241;

CODE_829242:
    LDA.B $0B                            ;829242;
    BEQ CODE_829254                      ;829244;
    CMP.B #$01                           ;829246;
    BEQ CODE_82925A                      ;829248;
    CMP.B #$02                           ;82924A;
    BEQ CODE_829260                      ;82924C;
    LDA.B #$E4                           ;82924E;
    STA.B $37                            ;829250;
    BRA CODE_829264                      ;829252;

CODE_829254:
    LDA.B #$DA                           ;829254;
    STA.B $37                            ;829256;
    BRA CODE_829264                      ;829258;

CODE_82925A:
    LDA.B #$D0                           ;82925A;
    STA.B $37                            ;82925C;
    BRA CODE_829264                      ;82925E;

CODE_829260:
    LDA.B #$F0                           ;829260;
    STA.B $37                            ;829262;

CODE_829264:
    LDA.B #$0C                           ;829264;
    STA.B $02                            ;829266;
    RTS                                  ;829268;

CODE_829269:
    LDX.B $37                            ;829269;
    LDA.W DATA8_86C1B3,X                 ;82926B;
    STA.B $38                            ;82926E;
    INX                                  ;829270;
    LDA.B $39                            ;829271;
    STA.B $03                            ;829273;
    LDA.W DATA8_86C1B3,X                 ;829275;
    STA.B $39                            ;829278;
    BEQ CODE_82927F                      ;82927A;
    JMP.W CODE_8292C3                    ;82927C;

CODE_82927F:
    REP #$20                             ;82927F;
    LDA.W #$0380                         ;829281;
    STA.B $1C                            ;829284;
    STZ.B $1A                            ;829286;
    SEP #$20                             ;829288;
    LDA.B $03                            ;82928A;
    CMP.B #$03                           ;82928C;
    BNE CODE_829296                      ;82928E;
    JSR.W CODE_82948A                    ;829290;
    JMP.W CODE_8292B1                    ;829293;

CODE_829296:
    CMP.B #$02                           ;829296;
    BNE CODE_8292A0                      ;829298;
    JSR.W CODE_82949F                    ;82929A;
    JMP.W CODE_8292B1                    ;82929D;

CODE_8292A0:
    CMP.B #$07                           ;8292A0;
    BNE CODE_8292AA                      ;8292A2;
    JSR.W CODE_8294B4                    ;8292A4;
    JMP.W CODE_8292B1                    ;8292A7;

CODE_8292AA:
    CMP.B #$08                           ;8292AA;
    BNE CODE_8292B1                      ;8292AC;
    JSR.W CODE_8294C9                    ;8292AE;

CODE_8292B1:
    LDA.B #$09                           ;8292B1;
    JSL.L CODE_848F07                    ;8292B3;
    REP #$20                             ;8292B7;
    LDA.W #$C181                         ;8292B9;
    STA.B $20                            ;8292BC;
    SEP #$20                             ;8292BE;
    JMP.W CODE_829385                    ;8292C0;

CODE_8292C3:
    CMP.B #$01                           ;8292C3;
    BEQ CODE_8292CA                      ;8292C5;
    JMP.W CODE_82930E                    ;8292C7;

CODE_8292CA:
    REP #$20                             ;8292CA;
    LDA.W #$FC80                         ;8292CC;
    STA.B $1C                            ;8292CF;
    STZ.B $1A                            ;8292D1;
    SEP #$20                             ;8292D3;
    LDA.B $03                            ;8292D5;
    CMP.B #$02                           ;8292D7;
    BNE CODE_8292E1                      ;8292D9;
    JSR.W CODE_82949F                    ;8292DB;
    JMP.W CODE_8292FC                    ;8292DE;

CODE_8292E1:
    CMP.B #$03                           ;8292E1;
    BNE CODE_8292EB                      ;8292E3;
    JSR.W CODE_8294DE                    ;8292E5;
    JMP.W CODE_8292FC                    ;8292E8;

CODE_8292EB:
    CMP.B #$07                           ;8292EB;
    BNE CODE_8292F5                      ;8292ED;
    JSR.W CODE_8294B4                    ;8292EF;
    JMP.W CODE_8292FC                    ;8292F2;

CODE_8292F5:
    CMP.B #$08                           ;8292F5;
    BNE CODE_8292FC                      ;8292F7;
    JSR.W CODE_8294C9                    ;8292F9;

CODE_8292FC:
    LDA.B #$0B                           ;8292FC;
    JSL.L CODE_848F07                    ;8292FE;
    REP #$20                             ;829302;
    LDA.W #$C186                         ;829304;
    STA.B $20                            ;829307;
    SEP #$20                             ;829309;
    JMP.W CODE_829385                    ;82930B;

CODE_82930E:
    CMP.B #$02                           ;82930E;
    BNE CODE_829342                      ;829310;
    REP #$20                             ;829312;
    LDA.W #$FC80                         ;829314;
    STA.B $1A                            ;829317;
    STZ.B $1C                            ;829319;
    SEP #$20                             ;82931B;
    LDA.B $03                            ;82931D;
    CMP.B #$00                           ;82931F;
    BNE CODE_829329                      ;829321;
    JSR.W CODE_82949F                    ;829323;
    JMP.W CODE_829330                    ;829326;

CODE_829329:
    CMP.B #$01                           ;829329;
    BNE CODE_829330                      ;82932B;
    JSR.W CODE_8294F3                    ;82932D;

CODE_829330:
    LDA.B #$0C                           ;829330;
    JSL.L CODE_848F07                    ;829332;
    REP #$20                             ;829336;
    LDA.W #$C18B                         ;829338;
    STA.B $20                            ;82933B;
    SEP #$20                             ;82933D;
    JMP.W CODE_829385                    ;82933F;

CODE_829342:
    CMP.B #$03                           ;829342;
    BNE CODE_829376                      ;829344;
    REP #$20                             ;829346;
    LDA.W #$FC80                         ;829348;
    STA.B $1A                            ;82934B;
    STZ.B $1C                            ;82934D;
    SEP #$20                             ;82934F;
    LDA.B $03                            ;829351;
    CMP.B #$00                           ;829353;
    BNE CODE_82935D                      ;829355;
    JSR.W CODE_829508                    ;829357;
    JMP.W CODE_829364                    ;82935A;

CODE_82935D:
    CMP.B #$01                           ;82935D;
    BNE CODE_829364                      ;82935F;
    JSR.W CODE_829508                    ;829361;

CODE_829364:
    LDA.B #$0A                           ;829364;
    JSL.L CODE_848F07                    ;829366;
    REP #$20                             ;82936A;
    LDA.W #$C190                         ;82936C;
    STA.B $20                            ;82936F;
    SEP #$20                             ;829371;
    JMP.W CODE_829385                    ;829373;

CODE_829376:
    REP #$20                             ;829376;
    LDA.W #$FC80                         ;829378;
    STA.B $1A                            ;82937B;
    STZ.B $1C                            ;82937D;
    SEP #$20                             ;82937F;
    LDA.B $03                            ;829381;
    STA.B $39                            ;829383;

CODE_829385:
    LDA.B #$0A                           ;829385;
    STA.B $02                            ;829387;
    RTS                                  ;829389;

CODE_82938A:
    LDA.B $0F                            ;82938A;
    CMP.B #$80                           ;82938C;
    BNE CODE_8293A8                      ;82938E;
    JSR.W CODE_82943B                    ;829390;
    DEC.B $38                            ;829393;
    BEQ CODE_82939D                      ;829395;
    JSL.L CODE_82820A                    ;829397;
    BRA CODE_8293AC                      ;82939B;

CODE_82939D:
    LDA.B #$08                           ;82939D;
    STA.B $02                            ;82939F;
    INC.B $37                            ;8293A1;
    INC.B $37                            ;8293A3;
    JMP.W CODE_8293AC                    ;8293A5;

CODE_8293A8:
    JSL.L CODE_848EEA                    ;8293A8;

CODE_8293AC:
    RTS                                  ;8293AC;

CODE_8293AD:
    LDA.B $0F                            ;8293AD;
    CMP.B #$80                           ;8293AF;
    BNE CODE_8293DB                      ;8293B1;
    LDA.B #$08                           ;8293B3;
    STA.B $02                            ;8293B5;
    LDA.B $0B                            ;8293B7;
    BEQ CODE_8293CF                      ;8293B9;
    CMP.B #$01                           ;8293BB;
    BEQ CODE_8293C3                      ;8293BD;
    CMP.B #$03                           ;8293BF;
    BNE CODE_8293CF                      ;8293C1;

CODE_8293C3:
    REP #$20                             ;8293C3;
    LDA.W #$C177                         ;8293C5;
    STA.B $20                            ;8293C8;
    SEP #$20                             ;8293CA;
    JMP.W CODE_8293EC                    ;8293CC;

CODE_8293CF:
    REP #$20                             ;8293CF;
    LDA.W #$C17C                         ;8293D1;
    STA.B $20                            ;8293D4;
    SEP #$20                             ;8293D6;
    JMP.W CODE_8293EC                    ;8293D8;

CODE_8293DB:
    JSL.L CODE_848EEA                    ;8293DB;
    REP #$10                             ;8293DF;
    LDX.B $0C                            ;8293E1;
    LDA.W $0027,X                        ;8293E3;
    BNE CODE_8293EC                      ;8293E6;
    LDA.B #$04                           ;8293E8;
    STA.B $01                            ;8293EA;

CODE_8293EC:
    SEP #$10                             ;8293EC;
    RTS                                  ;8293EE;

CODE_8293EF:
    REP #$20                             ;8293EF;
    LDA.B $05                            ;8293F1;
    STA.B $3A                            ;8293F3;
    LDA.B $08                            ;8293F5;
    STA.B $3C                            ;8293F7;
    SEP #$20                             ;8293F9;
    LDA.B $39                            ;8293FB;
    BEQ CODE_82940B                      ;8293FD;
    DEC A                                ;8293FF;
    BEQ CODE_829411                      ;829400;
    DEC A                                ;829402;
    BEQ CODE_829417                      ;829403;
    DEC A                                ;829405;
    BEQ CODE_82941D                      ;829406;
    JMP.W CODE_829420                    ;829408;

CODE_82940B:
    JSR.W CODE_829508                    ;82940B;
    JMP.W CODE_829420                    ;82940E;

CODE_829411:
    JSR.W CODE_8294F3                    ;829411;
    JMP.W CODE_829420                    ;829414;

CODE_829417:
    JSR.W CODE_8294F3                    ;829417;
    JMP.W CODE_829420                    ;82941A;

CODE_82941D:
    JSR.W CODE_8294DE                    ;82941D;

CODE_829420:
    JSL.L CODE_84A4AB                    ;829420;
    LDA.B #$01                           ;829424;
    JSL.L CODE_84A37F                    ;829426;
    REP #$20                             ;82942A;
    LDA.B $3A                            ;82942C;
    STA.B $05                            ;82942E;
    LDA.B $3C                            ;829430;
    STA.B $08                            ;829432;
    SEP #$20                             ;829434;
    JSL.L CODE_8283A3                    ;829436;
    RTS                                  ;82943A;

CODE_82943B:
    LDA.B $39                            ;82943B;
    BEQ CODE_829450                      ;82943D;
    DEC A                                ;82943F;
    BEQ CODE_82945C                      ;829440;
    DEC A                                ;829442;
    BEQ CODE_829468                      ;829443;
    DEC A                                ;829445;
    BEQ CODE_829474                      ;829446;
    DEC A                                ;829448;
    DEC A                                ;829449;
    DEC A                                ;82944A;
    BEQ CODE_829480                      ;82944B;
    JMP.W CODE_829489                    ;82944D;

CODE_829450:
    REP #$20                             ;829450;
    LDA.W #$C19A                         ;829452;
    STA.B $20                            ;829455;
    SEP #$20                             ;829457;
    JMP.W CODE_829489                    ;829459;

CODE_82945C:
    REP #$20                             ;82945C;
    LDA.W #$C19F                         ;82945E;
    STA.B $20                            ;829461;
    SEP #$20                             ;829463;
    JMP.W CODE_829489                    ;829465;

CODE_829468:
    REP #$20                             ;829468;
    LDA.W #$C1A4                         ;82946A;
    STA.B $20                            ;82946D;
    SEP #$20                             ;82946F;
    JMP.W CODE_829489                    ;829471;

CODE_829474:
    REP #$20                             ;829474;
    LDA.W #$C1A9                         ;829476;
    STA.B $20                            ;829479;
    SEP #$20                             ;82947B;
    JMP.W CODE_829489                    ;82947D;

CODE_829480:
    REP #$20                             ;829480;
    LDA.W #$C1AE                         ;829482;
    STA.B $20                            ;829485;
    SEP #$20                             ;829487;

CODE_829489:
    RTS                                  ;829489;

CODE_82948A:
    REP #$20                             ;82948A;
    LDA.B $05                            ;82948C;
    SEC                                  ;82948E;
    SBC.W #$0013                         ;82948F;
    STA.B $05                            ;829492;
    LDA.B $08                            ;829494;
    SEC                                  ;829496;
    SBC.W #$0012                         ;829497;
    STA.B $08                            ;82949A;
    SEP #$20                             ;82949C;
    RTS                                  ;82949E;

CODE_82949F:
    REP #$20                             ;82949F;
    LDA.B $05                            ;8294A1;
    SEC                                  ;8294A3;
    SBC.W #$0011                         ;8294A4;
    STA.B $05                            ;8294A7;
    LDA.B $08                            ;8294A9;
    CLC                                  ;8294AB;
    ADC.W #$0011                         ;8294AC;
    STA.B $08                            ;8294AF;
    SEP #$20                             ;8294B1;
    RTS                                  ;8294B3;

CODE_8294B4:
    REP #$20                             ;8294B4;
    LDA.B $05                            ;8294B6;
    SEC                                  ;8294B8;
    SBC.W #$0006                         ;8294B9;
    STA.B $05                            ;8294BC;
    LDA.B $08                            ;8294BE;
    CLC                                  ;8294C0;
    ADC.W #$000D                         ;8294C1;
    STA.B $08                            ;8294C4;
    SEP #$20                             ;8294C6;
    RTS                                  ;8294C8;

CODE_8294C9:
    REP #$20                             ;8294C9;
    LDA.B $05                            ;8294CB;
    SEC                                  ;8294CD;
    SBC.W #$0006                         ;8294CE;
    STA.B $05                            ;8294D1;
    LDA.B $08                            ;8294D3;
    SEC                                  ;8294D5;
    SBC.W #$000E                         ;8294D6;
    STA.B $08                            ;8294D9;
    SEP #$20                             ;8294DB;
    RTS                                  ;8294DD;

CODE_8294DE:
    REP #$20                             ;8294DE;
    LDA.B $05                            ;8294E0;
    SEC                                  ;8294E2;
    SBC.W #$0013                         ;8294E3;
    STA.B $05                            ;8294E6;
    LDA.B $08                            ;8294E8;
    SEC                                  ;8294EA;
    SBC.W #$0014                         ;8294EB;
    STA.B $08                            ;8294EE;
    SEP #$20                             ;8294F0;
    RTS                                  ;8294F2;

CODE_8294F3:
    REP #$20                             ;8294F3;
    LDA.B $05                            ;8294F5;
    SEC                                  ;8294F7;
    SBC.W #$0016                         ;8294F8;
    STA.B $05                            ;8294FB;
    LDA.B $08                            ;8294FD;
    CLC                                  ;8294FF;
    ADC.W #$0016                         ;829500;
    STA.B $08                            ;829503;
    SEP #$20                             ;829505;
    RTS                                  ;829507;

CODE_829508:
    REP #$20                             ;829508;
    LDA.B $05                            ;82950A;
    SEC                                  ;82950C;
    SBC.W #$000E                         ;82950D;
    STA.B $05                            ;829510;
    LDA.B $08                            ;829512;
    SEC                                  ;829514;
    SBC.W #$0015                         ;829515;
    STA.B $08                            ;829518;
    SEP #$20                             ;82951A;
    RTS                                  ;82951C;

CODE_82951D:
    LDX.B $01                            ;82951D;
    JSR.W (PTR16_829534,X)               ;82951F;
    LDA.B $00                            ;829522;
    BEQ CODE_829533                      ;829524;
    LDA.B $37                            ;829526;
    LSR A                                ;829528;
    BCC CODE_829533                      ;829529;
    JSL.L CODE_848FCA                    ;82952B;
    JML.L CODE_82808F                    ;82952F;

CODE_829533:
    RTL                                  ;829533;

PTR16_829534:
    dw CODE_82953A                       ;829534;
    dw CODE_829562                       ;829536;
    dw CODE_82958E                       ;829538;

CODE_82953A:
    LDA.B #$02                           ;82953A;
    STA.B $01                            ;82953C;
    STZ.B $18                            ;82953E;
    LDA.L $7F833D                        ;829540;
    STA.B $11                            ;829544;
    LDA.B #$3E                           ;829546;
    STA.B $16                            ;829548;
    LDA.B #$3D                           ;82954A;
    STA.B $10                            ;82954C;
    LDA.B #$00                           ;82954E;
    JSL.L CODE_848F07                    ;829550;
    REP #$20                             ;829554;
    LDA.W #$B0F5                         ;829556;
    STA.B $31                            ;829559;
    SEP #$20                             ;82955B;
    LDA.B #$78                           ;82955D;
    STA.B $37                            ;82955F;
    RTS                                  ;829561;

CODE_829562:
    REP #$10                             ;829562;
    LDX.B $0C                            ;829564;
    LDA.W $0027,X                        ;829566;
    AND.B #$7F                           ;829569;
    BNE CODE_829571                      ;82956B;
    LDA.B #$01                           ;82956D;
    STA.B $37                            ;82956F;

CODE_829571:
    SEP #$10                             ;829571;
    JSL.L CODE_848EEA                    ;829573;
    DEC.B $37                            ;829577;
    BEQ CODE_82957F                      ;829579;
    LDA.B $0B                            ;82957B;
    BEQ CODE_82958D                      ;82957D;

CODE_82957F:
    LDA.B #$04                           ;82957F;
    STA.B $01                            ;829581;
    LDA.B #$02                           ;829583;
    JSL.L CODE_848F07                    ;829585;
    LDA.B #$FE                           ;829589;
    STA.B $37                            ;82958B;

CODE_82958D:
    RTS                                  ;82958D;

CODE_82958E:
    DEC.B $37                            ;82958E;
    JSL.L CODE_848EEA                    ;829590;
    LDA.B $0F                            ;829594;
    BPL CODE_82959C                      ;829596;
    JSL.L CODE_8283A3                    ;829598;

CODE_82959C:
    RTS                                  ;82959C;

CODE_82959D:
    LDX.B $01                            ;82959D;
    JMP.W (PTR16_8295A2,X)               ;82959F;

PTR16_8295A2:
    dw CODE_8295AE                       ;8295A2;
    dw CODE_8295CE                       ;8295A4;
    dw CODE_8295DF                       ;8295A6;
    dw CODE_8295F0                       ;8295A8;
    dw CODE_8295F0                       ;8295AA;
    dw CODE_82960B                       ;8295AC;

CODE_8295AE:
    LDA.B $02                            ;8295AE;
    BNE CODE_8295B8                      ;8295B0;
    INC.B $02                            ;8295B2;
    LDA.B #$3C                           ;8295B4;
    STA.B $33                            ;8295B6;

CODE_8295B8:
    DEC.B $33                            ;8295B8;
    BEQ CODE_8295BD                      ;8295BA;
    RTL                                  ;8295BC;

CODE_8295BD:
    JSL.L CODE_82827D                    ;8295BD;
    LDA.B #$04                           ;8295C1;
    STA.B $12                            ;8295C3;
    STZ.B $02                            ;8295C5;
    LDA.B #$06                           ;8295C7;
    JSL.L CODE_848F07                    ;8295C9;
    RTL                                  ;8295CD;

CODE_8295CE:
    JSR.W CODE_829677                    ;8295CE;
    JSR.W CODE_82963D                    ;8295D1;
    JSR.W CODE_829666                    ;8295D4;
    JSL.L CODE_848EEA                    ;8295D7;
    JML.L CODE_8280B4                    ;8295DB;

CODE_8295DF:
    JSR.W CODE_829677                    ;8295DF;
    JSR.W CODE_82963D                    ;8295E2;
    JSR.W CODE_829666                    ;8295E5;
    JSL.L CODE_848EEA                    ;8295E8;
    JML.L CODE_8280B4                    ;8295EC;

CODE_8295F0:
    JSR.W CODE_829677                    ;8295F0;
    JSR.W CODE_82963D                    ;8295F3;
    JSR.W CODE_829666                    ;8295F6;
    JSL.L CODE_848EEA                    ;8295F9;
    LDA.B $03                            ;8295FD;
    CMP.B #$14                           ;8295FF;
    BCS CODE_829607                      ;829601;
    JML.L CODE_8280B4                    ;829603;

CODE_829607:
    JML.L CODE_828398                    ;829607;

CODE_82960B:
    LDA.B $02                            ;82960B;
    BNE CODE_829626                      ;82960D;
    INC.B $02                            ;82960F;
    REP #$20                             ;829611;
    STZ.B $1A                            ;829613;
    LDA.W #$FF00                         ;829615;
    STA.B $1C                            ;829618;
    SEP #$20                             ;82961A;
    LDA.B #$10                           ;82961C;
    STA.B $1E                            ;82961E;
    LDA.B #$12                           ;829620;
    JSL.L CODE_848F07                    ;829622;

CODE_829626:
    JSL.L CODE_8281E8                    ;829626;
    LDA.W $0B9C                          ;82962A;
    LSR A                                ;82962D;
    BCC CODE_82963C                      ;82962E;
    JSL.L CODE_8280B4                    ;829630;
    LDA.B $0E                            ;829634;
    BNE CODE_82963C                      ;829636;
    JML.L CODE_828398                    ;829638;

CODE_82963C:
    RTL                                  ;82963C;

CODE_82963D:
    REP #$10                             ;82963D;
    LDX.B $0C                            ;82963F;
    LDA.W $0036,X                        ;829641;
    BNE CODE_82964F                      ;829644;
    LDA.B #$0A                           ;829646;
    STA.B $01                            ;829648;
    STZ.B $02                            ;82964A;
    SEP #$10                             ;82964C;
    RTS                                  ;82964E;

CODE_82964F:
    LDA.W $0001,X                        ;82964F;
    STA.B $01                            ;829652;
    LDA.W $0002,X                        ;829654;
    STA.B $02                            ;829657;
    LDA.W $0003,X                        ;829659;
    STA.B $03                            ;82965C;
    LDA.W $0011,X                        ;82965E;
    STA.B $11                            ;829661;
    SEP #$30                             ;829663;
    RTS                                  ;829665;

CODE_829666:
    REP #$30                             ;829666;
    LDX.B $0C                            ;829668;
    LDA.W $0005,X                        ;82966A;
    STA.B $05                            ;82966D;
    LDA.W $0008,X                        ;82966F;
    STA.B $08                            ;829672;
    SEP #$30                             ;829674;
    RTS                                  ;829676;

CODE_829677:
    LDY.B #$37                           ;829677;
    LDA.B ($0C),Y                        ;829679;
    BMI CODE_829681                      ;82967B;
    JSL.L CODE_848F07                    ;82967D;

CODE_829681:
    RTS                                  ;829681;

CODE_829682:
    LDX.B $01                            ;829682;
    JSR.W (PTR16_829690,X)               ;829684;
    LDA.B $11                            ;829687;
    AND.B #$3F                           ;829689;
    ORA.B $33                            ;82968B;
    STA.B $11                            ;82968D;
    RTL                                  ;82968F;

PTR16_829690:
    dw CODE_829696                       ;829690;
    dw CODE_829709                       ;829692;
    dw CODE_829930                       ;829694;

CODE_829696:
    JSL.L CODE_82827D                    ;829696;
    LDA.B #$01                           ;82969A;
    STA.B $28                            ;82969C;
    LDA.B #$30                           ;82969E;
    TSB.B $11                            ;8296A0;
    LDA.B #$04                           ;8296A2;
    STA.B $26                            ;8296A4;
    STA.B $27                            ;8296A6;
    JSL.L CODE_84A1D0                    ;8296A8;
    CPY.B #$04                           ;8296AC;
    BCC CODE_8296B5                      ;8296AE;
    JSL.L CODE_828387                    ;8296B0;
    RTS                                  ;8296B4;

CODE_8296B5:
    LDA.B #$04                           ;8296B5;
    STA.B $12                            ;8296B7;
    CPY.B #$02                           ;8296B9;
    BNE CODE_8296CD                      ;8296BB;
    REP #$10                             ;8296BD;
    LDX.W $0000                          ;8296BF;
    LDA.W $0012,X                        ;8296C2;
    CMP.B #$04                           ;8296C5;
    BCC CODE_8296CB                      ;8296C7;
    STZ.B $12                            ;8296C9;

CODE_8296CB:
    SEP #$10                             ;8296CB;

CODE_8296CD:
    LDA.B #$40                           ;8296CD;
    STA.B $1E                            ;8296CF;
    JSL.L CODE_828358                    ;8296D1;
    INC.W $0000,X                        ;8296D5;
    LDA.B #$09                           ;8296D8;
    STA.W $000A,X                        ;8296DA;
    STX.B $34                            ;8296DD;
    REP #$21                             ;8296DF;
    TDC                                  ;8296E1;
    STA.W $000C,X                        ;8296E2;
    LDA.B $05                            ;8296E5;
    STA.W $0005,X                        ;8296E7;
    LDA.B $08                            ;8296EA;
    STA.W $0008,X                        ;8296EC;
    LDA.B $12                            ;8296EF;
    ADC.W #$0002                         ;8296F1;
    STA.W $0012,X                        ;8296F4;
    SEP #$10                             ;8296F7;
    LDX.B #$00                           ;8296F9;
    STX.B $33                            ;8296FB;
    LDA.W #$C8CB                         ;8296FD;
    STA.B $20                            ;829700;
    LDA.B $05                            ;829702;
    STA.B $3B                            ;829704;
    SEP #$20                             ;829706;
    RTS                                  ;829708;

CODE_829709:
    JSL.L CODE_82806E                    ;829709;
    BCC CODE_82971F                      ;82970D;
    LDA.B #$04                           ;82970F;
    STA.B $01                            ;829711;
    REP #$10                             ;829713;
    LDX.B $34                            ;829715;
    LDA.B #$04                           ;829717;
    STA.W $0001,X                        ;829719;
    SEP #$10                             ;82971C;
    RTS                                  ;82971E;

CODE_82971F:
    SEP #$20                             ;82971F;
    LDX.B $02                            ;829721;
    JSR.W (PTR16_829764,X)               ;829723;
    LDA.L $7F831E                        ;829726;
    STA.B $11                            ;82972A;
    JSL.L CODE_8280B4                    ;82972C;
    JSL.L CODE_849B43                    ;829730;
    BEQ CODE_82975F                      ;829734;
    LDA.B #$0E                           ;829736;
    TRB.B $11                            ;829738;
    LDA.B $27                            ;82973A;
    AND.B #$7F                           ;82973C;
    BNE CODE_82975F                      ;82973E;
    LDA.B #$06                           ;829740;
    STA.B $02                            ;829742;
    REP #$10                             ;829744;
    LDX.B $34                            ;829746;
    LDA.B #$7F                           ;829748;
    STA.W $002A,X                        ;82974A;
    LDA.W $0027,X                        ;82974D;
    AND.B #$7F                           ;829750;
    BEQ CODE_82975C                      ;829752;
    LDA.B #$08                           ;829754;
    STA.W $0002,X                        ;829756;
    STZ.W $0003,X                        ;829759;

CODE_82975C:
    SEP #$10                             ;82975C;
    RTS                                  ;82975E;

CODE_82975F:
    JSL.L CODE_849B03                    ;82975F;
    RTS                                  ;829763;

PTR16_829764:
    dw CODE_82976C                       ;829764;
    dw CODE_829808                       ;829766;
    dw CODE_829847                       ;829768;
    dw CODE_829921                       ;82976A;

CODE_82976C:
    LDX.B $03                            ;82976C;
    BNE CODE_829799                      ;82976E;
    REP #$10                             ;829770;
    INC.B $03                            ;829772;
    LDX.B $34                            ;829774;
    STZ.W $0002,X                        ;829776;
    STZ.W $0003,X                        ;829779;
    SEP #$10                             ;82977C;
    REP #$20                             ;82977E;
    LDA.W #$00C0                         ;829780;
    BIT.B $32                            ;829783;
    BVS CODE_82978A                      ;829785;
    LDA.W #$FF40                         ;829787;

CODE_82978A:
    STA.B $1A                            ;82978A;
    SEP #$20                             ;82978C;
    LDA.B #$20                           ;82978E;
    STA.B $36                            ;829790;
    LDA.B #$01                           ;829792;
    JSL.L CODE_848F07                    ;829794;
    RTS                                  ;829798;

CODE_829799:
    REP #$20                             ;829799;
    LDA.B $05                            ;82979B;
    SEC                                  ;82979D;
    SBC.B $3B                            ;82979E;
    STA.W $0000                          ;8297A0;
    BPL CODE_8297A9                      ;8297A3;
    EOR.W #$FFFF                         ;8297A5;
    INC A                                ;8297A8;

CODE_8297A9:
    CMP.W #$0040                         ;8297A9;
    BCC CODE_8297C1                      ;8297AC;
    LDA.W #$FF40                         ;8297AE;
    LDX.B #$00                           ;8297B1;
    BIT.W $0000                          ;8297B3;
    BPL CODE_8297BD                      ;8297B6;
    LDA.W #$00C0                         ;8297B8;
    LDX.B #$40                           ;8297BB;

CODE_8297BD:
    STA.B $1A                            ;8297BD;
    STX.B $33                            ;8297BF;

CODE_8297C1:
    SEP #$20                             ;8297C1;
    JSL.L CODE_82823E                    ;8297C3;
    JSL.L CODE_8491BE                    ;8297C7;
    LDA.B $2B                            ;8297CB;
    BIT.B #$03                           ;8297CD;
    BEQ CODE_8297E3                      ;8297CF;
    REP #$20                             ;8297D1;
    LDA.B $1A                            ;8297D3;
    EOR.W #$FFFF                         ;8297D5;
    INC A                                ;8297D8;
    STA.B $1A                            ;8297D9;
    SEP #$20                             ;8297DB;
    LDA.B $33                            ;8297DD;
    EOR.B #$40                           ;8297DF;
    STA.B $33                            ;8297E1;

CODE_8297E3:
    LDA.B $36                            ;8297E3;
    BEQ CODE_8297EB                      ;8297E5;
    DEC.B $36                            ;8297E7;
    BRA CODE_829801                      ;8297E9;

CODE_8297EB:
    LDA.B $05                            ;8297EB;
    AND.B #$0F                           ;8297ED;
    BNE CODE_829801                      ;8297EF;
    JSR.W CODE_829935                    ;8297F1;
    BNE CODE_8297FD                      ;8297F4;
    LDA.B #$02                           ;8297F6;
    STA.B $02                            ;8297F8;
    STZ.B $03                            ;8297FA;
    RTS                                  ;8297FC;

CODE_8297FD:
    LDA.B #$1E                           ;8297FD;
    STA.B $36                            ;8297FF;

CODE_829801:
    JSL.L CODE_848EEA                    ;829801;
    JMP.W CODE_82998E                    ;829805;

CODE_829808:
    LDX.B $03                            ;829808;
    BNE CODE_829823                      ;82980A;
    INC.B $03                            ;82980C;
    REP #$10                             ;82980E;
    LDX.B $34                            ;829810;
    LDA.B #$02                           ;829812;
    STA.W $0002,X                        ;829814;
    STZ.W $0003,X                        ;829817;
    SEP #$10                             ;82981A;
    LDA.B #$02                           ;82981C;
    JSL.L CODE_848F07                    ;82981E;
    RTS                                  ;829822;

CODE_829823:
    LDA.B $0F                            ;829823;
    BPL CODE_829840                      ;829825;
    LDA.B #$04                           ;829827;
    STA.B $02                            ;829829;
    STZ.B $03                            ;82982B;
    REP #$10                             ;82982D;
    LDX.B $34                            ;82982F;
    LDA.B #$04                           ;829831;
    STA.W $0002,X                        ;829833;
    STZ.W $0003,X                        ;829836;
    LDX.W #$0002                         ;829839;
    STX.B $37                            ;82983C;
    SEP #$10                             ;82983E;

CODE_829840:
    JSL.L CODE_848EEA                    ;829840;
    JMP.W CODE_82998E                    ;829844;

CODE_829847:
    LDX.B $03                            ;829847;
    JMP.W (PTR16_82984C,X)               ;829849;

PTR16_82984C:
    dw CODE_829858                       ;82984C;
    dw CODE_82986F                       ;82984E;
    dw CODE_8298C1                       ;829850;
    dw CODE_8298E8                       ;829852;
    dw CODE_8298FF                       ;829854;
    dw CODE_82990C                       ;829856;

CODE_829858:
    LDA.B #$02                           ;829858;
    STA.B $03                            ;82985A;
    LDA.B $08                            ;82985C;
    STA.B $39                            ;82985E;
    LDA.B $09                            ;829860;
    STA.B $3A                            ;829862;
    LDA.B #$08                           ;829864;
    STA.B $36                            ;829866;
    LDA.B #$0C                           ;829868;
    JSL.L CODE_848F07                    ;82986A;
    RTS                                  ;82986E;

CODE_82986F:
    DEC.B $36                            ;82986F;
    BNE CODE_8298A2                      ;829871;
    LDA.B #$04                           ;829873;
    STA.B $03                            ;829875;
    STZ.B $37                            ;829877;
    STZ.B $38                            ;829879;
    JSL.L CODE_8282D3                    ;82987B;
    BNE CODE_82989F                      ;82987F;
    INC.W $0000,X                        ;829881;
    LDA.B #$10                           ;829884;
    STA.W $000A,X                        ;829886;
    STZ.W $000B,X                        ;829889;
    LDA.B $11                            ;82988C;
    STA.W $0011,X                        ;82988E;
    REP #$20                             ;829891;
    LDA.B $05                            ;829893;
    STA.W $0005,X                        ;829895;
    LDA.B $08                            ;829898;
    STA.W $0008,X                        ;82989A;
    SEP #$20                             ;82989D;

CODE_82989F:
    SEP #$10                             ;82989F;
    RTS                                  ;8298A1;

CODE_8298A2:
    LDA.W $0B9C                          ;8298A2;
    LSR A                                ;8298A5;
    BCC CODE_8298BA                      ;8298A6;
    REP #$21                             ;8298A8;
    LDA.B $05                            ;8298AA;
    ADC.B $37                            ;8298AC;
    STA.B $05                            ;8298AE;
    LDA.B $37                            ;8298B0;
    EOR.W #$FFFF                         ;8298B2;
    INC A                                ;8298B5;
    STA.B $37                            ;8298B6;
    SEP #$20                             ;8298B8;

CODE_8298BA:
    JSL.L CODE_848EEA                    ;8298BA;
    JMP.W CODE_82998E                    ;8298BE;

CODE_8298C1:
    LDA.B $37                            ;8298C1;
    BEQ CODE_8298E3                      ;8298C3;
    BPL CODE_8298D7                      ;8298C5;
    LDA.B #$0A                           ;8298C7;
    STA.B $03                            ;8298C9;
    REP #$20                             ;8298CB;
    STZ.B $1A                            ;8298CD;
    LDA.W #$FE00                         ;8298CF;
    STA.B $1C                            ;8298D2;
    SEP #$20                             ;8298D4;
    RTS                                  ;8298D6;

CODE_8298D7:
    LDA.B #$06                           ;8298D7;
    STA.B $03                            ;8298D9;
    LDA.B #$00                           ;8298DB;
    STA.B $1C                            ;8298DD;
    LDA.B #$01                           ;8298DF;
    STA.B $1D                            ;8298E1;

CODE_8298E3:
    JSL.L CODE_848EEA                    ;8298E3;
    RTS                                  ;8298E7;

CODE_8298E8:
    JSL.L CODE_82825D                    ;8298E8;
    REP #$20                             ;8298EC;
    LDA.B $39                            ;8298EE;
    CMP.B $08                            ;8298F0;
    SEP #$20                             ;8298F2;
    BCC CODE_8298FA                      ;8298F4;
    LDA.B #$08                           ;8298F6;
    STA.B $03                            ;8298F8;

CODE_8298FA:
    JSL.L CODE_848EEA                    ;8298FA;
    RTS                                  ;8298FE;

CODE_8298FF:
    LDA.B $37                            ;8298FF;
    BNE CODE_829907                      ;829901;
    STZ.B $02                            ;829903;
    STZ.B $03                            ;829905;

CODE_829907:
    JSL.L CODE_848EEA                    ;829907;
    RTS                                  ;82990B;

CODE_82990C:
    JSL.L CODE_8281B2                    ;82990C;
    LDA.B $1D                            ;829910;
    CMP.B #$02                           ;829912;
    BMI CODE_82991C                      ;829914;
    LDA.B #$04                           ;829916;
    STA.B $03                            ;829918;
    STZ.B $37                            ;82991A;

CODE_82991C:
    JSL.L CODE_848EEA                    ;82991C;
    RTS                                  ;829920;

CODE_829921:
    LDA.B #$04                           ;829921;
    STA.B $01                            ;829923;
    JSL.L CODE_84A4AB                    ;829925;
    LDA.B #$03                           ;829929;
    JSL.L CODE_84A37F                    ;82992B;
    RTS                                  ;82992F;

CODE_829930:
    JSL.L CODE_828387                    ;829930;
    RTS                                  ;829934;

CODE_829935:
    STZ.B $2A                            ;829935;
    LDA.B #$F8                           ;829937;
    STA.B $29                            ;829939;
    JSR.W CODE_829948                    ;82993B;
    BNE CODE_829947                      ;82993E;
    LDA.B #$08                           ;829940;
    STA.B $29                            ;829942;
    JSR.W CODE_829948                    ;829944;

CODE_829947:
    RTS                                  ;829947;

CODE_829948:
    LDA.B #$10                           ;829948;
    STA.B $36                            ;82994A;
    REP #$20                             ;82994C;
    LDA.B $08                            ;82994E;
    STA.B $37                            ;829950;

CODE_829952:
    JSL.L CODE_8490A0                    ;829952;
    CMP.W #$000D                         ;829956;
    BCS CODE_829962                      ;829959;
    CMP.W #$0000                         ;82995B;
    BEQ CODE_829971                      ;82995E;
    BRA CODE_829980                      ;829960;

CODE_829962:
    CMP.W #$0034                         ;829962;
    BEQ CODE_829980                      ;829965;
    CMP.W #$0035                         ;829967;
    BEQ CODE_829987                      ;82996A;
    CMP.W #$003B                         ;82996C;
    BEQ CODE_829987                      ;82996F;

CODE_829971:
    LDA.B $08                            ;829971;
    CLC                                  ;829973;
    ADC.W #$0010                         ;829974;
    STA.B $08                            ;829977;
    LDX.B $36                            ;829979;
    DEX                                  ;82997B;
    STX.B $36                            ;82997C;
    BNE CODE_829952                      ;82997E;

CODE_829980:
    LDA.B $37                            ;829980;
    STA.B $08                            ;829982;
    SEP #$20                             ;829984;
    RTS                                  ;829986;

CODE_829987:
    LDA.B $37                            ;829987;
    STA.B $08                            ;829989;
    SEP #$22                             ;82998B;
    RTS                                  ;82998D;

CODE_82998E:
    REP #$30                             ;82998E;
    LDX.B $34                            ;829990;
    LDA.B $05                            ;829992;
    STA.W $0005,X                        ;829994;
    LDA.B $08                            ;829997;
    STA.W $0008,X                        ;829999;
    SEP #$30                             ;82999C;
    RTS                                  ;82999E;

CODE_82999F:
    LDA.B $33                            ;82999F;
    TSB.B $11                            ;8299A1;
    LDX.B $01                            ;8299A3;
    JSR.W (PTR16_8299D0,X)               ;8299A5;
    JSL.L CODE_849B03                    ;8299A8;
    JSL.L CODE_849B43                    ;8299AC;
    BEQ CODE_8299C6                      ;8299B0;
    BPL CODE_8299C2                      ;8299B2;
    JSL.L CODE_84A4AB                    ;8299B4;
    LDA.B #$01                           ;8299B8;
    JSL.L CODE_84A37F                    ;8299BA;

CODE_8299BE:
    JML.L CODE_828387                    ;8299BE;

CODE_8299C2:
    LDA.B #$0E                           ;8299C2;
    TRB.B $11                            ;8299C4;

CODE_8299C6:
    JSL.L CODE_82806E                    ;8299C6;
    BCS CODE_8299BE                      ;8299CA;
    JML.L CODE_8280B4                    ;8299CC;

PTR16_8299D0:
    dw CODE_8299D8                       ;8299D0;
    dw CODE_829A37                       ;8299D2;
    dw CODE_829A48                       ;8299D4;
    dw CODE_829AED                       ;8299D6;

CODE_8299D8:
    JSL.L CODE_82827D                    ;8299D8;
    REP #$20                             ;8299DC;
    LDA.W #$C93B                         ;8299DE;
    STA.B $20                            ;8299E1;
    LDA.W #$0080                         ;8299E3;
    STA.B $1C                            ;8299E6;
    SEP #$20                             ;8299E8;
    LDA.B $11                            ;8299EA;
    AND.B #$0E                           ;8299EC;
    STA.B $33                            ;8299EE;
    LDA.B #$FF                           ;8299F0;
    STA.B $2F                            ;8299F2;
    LDA.B $0B                            ;8299F4;
    AND.B #$40                           ;8299F6;
    TSB.B $11                            ;8299F8;
    LDA.B $0B                            ;8299FA;
    ASL A                                ;8299FC;
    ASL A                                ;8299FD;
    REP #$20                             ;8299FE;
    LDA.W #$0800                         ;829A00;
    BCC CODE_829A08                      ;829A03;
    LDA.W #$F800                         ;829A05;

CODE_829A08:
    STA.B $1A                            ;829A08;
    SEP #$20                             ;829A0A;
    LDA.B #$08                           ;829A0C;
    STA.B $34                            ;829A0E;

CODE_829A10:
    JSL.L CODE_82823E                    ;829A10;
    JSL.L CODE_8491BE                    ;829A14;
    LDA.B $2B                            ;829A18;
    AND.B #$03                           ;829A1A;
    BNE CODE_829A28                      ;829A1C;
    DEC.B $34                            ;829A1E;
    BNE CODE_829A10                      ;829A20;
    PLA                                  ;829A22;
    PLA                                  ;829A23;
    JML.L CODE_828387                    ;829A24;

CODE_829A28:
    LDA.B #$03                           ;829A28;
    STA.B $27                            ;829A2A;
    LDA.B #$02                           ;829A2C;
    STA.B $26                            ;829A2E;
    LDA.B #$00                           ;829A30;
    JSL.L CODE_848F07                    ;829A32;
    RTS                                  ;829A36;

CODE_829A37:
    LDA.W $0BAD                          ;829A37;
    SEC                                  ;829A3A;
    SBC.B $05                            ;829A3B;
    BCC CODE_829A43                      ;829A3D;
    CMP.B #$80                           ;829A3F;
    BPL CODE_829A47                      ;829A41;

CODE_829A43:
    LDA.B #$04                           ;829A43;
    STA.B $01                            ;829A45;

CODE_829A47:
    RTS                                  ;829A47;

CODE_829A48:
    LDX.B $02                            ;829A48;
    JMP.W (PTR16_829A4D,X)               ;829A4A;

PTR16_829A4D:
    dw CODE_829A51                       ;829A4D;
    dw CODE_829ABB                       ;829A4F;

CODE_829A51:
    LDA.W $1F0D                          ;829A51;
    BEQ CODE_829A92                      ;829A54;
    STZ.B $36                            ;829A56;
    REP #$20                             ;829A58;
    LDA.B $08                            ;829A5A;
    SEC                                  ;829A5C;
    SBC.W $0BB0                          ;829A5D;
    BCS CODE_829A68                      ;829A60;
    EOR.W #$FFFF                         ;829A62;
    INC A                                ;829A65;
    INC.B $36                            ;829A66;

CODE_829A68:
    CMP.W #$0020                         ;829A68;
    SEP #$20                             ;829A6B;
    BCS CODE_829A92                      ;829A6D;
    LDA.B #$02                           ;829A6F;
    STA.B $02                            ;829A71;
    LDA.B $36                            ;829A73;
    CLC                                  ;829A75;
    ADC.B #$02                           ;829A76;
    JSL.L CODE_848F07                    ;829A78;
    LDA.B #$10                           ;829A7C;
    STA.B $35                            ;829A7E;
    LDA.B $36                            ;829A80;
    LSR A                                ;829A82;
    REP #$20                             ;829A83;
    LDA.W #$0200                         ;829A85;
    BCS CODE_829A8D                      ;829A88;
    LDA.W #$FE00                         ;829A8A;

CODE_829A8D:
    STA.B $1C                            ;829A8D;
    SEP #$20                             ;829A8F;
    RTS                                  ;829A91;

CODE_829A92:
    JSR.W CODE_829B3B                    ;829A92;
    REP #$20                             ;829A95;
    LDA.B $08                            ;829A97;
    SEC                                  ;829A99;
    SBC.W $0BB0                          ;829A9A;
    BCS CODE_829AA3                      ;829A9D;
    EOR.W #$FFFF                         ;829A9F;
    INC A                                ;829AA2;

CODE_829AA3:
    CMP.W #$0004                         ;829AA3;
    SEP #$20                             ;829AA6;
    BCS CODE_829ABA                      ;829AA8;
    LDA.B #$06                           ;829AAA;
    STA.B $01                            ;829AAC;
    STZ.B $02                            ;829AAE;
    LDA.B #$01                           ;829AB0;
    JSL.L CODE_848F07                    ;829AB2;
    LDA.B #$30                           ;829AB6;
    STA.B $35                            ;829AB8;

CODE_829ABA:
    RTS                                  ;829ABA;

CODE_829ABB:
    JSR.W CODE_829B5F                    ;829ABB;
    CMP.B #$34                           ;829ABE;
    BCS CODE_829AD4                      ;829AC0;
    LDA.B $36                            ;829AC2;
    EOR.B #$01                           ;829AC4;
    STA.B $36                            ;829AC6;
    REP #$20                             ;829AC8;
    LDA.B $1C                            ;829ACA;
    EOR.W #$FFFF                         ;829ACC;
    INC A                                ;829ACF;
    STA.B $1C                            ;829AD0;
    SEP #$20                             ;829AD2;

CODE_829AD4:
    JSL.L CODE_82825D                    ;829AD4;
    JSL.L CODE_8491BE                    ;829AD8;
    JSL.L CODE_848EEA                    ;829ADC;
    DEC.B $35                            ;829AE0;
    BNE CODE_829AEC                      ;829AE2;
    STZ.B $02                            ;829AE4;
    LDA.B #$00                           ;829AE6;
    JSL.L CODE_848F07                    ;829AE8;

CODE_829AEC:
    RTS                                  ;829AEC;

CODE_829AED:
    JSR.W CODE_829B3B                    ;829AED;
    JSL.L CODE_848EEA                    ;829AF0;
    DEC.B $35                            ;829AF4;
    BNE CODE_829B3A                      ;829AF6;
    JSL.L CODE_828358                    ;829AF8;
    BNE CODE_829B2E                      ;829AFC;
    INC.W $0000,X                        ;829AFE;
    LDA.B #$02                           ;829B01;
    STA.W $000A,X                        ;829B03;
    LDA.B $11                            ;829B06;
    STA.W $0011,X                        ;829B08;
    LDA.B $18                            ;829B0B;
    STA.W $0018,X                        ;829B0D;
    LDA.B #$03                           ;829B10;
    STA.W $0016,X                        ;829B12;
    REP #$20                             ;829B15;
    LDA.B $08                            ;829B17;
    STA.W $0008,X                        ;829B19;
    LDA.B $10                            ;829B1C;
    ASL A                                ;829B1E;
    ASL A                                ;829B1F;
    LDA.W #$000C                         ;829B20;
    BCS CODE_829B28                      ;829B23;
    LDA.W #$FFF4                         ;829B25;

CODE_829B28:
    CLC                                  ;829B28;
    ADC.B $05                            ;829B29;
    STA.W $0005,X                        ;829B2B;

CODE_829B2E:
    SEP #$30                             ;829B2E;
    LDA.B #$04                           ;829B30;
    STA.B $01                            ;829B32;
    LDA.B #$00                           ;829B34;
    JSL.L CODE_848F07                    ;829B36;

CODE_829B3A:
    RTS                                  ;829B3A;

CODE_829B3B:
    REP #$20                             ;829B3B;
    LDA.W $0BB0                          ;829B3D;
    SEC                                  ;829B40;
    SBC.B $08                            ;829B41;
    LDA.W #$0080                         ;829B43;
    BCC CODE_829B4B                      ;829B46;
    LDA.W #$FF80                         ;829B48;

CODE_829B4B:
    STA.B $1C                            ;829B4B;
    SEP #$20                             ;829B4D;
    JSR.W CODE_829B5F                    ;829B4F;
    CMP.B #$34                           ;829B52;
    BCC CODE_829B5E                      ;829B54;
    JSL.L CODE_82825D                    ;829B56;
    JSL.L CODE_8491BE                    ;829B5A;

CODE_829B5E:
    RTS                                  ;829B5E;

CODE_829B5F:
    LDA.B $11                            ;829B5F;
    ASL A                                ;829B61;
    ASL A                                ;829B62;
    LDA.B #$10                           ;829B63;
    BCC CODE_829B69                      ;829B65;
    LDA.B #$F0                           ;829B67;

CODE_829B69:
    STA.B $29                            ;829B69;
    LDA.B $1D                            ;829B6B;
    ASL A                                ;829B6D;
    LDA.B #$10                           ;829B6E;
    BCS CODE_829B74                      ;829B70;
    LDA.B #$F0                           ;829B72;

CODE_829B74:
    STA.B $2A                            ;829B74;
    JSL.L CODE_8490A0                    ;829B76;
    RTS                                  ;829B7A;

CODE_829B7B:
    LDA.B $01                            ;829B7B;
    BNE CODE_829BAC                      ;829B7D;
    INC.B $01                            ;829B7F;
    LDA.B #$04                           ;829B81;
    JSL.L CODE_848F07                    ;829B83;
    LDA.B $11                            ;829B87;
    ASL A                                ;829B89;
    ASL A                                ;829B8A;
    REP #$20                             ;829B8B;
    LDA.W #$0200                         ;829B8D;
    BCS CODE_829B95                      ;829B90;
    LDA.W #$FE00                         ;829B92;

CODE_829B95:
    STA.B $1A                            ;829B95;
    LDA.W #$C937                         ;829B97;
    STA.B $20                            ;829B9A;
    SEP #$20                             ;829B9C;
    LDA.B #$3C                           ;829B9E;
    STA.B $35                            ;829BA0;
    LDA.B #$02                           ;829BA2;
    STA.B $27                            ;829BA4;
    STA.B $26                            ;829BA6;
    STA.B $28                            ;829BA8;
    STZ.B $30                            ;829BAA;

CODE_829BAC:
    JSL.L CODE_848EEA                    ;829BAC;
    JSL.L CODE_82823E                    ;829BB0;
    JSL.L CODE_849B03                    ;829BB4;
    BNE CODE_829BC7                      ;829BB8;
    DEC.B $35                            ;829BBA;
    BEQ CODE_829BC7                      ;829BBC;
    JSL.L CODE_8280B4                    ;829BBE;
    LDA.B $0E                            ;829BC2;
    BEQ CODE_829BC7                      ;829BC4;
    RTL                                  ;829BC6;

CODE_829BC7:
    JML.L CODE_8283A3                    ;829BC7;

CODE_829BCB:
    LDX.B $01                            ;829BCB;
    JSR.W (PTR16_829C63,X)               ;829BCD;
    LDA.B $3D                            ;829BD0;
    BEQ CODE_829BD7                      ;829BD2;
    JMP.W CODE_829C62                    ;829BD4;

CODE_829BD7:
    LDA.B $27                            ;829BD7;
    BEQ CODE_829C3A                      ;829BD9;
    JSL.L CODE_849B43                    ;829BDB;
    BEQ CODE_829C22                      ;829BDF;
    LDA.B $27                            ;829BE1;
    AND.B #$7F                           ;829BE3;
    BNE CODE_829C1A                      ;829BE5;
    LDA.B $01                            ;829BE7;
    CMP.B #$04                           ;829BE9;
    BEQ CODE_829BF1                      ;829BEB;
    LDA.B #$01                           ;829BED;
    STA.B $27                            ;829BEF;

CODE_829BF1:
    LDA.B $27                            ;829BF1;
    CMP.B #$80                           ;829BF3;
    BNE CODE_829BFD                      ;829BF5;
    LDA.B #$01                           ;829BF7;
    STA.B $34                            ;829BF9;
    INC.B $3B                            ;829BFB;

CODE_829BFD:
    REP #$20                             ;829BFD;
    LDA.W #$CA35                         ;829BFF;
    STA.B $20                            ;829C02;
    SEP #$20                             ;829C04;
    LDA.B $01                            ;829C06;
    CMP.B #$04                           ;829C08;
    BEQ CODE_829C14                      ;829C0A;
    STZ.B $02                            ;829C0C;
    LDA.B #$02                           ;829C0E;
    JSL.L CODE_848F07                    ;829C10;

CODE_829C14:
    LDA.B #$04                           ;829C14;
    STA.B $01                            ;829C16;
    BRA CODE_829C3A                      ;829C18;

CODE_829C1A:
    LDA.B #$F1                           ;829C1A;
    AND.B $11                            ;829C1C;
    STA.B $11                            ;829C1E;
    BRA CODE_829C28                      ;829C20;

CODE_829C22:
    LDA.B $33                            ;829C22;
    ORA.B $11                            ;829C24;
    STA.B $11                            ;829C26;

CODE_829C28:
    JSL.L CODE_849ACD                    ;829C28;
    STA.B $38                            ;829C2C;
    CMP.B #$04                           ;829C2E;
    BPL CODE_829C3A                      ;829C30;
    LDA.B $03                            ;829C32;
    BNE CODE_829C3A                      ;829C34;
    LDA.B #$02                           ;829C36;
    STA.B $02                            ;829C38;

CODE_829C3A:
    JSL.L CODE_849B03                    ;829C3A;
    JSL.L CODE_8280B4                    ;829C3E;
    JSL.L CODE_82806E                    ;829C42;
    BCC CODE_829C4C                      ;829C46;
    JML.L CODE_828387                    ;829C48;

CODE_829C4C:
    JSL.L CODE_8490A0                    ;829C4C;
    CMP.B #$3F                           ;829C50;
    BNE CODE_829C62                      ;829C52;
    LDA.B #$04                           ;829C54;
    STA.B $01                            ;829C56;
    LDA.B #$01                           ;829C58;
    STA.B $3B                            ;829C5A;
    LDA.B #$01                           ;829C5C;
    STA.B $34                            ;829C5E;
    STA.B $3E                            ;829C60;

CODE_829C62:
    RTL                                  ;829C62;

PTR16_829C63:
    dw CODE_829C69                       ;829C63;
    dw CODE_829CCB                       ;829C65;
    dw CODE_829EB6                       ;829C67;

CODE_829C69:
    STZ.B $3D                            ;829C69;
    JSL.L CODE_82827D                    ;829C6B;
    LDA.B $11                            ;829C6F;
    AND.B #$0E                           ;829C71;
    STA.B $33                            ;829C73;
    LDA.B #$02                           ;829C75;
    STA.B $27                            ;829C77;
    LDA.B #$03                           ;829C79;
    STA.B $28                            ;829C7B;
    LDA.B #$02                           ;829C7D;
    STA.B $26                            ;829C7F;
    LDA.B #$04                           ;829C81;
    STA.B $12                            ;829C83;
    LDA.B #$06                           ;829C85;
    STA.B $39                            ;829C87;
    LDA.B #$01                           ;829C89;
    STA.B $35                            ;829C8B;
    STZ.B $3B                            ;829C8D;
    STZ.B $3E                            ;829C8F;
    REP #$20                             ;829C91;
    LDA.W #$0180                         ;829C93;
    STA.B $36                            ;829C96;
    SEP #$20                             ;829C98;
    JSR.W CODE_829F32                    ;829C9A;
    BEQ CODE_829CA9                      ;829C9D;
    REP #$20                             ;829C9F;
    LDA.W #$0180                         ;829CA1;
    STA.B $1A                            ;829CA4;
    JMP.W CODE_829CB0                    ;829CA6;

CODE_829CA9:
    REP #$20                             ;829CA9;
    LDA.W #$FE80                         ;829CAB;
    STA.B $1A                            ;829CAE;

CODE_829CB0:
    LDA.W #$FC00                         ;829CB0;
    STA.B $1C                            ;829CB3;
    LDA.W #$CA2B                         ;829CB5;
    STA.B $20                            ;829CB8;
    SEP #$20                             ;829CBA;
    LDA.B #$FF                           ;829CBC;
    STA.B $2F                            ;829CBE;
    JSL.L CODE_8491BE                    ;829CC0;
    LDA.B #$00                           ;829CC4;
    JSL.L CODE_848F07                    ;829CC6;
    RTS                                  ;829CCA;

CODE_829CCB:
    LDX.B $02                            ;829CCB;
    JSR.W (PTR16_829CD5,X)               ;829CCD;
    JSL.L CODE_848EEA                    ;829CD0;
    RTS                                  ;829CD4;

PTR16_829CD5:
    dw CODE_829CDB                       ;829CD5;
    dw CODE_829D8A                       ;829CD7;
    dw CODE_829E82                       ;829CD9;

CODE_829CDB:
    LDA.B $39                            ;829CDB;
    BNE CODE_829CE1                      ;829CDD;
    BRA CODE_829CFF                      ;829CDF;

CODE_829CE1:
    CMP.B #$02                           ;829CE1;
    BEQ CODE_829CFF                      ;829CE3;
    LDA.B $11                            ;829CE5;
    AND.B #$40                           ;829CE7;
    BNE CODE_829CF5                      ;829CE9;
    REP #$20                             ;829CEB;
    LDA.W #$FE80                         ;829CED;
    STA.B $1A                            ;829CF0;
    JMP.W CODE_829D3B                    ;829CF2;

CODE_829CF5:
    REP #$20                             ;829CF5;
    LDA.W #$0180                         ;829CF7;
    STA.B $1A                            ;829CFA;
    JMP.W CODE_829D3B                    ;829CFC;

CODE_829CFF:
    LDA.B $11                            ;829CFF;
    AND.B #$40                           ;829D01;
    BNE CODE_829D22                      ;829D03;
    REP #$20                             ;829D05;
    LDA.B $1A                            ;829D07;
    CLC                                  ;829D09;
    ADC.W #$0004                         ;829D0A;
    STA.B $1A                            ;829D0D;
    CMP.W #$FE80                         ;829D0F;
    BMI CODE_829D1E                      ;829D12;
    LDA.W #$0006                         ;829D14;
    STA.B $39                            ;829D17;
    LDA.W #$FE80                         ;829D19;
    STA.B $1A                            ;829D1C;

CODE_829D1E:
    SEP #$20                             ;829D1E;
    BRA CODE_829D3D                      ;829D20;

CODE_829D22:
    REP #$20                             ;829D22;
    LDA.B $1A                            ;829D24;
    SEC                                  ;829D26;
    SBC.W #$0004                         ;829D27;
    STA.B $1A                            ;829D2A;
    CMP.W #$0180                         ;829D2C;
    BPL CODE_829D3B                      ;829D2F;
    LDA.W #$0006                         ;829D31;
    STA.B $39                            ;829D34;
    LDA.W #$0180                         ;829D36;
    STA.B $1A                            ;829D39;

CODE_829D3B:
    SEP #$20                             ;829D3B;

CODE_829D3D:
    JSL.L CODE_82820A                    ;829D3D;
    LDA.B #$FF                           ;829D41;
    STA.B $2F                            ;829D43;
    JSL.L CODE_8491BE                    ;829D45;
    STZ.B $03                            ;829D49;
    LDA.B $2B                            ;829D4B;
    AND.B #$03                           ;829D4D;
    BNE CODE_829D52                      ;829D4F;
    RTS                                  ;829D51;

CODE_829D52:
    LDA.B $2B                            ;829D52;
    AND.B #$04                           ;829D54;
    BNE CODE_829D6C                      ;829D56;
    LDA.B $11                            ;829D58;
    EOR.B #$40                           ;829D5A;
    STA.B $11                            ;829D5C;
    REP #$20                             ;829D5E;
    LDA.B $36                            ;829D60;
    EOR.W #$FFFF                         ;829D62;
    INC A                                ;829D65;
    STA.B $1A                            ;829D66;
    SEP #$20                             ;829D68;
    BRA CODE_829D89                      ;829D6A;

CODE_829D6C:
    LDA.B #$04                           ;829D6C;
    STA.B $02                            ;829D6E;
    LDA.B #$01                           ;829D70;
    JSL.L CODE_848F07                    ;829D72;
    REP #$20                             ;829D76;
    LDA.W #$0600                         ;829D78;
    STA.B $1C                            ;829D7B;
    LDA.B $1A                            ;829D7D;
    STA.B $36                            ;829D7F;
    STZ.B $1A                            ;829D81;
    SEP #$20                             ;829D83;
    LDA.B #$C0                           ;829D85;
    STA.B $1E                            ;829D87;

CODE_829D89:
    RTS                                  ;829D89;

CODE_829D8A:
    LDX.B $03                            ;829D8A;
    JSR.W (PTR16_829D94,X)               ;829D8C;
    JSL.L CODE_848EEA                    ;829D8F;
    RTS                                  ;829D93;

PTR16_829D94:
    dw CODE_829D98                       ;829D94;
    dw CODE_829E25                       ;829D96;

CODE_829D98:
    STZ.B $1E                            ;829D98;
    LDA.B $38                            ;829D9A;
    STA.B $39                            ;829D9C;
    STA.B $3C                            ;829D9E;
    BNE CODE_829DC1                      ;829DA0;
    LDA.B #$04                           ;829DA2;
    STA.B $1F                            ;829DA4;
    LDA.B #$02                           ;829DA6;
    STA.B $03                            ;829DA8;
    LDA.B $11                            ;829DAA;
    AND.B #$40                           ;829DAC;
    BNE CODE_829DB4                      ;829DAE;
    STZ.B $3A                            ;829DB0;
    BRA CODE_829DB8                      ;829DB2;

CODE_829DB4:
    LDA.B #$01                           ;829DB4;
    STA.B $3A                            ;829DB6;

CODE_829DB8:
    LDA.B #$03                           ;829DB8;
    JSL.L CODE_848F07                    ;829DBA;
    JMP.W CODE_829E24                    ;829DBE;

CODE_829DC1:
    DEC A                                ;829DC1;
    BNE CODE_829DE3                      ;829DC2;
    LDA.B #$04                           ;829DC4;
    STA.B $1F                            ;829DC6;
    LDA.B #$02                           ;829DC8;
    STA.B $03                            ;829DCA;
    LDA.B $11                            ;829DCC;
    AND.B #$40                           ;829DCE;
    BNE CODE_829DD8                      ;829DD0;
    LDA.B #$01                           ;829DD2;
    STA.B $3A                            ;829DD4;
    BRA CODE_829DDA                      ;829DD6;

CODE_829DD8:
    STZ.B $3A                            ;829DD8;

CODE_829DDA:
    LDA.B #$06                           ;829DDA;
    JSL.L CODE_848F07                    ;829DDC;
    JMP.W CODE_829E24                    ;829DE0;

CODE_829DE3:
    DEC A                                ;829DE3;
    BNE CODE_829E05                      ;829DE4;
    LDA.B #$03                           ;829DE6;
    STA.B $1F                            ;829DE8;
    LDA.B #$02                           ;829DEA;
    STA.B $03                            ;829DEC;
    LDA.B $11                            ;829DEE;
    AND.B #$40                           ;829DF0;
    BNE CODE_829DF8                      ;829DF2;
    STZ.B $3A                            ;829DF4;
    BRA CODE_829DFC                      ;829DF6;

CODE_829DF8:
    LDA.B #$01                           ;829DF8;
    STA.B $3A                            ;829DFA;

CODE_829DFC:
    LDA.B #$03                           ;829DFC;
    JSL.L CODE_848F07                    ;829DFE;
    JMP.W CODE_829E24                    ;829E02;

CODE_829E05:
    DEC A                                ;829E05;
    BNE CODE_829E24                      ;829E06;
    LDA.B #$03                           ;829E08;
    STA.B $1F                            ;829E0A;
    LDA.B #$02                           ;829E0C;
    STA.B $03                            ;829E0E;
    LDA.B $11                            ;829E10;
    AND.B #$40                           ;829E12;
    BNE CODE_829E1C                      ;829E14;
    LDA.B #$01                           ;829E16;
    STA.B $3A                            ;829E18;
    BRA CODE_829E1E                      ;829E1A;

CODE_829E1C:
    STZ.B $3A                            ;829E1C;

CODE_829E1E:
    LDA.B #$06                           ;829E1E;
    JSL.L CODE_848F07                    ;829E20;

CODE_829E24:
    RTS                                  ;829E24;

CODE_829E25:
    LDA.B $1B                            ;829E25;
    CMP.B #$04                           ;829E27;
    BEQ CODE_829E51                      ;829E29;
    REP #$20                             ;829E2B;
    LDA.B $1A                            ;829E2D;
    BNE CODE_829E3F                      ;829E2F;
    SEP #$20                             ;829E31;
    LDA.B $11                            ;829E33;
    EOR.B #$40                           ;829E35;
    STA.B $11                            ;829E37;
    LDA.B #$03                           ;829E39;
    JSL.L CODE_848F07                    ;829E3B;

CODE_829E3F:
    SEP #$20                             ;829E3F;
    LDA.B $3A                            ;829E41;
    BNE CODE_829E4B                      ;829E43;
    JSL.L CODE_828174                    ;829E45;
    BRA CODE_829E55                      ;829E49;

CODE_829E4B:
    JSL.L CODE_828195                    ;829E4B;
    BRA CODE_829E55                      ;829E4F;

CODE_829E51:
    JSL.L CODE_82820A                    ;829E51;

CODE_829E55:
    JSL.L CODE_849ACD                    ;829E55;
    CMP.B #$04                           ;829E59;
    BPL CODE_829E5F                      ;829E5B;
    BRA CODE_829E69                      ;829E5D;

CODE_829E5F:
    LDA.B #$00                           ;829E5F;
    STA.B $02                            ;829E61;
    JSL.L CODE_848F07                    ;829E63;
    BRA CODE_829E70                      ;829E67;

CODE_829E69:
    SEC                                  ;829E69;
    SBC.B $3C                            ;829E6A;
    BEQ CODE_829E70                      ;829E6C;
    STZ.B $03                            ;829E6E;

CODE_829E70:
    LDA.B #$FF                           ;829E70;
    STA.B $2F                            ;829E72;
    JSL.L CODE_8491BE                    ;829E74;
    LDA.B $2B                            ;829E78;
    AND.B #$03                           ;829E7A;
    BEQ CODE_829E81                      ;829E7C;
    JSR.W CODE_829D52                    ;829E7E;

CODE_829E81:
    RTS                                  ;829E81;

CODE_829E82:
    JSL.L CODE_8281E8                    ;829E82;
    LDA.B #$FF                           ;829E86;
    STA.B $2F                            ;829E88;
    JSL.L CODE_8491BE                    ;829E8A;
    LDA.B $2B                            ;829E8E;
    AND.B #$04                           ;829E90;
    BEQ CODE_829EB5                      ;829E92;
    LDA.B #$00                           ;829E94;
    STA.B $02                            ;829E96;
    STZ.B $03                            ;829E98;
    JSL.L CODE_848F07                    ;829E9A;
    LDA.B $11                            ;829E9E;
    EOR.B #$40                           ;829EA0;
    STA.B $11                            ;829EA2;
    REP #$20                             ;829EA4;
    LDA.B $36                            ;829EA6;
    EOR.W #$FFFF                         ;829EA8;
    INC A                                ;829EAB;
    STA.B $1A                            ;829EAC;
    LDA.W #$FC00                         ;829EAE;
    STA.B $1C                            ;829EB1;
    SEP #$20                             ;829EB3;

CODE_829EB5:
    RTS                                  ;829EB5;

CODE_829EB6:
    LDA.B $3B                            ;829EB6;
    BNE CODE_829F15                      ;829EB8;
    LDA.B $2B                            ;829EBA;
    BEQ CODE_829F0C                      ;829EBC;
    LDA.B $0F                            ;829EBE;
    CMP.B #$80                           ;829EC0;
    BEQ CODE_829F0C                      ;829EC2;
    CMP.B #$01                           ;829EC4;
    BNE CODE_829F06                      ;829EC6;
    LDA.B $2B                            ;829EC8;
    AND.B #$04                           ;829ECA;
    CMP.B #$04                           ;829ECC;
    BEQ CODE_829EDB                      ;829ECE;
    LDA.B #$C0                           ;829ED0;
    STA.B $1E                            ;829ED2;
    JSL.L CODE_8281E8                    ;829ED4;
    JMP.W CODE_829EDD                    ;829ED8;

CODE_829EDB:
    STZ.B $1E                            ;829EDB;

CODE_829EDD:
    LDA.B $11                            ;829EDD;
    AND.B #$40                           ;829EDF;
    BEQ CODE_829EF6                      ;829EE1;
    LDA.B #$05                           ;829EE3;
    STA.B $1F                            ;829EE5;
    JSL.L CODE_8281B2                    ;829EE7;
    LDA.B #$01                           ;829EEB;
    STA.B $2F                            ;829EED;
    JSL.L CODE_8491BE                    ;829EEF;
    JMP.W CODE_829F06                    ;829EF3;

CODE_829EF6:
    LDA.B #$05                           ;829EF6;
    STA.B $1F                            ;829EF8;
    JSL.L CODE_828195                    ;829EFA;
    LDA.B #$01                           ;829EFE;
    STA.B $2F                            ;829F00;
    JSL.L CODE_8491BE                    ;829F02;

CODE_829F06:
    JSL.L CODE_848EEA                    ;829F06;
    BRA CODE_829F14                      ;829F0A;

CODE_829F0C:
    INC.B $3B                            ;829F0C;
    LDA.B #$03                           ;829F0E;
    STA.B $34                            ;829F10;
    SEP #$10                             ;829F12;

CODE_829F14:
    RTS                                  ;829F14;

CODE_829F15:
    DEC.B $34                            ;829F15;
    BNE CODE_829F31                      ;829F17;
    LDA.B #$01                           ;829F19;
    STA.B $3D                            ;829F1B;
    JSL.L CODE_84A4AB                    ;829F1D;
    JSL.L CODE_828387                    ;829F21;
    SEP #$10                             ;829F25;
    LDA.B $3E                            ;829F27;
    BNE CODE_829F31                      ;829F29;
    LDA.B #$01                           ;829F2B;
    JSL.L CODE_84A37F                    ;829F2D;

CODE_829F31:
    RTS                                  ;829F31;

CODE_829F32:
    REP #$20                             ;829F32;
    LDA.W $0BAD                          ;829F34;
    SEC                                  ;829F37;
    SBC.B $05                            ;829F38;
    BCS CODE_829F41                      ;829F3A;
    LDA.W #$0000                         ;829F3C;
    BRA CODE_829F48                      ;829F3F;

CODE_829F41:
    LDA.B $11                            ;829F41;
    ORA.W #$0040                         ;829F43;
    STA.B $11                            ;829F46;

CODE_829F48:
    SEP #$20                             ;829F48;
    RTS                                  ;829F4A;

CODE_829F4B:
    LDX.B $01                            ;829F4B;
    JSR.W (PTR16_829F7A,X)               ;829F4D;
    LDA.B $33                            ;829F50;
    TSB.B $11                            ;829F52;
    JSL.L CODE_82806E                    ;829F54;
    BCS CODE_829F76                      ;829F58;
    JSL.L CODE_849B03                    ;829F5A;
    JSL.L CODE_849B43                    ;829F5E;
    BEQ CODE_829F6E                      ;829F62;
    LDA.B #$0E                           ;829F64;
    TRB.B $11                            ;829F66;
    LDA.B $27                            ;829F68;
    AND.B #$7F                           ;829F6A;
    BEQ CODE_829F72                      ;829F6C;

CODE_829F6E:
    JML.L CODE_8280B4                    ;829F6E;

CODE_829F72:
    JSL.L CODE_84A4AB                    ;829F72;

CODE_829F76:
    JML.L CODE_828387                    ;829F76;

PTR16_829F7A:
    dw CODE_829F86                       ;829F7A;
    dw CODE_829FDD                       ;829F7C;
    dw CODE_82A007                       ;829F7E;
    dw CODE_82A039                       ;829F80;
    dw CODE_82A08A                       ;829F82;
    dw CODE_82A0AC                       ;829F84;

CODE_829F86:
    JSL.L CODE_82827D                    ;829F86;
    LDA.B #$02                           ;829F8A;
    STA.B $12                            ;829F8C;
    LDA.B #$02                           ;829F8E;
    STA.B $27                            ;829F90;
    LDA.B #$02                           ;829F92;
    STA.B $26                            ;829F94;
    LDA.B $11                            ;829F96;
    AND.B #$0E                           ;829F98;
    STA.B $33                            ;829F9A;
    LDA.B #$5A                           ;829F9C;
    STA.B $38                            ;829F9E;
    STZ.B $37                            ;829FA0;
    REP #$20                             ;829FA2;
    LDA.W #$CAFA                         ;829FA4;
    STA.B $20                            ;829FA7;
    LDA.B $05                            ;829FA9;
    SEC                                  ;829FAB;
    SBC.W $0BAD                          ;829FAC;
    BCS CODE_829FBE                      ;829FAF;
    LDA.W #$0140                         ;829FB1;
    STA.B $1A                            ;829FB4;
    SEP #$20                             ;829FB6;
    LDA.B #$40                           ;829FB8;
    TSB.B $11                            ;829FBA;
    BRA CODE_829FC9                      ;829FBC;

CODE_829FBE:
    LDA.W #$FEC0                         ;829FBE;
    STA.B $1A                            ;829FC1;
    SEP #$20                             ;829FC3;
    LDA.B #$40                           ;829FC5;
    TRB.B $11                            ;829FC7;

CODE_829FC9:
    LDA.B #$00                           ;829FC9;
    STA.B $34                            ;829FCB;
    JSL.L CODE_848F07                    ;829FCD;
    STZ.B $3A                            ;829FD1;
    LDA.W $1F7A                          ;829FD3;
    BEQ CODE_829FDC                      ;829FD6;
    LDA.B #$02                           ;829FD8;
    STA.B $3A                            ;829FDA;

CODE_829FDC:
    RTS                                  ;829FDC;

CODE_829FDD:
    JSL.L CODE_82823E                    ;829FDD;
    JSL.L CODE_848EEA                    ;829FE1;
    DEC.B $38                            ;829FE5;
    BNE CODE_829FF9                      ;829FE7;
    LDA.B #$5A                           ;829FE9;
    STA.B $38                            ;829FEB;
    LDA.B $37                            ;829FED;
    LDY.B #$03                           ;829FEF;
    JSL.L CODE_84AC2B                    ;829FF1;
    STA.B $37                            ;829FF5;
    BMI CODE_829FFC                      ;829FF7;

CODE_829FF9:
    JMP.W CODE_82A0B5                    ;829FF9;

CODE_829FFC:
    LDA.B #$04                           ;829FFC;
    STA.B $01                            ;829FFE;
    LDA.B #$08                           ;82A000;
    STA.B $35                            ;82A002;
    JMP.W CODE_82A0B5                    ;82A004;

CODE_82A007:
    JSL.L CODE_848EEA                    ;82A007;
    DEC.B $35                            ;82A00B;
    BNE CODE_82A038                      ;82A00D;
    LDA.B $34                            ;82A00F;
    CMP.B #$02                           ;82A011;
    BCC CODE_82A02D                      ;82A013;
    LDA.B #$06                           ;82A015;
    STA.B $01                            ;82A017;
    STZ.B $02                            ;82A019;
    INC.B $35                            ;82A01B;
    REP #$20                             ;82A01D;
    LDA.W $0BAD                          ;82A01F;
    SEC                                  ;82A022;
    SBC.B $05                            ;82A023;
    SEP #$20                             ;82A025;
    XBA                                  ;82A027;
    AND.B #$80                           ;82A028;
    STA.B $39                            ;82A02A;
    RTS                                  ;82A02C;

CODE_82A02D:
    INC A                                ;82A02D;
    STA.B $34                            ;82A02E;
    JSL.L CODE_848F07                    ;82A030;
    LDA.B #$08                           ;82A034;
    STA.B $35                            ;82A036;

CODE_82A038:
    RTS                                  ;82A038;

CODE_82A039:
    DEC.B $35                            ;82A039;
    BNE CODE_82A085                      ;82A03B;
    JSL.L CODE_828358                    ;82A03D;
    BNE CODE_82A07D                      ;82A041;
    INC.W $0000,X                        ;82A043;
    LDA.B $39                            ;82A046;
    ORA.B $02                            ;82A048;
    STA.W $000B,X                        ;82A04A;
    LDA.B #$0B                           ;82A04D;
    STA.W $000A,X                        ;82A04F;
    REP #$20                             ;82A052;
    LDA.B $05                            ;82A054;
    STA.W $0005,X                        ;82A056;
    LDA.B $08                            ;82A059;
    CLC                                  ;82A05B;
    ADC.W #$000A                         ;82A05C;
    STA.W $0008,X                        ;82A05F;
    SEP #$30                             ;82A062;
    LDA.B $02                            ;82A064;
    ASL A                                ;82A066;
    TAX                                  ;82A067;
    JMP.W (PTR16_82A06B,X)               ;82A068;

PTR16_82A06B:
    dw CODE_82A071                       ;82A06B;
    dw CODE_82A075                       ;82A06D;
    dw CODE_82A07D                       ;82A06F;

CODE_82A071:
    LDA.B #$18                           ;82A071;
    BRA CODE_82A077                      ;82A073;

CODE_82A075:
    LDA.B #$30                           ;82A075;

CODE_82A077:
    STA.B $35                            ;82A077;
    INC.B $02                            ;82A079;
    BRA CODE_82A085                      ;82A07B;

CODE_82A07D:
    LDA.B #$08                           ;82A07D;
    STA.B $01                            ;82A07F;
    LDA.B #$08                           ;82A081;
    STA.B $38                            ;82A083;

CODE_82A085:
    JSL.L CODE_848EEA                    ;82A085;
    RTS                                  ;82A089;

CODE_82A08A:
    DEC.B $38                            ;82A08A;
    BNE CODE_82A0A7                      ;82A08C;
    LDA.B $34                            ;82A08E;
    DEC A                                ;82A090;
    STA.B $34                            ;82A091;
    JSL.L CODE_848F07                    ;82A093;
    LDA.B #$08                           ;82A097;
    STA.B $38                            ;82A099;
    LDA.B $34                            ;82A09B;
    BNE CODE_82A0A7                      ;82A09D;
    LDA.B #$02                           ;82A09F;
    STA.B $01                            ;82A0A1;
    LDA.B #$5A                           ;82A0A3;
    STA.B $38                            ;82A0A5;

CODE_82A0A7:
    JSL.L CODE_848EEA                    ;82A0A7;
    RTS                                  ;82A0AB;

CODE_82A0AC:
    JSL.L CODE_82825D                    ;82A0AC;
    JSL.L CODE_848EEA                    ;82A0B0;
    RTS                                  ;82A0B4;

CODE_82A0B5:
    LDX.B $3A                            ;82A0B5;
    REP #$20                             ;82A0B7;
    LDA.W DATA8_86CAFE,X                 ;82A0B9;
    CMP.B $05                            ;82A0BC;
    BCC CODE_82A0CA                      ;82A0BE;
    LDA.W DATA8_86CB02,X                 ;82A0C0;
    CMP.B $05                            ;82A0C3;
    BCS CODE_82A0CA                      ;82A0C5;
    SEP #$20                             ;82A0C7;
    RTS                                  ;82A0C9;

CODE_82A0CA:
    LDA.W #$0100                         ;82A0CA;
    STA.B $1C                            ;82A0CD;
    STZ.B $1A                            ;82A0CF;
    SEP #$20                             ;82A0D1;
    LDA.B #$0A                           ;82A0D3;
    STA.B $01                            ;82A0D5;
    LDA.B #$00                           ;82A0D7;
    JSL.L CODE_848F07                    ;82A0D9;
    RTS                                  ;82A0DD;

CODE_82A0DE:
    LDX.B $01                            ;82A0DE;
    JMP.W (PTR16_82A0E3,X)               ;82A0E0;

PTR16_82A0E3:
    dw CODE_82A0EB                       ;82A0E3;
    dw CODE_82A10C                       ;82A0E5;
    dw CODE_82A135                       ;82A0E7;
    dw CODE_82A14E                       ;82A0E9;

CODE_82A0EB:
    JSL.L CODE_82827D                    ;82A0EB;
    LDA.B #$06                           ;82A0EF;
    STA.B $12                            ;82A0F1;
    LDA.B #$00                           ;82A0F3;
    JSL.L CODE_848F07                    ;82A0F5;
    LDA.B #$30                           ;82A0F9;
    STA.B $37                            ;82A0FB;
    REP #$20                             ;82A0FD;
    STZ.B $33                            ;82A0FF;
    STZ.B $35                            ;82A101;
    SEP #$20                             ;82A103;
    JSR.W CODE_82A171                    ;82A105;
    JML.L CODE_8280B4                    ;82A108;

CODE_82A10C:
    LDA.B $02                            ;82A10C;
    BNE CODE_82A11F                      ;82A10E;
    INC.B $35                            ;82A110;
    DEC.B $37                            ;82A112;
    BNE CODE_82A118                      ;82A114;
    INC.B $02                            ;82A116;

CODE_82A118:
    JSR.W CODE_82A171                    ;82A118;
    JML.L CODE_8280B4                    ;82A11B;

CODE_82A11F:
    JSL.L CODE_848EEA                    ;82A11F;
    LDA.B $0F                            ;82A123;
    BPL CODE_82A118                      ;82A125;
    LDA.B #$04                           ;82A127;
    STA.B $01                            ;82A129;
    STZ.B $02                            ;82A12B;
    LDA.B #$01                           ;82A12D;
    JSL.L CODE_848F07                    ;82A12F;
    BRA CODE_82A118                      ;82A133;

CODE_82A135:
    JSL.L CODE_848EEA                    ;82A135;
    LDA.B $0F                            ;82A139;
    BPL CODE_82A147                      ;82A13B;
    LDA.B #$02                           ;82A13D;
    JSL.L CODE_848F07                    ;82A13F;
    LDA.B #$06                           ;82A143;
    STA.B $01                            ;82A145;

CODE_82A147:
    JSR.W CODE_82A171                    ;82A147;
    JML.L CODE_8280B4                    ;82A14A;

CODE_82A14E:
    LDA.B $02                            ;82A14E;
    BNE CODE_82A160                      ;82A150;
    JSL.L CODE_848EEA                    ;82A152;
    LDA.B $0F                            ;82A156;
    BPL CODE_82A16A                      ;82A158;
    INC.B $02                            ;82A15A;
    LDA.B #$30                           ;82A15C;
    STA.B $37                            ;82A15E;

CODE_82A160:
    DEC.B $35                            ;82A160;
    DEC.B $37                            ;82A162;
    BNE CODE_82A16A                      ;82A164;
    JML.L CODE_828398                    ;82A166;

CODE_82A16A:
    JSR.W CODE_82A171                    ;82A16A;
    JML.L CODE_8280B4                    ;82A16D;

CODE_82A171:
    PHP                                  ;82A171;
    REP #$30                             ;82A172;
    LDX.B $0C                            ;82A174;
    LDA.W $0005,X                        ;82A176;
    STA.B $05                            ;82A179;
    LDA.W $0008,X                        ;82A17B;
    SEC                                  ;82A17E;
    SBC.W #$0021                         ;82A17F;
    CLC                                  ;82A182;
    ADC.B $35                            ;82A183;
    STA.B $08                            ;82A185;
    PLP                                  ;82A187;
    RTS                                  ;82A188;

CODE_82A189:
    LDX.B $01                            ;82A189;
    JSR.W (PTR16_82A1CD,X)               ;82A18B;
    LDA.B $27                            ;82A18E;
    BEQ CODE_82A1BE                      ;82A190;
    JSL.L CODE_849B43                    ;82A192;
    BEQ CODE_82A1B2                      ;82A196;
    LDA.B $27                            ;82A198;
    AND.B #$7F                           ;82A19A;
    BNE CODE_82A1A6                      ;82A19C;
    LDA.B #$06                           ;82A19E;
    STA.B $01                            ;82A1A0;
    STZ.B $02                            ;82A1A2;
    BRA CODE_82A1BE                      ;82A1A4;

CODE_82A1A6:
    LDA.B $01                            ;82A1A6;
    STA.B $03                            ;82A1A8;
    LDA.B #$F1                           ;82A1AA;
    AND.B $11                            ;82A1AC;
    STA.B $11                            ;82A1AE;
    BRA CODE_82A1B8                      ;82A1B0;

CODE_82A1B2:
    LDA.B $34                            ;82A1B2;
    ORA.B $11                            ;82A1B4;
    STA.B $11                            ;82A1B6;

CODE_82A1B8:
    JSL.L CODE_849B03                    ;82A1B8;
    BEQ CODE_82A1BE                      ;82A1BC;

CODE_82A1BE:
    JSL.L CODE_8280B4                    ;82A1BE;
    JSL.L CODE_82806E                    ;82A1C2;
    BCC CODE_82A1CC                      ;82A1C6;
    JSL.L CODE_828398                    ;82A1C8;

CODE_82A1CC:
    RTL                                  ;82A1CC;

PTR16_82A1CD:
    dw CODE_82A1D5                       ;82A1CD;
    dw CODE_82A206                       ;82A1CF;
    dw CODE_82A254                       ;82A1D1;
    dw CODE_82A2CF                       ;82A1D3;

CODE_82A1D5:
    JSL.L CODE_82827D                    ;82A1D5;
    LDA.B $11                            ;82A1D9;
    AND.B #$0E                           ;82A1DB;
    STA.B $34                            ;82A1DD;
    LDA.B #$02                           ;82A1DF;
    STA.B $27                            ;82A1E1;
    LDA.B #$02                           ;82A1E3;
    STA.B $26                            ;82A1E5;
    LDA.B #$04                           ;82A1E7;
    STA.B $12                            ;82A1E9;
    LDA.B #$3C                           ;82A1EB;
    STA.B $37                            ;82A1ED;
    JSR.W CODE_82A2E0                    ;82A1EF;
    REP #$20                             ;82A1F2;
    LDA.W #$CB24                         ;82A1F4;
    STA.B $20                            ;82A1F7;
    LDA.B $05                            ;82A1F9;
    STA.B $3C                            ;82A1FB;
    SEP #$20                             ;82A1FD;
    LDA.B #$00                           ;82A1FF;
    JSL.L CODE_848F07                    ;82A201;
    RTS                                  ;82A205;

CODE_82A206:
    LDX.B $02                            ;82A206;
    JSR.W (PTR16_82A20C,X)               ;82A208;
    RTS                                  ;82A20B;

PTR16_82A20C:
    dw CODE_82A210                       ;82A20C;
    dw CODE_82A232                       ;82A20E;

CODE_82A210:
    LDA.B #$04                           ;82A210;
    STA.B $12                            ;82A212;
    LDX.B $33                            ;82A214;
    LDA.B $0B                            ;82A216;
    BEQ CODE_82A221                      ;82A218;
    REP #$20                             ;82A21A;
    LDA.W DATA8_86CB16,X                 ;82A21C;
    BRA CODE_82A226                      ;82A21F;

CODE_82A221:
    REP #$20                             ;82A221;
    LDA.W DATA8_86CB10,X                 ;82A223;

CODE_82A226:
    CLC                                  ;82A226;
    ADC.B $08                            ;82A227;
    STA.B $38                            ;82A229;
    SEP #$20                             ;82A22B;
    LDA.B #$02                           ;82A22D;
    STA.B $02                            ;82A22F;
    RTS                                  ;82A231;

CODE_82A232:
    JSL.L CODE_82825D                    ;82A232;
    REP #$20                             ;82A236;
    LDA.B $08                            ;82A238;
    CMP.B $38                            ;82A23A;
    BNE CODE_82A24D                      ;82A23C;
    LDA.W #$0004                         ;82A23E;
    STA.B $01                            ;82A241;
    LDA.W #$0000                         ;82A243;
    STA.B $02                            ;82A246;
    LDA.W #$003C                         ;82A248;
    STA.B $3A                            ;82A24B;

CODE_82A24D:
    SEP #$20                             ;82A24D;
    JSL.L CODE_848EEA                    ;82A24F;
    RTS                                  ;82A253;

CODE_82A254:
    LDX.B $02                            ;82A254;
    JSR.W (PTR16_82A25A,X)               ;82A256;
    RTS                                  ;82A259;

PTR16_82A25A:
    dw CODE_82A260                       ;82A25A;
    dw CODE_82A282                       ;82A25C;
    dw CODE_82A2A7                       ;82A25E;

CODE_82A260:
    DEC.B $3A                            ;82A260;
    LDA.B $3A                            ;82A262;
    CMP.B #$28                           ;82A264;
    BNE CODE_82A281                      ;82A266;
    LDA.B #$01                           ;82A268;
    JSL.L CODE_848F07                    ;82A26A;
    LDA.B #$04                           ;82A26E;
    STA.B $02                            ;82A270;
    LDA.B $11                            ;82A272;
    ORA.B #$30                           ;82A274;
    STA.B $11                            ;82A276;
    REP #$20                             ;82A278;
    LDA.W #$CB29                         ;82A27A;
    STA.B $20                            ;82A27D;
    SEP #$20                             ;82A27F;

CODE_82A281:
    RTS                                  ;82A281;

CODE_82A282:
    REP #$20                             ;82A282;
    LDA.W #$0080                         ;82A284;
    STA.W $0000                          ;82A287;
    LDA.B $3C                            ;82A28A;
    STA.W $0002                          ;82A28C;
    SEP #$20                             ;82A28F;
    JSL.L CODE_87A3EC                    ;82A291;
    BEQ CODE_82A29A                      ;82A295;
    JSR.W CODE_82A324                    ;82A297;

CODE_82A29A:
    JSL.L CODE_82823E                    ;82A29A;
    JSL.L CODE_82825D                    ;82A29E;
    JSL.L CODE_848EEA                    ;82A2A2;
    RTS                                  ;82A2A6;

CODE_82A2A7:
    DEC.B $3A                            ;82A2A7;
    BNE CODE_82A2BE                      ;82A2A9;
    JSR.W CODE_82A2E0                    ;82A2AB;
    STZ.B $1C                            ;82A2AE;
    STZ.B $1D                            ;82A2B0;
    LDA.B #$02                           ;82A2B2;
    STA.B $02                            ;82A2B4;
    LDA.B #$03                           ;82A2B6;
    JSL.L CODE_848F07                    ;82A2B8;
    BRA CODE_82A2CE                      ;82A2BC;

CODE_82A2BE:
    LDA.B $0F                            ;82A2BE;
    CMP.B #$80                           ;82A2C0;
    BNE CODE_82A2CA                      ;82A2C2;
    LDA.B #$02                           ;82A2C4;
    JSL.L CODE_848F07                    ;82A2C6;

CODE_82A2CA:
    JSL.L CODE_848EEA                    ;82A2CA;

CODE_82A2CE:
    RTS                                  ;82A2CE;

CODE_82A2CF:
    JSL.L CODE_84A4AB                    ;82A2CF;
    JSL.L CODE_828398                    ;82A2D3;
    SEP #$10                             ;82A2D7;
    LDA.B #$01                           ;82A2D9;
    JSL.L CODE_84A37F                    ;82A2DB;
    RTS                                  ;82A2DF;

CODE_82A2E0:
    REP #$20                             ;82A2E0;
    LDA.W $0BAD                          ;82A2E2;
    SEC                                  ;82A2E5;
    SBC.B $05                            ;82A2E6;
    BCS CODE_82A2EF                      ;82A2E8;
    LDA.W #$0000                         ;82A2EA;
    BRA CODE_82A2F6                      ;82A2ED;

CODE_82A2EF:
    LDA.B $11                            ;82A2EF;
    ORA.W #$0040                         ;82A2F1;
    STA.B $11                            ;82A2F4;

CODE_82A2F6:
    BEQ CODE_82A2FF                      ;82A2F6;
    LDA.W #$0400                         ;82A2F8;
    STA.B $1A                            ;82A2FB;
    BRA CODE_82A30B                      ;82A2FD;

CODE_82A2FF:
    LDA.B $11                            ;82A2FF;
    AND.W #$00BF                         ;82A301;
    STA.B $11                            ;82A304;
    LDA.W #$FC00                         ;82A306;
    STA.B $1A                            ;82A309;

CODE_82A30B:
    LDX.B $33                            ;82A30B;
    SEP #$20                             ;82A30D;
    LDA.B $0B                            ;82A30F;
    BEQ CODE_82A31A                      ;82A311;
    REP #$20                             ;82A313;
    LDA.W DATA8_86CB20,X                 ;82A315;
    BRA CODE_82A31F                      ;82A318;

CODE_82A31A:
    REP #$20                             ;82A31A;
    LDA.W DATA8_86CB1A,X                 ;82A31C;

CODE_82A31F:
    STA.B $1C                            ;82A31F;
    SEP #$20                             ;82A321;
    RTS                                  ;82A323;

CODE_82A324:
    REP #$20                             ;82A324;
    LDA.W #$0000                         ;82A326;
    STA.B $1A                            ;82A329;
    LDA.W #$FA00                         ;82A32B;
    STA.B $1C                            ;82A32E;
    LDA.W #$0002                         ;82A330;
    JSL.L CODE_848F07                    ;82A333;
    SEP #$20                             ;82A337;
    RTS                                  ;82A339;

CODE_82A33A:
    LDA.B $3C                            ;82A33A;
    TSB.B $11                            ;82A33C;
    LDX.B $01                            ;82A33E;
    JSR.W (PTR16_82A3A1,X)               ;82A340;
    JSL.L CODE_82806E                    ;82A343;
    BCC CODE_82A34D                      ;82A347;
    JML.L CODE_828387                    ;82A349;

CODE_82A34D:
    LDA.B $3D                            ;82A34D;
    BEQ CODE_82A35C                      ;82A34F;
    LDA.W $1F0D                          ;82A351;
    BEQ CODE_82A35C                      ;82A354;
    JSL.L CODE_849DC8                    ;82A356;
    BRA CODE_82A362                      ;82A35A;

CODE_82A35C:
    JSL.L CODE_849B43                    ;82A35C;
    BEQ CODE_82A39D                      ;82A360;

CODE_82A362:
    LDA.B $27                            ;82A362;
    AND.B #$7F                           ;82A364;
    BNE CODE_82A399                      ;82A366;
    LDA.B #$0A                           ;82A368;
    STA.B $01                            ;82A36A;
    STZ.B $03                            ;82A36C;
    LDA.B #$07                           ;82A36E;
    JSL.L CODE_848F07                    ;82A370;
    LDA.B #$23                           ;82A374;
    JSL.L CODE_8088A2                    ;82A376;
    LDA.B $3E                            ;82A37A;
    BEQ CODE_82A384                      ;82A37C;
    JSL.L CODE_849FAD                    ;82A37E;
    STZ.B $3E                            ;82A382;

CODE_82A384:
    LDA.B $3B                            ;82A384;
    BEQ CODE_82A38B                      ;82A386;
    STZ.W $0BD8                          ;82A388;

CODE_82A38B:
    LDA.B $3D                            ;82A38B;
    BEQ CODE_82A399                      ;82A38D;
    LDA.B #$01                           ;82A38F;
    STA.W $0BB6                          ;82A391;
    STZ.B $3D                            ;82A394;
    STZ.W $0BE5                          ;82A396;

CODE_82A399:
    LDA.B #$0E                           ;82A399;
    TRB.B $11                            ;82A39B;

CODE_82A39D:
    JML.L CODE_8280B4                    ;82A39D;

PTR16_82A3A1:
    dw CODE_82A3AD                       ;82A3A1;
    dw CODE_82A3E3                       ;82A3A3;
    dw CODE_82A422                       ;82A3A5;
    dw CODE_82A538                       ;82A3A7;
    dw CODE_82A5C4                       ;82A3A9;
    dw CODE_82A68B                       ;82A3AB;

CODE_82A3AD:
    JSL.L CODE_82827D                    ;82A3AD;
    LDA.B #$02                           ;82A3B1;
    STA.B $12                            ;82A3B3;
    STZ.B $03                            ;82A3B5;
    STZ.B $3B                            ;82A3B7;
    STZ.B $3D                            ;82A3B9;
    STZ.B $3E                            ;82A3BB;
    LDA.B #$00                           ;82A3BD;
    JSL.L CODE_848F07                    ;82A3BF;
    LDA.B #$FF                           ;82A3C3;
    STA.B $2F                            ;82A3C5;
    LDA.B $11                            ;82A3C7;
    AND.B #$0E                           ;82A3C9;
    STA.B $3C                            ;82A3CB;
    LDA.B #$0A                           ;82A3CD;
    STA.B $27                            ;82A3CF;
    LDA.B #$02                           ;82A3D1;
    STA.B $26                            ;82A3D3;
    REP #$20                             ;82A3D5;
    LDA.W #$CB2E                         ;82A3D7;
    STA.B $20                            ;82A3DA;
    LDA.B $05                            ;82A3DC;
    STA.B $31                            ;82A3DE;
    SEP #$20                             ;82A3E0;
    RTS                                  ;82A3E2;

CODE_82A3E3:
    LDA.B $02                            ;82A3E3;
    BNE CODE_82A40E                      ;82A3E5;
    INC.B $02                            ;82A3E7;
    REP #$20                             ;82A3E9;
    LDA.W $0BAD                          ;82A3EB;
    CMP.B $05                            ;82A3EE;
    SEP #$20                             ;82A3F0;
    LDA.B #$00                           ;82A3F2;
    ROR A                                ;82A3F4;
    LSR A                                ;82A3F5;
    TSB.B $11                            ;82A3F6;
    AND.B #$40                           ;82A3F8;
    REP #$20                             ;82A3FA;
    BEQ CODE_82A403                      ;82A3FC;
    LDA.W #$0080                         ;82A3FE;
    BRA CODE_82A406                      ;82A401;

CODE_82A403:
    LDA.W #$FF80                         ;82A403;

CODE_82A406:
    STA.B $1A                            ;82A406;
    SEP #$20                             ;82A408;
    LDA.B #$1E                           ;82A40A;
    STA.B $33                            ;82A40C;

CODE_82A40E:
    JSL.L CODE_82823E                    ;82A40E;
    JSL.L CODE_848EEA                    ;82A412;
    DEC.B $33                            ;82A416;
    BNE CODE_82A41D                      ;82A418;
    JSR.W CODE_82A72B                    ;82A41A;

CODE_82A41D:
    JSL.L CODE_849B03                    ;82A41D;
    RTS                                  ;82A421;

CODE_82A422:
    LDX.B $02                            ;82A422;
    JMP.W (PTR16_82A427,X)               ;82A424;

PTR16_82A427:
    dw CODE_82A42D                       ;82A427;
    dw CODE_82A435                       ;82A429;
    dw CODE_82A4FE                       ;82A42B;

CODE_82A42D:
    LDA.B #$02                           ;82A42D;
    STA.B $02                            ;82A42F;
    LDA.B #$B4                           ;82A431;
    STA.B $33                            ;82A433;

CODE_82A435:
    JSL.L CODE_848EEA                    ;82A435;
    DEC.B $33                            ;82A439;
    BNE CODE_82A448                      ;82A43B;
    LDA.B #$06                           ;82A43D;
    STA.B $01                            ;82A43F;
    STZ.B $02                            ;82A441;
    STZ.B $34                            ;82A443;
    STZ.B $03                            ;82A445;
    RTS                                  ;82A447;

CODE_82A448:
    LDA.W $0BD8                          ;82A448;
    ORA.W $1F0C                          ;82A44B;
    BNE CODE_82A45A                      ;82A44E;
    LDA.W $0BCF                          ;82A450;
    BEQ CODE_82A45A                      ;82A453;
    LDA.W $0BB6                          ;82A455;
    BNE CODE_82A45D                      ;82A458;

CODE_82A45A:
    JMP.W CODE_82A4F9                    ;82A45A;

CODE_82A45D:
    REP #$20                             ;82A45D;
    LDA.W $0BAD                          ;82A45F;
    SEC                                  ;82A462;
    SBC.B $05                            ;82A463;
    BCC CODE_82A48E                      ;82A465;
    CMP.W #$0060                         ;82A467;
    SEP #$20                             ;82A46A;
    BCS CODE_82A481                      ;82A46C;
    LDA.B $11                            ;82A46E;
    AND.B #$40                           ;82A470;
    BNE CODE_82A477                      ;82A472;
    JMP.W CODE_82A4F9                    ;82A474;

CODE_82A477:
    JSL.L CODE_84A07C                    ;82A477;
    CMP.B #$06                           ;82A47B;
    BCC CODE_82A4F9                      ;82A47D;
    CMP.B #$0B                           ;82A47F;

CODE_82A481:
    BCS CODE_82A4F9                      ;82A481;
    STA.B $35                            ;82A483;
    LDA.W $0BD3                          ;82A485;
    AND.B #$04                           ;82A488;
    BEQ CODE_82A4B5                      ;82A48A;
    BRA CODE_82A4B0                      ;82A48C;

CODE_82A48E:
    CMP.W #$FFA0                         ;82A48E;
    SEP #$20                             ;82A491;
    BCC CODE_82A4F9                      ;82A493;
    LDA.B $11                            ;82A495;
    AND.B #$40                           ;82A497;
    BNE CODE_82A4F9                      ;82A499;
    JSL.L CODE_84A07C                    ;82A49B;
    CMP.B #$16                           ;82A49F;
    BCC CODE_82A4F9                      ;82A4A1;
    CMP.B #$1B                           ;82A4A3;
    BCS CODE_82A4F9                      ;82A4A5;
    STA.B $35                            ;82A4A7;
    LDA.W $0BD3                          ;82A4A9;
    AND.B #$04                           ;82A4AC;
    BEQ CODE_82A4B5                      ;82A4AE;

CODE_82A4B0:
    JSR.W CODE_82A6A1                    ;82A4B0;
    BRA CODE_82A4B8                      ;82A4B3;

CODE_82A4B5:
    JSR.W CODE_82A6A1                    ;82A4B5;

CODE_82A4B8:
    REP #$30                             ;82A4B8;
    LDA.B $20                            ;82A4BA;
    PHA                                  ;82A4BC;
    LDA.W #$CB38                         ;82A4BD;
    STA.B $20                            ;82A4C0;
    SEP #$20                             ;82A4C2;
    LDX.W #$0BA8                         ;82A4C4;
    JSL.L CODE_849C0E                    ;82A4C7;
    REP #$20                             ;82A4CB;
    PLA                                  ;82A4CD;
    STA.B $20                            ;82A4CE;
    SEP #$30                             ;82A4D0;
    BCC CODE_82A4F9                      ;82A4D2;
    LDA.B #$01                           ;82A4D4;
    STA.W $0BD8                          ;82A4D6;
    STA.B $3B                            ;82A4D9;
    LDA.B #$04                           ;82A4DB;
    STA.B $02                            ;82A4DD;
    STZ.B $03                            ;82A4DF;
    LDA.B #$10                           ;82A4E1;
    STA.W $0000                          ;82A4E3;
    STZ.W $0001                          ;82A4E6;
    JSR.W CODE_82A75E                    ;82A4E9;
    LDA.B #$01                           ;82A4EC;
    JSL.L CODE_848F07                    ;82A4EE;
    INC.B $3E                            ;82A4F2;
    JSL.L CODE_849F85                    ;82A4F4;
    RTS                                  ;82A4F8;

CODE_82A4F9:
    JSL.L CODE_849B03                    ;82A4F9;
    RTS                                  ;82A4FD;

CODE_82A4FE:
    LDA.B #$03                           ;82A4FE;
    TSB.W $0BD4                          ;82A500;
    JSL.L CODE_84A07C                    ;82A503;
    STA.B $35                            ;82A507;
    JSR.W CODE_82A6A1                    ;82A509;
    JSL.L CODE_848EEA                    ;82A50C;
    LDA.B $0F                            ;82A510;
    BPL CODE_82A537                      ;82A512;
    LDA.B #$08                           ;82A514;
    STA.B $01                            ;82A516;
    STZ.B $02                            ;82A518;
    JSL.L CODE_849FAD                    ;82A51A;
    STZ.B $3E                            ;82A51E;
    STZ.W $0BB6                          ;82A520;
    INC.B $3D                            ;82A523;
    LDA.B #$01                           ;82A525;
    STA.W $0BE5                          ;82A527;
    LDA.B #$B4                           ;82A52A;
    STA.B $33                            ;82A52C;
    REP #$20                             ;82A52E;
    LDA.W #$CB3C                         ;82A530;
    STA.B $20                            ;82A533;
    SEP #$20                             ;82A535;

CODE_82A537:
    RTS                                  ;82A537;

CODE_82A538:
    LDA.B $02                            ;82A538;
    BNE CODE_82A58E                      ;82A53A;
    INC.B $34                            ;82A53C;
    LDA.B $34                            ;82A53E;
    CMP.B #$08                           ;82A540;
    BCC CODE_82A54F                      ;82A542;
    JSL.L CODE_849086                    ;82A544;
    LSR A                                ;82A548;
    BCC CODE_82A54F                      ;82A549;
    JSR.W CODE_82A72B                    ;82A54B;
    RTS                                  ;82A54E;

CODE_82A54F:
    INC.B $34                            ;82A54F;
    LDA.B #$1E                           ;82A551;
    STA.B $33                            ;82A553;
    JSL.L CODE_84A07C                    ;82A555;
    ASL A                                ;82A559;
    ASL A                                ;82A55A;
    TAX                                  ;82A55B;
    BIT.B #$40                           ;82A55C;
    BEQ CODE_82A566                      ;82A55E;
    LDA.B #$40                           ;82A560;
    TRB.B $11                            ;82A562;
    BRA CODE_82A56A                      ;82A564;

CODE_82A566:
    LDA.B #$40                           ;82A566;
    TSB.B $11                            ;82A568;

CODE_82A56A:
    REP #$20                             ;82A56A;
    LDA.W DATA8_86EE37,X                 ;82A56C;
    LSR A                                ;82A56F;
    LSR A                                ;82A570;
    BIT.W #$2000                         ;82A571;
    BEQ CODE_82A579                      ;82A574;
    ORA.W #$C000                         ;82A576;

CODE_82A579:
    STA.B $1A                            ;82A579;
    LDA.W DATA8_86EE39,X                 ;82A57B;
    LSR A                                ;82A57E;
    LSR A                                ;82A57F;
    BIT.W #$2000                         ;82A580;
    BEQ CODE_82A588                      ;82A583;
    ORA.W #$C000                         ;82A585;

CODE_82A588:
    STA.B $1C                            ;82A588;
    SEP #$20                             ;82A58A;
    INC.B $02                            ;82A58C;

CODE_82A58E:
    JSR.W CODE_82A799                    ;82A58E;
    LDA.B $1D                            ;82A591;
    BMI CODE_82A5A9                      ;82A593;
    LDA.B #$E8                           ;82A595;
    STA.B $2A                            ;82A597;
    STZ.B $29                            ;82A599;
    JSL.L CODE_8490A0                    ;82A59B;
    CMP.B #$0D                           ;82A59F;
    BEQ CODE_82A5A9                      ;82A5A1;
    JSL.L CODE_82823E                    ;82A5A3;
    BRA CODE_82A5AD                      ;82A5A7;

CODE_82A5A9:
    JSL.L CODE_82820A                    ;82A5A9;

CODE_82A5AD:
    JSL.L CODE_8491BE                    ;82A5AD;
    LDA.B $2B                            ;82A5B1;
    BNE CODE_82A5B9                      ;82A5B3;
    DEC.B $33                            ;82A5B5;
    BNE CODE_82A5BB                      ;82A5B7;

CODE_82A5B9:
    STZ.B $02                            ;82A5B9;

CODE_82A5BB:
    JSL.L CODE_848EEA                    ;82A5BB;
    JSL.L CODE_849B03                    ;82A5BF;
    RTS                                  ;82A5C3;

CODE_82A5C4:
    JSL.L CODE_848EEA                    ;82A5C4;
    JSR.W CODE_82A799                    ;82A5C8;
    STZ.W $0C19                          ;82A5CB;
    LDA.B $11                            ;82A5CE;
    AND.B #$40                           ;82A5D0;
    REP #$20                             ;82A5D2;
    BNE CODE_82A5DB                      ;82A5D4;
    LDA.W #$FF80                         ;82A5D6;
    BRA CODE_82A5DE                      ;82A5D9;

CODE_82A5DB:
    LDA.W #$0080                         ;82A5DB;

CODE_82A5DE:
    STA.B $1A                            ;82A5DE;
    SEP #$20                             ;82A5E0;
    JSL.L CODE_82823E                    ;82A5E2;
    JSL.L CODE_8491BE                    ;82A5E6;
    LDA.B $2B                            ;82A5EA;
    AND.B #$03                           ;82A5EC;
    BNE CODE_82A5F4                      ;82A5EE;
    LDA.B $06                            ;82A5F0;
    BPL CODE_82A5FA                      ;82A5F2;

CODE_82A5F4:
    LDA.B #$40                           ;82A5F4;
    EOR.B $11                            ;82A5F6;
    STA.B $11                            ;82A5F8;

CODE_82A5FA:
    REP #$20                             ;82A5FA;
    LDA.B $05                            ;82A5FC;
    STA.W $0BAD                          ;82A5FE;
    LDA.B $08                            ;82A601;
    STA.W $0BB0                          ;82A603;
    SEP #$30                             ;82A606;
    DEC.B $33                            ;82A608;
    BNE CODE_82A619                      ;82A60A;
    LDA.B #$02                           ;82A60C;
    STA.W $0BCE                          ;82A60E;
    JSL.L CODE_849F25                    ;82A611;
    LDA.B #$B4                           ;82A615;
    STA.B $33                            ;82A617;

CODE_82A619:
    LDX.B $02                            ;82A619;
    JMP.W (PTR16_82A61E,X)               ;82A61B;

PTR16_82A61E:
    dw CODE_82A624                       ;82A61E;
    dw CODE_82A650                       ;82A620;
    dw CODE_82A67E                       ;82A622;

CODE_82A624:
    LDA.B #$07                           ;82A624;
    TSB.W $0BD4                          ;82A626;
    LDA.W $0BE3                          ;82A629;
    BIT.B #$80                           ;82A62C;
    BEQ CODE_82A63E                      ;82A62E;
    LDA.B #$04                           ;82A630;
    STA.B $02                            ;82A632;
    LDA.B #$04                           ;82A634;
    JSL.L CODE_848F07                    ;82A636;
    JSR.W CODE_82A6E4                    ;82A63A;
    RTS                                  ;82A63D;

CODE_82A63E:
    LDA.W $0BDF                          ;82A63E;
    AND.B #$03                           ;82A641;
    BEQ CODE_82A64F                      ;82A643;
    LDA.B #$02                           ;82A645;
    STA.B $02                            ;82A647;
    LDA.B #$03                           ;82A649;
    JSL.L CODE_848F07                    ;82A64B;

CODE_82A64F:
    RTS                                  ;82A64F;

CODE_82A650:
    LDA.B #$07                           ;82A650;
    TSB.W $0BD4                          ;82A652;
    LDA.W $0BE3                          ;82A655;
    AND.B #$80                           ;82A658;
    BEQ CODE_82A66A                      ;82A65A;
    LDA.B #$04                           ;82A65C;
    STA.B $02                            ;82A65E;
    LDA.B #$04                           ;82A660;
    JSL.L CODE_848F07                    ;82A662;
    JSR.W CODE_82A6E4                    ;82A666;
    RTS                                  ;82A669;

CODE_82A66A:
    LDA.B $0F                            ;82A66A;
    BPL CODE_82A67D                      ;82A66C;
    LDA.W $0BDF                          ;82A66E;
    AND.B #$03                           ;82A671;
    BNE CODE_82A67D                      ;82A673;
    STZ.B $02                            ;82A675;
    LDA.B #$02                           ;82A677;
    JSL.L CODE_848F07                    ;82A679;

CODE_82A67D:
    RTS                                  ;82A67D;

CODE_82A67E:
    LDA.B $0F                            ;82A67E;
    BPL CODE_82A685                      ;82A680;
    STZ.B $02                            ;82A682;
    RTS                                  ;82A684;

CODE_82A685:
    LDA.B #$08                           ;82A685;
    TSB.W $0BD4                          ;82A687;
    RTS                                  ;82A68A;

CODE_82A68B:
    JSL.L CODE_848EEA                    ;82A68B;
    LDA.B $0F                            ;82A68F;
    BPL CODE_82A6A0                      ;82A691;
    JSL.L CODE_828387                    ;82A693;
    STZ.W $0000                          ;82A697;
    STZ.W $0001                          ;82A69A;
    JSR.W CODE_82A75E                    ;82A69D;

CODE_82A6A0:
    RTS                                  ;82A6A0;

CODE_82A6A1:
    PHP                                  ;82A6A1;
    SEP #$30                             ;82A6A2;
    LDA.B $35                            ;82A6A4;
    ASL A                                ;82A6A6;
    ASL A                                ;82A6A7;
    TAX                                  ;82A6A8;
    REP #$20                             ;82A6A9;
    LDA.W $0BC2                          ;82A6AB;
    STA.B $37                            ;82A6AE;
    LDA.W $0BC4                          ;82A6B0;
    STA.B $39                            ;82A6B3;
    LDA.W DATA8_86EE37,X                 ;82A6B5;
    EOR.W #$FFFF                         ;82A6B8;
    INC A                                ;82A6BB;
    STA.W $0BC2                          ;82A6BC;
    LDA.W DATA8_86EE39,X                 ;82A6BF;
    EOR.W #$FFFF                         ;82A6C2;
    INC A                                ;82A6C5;
    STA.W $0BC4                          ;82A6C6;
    PHD                                  ;82A6C9;
    PEA.W $0BA8                          ;82A6CA;
    PLD                                  ;82A6CD;
    JSL.L CODE_82820A                    ;82A6CE;
    PLD                                  ;82A6D2;
    LDA.B $37                            ;82A6D3;
    STA.W $0BC2                          ;82A6D5;
    LDA.B $39                            ;82A6D8;
    BPL CODE_82A6DF                      ;82A6DA;
    LDA.W #$0000                         ;82A6DC;

CODE_82A6DF:
    STA.W $0BC4                          ;82A6DF;
    PLP                                  ;82A6E2;
    RTS                                  ;82A6E3;

CODE_82A6E4:
    LDA.B $27                            ;82A6E4;
    AND.B #$7F                           ;82A6E6;
    SEC                                  ;82A6E8;
    SBC.B #$02                           ;82A6E9;
    STA.B $27                            ;82A6EB;
    BEQ CODE_82A6F1                      ;82A6ED;
    BPL CODE_82A726                      ;82A6EF;

CODE_82A6F1:
    LDA.B #$80                           ;82A6F1;
    STA.B $27                            ;82A6F3;
    LDA.B #$0A                           ;82A6F5;
    STA.B $01                            ;82A6F7;
    LDA.B #$06                           ;82A6F9;
    JSL.L CODE_848F07                    ;82A6FB;
    LDA.B #$23                           ;82A6FF;
    JSL.L CODE_8088A2                    ;82A701;
    LDA.B $3E                            ;82A705;
    BEQ CODE_82A70F                      ;82A707;
    JSL.L CODE_849FAD                    ;82A709;
    STZ.B $3E                            ;82A70D;

CODE_82A70F:
    LDA.B $3B                            ;82A70F;
    BEQ CODE_82A718                      ;82A711;
    STZ.W $0BD8                          ;82A713;
    STZ.B $3B                            ;82A716;

CODE_82A718:
    LDA.B $3D                            ;82A718;
    BEQ CODE_82A726                      ;82A71A;
    LDA.B #$01                           ;82A71C;
    STA.W $0BB6                          ;82A71E;
    STZ.W $0BE5                          ;82A721;
    STZ.B $3D                            ;82A724;

CODE_82A726:
    LDA.B #$0E                           ;82A726;
    TRB.B $11                            ;82A728;
    RTS                                  ;82A72A;

CODE_82A72B:
    LDA.B #$04                           ;82A72B;
    STA.B $01                            ;82A72D;
    STZ.B $02                            ;82A72F;
    INC.B $03                            ;82A731;
    JSL.L CODE_8282D3                    ;82A733;
    BNE CODE_82A75B                      ;82A737;
    INC.W $0000,X                        ;82A739;
    STZ.W $000B,X                        ;82A73C;
    LDA.B #$17                           ;82A73F;
    STA.W $000A,X                        ;82A741;
    LDA.B $11                            ;82A744;
    AND.B #$40                           ;82A746;
    STA.W $0011,X                        ;82A748;
    REP #$20                             ;82A74B;
    LDA.B $05                            ;82A74D;
    STA.W $0005,X                        ;82A74F;
    LDA.B $08                            ;82A752;
    STA.W $0008,X                        ;82A754;
    TDC                                  ;82A757;
    STA.W $000C,X                        ;82A758;

CODE_82A75B:
    SEP #$30                             ;82A75B;
    RTS                                  ;82A75D;

CODE_82A75E:
    JSL.L CODE_8282D3                    ;82A75E;
    BNE CODE_82A796                      ;82A762;
    INC.W $0000,X                        ;82A764;
    LDA.B #$17                           ;82A767;
    STA.W $000A,X                        ;82A769;
    LDA.B #$01                           ;82A76C;
    STA.W $000B,X                        ;82A76E;
    LDA.B $11                            ;82A771;
    AND.B #$40                           ;82A773;
    STA.W $0011,X                        ;82A775;
    REP #$20                             ;82A778;
    BNE CODE_82A784                      ;82A77A;
    LDA.B $05                            ;82A77C;
    SEC                                  ;82A77E;
    SBC.W $0000                          ;82A77F;
    BRA CODE_82A78A                      ;82A782;

CODE_82A784:
    LDA.B $05                            ;82A784;
    CLC                                  ;82A786;
    ADC.W $0000                          ;82A787;

CODE_82A78A:
    STA.W $0005,X                        ;82A78A;
    LDA.B $08                            ;82A78D;
    STA.W $0008,X                        ;82A78F;
    TDC                                  ;82A792;
    STA.W $000C,X                        ;82A793;

CODE_82A796:
    SEP #$30                             ;82A796;
    RTS                                  ;82A798;

CODE_82A799:
    REP #$20                             ;82A799;
    LDA.B $05                            ;82A79B;
    SEC                                  ;82A79D;
    SBC.B $31                            ;82A79E;
    BCC CODE_82A7B0                      ;82A7A0;
    CMP.W #$0080                         ;82A7A2;
    BCC CODE_82A7D1                      ;82A7A5;
    SEP #$20                             ;82A7A7;
    LDA.B $11                            ;82A7A9;
    AND.B #$40                           ;82A7AB;
    BNE CODE_82A7C1                      ;82A7AD;
    RTS                                  ;82A7AF;

CODE_82A7B0:
    EOR.W #$FFFF                         ;82A7B0;
    INC A                                ;82A7B3;
    CMP.W #$0080                         ;82A7B4;
    BCC CODE_82A7D1                      ;82A7B7;
    SEP #$20                             ;82A7B9;
    LDA.B $11                            ;82A7BB;
    AND.B #$40                           ;82A7BD;
    BNE CODE_82A7D1                      ;82A7BF;

CODE_82A7C1:
    LDA.B $11                            ;82A7C1;
    EOR.B #$40                           ;82A7C3;
    STA.B $11                            ;82A7C5;
    REP #$20                             ;82A7C7;
    LDA.B $1A                            ;82A7C9;
    EOR.W #$FFFF                         ;82A7CB;
    INC A                                ;82A7CE;
    STA.B $1A                            ;82A7CF;

CODE_82A7D1:
    SEP #$20                             ;82A7D1;
    RTS                                  ;82A7D3;

CODE_82A7D4:
    LDA.B $35                            ;82A7D4;
    TSB.B $11                            ;82A7D6;
    LDX.B $01                            ;82A7D8;
    JSR.W (PTR16_82A7FE,X)               ;82A7DA;
    LDA.B $00                            ;82A7DD;
    BNE CODE_82A7E2                      ;82A7DF;
    RTL                                  ;82A7E1;

CODE_82A7E2:
    JSL.L CODE_849B43                    ;82A7E2;
    BEQ CODE_82A7F6                      ;82A7E6;
    LDA.B #$0E                           ;82A7E8;
    TRB.B $11                            ;82A7EA;
    LDA.B $27                            ;82A7EC;
    AND.B #$7F                           ;82A7EE;
    BNE CODE_82A7F6                      ;82A7F0;
    LDA.B #$08                           ;82A7F2;
    STA.B $01                            ;82A7F4;

CODE_82A7F6:
    JSL.L CODE_849B03                    ;82A7F6;
    JML.L CODE_8280B4                    ;82A7FA;

PTR16_82A7FE:
    dw CODE_82A808                       ;82A7FE;
    dw CODE_82A84F                       ;82A800;
    dw CODE_82A873                       ;82A802;
    dw CODE_82A8FD                       ;82A804;
    dw CODE_82A935                       ;82A806;

CODE_82A808:
    JSL.L CODE_82827D                    ;82A808;
    LDA.B $11                            ;82A80C;
    AND.B #$0E                           ;82A80E;
    STA.B $35                            ;82A810;
    LDA.B #$06                           ;82A812;
    STA.B $27                            ;82A814;
    LDA.B #$02                           ;82A816;
    STA.B $26                            ;82A818;
    LDA.B #$04                           ;82A81A;
    STA.B $12                            ;82A81C;
    LDA.B #$00                           ;82A81E;
    JSL.L CODE_848F07                    ;82A820;
    REP #$20                             ;82A824;
    LDA.W #$CB46                         ;82A826;
    STA.B $20                            ;82A829;
    LDA.W $0BAD                          ;82A82B;
    SEC                                  ;82A82E;
    SBC.B $05                            ;82A82F;
    STZ.B $31                            ;82A831;
    SEP #$20                             ;82A833;
    LDA.B #$00                           ;82A835;
    ROR A                                ;82A837;
    ROR A                                ;82A838;
    TSB.B $11                            ;82A839;
    ASL A                                ;82A83B;
    ASL A                                ;82A83C;
    REP #$20                             ;82A83D;
    LDA.W #$000E                         ;82A83F;
    BCC CODE_82A847                      ;82A842;
    LDA.W #$FFF2                         ;82A844;

CODE_82A847:
    CLC                                  ;82A847;
    ADC.B $05                            ;82A848;
    STA.B $05                            ;82A84A;
    SEP #$20                             ;82A84C;
    RTS                                  ;82A84E;

CODE_82A84F:
    JSL.L CODE_848EEA                    ;82A84F;
    JSR.W CODE_82A951                    ;82A853;
    BCS CODE_82A868                      ;82A856;
    LDA.B #$01                           ;82A858;
    JSL.L CODE_848F07                    ;82A85A;
    LDA.B #$04                           ;82A85E;
    STA.B $01                            ;82A860;
    STZ.B $02                            ;82A862;
    LDA.B #$12                           ;82A864;
    STA.B $33                            ;82A866;

CODE_82A868:
    JSL.L CODE_82806E                    ;82A868;
    BCC CODE_82A872                      ;82A86C;
    JSL.L CODE_828387                    ;82A86E;

CODE_82A872:
    RTS                                  ;82A872;

CODE_82A873:
    JSL.L CODE_848EEA                    ;82A873;
    LDA.B $02                            ;82A877;
    BNE CODE_82A8CA                      ;82A879;
    DEC.B $33                            ;82A87B;
    BNE CODE_82A8FC                      ;82A87D;
    INC.B $02                            ;82A87F;
    JSL.L CODE_828321                    ;82A881;
    BEQ CODE_82A894                      ;82A885;
    SEP #$10                             ;82A887;
    LDA.B #$06                           ;82A889;
    STA.B $01                            ;82A88B;
    STZ.B $02                            ;82A88D;
    LDA.B #$3C                           ;82A88F;
    STA.B $33                            ;82A891;
    RTS                                  ;82A893;

CODE_82A894:
    INC.W $0000,X                        ;82A894;
    LDA.B #$1F                           ;82A897;
    STA.W $000A,X                        ;82A899;
    JSL.L CODE_849086                    ;82A89C;
    XBA                                  ;82A8A0;
    LDA.B #$00                           ;82A8A1;
    XBA                                  ;82A8A3;
    AND.B #$0F                           ;82A8A4;
    TAY                                  ;82A8A6;
    LDA.W DATA8_86CB4A,Y                 ;82A8A7;
    STA.W $000B,X                        ;82A8AA;
    REP #$20                             ;82A8AD;
    LDA.B $05                            ;82A8AF;
    STA.W $0005,X                        ;82A8B1;
    LDA.B $08                            ;82A8B4;
    SEC                                  ;82A8B6;
    SBC.W #$0009                         ;82A8B7;
    STA.W $0008,X                        ;82A8BA;
    SEP #$20                             ;82A8BD;
    LDA.B $11                            ;82A8BF;
    AND.B #$40                           ;82A8C1;
    STA.W $0011,X                        ;82A8C3;
    STX.B $31                            ;82A8C6;
    SEP #$10                             ;82A8C8;

CODE_82A8CA:
    LDA.B $0F                            ;82A8CA;
    BEQ CODE_82A8FC                      ;82A8CC;
    LDA.B $11                            ;82A8CE;
    AND.B #$40                           ;82A8D0;
    REP #$30                             ;82A8D2;
    BEQ CODE_82A8DE                      ;82A8D4;
    LDA.B $05                            ;82A8D6;
    CLC                                  ;82A8D8;
    ADC.W #$0012                         ;82A8D9;
    BRA CODE_82A8E4                      ;82A8DC;

CODE_82A8DE:
    LDA.B $05                            ;82A8DE;
    SEC                                  ;82A8E0;
    SBC.W #$0012                         ;82A8E1;

CODE_82A8E4:
    LDX.B $31                            ;82A8E4;
    STA.W $0005,X                        ;82A8E6;
    STZ.B $31                            ;82A8E9;
    SEP #$20                             ;82A8EB;
    LDA.B #$04                           ;82A8ED;
    STA.W $0001,X                        ;82A8EF;
    SEP #$10                             ;82A8F2;
    LDA.B #$3C                           ;82A8F4;
    STA.B $33                            ;82A8F6;
    LDA.B #$06                           ;82A8F8;
    STA.B $01                            ;82A8FA;

CODE_82A8FC:
    RTS                                  ;82A8FC;

CODE_82A8FD:
    JSL.L CODE_848EEA                    ;82A8FD;
    JSR.W CODE_82A951                    ;82A901;
    BCC CODE_82A90A                      ;82A904;

CODE_82A906:
    LDA.B #$3C                           ;82A906;
    STA.B $33                            ;82A908;

CODE_82A90A:
    DEC.B $33                            ;82A90A;
    BNE CODE_82A92A                      ;82A90C;
    JSL.L CODE_849086                    ;82A90E;
    AND.B #$0F                           ;82A912;
    TAX                                  ;82A914;
    LDA.W DATA8_86CB4A,X                 ;82A915;
    BNE CODE_82A906                      ;82A918;
    LDA.B #$12                           ;82A91A;
    STA.B $33                            ;82A91C;
    LDA.B #$04                           ;82A91E;
    STA.B $01                            ;82A920;
    STZ.B $02                            ;82A922;
    LDA.B #$01                           ;82A924;
    JSL.L CODE_848F07                    ;82A926;

CODE_82A92A:
    JSL.L CODE_82806E                    ;82A92A;
    BCC CODE_82A934                      ;82A92E;
    JSL.L CODE_828387                    ;82A930;

CODE_82A934:
    RTS                                  ;82A934;

CODE_82A935:
    LDA.B #$01                           ;82A935;
    JSL.L CODE_84A37F                    ;82A937;
    JSL.L CODE_84A4AB                    ;82A93B;
    REP #$10                             ;82A93F;
    LDX.B $31                            ;82A941;
    BEQ CODE_82A94A                      ;82A943;
    LDA.B #$04                           ;82A945;
    STA.W $0001,X                        ;82A947;

CODE_82A94A:
    JSL.L CODE_828387                    ;82A94A;
    SEP #$10                             ;82A94E;
    RTS                                  ;82A950;

CODE_82A951:
    REP #$20                             ;82A951;
    LDA.W $0BAD                          ;82A953;
    SEC                                  ;82A956;
    SBC.B $05                            ;82A957;
    SEP #$20                             ;82A959;
    ROR A                                ;82A95B;
    ROR A                                ;82A95C;
    EOR.B $11                            ;82A95D;
    AND.B #$40                           ;82A95F;
    BNE CODE_82A987                      ;82A961;
    REP #$20                             ;82A963;
    LDA.W $0BAD                          ;82A965;
    SEC                                  ;82A968;
    SBC.B $05                            ;82A969;
    BCS CODE_82A971                      ;82A96B;
    EOR.W #$FFFF                         ;82A96D;
    INC A                                ;82A970;

CODE_82A971:
    CMP.W #$0040                         ;82A971;
    SEP #$20                             ;82A974;
    BCS CODE_82A987                      ;82A976;
    LDA.B #$1F                           ;82A978;
    STA.B $0A                            ;82A97A;
    JSL.L CODE_84A1D0                    ;82A97C;
    LDA.B #$1E                           ;82A980;
    STA.B $0A                            ;82A982;
    CPY.B #$0C                           ;82A984;
    RTS                                  ;82A986;

CODE_82A987:
    SEC                                  ;82A987;
    RTS                                  ;82A988;

CODE_82A989:
    LDA.B $33                            ;82A989;
    TSB.B $11                            ;82A98B;
    LDX.B $01                            ;82A98D;
    JSR.W (PTR16_82A9C9,X)               ;82A98F;
    LDA.B $00                            ;82A992;
    BNE CODE_82A997                      ;82A994;
    RTL                                  ;82A996;

CODE_82A997:
    JSL.L CODE_849B43                    ;82A997;
    BEQ CODE_82A9B5                      ;82A99B;
    LDA.B #$0E                           ;82A99D;
    TRB.B $11                            ;82A99F;
    LDA.B $27                            ;82A9A1;
    AND.B #$7F                           ;82A9A3;
    BNE CODE_82A9B5                      ;82A9A5;
    LDA.B #$01                           ;82A9A7;
    JSL.L CODE_84A37F                    ;82A9A9;

CODE_82A9AD:
    JSL.L CODE_84A4AB                    ;82A9AD;
    JML.L CODE_828398                    ;82A9B1;

CODE_82A9B5:
    STZ.B $29                            ;82A9B5;
    STZ.B $2A                            ;82A9B7;
    JSL.L CODE_8490A0                    ;82A9B9;
    CMP.B #$34                           ;82A9BD;
    BCS CODE_82A9AD                      ;82A9BF;
    JSL.L CODE_849B03                    ;82A9C1;
    JML.L CODE_8280B4                    ;82A9C5;

PTR16_82A9C9:
    dw CODE_82A9D1                       ;82A9C9;
    dw CODE_82AA22                       ;82A9CB;
    dw CODE_82AA23                       ;82A9CD;
    dw CODE_82AA89                       ;82A9CF;

CODE_82A9D1:
    LDA.B $11                            ;82A9D1;
    AND.B #$40                           ;82A9D3;
    PHA                                  ;82A9D5;
    JSL.L CODE_82827D                    ;82A9D6;
    PLA                                  ;82A9DA;
    TSB.B $11                            ;82A9DB;
    LDA.B $11                            ;82A9DD;
    AND.B #$0E                           ;82A9DF;
    STA.B $33                            ;82A9E1;
    LDA.B #$01                           ;82A9E3;
    STA.B $27                            ;82A9E5;
    LDA.B #$01                           ;82A9E7;
    STA.B $26                            ;82A9E9;
    LDA.B #$04                           ;82A9EB;
    STA.B $12                            ;82A9ED;
    LDA.B #$FF                           ;82A9EF;
    STA.B $2F                            ;82A9F1;
    LDA.B #$03                           ;82A9F3;
    JSL.L CODE_848F07                    ;82A9F5;
    LDA.B $11                            ;82A9F9;
    AND.B #$40                           ;82A9FB;
    REP #$20                             ;82A9FD;
    BEQ CODE_82AA0A                      ;82A9FF;
    LDA.B $0B                            ;82AA01;
    ASL A                                ;82AA03;
    TAX                                  ;82AA04;
    LDA.W DATA8_86CB64,X                 ;82AA05;
    BRA CODE_82AA15                      ;82AA08;

CODE_82AA0A:
    LDA.B $0B                            ;82AA0A;
    ASL A                                ;82AA0C;
    TAX                                  ;82AA0D;
    LDA.W DATA8_86CB64,X                 ;82AA0E;
    EOR.W #$FFFF                         ;82AA11;
    INC A                                ;82AA14;

CODE_82AA15:
    STA.B $1A                            ;82AA15;
    LDA.W #$CB5A                         ;82AA17;
    STA.B $20                            ;82AA1A;
    SEP #$20                             ;82AA1C;
    LDA.B #$40                           ;82AA1E;
    STA.B $1E                            ;82AA20;

CODE_82AA22:
    RTS                                  ;82AA22;

CODE_82AA23:
    JSL.L CODE_8281E8                    ;82AA23;
    JSL.L CODE_8491BE                    ;82AA27;
    LDA.B $2B                            ;82AA2B;
    AND.B #$03                           ;82AA2D;
    BEQ CODE_82AA43                      ;82AA2F;
    LDA.B $11                            ;82AA31;
    EOR.B #$40                           ;82AA33;
    STA.B $11                            ;82AA35;
    REP #$20                             ;82AA37;
    LDA.B $1A                            ;82AA39;
    EOR.W #$FFFF                         ;82AA3B;
    INC A                                ;82AA3E;
    STA.B $1A                            ;82AA3F;
    SEP #$20                             ;82AA41;

CODE_82AA43:
    LDA.B $2B                            ;82AA43;
    AND.B #$04                           ;82AA45;
    BEQ CODE_82AA7A                      ;82AA47;
    LDA.B #$06                           ;82AA49;
    STA.B $01                            ;82AA4B;
    LDA.B #$04                           ;82AA4D;
    JSL.L CODE_848F07                    ;82AA4F;
    STZ.B $2F                            ;82AA53;
    LDA.B #$40                           ;82AA55;
    TRB.B $11                            ;82AA57;
    REP #$20                             ;82AA59;
    LDA.W $0BAD                          ;82AA5B;
    SEC                                  ;82AA5E;
    SBC.B $05                            ;82AA5F;
    SEP #$20                             ;82AA61;
    LDA.B #$00                           ;82AA63;
    ROR A                                ;82AA65;
    ROR A                                ;82AA66;
    TSB.B $11                            ;82AA67;
    ASL A                                ;82AA69;
    ASL A                                ;82AA6A;
    REP #$20                             ;82AA6B;
    LDA.W #$0080                         ;82AA6D;
    BCS CODE_82AA75                      ;82AA70;
    LDA.W #$FF80                         ;82AA72;

CODE_82AA75:
    STA.B $1A                            ;82AA75;
    SEP #$20                             ;82AA77;
    RTS                                  ;82AA79;

CODE_82AA7A:
    JSL.L CODE_848EEA                    ;82AA7A;
    JSL.L CODE_82806E                    ;82AA7E;
    BCC CODE_82AA88                      ;82AA82;
    JSL.L CODE_828398                    ;82AA84;

CODE_82AA88:
    RTS                                  ;82AA88;

CODE_82AA89:
    JSL.L CODE_82823E                    ;82AA89;
    JSL.L CODE_8491BE                    ;82AA8D;
    LDA.B $2B                            ;82AA91;
    AND.B #$03                           ;82AA93;
    BEQ CODE_82AAA9                      ;82AA95;
    LDA.B $11                            ;82AA97;
    EOR.B #$40                           ;82AA99;
    STA.B $11                            ;82AA9B;
    REP #$20                             ;82AA9D;
    LDA.B $1A                            ;82AA9F;
    EOR.W #$FFFF                         ;82AAA1;
    INC A                                ;82AAA4;
    STA.B $1A                            ;82AAA5;
    SEP #$20                             ;82AAA7;

CODE_82AAA9:
    LDA.B $2B                            ;82AAA9;
    AND.B #$04                           ;82AAAB;
    BNE CODE_82AAC1                      ;82AAAD;
    STZ.B $1C                            ;82AAAF;
    STZ.B $1D                            ;82AAB1;
    LDA.B #$04                           ;82AAB3;
    STA.B $01                            ;82AAB5;
    LDA.B #$03                           ;82AAB7;
    JSL.L CODE_848F07                    ;82AAB9;
    LDA.B #$FF                           ;82AABD;
    STA.B $2F                            ;82AABF;

CODE_82AAC1:
    JSL.L CODE_848EEA                    ;82AAC1;
    JSL.L CODE_82806E                    ;82AAC5;
    BCC CODE_82AACF                      ;82AAC9;
    JSL.L CODE_828398                    ;82AACB;

CODE_82AACF:
    RTS                                  ;82AACF;

CODE_82AAD0:
    LDA.B $33                            ;82AAD0;
    TSB.B $11                            ;82AAD2;
    LDX.B $01                            ;82AAD4;
    JSR.W (PTR16_82AB05,X)               ;82AAD6;
    JSL.L CODE_849B43                    ;82AAD9;
    BEQ CODE_82AAF7                      ;82AADD;
    LDA.B #$0E                           ;82AADF;
    TRB.B $11                            ;82AAE1;
    LDA.B $27                            ;82AAE3;
    AND.B #$7F                           ;82AAE5;
    BNE CODE_82AAF7                      ;82AAE7;
    JSL.L CODE_84A4AB                    ;82AAE9;
    LDA.B #$01                           ;82AAED;
    JSL.L CODE_84A37F                    ;82AAEF;

CODE_82AAF3:
    JML.L CODE_828387                    ;82AAF3;

CODE_82AAF7:
    JSL.L CODE_849B03                    ;82AAF7;
    JSL.L CODE_82806E                    ;82AAFB;
    BCS CODE_82AAF3                      ;82AAFF;
    JML.L CODE_8280B4                    ;82AB01;

PTR16_82AB05:
    dw CODE_82AB0F                       ;82AB05;
    dw CODE_82AB3F                       ;82AB07;
    dw CODE_82AC10                       ;82AB09;
    dw CODE_82AD0E                       ;82AB0B;
    dw CODE_82AD2C                       ;82AB0D;

CODE_82AB0F:
    JSL.L CODE_82827D                    ;82AB0F;
    LDA.B $11                            ;82AB13;
    AND.B #$0E                           ;82AB15;
    STA.B $33                            ;82AB17;
    LDA.B #$04                           ;82AB19;
    STA.B $12                            ;82AB1B;
    LDA.B #$02                           ;82AB1D;
    STA.B $26                            ;82AB1F;
    LDA.B #$02                           ;82AB21;
    STA.B $27                            ;82AB23;
    LDA.B #$3C                           ;82AB25;
    STA.B $35                            ;82AB27;
    STZ.B $38                            ;82AB29;
    REP #$20                             ;82AB2B;
    LDA.W #$CB6A                         ;82AB2D;
    STA.B $20                            ;82AB30;
    LDA.B $05                            ;82AB32;
    STA.B $36                            ;82AB34;
    SEP #$20                             ;82AB36;
    LDA.B #$04                           ;82AB38;
    JSL.L CODE_848F07                    ;82AB3A;
    RTS                                  ;82AB3E;

CODE_82AB3F:
    LDX.B $02                            ;82AB3F;
    JMP.W (PTR16_82AB44,X)               ;82AB41;

PTR16_82AB44:
    dw CODE_82AB4C                       ;82AB44;
    dw CODE_82AB64                       ;82AB46;
    dw CODE_82ABE8                       ;82AB48;
    dw CODE_82ABF7                       ;82AB4A;

CODE_82AB4C:
    REP #$20                             ;82AB4C;
    STZ.B $1C                            ;82AB4E;
    SEP #$20                             ;82AB50;
    LDA.B #$40                           ;82AB52;
    STA.B $1E                            ;82AB54;
    LDA.B #$FF                           ;82AB56;
    STA.B $2F                            ;82AB58;
    LDA.B #$04                           ;82AB5A;
    JSL.L CODE_848F07                    ;82AB5C;
    LDA.B #$02                           ;82AB60;
    STA.B $02                            ;82AB62;

CODE_82AB64:
    JSL.L CODE_848EEA                    ;82AB64;
    JSL.L CODE_8281E8                    ;82AB68;
    JSL.L CODE_8491BE                    ;82AB6C;
    REP #$20                             ;82AB70;
    LDA.B $1C                            ;82AB72;
    CMP.W #$F800                         ;82AB74;
    BPL CODE_82AB7E                      ;82AB77;
    LDA.W #$F800                         ;82AB79;
    STA.B $1C                            ;82AB7C;

CODE_82AB7E:
    SEP #$20                             ;82AB7E;
    LDA.B $2B                            ;82AB80;
    AND.B #$04                           ;82AB82;
    BEQ CODE_82AB91                      ;82AB84;
    LDA.B #$06                           ;82AB86;
    STA.B $02                            ;82AB88;
    LDA.B #$05                           ;82AB8A;
    JSL.L CODE_848F07                    ;82AB8C;
    RTS                                  ;82AB90;

CODE_82AB91:
    LDA.B $2E                            ;82AB91;
    CMP.B #$0E                           ;82AB93;
    BEQ CODE_82AB9B                      ;82AB95;
    CMP.B #$0D                           ;82AB97;
    BNE CODE_82ABE7                      ;82AB99;

CODE_82AB9B:
    LDA.B #$04                           ;82AB9B;
    STA.B $02                            ;82AB9D;
    LDA.B #$05                           ;82AB9F;
    JSL.L CODE_848F07                    ;82ABA1;
    REP #$20                             ;82ABA5;
    LDA.B $08                            ;82ABA7;
    CLC                                  ;82ABA9;
    ADC.W #$0007                         ;82ABAA;
    AND.W #$FFF0                         ;82ABAD;
    STA.W $0000                          ;82ABB0;
    LDA.W $1F2D                          ;82ABB3;
    AND.W #$00FF                         ;82ABB6;
    CLC                                  ;82ABB9;
    ADC.W $0000                          ;82ABBA;
    SEC                                  ;82ABBD;
    SBC.W #$0007                         ;82ABBE;
    STA.B $08                            ;82ABC1;
    SEP #$20                             ;82ABC3;
    JSL.L CODE_8282D3                    ;82ABC5;
    BNE CODE_82ABE5                      ;82ABC9;
    INC.W $0000,X                        ;82ABCB;
    LDA.B #$0C                           ;82ABCE;
    STA.W $000A,X                        ;82ABD0;
    LDA.B #$01                           ;82ABD3;
    STA.W $000B,X                        ;82ABD5;
    REP #$20                             ;82ABD8;
    LDA.W $0000                          ;82ABDA;
    STA.W $0008,X                        ;82ABDD;
    LDA.B $05                            ;82ABE0;
    STA.W $0005,X                        ;82ABE2;

CODE_82ABE5:
    SEP #$30                             ;82ABE5;

CODE_82ABE7:
    RTS                                  ;82ABE7;

CODE_82ABE8:
    JSL.L CODE_848EEA                    ;82ABE8;
    LDA.B $0F                            ;82ABEC;
    BPL CODE_82ABF6                      ;82ABEE;
    LDA.B #$04                           ;82ABF0;
    STA.B $01                            ;82ABF2;
    STZ.B $02                            ;82ABF4;

CODE_82ABF6:
    RTS                                  ;82ABF6;

CODE_82ABF7:
    JSL.L CODE_848EEA                    ;82ABF7;
    LDA.B $0F                            ;82ABFB;
    BPL CODE_82AC0F                      ;82ABFD;
    LDA.B #$06                           ;82ABFF;
    STA.B $01                            ;82AC01;
    STZ.B $02                            ;82AC03;
    LDA.B #$01                           ;82AC05;
    LDX.B $38                            ;82AC07;
    BEQ CODE_82AC0D                      ;82AC09;
    LDA.B #$78                           ;82AC0B;

CODE_82AC0D:
    STA.B $34                            ;82AC0D;

CODE_82AC0F:
    RTS                                  ;82AC0F;

CODE_82AC10:
    REP #$20                             ;82AC10;
    LDA.B $08                            ;82AC12;
    CLC                                  ;82AC14;
    ADC.W #$0007                         ;82AC15;
    AND.W #$FFF0                         ;82AC18;
    STA.W $0000                          ;82AC1B;
    LDA.W $1F2D                          ;82AC1E;
    AND.W #$00FF                         ;82AC21;
    CLC                                  ;82AC24;
    ADC.W $0000                          ;82AC25;
    SEC                                  ;82AC28;
    SBC.W #$0007                         ;82AC29;
    STA.B $08                            ;82AC2C;
    SEP #$20                             ;82AC2E;
    LDX.B $02                            ;82AC30;
    JMP.W (PTR16_82AC35,X)               ;82AC32;

PTR16_82AC35:
    dw CODE_82AC3D                       ;82AC35;
    dw CODE_82AC66                       ;82AC37;
    dw CODE_82AC81                       ;82AC39;
    dw CODE_82ACCC                       ;82AC3B;

CODE_82AC3D:
    JSR.W CODE_82ADB6                    ;82AC3D;
    LDA.B #$02                           ;82AC40;
    STA.B $02                            ;82AC42;
    LDA.B #$01                           ;82AC44;
    JSL.L CODE_848F07                    ;82AC46;
    STZ.B $1E                            ;82AC4A;
    LDA.B #$1C                           ;82AC4C;
    STA.B $1F                            ;82AC4E;
    LDA.B $11                            ;82AC50;
    ASL A                                ;82AC52;
    ASL A                                ;82AC53;
    REP #$20                             ;82AC54;
    BCC CODE_82AC5D                      ;82AC56;
    LDA.W #$0460                         ;82AC58;
    BRA CODE_82AC60                      ;82AC5B;

CODE_82AC5D:
    LDA.W #$FBA0                         ;82AC5D;

CODE_82AC60:
    STA.B $1A                            ;82AC60;
    STZ.B $1C                            ;82AC62;
    SEP #$20                             ;82AC64;

CODE_82AC66:
    JSL.L CODE_848EEA                    ;82AC66;
    LDA.B $0F                            ;82AC6A;
    BPL CODE_82AC80                      ;82AC6C;
    LDA.B #$02                           ;82AC6E;
    JSL.L CODE_848F07                    ;82AC70;
    LDA.B $11                            ;82AC74;
    ASL A                                ;82AC76;
    ASL A                                ;82AC77;
    LDA.B #$04                           ;82AC78;
    BCC CODE_82AC7E                      ;82AC7A;
    LDA.B #$06                           ;82AC7C;

CODE_82AC7E:
    STA.B $02                            ;82AC7E;

CODE_82AC80:
    RTS                                  ;82AC80;

CODE_82AC81:
    JSL.L CODE_848EEA                    ;82AC81;
    JSL.L CODE_828195                    ;82AC85;
    JSR.W CODE_82ADE2                    ;82AC89;
    JSL.L CODE_8491BE                    ;82AC8C;
    LDA.B $2B                            ;82AC90;
    AND.B #$02                           ;82AC92;
    BEQ CODE_82ACB8                      ;82AC94;
    LDA.B #$E6                           ;82AC96;
    STA.B $29                            ;82AC98;
    LDA.B #$E0                           ;82AC9A;
    STA.B $2A                            ;82AC9C;
    JSL.L CODE_8490A0                    ;82AC9E;
    CMP.B #$34                           ;82ACA2;
    BCC CODE_82ACC3                      ;82ACA4;
    LDA.B #$40                           ;82ACA6;
    TSB.B $11                            ;82ACA8;
    LDA.B #$06                           ;82ACAA;
    STA.B $02                            ;82ACAC;
    REP #$20                             ;82ACAE;
    LDA.B $1A                            ;82ACB0;
    EOR.W #$FFFF                         ;82ACB2;
    INC A                                ;82ACB5;
    STA.B $1A                            ;82ACB6;

CODE_82ACB8:
    REP #$20                             ;82ACB8;
    LDA.B $1A                            ;82ACBA;
    SEP #$20                             ;82ACBC;
    BNE CODE_82ACC2                      ;82ACBE;
    STZ.B $02                            ;82ACC0;

CODE_82ACC2:
    RTS                                  ;82ACC2;

CODE_82ACC3:
    LDA.B #$08                           ;82ACC3;
    STA.B $01                            ;82ACC5;
    STZ.B $02                            ;82ACC7;
    STZ.B $38                            ;82ACC9;
    RTS                                  ;82ACCB;

CODE_82ACCC:
    JSL.L CODE_848EEA                    ;82ACCC;
    JSL.L CODE_828174                    ;82ACD0;
    JSR.W CODE_82ADE2                    ;82ACD4;
    JSL.L CODE_8491BE                    ;82ACD7;
    LDA.B $2B                            ;82ACDB;
    AND.B #$01                           ;82ACDD;
    BEQ CODE_82AD03                      ;82ACDF;
    LDA.B #$1A                           ;82ACE1;
    STA.B $29                            ;82ACE3;
    LDA.B #$E0                           ;82ACE5;
    STA.B $2A                            ;82ACE7;
    JSL.L CODE_8490A0                    ;82ACE9;
    CMP.B #$34                           ;82ACED;
    BCC CODE_82ACC3                      ;82ACEF;
    LDA.B #$40                           ;82ACF1;
    TRB.B $11                            ;82ACF3;
    LDA.B #$04                           ;82ACF5;
    STA.B $02                            ;82ACF7;
    REP #$20                             ;82ACF9;
    LDA.B $1A                            ;82ACFB;
    EOR.W #$FFFF                         ;82ACFD;
    INC A                                ;82AD00;
    STA.B $1A                            ;82AD01;

CODE_82AD03:
    REP #$20                             ;82AD03;
    LDA.B $1A                            ;82AD05;
    SEP #$20                             ;82AD07;
    BNE CODE_82AD0D                      ;82AD09;
    STZ.B $02                            ;82AD0B;

CODE_82AD0D:
    RTS                                  ;82AD0D;

CODE_82AD0E:
    JSL.L CODE_848EEA                    ;82AD0E;
    DEC.B $34                            ;82AD12;
    BNE CODE_82AD22                      ;82AD14;
    JSR.W CODE_82ADB6                    ;82AD16;
    LDA.B #$08                           ;82AD19;
    STA.B $01                            ;82AD1B;
    LDA.B #$01                           ;82AD1D;
    STA.B $38                            ;82AD1F;
    RTS                                  ;82AD21;

CODE_82AD22:
    LDA.B $34                            ;82AD22;
    CMP.B #$28                           ;82AD24;
    BNE CODE_82AD2B                      ;82AD26;
    JSR.W CODE_82ADEA                    ;82AD28;

CODE_82AD2B:
    RTS                                  ;82AD2B;

CODE_82AD2C:
    LDX.B $02                            ;82AD2C;
    JMP.W (PTR16_82AD31,X)               ;82AD2E;

PTR16_82AD31:
    dw CODE_82AD37                       ;82AD31;
    dw CODE_82AD5E                       ;82AD33;
    dw CODE_82AD9B                       ;82AD35;

CODE_82AD37:
    LDA.B #$02                           ;82AD37;
    STA.B $02                            ;82AD39;
    LDA.B $11                            ;82AD3B;
    ASL A                                ;82AD3D;
    ASL A                                ;82AD3E;
    REP #$20                             ;82AD3F;
    LDA.W #$0140                         ;82AD41;
    BCS CODE_82AD49                      ;82AD44;
    LDA.W #$FEC0                         ;82AD46;

CODE_82AD49:
    STA.B $1A                            ;82AD49;
    LDA.W #$0421                         ;82AD4B;
    STA.B $1C                            ;82AD4E;
    SEP #$20                             ;82AD50;
    LDA.B #$40                           ;82AD52;
    STA.B $1E                            ;82AD54;
    LDA.B #$03                           ;82AD56;
    JSL.L CODE_848F07                    ;82AD58;
    BRA CODE_82AD76                      ;82AD5C;

CODE_82AD5E:
    JSL.L CODE_848EEA                    ;82AD5E;
    LDA.B $0F                            ;82AD62;
    BPL CODE_82AD76                      ;82AD64;
    REP #$20                             ;82AD66;
    LDA.B $08                            ;82AD68;
    SEC                                  ;82AD6A;
    SBC.W #$0006                         ;82AD6B;
    STA.B $08                            ;82AD6E;
    SEP #$20                             ;82AD70;
    LDA.B #$04                           ;82AD72;
    STA.B $02                            ;82AD74;

CODE_82AD76:
    LDA.B $38                            ;82AD76;
    BNE CODE_82AD98                      ;82AD78;
    REP #$20                             ;82AD7A;
    LDA.B $08                            ;82AD7C;
    CLC                                  ;82AD7E;
    ADC.W #$0007                         ;82AD7F;
    AND.W #$FFF0                         ;82AD82;
    STA.W $0000                          ;82AD85;
    LDA.W $1F2D                          ;82AD88;
    AND.W #$00FF                         ;82AD8B;
    CLC                                  ;82AD8E;
    ADC.W $0000                          ;82AD8F;
    SEC                                  ;82AD92;
    SBC.W #$0007                         ;82AD93;
    STA.B $08                            ;82AD96;

CODE_82AD98:
    SEP #$20                             ;82AD98;
    RTS                                  ;82AD9A;

CODE_82AD9B:
    JSL.L CODE_8281E8                    ;82AD9B;
    JSL.L CODE_848EEA                    ;82AD9F;
    JSL.L CODE_8491BE                    ;82ADA3;
    REP #$20                             ;82ADA7;
    LDA.B $1C                            ;82ADA9;
    SEP #$20                             ;82ADAB;
    BPL CODE_82ADB5                      ;82ADAD;
    LDA.B #$02                           ;82ADAF;
    STA.B $01                            ;82ADB1;
    STZ.B $02                            ;82ADB3;

CODE_82ADB5:
    RTS                                  ;82ADB5;

CODE_82ADB6:
    LDA.B #$40                           ;82ADB6;
    TRB.B $11                            ;82ADB8;
    REP #$20                             ;82ADBA;
    LDA.B $05                            ;82ADBC;
    SEC                                  ;82ADBE;
    SBC.B $36                            ;82ADBF;
    BCS CODE_82ADC7                      ;82ADC1;
    EOR.W #$FFFF                         ;82ADC3;
    INC A                                ;82ADC6;

CODE_82ADC7:
    CMP.W #$0080                         ;82ADC7;
    BCC CODE_82ADD3                      ;82ADCA;
    LDA.B $36                            ;82ADCC;
    SEC                                  ;82ADCE;
    SBC.B $05                            ;82ADCF;
    BRA CODE_82ADD9                      ;82ADD1;

CODE_82ADD3:
    LDA.W $0BAD                          ;82ADD3;
    SEC                                  ;82ADD6;
    SBC.B $05                            ;82ADD7;

CODE_82ADD9:
    SEP #$20                             ;82ADD9;
    LDA.B #$00                           ;82ADDB;
    ROR A                                ;82ADDD;
    ROR A                                ;82ADDE;
    TSB.B $11                            ;82ADDF;
    RTS                                  ;82ADE1;

CODE_82ADE2:
    DEC.B $35                            ;82ADE2;
    BNE CODE_82AE10                      ;82ADE4;
    LDA.B #$3C                           ;82ADE6;
    STA.B $35                            ;82ADE8;

CODE_82ADEA:
    JSL.L CODE_849086                    ;82ADEA;
    AND.B #$1F                           ;82ADEE;
    CMP.B #$0B                           ;82ADF0;
    BCS CODE_82AE0E                      ;82ADF2;
    JSL.L CODE_828358                    ;82ADF4;
    BNE CODE_82AE0E                      ;82ADF8;
    INC.W $0000,X                        ;82ADFA;
    LDA.B #$0C                           ;82ADFD;
    STA.W $000A,X                        ;82ADFF;
    REP #$20                             ;82AE02;
    LDA.B $05                            ;82AE04;
    STA.W $0005,X                        ;82AE06;
    LDA.B $08                            ;82AE09;
    STA.W $0008,X                        ;82AE0B;

CODE_82AE0E:
    SEP #$30                             ;82AE0E;

CODE_82AE10:
    RTS                                  ;82AE10;

CODE_82AE11:
    LDX.B $01                            ;82AE11;
    JMP.W (PTR16_82AE16,X)               ;82AE13;

PTR16_82AE16:
    dw CODE_82AE1C                       ;82AE16;
    dw CODE_82AF91                       ;82AE18;
    dw CODE_82B342                       ;82AE1A;

CODE_82AE1C:
    LDX.B $02                            ;82AE1C;
    JMP.W (PTR16_82AE21,X)               ;82AE1E;

PTR16_82AE21:
    dw CODE_82AE29                       ;82AE21;
    dw CODE_82AEC4                       ;82AE23;
    dw CODE_82AF54                       ;82AE25;
    dw CODE_82AF3C                       ;82AE27;

CODE_82AE29:
    PHB                                  ;82AE29;
    REP #$31                             ;82AE2A;
    LDA.W #$CBAA                         ;82AE2C;
    STA.B $20                            ;82AE2F;
    LDX.W #$CB74                         ;82AE31;
    LDY.W #$0AA1                         ;82AE34;
    LDA.W #$000D                         ;82AE37;
    MVN $00,$86                          ;82AE3A;
    LDA.W #$012C                         ;82AE3D;
    STA.B $3B                            ;82AE40;
    SEP #$30                             ;82AE42;
    PLB                                  ;82AE44;
    JSR.W CODE_82B7DB                    ;82AE45;
    JSR.W CODE_82B67D                    ;82AE48;
    JSR.W CODE_82B706                    ;82AE4B;
    JSR.W CODE_82B731                    ;82AE4E;
    LDA.B #$01                           ;82AE51;
    STA.B $0E                            ;82AE53;
    STZ.B $11                            ;82AE55;
    LDA.B #$04                           ;82AE57;
    STA.B $26                            ;82AE59;
    LDA.B #$40                           ;82AE5B;
    STA.B $27                            ;82AE5D;
    STA.B $29                            ;82AE5F;
    LDA.B #$07                           ;82AE61;
    STA.B $28                            ;82AE63;
    STZ.B $2C                            ;82AE65;
    STZ.B $3A                            ;82AE67;
    STZ.B $2A                            ;82AE69;
    STZ.B $19                            ;82AE6B;
    LDA.B #$FF                           ;82AE6D;
    STA.B $18                            ;82AE6F;
    LDA.B $0B                            ;82AE71;
    BMI CODE_82AE7A                      ;82AE73;
    LDA.B #$02                           ;82AE75;
    STA.B $01                            ;82AE77;
    RTL                                  ;82AE79;

CODE_82AE7A:
    LDA.B #$02                           ;82AE7A;
    STA.B $02                            ;82AE7C;
    STA.W $0BA1                          ;82AE7E;
    REP #$31                             ;82AE81;
    LDX.B $1A                            ;82AE83;
    LDA.W $0008,X                        ;82AE85;
    ADC.W #$0050                         ;82AE88;
    STA.W $0008,X                        ;82AE8B;
    LDX.B $1C                            ;82AE8E;
    LDA.W $0008,X                        ;82AE90;
    CLC                                  ;82AE93;
    ADC.W #$0050                         ;82AE94;
    STA.W $0008,X                        ;82AE97;
    LDX.B $0F                            ;82AE9A;
    LDA.W $0008,X                        ;82AE9C;
    CLC                                  ;82AE9F;
    ADC.W #$0050                         ;82AEA0;
    STA.W $0008,X                        ;82AEA3;
    LDA.B $0B                            ;82AEA6;
    AND.W #$007F                         ;82AEA8;
    ASL A                                ;82AEAB;
    TAX                                  ;82AEAC;
    LDA.W DATA8_86CBEC,X                 ;82AEAD;
    STA.W $1F28                          ;82AEB0;
    LDA.W DATA8_86CBF2,X                 ;82AEB3;
    STA.W $1F2A                          ;82AEB6;
    LDA.W #$0050                         ;82AEB9;
    STA.B $34                            ;82AEBC;
    JSR.W CODE_82B40D                    ;82AEBE;
    SEP #$30                             ;82AEC1;
    RTL                                  ;82AEC3;

CODE_82AEC4:
    REP #$20                             ;82AEC4;
    JSR.W CODE_82B40D                    ;82AEC6;
    LDA.B $05                            ;82AEC9;
    CLC                                  ;82AECB;
    ADC.W #$FEE0                         ;82AECC;
    CMP.W $1E4D                          ;82AECF;
    BCC CODE_82AEDE                      ;82AED2;
    LDX.B #$00                           ;82AED4;
    STX.W $0BA1                          ;82AED6;
    LDX.B #$06                           ;82AED9;
    STX.B $02                            ;82AEDB;
    RTL                                  ;82AEDD;

CODE_82AEDE:
    LDA.B $05                            ;82AEDE;
    CLC                                  ;82AEE0;
    ADC.W #$FF00                         ;82AEE1;
    CMP.W $1E4D                          ;82AEE4;
    BCS CODE_82AF3B                      ;82AEE7;
    LDA.W $1E5E                          ;82AEE9;
    STA.L $7FD61A                        ;82AEEC;
    LDA.W $1E60                          ;82AEF0;
    STA.L $7FD61C                        ;82AEF3;
    LDA.W $1E68                          ;82AEF7;
    STA.L $7FD61E                        ;82AEFA;
    LDA.W $1E6E                          ;82AEFE;
    STA.L $7FD620                        ;82AF01;
    LDA.B $05                            ;82AF05;
    CLC                                  ;82AF07;
    ADC.W #$FF60                         ;82AF08;
    STA.W $1E5E                          ;82AF0B;
    LDA.B $05                            ;82AF0E;
    CLC                                  ;82AF10;
    ADC.W #$FF70                         ;82AF11;
    STA.W $1E60                          ;82AF14;
    LDA.B $08                            ;82AF17;
    CLC                                  ;82AF19;
    ADC.W #$FF30                         ;82AF1A;
    STA.W $1E68                          ;82AF1D;
    LDA.B $08                            ;82AF20;
    CLC                                  ;82AF22;
    ADC.W #$FF80                         ;82AF23;
    STA.W $1E6E                          ;82AF26;
    SEP #$20                             ;82AF29;
    LDA.B #$04                           ;82AF2B;
    STA.B $02                            ;82AF2D;
    LDA.B #$3C                           ;82AF2F;
    JSL.L CODE_84A333                    ;82AF31;
    LDA.B #$30                           ;82AF35;
    JSL.L CODE_8088A2                    ;82AF37;

CODE_82AF3B:
    RTL                                  ;82AF3B;

CODE_82AF3C:
    REP #$21                             ;82AF3C;
    LDA.B $05                            ;82AF3E;
    ADC.W #$FEE0                         ;82AF40;
    CMP.W $1E4D                          ;82AF43;
    SEP #$20                             ;82AF46;
    BCS CODE_82AF53                      ;82AF48;
    LDA.B #$02                           ;82AF4A;
    STA.B $02                            ;82AF4C;
    LDA.B #$02                           ;82AF4E;
    STA.W $0BA1                          ;82AF50;

CODE_82AF53:
    RTL                                  ;82AF53;

CODE_82AF54:
    JSR.W CODE_82B759                    ;82AF54;
    JSR.W CODE_82B82F                    ;82AF57;
    REP #$20                             ;82AF5A;
    LDA.B $33                            ;82AF5C;
    SEC                                  ;82AF5E;
    SBC.W #$0108                         ;82AF5F;
    STA.B $33                            ;82AF62;
    SEP #$20                             ;82AF64;
    LDA.B $35                            ;82AF66;
    SBC.B #$00                           ;82AF68;
    STA.B $35                            ;82AF6A;
    BPL CODE_82AF8B                      ;82AF6C;
    REP #$10                             ;82AF6E;
    LDX.B $1A                            ;82AF70;
    LDA.B $08                            ;82AF72;
    CLC                                  ;82AF74;
    ADC.B #$08                           ;82AF75;
    STA.W $0008,X                        ;82AF77;
    LDX.B $1C                            ;82AF7A;
    STZ.W $002B,X                        ;82AF7C;
    SEP #$10                             ;82AF7F;
    LDA.B #$02                           ;82AF81;
    STA.B $01                            ;82AF83;
    STZ.B $02                            ;82AF85;
    STZ.W $0BA1                          ;82AF87;
    RTL                                  ;82AF8A;

CODE_82AF8B:
    REP #$20                             ;82AF8B;
    JSR.W CODE_82B40D                    ;82AF8D;
    RTL                                  ;82AF90;

CODE_82AF91:
    DEC.B $3B                            ;82AF91;
    BPL CODE_82AF97                      ;82AF93;
    STZ.B $3B                            ;82AF95;

CODE_82AF97:
    LDX.B $02                            ;82AF97;
    JSR.W (PTR16_82AFD4,X)               ;82AF99;
    LDA.B $2A                            ;82AF9C;
    BEQ CODE_82AFA5                      ;82AF9E;
    STZ.B $2A                            ;82AFA0;
    JSR.W CODE_82B7C1                    ;82AFA2;

CODE_82AFA5:
    JSL.L CODE_849B43                    ;82AFA5;
    BEQ CODE_82AFC4                      ;82AFA9;
    BMI CODE_82AFBC                      ;82AFAB;
    INC.B $2A                            ;82AFAD;
    LDA.B #$0A                           ;82AFAF;
    STA.B $3D                            ;82AFB1;
    LDA.B #$05                           ;82AFB3;
    STA.B $28                            ;82AFB5;
    JSR.W CODE_82B7A2                    ;82AFB7;
    BRA CODE_82AFC4                      ;82AFBA;

CODE_82AFBC:
    LDA.B #$04                           ;82AFBC;
    STA.B $01                            ;82AFBE;
    STZ.B $03                            ;82AFC0;
    STZ.B $27                            ;82AFC2;

CODE_82AFC4:
    LDA.B $3D                            ;82AFC4;
    BEQ CODE_82AFD0                      ;82AFC6;
    DEC.B $3D                            ;82AFC8;
    BNE CODE_82AFD0                      ;82AFCA;
    LDA.B #$01                           ;82AFCC;
    STA.B $28                            ;82AFCE;

CODE_82AFD0:
    JML.L CODE_849B03                    ;82AFD0;

PTR16_82AFD4:
    dw CODE_82AFFB                       ;82AFD4;
    dw CODE_82B13B                       ;82AFD6;
    dw CODE_82B07B                       ;82AFD8;
    dw CODE_82B07B                       ;82AFDA;
    dw CODE_82AFDE                       ;82AFDC;

CODE_82AFDE:
    LDX.B $03                            ;82AFDE;
    JMP.W (PTR16_82AFE3,X)               ;82AFE0;

PTR16_82AFE3:
    dw CODE_82AFE7                       ;82AFE3;
    dw CODE_82AFF2                       ;82AFE5;

CODE_82AFE7:
    LDA.B #$02                           ;82AFE7;
    STA.B $03                            ;82AFE9;
    LDA.B #$FF                           ;82AFEB;
    STA.B $16                            ;82AFED;
    JMP.W CODE_82B6A5                    ;82AFEF;

CODE_82AFF2:
    DEC.B $16                            ;82AFF2;
    BNE CODE_82AFFA                      ;82AFF4;
    STZ.B $02                            ;82AFF6;
    STZ.B $03                            ;82AFF8;

CODE_82AFFA:
    RTS                                  ;82AFFA;

CODE_82AFFB:
    LDX.B $03                            ;82AFFB;
    BNE CODE_82B006                      ;82AFFD;
    INC.B $03                            ;82AFFF;
    LDA.B #$14                           ;82B001;
    STA.B $16                            ;82B003;
    RTS                                  ;82B005;

CODE_82B006:
    JSL.L CODE_82806E                    ;82B006;
    BCC CODE_82B00D                      ;82B00A;
    RTS                                  ;82B00C;

CODE_82B00D:
    DEC.B $16                            ;82B00D;
    BNE CODE_82B070                      ;82B00F;
    REP #$21                             ;82B011;
    LDA.B $0B                            ;82B013;
    AND.W #$0003                         ;82B015;
    ASL A                                ;82B018;
    ASL A                                ;82B019;
    TAX                                  ;82B01A;
    LDA.B $05                            ;82B01B;
    ADC.W #$FFC0                         ;82B01D;
    CMP.W $0BAD                          ;82B020;
    BCC CODE_82B027                      ;82B023;
    INX                                  ;82B025;
    INX                                  ;82B026;

CODE_82B027:
    JSL.L CODE_849086                    ;82B027;
    AND.W #$0003                         ;82B02B;
    BEQ CODE_82B031                      ;82B02E;
    INX                                  ;82B030;

CODE_82B031:
    SEP #$20                             ;82B031;
    LDA.W DATA8_86CBB6,X                 ;82B033;
    STA.B $02                            ;82B036;
    STZ.B $03                            ;82B038;
    CMP.B $18                            ;82B03A;
    BNE CODE_82B049                      ;82B03C;
    INC.B $19                            ;82B03E;
    LDA.B $19                            ;82B040;
    CMP.B #$02                           ;82B042;
    BCC CODE_82B04B                      ;82B044;
    JSR.W CODE_82B071                    ;82B046;

CODE_82B049:
    STZ.B $19                            ;82B049;

CODE_82B04B:
    LDA.B $02                            ;82B04B;
    CMP.B #$02                           ;82B04D;
    BNE CODE_82B064                      ;82B04F;
    LDA.B $29                            ;82B051;
    BEQ CODE_82B061                      ;82B053;
    BIT.W $1F2C                          ;82B055;
    BVS CODE_82B061                      ;82B058;
    LDA.B #$40                           ;82B05A;
    TSB.W $1F2C                          ;82B05C;
    BRA CODE_82B064                      ;82B05F;

CODE_82B061:
    JSR.W CODE_82B071                    ;82B061;

CODE_82B064:
    LDA.B $3A                            ;82B064;
    BEQ CODE_82B06C                      ;82B066;
    LDA.B #$06                           ;82B068;
    STA.B $02                            ;82B06A;

CODE_82B06C:
    LDA.B $02                            ;82B06C;
    STA.B $18                            ;82B06E;

CODE_82B070:
    RTS                                  ;82B070;

CODE_82B071:
    TXA                                  ;82B071;
    EOR.B #$01                           ;82B072;
    TAX                                  ;82B074;
    LDA.W DATA8_86CBB6,X                 ;82B075;
    STA.B $02                            ;82B078;
    RTS                                  ;82B07A;

CODE_82B07B:
    LDX.B $03                            ;82B07B;
    BNE CODE_82B0B5                      ;82B07D;
    INC.B $03                            ;82B07F;
    INC.B $2C                            ;82B081;
    LDA.B #$78                           ;82B083;
    STA.B $16                            ;82B085;
    STA.B $1F                            ;82B087;
    STZ.B $36                            ;82B089;
    STZ.B $37                            ;82B08B;
    LDA.B $02                            ;82B08D;
    CMP.B #$06                           ;82B08F;
    BNE CODE_82B0B4                      ;82B091;
    STZ.W $0000                          ;82B093;
    LDA.B $3A                            ;82B096;
    BNE CODE_82B09F                      ;82B098;
    LDA.B #$03                           ;82B09A;
    STA.W $0000                          ;82B09C;

CODE_82B09F:
    STZ.B $3A                            ;82B09F;
    JSL.L CODE_849086                    ;82B0A1;
    AND.W $0000                          ;82B0A5;
    STA.B $1F                            ;82B0A8;
    BNE CODE_82B0B4                      ;82B0AA;
    LDA.B $3B                            ;82B0AC;
    BNE CODE_82B0B2                      ;82B0AE;
    BEQ CODE_82B0B4                      ;82B0B0;

CODE_82B0B2:
    INC.B $1F                            ;82B0B2;

CODE_82B0B4:
    RTS                                  ;82B0B4;

CODE_82B0B5:
    STZ.B $2C                            ;82B0B5;
    JSR.W CODE_82B630                    ;82B0B7;
    LDA.W $0B9C                          ;82B0BA;
    AND.B #$1F                           ;82B0BD;
    BNE CODE_82B0CF                      ;82B0BF;
    LDA.B #$31                           ;82B0C1;
    LDX.B $02                            ;82B0C3;
    CPX.B #$06                           ;82B0C5;
    BNE CODE_82B0CB                      ;82B0C7;
    LDA.B #$32                           ;82B0C9;

CODE_82B0CB:
    JSL.L CODE_8088A2                    ;82B0CB;

CODE_82B0CF:
    DEC.B $16                            ;82B0CF;
    BNE CODE_82B0E3                      ;82B0D1;

CODE_82B0D3:
    REP #$10                             ;82B0D3;
    LDX.B $36                            ;82B0D5;
    BEQ CODE_82B0DC                      ;82B0D7;
    INC.W $000B,X                        ;82B0D9;

CODE_82B0DC:
    SEP #$10                             ;82B0DC;
    STZ.B $02                            ;82B0DE;
    STZ.B $03                            ;82B0E0;

CODE_82B0E2:
    RTS                                  ;82B0E2;

CODE_82B0E3:
    JSR.W CODE_82B5E1                    ;82B0E3;
    BEQ CODE_82B0E2                      ;82B0E6;
    BMI CODE_82B0D3                      ;82B0E8;
    REP #$10                             ;82B0EA;
    LDA.B $02                            ;82B0EC;
    CMP.B #$06                           ;82B0EE;
    BEQ CODE_82B101                      ;82B0F0;
    LDY.W #$0200                         ;82B0F2;
    LDA.W $0BD3                          ;82B0F5;
    BIT.B #$04                           ;82B0F8;
    BEQ CODE_82B117                      ;82B0FA;
    LDY.W #$01C0                         ;82B0FC;
    BRA CODE_82B117                      ;82B0FF;

CODE_82B101:
    LDX.W #$0000                         ;82B101;
    LDA.W $0BD3                          ;82B104;
    BIT.B #$04                           ;82B107;
    BEQ CODE_82B10E                      ;82B109;
    LDX.W #$0004                         ;82B10B;

CODE_82B10E:
    LDA.B $1F                            ;82B10E;
    BEQ CODE_82B114                      ;82B110;
    INX                                  ;82B112;
    INX                                  ;82B113;

CODE_82B114:
    LDY.W DATA8_86CBAE,X                 ;82B114;

CODE_82B117:
    STY.B $1A                            ;82B117;
    SEP #$10                             ;82B119;
    REP #$21                             ;82B11B;
    LDA.W $0BAC                          ;82B11D;
    ADC.B $1A                            ;82B120;
    STA.W $0BAC                          ;82B122;
    SEP #$20                             ;82B125;
    STZ.W $0000                          ;82B127;
    LDA.B $1B                            ;82B12A;
    BPL CODE_82B131                      ;82B12C;
    DEC.W $0000                          ;82B12E;

CODE_82B131:
    LDA.W $0BAE                          ;82B131;
    ADC.W $0000                          ;82B134;
    STA.W $0BAE                          ;82B137;
    RTS                                  ;82B13A;

CODE_82B13B:
    LDA.B $29                            ;82B13B;
    BNE CODE_82B146                      ;82B13D;
    STZ.B $02                            ;82B13F;
    STZ.B $03                            ;82B141;
    JMP.W CODE_82B3E3                    ;82B143;

CODE_82B146:
    LDX.B $03                            ;82B146;
    JSR.W (PTR16_82B1A6,X)               ;82B148;
    PHB                                  ;82B14B;
    REP #$30                             ;82B14C;
    LDA.B $17                            ;82B14E;
    BNE CODE_82B178                      ;82B150;
    LDX.W #$CB82                         ;82B152;
    LDY.W #$0B22                         ;82B155;
    LDA.W #$0013                         ;82B158;
    MVN $00,$86                          ;82B15B;
    LDX.W #$D000                         ;82B15E;
    LDY.W #$D1FE                         ;82B161;
    LDA.W #$00E0                         ;82B164;
    MVN $7F,$7F                          ;82B167;
    LDX.W #$D0FF                         ;82B16A;
    LDY.W #$D2FD                         ;82B16D;
    LDA.W #$00E0                         ;82B170;
    MVN $7F,$7F                          ;82B173;
    BRA CODE_82B19C                      ;82B176;

CODE_82B178:
    LDX.W #$CB96                         ;82B178;
    LDY.W #$0B22                         ;82B17B;
    LDA.W #$0013                         ;82B17E;
    MVN $00,$86                          ;82B181;
    LDX.W #$D000                         ;82B184;
    LDY.W #$D3FC                         ;82B187;
    LDA.W #$00E0                         ;82B18A;
    MVN $7F,$7F                          ;82B18D;
    LDX.W #$D0FF                         ;82B190;
    LDY.W #$D4FB                         ;82B193;
    LDA.W #$00E0                         ;82B196;
    MVN $7F,$7F                          ;82B199;

CODE_82B19C:
    SEP #$30                             ;82B19C;
    LDA.B $17                            ;82B19E;
    EOR.B #$01                           ;82B1A0;
    STA.B $17                            ;82B1A2;
    PLB                                  ;82B1A4;
    RTS                                  ;82B1A5;

PTR16_82B1A6:
    dw CODE_82B1B4                       ;82B1A6;
    dw CODE_82B1F5                       ;82B1A8;
    dw CODE_82B224                       ;82B1AA;
    dw CODE_82B254                       ;82B1AC;
    dw CODE_82B28C                       ;82B1AE;
    dw CODE_82B307                       ;82B1B0;
    dw CODE_82B31A                       ;82B1B2;

CODE_82B1B4:
    LDA.B #$02                           ;82B1B4;
    STA.B $03                            ;82B1B6;
    INC.W $0AA1                          ;82B1B8;
    INC.W $0AA8                          ;82B1BB;
    STZ.B $17                            ;82B1BE;
    STZ.B $3A                            ;82B1C0;
    REP #$20                             ;82B1C2;
    LDA.W #$FF80                         ;82B1C4;
    STA.B $1A                            ;82B1C7;
    STA.B $1C                            ;82B1C9;
    LDA.W #$0002                         ;82B1CB;
    STA.B $12                            ;82B1CE;
    LDA.B $08                            ;82B1D0;
    SEC                                  ;82B1D2;
    SBC.W #$0020                         ;82B1D3;
    SEC                                  ;82B1D6;
    SBC.W $1E50                          ;82B1D7;
    CLC                                  ;82B1DA;
    ADC.B $12                            ;82B1DB;
    STA.B $0F                            ;82B1DD;
    LDA.W $0BCF                          ;82B1DF;
    AND.W #$007F                         ;82B1E2;
    BEQ CODE_82B1ED                      ;82B1E5;
    LDA.W #$231D                         ;82B1E7;
    STA.W $0300                          ;82B1EA;

CODE_82B1ED:
    SEP #$20                             ;82B1ED;
    INC.W $00A1                          ;82B1EF;
    JMP.W CODE_82B419                    ;82B1F2;

CODE_82B1F5:
    LDA.B #$88                           ;82B1F5;
    STA.W $2123                          ;82B1F7;
    STA.W $00C6                          ;82B1FA;
    LDA.B #$08                           ;82B1FD;
    STA.W $2124                          ;82B1FF;
    STA.W $00C7                          ;82B202;
    STZ.W $2125                          ;82B205;
    STZ.W $00C8                          ;82B208;
    STZ.W $212A                          ;82B20B;
    STZ.W $212B                          ;82B20E;
    LDA.B #$07                           ;82B211;
    STA.W $212E                          ;82B213;
    STA.W $00CE                          ;82B216;
    STZ.W $212F                          ;82B219;
    STZ.W $00CF                          ;82B21C;
    LDA.B #$04                           ;82B21F;
    STA.B $03                            ;82B221;
    RTS                                  ;82B223;

CODE_82B224:
    REP #$21                             ;82B224;
    LDA.B $12                            ;82B226;
    ADC.W #$0006                         ;82B228;
    STA.B $12                            ;82B22B;
    CMP.W #$00C0                         ;82B22D;
    BCC CODE_82B239                      ;82B230;
    SEP #$20                             ;82B232;
    LDA.B #$06                           ;82B234;
    STA.B $03                            ;82B236;
    RTS                                  ;82B238;

CODE_82B239:
    LDA.B $08                            ;82B239;
    SEC                                  ;82B23B;
    SBC.W #$0020                         ;82B23C;
    SEC                                  ;82B23F;
    SBC.W $1E50                          ;82B240;
    CLC                                  ;82B243;
    ADC.B $12                            ;82B244;
    STA.B $0F                            ;82B246;
    SEP #$20                             ;82B248;
    JSR.W CODE_82B51C                    ;82B24A;
    BEQ CODE_82B251                      ;82B24D;
    INC.B $3A                            ;82B24F;

CODE_82B251:
    JMP.W CODE_82B419                    ;82B251;

CODE_82B254:
    REP #$21                             ;82B254;
    LDA.B $1A                            ;82B256;
    ADC.W #$FFFC                         ;82B258;
    STA.B $1A                            ;82B25B;
    LDA.B $1C                            ;82B25D;
    CLC                                  ;82B25F;
    ADC.W #$0004                         ;82B260;
    STA.B $1C                            ;82B263;
    CMP.W #$FFC0                         ;82B265;
    BMI CODE_82B280                      ;82B268;
    LDA.W #$FF40                         ;82B26A;
    STA.B $1A                            ;82B26D;
    LDA.W #$FFC0                         ;82B26F;
    STA.B $1C                            ;82B272;
    LDX.B #$08                           ;82B274;
    STX.B $03                            ;82B276;
    LDX.B #$00                           ;82B278;
    STX.B $1E                            ;82B27A;
    LDX.B #$01                           ;82B27C;
    STX.B $1F                            ;82B27E;

CODE_82B280:
    SEP #$20                             ;82B280;
    JSR.W CODE_82B51C                    ;82B282;
    BEQ CODE_82B289                      ;82B285;
    INC.B $3A                            ;82B287;

CODE_82B289:
    JMP.W CODE_82B419                    ;82B289;

CODE_82B28C:
    LDA.B $3A                            ;82B28C;
    BNE CODE_82B29F                      ;82B28E;
    DEC.B $1F                            ;82B290;
    BNE CODE_82B2B0                      ;82B292;
    LDX.B $1E                            ;82B294;
    INC.B $1E                            ;82B296;
    INC.B $1E                            ;82B298;
    LDA.W DATA8_86CBC2,X                 ;82B29A;
    BPL CODE_82B2A9                      ;82B29D;

CODE_82B29F:
    LDA.B #$0A                           ;82B29F;
    STA.B $03                            ;82B2A1;
    LDA.B #$10                           ;82B2A3;
    STA.B $16                            ;82B2A5;
    BRA CODE_82B2C8                      ;82B2A7;

CODE_82B2A9:
    STA.B $16                            ;82B2A9;
    LDA.W DATA8_86CBC3,X                 ;82B2AB;
    STA.B $1F                            ;82B2AE;

CODE_82B2B0:
    REP #$20                             ;82B2B0;
    LDX.B $16                            ;82B2B2;
    BNE CODE_82B2C0                      ;82B2B4;
    JSR.W CODE_82B2D4                    ;82B2B6;
    BMI CODE_82B2C8                      ;82B2B9;
    JSR.W CODE_82B2EF                    ;82B2BB;
    BRA CODE_82B2C8                      ;82B2BE;

CODE_82B2C0:
    JSR.W CODE_82B2EF                    ;82B2C0;
    BPL CODE_82B2C8                      ;82B2C3;
    JSR.W CODE_82B2D4                    ;82B2C5;

CODE_82B2C8:
    SEP #$20                             ;82B2C8;
    JSR.W CODE_82B51C                    ;82B2CA;
    BEQ CODE_82B2D1                      ;82B2CD;
    INC.B $3A                            ;82B2CF;

CODE_82B2D1:
    JMP.W CODE_82B419                    ;82B2D1;

CODE_82B2D4:
    LDA.W #$FFFC                         ;82B2D4;
    LDX.B $16                            ;82B2D7;
    BEQ CODE_82B2DE                      ;82B2D9;
    LDA.W #$0004                         ;82B2DB;

CODE_82B2DE:
    STA.W $0000                          ;82B2DE;
    LDA.B $1A                            ;82B2E1;
    CLC                                  ;82B2E3;
    ADC.W $0000                          ;82B2E4;
    CMP.W #$FE70                         ;82B2E7;
    BMI CODE_82B2EE                      ;82B2EA;
    STA.B $1A                            ;82B2EC;

CODE_82B2EE:
    RTS                                  ;82B2EE;

CODE_82B2EF:
    LDA.W #$FFFD                         ;82B2EF;
    LDX.B $16                            ;82B2F2;
    BEQ CODE_82B2F9                      ;82B2F4;
    LDA.W #$0003                         ;82B2F6;

CODE_82B2F9:
    STA.W $0000                          ;82B2F9;
    LDA.B $1C                            ;82B2FC;
    CLC                                  ;82B2FE;
    ADC.W $0000                          ;82B2FF;
    BPL CODE_82B306                      ;82B302;
    STA.B $1C                            ;82B304;

CODE_82B306:
    RTS                                  ;82B306;

CODE_82B307:
    DEC.B $16                            ;82B307;
    BNE CODE_82B310                      ;82B309;
    LDA.B #$0C                           ;82B30B;
    STA.B $03                            ;82B30D;
    RTS                                  ;82B30F;

CODE_82B310:
    JSR.W CODE_82B51C                    ;82B310;
    BEQ CODE_82B317                      ;82B313;
    INC.B $3A                            ;82B315;

CODE_82B317:
    JMP.W CODE_82B419                    ;82B317;

CODE_82B31A:
    REP #$21                             ;82B31A;
    LDA.B $1A                            ;82B31C;
    ADC.W #$0004                         ;82B31E;
    STA.B $1A                            ;82B321;
    LDA.B $1C                            ;82B323;
    CLC                                  ;82B325;
    ADC.W #$FFFC                         ;82B326;
    STA.B $1C                            ;82B329;
    CMP.B $1A                            ;82B32B;
    SEP #$20                             ;82B32D;
    BPL CODE_82B338                      ;82B32F;
    STZ.B $02                            ;82B331;
    STZ.B $03                            ;82B333;
    JMP.W CODE_82B3E3                    ;82B335;

CODE_82B338:
    JSR.W CODE_82B51C                    ;82B338;
    BEQ CODE_82B33F                      ;82B33B;
    INC.B $3A                            ;82B33D;

CODE_82B33F:
    JMP.W CODE_82B419                    ;82B33F;

CODE_82B342:
    LDX.B $03                            ;82B342;
    BNE CODE_82B35C                      ;82B344;
    INC.B $03                            ;82B346;
    LDA.B #$78                           ;82B348;
    STA.B $16                            ;82B34A;
    LDA.B #$21                           ;82B34C;
    JSL.L CODE_8088A2                    ;82B34E;
    LDA.B $02                            ;82B352;
    CMP.B #$02                           ;82B354;
    BNE CODE_82B35B                      ;82B356;
    JSR.W CODE_82B3E3                    ;82B358;

CODE_82B35B:
    RTL                                  ;82B35B;

CODE_82B35C:
    DEC.B $16                            ;82B35C;
    BNE CODE_82B39A                      ;82B35E;
    REP #$21                             ;82B360;
    LDA.B $05                            ;82B362;
    STA.W $002C                          ;82B364;
    LDA.B $08                            ;82B367;
    ADC.W #$FFE0                         ;82B369;
    STA.W $002E                          ;82B36C;
    LDA.L $7FD61A                        ;82B36F;
    STA.W $1E5E                          ;82B373;
    LDA.L $7FD61C                        ;82B376;
    STA.W $1E60                          ;82B37A;
    LDA.L $7FD61E                        ;82B37D;
    STA.W $1E68                          ;82B381;
    LDA.L $7FD620                        ;82B384;
    STA.W $1E6E                          ;82B388;
    SEP #$20                             ;82B38B;
    LDA.B #$00                           ;82B38D;
    JSL.L CODE_848011                    ;82B38F;
    JSR.W CODE_82B800                    ;82B393;
    JML.L CODE_828398                    ;82B396;

CODE_82B39A:
    REP #$21                             ;82B39A;
    LDA.W $1F25                          ;82B39C;
    AND.W #$00FF                         ;82B39F;
    CMP.W #$0020                         ;82B3A2;
    BCS CODE_82B3C5                      ;82B3A5;
    LDA.B $05                            ;82B3A7;
    STA.W $002C                          ;82B3A9;
    LDA.B $08                            ;82B3AC;
    ADC.W #$FFE0                         ;82B3AE;
    STA.W $002E                          ;82B3B1;
    LDX.B #$00                           ;82B3B4;
    LDA.W $0B9C                          ;82B3B6;
    BIT.W #$0002                         ;82B3B9;
    BEQ CODE_82B3C0                      ;82B3BC;
    LDX.B #$05                           ;82B3BE;

CODE_82B3C0:
    TXA                                  ;82B3C0;
    JSL.L CODE_848011                    ;82B3C1;

CODE_82B3C5:
    STZ.W $0000                          ;82B3C5;
    LDA.W #$FFE0                         ;82B3C8;
    STA.W $0002                          ;82B3CB;
    LDA.W #$003F                         ;82B3CE;
    STA.W $0004                          ;82B3D1;
    STA.W $0006                          ;82B3D4;
    SEP #$20                             ;82B3D7;
    LDA.B #$07                           ;82B3D9;
    STA.W $0008                          ;82B3DB;
    JSL.L CODE_84A4C6                    ;82B3DE;
    RTL                                  ;82B3E2;

CODE_82B3E3:
    STZ.W $0AA1                          ;82B3E3;
    STZ.W $0AA8                          ;82B3E6;
    STZ.W $2123                          ;82B3E9;
    STZ.W $00C6                          ;82B3EC;
    STZ.W $2124                          ;82B3EF;
    STZ.W $00C7                          ;82B3F2;
    LDA.B #$40                           ;82B3F5;
    TRB.W $1F2C                          ;82B3F7;
    LDA.W $0BCF                          ;82B3FA;
    AND.B #$7F                           ;82B3FD;
    BEQ CODE_82B40C                      ;82B3FF;
    STZ.W $0300                          ;82B401;
    LDA.B #$28                           ;82B404;
    STA.W $0301                          ;82B406;
    INC.W $00A1                          ;82B409;

CODE_82B40C:
    RTS                                  ;82B40C;

CODE_82B40D:
    LDA.W $1E50                          ;82B40D;
    SEC                                  ;82B410;
    SBC.B $34                            ;82B411;
    STA.W $00C4                          ;82B413;
    RTS                                  ;82B416;

CODE_82B417:
    PLP                                  ;82B417;
    RTS                                  ;82B418;

CODE_82B419:
    PHP                                  ;82B419;
    REP #$30                             ;82B41A;
    LDX.W #$0000                         ;82B41C;
    LDY.W #$0006                         ;82B41F;
    LDA.B $1A                            ;82B422;
    CMP.W #$FF00                         ;82B424;
    BCC CODE_82B42F                      ;82B427;
    LDX.W #$0003                         ;82B429;
    LDY.W #$000A                         ;82B42C;

CODE_82B42F:
    STX.W $0000                          ;82B42F;
    STY.W $0002                          ;82B432;
    STZ.B $33                            ;82B435;
    LDA.B $05                            ;82B437;
    SEC                                  ;82B439;
    SBC.W $1E4D                          ;82B43A;
    CLC                                  ;82B43D;
    ADC.W $0000                          ;82B43E;
    STA.B $34                            ;82B441;
    LDA.B $08                            ;82B443;
    SEC                                  ;82B445;
    SBC.W #$0020                         ;82B446;
    SEC                                  ;82B449;
    SBC.W $1E50                          ;82B44A;
    CLC                                  ;82B44D;
    ADC.W $0002                          ;82B44E;
    STA.B $36                            ;82B451;
    BMI CODE_82B417                      ;82B453;
    CMP.W #$00E8                         ;82B455;
    BPL CODE_82B417                      ;82B458;
    LDX.W #$0000                         ;82B45A;

CODE_82B45D:
    LDA.W #$FFFF                         ;82B45D;
    STA.L $7FD000,X                      ;82B460;
    LDA.W #$0000                         ;82B464;
    STA.L $7FD0FF,X                      ;82B467;
    INX                                  ;82B46B;
    INX                                  ;82B46C;
    CPX.B $36                            ;82B46D;
    BCC CODE_82B45D                      ;82B46F;
    LDA.W #$FFFF                         ;82B471;
    STA.L $7FD000,X                      ;82B474;
    LDA.W #$0000                         ;82B478;
    STA.L $7FD0FF,X                      ;82B47B;
    LDX.B $36                            ;82B47F;

CODE_82B481:
    LDA.B $33                            ;82B481;
    CLC                                  ;82B483;
    ADC.B $1A                            ;82B484;
    STA.B $33                            ;82B486;
    SEP #$20                             ;82B488;
    LDA.B $35                            ;82B48A;
    ADC.B #$FF                           ;82B48C;
    STA.B $35                            ;82B48E;
    REP #$20                             ;82B490;
    LDA.B $34                            ;82B492;
    BPL CODE_82B49B                      ;82B494;
    LDA.W #$0000                         ;82B496;
    BRA CODE_82B4A3                      ;82B499;

CODE_82B49B:
    CMP.W #$0100                         ;82B49B;
    BCC CODE_82B4A3                      ;82B49E;
    LDA.W #$00FF                         ;82B4A0;

CODE_82B4A3:
    STA.L $7FD000,X                      ;82B4A3;
    INX                                  ;82B4A7;
    CPX.W #$00E8                         ;82B4A8;
    BCS CODE_82B4BF                      ;82B4AB;
    CPX.B $0F                            ;82B4AD;
    BCC CODE_82B481                      ;82B4AF;
    LDA.W #$FFFF                         ;82B4B1;

CODE_82B4B4:
    STA.L $7FD000,X                      ;82B4B4;
    INX                                  ;82B4B8;
    INX                                  ;82B4B9;
    CPX.W #$00E8                         ;82B4BA;
    BCC CODE_82B4B4                      ;82B4BD;

CODE_82B4BF:
    LDA.W #$FFFF                         ;82B4BF;
    STA.L $7FD0E8                        ;82B4C2;
    STZ.B $33                            ;82B4C6;
    LDA.B $05                            ;82B4C8;
    SEC                                  ;82B4CA;
    SBC.W $1E4D                          ;82B4CB;
    CLC                                  ;82B4CE;
    ADC.W $0000                          ;82B4CF;
    STA.B $34                            ;82B4D2;
    LDX.B $36                            ;82B4D4;

CODE_82B4D6:
    LDA.B $33                            ;82B4D6;
    ADC.B $1C                            ;82B4D8;
    STA.B $33                            ;82B4DA;
    SEP #$20                             ;82B4DC;
    LDA.B $35                            ;82B4DE;
    ADC.B #$FF                           ;82B4E0;
    STA.B $35                            ;82B4E2;
    REP #$20                             ;82B4E4;
    LDA.B $34                            ;82B4E6;
    BPL CODE_82B4F6                      ;82B4E8;
    LDA.W #$FFFF                         ;82B4EA;
    STA.L $7FD000,X                      ;82B4ED;
    LDA.W #$0000                         ;82B4F1;
    BRA CODE_82B4FE                      ;82B4F4;

CODE_82B4F6:
    CMP.W #$0100                         ;82B4F6;
    BCC CODE_82B4FE                      ;82B4F9;
    LDA.W #$00FF                         ;82B4FB;

CODE_82B4FE:
    STA.L $7FD0FF,X                      ;82B4FE;
    INX                                  ;82B502;
    CPX.W #$00E8                         ;82B503;
    BCS CODE_82B51A                      ;82B506;
    CPX.B $0F                            ;82B508;
    BCC CODE_82B4D6                      ;82B50A;
    LDA.W #$0000                         ;82B50C;

CODE_82B50F:
    STA.L $7FD0FF,X                      ;82B50F;
    INX                                  ;82B513;
    INX                                  ;82B514;
    CPX.W #$00E8                         ;82B515;
    BCC CODE_82B50F                      ;82B518;

CODE_82B51A:
    PLP                                  ;82B51A;
    RTS                                  ;82B51B;

CODE_82B51C:
    LDA.W $0C32                          ;82B51C;
    BNE CODE_82B588                      ;82B51F;
    REP #$20                             ;82B521;
    JSR.W CODE_82B58B                    ;82B523;
    JSR.W CODE_82B5B6                    ;82B526;
    LDA.B $05                            ;82B529;
    STA.W $0000                          ;82B52B;
    LDA.B $08                            ;82B52E;
    CLC                                  ;82B530;
    ADC.W #$FFE0                         ;82B531;
    STA.W $0002                          ;82B534;
    LDA.W $0BAD                          ;82B537;
    CLC                                  ;82B53A;
    ADC.W #$0008                         ;82B53B;
    STA.W $0004                          ;82B53E;
    LDA.W $0BB0                          ;82B541;
    CLC                                  ;82B544;
    ADC.W #$0010                         ;82B545;
    STA.W $0006                          ;82B548;
    SEP #$20                             ;82B54B;
    JSL.L CODE_84A097                    ;82B54D;
    CMP.B $38                            ;82B551;
    BEQ CODE_82B557                      ;82B553;
    BCS CODE_82B588                      ;82B555;

CODE_82B557:
    REP #$21                             ;82B557;
    LDA.W $0BAD                          ;82B559;
    ADC.W #$FFF8                         ;82B55C;
    STA.W $0004                          ;82B55F;
    LDA.W $0BB0                          ;82B562;
    CLC                                  ;82B565;
    ADC.W #$FFF0                         ;82B566;
    STA.W $0006                          ;82B569;
    SEP #$20                             ;82B56C;
    JSL.L CODE_84A097                    ;82B56E;
    CMP.B $39                            ;82B572;
    BCC CODE_82B588                      ;82B574;
    REP #$20                             ;82B576;
    LDA.W $0BB0                          ;82B578;
    SEC                                  ;82B57B;
    SBC.W $1E50                          ;82B57C;
    CMP.B $0F                            ;82B57F;
    SEP #$20                             ;82B581;
    BCS CODE_82B588                      ;82B583;
    LDA.B #$01                           ;82B585;
    RTS                                  ;82B587;

CODE_82B588:
    LDA.B #$00                           ;82B588;
    RTS                                  ;82B58A;

CODE_82B58B:
    LDY.W #$A50F                         ;82B58B;
    INC A                                ;82B58E;
    CMP.W #$FFE0                         ;82B58F;
    BPL CODE_82B595                      ;82B592;
    INY                                  ;82B594;

CODE_82B595:
    CMP.W #$FFA0                         ;82B595;
    BPL CODE_82B59B                      ;82B598;
    INY                                  ;82B59A;

CODE_82B59B:
    CMP.W #$FF60                         ;82B59B;
    BPL CODE_82B5A1                      ;82B59E;
    INY                                  ;82B5A0;

CODE_82B5A1:
    CMP.W #$FF20                         ;82B5A1;
    BPL CODE_82B5A7                      ;82B5A4;
    INY                                  ;82B5A6;

CODE_82B5A7:
    CMP.W #$FEA0                         ;82B5A7;
    BPL CODE_82B5AD                      ;82B5AA;
    INY                                  ;82B5AC;

CODE_82B5AD:
    CMP.W #$FE71                         ;82B5AD;
    BPL CODE_82B5B3                      ;82B5B0;
    INY                                  ;82B5B2;

CODE_82B5B3:
    STY.B $38                            ;82B5B3;
    RTS                                  ;82B5B5;

CODE_82B5B6:
    LDY.W #$A517                         ;82B5B6;
    TRB.W $71C9                          ;82B5B9;
    INC.W $0130,X                        ;82B5BC;
    DEY                                  ;82B5BF;
    CMP.W #$FEA0                         ;82B5C0;
    BMI CODE_82B5C6                      ;82B5C3;
    DEY                                  ;82B5C5;

CODE_82B5C6:
    CMP.W #$FF20                         ;82B5C6;
    BMI CODE_82B5CC                      ;82B5C9;
    DEY                                  ;82B5CB;

CODE_82B5CC:
    CMP.W #$FF60                         ;82B5CC;
    BMI CODE_82B5D2                      ;82B5CF;
    DEY                                  ;82B5D1;

CODE_82B5D2:
    CMP.W #$FFA0                         ;82B5D2;
    BMI CODE_82B5D8                      ;82B5D5;
    DEY                                  ;82B5D7;

CODE_82B5D8:
    CMP.W #$FFE0                         ;82B5D8;
    BMI CODE_82B5DE                      ;82B5DB;
    DEY                                  ;82B5DD;

CODE_82B5DE:
    STY.B $39                            ;82B5DE;
    RTS                                  ;82B5E0;

CODE_82B5E1:
    REP #$21                             ;82B5E1;
    LDX.W $0C32                          ;82B5E3;
    BNE CODE_82B626                      ;82B5E6;
    LDX.W $1F0C                          ;82B5E8;
    BNE CODE_82B626                      ;82B5EB;
    LDA.B $05                            ;82B5ED;
    ADC.W #$FF60                         ;82B5EF;
    CMP.W $0BAD                          ;82B5F2;
    BCS CODE_82B62B                      ;82B5F5;
    LDA.B $05                            ;82B5F7;
    CLC                                  ;82B5F9;
    ADC.W #$0010                         ;82B5FA;
    STA.W $0000                          ;82B5FD;
    LDA.B $08                            ;82B600;
    CLC                                  ;82B602;
    ADC.W #$0009                         ;82B603;
    STA.W $0002                          ;82B606;
    LDA.W $0BAD                          ;82B609;
    STA.W $0004                          ;82B60C;
    LDA.W $0BB0                          ;82B60F;
    STA.W $0006                          ;82B612;
    SEP #$20                             ;82B615;
    JSL.L CODE_84A097                    ;82B617;
    CMP.B #$1C                           ;82B61B;
    BCS CODE_82B626                      ;82B61D;
    CMP.B #$15                           ;82B61F;
    BCC CODE_82B626                      ;82B621;
    LDA.B #$01                           ;82B623;
    RTS                                  ;82B625;

CODE_82B626:
    SEP #$20                             ;82B626;
    LDA.B #$00                           ;82B628;
    RTS                                  ;82B62A;

CODE_82B62B:
    SEP #$20                             ;82B62B;
    LDA.B #$FF                           ;82B62D;
    RTS                                  ;82B62F;

CODE_82B630:
    LDA.W $0B9C                          ;82B630;
    AND.B #$03                           ;82B633;
    BNE CODE_82B67C                      ;82B635;
    JSL.L CODE_8282D3                    ;82B637;
    BNE CODE_82B67A                      ;82B63B;
    INC.W $0000,X                        ;82B63D;
    LDA.B #$1B                           ;82B640;
    STA.W $000A,X                        ;82B642;
    LDY.W #$FFFF                         ;82B645;
    LDA.B $02                            ;82B648;
    CMP.B #$06                           ;82B64A;
    BEQ CODE_82B655                      ;82B64C;
    JSL.L CODE_849086                    ;82B64E;
    AND.B #$1C                           ;82B652;
    TAY                                  ;82B654;

CODE_82B655:
    TYA                                  ;82B655;
    STA.W $000B,X                        ;82B656;
    REP #$21                             ;82B659;
    JSL.L CODE_849086                    ;82B65B;
    AND.W #$000F                         ;82B65F;
    ADC.B $08                            ;82B662;
    STA.W $0008,X                        ;82B664;
    JSL.L CODE_849086                    ;82B667;
    AND.W #$0007                         ;82B66B;
    CLC                                  ;82B66E;
    ADC.W #$FFF4                         ;82B66F;
    CLC                                  ;82B672;
    ADC.B $05                            ;82B673;
    STA.W $0005,X                        ;82B675;
    SEP #$20                             ;82B678;

CODE_82B67A:
    SEP #$10                             ;82B67A;

CODE_82B67C:
    RTS                                  ;82B67C;

CODE_82B67D:
    JSL.L CODE_8282D3                    ;82B67D;
    INC.W $0000,X                        ;82B681;
    LDA.B #$1C                           ;82B684;
    STA.W $000A,X                        ;82B686;
    STX.B $1A                            ;82B689;
    REP #$21                             ;82B68B;
    TDC                                  ;82B68D;
    STA.W $000C,X                        ;82B68E;
    LDA.B $05                            ;82B691;
    ADC.W #$0032                         ;82B693;
    STA.W $0005,X                        ;82B696;
    LDA.B $08                            ;82B699;
    CLC                                  ;82B69B;
    ADC.W #$0008                         ;82B69C;
    STA.W $0008,X                        ;82B69F;
    SEP #$30                             ;82B6A2;
    RTS                                  ;82B6A4;

CODE_82B6A5:
    JSL.L CODE_849086                    ;82B6A5;
    AND.B #$07                           ;82B6A9;
    TAY                                  ;82B6AB;
    LDA.W DATA8_86CBCD,Y                 ;82B6AC;
    STA.W $0000                          ;82B6AF;
    LDA.B #$03                           ;82B6B2;
    STA.W $0001                          ;82B6B4;

CODE_82B6B7:
    JSL.L CODE_828358                    ;82B6B7;
    BNE CODE_82B703                      ;82B6BB;
    REP #$20                             ;82B6BD;
    TDC                                  ;82B6BF;
    STA.W $000C,X                        ;82B6C0;
    SEP #$20                             ;82B6C3;
    INC.W $0000,X                        ;82B6C5;
    LDA.B #$0F                           ;82B6C8;
    STA.W $000A,X                        ;82B6CA;
    LDA.W $0000                          ;82B6CD;
    STA.W $0002,X                        ;82B6D0;
    LDA.W $0001                          ;82B6D3;
    STA.W $000B,X                        ;82B6D6;
    REP #$20                             ;82B6D9;
    AND.W #$00FF                         ;82B6DB;
    ASL A                                ;82B6DE;
    TAY                                  ;82B6DF;
    LDA.W DATA8_86CBD5,Y                 ;82B6E0;
    AND.W #$00FF                         ;82B6E3;
    CLC                                  ;82B6E6;
    ADC.B $05                            ;82B6E7;
    STA.W $0005,X                        ;82B6E9;
    LDA.W DATA8_86CBD6,Y                 ;82B6EC;
    AND.W #$00FF                         ;82B6EF;
    CLC                                  ;82B6F2;
    ADC.B $08                            ;82B6F3;
    SEC                                  ;82B6F5;
    SBC.W #$0020                         ;82B6F6;
    STA.W $0008,X                        ;82B6F9;
    SEP #$20                             ;82B6FC;
    DEC.W $0001                          ;82B6FE;
    BPL CODE_82B6B7                      ;82B701;

CODE_82B703:
    SEP #$10                             ;82B703;
    RTS                                  ;82B705;

CODE_82B706:
    JSL.L CODE_8282B9                    ;82B706;
    INC.W $0000,X                        ;82B70A;
    LDA.B #$0A                           ;82B70D;
    STA.W $000A,X                        ;82B70F;
    STA.W $002B,X                        ;82B712;
    STX.B $1C                            ;82B715;
    REP #$21                             ;82B717;
    TDC                                  ;82B719;
    STA.W $000C,X                        ;82B71A;
    LDA.B $05                            ;82B71D;
    ADC.W #$000E                         ;82B71F;
    STA.W $0005,X                        ;82B722;
    LDA.B $08                            ;82B725;
    CLC                                  ;82B727;
    ADC.W #$FFEF                         ;82B728;
    STA.W $0008,X                        ;82B72B;
    SEP #$30                             ;82B72E;
    RTS                                  ;82B730;

CODE_82B731:
    JSL.L CODE_8282D3                    ;82B731;
    INC.W $0000,X                        ;82B735;
    LDA.B #$1E                           ;82B738;
    STA.W $000A,X                        ;82B73A;
    STX.B $0F                            ;82B73D;
    REP #$21                             ;82B73F;
    TDC                                  ;82B741;
    STA.W $000C,X                        ;82B742;
    LDA.B $05                            ;82B745;
    ADC.W #$0000                         ;82B747;
    STA.W $0005,X                        ;82B74A;
    LDA.B $08                            ;82B74D;
    CLC                                  ;82B74F;
    ADC.W #$0004                         ;82B750;
    STA.W $0008,X                        ;82B753;
    SEP #$30                             ;82B756;
    RTS                                  ;82B758;

CODE_82B759:
    REP #$30                             ;82B759;
    LDX.B $1A                            ;82B75B;
    LDA.W $0007,X                        ;82B75D;
    SEC                                  ;82B760;
    SBC.W #$0108                         ;82B761;
    STA.W $0007,X                        ;82B764;
    SEP #$30                             ;82B767;
    LDA.W $0009,X                        ;82B769;
    SBC.B #$00                           ;82B76C;
    STA.W $0009,X                        ;82B76E;
    REP #$30                             ;82B771;
    LDX.B $1C                            ;82B773;
    LDA.W $0007,X                        ;82B775;
    SEC                                  ;82B778;
    SBC.W #$0108                         ;82B779;
    STA.W $0007,X                        ;82B77C;
    SEP #$30                             ;82B77F;
    LDA.W $0009,X                        ;82B781;
    SBC.B #$00                           ;82B784;
    STA.W $0009,X                        ;82B786;
    REP #$30                             ;82B789;
    LDX.B $0F                            ;82B78B;
    LDA.W $0007,X                        ;82B78D;
    SEC                                  ;82B790;
    SBC.W #$0108                         ;82B791;
    STA.W $0007,X                        ;82B794;
    SEP #$30                             ;82B797;
    LDA.W $0009,X                        ;82B799;
    SBC.B #$00                           ;82B79C;
    STA.W $0009,X                        ;82B79E;
    RTS                                  ;82B7A1;

CODE_82B7A2:
    LDA.W $0BCF                          ;82B7A2;
    AND.B #$7F                           ;82B7A5;
    BEQ CODE_82B7C0                      ;82B7A7;
    REP #$20                             ;82B7A9;
    LDX.B #$1E                           ;82B7AB;

CODE_82B7AD:
    CPX.B #$02                           ;82B7AD;
    BEQ CODE_82B7B7                      ;82B7AF;
    LDA.W $0400,X                        ;82B7B1;
    STA.W $0320,X                        ;82B7B4;

CODE_82B7B7:
    DEX                                  ;82B7B7;
    DEX                                  ;82B7B8;
    BPL CODE_82B7AD                      ;82B7B9;
    SEP #$20                             ;82B7BB;
    INC.W $00A1                          ;82B7BD;

CODE_82B7C0:
    RTS                                  ;82B7C0;

CODE_82B7C1:
    JSR.W CODE_82B7F2                    ;82B7C1;
    REP #$20                             ;82B7C4;
    LDY.B #$1E                           ;82B7C6;

CODE_82B7C8:
    LDA.L $7FD5FA,X                      ;82B7C8;
    STA.W $0320,Y                        ;82B7CC;
    DEX                                  ;82B7CF;
    DEX                                  ;82B7D0;
    DEY                                  ;82B7D1;
    DEY                                  ;82B7D2;
    BPL CODE_82B7C8                      ;82B7D3;
    SEP #$20                             ;82B7D5;
    INC.W $00A1                          ;82B7D7;
    RTS                                  ;82B7DA;

CODE_82B7DB:
    JSR.W CODE_82B7F2                    ;82B7DB;
    REP #$20                             ;82B7DE;
    LDY.B #$1E                           ;82B7E0;

CODE_82B7E2:
    LDA.W $0320,Y                        ;82B7E2;
    STA.L $7FD5FA,X                      ;82B7E5;
    DEX                                  ;82B7E9;
    DEX                                  ;82B7EA;
    DEY                                  ;82B7EB;
    DEY                                  ;82B7EC;
    BPL CODE_82B7E2                      ;82B7ED;
    SEP #$20                             ;82B7EF;
    RTS                                  ;82B7F1;

CODE_82B7F2:
    LDA.B $0B                            ;82B7F2;
    AND.B #$7F                           ;82B7F4;
    ASL A                                ;82B7F6;
    ASL A                                ;82B7F7;
    ASL A                                ;82B7F8;
    ASL A                                ;82B7F9;
    ASL A                                ;82B7FA;
    CLC                                  ;82B7FB;
    ADC.B #$1E                           ;82B7FC;
    TAX                                  ;82B7FE;
    RTS                                  ;82B7FF;

CODE_82B800:
    LDX.B #$02                           ;82B800;
    LDY.B #$04                           ;82B802;

CODE_82B804:
    REP #$20                             ;82B804;
    LDA.W DATA8_86CBDD,Y                 ;82B806;
    CLC                                  ;82B809;
    ADC.B $05                            ;82B80A;
    STA.B $05                            ;82B80C;
    LDA.W DATA8_86CBDF,Y                 ;82B80E;
    CLC                                  ;82B811;
    ADC.B $08                            ;82B812;
    SEC                                  ;82B814;
    SBC.W #$0020                         ;82B815;
    STA.B $08                            ;82B818;
    SEP #$20                             ;82B81A;
    LDA.W DATA8_86CBE9,X                 ;82B81C;
    PHX                                  ;82B81F;
    PHY                                  ;82B820;
    JSL.L CODE_84A37F                    ;82B821;
    PLY                                  ;82B825;
    PLX                                  ;82B826;
    DEY                                  ;82B827;
    DEY                                  ;82B828;
    DEX                                  ;82B829;
    BPL CODE_82B804                      ;82B82A;
    SEP #$20                             ;82B82C;
    RTS                                  ;82B82E;

CODE_82B82F:
    LDA.W $0B9C                          ;82B82F;
    AND.B #$03                           ;82B832;
    BNE CODE_82B85F                      ;82B834;
    JSL.L CODE_8282D3                    ;82B836;
    BNE CODE_82B85D                      ;82B83A;
    INC.W $0000,X                        ;82B83C;
    LDA.B #$20                           ;82B83F;
    STA.W $000A,X                        ;82B841;
    REP #$21                             ;82B844;
    LDA.B $08                            ;82B846;
    ADC.W #$0030                         ;82B848;
    STA.W $0008,X                        ;82B84B;
    JSL.L CODE_849086                    ;82B84E;
    AND.W #$003F                         ;82B852;
    CLC                                  ;82B855;
    ADC.B $05                            ;82B856;
    STA.W $0005,X                        ;82B858;
    SEP #$20                             ;82B85B;

CODE_82B85D:
    SEP #$10                             ;82B85D;

CODE_82B85F:
    RTS                                  ;82B85F;
    JSL.L CODE_828358                    ;82B860;
    BNE CODE_82B88C                      ;82B864;
    INC.W $0000,X                        ;82B866;
    LDA.B #$12                           ;82B869;
    STA.W $000A,X                        ;82B86B;
    STZ.W $000B,X                        ;82B86E;
    STX.B $36                            ;82B871;
    REP #$21                             ;82B873;
    LDA.B $05                            ;82B875;
    ADC.W #$FFF8                         ;82B877;
    STA.W $0005,X                        ;82B87A;
    LDA.B $08                            ;82B87D;
    CLC                                  ;82B87F;
    ADC.W #$0007                         ;82B880;
    STA.W $0008,X                        ;82B883;
    TDC                                  ;82B886;
    STA.W $000C,X                        ;82B887;
    SEP #$22                             ;82B88A;

CODE_82B88C:
    SEP #$10                             ;82B88C;
    RTS                                  ;82B88E;

CODE_82B88F:
    LDA.B $33                            ;82B88F;
    TSB.B $11                            ;82B891;
    JSL.L CODE_82806E                    ;82B893;
    BCS CODE_82B89E                      ;82B897;

CODE_82B899:
    LDX.B $01                            ;82B899;
    JMP.W (PTR16_82B8CC,X)               ;82B89B;

CODE_82B89E:
    LDA.B $01                            ;82B89E;
    CMP.B #$0E                           ;82B8A0;
    BEQ CODE_82B899                      ;82B8A2;
    REP #$20                             ;82B8A4;
    LDA.W $0BAD                          ;82B8A6;
    SEC                                  ;82B8A9;
    SBC.B $05                            ;82B8AA;
    BCC CODE_82B8CB                      ;82B8AC;
    CMP.W #$0200                         ;82B8AE;
    BCC CODE_82B8CB                      ;82B8B1;
    REP #$30                             ;82B8B3;
    LDX.B $39                            ;82B8B5;
    STZ.W $0000,X                        ;82B8B7;
    STZ.W $0002,X                        ;82B8BA;
    LDA.B $3B                            ;82B8BD;
    STA.W $1E5E                          ;82B8BF;
    LDA.B $31                            ;82B8C2;
    STA.W $1E60                          ;82B8C4;
    JML.L CODE_828387                    ;82B8C7;

CODE_82B8CB:
    RTL                                  ;82B8CB;

PTR16_82B8CC:
    dw CODE_82B8DF                       ;82B8CC;
    dw CODE_82B95D                       ;82B8CE;
    dw CODE_82B972                       ;82B8D0;
    dw CODE_82B9A5                       ;82B8D2;
    dw CODE_82B9C1                       ;82B8D4;
    dw CODE_82BA16                       ;82B8D6;
    dw CODE_82BA48                       ;82B8D8;
    dw CODE_82BA90                       ;82B8DA;

CODE_82B8DC:
    STZ.B $01                            ;82B8DC;
    RTL                                  ;82B8DE;

CODE_82B8DF:
    JSL.L CODE_82827D                    ;82B8DF;
    STZ.B $3E                            ;82B8E3;
    REP #$20                             ;82B8E5;
    LDA.B $05                            ;82B8E7;
    CMP.W $0BAD                          ;82B8E9;
    SEP #$20                             ;82B8EC;
    BCS CODE_82B8F4                      ;82B8EE;
    JML.L CODE_828387                    ;82B8F0;

CODE_82B8F4:
    JSL.L CODE_8282D3                    ;82B8F4;
    BNE CODE_82B8DC                      ;82B8F8;
    INC.W $0000,X                        ;82B8FA;
    LDA.B #$1F                           ;82B8FD;
    STA.W $000A,X                        ;82B8FF;
    REP #$20                             ;82B902;
    TDC                                  ;82B904;
    STA.W $000C,X                        ;82B905;
    STX.B $39                            ;82B908;
    STZ.W $0005,X                        ;82B90A;
    STZ.W $0008,X                        ;82B90D;
    SEP #$30                             ;82B910;
    LDA.B $11                            ;82B912;
    AND.B #$0E                           ;82B914;
    STA.B $33                            ;82B916;
    LDA.B #$04                           ;82B918;
    STA.B $12                            ;82B91A;
    LDA.B #$20                           ;82B91C;
    STA.B $27                            ;82B91E;
    LDA.B #$04                           ;82B920;
    STA.B $26                            ;82B922;
    LDA.B #$FF                           ;82B924;
    STA.B $2F                            ;82B926;
    REP #$20                             ;82B928;
    LDA.W #$CC18                         ;82B92A;
    STA.B $20                            ;82B92D;
    LDA.W #$FA00                         ;82B92F;
    STA.B $1C                            ;82B932;
    LDA.W #$00F0                         ;82B934;
    STA.B $08                            ;82B937;
    LDA.W $1E5E                          ;82B939;
    STA.B $3B                            ;82B93C;
    LDA.W $1E60                          ;82B93E;
    STA.B $31                            ;82B941;
    LDA.B $05                            ;82B943;
    SEC                                  ;82B945;
    SBC.W #$00F0                         ;82B946;
    STA.W $1E5E                          ;82B949;
    STA.W $1E60                          ;82B94C;
    SEP #$20                             ;82B94F;
    STZ.B $07                            ;82B951;
    LDA.B #$18                           ;82B953;
    STA.B $1E                            ;82B955;
    LDA.B #$00                           ;82B957;
    JML.L CODE_848F07                    ;82B959;

CODE_82B95D:
    REP #$20                             ;82B95D;
    LDA.B $05                            ;82B95F;
    SEC                                  ;82B961;
    SBC.W #$0080                         ;82B962;
    SEC                                  ;82B965;
    SBC.W $0BAD                          ;82B966;
    SEP #$20                             ;82B969;
    BCS CODE_82B971                      ;82B96B;
    LDA.B #$04                           ;82B96D;
    STA.B $01                            ;82B96F;

CODE_82B971:
    RTL                                  ;82B971;

CODE_82B972:
    JSL.L CODE_8281FB                    ;82B972;
    JSL.L CODE_8491BE                    ;82B976;
    LDA.B $2B                            ;82B97A;
    AND.B #$04                           ;82B97C;
    BEQ CODE_82B99B                      ;82B97E;
    REP #$20                             ;82B980;
    LDA.B $08                            ;82B982;
    SEC                                  ;82B984;
    SBC.W #$000C                         ;82B985;
    STA.B $35                            ;82B988;
    LDA.W #$0040                         ;82B98A;
    STA.B $1C                            ;82B98D;
    DEC.B $08                            ;82B98F;
    SEP #$20                             ;82B991;
    LDA.B #$06                           ;82B993;
    STA.B $01                            ;82B995;
    LDA.B #$01                           ;82B997;
    STA.B $34                            ;82B999;

CODE_82B99B:
    SEP #$20                             ;82B99B;
    JSL.L CODE_848EEA                    ;82B99D;
    JML.L CODE_82808F                    ;82B9A1;

CODE_82B9A5:
    DEC.B $34                            ;82B9A5;
    BNE CODE_82B9B7                      ;82B9A7;
    JSL.L CODE_849086                    ;82B9A9;
    AND.B #$1F                           ;82B9AD;
    TAX                                  ;82B9AF;
    LDA.W DATA16_86CBF8,X                ;82B9B0;
    STA.B $01                            ;82B9B3;
    STZ.B $02                            ;82B9B5;

CODE_82B9B7:
    JSR.W CODE_82BBD1                    ;82B9B7;
    JSL.L CODE_848EEA                    ;82B9BA;
    JMP.W CODE_82BC4A                    ;82B9BE;

CODE_82B9C1:
    LDA.B $02                            ;82B9C1;
    BNE CODE_82B9CB                      ;82B9C3;
    LDA.B #$F1                           ;82B9C5;
    STA.B $34                            ;82B9C7;
    INC.B $02                            ;82B9C9;

CODE_82B9CB:
    DEC.B $34                            ;82B9CB;
    LDA.B $34                            ;82B9CD;
    AND.B #$03                           ;82B9CF;
    BNE CODE_82BA0C                      ;82B9D1;
    LDA.B #$1D                           ;82B9D3;
    JSL.L CODE_8088A2                    ;82B9D5;
    JSL.L CODE_828358                    ;82B9D9;
    BNE CODE_82B9FE                      ;82B9DD;
    INC.W $0000,X                        ;82B9DF;
    LDA.B #$0D                           ;82B9E2;
    STA.W $000A,X                        ;82B9E4;
    STZ.W $000B,X                        ;82B9E7;
    REP #$20                             ;82B9EA;
    LDA.B $05                            ;82B9EC;
    SEC                                  ;82B9EE;
    SBC.W #$0034                         ;82B9EF;
    STA.W $0005,X                        ;82B9F2;
    LDA.B $08                            ;82B9F5;
    CLC                                  ;82B9F7;
    ADC.W #$001C                         ;82B9F8;
    STA.W $0008,X                        ;82B9FB;

CODE_82B9FE:
    SEP #$30                             ;82B9FE;
    LDA.B $34                            ;82BA00;
    BNE CODE_82BA0C                      ;82BA02;
    LDA.B #$10                           ;82BA04;
    STA.B $34                            ;82BA06;
    LDA.B #$06                           ;82BA08;
    STA.B $01                            ;82BA0A;

CODE_82BA0C:
    JSR.W CODE_82BBD1                    ;82BA0C;
    JSL.L CODE_848EEA                    ;82BA0F;
    JMP.W CODE_82BC4A                    ;82BA13;

CODE_82BA16:
    LDA.B $02                            ;82BA16;
    BNE CODE_82BA29                      ;82BA18;
    INC.B $02                            ;82BA1A;
    LDA.B #$3C                           ;82BA1C;
    STA.B $34                            ;82BA1E;
    JSR.W CODE_82BBF6                    ;82BA20;
    LDA.B #$1E                           ;82BA23;
    JSL.L CODE_8088A2                    ;82BA25;

CODE_82BA29:
    DEC.B $34                            ;82BA29;
    BNE CODE_82BA3E                      ;82BA2B;
    JSR.W CODE_82BBF6                    ;82BA2D;
    LDA.B #$1E                           ;82BA30;
    JSL.L CODE_8088A2                    ;82BA32;
    LDA.B #$3C                           ;82BA36;
    STA.B $34                            ;82BA38;
    LDA.B #$06                           ;82BA3A;
    STA.B $01                            ;82BA3C;

CODE_82BA3E:
    JSR.W CODE_82BBD1                    ;82BA3E;
    JSL.L CODE_848EEA                    ;82BA41;
    JMP.W CODE_82BC4A                    ;82BA45;

CODE_82BA48:
    LDA.B $02                            ;82BA48;
    BNE CODE_82BA65                      ;82BA4A;
    INC.B $02                            ;82BA4C;
    LDA.B #$78                           ;82BA4E;
    STA.B $34                            ;82BA50;
    LDA.B #$27                           ;82BA52;
    STA.B $0A                            ;82BA54;
    JSL.L CODE_84A1D0                    ;82BA56;
    LDA.B #$22                           ;82BA5A;
    STA.B $0A                            ;82BA5C;
    CPY.B #$03                           ;82BA5E;
    BCS CODE_82BA65                      ;82BA60;
    JSR.W CODE_82BC22                    ;82BA62;

CODE_82BA65:
    DEC.B $34                            ;82BA65;
    BNE CODE_82BA86                      ;82BA67;
    LDA.B #$27                           ;82BA69;
    STA.B $0A                            ;82BA6B;
    JSL.L CODE_84A1D0                    ;82BA6D;
    LDA.B #$22                           ;82BA71;
    STA.B $0A                            ;82BA73;
    CPY.B #$03                           ;82BA75;
    BCS CODE_82BA7C                      ;82BA77;
    JSR.W CODE_82BC22                    ;82BA79;

CODE_82BA7C:
    LDA.B #$06                           ;82BA7C;
    STA.B $01                            ;82BA7E;
    STZ.B $02                            ;82BA80;
    LDA.B #$3C                           ;82BA82;
    STA.B $34                            ;82BA84;

CODE_82BA86:
    JSR.W CODE_82BBD1                    ;82BA86;
    JSL.L CODE_848EEA                    ;82BA89;
    JMP.W CODE_82BC4A                    ;82BA8D;

CODE_82BA90:
    JSR.W CODE_82BD51                    ;82BA90;
    LDX.B $02                            ;82BA93;
    JMP.W (PTR16_82BA98,X)               ;82BA95;

PTR16_82BA98:
    dw CODE_82BAA0                       ;82BA98;
    dw CODE_82BAC3                       ;82BA9A;
    dw CODE_82BB24                       ;82BA9C;
    dw CODE_82BB4A                       ;82BA9E;

CODE_82BAA0:
    LDA.B #$02                           ;82BAA0;
    STA.B $02                            ;82BAA2;
    LDA.B #$21                           ;82BAA4;
    JSL.L CODE_8088A2                    ;82BAA6;
    REP #$20                             ;82BAAA;
    LDA.W #$CC22                         ;82BAAC;
    STA.B $20                            ;82BAAF;
    STZ.B $1A                            ;82BAB1;
    STZ.B $1C                            ;82BAB3;
    SEP #$20                             ;82BAB5;
    LDA.B #$20                           ;82BAB7;
    STA.B $1E                            ;82BAB9;
    JSL.L CODE_84AB77                    ;82BABB;
    JML.L CODE_82808F                    ;82BABF;

CODE_82BAC3:
    LDA.B #$03                           ;82BAC3;
    JSR.W CODE_82BD3B                    ;82BAC5;
    BEQ CODE_82BB20                      ;82BAC8;
    LDA.B #$22                           ;82BACA;
    JSL.L CODE_8088CD                    ;82BACC;
    LDA.B #$20                           ;82BAD0;
    LDX.B #$03                           ;82BAD2;
    LDY.B #$01                           ;82BAD4;
    JSL.L CODE_84A33C                    ;82BAD6;
    LDA.W $1F7A                          ;82BADA;
    BEQ CODE_82BAF3                      ;82BADD;
    JSL.L CODE_84A4AB                    ;82BADF;
    REP #$20                             ;82BAE3;
    LDA.B $3B                            ;82BAE5;
    STA.W $1E5E                          ;82BAE7;
    LDA.B $31                            ;82BAEA;
    STA.W $1E60                          ;82BAEC;
    JML.L CODE_828398                    ;82BAEF;

CODE_82BAF3:
    LDA.B #$04                           ;82BAF3;
    STA.B $02                            ;82BAF5;
    REP #$20                             ;82BAF7;
    LDA.W #$0100                         ;82BAF9;
    STA.B $1C                            ;82BAFC;
    SEP #$20                             ;82BAFE;
    LDA.B #$30                           ;82BB00;
    STA.B $1E                            ;82BB02;
    LDA.B #$0A                           ;82BB04;
    JSL.L CODE_848F07                    ;82BB06;
    JSL.L CODE_8282B9                    ;82BB0A;
    BNE CODE_82BB20                      ;82BB0E;
    INC.W $0000,X                        ;82BB10;
    LDA.B #$08                           ;82BB13;
    STA.W $000A,X                        ;82BB15;
    LDA.B $0B                            ;82BB18;
    ASL A                                ;82BB1A;
    STA.W $000B,X                        ;82BB1B;
    STX.B $37                            ;82BB1E;

CODE_82BB20:
    JML.L CODE_82808F                    ;82BB20;

CODE_82BB24:
    LDA.B #$07                           ;82BB24;
    JSR.W CODE_82BD3B                    ;82BB26;
    BEQ CODE_82BB46                      ;82BB29;
    REP #$20                             ;82BB2B;
    LDA.W #$0220                         ;82BB2D;
    STA.B $1C                            ;82BB30;
    SEP #$20                             ;82BB32;
    LDA.B #$06                           ;82BB34;
    STA.B $02                            ;82BB36;
    LDA.B #$01                           ;82BB38;
    JSL.L CODE_848F07                    ;82BB3A;
    STZ.W $0000                          ;82BB3E;
    LDY.B #$05                           ;82BB41;
    JSR.W CODE_82BD0A                    ;82BB43;

CODE_82BB46:
    JML.L CODE_82808F                    ;82BB46;

CODE_82BB4A:
    LDA.B #$07                           ;82BB4A;
    JSR.W CODE_82BD3B                    ;82BB4C;
    BEQ CODE_82BBB4                      ;82BB4F;
    REP #$20                             ;82BB51;
    LDA.B $05                            ;82BB53;
    SEC                                  ;82BB55;
    SBC.W #$0044                         ;82BB56;
    STA.W $002C                          ;82BB59;
    LDA.B $08                            ;82BB5C;
    SEC                                  ;82BB5E;
    SBC.W #$0020                         ;82BB5F;
    STA.W $002E                          ;82BB62;
    SEP #$20                             ;82BB65;
    LDA.B #$02                           ;82BB67;
    STA.W $0001                          ;82BB69;
    STZ.W $0000                          ;82BB6C;
    JSL.L CODE_83FE75                    ;82BB6F;
    JSL.L CODE_8282D3                    ;82BB73;
    BNE CODE_82BBA4                      ;82BB77;
    INC.W $0000,X                        ;82BB79;
    LDA.B #$22                           ;82BB7C;
    STA.W $000A,X                        ;82BB7E;
    LDA.B #$04                           ;82BB81;
    STA.W $000B,X                        ;82BB83;
    STZ.W $0011,X                        ;82BB86;
    REP #$20                             ;82BB89;
    LDA.B $05                            ;82BB8B;
    STA.W $0005,X                        ;82BB8D;
    LDA.B $08                            ;82BB90;
    CLC                                  ;82BB92;
    ADC.W #$0010                         ;82BB93;
    STA.W $0008,X                        ;82BB96;
    SEP #$20                             ;82BB99;
    LDY.W #$0006                         ;82BB9B;
    STY.W $0000                          ;82BB9E;
    JSR.W CODE_82BD0A                    ;82BBA1;

CODE_82BBA4:
    REP #$20                             ;82BBA4;
    LDA.B $3B                            ;82BBA6;
    STA.W $1E5E                          ;82BBA8;
    LDA.B $31                            ;82BBAB;
    STA.W $1E60                          ;82BBAD;
    JML.L CODE_828398                    ;82BBB0;

CODE_82BBB4:
    JSL.L CODE_82808F                    ;82BBB4;
    JML.L CODE_84AB77                    ;82BBB8;

CODE_82BBBC:
    JSL.L CODE_8281E8                    ;82BBBC;
    REP #$20                             ;82BBC0;
    LDA.B $1C                            ;82BBC2;
    CMP.W #$FB00                         ;82BBC4;
    BPL CODE_82BBCE                      ;82BBC7;
    LDA.W #$FB00                         ;82BBC9;
    STA.B $1C                            ;82BBCC;

CODE_82BBCE:
    SEP #$20                             ;82BBCE;
    RTS                                  ;82BBD0;

CODE_82BBD1:
    JSL.L CODE_82825D                    ;82BBD1;
    REP #$20                             ;82BBD5;
    LDA.B $08                            ;82BBD7;
    SEC                                  ;82BBD9;
    SBC.B $35                            ;82BBDA;
    BCS CODE_82BBE2                      ;82BBDC;
    EOR.W #$FFFF                         ;82BBDE;
    INC A                                ;82BBE1;

CODE_82BBE2:
    CMP.W #$000C                         ;82BBE2;
    BCC CODE_82BBF3                      ;82BBE5;
    LDA.B $1C                            ;82BBE7;
    EOR.W #$FFFF                         ;82BBE9;
    INC A                                ;82BBEC;
    STA.B $1C                            ;82BBED;
    JSL.L CODE_82825D                    ;82BBEF;

CODE_82BBF3:
    SEP #$20                             ;82BBF3;
    RTS                                  ;82BBF5;

CODE_82BBF6:
    JSL.L CODE_828358                    ;82BBF6;
    BNE CODE_82BC1F                      ;82BBFA;
    INC.W $0000,X                        ;82BBFC;
    LDA.B #$0D                           ;82BBFF;
    STA.W $000A,X                        ;82BC01;
    STA.W $000B,X                        ;82BC04;
    REP #$20                             ;82BC07;
    LDA.B $05                            ;82BC09;
    SEC                                  ;82BC0B;
    SBC.W #$0018                         ;82BC0C;
    STA.W $0005,X                        ;82BC0F;
    LDA.B $08                            ;82BC12;
    CLC                                  ;82BC14;
    ADC.W #$000B                         ;82BC15;
    STA.W $0008,X                        ;82BC18;
    TDC                                  ;82BC1B;
    STA.W $000C,X                        ;82BC1C;

CODE_82BC1F:
    SEP #$30                             ;82BC1F;
    RTS                                  ;82BC21;

CODE_82BC22:
    JSL.L CODE_828321                    ;82BC22;
    BNE CODE_82BC47                      ;82BC26;
    INC.W $0000,X                        ;82BC28;
    LDA.B #$27                           ;82BC2B;
    STA.W $000A,X                        ;82BC2D;
    STZ.W $000B,X                        ;82BC30;
    REP #$20                             ;82BC33;
    LDA.B $05                            ;82BC35;
    CLC                                  ;82BC37;
    ADC.W #$001D                         ;82BC38;
    STA.W $0005,X                        ;82BC3B;
    LDA.B $08                            ;82BC3E;
    CLC                                  ;82BC40;
    ADC.W #$001B                         ;82BC41;
    STA.W $0008,X                        ;82BC44;

CODE_82BC47:
    SEP #$20                             ;82BC47;
    RTS                                  ;82BC49;

CODE_82BC4A:
    JSR.W CODE_82BD51                    ;82BC4A;
    LDA.B $27                            ;82BC4D;
    STA.B $3D                            ;82BC4F;
    JSL.L CODE_849B03                    ;82BC51;
    JSL.L CODE_849B43                    ;82BC55;
    BEQ CODE_82BC83                      ;82BC59;
    LDA.B #$80                           ;82BC5B;
    TRB.B $27                            ;82BC5D;
    LDA.B #$01                           ;82BC5F;
    STA.W $1F30                          ;82BC61;
    LDA.B $3D                            ;82BC64;
    SEC                                  ;82BC66;
    SBC.B $27                            ;82BC67;
    STA.W $0000                          ;82BC69;
    ASL A                                ;82BC6C;
    ADC.W $0000                          ;82BC6D;
    CLC                                  ;82BC70;
    ADC.B $3E                            ;82BC71;
    STA.B $3E                            ;82BC73;
    LDA.B #$0E                           ;82BC75;
    TRB.B $11                            ;82BC77;
    LDA.B $27                            ;82BC79;
    BNE CODE_82BC83                      ;82BC7B;
    LDA.B #$0E                           ;82BC7D;
    STA.B $01                            ;82BC7F;
    STZ.B $02                            ;82BC81;

CODE_82BC83:
    JSL.L CODE_82808F                    ;82BC83;
    LDA.W $1F7A                          ;82BC87;
    BEQ CODE_82BCA8                      ;82BC8A;
    JSL.L CODE_82806E                    ;82BC8C;
    BCC CODE_82BCA8                      ;82BC90;
    LDA.B $01                            ;82BC92;
    CMP.B #$0E                           ;82BC94;
    BEQ CODE_82BCA8                      ;82BC96;
    REP #$20                             ;82BC98;
    LDA.B $3B                            ;82BC9A;
    STA.W $1E5E                          ;82BC9C;
    LDA.B $31                            ;82BC9F;
    STA.W $1E60                          ;82BCA1;
    JML.L CODE_828387                    ;82BCA4;

CODE_82BCA8:
    RTL                                  ;82BCA8;

CODE_82BCA9:
    STA.W $0008                          ;82BCA9;
    REP #$20                             ;82BCAC;
    LDA.W #$FFE0                         ;82BCAE;
    STA.W $0000                          ;82BCB1;
    LDA.W #$FFF0                         ;82BCB4;
    STA.W $0002                          ;82BCB7;
    LDA.W #$003F                         ;82BCBA;
    STA.W $0004                          ;82BCBD;
    LDA.W #$001F                         ;82BCC0;
    STA.W $0006                          ;82BCC3;
    SEP #$20                             ;82BCC6;
    JSL.L CODE_84A4C6                    ;82BCC8;
    RTS                                  ;82BCCC;

CODE_82BCCD:
    LDA.W $0BD3                          ;82BCCD;
    ORA.W $0BD4                          ;82BCD0;
    AND.B #$04                           ;82BCD3;
    BEQ CODE_82BD07                      ;82BCD5;
    REP #$30                             ;82BCD7;
    LDA.B $1C                            ;82BCD9;
    BPL CODE_82BD07                      ;82BCDB;
    LDA.B $20                            ;82BCDD;
    PHA                                  ;82BCDF;
    LDA.W #$CC2C                         ;82BCE0;
    STA.B $20                            ;82BCE3;
    SEP #$20                             ;82BCE5;
    LDX.W #$0BA8                         ;82BCE7;
    JSL.L CODE_849C0E                    ;82BCEA;
    REP #$20                             ;82BCEE;
    PLA                                  ;82BCF0;
    STA.B $20                            ;82BCF1;
    BCC CODE_82BD07                      ;82BCF3;
    SEP #$20                             ;82BCF5;
    LDA.W $0BCF                          ;82BCF7;
    AND.B #$7F                           ;82BCFA;
    BEQ CODE_82BD07                      ;82BCFC;
    LDA.B #$1F                           ;82BCFE;
    STA.W $0BCE                          ;82BD00;
    JSL.L CODE_849F2A                    ;82BD03;

CODE_82BD07:
    SEP #$30                             ;82BD07;
    RTS                                  ;82BD09;

CODE_82BD0A:
    SEP #$20                             ;82BD0A;
    JSL.L CODE_8282D3                    ;82BD0C;
    BNE CODE_82BD38                      ;82BD10;
    INC.W $0000,X                        ;82BD12;
    LDA.B #$25                           ;82BD15;
    STA.W $000A,X                        ;82BD17;
    TYA                                  ;82BD1A;
    CLC                                  ;82BD1B;
    ADC.W $0000                          ;82BD1C;
    STA.W $000B,X                        ;82BD1F;
    LDA.B $11                            ;82BD22;
    AND.B #$FE                           ;82BD24;
    STA.W $0011,X                        ;82BD26;
    REP #$20                             ;82BD29;
    LDA.B $05                            ;82BD2B;
    STA.W $0005,X                        ;82BD2D;
    LDA.B $08                            ;82BD30;
    STA.W $0008,X                        ;82BD32;
    DEY                                  ;82BD35;
    BPL CODE_82BD0A                      ;82BD36;

CODE_82BD38:
    SEP #$30                             ;82BD38;
    RTS                                  ;82BD3A;

CODE_82BD3B:
    JSR.W CODE_82BCA9                    ;82BD3B;
    JSR.W CODE_82BBBC                    ;82BD3E;
    JSL.L CODE_8491BE                    ;82BD41;
    JSL.L CODE_84AB77                    ;82BD45;
    JSR.W CODE_82BCCD                    ;82BD49;
    LDA.B $2B                            ;82BD4C;
    AND.B #$04                           ;82BD4E;
    RTS                                  ;82BD50;

CODE_82BD51:
    LDA.W $0B9C                          ;82BD51;
    LSR A                                ;82BD54;
    BCC CODE_82BD63                      ;82BD55;
    LDA.B $3E                            ;82BD57;
    BEQ CODE_82BD63                      ;82BD59;
    DEC.B $3E                            ;82BD5B;
    REP #$20                             ;82BD5D;
    DEC.B $05                            ;82BD5F;
    SEP #$20                             ;82BD61;

CODE_82BD63:
    RTS                                  ;82BD63;

CODE_82BD64:
    LDX.B $01                            ;82BD64;
    JMP.W (PTR16_82BD69,X)               ;82BD66;

PTR16_82BD69:
    dw CODE_82BD6F                       ;82BD69;
    dw CODE_82BE13                       ;82BD6B;
    dw CODE_82C1DE                       ;82BD6D;

CODE_82BD6F:
    JSL.L CODE_82827D                    ;82BD6F;
    LDA.B #$18                           ;82BD73;
    STA.B $0A                            ;82BD75;
    JSL.L CODE_84A23A                    ;82BD77;
    TYA                                  ;82BD7B;
    BEQ CODE_82BD8B                      ;82BD7C;
    REP #$30                             ;82BD7E;
    LDX.W $0000                          ;82BD80;
    STZ.W $0000,X                        ;82BD83;
    STZ.W $0002,X                        ;82BD86;
    SEP #$30                             ;82BD89;

CODE_82BD8B:
    LDA.B #$23                           ;82BD8B;
    STA.B $0A                            ;82BD8D;
    LDA.B #$48                           ;82BD8F;
    STA.B $27                            ;82BD91;
    LDA.B #$04                           ;82BD93;
    STA.B $26                            ;82BD95;
    LDA.B #$04                           ;82BD97;
    STA.B $12                            ;82BD99;
    LDA.B #$06                           ;82BD9B;
    STA.B $28                            ;82BD9D;
    STZ.B $33                            ;82BD9F;
    STZ.B $39                            ;82BDA1;
    STZ.B $3C                            ;82BDA3;
    STZ.B $3E                            ;82BDA5;
    REP #$20                             ;82BDA7;
    STZ.B $34                            ;82BDA9;
    LDA.W $1E5E                          ;82BDAB;
    STA.L $7FD700                        ;82BDAE;
    LDA.W $1E60                          ;82BDB2;
    STA.L $7FD702                        ;82BDB5;
    LDA.W $1E68                          ;82BDB9;
    STA.L $7FD704                        ;82BDBC;
    LDA.W $1E6E                          ;82BDC0;
    STA.L $7FD706                        ;82BDC3;
    LDA.B $0B                            ;82BDC7;
    AND.W #$00FF                         ;82BDC9;
    ASL A                                ;82BDCC;
    TAX                                  ;82BDCD;
    LDA.W DATA8_86CCA2,X                 ;82BDCE;
    STA.B $05                            ;82BDD1;
    LDA.W DATA8_86CCA6,X                 ;82BDD3;
    STA.W $1E5E                          ;82BDD6;
    LDA.W DATA8_86CCAA,X                 ;82BDD9;
    STA.W $1E60                          ;82BDDC;
    LDA.W DATA8_86CCAE,X                 ;82BDDF;
    STA.W $1E68                          ;82BDE2;
    LDA.W DATA8_86CCB2,X                 ;82BDE5;
    STA.W $1E6E                          ;82BDE8;
    LDA.W #$CC30                         ;82BDEB;
    STA.B $20                            ;82BDEE;
    LDA.B $0B                            ;82BDF0;
    AND.W #$00FF                         ;82BDF2;
    BNE CODE_82BE0A                      ;82BDF5;
    LDA.W #$0006                         ;82BDF7;
    STA.B $02                            ;82BDFA;
    STZ.B $03                            ;82BDFC;
    LDA.W $0BAD                          ;82BDFE;
    STA.B $05                            ;82BE01;
    LDA.W #$02E0                         ;82BE03;
    STA.B $08                            ;82BE06;
    INC.B $39                            ;82BE08;

CODE_82BE0A:
    SEP #$20                             ;82BE0A;
    JSR.W CODE_82C2B6                    ;82BE0C;
    JSR.W CODE_82C305                    ;82BE0F;
    RTL                                  ;82BE12;

CODE_82BE13:
    LDX.B $02                            ;82BE13;
    JSR.W (PTR16_82BE9F,X)               ;82BE15;
    LDA.B $39                            ;82BE18;
    BNE CODE_82BE46                      ;82BE1A;
    JSL.L CODE_8491BE                    ;82BE1C;
    LDA.B $2B                            ;82BE20;
    BIT.B #$04                           ;82BE22;
    BEQ CODE_82BE46                      ;82BE24;
    LDA.B $0B                            ;82BE26;
    BNE CODE_82BE30                      ;82BE28;
    LDA.B $27                            ;82BE2A;
    CMP.B #$24                           ;82BE2C;
    BCS CODE_82BE3E                      ;82BE2E;

CODE_82BE30:
    REP #$20                             ;82BE30;
    LDA.B $1C                            ;82BE32;
    EOR.W #$FFFF                         ;82BE34;
    INC A                                ;82BE37;
    STA.B $1C                            ;82BE38;
    SEP #$20                             ;82BE3A;
    BRA CODE_82BE46                      ;82BE3C;

CODE_82BE3E:
    INC.B $39                            ;82BE3E;
    LDA.B #$06                           ;82BE40;
    STA.B $02                            ;82BE42;
    STZ.B $03                            ;82BE44;

CODE_82BE46:
    JSR.W CODE_82C27D                    ;82BE46;
    LDA.B $2E                            ;82BE49;
    CMP.B #$0E                           ;82BE4B;
    BNE CODE_82BE5B                      ;82BE4D;
    REP #$20                             ;82BE4F;
    LDA.B $1C                            ;82BE51;
    EOR.W #$FFFF                         ;82BE53;
    INC A                                ;82BE56;
    STA.B $1C                            ;82BE57;
    SEP #$20                             ;82BE59;

CODE_82BE5B:
    LDA.L $7F832E                        ;82BE5B;
    STA.B $11                            ;82BE5F;
    JSL.L CODE_849B43                    ;82BE61;
    BEQ CODE_82BE87                      ;82BE65;
    INC.B $3C                            ;82BE67;
    REP #$10                             ;82BE69;
    LDX.B $3A                            ;82BE6B;
    STA.W $003C,X                        ;82BE6D;
    LDA.B $27                            ;82BE70;
    STA.W $0027,X                        ;82BE72;
    SEP #$10                             ;82BE75;
    LDA.B $27                            ;82BE77;
    AND.B #$7F                           ;82BE79;
    BNE CODE_82BE87                      ;82BE7B;
    LDA.B #$04                           ;82BE7D;
    STA.B $01                            ;82BE7F;
    STZ.B $02                            ;82BE81;
    STZ.B $03                            ;82BE83;
    BRA CODE_82BE93                      ;82BE85;

CODE_82BE87:
    LDA.B $3C                            ;82BE87;
    BEQ CODE_82BE8F                      ;82BE89;
    LDA.B #$0E                           ;82BE8B;
    TRB.B $11                            ;82BE8D;

CODE_82BE8F:
    JSL.L CODE_849B03                    ;82BE8F;

CODE_82BE93:
    LDA.B $11                            ;82BE93;
    AND.B #$3F                           ;82BE95;
    ORA.B $33                            ;82BE97;
    STA.B $11                            ;82BE99;
    JML.L CODE_8280B4                    ;82BE9B;

PTR16_82BE9F:
    dw CODE_82BFCB                       ;82BE9F;
    dw CODE_82C004                       ;82BEA1;
    dw CODE_82C125                       ;82BEA3;
    dw CODE_82BEA9                       ;82BEA5;
    dw CODE_82BF1F                       ;82BEA7;

CODE_82BEA9:
    LDX.B $03                            ;82BEA9;
    JMP.W (PTR16_82BEAE,X)               ;82BEAB;

PTR16_82BEAE:
    dw CODE_82BEB4                       ;82BEAE;
    dw CODE_82BED3                       ;82BEB0;
    dw CODE_82BEF8                       ;82BEB2;

CODE_82BEB4:
    LDA.B #$02                           ;82BEB4;
    STA.B $03                            ;82BEB6;
    REP #$20                             ;82BEB8;
    STZ.B $1A                            ;82BEBA;
    LDA.W #$FE80                         ;82BEBC;
    STA.B $1C                            ;82BEBF;
    LDA.W #$0010                         ;82BEC1;
    STA.W $0000                          ;82BEC4;
    SEP #$20                             ;82BEC7;
    JSR.W CODE_82C35C                    ;82BEC9;
    LDA.B #$06                           ;82BECC;
    JSL.L CODE_848F07                    ;82BECE;
    RTS                                  ;82BED2;

CODE_82BED3:
    REP #$20                             ;82BED3;
    LDA.B $0B                            ;82BED5;
    AND.W #$00FF                         ;82BED7;
    ASL A                                ;82BEDA;
    TAX                                  ;82BEDB;
    LDA.B $08                            ;82BEDC;
    CMP.W DATA8_86CCBE,X                 ;82BEDE;
    SEP #$20                             ;82BEE1;
    BCC CODE_82BEED                      ;82BEE3;
    LDA.B #$C8                           ;82BEE5;
    STA.B $36                            ;82BEE7;
    LDA.B #$04                           ;82BEE9;
    STA.B $03                            ;82BEEB;

CODE_82BEED:
    JSL.L CODE_82825D                    ;82BEED;
    JSL.L CODE_848EEA                    ;82BEF1;
    JMP.W CODE_82C37E                    ;82BEF5;

CODE_82BEF8:
    DEC.B $36                            ;82BEF8;
    BNE CODE_82BF02                      ;82BEFA;
    LDA.B #$08                           ;82BEFC;
    STA.B $02                            ;82BEFE;
    STZ.B $03                            ;82BF00;

CODE_82BF02:
    LDA.W $0B9C                          ;82BF02;
    LSR A                                ;82BF05;
    BCC CODE_82BF14                      ;82BF06;
    REP #$20                             ;82BF08;
    LDA.B $1C                            ;82BF0A;
    EOR.W #$FFFF                         ;82BF0C;
    INC A                                ;82BF0F;
    STA.B $1C                            ;82BF10;
    SEP #$20                             ;82BF12;

CODE_82BF14:
    JSL.L CODE_82825D                    ;82BF14;
    JSL.L CODE_848EEA                    ;82BF18;
    JMP.W CODE_82C37E                    ;82BF1C;

CODE_82BF1F:
    LDX.B $03                            ;82BF1F;
    JMP.W (PTR16_82BF24,X)               ;82BF21;

PTR16_82BF24:
    dw CODE_82BF2C                       ;82BF24;
    dw CODE_82BF85                       ;82BF26;
    dw CODE_82BFA9                       ;82BF28;
    dw CODE_82BFB8                       ;82BF2A;

CODE_82BF2C:
    LDA.B #$02                           ;82BF2C;
    STA.B $03                            ;82BF2E;
    REP #$30                             ;82BF30;
    LDX.W #$0040                         ;82BF32;
    JSL.L CODE_849086                    ;82BF35;
    LSR A                                ;82BF39;
    BCC CODE_82BF3F                      ;82BF3A;
    LDX.W #$FFC0                         ;82BF3C;

CODE_82BF3F:
    STX.W $0000                          ;82BF3F;
    LDA.W $1E4D                          ;82BF42;
    CLC                                  ;82BF45;
    ADC.W #$0080                         ;82BF46;
    STA.B $05                            ;82BF49;
    LDA.W #$0100                         ;82BF4B;
    STA.B $1C                            ;82BF4E;
    LDA.W $1E56                          ;82BF50;
    CLC                                  ;82BF53;
    ADC.W $1E58                          ;82BF54;
    CLC                                  ;82BF57;
    ADC.W #$0100                         ;82BF58;
    LSR A                                ;82BF5B;
    STA.W $0000                          ;82BF5C;
    SEP #$20                             ;82BF5F;
    LDA.B #$00                           ;82BF61;
    LDY.W #$FE9E                         ;82BF63;
    LDX.W $0000                          ;82BF66;
    CPX.B $05                            ;82BF69;
    BCC CODE_82BF72                      ;82BF6B;
    LDA.B #$40                           ;82BF6D;
    LDY.W #$0162                         ;82BF6F;

CODE_82BF72:
    STA.B $33                            ;82BF72;
    STY.B $1A                            ;82BF74;
    SEP #$10                             ;82BF76;
    STZ.B $29                            ;82BF78;
    LDA.B #$E0                           ;82BF7A;
    STA.B $2A                            ;82BF7C;
    LDA.B #$00                           ;82BF7E;
    JSL.L CODE_848F07                    ;82BF80;
    RTS                                  ;82BF84;

CODE_82BF85:
    JSL.L CODE_8490A0                    ;82BF85;
    CMP.B #$0D                           ;82BF89;
    BNE CODE_82BFA2                      ;82BF8B;
    LDA.B #$04                           ;82BF8D;
    STA.B $03                            ;82BF8F;
    LDA.B #$3C                           ;82BF91;
    STA.B $36                            ;82BF93;
    LDA.B #$E8                           ;82BF95;
    STA.W $0000                          ;82BF97;
    LDA.B #$FF                           ;82BF9A;
    STA.W $0001                          ;82BF9C;
    JSR.W CODE_82C35C                    ;82BF9F;

CODE_82BFA2:
    JSL.L CODE_82825D                    ;82BFA2;
    JMP.W CODE_82C37E                    ;82BFA6;

CODE_82BFA9:
    DEC.B $36                            ;82BFA9;
    BNE CODE_82BFB5                      ;82BFAB;
    LDA.B #$06                           ;82BFAD;
    STA.B $03                            ;82BFAF;
    LDA.B #$78                           ;82BFB1;
    STA.B $36                            ;82BFB3;

CODE_82BFB5:
    JMP.W CODE_82C37E                    ;82BFB5;

CODE_82BFB8:
    DEC.B $36                            ;82BFB8;
    BNE CODE_82BFC4                      ;82BFBA;
    STZ.B $39                            ;82BFBC;
    LDA.B #$04                           ;82BFBE;
    STA.B $02                            ;82BFC0;
    STZ.B $03                            ;82BFC2;

CODE_82BFC4:
    JSL.L CODE_82820A                    ;82BFC4;
    JMP.W CODE_82C37E                    ;82BFC8;

CODE_82BFCB:
    LDX.B $03                            ;82BFCB;
    JMP.W (PTR16_82BFD0,X)               ;82BFCD;

PTR16_82BFD0:
    dw CODE_82BFD6                       ;82BFD0;
    dw CODE_82BFEC                       ;82BFD2;
    dw CODE_82BFF5                       ;82BFD4;

CODE_82BFD6:
    LDA.B #$02                           ;82BFD6;
    STA.B $03                            ;82BFD8;
    REP #$20                             ;82BFDA;
    LDA.W #$FE80                         ;82BFDC;
    STA.B $1A                            ;82BFDF;
    STZ.B $1C                            ;82BFE1;
    SEP #$20                             ;82BFE3;
    LDA.B #$00                           ;82BFE5;
    JSL.L CODE_848F07                    ;82BFE7;
    RTS                                  ;82BFEB;

CODE_82BFEC:
    LDA.B #$3C                           ;82BFEC;
    STA.B $36                            ;82BFEE;
    LDA.B #$04                           ;82BFF0;
    STA.B $03                            ;82BFF2;
    RTS                                  ;82BFF4;

CODE_82BFF5:
    DEC.B $36                            ;82BFF5;
    BNE CODE_82BFFF                      ;82BFF7;
    LDA.B #$02                           ;82BFF9;
    STA.B $02                            ;82BFFB;
    STZ.B $03                            ;82BFFD;

CODE_82BFFF:
    JSL.L CODE_82823E                    ;82BFFF;
    RTS                                  ;82C003;

CODE_82C004:
    LDX.B $03                            ;82C004;
    BNE CODE_82C00B                      ;82C006;
    JMP.W CODE_82C092                    ;82C008;

CODE_82C00B:
    REP #$21                             ;82C00B;
    LDA.W #$0060                         ;82C00D;
    BIT.B $32                            ;82C010;
    BVS CODE_82C017                      ;82C012;
    LDA.W #$FFA0                         ;82C014;

CODE_82C017:
    ADC.B $05                            ;82C017;
    CMP.W $1E56                          ;82C019;
    BCC CODE_82C02C                      ;82C01C;
    SBC.W #$0100                         ;82C01E;
    CMP.W $1E58                          ;82C021;
    BCS CODE_82C02C                      ;82C024;
    DEC.B $36                            ;82C026;
    BNE CODE_82C039                      ;82C028;
    BRA CODE_82C030                      ;82C02A;

CODE_82C02C:
    SEP #$20                             ;82C02C;
    INC.B $3E                            ;82C02E;

CODE_82C030:
    SEP #$20                             ;82C030;
    LDA.B #$04                           ;82C032;
    STA.B $02                            ;82C034;
    STZ.B $03                            ;82C036;
    RTS                                  ;82C038;

CODE_82C039:
    LDX.B $0B                            ;82C039;
    BEQ CODE_82C069                      ;82C03B;
    LDA.B $08                            ;82C03D;
    CLC                                  ;82C03F;
    ADC.W #$FFB0                         ;82C040;
    CMP.W $1E5A                          ;82C043;
    BCS CODE_82C054                      ;82C046;
    LDA.B $1C                            ;82C048;
    BMI CODE_82C069                      ;82C04A;
    EOR.W #$FFFF                         ;82C04C;
    INC A                                ;82C04F;
    STA.B $1C                            ;82C050;
    BRA CODE_82C069                      ;82C052;

CODE_82C054:
    LDA.B $08                            ;82C054;
    CLC                                  ;82C056;
    ADC.W #$FFB0                         ;82C057;
    CMP.W $1E5C                          ;82C05A;
    BCC CODE_82C069                      ;82C05D;
    LDA.B $1C                            ;82C05F;
    BPL CODE_82C069                      ;82C061;
    EOR.W #$FFFF                         ;82C063;
    INC A                                ;82C066;
    STA.B $1C                            ;82C067;

CODE_82C069:
    SEP #$20                             ;82C069;
    JSL.L CODE_82820A                    ;82C06B;
    LDA.B $27                            ;82C06F;
    BPL CODE_82C083                      ;82C071;
    LDA.B #$08                           ;82C073;
    STA.B $3D                            ;82C075;
    LDA.B #$36                           ;82C077;
    JSL.L CODE_8088A2                    ;82C079;
    LDA.B #$08                           ;82C07D;
    JSL.L CODE_848F07                    ;82C07F;

CODE_82C083:
    LDA.B $3D                            ;82C083;
    BEQ CODE_82C091                      ;82C085;
    DEC.B $3D                            ;82C087;
    BNE CODE_82C091                      ;82C089;
    LDA.B #$00                           ;82C08B;
    JSL.L CODE_848F07                    ;82C08D;

CODE_82C091:
    RTS                                  ;82C091;

CODE_82C092:
    INC.B $03                            ;82C092;
    LDA.B #$C8                           ;82C094;
    STA.B $36                            ;82C096;
    LDA.B #$00                           ;82C098;
    STA.B $37                            ;82C09A;
    JSL.L CODE_84A07C                    ;82C09C;
    TAX                                  ;82C0A0;
    BIT.B $33                            ;82C0A1;
    BVC CODE_82C0E5                      ;82C0A3;
    CMP.B #$06                           ;82C0A5;
    BCS CODE_82C0AB                      ;82C0A7;
    LDX.B #$06                           ;82C0A9;

CODE_82C0AB:
    CMP.B #$0B                           ;82C0AB;
    BCC CODE_82C0B9                      ;82C0AD;
    CMP.B #$18                           ;82C0AF;
    BCC CODE_82C0B7                      ;82C0B1;
    LDX.B #$06                           ;82C0B3;
    BRA CODE_82C0CC                      ;82C0B5;

CODE_82C0B7:
    LDX.B #$0A                           ;82C0B7;

CODE_82C0B9:
    CMP.B #$08                           ;82C0B9;
    BNE CODE_82C0CC                      ;82C0BB;
    LDX.B #$07                           ;82C0BD;
    REP #$10                             ;82C0BF;
    LDY.W $0BB0                          ;82C0C1;
    CPY.B $08                            ;82C0C4;
    BCC CODE_82C0CA                      ;82C0C6;
    INX                                  ;82C0C8;
    INX                                  ;82C0C9;

CODE_82C0CA:
    SEP #$10                             ;82C0CA;

CODE_82C0CC:
    TXA                                  ;82C0CC;
    ASL A                                ;82C0CD;
    ASL A                                ;82C0CE;
    TAX                                  ;82C0CF;
    REP #$20                             ;82C0D0;
    LDA.W DATA16_86CC22,X                ;82C0D2;
    STA.B $1A                            ;82C0D5;
    LDA.W DATA16_86CC24,X                ;82C0D7;
    STA.B $1C                            ;82C0DA;
    SEP #$20                             ;82C0DC;
    LDA.B #$00                           ;82C0DE;
    JSL.L CODE_848F07                    ;82C0E0;
    RTS                                  ;82C0E4;

CODE_82C0E5:
    CMP.B #$16                           ;82C0E5;
    BCS CODE_82C0F3                      ;82C0E7;
    CMP.B #$08                           ;82C0E9;
    BCS CODE_82C0F1                      ;82C0EB;
    LDX.B #$1A                           ;82C0ED;
    BRA CODE_82C10C                      ;82C0EF;

CODE_82C0F1:
    LDX.B #$16                           ;82C0F1;

CODE_82C0F3:
    CMP.B #$1B                           ;82C0F3;
    BCC CODE_82C0F9                      ;82C0F5;
    LDX.B #$1A                           ;82C0F7;

CODE_82C0F9:
    CMP.B #$18                           ;82C0F9;
    BNE CODE_82C10C                      ;82C0FB;
    LDX.B #$17                           ;82C0FD;
    REP #$10                             ;82C0FF;
    LDY.W $0BB0                          ;82C101;
    CPY.B $08                            ;82C104;
    BCS CODE_82C10A                      ;82C106;
    INX                                  ;82C108;
    INX                                  ;82C109;

CODE_82C10A:
    SEP #$10                             ;82C10A;

CODE_82C10C:
    TXA                                  ;82C10C;
    ASL A                                ;82C10D;
    ASL A                                ;82C10E;
    TAX                                  ;82C10F;
    REP #$20                             ;82C110;
    LDA.W DATA16_86CBF6,X                ;82C112;
    STA.B $1A                            ;82C115;
    LDA.W DATA16_86CBF8,X                ;82C117;
    STA.B $1C                            ;82C11A;
    SEP #$20                             ;82C11C;
    LDA.B #$00                           ;82C11E;
    JSL.L CODE_848F07                    ;82C120;
    RTS                                  ;82C124;

CODE_82C125:
    LDX.B $03                            ;82C125;
    BEQ CODE_82C158                      ;82C127;
    DEC.B $36                            ;82C129;
    BNE CODE_82C14F                      ;82C12B;
    LDA.B #$08                           ;82C12D;
    STA.B $36                            ;82C12F;
    INC.B $38                            ;82C131;
    REP #$20                             ;82C133;
    JSR.W CODE_82C255                    ;82C135;
    SEP #$20                             ;82C138;
    BEQ CODE_82C14F                      ;82C13A;
    LDA.B #$02                           ;82C13C;
    STA.B $02                            ;82C13E;
    STZ.B $03                            ;82C140;
    LDA.B $33                            ;82C142;
    EOR.B #$40                           ;82C144;
    STA.B $33                            ;82C146;
    LDA.B #$00                           ;82C148;
    JSL.L CODE_848F07                    ;82C14A;
    RTS                                  ;82C14E;

CODE_82C14F:
    JSL.L CODE_82820A                    ;82C14F;
    JSL.L CODE_848EEA                    ;82C153;
    RTS                                  ;82C157;

CODE_82C158:
    INC.B $03                            ;82C158;
    REP #$20                             ;82C15A;
    LDX.B #$40                           ;82C15C;
    LDA.W $0BAD                          ;82C15E;
    CMP.B $05                            ;82C161;
    BCS CODE_82C167                      ;82C163;
    LDX.B #$00                           ;82C165;

CODE_82C167:
    CPX.B $33                            ;82C167;
    BNE CODE_82C17E                      ;82C169;
    SEP #$20                             ;82C16B;
    TXA                                  ;82C16D;
    EOR.B #$40                           ;82C16E;
    TAX                                  ;82C170;
    LDA.B $3E                            ;82C171;
    STZ.B $3E                            ;82C173;
    BNE CODE_82C17E                      ;82C175;
    LDA.B #$02                           ;82C177;
    STA.B $02                            ;82C179;
    STZ.B $03                            ;82C17B;
    RTS                                  ;82C17D;

CODE_82C17E:
    REP #$20                             ;82C17E;
    LDA.B $0B                            ;82C180;
    AND.W #$007F                         ;82C182;
    ASL A                                ;82C185;
    TAY                                  ;82C186;
    LDA.W DATA8_86CCB6,Y                 ;82C187;
    STA.W $0000                          ;82C18A;
    LDA.W DATA8_86CCBA,Y                 ;82C18D;
    STA.W $0002                          ;82C190;
    LDA.B $27                            ;82C193;
    AND.W #$00FF                         ;82C195;
    CMP.W #$0024                         ;82C198;
    BCC CODE_82C1A3                      ;82C19B;
    LDA.W #$7F00                         ;82C19D;
    STA.W $0002                          ;82C1A0;

CODE_82C1A3:
    LDY.B #$00                           ;82C1A3;
    CPX.B #$40                           ;82C1A5;
    BEQ CODE_82C1AB                      ;82C1A7;
    LDY.B #$20                           ;82C1A9;

CODE_82C1AB:
    LDA.B $08                            ;82C1AB;
    CMP.W $0BB0                          ;82C1AD;
    BCC CODE_82C1C0                      ;82C1B0;
    CMP.W $0000                          ;82C1B2;
    BCC CODE_82C1C0                      ;82C1B5;

CODE_82C1B7:
    TYA                                  ;82C1B7;
    AND.W #$00FF                         ;82C1B8;
    CLC                                  ;82C1BB;
    ADC.W #$0010                         ;82C1BC;
    TAY                                  ;82C1BF;

CODE_82C1C0:
    TYX                                  ;82C1C0;
    BEQ CODE_82C1C7                      ;82C1C1;
    CPY.B #$20                           ;82C1C3;
    BNE CODE_82C1CC                      ;82C1C5;

CODE_82C1C7:
    CMP.W $0002                          ;82C1C7;
    BCS CODE_82C1B7                      ;82C1CA;

CODE_82C1CC:
    STY.B $38                            ;82C1CC;
    JSR.W CODE_82C255                    ;82C1CE;
    SEP #$20                             ;82C1D1;
    LDA.B #$08                           ;82C1D3;
    STA.B $36                            ;82C1D5;
    LDA.B #$00                           ;82C1D7;
    JSL.L CODE_848F07                    ;82C1D9;
    RTS                                  ;82C1DD;

CODE_82C1DE:
    LDX.B $02                            ;82C1DE;
    JMP.W (PTR16_82C1E3,X)               ;82C1E0;

PTR16_82C1E3:
    dw CODE_82C1E9                       ;82C1E3;
    dw CODE_82C1FF                       ;82C1E5;
    dw CODE_82C223                       ;82C1E7;

CODE_82C1E9:
    LDA.B #$02                           ;82C1E9;
    STA.B $02                            ;82C1EB;
    JSR.W CODE_82C32A                    ;82C1ED;
    JSL.L CODE_84A4AB                    ;82C1F0;
    STZ.B $29                            ;82C1F4;
    LDA.B #$F0                           ;82C1F6;
    STA.B $2A                            ;82C1F8;
    LDA.B #$78                           ;82C1FA;
    STA.B $36                            ;82C1FC;
    RTL                                  ;82C1FE;

CODE_82C1FF:
    JSL.L CODE_8490A0                    ;82C1FF;
    CMP.B #$0E                           ;82C203;
    BNE CODE_82C213                      ;82C205;
    REP #$20                             ;82C207;
    LDA.B $1C                            ;82C209;
    EOR.W #$FFFF                         ;82C20B;
    INC A                                ;82C20E;
    STA.B $1C                            ;82C20F;
    SEP #$20                             ;82C211;

CODE_82C213:
    JSL.L CODE_82820A                    ;82C213;
    JSR.W CODE_82C27D                    ;82C217;
    DEC.B $36                            ;82C21A;
    BNE CODE_82C222                      ;82C21C;
    LDA.B #$04                           ;82C21E;
    STA.B $02                            ;82C220;

CODE_82C222:
    RTL                                  ;82C222;

CODE_82C223:
    LDA.B #$25                           ;82C223;
    STA.B $0A                            ;82C225;
    JSL.L CODE_84A1D0                    ;82C227;
    LDA.B #$23                           ;82C22B;
    STA.B $0A                            ;82C22D;
    TYA                                  ;82C22F;
    BNE CODE_82C254                      ;82C230;
    REP #$20                             ;82C232;
    LDA.L $7FD700                        ;82C234;
    STA.W $1E5E                          ;82C238;
    LDA.L $7FD702                        ;82C23B;
    STA.W $1E60                          ;82C23F;
    LDA.L $7FD704                        ;82C242;
    STA.W $1E68                          ;82C246;
    LDA.L $7FD706                        ;82C249;
    STA.W $1E6E                          ;82C24D;
    JSL.L CODE_828398                    ;82C250;

CODE_82C254:
    RTL                                  ;82C254;

CODE_82C255:
    LDY.B $38                            ;82C255;
    LDA.W DATA8_86CC62,Y                 ;82C257;
    AND.W #$00FF                         ;82C25A;
    BIT.W #$0080                         ;82C25D;
    BNE CODE_82C27C                      ;82C260;
    ASL A                                ;82C262;
    ASL A                                ;82C263;
    TAX                                  ;82C264;
    LDA.W DATA8_86EE37,X                 ;82C265;
    CLC                                  ;82C268;
    BPL CODE_82C26C                      ;82C269;
    SEC                                  ;82C26B;

CODE_82C26C:
    ROR A                                ;82C26C;
    STA.B $1A                            ;82C26D;
    LDA.W DATA8_86EE39,X                 ;82C26F;
    CLC                                  ;82C272;
    BPL CODE_82C276                      ;82C273;
    SEC                                  ;82C275;

CODE_82C276:
    ROR A                                ;82C276;
    STA.B $1C                            ;82C277;
    LDA.W #$0000                         ;82C279;

CODE_82C27C:
    RTS                                  ;82C27C;

CODE_82C27D:
    REP #$30                             ;82C27D;
    LDA.B $05                            ;82C27F;
    CMP.B $22                            ;82C281;
    BNE CODE_82C28B                      ;82C283;
    LDA.B $08                            ;82C285;
    CMP.B $24                            ;82C287;
    BEQ CODE_82C2B3                      ;82C289;

CODE_82C28B:
    LDX.B $34                            ;82C28B;
    LDA.B $05                            ;82C28D;
    STA.L $7FD200,X                      ;82C28F;
    LDA.B $08                            ;82C293;
    STA.L $7FD202,X                      ;82C295;
    SEP #$20                             ;82C299;
    LDA.B $0F                            ;82C29B;
    AND.B #$7F                           ;82C29D;
    ORA.B $33                            ;82C29F;
    STA.L $7FD204,X                      ;82C2A1;
    REP #$20                             ;82C2A5;
    TXA                                  ;82C2A7;
    INC A                                ;82C2A8;
    INC A                                ;82C2A9;
    INC A                                ;82C2AA;
    INC A                                ;82C2AB;
    INC A                                ;82C2AC;
    AND.W #$03FF                         ;82C2AD;
    TAX                                  ;82C2B0;
    STX.B $34                            ;82C2B1;

CODE_82C2B3:
    SEP #$30                             ;82C2B3;
    RTS                                  ;82C2B5;

CODE_82C2B6:
    REP #$10                             ;82C2B6;
    LDY.W #$0000                         ;82C2B8;

CODE_82C2BB:
    JSL.L CODE_828321                    ;82C2BB;
    INC.W $0000,X                        ;82C2BF;
    LDA.B #$24                           ;82C2C2;
    STA.W $000A,X                        ;82C2C4;
    TYA                                  ;82C2C7;
    ASL A                                ;82C2C8;
    STA.W $000B,X                        ;82C2C9;
    REP #$20                             ;82C2CC;
    TDC                                  ;82C2CE;
    STA.W $000C,X                        ;82C2CF;
    LDA.B $05                            ;82C2D2;
    STA.W $0005,X                        ;82C2D4;
    LDA.B $08                            ;82C2D7;
    STA.W $0008,X                        ;82C2D9;
    SEP #$20                             ;82C2DC;
    INY                                  ;82C2DE;
    CPY.W #$0006                         ;82C2DF;
    BNE CODE_82C2BB                      ;82C2E2;
    JSL.L CODE_828321                    ;82C2E4;
    INC.W $0000,X                        ;82C2E8;
    LDA.B #$25                           ;82C2EB;
    STA.W $000A,X                        ;82C2ED;
    STX.B $3A                            ;82C2F0;
    REP #$20                             ;82C2F2;
    TDC                                  ;82C2F4;
    STA.W $000C,X                        ;82C2F5;
    LDA.B $05                            ;82C2F8;
    STA.W $0005,X                        ;82C2FA;
    LDA.B $08                            ;82C2FD;
    STA.W $0008,X                        ;82C2FF;
    SEP #$30                             ;82C302;
    RTS                                  ;82C304;

CODE_82C305:
    REP #$30                             ;82C305;
    PEA.W DATA8_86867F                   ;82C307;
    PLB                                  ;82C30A;
    LDX.W #$0400                         ;82C30B;

CODE_82C30E:
    LDA.B $05                            ;82C30E;
    STA.W $D200,X                        ;82C310;
    LDA.B $08                            ;82C313;
    STA.W $D202,X                        ;82C315;
    SEP #$20                             ;82C318;
    STZ.W $D204,X                        ;82C31A;
    REP #$20                             ;82C31D;
    DEX                                  ;82C31F;
    DEX                                  ;82C320;
    DEX                                  ;82C321;
    DEX                                  ;82C322;
    DEX                                  ;82C323;
    BPL CODE_82C30E                      ;82C324;
    PLB                                  ;82C326;
    SEP #$30                             ;82C327;
    RTS                                  ;82C329;

CODE_82C32A:
    JSL.L CODE_8282D3                    ;82C32A;
    INC.W $0000,X                        ;82C32E;
    LDA.B #$1A                           ;82C331;
    STA.W $000A,X                        ;82C333;
    LDA.L $7F832E                        ;82C336;
    ORA.B $33                            ;82C33A;
    STA.W $0011,X                        ;82C33C;
    LDA.B $18                            ;82C33F;
    STA.W $0018,X                        ;82C341;
    LDA.B $0F                            ;82C344;
    AND.B #$7F                           ;82C346;
    STA.W $0017,X                        ;82C348;
    REP #$20                             ;82C34B;
    LDA.B $05                            ;82C34D;
    STA.W $0005,X                        ;82C34F;
    LDA.B $08                            ;82C352;
    STA.W $0008,X                        ;82C354;
    SEP #$20                             ;82C357;
    SEP #$10                             ;82C359;
    RTS                                  ;82C35B;

CODE_82C35C:
    JSL.L CODE_828307                    ;82C35C;
    BNE CODE_82C37B                      ;82C360;
    INC.W $0000,X                        ;82C362;
    LDA.B #$12                           ;82C365;
    STA.W $000A,X                        ;82C367;
    REP #$21                             ;82C36A;
    LDA.B $08                            ;82C36C;
    ADC.W $0000                          ;82C36E;
    STA.W $0008,X                        ;82C371;
    LDA.B $05                            ;82C374;
    STA.W $0005,X                        ;82C376;
    SEP #$20                             ;82C379;

CODE_82C37B:
    SEP #$10                             ;82C37B;
    RTS                                  ;82C37D;

CODE_82C37E:
    LDA.W $0B9C                          ;82C37E;
    AND.B #$0F                           ;82C381;
    BNE CODE_82C38B                      ;82C383;
    LDA.B #$35                           ;82C385;
    JSL.L CODE_8088A2                    ;82C387;

CODE_82C38B:
    RTS                                  ;82C38B;

CODE_82C38C:
    LDX.B $01                            ;82C38C;
    JMP.W (PTR16_82C391,X)               ;82C38E;

PTR16_82C391:
    dw CODE_82C397                       ;82C391;
    dw CODE_82C3B7                       ;82C393;
    dw CODE_82C402                       ;82C395;

CODE_82C397:
    LDA.B #$02                           ;82C397;
    STA.B $01                            ;82C399;
    LDA.B #$04                           ;82C39B;
    STA.B $12                            ;82C39D;
    LDA.B #$18                           ;82C39F;
    STA.B $27                            ;82C3A1;
    STA.B $2F                            ;82C3A3;
    LDA.L $7F822E                        ;82C3A5;
    STA.B $18                            ;82C3A9;
    STZ.B $28                            ;82C3AB;
    LDA.B #$30                           ;82C3AD;
    STA.B $16                            ;82C3AF;
    LDA.B #$06                           ;82C3B1;
    JML.L CODE_848F07                    ;82C3B3;

CODE_82C3B7:
    STZ.B $2C                            ;82C3B7;
    LDA.L $7F832E                        ;82C3B9;
    STA.B $11                            ;82C3BD;
    REP #$10                             ;82C3BF;
    LDX.B $0C                            ;82C3C1;
    LDA.W $0027,X                        ;82C3C3;
    AND.B #$7F                           ;82C3C6;
    BNE CODE_82C3CF                      ;82C3C8;
    LDA.B #$04                           ;82C3CA;
    STA.B $01                            ;82C3CC;
    RTL                                  ;82C3CE;

CODE_82C3CF:
    LDA.W $003C,X                        ;82C3CF;
    BEQ CODE_82C3D4                      ;82C3D2;

CODE_82C3D4:
    LDX.W #$CCCC                         ;82C3D4;
    STX.B $20                            ;82C3D7;
    LDX.W #$0BA8                         ;82C3D9;
    JSL.L CODE_849C0E                    ;82C3DC;
    SEP #$10                             ;82C3E0;
    BCC CODE_82C3E7                      ;82C3E2;
    JSR.W CODE_82C533                    ;82C3E4;

CODE_82C3E7:
    JSR.W CODE_82C6B9                    ;82C3E7;
    LDA.B $2C                            ;82C3EA;
    BEQ CODE_82C3F2                      ;82C3EC;
    JSL.L CODE_82C70E                    ;82C3EE;

CODE_82C3F2:
    LDA.B #$C2                           ;82C3F2;
    STA.B $20                            ;82C3F4;
    LDA.B #$CC                           ;82C3F6;
    STA.B $21                            ;82C3F8;
    JSL.L CODE_849B43                    ;82C3FA;
    JML.L CODE_8280B4                    ;82C3FE;

CODE_82C402:
    LDX.B $02                            ;82C402;
    JSR.W (PTR16_82C429,X)               ;82C404;
    LDA.W $0B9C                          ;82C407;
    LSR A                                ;82C40A;
    BCC CODE_82C415                      ;82C40B;
    LDA.B $00                            ;82C40D;
    BEQ CODE_82C415                      ;82C40F;
    JML.L CODE_8280B4                    ;82C411;

CODE_82C415:
    DEC.B $37                            ;82C415;
    BNE CODE_82C428                      ;82C417;
    JSL.L CODE_849086                    ;82C419;
    AND.B #$03                           ;82C41D;
    TAX                                  ;82C41F;
    LDA.W DATA8_86CD05,X                 ;82C420;
    STA.B $37                            ;82C423;
    JSR.W CODE_82C500                    ;82C425;

CODE_82C428:
    RTL                                  ;82C428;

PTR16_82C429:
    dw CODE_82C431                       ;82C429;
    dw CODE_82C440                       ;82C42B;
    dw CODE_82C49C                       ;82C42D;
    dw CODE_82C4A7                       ;82C42F;

CODE_82C431:
    LDA.B #$02                           ;82C431;
    STA.B $02                            ;82C433;
    LDA.B #$3C                           ;82C435;
    STA.B $36                            ;82C437;
    LDA.B #$08                           ;82C439;
    STA.B $37                            ;82C43B;
    JMP.W CODE_82C6B9                    ;82C43D;

CODE_82C440:
    DEC.B $36                            ;82C440;
    BNE CODE_82C46A                      ;82C442;
    LDA.B #$04                           ;82C444;
    STA.B $02                            ;82C446;
    LDA.B $0B                            ;82C448;
    LSR A                                ;82C44A;
    TAX                                  ;82C44B;
    LDA.W DATA8_86CCFE,X                 ;82C44C;
    STA.B $36                            ;82C44F;
    REP #$20                             ;82C451;
    LDA.W #$CCC2                         ;82C453;
    STA.B $20                            ;82C456;
    LDA.B $05                            ;82C458;
    SEC                                  ;82C45A;
    SBC.B $22                            ;82C45B;
    STA.B $1A                            ;82C45D;
    STZ.B $1C                            ;82C45F;
    SEP #$20                             ;82C461;
    STZ.B $1F                            ;82C463;
    LDA.B #$08                           ;82C465;
    STA.B $1E                            ;82C467;
    RTS                                  ;82C469;

CODE_82C46A:
    REP #$20                             ;82C46A;
    LDA.B $08                            ;82C46C;
    SEC                                  ;82C46E;
    SBC.B $24                            ;82C46F;
    BNE CODE_82C474                      ;82C471;
    INC A                                ;82C473;

CODE_82C474:
    STA.B $1C                            ;82C474;
    SEP #$20                             ;82C476;
    JSL.L CODE_8491BE                    ;82C478;
    LDA.B $2B                            ;82C47C;
    BIT.B #$04                           ;82C47E;
    BEQ CODE_82C499                      ;82C480;
    JSL.L CODE_84A4AB                    ;82C482;
    LDA.B #$3C                           ;82C486;
    JSL.L CODE_84A333                    ;82C488;
    LDA.B $0A                            ;82C48C;
    CMP.B #$25                           ;82C48E;
    BNE CODE_82C495                      ;82C490;
    JSR.W CODE_82C4E5                    ;82C492;

CODE_82C495:
    JSL.L CODE_828398                    ;82C495;

CODE_82C499:
    JMP.W CODE_82C6B9                    ;82C499;

CODE_82C49C:
    DEC.B $36                            ;82C49C;
    BNE CODE_82C4A4                      ;82C49E;
    LDA.B #$06                           ;82C4A0;
    STA.B $02                            ;82C4A2;

CODE_82C4A4:
    JMP.W CODE_82C6B9                    ;82C4A4;

CODE_82C4A7:
    JSL.L CODE_828174                    ;82C4A7;
    REP #$20                             ;82C4AB;
    LDA.W #$FE00                         ;82C4AD;
    CMP.B $1C                            ;82C4B0;
    BMI CODE_82C4B6                      ;82C4B2;
    STA.B $1C                            ;82C4B4;

CODE_82C4B6:
    LDA.W $1E5C                          ;82C4B6;
    CLC                                  ;82C4B9;
    ADC.W #$0140                         ;82C4BA;
    CMP.B $08                            ;82C4BD;
    SEP #$20                             ;82C4BF;
    BCC CODE_82C4CD                      ;82C4C1;
    JSL.L CODE_8491BE                    ;82C4C3;
    LDA.B $2B                            ;82C4C7;
    BIT.B #$04                           ;82C4C9;
    BEQ CODE_82C4E4                      ;82C4CB;

CODE_82C4CD:
    JSL.L CODE_84A4AB                    ;82C4CD;
    LDA.B #$3C                           ;82C4D1;
    JSL.L CODE_84A333                    ;82C4D3;
    LDA.B $0A                            ;82C4D7;
    CMP.B #$25                           ;82C4D9;
    BNE CODE_82C4E0                      ;82C4DB;
    JSR.W CODE_82C4E5                    ;82C4DD;

CODE_82C4E0:
    JSL.L CODE_828398                    ;82C4E0;

CODE_82C4E4:
    RTS                                  ;82C4E4;

CODE_82C4E5:
    PHP                                  ;82C4E5;
    LDX.B #$06                           ;82C4E6;

CODE_82C4E8:
    REP #$21                             ;82C4E8;
    LDA.B $05                            ;82C4EA;
    ADC.W #$0002                         ;82C4EC;
    STA.B $05                            ;82C4EF;
    SEP #$20                             ;82C4F1;
    LDA.B #$01                           ;82C4F3;
    PHX                                  ;82C4F5;
    JSL.L CODE_84A37F                    ;82C4F6;
    PLX                                  ;82C4FA;
    DEX                                  ;82C4FB;
    BNE CODE_82C4E8                      ;82C4FC;
    PLP                                  ;82C4FE;
    RTS                                  ;82C4FF;

CODE_82C500:
    JSL.L CODE_8282D3                    ;82C500;
    BNE CODE_82C530                      ;82C504;
    INC.W $0000,X                        ;82C506;
    LDA.B #$0C                           ;82C509;
    STA.W $000A,X                        ;82C50B;
    LDA.B #$03                           ;82C50E;
    STA.W $000B,X                        ;82C510;
    REP #$21                             ;82C513;
    LDA.B $08                            ;82C515;
    ADC.W #$0010                         ;82C517;
    STA.W $0008,X                        ;82C51A;
    JSL.L CODE_849086                    ;82C51D;
    AND.W #$001F                         ;82C521;
    CLC                                  ;82C524;
    ADC.B $05                            ;82C525;
    SEC                                  ;82C527;
    SBC.W #$0010                         ;82C528;
    STA.W $0005,X                        ;82C52B;
    SEP #$20                             ;82C52E;

CODE_82C530:
    SEP #$10                             ;82C530;
    RTS                                  ;82C532;

CODE_82C533:
    LDA.W $0BCF                          ;82C533;
    AND.B #$7F                           ;82C536;
    BNE CODE_82C53B                      ;82C538;
    RTS                                  ;82C53A;

CODE_82C53B:
    REP #$30                             ;82C53B;
    LDA.W $0BAD                          ;82C53D;
    SEC                                  ;82C540;
    SBC.W $0BCA                          ;82C541;
    STA.W $0008                          ;82C544;
    LDA.W $0BB0                          ;82C547;
    CLC                                  ;82C54A;
    ADC.W #$0009                         ;82C54B;
    CMP.B $08                            ;82C54E;
    BCC CODE_82C5A0                      ;82C550;
    LDA.W $0BB0                          ;82C552;
    CLC                                  ;82C555;
    ADC.W #$FFE5                         ;82C556;
    CMP.B $08                            ;82C559;
    BCS CODE_82C5A0                      ;82C55B;
    LDA.W $0008                          ;82C55D;
    STA.W $000A                          ;82C560;
    BPL CODE_82C574                      ;82C563;
    JSR.W CODE_82C69F                    ;82C565;
    BEQ CODE_82C584                      ;82C568;
    STZ.W $000A                          ;82C56A;
    JSR.W CODE_82C685                    ;82C56D;
    BEQ CODE_82C584                      ;82C570;
    BRA CODE_82C5A0                      ;82C572;

CODE_82C574:
    JSR.W CODE_82C685                    ;82C574;
    BEQ CODE_82C584                      ;82C577;
    LDA.W #$FFFF                         ;82C579;
    STA.W $000A                          ;82C57C;
    JSR.W CODE_82C69F                    ;82C57F;
    BNE CODE_82C5A0                      ;82C582;

CODE_82C584:
    LDX.W #$0002                         ;82C584;
    LDA.W #$0001                         ;82C587;
    LDY.W $000A                          ;82C58A;
    BMI CODE_82C595                      ;82C58D;
    LDA.W #$FFFF                         ;82C58F;
    LDX.W #$0001                         ;82C592;

CODE_82C595:
    CLC                                  ;82C595;
    ADC.W $0BAD                          ;82C596;
    STA.W $0BAD                          ;82C599;
    TXA                                  ;82C59C;
    TSB.W $0BD4                          ;82C59D;

CODE_82C5A0:
    LDA.W $0BB0                          ;82C5A0;
    CMP.W $0BCC                          ;82C5A3;
    BEQ CODE_82C5AC                      ;82C5A6;
    BPL CODE_82C5DE                      ;82C5A8;
    BRA CODE_82C5B5                      ;82C5AA;

CODE_82C5AC:
    LDA.W $0BC4                          ;82C5AC;
    BEQ CODE_82C5DE                      ;82C5AF;
    BPL CODE_82C5B5                      ;82C5B1;
    BRA CODE_82C5DE                      ;82C5B3;

CODE_82C5B5:
    LDA.B $05                            ;82C5B5;
    SEC                                  ;82C5B7;
    SBC.W $0BAD                          ;82C5B8;
    CLC                                  ;82C5BB;
    ADC.W #$0017                         ;82C5BC;
    CMP.W #$002E                         ;82C5BF;
    BCS CODE_82C5DE                      ;82C5C2;
    LDA.W $0BB0                          ;82C5C4;
    CLC                                  ;82C5C7;
    ADC.W #$FFEE                         ;82C5C8;
    CMP.B $08                            ;82C5CB;
    BCC CODE_82C5DE                      ;82C5CD;
    LDA.B $08                            ;82C5CF;
    CLC                                  ;82C5D1;
    ADC.W #$0010                         ;82C5D2;
    STA.W $0BB0                          ;82C5D5;
    LDA.W #$0008                         ;82C5D8;
    TSB.W $0BD4                          ;82C5DB;

CODE_82C5DE:
    LDX.W #$0004                         ;82C5DE;
    LDA.W $0BD7                          ;82C5E1;
    AND.W #$00FF                         ;82C5E4;
    BEQ CODE_82C5EC                      ;82C5E7;
    LDX.W #$0000                         ;82C5E9;

CODE_82C5EC:
    STX.W $000E                          ;82C5EC;
    LDA.W $0BAD                          ;82C5EF;
    SEC                                  ;82C5F2;
    SBC.B $05                            ;82C5F3;
    CLC                                  ;82C5F5;
    ADC.W #$000F                         ;82C5F6;
    CMP.W #$001E                         ;82C5F9;
    BCS CODE_82C645                      ;82C5FC;
    LDA.W $0BAD                          ;82C5FE;
    SEC                                  ;82C601;
    SBC.B $05                            ;82C602;
    CLC                                  ;82C604;
    ADC.W #$0010                         ;82C605;
    TAX                                  ;82C608;
    LDA.W DATA8_86CCD0,X                 ;82C609;
    ORA.W #$FF00                         ;82C60C;
    CLC                                  ;82C60F;
    ADC.B $08                            ;82C610;
    STA.W $000A                          ;82C612;
    LDA.W $0BB0                          ;82C615;
    CLC                                  ;82C618;
    ADC.W #$0010                         ;82C619;
    CLC                                  ;82C61C;
    ADC.W $000E                          ;82C61D;
    STA.W $0000                          ;82C620;
    CMP.W $000A                          ;82C623;
    BCC CODE_82C645                      ;82C626;
    LDA.B $08                            ;82C628;
    CLC                                  ;82C62A;
    ADC.W #$0010                         ;82C62B;
    CMP.W $0000                          ;82C62E;
    BCC CODE_82C645                      ;82C631;
    LDA.W $000A                          ;82C633;
    SEC                                  ;82C636;
    SBC.W #$000F                         ;82C637;
    STA.W $0BB0                          ;82C63A;
    LDA.W #$0004                         ;82C63D;
    TSB.W $0BD4                          ;82C640;
    TSB.B $2C                            ;82C643;

CODE_82C645:
    SEP #$30                             ;82C645;
    RTS                                  ;82C647;
    LDA.B $05                            ;82C648;
    SEC                                  ;82C64A;
    SBC.W $0BAD                          ;82C64B;
    CLC                                  ;82C64E;
    ADC.W #$0017                         ;82C64F;
    CMP.W #$002E                         ;82C652;
    BCS CODE_82C645                      ;82C655;
    LDA.W $0BB0                          ;82C657;
    CLC                                  ;82C65A;
    ADC.W #$0010                         ;82C65B;
    CLC                                  ;82C65E;
    ADC.W $000E                          ;82C65F;
    STA.W $0000                          ;82C662;
    LDA.B $08                            ;82C665;
    CLC                                  ;82C667;
    ADC.W #$0010                         ;82C668;
    CMP.W $0000                          ;82C66B;
    BCC CODE_82C645                      ;82C66E;
    LDA.B $08                            ;82C670;
    CMP.W $0000                          ;82C672;
    BCS CODE_82C645                      ;82C675;
    ADC.W #$FFF1                         ;82C677;
    STA.W $0BB0                          ;82C67A;
    LDA.W #$0004                         ;82C67D;
    TSB.W $0BD4                          ;82C680;
    BRA CODE_82C645                      ;82C683;

CODE_82C685:
    LDA.W #$000A                         ;82C685;
    CLC                                  ;82C688;
    ADC.W $0BAD                          ;82C689;
    SEC                                  ;82C68C;
    SBC.B $05                            ;82C68D;
    CLC                                  ;82C68F;
    ADC.W #$0010                         ;82C690;
    CMP.W #$0020                         ;82C693;
    BEQ CODE_82C69B                      ;82C696;
    BCC CODE_82C69B                      ;82C698;
    RTS                                  ;82C69A;

CODE_82C69B:
    LDA.W #$0000                         ;82C69B;
    RTS                                  ;82C69E;

CODE_82C69F:
    LDA.W #$FFF6                         ;82C69F;
    CLC                                  ;82C6A2;
    ADC.W $0BAD                          ;82C6A3;
    SEC                                  ;82C6A6;
    SBC.B $05                            ;82C6A7;
    CLC                                  ;82C6A9;
    ADC.W #$0010                         ;82C6AA;
    CMP.W #$0020                         ;82C6AD;
    BEQ CODE_82C6B5                      ;82C6B0;
    BCC CODE_82C6B5                      ;82C6B2;
    RTS                                  ;82C6B4;

CODE_82C6B5:
    LDA.W #$0000                         ;82C6B5;
    RTS                                  ;82C6B8;

CODE_82C6B9:
    REP #$30                             ;82C6B9;
    LDA.B $0B                            ;82C6BB;
    AND.W #$00FF                         ;82C6BD;
    TAY                                  ;82C6C0;
    LDX.B $0C                            ;82C6C1;
    LDA.W $0034,X                        ;82C6C3;
    SEC                                  ;82C6C6;
    SBC.W DATA8_86CCF0,Y                 ;82C6C7;
    AND.W #$03FF                         ;82C6CA;
    TAX                                  ;82C6CD;
    LDA.L $7FD200,X                      ;82C6CE;
    STA.B $05                            ;82C6D2;
    LDA.L $7FD202,X                      ;82C6D4;
    STA.B $08                            ;82C6D8;
    SEP #$20                             ;82C6DA;
    LDA.L $7FD204,X                      ;82C6DC;
    AND.B #$40                           ;82C6E0;
    STA.W $0000                          ;82C6E2;
    LDA.B $11                            ;82C6E5;
    AND.B #$3F                           ;82C6E7;
    ORA.W $0000                          ;82C6E9;
    STA.B $11                            ;82C6EC;
    LDY.W #$0012                         ;82C6EE;
    LDA.B $0B                            ;82C6F1;
    CMP.B #$0C                           ;82C6F3;
    BEQ CODE_82C6FA                      ;82C6F5;
    LDY.W #$0009                         ;82C6F7;

CODE_82C6FA:
    STY.W $0000                          ;82C6FA;
    LDA.L $7FD204,X                      ;82C6FD;
    AND.B #$3F                           ;82C701;
    CLC                                  ;82C703;
    ADC.W $0000                          ;82C704;
    JSL.L CODE_848F07                    ;82C707;
    SEP #$10                             ;82C70B;
    RTS                                  ;82C70D;

CODE_82C70E:
    PHP                                  ;82C70E;
    REP #$20                             ;82C70F;
    LDA.B $05                            ;82C711;
    SEC                                  ;82C713;
    SBC.B $22                            ;82C714;
    CLC                                  ;82C716;
    ADC.W $0BAD                          ;82C717;
    STA.W $0BAD                          ;82C71A;
    LDA.B $08                            ;82C71D;
    SEC                                  ;82C71F;
    SBC.B $24                            ;82C720;
    CLC                                  ;82C722;
    ADC.W $0BB0                          ;82C723;
    STA.W $0BB0                          ;82C726;
    SEP #$20                             ;82C729;
    PLP                                  ;82C72B;
    RTL                                  ;82C72C;

CODE_82C72D:
    LDX.B $01                            ;82C72D;
    JMP.W (PTR16_82C732,X)               ;82C72F;

PTR16_82C732:
    dw CODE_82C738                       ;82C732;
    dw CODE_82C764                       ;82C734;
    dw CODE_82C402                       ;82C736;

CODE_82C738:
    LDA.B #$02                           ;82C738;
    STA.B $01                            ;82C73A;
    LDA.B #$04                           ;82C73C;
    STA.B $12                            ;82C73E;
    LDA.B #$48                           ;82C740;
    STA.B $27                            ;82C742;
    LDA.B #$04                           ;82C744;
    STA.B $26                            ;82C746;
    LDA.B #$06                           ;82C748;
    STA.B $28                            ;82C74A;
    LDA.B #$0C                           ;82C74C;
    STA.B $0B                            ;82C74E;
    STA.B $2F                            ;82C750;
    STZ.B $3C                            ;82C752;
    LDA.L $7F822E                        ;82C754;
    STA.B $18                            ;82C758;
    LDA.B #$30                           ;82C75A;
    STA.B $16                            ;82C75C;
    LDA.B #$0C                           ;82C75E;
    JML.L CODE_848F07                    ;82C760;

CODE_82C764:
    LDA.L $7F832E                        ;82C764;
    STA.B $11                            ;82C768;
    REP #$10                             ;82C76A;
    LDX.B $0C                            ;82C76C;
    LDA.W $0027,X                        ;82C76E;
    AND.B #$7F                           ;82C771;
    BNE CODE_82C77E                      ;82C773;
    LDA.B #$04                           ;82C775;
    STA.B $01                            ;82C777;
    STZ.B $02                            ;82C779;
    STZ.B $03                            ;82C77B;
    RTL                                  ;82C77D;

CODE_82C77E:
    LDA.W $003C,X                        ;82C77E;
    BEQ CODE_82C78A                      ;82C781;
    STZ.W $003C,X                        ;82C783;
    LDA.B #$0E                           ;82C786;
    TRB.B $11                            ;82C788;

CODE_82C78A:
    SEP #$10                             ;82C78A;
    LDX.B $02                            ;82C78C;
    JSR.W (PTR16_82C7CA,X)               ;82C78E;
    JSR.W CODE_82C6B9                    ;82C791;
    REP #$21                             ;82C794;
    LDA.B $0F                            ;82C796;
    AND.W #$000F                         ;82C798;
    ADC.W #$CD09                         ;82C79B;
    STA.B $20                            ;82C79E;
    SEP #$20                             ;82C7A0;
    JSL.L CODE_849B43                    ;82C7A2;
    BEQ CODE_82C7C2                      ;82C7A6;
    LDA.B $27                            ;82C7A8;
    AND.B #$7F                           ;82C7AA;
    BNE CODE_82C7B4                      ;82C7AC;
    LDA.B #$02                           ;82C7AE;
    STA.B $02                            ;82C7B0;
    BRA CODE_82C7C2                      ;82C7B2;

CODE_82C7B4:
    REP #$10                             ;82C7B4;
    LDX.B $0C                            ;82C7B6;
    LDA.B $27                            ;82C7B8;
    STA.W $0027,X                        ;82C7BA;
    STA.W $003C,X                        ;82C7BD;
    SEP #$10                             ;82C7C0;

CODE_82C7C2:
    JSL.L CODE_849B03                    ;82C7C2;
    JML.L CODE_8280B4                    ;82C7C6;

PTR16_82C7CA:
    dw CODE_82C7CE                       ;82C7CA;
    dw CODE_82C7CF                       ;82C7CC;

CODE_82C7CE:
    RTS                                  ;82C7CE;

CODE_82C7CF:
    LDX.B $03                            ;82C7CF;
    BNE CODE_82C7E6                      ;82C7D1;
    INC.B $03                            ;82C7D3;
    JSL.L CODE_84A4AB                    ;82C7D5;
    LDA.B #$04                           ;82C7D9;
    STA.B $36                            ;82C7DB;
    LDA.B #$30                           ;82C7DD;
    STA.B $34                            ;82C7DF;
    LDA.B #$02                           ;82C7E1;
    STA.B $35                            ;82C7E3;
    RTS                                  ;82C7E5;

CODE_82C7E6:
    DEC.B $36                            ;82C7E6;
    BNE CODE_82C832                      ;82C7E8;
    LDA.B #$04                           ;82C7EA;
    STA.B $36                            ;82C7EC;
    REP #$30                             ;82C7EE;
    LDA.W #$0508                         ;82C7F0;
    STA.W $0004                          ;82C7F3;
    LDX.B $0C                            ;82C7F6;
    LDA.B $34                            ;82C7F8;
    SEC                                  ;82C7FA;
    SBC.W #$0028                         ;82C7FB;
    STA.B $34                            ;82C7FE;
    BPL CODE_82C814                      ;82C800;
    SEP #$20                             ;82C802;
    LDA.B #$04                           ;82C804;
    STA.W $0001,X                        ;82C806;
    STZ.W $0002,X                        ;82C809;
    STZ.W $0003,X                        ;82C80C;
    STZ.W $0027,X                        ;82C80F;
    BRA CODE_82C830                      ;82C812;

CODE_82C814:
    LDA.W $0034,X                        ;82C814;
    SEC                                  ;82C817;
    SBC.B $34                            ;82C818;
    AND.W #$03FF                         ;82C81A;
    TAX                                  ;82C81D;
    LDA.L $7FD200,X                      ;82C81E;
    STA.W $0000                          ;82C822;
    LDA.L $7FD202,X                      ;82C825;
    STA.W $0002                          ;82C829;
    JSL.L CODE_84A462                    ;82C82C;

CODE_82C830:
    SEP #$30                             ;82C830;

CODE_82C832:
    RTS                                  ;82C832;

CODE_82C833:
    LDX.B $01                            ;82C833;
    JMP.W (PTR16_82C838,X)               ;82C835;

PTR16_82C838:
    dw CODE_82C840                       ;82C838;
    dw CODE_82C88B                       ;82C83A;
    dw CODE_82C90C                       ;82C83C;
    dw CODE_82D036                       ;82C83E;

CODE_82C840:
    LDA.B $02                            ;82C840;
    BNE CODE_82C84A                      ;82C842;
    INC.B $02                            ;82C844;
    LDA.B #$10                           ;82C846;
    STA.B $35                            ;82C848;

CODE_82C84A:
    DEC.B $35                            ;82C84A;
    BEQ CODE_82C84F                      ;82C84C;
    RTL                                  ;82C84E;

CODE_82C84F:
    JSL.L CODE_82827D                    ;82C84F;
    LDA.B $11                            ;82C853;
    AND.B #$0E                           ;82C855;
    STA.B $34                            ;82C857;
    LDA.B #$02                           ;82C859;
    STA.B $12                            ;82C85B;
    LDA.B #$06                           ;82C85D;
    STA.B $26                            ;82C85F;
    LDA.B #$20                           ;82C861;
    STA.B $27                            ;82C863;
    STZ.B $02                            ;82C865;
    LDA.B #$40                           ;82C867;
    STA.B $1E                            ;82C869;
    LDA.B #$FF                           ;82C86B;
    STA.B $2F                            ;82C86D;
    REP #$20                             ;82C86F;
    LDA.W #$CD11                         ;82C871;
    STA.B $20                            ;82C874;
    STZ.B $36                            ;82C876;
    SEP #$20                             ;82C878;
    STZ.B $39                            ;82C87A;
    STZ.B $3A                            ;82C87C;
    STZ.B $3B                            ;82C87E;
    STZ.B $3C                            ;82C880;
    STZ.B $3D                            ;82C882;
    LDA.B #$00                           ;82C884;
    JSL.L CODE_848F07                    ;82C886;
    RTL                                  ;82C88A;

CODE_82C88B:
    LDX.B $02                            ;82C88B;
    JSR.W (PTR16_82C894,X)               ;82C88D;
    JMP.W CODE_8280B4                    ;82C890;
    RTL                                  ;82C893;

PTR16_82C894:
    dw CODE_82C89A                       ;82C894;
    dw CODE_82C8B4                       ;82C896;
    dw CODE_82C8D4                       ;82C898;

CODE_82C89A:
    LDA.W $1F3F                          ;82C89A;
    BEQ CODE_82C8B3                      ;82C89D;
    JSL.L CODE_849FE6                    ;82C89F;
    LDA.B #$02                           ;82C8A3;
    STA.B $02                            ;82C8A5;
    LDA.B #$05                           ;82C8A7;
    JSL.L CODE_848F07                    ;82C8A9;
    LDA.B #$7E                           ;82C8AD;
    JSL.L CODE_8088A2                    ;82C8AF;

CODE_82C8B3:
    RTS                                  ;82C8B3;

CODE_82C8B4:
    LDA.B $0F                            ;82C8B4;
    BMI CODE_82C8BF                      ;82C8B6;
    JSL.L CODE_848EEA                    ;82C8B8;
    JMP.W CODE_82C8D3                    ;82C8BC;

CODE_82C8BF:
    REP #$20                             ;82C8BF;
    TDC                                  ;82C8C1;
    STA.W $1F0E                          ;82C8C2;
    SEP #$20                             ;82C8C5;
    STZ.B $27                            ;82C8C7;
    LDA.B #$04                           ;82C8C9;
    STA.B $02                            ;82C8CB;
    LDA.B #$00                           ;82C8CD;
    JSL.L CODE_848F07                    ;82C8CF;

CODE_82C8D3:
    RTS                                  ;82C8D3;

CODE_82C8D4:
    LDA.W $0B9C                          ;82C8D4;
    LSR A                                ;82C8D7;
    BCC CODE_82C907                      ;82C8D8;
    LDA.B $27                            ;82C8DA;
    AND.B #$7F                           ;82C8DC;
    CMP.B #$20                           ;82C8DE;
    BEQ CODE_82C8F0                      ;82C8E0;
    INC A                                ;82C8E2;
    ORA.B #$80                           ;82C8E3;
    STA.B $27                            ;82C8E5;
    LDA.B #$0C                           ;82C8E7;
    JSL.L CODE_8088CD                    ;82C8E9;
    JMP.W CODE_82C907                    ;82C8ED;

CODE_82C8F0:
    LDA.B #$04                           ;82C8F0;
    STA.B $01                            ;82C8F2;
    STZ.B $02                            ;82C8F4;
    STZ.B $03                            ;82C8F6;
    STZ.B $38                            ;82C8F8;
    STZ.W $1F1D                          ;82C8FA;
    LDA.B #$1E                           ;82C8FD;
    JSL.L CODE_8087A2                    ;82C8FF;
    JSL.L CODE_849FFE                    ;82C903;

CODE_82C907:
    JSL.L CODE_848EEA                    ;82C907;
    RTS                                  ;82C90B;

CODE_82C90C:
    LDX.B $02                            ;82C90C;
    JSR.W (PTR16_82C9A6,X)               ;82C90E;
    LDA.B $27                            ;82C911;
    BNE CODE_82C918                      ;82C913;
    JMP.W CODE_82C9A1                    ;82C915;

CODE_82C918:
    LDA.B $38                            ;82C918;
    BEQ CODE_82C91F                      ;82C91A;
    JMP.W CODE_82C923                    ;82C91C;

CODE_82C91F:
    LDA.B #$0A                           ;82C91F;
    STA.B $28                            ;82C921;

CODE_82C923:
    JSL.L CODE_849B43                    ;82C923;
    BEQ CODE_82C96A                      ;82C927;
    LDA.B $27                            ;82C929;
    AND.B #$7F                           ;82C92B;
    BNE CODE_82C95A                      ;82C92D;
    LDA.W $0BCF                          ;82C92F;
    AND.B #$7F                           ;82C932;
    BEQ CODE_82C95E                      ;82C934;
    LDA.B #$06                           ;82C936;
    STA.B $01                            ;82C938;
    STZ.B $02                            ;82C93A;
    LDA.B #$20                           ;82C93C;
    STA.B $35                            ;82C93E;
    LDA.B #$01                           ;82C940;
    STA.W $0BD8                          ;82C942;
    STA.W $1F0C                          ;82C945;
    JSL.L CODE_849FE6                    ;82C948;
    LDA.B #$01                           ;82C94C;
    STA.W $1F13                          ;82C94E;
    STA.W $1F14                          ;82C951;
    STA.W $1F17                          ;82C954;
    JMP.W CODE_82C9A1                    ;82C957;

CODE_82C95A:
    LDA.B #$0E                           ;82C95A;
    TRB.B $11                            ;82C95C;

CODE_82C95E:
    LDA.B #$18                           ;82C95E;
    STA.B $38                            ;82C960;
    LDA.B #$05                           ;82C962;
    STA.B $28                            ;82C964;
    LDA.B #$01                           ;82C966;
    STA.B $3D                            ;82C968;

CODE_82C96A:
    LDA.W $1F1D                          ;82C96A;
    CMP.B #$02                           ;82C96D;
    BEQ CODE_82C979                      ;82C96F;
    CMP.B #$1D                           ;82C971;
    BEQ CODE_82C979                      ;82C973;
    CMP.B #$03                           ;82C975;
    BNE CODE_82C991                      ;82C977;

CODE_82C979:
    LDA.B $3C                            ;82C979;
    BNE CODE_82C991                      ;82C97B;
    LDA.B #$07                           ;82C97D;
    JSL.L CODE_848F07                    ;82C97F;
    LDA.B #$0C                           ;82C983;
    STA.B $02                            ;82C985;
    STZ.B $03                            ;82C987;
    LDA.B #$01                           ;82C989;
    STA.B $3C                            ;82C98B;
    LDA.B #$22                           ;82C98D;
    STA.B $38                            ;82C98F;

CODE_82C991:
    LDA.B $3D                            ;82C991;
    BNE CODE_82C999                      ;82C993;
    LDA.B $34                            ;82C995;
    TSB.B $11                            ;82C997;

CODE_82C999:
    STZ.B $3D                            ;82C999;
    DEC.B $38                            ;82C99B;
    JSL.L CODE_849B03                    ;82C99D;

CODE_82C9A1:
    JML.L CODE_8280B4                    ;82C9A1;
    RTL                                  ;82C9A5;

PTR16_82C9A6:
    dw CODE_82C9B4                       ;82C9A6;
    dw CODE_82CB90                       ;82C9A8;
    dw CODE_82CC71                       ;82C9AA;
    dw CODE_82CDD5                       ;82C9AC;
    dw CODE_82CE84                       ;82C9AE;
    dw CODE_82CEC1                       ;82C9B0;
    dw CODE_82CFCB                       ;82C9B2;

CODE_82C9B4:
    LDX.B $03                            ;82C9B4;
    JSR.W (PTR16_82C9BA,X)               ;82C9B6;
    RTS                                  ;82C9B9;

PTR16_82C9BA:
    dw CODE_82C9CA                       ;82C9BA;
    dw CODE_82CA4F                       ;82C9BC;
    dw CODE_82CAAE                       ;82C9BE;
    dw CODE_82CAD4                       ;82C9C0;
    dw CODE_82CB29                       ;82C9C2;
    dw CODE_82CB38                       ;82C9C4;
    dw CODE_82CB65                       ;82C9C6;
    dw CODE_82CB74                       ;82C9C8;

CODE_82C9CA:
    LDA.B $39                            ;82C9CA;
    BNE CODE_82C9D7                      ;82C9CC;
    LDA.B #$02                           ;82C9CE;
    JSL.L CODE_848F07                    ;82C9D0;
    JMP.W CODE_82CA02                    ;82C9D4;

CODE_82C9D7:
    LDA.B $11                            ;82C9D7;
    EOR.B #$40                           ;82C9D9;
    STA.B $11                            ;82C9DB;
    LDA.B $11                            ;82C9DD;
    AND.B #$40                           ;82C9DF;
    BEQ CODE_82C9F0                      ;82C9E1;
    REP #$20                             ;82C9E3;
    LDA.B $05                            ;82C9E5;
    CLC                                  ;82C9E7;
    ADC.W #$0010                         ;82C9E8;
    STA.B $05                            ;82C9EB;
    JMP.W CODE_82C9FA                    ;82C9ED;

CODE_82C9F0:
    REP #$20                             ;82C9F0;
    LDA.B $05                            ;82C9F2;
    SEC                                  ;82C9F4;
    SBC.W #$0010                         ;82C9F5;
    STA.B $05                            ;82C9F8;

CODE_82C9FA:
    SEP #$20                             ;82C9FA;
    LDA.B #$03                           ;82C9FC;
    JSL.L CODE_848F07                    ;82C9FE;

CODE_82CA02:
    LDA.B $3A                            ;82CA02;
    BNE CODE_82CA0C                      ;82CA04;
    LDA.B $39                            ;82CA06;
    CMP.B #$03                           ;82CA08;
    BNE CODE_82CA21                      ;82CA0A;

CODE_82CA0C:
    REP #$20                             ;82CA0C;
    LDA.W #$CD11                         ;82CA0E;
    STA.B $20                            ;82CA11;
    SEP #$20                             ;82CA13;
    LDA.B #$06                           ;82CA15;
    STA.B $03                            ;82CA17;
    JSR.W CODE_82D0E7                    ;82CA19;
    STZ.B $39                            ;82CA1C;
    JMP.W CODE_82CA4E                    ;82CA1E;

CODE_82CA21:
    LDA.B #$02                           ;82CA21;
    STA.B $03                            ;82CA23;
    INC.B $39                            ;82CA25;
    LDA.B $11                            ;82CA27;
    AND.B #$40                           ;82CA29;
    BEQ CODE_82CA37                      ;82CA2B;
    REP #$20                             ;82CA2D;
    LDA.W #$0600                         ;82CA2F;
    STA.B $1A                            ;82CA32;
    JMP.W CODE_82CA3E                    ;82CA34;

CODE_82CA37:
    REP #$20                             ;82CA37;
    LDA.W #$FA00                         ;82CA39;
    STA.B $1A                            ;82CA3C;

CODE_82CA3E:
    LDA.W #$0550                         ;82CA3E;
    STA.B $1C                            ;82CA41;
    LDA.W #$CD1B                         ;82CA43;
    STA.B $20                            ;82CA46;
    SEP #$20                             ;82CA48;
    LDA.B #$40                           ;82CA4A;
    STA.B $1E                            ;82CA4C;

CODE_82CA4E:
    RTS                                  ;82CA4E;

CODE_82CA4F:
    LDA.B $0F                            ;82CA4F;
    AND.B #$01                           ;82CA51;
    BEQ CODE_82CA59                      ;82CA53;
    JSL.L CODE_848EEA                    ;82CA55;

CODE_82CA59:
    LDA.B $0F                            ;82CA59;
    AND.B #$02                           ;82CA5B;
    BEQ CODE_82CA63                      ;82CA5D;
    JSL.L CODE_8281E8                    ;82CA5F;

CODE_82CA63:
    JSL.L CODE_8491BE                    ;82CA63;
    LDA.B $2B                            ;82CA67;
    AND.B #$01                           ;82CA69;
    BNE CODE_82CA73                      ;82CA6B;
    LDA.B $2B                            ;82CA6D;
    AND.B #$02                           ;82CA6F;
    BEQ CODE_82CA86                      ;82CA71;

CODE_82CA73:
    LDA.B $2B                            ;82CA73;
    AND.B #$04                           ;82CA75;
    BNE CODE_82CA86                      ;82CA77;
    LDA.B #$04                           ;82CA79;
    STA.B $03                            ;82CA7B;
    LDA.B #$09                           ;82CA7D;
    JSL.L CODE_848F07                    ;82CA7F;
    JMP.W CODE_82CAAB                    ;82CA83;

CODE_82CA86:
    REP #$20                             ;82CA86;
    LDA.B $1C                            ;82CA88;
    BPL CODE_82CAAB                      ;82CA8A;
    SEP #$20                             ;82CA8C;
    LDA.B $3A                            ;82CA8E;
    BEQ CODE_82CAA5                      ;82CA90;
    LDA.B $2B                            ;82CA92;
    AND.B #$04                           ;82CA94;
    BEQ CODE_82CAAB                      ;82CA96;
    LDA.B #$04                           ;82CA98;
    JSL.L CODE_848F07                    ;82CA9A;
    LDA.B #$0E                           ;82CA9E;
    STA.B $03                            ;82CAA0;
    JMP.W CODE_82CAAB                    ;82CAA2;

CODE_82CAA5:
    LDA.B #$11                           ;82CAA5;
    JSL.L CODE_848F07                    ;82CAA7;

CODE_82CAAB:
    SEP #$20                             ;82CAAB;
    RTS                                  ;82CAAD;

CODE_82CAAE:
    LDA.B $0F                            ;82CAAE;
    BMI CODE_82CAB9                      ;82CAB0;
    JSL.L CODE_848EEA                    ;82CAB2;
    JMP.W CODE_82CAD3                    ;82CAB6;

CODE_82CAB9:
    REP #$20                             ;82CAB9;
    LDA.B $08                            ;82CABB;
    SEC                                  ;82CABD;
    SBC.W $0BB0                          ;82CABE;
    BMI CODE_82CAC9                      ;82CAC1;
    SEP #$20                             ;82CAC3;
    LDA.B $3A                            ;82CAC5;
    BEQ CODE_82CACF                      ;82CAC7;

CODE_82CAC9:
    SEP #$20                             ;82CAC9;
    LDA.B #$03                           ;82CACB;
    STA.B $39                            ;82CACD;

CODE_82CACF:
    LDA.B #$00                           ;82CACF;
    STA.B $03                            ;82CAD1;

CODE_82CAD3:
    RTS                                  ;82CAD3;

CODE_82CAD4:
    JSL.L CODE_8281E8                    ;82CAD4;
    JSL.L CODE_8491BE                    ;82CAD8;
    LDA.B $2B                            ;82CADC;
    AND.B #$04                           ;82CADE;
    BNE CODE_82CB1A                      ;82CAE0;
    LDA.B $2B                            ;82CAE2;
    AND.B #$01                           ;82CAE4;
    BNE CODE_82CAEE                      ;82CAE6;
    LDA.B $2B                            ;82CAE8;
    AND.B #$02                           ;82CAEA;
    BEQ CODE_82CB26                      ;82CAEC;

CODE_82CAEE:
    LDA.B #$0A                           ;82CAEE;
    JSL.L CODE_848F07                    ;82CAF0;
    LDA.B #$0A                           ;82CAF4;
    STA.B $03                            ;82CAF6;
    LDA.B #$40                           ;82CAF8;
    STA.B $1E                            ;82CAFA;
    REP #$20                             ;82CAFC;
    LDA.W #$03D5                         ;82CAFE;
    STA.B $1C                            ;82CB01;
    LDA.B $11                            ;82CB03;
    AND.W #$0040                         ;82CB05;
    BEQ CODE_82CB12                      ;82CB08;
    LDA.W #$FF00                         ;82CB0A;
    STA.B $1A                            ;82CB0D;
    JMP.W CODE_82CB26                    ;82CB0F;

CODE_82CB12:
    LDA.W #$0100                         ;82CB12;
    STA.B $1A                            ;82CB15;
    JMP.W CODE_82CB26                    ;82CB17;

CODE_82CB1A:
    SEP #$20                             ;82CB1A;
    LDA.B #$04                           ;82CB1C;
    JSL.L CODE_848F07                    ;82CB1E;
    LDA.B #$08                           ;82CB22;
    STA.B $03                            ;82CB24;

CODE_82CB26:
    SEP #$20                             ;82CB26;
    RTS                                  ;82CB28;

CODE_82CB29:
    LDA.B $0F                            ;82CB29;
    BMI CODE_82CB34                      ;82CB2B;
    JSL.L CODE_848EEA                    ;82CB2D;
    JMP.W CODE_82CB37                    ;82CB31;

CODE_82CB34:
    JSR.W CODE_82D137                    ;82CB34;

CODE_82CB37:
    RTS                                  ;82CB37;

CODE_82CB38:
    JSL.L CODE_848EEA                    ;82CB38;
    JSL.L CODE_8281E8                    ;82CB3C;
    REP #$20                             ;82CB40;
    LDA.B $1C                            ;82CB42;
    CMP.W #$F700                         ;82CB44;
    BPL CODE_82CB4E                      ;82CB47;
    LDA.W #$F700                         ;82CB49;
    STA.B $1C                            ;82CB4C;

CODE_82CB4E:
    SEP #$20                             ;82CB4E;
    JSL.L CODE_8491BE                    ;82CB50;
    LDA.B $2B                            ;82CB54;
    AND.B #$04                           ;82CB56;
    BEQ CODE_82CB64                      ;82CB58;
    LDA.B #$0B                           ;82CB5A;
    JSL.L CODE_848F07                    ;82CB5C;
    LDA.B #$0C                           ;82CB60;
    STA.B $03                            ;82CB62;

CODE_82CB64:
    RTS                                  ;82CB64;

CODE_82CB65:
    LDA.B $0F                            ;82CB65;
    BMI CODE_82CB70                      ;82CB67;
    JSL.L CODE_848EEA                    ;82CB69;
    JMP.W CODE_82CB73                    ;82CB6D;

CODE_82CB70:
    JSR.W CODE_82D137                    ;82CB70;

CODE_82CB73:
    RTS                                  ;82CB73;

CODE_82CB74:
    LDA.B $0F                            ;82CB74;
    BPL CODE_82CB8B                      ;82CB76;
    LDA.B #$01                           ;82CB78;
    STA.B $35                            ;82CB7A;
    LDA.B #$00                           ;82CB7C;
    JSL.L CODE_848F07                    ;82CB7E;
    LDA.B #$0A                           ;82CB82;
    STA.B $02                            ;82CB84;
    STZ.B $03                            ;82CB86;
    JMP.W CODE_82CB8F                    ;82CB88;

CODE_82CB8B:
    JSL.L CODE_848EEA                    ;82CB8B;

CODE_82CB8F:
    RTS                                  ;82CB8F;

CODE_82CB90:
    LDX.B $03                            ;82CB90;
    JSR.W (PTR16_82CB96,X)               ;82CB92;
    RTS                                  ;82CB95;

PTR16_82CB96:
    dw CODE_82CB9A                       ;82CB96;
    dw CODE_82CBB4                       ;82CB98;

CODE_82CB9A:
    LDA.B #$05                           ;82CB9A;
    JSL.L CODE_848F07                    ;82CB9C;
    LDA.B #$08                           ;82CBA0;
    STA.B $35                            ;82CBA2;
    LDA.B #$02                           ;82CBA4;
    STA.B $03                            ;82CBA6;
    STZ.B $39                            ;82CBA8;
    REP #$20                             ;82CBAA;
    LDA.W #$CD25                         ;82CBAC;
    STA.B $20                            ;82CBAF;
    SEP #$20                             ;82CBB1;
    RTS                                  ;82CBB3;

CODE_82CBB4:
    LDA.B $0F                            ;82CBB4;
    CMP.B #$80                           ;82CBB6;
    BNE CODE_82CBBD                      ;82CBB8;
    JMP.W CODE_82CC5C                    ;82CBBA;

CODE_82CBBD:
    AND.B #$01                           ;82CBBD;
    BNE CODE_82CBC4                      ;82CBBF;
    JMP.W CODE_82CC51                    ;82CBC1;

CODE_82CBC4:
    LDA.B $39                            ;82CBC4;
    BEQ CODE_82CBCB                      ;82CBC6;
    JMP.W CODE_82CC53                    ;82CBC8;

CODE_82CBCB:
    LDY.B $35                            ;82CBCB;
    DEY                                  ;82CBCD;
    DEY                                  ;82CBCE;
    STY.B $35                            ;82CBCF;
    CPY.B #$FF                           ;82CBD1;
    BNE CODE_82CBD8                      ;82CBD3;
    JMP.W CODE_82CC5C                    ;82CBD5;

CODE_82CBD8:
    REP #$10                             ;82CBD8;
    JSL.L CODE_828358                    ;82CBDA;
    BEQ CODE_82CBE3                      ;82CBDE;
    JMP.W CODE_82CC5C                    ;82CBE0;

CODE_82CBE3:
    LDA.B #$01                           ;82CBE3;
    STA.B $39                            ;82CBE5;
    INC.W $0000,X                        ;82CBE7;
    LDA.B #$13                           ;82CBEA;
    STA.W $000B,X                        ;82CBEC;
    LDA.B #$29                           ;82CBEF;
    STA.W $000A,X                        ;82CBF1;
    LDA.B $11                            ;82CBF4;
    ORA.B $34                            ;82CBF6;
    STA.W $0011,X                        ;82CBF8;
    LDA.B $18                            ;82CBFB;
    STA.W $0018,X                        ;82CBFD;
    LDA.B $16                            ;82CC00;
    STA.W $0016,X                        ;82CC02;
    LDA.B $11                            ;82CC05;
    AND.B #$40                           ;82CC07;
    BEQ CODE_82CC1C                      ;82CC09;
    REP #$20                             ;82CC0B;
    LDA.W DATA8_86CD2F,Y                 ;82CC0D;
    STA.W $001A,X                        ;82CC10;
    LDA.W #$0017                         ;82CC13;
    STA.W $0000                          ;82CC16;
    JMP.W CODE_82CC2E                    ;82CC19;

CODE_82CC1C:
    REP #$20                             ;82CC1C;
    LDA.W DATA8_86CD2F,Y                 ;82CC1E;
    EOR.W #$FFFF                         ;82CC21;
    INC A                                ;82CC24;
    STA.W $001A,X                        ;82CC25;
    LDA.W #$FFE9                         ;82CC28;
    STA.W $0000                          ;82CC2B;

CODE_82CC2E:
    LDA.W #$0500                         ;82CC2E;
    STA.W $001C,X                        ;82CC31;
    LDA.W #$FFF4                         ;82CC34;
    STA.W $0002                          ;82CC37;
    LDA.B $05                            ;82CC3A;
    CLC                                  ;82CC3C;
    ADC.W $0000                          ;82CC3D;
    STA.W $0005,X                        ;82CC40;
    LDA.B $08                            ;82CC43;
    CLC                                  ;82CC45;
    ADC.W $0002                          ;82CC46;
    STA.W $0008,X                        ;82CC49;
    SEP #$20                             ;82CC4C;
    JMP.W CODE_82CC53                    ;82CC4E;

CODE_82CC51:
    STZ.B $39                            ;82CC51;

CODE_82CC53:
    SEP #$10                             ;82CC53;
    JSL.L CODE_848EEA                    ;82CC55;
    JMP.W CODE_82CC6E                    ;82CC59;

CODE_82CC5C:
    SEP #$10                             ;82CC5C;
    LDA.B #$0F                           ;82CC5E;
    STA.B $35                            ;82CC60;
    LDA.B #$00                           ;82CC62;
    JSL.L CODE_848F07                    ;82CC64;
    LDA.B #$0A                           ;82CC68;
    STA.B $02                            ;82CC6A;
    STZ.B $03                            ;82CC6C;

CODE_82CC6E:
    SEP #$10                             ;82CC6E;
    RTS                                  ;82CC70;

CODE_82CC71:
    LDX.B $03                            ;82CC71;
    JSR.W (PTR16_82CC77,X)               ;82CC73;
    RTS                                  ;82CC76;

PTR16_82CC77:
    dw CODE_82CC7D                       ;82CC77;
    dw CODE_82CCE4                       ;82CC79;
    dw CODE_82CDB5                       ;82CC7B;

CODE_82CC7D:
    LDA.B #$02                           ;82CC7D;
    STA.B $03                            ;82CC7F;
    LDA.B #$06                           ;82CC81;
    JSL.L CODE_848F07                    ;82CC83;
    LDA.B #$07                           ;82CC87;
    STA.B $35                            ;82CC89;
    STZ.B $39                            ;82CC8B;
    STZ.B $36                            ;82CC8D;
    STZ.B $3A                            ;82CC8F;
    STZ.B $3E                            ;82CC91;
    REP #$20                             ;82CC93;
    LDA.B $08                            ;82CC95;
    SEC                                  ;82CC97;
    SBC.W $0BB0                          ;82CC98;
    CMP.W #$0050                         ;82CC9B;
    BMI CODE_82CCBF                      ;82CC9E;
    LDA.W $0BAD                          ;82CCA0;
    SEC                                  ;82CCA3;
    SBC.B $05                            ;82CCA4;
    BPL CODE_82CCB4                      ;82CCA6;
    CMP.W #$FFE0                         ;82CCA8;
    BMI CODE_82CCBF                      ;82CCAB;
    LSR A                                ;82CCAD;
    ORA.W #$F000                         ;82CCAE;
    JMP.W CODE_82CCBA                    ;82CCB1;

CODE_82CCB4:
    CMP.W #$0020                         ;82CCB4;
    BPL CODE_82CCBF                      ;82CCB7;
    LSR A                                ;82CCB9;

CODE_82CCBA:
    STA.B $1A                            ;82CCBA;
    JMP.W CODE_82CCCA                    ;82CCBC;

CODE_82CCBF:
    LDA.W $0BAD                          ;82CCBF;
    SEC                                  ;82CCC2;
    SBC.B $05                            ;82CCC3;
    ASL A                                ;82CCC5;
    ASL A                                ;82CCC6;
    ASL A                                ;82CCC7;
    STA.B $1A                            ;82CCC8;

CODE_82CCCA:
    LDA.W #$FCA0                         ;82CCCA;
    STA.B $1C                            ;82CCCD;
    LDA.W #$CD25                         ;82CCCF;
    STA.B $20                            ;82CCD2;
    SEP #$20                             ;82CCD4;
    JSL.L CODE_849086                    ;82CCD6;
    AND.B #$07                           ;82CCDA;
    LSR A                                ;82CCDC;
    BNE CODE_82CCE3                      ;82CCDD;
    LDA.B #$01                           ;82CCDF;
    STA.B $36                            ;82CCE1;

CODE_82CCE3:
    RTS                                  ;82CCE3;

CODE_82CCE4:
    LDA.B $3E                            ;82CCE4;
    BNE CODE_82CCED                      ;82CCE6;
    DEC.B $3E                            ;82CCE8;
    JMP.W CODE_82CCF7                    ;82CCEA;

CODE_82CCED:
    LDA.B #$20                           ;82CCED;
    STA.B $3E                            ;82CCEF;
    LDA.B #$77                           ;82CCF1;
    JSL.L CODE_8088CD                    ;82CCF3;

CODE_82CCF7:
    LDA.B $0F                            ;82CCF7;
    BPL CODE_82CD02                      ;82CCF9;
    LDA.B $39                            ;82CCFB;
    BNE CODE_82CD02                      ;82CCFD;
    JMP.W CODE_82CD8F                    ;82CCFF;

CODE_82CD02:
    LDA.B $0F                            ;82CD02;
    AND.B #$01                           ;82CD04;
    BNE CODE_82CD0D                      ;82CD06;
    STZ.B $3A                            ;82CD08;
    JMP.W CODE_82CD86                    ;82CD0A;

CODE_82CD0D:
    LDA.B $3A                            ;82CD0D;
    BEQ CODE_82CD14                      ;82CD0F;
    JMP.W CODE_82CD86                    ;82CD11;

CODE_82CD14:
    DEC.B $35                            ;82CD14;
    LDA.B $35                            ;82CD16;
    BNE CODE_82CD1D                      ;82CD18;
    JMP.W CODE_82CD8F                    ;82CD1A;

CODE_82CD1D:
    REP #$10                             ;82CD1D;
    JSL.L CODE_828358                    ;82CD1F;
    BNE CODE_82CD86                      ;82CD23;
    INC.B $3A                            ;82CD25;
    INC.W $0000,X                        ;82CD27;
    LDA.B #$08                           ;82CD2A;
    STA.W $000B,X                        ;82CD2C;
    LDA.B #$29                           ;82CD2F;
    STA.W $000A,X                        ;82CD31;
    LDA.B $11                            ;82CD34;
    ORA.B $34                            ;82CD36;
    STA.W $0011,X                        ;82CD38;
    LDA.B $18                            ;82CD3B;
    STA.W $0018,X                        ;82CD3D;
    LDA.B $16                            ;82CD40;
    STA.W $0016,X                        ;82CD42;
    REP #$20                             ;82CD45;
    LDA.B $11                            ;82CD47;
    AND.W #$0040                         ;82CD49;
    BNE CODE_82CD57                      ;82CD4C;
    LDA.W #$FFE9                         ;82CD4E;
    STA.W $0000                          ;82CD51;
    JMP.W CODE_82CD5D                    ;82CD54;

CODE_82CD57:
    LDA.W #$0017                         ;82CD57;
    STA.W $0000                          ;82CD5A;

CODE_82CD5D:
    LDA.W #$0010                         ;82CD5D;
    STA.W $0002                          ;82CD60;
    LDA.B $05                            ;82CD63;
    CLC                                  ;82CD65;
    ADC.W $0000                          ;82CD66;
    STA.W $0005,X                        ;82CD69;
    LDA.B $08                            ;82CD6C;
    CLC                                  ;82CD6E;
    ADC.W $0002                          ;82CD6F;
    STA.W $0008,X                        ;82CD72;
    LDA.B $1A                            ;82CD75;
    STA.W $001A,X                        ;82CD77;
    LDA.B $1C                            ;82CD7A;
    STA.W $001C,X                        ;82CD7C;
    SEP #$20                             ;82CD7F;
    LDA.B #$40                           ;82CD81;
    STA.W $001E                          ;82CD83;

CODE_82CD86:
    SEP #$10                             ;82CD86;
    JSL.L CODE_848EEA                    ;82CD88;
    JMP.W CODE_82CDB4                    ;82CD8C;

CODE_82CD8F:
    LDA.B $36                            ;82CD8F;
    BEQ CODE_82CDA4                      ;82CD91;
    LDA.B #$28                           ;82CD93;
    STA.B $35                            ;82CD95;
    LDA.B #$04                           ;82CD97;
    STA.B $03                            ;82CD99;
    LDA.B #$00                           ;82CD9B;
    JSL.L CODE_848F07                    ;82CD9D;
    JMP.W CODE_82CDB4                    ;82CDA1;

CODE_82CDA4:
    LDA.B #$0F                           ;82CDA4;
    STA.B $35                            ;82CDA6;
    LDA.B #$00                           ;82CDA8;
    JSL.L CODE_848F07                    ;82CDAA;
    LDA.B #$0A                           ;82CDAE;
    STA.B $02                            ;82CDB0;
    STZ.B $03                            ;82CDB2;

CODE_82CDB4:
    RTS                                  ;82CDB4;

CODE_82CDB5:
    DEC.B $35                            ;82CDB5;
    BNE CODE_82CDD0                      ;82CDB7;
    LDA.B #$07                           ;82CDB9;
    STA.B $35                            ;82CDBB;
    STZ.B $39                            ;82CDBD;
    STZ.B $3A                            ;82CDBF;
    STZ.B $36                            ;82CDC1;
    LDA.B #$02                           ;82CDC3;
    STA.B $03                            ;82CDC5;
    LDA.B #$06                           ;82CDC7;
    JSL.L CODE_848F07                    ;82CDC9;
    JMP.W CODE_82CDD4                    ;82CDCD;

CODE_82CDD0:
    JSL.L CODE_848EEA                    ;82CDD0;

CODE_82CDD4:
    RTS                                  ;82CDD4;

CODE_82CDD5:
    LDX.B $03                            ;82CDD5;
    JSR.W (PTR16_82CDDB,X)               ;82CDD7;
    RTS                                  ;82CDDA;

PTR16_82CDDB:
    dw CODE_82CDE1                       ;82CDDB;
    dw CODE_82CE0B                       ;82CDDD;
    dw CODE_82CE1B                       ;82CDDF;

CODE_82CDE1:
    REP #$20                             ;82CDE1;
    LDA.B $11                            ;82CDE3;
    AND.W #$0040                         ;82CDE5;
    BNE CODE_82CDF2                      ;82CDE8;
    LDA.W #$FDA0                         ;82CDEA;
    STA.B $1A                            ;82CDED;
    JMP.W CODE_82CDF7                    ;82CDEF;

CODE_82CDF2:
    LDA.W #$0260                         ;82CDF2;
    STA.B $1A                            ;82CDF5;

CODE_82CDF7:
    STZ.B $1C                            ;82CDF7;
    LDA.W #$CD25                         ;82CDF9;
    STA.B $20                            ;82CDFC;
    SEP #$20                             ;82CDFE;
    LDA.B #$01                           ;82CE00;
    JSL.L CODE_848F07                    ;82CE02;
    LDA.B #$02                           ;82CE06;
    STA.B $03                            ;82CE08;
    RTS                                  ;82CE0A;

CODE_82CE0B:
    LDA.B $0F                            ;82CE0B;
    BEQ CODE_82CE16                      ;82CE0D;
    JSL.L CODE_848EEA                    ;82CE0F;
    JMP.W CODE_82CE1A                    ;82CE13;

CODE_82CE16:
    LDA.B #$04                           ;82CE16;
    STA.B $03                            ;82CE18;

CODE_82CE1A:
    RTS                                  ;82CE1A;

CODE_82CE1B:
    JSL.L CODE_82823E                    ;82CE1B;
    JSL.L CODE_848EEA                    ;82CE1F;
    JSL.L CODE_8491BE                    ;82CE23;
    LDA.B $2B                            ;82CE27;
    AND.B #$01                           ;82CE29;
    BNE CODE_82CE6F                      ;82CE2B;
    LDA.B $2B                            ;82CE2D;
    AND.B #$02                           ;82CE2F;
    BNE CODE_82CE6F                      ;82CE31;
    LDA.B $11                            ;82CE33;
    AND.B #$40                           ;82CE35;
    BNE CODE_82CE47                      ;82CE37;
    REP #$20                             ;82CE39;
    LDA.W $0BAD                          ;82CE3B;
    SEC                                  ;82CE3E;
    SBC.W #$0020                         ;82CE3F;
    STA.B $36                            ;82CE42;
    JMP.W CODE_82CE52                    ;82CE44;

CODE_82CE47:
    REP #$20                             ;82CE47;
    LDA.W $0BAD                          ;82CE49;
    CLC                                  ;82CE4C;
    ADC.W #$0020                         ;82CE4D;
    STA.B $36                            ;82CE50;

CODE_82CE52:
    LDA.B $36                            ;82CE52;
    SEC                                  ;82CE54;
    SBC.B $05                            ;82CE55;
    STA.B $36                            ;82CE57;
    LDA.B $11                            ;82CE59;
    AND.W #$0040                         ;82CE5B;
    BNE CODE_82CE68                      ;82CE5E;
    LDA.B $36                            ;82CE60;
    EOR.W #$FFFF                         ;82CE62;
    INC A                                ;82CE65;
    STA.B $36                            ;82CE66;

CODE_82CE68:
    LDA.B $36                            ;82CE68;
    CMP.W #$0000                         ;82CE6A;
    BPL CODE_82CE81                      ;82CE6D;

CODE_82CE6F:
    SEP #$20                             ;82CE6F;
    LDA.B #$08                           ;82CE71;
    STA.B $35                            ;82CE73;
    LDA.B #$0A                           ;82CE75;
    STA.B $02                            ;82CE77;
    STZ.B $03                            ;82CE79;
    LDA.B #$00                           ;82CE7B;
    JSL.L CODE_848F07                    ;82CE7D;

CODE_82CE81:
    SEP #$20                             ;82CE81;
    RTS                                  ;82CE83;

CODE_82CE84:
    REP #$20                             ;82CE84;
    LDA.B $11                            ;82CE86;
    AND.W #$0040                         ;82CE88;
    BEQ CODE_82CE95                      ;82CE8B;
    LDA.W #$03C0                         ;82CE8D;
    STA.B $1A                            ;82CE90;
    JMP.W CODE_82CE9A                    ;82CE92;

CODE_82CE95:
    LDA.W #$FC40                         ;82CE95;
    STA.B $1A                            ;82CE98;

CODE_82CE9A:
    LDA.W #$048A                         ;82CE9A;
    STA.B $1C                            ;82CE9D;
    LDA.W #$CD1B                         ;82CE9F;
    STA.B $20                            ;82CEA2;
    SEP #$20                             ;82CEA4;
    LDA.B #$40                           ;82CEA6;
    STA.B $1E                            ;82CEA8;
    LDA.B #$00                           ;82CEAA;
    STA.B $02                            ;82CEAC;
    LDA.B #$02                           ;82CEAE;
    STA.B $03                            ;82CEB0;
    LDA.B #$01                           ;82CEB2;
    STA.B $3A                            ;82CEB4;
    LDA.B #$03                           ;82CEB6;
    STA.B $39                            ;82CEB8;
    LDA.B #$02                           ;82CEBA;
    JSL.L CODE_848F07                    ;82CEBC;
    RTS                                  ;82CEC0;

CODE_82CEC1:
    JSL.L CODE_879ED4                    ;82CEC1;
    JSL.L CODE_8491BE                    ;82CEC5;
    LDA.B $35                            ;82CEC9;
    BEQ CODE_82CED2                      ;82CECB;
    DEC.B $35                            ;82CECD;
    JMP.W CODE_82CFB0                    ;82CECF;

CODE_82CED2:
    REP #$20                             ;82CED2;
    LDA.W $0BAD                          ;82CED4;
    SEC                                  ;82CED7;
    SBC.B $05                            ;82CED8;
    BCS CODE_82CEE0                      ;82CEDA;
    EOR.W #$FFFF                         ;82CEDC;
    INC A                                ;82CEDF;

CODE_82CEE0:
    CMP.W #$0080                         ;82CEE0;
    BPL CODE_82CEEE                      ;82CEE3;
    SEP #$20                             ;82CEE5;
    LDA.B #$01                           ;82CEE7;
    STA.B $39                            ;82CEE9;
    JMP.W CODE_82CEF2                    ;82CEEB;

CODE_82CEEE:
    SEP #$20                             ;82CEEE;
    STZ.B $39                            ;82CEF0;

CODE_82CEF2:
    REP #$20                             ;82CEF2;
    LDA.W $0BB0                          ;82CEF4;
    SEC                                  ;82CEF7;
    SBC.B $08                            ;82CEF8;
    BCS CODE_82CF00                      ;82CEFA;
    EOR.W #$FFFF                         ;82CEFC;
    INC A                                ;82CEFF;

CODE_82CF00:
    CMP.W #$0080                         ;82CF00;
    BMI CODE_82CF0E                      ;82CF03;
    SEP #$20                             ;82CF05;
    LDA.B #$01                           ;82CF07;
    STA.B $3A                            ;82CF09;
    JMP.W CODE_82CF12                    ;82CF0B;

CODE_82CF0E:
    SEP #$20                             ;82CF0E;
    STZ.B $3A                            ;82CF10;

CODE_82CF12:
    JSR.W CODE_82D148                    ;82CF12;
    LDA.B $3A                            ;82CF15;
    BEQ CODE_82CF51                      ;82CF17;
    LDA.B $39                            ;82CF19;
    BEQ CODE_82CF37                      ;82CF1B;
    LDA.B $36                            ;82CF1D;
    CMP.B #$05                           ;82CF1F;
    BPL CODE_82CF26                      ;82CF21;
    JMP.W CODE_82CF97                    ;82CF23;

CODE_82CF26:
    CMP.B #$0A                           ;82CF26;
    BPL CODE_82CF2D                      ;82CF28;
    JMP.W CODE_82CFA5                    ;82CF2A;

CODE_82CF2D:
    CMP.B #$0E                           ;82CF2D;
    BPL CODE_82CF34                      ;82CF2F;
    JMP.W CODE_82CFAC                    ;82CF31;

CODE_82CF34:
    JMP.W CODE_82CF90                    ;82CF34;

CODE_82CF37:
    LDA.B $36                            ;82CF37;
    CMP.B #$04                           ;82CF39;
    BPL CODE_82CF40                      ;82CF3B;
    JMP.W CODE_82CF97                    ;82CF3D;

CODE_82CF40:
    CMP.B #$06                           ;82CF40;
    BPL CODE_82CF47                      ;82CF42;
    JMP.W CODE_82CFA5                    ;82CF44;

CODE_82CF47:
    CMP.B #$08                           ;82CF47;
    BPL CODE_82CF4E                      ;82CF49;
    JMP.W CODE_82CF90                    ;82CF4B;

CODE_82CF4E:
    JMP.W CODE_82CFAC                    ;82CF4E;

CODE_82CF51:
    LDA.B $39                            ;82CF51;
    BEQ CODE_82CF76                      ;82CF53;
    LDA.B $36                            ;82CF55;
    CMP.B #$02                           ;82CF57;
    BPL CODE_82CF5E                      ;82CF59;
    JMP.W CODE_82CF9E                    ;82CF5B;

CODE_82CF5E:
    CMP.B #$04                           ;82CF5E;
    BPL CODE_82CF65                      ;82CF60;
    JMP.W CODE_82CF97                    ;82CF62;

CODE_82CF65:
    CMP.B #$09                           ;82CF65;
    BPL CODE_82CF6C                      ;82CF67;
    JMP.W CODE_82CFA5                    ;82CF69;

CODE_82CF6C:
    CMP.B #$0E                           ;82CF6C;
    BPL CODE_82CF73                      ;82CF6E;
    JMP.W CODE_82CF90                    ;82CF70;

CODE_82CF73:
    JMP.W CODE_82CFAC                    ;82CF73;

CODE_82CF76:
    LDA.B $36                            ;82CF76;
    CMP.B #$02                           ;82CF78;
    BPL CODE_82CF7F                      ;82CF7A;
    JMP.W CODE_82CF9E                    ;82CF7C;

CODE_82CF7F:
    CMP.B #$04                           ;82CF7F;
    BPL CODE_82CF86                      ;82CF81;
    JMP.W CODE_82CF97                    ;82CF83;

CODE_82CF86:
    CMP.B #$0C                           ;82CF86;
    BPL CODE_82CF8D                      ;82CF88;
    JMP.W CODE_82CFA5                    ;82CF8A;

CODE_82CF8D:
    JMP.W CODE_82CF90                    ;82CF8D;

CODE_82CF90:
    LDA.B #$08                           ;82CF90;
    STA.B $02                            ;82CF92;
    JMP.W CODE_82CFB0                    ;82CF94;

CODE_82CF97:
    LDA.B #$04                           ;82CF97;
    STA.B $02                            ;82CF99;
    JMP.W CODE_82CFB0                    ;82CF9B;

CODE_82CF9E:
    LDA.B #$02                           ;82CF9E;
    STA.B $02                            ;82CFA0;
    JMP.W CODE_82CFB0                    ;82CFA2;

CODE_82CFA5:
    LDA.B #$06                           ;82CFA5;
    STA.B $02                            ;82CFA7;
    JMP.W CODE_82CFB0                    ;82CFA9;

CODE_82CFAC:
    LDA.B #$00                           ;82CFAC;
    STA.B $02                            ;82CFAE;

CODE_82CFB0:
    STZ.B $3A                            ;82CFB0;
    STZ.B $39                            ;82CFB2;
    STZ.B $36                            ;82CFB4;
    STZ.B $37                            ;82CFB6;
    STZ.B $3C                            ;82CFB8;
    STZ.W $1F1D                          ;82CFBA;
    REP #$20                             ;82CFBD;
    LDA.W #$CD11                         ;82CFBF;
    STA.B $20                            ;82CFC2;
    SEP #$20                             ;82CFC4;
    JSL.L CODE_848EEA                    ;82CFC6;
    RTS                                  ;82CFCA;

CODE_82CFCB:
    LDX.B $03                            ;82CFCB;
    JSR.W (PTR16_82CFD1,X)               ;82CFCD;
    RTS                                  ;82CFD0;

PTR16_82CFD1:
    dw CODE_82CFD7                       ;82CFD1;
    dw CODE_82CFDF                       ;82CFD3;
    dw CODE_82D01D                       ;82CFD5;

CODE_82CFD7:
    JSR.W CODE_82D188                    ;82CFD7;
    LDA.B #$02                           ;82CFDA;
    STA.B $03                            ;82CFDC;
    RTS                                  ;82CFDE;

CODE_82CFDF:
    JSL.L CODE_848EEA                    ;82CFDF;
    JSL.L CODE_8281E8                    ;82CFE3;
    JSL.L CODE_8491BE                    ;82CFE7;
    LDA.B $2B                            ;82CFEB;
    AND.B #$01                           ;82CFED;
    BNE CODE_82D003                      ;82CFEF;
    LDA.B $2B                            ;82CFF1;
    AND.B #$02                           ;82CFF3;
    BEQ CODE_82D00C                      ;82CFF5;
    REP #$20                             ;82CFF7;
    LDA.W #$0100                         ;82CFF9;
    STA.B $1A                            ;82CFFC;
    SEP #$20                             ;82CFFE;
    JMP.W CODE_82D00C                    ;82D000;

CODE_82D003:
    REP #$20                             ;82D003;
    LDA.W #$FF00                         ;82D005;
    STA.B $1A                            ;82D008;
    SEP #$20                             ;82D00A;

CODE_82D00C:
    LDA.B $2B                            ;82D00C;
    AND.B #$04                           ;82D00E;
    BEQ CODE_82D01C                      ;82D010;
    LDA.B #$0B                           ;82D012;
    JSL.L CODE_848F07                    ;82D014;
    LDA.B #$04                           ;82D018;
    STA.B $03                            ;82D01A;

CODE_82D01C:
    RTS                                  ;82D01C;

CODE_82D01D:
    LDA.B $0F                            ;82D01D;
    BPL CODE_82D025                      ;82D01F;
    JSL.L CODE_848EEA                    ;82D021;

CODE_82D025:
    LDA.B #$01                           ;82D025;
    STA.B $35                            ;82D027;
    LDA.B #$0A                           ;82D029;
    STA.B $02                            ;82D02B;
    STZ.B $03                            ;82D02D;
    LDA.B #$00                           ;82D02F;
    JSL.L CODE_848F07                    ;82D031;
    RTS                                  ;82D035;

CODE_82D036:
    LDX.B $02                            ;82D036;
    JSR.W (PTR16_82D043,X)               ;82D038;
    LDA.B $3B                            ;82D03B;
    BNE CODE_82D042                      ;82D03D;
    JMP.W CODE_8280B4                    ;82D03F;

CODE_82D042:
    RTL                                  ;82D042;

PTR16_82D043:
    dw CODE_82D047                       ;82D043;
    dw CODE_82D06D                       ;82D045;

CODE_82D047:
    LDA.B $34                            ;82D047;
    TSB.B $11                            ;82D049;
    LDA.B $35                            ;82D04B;
    BEQ CODE_82D054                      ;82D04D;
    DEC.B $35                            ;82D04F;
    JMP.W CODE_82D06C                    ;82D051;

CODE_82D054:
    STZ.W $1F13                          ;82D054;
    STZ.W $1F14                          ;82D057;
    STZ.W $1F17                          ;82D05A;
    LDA.B #$07                           ;82D05D;
    JSL.L CODE_848F07                    ;82D05F;
    JSR.W CODE_82D188                    ;82D063;
    LDA.B #$02                           ;82D066;
    STA.B $02                            ;82D068;
    STZ.B $35                            ;82D06A;

CODE_82D06C:
    RTS                                  ;82D06C;

CODE_82D06D:
    JSL.L CODE_848EEA                    ;82D06D;
    LDA.B $35                            ;82D071;
    BNE CODE_82D0AF                      ;82D073;
    JSL.L CODE_8281E8                    ;82D075;
    JSL.L CODE_8491BE                    ;82D079;
    LDA.B $2B                            ;82D07D;
    AND.B #$01                           ;82D07F;
    BNE CODE_82D095                      ;82D081;
    LDA.B $2B                            ;82D083;
    AND.B #$02                           ;82D085;
    BEQ CODE_82D09E                      ;82D087;
    REP #$20                             ;82D089;
    LDA.W #$0100                         ;82D08B;
    STA.B $1A                            ;82D08E;
    SEP #$20                             ;82D090;
    JMP.W CODE_82D09E                    ;82D092;

CODE_82D095:
    REP #$20                             ;82D095;
    LDA.W #$FF00                         ;82D097;
    STA.B $1A                            ;82D09A;
    SEP #$20                             ;82D09C;

CODE_82D09E:
    LDA.B $2B                            ;82D09E;
    AND.B #$04                           ;82D0A0;
    BEQ CODE_82D0E6                      ;82D0A2;
    JSR.W CODE_82D151                    ;82D0A4;
    LDA.B #$01                           ;82D0A7;
    STA.B $3B                            ;82D0A9;
    LDA.B #$50                           ;82D0AB;
    STA.B $35                            ;82D0AD;

CODE_82D0AF:
    REP #$20                             ;82D0AF;
    LDA.W #$FFE1                         ;82D0B1;
    STA.W $0000                          ;82D0B4;
    STA.W $0002                          ;82D0B7;
    LDA.W #$001F                         ;82D0BA;
    STA.W $0004                          ;82D0BD;
    STA.W $0006                          ;82D0C0;
    LDA.W #$0003                         ;82D0C3;
    STA.W $0008                          ;82D0C6;
    SEP #$20                             ;82D0C9;
    JSL.L CODE_84A4C6                    ;82D0CB;
    DEC.B $35                            ;82D0CF;
    BNE CODE_82D0E6                      ;82D0D1;
    STZ.W $0BD8                          ;82D0D3;
    STZ.W $1F0C                          ;82D0D6;
    JSL.L CODE_849FFE                    ;82D0D9;
    LDA.B #$00                           ;82D0DD;
    STA.W $1F3F                          ;82D0DF;
    JSL.L CODE_828398                    ;82D0E2;

CODE_82D0E6:
    RTS                                  ;82D0E6;

CODE_82D0E7:
    LDA.B $11                            ;82D0E7;
    AND.B #$40                           ;82D0E9;
    BEQ CODE_82D0FB                      ;82D0EB;
    REP #$20                             ;82D0ED;
    LDA.W #$0600                         ;82D0EF;
    CLC                                  ;82D0F2;
    ADC.W #$0010                         ;82D0F3;
    STA.B $1A                            ;82D0F6;
    JMP.W CODE_82D106                    ;82D0F8;

CODE_82D0FB:
    REP #$20                             ;82D0FB;
    LDA.W #$FA00                         ;82D0FD;
    SEC                                  ;82D100;
    SBC.W #$0010                         ;82D101;
    STA.B $1A                            ;82D104;

CODE_82D106:
    STZ.B $1C                            ;82D106;
    SEP #$20                             ;82D108;
    REP #$20                             ;82D10A;
    LDA.W $0BAD                          ;82D10C;
    SEC                                  ;82D10F;
    SBC.B $05                            ;82D110;
    BCS CODE_82D118                      ;82D112;
    EOR.W #$FFFF                         ;82D114;
    INC A                                ;82D117;

CODE_82D118:
    CMP.W #$0080                         ;82D118;
    BPL CODE_82D124                      ;82D11B;
    LDX.B #$30                           ;82D11D;
    STX.B $1E                            ;82D11F;
    JMP.W CODE_82D134                    ;82D121;

CODE_82D124:
    CMP.W #$00A0                         ;82D124;
    BPL CODE_82D130                      ;82D127;
    LDX.B #$28                           ;82D129;
    STX.B $1E                            ;82D12B;
    JMP.W CODE_82D134                    ;82D12D;

CODE_82D130:
    LDX.B #$10                           ;82D130;
    STX.B $1E                            ;82D132;

CODE_82D134:
    SEP #$20                             ;82D134;
    RTS                                  ;82D136;

CODE_82D137:
    STZ.B $03                            ;82D137;
    LDA.B #$0A                           ;82D139;
    STA.B $02                            ;82D13B;
    LDA.B #$00                           ;82D13D;
    JSL.L CODE_848F07                    ;82D13F;
    LDA.B #$08                           ;82D143;
    STA.B $35                            ;82D145;
    RTS                                  ;82D147;

CODE_82D148:
    JSL.L CODE_849086                    ;82D148;
    AND.B #$0F                           ;82D14C;
    STA.B $36                            ;82D14E;
    RTS                                  ;82D150;

CODE_82D151:
    REP #$10                             ;82D151;
    LDY.W #$0010                         ;82D153;

CODE_82D156:
    JSL.L CODE_8282D3                    ;82D156;
    BNE CODE_82D185                      ;82D15A;
    INC.W $0000,X                        ;82D15C;
    LDA.B #$2B                           ;82D15F;
    STA.W $000A,X                        ;82D161;
    REP #$20                             ;82D164;
    LDA.B $05                            ;82D166;
    STA.W $0005,X                        ;82D168;
    LDA.B $08                            ;82D16B;
    STA.W $0008,X                        ;82D16D;
    STZ.W $000C,X                        ;82D170;
    SEP #$20                             ;82D173;
    LDA.W DATA8_86CD37,Y                 ;82D175;
    STA.W $000B,X                        ;82D178;
    LDA.B $11                            ;82D17B;
    ORA.B $34                            ;82D17D;
    STA.W $0011,X                        ;82D17F;
    DEY                                  ;82D182;
    BNE CODE_82D156                      ;82D183;

CODE_82D185:
    SEP #$10                             ;82D185;
    RTS                                  ;82D187;

CODE_82D188:
    REP #$20                             ;82D188;
    LDA.W $0BAD                          ;82D18A;
    SEC                                  ;82D18D;
    SBC.B $05                            ;82D18E;
    BCS CODE_82D1AD                      ;82D190;
    LDA.B $02                            ;82D192;
    CMP.W #$000C                         ;82D194;
    BEQ CODE_82D1A3                      ;82D197;
    REP #$20                             ;82D199;
    LDA.W #$0280                         ;82D19B;
    STA.B $1A                            ;82D19E;
    JMP.W CODE_82D1CD                    ;82D1A0;

CODE_82D1A3:
    REP #$20                             ;82D1A3;
    LDA.W #$0280                         ;82D1A5;
    STA.B $1A                            ;82D1A8;
    JMP.W CODE_82D1C5                    ;82D1AA;

CODE_82D1AD:
    LDA.B $02                            ;82D1AD;
    CMP.W #$000C                         ;82D1AF;
    BEQ CODE_82D1BE                      ;82D1B2;
    REP #$20                             ;82D1B4;
    LDA.W #$FD80                         ;82D1B6;
    STA.B $1A                            ;82D1B9;
    JMP.W CODE_82D1CD                    ;82D1BB;

CODE_82D1BE:
    REP #$20                             ;82D1BE;
    LDA.W #$FD80                         ;82D1C0;
    STA.B $1A                            ;82D1C3;

CODE_82D1C5:
    LDA.W #$0280                         ;82D1C5;
    STA.B $1C                            ;82D1C8;
    JMP.W CODE_82D1D2                    ;82D1CA;

CODE_82D1CD:
    LDA.W #$0480                         ;82D1CD;
    STA.B $1C                            ;82D1D0;

CODE_82D1D2:
    LDA.W #$CD1B                         ;82D1D2;
    STA.B $20                            ;82D1D5;
    SEP #$20                             ;82D1D7;
    LDA.B #$40                           ;82D1D9;
    STA.B $1E                            ;82D1DB;
    RTS                                  ;82D1DD;

CODE_82D1DE:
    LDA.B $33                            ;82D1DE;
    TSB.B $11                            ;82D1E0;
    LDX.B $01                            ;82D1E2;
    JSR.W (PTR16_82D223,X)               ;82D1E4;
    JSL.L CODE_849B03                    ;82D1E7;
    JSL.L CODE_849B43                    ;82D1EB;
    BEQ CODE_82D20D                      ;82D1EF;
    LDA.B #$0E                           ;82D1F1;
    TRB.B $11                            ;82D1F3;
    LDA.B $27                            ;82D1F5;
    AND.B #$7F                           ;82D1F7;
    BNE CODE_82D20D                      ;82D1F9;
    LDA.B #$01                           ;82D1FB;
    JSL.L CODE_84A37F                    ;82D1FD;

CODE_82D201:
    JSL.L CODE_84A4AB                    ;82D201;
    LDA.B $0B                            ;82D205;
    BNE CODE_82D21F                      ;82D207;

CODE_82D209:
    JML.L CODE_828398                    ;82D209;

CODE_82D20D:
    LDA.B $34                            ;82D20D;
    BNE CODE_82D201                      ;82D20F;
    JSL.L CODE_82806E                    ;82D211;
    BCS CODE_82D21B                      ;82D215;
    JML.L CODE_8280B4                    ;82D217;

CODE_82D21B:
    LDA.B $0B                            ;82D21B;
    BEQ CODE_82D209                      ;82D21D;

CODE_82D21F:
    JML.L CODE_828387                    ;82D21F;

PTR16_82D223:
    dw CODE_82D22B                       ;82D223;
    dw CODE_82D28C                       ;82D225;
    dw CODE_82D34B                       ;82D227;
    dw CODE_82D441                       ;82D229;

CODE_82D22B:
    JSL.L CODE_82827D                    ;82D22B;
    LDA.B $11                            ;82D22F;
    AND.B #$0E                           ;82D231;
    STA.B $33                            ;82D233;
    LDA.B #$06                           ;82D235;
    STA.B $12                            ;82D237;
    STZ.B $34                            ;82D239;
    LDA.B #$01                           ;82D23B;
    STA.B $26                            ;82D23D;
    LDA.B #$04                           ;82D23F;
    STA.B $27                            ;82D241;
    LDA.B #$02                           ;82D243;
    JSL.L CODE_848F07                    ;82D245;
    LDA.B #$FF                           ;82D249;
    STA.B $2F                            ;82D24B;
    REP #$20                             ;82D24D;
    LDA.W #$CD48                         ;82D24F;
    STA.B $20                            ;82D252;
    SEP #$20                             ;82D254;
    LDA.B #$30                           ;82D256;
    STA.B $1E                            ;82D258;
    LDA.B $0B                            ;82D25A;
    BEQ CODE_82D28B                      ;82D25C;
    REP #$20                             ;82D25E;
    LDA.W $0BAD                          ;82D260;
    SEC                                  ;82D263;
    SBC.B $05                            ;82D264;
    SEP #$20                             ;82D266;
    LDA.B #$00                           ;82D268;
    ROR A                                ;82D26A;
    ROR A                                ;82D26B;
    TSB.B $11                            ;82D26C;
    LDA.B $0B                            ;82D26E;
    BPL CODE_82D28B                      ;82D270;
    LDA.B #$00                           ;82D272;
    JSL.L CODE_848F07                    ;82D274;
    LDA.B #$06                           ;82D278;
    STA.B $01                            ;82D27A;
    STZ.B $2F                            ;82D27C;
    LDA.B #$01                           ;82D27E;
    STA.B $28                            ;82D280;
    REP #$20                             ;82D282;
    LDA.W #$CD52                         ;82D284;
    STA.B $20                            ;82D287;
    SEP #$20                             ;82D289;

CODE_82D28B:
    RTS                                  ;82D28B;

CODE_82D28C:
    LDX.B $02                            ;82D28C;
    JMP.W (PTR16_82D291,X)               ;82D28E;

PTR16_82D291:
    dw CODE_82D295                       ;82D291;
    dw CODE_82D2F1                       ;82D293;

CODE_82D295:
    JSL.L CODE_848EEA                    ;82D295;
    JSL.L CODE_8281E8                    ;82D299;
    REP #$20                             ;82D29D;
    LDA.W #$001C                         ;82D29F;
    CMP.W #$FB00                         ;82D2A2;
    BPL CODE_82D2AC                      ;82D2A5;
    LDA.W #$FB00                         ;82D2A7;
    STA.B $1C                            ;82D2AA;

CODE_82D2AC:
    SEP #$20                             ;82D2AC;
    JSL.L CODE_8491BE                    ;82D2AE;
    LDA.B $2B                            ;82D2B2;
    AND.B #$04                           ;82D2B4;
    BEQ CODE_82D2F0                      ;82D2B6;
    JSR.W CODE_82D508                    ;82D2B8;
    LDA.B #$02                           ;82D2BB;
    STA.B $02                            ;82D2BD;
    REP #$20                             ;82D2BF;
    LDA.B $1C                            ;82D2C1;
    CMP.W #$FD80                         ;82D2C3;
    BPL CODE_82D2D2                      ;82D2C6;
    LDA.W #$0200                         ;82D2C8;
    STA.B $1C                            ;82D2CB;
    SEP #$20                             ;82D2CD;
    STZ.B $02                            ;82D2CF;
    RTS                                  ;82D2D1;

CODE_82D2D2:
    SEP #$20                             ;82D2D2;
    STZ.B $2F                            ;82D2D4;
    LDA.B $11                            ;82D2D6;
    ASL A                                ;82D2D8;
    ASL A                                ;82D2D9;
    REP #$20                             ;82D2DA;
    LDA.W #$0180                         ;82D2DC;
    BCS CODE_82D2E4                      ;82D2DF;
    LDA.W #$FE80                         ;82D2E1;

CODE_82D2E4:
    STA.B $1A                            ;82D2E4;
    STZ.B $1C                            ;82D2E6;
    SEP #$20                             ;82D2E8;
    STZ.B $1E                            ;82D2EA;
    LDA.B #$06                           ;82D2EC;
    STA.B $1F                            ;82D2EE;

CODE_82D2F0:
    RTS                                  ;82D2F0;

CODE_82D2F1:
    LDA.B $11                            ;82D2F1;
    AND.B #$40                           ;82D2F3;
    BEQ CODE_82D2FD                      ;82D2F5;
    JSL.L CODE_828174                    ;82D2F7;
    BRA CODE_82D301                      ;82D2FB;

CODE_82D2FD:
    JSL.L CODE_828195                    ;82D2FD;

CODE_82D301:
    JSL.L CODE_8491BE                    ;82D301;
    LDA.B $2B                            ;82D305;
    AND.B #$03                           ;82D307;
    BEQ CODE_82D31D                      ;82D309;
    REP #$20                             ;82D30B;
    LDA.B $1A                            ;82D30D;
    EOR.W #$FFFF                         ;82D30F;
    INC A                                ;82D312;
    STA.B $1A                            ;82D313;
    SEP #$20                             ;82D315;
    LDA.B $11                            ;82D317;
    EOR.B #$40                           ;82D319;
    STA.B $11                            ;82D31B;

CODE_82D31D:
    LDA.B $2B                            ;82D31D;
    AND.B #$04                           ;82D31F;
    BEQ CODE_82D340                      ;82D321;
    REP #$20                             ;82D323;
    LDA.B $1A                            ;82D325;
    SEP #$20                             ;82D327;
    BNE CODE_82D33B                      ;82D329;
    LDA.B #$04                           ;82D32B;
    STA.B $01                            ;82D32D;
    STZ.B $02                            ;82D32F;
    LDA.B #$01                           ;82D331;
    JSL.L CODE_848F07                    ;82D333;
    LDA.B #$80                           ;82D337;
    TRB.B $17                            ;82D339;

CODE_82D33B:
    JSL.L CODE_848EEA                    ;82D33B;
    RTS                                  ;82D33F;

CODE_82D340:
    STZ.B $1C                            ;82D340;
    STZ.B $1D                            ;82D342;
    LDA.B #$30                           ;82D344;
    STA.B $1E                            ;82D346;
    STZ.B $02                            ;82D348;
    RTS                                  ;82D34A;

CODE_82D34B:
    LDA.B $02                            ;82D34B;
    BNE CODE_82D38D                      ;82D34D;
    INC.B $02                            ;82D34F;
    LDA.B $11                            ;82D351;
    ASL A                                ;82D353;
    ASL A                                ;82D354;
    LDA.W DATA8_86CD6C                   ;82D355;
    BCS CODE_82D35D                      ;82D358;
    EOR.B #$FF                           ;82D35A;
    INC A                                ;82D35C;

CODE_82D35D:
    STA.B $29                            ;82D35D;
    LDA.W DATA8_86CD73                   ;82D35F;
    STA.B $2A                            ;82D362;
    JSL.L CODE_8490A0                    ;82D364;
    CMP.B #$34                           ;82D368;
    BCC CODE_82D387                      ;82D36A;
    LDA.B $11                            ;82D36C;
    ASL A                                ;82D36E;
    ASL A                                ;82D36F;
    LDA.W DATA8_86CD6D                   ;82D370;
    BCS CODE_82D378                      ;82D373;
    EOR.B #$FF                           ;82D375;
    INC A                                ;82D377;

CODE_82D378:
    STA.B $29                            ;82D378;
    LDA.W DATA8_86CD74                   ;82D37A;
    STA.B $2A                            ;82D37D;
    JSL.L CODE_8490A0                    ;82D37F;
    CMP.B #$34                           ;82D383;
    BCS CODE_82D38D                      ;82D385;

CODE_82D387:
    LDA.B $11                            ;82D387;
    EOR.B #$40                           ;82D389;
    STA.B $11                            ;82D38B;

CODE_82D38D:
    JSL.L CODE_848EEA                    ;82D38D;
    LDA.B $17                            ;82D391;
    BPL CODE_82D400                      ;82D393;
    AND.B #$7F                           ;82D395;
    STA.B $17                            ;82D397;
    LDA.B $0F                            ;82D399;
    AND.B #$0F                           ;82D39B;
    BEQ CODE_82D3C2                      ;82D39D;
    TAX                                  ;82D39F;
    LDA.B $11                            ;82D3A0;
    ASL A                                ;82D3A2;
    ASL A                                ;82D3A3;
    LDA.W DATA8_86CD5F,X                 ;82D3A4;
    BCS CODE_82D3AC                      ;82D3A7;
    EOR.B #$FF                           ;82D3A9;
    INC A                                ;82D3AB;

CODE_82D3AC:
    STA.B $1B                            ;82D3AC;
    LDA.W DATA8_86CD65,X                 ;82D3AE;
    STA.B $1D                            ;82D3B1;
    STZ.B $1A                            ;82D3B3;
    STZ.B $1C                            ;82D3B5;
    JSL.L CODE_82820A                    ;82D3B7;
    JSL.L CODE_8491BE                    ;82D3BB;
    JSR.W CODE_82D508                    ;82D3BF;

CODE_82D3C2:
    LDA.B $0F                            ;82D3C2;
    BIT.B #$40                           ;82D3C4;
    BEQ CODE_82D3DE                      ;82D3C6;
    REP #$20                             ;82D3C8;
    LDA.W #$CD5C                         ;82D3CA;
    STA.B $20                            ;82D3CD;
    SEP #$20                             ;82D3CF;
    JSL.L CODE_849B03                    ;82D3D1;
    REP #$20                             ;82D3D5;
    LDA.W #$CD48                         ;82D3D7;
    STA.B $20                            ;82D3DA;
    SEP #$20                             ;82D3DC;

CODE_82D3DE:
    LDA.B $0F                            ;82D3DE;
    BPL CODE_82D400                      ;82D3E0;
    LDA.B #$06                           ;82D3E2;
    STA.B $01                            ;82D3E4;
    STZ.B $02                            ;82D3E6;
    REP #$20                             ;82D3E8;
    LDA.W #$CD52                         ;82D3EA;
    STA.B $20                            ;82D3ED;
    SEP #$20                             ;82D3EF;
    LDA.B #$00                           ;82D3F1;
    JSL.L CODE_848F07                    ;82D3F3;
    LDA.B #$80                           ;82D3F7;
    TRB.B $17                            ;82D3F9;
    LDA.B #$01                           ;82D3FB;
    STA.B $28                            ;82D3FD;
    RTS                                  ;82D3FF;

CODE_82D400:
    LDA.B $0F                            ;82D400;
    AND.B #$0F                           ;82D402;
    TAX                                  ;82D404;
    LDA.B $11                            ;82D405;
    ASL A                                ;82D407;
    ASL A                                ;82D408;
    LDA.W DATA8_86CD6C,X                 ;82D409;
    BCS CODE_82D411                      ;82D40C;
    EOR.B #$FF                           ;82D40E;
    INC A                                ;82D410;

CODE_82D411:
    STA.B $29                            ;82D411;
    LDA.W DATA8_86CD73,X                 ;82D413;
    STA.B $2A                            ;82D416;
    JSL.L CODE_8490A0                    ;82D418;
    CMP.B #$00                           ;82D41C;
    BEQ CODE_82D428                      ;82D41E;
    CMP.B #$34                           ;82D420;
    BCS CODE_82D440                      ;82D422;
    CMP.B #$0D                           ;82D424;
    BCC CODE_82D440                      ;82D426;

CODE_82D428:
    LDA.B #$02                           ;82D428;
    STA.B $01                            ;82D42A;
    STZ.B $02                            ;82D42C;
    REP #$20                             ;82D42E;
    STZ.B $1A                            ;82D430;
    STZ.B $1C                            ;82D432;
    SEP #$20                             ;82D434;
    LDA.B #$30                           ;82D436;
    STA.B $1E                            ;82D438;
    LDA.B #$02                           ;82D43A;
    JSL.L CODE_848F07                    ;82D43C;

CODE_82D440:
    RTS                                  ;82D440;

CODE_82D441:
    LDX.B $02                            ;82D441;
    JMP.W (PTR16_82D446,X)               ;82D443;

PTR16_82D446:
    dw CODE_82D44C                       ;82D446;
    dw CODE_82D4E2                       ;82D448;
    dw CODE_82D4ED                       ;82D44A;

CODE_82D44C:
    JSL.L CODE_848EEA                    ;82D44C;
    LDA.B $17                            ;82D450;
    BPL CODE_82D46D                      ;82D452;
    LDA.B #$80                           ;82D454;
    TRB.B $17                            ;82D456;
    LDA.B $11                            ;82D458;
    ASL A                                ;82D45A;
    ASL A                                ;82D45B;
    LDA.B $0F                            ;82D45C;
    AND.B #$7F                           ;82D45E;
    BCS CODE_82D465                      ;82D460;
    EOR.B #$FF                           ;82D462;
    INC A                                ;82D464;

CODE_82D465:
    STA.B $1B                            ;82D465;
    STZ.B $1A                            ;82D467;
    JSL.L CODE_82823E                    ;82D469;

CODE_82D46D:
    JSL.L CODE_8491BE                    ;82D46D;
    LDA.B $2B                            ;82D471;
    BIT.B #$04                           ;82D473;
    BEQ CODE_82D4BC                      ;82D475;
    AND.B #$03                           ;82D477;
    BNE CODE_82D498                      ;82D479;
    LDA.B #$38                           ;82D47B;
    STA.B $2A                            ;82D47D;
    LDA.B $11                            ;82D47F;
    ASL A                                ;82D481;
    ASL A                                ;82D482;
    LDA.B #$10                           ;82D483;
    BCS CODE_82D489                      ;82D485;
    LDA.B #$F0                           ;82D487;

CODE_82D489:
    STA.B $29                            ;82D489;
    JSL.L CODE_8490A0                    ;82D48B;
    CMP.B #$00                           ;82D48F;
    BEQ CODE_82D498                      ;82D491;
    CMP.B #$0E                           ;82D493;
    BEQ CODE_82D498                      ;82D495;
    RTS                                  ;82D497;

CODE_82D498:
    STZ.B $29                            ;82D498;
    LDA.B #$10                           ;82D49A;
    STA.B $2A                            ;82D49C;
    JSL.L CODE_8490A0                    ;82D49E;
    CMP.B #$34                           ;82D4A2;
    BCS CODE_82D4B2                      ;82D4A4;
    LDA.B #$20                           ;82D4A6;
    STA.B $2A                            ;82D4A8;
    JSL.L CODE_8490A0                    ;82D4AA;
    CMP.B #$34                           ;82D4AE;
    BCC CODE_82D4B7                      ;82D4B0;

CODE_82D4B2:
    LDA.B #$01                           ;82D4B2;
    STA.B $34                            ;82D4B4;
    RTS                                  ;82D4B6;

CODE_82D4B7:
    LDA.B #$02                           ;82D4B7;
    STA.B $02                            ;82D4B9;
    RTS                                  ;82D4BB;

CODE_82D4BC:
    LDA.B #$02                           ;82D4BC;
    STA.B $01                            ;82D4BE;
    STZ.B $02                            ;82D4C0;
    LDA.B #$03                           ;82D4C2;
    STA.B $28                            ;82D4C4;
    REP #$20                             ;82D4C6;
    STZ.B $1A                            ;82D4C8;
    STZ.B $1C                            ;82D4CA;
    LDA.W #$CD48                         ;82D4CC;
    STA.B $20                            ;82D4CF;
    SEP #$20                             ;82D4D1;
    LDA.B #$30                           ;82D4D3;
    STA.B $1E                            ;82D4D5;
    LDA.B #$FF                           ;82D4D7;
    STA.B $2F                            ;82D4D9;
    LDA.B #$04                           ;82D4DB;
    JSL.L CODE_848F07                    ;82D4DD;
    RTS                                  ;82D4E1;

CODE_82D4E2:
    LDA.B #$03                           ;82D4E2;
    JSL.L CODE_848F07                    ;82D4E4;
    LDA.B #$04                           ;82D4E8;
    STA.B $02                            ;82D4EA;
    RTS                                  ;82D4EC;

CODE_82D4ED:
    JSL.L CODE_848EEA                    ;82D4ED;
    LDA.B $0F                            ;82D4F1;
    BPL CODE_82D507                      ;82D4F3;
    LDA.B $11                            ;82D4F5;
    EOR.B #$40                           ;82D4F7;
    STA.B $11                            ;82D4F9;
    STZ.B $02                            ;82D4FB;
    LDA.B #$00                           ;82D4FD;
    JSL.L CODE_848F07                    ;82D4FF;
    LDA.B #$80                           ;82D503;
    TRB.B $17                            ;82D505;

CODE_82D507:
    RTS                                  ;82D507;

CODE_82D508:
    STZ.B $29                            ;82D508;
    STZ.B $2A                            ;82D50A;
    JSL.L CODE_8490A0                    ;82D50C;
    CMP.B #$34                           ;82D510;
    BCC CODE_82D518                      ;82D512;
    LDA.B #$01                           ;82D514;
    STA.B $34                            ;82D516;

CODE_82D518:
    RTS                                  ;82D518;

CODE_82D519:
    LDX.B $01                            ;82D519;
    JMP.W (PTR16_82D51E,X)               ;82D51B;

PTR16_82D51E:
    dw CODE_82D526                       ;82D51E;
    dw CODE_82D576                       ;82D520;
    dw CODE_82D5F8                       ;82D522;
    dw CODE_82D781                       ;82D524;

CODE_82D526:
    LDA.B #$02                           ;82D526;
    STA.B $01                            ;82D528;
    STZ.B $10                            ;82D52A;
    LDA.B #$40                           ;82D52C;
    STA.B $27                            ;82D52E;
    LDA.B #$01                           ;82D530;
    STA.B $0E                            ;82D532;
    LDA.B #$08                           ;82D534;
    STA.B $28                            ;82D536;
    STZ.B $11                            ;82D538;
    STZ.B $17                            ;82D53A;
    REP #$20                             ;82D53C;
    LDA.B $0B                            ;82D53E;
    AND.W #$00FF                         ;82D540;
    ASL A                                ;82D543;
    ASL A                                ;82D544;
    TAX                                  ;82D545;
    LDA.W DATA8_86CDAE,X                 ;82D546;
    STA.B $05                            ;82D549;
    LDA.W DATA8_86CDB0,X                 ;82D54B;
    STA.B $08                            ;82D54E;
    LDA.W DATA8_86CDB2,X                 ;82D550;
    STA.B $12                            ;82D553;
    LDA.W DATA8_86CDB4,X                 ;82D555;
    STA.B $14                            ;82D558;
    STZ.B $1A                            ;82D55A;
    LDA.W #$0040                         ;82D55C;
    STA.B $1C                            ;82D55F;
    SEP #$20                             ;82D561;
    JSR.W CODE_82D8E2                    ;82D563;
    JSR.W CODE_82B7DB                    ;82D566;
    STZ.B $1F                            ;82D569;
    LDA.B #$01                           ;82D56B;
    STA.B $1E                            ;82D56D;
    LDA.B #$41                           ;82D56F;
    STA.B $0F                            ;82D571;
    STZ.B $16                            ;82D573;
    RTL                                  ;82D575;

CODE_82D576:
    STZ.B $30                            ;82D576;
    JSL.L CODE_82806E                    ;82D578;
    BCC CODE_82D580                      ;82D57C;
    INC.B $30                            ;82D57E;

CODE_82D580:
    STZ.B $2C                            ;82D580;
    JSR.W CODE_82D97A                    ;82D582;
    JSR.W CODE_82D9AB                    ;82D585;
    REP #$10                             ;82D588;
    LDX.W #$CD7A                         ;82D58A;
    STX.B $20                            ;82D58D;
    JSL.L CODE_82D7D0                    ;82D58F;
    JSR.W CODE_82D875                    ;82D593;
    LDX.W #$CD8E                         ;82D596;
    STX.B $20                            ;82D599;
    JSL.L CODE_82D7D0                    ;82D59B;
    JSR.W CODE_82D875                    ;82D59F;
    LDX.W #$CD9A                         ;82D5A2;
    STX.B $20                            ;82D5A5;
    JSL.L CODE_82D7D0                    ;82D5A7;
    JSR.W CODE_82D875                    ;82D5AB;
    LDX.W #$CD92                         ;82D5AE;
    STX.B $20                            ;82D5B1;
    JSL.L CODE_82D7D0                    ;82D5B3;
    JSR.W CODE_82D875                    ;82D5B7;
    SEP #$10                             ;82D5BA;
    JSR.W CODE_82D785                    ;82D5BC;
    JSR.W CODE_82D7B7                    ;82D5BF;
    LDA.B $2C                            ;82D5C2;
    BEQ CODE_82D5CA                      ;82D5C4;
    JSL.L CODE_82C70E                    ;82D5C6;

CODE_82D5CA:
    LDA.B $17                            ;82D5CA;
    BEQ CODE_82D5D3                      ;82D5CC;
    STZ.B $17                            ;82D5CE;
    JSR.W CODE_82B7C1                    ;82D5D0;

CODE_82D5D3:
    REP #$10                             ;82D5D3;
    LDX.W #$CD8E                         ;82D5D5;
    STX.B $20                            ;82D5D8;
    JSL.L CODE_849B43                    ;82D5DA;
    BEQ CODE_82D5F0                      ;82D5DE;
    BPL CODE_82D5EB                      ;82D5E0;
    LDA.B #$04                           ;82D5E2;
    STA.B $01                            ;82D5E4;
    STZ.B $02                            ;82D5E6;
    STZ.B $27                            ;82D5E8;
    RTL                                  ;82D5EA;

CODE_82D5EB:
    INC.B $17                            ;82D5EB;
    JSR.W CODE_82B7A2                    ;82D5ED;

CODE_82D5F0:
    REP #$10                             ;82D5F0;
    LDX.W #$CD7A                         ;82D5F2;
    STX.B $20                            ;82D5F5;
    RTL                                  ;82D5F7;

CODE_82D5F8:
    REP #$10                             ;82D5F8;
    STZ.B $2C                            ;82D5FA;
    LDX.W #$CD7A                         ;82D5FC;
    STX.B $20                            ;82D5FF;
    JSL.L CODE_82D7D0                    ;82D601;
    JSR.W CODE_82D875                    ;82D605;
    LDX.W #$CD92                         ;82D608;
    STX.B $20                            ;82D60B;
    JSL.L CODE_82D7D0                    ;82D60D;
    JSR.W CODE_82D875                    ;82D611;
    LDX.W #$CD8E                         ;82D614;
    STX.B $20                            ;82D617;
    JSL.L CODE_82D7D0                    ;82D619;
    JSR.W CODE_82D875                    ;82D61D;
    LDX.W #$CD9A                         ;82D620;
    STX.B $20                            ;82D623;
    JSL.L CODE_82D7D0                    ;82D625;
    JSR.W CODE_82D875                    ;82D629;
    SEP #$10                             ;82D62C;
    LDX.B $02                            ;82D62E;
    JSR.W (PTR16_82D63F,X)               ;82D630;
    JSR.W CODE_82D7B7                    ;82D633;
    LDA.B $2C                            ;82D636;
    BEQ CODE_82D63E                      ;82D638;
    JSL.L CODE_82C70E                    ;82D63A;

CODE_82D63E:
    RTL                                  ;82D63E;

PTR16_82D63F:
    dw CODE_82D649                       ;82D63F;
    dw CODE_82D66C                       ;82D641;
    dw CODE_82D6FE                       ;82D643;
    dw CODE_82D722                       ;82D645;
    dw CODE_82D738                       ;82D647;

CODE_82D649:
    LDA.B #$02                           ;82D649;
    STA.B $02                            ;82D64B;
    STZ.B $1F                            ;82D64D;
    LDA.B #$08                           ;82D64F;
    STA.B $1E                            ;82D651;
    LDA.B #$21                           ;82D653;
    JSL.L CODE_8088A2                    ;82D655;
    LDA.B #$14                           ;82D659;
    STA.B $33                            ;82D65B;
    REP #$20                             ;82D65D;
    STZ.B $1A                            ;82D65F;
    STZ.B $1C                            ;82D661;
    SEP #$20                             ;82D663;
    LDA.B #$3C                           ;82D665;
    STA.B $35                            ;82D667;
    STZ.B $2F                            ;82D669;
    RTS                                  ;82D66B;

CODE_82D66C:
    REP #$20                             ;82D66C;
    LDA.W #$FC00                         ;82D66E;
    CMP.B $1C                            ;82D671;
    BMI CODE_82D677                      ;82D673;
    STA.B $1C                            ;82D675;

CODE_82D677:
    LDA.W #$FFA0                         ;82D677;
    STA.W $0000                          ;82D67A;
    STZ.W $0002                          ;82D67D;
    LDA.W #$007F                         ;82D680;
    STA.W $0004                          ;82D683;
    LDA.W #$003F                         ;82D686;
    STA.W $0006                          ;82D689;
    SEP #$20                             ;82D68C;
    LDA.B #$07                           ;82D68E;
    STA.W $0008                          ;82D690;
    JSL.L CODE_84A4C6                    ;82D693;
    LDA.B $35                            ;82D697;
    BEQ CODE_82D6A5                      ;82D699;
    DEC.B $35                            ;82D69B;
    BNE CODE_82D6A5                      ;82D69D;
    LDA.B #$06                           ;82D69F;
    JSL.L CODE_848000                    ;82D6A1;

CODE_82D6A5:
    JSR.W CODE_82D8A2                    ;82D6A5;
    JSL.L CODE_828174                    ;82D6A8;
    LDA.B $33                            ;82D6AC;
    CMP.B #$18                           ;82D6AE;
    BNE CODE_82D6B5                      ;82D6B0;
    JSR.W CODE_82D971                    ;82D6B2;

CODE_82D6B5:
    JSL.L CODE_8491BE                    ;82D6B5;
    LDA.B $2B                            ;82D6B9;
    BIT.B #$04                           ;82D6BB;
    BEQ CODE_82D6FD                      ;82D6BD;
    LDA.B $33                            ;82D6BF;
    CMP.B #$18                           ;82D6C1;
    BNE CODE_82D6E6                      ;82D6C3;
    LDA.B #$04                           ;82D6C5;
    STA.B $02                            ;82D6C7;
    LDA.B #$00                           ;82D6C9;
    STA.B $1C                            ;82D6CB;
    LDA.B #$03                           ;82D6CD;
    STA.B $1D                            ;82D6CF;
    LDA.B #$20                           ;82D6D1;
    STA.B $1E                            ;82D6D3;
    LDX.B #$05                           ;82D6D5;
    LDY.B #$02                           ;82D6D7;
    LDA.B #$78                           ;82D6D9;
    JSL.L CODE_84A33C                    ;82D6DB;
    LDA.B #$25                           ;82D6DF;
    JSL.L CODE_8088A2                    ;82D6E1;
    RTS                                  ;82D6E5;

CODE_82D6E6:
    JSL.L CODE_848000                    ;82D6E6;
    INC.B $33                            ;82D6EA;
    LDA.B #$25                           ;82D6EC;
    JSL.L CODE_8088A2                    ;82D6EE;
    STZ.B $1C                            ;82D6F2;
    STZ.B $1D                            ;82D6F4;
    JSL.L CODE_84A333                    ;82D6F6;
    JMP.W CODE_82D907                    ;82D6FA;

CODE_82D6FD:
    RTS                                  ;82D6FD;

CODE_82D6FE:
    JSR.W CODE_82D971                    ;82D6FE;
    JSL.L CODE_8491BE                    ;82D701;
    LDA.B $2B                            ;82D705;
    BIT.B #$04                           ;82D707;
    BEQ CODE_82D71D                      ;82D709;
    LDA.B #$06                           ;82D70B;
    STA.B $02                            ;82D70D;
    LDA.B #$25                           ;82D70F;
    JSL.L CODE_8088A2                    ;82D711;
    LDA.B #$00                           ;82D715;
    STA.B $1C                            ;82D717;
    LDA.B #$02                           ;82D719;
    STA.B $1D                            ;82D71B;

CODE_82D71D:
    JSL.L CODE_828174                    ;82D71D;
    RTS                                  ;82D721;

CODE_82D722:
    JSR.W CODE_82D971                    ;82D722;
    JSL.L CODE_8491BE                    ;82D725;
    LDA.B $2B                            ;82D729;
    BIT.B #$04                           ;82D72B;
    BEQ CODE_82D733                      ;82D72D;
    LDA.B #$08                           ;82D72F;
    STA.B $02                            ;82D731;

CODE_82D733:
    JSL.L CODE_828174                    ;82D733;
    RTS                                  ;82D737;

CODE_82D738:
    LDA.B #$25                           ;82D738;
    JSL.L CODE_8088A2                    ;82D73A;
    REP #$21                             ;82D73E;
    LDA.B $05                            ;82D740;
    ADC.W #$FF98                         ;82D742;
    STA.W $002C                          ;82D745;
    LDA.B $08                            ;82D748;
    CLC                                  ;82D74A;
    ADC.W #$0008                         ;82D74B;
    STA.W $002E                          ;82D74E;
    SEP #$20                             ;82D751;
    LDA.B $0B                            ;82D753;
    ASL A                                ;82D755;
    INC A                                ;82D756;
    JSL.L CODE_848011                    ;82D757;
    REP #$21                             ;82D75B;
    LDA.B $0B                            ;82D75D;
    AND.W #$00FF                         ;82D75F;
    ASL A                                ;82D762;
    ASL A                                ;82D763;
    TAX                                  ;82D764;
    LDA.W DATA8_86CDB6,X                 ;82D765;
    STA.W $002C                          ;82D768;
    LDA.W DATA8_86CDB8,X                 ;82D76B;
    STA.W $002E                          ;82D76E;
    SEP #$20                             ;82D771;
    LDA.B $0B                            ;82D773;
    ASL A                                ;82D775;
    INC A                                ;82D776;
    INC A                                ;82D777;
    JSL.L CODE_848011                    ;82D778;
    LDA.B #$06                           ;82D77C;
    STA.B $01                            ;82D77E;
    RTS                                  ;82D780;

CODE_82D781:
    JSR.W CODE_82D7B7                    ;82D781;
    RTL                                  ;82D784;

CODE_82D785:
    LDX.B $16                            ;82D785;
    BNE CODE_82D7A0                      ;82D787;
    DEC.B $0F                            ;82D789;
    BNE CODE_82D79B                      ;82D78B;
    LDA.B #$41                           ;82D78D;
    STA.B $0F                            ;82D78F;
    INC.B $16                            ;82D791;
    LDA.B #$C0                           ;82D793;
    STA.B $1C                            ;82D795;
    LDA.B #$FF                           ;82D797;
    STA.B $1D                            ;82D799;

CODE_82D79B:
    JSL.L CODE_828174                    ;82D79B;
    RTS                                  ;82D79F;

CODE_82D7A0:
    DEC.B $0F                            ;82D7A0;
    BNE CODE_82D7B2                      ;82D7A2;
    LDA.B #$41                           ;82D7A4;
    STA.B $0F                            ;82D7A6;
    STZ.B $16                            ;82D7A8;
    LDA.B #$40                           ;82D7AA;
    STA.B $1C                            ;82D7AC;
    LDA.B #$00                           ;82D7AE;
    STA.B $1D                            ;82D7B0;

CODE_82D7B2:
    JSL.L CODE_8281B2                    ;82D7B2;
    RTS                                  ;82D7B6;

CODE_82D7B7:
    LDA.B $10                            ;82D7B7;
    BEQ CODE_82D7CF                      ;82D7B9;
    REP #$20                             ;82D7BB;
    LDA.W $1E8D                          ;82D7BD;
    STA.W $1EAA                          ;82D7C0;
    LDA.W $1E90                          ;82D7C3;
    STA.W $1EAC                          ;82D7C6;
    TDC                                  ;82D7C9;
    STA.W $1F2E                          ;82D7CA;
    SEP #$20                             ;82D7CD;

CODE_82D7CF:
    RTS                                  ;82D7CF;

CODE_82D7D0:
    PHP                                  ;82D7D0;
    SEP #$20                             ;82D7D1;
    REP #$10                             ;82D7D3;
    LDA.W $0BCF                          ;82D7D5;
    AND.B #$7F                           ;82D7D8;
    BEQ CODE_82D7E5                      ;82D7DA;
    LDX.W #$0BA8                         ;82D7DC;
    JSL.L CODE_849C0E                    ;82D7DF;
    BCS CODE_82D7E7                      ;82D7E3;

CODE_82D7E5:
    PLP                                  ;82D7E5;
    RTL                                  ;82D7E6;

CODE_82D7E7:
    REP #$20                             ;82D7E7;
    LDA.W $0BAD                          ;82D7E9;
    SEC                                  ;82D7EC;
    SBC.W $0BCA                          ;82D7ED;
    STA.W $0008                          ;82D7F0;
    LDA.W $0006                          ;82D7F3;
    CMP.W #$0008                         ;82D7F6;
    BCC CODE_82D823                      ;82D7F9;
    LDX.W #$0002                         ;82D7FB;
    LDA.W $0004                          ;82D7FE;
    CMP.W #$0008                         ;82D801;
    BCC CODE_82D809                      ;82D804;
    LDA.W #$0007                         ;82D806;

CODE_82D809:
    DEC A                                ;82D809;
    LDY.W $0000                          ;82D80A;
    BPL CODE_82D816                      ;82D80D;
    LDX.W #$0001                         ;82D80F;
    EOR.W #$FFFF                         ;82D812;
    INC A                                ;82D815;

CODE_82D816:
    CLC                                  ;82D816;
    ADC.W $0BAD                          ;82D817;
    STA.W $0BAD                          ;82D81A;
    TXA                                  ;82D81D;
    TSB.W $0BD4                          ;82D81E;
    BRA CODE_82D873                      ;82D821;

CODE_82D823:
    LDX.W #$0008                         ;82D823;
    LDY.W $0002                          ;82D826;
    BPL CODE_82D845                      ;82D829;
    LDA.W #$0001                         ;82D82B;
    TSB.B $2C                            ;82D82E;
    LDX.W #$0004                         ;82D830;
    LDA.W $0006                          ;82D833;
    CMP.W #$0004                         ;82D836;
    BCC CODE_82D83E                      ;82D839;
    LDA.W #$0003                         ;82D83B;

CODE_82D83E:
    DEC A                                ;82D83E;
    EOR.W #$FFFF                         ;82D83F;
    INC A                                ;82D842;
    BRA CODE_82D868                      ;82D843;

CODE_82D845:
    SEP #$20                             ;82D845;
    LDA.B $2C                            ;82D847;
    BMI CODE_82D85B                      ;82D849;
    LDA.W $0BD3                          ;82D84B;
    BIT.B #$04                           ;82D84E;
    BEQ CODE_82D85B                      ;82D850;
    LDA.B #$7F                           ;82D852;
    STA.W $0BCE                          ;82D854;
    JSL.L CODE_849F2A                    ;82D857;

CODE_82D85B:
    REP #$20                             ;82D85B;
    LDA.W $0006                          ;82D85D;
    CMP.W #$0004                         ;82D860;
    BCC CODE_82D868                      ;82D863;
    LDA.W #$0003                         ;82D865;

CODE_82D868:
    CLC                                  ;82D868;
    ADC.W $0BB0                          ;82D869;
    STA.W $0BB0                          ;82D86C;
    TXA                                  ;82D86F;
    TSB.W $0BD4                          ;82D870;

CODE_82D873:
    PLP                                  ;82D873;
    RTL                                  ;82D874;

CODE_82D875:
    PHP                                  ;82D875;
    REP #$10                             ;82D876;
    LDX.B $20                            ;82D878;
    PHX                                  ;82D87A;
    LDX.W #$CD96                         ;82D87B;
    STX.B $20                            ;82D87E;
    LDX.W #$0BA8                         ;82D880;
    JSL.L CODE_849C0E                    ;82D883;
    BCC CODE_82D89D                      ;82D887;
    LDA.B #$80                           ;82D889;
    TSB.W $0BD4                          ;82D88B;
    LDA.B #$40                           ;82D88E;
    TSB.W $0BD4                          ;82D890;
    LDY.W $0000                          ;82D893;
    BPL CODE_82D89D                      ;82D896;
    LDA.B #$40                           ;82D898;
    TRB.W $0BD4                          ;82D89A;

CODE_82D89D:
    PLX                                  ;82D89D;
    STX.B $20                            ;82D89E;
    PLP                                  ;82D8A0;
    RTS                                  ;82D8A1;

CODE_82D8A2:
    LDA.W $0B9C                          ;82D8A2;
    AND.B #$03                           ;82D8A5;
    BNE CODE_82D8DF                      ;82D8A7;
    JSL.L CODE_8282D3                    ;82D8A9;
    BNE CODE_82D8DF                      ;82D8AD;
    INC.W $0000,X                        ;82D8AF;
    LDA.B #$0C                           ;82D8B2;
    STA.W $000A,X                        ;82D8B4;
    LDA.B #$03                           ;82D8B7;
    STA.W $000B,X                        ;82D8B9;
    REP #$21                             ;82D8BC;
    JSL.L CODE_849086                    ;82D8BE;
    AND.W #$007F                         ;82D8C2;
    STA.W $0000                          ;82D8C5;
    LDA.B $05                            ;82D8C8;
    ADC.W #$FFC0                         ;82D8CA;
    CLC                                  ;82D8CD;
    ADC.W $0000                          ;82D8CE;
    STA.W $0005,X                        ;82D8D1;
    LDA.B $08                            ;82D8D4;
    CLC                                  ;82D8D6;
    ADC.W #$0040                         ;82D8D7;
    STA.W $0008,X                        ;82D8DA;
    SEP #$20                             ;82D8DD;

CODE_82D8DF:
    SEP #$10                             ;82D8DF;
    RTS                                  ;82D8E1;

CODE_82D8E2:
    REP #$10                             ;82D8E2;
    LDY.W #$0001                         ;82D8E4;

CODE_82D8E7:
    JSL.L CODE_8282D3                    ;82D8E7;
    BNE CODE_82D904                      ;82D8EB;
    INC.W $0000,X                        ;82D8ED;
    LDA.B #$26                           ;82D8F0;
    STA.W $000A,X                        ;82D8F2;
    TYA                                  ;82D8F5;
    STA.W $000B,X                        ;82D8F6;
    REP #$21                             ;82D8F9;
    TDC                                  ;82D8FB;
    STA.W $000C,X                        ;82D8FC;
    SEP #$20                             ;82D8FF;
    DEY                                  ;82D901;
    BPL CODE_82D8E7                      ;82D902;

CODE_82D904:
    SEP #$10                             ;82D904;
    RTS                                  ;82D906;

CODE_82D907:
    REP #$10                             ;82D907;
    LDY.W #$001E                         ;82D909;

CODE_82D90C:
    JSL.L CODE_8282D3                    ;82D90C;
    BNE CODE_82D96E                      ;82D910;
    INC.W $0000,X                        ;82D912;
    LDA.B #$2B                           ;82D915;
    STA.W $000A,X                        ;82D917;
    JSL.L CODE_849086                    ;82D91A;
    AND.B #$0F                           ;82D91E;
    STA.W $0000                          ;82D920;
    STZ.W $0001                          ;82D923;
    AND.B #$03                           ;82D926;
    CLC                                  ;82D928;
    ADC.B #$2A                           ;82D929;
    STA.W $000B,X                        ;82D92B;
    LDA.B #$30                           ;82D92E;
    STA.W $0011,X                        ;82D930;
    REP #$21                             ;82D933;
    LDA.W DATA8_86CDBA,Y                 ;82D935;
    ADC.B $05                            ;82D938;
    CLC                                  ;82D93A;
    ADC.W $0000                          ;82D93B;
    STA.W $0005,X                        ;82D93E;
    LDA.B $08                            ;82D941;
    CLC                                  ;82D943;
    ADC.W #$0040                         ;82D944;
    STA.W $0008,X                        ;82D947;
    LDA.W DATA8_86CDBA,Y                 ;82D94A;
    ASL A                                ;82D94D;
    ASL A                                ;82D94E;
    ASL A                                ;82D94F;
    STA.W $001A,X                        ;82D950;
    JSL.L CODE_849086                    ;82D953;
    XBA                                  ;82D957;
    AND.W #$0180                         ;82D958;
    CLC                                  ;82D95B;
    ADC.W #$0100                         ;82D95C;
    STA.W $001C,X                        ;82D95F;
    LDA.W #$0030                         ;82D962;
    STA.W $001E,X                        ;82D965;
    SEP #$20                             ;82D968;
    DEY                                  ;82D96A;
    DEY                                  ;82D96B;
    BPL CODE_82D90C                      ;82D96C;

CODE_82D96E:
    SEP #$10                             ;82D96E;
    RTS                                  ;82D970;

CODE_82D971:
    LDA.B #$A4                           ;82D971;
    STA.B $20                            ;82D973;
    LDA.B #$CD                           ;82D975;
    STA.B $21                            ;82D977;
    RTS                                  ;82D979;

CODE_82D97A:
    DEC.B $34                            ;82D97A;
    BNE CODE_82D9AA                      ;82D97C;
    LDA.B #$78                           ;82D97E;
    STA.B $34                            ;82D980;
    JSL.L CODE_828321                    ;82D982;
    BNE CODE_82D9A8                      ;82D986;
    INC.W $0000,X                        ;82D988;
    LDA.B #$49                           ;82D98B;
    STA.W $000A,X                        ;82D98D;
    LDA.B #$81                           ;82D990;
    STA.W $000B,X                        ;82D992;
    REP #$21                             ;82D995;
    LDA.B $05                            ;82D997;
    ADC.W #$0014                         ;82D999;
    STA.W $0005,X                        ;82D99C;
    LDA.B $08                            ;82D99F;
    CLC                                  ;82D9A1;
    ADC.W #$0000                         ;82D9A2;
    STA.W $0008,X                        ;82D9A5;

CODE_82D9A8:
    SEP #$30                             ;82D9A8;

CODE_82D9AA:
    RTS                                  ;82D9AA;

CODE_82D9AB:
    REP #$10                             ;82D9AB;
    LDY.W #$0005                         ;82D9AD;

CODE_82D9B0:
    LDA.W $1F3F,Y                        ;82D9B0;
    BNE CODE_82D9E2                      ;82D9B3;
    JSL.L CODE_828321                    ;82D9B5;
    BNE CODE_82D9E5                      ;82D9B9;
    INC.W $0000,X                        ;82D9BB;
    LDA.B #$4B                           ;82D9BE;
    STA.W $000A,X                        ;82D9C0;
    STA.W $1F3F,Y                        ;82D9C3;
    TYA                                  ;82D9C6;
    STA.W $000B,X                        ;82D9C7;
    PHY                                  ;82D9CA;
    REP #$20                             ;82D9CB;
    AND.W #$00FF                         ;82D9CD;
    ASL A                                ;82D9D0;
    ASL A                                ;82D9D1;
    TAY                                  ;82D9D2;
    LDA.W DATA8_86CDDA,Y                 ;82D9D3;
    STA.W $0005,X                        ;82D9D6;
    LDA.W DATA8_86CDDC,Y                 ;82D9D9;
    STA.W $0008,X                        ;82D9DC;
    SEP #$20                             ;82D9DF;
    PLY                                  ;82D9E1;

CODE_82D9E2:
    DEY                                  ;82D9E2;
    BPL CODE_82D9B0                      ;82D9E3;

CODE_82D9E5:
    SEP #$10                             ;82D9E5;
    RTS                                  ;82D9E7;

CODE_82D9E8:
    LDA.B $33                            ;82D9E8;
    TSB.B $11                            ;82D9EA;
    LDX.B $01                            ;82D9EC;
    JSR.W (PTR16_82DA25,X)               ;82D9EE;
    JSL.L CODE_849B03                    ;82D9F1;
    JSL.L CODE_849B43                    ;82D9F5;
    BEQ CODE_82DA13                      ;82D9F9;
    LDA.B $27                            ;82D9FB;
    AND.B #$7F                           ;82D9FD;
    BNE CODE_82DA0F                      ;82D9FF;
    JSL.L CODE_84A4AB                    ;82DA01;
    LDA.B #$01                           ;82DA05;
    JSL.L CODE_84A37F                    ;82DA07;
    JML.L CODE_828398                    ;82DA0B;

CODE_82DA0F:
    LDA.B #$0E                           ;82DA0F;
    TRB.B $11                            ;82DA11;

CODE_82DA13:
    LDA.B $0B                            ;82DA13;
    BMI CODE_82DA1D                      ;82DA15;
    JSL.L CODE_82806E                    ;82DA17;
    BCS CODE_82DA21                      ;82DA1B;

CODE_82DA1D:
    JML.L CODE_8280B4                    ;82DA1D;

CODE_82DA21:
    JML.L CODE_828387                    ;82DA21;

PTR16_82DA25:
    dw CODE_82DA2D                       ;82DA25;
    dw CODE_82DA6D                       ;82DA27;
    dw CODE_82DAA6                       ;82DA29;
    dw CODE_82DAD8                       ;82DA2B;

CODE_82DA2D:
    JSL.L CODE_82827D                    ;82DA2D;
    STZ.B $37                            ;82DA31;
    LDA.B $11                            ;82DA33;
    AND.B #$0E                           ;82DA35;
    STA.B $33                            ;82DA37;
    LDA.B #$04                           ;82DA39;
    STA.B $12                            ;82DA3B;
    LDA.B #$03                           ;82DA3D;
    STA.B $26                            ;82DA3F;
    LDA.B #$10                           ;82DA41;
    STA.B $27                            ;82DA43;
    LDA.B #$00                           ;82DA45;
    JSL.L CODE_848F07                    ;82DA47;
    LDA.B #$3C                           ;82DA4B;
    STA.B $34                            ;82DA4D;
    REP #$20                             ;82DA4F;
    LDA.W #$CDF2                         ;82DA51;
    STA.B $20                            ;82DA54;
    SEP #$20                             ;82DA56;
    LDA.B $0B                            ;82DA58;
    BMI CODE_82DA67                      ;82DA5A;
    REP #$20                             ;82DA5C;
    LDA.B $05                            ;82DA5E;
    CMP.W $0BAD                          ;82DA60;
    BCC CODE_82DA68                      ;82DA63;
    SEP #$20                             ;82DA65;

CODE_82DA67:
    RTS                                  ;82DA67;

CODE_82DA68:
    PLA                                  ;82DA68;
    JML.L CODE_828387                    ;82DA69;

CODE_82DA6D:
    JSL.L CODE_848EEA                    ;82DA6D;
    DEC.B $34                            ;82DA71;
    BNE CODE_82DAA0                      ;82DA73;
    LDA.B $37                            ;82DA75;
    LDY.B #$01                           ;82DA77;
    JSL.L CODE_84AC2B                    ;82DA79;
    STA.B $37                            ;82DA7D;
    BPL CODE_82DAA1                      ;82DA7F;
    JSL.L CODE_849086                    ;82DA81;
    LDX.B #$04                           ;82DA85;
    LSR A                                ;82DA87;
    BCC CODE_82DA8C                      ;82DA88;
    LDX.B #$06                           ;82DA8A;

CODE_82DA8C:
    STX.B $01                            ;82DA8C;
    LDA.B #$01                           ;82DA8E;
    STA.B $35                            ;82DA90;
    JSL.L CODE_849086                    ;82DA92;
    AND.B #$07                           ;82DA96;
    STA.B $36                            ;82DA98;
    LDA.B #$01                           ;82DA9A;
    JSL.L CODE_848F07                    ;82DA9C;

CODE_82DAA0:
    RTS                                  ;82DAA0;

CODE_82DAA1:
    LDA.B #$3C                           ;82DAA1;
    STA.B $34                            ;82DAA3;
    RTS                                  ;82DAA5;

CODE_82DAA6:
    JSL.L CODE_848EEA                    ;82DAA6;
    LDA.B $17                            ;82DAAA;
    BPL CODE_82DAD7                      ;82DAAC;
    AND.B #$7F                           ;82DAAE;
    STA.B $17                            ;82DAB0;
    LDA.B $0F                            ;82DAB2;
    AND.B #$7F                           ;82DAB4;
    BEQ CODE_82DAC1                      ;82DAB6;
    JSR.W CODE_82DB19                    ;82DAB8;
    LDA.B #$1E                           ;82DABB;
    JSL.L CODE_8088A2                    ;82DABD;

CODE_82DAC1:
    LDA.B $0F                            ;82DAC1;
    BPL CODE_82DAD7                      ;82DAC3;
    DEC.B $35                            ;82DAC5;
    BPL CODE_82DAD7                      ;82DAC7;
    LDA.B #$02                           ;82DAC9;
    STA.B $01                            ;82DACB;
    LDA.B #$07                           ;82DACD;
    JSL.L CODE_848F07                    ;82DACF;
    LDA.B #$3C                           ;82DAD3;
    STA.B $34                            ;82DAD5;

CODE_82DAD7:
    RTS                                  ;82DAD7;

CODE_82DAD8:
    JSL.L CODE_848EEA                    ;82DAD8;
    LDA.B $17                            ;82DADC;
    BPL CODE_82DB18                      ;82DADE;
    AND.B #$7F                           ;82DAE0;
    STA.B $17                            ;82DAE2;
    LDA.B $0F                            ;82DAE4;
    AND.B #$7F                           ;82DAE6;
    BEQ CODE_82DB06                      ;82DAE8;
    LDA.B #$44                           ;82DAEA;
    JSL.L CODE_8088A2                    ;82DAEC;
    LDA.B #$FF                           ;82DAF0;
    STA.W $0001                          ;82DAF2;
    LDA.B #$EF                           ;82DAF5;
    STA.W $0000                          ;82DAF7;
    JSR.W CODE_82DB4C                    ;82DAFA;
    STZ.W $0000                          ;82DAFD;
    STZ.W $0001                          ;82DB00;
    JSR.W CODE_82DB4C                    ;82DB03;

CODE_82DB06:
    LDA.B $0F                            ;82DB06;
    BPL CODE_82DB18                      ;82DB08;
    LDA.B #$02                           ;82DB0A;
    STA.B $01                            ;82DB0C;
    LDA.B #$07                           ;82DB0E;
    JSL.L CODE_848F07                    ;82DB10;
    LDA.B #$3C                           ;82DB14;
    STA.B $34                            ;82DB16;

CODE_82DB18:
    RTS                                  ;82DB18;

CODE_82DB19:
    LDA.B $36                            ;82DB19;
    ASL A                                ;82DB1B;
    CLC                                  ;82DB1C;
    ADC.B $35                            ;82DB1D;
    TAY                                  ;82DB1F;
    LDA.W DATA8_86CDF6,Y                 ;82DB20;
    TAY                                  ;82DB23;
    JSL.L CODE_828358                    ;82DB24;
    BNE CODE_82DB49                      ;82DB28;
    INC.W $0000,X                        ;82DB2A;
    LDA.B #$0E                           ;82DB2D;
    STA.W $000A,X                        ;82DB2F;
    STZ.W $000B,X                        ;82DB32;
    REP #$20                             ;82DB35;
    LDA.W DATA8_86CE06,Y                 ;82DB37;
    CLC                                  ;82DB3A;
    ADC.B $05                            ;82DB3B;
    STA.W $0005,X                        ;82DB3D;
    LDA.W DATA8_86CE0E,Y                 ;82DB40;
    CLC                                  ;82DB43;
    ADC.B $08                            ;82DB44;
    STA.W $0008,X                        ;82DB46;

CODE_82DB49:
    SEP #$30                             ;82DB49;
    RTS                                  ;82DB4B;

CODE_82DB4C:
    JSL.L CODE_828358                    ;82DB4C;
    BNE CODE_82DB73                      ;82DB50;
    INC.W $0000,X                        ;82DB52;
    LDA.B #$0E                           ;82DB55;
    STA.W $000A,X                        ;82DB57;
    LDA.B #$01                           ;82DB5A;
    STA.W $000B,X                        ;82DB5C;
    REP #$20                             ;82DB5F;
    LDA.W $0000                          ;82DB61;
    CLC                                  ;82DB64;
    ADC.B $05                            ;82DB65;
    STA.W $0005,X                        ;82DB67;
    LDA.B $08                            ;82DB6A;
    CLC                                  ;82DB6C;
    ADC.W #$0006                         ;82DB6D;
    STA.W $0008,X                        ;82DB70;

CODE_82DB73:
    SEP #$30                             ;82DB73;
    RTS                                  ;82DB75;

CODE_82DB76:
    LDX.B $01                            ;82DB76;
    JMP.W (PTR16_82DB7B,X)               ;82DB78;

PTR16_82DB7B:
    dw CODE_82DB83                       ;82DB7B;
    dw CODE_82DBE8                       ;82DB7D;
    dw CODE_82DC63                       ;82DB7F;
    dw CODE_82DF7F                       ;82DB81;

CODE_82DB83:
    LDA.B $02                            ;82DB83;
    BNE CODE_82DBA6                      ;82DB85;
    JSL.L CODE_84AAD3                    ;82DB87;
    BEQ CODE_82DB91                      ;82DB8B;
    JML.L CODE_828398                    ;82DB8D;

CODE_82DB91:
    JSL.L CODE_849FE6                    ;82DB91;
    INC.B $02                            ;82DB95;
    LDA.B #$3C                           ;82DB97;
    STA.B $35                            ;82DB99;
    LDA.W $1F26                          ;82DB9B;
    BEQ CODE_82DBA6                      ;82DB9E;
    LDA.B #$23                           ;82DBA0;
    JSL.L CODE_8087A2                    ;82DBA2;

CODE_82DBA6:
    DEC.B $35                            ;82DBA6;
    BEQ CODE_82DBAB                      ;82DBA8;
    RTL                                  ;82DBAA;

CODE_82DBAB:
    JSL.L CODE_82827D                    ;82DBAB;
    STZ.B $28                            ;82DBAF;
    LDA.B $11                            ;82DBB1;
    AND.B #$0E                           ;82DBB3;
    STA.B $34                            ;82DBB5;
    LDA.B #$04                           ;82DBB7;
    STA.B $12                            ;82DBB9;
    LDA.B #$08                           ;82DBBB;
    STA.B $26                            ;82DBBD;
    REP #$20                             ;82DBBF;
    LDA.W #$D652                         ;82DBC1;
    STA.B $20                            ;82DBC4;
    LDA.W #$FD80                         ;82DBC6;
    STA.B $1C                            ;82DBC9;
    STZ.B $1A                            ;82DBCB;
    SEP #$20                             ;82DBCD;
    LDA.B #$02                           ;82DBCF;
    STA.B $01                            ;82DBD1;
    STZ.B $02                            ;82DBD3;
    STZ.B $3D                            ;82DBD5;
    STZ.B $3E                            ;82DBD7;
    STZ.B $3F                            ;82DBD9;
    STZ.B $1F                            ;82DBDB;
    STZ.B $0D                            ;82DBDD;
    LDA.B #$04                           ;82DBDF;
    STA.B $2F                            ;82DBE1;
    LDA.B #$10                           ;82DBE3;
    STA.B $36                            ;82DBE5;
    RTL                                  ;82DBE7;

CODE_82DBE8:
    LDX.B $02                            ;82DBE8;
    JSR.W (PTR16_82DBEE,X)               ;82DBEA;
    RTL                                  ;82DBED;

PTR16_82DBEE:
    dw CODE_82DBF4                       ;82DBEE;
    dw CODE_82DC03                       ;82DBF0;
    dw CODE_82DC41                       ;82DBF2;

CODE_82DBF4:
    REP #$20                             ;82DBF4;
    TDC                                  ;82DBF6;
    STA.W $1F0E                          ;82DBF7;
    SEP #$20                             ;82DBFA;
    STZ.B $27                            ;82DBFC;
    LDA.B #$02                           ;82DBFE;
    STA.B $02                            ;82DC00;
    RTS                                  ;82DC02;

CODE_82DC03:
    LDA.W $0B9C                          ;82DC03;
    LSR A                                ;82DC06;
    BCC CODE_82DC40                      ;82DC07;
    LDA.B $27                            ;82DC09;
    AND.B #$7F                           ;82DC0B;
    CMP.B #$20                           ;82DC0D;
    BEQ CODE_82DC1F                      ;82DC0F;
    INC A                                ;82DC11;
    ORA.B #$80                           ;82DC12;
    STA.B $27                            ;82DC14;
    LDA.B #$0C                           ;82DC16;
    JSL.L CODE_8088CD                    ;82DC18;
    JMP.W CODE_82DC40                    ;82DC1C;

CODE_82DC1F:
    LDA.B #$00                           ;82DC1F;
    JSL.L CODE_848F07                    ;82DC21;
    JSL.L CODE_849FFE                    ;82DC25;
    LDA.B #$04                           ;82DC29;
    STA.B $02                            ;82DC2B;
    LDA.B #$10                           ;82DC2D;
    STA.B $35                            ;82DC2F;
    LDA.W $1F26                          ;82DC31;
    BEQ CODE_82DC40                      ;82DC34;
    LDA.B #$24                           ;82DC36;
    JSL.L CODE_8087A2                    ;82DC38;
    JSL.L CODE_8280B4                    ;82DC3C;

CODE_82DC40:
    RTS                                  ;82DC40;

CODE_82DC41:
    LDA.B $35                            ;82DC41;
    BNE CODE_82DC54                      ;82DC43;
    LDA.B #$04                           ;82DC45;
    STA.B $01                            ;82DC47;
    LDA.B #$08                           ;82DC49;
    STA.B $02                            ;82DC4B;
    LDA.B #$30                           ;82DC4D;
    STA.B $35                            ;82DC4F;
    JMP.W CODE_82DC62                    ;82DC51;

CODE_82DC54:
    DEC.B $35                            ;82DC54;
    JSL.L CODE_82825D                    ;82DC56;
    JSL.L CODE_848EEA                    ;82DC5A;
    JSL.L CODE_8280B4                    ;82DC5E;

CODE_82DC62:
    RTS                                  ;82DC62;

CODE_82DC63:
    LDX.B $02                            ;82DC63;
    JSR.W (PTR16_82DCD8,X)               ;82DC65;
    LDA.B $27                            ;82DC68;
    BEQ CODE_82DCD4                      ;82DC6A;
    LDA.B $3F                            ;82DC6C;
    BEQ CODE_82DC73                      ;82DC6E;
    JMP.W CODE_82DC76                    ;82DC70;

CODE_82DC73:
    JMP.W CODE_82DC78                    ;82DC73;

CODE_82DC76:
    DEC.B $3F                            ;82DC76;

CODE_82DC78:
    JSL.L CODE_849B43                    ;82DC78;
    BEQ CODE_82DCCC                      ;82DC7C;
    LDA.B $27                            ;82DC7E;
    AND.B #$7F                           ;82DC80;
    BNE CODE_82DCB7                      ;82DC82;
    LDA.W $0BCF                          ;82DC84;
    AND.B #$7F                           ;82DC87;
    BEQ CODE_82DCBB                      ;82DC89;
    LDA.B #$13                           ;82DC8B;
    JSL.L CODE_8088A2                    ;82DC8D;
    LDA.B #$06                           ;82DC91;
    STA.B $01                            ;82DC93;
    STZ.B $02                            ;82DC95;
    STZ.B $03                            ;82DC97;
    LDA.B #$01                           ;82DC99;
    STA.W $0BD8                          ;82DC9B;
    STA.W $1F0C                          ;82DC9E;
    LDA.B #$28                           ;82DCA1;
    STA.B $35                            ;82DCA3;
    LDA.B #$01                           ;82DCA5;
    STA.W $1F13                          ;82DCA7;
    STA.W $1F14                          ;82DCAA;
    STA.W $1F17                          ;82DCAD;
    JSL.L CODE_849F85                    ;82DCB0;
    JMP.W CODE_82DCD4                    ;82DCB4;

CODE_82DCB7:
    LDA.B #$0E                           ;82DCB7;
    TRB.B $11                            ;82DCB9;

CODE_82DCBB:
    LDA.B #$13                           ;82DCBB;
    JSL.L CODE_8088A2                    ;82DCBD;
    LDA.B #$18                           ;82DCC1;
    STA.B $3F                            ;82DCC3;
    LDA.B #$05                           ;82DCC5;
    STA.B $28                            ;82DCC7;
    JMP.W CODE_82DCD0                    ;82DCC9;

CODE_82DCCC:
    LDA.B $34                            ;82DCCC;
    TSB.B $11                            ;82DCCE;

CODE_82DCD0:
    JSL.L CODE_849B03                    ;82DCD0;

CODE_82DCD4:
    JML.L CODE_8280B4                    ;82DCD4;

PTR16_82DCD8:
    dw CODE_82DCEA                       ;82DCD8;
    dw CODE_82DD31                       ;82DCDA;
    dw CODE_82DDB8                       ;82DCDC;
    dw CODE_82DDFE                       ;82DCDE;
    dw CODE_82DE1D                       ;82DCE0;
    dw CODE_82DE8D                       ;82DCE2;
    dw CODE_82DF32                       ;82DCE4;
    dw CODE_82DDAA                       ;82DCE6;
    dw CODE_82DF4F                       ;82DCE8;

CODE_82DCEA:
    LDA.B $27                            ;82DCEA;
    AND.B #$7F                           ;82DCEC;
    CMP.B #$10                           ;82DCEE;
    BPL CODE_82DCFD                      ;82DCF0;
    CMP.B #$08                           ;82DCF2;
    BPL CODE_82DD02                      ;82DCF4;
    LDA.B #$04                           ;82DCF6;
    STA.B $3E                            ;82DCF8;
    JMP.W CODE_82DD06                    ;82DCFA;

CODE_82DCFD:
    STZ.B $3E                            ;82DCFD;
    JMP.W CODE_82DD06                    ;82DCFF;

CODE_82DD02:
    LDA.B #$02                           ;82DD02;
    STA.B $3E                            ;82DD04;

CODE_82DD06:
    JSL.L CODE_849086                    ;82DD06;
    AND.B #$03                           ;82DD0A;
    ASL A                                ;82DD0C;
    TAX                                  ;82DD0D;
    REP #$20                             ;82DD0E;
    LDA.W DATA8_86D65C,X                 ;82DD10;
    STA.B $05                            ;82DD13;
    LDX.B $3E                            ;82DD15;
    LDA.W DATA8_86D6A2,X                 ;82DD17;
    EOR.W #$FFFF                         ;82DD1A;
    INC A                                ;82DD1D;
    STA.B $1C                            ;82DD1E;
    SEP #$20                             ;82DD20;
    LDA.B #$30                           ;82DD22;
    STA.B $35                            ;82DD24;
    LDA.B #$20                           ;82DD26;
    STA.B $36                            ;82DD28;
    LDA.B #$08                           ;82DD2A;
    STA.B $02                            ;82DD2C;
    STZ.B $1F                            ;82DD2E;
    RTS                                  ;82DD30;

CODE_82DD31:
    LDA.B $3B                            ;82DD31;
    BPL CODE_82DD38                      ;82DD33;
    JMP.W CODE_82DDA1                    ;82DD35;

CODE_82DD38:
    DEC.B $3B                            ;82DD38;
    LDA.B $3A                            ;82DD3A;
    BPL CODE_82DD46                      ;82DD3C;
    LDA.B #$03                           ;82DD3E;
    STA.W $0000                          ;82DD40;
    JMP.W CODE_82DD4B                    ;82DD43;

CODE_82DD46:
    LDA.B #$01                           ;82DD46;
    STA.W $0000                          ;82DD48;

CODE_82DD4B:
    JSL.L CODE_849086                    ;82DD4B;
    AND.W $0000                          ;82DD4F;
    CMP.B #$03                           ;82DD52;
    BNE CODE_82DD58                      ;82DD54;
    LDA.B #$00                           ;82DD56;

CODE_82DD58:
    STA.B $3A                            ;82DD58;
    LDA.B $3C                            ;82DD5A;
    BPL CODE_82DD65                      ;82DD5C;
    LDA.B $3A                            ;82DD5E;
    STA.B $3C                            ;82DD60;
    JMP.W CODE_82DD9B                    ;82DD62;

CODE_82DD65:
    CMP.B #$00                           ;82DD65;
    BNE CODE_82DD7F                      ;82DD67;
    LDA.B $3A                            ;82DD69;
    BEQ CODE_82DD76                      ;82DD6B;
    LDA.B #$02                           ;82DD6D;
    STA.B $3A                            ;82DD6F;
    STA.B $3C                            ;82DD71;
    JMP.W CODE_82DD9B                    ;82DD73;

CODE_82DD76:
    LDA.B #$01                           ;82DD76;
    STA.B $3A                            ;82DD78;
    STA.B $3C                            ;82DD7A;
    JMP.W CODE_82DD9B                    ;82DD7C;

CODE_82DD7F:
    CMP.B #$01                           ;82DD7F;
    BNE CODE_82DD97                      ;82DD81;
    LDA.B $3A                            ;82DD83;
    BEQ CODE_82DD8E                      ;82DD85;
    STZ.B $3A                            ;82DD87;
    STZ.B $3C                            ;82DD89;
    JMP.W CODE_82DD9B                    ;82DD8B;

CODE_82DD8E:
    LDA.B #$02                           ;82DD8E;
    STA.B $3A                            ;82DD90;
    STA.B $3C                            ;82DD92;
    JMP.W CODE_82DD9B                    ;82DD94;

CODE_82DD97:
    LDA.B $3A                            ;82DD97;
    STA.B $3C                            ;82DD99;

CODE_82DD9B:
    JSR.W CODE_82E1B2                    ;82DD9B;
    JMP.W CODE_82DD31                    ;82DD9E;

CODE_82DDA1:
    LDA.B #$0E                           ;82DDA1;
    STA.B $02                            ;82DDA3;
    LDA.B #$3C                           ;82DDA5;
    STA.B $35                            ;82DDA7;
    RTS                                  ;82DDA9;

CODE_82DDAA:
    LDA.B $35                            ;82DDAA;
    BEQ CODE_82DDB3                      ;82DDAC;
    DEC.B $35                            ;82DDAE;
    JMP.W CODE_82DDB7                    ;82DDB0;

CODE_82DDB3:
    LDA.B #$04                           ;82DDB3;
    STA.B $02                            ;82DDB5;

CODE_82DDB7:
    RTS                                  ;82DDB7;

CODE_82DDB8:
    LDA.B $2F                            ;82DDB8;
    BNE CODE_82DDC6                      ;82DDBA;
    LDA.B #$43                           ;82DDBC;
    JSL.L CODE_8088CD                    ;82DDBE;
    LDA.B #$04                           ;82DDC2;
    STA.B $2F                            ;82DDC4;

CODE_82DDC6:
    DEC.B $2F                            ;82DDC6;
    JSL.L CODE_82825D                    ;82DDC8;
    JSL.L CODE_848EEA                    ;82DDCC;
    REP #$20                             ;82DDD0;
    LDA.B $08                            ;82DDD2;
    CMP.W #$01B0                         ;82DDD4;
    BMI CODE_82DDF5                      ;82DDD7;
    SEP #$20                             ;82DDD9;
    LDA.B #$10                           ;82DDDB;
    STA.B $02                            ;82DDDD;
    LDA.B #$09                           ;82DDDF;
    JSL.L CODE_848F07                    ;82DDE1;
    LDA.B #$18                           ;82DDE5;
    STA.B $35                            ;82DDE7;
    REP #$20                             ;82DDE9;
    LDA.W #$0300                         ;82DDEB;
    STA.B $1C                            ;82DDEE;
    SEP #$20                             ;82DDF0;
    JMP.W CODE_82DDFA                    ;82DDF2;

CODE_82DDF5:
    SEP #$20                             ;82DDF5;
    JSR.W CODE_82E0EF                    ;82DDF7;

CODE_82DDFA:
    JSR.W CODE_82E0B2                    ;82DDFA;
    RTS                                  ;82DDFD;

CODE_82DDFE:
    LDA.B $2F                            ;82DDFE;
    BNE CODE_82DE0C                      ;82DE00;
    LDA.B #$43                           ;82DE02;
    JSL.L CODE_8088CD                    ;82DE04;
    LDA.B #$04                           ;82DE08;
    STA.B $2F                            ;82DE0A;

CODE_82DE0C:
    DEC.B $2F                            ;82DE0C;
    JSL.L CODE_82823E                    ;82DE0E;
    JSL.L CODE_848EEA                    ;82DE12;
    JSR.W CODE_82E0EF                    ;82DE16;
    JSR.W CODE_82E0B2                    ;82DE19;
    RTS                                  ;82DE1C;

CODE_82DE1D:
    REP #$20                             ;82DE1D;
    LDA.B $08                            ;82DE1F;
    CMP.W #$0100                         ;82DE21;
    BPL CODE_82DE2D                      ;82DE24;
    JSL.L CODE_82825D                    ;82DE26;
    JMP.W CODE_82DE86                    ;82DE2A;

CODE_82DE2D:
    SEP #$20                             ;82DE2D;
    LDA.B $1F                            ;82DE2F;
    BNE CODE_82DE63                      ;82DE31;
    LDA.B $1E                            ;82DE33;
    BNE CODE_82DE63                      ;82DE35;
    LDA.B $0D                            ;82DE37;
    BNE CODE_82DE61                      ;82DE39;
    JSL.L CODE_849086                    ;82DE3B;
    AND.B #$03                           ;82DE3F;
    BNE CODE_82DE63                      ;82DE41;
    LDA.B #$0A                           ;82DE43;
    STA.B $02                            ;82DE45;
    LDA.B #$0C                           ;82DE47;
    STA.B $03                            ;82DE49;
    LDA.B #$20                           ;82DE4B;
    STA.B $35                            ;82DE4D;
    LDA.B #$01                           ;82DE4F;
    STA.B $1E                            ;82DE51;
    STA.B $0D                            ;82DE53;
    REP #$20                             ;82DE55;
    LDA.W #$0300                         ;82DE57;
    STA.B $1C                            ;82DE5A;
    SEP #$20                             ;82DE5C;
    JMP.W CODE_82DE8C                    ;82DE5E;

CODE_82DE61:
    STZ.B $0D                            ;82DE61;

CODE_82DE63:
    LDA.B #$01                           ;82DE63;
    STA.B $1F                            ;82DE65;
    DEC.B $35                            ;82DE67;
    LDA.B $35                            ;82DE69;
    BNE CODE_82DE86                      ;82DE6B;
    LDA.B #$00                           ;82DE6D;
    JSL.L CODE_848F07                    ;82DE6F;
    LDA.B #$02                           ;82DE73;
    STA.B $02                            ;82DE75;
    STZ.B $1E                            ;82DE77;
    LDA.B #$80                           ;82DE79;
    STA.B $3A                            ;82DE7B;
    STA.B $3C                            ;82DE7D;
    LDA.B #$08                           ;82DE7F;
    STA.B $3B                            ;82DE81;
    JMP.W CODE_82DE8C                    ;82DE83;

CODE_82DE86:
    SEP #$20                             ;82DE86;
    JSL.L CODE_848EEA                    ;82DE88;

CODE_82DE8C:
    RTS                                  ;82DE8C;

CODE_82DE8D:
    DEC.B $35                            ;82DE8D;
    BNE CODE_82DEA0                      ;82DE8F;
    STZ.B $1E                            ;82DE91;
    LDA.B $03                            ;82DE93;
    STA.B $02                            ;82DE95;
    LDA.B #$00                           ;82DE97;
    JSL.L CODE_848F07                    ;82DE99;
    JMP.W CODE_82DF2F                    ;82DE9D;

CODE_82DEA0:
    LDA.B $35                            ;82DEA0;
    CMP.B #$10                           ;82DEA2;
    BEQ CODE_82DEA9                      ;82DEA4;
    JMP.W CODE_82DF2F                    ;82DEA6;

CODE_82DEA9:
    REP #$10                             ;82DEA9;
    LDY.W #$0026                         ;82DEAB;
    STY.B $37                            ;82DEAE;
    SEP #$10                             ;82DEB0;

CODE_82DEB2:
    SEP #$10                             ;82DEB2;
    LDA.B #$2B                           ;82DEB4;
    STA.B $0A                            ;82DEB6;
    JSR.W CODE_82E17D                    ;82DEB8;
    LDA.B #$63                           ;82DEBB;
    STA.B $0A                            ;82DEBD;
    CPY.B #$08                           ;82DEBF;
    BPL CODE_82DF2F                      ;82DEC1;
    REP #$10                             ;82DEC3;
    JSL.L CODE_828358                    ;82DEC5;
    BNE CODE_82DF2F                      ;82DEC9;
    INC.W $0000,X                        ;82DECB;
    LDA.B #$2B                           ;82DECE;
    STA.W $000A,X                        ;82DED0;
    LDA.B $18                            ;82DED3;
    STA.W $0018,X                        ;82DED5;
    LDA.B $11                            ;82DED8;
    ORA.B $34                            ;82DEDA;
    STA.W $0011,X                        ;82DEDC;
    LDA.B $16                            ;82DEDF;
    STA.W $0016,X                        ;82DEE1;
    REP #$20                             ;82DEE4;
    LDY.B $37                            ;82DEE6;
    LDA.W DATA8_86D664,Y                 ;82DEE8;
    STA.W $000B,X                        ;82DEEB;
    DEY                                  ;82DEEE;
    DEY                                  ;82DEEF;
    LDA.W DATA8_86D664,Y                 ;82DEF0;
    STA.W $0000                          ;82DEF3;
    DEY                                  ;82DEF6;
    DEY                                  ;82DEF7;
    LDA.W DATA8_86D664,Y                 ;82DEF8;
    STA.W $0002                          ;82DEFB;
    DEY                                  ;82DEFE;
    DEY                                  ;82DEFF;
    LDA.W DATA8_86D664,Y                 ;82DF00;
    STA.W $001A,X                        ;82DF03;
    DEY                                  ;82DF06;
    DEY                                  ;82DF07;
    LDA.W DATA8_86D664,Y                 ;82DF08;
    STA.W $001C,X                        ;82DF0B;
    DEY                                  ;82DF0E;
    DEY                                  ;82DF0F;
    STY.B $37                            ;82DF10;
    LDA.B $05                            ;82DF12;
    CLC                                  ;82DF14;
    ADC.W $0000                          ;82DF15;
    STA.W $0005,X                        ;82DF18;
    LDA.B $08                            ;82DF1B;
    CLC                                  ;82DF1D;
    ADC.W $0002                          ;82DF1E;
    STA.W $0008,X                        ;82DF21;
    TDC                                  ;82DF24;
    STA.W $000C,X                        ;82DF25;
    SEP #$20                             ;82DF28;
    CPY.W #$FFFE                         ;82DF2A;
    BNE CODE_82DEB2                      ;82DF2D;

CODE_82DF2F:
    SEP #$10                             ;82DF2F;
    RTS                                  ;82DF31;

CODE_82DF32:
    REP #$20                             ;82DF32;
    LDA.B $08                            ;82DF34;
    CMP.W #$00E0                         ;82DF36;
    BPL CODE_82DF42                      ;82DF39;
    LDX.B #$00                           ;82DF3B;
    STX.B $02                            ;82DF3D;
    JMP.W CODE_82DF48                    ;82DF3F;

CODE_82DF42:
    SEP #$20                             ;82DF42;
    JSL.L CODE_82825D                    ;82DF44;

CODE_82DF48:
    SEP #$20                             ;82DF48;
    JSL.L CODE_848EEA                    ;82DF4A;
    RTS                                  ;82DF4E;

CODE_82DF4F:
    LDA.B $0F                            ;82DF4F;
    BPL CODE_82DF59                      ;82DF51;
    LDA.B #$01                           ;82DF53;
    JSL.L CODE_848F07                    ;82DF55;

CODE_82DF59:
    LDA.B $35                            ;82DF59;
    BEQ CODE_82DF6A                      ;82DF5B;
    DEC.B $35                            ;82DF5D;
    LDA.B $3F                            ;82DF5F;
    BNE CODE_82DF7A                      ;82DF61;
    LDA.B #$0A                           ;82DF63;
    STA.B $28                            ;82DF65;
    JMP.W CODE_82DF7A                    ;82DF67;

CODE_82DF6A:
    LDA.B #$01                           ;82DF6A;
    STA.B $35                            ;82DF6C;
    LDA.B #$0C                           ;82DF6E;
    STA.B $02                            ;82DF70;
    STZ.B $28                            ;82DF72;
    LDA.B #$00                           ;82DF74;
    JSL.L CODE_848F07                    ;82DF76;

CODE_82DF7A:
    JSL.L CODE_848EEA                    ;82DF7A;
    RTS                                  ;82DF7E;

CODE_82DF7F:
    LDX.B $02                            ;82DF7F;
    JMP.W (PTR16_82DF84,X)               ;82DF81;

PTR16_82DF84:
    dw CODE_82DF90                       ;82DF84;
    dw CODE_82DFC4                       ;82DF86;
    dw CODE_82DFFC                       ;82DF88;
    dw CODE_82E038                       ;82DF8A;
    dw CODE_82E07E                       ;82DF8C;
    dw CODE_82E09A                       ;82DF8E;

CODE_82DF90:
    LDA.B $35                            ;82DF90;
    BEQ CODE_82DF9E                      ;82DF92;
    LDA.B #$01                           ;82DF94;
    STA.W $1F13                          ;82DF96;
    DEC.B $35                            ;82DF99;
    JMP.W CODE_82DFC0                    ;82DF9B;

CODE_82DF9E:
    STZ.W $1F13                          ;82DF9E;
    STZ.W $1F14                          ;82DFA1;
    STZ.W $1F17                          ;82DFA4;
    LDA.B #$02                           ;82DFA7;
    STA.B $02                            ;82DFA9;
    LDY.B #$02                           ;82DFAB;
    LDA.B #$F6                           ;82DFAD;
    JSL.L CODE_80887F                    ;82DFAF;
    JSL.L CODE_849FE6                    ;82DFB3;
    LDA.B #$30                           ;82DFB7;
    TSB.W $0BB9                          ;82DFB9;
    LDA.B #$FF                           ;82DFBC;
    STA.B $35                            ;82DFBE;

CODE_82DFC0:
    JML.L CODE_8280B4                    ;82DFC0;

CODE_82DFC4:
    LDA.W $0B9C                          ;82DFC4;
    AND.B #$1F                           ;82DFC7;
    BNE CODE_82DFD1                      ;82DFC9;
    LDA.B #$20                           ;82DFCB;
    JSL.L CODE_84A333                    ;82DFCD;

CODE_82DFD1:
    DEC.B $35                            ;82DFD1;
    BNE CODE_82DFD9                      ;82DFD3;
    LDA.B #$04                           ;82DFD5;
    STA.B $02                            ;82DFD7;

CODE_82DFD9:
    REP #$20                             ;82DFD9;
    LDA.W #$FFC0                         ;82DFDB;
    STA.W $0000                          ;82DFDE;
    STA.W $0002                          ;82DFE1;
    LDA.W #$007F                         ;82DFE4;
    STA.W $0004                          ;82DFE7;
    STA.W $0006                          ;82DFEA;
    SEP #$20                             ;82DFED;
    LDA.B #$03                           ;82DFEF;
    STA.W $0008                          ;82DFF1;
    JSL.L CODE_8280B4                    ;82DFF4;
    JML.L CODE_84A4C6                    ;82DFF8;

CODE_82DFFC:
    LDA.B #$06                           ;82DFFC;
    STA.B $02                            ;82DFFE;
    PHB                                  ;82E000;
    REP #$30                             ;82E001;
    LDX.W #$D6A8                         ;82E003;
    LDY.W #$0AA1                         ;82E006;
    LDA.W #$0006                         ;82E009;
    MVN $00,$86                          ;82E00C;
    LDX.W #$D6AF                         ;82E00F;
    LDY.W #$0B22                         ;82E012;
    LDA.W #$0009                         ;82E015;
    MVN $00,$86                          ;82E018;
    JSR.W CODE_82E27C                    ;82E01B;
    SEP #$30                             ;82E01E;
    PLB                                  ;82E020;
    LDA.B #$3F                           ;82E021;
    STA.W $00CA                          ;82E023;
    STZ.W $00CB                          ;82E026;
    LDA.B #$01                           ;82E029;
    STA.B $0C                            ;82E02B;
    JSR.W CODE_82E212                    ;82E02D;
    LDA.B #$C0                           ;82E030;
    STA.B $35                            ;82E032;
    JML.L CODE_8280B4                    ;82E034;

CODE_82E038:
    LDA.W $0B9C                          ;82E038;
    AND.B #$01                           ;82E03B;
    BNE CODE_82E047                      ;82E03D;
    LDA.B $0C                            ;82E03F;
    CMP.B #$1F                           ;82E041;
    BEQ CODE_82E047                      ;82E043;
    INC.B $0C                            ;82E045;

CODE_82E047:
    LDA.B $35                            ;82E047;
    CMP.B #$B0                           ;82E049;
    BNE CODE_82E053                      ;82E04B;
    LDA.B #$21                           ;82E04D;
    JSL.L CODE_8088CD                    ;82E04F;

CODE_82E053:
    DEC.B $35                            ;82E053;
    LDA.B $35                            ;82E055;
    BNE CODE_82E06C                      ;82E057;
    LDA.B #$08                           ;82E059;
    STA.B $02                            ;82E05B;
    LDA.B #$1F                           ;82E05D;
    STA.W $00CB                          ;82E05F;
    STA.W $00CC                          ;82E062;
    STA.W $00CD                          ;82E065;
    STZ.W $0AA1                          ;82E068;
    RTL                                  ;82E06B;

CODE_82E06C:
    CMP.B #$B0                           ;82E06C;
    BCC CODE_82E077                      ;82E06E;
    JSR.W CODE_82E212                    ;82E070;
    JML.L CODE_8280B4                    ;82E073;

CODE_82E077:
    JSR.W CODE_82E239                    ;82E077;
    JML.L CODE_8280B4                    ;82E07A;

CODE_82E07E:
    LDA.W $0B9C                          ;82E07E;
    AND.B #$01                           ;82E081;
    BNE CODE_82E099                      ;82E083;
    DEC.W $00CB                          ;82E085;
    DEC.W $00CC                          ;82E088;
    DEC.W $00CD                          ;82E08B;
    BNE CODE_82E099                      ;82E08E;
    LDA.B #$01                           ;82E090;
    STA.W $1F23                          ;82E092;
    LDA.B #$0A                           ;82E095;
    STA.B $02                            ;82E097;

CODE_82E099:
    RTL                                  ;82E099;

CODE_82E09A:
    STZ.W $1F0C                          ;82E09A;
    STZ.W $0BD8                          ;82E09D;
    JSL.L CODE_849FFE                    ;82E0A0;
    LDA.B #$04                           ;82E0A4;
    STA.W $1F10                          ;82E0A6;
    LDA.B #$01                           ;82E0A9;
    STA.W $1F7B                          ;82E0AB;
    JML.L CODE_828398                    ;82E0AE;

CODE_82E0B2:
    LDA.B #$2B                           ;82E0B2;
    STA.B $0A                            ;82E0B4;
    JSR.W CODE_82E17D                    ;82E0B6;
    LDA.B #$63                           ;82E0B9;
    STA.B $0A                            ;82E0BB;
    CPY.B #$08                           ;82E0BD;
    BPL CODE_82E0EC                      ;82E0BF;
    REP #$20                             ;82E0C1;
    LDA.B $08                            ;82E0C3;
    CMP.W #$017A                         ;82E0C5;
    BPL CODE_82E0EC                      ;82E0C8;
    LDA.W $0BB0                          ;82E0CA;
    SEC                                  ;82E0CD;
    SBC.B $08                            ;82E0CE;
    BCS CODE_82E0D6                      ;82E0D0;
    EOR.W #$FFFF                         ;82E0D2;
    INC A                                ;82E0D5;

CODE_82E0D6:
    CMP.W #$0020                         ;82E0D6;
    BCS CODE_82E0EC                      ;82E0D9;
    SEP #$20                             ;82E0DB;
    JMP.W CODE_82E0E0                    ;82E0DD;

CODE_82E0E0:
    LDA.B $02                            ;82E0E0;
    STA.B $03                            ;82E0E2;
    LDA.B #$0A                           ;82E0E4;
    STA.B $02                            ;82E0E6;
    LDA.B #$20                           ;82E0E8;
    STA.B $35                            ;82E0EA;

CODE_82E0EC:
    SEP #$20                             ;82E0EC;
    RTS                                  ;82E0EE;

CODE_82E0EF:
    REP #$20                             ;82E0EF;
    LDA.B $1A                            ;82E0F1;
    BMI CODE_82E100                      ;82E0F3;
    BEQ CODE_82E109                      ;82E0F5;
    SEP #$20                             ;82E0F7;
    LDA.B #$F8                           ;82E0F9;
    STA.B $29                            ;82E0FB;
    JMP.W CODE_82E10D                    ;82E0FD;

CODE_82E100:
    SEP #$20                             ;82E100;
    LDA.B #$08                           ;82E102;
    STA.B $29                            ;82E104;
    JMP.W CODE_82E10D                    ;82E106;

CODE_82E109:
    SEP #$20                             ;82E109;
    STZ.B $29                            ;82E10B;

CODE_82E10D:
    LDA.B #$F0                           ;82E10D;
    STA.B $2A                            ;82E10F;
    JSL.L CODE_8490A0                    ;82E111;
    CMP.B #$15                           ;82E115;
    BEQ CODE_82E176                      ;82E117;
    CMP.B $3D                            ;82E119;
    BEQ CODE_82E176                      ;82E11B;
    CMP.B #$14                           ;82E11D;
    BEQ CODE_82E128                      ;82E11F;
    CMP.B #$16                           ;82E121;
    BEQ CODE_82E140                      ;82E123;
    JMP.W CODE_82E176                    ;82E125;

CODE_82E128:
    STA.B $3D                            ;82E128;
    LDA.B $02                            ;82E12A;
    CMP.B #$04                           ;82E12C;
    BNE CODE_82E15E                      ;82E12E;
    LDA.B #$06                           ;82E130;
    STA.B $02                            ;82E132;
    REP #$20                             ;82E134;
    LDX.B $3E                            ;82E136;
    LDA.W DATA8_86D6A2,X                 ;82E138;
    STA.B $1A                            ;82E13B;
    JMP.W CODE_82E17A                    ;82E13D;

CODE_82E140:
    SEP #$20                             ;82E140;
    STA.B $3D                            ;82E142;
    LDA.B $02                            ;82E144;
    CMP.B #$04                           ;82E146;
    BNE CODE_82E15E                      ;82E148;
    LDA.B #$06                           ;82E14A;
    STA.B $02                            ;82E14C;
    REP #$20                             ;82E14E;
    LDX.B $3E                            ;82E150;
    LDA.W DATA8_86D6A2,X                 ;82E152;
    EOR.W #$FFFF                         ;82E155;
    INC A                                ;82E158;
    STA.B $1A                            ;82E159;
    JMP.W CODE_82E17A                    ;82E15B;

CODE_82E15E:
    SEP #$20                             ;82E15E;
    LDA.B #$04                           ;82E160;
    STA.B $02                            ;82E162;
    REP #$20                             ;82E164;
    STZ.B $1A                            ;82E166;
    LDX.B $3E                            ;82E168;
    LDA.W DATA8_86D6A2,X                 ;82E16A;
    EOR.W #$FFFF                         ;82E16D;
    INC A                                ;82E170;
    STA.B $1C                            ;82E171;
    JMP.W CODE_82E17A                    ;82E173;

CODE_82E176:
    SEP #$20                             ;82E176;
    STA.B $3D                            ;82E178;

CODE_82E17A:
    SEP #$20                             ;82E17A;
    RTS                                  ;82E17C;

CODE_82E17D:
    REP #$30                             ;82E17D;
    LDY.W #$0000                         ;82E17F;
    LDX.W #$1428                         ;82E182;

CODE_82E185:
    LDA.W $0000,X                        ;82E185;
    BEQ CODE_82E1A4                      ;82E188;
    SEP #$20                             ;82E18A;
    LDA.W $000A,X                        ;82E18C;
    CMP.B $0A                            ;82E18F;
    REP #$20                             ;82E191;
    BNE CODE_82E1A4                      ;82E193;
    TXA                                  ;82E195;
    STA.W $0000,Y                        ;82E196;
    TDC                                  ;82E199;
    STA.W $002C                          ;82E19A;
    CPX.W $002C                          ;82E19D;
    BEQ CODE_82E1A4                      ;82E1A0;
    INY                                  ;82E1A2;
    INY                                  ;82E1A3;

CODE_82E1A4:
    TXA                                  ;82E1A4;
    CLC                                  ;82E1A5;
    ADC.W #$0040                         ;82E1A6;
    TAX                                  ;82E1A9;
    CMP.W #$1628                         ;82E1AA;
    BCC CODE_82E185                      ;82E1AD;
    SEP #$30                             ;82E1AF;
    RTS                                  ;82E1B1;

CODE_82E1B2:
    REP #$10                             ;82E1B2;
    JSL.L CODE_8282D3                    ;82E1B4;
    BNE CODE_82E1FC                      ;82E1B8;
    INC.W $0000,X                        ;82E1BA;
    LDA.B #$3C                           ;82E1BD;
    STA.W $000A,X                        ;82E1BF;
    REP #$20                             ;82E1C2;
    LDA.B $3A                            ;82E1C4;
    AND.W #$00FF                         ;82E1C6;
    ASL A                                ;82E1C9;
    TAY                                  ;82E1CA;
    LDA.W DATA8_86D68C,Y                 ;82E1CB;
    STA.W $0005,X                        ;82E1CE;
    LDA.B $3B                            ;82E1D1;
    AND.W #$00FF                         ;82E1D3;
    ASL A                                ;82E1D6;
    TAY                                  ;82E1D7;
    LDA.W DATA8_86D692,Y                 ;82E1D8;
    STA.W $0008,X                        ;82E1DB;
    TDC                                  ;82E1DE;
    STA.W $000C,X                        ;82E1DF;
    SEP #$20                             ;82E1E2;
    LDA.B $16                            ;82E1E4;
    STA.W $0016,X                        ;82E1E6;
    LDA.B $11                            ;82E1E9;
    ORA.B $34                            ;82E1EB;
    ORA.B #$0A                           ;82E1ED;
    STA.W $0011,X                        ;82E1EF;
    LDA.B $18                            ;82E1F2;
    STA.W $0018,X                        ;82E1F4;
    LDA.B #$06                           ;82E1F7;
    STA.W $0012,X                        ;82E1F9;

CODE_82E1FC:
    SEP #$10                             ;82E1FC;
    RTS                                  ;82E1FE;
    LDA.W $0BCF                          ;82E1FF;
    AND.B #$7F                           ;82E202;
    BEQ CODE_82E211                      ;82E204;
    REP #$10                             ;82E206;
    LDY.W #$019C                         ;82E208;
    JSL.L CODE_828011                    ;82E20B;
    SEP #$10                             ;82E20F;

CODE_82E211:
    RTS                                  ;82E211;

CODE_82E212:
    PHB                                  ;82E212;
    REP #$30                             ;82E213;
    LDX.W #$D001                         ;82E215;
    LDY.W #$D000                         ;82E218;
    LDA.W #$006F                         ;82E21B;
    MVN $7F,$7F                          ;82E21E;
    LDX.W #$D0DE                         ;82E221;
    LDY.W #$D0DF                         ;82E224;
    LDA.W #$006E                         ;82E227;
    MVP $7F,$7F                          ;82E22A;
    SEP #$30                             ;82E22D;
    PLB                                  ;82E22F;
    LDA.B $0C                            ;82E230;
    ORA.B #$E0                           ;82E232;
    STA.L $7FD070                        ;82E234;
    RTS                                  ;82E238;

CODE_82E239:
    PHB                                  ;82E239;
    REP #$30                             ;82E23A;
    LDX.W #$D008                         ;82E23C;
    LDY.W #$D000                         ;82E23F;
    LDA.W #$006C                         ;82E242;
    MVN $7F,$7F                          ;82E245;
    LDX.W #$D0D5                         ;82E248;
    LDY.W #$D0DF                         ;82E24B;
    LDA.W #$006C                         ;82E24E;
    MVP $7F,$7F                          ;82E251;
    SEP #$30                             ;82E254;
    PLB                                  ;82E256;
    LDA.B $0C                            ;82E257;
    ORA.B #$E0                           ;82E259;
    STA.L $7FD06C                        ;82E25B;
    STA.L $7FD06D                        ;82E25F;
    STA.L $7FD06E                        ;82E263;
    STA.L $7FD06F                        ;82E267;
    STA.L $7FD070                        ;82E26B;
    STA.L $7FD071                        ;82E26F;
    STA.L $7FD072                        ;82E273;
    STA.L $7FD073                        ;82E277;
    RTS                                  ;82E27B;

CODE_82E27C:
    LDX.W #$00DE                         ;82E27C;
    LDA.W #$0000                         ;82E27F;

CODE_82E282:
    STA.L $7FD000,X                      ;82E282;
    DEX                                  ;82E286;
    DEX                                  ;82E287;
    BPL CODE_82E282                      ;82E288;
    RTS                                  ;82E28A;

CODE_82E28B:
    LDX.B $01                            ;82E28B;
    JSR.W (PTR16_82E2A4,X)               ;82E28D;
    REP #$10                             ;82E290;
    LDX.B $0C                            ;82E292;
    LDA.W $0001,X                        ;82E294;
    CMP.B #$06                           ;82E297;
    BNE CODE_82E2A1                      ;82E299;
    SEP #$10                             ;82E29B;
    JSL.L CODE_828398                    ;82E29D;

CODE_82E2A1:
    SEP #$10                             ;82E2A1;
    RTL                                  ;82E2A3;

PTR16_82E2A4:
    dw CODE_82E2AC                       ;82E2A4;
    dw CODE_82E2BB                       ;82E2A6;
    dw CODE_82E2F0                       ;82E2A8;
    dw CODE_82E327                       ;82E2AA;

CODE_82E2AC:
    LDA.B #$07                           ;82E2AC;
    JSL.L CODE_848F07                    ;82E2AE;
    LDA.B #$02                           ;82E2B2;
    STA.B $01                            ;82E2B4;
    JSL.L CODE_8280B4                    ;82E2B6;
    RTS                                  ;82E2BA;

CODE_82E2BB:
    LDA.B $0F                            ;82E2BB;
    BMI CODE_82E2C6                      ;82E2BD;
    JSL.L CODE_848EEA                    ;82E2BF;
    JMP.W CODE_82E2EB                    ;82E2C3;

CODE_82E2C6:
    LDA.B #$04                           ;82E2C6;
    STA.B $01                            ;82E2C8;
    REP #$20                             ;82E2CA;
    LDA.B $05                            ;82E2CC;
    SEC                                  ;82E2CE;
    SBC.W #$0020                         ;82E2CF;
    STA.W $002C                          ;82E2D2;
    STA.B $1A                            ;82E2D5;
    LDA.B $08                            ;82E2D7;
    STA.W $002E                          ;82E2D9;
    STA.B $1C                            ;82E2DC;
    SEP #$20                             ;82E2DE;
    LDA.B #$00                           ;82E2E0;
    STA.B $0B                            ;82E2E2;
    JSL.L CODE_848011                    ;82E2E4;
    JMP.W CODE_82E2EF                    ;82E2E8;

CODE_82E2EB:
    JSL.L CODE_8280B4                    ;82E2EB;

CODE_82E2EF:
    RTS                                  ;82E2EF;

CODE_82E2F0:
    REP #$10                             ;82E2F0;
    LDX.B $0C                            ;82E2F2;
    LDA.W $0002,X                        ;82E2F4;
    CMP.B #$0C                           ;82E2F7;
    BEQ CODE_82E2FE                      ;82E2F9;
    JMP.W CODE_82E324                    ;82E2FB;

CODE_82E2FE:
    SEP #$10                             ;82E2FE;
    LDA.B #$08                           ;82E300;
    JSL.L CODE_848F07                    ;82E302;
    LDA.B #$06                           ;82E306;
    STA.B $01                            ;82E308;
    REP #$20                             ;82E30A;
    LDA.B $1A                            ;82E30C;
    STA.W $002C                          ;82E30E;
    LDA.B $1C                            ;82E311;
    STA.W $002E                          ;82E313;
    SEP #$20                             ;82E316;
    LDA.B #$01                           ;82E318;
    STA.B $0B                            ;82E31A;
    JSL.L CODE_848011                    ;82E31C;
    JSL.L CODE_8280B4                    ;82E320;

CODE_82E324:
    SEP #$10                             ;82E324;
    RTS                                  ;82E326;

CODE_82E327:
    LDA.B $0F                            ;82E327;
    BMI CODE_82E336                      ;82E329;
    JSL.L CODE_848EEA                    ;82E32B;
    JSL.L CODE_8280B4                    ;82E32F;
    JMP.W CODE_82E33A                    ;82E333;

CODE_82E336:
    JSL.L CODE_828398                    ;82E336;

CODE_82E33A:
    RTS                                  ;82E33A;

CODE_82E33B:
    LDX.B $01                            ;82E33B;
    JSR.W (PTR16_82E341,X)               ;82E33D;
    RTL                                  ;82E340;

PTR16_82E341:
    dw CODE_82E347                       ;82E341;
    dw CODE_82E384                       ;82E343;
    dw CODE_82E5CA                       ;82E345;

CODE_82E347:
    LDA.B #$02                           ;82E347;
    STA.B $01                            ;82E349;
    STZ.B $12                            ;82E34B;
    STZ.B $18                            ;82E34D;
    STZ.B $28                            ;82E34F;
    LDA.B #$FF                           ;82E351;
    STA.B $26                            ;82E353;
    LDA.W $0BB9                          ;82E355;
    AND.B #$30                           ;82E358;
    ORA.B #$04                           ;82E35A;
    STA.B $11                            ;82E35C;
    STA.B $2F                            ;82E35E;
    REP #$10                             ;82E360;
    LDX.W #$D8A5                         ;82E362;
    LDA.B $0B                            ;82E365;
    AND.B #$7F                           ;82E367;
    BEQ CODE_82E36E                      ;82E369;
    LDX.W #$D89B                         ;82E36B;

CODE_82E36E:
    STX.B $20                            ;82E36E;
    SEP #$10                             ;82E370;
    JSL.L CODE_8280B4                    ;82E372;
    LDA.B #$12                           ;82E376;
    STA.B $16                            ;82E378;
    LDA.B $0B                            ;82E37A;
    AND.B #$7F                           ;82E37C;
    INC A                                ;82E37E;
    JSL.L CODE_848F07                    ;82E37F;
    RTS                                  ;82E383;

CODE_82E384:
    JSL.L CODE_82806E                    ;82E384;
    BCC CODE_82E398                      ;82E388;
    LDA.B $0B                            ;82E38A;
    BPL CODE_82E393                      ;82E38C;
    JSL.L CODE_828387                    ;82E38E;
    RTS                                  ;82E392;

CODE_82E393:
    LDA.B #$04                           ;82E393;
    STA.B $01                            ;82E395;
    RTS                                  ;82E397;

CODE_82E398:
    LDX.B $02                            ;82E398;
    JMP.W (PTR16_82E39D,X)               ;82E39A;

PTR16_82E39D:
    dw CODE_82E3A5                       ;82E39D;
    dw CODE_82E400                       ;82E39F;
    dw CODE_82E467                       ;82E3A1;
    dw CODE_82E4CE                       ;82E3A3;

CODE_82E3A5:
    LDX.B $03                            ;82E3A5;
    BNE CODE_82E3C3                      ;82E3A7;
    INC.B $03                            ;82E3A9;
    REP #$20                             ;82E3AB;
    STZ.B $1A                            ;82E3AD;
    LDA.W #$02F5                         ;82E3AF;
    STA.B $1C                            ;82E3B2;
    LDY.B $0B                            ;82E3B4;
    BPL CODE_82E3BA                      ;82E3B6;
    STZ.B $1C                            ;82E3B8;

CODE_82E3BA:
    SEP #$20                             ;82E3BA;
    LDA.B #$37                           ;82E3BC;
    STA.B $1E                            ;82E3BE;
    STZ.B $1F                            ;82E3C0;
    RTS                                  ;82E3C2;

CODE_82E3C3:
    LDA.B $2B                            ;82E3C3;
    BIT.B #$08                           ;82E3C5;
    BNE CODE_82E3D5                      ;82E3C7;
    JSL.L CODE_828174                    ;82E3C9;
    JSL.L CODE_8280B4                    ;82E3CD;
    LDA.B $1D                            ;82E3D1;
    BPL CODE_82E3DE                      ;82E3D3;

CODE_82E3D5:
    LDA.B #$02                           ;82E3D5;
    STA.B $02                            ;82E3D7;
    STZ.B $1C                            ;82E3D9;
    STZ.B $1D                            ;82E3DB;
    RTS                                  ;82E3DD;

CODE_82E3DE:
    JSL.L CODE_81E0F9                    ;82E3DE;
    LDA.W $0BCF                          ;82E3E2;
    AND.B #$7F                           ;82E3E5;
    BEQ CODE_82E3FF                      ;82E3E7;
    REP #$10                             ;82E3E9;
    LDX.W #$0BA8                         ;82E3EB;
    JSL.L CODE_849C0E                    ;82E3EE;
    SEP #$10                             ;82E3F2;
    BCC CODE_82E3FF                      ;82E3F4;
    LDA.B #$06                           ;82E3F6;
    STA.B $02                            ;82E3F8;
    STZ.B $03                            ;82E3FA;
    JMP.W CODE_82E4CE                    ;82E3FC;

CODE_82E3FF:
    RTS                                  ;82E3FF;

CODE_82E400:
    LDA.B $2B                            ;82E400;
    BIT.B #$04                           ;82E402;
    BEQ CODE_82E421                      ;82E404;
    STZ.B $2F                            ;82E406;
    LDA.B #$04                           ;82E408;
    STA.B $02                            ;82E40A;
    STZ.B $03                            ;82E40C;
    LDA.B $26                            ;82E40E;
    BPL CODE_82E41F                      ;82E410;
    LDA.B #$F0                           ;82E412;
    STA.B $26                            ;82E414;
    LDA.W $1F9D                          ;82E416;
    BPL CODE_82E41F                      ;82E419;
    LDA.B #$06                           ;82E41B;
    STA.B $26                            ;82E41D;

CODE_82E41F:
    STZ.B $27                            ;82E41F;

CODE_82E421:
    JSL.L CODE_828174                    ;82E421;
    REP #$20                             ;82E425;
    LDA.B $1C                            ;82E427;
    CMP.W #$FB00                         ;82E429;
    BPL CODE_82E433                      ;82E42C;
    LDA.W #$FB00                         ;82E42E;
    STA.B $1C                            ;82E431;

CODE_82E433:
    SEP #$20                             ;82E433;
    LDA.B $26                            ;82E435;
    CMP.B #$3C                           ;82E437;
    BCS CODE_82E441                      ;82E439;
    LDA.W $0B9C                          ;82E43B;
    LSR A                                ;82E43E;
    BCC CODE_82E445                      ;82E43F;

CODE_82E441:
    JSL.L CODE_8280B4                    ;82E441;

CODE_82E445:
    JSL.L CODE_81E0F9                    ;82E445;
    LDA.W $0BCF                          ;82E449;
    AND.B #$7F                           ;82E44C;
    BEQ CODE_82E466                      ;82E44E;
    REP #$10                             ;82E450;
    LDX.W #$0BA8                         ;82E452;
    JSL.L CODE_849C0E                    ;82E455;
    SEP #$10                             ;82E459;
    BCC CODE_82E466                      ;82E45B;
    LDA.B #$06                           ;82E45D;
    STA.B $02                            ;82E45F;
    STZ.B $03                            ;82E461;
    JMP.W CODE_82E4CE                    ;82E463;

CODE_82E466:
    RTS                                  ;82E466;

CODE_82E467:
    LDX.B $03                            ;82E467;
    BNE CODE_82E477                      ;82E469;
    INC.B $03                            ;82E46B;
    LDA.B $0B                            ;82E46D;
    AND.B #$7F                           ;82E46F;
    INC A                                ;82E471;
    INC A                                ;82E472;
    JSL.L CODE_848F07                    ;82E473;

CODE_82E477:
    JSL.L CODE_81E0F9                    ;82E477;
    LDA.B $2B                            ;82E47B;
    BIT.B #$04                           ;82E47D;
    BNE CODE_82E48A                      ;82E47F;
    LDA.B #$02                           ;82E481;
    STA.B $02                            ;82E483;
    STZ.B $1C                            ;82E485;
    STZ.B $1D                            ;82E487;
    RTS                                  ;82E489;

CODE_82E48A:
    LDA.B $28                            ;82E48A;
    BNE CODE_82E4A9                      ;82E48C;
    LDA.B $0B                            ;82E48E;
    BMI CODE_82E4A9                      ;82E490;
    LDA.B $26                            ;82E492;
    CMP.B #$3C                           ;82E494;
    BCS CODE_82E49A                      ;82E496;
    DEC.B $27                            ;82E498;

CODE_82E49A:
    DEC.B $26                            ;82E49A;
    BNE CODE_82E4A3                      ;82E49C;
    LDA.B #$04                           ;82E49E;
    STA.B $01                            ;82E4A0;
    RTS                                  ;82E4A2;

CODE_82E4A3:
    LDA.B $27                            ;82E4A3;
    BIT.B #$01                           ;82E4A5;
    BNE CODE_82E4AD                      ;82E4A7;

CODE_82E4A9:
    JSL.L CODE_8280B4                    ;82E4A9;

CODE_82E4AD:
    LDA.W $0BCF                          ;82E4AD;
    AND.B #$7F                           ;82E4B0;
    BEQ CODE_82E4C9                      ;82E4B2;
    REP #$10                             ;82E4B4;
    LDX.W #$0BA8                         ;82E4B6;
    JSL.L CODE_849C0E                    ;82E4B9;
    SEP #$10                             ;82E4BD;
    BCC CODE_82E4C9                      ;82E4BF;
    LDA.B #$06                           ;82E4C1;
    STA.B $02                            ;82E4C3;
    STZ.B $03                            ;82E4C5;
    BRA CODE_82E4CE                      ;82E4C7;

CODE_82E4C9:
    JSL.L CODE_848EEA                    ;82E4C9;
    RTS                                  ;82E4CD;

CODE_82E4CE:
    LDX.B $03                            ;82E4CE;
    JMP.W (PTR16_82E4D3,X)               ;82E4D0;

PTR16_82E4D3:
    dw CODE_82E4DB                       ;82E4D3;
    dw CODE_82E566                       ;82E4D5;
    dw CODE_82E59B                       ;82E4D7;
    dw CODE_82E5BD                       ;82E4D9;

CODE_82E4DB:
    LDA.W $0BCF                          ;82E4DB;
    AND.B #$7F                           ;82E4DE;
    CMP.W $1F9A                          ;82E4E0;
    BNE CODE_82E52F                      ;82E4E3;
    LDA.B $0B                            ;82E4E5;
    AND.B #$7F                           ;82E4E7;
    STA.W $0000                          ;82E4E9;
    LDX.B #$00                           ;82E4EC;

CODE_82E4EE:
    LDA.W $1F83,X                        ;82E4EE;
    BPL CODE_82E51D                      ;82E4F1;
    CMP.B #$8E                           ;82E4F3;
    BCS CODE_82E51D                      ;82E4F5;
    PHA                                  ;82E4F7;
    LDA.B #$0D                           ;82E4F8;
    JSL.L CODE_8088CD                    ;82E4FA;
    PLA                                  ;82E4FE;
    INC A                                ;82E4FF;
    STA.W $1F83,X                        ;82E500;
    CMP.B #$8E                           ;82E503;
    BEQ CODE_82E527                      ;82E505;
    LDY.W $0000                          ;82E507;
    BNE CODE_82E522                      ;82E50A;
    INC A                                ;82E50C;
    STA.W $1F83,X                        ;82E50D;
    CMP.B #$8E                           ;82E510;
    BEQ CODE_82E527                      ;82E512;
    LDA.B #$06                           ;82E514;
    STA.B $03                            ;82E516;
    LDA.B #$04                           ;82E518;
    STA.B $26                            ;82E51A;
    RTS                                  ;82E51C;

CODE_82E51D:
    INX                                  ;82E51D;
    CPX.B #$04                           ;82E51E;
    BNE CODE_82E4EE                      ;82E520;

CODE_82E522:
    LDA.B #$04                           ;82E522;
    STA.B $01                            ;82E524;
    RTS                                  ;82E526;

CODE_82E527:
    LDA.B #$2B                           ;82E527;
    JSL.L CODE_8088CD                    ;82E529;
    BRA CODE_82E522                      ;82E52D;

CODE_82E52F:
    LDA.B #$02                           ;82E52F;
    STA.B $03                            ;82E531;
    LDA.B #$01                           ;82E533;
    STA.W $1F13                          ;82E535;
    STA.W $1F14                          ;82E538;
    STA.W $1F15                          ;82E53B;
    STA.W $1F16                          ;82E53E;
    STA.W $1F17                          ;82E541;
    STA.W $1F18                          ;82E544;
    STA.W $1F19                          ;82E547;
    STA.W $0BB6                          ;82E54A;
    LDA.B #$80                           ;82E54D;
    TSB.B $00                            ;82E54F;
    LDA.B #$04                           ;82E551;
    STA.B $26                            ;82E553;
    LDX.B #$08                           ;82E555;
    LDA.B $0B                            ;82E557;
    AND.B #$7F                           ;82E559;
    BEQ CODE_82E55F                      ;82E55B;
    LDX.B #$02                           ;82E55D;

CODE_82E55F:
    STX.B $27                            ;82E55F;
    JSL.L CODE_849F85                    ;82E561;
    RTS                                  ;82E565;

CODE_82E566:
    LDA.W $0BCF                          ;82E566;
    AND.B #$7F                           ;82E569;
    BEQ CODE_82E596                      ;82E56B;
    DEC.B $26                            ;82E56D;
    BNE CODE_82E59A                      ;82E56F;
    LDA.B #$04                           ;82E571;
    STA.B $26                            ;82E573;
    LDA.W $0BCF                          ;82E575;
    AND.B #$7F                           ;82E578;
    INC A                                ;82E57A;
    CMP.W $1F9A                          ;82E57B;
    BCC CODE_82E587                      ;82E57E;
    LDA.B #$04                           ;82E580;
    STA.B $03                            ;82E582;
    LDA.W $1F9A                          ;82E584;

CODE_82E587:
    ORA.B #$80                           ;82E587;
    STA.W $0BCF                          ;82E589;
    LDA.B #$0C                           ;82E58C;
    JSL.L CODE_8088CD                    ;82E58E;
    DEC.B $27                            ;82E592;
    BNE CODE_82E59A                      ;82E594;

CODE_82E596:
    LDA.B #$04                           ;82E596;
    STA.B $03                            ;82E598;

CODE_82E59A:
    RTS                                  ;82E59A;

CODE_82E59B:
    STZ.W $1F13                          ;82E59B;
    STZ.W $1F14                          ;82E59E;
    STZ.W $1F15                          ;82E5A1;
    STZ.W $1F16                          ;82E5A4;
    STZ.W $1F17                          ;82E5A7;
    STZ.W $1F18                          ;82E5AA;
    STZ.W $1F19                          ;82E5AD;
    LDA.B #$04                           ;82E5B0;
    STA.B $01                            ;82E5B2;
    LDA.B #$80                           ;82E5B4;
    TRB.B $00                            ;82E5B6;
    JSL.L CODE_849FAD                    ;82E5B8;
    RTS                                  ;82E5BC;

CODE_82E5BD:
    DEC.B $26                            ;82E5BD;
    BNE CODE_82E5C9                      ;82E5BF;
    LDA.B #$0D                           ;82E5C1;
    JSL.L CODE_8088CD                    ;82E5C3;
    BRA CODE_82E5CA                      ;82E5C7;

CODE_82E5C9:
    RTS                                  ;82E5C9;

CODE_82E5CA:
    JSL.L CODE_828398                    ;82E5CA;
    RTS                                  ;82E5CE;

CODE_82E5CF:
    LDX.B $01                            ;82E5CF;
    JMP.W (PTR16_82E5D4,X)               ;82E5D1;

PTR16_82E5D4:
    dw CODE_82E5DA                       ;82E5D4;
    dw CODE_82E623                       ;82E5D6;
    dw CODE_82E664                       ;82E5D8;

CODE_82E5DA:
    LDA.B #$02                           ;82E5DA;
    STA.B $01                            ;82E5DC;
    STZ.B $18                            ;82E5DE;
    LDA.L $7F8323                        ;82E5E0;
    AND.B #$FE                           ;82E5E4;
    STA.B $11                            ;82E5E6;
    LDA.B #$27                           ;82E5E8;
    STA.B $16                            ;82E5EA;
    LDA.B #$04                           ;82E5EC;
    STA.B $12                            ;82E5EE;
    LDA.B #$01                           ;82E5F0;
    STA.B $27                            ;82E5F2;
    LDA.B #$7F                           ;82E5F4;
    STA.B $26                            ;82E5F6;
    STZ.B $2C                            ;82E5F8;
    REP #$20                             ;82E5FA;
    LDX.B $0B                            ;82E5FC;
    LDA.W DATA8_86DA31,X                 ;82E5FE;
    STA.B $05                            ;82E601;
    LDA.W DATA8_86DA35,X                 ;82E603;
    STA.B $08                            ;82E606;
    STZ.B $1A                            ;82E608;
    STZ.B $1C                            ;82E60A;
    LDA.W #$DA27                         ;82E60C;
    STA.B $20                            ;82E60F;
    SEP #$20                             ;82E611;
    LDA.B #$38                           ;82E613;
    STA.B $1E                            ;82E615;
    STZ.B $1A                            ;82E617;
    LDA.B #$18                           ;82E619;
    STA.B $28                            ;82E61B;
    LDA.B #$00                           ;82E61D;
    JML.L CODE_848F07                    ;82E61F;

CODE_82E623:
    DEC.B $28                            ;82E623;
    BEQ CODE_82E663                      ;82E625;
    LDA.B #$04                           ;82E627;
    STA.B $01                            ;82E629;
    REP #$20                             ;82E62B;
    LDA.B $05                            ;82E62D;
    SEC                                  ;82E62F;
    SBC.W #$0080                         ;82E630;
    STA.W $002C                          ;82E633;
    LDA.B $08                            ;82E636;
    SEC                                  ;82E638;
    SBC.W #$0028                         ;82E639;
    STA.W $002E                          ;82E63C;
    SEP #$20                             ;82E63F;
    LDA.B #$00                           ;82E641;
    JSL.L CODE_848011                    ;82E643;
    LDA.W $0BD3                          ;82E647;
    AND.B #$04                           ;82E64A;
    BEQ CODE_82E65F                      ;82E64C;
    REP #$20                             ;82E64E;
    INC.W $0BB0                          ;82E650;
    INC.W $0BB0                          ;82E653;
    SEP #$20                             ;82E656;
    LDA.B #$04                           ;82E658;
    TSB.W $0BD4                          ;82E65A;
    INC.B $2C                            ;82E65D;

CODE_82E65F:
    JML.L CODE_82808F                    ;82E65F;

CODE_82E663:
    RTL                                  ;82E663;

CODE_82E664:
    JSL.L CODE_8281E8                    ;82E664;
    REP #$20                             ;82E668;
    LDA.B $1C                            ;82E66A;
    CMP.W #$FB00                         ;82E66C;
    BPL CODE_82E678                      ;82E66F;
    LDA.W #$FB00                         ;82E671;
    STA.B $1C                            ;82E674;
    STZ.B $1E                            ;82E676;

CODE_82E678:
    SEP #$20                             ;82E678;
    JSL.L CODE_84AB77                    ;82E67A;
    JSL.L CODE_8491BE                    ;82E67E;
    LDA.B $2B                            ;82E682;
    BEQ CODE_82E6C9                      ;82E684;
    LDA.B #$30                           ;82E686;
    LDX.B #$03                           ;82E688;
    LDY.B #$01                           ;82E68A;
    JSL.L CODE_84A33C                    ;82E68C;
    REP #$20                             ;82E690;
    LDA.B $05                            ;82E692;
    SEC                                  ;82E694;
    SBC.W #$0070                         ;82E695;
    STA.W $002C                          ;82E698;
    LDA.B $08                            ;82E69B;
    SEC                                  ;82E69D;
    SBC.W #$0018                         ;82E69E;
    STA.W $002E                          ;82E6A1;
    SEP #$20                             ;82E6A4;
    LDA.B #$01                           ;82E6A6;
    STA.W $0001                          ;82E6A8;
    STZ.W $0000                          ;82E6AB;
    JSL.L CODE_83FE75                    ;82E6AE;
    LDA.B #$25                           ;82E6B2;
    JSL.L CODE_8088CD                    ;82E6B4;
    LDY.B #$00                           ;82E6B8;
    JSR.W CODE_82E6CD                    ;82E6BA;
    LDY.B #$40                           ;82E6BD;
    JSR.W CODE_82E6CD                    ;82E6BF;
    JSR.W CODE_82E6F3                    ;82E6C2;
    JML.L CODE_828398                    ;82E6C5;

CODE_82E6C9:
    JML.L CODE_82808F                    ;82E6C9;

CODE_82E6CD:
    JSL.L CODE_8282D3                    ;82E6CD;
    BNE CODE_82E6F0                      ;82E6D1;
    INC.W $0000,X                        ;82E6D3;
    LDA.B #$22                           ;82E6D6;
    STA.W $000A,X                        ;82E6D8;
    LDA.B #$03                           ;82E6DB;
    STA.W $000B,X                        ;82E6DD;
    TYA                                  ;82E6E0;
    STA.W $0011,X                        ;82E6E1;
    REP #$20                             ;82E6E4;
    LDA.B $05                            ;82E6E6;
    STA.W $0005,X                        ;82E6E8;
    LDA.B $08                            ;82E6EB;
    STA.W $0008,X                        ;82E6ED;

CODE_82E6F0:
    SEP #$30                             ;82E6F0;
    RTS                                  ;82E6F2;

CODE_82E6F3:
    LDY.B #$08                           ;82E6F3;

CODE_82E6F5:
    SEP #$20                             ;82E6F5;
    JSL.L CODE_8282D3                    ;82E6F7;
    BNE CODE_82E71D                      ;82E6FB;
    INC.W $0000,X                        ;82E6FD;
    LDA.B #$24                           ;82E700;
    STA.W $000A,X                        ;82E702;
    TYA                                  ;82E705;
    STA.W $000B,X                        ;82E706;
    LDA.B $11                            ;82E709;
    STA.W $0011,X                        ;82E70B;
    REP #$20                             ;82E70E;
    LDA.B $05                            ;82E710;
    STA.W $0005,X                        ;82E712;
    LDA.B $08                            ;82E715;
    STA.W $0008,X                        ;82E717;
    DEY                                  ;82E71A;
    BPL CODE_82E6F5                      ;82E71B;

CODE_82E71D:
    SEP #$30                             ;82E71D;
    RTS                                  ;82E71F;

CODE_82E720:
    LDX.B $01                            ;82E720;
    JMP.W (PTR16_82E725,X)               ;82E722;

PTR16_82E725:
    dw CODE_82E737                       ;82E725;
    dw CODE_82E770                       ;82E727;
    dw CODE_82E793                       ;82E729;
    dw CODE_82E7BB                       ;82E72B;
    dw CODE_82E793                       ;82E72D;
    dw CODE_82E864                       ;82E72F;
    dw CODE_82E793                       ;82E731;
    dw CODE_82E8E4                       ;82E733;
    dw CODE_82E793                       ;82E735;

CODE_82E737:
    LDX.B $0B                            ;82E737;
    LDA.W DATA8_86DA44,X                 ;82E739;
    STA.B $01                            ;82E73C;
    STZ.B $2F                            ;82E73E;
    LDA.L $7F8235                        ;82E740;
    STA.B $18                            ;82E744;
    LDA.L $7F8335                        ;82E746;
    STA.B $11                            ;82E74A;
    LDA.B #$37                           ;82E74C;
    STA.B $16                            ;82E74E;
    STZ.B $2C                            ;82E750;
    LDA.B #$04                           ;82E752;
    STA.B $12                            ;82E754;
    LDA.B #$00                           ;82E756;
    JSL.L CODE_848F07                    ;82E758;
    REP #$20                             ;82E75C;
    STZ.B $1A                            ;82E75E;
    STZ.B $1C                            ;82E760;
    LDA.W #$DA55                         ;82E762;
    STA.B $20                            ;82E765;
    SEP #$20                             ;82E767;
    LDA.B #$30                           ;82E769;
    STA.B $1E                            ;82E76B;
    STZ.B $1A                            ;82E76D;
    RTL                                  ;82E76F;

CODE_82E770:
    LDA.B $2F                            ;82E770;
    BEQ CODE_82E777                      ;82E772;
    JMP.W CODE_82E964                    ;82E774;

CODE_82E777:
    JSR.W CODE_82E9E6                    ;82E777;
    LDA.B $2F                            ;82E77A;
    BEQ CODE_82E788                      ;82E77C;
    LDY.B $0B                            ;82E77E;
    JSR.W CODE_82EA27                    ;82E780;
    LDY.B $0B                            ;82E783;
    JSR.W CODE_82EA55                    ;82E785;

CODE_82E788:
    JSL.L CODE_82806E                    ;82E788;
    BCS CODE_82E78F                      ;82E78C;
    RTL                                  ;82E78E;

CODE_82E78F:
    JML.L CODE_828387                    ;82E78F;

CODE_82E793:
    JSL.L CODE_8281E8                    ;82E793;
    REP #$20                             ;82E797;
    LDA.W #$DA55                         ;82E799;
    STA.B $20                            ;82E79C;
    JSL.L CODE_84AB77                    ;82E79E;
    LDA.W #$DA5A                         ;82E7A2;
    STA.B $20                            ;82E7A5;
    JSL.L CODE_84AB4C                    ;82E7A7;
    SEP #$20                             ;82E7AB;
    JSL.L CODE_82806E                    ;82E7AD;
    BCS CODE_82E7B7                      ;82E7B1;
    JML.L CODE_8280B4                    ;82E7B3;

CODE_82E7B7:
    JML.L CODE_828398                    ;82E7B7;

CODE_82E7BB:
    LDA.B $2F                            ;82E7BB;
    BNE CODE_82E802                      ;82E7BD;
    STZ.B $2A                            ;82E7BF;
    LDA.B #$20                           ;82E7C1;
    STA.B $29                            ;82E7C3;
    JSL.L CODE_8490A0                    ;82E7C5;
    CMP.B #$34                           ;82E7C9;
    BCS CODE_82E7DB                      ;82E7CB;
    STZ.B $2A                            ;82E7CD;
    LDA.B #$E0                           ;82E7CF;
    STA.B $29                            ;82E7D1;
    JSL.L CODE_8490A0                    ;82E7D3;
    CMP.B #$34                           ;82E7D7;
    BCC CODE_82E7DE                      ;82E7D9;

CODE_82E7DB:
    JMP.W CODE_82E9A4                    ;82E7DB;

CODE_82E7DE:
    JSL.L CODE_8280B4                    ;82E7DE;
    INC.B $01                            ;82E7E2;
    INC.B $01                            ;82E7E4;
    JSL.L CODE_849C0E                    ;82E7E6;
    BCC CODE_82E7F6                      ;82E7EA;
    LDA.W $0BD3                          ;82E7EC;
    AND.B #$04                           ;82E7EF;
    STA.B $2C                            ;82E7F1;
    TSB.W $0BD4                          ;82E7F3;

CODE_82E7F6:
    RTL                                  ;82E7F6;

CODE_82E7F7:
    JSL.L CODE_82806E                    ;82E7F7;
    BCC CODE_82E801                      ;82E7FB;
    JML.L CODE_828387                    ;82E7FD;

CODE_82E801:
    RTL                                  ;82E801;

CODE_82E802:
    STZ.B $29                            ;82E802;
    STZ.B $2A                            ;82E804;
    JSL.L CODE_8490A0                    ;82E806;
    CMP.B #$34                           ;82E80A;
    BCC CODE_82E7DE                      ;82E80C;
    DEC.B $2F                            ;82E80E;
    BNE CODE_82E7F7                      ;82E810;
    STZ.B $1F                            ;82E812;
    STZ.B $2A                            ;82E814;
    LDA.B #$20                           ;82E816;
    STA.B $29                            ;82E818;
    JSL.L CODE_8490A0                    ;82E81A;
    CMP.B #$34                           ;82E81E;
    BCC CODE_82E82B                      ;82E820;
    LDY.B #$02                           ;82E822;
    JSR.W CODE_82EA55                    ;82E824;
    LDA.B #$01                           ;82E827;
    TSB.B $1F                            ;82E829;

CODE_82E82B:
    STZ.B $2A                            ;82E82B;
    LDA.B #$E0                           ;82E82D;
    STA.B $29                            ;82E82F;
    JSL.L CODE_8490A0                    ;82E831;
    CMP.B #$34                           ;82E835;
    BCC CODE_82E842                      ;82E837;
    LDY.B #$00                           ;82E839;
    JSR.W CODE_82EA55                    ;82E83B;
    LDA.B #$04                           ;82E83E;
    TSB.B $1F                            ;82E840;

CODE_82E842:
    REP #$20                             ;82E842;
    LDA.B $05                            ;82E844;
    SEC                                  ;82E846;
    SBC.W #$0040                         ;82E847;
    STA.W $002C                          ;82E84A;
    LDA.B $08                            ;82E84D;
    SEC                                  ;82E84F;
    SBC.W #$0022                         ;82E850;
    STA.W $002E                          ;82E853;
    SEP #$20                             ;82E856;
    LDY.B $1F                            ;82E858;
    LDA.W DATA8_86DA3C,Y                 ;82E85A;
    JSL.L CODE_848011                    ;82E85D;
    JMP.W CODE_82E7DE                    ;82E861;

CODE_82E864:
    LDA.B $2F                            ;82E864;
    BNE CODE_82E88F                      ;82E866;
    JMP.W CODE_82E9A4                    ;82E868;

CODE_82E86B:
    JSL.L CODE_8280B4                    ;82E86B;
    INC.B $01                            ;82E86F;
    INC.B $01                            ;82E871;
    JSL.L CODE_849C0E                    ;82E873;
    BCC CODE_82E883                      ;82E877;
    LDA.W $0BD3                          ;82E879;
    AND.B #$04                           ;82E87C;
    STA.B $2C                            ;82E87E;
    TSB.W $0BD4                          ;82E880;

CODE_82E883:
    RTL                                  ;82E883;

CODE_82E884:
    JSL.L CODE_82806E                    ;82E884;
    BCC CODE_82E88E                      ;82E888;
    JML.L CODE_828387                    ;82E88A;

CODE_82E88E:
    RTL                                  ;82E88E;

CODE_82E88F:
    DEC.B $2F                            ;82E88F;
    BNE CODE_82E884                      ;82E891;
    LDY.B #$02                           ;82E893;
    JSR.W CODE_82EA55                    ;82E895;
    STZ.B $1F                            ;82E898;
    STZ.B $2A                            ;82E89A;
    LDA.B #$E0                           ;82E89C;
    STA.B $29                            ;82E89E;
    JSL.L CODE_8490A0                    ;82E8A0;
    CMP.B #$34                           ;82E8A4;
    BCC CODE_82E8B1                      ;82E8A6;
    LDY.B #$00                           ;82E8A8;
    JSR.W CODE_82EA55                    ;82E8AA;
    LDA.B #$02                           ;82E8AD;
    TSB.B $1F                            ;82E8AF;

CODE_82E8B1:
    STZ.B $2A                            ;82E8B1;
    LDA.B #$C0                           ;82E8B3;
    STA.B $29                            ;82E8B5;
    JSL.L CODE_8490A0                    ;82E8B7;
    CMP.B #$34                           ;82E8BB;
    BCC CODE_82E8C3                      ;82E8BD;
    LDA.B #$04                           ;82E8BF;
    TSB.B $1F                            ;82E8C1;

CODE_82E8C3:
    REP #$20                             ;82E8C3;
    LDA.B $05                            ;82E8C5;
    SEC                                  ;82E8C7;
    SBC.W #$0060                         ;82E8C8;
    STA.W $002C                          ;82E8CB;
    LDA.B $08                            ;82E8CE;
    SEC                                  ;82E8D0;
    SBC.W #$0022                         ;82E8D1;
    STA.W $002E                          ;82E8D4;
    SEP #$20                             ;82E8D7;
    LDY.B $1F                            ;82E8D9;
    LDA.W DATA8_86DA3C,Y                 ;82E8DB;
    JSL.L CODE_848011                    ;82E8DE;
    BRA CODE_82E86B                      ;82E8E2;

CODE_82E8E4:
    LDA.B $2F                            ;82E8E4;
    BNE CODE_82E90F                      ;82E8E6;
    JMP.W CODE_82E9A4                    ;82E8E8;

CODE_82E8EB:
    JSL.L CODE_8280B4                    ;82E8EB;
    INC.B $01                            ;82E8EF;
    INC.B $01                            ;82E8F1;
    JSL.L CODE_849C0E                    ;82E8F3;
    BCC CODE_82E903                      ;82E8F7;
    LDA.W $0BD3                          ;82E8F9;
    AND.B #$04                           ;82E8FC;
    STA.B $2C                            ;82E8FE;
    TSB.W $0BD4                          ;82E900;

CODE_82E903:
    RTL                                  ;82E903;

CODE_82E904:
    JSL.L CODE_82806E                    ;82E904;
    BCC CODE_82E90E                      ;82E908;
    JML.L CODE_828387                    ;82E90A;

CODE_82E90E:
    RTL                                  ;82E90E;

CODE_82E90F:
    DEC.B $2F                            ;82E90F;
    BNE CODE_82E904                      ;82E911;
    LDY.B #$00                           ;82E913;
    JSR.W CODE_82EA55                    ;82E915;
    STZ.B $1F                            ;82E918;
    STZ.B $2A                            ;82E91A;
    LDA.B #$20                           ;82E91C;
    STA.B $29                            ;82E91E;
    JSL.L CODE_8490A0                    ;82E920;
    CMP.B #$34                           ;82E924;
    BCC CODE_82E931                      ;82E926;
    LDY.B #$02                           ;82E928;
    JSR.W CODE_82EA55                    ;82E92A;
    LDA.B #$02                           ;82E92D;
    TSB.B $1F                            ;82E92F;

CODE_82E931:
    STZ.B $2A                            ;82E931;
    LDA.B #$40                           ;82E933;
    STA.B $29                            ;82E935;
    JSL.L CODE_8490A0                    ;82E937;
    CMP.B #$34                           ;82E93B;
    BCC CODE_82E943                      ;82E93D;
    LDA.B #$01                           ;82E93F;
    TSB.B $1F                            ;82E941;

CODE_82E943:
    REP #$20                             ;82E943;
    LDA.B $05                            ;82E945;
    SEC                                  ;82E947;
    SBC.W #$0020                         ;82E948;
    STA.W $002C                          ;82E94B;
    LDA.B $08                            ;82E94E;
    SEC                                  ;82E950;
    SBC.W #$0022                         ;82E951;
    STA.W $002E                          ;82E954;
    SEP #$20                             ;82E957;
    LDY.B $1F                            ;82E959;
    LDA.W DATA8_86DA3C,Y                 ;82E95B;
    JSL.L CODE_848011                    ;82E95E;
    BRA CODE_82E8EB                      ;82E962;

CODE_82E964:
    DEC.B $2F                            ;82E964;
    BNE CODE_82E9A3                      ;82E966;
    REP #$20                             ;82E968;
    LDA.B $05                            ;82E96A;
    SEC                                  ;82E96C;
    SBC.W #$0020                         ;82E96D;
    STA.W $002C                          ;82E970;
    LDA.B $08                            ;82E973;
    SEC                                  ;82E975;
    SBC.W #$0020                         ;82E976;
    STA.W $002E                          ;82E979;
    LDX.B $0B                            ;82E97C;
    LDA.W DATA8_86DA39,X                 ;82E97E;
    JSL.L CODE_848011                    ;82E981;
    JSL.L CODE_8280B4                    ;82E985;
    INC.B $01                            ;82E989;
    INC.B $01                            ;82E98B;
    LDY.B $0B                            ;82E98D;
    JSR.W CODE_82EA55                    ;82E98F;
    JSL.L CODE_849C0E                    ;82E992;
    BCC CODE_82E9A3                      ;82E996;
    LDA.W $0BD3                          ;82E998;
    AND.W #$0004                         ;82E99B;
    STA.B $2C                            ;82E99E;
    TSB.W $0BD4                          ;82E9A0;

CODE_82E9A3:
    RTL                                  ;82E9A3;

CODE_82E9A4:
    JSR.W CODE_82E9E6                    ;82E9A4;
    LDA.B $2F                            ;82E9A7;
    BEQ CODE_82E9DC                      ;82E9A9;
    STZ.B $2A                            ;82E9AB;
    LDA.B #$20                           ;82E9AD;
    STA.B $29                            ;82E9AF;
    JSL.L CODE_8490A0                    ;82E9B1;
    CMP.B #$34                           ;82E9B5;
    BCC CODE_82E9C3                      ;82E9B7;
    LDY.B #$02                           ;82E9B9;
    JSR.W CODE_82EA27                    ;82E9BB;
    LDY.B #$02                           ;82E9BE;
    JSR.W CODE_82EA55                    ;82E9C0;

CODE_82E9C3:
    STZ.B $2A                            ;82E9C3;
    LDA.B #$E0                           ;82E9C5;
    STA.B $29                            ;82E9C7;
    JSL.L CODE_8490A0                    ;82E9C9;
    CMP.B #$34                           ;82E9CD;
    BCC CODE_82E9DB                      ;82E9CF;
    LDY.B #$00                           ;82E9D1;
    JSR.W CODE_82EA27                    ;82E9D3;
    LDY.B #$00                           ;82E9D6;
    JSR.W CODE_82EA55                    ;82E9D8;

CODE_82E9DB:
    RTL                                  ;82E9DB;

CODE_82E9DC:
    JSL.L CODE_82806E                    ;82E9DC;
    BCC CODE_82E9DB                      ;82E9E0;
    JML.L CODE_828387                    ;82E9E2;

CODE_82E9E6:
    REP #$10                             ;82E9E6;
    LDX.W #$0BA8                         ;82E9E8;
    JSL.L CODE_849C0E                    ;82E9EB;
    BCC CODE_82EA24                      ;82E9EF;
    LDA.W $0BD3                          ;82E9F1;
    AND.B #$04                           ;82E9F4;
    BEQ CODE_82EA24                      ;82E9F6;
    REP #$20                             ;82E9F8;
    LDA.W $0002                          ;82E9FA;
    BPL CODE_82EA24                      ;82E9FD;
    LDA.W $0BAD                          ;82E9FF;
    SEC                                  ;82EA02;
    SBC.B $05                            ;82EA03;
    BCS CODE_82EA0B                      ;82EA05;
    EOR.W #$FFFF                         ;82EA07;
    INC A                                ;82EA0A;

CODE_82EA0B:
    CMP.W #$0010                         ;82EA0B;
    BCS CODE_82EA24                      ;82EA0E;
    STZ.B $1A                            ;82EA10;
    STZ.B $1C                            ;82EA12;
    SEP #$30                             ;82EA14;
    LDA.B #$30                           ;82EA16;
    STA.B $1F                            ;82EA18;
    LDA.B #$1E                           ;82EA1A;
    STA.B $2F                            ;82EA1C;
    LDA.B #$22                           ;82EA1E;
    JSL.L CODE_8088A2                    ;82EA20;

CODE_82EA24:
    SEP #$30                             ;82EA24;
    RTS                                  ;82EA26;

CODE_82EA27:
    LDA.W DATA8_86DA4A,Y                 ;82EA27;
    STA.W $0000                          ;82EA2A;
    JSL.L CODE_8282D3                    ;82EA2D;
    BNE CODE_82EA52                      ;82EA31;
    INC.W $0000,X                        ;82EA33;
    LDA.B #$22                           ;82EA36;
    STA.W $000A,X                        ;82EA38;
    LDA.B #$02                           ;82EA3B;
    STA.W $000B,X                        ;82EA3D;
    LDA.W $0000                          ;82EA40;
    STA.W $0011,X                        ;82EA43;
    REP #$20                             ;82EA46;
    LDA.B $05                            ;82EA48;
    STA.W $0005,X                        ;82EA4A;
    LDA.B $08                            ;82EA4D;
    STA.W $0008,X                        ;82EA4F;

CODE_82EA52:
    SEP #$30                             ;82EA52;
    RTS                                  ;82EA54;

CODE_82EA55:
    LDA.W DATA8_86DA4A,Y                 ;82EA55;
    ASL A                                ;82EA58;
    ASL A                                ;82EA59;
    REP #$20                             ;82EA5A;
    LDA.W #$0010                         ;82EA5C;
    BCS CODE_82EA64                      ;82EA5F;
    LDA.W #$FFF0                         ;82EA61;

CODE_82EA64:
    STA.B $29                            ;82EA64;
    LDA.W #$FFF0                         ;82EA66;
    STA.B $2D                            ;82EA69;
    JSL.L CODE_849086                    ;82EA6B;
    AND.W #$0007                         ;82EA6F;
    ASL A                                ;82EA72;
    ASL A                                ;82EA73;
    ASL A                                ;82EA74;
    ADC.W #$DA5F                         ;82EA75;
    STA.B $26                            ;82EA78;
    LDY.B #$07                           ;82EA7A;

CODE_82EA7C:
    SEP #$20                             ;82EA7C;
    JSL.L CODE_8282D3                    ;82EA7E;
    BNE CODE_82EAB8                      ;82EA82;
    INC.W $0000,X                        ;82EA84;
    LDA.B #$23                           ;82EA87;
    STA.W $000A,X                        ;82EA89;
    LDA.B ($26),Y                        ;82EA8C;
    STA.W $000B,X                        ;82EA8E;
    LDA.B $11                            ;82EA91;
    STA.W $0011,X                        ;82EA93;
    LDA.B $18                            ;82EA96;
    STA.W $0018,X                        ;82EA98;
    REP #$20                             ;82EA9B;
    LDA.B $05                            ;82EA9D;
    CLC                                  ;82EA9F;
    ADC.B $29                            ;82EAA0;
    STA.W $0005,X                        ;82EAA2;
    LDA.B $08                            ;82EAA5;
    CLC                                  ;82EAA7;
    ADC.B $2D                            ;82EAA8;
    STA.W $0008,X                        ;82EAAA;
    LDA.B $2D                            ;82EAAD;
    CLC                                  ;82EAAF;
    ADC.W #$0004                         ;82EAB0;
    STA.B $2D                            ;82EAB3;
    DEY                                  ;82EAB5;
    BPL CODE_82EA7C                      ;82EAB6;

CODE_82EAB8:
    SEP #$30                             ;82EAB8;
    STZ.B $19                            ;82EABA;
    RTS                                  ;82EABC;

CODE_82EABD:
    LDX.B $01                            ;82EABD;
    JMP.W (PTR16_82EAC2,X)               ;82EABF;

PTR16_82EAC2:
    dw CODE_82EAC8                       ;82EAC2;
    dw CODE_82EAF7                       ;82EAC4;
    dw CODE_82EB83                       ;82EAC6;

CODE_82EAC8:
    LDA.B #$02                           ;82EAC8;
    STA.B $01                            ;82EACA;
    LDA.B #$04                           ;82EACC;
    STA.B $12                            ;82EACE;
    LDA.B #$03                           ;82EAD0;
    STA.B $28                            ;82EAD2;
    LDA.B #$06                           ;82EAD4;
    STA.B $27                            ;82EAD6;
    LDA.B #$04                           ;82EAD8;
    STA.B $26                            ;82EADA;
    REP #$20                             ;82EADC;
    LDA.W #$DA9F                         ;82EADE;
    STA.B $20                            ;82EAE1;
    SEP #$20                             ;82EAE3;
    LDA.L $7F8231                        ;82EAE5;
    STA.B $18                            ;82EAE9;
    LDA.B #$33                           ;82EAEB;
    STA.B $16                            ;82EAED;
    LDA.B #$04                           ;82EAEF;
    STA.B $29                            ;82EAF1;
    JSL.L CODE_848F07                    ;82EAF3;

CODE_82EAF7:
    LDA.L $7F8331                        ;82EAF7;
    STA.B $11                            ;82EAFB;
    REP #$10                             ;82EAFD;
    LDX.B $0C                            ;82EAFF;
    LDA.W $0027,X                        ;82EB01;
    AND.B #$7F                           ;82EB04;
    BNE CODE_82EB10                      ;82EB06;
    LDA.B #$04                           ;82EB08;
    STA.B $01                            ;82EB0A;
    SEP #$10                             ;82EB0C;
    BRA CODE_82EB73                      ;82EB0E;

CODE_82EB10:
    LDA.W $0001,X                        ;82EB10;
    CMP.B #$02                           ;82EB13;
    BNE CODE_82EB35                      ;82EB15;
    LDA.W $0002,X                        ;82EB17;
    CMP.B #$02                           ;82EB1A;
    BNE CODE_82EB35                      ;82EB1C;
    LDA.B #$05                           ;82EB1E;
    LDY.W $001A,X                        ;82EB20;
    CPY.W #$FF00                         ;82EB23;
    BCC CODE_82EB29                      ;82EB26;
    INC A                                ;82EB28;

CODE_82EB29:
    CMP.B $29                            ;82EB29;
    BEQ CODE_82EB41                      ;82EB2B;
    STA.B $29                            ;82EB2D;
    JSL.L CODE_848F07                    ;82EB2F;
    BRA CODE_82EB41                      ;82EB33;

CODE_82EB35:
    LDA.B #$04                           ;82EB35;
    CMP.B $29                            ;82EB37;
    BEQ CODE_82EB41                      ;82EB39;
    STA.B $29                            ;82EB3B;
    JSL.L CODE_848F07                    ;82EB3D;

CODE_82EB41:
    LDX.B $0C                            ;82EB41;
    LDA.W $002A,X                        ;82EB43;
    SEP #$10                             ;82EB46;
    BPL CODE_82EB4E                      ;82EB48;
    LDA.B #$0E                           ;82EB4A;
    TRB.B $11                            ;82EB4C;

CODE_82EB4E:
    LDA.B $30                            ;82EB4E;
    STA.B $2A                            ;82EB50;
    STZ.B $30                            ;82EB52;
    LDA.B $2B                            ;82EB54;
    BNE CODE_82EB73                      ;82EB56;
    JSL.L CODE_849B43                    ;82EB58;
    BEQ CODE_82EB73                      ;82EB5C;
    BMI CODE_82EB66                      ;82EB5E;
    LDA.B #$0E                           ;82EB60;
    TRB.B $11                            ;82EB62;
    BRA CODE_82EB73                      ;82EB64;

CODE_82EB66:
    LDA.B #$04                           ;82EB66;
    STA.B $01                            ;82EB68;
    REP #$10                             ;82EB6A;
    LDX.B $0C                            ;82EB6C;
    STZ.W $0029,X                        ;82EB6E;
    SEP #$10                             ;82EB71;

CODE_82EB73:
    LDA.B $2A                            ;82EB73;
    STA.B $30                            ;82EB75;
    JSL.L CODE_849B03                    ;82EB77;
    JSL.L CODE_848EEA                    ;82EB7B;

CODE_82EB7F:
    JML.L CODE_8280B4                    ;82EB7F;

CODE_82EB83:
    LDX.B $02                            ;82EB83;
    BNE CODE_82EBAC                      ;82EB85;
    REP #$10                             ;82EB87;
    INC.B $02                            ;82EB89;
    LDX.W #$FF00                         ;82EB8B;
    STX.B $1A                            ;82EB8E;
    LDX.W #$0100                         ;82EB90;
    STX.B $1C                            ;82EB93;
    STZ.B $1F                            ;82EB95;
    LDA.B #$10                           ;82EB97;
    STA.B $1E                            ;82EB99;
    LDA.L $7F8331                        ;82EB9B;
    STA.B $11                            ;82EB9F;
    JSL.L CODE_82806E                    ;82EBA1;
    BCS CODE_82EBAB                      ;82EBA5;
    JML.L CODE_84A4AB                    ;82EBA7;

CODE_82EBAB:
    RTL                                  ;82EBAB;

CODE_82EBAC:
    JSL.L CODE_82806E                    ;82EBAC;
    BCC CODE_82EBB6                      ;82EBB0;
    JML.L CODE_828398                    ;82EBB2;

CODE_82EBB6:
    JSL.L CODE_828174                    ;82EBB6;
    LDA.W $0B9B                          ;82EBBA;
    LSR A                                ;82EBBD;
    BCC CODE_82EB7F                      ;82EBBE;
    RTL                                  ;82EBC0;

CODE_82EBC1:
    LDX.B $01                            ;82EBC1;
    JMP.W (PTR16_82EBC6,X)               ;82EBC3;

PTR16_82EBC6:
    dw CODE_82EBCC                       ;82EBC6;
    dw CODE_82EBF4                       ;82EBC8;
    dw CODE_82ED1B                       ;82EBCA;

CODE_82EBCC:
    LDA.B #$02                           ;82EBCC;
    STA.B $01                            ;82EBCE;
    REP #$20                             ;82EBD0;
    STZ.B $1A                            ;82EBD2;
    STZ.B $1C                            ;82EBD4;
    SEP #$20                             ;82EBD6;
    LDA.B #$02                           ;82EBD8;
    STA.B $0F                            ;82EBDA;
    STA.B $10                            ;82EBDC;
    JSL.L CODE_828321                    ;82EBDE;
    BNE CODE_82EBF1                      ;82EBE2;
    INC.W $0000,X                        ;82EBE4;
    LDA.B #$28                           ;82EBE7;
    STA.W $000A,X                        ;82EBE9;
    STZ.W $000B,X                        ;82EBEC;
    STX.B $1A                            ;82EBEF;

CODE_82EBF1:
    SEP #$10                             ;82EBF1;
    RTL                                  ;82EBF3;

CODE_82EBF4:
    JSR.W CODE_82ED1F                    ;82EBF4;
    LDX.B $02                            ;82EBF7;
    JSR.W (PTR16_82EBFD,X)               ;82EBF9;
    RTL                                  ;82EBFC;

PTR16_82EBFD:
    dw CODE_82ECF3                       ;82EBFD;
    dw CODE_82ECCD                       ;82EBFF;
    dw CODE_82EC05                       ;82EC01;
    dw CODE_82ECF4                       ;82EC03;

CODE_82EC05:
    LDX.B $03                            ;82EC05;
    JMP.W (PTR16_82EC0A,X)               ;82EC07;

PTR16_82EC0A:
    dw CODE_82EC16                       ;82EC0A;
    dw CODE_82EC34                       ;82EC0C;
    dw CODE_82EC45                       ;82EC0E;
    dw CODE_82EC60                       ;82EC10;
    dw CODE_82EC77                       ;82EC12;
    dw CODE_82EC87                       ;82EC14;

CODE_82EC16:
    LDA.B #$02                           ;82EC16;
    STA.B $03                            ;82EC18;
    JSR.W CODE_82ED5B                    ;82EC1A;
    JSL.L CODE_80E01E                    ;82EC1D;
    REP #$20                             ;82EC21;
    LDA.W #$0A08                         ;82EC23;
    STA.W $1E8D                          ;82EC26;
    LDA.W #$0098                         ;82EC29;
    STA.W $1E90                          ;82EC2C;
    SEP #$20                             ;82EC2F;
    JMP.W CODE_82ED64                    ;82EC31;

CODE_82EC34:
    LDA.B #$04                           ;82EC34;
    STA.B $03                            ;82EC36;
    INC.W $1E88                          ;82EC38;
    STZ.W $1E9A                          ;82EC3B;
    JSL.L CODE_80E02E                    ;82EC3E;
    JMP.W CODE_82ED72                    ;82EC42;

CODE_82EC45:
    LDA.W $1F27                          ;82EC45;
    BNE CODE_82EC5F                      ;82EC48;
    LDA.B #$06                           ;82EC4A;
    STA.B $03                            ;82EC4C;
    REP #$21                             ;82EC4E;
    LDA.W $1E8D                          ;82EC50;
    ADC.W #$0100                         ;82EC53;
    STA.W $1E8D                          ;82EC56;
    SEP #$20                             ;82EC59;
    JSL.L CODE_80E02E                    ;82EC5B;

CODE_82EC5F:
    RTS                                  ;82EC5F;

CODE_82EC60:
    LDA.W $1F27                          ;82EC60;
    BNE CODE_82EC76                      ;82EC63;
    LDA.B #$08                           ;82EC65;
    STA.B $03                            ;82EC67;
    REP #$21                             ;82EC69;
    LDA.W $1E8D                          ;82EC6B;
    ADC.W #$FF00                         ;82EC6E;
    STA.W $1E8D                          ;82EC71;
    SEP #$20                             ;82EC74;

CODE_82EC76:
    RTS                                  ;82EC76;

CODE_82EC77:
    LDA.B #$0A                           ;82EC77;
    STA.B $03                            ;82EC79;
    JSL.L CODE_80E01E                    ;82EC7B;
    LDA.B #$01                           ;82EC7F;
    STA.W $1E88                          ;82EC81;
    JMP.W CODE_82ED64                    ;82EC84;

CODE_82EC87:
    STZ.B $02                            ;82EC87;
    JMP.W CODE_82ED52                    ;82EC89;
    LDX.B $03                            ;82EC8C;
    JMP.W (PTR16_82EC91,X)               ;82EC8E;

PTR16_82EC91:
    dw CODE_82EC97                       ;82EC91;
    dw CODE_82ECA5                       ;82EC93;
    dw CODE_82ECB6                       ;82EC95;

CODE_82EC97:
    LDA.B #$02                           ;82EC97;
    STA.B $03                            ;82EC99;
    JSR.W CODE_82ED5B                    ;82EC9B;
    JSL.L CODE_80E01E                    ;82EC9E;
    JMP.W CODE_82ED72                    ;82ECA2;

CODE_82ECA5:
    LDA.B #$04                           ;82ECA5;
    STA.B $03                            ;82ECA7;
    INC.W $1E88                          ;82ECA9;
    STZ.W $1E9A                          ;82ECAC;
    JSL.L CODE_80E02E                    ;82ECAF;
    JMP.W CODE_82ED88                    ;82ECB3;

CODE_82ECB6:
    LDA.W $1F27                          ;82ECB6;
    BNE CODE_82ECCC                      ;82ECB9;
    STZ.B $02                            ;82ECBB;
    JSR.W CODE_82ED52                    ;82ECBD;
    JSL.L CODE_80E01E                    ;82ECC0;
    LDA.B #$01                           ;82ECC4;
    STA.W $1E88                          ;82ECC6;
    JMP.W CODE_82ED7C                    ;82ECC9;

CODE_82ECCC:
    RTS                                  ;82ECCC;

CODE_82ECCD:
    LDX.B $03                            ;82ECCD;
    BNE CODE_82ECEA                      ;82ECCF;
    INC.B $03                            ;82ECD1;
    LDA.B #$0E                           ;82ECD3;
    STA.W $1E89                          ;82ECD5;
    LDA.B #$12                           ;82ECD8;
    STA.B $12                            ;82ECDA;
    LDA.B #$01                           ;82ECDC;
    STA.W $1E88                          ;82ECDE;
    STZ.W $1E9A                          ;82ECE1;
    JSR.W CODE_82ED5B                    ;82ECE4;
    JMP.W CODE_82ED72                    ;82ECE7;

CODE_82ECEA:
    DEC.B $12                            ;82ECEA;
    BNE CODE_82ECF3                      ;82ECEC;
    JSR.W CODE_82ED47                    ;82ECEE;
    STZ.B $02                            ;82ECF1;

CODE_82ECF3:
    RTS                                  ;82ECF3;

CODE_82ECF4:
    LDX.B $03                            ;82ECF4;
    BNE CODE_82ED11                      ;82ECF6;
    INC.B $03                            ;82ECF8;
    LDA.B #$0E                           ;82ECFA;
    STA.W $1E89                          ;82ECFC;
    LDA.B #$12                           ;82ECFF;
    STA.B $12                            ;82ED01;
    LDA.B #$01                           ;82ED03;
    STA.W $1E88                          ;82ED05;
    STZ.W $1E9A                          ;82ED08;
    JSR.W CODE_82ED5B                    ;82ED0B;
    JMP.W CODE_82ED72                    ;82ED0E;

CODE_82ED11:
    DEC.B $12                            ;82ED11;
    BNE CODE_82ED1A                      ;82ED13;
    JSR.W CODE_82ED47                    ;82ED15;
    STZ.B $02                            ;82ED18;

CODE_82ED1A:
    RTS                                  ;82ED1A;

CODE_82ED1B:
    JML.L CODE_828398                    ;82ED1B;

CODE_82ED1F:
    REP #$20                             ;82ED1F;
    LDX.B $0F                            ;82ED21;
    STX.B $10                            ;82ED23;
    LDX.B #$02                           ;82ED25;
    LDA.W $0BAD                          ;82ED27;
    CMP.W #$1400                         ;82ED2A;
    BCC CODE_82ED38                      ;82ED2D;
    INX                                  ;82ED2F;
    INX                                  ;82ED30;
    CMP.W #$1710                         ;82ED31;
    BCC CODE_82ED38                      ;82ED34;
    INX                                  ;82ED36;
    INX                                  ;82ED37;

CODE_82ED38:
    STX.B $0F                            ;82ED38;
    SEP #$20                             ;82ED3A;
    LDA.B $0F                            ;82ED3C;
    CMP.B $10                            ;82ED3E;
    BEQ CODE_82ED46                      ;82ED40;
    STA.B $02                            ;82ED42;
    STZ.B $03                            ;82ED44;

CODE_82ED46:
    RTS                                  ;82ED46;

CODE_82ED47:
    LDA.B #$17                           ;82ED47;
    STA.W $00C0                          ;82ED49;
    LDA.B #$13                           ;82ED4C;
    STA.W $00C1                          ;82ED4E;
    RTS                                  ;82ED51;

CODE_82ED52:
    LDA.B #$02                           ;82ED52;
    TSB.W $00C0                          ;82ED54;
    TSB.W $00C1                          ;82ED57;
    RTS                                  ;82ED5A;

CODE_82ED5B:
    LDA.B #$02                           ;82ED5B;
    TRB.W $00C0                          ;82ED5D;
    TRB.W $00C1                          ;82ED60;
    RTS                                  ;82ED63;

CODE_82ED64:
    REP #$10                             ;82ED64;
    LDX.B $1A                            ;82ED66;
    BEQ CODE_82ED6F                      ;82ED68;
    LDA.B #$01                           ;82ED6A;
    STA.W $0010,X                        ;82ED6C;

CODE_82ED6F:
    SEP #$10                             ;82ED6F;
    RTS                                  ;82ED71;

CODE_82ED72:
    REP #$10                             ;82ED72;
    LDX.B $1A                            ;82ED74;
    STZ.W $0010,X                        ;82ED76;
    SEP #$10                             ;82ED79;
    RTS                                  ;82ED7B;

CODE_82ED7C:
    REP #$10                             ;82ED7C;
    LDX.B $1C                            ;82ED7E;
    LDA.B #$01                           ;82ED80;
    STA.W $0010,X                        ;82ED82;
    SEP #$10                             ;82ED85;
    RTS                                  ;82ED87;

CODE_82ED88:
    REP #$10                             ;82ED88;
    LDX.B $1C                            ;82ED8A;
    STZ.W $0010,X                        ;82ED8C;
    SEP #$10                             ;82ED8F;
    RTS                                  ;82ED91;
    REP #$10                             ;82ED92;
    LDX.B $1A                            ;82ED94;
    LDA.W $0027,X                        ;82ED96;
    AND.B #$7F                           ;82ED99;
    SEP #$10                             ;82ED9B;
    RTS                                  ;82ED9D;

CODE_82ED9E:
    LDA.B $01                            ;82ED9E;
    BNE CODE_82EDD2                      ;82EDA0;
    INC.B $01                            ;82EDA2;
    LDA.B $0B                            ;82EDA4;
    ASL A                                ;82EDA6;
    ASL A                                ;82EDA7;
    TAY                                  ;82EDA8;
    LDA.W DATA8_86DD21,Y                 ;82EDA9;
    TAX                                  ;82EDAC;
    LDA.L $7F8200,X                      ;82EDAD;
    STA.B $18                            ;82EDB1;
    LDA.B $11                            ;82EDB3;
    AND.B #$70                           ;82EDB5;
    STA.B $11                            ;82EDB7;
    LDA.L $7F8300,X                      ;82EDB9;
    AND.B #$0F                           ;82EDBD;
    TSB.B $11                            ;82EDBF;
    LDA.W DATA8_86DD24,Y                 ;82EDC1;
    STA.B $12                            ;82EDC4;
    LDA.W DATA8_86DD22,Y                 ;82EDC6;
    STA.B $16                            ;82EDC9;
    LDA.W DATA8_86DD23,Y                 ;82EDCB;
    JML.L CODE_848F07                    ;82EDCE;

CODE_82EDD2:
    LDX.B $02                            ;82EDD2;
    JMP.W (PTR16_82EDD7,X)               ;82EDD4;

PTR16_82EDD7:
    dw CODE_82EDDF                       ;82EDD7;
    dw CODE_82EDF9                       ;82EDD9;
    dw CODE_82EE05                       ;82EDDB;
    dw CODE_82EE0D                       ;82EDDD;

CODE_82EDDF:
    LDA.B $0F                            ;82EDDF;
    BPL CODE_82EDE7                      ;82EDE1;
    JML.L CODE_828398                    ;82EDE3;

CODE_82EDE7:
    JSL.L CODE_848EEA                    ;82EDE7;
    LDA.B $0B                            ;82EDEB;
    CMP.B #$1D                           ;82EDED;
    BEQ CODE_82EDF5                      ;82EDEF;
    JML.L CODE_8280B4                    ;82EDF1;

CODE_82EDF5:
    JML.L CODE_82808F                    ;82EDF5;

CODE_82EDF9:
    LDA.B $0F                            ;82EDF9;
    BMI CODE_82EE01                      ;82EDFB;
    JSL.L CODE_848EEA                    ;82EDFD;

CODE_82EE01:
    JML.L CODE_8280B4                    ;82EE01;

CODE_82EE05:
    JSL.L CODE_848EEA                    ;82EE05;
    JML.L CODE_8280B4                    ;82EE09;

CODE_82EE0D:
    LDA.B $0F                            ;82EE0D;
    BMI CODE_82EE15                      ;82EE0F;
    JSL.L CODE_848EEA                    ;82EE11;

CODE_82EE15:
    JML.L CODE_82808F                    ;82EE15;

CODE_82EE19:
    LDX.B $01                            ;82EE19;
    JMP.W (PTR16_82EE1E,X)               ;82EE1B;

PTR16_82EE1E:
    dw CODE_82EE22                       ;82EE1E;
    dw CODE_82EE4A                       ;82EE20;

CODE_82EE22:
    LDA.B #$02                           ;82EE22;
    STA.B $01                            ;82EE24;
    LDA.L $7F8223                        ;82EE26;
    STA.B $18                            ;82EE2A;
    LDA.L $7F8323                        ;82EE2C;
    ORA.B #$30                           ;82EE30;
    STA.B $11                            ;82EE32;
    STZ.B $12                            ;82EE34;
    LDA.B #$27                           ;82EE36;
    STA.B $16                            ;82EE38;
    LDA.B $0B                            ;82EE3A;
    AND.B #$7F                           ;82EE3C;
    JSL.L CODE_848F07                    ;82EE3E;
    LDA.B #$40                           ;82EE42;
    STA.B $1E                            ;82EE44;
    JML.L CODE_82808F                    ;82EE46;

CODE_82EE4A:
    LDA.B $0B                            ;82EE4A;
    BPL CODE_82EE52                      ;82EE4C;
    JSL.L CODE_8281E8                    ;82EE4E;

CODE_82EE52:
    JSL.L CODE_848EEA                    ;82EE52;
    LDA.B $0F                            ;82EE56;
    BPL CODE_82EE5E                      ;82EE58;
    JML.L CODE_828398                    ;82EE5A;

CODE_82EE5E:
    JML.L CODE_82808F                    ;82EE5E;

CODE_82EE62:
    LDX.B $01                            ;82EE62;
    JMP.W (PTR16_82EE67,X)               ;82EE64;

PTR16_82EE67:
    dw CODE_82EE6D                       ;82EE67;
    dw CODE_82EEA2                       ;82EE69;
    dw CODE_82EEB9                       ;82EE6B;

CODE_82EE6D:
    LDA.B #$02                           ;82EE6D;
    STA.B $01                            ;82EE6F;
    LDA.B #$2B                           ;82EE71;
    STA.B $16                            ;82EE73;
    LDA.L $7F8229                        ;82EE75;
    STA.B $18                            ;82EE79;
    LDA.B #$25                           ;82EE7B;
    TSB.B $11                            ;82EE7D;
    LDA.B $0B                            ;82EE7F;
    JSL.L CODE_848F07                    ;82EE81;
    LDA.B $0B                            ;82EE85;
    BNE CODE_82EE91                      ;82EE87;
    LDA.B #$02                           ;82EE89;
    STA.B $01                            ;82EE8B;
    JML.L CODE_8280B4                    ;82EE8D;

CODE_82EE91:
    LDA.B #$04                           ;82EE91;
    STA.B $01                            ;82EE93;
    REP #$20                             ;82EE95;
    LDA.W #$0100                         ;82EE97;
    STA.B $1C                            ;82EE9A;
    SEP #$20                             ;82EE9C;
    JML.L CODE_8280B4                    ;82EE9E;

CODE_82EEA2:
    REP #$10                             ;82EEA2;
    LDX.B $0C                            ;82EEA4;
    LDA.W $0003,X                        ;82EEA6;
    SEP #$10                             ;82EEA9;
    BNE CODE_82EEB1                      ;82EEAB;
    JML.L CODE_828398                    ;82EEAD;

CODE_82EEB1:
    JSL.L CODE_848EEA                    ;82EEB1;
    JML.L CODE_8280B4                    ;82EEB5;

CODE_82EEB9:
    JSL.L CODE_82825D                    ;82EEB9;
    JSR.W CODE_82EED9                    ;82EEBD;
    CMP.B #$0E                           ;82EEC0;
    BEQ CODE_82EEC8                      ;82EEC2;
    CMP.B #$0D                           ;82EEC4;
    BNE CODE_82EED5                      ;82EEC6;

CODE_82EEC8:
    JSL.L CODE_848EEA                    ;82EEC8;
    JSL.L CODE_8280B4                    ;82EECC;
    LDA.B $0E                            ;82EED0;
    BEQ CODE_82EED5                      ;82EED2;
    RTL                                  ;82EED4;

CODE_82EED5:
    JML.L CODE_828398                    ;82EED5;

CODE_82EED9:
    REP #$30                             ;82EED9;
    LDA.B $05                            ;82EEDB;
    STA.W $0000                          ;82EEDD;
    LDA.B $08                            ;82EEE0;
    SEC                                  ;82EEE2;
    SBC.W #$0012                         ;82EEE3;
    STA.W $0002                          ;82EEE6;
    PHD                                  ;82EEE9;
    LDA.W #$0000                         ;82EEEA;
    TCD                                  ;82EEED;
    JSL.L CODE_849156                    ;82EEEE;
    LDA.L $7E2000,X                      ;82EEF2;
    TAY                                  ;82EEF6;
    LDA.W $0B92                          ;82EEF7;
    STA.B $10                            ;82EEFA;
    LDA.W $0B94                          ;82EEFC;
    LDA.W $0B94                          ;82EEFF;
    STA.B $12                            ;82EF02;
    LDA.B [$10],Y                        ;82EF04;
    AND.W #$00FF                         ;82EF06;
    SEP #$30                             ;82EF09;
    PLD                                  ;82EF0B;
    RTS                                  ;82EF0C;

CODE_82EF0D:
    LDA.B $01                            ;82EF0D;
    BNE CODE_82EF35                      ;82EF0F;
    JSL.L CODE_84A23A                    ;82EF11;
    TYA                                  ;82EF15;
    BEQ CODE_82EF1C                      ;82EF16;
    JML.L CODE_828398                    ;82EF18;

CODE_82EF1C:
    INC.B $01                            ;82EF1C;
    LDA.L $7F8229                        ;82EF1E;
    STA.B $18                            ;82EF22;
    STZ.B $12                            ;82EF24;
    LDA.B #$FF                           ;82EF26;
    STA.B $1F                            ;82EF28;
    LDA.B #$2B                           ;82EF2A;
    STA.B $16                            ;82EF2C;
    LDA.B #$03                           ;82EF2E;
    JSL.L CODE_848F07                    ;82EF30;
    RTL                                  ;82EF34;

CODE_82EF35:
    REP #$21                             ;82EF35;
    LDA.W $0BAD                          ;82EF37;
    STA.B $05                            ;82EF3A;
    LDA.W $0BB0                          ;82EF3C;
    ADC.W #$0008                         ;82EF3F;
    AND.W #$FFF0                         ;82EF42;
    STA.B $08                            ;82EF45;
    LDA.B $29                            ;82EF47;
    PHA                                  ;82EF49;
    LDA.W #$0800                         ;82EF4A;
    STA.B $29                            ;82EF4D;
    JSL.L CODE_8490A0                    ;82EF4F;
    TAX                                  ;82EF53;
    PLA                                  ;82EF54;
    STA.B $29                            ;82EF55;
    SEP #$20                             ;82EF57;
    CPX.B #$0E                           ;82EF59;
    BNE CODE_82EFA8                      ;82EF5B;
    LDA.B #$04                           ;82EF5D;
    CMP.W $0BAA                          ;82EF5F;
    BNE CODE_82EF6A                      ;82EF62;
    CMP.B $1F                            ;82EF64;
    BEQ CODE_82EFCE                      ;82EF66;
    BRA CODE_82EFC0                      ;82EF68;

CODE_82EF6A:
    LDA.B #$02                           ;82EF6A;
    CMP.W $0BAA                          ;82EF6C;
    BNE CODE_82EF77                      ;82EF6F;
    CMP.B $1F                            ;82EF71;
    BEQ CODE_82EFCE                      ;82EF73;
    BRA CODE_82EFC0                      ;82EF75;

CODE_82EF77:
    LDA.B #$14                           ;82EF77;
    CMP.W $0BAA                          ;82EF79;
    BNE CODE_82EF84                      ;82EF7C;
    CMP.B $1F                            ;82EF7E;
    BEQ CODE_82EFCE                      ;82EF80;
    BRA CODE_82EFC0                      ;82EF82;

CODE_82EF84:
    LDA.W $0BAA                          ;82EF84;
    BNE CODE_82EFA8                      ;82EF87;
    LDA.B $1F                            ;82EF89;
    BNE CODE_82EFDE                      ;82EF8B;
    LDA.B $02                            ;82EF8D;
    CMP.B #$04                           ;82EF8F;
    BEQ CODE_82EFEC                      ;82EF91;
    LDX.B $03                            ;82EF93;
    BNE CODE_82EFBA                      ;82EF95;
    BRA CODE_82EFAE                      ;82EF97;

CODE_82EF99:
    LDA.B #$25                           ;82EF99;
    BIT.W $0BB9                          ;82EF9B;
    BVC CODE_82EFA2                      ;82EF9E;
    LDA.B #$65                           ;82EFA0;

CODE_82EFA2:
    STA.B $11                            ;82EFA2;
    JSL.L CODE_8280B4                    ;82EFA4;

CODE_82EFA8:
    LDA.W $0BAA                          ;82EFA8;
    STA.B $1F                            ;82EFAB;
    RTL                                  ;82EFAD;

CODE_82EFAE:
    STZ.B $02                            ;82EFAE;
    INC.B $03                            ;82EFB0;
    LDA.B #$04                           ;82EFB2;
    JSL.L CODE_848F07                    ;82EFB4;
    BRA CODE_82EF99                      ;82EFB8;

CODE_82EFBA:
    JSL.L CODE_848EEA                    ;82EFBA;
    BRA CODE_82EF99                      ;82EFBE;

CODE_82EFC0:
    LDA.B #$02                           ;82EFC0;
    STA.B $02                            ;82EFC2;
    INC.B $03                            ;82EFC4;
    LDA.B #$03                           ;82EFC6;
    JSL.L CODE_848F07                    ;82EFC8;
    BRA CODE_82EF99                      ;82EFCC;

CODE_82EFCE:
    LDA.W $0B9C                          ;82EFCE;
    BIT.B #$03                           ;82EFD1;
    BNE CODE_82EFD8                      ;82EFD3;
    JSR.W CODE_82EFFA                    ;82EFD5;

CODE_82EFD8:
    JSL.L CODE_848EEA                    ;82EFD8;
    BRA CODE_82EF99                      ;82EFDC;

CODE_82EFDE:
    LDA.B #$04                           ;82EFDE;
    STA.B $02                            ;82EFE0;
    INC.B $03                            ;82EFE2;
    LDA.B #$05                           ;82EFE4;
    JSL.L CODE_848F07                    ;82EFE6;
    BRA CODE_82EF99                      ;82EFEA;

CODE_82EFEC:
    LDA.B $0F                            ;82EFEC;
    BPL CODE_82EFF4                      ;82EFEE;
    STZ.B $02                            ;82EFF0;
    STZ.B $03                            ;82EFF2;

CODE_82EFF4:
    JSL.L CODE_848EEA                    ;82EFF4;
    BRA CODE_82EF99                      ;82EFF8;

CODE_82EFFA:
    JSL.L CODE_8282D3                    ;82EFFA;
    BNE CODE_82F030                      ;82EFFE;
    INC.W $0000,X                        ;82F000;
    LDA.B #$0C                           ;82F003;
    STA.W $000A,X                        ;82F005;
    LDA.B #$83                           ;82F008;
    STA.W $000B,X                        ;82F00A;
    REP #$21                             ;82F00D;
    LDA.B $08                            ;82F00F;
    ADC.W #$0010                         ;82F011;
    STA.W $0008,X                        ;82F014;
    JSL.L CODE_849086                    ;82F017;
    AND.W #$000F                         ;82F01B;
    STA.W $0000                          ;82F01E;
    LDA.B $05                            ;82F021;
    SEC                                  ;82F023;
    SBC.W #$0008                         ;82F024;
    CLC                                  ;82F027;
    ADC.W $0000                          ;82F028;
    STA.W $0005,X                        ;82F02B;
    SEP #$20                             ;82F02E;

CODE_82F030:
    SEP #$10                             ;82F030;
    RTS                                  ;82F032;

CODE_82F033:
    LDA.W $1F7A                          ;82F033;
    BNE CODE_82F03B                      ;82F036;
    JMP.W CODE_82F0D2                    ;82F038;

CODE_82F03B:
    LDA.B #$10                           ;82F03B;
    STA.B $0A                            ;82F03D;
    JSL.L CODE_84A205                    ;82F03F;
    CPY.B #$00                           ;82F043;
    BEQ CODE_82F04B                      ;82F045;
    JML.L CODE_828398                    ;82F047;

CODE_82F04B:
    LDA.B #$04                           ;82F04B;
    STA.W $00A2                          ;82F04D;
    PHB                                  ;82F050;
    LDA.B #$7F                           ;82F051;
    PHA                                  ;82F053;
    PLB                                  ;82F054;
    REP #$30                             ;82F055;
    LDA.W #$2002                         ;82F057;
    LDX.W #$0880                         ;82F05A;

CODE_82F05D:
    DEX                                  ;82F05D;
    DEX                                  ;82F05E;
    BMI CODE_82F066                      ;82F05F;
    STA.W $D000,X                        ;82F061;
    BRA CODE_82F05D                      ;82F064;

CODE_82F066:
    SEP #$30                             ;82F066;
    PLB                                  ;82F068;
    LDX.W $00A3                          ;82F069;
    LDA.B #$80                           ;82F06C;
    STA.W $0500,X                        ;82F06E;
    REP #$20                             ;82F071;
    LDA.W #$0BC0                         ;82F073;
    STA.W $0501,X                        ;82F076;
    LDA.W #$0880                         ;82F079;
    STA.W $0503,X                        ;82F07C;
    LDA.W #$D000                         ;82F07F;
    STA.W $0505,X                        ;82F082;
    SEP #$20                             ;82F085;
    LDA.B #$7F                           ;82F087;
    STA.W $0507,X                        ;82F089;
    TXA                                  ;82F08C;
    CLC                                  ;82F08D;
    ADC.B #$08                           ;82F08E;
    STA.W $00A3                          ;82F090;
    LDA.B #$17                           ;82F093;
    STA.W $00C0                          ;82F095;
    LDA.B #$13                           ;82F098;
    STA.W $00C1                          ;82F09A;
    LDA.B #$02                           ;82F09D;
    STA.W $00C9                          ;82F09F;
    LDA.B #$7F                           ;82F0A2;
    STA.W $00CA                          ;82F0A4;
    LDA.B #$55                           ;82F0A7;
    STA.W $0303                          ;82F0A9;
    LDA.B #$65                           ;82F0AC;
    STA.W $0302                          ;82F0AE;
    LDA.B #$01                           ;82F0B1;
    TSB.W $00A1                          ;82F0B3;
    JSL.L CODE_828307                    ;82F0B6;
    BNE CODE_82F0CE                      ;82F0BA;
    INC.W $0000,X                        ;82F0BC;
    LDA.B #$10                           ;82F0BF;
    STA.W $000A,X                        ;82F0C1;
    PHD                                  ;82F0C4;
    PHX                                  ;82F0C5;
    PLD                                  ;82F0C6;
    SEP #$10                             ;82F0C7;
    JSL.L CODE_82FCA9                    ;82F0C9;
    PLD                                  ;82F0CD;

CODE_82F0CE:
    JML.L CODE_828398                    ;82F0CE;

CODE_82F0D2:
    LDA.B #$11                           ;82F0D2;
    STA.B $0A                            ;82F0D4;
    JSL.L CODE_84A205                    ;82F0D6;
    CPY.B #$00                           ;82F0DA;
    BNE CODE_82F10B                      ;82F0DC;
    STZ.W $00C9                          ;82F0DE;
    STZ.W $00CB                          ;82F0E1;
    STZ.W $00CC                          ;82F0E4;
    STZ.W $00CD                          ;82F0E7;
    LDA.B #$13                           ;82F0EA;
    STA.W $212C                          ;82F0EC;
    STA.W $00C0                          ;82F0EF;
    LDA.B #$BD                           ;82F0F2;
    STA.W $00CA                          ;82F0F4;
    JSL.L CODE_828307                    ;82F0F7;
    INC.W $0000,X                        ;82F0FB;
    LDA.B #$11                           ;82F0FE;
    STA.W $000A,X                        ;82F100;
    LDA.B #$04                           ;82F103;
    STA.W $000B,X                        ;82F105;
    STZ.W $0004,X                        ;82F108;

CODE_82F10B:
    JML.L CODE_828398                    ;82F10B;

CODE_82F10F:
    LDX.B $01                            ;82F10F;
    BNE CODE_82F12D                      ;82F111;
    INC.B $01                            ;82F113;
    LDA.B #$30                           ;82F115;
    STA.B $16                            ;82F117;
    STZ.B $1F                            ;82F119;
    LDA.B #$08                           ;82F11B;
    STA.B $1E                            ;82F11D;
    REP #$20                             ;82F11F;
    STZ.B $1A                            ;82F121;
    STZ.B $1C                            ;82F123;
    SEP #$20                             ;82F125;
    LDA.B $17                            ;82F127;
    JML.L CODE_848F07                    ;82F129;

CODE_82F12D:
    JSL.L CODE_828174                    ;82F12D;
    REP #$20                             ;82F131;
    LDA.W #$FE00                         ;82F133;
    CMP.B $1C                            ;82F136;
    BMI CODE_82F13C                      ;82F138;
    STA.B $1C                            ;82F13A;

CODE_82F13C:
    LDA.W $1E5C                          ;82F13C;
    CLC                                  ;82F13F;
    ADC.W #$0140                         ;82F140;
    CMP.B $08                            ;82F143;
    BCC CODE_82F15F                      ;82F145;
    LDA.B $29                            ;82F147;
    PHA                                  ;82F149;
    SEP #$20                             ;82F14A;
    STZ.B $29                            ;82F14C;
    LDA.B #$10                           ;82F14E;
    STA.B $2A                            ;82F150;
    JSL.L CODE_8490A0                    ;82F152;
    CMP.B #$0D                           ;82F156;
    BEQ CODE_82F16F                      ;82F158;
    REP #$20                             ;82F15A;
    PLA                                  ;82F15C;
    STA.B $29                            ;82F15D;

CODE_82F15F:
    SEP #$20                             ;82F15F;
    JSL.L CODE_84A4AB                    ;82F161;
    LDA.B #$3C                           ;82F165;
    JSL.L CODE_84A333                    ;82F167;
    JML.L CODE_828398                    ;82F16B;

CODE_82F16F:
    REP #$20                             ;82F16F;
    PLA                                  ;82F171;
    STA.B $29                            ;82F172;
    SEP #$20                             ;82F174;
    LDA.W $0B9C                          ;82F176;
    BIT.B #$1F                           ;82F179;
    BNE CODE_82F180                      ;82F17B;
    JSR.W CODE_82C500                    ;82F17D;

CODE_82F180:
    LDA.W $0B9C                          ;82F180;
    LSR A                                ;82F183;
    BCC CODE_82F18A                      ;82F184;
    JML.L CODE_8280B4                    ;82F186;

CODE_82F18A:
    RTL                                  ;82F18A;

CODE_82F18B:
    LDX.B $01                            ;82F18B;
    JMP.W (PTR16_82F190,X)               ;82F18D;

PTR16_82F190:
    dw CODE_82F196                       ;82F190;
    dw CODE_82F1D0                       ;82F192;
    dw CODE_82F2D8                       ;82F194;

CODE_82F196:
    LDA.B #$02                           ;82F196;
    STA.B $01                            ;82F198;
    STZ.B $12                            ;82F19A;
    LDA.B #$25                           ;82F19C;
    STA.B $11                            ;82F19E;
    LDA.L $7F8218                        ;82F1A0;
    STA.B $18                            ;82F1A4;
    LDA.B $0B                            ;82F1A6;
    CMP.B #$80                           ;82F1A8;
    BNE CODE_82F1C6                      ;82F1AA;
    LDA.B #$0F                           ;82F1AC;
    STA.B $10                            ;82F1AE;
    STZ.B $03                            ;82F1B0;
    LDA.B #$50                           ;82F1B2;
    STA.B $1F                            ;82F1B4;
    STZ.B $1E                            ;82F1B6;
    REP #$20                             ;82F1B8;
    LDA.W #$047D                         ;82F1BA;
    STA.B $1A                            ;82F1BD;
    LDA.W #$0100                         ;82F1BF;
    STA.B $1C                            ;82F1C2;
    SEP #$20                             ;82F1C4;

CODE_82F1C6:
    LDA.B #$1A                           ;82F1C6;
    STA.B $16                            ;82F1C8;
    LDA.B #$03                           ;82F1CA;
    JSL.L CODE_848F07                    ;82F1CC;

CODE_82F1D0:
    LDA.B $0B                            ;82F1D0;
    BMI CODE_82F1DB                      ;82F1D2;
    LDX.B $02                            ;82F1D4;
    JSR.W (PTR16_82F23E,X)               ;82F1D6;
    BRA CODE_82F236                      ;82F1D9;

CODE_82F1DB:
    CMP.B #$80                           ;82F1DB;
    BEQ CODE_82F1E6                      ;82F1DD;
    LDX.B $02                            ;82F1DF;
    JSR.W (PTR16_82F242,X)               ;82F1E1;
    BRA CODE_82F236                      ;82F1E4;

CODE_82F1E6:
    REP #$10                             ;82F1E6;
    LDX.B $0C                            ;82F1E8;
    LDA.W $0002,X                        ;82F1EA;
    BEQ CODE_82F1F9                      ;82F1ED;
    SEP #$10                             ;82F1EF;
    JSR.W CODE_82F2DC                    ;82F1F1;
    JSR.W CODE_82F340                    ;82F1F4;
    BRA CODE_82F213                      ;82F1F7;

CODE_82F1F9:
    LDA.W $000B,X                        ;82F1F9;
    SEP #$10                             ;82F1FC;
    CMP.B #$EE                           ;82F1FE;
    BCC CODE_82F210                      ;82F200;
    LDA.B #$25                           ;82F202;
    STA.B $11                            ;82F204;
    LDA.B #$08                           ;82F206;
    STA.B $1F                            ;82F208;
    STZ.B $1A                            ;82F20A;
    STZ.B $1B                            ;82F20C;
    STZ.B $12                            ;82F20E;

CODE_82F210:
    JSR.W CODE_82F30E                    ;82F210;

CODE_82F213:
    REP #$20                             ;82F213;
    LDA.B $29                            ;82F215;
    PHA                                  ;82F217;
    STZ.B $29                            ;82F218;
    JSL.L CODE_8490A0                    ;82F21A;
    CMP.W #$000E                         ;82F21E;
    BNE CODE_82F227                      ;82F221;
    LDX.B #$04                           ;82F223;
    STX.B $01                            ;82F225;

CODE_82F227:
    PLA                                  ;82F227;
    STA.B $29                            ;82F228;
    SEP #$20                             ;82F22A;
    JSL.L CODE_82806E                    ;82F22C;
    BCC CODE_82F236                      ;82F230;
    LDA.B #$04                           ;82F232;
    STA.B $01                            ;82F234;

CODE_82F236:
    JSL.L CODE_848EEA                    ;82F236;
    JML.L CODE_8280B4                    ;82F23A;

PTR16_82F23E:
    dw CODE_82F246                       ;82F23E;
    dw CODE_82F272                       ;82F240;

PTR16_82F242:
    dw CODE_82F28F                       ;82F242;
    dw CODE_82F2BD                       ;82F244;

CODE_82F246:
    REP #$21                             ;82F246;
    LDX.B $0B                            ;82F248;
    LDA.B $08                            ;82F24A;
    ADC.W DATA8_86DE2D,X                 ;82F24C;
    STA.B $08                            ;82F24F;
    LDA.B $05                            ;82F251;
    SEC                                  ;82F253;
    SBC.W DATA8_86DE2B,X                 ;82F254;
    STA.B $05                            ;82F257;
    STA.B $0C                            ;82F259;
    LDA.W DATA8_86DE4B,X                 ;82F25B;
    STA.B $1A                            ;82F25E;
    LDA.W DATA8_86DE4D,X                 ;82F260;
    STA.B $1C                            ;82F263;
    SEP #$20                             ;82F265;
    LDA.B #$10                           ;82F267;
    STA.B $1F                            ;82F269;
    STZ.B $1E                            ;82F26B;
    LDA.B #$02                           ;82F26D;
    STA.B $02                            ;82F26F;
    RTS                                  ;82F271;

CODE_82F272:
    REP #$20                             ;82F272;
    LDA.B $05                            ;82F274;
    SEC                                  ;82F276;
    SBC.B $0C                            ;82F277;
    SEP #$20                             ;82F279;
    LDX.B $0B                            ;82F27B;
    CMP.W DATA8_86DE2B,X                 ;82F27D;
    BCC CODE_82F286                      ;82F280;
    LDA.B #$04                           ;82F282;
    STA.B $01                            ;82F284;

CODE_82F286:
    JSL.L CODE_828195                    ;82F286;
    JSL.L CODE_848EEA                    ;82F28A;
    RTS                                  ;82F28E;

CODE_82F28F:
    LDA.B #$02                           ;82F28F;
    STA.B $02                            ;82F291;
    JSL.L CODE_849086                    ;82F293;
    AND.B #$1C                           ;82F297;
    TAX                                  ;82F299;
    REP #$20                             ;82F29A;
    LDA.W DATA8_86DE6B,X                 ;82F29C;
    STA.B $1A                            ;82F29F;
    JSL.L CODE_849086                    ;82F2A1;
    AND.W #$001C                         ;82F2A5;
    TAX                                  ;82F2A8;
    LDA.W DATA8_86DE6D,X                 ;82F2A9;
    STA.B $1C                            ;82F2AC;
    SEP #$20                             ;82F2AE;
    LDA.B #$3C                           ;82F2B0;
    STA.B $10                            ;82F2B2;
    LDA.B #$10                           ;82F2B4;
    STA.B $1F                            ;82F2B6;
    LDA.B #$10                           ;82F2B8;
    STA.B $1E                            ;82F2BA;
    RTS                                  ;82F2BC;

CODE_82F2BD:
    DEC.B $10                            ;82F2BD;
    BNE CODE_82F2C5                      ;82F2BF;
    LDA.B #$04                           ;82F2C1;
    STA.B $01                            ;82F2C3;

CODE_82F2C5:
    JSL.L CODE_8281CF                    ;82F2C5;
    LDA.B $1B                            ;82F2C9;
    BMI CODE_82F2CF                      ;82F2CB;
    STZ.B $1B                            ;82F2CD;

CODE_82F2CF:
    LDA.B #$02                           ;82F2CF;
    CMP.B $1D                            ;82F2D1;
    BPL CODE_82F2D7                      ;82F2D3;
    STA.B $1D                            ;82F2D5;

CODE_82F2D7:
    RTS                                  ;82F2D7;

CODE_82F2D8:
    JML.L CODE_828398                    ;82F2D8;

CODE_82F2DC:
    LDX.B $03                            ;82F2DC;
    BNE CODE_82F2F7                      ;82F2DE;
    DEC.B $10                            ;82F2E0;
    BNE CODE_82F2F2                      ;82F2E2;
    LDA.B #$0F                           ;82F2E4;
    STA.B $10                            ;82F2E6;
    INC.B $03                            ;82F2E8;
    LDA.B #$83                           ;82F2EA;
    STA.B $1A                            ;82F2EC;
    LDA.B #$FB                           ;82F2EE;
    STA.B $1B                            ;82F2F0;

CODE_82F2F2:
    JSL.L CODE_828174                    ;82F2F2;
    RTS                                  ;82F2F6;

CODE_82F2F7:
    DEC.B $10                            ;82F2F7;
    BNE CODE_82F309                      ;82F2F9;
    LDA.B #$0F                           ;82F2FB;
    STA.B $10                            ;82F2FD;
    STZ.B $03                            ;82F2FF;
    LDA.B #$7D                           ;82F301;
    STA.B $1A                            ;82F303;
    LDA.B #$04                           ;82F305;
    STA.B $1B                            ;82F307;

CODE_82F309:
    JSL.L CODE_828195                    ;82F309;
    RTS                                  ;82F30D;

CODE_82F30E:
    LDX.B $03                            ;82F30E;
    BNE CODE_82F329                      ;82F310;
    DEC.B $10                            ;82F312;
    BNE CODE_82F324                      ;82F314;
    LDA.B #$39                           ;82F316;
    STA.B $10                            ;82F318;
    INC.B $03                            ;82F31A;
    LDA.B #$40                           ;82F31C;
    STA.B $1A                            ;82F31E;
    LDA.B #$FE                           ;82F320;
    STA.B $1B                            ;82F322;

CODE_82F324:
    JSL.L CODE_828174                    ;82F324;
    RTS                                  ;82F328;

CODE_82F329:
    DEC.B $10                            ;82F329;
    BNE CODE_82F33B                      ;82F32B;
    LDA.B #$39                           ;82F32D;
    STA.B $10                            ;82F32F;
    STZ.B $03                            ;82F331;
    LDA.B #$C0                           ;82F333;
    STA.B $1A                            ;82F335;
    LDA.B #$01                           ;82F337;
    STA.B $1B                            ;82F339;

CODE_82F33B:
    JSL.L CODE_828195                    ;82F33B;
    RTS                                  ;82F33F;

CODE_82F340:
    LDA.B #$25                           ;82F340;
    STA.B $11                            ;82F342;
    STZ.B $12                            ;82F344;
    LDA.B $1B                            ;82F346;
    BPL CODE_82F352                      ;82F348;
    LDA.B #$05                           ;82F34A;
    STA.B $11                            ;82F34C;
    LDA.B #$04                           ;82F34E;
    STA.B $12                            ;82F350;

CODE_82F352:
    RTS                                  ;82F352;

CODE_82F353:
    LDX.B $01                            ;82F353;
    JMP.W (PTR16_82F358,X)               ;82F355;

PTR16_82F358:
    dw CODE_82F35E                       ;82F358;
    dw CODE_82F376                       ;82F35A;
    dw CODE_82F3B4                       ;82F35C;

CODE_82F35E:
    LDA.B #$02                           ;82F35E;
    STA.B $01                            ;82F360;
    LDA.B #$04                           ;82F362;
    STA.B $12                            ;82F364;
    LDA.L $7F8231                        ;82F366;
    STA.B $18                            ;82F36A;
    LDA.B #$33                           ;82F36C;
    STA.B $16                            ;82F36E;
    LDA.B #$02                           ;82F370;
    JSL.L CODE_848F07                    ;82F372;

CODE_82F376:
    LDA.L $7F8331                        ;82F376;
    STA.B $11                            ;82F37A;
    REP #$10                             ;82F37C;
    LDX.B $0C                            ;82F37E;
    LDA.W $002A,X                        ;82F380;
    BEQ CODE_82F389                      ;82F383;
    LDA.B #$0E                           ;82F385;
    TRB.B $11                            ;82F387;

CODE_82F389:
    LDA.W $0027,X                        ;82F389;
    AND.B #$7F                           ;82F38C;
    BNE CODE_82F3AA                      ;82F38E;
    LDA.B #$04                           ;82F390;
    STA.B $01                            ;82F392;
    LDA.L $7F8331                        ;82F394;
    STA.B $11                            ;82F398;
    LDX.W #$0100                         ;82F39A;
    STX.B $1A                            ;82F39D;
    LDX.W #$0200                         ;82F39F;
    STX.B $1C                            ;82F3A2;
    STZ.B $1F                            ;82F3A4;
    LDA.B #$10                           ;82F3A6;
    STA.B $1E                            ;82F3A8;

CODE_82F3AA:
    SEP #$10                             ;82F3AA;
    JSL.L CODE_848EEA                    ;82F3AC;

CODE_82F3B0:
    JML.L CODE_8280B4                    ;82F3B0;

CODE_82F3B4:
    JSL.L CODE_82806E                    ;82F3B4;
    BCC CODE_82F3BE                      ;82F3B8;
    JML.L CODE_828398                    ;82F3BA;

CODE_82F3BE:
    JSL.L CODE_828174                    ;82F3BE;
    LDA.W $0B9B                          ;82F3C2;
    LSR A                                ;82F3C5;
    BCC CODE_82F3B0                      ;82F3C6;
    RTL                                  ;82F3C8;

CODE_82F3C9:
    LDX.B $01                            ;82F3C9;
    JMP.W (PTR16_82F3CE,X)               ;82F3CB;

PTR16_82F3CE:
    dw CODE_82F3D4                       ;82F3CE;
    dw CODE_82F3EC                       ;82F3D0;
    dw CODE_82F45A                       ;82F3D2;

CODE_82F3D4:
    LDA.B #$02                           ;82F3D4;
    STA.B $01                            ;82F3D6;
    LDA.B #$04                           ;82F3D8;
    STA.B $12                            ;82F3DA;
    LDA.L $7F8231                        ;82F3DC;
    STA.B $18                            ;82F3E0;
    LDA.B #$33                           ;82F3E2;
    STA.B $16                            ;82F3E4;
    LDA.B #$03                           ;82F3E6;
    JSL.L CODE_848F07                    ;82F3E8;

CODE_82F3EC:
    LDA.L $7F8331                        ;82F3EC;
    STA.B $11                            ;82F3F0;
    REP #$10                             ;82F3F2;
    LDX.B $0C                            ;82F3F4;
    LDA.W $0027,X                        ;82F3F6;
    BPL CODE_82F3FF                      ;82F3F9;
    LDA.B #$0E                           ;82F3FB;
    TRB.B $11                            ;82F3FD;

CODE_82F3FF:
    LDA.W $0000,X                        ;82F3FF;
    BNE CODE_82F41E                      ;82F402;
    LDA.B #$04                           ;82F404;
    STA.B $01                            ;82F406;
    LDA.L $7F8331                        ;82F408;
    STA.B $11                            ;82F40C;
    LDX.W #$FEE0                         ;82F40E;
    STX.B $1A                            ;82F411;
    LDX.W #$0200                         ;82F413;
    STX.B $1C                            ;82F416;
    STZ.B $1F                            ;82F418;
    LDA.B #$10                           ;82F41A;
    STA.B $1E                            ;82F41C;

CODE_82F41E:
    LDA.W $0001,X                        ;82F41E;
    BEQ CODE_82F454                      ;82F421;
    LDA.W $0002,X                        ;82F423;
    CMP.B #$04                           ;82F426;
    BNE CODE_82F437                      ;82F428;
    LDA.W $002C,X                        ;82F42A;
    BEQ CODE_82F450                      ;82F42D;
    LDA.B #$03                           ;82F42F;
    JSL.L CODE_848F07                    ;82F431;
    BRA CODE_82F450                      ;82F435;

CODE_82F437:
    CMP.B #$06                           ;82F437;
    BNE CODE_82F454                      ;82F439;
    LDA.W $002C,X                        ;82F43B;
    BEQ CODE_82F450                      ;82F43E;
    LDY.W #$0003                         ;82F440;
    LDA.W $001F,X                        ;82F443;
    BNE CODE_82F44B                      ;82F446;
    LDY.W #$0007                         ;82F448;

CODE_82F44B:
    TYA                                  ;82F44B;
    JSL.L CODE_848F07                    ;82F44C;

CODE_82F450:
    JSL.L CODE_848EEA                    ;82F450;

CODE_82F454:
    SEP #$10                             ;82F454;
    JML.L CODE_8280B4                    ;82F456;

CODE_82F45A:
    JML.L CODE_828398                    ;82F45A;

CODE_82F45E:
    JSL.L CODE_82806E                    ;82F45E;
    BCS CODE_82F474                      ;82F462;
    INC.B $0B                            ;82F464;
    LDA.B $0B                            ;82F466;
    CMP.B #$06                           ;82F468;
    BNE CODE_82F474                      ;82F46A;
    STZ.B $0B                            ;82F46C;
    LDA.B #$1C                           ;82F46E;
    JSL.L CODE_8088A2                    ;82F470;

CODE_82F474:
    LDX.B $01                            ;82F474;
    JMP.W (PTR16_82F479,X)               ;82F476;

PTR16_82F479:
    dw CODE_82F47F                       ;82F479;
    dw CODE_82F499                       ;82F47B;
    dw CODE_82F4CB                       ;82F47D;

CODE_82F47F:
    LDA.B #$02                           ;82F47F;
    STA.B $01                            ;82F481;
    STZ.B $0B                            ;82F483;
    STZ.B $18                            ;82F485;
    LDA.L $7F832D                        ;82F487;
    AND.B #$FE                           ;82F48B;
    STA.B $11                            ;82F48D;
    LDA.B #$36                           ;82F48F;
    STA.B $16                            ;82F491;
    LDA.B #$00                           ;82F493;
    JML.L CODE_848F07                    ;82F495;

CODE_82F499:
    REP #$30                             ;82F499;
    LDX.B $0C                            ;82F49B;
    LDA.W $0005,X                        ;82F49D;
    STA.B $05                            ;82F4A0;
    LDA.W $0008,X                        ;82F4A2;
    STA.B $08                            ;82F4A5;
    SEP #$20                             ;82F4A7;
    LDA.W $0027,X                        ;82F4A9;
    AND.B #$7F                           ;82F4AC;
    BNE CODE_82F4C1                      ;82F4AE;
    LDA.B #$04                           ;82F4B0;
    STA.B $01                            ;82F4B2;
    LDX.W #$0200                         ;82F4B4;
    STX.B $1C                            ;82F4B7;
    LDA.B #$20                           ;82F4B9;
    STA.B $1E                            ;82F4BB;
    STZ.B $1A                            ;82F4BD;
    STZ.B $1B                            ;82F4BF;

CODE_82F4C1:
    SEP #$10                             ;82F4C1;
    JSL.L CODE_848EEA                    ;82F4C3;
    JML.L CODE_82808F                    ;82F4C7;

CODE_82F4CB:
    JSL.L CODE_848EEA                    ;82F4CB;
    JSL.L CODE_8281FB                    ;82F4CF;
    JSL.L CODE_82808F                    ;82F4D3;
    LDA.B $0E                            ;82F4D7;
    BNE CODE_82F4DF                      ;82F4D9;
    JML.L CODE_828398                    ;82F4DB;

CODE_82F4DF:
    RTL                                  ;82F4DF;

CODE_82F4E0:
    LDX.B $01                            ;82F4E0;
    JMP.W (PTR16_82F4E5,X)               ;82F4E2;

PTR16_82F4E5:
    dw CODE_82F4EB                       ;82F4E5;
    dw CODE_82F52F                       ;82F4E7;
    dw CODE_82F549                       ;82F4E9;

CODE_82F4EB:
    LDA.B #$02                           ;82F4EB;
    STA.B $01                            ;82F4ED;
    STZ.B $12                            ;82F4EF;
    LDA.L $7F8238                        ;82F4F1;
    STA.B $18                            ;82F4F5;
    LDA.L $7F8338                        ;82F4F7;
    STA.B $11                            ;82F4FB;
    REP #$20                             ;82F4FD;
    JSL.L CODE_849086                    ;82F4FF;
    AND.W #$0006                         ;82F503;
    TAX                                  ;82F506;
    LDA.W DATA8_86DE8B,X                 ;82F507;
    STA.B $1A                            ;82F50A;
    JSL.L CODE_849086                    ;82F50C;
    AND.W #$0006                         ;82F510;
    TAX                                  ;82F513;
    LDA.W DATA8_86DE93,X                 ;82F514;
    STA.B $1C                            ;82F517;
    SEP #$20                             ;82F519;
    LDA.B #$04                           ;82F51B;
    STA.B $1E                            ;82F51D;
    STZ.B $1F                            ;82F51F;
    LDA.B #$78                           ;82F521;
    STA.B $10                            ;82F523;
    LDA.B #$39                           ;82F525;
    STA.B $16                            ;82F527;
    LDA.B #$00                           ;82F529;
    JSL.L CODE_848F07                    ;82F52B;

CODE_82F52F:
    DEC.B $10                            ;82F52F;
    BNE CODE_82F537                      ;82F531;
    LDA.B #$04                           ;82F533;
    STA.B $01                            ;82F535;

CODE_82F537:
    JSL.L CODE_828174                    ;82F537;
    LDA.W $0B9C                          ;82F53B;
    LSR A                                ;82F53E;
    BCC CODE_82F545                      ;82F53F;
    JSL.L CODE_8280B4                    ;82F541;

CODE_82F545:
    JML.L CODE_848EEA                    ;82F545;

CODE_82F549:
    JML.L CODE_828398                    ;82F549;

CODE_82F54D:
    LDX.B $01                            ;82F54D;
    BNE CODE_82F5A2                      ;82F54F;
    REP #$20                             ;82F551;
    LDA.W $0BAD                          ;82F553;
    CMP.B $05                            ;82F556;
    SEP #$20                             ;82F558;
    BCC CODE_82F560                      ;82F55A;
    JML.L CODE_828398                    ;82F55C;

CODE_82F560:
    INC.B $01                            ;82F560;
    LDA.B $0B                            ;82F562;
    AND.B #$07                           ;82F564;
    TAX                                  ;82F566;
    LDA.W DATA8_86DE9E,X                 ;82F567;
    STA.B $12                            ;82F56A;
    TXA                                  ;82F56C;
    ASL A                                ;82F56D;
    TAX                                  ;82F56E;
    REP #$20                             ;82F56F;
    LDA.W DATA8_86DEA6,X                 ;82F571;
    STA.B $1A                            ;82F574;
    SEP #$20                             ;82F576;
    LDA.B $0B                            ;82F578;
    AND.B #$30                           ;82F57A;
    LSR A                                ;82F57C;
    LSR A                                ;82F57D;
    LSR A                                ;82F57E;
    LSR A                                ;82F57F;
    STA.W $0000                          ;82F580;
    TAX                                  ;82F583;
    LDA.W DATA8_86DE9B,X                 ;82F584;
    TAX                                  ;82F587;
    LDA.L $7F8200,X                      ;82F588;
    STA.B $18                            ;82F58C;
    LDA.L $7F8300,X                      ;82F58E;
    STA.B $11                            ;82F592;
    LDA.B #$3A                           ;82F594;
    CLC                                  ;82F596;
    ADC.W $0000                          ;82F597;
    STA.B $16                            ;82F59A;
    LDA.B #$00                           ;82F59C;
    JSL.L CODE_848F07                    ;82F59E;

CODE_82F5A2:
    LDA.B $16                            ;82F5A2;
    AND.B #$7F                           ;82F5A4;
    CMP.B #$3C                           ;82F5A6;
    BNE CODE_82F5AD                      ;82F5A8;
    JSR.W CODE_82F5C1                    ;82F5AA;

CODE_82F5AD:
    JSL.L CODE_82823E                    ;82F5AD;
    JSL.L CODE_82808F                    ;82F5B1;
    LDA.B $0E                            ;82F5B5;
    BNE CODE_82F5BD                      ;82F5B7;
    JML.L CODE_828398                    ;82F5B9;

CODE_82F5BD:
    JML.L CODE_848EEA                    ;82F5BD;

CODE_82F5C1:
    LDA.W $0B9C                          ;82F5C1;
    AND.B #$07                           ;82F5C4;
    BNE CODE_82F610                      ;82F5C6;
    JSL.L CODE_8282D3                    ;82F5C8;
    BNE CODE_82F60E                      ;82F5CC;
    INC.W $0000,X                        ;82F5CE;
    LDA.B #$09                           ;82F5D1;
    STA.W $000A,X                        ;82F5D3;
    LDA.B #$80                           ;82F5D6;
    STA.W $000B,X                        ;82F5D8;
    STZ.W $000C,X                        ;82F5DB;
    REP #$20                             ;82F5DE;
    JSL.L CODE_849086                    ;82F5E0;
    AND.W #$000F                         ;82F5E4;
    STA.W $0000                          ;82F5E7;
    JSL.L CODE_849086                    ;82F5EA;
    AND.W #$000F                         ;82F5EE;
    STA.W $0002                          ;82F5F1;
    LDA.B $05                            ;82F5F4;
    CLC                                  ;82F5F6;
    ADC.W #$0011                         ;82F5F7;
    CLC                                  ;82F5FA;
    ADC.W $0000                          ;82F5FB;
    STA.W $0005,X                        ;82F5FE;
    LDA.B $08                            ;82F601;
    CLC                                  ;82F603;
    ADC.W #$FFED                         ;82F604;
    CLC                                  ;82F607;
    ADC.W $0002                          ;82F608;
    STA.W $0008,X                        ;82F60B;

CODE_82F60E:
    SEP #$30                             ;82F60E;

CODE_82F610:
    RTS                                  ;82F610;

CODE_82F611:
    LDA.B $01                            ;82F611;
    BNE CODE_82F627                      ;82F613;
    INC.B $01                            ;82F615;
    LDA.B #$34                           ;82F617;
    TSB.B $11                            ;82F619;
    STZ.B $18                            ;82F61B;
    LDA.B #$17                           ;82F61D;
    STA.B $16                            ;82F61F;
    LDA.B $0B                            ;82F621;
    JSL.L CODE_848F07                    ;82F623;

CODE_82F627:
    JSL.L CODE_848EEA                    ;82F627;
    LDA.B $0F                            ;82F62B;
    BPL CODE_82F633                      ;82F62D;
    JML.L CODE_828398                    ;82F62F;

CODE_82F633:
    JML.L CODE_82808F                    ;82F633;

CODE_82F637:
    LDA.B $01                            ;82F637;
    BNE CODE_82F66C                      ;82F639;
    INC.B $01                            ;82F63B;
    LDA.B #$37                           ;82F63D;
    STA.B $16                            ;82F63F;
    LDA.B $0B                            ;82F641;
    BPL CODE_82F649                      ;82F643;
    LDA.B #$49                           ;82F645;
    STA.B $16                            ;82F647;

CODE_82F649:
    LDA.B $0B                            ;82F649;
    AND.B #$7F                           ;82F64B;
    TAX                                  ;82F64D;
    LDA.W DATA8_86DF06,X                 ;82F64E;
    STA.B $1E                            ;82F651;
    LDA.W DATA8_86DEB6,X                 ;82F653;
    JSL.L CODE_848F07                    ;82F656;
    LDA.B $0B                            ;82F65A;
    ASL A                                ;82F65C;
    TAX                                  ;82F65D;
    REP #$20                             ;82F65E;
    LDA.W DATA8_86DEC6,X                 ;82F660;
    STA.B $1A                            ;82F663;
    LDA.W DATA8_86DEE6,X                 ;82F665;
    STA.B $1C                            ;82F668;
    SEP #$20                             ;82F66A;

CODE_82F66C:
    JSL.L CODE_848EEA                    ;82F66C;
    JSL.L CODE_8281E8                    ;82F670;
    LDA.B $0B                            ;82F674;
    EOR.W $0B9C                          ;82F676;
    LSR A                                ;82F679;
    BCC CODE_82F684                      ;82F67A;
    JSL.L CODE_8280B4                    ;82F67C;
    LDA.B $0E                            ;82F680;
    BEQ CODE_82F685                      ;82F682;

CODE_82F684:
    RTL                                  ;82F684;

CODE_82F685:
    JML.L CODE_828398                    ;82F685;

CODE_82F689:
    LDA.B $01                            ;82F689;
    BNE CODE_82F6DD                      ;82F68B;
    INC.B $01                            ;82F68D;
    STZ.B $18                            ;82F68F;
    LDA.B #$27                           ;82F691;
    STA.B $16                            ;82F693;
    LDX.B $0B                            ;82F695;
    LDA.W DATA8_86DF16,X                 ;82F697;
    JSL.L CODE_848F07                    ;82F69A;
    LDX.B $0B                            ;82F69E;
    LDA.W DATA8_86DF43,X                 ;82F6A0;
    STA.B $1E                            ;82F6A3;
    LDA.W DATA8_86DF31,X                 ;82F6A5;
    STA.B $1B                            ;82F6A8;
    STZ.B $1A                            ;82F6AA;
    LDA.W DATA8_86DF3A,X                 ;82F6AC;
    STA.B $1D                            ;82F6AF;
    STZ.B $1C                            ;82F6B1;
    REP #$20                             ;82F6B3;
    LDA.W DATA8_86DF1F,X                 ;82F6B5;
    AND.W #$00FF                         ;82F6B8;
    BIT.W #$0080                         ;82F6BB;
    BEQ CODE_82F6C3                      ;82F6BE;
    ORA.W #$FF00                         ;82F6C0;

CODE_82F6C3:
    CLC                                  ;82F6C3;
    ADC.B $05                            ;82F6C4;
    STA.B $05                            ;82F6C6;
    LDA.W DATA8_86DF28,X                 ;82F6C8;
    AND.W #$00FF                         ;82F6CB;
    BIT.W #$0080                         ;82F6CE;
    BEQ CODE_82F6D6                      ;82F6D1;
    ORA.W #$FF00                         ;82F6D3;

CODE_82F6D6:
    CLC                                  ;82F6D6;
    ADC.B $08                            ;82F6D7;
    STA.B $08                            ;82F6D9;
    SEP #$20                             ;82F6DB;

CODE_82F6DD:
    JSL.L CODE_8281E8                    ;82F6DD;
    JSL.L CODE_82806E                    ;82F6E1;
    BCS CODE_82F6EB                      ;82F6E5;
    JML.L CODE_8280B4                    ;82F6E7;

CODE_82F6EB:
    JML.L CODE_828398                    ;82F6EB;

CODE_82F6EF:
    LDA.B $01                            ;82F6EF;
    BNE CODE_82F743                      ;82F6F1;
    INC.B $01                            ;82F6F3;
    STZ.B $18                            ;82F6F5;
    LDA.B #$36                           ;82F6F7;
    STA.B $16                            ;82F6F9;
    LDX.B $0B                            ;82F6FB;
    LDA.W DATA8_86DF4C,X                 ;82F6FD;
    JSL.L CODE_848F07                    ;82F700;
    LDX.B $0B                            ;82F704;
    LDA.W DATA8_86DF8D,X                 ;82F706;
    STA.B $1E                            ;82F709;
    LDA.W DATA8_86DF73,X                 ;82F70B;
    STA.B $1B                            ;82F70E;
    STZ.B $1A                            ;82F710;
    LDA.W DATA8_86DF80,X                 ;82F712;
    STA.B $1D                            ;82F715;
    STZ.B $1C                            ;82F717;
    REP #$20                             ;82F719;
    LDA.W DATA8_86DF59,X                 ;82F71B;
    AND.W #$00FF                         ;82F71E;
    BIT.W #$0080                         ;82F721;
    BEQ CODE_82F729                      ;82F724;
    ORA.W #$FF00                         ;82F726;

CODE_82F729:
    CLC                                  ;82F729;
    ADC.B $05                            ;82F72A;
    STA.B $05                            ;82F72C;
    LDA.W DATA8_86DF66,X                 ;82F72E;
    AND.W #$00FF                         ;82F731;
    BIT.W #$0080                         ;82F734;
    BEQ CODE_82F73C                      ;82F737;
    ORA.W #$FF00                         ;82F739;

CODE_82F73C:
    CLC                                  ;82F73C;
    ADC.B $08                            ;82F73D;
    STA.B $08                            ;82F73F;
    SEP #$20                             ;82F741;

CODE_82F743:
    JSL.L CODE_8281E8                    ;82F743;
    JSL.L CODE_82806E                    ;82F747;
    BCS CODE_82F759                      ;82F74B;
    LDA.W $0B9C                          ;82F74D;
    EOR.B $0B                            ;82F750;
    LSR A                                ;82F752;
    BCC CODE_82F75D                      ;82F753;
    JML.L CODE_8280B4                    ;82F755;

CODE_82F759:
    JML.L CODE_828398                    ;82F759;

CODE_82F75D:
    RTL                                  ;82F75D;

CODE_82F75E:
    LDX.B $01                            ;82F75E;
    JMP.W (PTR16_82F763,X)               ;82F760;

PTR16_82F763:
    dw CODE_82F769                       ;82F763;
    dw CODE_82F781                       ;82F765;
    dw CODE_82F7BD                       ;82F767;

CODE_82F769:
    LDA.B #$02                           ;82F769;
    STA.B $01                            ;82F76B;
    LDA.L $7F823F                        ;82F76D;
    STA.B $18                            ;82F771;
    LDA.B #$04                           ;82F773;
    STA.B $12                            ;82F775;
    LDA.B #$3F                           ;82F777;
    STA.B $16                            ;82F779;
    LDA.B $0B                            ;82F77B;
    JML.L CODE_848F07                    ;82F77D;

CODE_82F781:
    LDA.L $7F833F                        ;82F781;
    ORA.B #$30                           ;82F785;
    STA.B $11                            ;82F787;
    REP #$31                             ;82F789;
    LDX.B $0C                            ;82F78B;
    LDA.W $0005,X                        ;82F78D;
    ADC.W #$FFF5                         ;82F790;
    STA.B $05                            ;82F793;
    LDA.W $0008,X                        ;82F795;
    CLC                                  ;82F798;
    ADC.W #$002F                         ;82F799;
    STA.B $08                            ;82F79C;
    SEP #$20                             ;82F79E;
    LDA.W $0027,X                        ;82F7A0;
    BMI CODE_82F7AF                      ;82F7A3;
    AND.B #$7F                           ;82F7A5;
    BNE CODE_82F7B3                      ;82F7A7;
    LDA.B #$04                           ;82F7A9;
    STA.B $01                            ;82F7AB;
    BRA CODE_82F7B3                      ;82F7AD;

CODE_82F7AF:
    LDA.B #$0E                           ;82F7AF;
    TRB.B $11                            ;82F7B1;

CODE_82F7B3:
    SEP #$10                             ;82F7B3;
    JSL.L CODE_8280B4                    ;82F7B5;
    JML.L CODE_848EEA                    ;82F7B9;

CODE_82F7BD:
    JML.L CODE_828398                    ;82F7BD;

CODE_82F7C1:
    LDX.B $01                            ;82F7C1;
    BNE CODE_82F7EB                      ;82F7C3;
    JSL.L CODE_84A23A                    ;82F7C5;
    TYA                                  ;82F7C9;
    BEQ CODE_82F7D0                      ;82F7CA;
    JML.L CODE_828398                    ;82F7CC;

CODE_82F7D0:
    INC.B $01                            ;82F7D0;
    STZ.B $0F                            ;82F7D2;
    REP #$30                             ;82F7D4;
    STZ.B $0C                            ;82F7D6;
    LDA.W #$0004                         ;82F7D8;
    STA.B $14                            ;82F7DB;
    PHB                                  ;82F7DD;
    LDX.W #$DF9A                         ;82F7DE;
    LDY.W #$0AAF                         ;82F7E1;
    LDA.W #$0006                         ;82F7E4;
    MVN $00,$86                          ;82F7E7;
    PLB                                  ;82F7EA;

CODE_82F7EB:
    REP #$30                             ;82F7EB;
    JSR.W CODE_82F8AC                    ;82F7ED;
    JSR.W CODE_82F7FD                    ;82F7F0;
    LDA.B $0F                            ;82F7F3;
    EOR.W #$0001                         ;82F7F5;
    STA.B $0F                            ;82F7F8;
    SEP #$30                             ;82F7FA;
    RTL                                  ;82F7FC;

CODE_82F7FD:
    LDX.W #$0000                         ;82F7FD;
    LDA.B $0F                            ;82F800;
    LSR A                                ;82F802;
    BCC CODE_82F808                      ;82F803;
    LDX.W #$0024                         ;82F805;

CODE_82F808:
    STX.W $0000                          ;82F808;
    LDX.W #$0014                         ;82F80B;
    LDA.W #$02F8                         ;82F80E;
    SEC                                  ;82F811;
    SBC.W $1E90                          ;82F812;
    BEQ CODE_82F84F                      ;82F815;
    BMI CODE_82F84F                      ;82F817;
    CMP.W #$0071                         ;82F819;
    BCC CODE_82F83F                      ;82F81C;
    CMP.W #$00E0                         ;82F81E;
    BCC CODE_82F826                      ;82F821;
    LDA.W #$00E0                         ;82F823;

CODE_82F826:
    TAY                                  ;82F826;
    LDA.W #$0070                         ;82F827;
    STA.W $0B22,X                        ;82F82A;
    LDA.W #$DA3C                         ;82F82D;
    CLC                                  ;82F830;
    ADC.W $0000                          ;82F831;
    STA.W $0B23,X                        ;82F834;
    TYA                                  ;82F837;
    INX                                  ;82F838;
    INX                                  ;82F839;
    INX                                  ;82F83A;
    SEC                                  ;82F83B;
    SBC.W #$0070                         ;82F83C;

CODE_82F83F:
    STA.W $0B22,X                        ;82F83F;
    LDA.W #$DA3C                         ;82F842;
    CLC                                  ;82F845;
    ADC.W $0000                          ;82F846;
    STA.W $0B23,X                        ;82F849;
    INX                                  ;82F84C;
    INX                                  ;82F84D;
    INX                                  ;82F84E;

CODE_82F84F:
    LDA.W $1E90                          ;82F84F;
    CLC                                  ;82F852;
    ADC.W #$00E0                         ;82F853;
    SEC                                  ;82F856;
    SBC.W #$02F8                         ;82F857;

CODE_82F85A:
    CMP.W #$0011                         ;82F85A;
    BCC CODE_82F882                      ;82F85D;
    CMP.W #$00E0                         ;82F85F;
    BCC CODE_82F867                      ;82F862;
    LDA.W #$00E0                         ;82F864;

CODE_82F867:
    TAY                                  ;82F867;
    LDA.W #$0090                         ;82F868;
    STA.W $0B22,X                        ;82F86B;
    LDA.W #$DA1A                         ;82F86E;
    CLC                                  ;82F871;
    ADC.W $0000                          ;82F872;
    STA.W $0B23,X                        ;82F875;
    TYA                                  ;82F878;
    INX                                  ;82F879;
    INX                                  ;82F87A;
    INX                                  ;82F87B;
    SEC                                  ;82F87C;
    SBC.W #$0010                         ;82F87D;
    BRA CODE_82F85A                      ;82F880;

CODE_82F882:
    ORA.W #$0080                         ;82F882;
    STA.W $0B22,X                        ;82F885;
    LDA.W #$DA1A                         ;82F888;
    CLC                                  ;82F88B;
    ADC.W $0000                          ;82F88C;
    STA.W $0B23,X                        ;82F88F;
    INX                                  ;82F892;
    INX                                  ;82F893;
    INX                                  ;82F894;
    LDA.W #$0001                         ;82F895;
    STA.W $0B22,X                        ;82F898;
    LDA.W #$DA3C                         ;82F89B;
    CLC                                  ;82F89E;
    ADC.W $0000                          ;82F89F;
    STA.W $0B23,X                        ;82F8A2;
    INX                                  ;82F8A5;
    INX                                  ;82F8A6;
    INX                                  ;82F8A7;
    STZ.W $0B22,X                        ;82F8A8;
    RTS                                  ;82F8AB;

CODE_82F8AC:
    LDX.W #$0000                         ;82F8AC;
    LDA.B $0F                            ;82F8AF;
    LSR A                                ;82F8B1;
    BCC CODE_82F8B7                      ;82F8B2;
    LDX.W #$0024                         ;82F8B4;

CODE_82F8B7:
    LDA.W $1E90                          ;82F8B7;
    STA.L $7FDA3C,X                      ;82F8BA;
    LDA.W #$0010                         ;82F8BE;
    STA.W $0000                          ;82F8C1;
    LDA.W $1E90                          ;82F8C4;
    SEC                                  ;82F8C7;
    SBC.W #$02F8                         ;82F8C8;
    BPL CODE_82F8D0                      ;82F8CB;
    LDA.W #$0000                         ;82F8CD;

CODE_82F8D0:
    CLC                                  ;82F8D0;
    ADC.B $0C                            ;82F8D1;
    AND.W #$000F                         ;82F8D3;
    TAY                                  ;82F8D6;

CODE_82F8D7:
    LDA.W DATA8_86DFA1,Y                 ;82F8D7;
    AND.W #$00FF                         ;82F8DA;
    CLC                                  ;82F8DD;
    ADC.W $1E90                          ;82F8DE;
    STA.L $7FDA1A,X                      ;82F8E1;
    TYA                                  ;82F8E5;
    INC A                                ;82F8E6;
    AND.W #$000F                         ;82F8E7;
    TAY                                  ;82F8EA;
    INX                                  ;82F8EB;
    INX                                  ;82F8EC;
    DEC.W $0000                          ;82F8ED;
    BPL CODE_82F8D7                      ;82F8F0;
    DEC.B $14                            ;82F8F2;
    BNE CODE_82F8FD                      ;82F8F4;
    LDA.W #$0004                         ;82F8F6;
    STA.B $14                            ;82F8F9;
    INC.B $0C                            ;82F8FB;

CODE_82F8FD:
    RTS                                  ;82F8FD;

CODE_82F8FE:
    LDA.B $01                            ;82F8FE;
    BNE CODE_82F92E                      ;82F900;
    INC.B $01                            ;82F902;
    STZ.B $18                            ;82F904;
    LDA.B $11                            ;82F906;
    AND.B #$70                           ;82F908;
    ORA.B #$04                           ;82F90A;
    STA.B $11                            ;82F90C;
    STZ.B $12                            ;82F90E;
    REP #$20                             ;82F910;
    STZ.B $1A                            ;82F912;
    STZ.B $1C                            ;82F914;
    LDA.W #$0010                         ;82F916;
    LDX.B $0B                            ;82F919;
    BEQ CODE_82F920                      ;82F91B;
    LDA.W #$0008                         ;82F91D;

CODE_82F920:
    STA.B $1E                            ;82F920;
    SEP #$20                             ;82F922;
    LDA.B #$17                           ;82F924;
    STA.B $16                            ;82F926;
    LDA.B $0B                            ;82F928;
    JML.L CODE_848F07                    ;82F92A;

CODE_82F92E:
    LDA.B $0F                            ;82F92E;
    BPL CODE_82F936                      ;82F930;
    JML.L CODE_828398                    ;82F932;

CODE_82F936:
    JSL.L CODE_848EEA                    ;82F936;
    JSL.L CODE_8281B2                    ;82F93A;
    JML.L CODE_8280B4                    ;82F93E;

CODE_82F942:
    LDX.B $01                            ;82F942;
    JMP.W (PTR16_82F947,X)               ;82F944;

PTR16_82F947:
    dw CODE_82F94D                       ;82F947;
    dw CODE_82F95F                       ;82F949;
    dw CODE_82F9B8                       ;82F94B;

CODE_82F94D:
    LDA.B #$02                           ;82F94D;
    STA.B $01                            ;82F94F;
    LDA.B #$04                           ;82F951;
    STA.B $12                            ;82F953;
    LDA.L $7F825C                        ;82F955;
    STA.B $18                            ;82F959;
    LDA.B #$61                           ;82F95B;
    STA.B $16                            ;82F95D;

CODE_82F95F:
    LDA.L $7F835C                        ;82F95F;
    ORA.B #$02                           ;82F963;
    STA.L $7F835C                        ;82F965;
    LDA.L $7F835C                        ;82F969;
    ORA.B #$20                           ;82F96D;
    AND.B #$FD                           ;82F96F;
    STA.B $11                            ;82F971;
    LDX.B $02                            ;82F973;
    JSR.W (PTR16_82F9A5,X)               ;82F975;
    REP #$30                             ;82F978;
    LDX.B $0C                            ;82F97A;
    LDA.W $0005,X                        ;82F97C;
    STA.B $05                            ;82F97F;
    LDA.W $0008,X                        ;82F981;
    STA.B $08                            ;82F984;
    SEP #$20                             ;82F986;
    LDA.W $0038,X                        ;82F988;
    LSR A                                ;82F98B;
    BCC CODE_82F992                      ;82F98C;
    LDA.B #$0E                           ;82F98E;
    TRB.B $11                            ;82F990;

CODE_82F992:
    LDA.W $0027,X                        ;82F992;
    CMP.B #$FF                           ;82F995;
    BNE CODE_82F99F                      ;82F997;
    LDA.B #$04                           ;82F999;
    STA.B $01                            ;82F99B;
    STZ.B $02                            ;82F99D;

CODE_82F99F:
    SEP #$10                             ;82F99F;
    JML.L CODE_8280B4                    ;82F9A1;

PTR16_82F9A5:
    dw CODE_82F9A9                       ;82F9A5;
    dw CODE_82F9B3                       ;82F9A7;

CODE_82F9A9:
    LDA.B #$02                           ;82F9A9;
    STA.B $02                            ;82F9AB;
    LDA.B $10                            ;82F9AD;
    JSL.L CODE_848F07                    ;82F9AF;

CODE_82F9B3:
    JSL.L CODE_848EEA                    ;82F9B3;
    RTS                                  ;82F9B7;

CODE_82F9B8:
    REP #$10                             ;82F9B8;
    LDA.L $7F835C                        ;82F9BA;
    ORA.B #$02                           ;82F9BE;
    STA.L $7F835C                        ;82F9C0;
    LDX.B $0C                            ;82F9C4;
    LDA.W $0027,X                        ;82F9C6;
    BNE CODE_82F9CF                      ;82F9C9;
    JML.L CODE_828398                    ;82F9CB;

CODE_82F9CF:
    LDA.W $0B9C                          ;82F9CF;
    LSR A                                ;82F9D2;
    BCC CODE_82F9D9                      ;82F9D3;
    JML.L CODE_8280B4                    ;82F9D5;

CODE_82F9D9:
    RTL                                  ;82F9D9;

CODE_82F9DA:
    LDX.B $01                            ;82F9DA;
    BNE CODE_82FA44                      ;82F9DC;
    REP #$30                             ;82F9DE;
    LDX.W #$1928                         ;82F9E0;

CODE_82F9E3:
    LDA.W $0000,X                        ;82F9E3;
    BEQ CODE_82F9FC                      ;82F9E6;
    TDC                                  ;82F9E8;
    STA.W $0000                          ;82F9E9;
    CPX.W $0000                          ;82F9EC;
    BEQ CODE_82F9FC                      ;82F9EF;
    LDA.W $000A,X                        ;82F9F1;
    CMP.B $0A                            ;82F9F4;
    BNE CODE_82F9FC                      ;82F9F6;
    JML.L CODE_828387                    ;82F9F8;

CODE_82F9FC:
    TXA                                  ;82F9FC;
    CLC                                  ;82F9FD;
    ADC.W #$0020                         ;82F9FE;
    TAX                                  ;82FA01;
    CMP.W #$1D08                         ;82FA02;
    BCC CODE_82F9E3                      ;82FA05;
    SEP #$30                             ;82FA07;
    LDA.B #$80                           ;82FA09;
    TSB.B $00                            ;82FA0B;
    INC.B $01                            ;82FA0D;
    STZ.W $0000                          ;82FA0F;
    LDA.W $00D2                          ;82FA12;
    CMP.B #$02                           ;82FA15;
    BEQ CODE_82FA3A                      ;82FA17;
    LDA.W $1F7A                          ;82FA19;
    CMP.B #$04                           ;82FA1C;
    BEQ CODE_82FA30                      ;82FA1E;
    CMP.B #$06                           ;82FA20;
    BNE CODE_82FA3A                      ;82FA22;
    BIT.W $1F90                          ;82FA24;
    BVC CODE_82FA3A                      ;82FA27;
    LDA.B #$0E                           ;82FA29;
    STA.W $0000                          ;82FA2B;
    BRA CODE_82FA3A                      ;82FA2E;

CODE_82FA30:
    BIT.W $1F96                          ;82FA30;
    BVC CODE_82FA3A                      ;82FA33;
    LDA.B #$0A                           ;82FA35;
    STA.W $0000                          ;82FA37;

CODE_82FA3A:
    LDA.B $0B                            ;82FA3A;
    CLC                                  ;82FA3C;
    ADC.W $0000                          ;82FA3D;
    JML.L CODE_848F7D                    ;82FA40;

CODE_82FA44:
    LDA.W $0BCF                          ;82FA44;
    AND.B #$7F                           ;82FA47;
    BEQ CODE_82FA65                      ;82FA49;
    REP #$30                             ;82FA4B;
    LDA.B $0B                            ;82FA4D;
    AND.W #$00FF                         ;82FA4F;
    ASL A                                ;82FA52;
    TAX                                  ;82FA53;
    LDA.W $0BAD                          ;82FA54;
    CMP.W DATA8_86E324,X                 ;82FA57;
    BCC CODE_82FA66                      ;82FA5A;
    CMP.W DATA8_86E360,X                 ;82FA5C;
    BCS CODE_82FA65                      ;82FA5F;
    JML.L CODE_848F52                    ;82FA61;

CODE_82FA65:
    RTL                                  ;82FA65;

CODE_82FA66:
    JML.L CODE_828387                    ;82FA66;

CODE_82FA6A:
    LDX.B $01                            ;82FA6A;
    JMP.W (PTR16_82FA6F,X)               ;82FA6C;

PTR16_82FA6F:
    dw CODE_82FA75                       ;82FA6F;
    dw CODE_82FA91                       ;82FA71;
    dw CODE_82FAE6                       ;82FA73;

CODE_82FA75:
    LDA.B #$02                           ;82FA75;
    STA.B $01                            ;82FA77;
    LDA.B #$02                           ;82FA79;
    STA.B $12                            ;82FA7B;
    STZ.B $18                            ;82FA7D;
    LDA.L $7F8325                        ;82FA7F;
    STA.B $11                            ;82FA83;
    REP #$20                             ;82FA85;
    STZ.B $1A                            ;82FA87;
    STZ.B $1E                            ;82FA89;
    SEP #$20                             ;82FA8B;
    LDA.B #$26                           ;82FA8D;
    STA.B $16                            ;82FA8F;

CODE_82FA91:
    LDX.B $02                            ;82FA91;
    JSR.W (PTR16_82FA9A,X)               ;82FA93;
    JML.L CODE_8280B4                    ;82FA96;

PTR16_82FA9A:
    dw CODE_82FA9E                       ;82FA9A;
    dw CODE_82FAD3                       ;82FA9C;

CODE_82FA9E:
    LDA.B #$02                           ;82FA9E;
    STA.B $02                            ;82FAA0;
    REP #$20                             ;82FAA2;
    JSL.L CODE_849086                    ;82FAA4;
    AND.W #$07FF                         ;82FAA8;
    STA.W $0000                          ;82FAAB;
    LDA.B $0B                            ;82FAAE;
    AND.W #$00FF                         ;82FAB0;
    ASL A                                ;82FAB3;
    TAX                                  ;82FAB4;
    LDA.W DATA8_86E3EA,X                 ;82FAB5;
    SEC                                  ;82FAB8;
    SBC.W $0000                          ;82FAB9;
    STA.B $1C                            ;82FABC;
    LDA.B $08                            ;82FABE;
    CLC                                  ;82FAC0;
    ADC.W #$0028                         ;82FAC1;
    STA.B $0C                            ;82FAC4;
    LDA.W #$0040                         ;82FAC6;
    STA.B $1E                            ;82FAC9;
    SEP #$20                             ;82FACB;
    LDA.B #$03                           ;82FACD;
    JSL.L CODE_848F07                    ;82FACF;

CODE_82FAD3:
    REP #$20                             ;82FAD3;
    LDA.B $08                            ;82FAD5;
    CMP.B $0C                            ;82FAD7;
    SEP #$20                             ;82FAD9;
    BCC CODE_82FAE1                      ;82FADB;
    LDA.B #$04                           ;82FADD;
    STA.B $01                            ;82FADF;

CODE_82FAE1:
    JSL.L CODE_828174                    ;82FAE1;
    RTS                                  ;82FAE5;

CODE_82FAE6:
    JML.L CODE_828398                    ;82FAE6;

CODE_82FAEA:
    LDX.B $01                            ;82FAEA;
    BNE CODE_82FB0F                      ;82FAEC;
    LDA.B #$02                           ;82FAEE;
    STA.B $01                            ;82FAF0;
    LDA.B #$04                           ;82FAF2;
    STA.B $12                            ;82FAF4;
    LDA.L $7F838F                        ;82FAF6;
    STA.B $11                            ;82FAFA;
    LDA.L $7F828F                        ;82FAFC;
    STA.B $18                            ;82FB00;
    LDA.B #$9B                           ;82FB02;
    STA.B $16                            ;82FB04;
    LDA.B $0B                            ;82FB06;
    CLC                                  ;82FB08;
    ADC.B #$05                           ;82FB09;
    JSL.L CODE_848F07                    ;82FB0B;

CODE_82FB0F:
    JSL.L CODE_848EEA                    ;82FB0F;
    LDA.B $0F                            ;82FB13;
    BPL CODE_82FB1B                      ;82FB15;
    JML.L CODE_828398                    ;82FB17;

CODE_82FB1B:
    REP #$30                             ;82FB1B;
    LDX.B $0C                            ;82FB1D;
    LDA.W $0005,X                        ;82FB1F;
    STA.B $05                            ;82FB22;
    LDA.W $0008,X                        ;82FB24;
    STA.B $08                            ;82FB27;
    SEP #$30                             ;82FB29;
    JML.L CODE_8280B4                    ;82FB2B;

CODE_82FB2F:
    LDX.B $01                            ;82FB2F;
    BNE CODE_82FB51                      ;82FB31;
    REP #$20                             ;82FB33;
    LDA.W $0BAD                          ;82FB35;
    CMP.W #$1B60                         ;82FB38;
    BCC CODE_82FB50                      ;82FB3B;
    LDA.W #$1B40                         ;82FB3D;
    STA.W $1E5E                          ;82FB40;
    LDA.W #$1D00                         ;82FB43;
    STA.W $1E60                          ;82FB46;
    LDX.B #$02                           ;82FB49;
    STX.W $1F81                          ;82FB4B;
    INC.B $01                            ;82FB4E;

CODE_82FB50:
    RTL                                  ;82FB50;

CODE_82FB51:
    REP #$10                             ;82FB51;
    LDX.W $1E4D                          ;82FB53;
    CPX.W #$1AE0                         ;82FB56;
    BCC CODE_82FB50                      ;82FB59;
    JSL.L CODE_828321                    ;82FB5B;
    BNE CODE_82FB50                      ;82FB5F;
    INC.W $0000,X                        ;82FB61;
    LDA.B #$1A                           ;82FB64;
    STA.W $000A,X                        ;82FB66;
    JML.L CODE_828398                    ;82FB69;

CODE_82FB6D:
    LDX.B $01                            ;82FB6D;
    JSR.W (PTR16_82FB7D,X)               ;82FB6F;
    LDX.B #$00                           ;82FB72;
    LDY.B #$00                           ;82FB74;
    JSL.L CODE_82FC41                    ;82FB76;
    JMP.W CODE_82FC73                    ;82FB7A;

PTR16_82FB7D:
    dw CODE_82FB85                       ;82FB7D;
    dw CODE_82FBA0                       ;82FB7F;
    dw CODE_82FBED                       ;82FB81;
    dw CODE_82FBF6                       ;82FB83;

CODE_82FB85:
    LDA.B #$02                           ;82FB85;
    STA.B $01                            ;82FB87;
    LDA.B #$01                           ;82FB89;
    STA.B $03                            ;82FB8B;
    LDA.B $0B                            ;82FB8D;
    BEQ CODE_82FB97                      ;82FB8F;
    LDA.B #$04                           ;82FB91;
    STA.B $02                            ;82FB93;
    BRA CODE_82FB9B                      ;82FB95;

CODE_82FB97:
    LDA.B #$06                           ;82FB97;
    STA.B $02                            ;82FB99;

CODE_82FB9B:
    LDA.B #$01                           ;82FB9B;
    STA.B $0F                            ;82FB9D;
    RTS                                  ;82FB9F;

CODE_82FBA0:
    LDX.B #$00                           ;82FBA0;
    LDY.B #$00                           ;82FBA2;
    JSL.L CODE_82FC41                    ;82FBA4;
    BEQ CODE_82FBAD                      ;82FBA8;
    JMP.W CODE_82FBEC                    ;82FBAA;

CODE_82FBAD:
    LDA.B $02                            ;82FBAD;
    BEQ CODE_82FBEC                      ;82FBAF;
    LDA.B $0B                            ;82FBB1;
    BEQ CODE_82FBBD                      ;82FBB3;
    LDA.B $02                            ;82FBB5;
    CMP.B #$04                           ;82FBB7;
    BNE CODE_82FBDD                      ;82FBB9;
    BRA CODE_82FBC3                      ;82FBBB;

CODE_82FBBD:
    LDA.B $02                            ;82FBBD;
    CMP.B #$06                           ;82FBBF;
    BNE CODE_82FBDD                      ;82FBC1;

CODE_82FBC3:
    DEC.B $03                            ;82FBC3;
    BNE CODE_82FBEC                      ;82FBC5;
    LDA.B #$80                           ;82FBC7;
    STA.B $03                            ;82FBC9;
    JSL.L CODE_849086                    ;82FBCB;
    AND.B #$0F                           ;82FBCF;
    CMP.B #$0D                           ;82FBD1;
    BPL CODE_82FBDD                      ;82FBD3;
    DEC.B $0F                            ;82FBD5;
    BNE CODE_82FBEC                      ;82FBD7;
    LDA.B #$03                           ;82FBD9;
    STA.B $0F                            ;82FBDB;

CODE_82FBDD:
    LDA.B #$04                           ;82FBDD;
    STA.B $01                            ;82FBDF;
    JSR.W CODE_82FC7E                    ;82FBE1;
    LDA.B #$24                           ;82FBE4;
    STA.B $03                            ;82FBE6;
    BRA CODE_82FBEC                      ;82FBE8;
    DEC.B $0F                            ;82FBEA;

CODE_82FBEC:
    RTS                                  ;82FBEC;

CODE_82FBED:
    DEC.B $03                            ;82FBED;
    BNE CODE_82FBF5                      ;82FBEF;
    LDA.B #$06                           ;82FBF1;
    STA.B $01                            ;82FBF3;

CODE_82FBF5:
    RTS                                  ;82FBF5;

CODE_82FBF6:
    JSL.L CODE_828321                    ;82FBF6;
    BNE CODE_82FC28                      ;82FBFA;
    DEC.B $02                            ;82FBFC;
    DEC.B $02                            ;82FBFE;
    LDA.B $02                            ;82FC00;
    STA.W $0033,X                        ;82FC02;
    REP #$20                             ;82FC05;
    TDC                                  ;82FC07;
    STA.W $000C,X                        ;82FC08;
    LDA.B $05                            ;82FC0B;
    STA.W $0005,X                        ;82FC0D;
    LDA.B $08                            ;82FC10;
    STA.W $0008,X                        ;82FC12;
    SEP #$20                             ;82FC15;
    LDA.B #$1C                           ;82FC17;
    STA.W $000A,X                        ;82FC19;
    INC.W $0000,X                        ;82FC1C;
    LDA.B $0B                            ;82FC1F;
    STA.W $000B,X                        ;82FC21;
    LDA.B $02                            ;82FC24;
    BNE CODE_82FBF6                      ;82FC26;

CODE_82FC28:
    SEP #$10                             ;82FC28;
    LDA.B #$3C                           ;82FC2A;
    STA.B $03                            ;82FC2C;
    LDA.B $0B                            ;82FC2E;
    BEQ CODE_82FC38                      ;82FC30;
    LDA.B #$04                           ;82FC32;
    STA.B $02                            ;82FC34;
    BRA CODE_82FC3C                      ;82FC36;

CODE_82FC38:
    LDA.B #$06                           ;82FC38;
    STA.B $02                            ;82FC3A;

CODE_82FC3C:
    LDA.B #$02                           ;82FC3C;
    STA.B $01                            ;82FC3E;
    RTS                                  ;82FC40;

CODE_82FC41:
    REP #$20                             ;82FC41;
    LDA.B $05                            ;82FC43;
    SEC                                  ;82FC45;
    SBC.W $0BAD                          ;82FC46;
    BCS CODE_82FC4F                      ;82FC49;
    EOR.W #$FFFF                         ;82FC4B;
    INC A                                ;82FC4E;

CODE_82FC4F:
    CMP.W DATA8_86E47B,X                 ;82FC4F;
    BCS CODE_82FC6E                      ;82FC52;
    CPY.B #$00                           ;82FC54;
    BEQ CODE_82FC69                      ;82FC56;
    LDA.B $08                            ;82FC58;
    SEC                                  ;82FC5A;
    SBC.W $0BB0                          ;82FC5B;
    BCS CODE_82FC64                      ;82FC5E;
    EOR.W #$FFFF                         ;82FC60;
    INC A                                ;82FC63;

CODE_82FC64:
    CMP.W DATA8_86E47B,X                 ;82FC64;
    BCS CODE_82FC6E                      ;82FC67;

CODE_82FC69:
    SEP #$20                             ;82FC69;
    LDA.B #$00                           ;82FC6B;
    RTL                                  ;82FC6D;

CODE_82FC6E:
    SEP #$20                             ;82FC6E;
    LDA.B #$01                           ;82FC70;
    RTL                                  ;82FC72;

CODE_82FC73:
    JSL.L CODE_82806E                    ;82FC73;
    BCC CODE_82FC7D                      ;82FC77;
    JML.L CODE_828387                    ;82FC79;

CODE_82FC7D:
    RTL                                  ;82FC7D;

CODE_82FC7E:
    REP #$10                             ;82FC7E;
    JSL.L CODE_8282D3                    ;82FC80;
    BNE CODE_82FCA6                      ;82FC84;
    INC.W $0000,X                        ;82FC86;
    LDA.B #$17                           ;82FC89;
    STA.W $000A,X                        ;82FC8B;
    LDA.B #$01                           ;82FC8E;
    STA.W $000B,X                        ;82FC90;
    LDA.B $11                            ;82FC93;
    AND.B #$40                           ;82FC95;
    STA.W $0011,X                        ;82FC97;
    REP #$20                             ;82FC9A;
    LDA.B $05                            ;82FC9C;
    STA.W $0005,X                        ;82FC9E;
    LDA.B $08                            ;82FCA1;
    STA.W $0008,X                        ;82FCA3;

CODE_82FCA6:
    SEP #$30                             ;82FCA6;
    RTS                                  ;82FCA8;

CODE_82FCA9:
    LDA.B $01                            ;82FCA9;
    BNE CODE_82FCBE                      ;82FCAB;
    INC.B $01                            ;82FCAD;
    STZ.B $06                            ;82FCAF;
    LDX.B #$00                           ;82FCB1;
    LDA.W DATA8_86E47F,X                 ;82FCB3;
    STA.W $1F2D                          ;82FCB6;
    LDA.W DATA8_86E480                   ;82FCB9;
    STA.B $07                            ;82FCBC;

CODE_82FCBE:
    REP #$20                             ;82FCBE;
    LDA.W $1E50                          ;82FCC0;
    SEC                                  ;82FCC3;
    SBC.W $1F2D                          ;82FCC4;
    SEC                                  ;82FCC7;
    SBC.W #$00B0                         ;82FCC8;
    STA.B $04                            ;82FCCB;
    BMI CODE_82FCDB                      ;82FCCD;
    CMP.W #$0100                         ;82FCCF;
    BCC CODE_82FCDD                      ;82FCD2;
    LDA.W #$0100                         ;82FCD4;
    STA.B $04                            ;82FCD7;
    BRA CODE_82FCDD                      ;82FCD9;

CODE_82FCDB:
    STZ.B $04                            ;82FCDB;

CODE_82FCDD:
    LDA.B $04                            ;82FCDD;
    STA.W $00BE                          ;82FCDF;
    SEP #$30                             ;82FCE2;
    BRA CODE_82FD02                      ;82FCE4;
    DEC.B $07                            ;82FCE6;
    BNE CODE_82FD02                      ;82FCE8;
    LDX.B $06                            ;82FCEA;
    INX                                  ;82FCEC;
    INX                                  ;82FCED;
    LDA.W DATA8_86E47F,X                 ;82FCEE;
    BPL CODE_82FCF8                      ;82FCF1;
    LDX.B #$00                           ;82FCF3;
    LDA.W DATA8_86E47F,X                 ;82FCF5;

CODE_82FCF8:
    STA.W $1F2D                          ;82FCF8;
    LDA.W DATA8_86E480,X                 ;82FCFB;
    STA.B $07                            ;82FCFE;
    STX.B $06                            ;82FD00;

CODE_82FD02:
    RTL                                  ;82FD02;

CODE_82FD03:
    LDA.B $01                            ;82FD03;
    BNE CODE_82FD19                      ;82FD05;
    LDA.W $0BCF                          ;82FD07;
    AND.B #$7F                           ;82FD0A;
    BNE CODE_82FD14                      ;82FD0C;
    INC.B $01                            ;82FD0E;
    LDA.B #$3C                           ;82FD10;
    STA.B $09                            ;82FD12;

CODE_82FD14:
    JSR.W CODE_82FD4B                    ;82FD14;
    BRA CODE_82FD2E                      ;82FD17;

CODE_82FD19:
    LDA.B $09                            ;82FD19;
    BEQ CODE_82FD21                      ;82FD1B;
    DEC.B $09                            ;82FD1D;
    BRA CODE_82FD2E                      ;82FD1F;

CODE_82FD21:
    LDA.W $0B9C                          ;82FD21;
    AND.B #$03                           ;82FD24;
    BNE CODE_82FD2E                      ;82FD26;
    DEC.B $0B                            ;82FD28;
    BPL CODE_82FD2E                      ;82FD2A;
    STZ.B $0B                            ;82FD2C;

CODE_82FD2E:
    LDA.B $0B                            ;82FD2E;
    CMP.B $04                            ;82FD30;
    BEQ CODE_82FD46                      ;82FD32;
    STZ.B $05                            ;82FD34;
    STZ.B $06                            ;82FD36;
    LDA.B $0B                            ;82FD38;
    STA.W $00CB                          ;82FD3A;
    STA.W $00CC                          ;82FD3D;
    LDA.B $0B                            ;82FD40;
    LSR A                                ;82FD42;
    STA.W $00CD                          ;82FD43;

CODE_82FD46:
    LDA.B $0B                            ;82FD46;
    STA.B $04                            ;82FD48;
    RTL                                  ;82FD4A;

CODE_82FD4B:
    REP #$20                             ;82FD4B;
    STZ.B $05                            ;82FD4D;
    LDX.B #$00                           ;82FD4F;

CODE_82FD51:
    LDA.W DATA8_86E4BC,X                 ;82FD51;
    CMP.W $1E4D                          ;82FD54;
    BEQ CODE_82FD63                      ;82FD57;
    BCS CODE_82FD69                      ;82FD59;
    STA.B $05                            ;82FD5B;
    INX                                  ;82FD5D;
    INX                                  ;82FD5E;
    CPX.B #$20                           ;82FD5F;
    BCC CODE_82FD51                      ;82FD61;

CODE_82FD63:
    LDX.B #$00                           ;82FD63;
    STX.B $0B                            ;82FD65;
    BRA CODE_82FDC3                      ;82FD67;

CODE_82FD69:
    STA.B $07                            ;82FD69;
    SEC                                  ;82FD6B;
    SBC.W $1E4D                          ;82FD6C;
    BCS CODE_82FD75                      ;82FD6F;
    EOR.W #$FFFF                         ;82FD71;
    INC A                                ;82FD74;

CODE_82FD75:
    STA.B $07                            ;82FD75;
    LDA.B $05                            ;82FD77;
    SEC                                  ;82FD79;
    SBC.W $1E4D                          ;82FD7A;
    BCS CODE_82FD83                      ;82FD7D;
    EOR.W #$FFFF                         ;82FD7F;
    INC A                                ;82FD82;

CODE_82FD83:
    CMP.B $07                            ;82FD83;
    BCC CODE_82FD98                      ;82FD85;
    LDA.B $07                            ;82FD87;
    BRA CODE_82FD98                      ;82FD89;
    LDA.W $1E4D                          ;82FD8B;
    SEC                                  ;82FD8E;
    SBC.W DATA8_86E4BC                   ;82FD8F;
    BCS CODE_82FD98                      ;82FD92;
    EOR.W #$FFFF                         ;82FD94;
    INC A                                ;82FD97;

CODE_82FD98:
    CMP.W #$0040                         ;82FD98;
    BCS CODE_82FDA2                      ;82FD9B;
    LDA.W #$0000                         ;82FD9D;
    BRA CODE_82FDA6                      ;82FDA0;

CODE_82FDA2:
    SEC                                  ;82FDA2;
    SBC.W #$0040                         ;82FDA3;

CODE_82FDA6:
    STA.W $4204                          ;82FDA6;
    SEP #$20                             ;82FDA9;
    LDA.B #$0C                           ;82FDAB;
    STA.W $4206                          ;82FDAD;
    NOP                                  ;82FDB0;
    NOP                                  ;82FDB1;
    NOP                                  ;82FDB2;
    NOP                                  ;82FDB3;
    NOP                                  ;82FDB4;
    NOP                                  ;82FDB5;
    NOP                                  ;82FDB6;
    NOP                                  ;82FDB7;
    LDA.W $4214                          ;82FDB8;
    CMP.B #$07                           ;82FDBB;
    BCC CODE_82FDC1                      ;82FDBD;
    LDA.B #$07                           ;82FDBF;

CODE_82FDC1:
    STA.B $0B                            ;82FDC1;

CODE_82FDC3:
    SEP #$30                             ;82FDC3;
    RTS                                  ;82FDC5;

CODE_82FDC6:
    LDX.B $01                            ;82FDC6;
    BNE CODE_82FDD1                      ;82FDC8;
    INC.B $01                            ;82FDCA;
    LDA.B #$78                           ;82FDCC;
    STA.B $0E                            ;82FDCE;
    RTL                                  ;82FDD0;

CODE_82FDD1:
    DEC.B $0E                            ;82FDD1;
    BNE CODE_82FDD9                      ;82FDD3;
    JML.L CODE_828398                    ;82FDD5;

CODE_82FDD9:
    LDA.W $0B9C                          ;82FDD9;
    AND.B #$07                           ;82FDDC;
    BNE CODE_82FE06                      ;82FDDE;
    JSL.L CODE_8282D3                    ;82FDE0;
    BNE CODE_82FE04                      ;82FDE4;
    INC.W $0000,X                        ;82FDE6;
    LDA.B #$20                           ;82FDE9;
    STA.W $000A,X                        ;82FDEB;
    REP #$21                             ;82FDEE;
    LDA.B $08                            ;82FDF0;
    STA.W $0008,X                        ;82FDF2;
    JSL.L CODE_849086                    ;82FDF5;
    AND.W #$001F                         ;82FDF9;
    CLC                                  ;82FDFC;
    ADC.B $05                            ;82FDFD;
    STA.W $0005,X                        ;82FDFF;
    SEP #$20                             ;82FE02;

CODE_82FE04:
    SEP #$10                             ;82FE04;

CODE_82FE06:
    RTL                                  ;82FE06;

CODE_82FE07:
    LDA.B $01                            ;82FE07;
    BNE CODE_82FE18                      ;82FE09;
    INC.B $01                            ;82FE0B;
    LDA.W $1F90                          ;82FE0D;
    AND.B #$40                           ;82FE10;
    BNE CODE_82FE18                      ;82FE12;
    JML.L CODE_828398                    ;82FE14;

CODE_82FE18:
    REP #$20                             ;82FE18;
    LDA.B $05                            ;82FE1A;
    CMP.W $0BAD                          ;82FE1C;
    BCS CODE_82FE3C                      ;82FE1F;
    LDA.W $1E4D                          ;82FE21;
    STA.W $1E60                          ;82FE24;
    STA.W $1E5E                          ;82FE27;
    LDA.W $1E50                          ;82FE2A;
    STA.W $1E6E                          ;82FE2D;
    STA.W $1E68                          ;82FE30;
    SEP #$20                             ;82FE33;
    INC.W $1F23                          ;82FE35;
    JML.L CODE_828398                    ;82FE38;

CODE_82FE3C:
    SEP #$20                             ;82FE3C;
    JSL.L CODE_82806E                    ;82FE3E;
    BCC CODE_82FE48                      ;82FE42;
    JML.L CODE_828387                    ;82FE44;

CODE_82FE48:
    RTL                                  ;82FE48;

CODE_82FE49:
    LDX.B $01                            ;82FE49;
    BNE CODE_82FE53                      ;82FE4B;
    INC.B $01                            ;82FE4D;
    JML.L CODE_84A187                    ;82FE4F;

CODE_82FE53:
    JSL.L CODE_828321                    ;82FE53;
    INC.W $0000,X                        ;82FE57;
    LDA.B #$23                           ;82FE5A;
    STA.W $000A,X                        ;82FE5C;
    LDA.B $0B                            ;82FE5F;
    STA.W $000B,X                        ;82FE61;
    BEQ CODE_82FE6E                      ;82FE64;
    REP #$20                             ;82FE66;
    LDA.W #$04A0                         ;82FE68;
    STA.W $0008,X                        ;82FE6B;

CODE_82FE6E:
    SEP #$30                             ;82FE6E;
    JML.L CODE_828398                    ;82FE70;

CODE_82FE74:
    LDX.B $01                            ;82FE74;
    BNE CODE_82FE7E                      ;82FE76;
    LDA.B #$02                           ;82FE78;
    STA.B $02                            ;82FE7A;
    STZ.B $0F                            ;82FE7C;

CODE_82FE7E:
    JSL.L CODE_82806E                    ;82FE7E;
    BCC CODE_82FE88                      ;82FE82;
    JML.L CODE_828387                    ;82FE84;

CODE_82FE88:
    LDA.B #$02                           ;82FE88;
    STA.B $01                            ;82FE8A;
    LDA.B $02                            ;82FE8C;
    BNE CODE_82FE93                      ;82FE8E;
    JMP.W CODE_82FF17                    ;82FE90;

CODE_82FE93:
    DEC.B $02                            ;82FE93;
    REP #$10                             ;82FE95;
    JSL.L CODE_828321                    ;82FE97;
    BNE CODE_82FF17                      ;82FE9B;
    REP #$20                             ;82FE9D;
    LDA.B $0B                            ;82FE9F;
    AND.W #$00FF                         ;82FEA1;
    BEQ CODE_82FEBF                      ;82FEA4;
    LDA.B $02                            ;82FEA6;
    AND.W #$00FF                         ;82FEA8;
    BEQ CODE_82FEB6                      ;82FEAB;
    LDA.W #$FFE0                         ;82FEAD;
    STA.W $0000                          ;82FEB0;
    JMP.W CODE_82FED5                    ;82FEB3;

CODE_82FEB6:
    LDA.W #$FFD0                         ;82FEB6;
    STA.W $0000                          ;82FEB9;
    JMP.W CODE_82FED5                    ;82FEBC;

CODE_82FEBF:
    LDA.B $02                            ;82FEBF;
    AND.W #$00FF                         ;82FEC1;
    BEQ CODE_82FECF                      ;82FEC4;
    LDA.W #$0020                         ;82FEC6;
    STA.W $0000                          ;82FEC9;
    JMP.W CODE_82FED5                    ;82FECC;

CODE_82FECF:
    LDA.W #$0030                         ;82FECF;
    STA.W $0000                          ;82FED2;

CODE_82FED5:
    LDA.B $02                            ;82FED5;
    AND.W #$00FF                         ;82FED7;
    BEQ CODE_82FEE2                      ;82FEDA;
    STZ.W $0002                          ;82FEDC;
    JMP.W CODE_82FEE8                    ;82FEDF;

CODE_82FEE2:
    LDA.W #$0010                         ;82FEE2;
    STA.W $0002                          ;82FEE5;

CODE_82FEE8:
    LDA.B $05                            ;82FEE8;
    CLC                                  ;82FEEA;
    ADC.W $0000                          ;82FEEB;
    STA.W $0005,X                        ;82FEEE;
    LDA.B $08                            ;82FEF1;
    SEC                                  ;82FEF3;
    SBC.W $0002                          ;82FEF4;
    STA.W $0008,X                        ;82FEF7;
    TDC                                  ;82FEFA;
    STA.W $0036,X                        ;82FEFB;
    SEP #$20                             ;82FEFE;
    LDA.B #$3F                           ;82FF00;
    STA.W $000A,X                        ;82FF02;
    INC.W $0000,X                        ;82FF05;
    LDA.B $02                            ;82FF08;
    STA.W $0038,X                        ;82FF0A;
    LDA.B $0B                            ;82FF0D;
    STA.W $000B,X                        ;82FF0F;
    SEP #$10                             ;82FF12;
    JMP.W CODE_82FE88                    ;82FF14;

CODE_82FF17:
    LDA.B $0F                            ;82FF17;
    BNE CODE_82FF59                      ;82FF19;
    REP #$10                             ;82FF1B;
    JSL.L CODE_8282D3                    ;82FF1D;
    BNE CODE_82FF59                      ;82FF21;
    INC.W $0000,X                        ;82FF23;
    LDA.B #$38                           ;82FF26;
    STA.W $000A,X                        ;82FF28;
    LDA.B #$03                           ;82FF2B;
    STA.W $000B,X                        ;82FF2D;
    LDA.B #$01                           ;82FF30;
    STA.B $0F                            ;82FF32;
    LDA.B #$00                           ;82FF34;
    STA.W $0011,X                        ;82FF36;
    STA.W $000C,X                        ;82FF39;
    LDA.B #$02                           ;82FF3C;
    STA.W $0002,X                        ;82FF3E;
    REP #$20                             ;82FF41;
    LDA.B $05                            ;82FF43;
    SEC                                  ;82FF45;
    SBC.W #$0024                         ;82FF46;
    STA.W $0005,X                        ;82FF49;
    LDA.B $08                            ;82FF4C;
    SEC                                  ;82FF4E;
    SBC.W #$0008                         ;82FF4F;
    STA.W $0008,X                        ;82FF52;
    TDC                                  ;82FF55;
    STA.W $001E,X                        ;82FF56;

CODE_82FF59:
    SEP #$30                             ;82FF59;
    RTL                                  ;82FF5B;

CODE_82FF5C:
    LDA.B $01                            ;82FF5C;
    BNE CODE_82FF77                      ;82FF5E;
    REP #$20                             ;82FF60;
    LDA.B $05                            ;82FF62;
    SEC                                  ;82FF64;
    SBC.W $0BAD                          ;82FF65;
    SEP #$20                             ;82FF68;
    BCC CODE_82FF9F                      ;82FF6A;
    INC.B $01                            ;82FF6C;
    LDA.B #$A6                           ;82FF6E;
    STA.B $03                            ;82FF70;
    LDA.B #$01                           ;82FF72;
    STA.B $02                            ;82FF74;
    RTL                                  ;82FF76;

CODE_82FF77:
    REP #$20                             ;82FF77;
    LDA.W $0BAD                          ;82FF79;
    SEC                                  ;82FF7C;
    SBC.B $05                            ;82FF7D;
    BMI CODE_82FF9E                      ;82FF7F;
    ASL A                                ;82FF81;
    SEP #$20                             ;82FF82;
    LDA.B #$00                           ;82FF84;
    XBA                                  ;82FF86;
    SEC                                  ;82FF87;
    SBC.B $02                            ;82FF88;
    BMI CODE_82FF9E                      ;82FF8A;
    LDY.B $03                            ;82FF8C;
    JSL.L CODE_828011                    ;82FF8E;
    INC.B $03                            ;82FF92;
    INC.B $03                            ;82FF94;
    LDA.B $02                            ;82FF96;
    CMP.B #$09                           ;82FF98;
    BEQ CODE_82FF9F                      ;82FF9A;
    INC.B $02                            ;82FF9C;

CODE_82FF9E:
    RTL                                  ;82FF9E;

CODE_82FF9F:
    JML.L CODE_828398                    ;82FF9F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFA3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFAB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFB3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFBB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFC3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFCB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFD3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFDB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFE3;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFEB;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;82FFF3;
    db $FF,$FF,$FF,$FF,$FF               ;82FFFB;

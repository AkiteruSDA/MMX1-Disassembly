ORG $838000

CODE_838000:
    REP #$20                             ;838000;
    LDA.W $0BDE                          ;838002;
    STA.B $36                            ;838005;
    LDA.W $0BE2                          ;838007;
    STA.B $3A                            ;83800A;
    LDA.B $05                            ;83800C;
    STA.B $22                            ;83800E;
    LDA.B $08                            ;838010;
    STA.B $24                            ;838012;
    SEP #$20                             ;838014;
    LDX.B $01                            ;838016;
    JSR.W (PTR16_838028,X)               ;838018;
    LDA.B #$80                           ;83801B;
    TRB.B $27                            ;83801D;
    LDA.B $11                            ;83801F;
    AND.B #$3F                           ;838021;
    ORA.B $33                            ;838023;
    STA.B $11                            ;838025;
    RTL                                  ;838027;

PTR16_838028:
    dw CODE_83802E                       ;838028;
    dw CODE_83806C                       ;83802A;
    dw CODE_838600                       ;83802C;

CODE_83802E:
    LDA.B #$02                           ;83802E;
    STA.B $01                            ;838030;
    LDA.B #$4A                           ;838032;
    STA.B $16                            ;838034;
    STA.B $30                            ;838036;
    LDA.L $7F8249                        ;838038;
    STA.B $18                            ;83803C;
    LDA.B #$10                           ;83803E;
    STA.B $27                            ;838040;
    LDA.B #$02                           ;838042;
    STA.B $12                            ;838044;
    STZ.B $2F                            ;838046;
    STZ.B $0A                            ;838048;
    STZ.B $10                            ;83804A;
    STZ.B $0C                            ;83804C;
    STZ.B $0D                            ;83804E;
    STZ.B $2C                            ;838050;
    STZ.B $47                            ;838052;
    STZ.B $32                            ;838054;
    STZ.B $26                            ;838056;
    STZ.B $3E                            ;838058;
    STZ.B $0F                            ;83805A;
    STZ.B $1F                            ;83805C;
    LDA.B #$40                           ;83805E;
    STA.B $1E                            ;838060;
    REP #$20                             ;838062;
    LDA.W #$BB4C                         ;838064;
    STA.B $20                            ;838067;
    SEP #$20                             ;838069;
    RTS                                  ;83806B;

CODE_83806C:
    JSR.W CODE_838948                    ;83806C;
    BCC CODE_838076                      ;83806F;
    JSL.L CODE_828398                    ;838071;
    RTS                                  ;838075;

CODE_838076:
    LDA.L $7F8349                        ;838076;
    ORA.B $33                            ;83807A;
    STA.B $11                            ;83807C;
    LDA.B $27                            ;83807E;
    BPL CODE_8380B7                      ;838080;
    CMP.B #$80                           ;838082;
    BNE CODE_8380A0                      ;838084;
    LDA.B #$80                           ;838086;
    TSB.B $0A                            ;838088;
    LDA.B #$1E                           ;83808A;
    STA.B $47                            ;83808C;
    STA.B $32                            ;83808E;
    STZ.B $26                            ;838090;
    LDX.B #$02                           ;838092;
    LDA.B $2B                            ;838094;
    BIT.B #$04                           ;838096;
    BNE CODE_83809C                      ;838098;
    LDX.B #$18                           ;83809A;

CODE_83809C:
    TXA                                  ;83809C;
    JSR.W CODE_8386F1                    ;83809D;

CODE_8380A0:
    LDA.B #$0D                           ;8380A0;
    JSR.W CODE_83CD18                    ;8380A2;
    LDA.B #$09                           ;8380A5;
    JSL.L CODE_8088CD                    ;8380A7;
    LDA.B #$02                           ;8380AB;
    TSB.B $0A                            ;8380AD;
    LDA.B #$02                           ;8380AF;
    STA.B $40                            ;8380B1;
    LDA.B #$0E                           ;8380B3;
    TRB.B $11                            ;8380B5;

CODE_8380B7:
    LDA.B $26                            ;8380B7;
    BEQ CODE_8380CA                      ;8380B9;
    DEC.B $26                            ;8380BB;
    BNE CODE_8380CA                      ;8380BD;
    BIT.B $0A                            ;8380BF;
    BVC CODE_8380CA                      ;8380C1;
    LDA.B #$01                           ;8380C3;
    STA.W $0BB6                          ;8380C5;
    STZ.B $30                            ;8380C8;

CODE_8380CA:
    LDA.B $0A                            ;8380CA;
    AND.B #$41                           ;8380CC;
    CMP.B #$41                           ;8380CE;
    BNE CODE_8380DB                      ;8380D0;
    LDA.B #$01                           ;8380D2;
    TRB.B $0A                            ;8380D4;
    LDA.B #$16                           ;8380D6;
    JSR.W CODE_8386F1                    ;8380D8;

CODE_8380DB:
    JSR.W CODE_83875B                    ;8380DB;
    JSR.W CODE_83879E                    ;8380DE;
    LDX.B $02                            ;8380E1;
    JSR.W (PTR16_83810F,X)               ;8380E3;
    JSR.W CODE_8388C4                    ;8380E6;
    JSL.L CODE_8491BE                    ;8380E9;
    BIT.B $0A                            ;8380ED;
    BVC CODE_8380F4                      ;8380EF;
    JSR.W CODE_838747                    ;8380F1;

CODE_8380F4:
    JSR.W CODE_838810                    ;8380F4;
    JSR.W CODE_838824                    ;8380F7;
    LDA.B $0A                            ;8380FA;
    BIT.B #$04                           ;8380FC;
    BNE CODE_838109                      ;8380FE;
    LDA.B $26                            ;838100;
    LSR A                                ;838102;
    BCS CODE_838109                      ;838103;
    JSL.L CODE_82808F                    ;838105;

CODE_838109:
    JSR.W CODE_83884C                    ;838109;
    JMP.W CODE_8387BB                    ;83810C;

PTR16_83810F:
    dw CODE_838129                       ;83810F;
    dw CODE_838188                       ;838111;
    dw CODE_8381DD                       ;838113;
    dw CODE_838247                       ;838115;
    dw CODE_83826F                       ;838117;
    dw CODE_8382D9                       ;838119;
    dw CODE_838350                       ;83811B;
    dw CODE_8383BB                       ;83811D;
    dw CODE_838437                       ;83811F;
    dw CODE_83848D                       ;838121;
    dw CODE_8384DD                       ;838123;
    dw CODE_83850A                       ;838125;
    dw CODE_83857C                       ;838127;

CODE_838129:
    LDX.B $03                            ;838129;
    BNE CODE_83813F                      ;83812B;
    INC.B $03                            ;83812D;
    REP #$20                             ;83812F;
    LDA.W #$BB4C                         ;838131;
    STA.B $20                            ;838134;
    SEP #$20                             ;838136;
    LDA.B #$09                           ;838138;
    JSL.L CODE_848F07                    ;83813A;
    RTS                                  ;83813E;

CODE_83813F:
    LDA.B $2B                            ;83813F;
    BIT.B #$04                           ;838141;
    BNE CODE_83814A                      ;838143;
    LDA.B #$18                           ;838145;
    JMP.W CODE_8386F1                    ;838147;

CODE_83814A:
    LDA.B $0A                            ;83814A;
    BMI CODE_838187                      ;83814C;
    BIT.B #$02                           ;83814E;
    BNE CODE_838187                      ;838150;
    REP #$10                             ;838152;
    LDX.W #$0BA8                         ;838154;
    JSL.L CODE_849C0E                    ;838157;
    SEP #$10                             ;83815B;
    BCC CODE_838187                      ;83815D;
    LDA.W $1F9E                          ;83815F;
    BMI CODE_838187                      ;838162;
    LDA.W $1F23                          ;838164;
    BNE CODE_838187                      ;838167;
    LDA.W $0BCF                          ;838169;
    AND.B #$7F                           ;83816C;
    BEQ CODE_838187                      ;83816E;
    LDA.B #$14                           ;838170;
    STA.B $02                            ;838172;
    STZ.B $03                            ;838174;
    REP #$20                             ;838176;
    LDA.W #$BB42                         ;838178;
    STA.B $20                            ;83817B;
    SEP #$20                             ;83817D;
    LDA.B #$09                           ;83817F;
    JSR.W CODE_8386EA                    ;838181;
    JSR.W CODE_838605                    ;838184;

CODE_838187:
    RTS                                  ;838187;

CODE_838188:
    LDX.B $03                            ;838188;
    BNE CODE_8381A1                      ;83818A;
    INC.B $03                            ;83818C;
    LDA.B #$78                           ;83818E;
    STA.B $34                            ;838190;
    LDA.B #$01                           ;838192;
    STA.B $35                            ;838194;
    LDA.B #$00                           ;838196;
    JSR.W CODE_8386EA                    ;838198;
    LDA.B #$00                           ;83819B;
    JSL.L CODE_848F07                    ;83819D;

CODE_8381A1:
    JSR.W CODE_8386DF                    ;8381A1;
    BEQ CODE_8381AB                      ;8381A4;
    LDA.B #$16                           ;8381A6;
    JMP.W CODE_8386F1                    ;8381A8;

CODE_8381AB:
    LDA.B $2B                            ;8381AB;
    BIT.B #$04                           ;8381AD;
    BNE CODE_8381B6                      ;8381AF;
    LDA.B #$18                           ;8381B1;
    JMP.W CODE_8386F1                    ;8381B3;

CODE_8381B6:
    LDA.B $0A                            ;8381B6;
    BMI CODE_8381DC                      ;8381B8;
    BIT.B #$02                           ;8381BA;
    BNE CODE_8381DC                      ;8381BC;
    JSR.W CODE_838735                    ;8381BE;
    BEQ CODE_8381C8                      ;8381C1;
    LDA.B #$04                           ;8381C3;
    JMP.W CODE_8386F1                    ;8381C5;

CODE_8381C8:
    LDA.B $3B                            ;8381C8;
    BIT.B #$80                           ;8381CA;
    BEQ CODE_8381D3                      ;8381CC;
    LDA.B #$08                           ;8381CE;
    JMP.W CODE_8386F1                    ;8381D0;

CODE_8381D3:
    BIT.B #$40                           ;8381D3;
    BEQ CODE_8381DC                      ;8381D5;
    LDA.B #$06                           ;8381D7;
    JMP.W CODE_8386F1                    ;8381D9;

CODE_8381DC:
    RTS                                  ;8381DC;

CODE_8381DD:
    LDX.B $03                            ;8381DD;
    BNE CODE_8381F6                      ;8381DF;
    INC.B $03                            ;8381E1;
    LDA.B #$78                           ;8381E3;
    STA.B $34                            ;8381E5;
    LDA.B #$01                           ;8381E7;
    STA.B $35                            ;8381E9;
    LDA.B #$01                           ;8381EB;
    JSR.W CODE_8386EA                    ;8381ED;
    LDA.B #$01                           ;8381F0;
    JSL.L CODE_848F07                    ;8381F2;

CODE_8381F6:
    JSR.W CODE_8386DF                    ;8381F6;
    BEQ CODE_838200                      ;8381F9;
    LDA.B #$16                           ;8381FB;
    JMP.W CODE_8386F1                    ;8381FD;

CODE_838200:
    LDA.B $2B                            ;838200;
    BIT.B #$04                           ;838202;
    BNE CODE_83820B                      ;838204;
    LDA.B #$18                           ;838206;
    JMP.W CODE_8386F1                    ;838208;

CODE_83820B:
    LDA.B $0A                            ;83820B;
    BIT.B #$02                           ;83820D;
    BNE CODE_838236                      ;83820F;
    JSR.W CODE_838735                    ;838211;
    BNE CODE_83821B                      ;838214;
    LDA.B #$02                           ;838216;
    JMP.W CODE_8386F1                    ;838218;

CODE_83821B:
    LDA.B $3B                            ;83821B;
    BIT.B #$80                           ;83821D;
    BEQ CODE_838226                      ;83821F;
    LDA.B #$08                           ;838221;
    JMP.W CODE_8386F1                    ;838223;

CODE_838226:
    BIT.B #$40                           ;838226;
    BEQ CODE_83822F                      ;838228;
    LDA.B #$06                           ;83822A;
    JMP.W CODE_8386F1                    ;83822C;

CODE_83822F:
    JSR.W CODE_8386F6                    ;83822F;
    JSL.L CODE_82823E                    ;838232;

CODE_838236:
    JSL.L CODE_848EEA                    ;838236;
    LDA.B $0F                            ;83823A;
    AND.B #$03                           ;83823C;
    BEQ CODE_838246                      ;83823E;
    ORA.B #$38                           ;838240;
    JSL.L CODE_8088CD                    ;838242;

CODE_838246:
    RTS                                  ;838246;

CODE_838247:
    LDX.B $03                            ;838247;
    BNE CODE_838261                      ;838249;
    INC.B $03                            ;83824B;
    LDA.B #$19                           ;83824D;
    JSR.W CODE_838933                    ;83824F;
    INC A                                ;838252;
    STA.W $1F0D                          ;838253;
    LDA.B #$02                           ;838256;
    JSR.W CODE_8386EA                    ;838258;
    LDA.B #$02                           ;83825B;
    JSL.L CODE_848F07                    ;83825D;

CODE_838261:
    LDA.B $0F                            ;838261;
    BPL CODE_83826A                      ;838263;
    LDA.B #$02                           ;838265;
    JMP.W CODE_8386F1                    ;838267;

CODE_83826A:
    JSL.L CODE_848EEA                    ;83826A;
    RTS                                  ;83826E;

CODE_83826F:
    LDX.B $03                            ;83826F;
    BNE CODE_83829D                      ;838271;
    INC.B $03                            ;838273;
    REP #$20                             ;838275;
    STZ.B $1A                            ;838277;
    LDA.W #$0553                         ;838279;
    STA.B $1C                            ;83827C;
    LDA.W #$0040                         ;83827E;
    STA.B $1E                            ;838281;
    SEP #$20                             ;838283;
    LDA.B #$0C                           ;838285;
    JSR.W CODE_83CD18                    ;838287;
    INC.B $2F                            ;83828A;
    LDA.B #$38                           ;83828C;
    JSL.L CODE_8088CD                    ;83828E;
    LDA.B #$03                           ;838292;
    JSR.W CODE_8386EA                    ;838294;
    LDA.B #$03                           ;838297;
    JSL.L CODE_848F07                    ;838299;

CODE_83829D:
    LDA.B $3B                            ;83829D;
    BIT.B #$40                           ;83829F;
    BEQ CODE_8382A8                      ;8382A1;
    LDA.B #$0C                           ;8382A3;
    JMP.W CODE_8386F1                    ;8382A5;

CODE_8382A8:
    JSR.W CODE_8386DF                    ;8382A8;
    BEQ CODE_8382B2                      ;8382AB;
    LDA.B #$16                           ;8382AD;
    JMP.W CODE_8386F1                    ;8382AF;

CODE_8382B2:
    LDA.B $0A                            ;8382B2;
    BIT.B #$02                           ;8382B4;
    BNE CODE_8382D8                      ;8382B6;
    STZ.B $1A                            ;8382B8;
    STZ.B $1B                            ;8382BA;
    JSR.W CODE_838707                    ;8382BC;
    LDA.B $2B                            ;8382BF;
    BIT.B #$08                           ;8382C1;
    BNE CODE_8382CF                      ;8382C3;
    LDA.B $1D                            ;8382C5;
    BMI CODE_8382CF                      ;8382C7;
    LDA.B $37                            ;8382C9;
    BIT.B #$80                           ;8382CB;
    BNE CODE_8382D4                      ;8382CD;

CODE_8382CF:
    LDA.B #$18                           ;8382CF;
    JMP.W CODE_8386F1                    ;8382D1;

CODE_8382D4:
    JSL.L CODE_828174                    ;8382D4;

CODE_8382D8:
    RTS                                  ;8382D8;

CODE_8382D9:
    LDX.B $03                            ;8382D9;
    BNE CODE_83830E                      ;8382DB;
    INC.B $03                            ;8382DD;
    STZ.B $2F                            ;8382DF;
    LDA.B #$78                           ;8382E1;
    STA.B $34                            ;8382E3;
    LDA.B #$01                           ;8382E5;
    STA.B $35                            ;8382E7;
    LDX.B #$02                           ;8382E9;
    LDY.B #$01                           ;8382EB;
    LDA.B #$0A                           ;8382ED;
    JSL.L CODE_84A33C                    ;8382EF;
    JSR.W CODE_83CD41                    ;8382F3;
    JSR.W CODE_83CD6C                    ;8382F6;
    LDA.B #$39                           ;8382F9;
    JSL.L CODE_8088CD                    ;8382FB;
    LDA.B #$04                           ;8382FF;
    JSR.W CODE_8386EA                    ;838301;
    LDA.B #$04                           ;838304;
    JSL.L CODE_848F07                    ;838306;
    LDA.B #$04                           ;83830A;
    TSB.B $2B                            ;83830C;

CODE_83830E:
    JSR.W CODE_8386DF                    ;83830E;
    BEQ CODE_838318                      ;838311;
    LDA.B #$16                           ;838313;
    JMP.W CODE_8386F1                    ;838315;

CODE_838318:
    LDA.B $0F                            ;838318;
    BPL CODE_838321                      ;83831A;
    LDA.B #$02                           ;83831C;
    JMP.W CODE_8386F1                    ;83831E;

CODE_838321:
    LDA.B $0A                            ;838321;
    BMI CODE_83834B                      ;838323;
    BIT.B #$02                           ;838325;
    BNE CODE_83834B                      ;838327;
    LDA.B $2B                            ;838329;
    BIT.B #$04                           ;83832B;
    BNE CODE_838334                      ;83832D;
    LDA.B #$18                           ;83832F;
    JMP.W CODE_8386F1                    ;838331;

CODE_838334:
    LDA.B $3B                            ;838334;
    BIT.B #$40                           ;838336;
    BEQ CODE_83833F                      ;838338;
    LDA.B #$06                           ;83833A;
    JMP.W CODE_8386F1                    ;83833C;

CODE_83833F:
    JSR.W CODE_838735                    ;83833F;
    BEQ CODE_83834B                      ;838342;
    JSR.W CODE_8386F6                    ;838344;
    JSL.L CODE_82823E                    ;838347;

CODE_83834B:
    JSL.L CODE_848EEA                    ;83834B;
    RTS                                  ;83834F;

CODE_838350:
    LDX.B $03                            ;838350;
    BNE CODE_83836A                      ;838352;
    INC.B $03                            ;838354;
    LDA.B #$19                           ;838356;
    JSR.W CODE_838933                    ;838358;
    INC A                                ;83835B;
    STA.W $1F0D                          ;83835C;
    LDA.B #$05                           ;83835F;
    JSR.W CODE_8386EA                    ;838361;
    LDA.B #$05                           ;838364;
    JSL.L CODE_848F07                    ;838366;

CODE_83836A:
    LDA.B $2B                            ;83836A;
    BIT.B #$04                           ;83836C;
    BEQ CODE_838375                      ;83836E;
    LDA.B #$0A                           ;838370;
    JMP.W CODE_8386F1                    ;838372;

CODE_838375:
    LDA.B $0A                            ;838375;
    BIT.B #$02                           ;838377;
    BNE CODE_8383B6                      ;838379;
    STZ.B $1A                            ;83837B;
    STZ.B $1B                            ;83837D;
    JSR.W CODE_83871D                    ;83837F;
    LDA.B $2B                            ;838382;
    BIT.B #$08                           ;838384;
    BNE CODE_838392                      ;838386;
    LDA.B $1D                            ;838388;
    BMI CODE_838396                      ;83838A;
    LDA.B $37                            ;83838C;
    BIT.B #$80                           ;83838E;
    BNE CODE_838396                      ;838390;

CODE_838392:
    STZ.B $1C                            ;838392;
    STZ.B $1D                            ;838394;

CODE_838396:
    LDA.B $0F                            ;838396;
    BPL CODE_8383A5                      ;838398;
    LDX.B #$08                           ;83839A;
    LDA.B $1D                            ;83839C;
    BPL CODE_8383A2                      ;83839E;
    LDX.B #$18                           ;8383A0;

CODE_8383A2:
    STX.B $02                            ;8383A2;
    RTS                                  ;8383A4;

CODE_8383A5:
    REP #$20                             ;8383A5;
    LDA.W #$FA80                         ;8383A7;
    CMP.B $1C                            ;8383AA;
    BMI CODE_8383B0                      ;8383AC;
    STA.B $1C                            ;8383AE;

CODE_8383B0:
    SEP #$20                             ;8383B0;
    JSL.L CODE_828174                    ;8383B2;

CODE_8383B6:
    JSL.L CODE_848EEA                    ;8383B6;
    RTS                                  ;8383BA;

CODE_8383BB:
    LDX.B $03                            ;8383BB;
    BNE CODE_8383EA                      ;8383BD;
    INC.B $03                            ;8383BF;
    REP #$20                             ;8383C1;
    LDA.W #$0400                         ;8383C3;
    STA.B $34                            ;8383C6;
    BIT.B $32                            ;8383C8;
    BVS CODE_8383CF                      ;8383CA;
    LDA.W #$FC00                         ;8383CC;

CODE_8383CF:
    STA.B $1A                            ;8383CF;
    SEP #$20                             ;8383D1;
    STZ.B $31                            ;8383D3;
    LDA.B #$40                           ;8383D5;
    STA.B $2C                            ;8383D7;
    LDA.B #$3B                           ;8383D9;
    JSL.L CODE_8088CD                    ;8383DB;
    LDA.B #$06                           ;8383DF;
    JSR.W CODE_8386EA                    ;8383E1;
    LDA.B #$06                           ;8383E4;
    JSL.L CODE_848F07                    ;8383E6;

CODE_8383EA:
    JSR.W CODE_83CDB3                    ;8383EA;
    JSR.W CODE_8386DF                    ;8383ED;
    BEQ CODE_8383F7                      ;8383F0;
    LDA.B #$16                           ;8383F2;
    JMP.W CODE_8386F1                    ;8383F4;

CODE_8383F7:
    LDA.B $0A                            ;8383F7;
    BIT.B #$02                           ;8383F9;
    BNE CODE_838432                      ;8383FB;
    LDA.B $3B                            ;8383FD;
    BIT.B #$80                           ;8383FF;
    BEQ CODE_838408                      ;838401;
    LDA.B #$08                           ;838403;
    JMP.W CODE_8386F1                    ;838405;

CODE_838408:
    BIT.B #$40                           ;838408;
    BEQ CODE_838411                      ;83840A;
    LDA.B #$12                           ;83840C;
    JMP.W CODE_8386F1                    ;83840E;

CODE_838411:
    LDA.B $2B                            ;838411;
    BIT.B #$04                           ;838413;
    BNE CODE_83841C                      ;838415;
    LDA.B #$18                           ;838417;
    JMP.W CODE_8386F1                    ;838419;

CODE_83841C:
    BIT.B #$03                           ;83841C;
    BNE CODE_838425                      ;83841E;
    JSR.W CODE_838969                    ;838420;
    BNE CODE_83842A                      ;838423;

CODE_838425:
    LDA.B #$10                           ;838425;
    JMP.W CODE_8386F1                    ;838427;

CODE_83842A:
    JSL.L CODE_82823E                    ;83842A;
    DEC.B $2C                            ;83842E;
    BMI CODE_838425                      ;838430;

CODE_838432:
    JSL.L CODE_848EEA                    ;838432;
    RTS                                  ;838436;

CODE_838437:
    LDX.B $03                            ;838437;
    BNE CODE_838450                      ;838439;
    INC.B $03                            ;83843B;
    LDA.B #$78                           ;83843D;
    STA.B $34                            ;83843F;
    LDA.B #$01                           ;838441;
    STA.B $35                            ;838443;
    LDA.B #$07                           ;838445;
    JSR.W CODE_8386EA                    ;838447;
    LDA.B #$07                           ;83844A;
    JSL.L CODE_848F07                    ;83844C;

CODE_838450:
    JSR.W CODE_8386DF                    ;838450;
    BEQ CODE_83845A                      ;838453;
    LDA.B #$16                           ;838455;
    JMP.W CODE_8386F1                    ;838457;

CODE_83845A:
    LDA.B $0A                            ;83845A;
    BIT.B #$02                           ;83845C;
    BNE CODE_838488                      ;83845E;
    LDA.B $0F                            ;838460;
    BPL CODE_838469                      ;838462;
    LDA.B #$02                           ;838464;
    JMP.W CODE_8386F1                    ;838466;

CODE_838469:
    LDA.B $3B                            ;838469;
    BIT.B #$80                           ;83846B;
    BEQ CODE_838474                      ;83846D;
    LDA.B #$08                           ;83846F;
    JMP.W CODE_8386F1                    ;838471;

CODE_838474:
    BIT.B #$40                           ;838474;
    BEQ CODE_83847D                      ;838476;
    LDA.B #$06                           ;838478;
    JMP.W CODE_8386F1                    ;83847A;

CODE_83847D:
    LDA.B $37                            ;83847D;
    BIT.B #$03                           ;83847F;
    BEQ CODE_838488                      ;838481;
    LDA.B #$04                           ;838483;
    JMP.W CODE_8386F1                    ;838485;

CODE_838488:
    JSL.L CODE_848EEA                    ;838488;
    RTS                                  ;83848C;

CODE_83848D:
    LDX.B $03                            ;83848D;
    BNE CODE_8384A7                      ;83848F;
    INC.B $03                            ;838491;
    LDA.B #$1A                           ;838493;
    JSR.W CODE_838933                    ;838495;
    INC A                                ;838498;
    STA.W $1F0D                          ;838499;
    LDA.B #$08                           ;83849C;
    JSR.W CODE_8386EA                    ;83849E;
    LDA.B #$08                           ;8384A1;
    JSL.L CODE_848F07                    ;8384A3;

CODE_8384A7:
    DEC.B $2C                            ;8384A7;
    LDA.B $2B                            ;8384A9;
    BIT.B #$04                           ;8384AB;
    BNE CODE_8384B4                      ;8384AD;
    LDA.B #$18                           ;8384AF;
    JMP.W CODE_8386F1                    ;8384B1;

CODE_8384B4:
    LDA.B $0A                            ;8384B4;
    BIT.B #$02                           ;8384B6;
    BNE CODE_8384D8                      ;8384B8;
    LDA.B $2B                            ;8384BA;
    BIT.B #$03                           ;8384BC;
    BNE CODE_8384C4                      ;8384BE;
    LDA.B $0F                            ;8384C0;
    BPL CODE_8384CF                      ;8384C2;

CODE_8384C4:
    LDX.B #$0E                           ;8384C4;
    LDA.B $2C                            ;8384C6;
    BPL CODE_8384CC                      ;8384C8;
    LDX.B #$10                           ;8384CA;

CODE_8384CC:
    STX.B $02                            ;8384CC;
    RTS                                  ;8384CE;

CODE_8384CF:
    JSR.W CODE_838969                    ;8384CF;
    BEQ CODE_8384D8                      ;8384D2;
    JSL.L CODE_82823E                    ;8384D4;

CODE_8384D8:
    JSL.L CODE_848EEA                    ;8384D8;
    RTS                                  ;8384DC;

CODE_8384DD:
    LDX.B $03                            ;8384DD;
    BNE CODE_8384EE                      ;8384DF;
    INC.B $03                            ;8384E1;
    LDA.B #$09                           ;8384E3;
    JSR.W CODE_8386EA                    ;8384E5;
    LDA.B #$09                           ;8384E8;
    JSL.L CODE_848F07                    ;8384EA;

CODE_8384EE:
    LDA.B $0F                            ;8384EE;
    BPL CODE_8384FF                      ;8384F0;
    LDA.B $26                            ;8384F2;
    BNE CODE_8384F8                      ;8384F4;
    STZ.B $30                            ;8384F6;

CODE_8384F8:
    LDA.B #$02                           ;8384F8;
    STA.B $02                            ;8384FA;
    STZ.B $03                            ;8384FC;
    RTS                                  ;8384FE;

CODE_8384FF:
    LSR A                                ;8384FF;
    BCC CODE_838505                      ;838500;
    JSR.W CODE_83CD41                    ;838502;

CODE_838505:
    JSL.L CODE_848EEA                    ;838505;
    RTS                                  ;838509;

CODE_83850A:
    LDX.B $03                            ;83850A;
    BNE CODE_83855B                      ;83850C;
    INC.B $03                            ;83850E;
    INC.B $30                            ;838510;
    REP #$20                             ;838512;
    STZ.B $41                            ;838514;
    STZ.B $43                            ;838516;
    LDA.W #$0040                         ;838518;
    STA.B $45                            ;83851B;
    SEP #$20                             ;83851D;
    LDA.B $0A                            ;83851F;
    BIT.B #$02                           ;838521;
    BNE CODE_838535                      ;838523;
    REP #$20                             ;838525;
    STZ.B $1A                            ;838527;
    LDA.W #$01DC                         ;838529;
    STA.B $1C                            ;83852C;
    LDA.W #$0040                         ;83852E;
    STA.B $1E                            ;838531;
    SEP #$20                             ;838533;

CODE_838535:
    BIT.B $0A                            ;838535;
    BVC CODE_83854A                      ;838537;
    LDA.B $0A                            ;838539;
    BIT.B #$02                           ;83853B;
    BNE CODE_838547                      ;83853D;
    REP #$20                             ;83853F;
    STZ.B $1C                            ;838541;
    STZ.B $1E                            ;838543;
    SEP #$20                             ;838545;

CODE_838547:
    JSR.W CODE_838673                    ;838547;

CODE_83854A:
    LDA.B $2B                            ;83854A;
    BIT.B #$04                           ;83854C;
    BNE CODE_838555                      ;83854E;
    LDA.B #$18                           ;838550;
    JMP.W CODE_8386F1                    ;838552;

CODE_838555:
    LDA.B #$0A                           ;838555;
    JSL.L CODE_848F07                    ;838557;

CODE_83855B:
    LDA.B $2B                            ;83855B;
    BIT.B #$04                           ;83855D;
    BEQ CODE_838565                      ;83855F;
    STZ.B $1C                            ;838561;
    STZ.B $1D                            ;838563;

CODE_838565:
    LDA.B $0F                            ;838565;
    BPL CODE_83856D                      ;838567;
    STZ.B $02                            ;838569;
    STZ.B $03                            ;83856B;

CODE_83856D:
    LDA.B $0A                            ;83856D;
    BIT.B #$02                           ;83856F;
    BNE CODE_838577                      ;838571;
    JSL.L CODE_828174                    ;838573;

CODE_838577:
    JSL.L CODE_848EEA                    ;838577;
    RTS                                  ;83857B;

CODE_83857C:
    LDX.B $03                            ;83857C;
    BNE CODE_8385A0                      ;83857E;
    INC.B $03                            ;838580;
    REP #$20                             ;838582;
    STZ.B $1A                            ;838584;
    STZ.B $1C                            ;838586;
    LDA.W #$0040                         ;838588;
    STA.B $1E                            ;83858B;
    SEP #$20                             ;83858D;
    INC.B $2F                            ;83858F;
    BIT.B $0A                            ;838591;
    BVC CODE_83859A                      ;838593;
    LDA.B #$03                           ;838595;
    JSR.W CODE_8386EA                    ;838597;

CODE_83859A:
    LDA.B #$03                           ;83859A;
    JSL.L CODE_848F07                    ;83859C;

CODE_8385A0:
    BIT.B $0A                            ;8385A0;
    BVC CODE_8385AE                      ;8385A2;
    JSR.W CODE_8386DF                    ;8385A4;
    BEQ CODE_8385AE                      ;8385A7;
    LDA.B #$16                           ;8385A9;
    JMP.W CODE_8386F1                    ;8385AB;

CODE_8385AE:
    LDA.B $2B                            ;8385AE;
    BIT.B #$04                           ;8385B0;
    BEQ CODE_8385CE                      ;8385B2;
    BIT.B $0A                            ;8385B4;
    BVS CODE_8385C9                      ;8385B6;
    STZ.B $2F                            ;8385B8;
    LDX.B #$02                           ;8385BA;
    LDY.B #$01                           ;8385BC;
    LDA.B #$0A                           ;8385BE;
    JSL.L CODE_84A33C                    ;8385C0;
    LDA.B #$16                           ;8385C4;
    JMP.W CODE_8386F1                    ;8385C6;

CODE_8385C9:
    LDA.B #$0A                           ;8385C9;
    JMP.W CODE_8386F1                    ;8385CB;

CODE_8385CE:
    LDA.B $0A                            ;8385CE;
    BIT.B #$02                           ;8385D0;
    BNE CODE_8385FD                      ;8385D2;
    LDA.B $0A                            ;8385D4;
    BMI CODE_8385EE                      ;8385D6;
    BIT.B $0A                            ;8385D8;
    BVC CODE_8385EE                      ;8385DA;
    LDA.B $3B                            ;8385DC;
    BIT.B #$40                           ;8385DE;
    BEQ CODE_8385E7                      ;8385E0;
    LDA.B #$0C                           ;8385E2;
    JMP.W CODE_8386F1                    ;8385E4;

CODE_8385E7:
    STZ.B $1A                            ;8385E7;
    STZ.B $1B                            ;8385E9;
    JSR.W CODE_838707                    ;8385EB;

CODE_8385EE:
    REP #$20                             ;8385EE;
    LDA.W #$FA80                         ;8385F0;
    CMP.B $1C                            ;8385F3;
    BMI CODE_8385F9                      ;8385F5;
    STA.B $1C                            ;8385F7;

CODE_8385F9:
    JSL.L CODE_828174                    ;8385F9;

CODE_8385FD:
    SEP #$20                             ;8385FD;
    RTS                                  ;8385FF;

CODE_838600:
    JSL.L CODE_828398                    ;838600;
    RTS                                  ;838604;

CODE_838605:
    LDA.B #$2C                           ;838605;
    STA.W $0BAA                          ;838607;
    STZ.W $0BAB                          ;83860A;
    STA.W $0BD8                          ;83860D;
    STA.W $0C0C                          ;838610;
    STA.W $0C24                          ;838613;
    STZ.W $0C00                          ;838616;
    STZ.W $0C03                          ;838619;
    STZ.W $0C13                          ;83861C;
    STZ.W $0BD3                          ;83861F;
    LDA.B #$01                           ;838622;
    STA.W $0BB6                          ;838624;
    LDA.B #$17                           ;838627;
    JSL.L CODE_8088CD                    ;838629;
    LDX.B #$6A                           ;83862D;
    LDA.W $1F99                          ;83862F;
    BIT.B #$01                           ;838632;
    BEQ CODE_838637                      ;838634;
    INX                                  ;838636;

CODE_838637:
    STX.W $0BBE                          ;838637;
    LDA.B #$6C                           ;83863A;
    STA.W $0C48                          ;83863C;
    STA.W $0C68                          ;83863F;
    STA.W $0C88                          ;838642;
    STZ.W $0C39                          ;838645;
    STZ.W $0C59                          ;838648;
    STZ.W $0C79                          ;83864B;
    REP #$31                             ;83864E;
    LDA.W $0BDB                          ;838650;
    AND.W #$00FF                         ;838653;
    ADC.W #$0100                         ;838656;
    TAY                                  ;838659;
    JSL.L CODE_828011                    ;83865A;
    LDA.W #$A8A5                         ;83865E;
    STA.W $0BD9                          ;838661;
    LDA.W #$BB56                         ;838664;
    STA.W $0BC8                          ;838667;
    SEP #$30                             ;83866A;
    LDA.B #$40                           ;83866C;
    TSB.B $0A                            ;83866E;
    JMP.W CODE_838747                    ;838670;

CODE_838673:
    LDA.B #$06                           ;838673;
    STA.W $0BAA                          ;838675;
    STZ.W $0BAB                          ;838678;
    STZ.W $0BD8                          ;83867B;
    STZ.W $0C0C                          ;83867E;
    STZ.W $0C24                          ;838681;
    LDA.B #$01                           ;838684;
    STA.W $0BB6                          ;838686;
    LDA.B #$5D                           ;838689;
    STA.W $0C48                          ;83868B;
    STA.W $0C68                          ;83868E;
    STA.W $0C88                          ;838691;
    STZ.W $0C39                          ;838694;
    STZ.W $0C59                          ;838697;
    STZ.W $0C79                          ;83869A;
    REP #$30                             ;83869D;
    LDA.W #$0178                         ;83869F;
    LDX.B $34                            ;8386A2;
    CPX.W #$0178                         ;8386A4;
    BEQ CODE_8386AC                      ;8386A7;
    LDA.W #$0375                         ;8386A9;

CODE_8386AC:
    STA.W $0C04                          ;8386AC;
    STZ.W $0BC2                          ;8386AF;
    LDA.W #$0553                         ;8386B2;
    STA.W $0BC4                          ;8386B5;
    LDA.W #$A552                         ;8386B8;
    STA.W $0BC8                          ;8386BB;
    LDA.W #$A597                         ;8386BE;
    STA.W $0BD9                          ;8386C1;
    SEP #$30                             ;8386C4;
    LDX.B #$00                           ;8386C6;
    LDA.W $1F99                          ;8386C8;
    BIT.B #$01                           ;8386CB;
    BEQ CODE_8386D1                      ;8386CD;
    LDX.B #$18                           ;8386CF;

CODE_8386D1:
    STX.W $0BBE                          ;8386D1;
    STZ.W $0BC7                          ;8386D4;
    LDA.B #$40                           ;8386D7;
    STA.W $0BC6                          ;8386D9;
    TRB.B $0A                            ;8386DC;
    RTS                                  ;8386DE;

CODE_8386DF:
    LDA.B $37                            ;8386DF;
    BIT.B #$08                           ;8386E1;
    BEQ CODE_8386E9                      ;8386E3;
    LDA.B $3B                            ;8386E5;
    BIT.B #$80                           ;8386E7;

CODE_8386E9:
    RTS                                  ;8386E9;

CODE_8386EA:
    STA.W $0C23                          ;8386EA;
    STZ.W $0BAB                          ;8386ED;
    RTS                                  ;8386F0;

CODE_8386F1:
    STA.B $02                            ;8386F1;
    STZ.B $03                            ;8386F3;
    RTS                                  ;8386F5;

CODE_8386F6:
    REP #$20                             ;8386F6;
    LDA.W #$0178                         ;8386F8;
    BIT.B $32                            ;8386FB;
    BVS CODE_838702                      ;8386FD;
    LDA.W #$FE88                         ;8386FF;

CODE_838702:
    STA.B $1A                            ;838702;
    SEP #$20                             ;838704;
    RTS                                  ;838706;

CODE_838707:
    JSR.W CODE_838735                    ;838707;
    BEQ CODE_83871C                      ;83870A;
    REP #$20                             ;83870C;
    LDA.B $34                            ;83870E;
    BIT.B $32                            ;838710;
    BVS CODE_838718                      ;838712;
    EOR.W #$FFFF                         ;838714;
    INC A                                ;838717;

CODE_838718:
    STA.B $1A                            ;838718;
    SEP #$20                             ;83871A;

CODE_83871C:
    RTS                                  ;83871C;

CODE_83871D:
    LDA.B $37                            ;83871D;
    AND.B #$03                           ;83871F;
    BEQ CODE_838734                      ;838721;
    TAX                                  ;838723;
    REP #$20                             ;838724;
    LDA.B $34                            ;838726;
    CPX.B #$01                           ;838728;
    BEQ CODE_838730                      ;83872A;
    EOR.W #$FFFF                         ;83872C;
    INC A                                ;83872F;

CODE_838730:
    STA.B $1A                            ;838730;
    SEP #$20                             ;838732;

CODE_838734:
    RTS                                  ;838734;

CODE_838735:
    LDA.B $37                            ;838735;
    BIT.B #$02                           ;838737;
    BEQ CODE_83873E                      ;838739;
    STZ.B $33                            ;83873B;
    RTS                                  ;83873D;

CODE_83873E:
    BIT.B #$01                           ;83873E;
    BEQ CODE_838746                      ;838740;
    LDA.B #$40                           ;838742;
    STA.B $33                            ;838744;

CODE_838746:
    RTS                                  ;838746;

CODE_838747:
    REP #$20                             ;838747;
    LDA.B $05                            ;838749;
    STA.W $0BAD                          ;83874B;
    LDA.B $08                            ;83874E;
    STA.W $0BB0                          ;838750;
    SEP #$20                             ;838753;
    LDA.B $33                            ;838755;
    STA.W $0C11                          ;838757;

CODE_83875A:
    RTS                                  ;83875A;

CODE_83875B:
    LDA.B $0A                            ;83875B;
    BMI CODE_83875A                      ;83875D;
    BIT.B #$02                           ;83875F;
    BNE CODE_83875A                      ;838761;
    LDX.B $10                            ;838763;
    BNE CODE_838776                      ;838765;
    LDA.B $3B                            ;838767;
    AND.B #$03                           ;838769;
    BEQ CODE_838775                      ;83876B;
    STA.B $0D                            ;83876D;
    INC.B $10                            ;83876F;
    LDA.B #$0C                           ;838771;
    STA.B $0C                            ;838773;

CODE_838775:
    RTS                                  ;838775;

CODE_838776:
    LDA.B $0D                            ;838776;
    BIT.B $3B                            ;838778;
    BEQ CODE_83878A                      ;83877A;
    JSR.W CODE_838791                    ;83877C;
    BNE CODE_83878A                      ;83877F;
    LDA.B #$08                           ;838781;
    TRB.B $0A                            ;838783;
    LDA.B #$0E                           ;838785;
    JMP.W CODE_8386F1                    ;838787;

CODE_83878A:
    DEC.B $0C                            ;83878A;
    BNE CODE_838790                      ;83878C;
    STZ.B $10                            ;83878E;

CODE_838790:
    RTS                                  ;838790;

CODE_838791:
    LDA.B $02                            ;838791;
    CMP.B #$02                           ;838793;
    BEQ CODE_83879D                      ;838795;
    CMP.B #$04                           ;838797;
    BEQ CODE_83879D                      ;838799;
    CMP.B #$0A                           ;83879B;

CODE_83879D:
    RTS                                  ;83879D;

CODE_83879E:
    LDA.B $0A                            ;83879E;
    BMI CODE_83875A                      ;8387A0;
    BIT.B #$02                           ;8387A2;
    BNE CODE_83875A                      ;8387A4;
    LDA.B $3A                            ;8387A6;
    BIT.B #$80                           ;8387A8;
    BEQ CODE_8387BA                      ;8387AA;
    JSR.W CODE_838791                    ;8387AC;
    BNE CODE_8387BA                      ;8387AF;
    LDA.B #$08                           ;8387B1;
    TSB.B $0A                            ;8387B3;
    LDA.B #$0E                           ;8387B5;
    JMP.W CODE_8386F1                    ;8387B7;

CODE_8387BA:
    RTS                                  ;8387BA;

CODE_8387BB:
    REP #$20                             ;8387BB;
    BIT.B $09                            ;8387BD;
    BVC CODE_8387F3                      ;8387BF;
    LDA.W $1E58                          ;8387C1;
    CLC                                  ;8387C4;
    ADC.W #$0100                         ;8387C5;
    STA.W $0000                          ;8387C8;
    LDA.B $05                            ;8387CB;
    CLC                                  ;8387CD;
    ADC.W #$0010                         ;8387CE;
    CMP.W $0000                          ;8387D1;
    BMI CODE_8387DF                      ;8387D4;
    LDA.W $1E58                          ;8387D6;
    CLC                                  ;8387D9;
    ADC.W #$00F0                         ;8387DA;
    STA.B $05                            ;8387DD;

CODE_8387DF:
    LDA.B $05                            ;8387DF;
    SEC                                  ;8387E1;
    SBC.W #$0010                         ;8387E2;
    CMP.W $1E56                          ;8387E5;
    BPL CODE_8387F3                      ;8387E8;
    LDA.W $1E56                          ;8387EA;
    CLC                                  ;8387ED;
    ADC.W #$0010                         ;8387EE;
    STA.B $05                            ;8387F1;

CODE_8387F3:
    LDA.W $1E5C                          ;8387F3;
    CLC                                  ;8387F6;
    ADC.W #$00E0                         ;8387F7;
    STA.W $0000                          ;8387FA;
    LDA.B $08                            ;8387FD;
    CLC                                  ;8387FF;
    ADC.W #$FFE0                         ;838800;
    CMP.W $0000                          ;838803;
    BMI CODE_83880D                      ;838806;
    LDA.W #$0004                         ;838808;
    STA.B $01                            ;83880B;

CODE_83880D:
    SEP #$20                             ;83880D;
    RTS                                  ;83880F;

CODE_838810:
    BIT.B $0A                            ;838810;
    BVC CODE_838823                      ;838812;
    LDA.B $26                            ;838814;
    BEQ CODE_838823                      ;838816;
    LDX.B #$01                           ;838818;
    STX.W $0BB6                          ;83881A;
    LSR A                                ;83881D;
    BCC CODE_838823                      ;83881E;
    STZ.W $0BB6                          ;838820;

CODE_838823:
    RTS                                  ;838823;

CODE_838824:
    LDA.B $0A                            ;838824;
    BPL CODE_83883C                      ;838826;
    DEC.B $32                            ;838828;
    BNE CODE_83883C                      ;83882A;
    LDA.B #$0E                           ;83882C;
    TRB.B $11                            ;83882E;
    LDA.B $47                            ;838830;
    STA.B $32                            ;838832;
    DEC.B $47                            ;838834;
    BNE CODE_83883C                      ;838836;
    LDA.B #$02                           ;838838;
    STA.B $3E                            ;83883A;

CODE_83883C:
    RTS                                  ;83883C;
    REP #$20                             ;83883D;
    LDA.B $05                            ;83883F;
    STA.W $0005,X                        ;838841;
    LDA.B $08                            ;838844;
    STA.W $0008,X                        ;838846;
    SEP #$20                             ;838849;
    RTS                                  ;83884B;

CODE_83884C:
    LDX.B $3E                            ;83884C;
    JMP.W (PTR16_838851,X)               ;83884E;

PTR16_838851:
    dw CODE_838882                       ;838851;
    dw CODE_838857                       ;838853;
    dw CODE_838883                       ;838855;

CODE_838857:
    LDA.B #$04                           ;838857;
    STA.B $3E                            ;838859;
    LDA.L $7F8349                        ;83885B;
    ORA.B $33                            ;83885F;
    STA.B $11                            ;838861;
    LDA.B #$FF                           ;838863;
    STA.B $26                            ;838865;
    LDA.B #$0D                           ;838867;
    BIT.B $0A                            ;838869;
    BVC CODE_838872                      ;83886B;
    JSR.W CODE_838673                    ;83886D;
    LDA.B #$00                           ;838870;

CODE_838872:
    STA.B $10                            ;838872;
    LDA.B #$04                           ;838874;
    TSB.B $0A                            ;838876;
    LDA.B #$1E                           ;838878;
    STA.B $2C                            ;83887A;
    JSR.W CODE_83CC52                    ;83887C;
    JMP.W CODE_83CCBD                    ;83887F;

CODE_838882:
    RTS                                  ;838882;

CODE_838883:
    DEC.B $2C                            ;838883;
    BNE CODE_838890                      ;838885;
    JSL.L CODE_84A4AB                    ;838887;
    LDA.B #$04                           ;83888B;
    STA.B $01                            ;83888D;
    RTS                                  ;83888F;

CODE_838890:
    REP #$20                             ;838890;
    LDA.B $10                            ;838892;
    AND.W #$00FF                         ;838894;
    BIT.B $32                            ;838897;
    BVC CODE_83889F                      ;838899;
    EOR.W #$FFFF                         ;83889B;
    INC A                                ;83889E;

CODE_83889F:
    SEC                                  ;83889F;
    SBC.W #$000D                         ;8388A0;
    STA.W $0000                          ;8388A3;
    STZ.W $0002                          ;8388A6;
    LDA.W #$001F                         ;8388A9;
    STA.W $0004                          ;8388AC;
    STA.W $0006                          ;8388AF;
    SEP #$20                             ;8388B2;
    LDA.B #$07                           ;8388B4;
    STA.W $0008                          ;8388B6;
    JSL.L CODE_82806E                    ;8388B9;
    BCS CODE_8388C3                      ;8388BD;
    JSL.L CODE_84A4C6                    ;8388BF;

CODE_8388C3:
    RTS                                  ;8388C3;

CODE_8388C4:
    LDX.B $40                            ;8388C4;
    JMP.W (PTR16_8388C9,X)               ;8388C6;

PTR16_8388C9:
    dw CODE_8388F3                       ;8388C9;
    dw CODE_8388CF                       ;8388CB;
    dw CODE_8388F4                       ;8388CD;

CODE_8388CF:
    LDA.B #$04                           ;8388CF;
    STA.B $40                            ;8388D1;
    REP #$20                             ;8388D3;
    LDA.B $1A                            ;8388D5;
    STA.B $41                            ;8388D7;
    LDA.B $1C                            ;8388D9;
    STA.B $43                            ;8388DB;
    LDA.B $1E                            ;8388DD;
    STA.B $45                            ;8388DF;
    LDA.B $3E                            ;8388E1;
    AND.W #$FF00                         ;8388E3;
    STA.B $1A                            ;8388E6;
    STZ.B $1C                            ;8388E8;
    LDA.W #$4040                         ;8388EA;
    STA.B $1E                            ;8388ED;
    SEP #$20                             ;8388EF;
    STZ.B $31                            ;8388F1;

CODE_8388F3:
    RTS                                  ;8388F3;

CODE_8388F4:
    BIT.B $33                            ;8388F4;
    BVC CODE_8388FE                      ;8388F6;
    JSL.L CODE_828195                    ;8388F8;
    BRA CODE_838902                      ;8388FC;

CODE_8388FE:
    JSL.L CODE_828174                    ;8388FE;

CODE_838902:
    REP #$20                             ;838902;
    LDA.B $1A                            ;838904;
    BPL CODE_83890C                      ;838906;
    EOR.W #$FFFF                         ;838908;
    INC A                                ;83890B;

CODE_83890C:
    CMP.W #$0040                         ;83890C;
    SEP #$20                             ;83890F;
    BCS CODE_838925                      ;838911;
    LDA.B #$02                           ;838913;
    TRB.B $0A                            ;838915;
    STZ.B $40                            ;838917;
    REP #$20                             ;838919;
    LDA.B $41                            ;83891B;
    STA.B $1A                            ;83891D;
    LDA.B $45                            ;83891F;
    STA.B $1E                            ;838921;
    SEP #$20                             ;838923;

CODE_838925:
    LDA.B $2B                            ;838925;
    BIT.B #$04                           ;838927;
    BEQ CODE_838932                      ;838929;
    STZ.B $1C                            ;83892B;
    STZ.B $1D                            ;83892D;
    JSR.W CODE_83CDB3                    ;83892F;

CODE_838932:
    RTS                                  ;838932;

CODE_838933:
    STA.W $0000                          ;838933;
    JSL.L CODE_82833E                    ;838936;
    BNE CODE_838945                      ;83893A;
    INC.W $0000,X                        ;83893C;
    LDA.W $0000                          ;83893F;
    STA.W $000A,X                        ;838942;

CODE_838945:
    SEP #$10                             ;838945;
    RTS                                  ;838947;

CODE_838948:
    REP #$20                             ;838948;
    SEC                                  ;83894A;
    LDA.B $05                            ;83894B;
    SBC.W $1E4D                          ;83894D;
    CLC                                  ;838950;
    ADC.W #$0080                         ;838951;
    CMP.W #$0200                         ;838954;
    BCS CODE_838966                      ;838957;
    SEC                                  ;838959;
    LDA.B $08                            ;83895A;
    SBC.W $1E50                          ;83895C;
    CLC                                  ;83895F;
    ADC.W #$0080                         ;838960;
    CMP.W #$01E0                         ;838963;

CODE_838966:
    SEP #$20                             ;838966;
    RTS                                  ;838968;

CODE_838969:
    LDA.B $0A                            ;838969;
    BIT.B #$08                           ;83896B;
    BNE CODE_83897A                      ;83896D;
    LDA.B #$01                           ;83896F;
    BIT.B $33                            ;838971;
    BVS CODE_838977                      ;838973;
    LDA.B #$02                           ;838975;

CODE_838977:
    BIT.B $37                            ;838977;
    RTS                                  ;838979;

CODE_83897A:
    LDA.B #$02                           ;83897A;
    BIT.B $33                            ;83897C;
    BVS CODE_838982                      ;83897E;
    LDA.B #$01                           ;838980;

CODE_838982:
    BIT.B $37                            ;838982;
    BNE CODE_83898B                      ;838984;
    LDA.B $36                            ;838986;
    BIT.B #$80                           ;838988;
    RTS                                  ;83898A;

CODE_83898B:
    LDA.B #$00                           ;83898B;
    RTS                                  ;83898D;

CODE_83898E:
    LDX.B $01                            ;83898E;
    JSR.W (PTR16_83899C,X)               ;838990;
    LDA.B $0B                            ;838993;
    BNE CODE_83899B                      ;838995;
    JSL.L CODE_848FCA                    ;838997;

CODE_83899B:
    RTL                                  ;83899B;

PTR16_83899C:
    dw CODE_8389A6                       ;83899C;
    dw CODE_838A15                       ;83899E;
    dw CODE_838AF4                       ;8389A0;
    dw CODE_838A0D                       ;8389A2;
    dw CODE_838B2E                       ;8389A4;

CODE_8389A6:
    LDA.B #$02                           ;8389A6;
    STA.B $01                            ;8389A8;
    STA.B $30                            ;8389AA;
    LDA.B $0B                            ;8389AC;
    BEQ CODE_8389B4                      ;8389AE;
    LDA.B #$02                           ;8389B0;
    STA.B $02                            ;8389B2;

CODE_8389B4:
    LDA.B #$FF                           ;8389B4;
    STA.B $10                            ;8389B6;
    STZ.B $18                            ;8389B8;
    STZ.B $12                            ;8389BA;
    LDA.B $0B                            ;8389BC;
    BNE CODE_8389E1                      ;8389BE;
    LDX.W $1F7A                          ;8389C0;
    LDA.W $0BB9                          ;8389C3;
    AND.B #$70                           ;8389C6;
    ORA.B #$06                           ;8389C8;
    STA.B $11                            ;8389CA;
    JSR.W CODE_838B6A                    ;8389CC;
    REP #$21                             ;8389CF;
    LDA.W $0BB0                          ;8389D1;
    ADC.W $0002                          ;8389D4;
    STA.B $08                            ;8389D7;
    JSR.W CODE_838C25                    ;8389D9;
    SEP #$20                             ;8389DC;
    INC.W $0C25                          ;8389DE;

CODE_8389E1:
    REP #$20                             ;8389E1;
    LDA.W #$AAF3                         ;8389E3;
    STA.B $31                            ;8389E6;
    LDA.W #$BE7D                         ;8389E8;
    STA.B $20                            ;8389EB;
    LDA.B $0B                            ;8389ED;
    AND.W #$00FF                         ;8389EF;
    TAX                                  ;8389F2;
    LDA.W #$B800                         ;8389F3;
    CLC                                  ;8389F6;
    ADC.W DATA8_86BE93,X                 ;8389F7;
    STA.B $26                            ;8389FA;
    SEP #$20                             ;8389FC;
    LDA.B #$7F                           ;8389FE;
    STA.B $28                            ;838A00;
    STZ.B $3A                            ;838A02;
    LDA.B #$0E                           ;838A04;
    STA.B $16                            ;838A06;
    STA.B $0E                            ;838A08;
    STZ.B $17                            ;838A0A;
    RTS                                  ;838A0C;

CODE_838A0D:
    LDA.B #$02                           ;838A0D;
    STA.B $01                            ;838A0F;
    JSL.L CODE_84A51A                    ;838A11;

CODE_838A15:
    LDA.B $0E                            ;838A15;
    BNE CODE_838A24                      ;838A17;
    LDA.B #$08                           ;838A19;
    STA.B $01                            ;838A1B;
    LDA.B #$02                           ;838A1D;
    STA.B $02                            ;838A1F;
    INC.B $30                            ;838A21;
    RTS                                  ;838A23;

CODE_838A24:
    LDX.B $02                            ;838A24;
    JSR.W (PTR16_838A2E,X)               ;838A26;
    JSL.L CODE_8280B4                    ;838A29;
    RTS                                  ;838A2D;

PTR16_838A2E:
    dw CODE_838A32                       ;838A2E;
    dw CODE_838A57                       ;838A30;

CODE_838A32:
    LDX.B $03                            ;838A32;
    BNE CODE_838A3E                      ;838A34;
    INC.B $03                            ;838A36;
    LDA.B #$09                           ;838A38;
    JSL.L CODE_848F07                    ;838A3A;

CODE_838A3E:
    LDA.B $0F                            ;838A3E;
    BPL CODE_838A50                      ;838A40;
    JSR.W CODE_838B99                    ;838A42;
    LDA.B #$04                           ;838A45;
    JSL.L CODE_848F07                    ;838A47;
    LDA.B #$02                           ;838A4B;
    JMP.W CODE_8386F1                    ;838A4D;

CODE_838A50:
    JSL.L CODE_848EEA                    ;838A50;
    JMP.W CODE_838B6A                    ;838A54;

CODE_838A57:
    LDX.B $03                            ;838A57;
    JMP.W (PTR16_838A5C,X)               ;838A59;

PTR16_838A5C:
    dw CODE_838A62                       ;838A5C;
    dw CODE_838A78                       ;838A5E;
    dw CODE_838AB5                       ;838A60;

CODE_838A62:
    LDA.B #$02                           ;838A62;
    STA.B $03                            ;838A64;
    STZ.B $30                            ;838A66;
    LDA.B $0B                            ;838A68;
    LSR A                                ;838A6A;
    TAX                                  ;838A6B;
    LDA.W DATA8_86BE99,X                 ;838A6C;
    STA.B $38                            ;838A6F;
    LDA.B #$04                           ;838A71;
    JSL.L CODE_848F07                    ;838A73;
    RTS                                  ;838A77;

CODE_838A78:
    DEC.B $38                            ;838A78;
    BEQ CODE_838A7D                      ;838A7A;
    RTS                                  ;838A7C;

CODE_838A7D:
    LDA.B #$04                           ;838A7D;
    STA.B $03                            ;838A7F;
    REP #$21                             ;838A81;
    LDA.B $0B                            ;838A83;
    AND.W #$00FF                         ;838A85;
    TAX                                  ;838A88;
    LDA.W DATA8_86BE8D,X                 ;838A89;
    ADC.B $08                            ;838A8C;
    STA.B $08                            ;838A8E;
    LDA.W DATA8_86BE81,X                 ;838A90;
    STA.B $1C                            ;838A93;
    LDA.W #$00C0                         ;838A95;
    STA.B $1E                            ;838A98;
    LDA.W #$0600                         ;838A9A;
    BIT.B $10                            ;838A9D;
    BVS CODE_838AA4                      ;838A9F;
    LDA.W #$FA00                         ;838AA1;

CODE_838AA4:
    STA.B $1A                            ;838AA4;
    SEP #$20                             ;838AA6;
    LDA.W DATA8_86BE87,X                 ;838AA8;
    STA.B $39                            ;838AAB;
    LDA.W DATA8_86BE88,X                 ;838AAD;
    STA.B $38                            ;838AB0;
    JSR.W CODE_838BCE                    ;838AB2;

CODE_838AB5:
    LDX.B #$00                           ;838AB5;
    LDA.B $1D                            ;838AB7;
    BPL CODE_838ABD                      ;838AB9;
    LDX.B #$02                           ;838ABB;

CODE_838ABD:
    STX.B $12                            ;838ABD;
    JSR.W CODE_838BF8                    ;838ABF;
    LDX.B $39                            ;838AC2;
    BNE CODE_838ADD                      ;838AC4;
    DEC.B $38                            ;838AC6;
    BNE CODE_838AD8                      ;838AC8;
    INC.B $39                            ;838ACA;
    LDA.B #$B6                           ;838ACC;
    STA.B $1C                            ;838ACE;
    LDA.B #$FA                           ;838AD0;
    STA.B $1D                            ;838AD2;
    LDA.B #$08                           ;838AD4;
    STA.B $38                            ;838AD6;

CODE_838AD8:
    JSL.L CODE_828174                    ;838AD8;
    RTS                                  ;838ADC;

CODE_838ADD:
    DEC.B $38                            ;838ADD;
    BNE CODE_838AEF                      ;838ADF;
    STZ.B $39                            ;838AE1;
    LDA.B #$4A                           ;838AE3;
    STA.B $1C                            ;838AE5;
    LDA.B #$05                           ;838AE7;
    STA.B $1D                            ;838AE9;
    LDA.B #$08                           ;838AEB;
    STA.B $38                            ;838AED;

CODE_838AEF:
    JSL.L CODE_8281B2                    ;838AEF;
    RTS                                  ;838AF3;

CODE_838AF4:
    LDX.B $02                            ;838AF4;
    JSR.W (PTR16_838AFE,X)               ;838AF6;
    JSL.L CODE_8280B4                    ;838AF9;
    RTS                                  ;838AFD;

PTR16_838AFE:
    dw CODE_838B02                       ;838AFE;
    dw CODE_838B1A                       ;838B00;

CODE_838B02:
    REP #$20                             ;838B02;
    LDA.B $33                            ;838B04;
    STA.B $05                            ;838B06;
    LDA.B $35                            ;838B08;
    STA.B $08                            ;838B0A;
    SEP #$20                             ;838B0C;
    LDA.B #$02                           ;838B0E;
    STA.B $02                            ;838B10;
    INC.B $30                            ;838B12;
    LDA.B #$08                           ;838B14;
    JSL.L CODE_848F07                    ;838B16;

CODE_838B1A:
    LDA.B $0F                            ;838B1A;
    BPL CODE_838B27                      ;838B1C;
    LDA.B #$08                           ;838B1E;
    STA.B $01                            ;838B20;
    LDA.B #$02                           ;838B22;
    STA.B $02                            ;838B24;
    RTS                                  ;838B26;

CODE_838B27:
    JSL.L CODE_848EEA                    ;838B27;
    JMP.W CODE_838C1A                    ;838B2B;

CODE_838B2E:
    LDX.B $02                            ;838B2E;
    JMP.W (PTR16_838B33,X)               ;838B30;

PTR16_838B33:
    dw CODE_838B39                       ;838B33;
    dw CODE_838B42                       ;838B35;
    dw CODE_838B54                       ;838B37;

CODE_838B39:
    LDA.B #$02                           ;838B39;
    STA.B $02                            ;838B3B;
    JSL.L CODE_84A51A                    ;838B3D;
    RTS                                  ;838B41;

CODE_838B42:
    LDA.B #$04                           ;838B42;
    STA.B $02                            ;838B44;
    LDA.B #$10                           ;838B46;
    STA.B $38                            ;838B48;
    LDY.B $3A                            ;838B4A;
    INY                                  ;838B4C;
    LDA.B #$FF                           ;838B4D;
    STA.B [$26],Y                        ;838B4F;
    JMP.W CODE_838C1A                    ;838B51;

CODE_838B54:
    DEC.B $38                            ;838B54;
    BEQ CODE_838B5B                      ;838B56;
    JMP.W CODE_838C1A                    ;838B58;

CODE_838B5B:
    LDA.B $0B                            ;838B5B;
    BNE CODE_838B62                      ;838B5D;
    DEC.W $0BDD                          ;838B5F;

CODE_838B62:
    DEC.W $0C25                          ;838B62;
    JSL.L CODE_8283A3                    ;838B65;
    RTS                                  ;838B69;

CODE_838B6A:
    LDX.B $3C                            ;838B6A;
    LDA.W DATA8_86BE39,X                 ;838B6C;
    STA.W $0000                          ;838B6F;
    STZ.W $0001                          ;838B72;
    STZ.W $0003                          ;838B75;
    LDA.W DATA8_86BE3A,X                 ;838B78;
    STA.W $0002                          ;838B7B;
    BPL CODE_838B83                      ;838B7E;
    DEC.W $0003                          ;838B80;

CODE_838B83:
    REP #$20                             ;838B83;
    LDA.W $0000                          ;838B85;
    BIT.B $10                            ;838B88;
    BVS CODE_838B90                      ;838B8A;
    EOR.W #$FFFF                         ;838B8C;
    INC A                                ;838B8F;

CODE_838B90:
    CLC                                  ;838B90;
    ADC.W $0BAD                          ;838B91;
    STA.B $05                            ;838B94;
    SEP #$20                             ;838B96;
    RTS                                  ;838B98;

CODE_838B99:
    LDY.B #$01                           ;838B99;

CODE_838B9B:
    JSL.L CODE_82833E                    ;838B9B;
    BNE CODE_838BCB                      ;838B9F;
    INC.W $0000,X                        ;838BA1;
    INC.W $0C25                          ;838BA4;
    LDA.B #$02                           ;838BA7;
    STA.W $000A,X                        ;838BA9;
    STA.W $0030,X                        ;838BAC;
    LDA.B $11                            ;838BAF;
    STA.W $0011,X                        ;838BB1;
    TYA                                  ;838BB4;
    INC A                                ;838BB5;
    ASL A                                ;838BB6;
    STA.W $000B,X                        ;838BB7;
    REP #$20                             ;838BBA;
    LDA.B $08                            ;838BBC;
    STA.W $0008,X                        ;838BBE;
    LDA.B $05                            ;838BC1;
    STA.W $0005,X                        ;838BC3;
    SEP #$20                             ;838BC6;
    DEY                                  ;838BC8;
    BPL CODE_838B9B                      ;838BC9;

CODE_838BCB:
    SEP #$10                             ;838BCB;
    RTS                                  ;838BCD;

CODE_838BCE:
    LDY.B #$03                           ;838BCE;

CODE_838BD0:
    JSL.L CODE_8282ED                    ;838BD0;
    BNE CODE_838BF5                      ;838BD4;
    INC.W $0000,X                        ;838BD6;
    STZ.W $000A,X                        ;838BD9;
    TYA                                  ;838BDC;
    STA.W $000B,X                        ;838BDD;
    LDA.B $11                            ;838BE0;
    STA.W $0011,X                        ;838BE2;
    REP #$20                             ;838BE5;
    TDC                                  ;838BE7;
    STA.W $000C,X                        ;838BE8;
    LDA.B $26                            ;838BEB;
    STA.W $001A,X                        ;838BED;
    SEP #$20                             ;838BF0;
    DEY                                  ;838BF2;
    BPL CODE_838BD0                      ;838BF3;

CODE_838BF5:
    SEP #$10                             ;838BF5;
    RTS                                  ;838BF7;

CODE_838BF8:
    REP #$20                             ;838BF8;
    LDY.B $3A                            ;838BFA;
    LDA.W #$0000                         ;838BFC;
    LDX.B $12                            ;838BFF;
    BEQ CODE_838C06                      ;838C01;
    LDA.W #$4000                         ;838C03;

CODE_838C06:
    ORA.B $05                            ;838C06;
    STA.B [$26],Y                        ;838C08;
    INY                                  ;838C0A;
    INY                                  ;838C0B;
    LDA.B $08                            ;838C0C;
    STA.B [$26],Y                        ;838C0E;
    INY                                  ;838C10;
    INY                                  ;838C11;
    SEP #$20                             ;838C12;
    TYA                                  ;838C14;
    AND.B #$FF                           ;838C15;
    STA.B $3A                            ;838C17;
    RTS                                  ;838C19;

CODE_838C1A:
    LDA.B $3A                            ;838C1A;
    INC A                                ;838C1C;
    INC A                                ;838C1D;
    INC A                                ;838C1E;
    INC A                                ;838C1F;
    AND.B #$FF                           ;838C20;
    STA.B $3A                            ;838C22;
    RTS                                  ;838C24;

CODE_838C25:
    REP #$10                             ;838C25;
    LDX.W #$02FC                         ;838C27;
    LDA.W #$7F00                         ;838C2A;

CODE_838C2D:
    STA.L $7FB800,X                      ;838C2D;
    STA.L $7FB802,X                      ;838C31;
    DEX                                  ;838C35;
    DEX                                  ;838C36;
    DEX                                  ;838C37;
    DEX                                  ;838C38;
    BPL CODE_838C2D                      ;838C39;
    SEP #$10                             ;838C3B;
    RTS                                  ;838C3D;

CODE_838C3E:
    LDX.B $01                            ;838C3E;
    JSR.W (PTR16_838C44,X)               ;838C40;
    RTL                                  ;838C43;

PTR16_838C44:
    dw CODE_838C4E                       ;838C44;
    dw CODE_838C7F                       ;838C46;
    dw CODE_838D34                       ;838C48;
    dw CODE_838C79                       ;838C4A;
    dw CODE_838CE8                       ;838C4C;

CODE_838C4E:
    LDA.B #$02                           ;838C4E;
    STA.B $01                            ;838C50;
    STA.B $30                            ;838C52;
    INC.W $0C25                          ;838C54;
    LDA.B #$FF                           ;838C57;
    STA.B $10                            ;838C59;
    STZ.B $18                            ;838C5B;
    STZ.B $12                            ;838C5D;
    LDA.W $0BB9                          ;838C5F;
    AND.B #$70                           ;838C62;
    ORA.B #$06                           ;838C64;
    STA.B $11                            ;838C66;
    JSL.L CODE_839518                    ;838C68;
    LDA.B #$9A                           ;838C6C;
    STA.B $31                            ;838C6E;
    LDA.B #$AB                           ;838C70;
    STA.B $32                            ;838C72;
    LDA.B #$9E                           ;838C74;
    STA.B $16                            ;838C76;
    RTS                                  ;838C78;

CODE_838C79:
    LDA.B #$02                           ;838C79;
    STA.B $01                            ;838C7B;
    STZ.B $30                            ;838C7D;

CODE_838C7F:
    LDX.B $02                            ;838C7F;
    JSR.W (PTR16_838C9D,X)               ;838C81;
    JSL.L CODE_848FCA                    ;838C84;
    JSL.L CODE_8280B4                    ;838C88;
    LDA.B $0E                            ;838C8C;
    BNE CODE_838C9A                      ;838C8E;
    LDA.B #$08                           ;838C90;
    STA.B $01                            ;838C92;
    LDA.B #$04                           ;838C94;
    STA.B $02                            ;838C96;
    STA.B $30                            ;838C98;

CODE_838C9A:
    JMP.W CODE_838D71                    ;838C9A;

PTR16_838C9D:
    dw CODE_838CA1                       ;838C9D;
    dw CODE_838CC0                       ;838C9F;

CODE_838CA1:
    LDX.B $03                            ;838CA1;
    BNE CODE_838CAF                      ;838CA3;
    INC.B $03                            ;838CA5;
    STZ.B $30                            ;838CA7;
    LDA.B #$00                           ;838CA9;
    JSL.L CODE_848F07                    ;838CAB;

CODE_838CAF:
    LDA.B $0F                            ;838CAF;
    BPL CODE_838CB9                      ;838CB1;
    LDA.B #$02                           ;838CB3;
    STA.B $02                            ;838CB5;
    STZ.B $03                            ;838CB7;

CODE_838CB9:
    JSL.L CODE_848EEA                    ;838CB9;
    JMP.W CODE_838D82                    ;838CBD;

CODE_838CC0:
    LDX.B $03                            ;838CC0;
    BNE CODE_838CDF                      ;838CC2;
    INC.B $03                            ;838CC4;
    STZ.B $30                            ;838CC6;
    REP #$21                             ;838CC8;
    LDA.W #$0800                         ;838CCA;
    BIT.B $10                            ;838CCD;
    BVS CODE_838CD4                      ;838CCF;
    LDA.W #$F800                         ;838CD1;

CODE_838CD4:
    STA.B $1A                            ;838CD4;
    SEP #$20                             ;838CD6;
    LDA.B #$01                           ;838CD8;
    JSL.L CODE_848F07                    ;838CDA;
    RTS                                  ;838CDE;

CODE_838CDF:
    JSL.L CODE_82823E                    ;838CDF;
    JSL.L CODE_848EEA                    ;838CE3;
    RTS                                  ;838CE7;

CODE_838CE8:
    LDX.B $02                            ;838CE8;
    JMP.W (PTR16_838CED,X)               ;838CEA;

PTR16_838CED:
    dw CODE_838CF3                       ;838CED;
    dw CODE_838D14                       ;838CEF;
    dw CODE_838D29                       ;838CF1;

CODE_838CF3:
    REP #$30                             ;838CF3;
    LDA.B $33                            ;838CF5;
    STA.B $05                            ;838CF7;
    LDA.B $35                            ;838CF9;
    STA.B $08                            ;838CFB;
    SEP #$30                             ;838CFD;
    INC.B $30                            ;838CFF;
    LDA.B #$02                           ;838D01;
    STA.B $02                            ;838D03;
    JSL.L CODE_8280B4                    ;838D05;
    LDA.B #$02                           ;838D09;
    JSL.L CODE_848F07                    ;838D0B;
    JSL.L CODE_848FCA                    ;838D0F;
    RTS                                  ;838D13;

CODE_838D14:
    LDA.B $0F                            ;838D14;
    BPL CODE_838D1C                      ;838D16;
    LDA.B #$04                           ;838D18;
    STA.B $02                            ;838D1A;

CODE_838D1C:
    JSL.L CODE_8280B4                    ;838D1C;
    JSL.L CODE_848FCA                    ;838D20;
    JSL.L CODE_848EEA                    ;838D24;
    RTS                                  ;838D28;

CODE_838D29:
    DEC.W $0BDD                          ;838D29;
    DEC.W $0C25                          ;838D2C;
    JSL.L CODE_8283A3                    ;838D2F;
    RTS                                  ;838D33;

CODE_838D34:
    LDX.B $02                            ;838D34;
    JSR.W (PTR16_838D42,X)               ;838D36;
    JSL.L CODE_848FCA                    ;838D39;
    JSL.L CODE_8280B4                    ;838D3D;
    RTS                                  ;838D41;

PTR16_838D42:
    dw CODE_838D46                       ;838D42;
    dw CODE_838D5F                       ;838D44;

CODE_838D46:
    REP #$30                             ;838D46;
    LDA.B $33                            ;838D48;
    STA.B $05                            ;838D4A;
    LDA.B $35                            ;838D4C;
    STA.B $08                            ;838D4E;
    SEP #$30                             ;838D50;
    LDA.B #$02                           ;838D52;
    STA.B $02                            ;838D54;
    INC.B $30                            ;838D56;
    LDA.B #$03                           ;838D58;
    JSL.L CODE_848F07                    ;838D5A;
    RTS                                  ;838D5E;

CODE_838D5F:
    LDA.B $0F                            ;838D5F;
    BPL CODE_838D6C                      ;838D61;
    LDA.B #$08                           ;838D63;
    STA.B $01                            ;838D65;
    LDA.B #$04                           ;838D67;
    STA.B $02                            ;838D69;
    RTS                                  ;838D6B;

CODE_838D6C:
    JSL.L CODE_848EEA                    ;838D6C;
    RTS                                  ;838D70;

CODE_838D71:
    REP #$21                             ;838D71;
    LDA.B $0F                            ;838D73;
    AND.W #$000F                         ;838D75;
    ASL A                                ;838D78;
    ASL A                                ;838D79;
    ADC.W #$BE9C                         ;838D7A;
    STA.B $20                            ;838D7D;
    SEP #$20                             ;838D7F;
    RTS                                  ;838D81;

CODE_838D82:
    LDX.B $3C                            ;838D82;
    LDA.W DATA8_86BE39,X                 ;838D84;
    STA.W $0000                          ;838D87;
    STZ.W $0001                          ;838D8A;
    STZ.W $0003                          ;838D8D;
    LDA.W DATA8_86BE3A,X                 ;838D90;
    STA.W $0002                          ;838D93;
    BPL CODE_838D9B                      ;838D96;
    DEC.W $0003                          ;838D98;

CODE_838D9B:
    REP #$20                             ;838D9B;
    LDA.W $0000                          ;838D9D;
    BIT.B $10                            ;838DA0;
    BVS CODE_838DA8                      ;838DA2;
    EOR.W #$FFFF                         ;838DA4;
    INC A                                ;838DA7;

CODE_838DA8:
    CLC                                  ;838DA8;
    ADC.W $0BAD                          ;838DA9;
    STA.B $05                            ;838DAC;
    RTS                                  ;838DAE;

CODE_838DAF:
    LDX.B $01                            ;838DAF;
    JSR.W (PTR16_838DB5,X)               ;838DB1;
    RTL                                  ;838DB4;

PTR16_838DB5:
    dw CODE_838DBF                       ;838DB5;
    dw CODE_838E0B                       ;838DB7;
    dw CODE_838E51                       ;838DB9;
    dw CODE_838E05                       ;838DBB;
    dw CODE_838E51                       ;838DBD;

CODE_838DBF:
    LDA.B #$02                           ;838DBF;
    STA.B $01                            ;838DC1;
    STA.B $30                            ;838DC3;
    INC.W $0C35                          ;838DC5;
    LDA.B #$FF                           ;838DC8;
    STA.B $10                            ;838DCA;
    STZ.B $18                            ;838DCC;
    STZ.B $12                            ;838DCE;
    LDA.W $0BB9                          ;838DD0;
    AND.B #$70                           ;838DD3;
    ORA.B #$06                           ;838DD5;
    STA.B $11                            ;838DD7;
    REP #$20                             ;838DD9;
    LDA.W #$0019                         ;838DDB;
    BIT.B $10                            ;838DDE;
    BVS CODE_838DE5                      ;838DE0;
    LDA.W #$FFE7                         ;838DE2;

CODE_838DE5:
    CLC                                  ;838DE5;
    ADC.W $0BAD                          ;838DE6;
    STA.B $05                            ;838DE9;
    LDA.W $0BB0                          ;838DEB;
    CLC                                  ;838DEE;
    ADC.W #$FFFD                         ;838DEF;
    STA.B $08                            ;838DF2;
    LDA.W #$A957                         ;838DF4;
    STA.B $31                            ;838DF7;
    LDA.W #$BEAC                         ;838DF9;
    STA.B $20                            ;838DFC;
    SEP #$20                             ;838DFE;
    LDA.B #$AB                           ;838E00;
    STA.B $16                            ;838E02;
    RTS                                  ;838E04;

CODE_838E05:
    LDA.B #$02                           ;838E05;
    STA.B $01                            ;838E07;
    STZ.B $30                            ;838E09;

CODE_838E0B:
    LDX.B $02                            ;838E0B;
    JSR.W (PTR16_838E27,X)               ;838E0D;
    JSL.L CODE_848FCA                    ;838E10;
    JSL.L CODE_8280B4                    ;838E14;
    LDA.B $0E                            ;838E18;
    BNE CODE_838E26                      ;838E1A;
    LDA.B #$08                           ;838E1C;
    STA.B $01                            ;838E1E;
    LDA.B #$04                           ;838E20;
    STA.B $02                            ;838E22;
    STA.B $30                            ;838E24;

CODE_838E26:
    RTS                                  ;838E26;

PTR16_838E27:
    dw CODE_838E29                       ;838E27;

CODE_838E29:
    LDX.B $03                            ;838E29;
    BNE CODE_838E48                      ;838E2B;
    INC.B $03                            ;838E2D;
    STZ.B $30                            ;838E2F;
    REP #$21                             ;838E31;
    LDA.W #$0400                         ;838E33;
    BIT.B $10                            ;838E36;
    BVS CODE_838E3D                      ;838E38;
    LDA.W #$FC00                         ;838E3A;

CODE_838E3D:
    STA.B $1A                            ;838E3D;
    SEP #$20                             ;838E3F;
    LDA.B #$00                           ;838E41;
    JSL.L CODE_848F07                    ;838E43;
    RTS                                  ;838E47;

CODE_838E48:
    JSL.L CODE_82823E                    ;838E48;
    JSL.L CODE_848EEA                    ;838E4C;
    RTS                                  ;838E50;

CODE_838E51:
    LDX.B $02                            ;838E51;
    JMP.W (PTR16_838E56,X)               ;838E53;

PTR16_838E56:
    dw CODE_838E5C                       ;838E56;
    dw CODE_838E7D                       ;838E58;
    dw CODE_838E92                       ;838E5A;

CODE_838E5C:
    REP #$30                             ;838E5C;
    LDA.B $33                            ;838E5E;
    STA.B $05                            ;838E60;
    LDA.B $35                            ;838E62;
    STA.B $08                            ;838E64;
    SEP #$30                             ;838E66;
    INC.B $30                            ;838E68;
    LDA.B #$02                           ;838E6A;
    STA.B $02                            ;838E6C;
    JSL.L CODE_8280B4                    ;838E6E;
    LDA.B #$01                           ;838E72;
    JSL.L CODE_848F07                    ;838E74;
    JSL.L CODE_848FCA                    ;838E78;
    RTS                                  ;838E7C;

CODE_838E7D:
    LDA.B $0F                            ;838E7D;
    BPL CODE_838E85                      ;838E7F;
    LDA.B #$04                           ;838E81;
    STA.B $02                            ;838E83;

CODE_838E85:
    JSL.L CODE_8280B4                    ;838E85;
    JSL.L CODE_848FCA                    ;838E89;
    JSL.L CODE_848EEA                    ;838E8D;
    RTS                                  ;838E91;

CODE_838E92:
    DEC.W $0C35                          ;838E92;
    DEC.W $0BDD                          ;838E95;
    JSL.L CODE_8283A3                    ;838E98;
    RTS                                  ;838E9C;

CODE_838E9D:
    LDX.B $01                            ;838E9D;
    JMP.W (PTR16_838EA2,X)               ;838E9F;

PTR16_838EA2:
    dw CODE_838EAC                       ;838EA2;
    dw CODE_838F65                       ;838EA4;
    dw CODE_839040                       ;838EA6;
    dw CODE_83903C                       ;838EA8;
    dw CODE_83903C                       ;838EAA;

CODE_838EAC:
    LDA.B #$02                           ;838EAC;
    STA.B $01                            ;838EAE;
    JSL.L CODE_83917D                    ;838EB0;
    LDX.W $1F7A                          ;838EB4;
    LDA.W $0BB9                          ;838EB7;
    AND.B #$70                           ;838EBA;
    ORA.B #$06                           ;838EBC;
    STA.B $11                            ;838EBE;
    STZ.B $30                            ;838EC0;
    LDA.B #$01                           ;838EC2;
    STA.B $38                            ;838EC4;
    LDA.B #$03                           ;838EC6;
    STA.B $3E                            ;838EC8;
    LDA.B #$FF                           ;838ECA;
    STA.B $10                            ;838ECC;
    LDA.B #$10                           ;838ECE;
    STA.B $16                            ;838ED0;
    LDX.B $3C                            ;838ED2;
    LDA.W DATA8_86BE39,X                 ;838ED4;
    STA.W $0000                          ;838ED7;
    STZ.W $0001                          ;838EDA;
    STZ.W $0003                          ;838EDD;
    LDA.W DATA8_86BE3A,X                 ;838EE0;
    STA.W $0002                          ;838EE3;
    BPL CODE_838EEB                      ;838EE6;
    DEC.W $0003                          ;838EE8;

CODE_838EEB:
    REP #$20                             ;838EEB;
    LDA.W $0000                          ;838EED;
    BIT.B $10                            ;838EF0;
    BVS CODE_838EF8                      ;838EF2;
    EOR.W #$FFFF                         ;838EF4;
    INC A                                ;838EF7;

CODE_838EF8:
    CLC                                  ;838EF8;
    ADC.W $0BAD                          ;838EF9;
    STA.B $05                            ;838EFC;
    LDA.W $0BB0                          ;838EFE;
    CLC                                  ;838F01;
    ADC.W $0002                          ;838F02;
    STA.B $08                            ;838F05;
    LDA.W #$0400                         ;838F07;
    BIT.B $10                            ;838F0A;
    BVS CODE_838F11                      ;838F0C;
    LDA.W #$FC00                         ;838F0E;

CODE_838F11:
    STA.B $1A                            ;838F11;
    STZ.B $1C                            ;838F13;
    LDA.W #$BED0                         ;838F15;
    STA.B $20                            ;838F18;
    LDA.W #$ABE5                         ;838F1A;
    STA.B $31                            ;838F1D;
    STZ.B $0C                            ;838F1F;
    LDA.W #$FFFF                         ;838F21;
    STA.B $39                            ;838F24;
    STZ.B $1A                            ;838F26;
    STZ.B $1C                            ;838F28;
    SEP #$20                             ;838F2A;
    LDA.B $11                            ;838F2C;
    ASL A                                ;838F2E;
    ASL A                                ;838F2F;
    BCC CODE_838F40                      ;838F30;
    LDA.B #$01                           ;838F32;
    STA.B $1B                            ;838F34;
    LDA.B #$08                           ;838F36;
    STA.B $37                            ;838F38;
    STA.B $3B                            ;838F3A;
    LDA.B #$0C                           ;838F3C;
    BRA CODE_838F4C                      ;838F3E;

CODE_838F40:
    LDA.B #$FF                           ;838F40;
    STA.B $1B                            ;838F42;
    LDA.B #$18                           ;838F44;
    STA.B $37                            ;838F46;
    STA.B $3B                            ;838F48;
    LDA.B #$04                           ;838F4A;

CODE_838F4C:
    STA.B $3D                            ;838F4C;
    JSL.L CODE_848F07                    ;838F4E;
    JSL.L CODE_848FCA                    ;838F52;
    LDA.B #$40                           ;838F56;
    TRB.B $11                            ;838F58;
    JSR.W CODE_839047                    ;838F5A;
    LDA.B #$08                           ;838F5D;
    STA.B $38                            ;838F5F;
    STZ.B $1F                            ;838F61;
    STZ.B $1E                            ;838F63;

CODE_838F65:
    DEC.B $3E                            ;838F65;
    BNE CODE_838F70                      ;838F67;
    LDA.B #$03                           ;838F69;
    STA.B $3E                            ;838F6B;
    JSR.W CODE_839133                    ;838F6D;

CODE_838F70:
    DEC.B $38                            ;838F70;
    BNE CODE_838F84                      ;838F72;
    LDA.B #$01                           ;838F74;
    STA.B $38                            ;838F76;
    LDA.B $0D                            ;838F78;
    BEQ CODE_838F81                      ;838F7A;
    JSR.W CODE_8390AF                    ;838F7C;
    BRA CODE_838F84                      ;838F7F;

CODE_838F81:
    JSR.W CODE_839047                    ;838F81;

CODE_838F84:
    LDA.B $3B                            ;838F84;
    ASL A                                ;838F86;
    ASL A                                ;838F87;
    TAX                                  ;838F88;
    REP #$20                             ;838F89;
    LDA.W DATA8_86EE37,X                 ;838F8B;
    ASL A                                ;838F8E;
    ASL A                                ;838F8F;
    ASL A                                ;838F90;
    ASL A                                ;838F91;
    BPL CODE_838F98                      ;838F92;
    EOR.W #$FFFF                         ;838F94;
    INC A                                ;838F97;

CODE_838F98:
    SEP #$20                             ;838F98;
    XBA                                  ;838F9A;
    STA.B $1F                            ;838F9B;
    REP #$20                             ;838F9D;
    LDA.W DATA8_86EE39,X                 ;838F9F;
    ASL A                                ;838FA2;
    ASL A                                ;838FA3;
    ASL A                                ;838FA4;
    ASL A                                ;838FA5;
    BPL CODE_838FAC                      ;838FA6;
    EOR.W #$FFFF                         ;838FA8;
    INC A                                ;838FAB;

CODE_838FAC:
    SEP #$20                             ;838FAC;
    XBA                                  ;838FAE;
    STA.B $1E                            ;838FAF;
    LDA.B $37                            ;838FB1;
    BIT.B #$10                           ;838FB3;
    BEQ CODE_838FF5                      ;838FB5;
    BIT.B #$08                           ;838FB7;
    BEQ CODE_838FD8                      ;838FB9;
    JSL.L CODE_8281B2                    ;838FBB;
    JSR.W CODE_839113                    ;838FBF;
    REP #$20                             ;838FC2;
    LDA.W $0000                          ;838FC4;
    CMP.B $1A                            ;838FC7;
    BMI CODE_838FCD                      ;838FC9;
    STA.B $1A                            ;838FCB;

CODE_838FCD:
    LDA.W $0002                          ;838FCD;
    CMP.B $1C                            ;838FD0;
    BPL CODE_839031                      ;838FD2;
    STA.B $1C                            ;838FD4;
    BRA CODE_839031                      ;838FD6;

CODE_838FD8:
    JSL.L CODE_828174                    ;838FD8;
    JSR.W CODE_839113                    ;838FDC;
    REP #$20                             ;838FDF;
    LDA.W $0000                          ;838FE1;
    CMP.B $1A                            ;838FE4;
    BMI CODE_838FEA                      ;838FE6;
    STA.B $1A                            ;838FE8;

CODE_838FEA:
    LDA.W $0002                          ;838FEA;
    CMP.B $1C                            ;838FED;
    BMI CODE_839031                      ;838FEF;
    STA.B $1C                            ;838FF1;
    BRA CODE_839031                      ;838FF3;

CODE_838FF5:
    BIT.B #$08                           ;838FF5;
    BEQ CODE_839016                      ;838FF7;
    JSL.L CODE_828195                    ;838FF9;
    JSR.W CODE_839113                    ;838FFD;
    REP #$20                             ;839000;
    LDA.W $0000                          ;839002;
    CMP.B $1A                            ;839005;
    BPL CODE_83900B                      ;839007;
    STA.B $1A                            ;839009;

CODE_83900B:
    LDA.W $0002                          ;83900B;
    CMP.B $1C                            ;83900E;
    BMI CODE_839031                      ;839010;
    STA.B $1C                            ;839012;
    BRA CODE_839031                      ;839014;

CODE_839016:
    JSL.L CODE_8281CF                    ;839016;
    JSR.W CODE_839113                    ;83901A;
    REP #$20                             ;83901D;
    LDA.W $0000                          ;83901F;
    CMP.B $1A                            ;839022;
    BPL CODE_839028                      ;839024;
    STA.B $1A                            ;839026;

CODE_839028:
    LDA.W $0002                          ;839028;
    CMP.B $1C                            ;83902B;
    BPL CODE_839031                      ;83902D;
    STA.B $1C                            ;83902F;

CODE_839031:
    SEP #$20                             ;839031;
    JSL.L CODE_8280B4                    ;839033;
    LDA.B $0E                            ;839037;
    BEQ CODE_839040                      ;839039;
    RTL                                  ;83903B;

CODE_83903C:
    JSL.L CODE_84A51A                    ;83903C;

CODE_839040:
    DEC.W $0BDD                          ;839040;
    JML.L CODE_8283A3                    ;839043;

CODE_839047:
    REP #$10                             ;839047;
    LDX.W #$FFFF                         ;839049;
    STX.B $39                            ;83904C;
    LDX.W #$0E68                         ;83904E;

CODE_839051:
    SEP #$20                             ;839051;
    LDA.W $0000,X                        ;839053;
    BEQ CODE_839097                      ;839056;
    LDA.W $000E,X                        ;839058;
    BEQ CODE_839097                      ;83905B;
    LDA.W $0027,X                        ;83905D;
    AND.B #$7F                           ;839060;
    BEQ CODE_839097                      ;839062;
    LDA.W $0028,X                        ;839064;
    BEQ CODE_839097                      ;839067;
    LDA.W $0030,X                        ;839069;
    BNE CODE_839097                      ;83906C;
    REP #$20                             ;83906E;
    LDA.B $05                            ;839070;
    STA.W $0000                          ;839072;
    LDA.B $08                            ;839075;
    STA.W $0002                          ;839077;
    LDA.W $0005,X                        ;83907A;
    STA.W $0004                          ;83907D;
    LDA.W $0008,X                        ;839080;
    STA.W $0006                          ;839083;
    PHX                                  ;839086;
    JSL.L CODE_80CEB0                    ;839087;
    PLX                                  ;83908B;
    LDA.W $0000                          ;83908C;
    CMP.B $39                            ;83908F;
    BCS CODE_839097                      ;839091;
    STA.B $39                            ;839093;
    STX.B $0C                            ;839095;

CODE_839097:
    REP #$20                             ;839097;
    TXA                                  ;839099;
    CLC                                  ;83909A;
    ADC.W #$0040                         ;83909B;
    TAX                                  ;83909E;
    CPX.W #$1228                         ;83909F;
    BCC CODE_839051                      ;8390A2;
    SEP #$30                             ;8390A4;
    LDA.B $0D                            ;8390A6;
    BNE CODE_8390AE                      ;8390A8;
    LDA.B $37                            ;8390AA;
    STA.B $3B                            ;8390AC;

CODE_8390AE:
    RTS                                  ;8390AE;

CODE_8390AF:
    REP #$10                             ;8390AF;
    LDX.B $0C                            ;8390B1;
    LDA.W $0000,X                        ;8390B3;
    BEQ CODE_83910E                      ;8390B6;
    LDA.W $0027,X                        ;8390B8;
    AND.B #$7F                           ;8390BB;
    BEQ CODE_83910E                      ;8390BD;
    LDA.W $0030,X                        ;8390BF;
    BNE CODE_83910E                      ;8390C2;
    REP #$20                             ;8390C4;
    LDA.B $05                            ;8390C6;
    STA.W $0000                          ;8390C8;
    LDA.B $08                            ;8390CB;
    STA.W $0002                          ;8390CD;
    LDA.W $0005,X                        ;8390D0;
    STA.W $0004                          ;8390D3;
    LDA.W $0008,X                        ;8390D6;
    STA.W $0006                          ;8390D9;
    SEP #$30                             ;8390DC;
    JSL.L CODE_84A097                    ;8390DE;
    STA.B $3B                            ;8390E2;
    SEC                                  ;8390E4;
    SBC.B $37                            ;8390E5;
    BEQ CODE_83910D                      ;8390E7;
    AND.B #$1F                           ;8390E9;
    CMP.B #$10                           ;8390EB;
    BCC CODE_8390F3                      ;8390ED;
    DEC.B $37                            ;8390EF;
    DEC.B $37                            ;8390F1;

CODE_8390F3:
    INC.B $37                            ;8390F3;
    LDA.B $37                            ;8390F5;
    AND.B #$1F                           ;8390F7;
    STA.B $37                            ;8390F9;
    TAX                                  ;8390FB;
    LDA.W DATA8_86BEB0,X                 ;8390FC;
    CMP.B $3D                            ;8390FF;
    BEQ CODE_83910D                      ;839101;
    STA.B $3D                            ;839103;
    JSL.L CODE_848F07                    ;839105;
    JSL.L CODE_848FCA                    ;839109;

CODE_83910D:
    RTS                                  ;83910D;

CODE_83910E:
    SEP #$30                             ;83910E;
    STZ.B $0D                            ;839110;
    RTS                                  ;839112;

CODE_839113:
    LDA.B $37                            ;839113;
    ASL A                                ;839115;
    ASL A                                ;839116;
    TAX                                  ;839117;
    REP #$20                             ;839118;
    LDA.W DATA8_86EE37,X                 ;83911A;
    ASL A                                ;83911D;
    CLC                                  ;83911E;
    ADC.W DATA8_86EE37,X                 ;83911F;
    STA.W $0000                          ;839122;
    LDA.W DATA8_86EE39,X                 ;839125;
    ASL A                                ;839128;
    CLC                                  ;839129;
    ADC.W DATA8_86EE39,X                 ;83912A;
    STA.W $0002                          ;83912D;
    SEP #$20                             ;839130;
    RTS                                  ;839132;

CODE_839133:
    JSL.L CODE_8282D3                    ;839133;
    BNE CODE_83917A                      ;839137;
    INC.W $0000,X                        ;839139;
    LDA.B #$09                           ;83913C;
    STA.W $000A,X                        ;83913E;
    LDA.B #$05                           ;839141;
    STA.W $000B,X                        ;839143;
    STZ.W $0011,X                        ;839146;
    REP #$20                             ;839149;
    LDA.B $3D                            ;83914B;
    AND.W #$00FF                         ;83914D;
    ASL A                                ;839150;
    ASL A                                ;839151;
    ASL A                                ;839152;
    TAY                                  ;839153;
    LDA.W DATA8_86EE37,Y                 ;839154;
    ASL A                                ;839157;
    AND.W #$FF00                         ;839158;
    BPL CODE_839160                      ;83915B;
    ORA.W #$00FF                         ;83915D;

CODE_839160:
    XBA                                  ;839160;
    CLC                                  ;839161;
    ADC.B $05                            ;839162;
    STA.W $0005,X                        ;839164;
    LDA.W DATA8_86EE39,Y                 ;839167;
    ASL A                                ;83916A;
    AND.W #$FF00                         ;83916B;
    BPL CODE_839173                      ;83916E;
    ORA.W #$00FF                         ;839170;

CODE_839173:
    XBA                                  ;839173;
    CLC                                  ;839174;
    ADC.B $08                            ;839175;
    STA.W $0008,X                        ;839177;

CODE_83917A:
    SEP #$30                             ;83917A;
    RTS                                  ;83917C;

CODE_83917D:
    PHP                                  ;83917D;
    PHD                                  ;83917E;
    REP #$30                             ;83917F;
    TDC                                  ;839181;
    STA.W $0000                          ;839182;
    LDA.W #$0000                         ;839185;
    TCD                                  ;839188;
    STZ.B $02                            ;839189;
    LDX.W #$1228                         ;83918B;

CODE_83918E:
    CPX.B $00                            ;83918E;
    BEQ CODE_8391B2                      ;839190;
    SEP #$20                             ;839192;
    LDA.B $00,X                          ;839194;
    BEQ CODE_8391B2                      ;839196;
    LDA.B $01                            ;839198;
    BEQ CODE_8391B2                      ;83919A;
    LDA.B $0A,X                          ;83919C;
    CMP.B #$07                           ;83919E;
    BEQ CODE_8391A6                      ;8391A0;
    CMP.B #$10                           ;8391A2;
    BNE CODE_8391B2                      ;8391A4;

CODE_8391A6:
    LDA.B #$00                           ;8391A6;
    XBA                                  ;8391A8;
    LDA.B $18,X                          ;8391A9;
    LSR A                                ;8391AB;
    TAY                                  ;8391AC;
    LDA.W DATA8_86BED4,Y                 ;8391AD;
    TSB.B $02                            ;8391B0;

CODE_8391B2:
    REP #$30                             ;8391B2;
    TXA                                  ;8391B4;
    CLC                                  ;8391B5;
    ADC.W #$0040                         ;8391B6;
    TAX                                  ;8391B9;
    CMP.W #$1428                         ;8391BA;
    BCC CODE_83918E                      ;8391BD;
    SEP #$30                             ;8391BF;
    LDX.B #$07                           ;8391C1;
    LDA.B $02                            ;8391C3;

CODE_8391C5:
    LSR A                                ;8391C5;
    BCC CODE_8391CB                      ;8391C6;
    DEX                                  ;8391C8;
    BRA CODE_8391C5                      ;8391C9;

CODE_8391CB:
    TXA                                  ;8391CB;
    ASL A                                ;8391CC;
    PLD                                  ;8391CD;
    STA.B $18                            ;8391CE;
    PLP                                  ;8391D0;
    RTL                                  ;8391D1;

CODE_8391D2:
    LDX.B $01                            ;8391D2;
    JSR.W (PTR16_8391D8,X)               ;8391D4;
    RTL                                  ;8391D7;

PTR16_8391D8:
    dw CODE_8391E4                       ;8391D8;
    dw CODE_83920C                       ;8391DA;
    dw CODE_83929A                       ;8391DC;
    dw CODE_839296                       ;8391DE;
    dw CODE_839296                       ;8391E0;
    dw CODE_83929A                       ;8391E2;

CODE_8391E4:
    LDA.B #$02                           ;8391E4;
    STA.B $01                            ;8391E6;
    STZ.B $18                            ;8391E8;
    STA.B $30                            ;8391EA;
    STZ.B $12                            ;8391EC;
    LDA.B $0B                            ;8391EE;
    BNE CODE_8391FF                      ;8391F0;
    LDA.W $0BB9                          ;8391F2;
    AND.B #$70                           ;8391F5;
    ORA.B #$06                           ;8391F7;
    STA.B $11                            ;8391F9;
    JSL.L CODE_839518                    ;8391FB;

CODE_8391FF:
    LDA.B $0B                            ;8391FF;
    BEQ CODE_839207                      ;839201;
    LDA.B #$02                           ;839203;
    STA.B $02                            ;839205;

CODE_839207:
    LDA.B #$0F                           ;839207;
    STA.B $16                            ;839209;
    RTS                                  ;83920B;

CODE_83920C:
    LDX.B $02                            ;83920C;
    JSR.W (PTR16_83921E,X)               ;83920E;
    JSL.L CODE_8280B4                    ;839211;
    LDA.B $0E                            ;839215;
    BNE CODE_83921D                      ;839217;
    LDA.B #$0A                           ;839219;
    STA.B $01                            ;83921B;

CODE_83921D:
    RTS                                  ;83921D;

PTR16_83921E:
    dw CODE_839222                       ;83921E;
    dw CODE_839261                       ;839220;

CODE_839222:
    LDX.B $03                            ;839222;
    BNE CODE_839230                      ;839224;
    INC.B $03                            ;839226;
    STZ.B $30                            ;839228;
    LDA.B #$00                           ;83922A;
    JSL.L CODE_848F07                    ;83922C;

CODE_839230:
    JSL.L CODE_848EEA                    ;839230;
    LDA.B $0F                            ;839234;
    BPL CODE_83923D                      ;839236;
    LDA.B #$0A                           ;839238;
    STA.B $01                            ;83923A;
    RTS                                  ;83923C;

CODE_83923D:
    BIT.B #$20                           ;83923D;
    BEQ CODE_83924A                      ;83923F;
    LDA.B #$67                           ;839241;
    JSL.L CODE_8088CD                    ;839243;
    JSR.W CODE_8392A4                    ;839247;

CODE_83924A:
    BIT.B #$40                           ;83924A;
    BEQ CODE_839250                      ;83924C;
    STA.B $30                            ;83924E;

CODE_839250:
    REP #$21                             ;839250;
    LDA.B $0F                            ;839252;
    AND.W #$000F                         ;839254;
    ASL A                                ;839257;
    ASL A                                ;839258;
    ADC.W #$BEDC                         ;839259;
    STA.B $20                            ;83925C;
    SEP #$20                             ;83925E;
    RTS                                  ;839260;

CODE_839261:
    LDX.B $03                            ;839261;
    BNE CODE_839291                      ;839263;
    INC.B $03                            ;839265;
    STZ.B $30                            ;839267;
    REP #$21                             ;839269;
    LDA.B $0B                            ;83926B;
    AND.W #$00FF                         ;83926D;
    ASL A                                ;839270;
    TAX                                  ;839271;
    LDA.W DATA8_86BEEE,X                 ;839272;
    STA.B $1C                            ;839275;
    LDA.W #$0600                         ;839277;
    BIT.B $10                            ;83927A;
    BVS CODE_839281                      ;83927C;
    LDA.W #$FA00                         ;83927E;

CODE_839281:
    STA.B $1A                            ;839281;
    LDA.W #$BEEC                         ;839283;
    STA.B $20                            ;839286;
    SEP #$20                             ;839288;
    LDA.B $0B                            ;83928A;
    JSL.L CODE_848F07                    ;83928C;
    RTS                                  ;839290;

CODE_839291:
    JSL.L CODE_82820A                    ;839291;
    RTS                                  ;839295;

CODE_839296:
    JSL.L CODE_84A51A                    ;839296;

CODE_83929A:
    INC.B $30                            ;83929A;
    DEC.W $0BDD                          ;83929C;
    JSL.L CODE_8283A3                    ;83929F;
    RTS                                  ;8392A3;

CODE_8392A4:
    REP #$10                             ;8392A4;
    LDY.W #$0003                         ;8392A6;

CODE_8392A9:
    JSL.L CODE_82833E                    ;8392A9;
    BNE CODE_8392E9                      ;8392AD;
    INC.W $0000,X                        ;8392AF;
    INC.W $0BDD                          ;8392B2;
    LDA.B #$08                           ;8392B5;
    STA.W $000A,X                        ;8392B7;
    TYA                                  ;8392BA;
    STA.W $000B,X                        ;8392BB;
    LDA.B $11                            ;8392BE;
    STA.W $0011,X                        ;8392C0;
    PHY                                  ;8392C3;
    REP #$21                             ;8392C4;
    TYA                                  ;8392C6;
    ASL A                                ;8392C7;
    ASL A                                ;8392C8;
    TAY                                  ;8392C9;
    LDA.W DATA8_86BEF2,Y                 ;8392CA;
    BIT.B $10                            ;8392CD;
    BVC CODE_8392D5                      ;8392CF;
    EOR.W #$FFFF                         ;8392D1;
    INC A                                ;8392D4;

CODE_8392D5:
    ADC.B $05                            ;8392D5;
    STA.W $0005,X                        ;8392D7;
    LDA.W DATA8_86BEF4,Y                 ;8392DA;
    CLC                                  ;8392DD;
    ADC.B $08                            ;8392DE;
    STA.W $0008,X                        ;8392E0;
    SEP #$20                             ;8392E3;
    PLY                                  ;8392E5;
    DEY                                  ;8392E6;
    BNE CODE_8392A9                      ;8392E7;

CODE_8392E9:
    SEP #$10                             ;8392E9;
    RTS                                  ;8392EB;

CODE_8392EC:
    LDX.B $01                            ;8392EC;
    JSR.W (PTR16_8392F5,X)               ;8392EE;
    JML.L CODE_848FCA                    ;8392F1;

PTR16_8392F5:
    dw CODE_8392FF                       ;8392F5;
    dw CODE_839347                       ;8392F7;
    dw CODE_83941C                       ;8392F9;
    dw CODE_83941C                       ;8392FB;
    dw CODE_83941C                       ;8392FD;

CODE_8392FF:
    LDA.B #$02                           ;8392FF;
    STA.B $01                            ;839301;
    LDA.B #$FF                           ;839303;
    STA.B $10                            ;839305;
    LDA.B #$02                           ;839307;
    STA.B $18                            ;839309;
    STA.B $30                            ;83930B;
    STZ.B $12                            ;83930D;
    STZ.B $3A                            ;83930F;
    STZ.B $38                            ;839311;
    STZ.B $39                            ;839313;
    LDA.W $0BB9                          ;839315;
    AND.B #$70                           ;839318;
    ORA.B #$06                           ;83931A;
    STA.B $11                            ;83931C;
    JSL.L CODE_839518                    ;83931E;
    REP #$20                             ;839322;
    LDA.W #$0400                         ;839324;
    BIT.B $10                            ;839327;
    BVS CODE_83932E                      ;839329;
    LDA.W #$FC00                         ;83932B;

CODE_83932E:
    STA.B $1A                            ;83932E;
    STZ.B $1C                            ;839330;
    LDA.W #$0040                         ;839332;
    STA.B $1E                            ;839335;
    LDA.W #$AF87                         ;839337;
    STA.B $31                            ;83933A;
    SEP #$20                             ;83933C;
    LDA.B #$48                           ;83933E;
    STA.B $16                            ;839340;
    LDA.B #$80                           ;839342;
    STA.B $17                            ;839344;

CODE_839346:
    RTS                                  ;839346;

CODE_839347:
    LDX.B $02                            ;839347;
    JSR.W (PTR16_839381,X)               ;839349;
    LDA.B #$0C                           ;83934C;
    STA.B $20                            ;83934E;
    LDA.B #$BF                           ;839350;
    STA.B $21                            ;839352;
    JSL.L CODE_849BC8                    ;839354;
    LDA.B #$02                           ;839358;
    STA.B $20                            ;83935A;
    LDA.B #$BF                           ;83935C;
    STA.B $21                            ;83935E;
    JSL.L CODE_8491BE                    ;839360;
    LDA.B $00                            ;839364;
    BEQ CODE_839346                      ;839366;
    JSL.L CODE_8280B4                    ;839368;
    LDA.B $0E                            ;83936C;
    BNE CODE_839378                      ;83936E;
    LDA.B #$04                           ;839370;
    STA.B $02                            ;839372;
    STA.B $03                            ;839374;
    STA.B $30                            ;839376;

CODE_839378:
    LDA.B $02                            ;839378;
    STA.B $38                            ;83937A;
    LDA.B $03                            ;83937C;
    STA.B $39                            ;83937E;
    RTS                                  ;839380;

PTR16_839381:
    dw CODE_839387                       ;839381;
    dw CODE_8393A3                       ;839383;
    dw CODE_839420                       ;839385;

CODE_839387:
    LDX.B $03                            ;839387;
    BNE CODE_839394                      ;839389;
    INC.B $03                            ;83938B;
    LDA.B #$00                           ;83938D;
    JSL.L CODE_848F07                    ;83938F;
    RTS                                  ;839393;

CODE_839394:
    LDA.B $0F                            ;839394;
    BPL CODE_83939E                      ;839396;
    LDA.B #$02                           ;839398;
    STA.B $02                            ;83939A;
    STZ.B $03                            ;83939C;

CODE_83939E:
    JSL.L CODE_848EEA                    ;83939E;
    RTS                                  ;8393A2;

CODE_8393A3:
    LDX.B $03                            ;8393A3;
    JMP.W (PTR16_8393A8,X)               ;8393A5;

PTR16_8393A8:
    dw CODE_8393AE                       ;8393A8;
    dw CODE_8393BB                       ;8393AA;
    dw CODE_8393F0                       ;8393AC;

CODE_8393AE:
    LDA.B #$02                           ;8393AE;
    STA.B $03                            ;8393B0;
    STZ.B $30                            ;8393B2;
    LDA.B #$01                           ;8393B4;
    JSL.L CODE_848F07                    ;8393B6;
    RTS                                  ;8393BA;

CODE_8393BB:
    LDA.B $2B                            ;8393BB;
    BIT.B #$04                           ;8393BD;
    BEQ CODE_8393C6                      ;8393BF;
    LDA.B #$04                           ;8393C1;
    STA.B $03                            ;8393C3;
    RTS                                  ;8393C5;

CODE_8393C6:
    BIT.B #$03                           ;8393C6;
    BEQ CODE_8393DA                      ;8393C8;
    INC.B $3A                            ;8393CA;
    LDA.B $3A                            ;8393CC;
    CMP.B #$02                           ;8393CE;
    BCC CODE_8393D7                      ;8393D0;
    LDA.B #$08                           ;8393D2;
    STA.B $01                            ;8393D4;
    RTS                                  ;8393D6;

CODE_8393D7:
    JSR.W CODE_83942A                    ;8393D7;

CODE_8393DA:
    JSL.L CODE_828174                    ;8393DA;
    REP #$20                             ;8393DE;
    LDA.W #$FC00                         ;8393E0;
    CMP.B $1C                            ;8393E3;
    BMI CODE_8393E9                      ;8393E5;
    STA.B $1C                            ;8393E7;

CODE_8393E9:
    SEP #$20                             ;8393E9;
    JSL.L CODE_848EEA                    ;8393EB;
    RTS                                  ;8393EF;

CODE_8393F0:
    LDA.B $2B                            ;8393F0;
    BIT.B #$04                           ;8393F2;
    BNE CODE_8393FF                      ;8393F4;
    LDA.B #$02                           ;8393F6;
    STA.B $03                            ;8393F8;
    STZ.B $1C                            ;8393FA;
    STZ.B $1D                            ;8393FC;
    RTS                                  ;8393FE;

CODE_8393FF:
    BIT.B #$03                           ;8393FF;
    BEQ CODE_839413                      ;839401;
    INC.B $3A                            ;839403;
    LDA.B $3A                            ;839405;
    CMP.B #$02                           ;839407;
    BCC CODE_839410                      ;839409;
    LDA.B #$08                           ;83940B;
    STA.B $01                            ;83940D;
    RTS                                  ;83940F;

CODE_839410:
    JSR.W CODE_83942A                    ;839410;

CODE_839413:
    JSL.L CODE_82823E                    ;839413;
    JSL.L CODE_848EEA                    ;839417;
    RTS                                  ;83941B;

CODE_83941C:
    JSL.L CODE_84A4AB                    ;83941C;

CODE_839420:
    INC.B $30                            ;839420;
    DEC.W $0BDD                          ;839422;
    JSL.L CODE_8283A3                    ;839425;
    RTS                                  ;839429;

CODE_83942A:
    REP #$20                             ;83942A;
    LDA.B $1A                            ;83942C;
    EOR.W #$FFFF                         ;83942E;
    INC A                                ;839431;
    STA.B $1A                            ;839432;
    SEP #$20                             ;839434;
    LDA.B $11                            ;839436;
    EOR.B #$40                           ;839438;
    STA.B $11                            ;83943A;
    RTS                                  ;83943C;

CODE_83943D:
    LDX.B $01                            ;83943D;
    JSR.W (PTR16_839443,X)               ;83943F;
    RTL                                  ;839442;

PTR16_839443:
    dw CODE_83944D                       ;839443;
    dw CODE_8394B2                       ;839445;
    dw CODE_8394A4                       ;839447;
    dw CODE_8394A4                       ;839449;
    dw CODE_8394A4                       ;83944B;

CODE_83944D:
    LDA.B #$02                           ;83944D;
    STA.B $01                            ;83944F;
    LDA.B #$FF                           ;839451;
    STA.B $10                            ;839453;
    LDA.B #$02                           ;839455;
    STA.B $18                            ;839457;
    STA.B $30                            ;839459;
    STZ.B $12                            ;83945B;
    LDA.W $0B9C                          ;83945D;
    AND.B #$0E                           ;839460;
    BNE CODE_83946A                      ;839462;
    LDA.B #$61                           ;839464;
    JSL.L CODE_8088CD                    ;839466;

CODE_83946A:
    STZ.B $38                            ;83946A;
    STZ.B $39                            ;83946C;
    LDA.W $0BB9                          ;83946E;
    AND.B #$70                           ;839471;
    ORA.B #$06                           ;839473;
    STA.B $11                            ;839475;
    JSL.L CODE_839518                    ;839477;
    REP #$20                             ;83947B;
    LDA.W #$0700                         ;83947D;
    BIT.B $10                            ;839480;
    BVS CODE_839487                      ;839482;
    LDA.W #$F900                         ;839484;

CODE_839487:
    STA.B $1A                            ;839487;
    LDA.W #$BF10                         ;839489;
    STA.B $20                            ;83948C;
    STZ.B $28                            ;83948E;
    SEP #$20                             ;839490;
    LDA.W $0C18                          ;839492;
    BEQ CODE_83949B                      ;839495;
    LDA.B #$02                           ;839497;
    STA.B $02                            ;839499;

CODE_83949B:
    LDA.B #$46                           ;83949B;
    STA.B $16                            ;83949D;
    LDA.B #$80                           ;83949F;
    STA.B $17                            ;8394A1;

CODE_8394A3:
    RTS                                  ;8394A3;

CODE_8394A4:
    LDA.B #$02                           ;8394A4;
    STA.B $01                            ;8394A6;
    LDA.B $38                            ;8394A8;
    STA.B $02                            ;8394AA;
    LDA.B $39                            ;8394AC;
    STA.B $03                            ;8394AE;
    STZ.B $30                            ;8394B0;

CODE_8394B2:
    LDX.B $02                            ;8394B2;
    JSR.W (PTR16_8394CE,X)               ;8394B4;
    LDA.B $00                            ;8394B7;
    BEQ CODE_8394A3                      ;8394B9;
    JSL.L CODE_8280B4                    ;8394BB;
    LDA.B $02                            ;8394BF;
    STA.B $38                            ;8394C1;
    LDA.B $03                            ;8394C3;
    STA.B $39                            ;8394C5;
    LDA.B $30                            ;8394C7;
    EOR.B #$01                           ;8394C9;
    STA.B $30                            ;8394CB;
    RTS                                  ;8394CD;

PTR16_8394CE:
    dw CODE_8394D2                       ;8394CE;
    dw CODE_8394F8                       ;8394D0;

CODE_8394D2:
    LDX.B $03                            ;8394D2;
    BNE CODE_8394E5                      ;8394D4;
    INC.B $03                            ;8394D6;
    STZ.B $30                            ;8394D8;
    LDA.B #$05                           ;8394DA;
    STA.B $37                            ;8394DC;
    LDA.B #$00                           ;8394DE;
    JSL.L CODE_848F07                    ;8394E0;
    RTS                                  ;8394E4;

CODE_8394E5:
    DEC.B $37                            ;8394E5;
    BNE CODE_8394EF                      ;8394E7;
    LDA.B #$02                           ;8394E9;
    STA.B $02                            ;8394EB;
    STZ.B $03                            ;8394ED;

CODE_8394EF:
    JSL.L CODE_82823E                    ;8394EF;
    JSL.L CODE_848EEA                    ;8394F3;
    RTS                                  ;8394F7;

CODE_8394F8:
    LDX.B $03                            ;8394F8;
    BNE CODE_839505                      ;8394FA;
    INC.B $03                            ;8394FC;
    LDA.B #$01                           ;8394FE;
    JSL.L CODE_848F07                    ;839500;
    RTS                                  ;839504;

CODE_839505:
    LDA.B $0F                            ;839505;
    BPL CODE_839513                      ;839507;
    INC.B $30                            ;839509;
    DEC.W $0BDD                          ;83950B;
    JSL.L CODE_8283A3                    ;83950E;
    RTS                                  ;839512;

CODE_839513:
    JSL.L CODE_848EEA                    ;839513;
    RTS                                  ;839517;

CODE_839518:
    LDX.B $3C                            ;839518;
    LDA.W DATA8_86BE39,X                 ;83951A;
    STA.W $0000                          ;83951D;
    STZ.W $0001                          ;839520;
    STZ.W $0003                          ;839523;
    LDA.W DATA8_86BE3A,X                 ;839526;
    STA.W $0002                          ;839529;
    BPL CODE_839531                      ;83952C;
    DEC.W $0003                          ;83952E;

CODE_839531:
    REP #$20                             ;839531;
    LDA.W $0000                          ;839533;
    BIT.B $10                            ;839536;
    BVS CODE_83953E                      ;839538;
    EOR.W #$FFFF                         ;83953A;
    INC A                                ;83953D;

CODE_83953E:
    CLC                                  ;83953E;
    ADC.W $0BAD                          ;83953F;
    STA.B $05                            ;839542;
    LDA.W $0BB0                          ;839544;
    CLC                                  ;839547;
    ADC.W $0002                          ;839548;
    STA.B $08                            ;83954B;
    SEP #$20                             ;83954D;
    RTL                                  ;83954F;

CODE_839550:
    LDX.B $01                            ;839550;
    JSR.W (PTR16_839559,X)               ;839552;
    JML.L CODE_848FCA                    ;839555;

PTR16_839559:
    dw CODE_839563                       ;839559;
    dw CODE_8395C0                       ;83955B;
    dw CODE_8395B2                       ;83955D;
    dw CODE_8395B2                       ;83955F;
    dw CODE_8395B2                       ;839561;

CODE_839563:
    LDA.B #$02                           ;839563;
    STA.B $01                            ;839565;
    LDA.B #$FF                           ;839567;
    STA.B $10                            ;839569;
    LDA.B #$02                           ;83956B;
    STA.B $18                            ;83956D;
    STA.B $30                            ;83956F;
    STZ.B $12                            ;839571;
    STZ.B $38                            ;839573;
    STZ.B $39                            ;839575;
    LDA.W $0BB9                          ;839577;
    AND.B #$70                           ;83957A;
    ORA.B #$06                           ;83957C;
    STA.B $11                            ;83957E;
    REP #$21                             ;839580;
    LDA.W #$0010                         ;839582;
    BIT.B $10                            ;839585;
    BVS CODE_83958C                      ;839587;
    LDA.W #$FFF0                         ;839589;

CODE_83958C:
    ADC.W $0BAD                          ;83958C;
    STA.B $05                            ;83958F;
    LDA.W #$0800                         ;839591;
    BIT.B $10                            ;839594;
    BVS CODE_83959B                      ;839596;
    LDA.W #$F800                         ;839598;

CODE_83959B:
    STA.B $1A                            ;83959B;
    LDA.W $0BB0                          ;83959D;
    STA.B $08                            ;8395A0;
    LDA.W #$AE67                         ;8395A2;
    STA.B $31                            ;8395A5;
    SEP #$20                             ;8395A7;
    LDA.B #$87                           ;8395A9;
    STA.B $16                            ;8395AB;
    LDA.B #$80                           ;8395AD;
    STA.B $17                            ;8395AF;

CODE_8395B1:
    RTS                                  ;8395B1;

CODE_8395B2:
    LDA.B #$02                           ;8395B2;
    STA.B $01                            ;8395B4;
    LDA.B $38                            ;8395B6;
    STA.B $02                            ;8395B8;
    LDA.B $39                            ;8395BA;
    STA.B $03                            ;8395BC;
    STZ.B $30                            ;8395BE;

CODE_8395C0:
    LDX.B $02                            ;8395C0;
    JSR.W (PTR16_8395E7,X)               ;8395C2;
    LDA.B $00                            ;8395C5;
    BEQ CODE_8395B1                      ;8395C7;
    LDA.W $0B9C                          ;8395C9;
    LSR A                                ;8395CC;
    BCS CODE_8395D3                      ;8395CD;
    JSL.L CODE_82808F                    ;8395CF;

CODE_8395D3:
    JSR.W CODE_83963A                    ;8395D3;
    BCC CODE_8395DC                      ;8395D6;
    LDA.B #$04                           ;8395D8;
    STA.B $02                            ;8395DA;

CODE_8395DC:
    LDA.B $02                            ;8395DC;
    STA.B $38                            ;8395DE;
    LDA.B $03                            ;8395E0;
    STA.B $39                            ;8395E2;
    JMP.W CODE_839629                    ;8395E4;

PTR16_8395E7:
    dw CODE_8395ED                       ;8395E7;
    dw CODE_83960A                       ;8395E9;
    dw CODE_83961F                       ;8395EB;

CODE_8395ED:
    LDX.B $03                            ;8395ED;
    BNE CODE_8395FB                      ;8395EF;
    INC.B $03                            ;8395F1;
    STZ.B $30                            ;8395F3;
    LDA.B #$00                           ;8395F5;
    JSL.L CODE_848F07                    ;8395F7;

CODE_8395FB:
    LDA.B $0F                            ;8395FB;
    BPL CODE_839605                      ;8395FD;
    LDA.B #$02                           ;8395FF;
    STA.B $02                            ;839601;
    STZ.B $03                            ;839603;

CODE_839605:
    JSL.L CODE_848EEA                    ;839605;
    RTS                                  ;839609;

CODE_83960A:
    LDX.B $03                            ;83960A;
    BNE CODE_839616                      ;83960C;
    INC.B $03                            ;83960E;
    LDA.B #$01                           ;839610;
    JSL.L CODE_848F07                    ;839612;

CODE_839616:
    JSL.L CODE_82823E                    ;839616;
    JSL.L CODE_848EEA                    ;83961A;
    RTS                                  ;83961E;

CODE_83961F:
    INC.B $30                            ;83961F;
    DEC.W $0BDD                          ;839621;
    JSL.L CODE_8283A3                    ;839624;
    RTS                                  ;839628;

CODE_839629:
    REP #$21                             ;839629;
    LDA.B $0F                            ;83962B;
    AND.W #$000F                         ;83962D;
    ASL A                                ;839630;
    ASL A                                ;839631;
    ADC.W #$BF14                         ;839632;
    STA.B $20                            ;839635;
    SEP #$20                             ;839637;
    RTS                                  ;839639;

CODE_83963A:
    REP #$20                             ;83963A;
    SEC                                  ;83963C;
    LDA.B $05                            ;83963D;
    SBC.W $1E4D                          ;83963F;
    CLC                                  ;839642;
    ADC.W #$0020                         ;839643;
    CMP.W #$0140                         ;839646;
    BCS CODE_839658                      ;839649;
    SEC                                  ;83964B;
    LDA.B $08                            ;83964C;
    SBC.W $1E50                          ;83964E;
    CLC                                  ;839651;
    ADC.W #$0080                         ;839652;
    CMP.W #$01E0                         ;839655;

CODE_839658:
    SEP #$20                             ;839658;
    RTS                                  ;83965A;

CODE_83965B:
    LDX.B $01                            ;83965B;
    JSR.W (PTR16_839661,X)               ;83965D;
    RTL                                  ;839660;

PTR16_839661:
    dw CODE_83966D                       ;839661;
    dw CODE_8396B8                       ;839663;
    dw CODE_8396A0                       ;839665;
    dw CODE_839748                       ;839667;
    dw CODE_839748                       ;839669;
    dw CODE_839767                       ;83966B;

CODE_83966D:
    LDA.B #$02                           ;83966D;
    STA.B $01                            ;83966F;
    STZ.B $18                            ;839671;
    STA.B $30                            ;839673;
    STZ.B $12                            ;839675;
    LDA.B $0B                            ;839677;
    BNE CODE_839688                      ;839679;
    LDA.W $0BB9                          ;83967B;
    AND.B #$70                           ;83967E;
    ORA.B #$06                           ;839680;
    STA.B $11                            ;839682;
    JSL.L CODE_839518                    ;839684;

CODE_839688:
    LDA.B $0B                            ;839688;
    BEQ CODE_839690                      ;83968A;
    LDA.B #$04                           ;83968C;
    STA.B $02                            ;83968E;

CODE_839690:
    REP #$20                             ;839690;
    LDA.W #$BF34                         ;839692;
    STA.B $20                            ;839695;
    STZ.B $29                            ;839697;
    SEP #$20                             ;839699;
    LDA.B #$47                           ;83969B;
    STA.B $16                            ;83969D;
    RTS                                  ;83969F;

CODE_8396A0:
    LDA.B $0B                            ;8396A0;
    BNE CODE_8396B0                      ;8396A2;
    LDA.B #$02                           ;8396A4;
    STA.B $01                            ;8396A6;
    STA.B $02                            ;8396A8;
    STZ.B $03                            ;8396AA;
    STZ.B $2D                            ;8396AC;
    BRA CODE_8396B8                      ;8396AE;

CODE_8396B0:
    LDA.B #$02                           ;8396B0;
    STA.B $01                            ;8396B2;
    LDA.B #$04                           ;8396B4;
    STA.B $02                            ;8396B6;

CODE_8396B8:
    LDX.B $02                            ;8396B8;
    JSR.W (PTR16_8396CA,X)               ;8396BA;
    JSL.L CODE_8280B4                    ;8396BD;
    LDA.B $0E                            ;8396C1;
    BNE CODE_8396C9                      ;8396C3;
    LDA.B #$0A                           ;8396C5;
    STA.B $01                            ;8396C7;

CODE_8396C9:
    RTS                                  ;8396C9;

PTR16_8396CA:
    dw CODE_8396D0                       ;8396CA;
    dw CODE_839710                       ;8396CC;
    dw CODE_839730                       ;8396CE;

CODE_8396D0:
    LDX.B $03                            ;8396D0;
    BNE CODE_8396EF                      ;8396D2;
    INC.B $03                            ;8396D4;
    STZ.B $30                            ;8396D6;
    REP #$21                             ;8396D8;
    LDA.W #$0300                         ;8396DA;
    BIT.B $10                            ;8396DD;
    BVS CODE_8396E4                      ;8396DF;
    LDA.W #$FD00                         ;8396E1;

CODE_8396E4:
    STA.B $1A                            ;8396E4;
    SEP #$20                             ;8396E6;
    LDA.B #$00                           ;8396E8;
    JSL.L CODE_848F07                    ;8396EA;
    RTS                                  ;8396EE;

CODE_8396EF:
    JSL.L CODE_8490A0                    ;8396EF;
    CMP.B #$34                           ;8396F3;
    BCS CODE_8396FF                      ;8396F5;
    CMP.B #$0D                           ;8396F7;
    BCS CODE_839707                      ;8396F9;
    CMP.B #$01                           ;8396FB;
    BCC CODE_839707                      ;8396FD;

CODE_8396FF:
    STA.B $2D                            ;8396FF;
    LDA.B #$02                           ;839701;
    STA.B $02                            ;839703;
    STZ.B $03                            ;839705;

CODE_839707:
    JSL.L CODE_82823E                    ;839707;
    JSL.L CODE_848EEA                    ;83970B;
    RTS                                  ;83970F;

CODE_839710:
    LDX.B $03                            ;839710;
    BNE CODE_83971F                      ;839712;
    LDA.B #$02                           ;839714;
    STA.B $03                            ;839716;
    LDA.B #$01                           ;839718;
    JSL.L CODE_848F07                    ;83971A;
    RTS                                  ;83971E;

CODE_83971F:
    LDA.B $0F                            ;83971F;
    BPL CODE_83972B                      ;839721;
    LDA.B #$0A                           ;839723;
    STA.B $01                            ;839725;
    JML.L CODE_839771                    ;839727;

CODE_83972B:
    JSL.L CODE_848EEA                    ;83972B;
    RTS                                  ;83972F;

CODE_839730:
    LDX.B $03                            ;839730;
    BNE CODE_83973F                      ;839732;
    INC.B $03                            ;839734;
    STZ.B $30                            ;839736;
    LDA.B #$00                           ;839738;
    JSL.L CODE_848F07                    ;83973A;
    RTS                                  ;83973E;

CODE_83973F:
    JSL.L CODE_82820A                    ;83973F;
    JSL.L CODE_848EEA                    ;839743;
    RTS                                  ;839747;

CODE_839748:
    LDX.B $02                            ;839748;
    BNE CODE_839756                      ;83974A;
    INC.B $02                            ;83974C;
    LDA.B #$01                           ;83974E;
    STA.B $30                            ;839750;
    JSL.L CODE_848F07                    ;839752;

CODE_839756:
    LDA.B $0F                            ;839756;
    BPL CODE_83975E                      ;839758;
    LDA.B #$0A                           ;83975A;
    STA.B $01                            ;83975C;

CODE_83975E:
    JSL.L CODE_848EEA                    ;83975E;
    JSL.L CODE_8280B4                    ;839762;
    RTS                                  ;839766;

CODE_839767:
    INC.B $30                            ;839767;
    DEC.W $0BDD                          ;839769;
    JSL.L CODE_8283A3                    ;83976C;
    RTS                                  ;839770;

CODE_839771:
    REP #$10                             ;839771;
    LDY.W #$0001                         ;839773;

CODE_839776:
    JSL.L CODE_82833E                    ;839776;
    BNE CODE_8397A5                      ;83977A;
    INC.W $0000,X                        ;83977C;
    INC.W $0BDD                          ;83977F;
    LDA.B #$0C                           ;839782;
    STA.W $000A,X                        ;839784;
    LDA.B $11                            ;839787;
    STA.W $0011,X                        ;839789;
    LDA.B #$01                           ;83978C;
    STA.W $000B,X                        ;83978E;
    REP #$20                             ;839791;
    LDA.B $05                            ;839793;
    STA.W $0005,X                        ;839795;
    LDA.B $08                            ;839798;
    STA.W $0008,X                        ;83979A;
    SEP #$20                             ;83979D;
    JSR.W CODE_8397A8                    ;83979F;
    DEY                                  ;8397A2;
    BPL CODE_839776                      ;8397A3;

CODE_8397A5:
    SEP #$10                             ;8397A5;
    RTS                                  ;8397A7;

CODE_8397A8:
    LDA.B $2D                            ;8397A8;
    CMP.B #$34                           ;8397AA;
    BCS CODE_8397DD                      ;8397AC;

CODE_8397AE:
    PHY                                  ;8397AE;
    REP #$20                             ;8397AF;
    AND.W #$00FF                         ;8397B1;
    ASL A                                ;8397B4;
    ASL A                                ;8397B5;
    TAY                                  ;8397B6;
    LDA.W DATA16_86BF34,Y                ;8397B7;
    STA.W $001A,X                        ;8397BA;
    LDA.W DATA16_86BF36,Y                ;8397BD;
    STA.W $001C,X                        ;8397C0;
    PLY                                  ;8397C3;
    BEQ CODE_8397DA                      ;8397C4;
    LDA.W $001A,X                        ;8397C6;
    EOR.W #$FFFF                         ;8397C9;
    INC A                                ;8397CC;
    STA.W $001A,X                        ;8397CD;
    LDA.W $001C,X                        ;8397D0;
    EOR.W #$FFFF                         ;8397D3;
    INC A                                ;8397D6;
    STA.W $001C,X                        ;8397D7;

CODE_8397DA:
    SEP #$20                             ;8397DA;
    RTS                                  ;8397DC;

CODE_8397DD:
    CMP.B #$39                           ;8397DD;
    BEQ CODE_8397FB                      ;8397DF;
    CMP.B #$3A                           ;8397E1;
    BEQ CODE_8397FB                      ;8397E3;
    REP #$20                             ;8397E5;
    STZ.W $001A,X                        ;8397E7;
    LDA.W #$0600                         ;8397EA;
    CPY.W #$0000                         ;8397ED;
    BEQ CODE_8397F5                      ;8397F0;
    LDA.W #$FA00                         ;8397F2;

CODE_8397F5:
    STA.W $001C,X                        ;8397F5;
    SEP #$20                             ;8397F8;
    RTS                                  ;8397FA;

CODE_8397FB:
    PHY                                  ;8397FB;
    LDA.B #$F0                           ;8397FC;
    STA.B $2A                            ;8397FE;
    JSL.L CODE_8490A0                    ;839800;
    PLY                                  ;839804;
    BRA CODE_8397AE                      ;839805;

CODE_839807:
    LDX.B $01                            ;839807;
    JMP.W (PTR16_83980C,X)               ;839809;

PTR16_83980C:
    dw CODE_839816                       ;83980C;
    dw CODE_8398BA                       ;83980E;
    dw CODE_8398E3                       ;839810;
    dw CODE_8398DF                       ;839812;
    dw CODE_8398DF                       ;839814;

CODE_839816:
    LDA.B #$02                           ;839816;
    STA.B $01                            ;839818;
    LDA.B #$02                           ;83981A;
    STA.B $18                            ;83981C;
    LDX.W $1F7A                          ;83981E;
    LDA.W $0BB9                          ;839821;
    AND.B #$70                           ;839824;
    ORA.B #$06                           ;839826;
    STA.B $11                            ;839828;
    STZ.B $30                            ;83982A;
    LDA.B #$FF                           ;83982C;
    STA.B $10                            ;83982E;
    LDA.B #$44                           ;839830;
    STA.B $16                            ;839832;
    LDA.B #$01                           ;839834;
    STA.B $37                            ;839836;
    LDA.B $0B                            ;839838;
    BNE CODE_839890                      ;83983A;
    LDX.B $3C                            ;83983C;
    LDA.W DATA8_86BE39,X                 ;83983E;
    STA.W $0000                          ;839841;
    STZ.W $0001                          ;839844;
    STZ.W $0003                          ;839847;
    LDA.W DATA8_86BE3A,X                 ;83984A;
    STA.W $0002                          ;83984D;
    BPL CODE_839855                      ;839850;
    DEC.W $0003                          ;839852;

CODE_839855:
    REP #$20                             ;839855;
    LDA.W $0000                          ;839857;
    BIT.B $10                            ;83985A;
    BVS CODE_839862                      ;83985C;
    EOR.W #$FFFF                         ;83985E;
    INC A                                ;839861;

CODE_839862:
    CLC                                  ;839862;
    ADC.W $0BAD                          ;839863;
    STA.B $05                            ;839866;
    LDA.W $0BB0                          ;839868;
    CLC                                  ;83986B;
    ADC.W $0002                          ;83986C;
    STA.B $08                            ;83986F;
    LDA.W #$0800                         ;839871;
    BIT.B $10                            ;839874;
    BVS CODE_83987B                      ;839876;
    LDA.W #$F800                         ;839878;

CODE_83987B:
    STA.B $1A                            ;83987B;
    STZ.B $1C                            ;83987D;
    LDA.W #$BF6C                         ;83987F;
    STA.B $20                            ;839882;
    SEP #$20                             ;839884;
    LDA.B #$00                           ;839886;
    JSL.L CODE_848F07                    ;839888;
    JML.L CODE_8280B4                    ;83988C;

CODE_839890:
    SEP #$30                             ;839890;
    LDX.B $0B                            ;839892;
    ASL A                                ;839894;
    ASL A                                ;839895;
    TAX                                  ;839896;
    REP #$20                             ;839897;
    LDA.W DATA8_86EE37,X                 ;839899;
    ASL A                                ;83989C;
    ASL A                                ;83989D;
    STA.B $1A                            ;83989E;
    LDA.W DATA8_86EE39,X                 ;8398A0;
    ASL A                                ;8398A3;
    ASL A                                ;8398A4;
    STA.B $1C                            ;8398A5;
    LDA.W #$BF76                         ;8398A7;
    STA.B $20                            ;8398AA;
    SEP #$20                             ;8398AC;
    LDA.B #$03                           ;8398AE;
    JSL.L CODE_848F07                    ;8398B0;
    INC.B $02                            ;8398B4;
    JML.L CODE_8280B4                    ;8398B6;

CODE_8398BA:
    LDA.B $02                            ;8398BA;
    BNE CODE_8398D2                      ;8398BC;
    JSL.L CODE_82823E                    ;8398BE;
    JSR.W CODE_8398F7                    ;8398C2;
    JSL.L CODE_8491BE                    ;8398C5;
    LDA.B $2B                            ;8398C9;
    BEQ CODE_8398D6                      ;8398CB;
    JSR.W CODE_839924                    ;8398CD;
    BRA CODE_8398F0                      ;8398D0;

CODE_8398D2:
    JSL.L CODE_82820A                    ;8398D2;

CODE_8398D6:
    JSL.L CODE_8280B4                    ;8398D6;
    LDA.B $0E                            ;8398DA;
    BEQ CODE_8398F0                      ;8398DC;
    RTL                                  ;8398DE;

CODE_8398DF:
    JSL.L CODE_84A51A                    ;8398DF;

CODE_8398E3:
    LDA.B $0B                            ;8398E3;
    BNE CODE_8398F0                      ;8398E5;
    JSR.W CODE_839924                    ;8398E7;
    LDA.B #$78                           ;8398EA;
    JSL.L CODE_8088A2                    ;8398EC;

CODE_8398F0:
    DEC.W $0BDD                          ;8398F0;
    JML.L CODE_8283A3                    ;8398F3;

CODE_8398F7:
    DEC.B $37                            ;8398F7;
    BNE CODE_839923                      ;8398F9;
    LDA.B #$04                           ;8398FB;
    STA.B $37                            ;8398FD;
    JSL.L CODE_8282ED                    ;8398FF;
    BNE CODE_839921                      ;839903;
    INC.W $0000,X                        ;839905;
    LDA.B #$02                           ;839908;
    STA.W $000A,X                        ;83990A;
    STZ.W $000B,X                        ;83990D;
    LDA.B $11                            ;839910;
    STA.W $0011,X                        ;839912;
    REP #$20                             ;839915;
    LDA.B $05                            ;839917;
    STA.W $0005,X                        ;839919;
    LDA.B $08                            ;83991C;
    STA.W $0008,X                        ;83991E;

CODE_839921:
    SEP #$30                             ;839921;

CODE_839923:
    RTS                                  ;839923;

CODE_839924:
    LDA.B #$05                           ;839924;
    STA.B $38                            ;839926;
    LDY.B #$04                           ;839928;
    LDA.B $1B                            ;83992A;
    BPL CODE_839930                      ;83992C;
    LDY.B #$09                           ;83992E;

CODE_839930:
    JSL.L CODE_82833E                    ;839930;
    BNE CODE_83995A                      ;839934;
    INC.W $0000,X                        ;839936;
    LDA.B #$0E                           ;839939;
    STA.W $000A,X                        ;83993B;
    LDA.W DATA8_86BF7A,Y                 ;83993E;
    STA.W $000B,X                        ;839941;
    REP #$30                             ;839944;
    LDA.B $05                            ;839946;
    STA.W $0005,X                        ;839948;
    LDA.B $08                            ;83994B;
    STA.W $0008,X                        ;83994D;
    SEP #$20                             ;839950;
    INC.W $0BDD                          ;839952;
    DEY                                  ;839955;
    DEC.B $38                            ;839956;
    BNE CODE_839930                      ;839958;

CODE_83995A:
    SEP #$30                             ;83995A;
    RTS                                  ;83995C;

CODE_83995D:
    LDX.B $01                            ;83995D;
    JMP.W (PTR16_839962,X)               ;83995F;

PTR16_839962:
    dw CODE_83996C                       ;839962;
    dw CODE_839A62                       ;839964;
    dw CODE_839B4F                       ;839966;
    dw CODE_839B3F                       ;839968;
    dw CODE_839B3F                       ;83996A;

CODE_83996C:
    LDA.B #$02                           ;83996C;
    STA.B $01                            ;83996E;
    JSL.L CODE_83917D                    ;839970;
    LDX.W $1F7A                          ;839974;
    LDA.W $0BB9                          ;839977;
    AND.B #$70                           ;83997A;
    ORA.B #$06                           ;83997C;
    STA.B $11                            ;83997E;
    STZ.B $30                            ;839980;
    LDA.B #$01                           ;839982;
    STA.B $38                            ;839984;
    LDA.B #$FF                           ;839986;
    STA.B $10                            ;839988;
    LDA.B #$93                           ;83998A;
    STA.B $16                            ;83998C;
    LDX.B $3C                            ;83998E;
    LDA.W DATA8_86BE39,X                 ;839990;
    STA.W $0000                          ;839993;
    STZ.W $0001                          ;839996;
    STZ.W $0003                          ;839999;
    LDA.W DATA8_86BE3A,X                 ;83999C;
    STA.W $0002                          ;83999F;
    BPL CODE_8399A7                      ;8399A2;
    DEC.W $0003                          ;8399A4;

CODE_8399A7:
    REP #$20                             ;8399A7;
    LDA.W $0000                          ;8399A9;
    BIT.B $10                            ;8399AC;
    BVS CODE_8399B4                      ;8399AE;
    EOR.W #$FFFF                         ;8399B0;
    INC A                                ;8399B3;

CODE_8399B4:
    CLC                                  ;8399B4;
    ADC.W $0BAD                          ;8399B5;
    STA.B $05                            ;8399B8;
    LDA.W $0BB0                          ;8399BA;
    CLC                                  ;8399BD;
    ADC.W $0002                          ;8399BE;
    STA.B $08                            ;8399C1;
    LDA.W #$0400                         ;8399C3;
    BIT.B $10                            ;8399C6;
    BVS CODE_8399CD                      ;8399C8;
    LDA.W #$FC00                         ;8399CA;

CODE_8399CD:
    STA.B $1A                            ;8399CD;
    STZ.B $1C                            ;8399CF;
    LDA.W #$BFA4                         ;8399D1;
    STA.B $20                            ;8399D4;
    LDA.W #$ACA5                         ;8399D6;
    STA.B $31                            ;8399D9;
    STZ.B $0C                            ;8399DB;
    LDA.W #$FFFF                         ;8399DD;
    STA.B $39                            ;8399E0;
    STZ.B $1A                            ;8399E2;
    STZ.B $1C                            ;8399E4;
    SEP #$20                             ;8399E6;
    LDA.B $11                            ;8399E8;
    ASL A                                ;8399EA;
    ASL A                                ;8399EB;
    BCC CODE_8399FC                      ;8399EC;
    LDA.B #$01                           ;8399EE;
    STA.B $1B                            ;8399F0;
    LDA.B #$08                           ;8399F2;
    STA.B $37                            ;8399F4;
    STA.B $3B                            ;8399F6;
    LDA.B #$0C                           ;8399F8;
    BRA CODE_839A08                      ;8399FA;

CODE_8399FC:
    LDA.B #$FF                           ;8399FC;
    STA.B $1B                            ;8399FE;
    LDA.B #$18                           ;839A00;
    STA.B $37                            ;839A02;
    STA.B $3B                            ;839A04;
    LDA.B #$04                           ;839A06;

CODE_839A08:
    STA.B $3D                            ;839A08;
    JSL.L CODE_848F07                    ;839A0A;
    LDA.B #$40                           ;839A0E;
    TRB.B $11                            ;839A10;
    JSR.W CODE_839047                    ;839A12;
    LDA.B #$10                           ;839A15;
    STA.B $38                            ;839A17;
    LDA.B #$05                           ;839A19;
    STA.B $3E                            ;839A1B;
    STZ.B $1F                            ;839A1D;
    STZ.B $1E                            ;839A1F;
    LDA.B $0B                            ;839A21;
    BEQ CODE_839A5B                      ;839A23;
    ASL A                                ;839A25;
    ASL A                                ;839A26;
    CLC                                  ;839A27;
    ADC.B $3B                            ;839A28;
    STA.B $3B                            ;839A2A;
    ASL A                                ;839A2C;
    ASL A                                ;839A2D;
    TAX                                  ;839A2E;
    REP #$20                             ;839A2F;
    LDA.W DATA8_86EE37,X                 ;839A31;
    STA.B $1A                            ;839A34;
    LDA.W DATA8_86EE39,X                 ;839A36;
    STA.B $1C                            ;839A39;
    SEP #$20                             ;839A3B;
    LDA.B $0B                            ;839A3D;
    CLC                                  ;839A3F;
    ADC.B $3E                            ;839A40;
    STA.B $3E                            ;839A42;
    LDA.B $0B                            ;839A44;
    CLC                                  ;839A46;
    ADC.B $37                            ;839A47;
    STA.B $37                            ;839A49;
    TAX                                  ;839A4B;
    LDA.W DATA8_86BF84,X                 ;839A4C;
    STA.B $3D                            ;839A4F;
    JSL.L CODE_848F07                    ;839A51;
    JSL.L CODE_848FCA                    ;839A55;
    BRA CODE_839A62                      ;839A59;

CODE_839A5B:
    JSL.L CODE_848FCA                    ;839A5B;
    JSR.W CODE_839B56                    ;839A5F;

CODE_839A62:
    DEC.B $3E                            ;839A62;
    BNE CODE_839A6D                      ;839A64;
    LDA.B #$03                           ;839A66;
    STA.B $3E                            ;839A68;
    JSR.W CODE_839133                    ;839A6A;

CODE_839A6D:
    DEC.B $38                            ;839A6D;
    BNE CODE_839A85                      ;839A6F;
    LDA.B #$01                           ;839A71;
    STA.B $38                            ;839A73;
    LDA.B $0D                            ;839A75;
    BEQ CODE_839A82                      ;839A77;
    JSR.W CODE_8390AF                    ;839A79;
    LDA.B $37                            ;839A7C;
    STA.B $3B                            ;839A7E;
    BRA CODE_839A85                      ;839A80;

CODE_839A82:
    JSR.W CODE_839047                    ;839A82;

CODE_839A85:
    LDA.B $3B                            ;839A85;
    ASL A                                ;839A87;
    ASL A                                ;839A88;
    TAX                                  ;839A89;
    REP #$20                             ;839A8A;
    LDA.W DATA8_86EE37,X                 ;839A8C;
    ASL A                                ;839A8F;
    ASL A                                ;839A90;
    ASL A                                ;839A91;
    ASL A                                ;839A92;
    ASL A                                ;839A93;
    BPL CODE_839A9A                      ;839A94;
    EOR.W #$FFFF                         ;839A96;
    INC A                                ;839A99;

CODE_839A9A:
    SEP #$20                             ;839A9A;
    XBA                                  ;839A9C;
    STA.B $1F                            ;839A9D;
    REP #$20                             ;839A9F;
    LDA.W DATA8_86EE39,X                 ;839AA1;
    ASL A                                ;839AA4;
    ASL A                                ;839AA5;
    ASL A                                ;839AA6;
    ASL A                                ;839AA7;
    ASL A                                ;839AA8;
    BPL CODE_839AAF                      ;839AA9;
    EOR.W #$FFFF                         ;839AAB;
    INC A                                ;839AAE;

CODE_839AAF:
    SEP #$20                             ;839AAF;
    XBA                                  ;839AB1;
    STA.B $1E                            ;839AB2;
    LDA.B $37                            ;839AB4;
    BIT.B #$10                           ;839AB6;
    BEQ CODE_839AF8                      ;839AB8;
    BIT.B #$08                           ;839ABA;
    BEQ CODE_839ADB                      ;839ABC;
    JSL.L CODE_8281B2                    ;839ABE;
    JSR.W CODE_839113                    ;839AC2;
    REP #$20                             ;839AC5;
    LDA.W $0000                          ;839AC7;
    CMP.B $1A                            ;839ACA;
    BMI CODE_839AD0                      ;839ACC;
    STA.B $1A                            ;839ACE;

CODE_839AD0:
    LDA.W $0002                          ;839AD0;
    CMP.B $1C                            ;839AD3;
    BPL CODE_839B34                      ;839AD5;
    STA.B $1C                            ;839AD7;
    BRA CODE_839B34                      ;839AD9;

CODE_839ADB:
    JSL.L CODE_828174                    ;839ADB;
    JSR.W CODE_839113                    ;839ADF;
    REP #$20                             ;839AE2;
    LDA.W $0000                          ;839AE4;
    CMP.B $1A                            ;839AE7;
    BMI CODE_839AED                      ;839AE9;
    STA.B $1A                            ;839AEB;

CODE_839AED:
    LDA.W $0002                          ;839AED;
    CMP.B $1C                            ;839AF0;
    BMI CODE_839B34                      ;839AF2;
    STA.B $1C                            ;839AF4;
    BRA CODE_839B34                      ;839AF6;

CODE_839AF8:
    BIT.B #$08                           ;839AF8;
    BEQ CODE_839B19                      ;839AFA;
    JSL.L CODE_828195                    ;839AFC;
    JSR.W CODE_839113                    ;839B00;
    REP #$20                             ;839B03;
    LDA.W $0000                          ;839B05;
    CMP.B $1A                            ;839B08;
    BPL CODE_839B0E                      ;839B0A;
    STA.B $1A                            ;839B0C;

CODE_839B0E:
    LDA.W $0002                          ;839B0E;
    CMP.B $1C                            ;839B11;
    BMI CODE_839B34                      ;839B13;
    STA.B $1C                            ;839B15;
    BRA CODE_839B34                      ;839B17;

CODE_839B19:
    JSL.L CODE_8281CF                    ;839B19;
    JSR.W CODE_839113                    ;839B1D;
    REP #$20                             ;839B20;
    LDA.W $0000                          ;839B22;
    CMP.B $1A                            ;839B25;
    BPL CODE_839B2B                      ;839B27;
    STA.B $1A                            ;839B29;

CODE_839B2B:
    LDA.W $0002                          ;839B2B;
    CMP.B $1C                            ;839B2E;
    BPL CODE_839B34                      ;839B30;
    STA.B $1C                            ;839B32;

CODE_839B34:
    SEP #$20                             ;839B34;
    JSL.L CODE_8280B4                    ;839B36;
    LDA.B $0E                            ;839B3A;
    BEQ CODE_839B4F                      ;839B3C;
    RTL                                  ;839B3E;

CODE_839B3F:
    REP #$20                             ;839B3F;
    LDA.B $33                            ;839B41;
    STA.B $05                            ;839B43;
    LDA.B $35                            ;839B45;
    STA.B $08                            ;839B47;
    SEP #$20                             ;839B49;
    JSL.L CODE_84A4AB                    ;839B4B;

CODE_839B4F:
    DEC.W $0BDD                          ;839B4F;
    JML.L CODE_8283A3                    ;839B52;

CODE_839B56:
    LDY.B #$04                           ;839B56;

CODE_839B58:
    JSL.L CODE_82833E                    ;839B58;
    BNE CODE_839B7A                      ;839B5C;
    INC.W $0000,X                        ;839B5E;
    LDA.B #$10                           ;839B61;
    STA.W $000A,X                        ;839B63;
    TYA                                  ;839B66;
    LSR A                                ;839B67;
    BCC CODE_839B6C                      ;839B68;
    EOR.B #$FF                           ;839B6A;

CODE_839B6C:
    STA.W $000B,X                        ;839B6C;
    INC.W $0BDD                          ;839B6F;
    LDA.B $3C                            ;839B72;
    STA.W $003C,X                        ;839B74;
    DEY                                  ;839B77;
    BNE CODE_839B58                      ;839B78;

CODE_839B7A:
    SEP #$30                             ;839B7A;
    RTS                                  ;839B7C;

CODE_839B7D:
    LDX.B $01                            ;839B7D;
    JMP.W (PTR16_839B82,X)               ;839B7F;

PTR16_839B82:
    dw CODE_839B88                       ;839B82;
    dw CODE_839BAF                       ;839B84;
    dw CODE_839BB9                       ;839B86;

CODE_839B88:
    LDA.B #$02                           ;839B88;
    STA.B $01                            ;839B8A;
    STA.B $30                            ;839B8C;
    STA.W $0C31                          ;839B8E;
    STA.W $0C32                          ;839B91;
    INC.W $0C25                          ;839B94;
    INC.W $0C0F                          ;839B97;
    LDA.B #$E0                           ;839B9A;
    STA.B $37                            ;839B9C;
    LDA.B #$01                           ;839B9E;
    STA.B $38                            ;839BA0;
    STZ.B $39                            ;839BA2;
    LDA.B #$06                           ;839BA4;
    STA.B $3A                            ;839BA6;
    STZ.B $3B                            ;839BA8;
    LDA.B #$02                           ;839BAA;
    STA.B $3C                            ;839BAC;
    RTL                                  ;839BAE;

CODE_839BAF:
    JSR.W CODE_839BDE                    ;839BAF;
    JSR.W CODE_839C02                    ;839BB2;
    JSR.W CODE_839C22                    ;839BB5;
    RTL                                  ;839BB8;

CODE_839BB9:
    STZ.W $0C31                          ;839BB9;
    DEC.W $0BDD                          ;839BBC;
    DEC.W $0C25                          ;839BBF;
    DEC.W $0C0F                          ;839BC2;
    LDA.W $0BCF                          ;839BC5;
    AND.B #$7F                           ;839BC8;
    BEQ CODE_839BD1                      ;839BCA;
    LDA.B #$01                           ;839BCC;
    STA.W $0BB6                          ;839BCE;

CODE_839BD1:
    REP #$10                             ;839BD1;
    LDY.W #$0104                         ;839BD3;
    JSL.L CODE_828011                    ;839BD6;
    JML.L CODE_8283A3                    ;839BDA;

CODE_839BDE:
    REP #$20                             ;839BDE;
    DEC.B $37                            ;839BE0;
    BNE CODE_839BEB                      ;839BE2;
    SEP #$20                             ;839BE4;
    LDA.B #$04                           ;839BE6;
    STA.B $01                            ;839BE8;
    RTS                                  ;839BEA;

CODE_839BEB:
    LDA.B $37                            ;839BEB;
    CMP.W #$0168                         ;839BED;
    BNE CODE_839BF6                      ;839BF0;
    INC.B $3B                            ;839BF2;
    INC.B $3B                            ;839BF4;

CODE_839BF6:
    CMP.W #$0078                         ;839BF6;
    BNE CODE_839BFF                      ;839BF9;
    INC.B $3B                            ;839BFB;
    INC.B $3B                            ;839BFD;

CODE_839BFF:
    SEP #$20                             ;839BFF;
    RTS                                  ;839C01;

CODE_839C02:
    LDA.W $0BCF                          ;839C02;
    AND.B #$7F                           ;839C05;
    BEQ CODE_839C21                      ;839C07;
    DEC.B $3C                            ;839C09;
    BNE CODE_839C21                      ;839C0B;
    LDA.B $3B                            ;839C0D;
    EOR.B #$01                           ;839C0F;
    STA.B $3B                            ;839C11;
    TAX                                  ;839C13;
    LDA.W DATA8_86BFA8,X                 ;839C14;
    STA.B $3C                            ;839C17;
    LDA.W $0BB6                          ;839C19;
    EOR.B #$01                           ;839C1C;
    STA.W $0BB6                          ;839C1E;

CODE_839C21:
    RTS                                  ;839C21;

CODE_839C22:
    DEC.B $3A                            ;839C22;
    BNE CODE_839C46                      ;839C24;
    LDA.B #$06                           ;839C26;
    STA.B $3A                            ;839C28;
    LDA.W $1F1A                          ;839C2A;
    BNE CODE_839C47                      ;839C2D;
    LDA.B $39                            ;839C2F;
    INC A                                ;839C31;
    INC A                                ;839C32;
    AND.B #$0E                           ;839C33;
    STA.B $39                            ;839C35;
    REP #$31                             ;839C37;
    AND.W #$00FF                         ;839C39;
    ADC.W #$01A0                         ;839C3C;
    TAY                                  ;839C3F;
    JSL.L CODE_828011                    ;839C40;
    SEP #$30                             ;839C44;

CODE_839C46:
    RTS                                  ;839C46;

CODE_839C47:
    REP #$10                             ;839C47;
    LDY.W #$0104                         ;839C49;
    JSL.L CODE_828011                    ;839C4C;
    SEP #$10                             ;839C50;
    RTS                                  ;839C52;

CODE_839C53:
    LDX.B $01                            ;839C53;
    JSR.W (PTR16_839C5C,X)               ;839C55;
    JML.L CODE_848FCA                    ;839C58;

PTR16_839C5C:
    dw CODE_839C66                       ;839C5C;
    dw CODE_839CA8                       ;839C5E;
    dw CODE_839D4A                       ;839C60;
    dw CODE_839C9A                       ;839C62;
    dw CODE_839D4A                       ;839C64;

CODE_839C66:
    LDA.B #$02                           ;839C66;
    STA.B $01                            ;839C68;
    LDA.B #$FF                           ;839C6A;
    STA.B $10                            ;839C6C;
    STA.W $0C30                          ;839C6E;
    LDA.B #$08                           ;839C71;
    STA.B $18                            ;839C73;
    STA.B $30                            ;839C75;
    STZ.B $12                            ;839C77;
    STZ.B $38                            ;839C79;
    STZ.B $39                            ;839C7B;
    LDA.W $0BB9                          ;839C7D;
    AND.B #$70                           ;839C80;
    ORA.B #$06                           ;839C82;
    STA.B $11                            ;839C84;
    LDA.B #$B9                           ;839C86;
    STA.B $31                            ;839C88;
    LDA.B #$AF                           ;839C8A;
    STA.B $32                            ;839C8C;
    LDA.B #$8E                           ;839C8E;
    STA.B $16                            ;839C90;
    LDA.B #$80                           ;839C92;
    STA.B $17                            ;839C94;
    INC.W $0C25                          ;839C96;
    RTS                                  ;839C99;

CODE_839C9A:
    LDA.B #$02                           ;839C9A;
    STA.B $01                            ;839C9C;
    LDA.B $38                            ;839C9E;
    STA.B $02                            ;839CA0;
    LDA.B $39                            ;839CA2;
    STA.B $03                            ;839CA4;
    STZ.B $30                            ;839CA6;

CODE_839CA8:
    LDX.B $02                            ;839CA8;
    JSR.W (PTR16_839CFC,X)               ;839CAA;
    LDA.B #$B2                           ;839CAD;
    STA.B $20                            ;839CAF;
    LDA.B #$BF                           ;839CB1;
    STA.B $21                            ;839CB3;
    LDA.W $0BAA                          ;839CB5;
    CMP.B #$2C                           ;839CB8;
    BEQ CODE_839CD5                      ;839CBA;
    LDA.W $1F23                          ;839CBC;
    BNE CODE_839CD5                      ;839CBF;
    LDA.W $1F7B                          ;839CC1;
    CMP.B #$04                           ;839CC4;
    BEQ CODE_839CD5                      ;839CC6;
    LDA.W $0BCF                          ;839CC8;
    AND.B #$7F                           ;839CCB;
    BEQ CODE_839CD5                      ;839CCD;
    JSL.L CODE_849BC8                    ;839CCF;
    BPL CODE_839CDB                      ;839CD3;

CODE_839CD5:
    LDA.B #$08                           ;839CD5;
    STA.B $01                            ;839CD7;
    STZ.B $02                            ;839CD9;

CODE_839CDB:
    LDA.B #$AE                           ;839CDB;
    STA.B $20                            ;839CDD;
    LDA.B #$BF                           ;839CDF;
    STA.B $21                            ;839CE1;
    LDA.B $02                            ;839CE3;
    STA.B $38                            ;839CE5;
    LDA.B $03                            ;839CE7;
    STA.B $39                            ;839CE9;
    LDA.B $37                            ;839CEB;
    BEQ CODE_839CF5                      ;839CED;
    LDA.W $0B9C                          ;839CEF;
    LSR A                                ;839CF2;
    BCS CODE_839CF9                      ;839CF3;

CODE_839CF5:
    JSL.L CODE_8280B4                    ;839CF5;

CODE_839CF9:
    JMP.W CODE_839DC5                    ;839CF9;

PTR16_839CFC:
    dw CODE_839D00                       ;839CFC;
    dw CODE_839D20                       ;839CFE;

CODE_839D00:
    LDX.B $03                            ;839D00;
    BNE CODE_839D11                      ;839D02;
    INC.B $03                            ;839D04;
    STZ.B $37                            ;839D06;
    STZ.B $30                            ;839D08;
    LDA.B #$00                           ;839D0A;
    JSL.L CODE_848F07                    ;839D0C;
    RTS                                  ;839D10;

CODE_839D11:
    LDA.B $0F                            ;839D11;
    BPL CODE_839D1B                      ;839D13;
    LDA.B #$02                           ;839D15;
    STA.B $02                            ;839D17;
    STZ.B $03                            ;839D19;

CODE_839D1B:
    JSL.L CODE_848EEA                    ;839D1B;
    RTS                                  ;839D1F;

CODE_839D20:
    LDX.B $03                            ;839D20;
    BNE CODE_839D3A                      ;839D22;
    INC.B $03                            ;839D24;
    LDA.B #$02                           ;839D26;
    STA.B $3C                            ;839D28;
    INC.B $37                            ;839D2A;
    LDA.B #$86                           ;839D2C;
    STA.B $3A                            ;839D2E;
    LDA.B #$01                           ;839D30;
    STA.B $3B                            ;839D32;
    LDA.B #$01                           ;839D34;
    JSL.L CODE_848F07                    ;839D36;

CODE_839D3A:
    LDA.W $0B9C                          ;839D3A;
    AND.B #$0F                           ;839D3D;
    BNE CODE_839D47                      ;839D3F;
    LDA.B #$64                           ;839D41;
    JSL.L CODE_8088CD                    ;839D43;

CODE_839D47:
    JMP.W CODE_839DA2                    ;839D47;

CODE_839D4A:
    LDX.B $02                            ;839D4A;
    JSR.W (PTR16_839D5A,X)               ;839D4C;
    LDA.B $00                            ;839D4F;
    BEQ CODE_839D57                      ;839D51;
    JSL.L CODE_8280B4                    ;839D53;

CODE_839D57:
    JMP.W CODE_839DC5                    ;839D57;

PTR16_839D5A:
    dw CODE_839D5E                       ;839D5A;
    dw CODE_839D75                       ;839D5C;

CODE_839D5E:
    LDA.B #$02                           ;839D5E;
    STA.B $02                            ;839D60;
    INC.B $30                            ;839D62;
    STZ.B $37                            ;839D64;
    LDX.B #$30                           ;839D66;
    LDY.B #$46                           ;839D68;
    JSL.L CODE_828000                    ;839D6A;
    LDA.B #$02                           ;839D6E;
    JSL.L CODE_848F07                    ;839D70;
    RTS                                  ;839D74;

CODE_839D75:
    LDA.B $0F                            ;839D75;
    BPL CODE_839D89                      ;839D77;
    INC.B $30                            ;839D79;
    DEC.W $0BDD                          ;839D7B;
    DEC.W $0C25                          ;839D7E;
    STZ.W $0C30                          ;839D81;
    JSL.L CODE_8283A3                    ;839D84;
    RTS                                  ;839D88;

CODE_839D89:
    JSL.L CODE_848EEA                    ;839D89;
    RTS                                  ;839D8D;
    JSL.L CODE_82833E                    ;839D8E;
    BNE CODE_839D9F                      ;839D92;
    INC.W $0000,X                        ;839D94;
    LDA.B #$14                           ;839D97;
    STA.W $000A,X                        ;839D99;
    STA.W $000B,X                        ;839D9C;

CODE_839D9F:
    SEP #$10                             ;839D9F;
    RTS                                  ;839DA1;

CODE_839DA2:
    DEC.B $3C                            ;839DA2;
    BNE CODE_839DC4                      ;839DA4;
    LDA.B #$02                           ;839DA6;
    STA.B $3C                            ;839DA8;
    REP #$30                             ;839DAA;
    LDY.B $3A                            ;839DAC;
    JSL.L CODE_828011                    ;839DAE;
    LDA.B $3A                            ;839DB2;
    INC A                                ;839DB4;
    INC A                                ;839DB5;
    CMP.W #$018E                         ;839DB6;
    STA.B $3A                            ;839DB9;
    BCC CODE_839DC2                      ;839DBB;
    LDA.W #$0184                         ;839DBD;
    STA.B $3A                            ;839DC0;

CODE_839DC2:
    SEP #$30                             ;839DC2;

CODE_839DC4:
    RTS                                  ;839DC4;

CODE_839DC5:
    REP #$20                             ;839DC5;
    LDA.W $0BAD                          ;839DC7;
    STA.B $05                            ;839DCA;
    LDA.W $0BB0                          ;839DCC;
    STA.B $08                            ;839DCF;
    SEP #$20                             ;839DD1;
    RTS                                  ;839DD3;

CODE_839DD4:
    LDX.B $01                            ;839DD4;
    JSR.W (PTR16_839DDA,X)               ;839DD6;
    RTL                                  ;839DD9;

PTR16_839DDA:
    dw CODE_839DE4                       ;839DDA;
    dw CODE_839E38                       ;839DDC;
    dw CODE_839E2A                       ;839DDE;
    dw CODE_839E2A                       ;839DE0;
    dw CODE_839E2A                       ;839DE2;

CODE_839DE4:
    LDA.B #$02                           ;839DE4;
    STA.B $01                            ;839DE6;
    INC.W $0C25                          ;839DE8;
    LDA.B #$08                           ;839DEB;
    STA.B $18                            ;839DED;
    STA.B $30                            ;839DEF;
    STZ.B $12                            ;839DF1;
    STZ.B $38                            ;839DF3;
    STZ.B $39                            ;839DF5;
    LDA.B $0B                            ;839DF7;
    BPL CODE_839E05                      ;839DF9;
    LDA.B #$02                           ;839DFB;
    STA.B $02                            ;839DFD;
    STA.B $38                            ;839DFF;
    STZ.B $03                            ;839E01;
    BRA CODE_839E1A                      ;839E03;

CODE_839E05:
    LDA.W $0BB9                          ;839E05;
    AND.B #$70                           ;839E08;
    ORA.B #$06                           ;839E0A;
    STA.B $11                            ;839E0C;
    JSL.L CODE_839518                    ;839E0E;
    LDA.B #$CA                           ;839E12;
    STA.B $20                            ;839E14;
    LDA.B #$BF                           ;839E16;
    STA.B $21                            ;839E18;

CODE_839E1A:
    LDA.B #$F0                           ;839E1A;
    STA.B $2A                            ;839E1C;
    JSR.W CODE_839F65                    ;839E1E;
    LDA.B #$8C                           ;839E21;
    STA.B $16                            ;839E23;
    LDA.B #$80                           ;839E25;
    STA.B $17                            ;839E27;

CODE_839E29:
    RTS                                  ;839E29;

CODE_839E2A:
    LDA.B #$02                           ;839E2A;
    STA.B $01                            ;839E2C;
    LDA.B $38                            ;839E2E;
    STA.B $02                            ;839E30;
    LDA.B $39                            ;839E32;
    STA.B $03                            ;839E34;
    STZ.B $30                            ;839E36;

CODE_839E38:
    LDX.B $02                            ;839E38;
    JSR.W (PTR16_839E62,X)               ;839E3A;
    LDA.B $00                            ;839E3D;
    BEQ CODE_839E29                      ;839E3F;
    LDA.B $02                            ;839E41;
    STA.B $38                            ;839E43;
    LDA.B $03                            ;839E45;
    STA.B $39                            ;839E47;
    LDA.B $02                            ;839E49;
    CMP.B #$06                           ;839E4B;
    BEQ CODE_839E29                      ;839E4D;
    JSL.L CODE_8280B4                    ;839E4F;
    LDA.B $0E                            ;839E53;
    BNE CODE_839E5B                      ;839E55;
    LDA.B #$04                           ;839E57;
    STA.B $02                            ;839E59;

CODE_839E5B:
    LDA.B $30                            ;839E5B;
    EOR.B #$01                           ;839E5D;
    STA.B $30                            ;839E5F;
    RTS                                  ;839E61;

PTR16_839E62:
    dw CODE_839E6A                       ;839E62;
    dw CODE_839EBA                       ;839E64;
    dw CODE_839EE0                       ;839E66;
    dw CODE_839EED                       ;839E68;

CODE_839E6A:
    LDX.B $03                            ;839E6A;
    BNE CODE_839E90                      ;839E6C;
    INC.B $03                            ;839E6E;
    STZ.B $30                            ;839E70;
    REP #$20                             ;839E72;
    LDA.W #$0180                         ;839E74;
    BIT.B $10                            ;839E77;
    BVS CODE_839E7E                      ;839E79;
    LDA.W #$FE80                         ;839E7B;

CODE_839E7E:
    STA.B $1A                            ;839E7E;
    STZ.B $1C                            ;839E80;
    LDA.W #$0040                         ;839E82;
    STA.B $1E                            ;839E85;
    SEP #$20                             ;839E87;
    LDA.B #$01                           ;839E89;
    JSL.L CODE_848F07                    ;839E8B;
    RTS                                  ;839E8F;

CODE_839E90:
    JSL.L CODE_8491BE                    ;839E90;
    LDA.B $2B                            ;839E94;
    BIT.B #$04                           ;839E96;
    BEQ CODE_839EA0                      ;839E98;
    LDA.B #$06                           ;839E9A;
    STA.B $02                            ;839E9C;
    STZ.B $03                            ;839E9E;

CODE_839EA0:
    JSL.L CODE_828174                    ;839EA0;
    REP #$20                             ;839EA4;
    LDA.W #$FE00                         ;839EA6;
    CMP.B $1C                            ;839EA9;
    BMI CODE_839EAF                      ;839EAB;
    STA.B $1C                            ;839EAD;

CODE_839EAF:
    SEP #$20                             ;839EAF;
    JSL.L CODE_848EEA                    ;839EB1;
    STZ.B $2A                            ;839EB5;
    JMP.W CODE_839F65                    ;839EB7;

CODE_839EBA:
    LDX.B $03                            ;839EBA;
    BNE CODE_839ED1                      ;839EBC;
    INC.B $03                            ;839EBE;
    STZ.B $30                            ;839EC0;
    LDA.B #$61                           ;839EC2;
    JSL.L CODE_8088A2                    ;839EC4;
    LDA.B #$00                           ;839EC8;
    JSL.L CODE_848F07                    ;839ECA;
    JMP.W CODE_839F2A                    ;839ECE;

CODE_839ED1:
    LDA.B $0F                            ;839ED1;
    BPL CODE_839ED9                      ;839ED3;
    LDA.B #$04                           ;839ED5;
    STA.B $02                            ;839ED7;

CODE_839ED9:
    JSL.L CODE_848EEA                    ;839ED9;
    JMP.W CODE_839F2A                    ;839EDD;

CODE_839EE0:
    INC.B $30                            ;839EE0;
    DEC.W $0BDD                          ;839EE2;
    DEC.W $0C25                          ;839EE5;
    JSL.L CODE_8283A3                    ;839EE8;
    RTS                                  ;839EEC;

CODE_839EED:
    LDX.B $03                            ;839EED;
    BNE CODE_839EFB                      ;839EEF;
    INC.B $03                            ;839EF1;
    INC.B $30                            ;839EF3;
    STZ.B $2F                            ;839EF5;
    LDA.B #$01                           ;839EF7;
    STA.B $37                            ;839EF9;

CODE_839EFB:
    LDA.B #$F0                           ;839EFB;
    STA.B $2A                            ;839EFD;
    JSR.W CODE_839F65                    ;839EFF;
    DEC.B $37                            ;839F02;
    BNE CODE_839F0D                      ;839F04;
    LDA.B #$0A                           ;839F06;
    STA.B $37                            ;839F08;
    JSR.W CODE_839F3B                    ;839F0A;

CODE_839F0D:
    JSL.L CODE_82823E                    ;839F0D;
    JSL.L CODE_8491BE                    ;839F11;
    JSL.L CODE_82806E                    ;839F15;
    BCS CODE_839F25                      ;839F19;
    LDA.B $2B                            ;839F1B;
    BIT.B #$04                           ;839F1D;
    BEQ CODE_839F25                      ;839F1F;
    BIT.B #$03                           ;839F21;
    BEQ CODE_839F29                      ;839F23;

CODE_839F25:
    LDA.B #$04                           ;839F25;
    STA.B $02                            ;839F27;

CODE_839F29:
    RTS                                  ;839F29;

CODE_839F2A:
    REP #$21                             ;839F2A;
    LDA.B $0F                            ;839F2C;
    AND.W #$000F                         ;839F2E;
    ASL A                                ;839F31;
    ASL A                                ;839F32;
    ADC.W #$BFB6                         ;839F33;
    STA.B $20                            ;839F36;
    SEP #$20                             ;839F38;
    RTS                                  ;839F3A;

CODE_839F3B:
    JSL.L CODE_82833E                    ;839F3B;
    BNE CODE_839F62                      ;839F3F;
    INC.W $0000,X                        ;839F41;
    INC.W $0BDD                          ;839F44;
    LDA.B #$13                           ;839F47;
    STA.W $000A,X                        ;839F49;
    LDA.B $11                            ;839F4C;
    STA.W $0011,X                        ;839F4E;
    LDA.B #$80                           ;839F51;
    STA.W $000B,X                        ;839F53;
    REP #$21                             ;839F56;
    LDA.B $05                            ;839F58;
    STA.W $0005,X                        ;839F5A;
    LDA.B $08                            ;839F5D;
    STA.W $0008,X                        ;839F5F;

CODE_839F62:
    SEP #$30                             ;839F62;
    RTS                                  ;839F64;

CODE_839F65:
    STZ.B $29                            ;839F65;
    JSL.L CODE_8490A0                    ;839F67;
    AND.B #$3F                           ;839F6B;
    CMP.B #$0E                           ;839F6D;
    BEQ CODE_839F7E                      ;839F6F;
    CMP.B #$0D                           ;839F71;
    BEQ CODE_839F7E                      ;839F73;
    CMP.B #$34                           ;839F75;
    BCC CODE_839F84                      ;839F77;
    LDA.W $0C18                          ;839F79;
    BEQ CODE_839F84                      ;839F7C;

CODE_839F7E:
    LDA.B #$04                           ;839F7E;
    STA.B $02                            ;839F80;
    BRA CODE_839F85                      ;839F82;

CODE_839F84:
    RTS                                  ;839F84;

CODE_839F85:
    JSL.L CODE_8282D3                    ;839F85;
    BNE CODE_839FA7                      ;839F89;
    INC.W $0000,X                        ;839F8B;
    LDA.B #$31                           ;839F8E;
    STA.W $000A,X                        ;839F90;
    STZ.W $000B,X                        ;839F93;
    LDA.B $11                            ;839F96;
    STA.W $0011,X                        ;839F98;
    REP #$21                             ;839F9B;
    LDA.B $05                            ;839F9D;
    STA.W $0005,X                        ;839F9F;
    LDA.B $08                            ;839FA2;
    STA.W $0008,X                        ;839FA4;

CODE_839FA7:
    SEP #$30                             ;839FA7;
    RTS                                  ;839FA9;

CODE_839FAA:
    LDX.B $01                            ;839FAA;
    JSR.W (PTR16_839FB8,X)               ;839FAC;
    LDA.B $0B                            ;839FAF;
    BNE CODE_839FB7                      ;839FB1;
    JML.L CODE_848FCA                    ;839FB3;

CODE_839FB7:
    RTL                                  ;839FB7;

PTR16_839FB8:
    dw CODE_839FC2                       ;839FB8;
    dw CODE_83A01D                       ;839FBA;
    dw CODE_83A00F                       ;839FBC;
    dw CODE_83A00F                       ;839FBE;
    dw CODE_83A00F                       ;839FC0;

CODE_839FC2:
    LDA.B #$02                           ;839FC2;
    STA.B $01                            ;839FC4;
    LDA.B #$FF                           ;839FC6;
    STA.B $10                            ;839FC8;
    LDA.B #$02                           ;839FCA;
    STA.B $18                            ;839FCC;
    STA.B $30                            ;839FCE;
    STZ.B $12                            ;839FD0;
    STZ.B $38                            ;839FD2;
    STZ.B $39                            ;839FD4;
    LDA.W $0BB9                          ;839FD6;
    AND.B #$70                           ;839FD9;
    ORA.B #$06                           ;839FDB;
    STA.B $11                            ;839FDD;
    REP #$21                             ;839FDF;
    LDA.W #$FFA0                         ;839FE1;
    LDX.B $0B                            ;839FE4;
    BEQ CODE_839FEB                      ;839FE6;
    LDA.W #$0060                         ;839FE8;

CODE_839FEB:
    ADC.W $0BB0                          ;839FEB;
    STA.B $08                            ;839FEE;
    LDA.W $0BAD                          ;839FF0;
    STA.B $05                            ;839FF3;
    LDA.W #$AECF                         ;839FF5;
    STA.B $31                            ;839FF8;
    SEP #$20                             ;839FFA;
    LDA.B #$41                           ;839FFC;
    STA.B $16                            ;839FFE;
    LDA.B $0B                            ;83A000;
    BNE CODE_83A00E                      ;83A002;
    LDA.B #$80                           ;83A004;
    STA.B $17                            ;83A006;
    INC.W $0C25                          ;83A008;
    JMP.W CODE_83A0B5                    ;83A00B;

CODE_83A00E:
    RTS                                  ;83A00E;

CODE_83A00F:
    LDA.B #$02                           ;83A00F;
    STA.B $01                            ;83A011;
    LDA.B $38                            ;83A013;
    STA.B $02                            ;83A015;
    LDA.B $39                            ;83A017;
    STA.B $03                            ;83A019;
    STZ.B $30                            ;83A01B;

CODE_83A01D:
    LDX.B $02                            ;83A01D;
    JSR.W (PTR16_83A03B,X)               ;83A01F;
    LDA.B $00                            ;83A022;
    BEQ CODE_83A00E                      ;83A024;
    LDA.B $02                            ;83A026;
    STA.B $38                            ;83A028;
    LDA.B $03                            ;83A02A;
    STA.B $39                            ;83A02C;
    LDA.W $0B9C                          ;83A02E;
    LSR A                                ;83A031;
    BCS CODE_83A038                      ;83A032;
    JSL.L CODE_82808F                    ;83A034;

CODE_83A038:
    JMP.W CODE_83A0C9                    ;83A038;

PTR16_83A03B:
    dw CODE_83A043                       ;83A03B;
    dw CODE_83A066                       ;83A03D;
    dw CODE_83A085                       ;83A03F;
    dw CODE_83A0A4                       ;83A041;

CODE_83A043:
    LDX.B $03                            ;83A043;
    BNE CODE_83A057                      ;83A045;
    INC.B $03                            ;83A047;
    STZ.B $30                            ;83A049;
    LDA.B #$01                           ;83A04B;
    LDX.B $0B                            ;83A04D;
    BEQ CODE_83A053                      ;83A04F;
    LDA.B #$04                           ;83A051;

CODE_83A053:
    JSL.L CODE_848F07                    ;83A053;

CODE_83A057:
    LDA.B $0F                            ;83A057;
    BPL CODE_83A061                      ;83A059;
    LDA.B #$02                           ;83A05B;
    STA.B $02                            ;83A05D;
    STZ.B $03                            ;83A05F;

CODE_83A061:
    JSL.L CODE_848EEA                    ;83A061;
    RTS                                  ;83A065;

CODE_83A066:
    LDX.B $03                            ;83A066;
    BNE CODE_83A076                      ;83A068;
    INC.B $03                            ;83A06A;
    LDA.B #$1E                           ;83A06C;
    STA.B $37                            ;83A06E;
    LDA.B #$02                           ;83A070;
    JSL.L CODE_848F07                    ;83A072;

CODE_83A076:
    DEC.B $37                            ;83A076;
    BNE CODE_83A080                      ;83A078;
    LDA.B #$04                           ;83A07A;
    STA.B $02                            ;83A07C;
    STZ.B $03                            ;83A07E;

CODE_83A080:
    JSL.L CODE_848EEA                    ;83A080;
    RTS                                  ;83A084;

CODE_83A085:
    LDX.B $03                            ;83A085;
    BNE CODE_83A097                      ;83A087;
    INC.B $03                            ;83A089;
    LDA.B #$03                           ;83A08B;
    LDX.B $0B                            ;83A08D;
    BEQ CODE_83A093                      ;83A08F;
    LDA.B #$00                           ;83A091;

CODE_83A093:
    JSL.L CODE_848F07                    ;83A093;

CODE_83A097:
    LDA.B $0F                            ;83A097;
    BPL CODE_83A09F                      ;83A099;
    LDA.B #$06                           ;83A09B;
    STA.B $02                            ;83A09D;

CODE_83A09F:
    JSL.L CODE_848EEA                    ;83A09F;
    RTS                                  ;83A0A3;

CODE_83A0A4:
    LDA.B $0B                            ;83A0A4;
    BNE CODE_83A0B0                      ;83A0A6;
    INC.B $30                            ;83A0A8;
    DEC.W $0BDD                          ;83A0AA;
    DEC.W $0C25                          ;83A0AD;

CODE_83A0B0:
    JSL.L CODE_8283A3                    ;83A0B0;
    RTS                                  ;83A0B4;

CODE_83A0B5:
    JSL.L CODE_82833E                    ;83A0B5;
    BNE CODE_83A0C6                      ;83A0B9;
    INC.W $0000,X                        ;83A0BB;
    LDA.B #$14                           ;83A0BE;
    STA.W $000A,X                        ;83A0C0;
    STA.W $000B,X                        ;83A0C3;

CODE_83A0C6:
    SEP #$10                             ;83A0C6;
    RTS                                  ;83A0C8;

CODE_83A0C9:
    REP #$21                             ;83A0C9;
    LDA.B $0F                            ;83A0CB;
    AND.W #$000F                         ;83A0CD;
    ASL A                                ;83A0D0;
    ASL A                                ;83A0D1;
    ADC.W #$BFD4                         ;83A0D2;
    STA.B $20                            ;83A0D5;
    SEP #$20                             ;83A0D7;
    RTS                                  ;83A0D9;

CODE_83A0DA:
    LDX.B $01                            ;83A0DA;
    JSR.W (PTR16_83A0E0,X)               ;83A0DC;
    RTL                                  ;83A0DF;

PTR16_83A0E0:
    dw CODE_83A0EC                       ;83A0E0;
    dw CODE_83A129                       ;83A0E2;
    dw CODE_83A11B                       ;83A0E4;
    dw CODE_83A11B                       ;83A0E6;
    dw CODE_83A11B                       ;83A0E8;
    dw CODE_83A191                       ;83A0EA;

CODE_83A0EC:
    LDA.B #$02                           ;83A0EC;
    STA.B $01                            ;83A0EE;
    STA.B $30                            ;83A0F0;
    INC.W $0C25                          ;83A0F2;
    STZ.B $18                            ;83A0F5;
    STZ.B $12                            ;83A0F7;
    STZ.B $38                            ;83A0F9;
    STZ.B $39                            ;83A0FB;
    LDA.B $0B                            ;83A0FD;
    BNE CODE_83A10E                      ;83A0FF;
    LDA.W $0BB9                          ;83A101;
    AND.B #$70                           ;83A104;
    ORA.B #$06                           ;83A106;
    STA.B $11                            ;83A108;
    JSL.L CODE_839518                    ;83A10A;

CODE_83A10E:
    LDA.B $0B                            ;83A10E;
    BEQ CODE_83A116                      ;83A110;
    LDA.B #$02                           ;83A112;
    STA.B $02                            ;83A114;

CODE_83A116:
    LDA.B #$47                           ;83A116;
    STA.B $16                            ;83A118;
    RTS                                  ;83A11A;

CODE_83A11B:
    LDA.B #$02                           ;83A11B;
    STA.B $01                            ;83A11D;
    LDA.B $38                            ;83A11F;
    STA.B $02                            ;83A121;
    LDA.B $39                            ;83A123;
    STA.B $03                            ;83A125;
    STZ.B $30                            ;83A127;

CODE_83A129:
    LDX.B $02                            ;83A129;
    JSR.W (PTR16_83A145,X)               ;83A12B;
    JSL.L CODE_8280B4                    ;83A12E;
    LDA.B $02                            ;83A132;
    STA.B $38                            ;83A134;
    LDA.B $03                            ;83A136;
    STA.B $39                            ;83A138;
    LDA.B $0E                            ;83A13A;
    BNE CODE_83A142                      ;83A13C;
    LDA.B #$0A                           ;83A13E;
    STA.B $01                            ;83A140;

CODE_83A142:
    JMP.W CODE_83A19E                    ;83A142;

PTR16_83A145:
    dw CODE_83A149                       ;83A145;
    dw CODE_83A169                       ;83A147;

CODE_83A149:
    LDX.B $03                            ;83A149;
    BNE CODE_83A157                      ;83A14B;
    INC.B $03                            ;83A14D;
    STZ.B $30                            ;83A14F;
    LDA.B #$02                           ;83A151;
    JSL.L CODE_848F07                    ;83A153;

CODE_83A157:
    LDA.B $0F                            ;83A157;
    BPL CODE_83A164                      ;83A159;
    LDA.B #$02                           ;83A15B;
    STA.B $02                            ;83A15D;
    STZ.B $03                            ;83A15F;
    JMP.W CODE_83A1AF                    ;83A161;

CODE_83A164:
    JSL.L CODE_848EEA                    ;83A164;
    RTS                                  ;83A168;

CODE_83A169:
    LDX.B $03                            ;83A169;
    BNE CODE_83A188                      ;83A16B;
    INC.B $03                            ;83A16D;
    STZ.B $30                            ;83A16F;
    REP #$21                             ;83A171;
    LDA.W #$0800                         ;83A173;
    BIT.B $10                            ;83A176;
    BVS CODE_83A17D                      ;83A178;
    LDA.W #$F800                         ;83A17A;

CODE_83A17D:
    STA.B $1A                            ;83A17D;
    SEP #$20                             ;83A17F;
    LDA.B #$03                           ;83A181;
    JSL.L CODE_848F07                    ;83A183;
    RTS                                  ;83A187;

CODE_83A188:
    JSL.L CODE_82823E                    ;83A188;
    JSL.L CODE_848EEA                    ;83A18C;
    RTS                                  ;83A190;

CODE_83A191:
    INC.B $30                            ;83A191;
    DEC.W $0BDD                          ;83A193;
    DEC.W $0C25                          ;83A196;
    JSL.L CODE_8283A3                    ;83A199;
    RTS                                  ;83A19D;

CODE_83A19E:
    REP #$21                             ;83A19E;
    LDA.B $0F                            ;83A1A0;
    AND.W #$000F                         ;83A1A2;
    ASL A                                ;83A1A5;
    ASL A                                ;83A1A6;
    ADC.W #$C000                         ;83A1A7;
    STA.B $20                            ;83A1AA;
    SEP #$20                             ;83A1AC;
    RTS                                  ;83A1AE;

CODE_83A1AF:
    JSL.L CODE_82833E                    ;83A1AF;
    BNE CODE_83A1D8                      ;83A1B3;
    INC.W $0000,X                        ;83A1B5;
    INC.W $0BDD                          ;83A1B8;
    LDA.B #$15                           ;83A1BB;
    STA.W $000A,X                        ;83A1BD;
    LDA.B $11                            ;83A1C0;
    EOR.B #$40                           ;83A1C2;
    STA.W $0011,X                        ;83A1C4;
    LDA.B #$01                           ;83A1C7;
    STA.W $000B,X                        ;83A1C9;
    REP #$21                             ;83A1CC;
    LDA.B $05                            ;83A1CE;
    STA.W $0005,X                        ;83A1D0;
    LDA.B $08                            ;83A1D3;
    STA.W $0008,X                        ;83A1D5;

CODE_83A1D8:
    SEP #$30                             ;83A1D8;
    RTS                                  ;83A1DA;

CODE_83A1DB:
    LDX.B $01                            ;83A1DB;
    JMP.W (PTR16_83A1E0,X)               ;83A1DD;

PTR16_83A1E0:
    dw CODE_83A1EA                       ;83A1E0;
    dw CODE_83A2C1                       ;83A1E2;
    dw CODE_83A387                       ;83A1E4;
    dw CODE_83A2BB                       ;83A1E6;
    dw CODE_83A387                       ;83A1E8;

CODE_83A1EA:
    LDA.B #$02                           ;83A1EA;
    STA.B $01                            ;83A1EC;
    INC.W $0C25                          ;83A1EE;
    LDA.W $0BB9                          ;83A1F1;
    AND.B #$70                           ;83A1F4;
    ORA.B #$06                           ;83A1F6;
    STA.B $11                            ;83A1F8;
    STZ.B $30                            ;83A1FA;
    STZ.B $12                            ;83A1FC;
    LDA.B #$08                           ;83A1FE;
    STA.B $18                            ;83A200;
    LDA.B #$FF                           ;83A202;
    STA.B $10                            ;83A204;
    LDA.B #$97                           ;83A206;
    STA.B $16                            ;83A208;
    LDA.B #$0A                           ;83A20A;
    STA.B $37                            ;83A20C;
    LDA.B $11                            ;83A20E;
    ASL A                                ;83A210;
    ASL A                                ;83A211;
    LDA.B #$08                           ;83A212;
    BCS CODE_83A218                      ;83A214;
    LDA.B #$18                           ;83A216;

CODE_83A218:
    CLC                                  ;83A218;
    ADC.B $0B                            ;83A219;
    AND.B #$1F                           ;83A21B;
    STA.B $38                            ;83A21D;
    ASL A                                ;83A21F;
    ASL A                                ;83A220;
    TAX                                  ;83A221;
    REP #$20                             ;83A222;
    LDA.W DATA8_86EE37,X                 ;83A224;
    ASL A                                ;83A227;
    ASL A                                ;83A228;
    STA.B $1A                            ;83A229;
    LDA.W DATA8_86EE39,X                 ;83A22B;
    ASL A                                ;83A22E;
    ASL A                                ;83A22F;
    STA.B $1C                            ;83A230;
    LDA.W #$C01C                         ;83A232;
    STA.B $20                            ;83A235;
    LDA.W #$ADA7                         ;83A237;
    STA.B $31                            ;83A23A;
    LDA.W $0BAD                          ;83A23C;
    STA.B $05                            ;83A23F;
    STA.B $28                            ;83A241;
    STA.B $2A                            ;83A243;
    STA.B $2D                            ;83A245;
    LDA.W $0BB0                          ;83A247;
    STA.B $08                            ;83A24A;
    STA.B $3A                            ;83A24C;
    STA.B $3C                            ;83A24E;
    STA.B $3E                            ;83A250;
    SEP #$20                             ;83A252;
    LDA.B #$00                           ;83A254;
    JSL.L CODE_848F07                    ;83A256;
    LDA.B $0B                            ;83A25A;
    BNE CODE_83A29C                      ;83A25C;
    JSL.L CODE_848FCA                    ;83A25E;
    LDA.B #$0C                           ;83A262;
    STA.B $18                            ;83A264;
    LDA.B $17                            ;83A266;
    PHA                                  ;83A268;
    CLC                                  ;83A269;
    ADC.B #$08                           ;83A26A;
    ORA.B #$80                           ;83A26C;
    STA.B $17                            ;83A26E;
    JSL.L CODE_848FCA                    ;83A270;
    LDA.B #$08                           ;83A274;
    STA.B $18                            ;83A276;
    PLA                                  ;83A278;
    STA.B $17                            ;83A279;
    LDA.B #$18                           ;83A27B;
    STA.B $39                            ;83A27D;

CODE_83A27F:
    JSL.L CODE_82833E                    ;83A27F;
    BNE CODE_83A29C                      ;83A283;
    INC.W $0BDD                          ;83A285;
    INC.W $0000,X                        ;83A288;
    LDA.B #$16                           ;83A28B;
    STA.W $000A,X                        ;83A28D;
    LDA.B $39                            ;83A290;
    STA.W $000B,X                        ;83A292;
    SEC                                  ;83A295;
    SBC.B #$08                           ;83A296;
    STA.B $39                            ;83A298;
    BNE CODE_83A27F                      ;83A29A;

CODE_83A29C:
    JSL.L CODE_8282ED                    ;83A29C;
    BNE CODE_83A2B5                      ;83A2A0;
    INC.W $0000,X                        ;83A2A2;
    LDA.B #$03                           ;83A2A5;
    STA.W $000A,X                        ;83A2A7;
    LDA.B $11                            ;83A2AA;
    STA.W $0011,X                        ;83A2AC;
    REP #$20                             ;83A2AF;
    TDC                                  ;83A2B1;
    STA.W $000C,X                        ;83A2B2;

CODE_83A2B5:
    SEP #$30                             ;83A2B5;
    JML.L CODE_8280B4                    ;83A2B7;

CODE_83A2BB:
    STZ.B $30                            ;83A2BB;
    LDA.B #$02                           ;83A2BD;
    STA.B $01                            ;83A2BF;

CODE_83A2C1:
    LDX.B $02                            ;83A2C1;
    JSR.W (PTR16_83A347,X)               ;83A2C3;
    REP #$20                             ;83A2C6;
    LDA.B $2A                            ;83A2C8;
    STA.B $2D                            ;83A2CA;
    LDA.B $28                            ;83A2CC;
    STA.B $2A                            ;83A2CE;
    LDA.B $22                            ;83A2D0;
    STA.B $28                            ;83A2D2;
    LDA.B $3C                            ;83A2D4;
    STA.B $3E                            ;83A2D6;
    LDA.B $3A                            ;83A2D8;
    STA.B $3C                            ;83A2DA;
    LDA.B $24                            ;83A2DC;
    STA.B $3A                            ;83A2DE;
    SEP #$20                             ;83A2E0;
    JSL.L CODE_82806E                    ;83A2E2;
    BCC CODE_83A2F2                      ;83A2E6;
    DEC.W $0BDD                          ;83A2E8;
    DEC.W $0C25                          ;83A2EB;
    JML.L CODE_8283A3                    ;83A2EE;

CODE_83A2F2:
    LDA.B $0B                            ;83A2F2;
    BEQ CODE_83A31E                      ;83A2F4;
    REP #$10                             ;83A2F6;
    LDX.W #$1228                         ;83A2F8;

CODE_83A2FB:
    LDA.W $0000,X                        ;83A2FB;
    BEQ CODE_83A30B                      ;83A2FE;
    LDA.W $000A,X                        ;83A300;
    CMP.B #$16                           ;83A303;
    BNE CODE_83A30B                      ;83A305;
    LDA.B $0B                            ;83A307;
    BEQ CODE_83A31C                      ;83A309;

CODE_83A30B:
    REP #$20                             ;83A30B;
    TXA                                  ;83A30D;
    CLC                                  ;83A30E;
    ADC.W #$0040                         ;83A30F;
    TAX                                  ;83A312;
    SEP #$20                             ;83A313;
    CPX.W #$1428                         ;83A315;
    BCC CODE_83A2FB                      ;83A318;
    STZ.B $0B                            ;83A31A;

CODE_83A31C:
    SEP #$30                             ;83A31C;

CODE_83A31E:
    JSL.L CODE_848EEA                    ;83A31E;
    LDA.B $0B                            ;83A322;
    BNE CODE_83A343                      ;83A324;
    JSL.L CODE_848FCA                    ;83A326;
    LDA.B #$0C                           ;83A32A;
    STA.B $18                            ;83A32C;
    LDA.B $17                            ;83A32E;
    PHA                                  ;83A330;
    CLC                                  ;83A331;
    ADC.B #$08                           ;83A332;
    ORA.B #$80                           ;83A334;
    STA.B $17                            ;83A336;
    JSL.L CODE_848FCA                    ;83A338;
    LDA.B #$08                           ;83A33C;
    STA.B $18                            ;83A33E;
    PLA                                  ;83A340;
    STA.B $17                            ;83A341;

CODE_83A343:
    JML.L CODE_8280B4                    ;83A343;

PTR16_83A347:
    dw CODE_83A34D                       ;83A347;
    dw CODE_83A35E                       ;83A349;
    dw CODE_83A359                       ;83A34B;

CODE_83A34D:
    DEC.B $37                            ;83A34D;
    BNE CODE_83A359                      ;83A34F;
    LDA.B #$02                           ;83A351;
    STA.B $02                            ;83A353;
    LDA.B #$1C                           ;83A355;
    STA.B $37                            ;83A357;

CODE_83A359:
    JSL.L CODE_82820A                    ;83A359;
    RTS                                  ;83A35D;

CODE_83A35E:
    LDA.B $38                            ;83A35E;
    INC A                                ;83A360;
    AND.B #$1F                           ;83A361;
    STA.B $38                            ;83A363;
    ASL A                                ;83A365;
    ASL A                                ;83A366;
    TAX                                  ;83A367;
    REP #$20                             ;83A368;
    LDA.W DATA8_86EE37,X                 ;83A36A;
    ASL A                                ;83A36D;
    ASL A                                ;83A36E;
    STA.B $1A                            ;83A36F;
    LDA.W DATA8_86EE39,X                 ;83A371;
    ASL A                                ;83A374;
    ASL A                                ;83A375;
    STA.B $1C                            ;83A376;
    SEP #$20                             ;83A378;
    DEC.B $37                            ;83A37A;
    BNE CODE_83A382                      ;83A37C;
    LDA.B #$04                           ;83A37E;
    STA.B $02                            ;83A380;

CODE_83A382:
    JSL.L CODE_82820A                    ;83A382;
    RTS                                  ;83A386;

CODE_83A387:
    DEC.W $0BDD                          ;83A387;
    DEC.W $0C25                          ;83A38A;
    JML.L CODE_8283A3                    ;83A38D;

CODE_83A391:
    LDA.W $1F49                          ;83A391;
    BEQ CODE_83A39A                      ;83A394;
    LDA.B #$04                           ;83A396;
    STA.B $01                            ;83A398;

CODE_83A39A:
    LDX.B $01                            ;83A39A;
    JMP.W (PTR16_83A39F,X)               ;83A39C;

PTR16_83A39F:
    dw CODE_83A3A9                       ;83A39F;
    dw CODE_83A429                       ;83A3A1;
    dw CODE_83A4F5                       ;83A3A3;
    dw CODE_83A423                       ;83A3A5;
    dw CODE_83A4F1                       ;83A3A7;

CODE_83A3A9:
    LDA.B #$02                           ;83A3A9;
    STA.B $01                            ;83A3AB;
    LDA.B #$08                           ;83A3AD;
    STA.B $18                            ;83A3AF;
    LDA.W $0BB9                          ;83A3B1;
    AND.B #$70                           ;83A3B4;
    ORA.B #$06                           ;83A3B6;
    STA.B $11                            ;83A3B8;
    STZ.B $30                            ;83A3BA;
    LDA.B #$FF                           ;83A3BC;
    STA.B $10                            ;83A3BE;
    LDA.B #$95                           ;83A3C0;
    STA.B $16                            ;83A3C2;
    LDA.B #$01                           ;83A3C4;
    STA.B $37                            ;83A3C6;
    LDX.B $3C                            ;83A3C8;
    LDA.W DATA8_86BE39,X                 ;83A3CA;
    STA.W $0000                          ;83A3CD;
    STZ.W $0001                          ;83A3D0;
    STZ.W $0003                          ;83A3D3;
    LDA.W DATA8_86BE3A,X                 ;83A3D6;
    STA.W $0002                          ;83A3D9;
    BPL CODE_83A3E1                      ;83A3DC;
    DEC.W $0003                          ;83A3DE;

CODE_83A3E1:
    REP #$20                             ;83A3E1;
    LDA.W $0000                          ;83A3E3;
    BIT.B $10                            ;83A3E6;
    BVS CODE_83A3EE                      ;83A3E8;
    EOR.W #$FFFF                         ;83A3EA;
    INC A                                ;83A3ED;

CODE_83A3EE:
    CLC                                  ;83A3EE;
    ADC.W $0BAD                          ;83A3EF;
    STA.B $05                            ;83A3F2;
    LDA.W $0BB0                          ;83A3F4;
    CLC                                  ;83A3F7;
    ADC.W $0002                          ;83A3F8;
    STA.B $08                            ;83A3FB;
    STZ.B $1A                            ;83A3FD;
    STZ.B $1C                            ;83A3FF;
    LDA.W #$C020                         ;83A401;
    STA.B $20                            ;83A404;
    LDA.W #$B049                         ;83A406;
    STA.B $31                            ;83A409;
    SEP #$20                             ;83A40B;
    LDA.B #$40                           ;83A40D;
    STA.B $1E                            ;83A40F;
    LDA.B #$FF                           ;83A411;
    STA.B $2F                            ;83A413;
    LDA.B #$00                           ;83A415;
    JSL.L CODE_848F07                    ;83A417;
    JSL.L CODE_848FCA                    ;83A41B;
    JML.L CODE_8280B4                    ;83A41F;

CODE_83A423:
    LDA.B #$02                           ;83A423;
    STA.B $01                            ;83A425;
    STZ.B $30                            ;83A427;

CODE_83A429:
    LDX.B $02                            ;83A429;
    JSR.W (PTR16_83A446,X)               ;83A42B;
    JSL.L CODE_848FCA                    ;83A42E;
    JSL.L CODE_82806E                    ;83A432;
    BCS CODE_83A43C                      ;83A436;
    JML.L CODE_8280B4                    ;83A438;

CODE_83A43C:
    STZ.W $0C25                          ;83A43C;
    DEC.W $0BDD                          ;83A43F;
    JML.L CODE_8283A3                    ;83A442;

PTR16_83A446:
    dw CODE_83A450                       ;83A446;
    dw CODE_83A463                       ;83A448;
    dw CODE_83A490                       ;83A44A;
    dw CODE_83A4A7                       ;83A44C;
    dw CODE_83A4CD                       ;83A44E;

CODE_83A450:
    JSL.L CODE_848EEA                    ;83A450;
    LDA.B $0F                            ;83A454;
    BPL CODE_83A462                      ;83A456;
    LDA.B #$02                           ;83A458;
    STA.B $02                            ;83A45A;
    LDA.B #$02                           ;83A45C;
    JSL.L CODE_848F07                    ;83A45E;

CODE_83A462:
    RTS                                  ;83A462;

CODE_83A463:
    JSL.L CODE_8281E8                    ;83A463;
    REP #$20                             ;83A467;
    LDA.B $1C                            ;83A469;
    CMP.W #$FA00                         ;83A46B;
    BPL CODE_83A475                      ;83A46E;
    LDA.W #$FA00                         ;83A470;
    STA.B $1C                            ;83A473;

CODE_83A475:
    SEP #$20                             ;83A475;
    JSL.L CODE_8491BE                    ;83A477;
    LDA.B $2B                            ;83A47B;
    AND.B #$04                           ;83A47D;
    BEQ CODE_83A48F                      ;83A47F;
    LDA.B #$04                           ;83A481;
    STA.B $02                            ;83A483;
    LDA.B #$1E                           ;83A485;
    STA.B $37                            ;83A487;
    STZ.B $1E                            ;83A489;
    STZ.B $1C                            ;83A48B;
    STZ.B $1D                            ;83A48D;

CODE_83A48F:
    RTS                                  ;83A48F;

CODE_83A490:
    DEC.B $37                            ;83A490;
    BNE CODE_83A4A2                      ;83A492;
    LDA.B #$01                           ;83A494;
    JSL.L CODE_848F07                    ;83A496;
    LDA.B #$10                           ;83A49A;
    STA.B $1F                            ;83A49C;
    LDA.B #$06                           ;83A49E;
    STA.B $02                            ;83A4A0;

CODE_83A4A2:
    JSL.L CODE_84AB77                    ;83A4A2;
    RTS                                  ;83A4A6;

CODE_83A4A7:
    JSR.W CODE_83A508                    ;83A4A7;
    JSL.L CODE_848EEA                    ;83A4AA;
    LDA.B $2B                            ;83A4AE;
    AND.B #$04                           ;83A4B0;
    BNE CODE_83A4C8                      ;83A4B2;
    LDA.B #$08                           ;83A4B4;
    STA.B $02                            ;83A4B6;
    LDA.B #$02                           ;83A4B8;
    JSL.L CODE_848F07                    ;83A4BA;
    LDA.B #$FF                           ;83A4BE;
    STA.B $2F                            ;83A4C0;
    STZ.B $1F                            ;83A4C2;
    LDA.B #$40                           ;83A4C4;
    STA.B $1E                            ;83A4C6;

CODE_83A4C8:
    JSL.L CODE_84AB77                    ;83A4C8;
    RTS                                  ;83A4CC;

CODE_83A4CD:
    JSR.W CODE_83A508                    ;83A4CD;
    LDA.B $2B                            ;83A4D0;
    AND.B #$04                           ;83A4D2;
    BEQ CODE_83A4EC                      ;83A4D4;
    LDA.B #$06                           ;83A4D6;
    STA.B $02                            ;83A4D8;
    LDA.B #$01                           ;83A4DA;
    JSL.L CODE_848F07                    ;83A4DC;
    STZ.B $2F                            ;83A4E0;
    STZ.B $1E                            ;83A4E2;
    LDA.B #$10                           ;83A4E4;
    STA.B $1F                            ;83A4E6;
    STZ.B $1C                            ;83A4E8;
    STZ.B $1D                            ;83A4EA;

CODE_83A4EC:
    JSL.L CODE_84AB77                    ;83A4EC;
    RTS                                  ;83A4F0;

CODE_83A4F1:
    JSL.L CODE_84A51A                    ;83A4F1;

CODE_83A4F5:
    LDA.B #$4C                           ;83A4F5;
    JSL.L CODE_8088A2                    ;83A4F7;
    JSR.W CODE_83A55B                    ;83A4FB;
    STZ.W $0C25                          ;83A4FE;
    DEC.W $0BDD                          ;83A501;
    JML.L CODE_8283A3                    ;83A504;

CODE_83A508:
    LDA.B $11                            ;83A508;
    ASL A                                ;83A50A;
    ASL A                                ;83A50B;
    BCS CODE_83A526                      ;83A50C;
    JSL.L CODE_828174                    ;83A50E;
    REP #$20                             ;83A512;
    LDA.B $1A                            ;83A514;
    CMP.W #$FC00                         ;83A516;
    BPL CODE_83A53C                      ;83A519;
    LDA.W #$FC00                         ;83A51B;
    STA.B $1A                            ;83A51E;
    LDX.B #$00                           ;83A520;
    STX.B $1F                            ;83A522;
    BRA CODE_83A53C                      ;83A524;

CODE_83A526:
    JSL.L CODE_828195                    ;83A526;
    REP #$20                             ;83A52A;
    LDA.B $1A                            ;83A52C;
    CMP.W #$0400                         ;83A52E;
    BMI CODE_83A53C                      ;83A531;
    LDA.W #$0400                         ;83A533;
    STA.B $1A                            ;83A536;
    LDX.B #$00                           ;83A538;
    STX.B $1F                            ;83A53A;

CODE_83A53C:
    LDA.B $1C                            ;83A53C;
    CMP.W #$FA00                         ;83A53E;
    BPL CODE_83A548                      ;83A541;
    LDA.W #$FA00                         ;83A543;
    STA.B $1C                            ;83A546;

CODE_83A548:
    SEP #$20                             ;83A548;
    JSL.L CODE_8491BE                    ;83A54A;
    LDA.B $2B                            ;83A54E;
    AND.B #$03                           ;83A550;
    BEQ CODE_83A55A                      ;83A552;
    LDA.B #$04                           ;83A554;
    STA.B $01                            ;83A556;
    INC.B $30                            ;83A558;

CODE_83A55A:
    RTS                                  ;83A55A;

CODE_83A55B:
    LDA.B #$06                           ;83A55B;
    STA.B $38                            ;83A55D;

CODE_83A55F:
    JSL.L CODE_8282ED                    ;83A55F;
    BNE CODE_83A598                      ;83A563;
    INC.W $0000,X                        ;83A565;
    LDA.B $38                            ;83A568;
    ROR A                                ;83A56A;
    ROR A                                ;83A56B;
    ROR A                                ;83A56C;
    AND.B #$40                           ;83A56D;
    EOR.B $11                            ;83A56F;
    STA.W $0011,X                        ;83A571;
    LDA.B #$02                           ;83A574;
    STA.W $000A,X                        ;83A576;
    LDA.B $38                            ;83A579;
    CMP.B #$03                           ;83A57B;
    LDA.B #$01                           ;83A57D;
    BCS CODE_83A583                      ;83A57F;
    LDA.B #$02                           ;83A581;

CODE_83A583:
    STA.W $000B,X                        ;83A583;
    REP #$20                             ;83A586;
    LDA.B $05                            ;83A588;
    STA.W $0005,X                        ;83A58A;
    LDA.B $08                            ;83A58D;
    STA.W $0008,X                        ;83A58F;
    SEP #$20                             ;83A592;
    DEC.B $38                            ;83A594;
    BNE CODE_83A55F                      ;83A596;

CODE_83A598:
    SEP #$30                             ;83A598;
    RTS                                  ;83A59A;

CODE_83A59B:
    LDX.B $01                            ;83A59B;
    JMP.W (PTR16_83A5A0,X)               ;83A59D;

PTR16_83A5A0:
    dw CODE_83A5AA                       ;83A5A0;
    dw CODE_83A5D8                       ;83A5A2;
    dw CODE_83A5D6                       ;83A5A4;
    dw CODE_83A5D6                       ;83A5A6;
    dw CODE_83A5D6                       ;83A5A8;

CODE_83A5AA:
    LDA.B #$02                           ;83A5AA;
    STA.B $01                            ;83A5AC;
    LDA.B #$FF                           ;83A5AE;
    STA.B $10                            ;83A5B0;
    LDA.B #$08                           ;83A5B2;
    STA.B $18                            ;83A5B4;
    STZ.B $30                            ;83A5B6;
    LDX.W $1F7A                          ;83A5B8;
    LDA.W $0BB9                          ;83A5BB;
    AND.B #$70                           ;83A5BE;
    ORA.B #$06                           ;83A5C0;
    STA.B $11                            ;83A5C2;
    LDA.B #$50                           ;83A5C4;
    STA.B $31                            ;83A5C6;
    LDA.B #$AB                           ;83A5C8;
    STA.B $32                            ;83A5CA;
    LDA.B #$54                           ;83A5CC;
    STA.B $16                            ;83A5CE;
    LDA.B #$00                           ;83A5D0;
    JSL.L CODE_848F07                    ;83A5D2;

CODE_83A5D6:
    STZ.B $30                            ;83A5D6;

CODE_83A5D8:
    REP #$20                             ;83A5D8;
    LDA.W $0BAD                          ;83A5DA;
    STA.B $05                            ;83A5DD;
    LDA.W $0BB0                          ;83A5DF;
    STA.B $08                            ;83A5E2;
    JSL.L CODE_848EEA                    ;83A5E4;
    LDA.B $0F                            ;83A5E8;
    AND.W #$007F                         ;83A5EA;
    CLC                                  ;83A5ED;
    ADC.W #$C04E                         ;83A5EE;
    STA.B $20                            ;83A5F1;
    SEP #$20                             ;83A5F3;
    LDA.B $0F                            ;83A5F5;
    BPL CODE_83A5FD                      ;83A5F7;
    JML.L CODE_8283A3                    ;83A5F9;

CODE_83A5FD:
    JSL.L CODE_848FCA                    ;83A5FD;
    JML.L CODE_8280B4                    ;83A601;

CODE_83A605:
    LDA.B $01                            ;83A605;
    BNE CODE_83A637                      ;83A607;
    INC.B $01                            ;83A609;
    LDA.B #$01                           ;83A60B;
    STA.B $28                            ;83A60D;
    LDA.B $0B                            ;83A60F;
    ASL A                                ;83A611;
    ASL A                                ;83A612;
    TAX                                  ;83A613;
    REP #$20                             ;83A614;
    LDA.W DATA8_86EE37,X                 ;83A616;
    STA.B $1A                            ;83A619;
    LDA.W DATA8_86EE39,X                 ;83A61B;
    STA.B $1C                            ;83A61E;
    LDA.W #$C2AF                         ;83A620;
    STA.B $20                            ;83A623;
    SEP #$20                             ;83A625;
    LDA.B #$01                           ;83A627;
    STA.B $27                            ;83A629;
    STA.B $26                            ;83A62B;
    LDA.B #$04                           ;83A62D;
    JSL.L CODE_848F07                    ;83A62F;
    LDA.B #$80                           ;83A633;
    STA.B $37                            ;83A635;

CODE_83A637:
    JSL.L CODE_82820A                    ;83A637;
    JSL.L CODE_849B03                    ;83A63B;
    BNE CODE_83A64E                      ;83A63F;
    JSL.L CODE_8280B4                    ;83A641;
    LDA.B $0E                            ;83A645;
    BEQ CODE_83A64E                      ;83A647;
    DEC.B $37                            ;83A649;
    BEQ CODE_83A64E                      ;83A64B;
    RTL                                  ;83A64D;

CODE_83A64E:
    JML.L CODE_8283A3                    ;83A64E;

CODE_83A652:
    LDX.B $01                            ;83A652;
    JSR.W (PTR16_83A658,X)               ;83A654;
    RTL                                  ;83A657;

PTR16_83A658:
    dw CODE_83A65C                       ;83A658;
    dw CODE_83A67D                       ;83A65A;

CODE_83A65C:
    LDA.B #$02                           ;83A65C;
    STA.B $01                            ;83A65E;
    STA.B $27                            ;83A660;
    LDA.B #$01                           ;83A662;
    STA.B $28                            ;83A664;
    LDA.B #$02                           ;83A666;
    STA.B $26                            ;83A668;
    LDA.B #$02                           ;83A66A;
    STA.B $12                            ;83A66C;
    JSL.L CODE_8280B4                    ;83A66E;
    LDA.B #$60                           ;83A672;
    STA.B $39                            ;83A674;
    LDA.B $0B                            ;83A676;
    JSL.L CODE_848F07                    ;83A678;
    RTS                                  ;83A67C;

CODE_83A67D:
    DEC.B $39                            ;83A67D;
    BNE CODE_83A684                      ;83A67F;
    JMP.W CODE_83A6A5                    ;83A681;

CODE_83A684:
    LDA.B $28                            ;83A684;
    BNE CODE_83A68C                      ;83A686;
    JSL.L CODE_849B43                    ;83A688;

CODE_83A68C:
    JSL.L CODE_849B03                    ;83A68C;
    BNE CODE_83A6A5                      ;83A690;
    JSL.L CODE_82823E                    ;83A692;
    JSL.L CODE_848EEA                    ;83A696;
    JSL.L CODE_8280B4                    ;83A69A;
    LDA.B $0E                            ;83A69E;
    BNE CODE_83A6B3                      ;83A6A0;
    JMP.W CODE_83A6AF                    ;83A6A2;

CODE_83A6A5:
    LDA.B $16                            ;83A6A5;
    CMP.B #$28                           ;83A6A7;
    BNE CODE_83A6AF                      ;83A6A9;
    JSL.L CODE_84A4AB                    ;83A6AB;

CODE_83A6AF:
    JSL.L CODE_8283A3                    ;83A6AF;

CODE_83A6B3:
    RTS                                  ;83A6B3;

CODE_83A6B4:
    LDX.B $01                            ;83A6B4;
    JSR.W (PTR16_83A6BA,X)               ;83A6B6;
    RTL                                  ;83A6B9;

PTR16_83A6BA:
    dw CODE_83A6BE                       ;83A6BA;
    dw CODE_83A6EE                       ;83A6BC;

CODE_83A6BE:
    LDA.B #$02                           ;83A6BE;
    STA.B $01                            ;83A6C0;
    STA.B $27                            ;83A6C2;
    LDA.B #$01                           ;83A6C4;
    STA.B $28                            ;83A6C6;
    LDA.B #$02                           ;83A6C8;
    STA.B $26                            ;83A6CA;
    LDA.B #$02                           ;83A6CC;
    STA.B $12                            ;83A6CE;
    LDA.B #$40                           ;83A6D0;
    STA.B $1E                            ;83A6D2;
    STZ.B $37                            ;83A6D4;
    REP #$20                             ;83A6D6;
    LDA.W #$C2C9                         ;83A6D8;
    STA.B $20                            ;83A6DB;
    SEP #$20                             ;83A6DD;
    LDA.B #$50                           ;83A6DF;
    STA.B $16                            ;83A6E1;
    LDA.B #$02                           ;83A6E3;
    JSL.L CODE_848F07                    ;83A6E5;
    JSL.L CODE_8280B4                    ;83A6E9;
    RTS                                  ;83A6ED;

CODE_83A6EE:
    REP #$10                             ;83A6EE;
    LDX.B $0C                            ;83A6F0;
    LDA.W $0027,X                        ;83A6F2;
    AND.B #$7F                           ;83A6F5;
    BNE CODE_83A6FD                      ;83A6F7;
    LDA.B #$01                           ;83A6F9;
    STA.B $37                            ;83A6FB;

CODE_83A6FD:
    SEP #$10                             ;83A6FD;
    JSL.L CODE_849B03                    ;83A6FF;
    BNE CODE_83A71E                      ;83A703;
    JSL.L CODE_8281E8                    ;83A705;
    JSL.L CODE_848EEA                    ;83A709;
    JSL.L CODE_8280B4                    ;83A70D;
    JSL.L CODE_82806E                    ;83A711;
    BCC CODE_83A73B                      ;83A715;
    JSL.L CODE_8283A3                    ;83A717;
    JMP.W CODE_83A73B                    ;83A71B;

CODE_83A71E:
    JSL.L CODE_8283A3                    ;83A71E;
    LDA.B $37                            ;83A722;
    BNE CODE_83A73B                      ;83A724;
    REP #$10                             ;83A726;
    LDX.B $0C                            ;83A728;
    LDA.W $000A,X                        ;83A72A;
    CMP.B #$30                           ;83A72D;
    BNE CODE_83A73B                      ;83A72F;
    LDA.W $0000,X                        ;83A731;
    BEQ CODE_83A73B                      ;83A734;
    LDA.B #$FF                           ;83A736;
    STA.W $000B,X                        ;83A738;

CODE_83A73B:
    SEP #$10                             ;83A73B;
    RTS                                  ;83A73D;

CODE_83A73E:
    LDX.B $01                            ;83A73E;
    JMP.W (PTR16_83A743,X)               ;83A740;

PTR16_83A743:
    dw CODE_83A749                       ;83A743;
    dw CODE_83A7BF                       ;83A745;
    dw CODE_83A803                       ;83A747;

CODE_83A749:
    REP #$20                             ;83A749;
    LDA.W #$C2D5                         ;83A74B;
    STA.B $20                            ;83A74E;
    SEP #$20                             ;83A750;
    LDA.B #$0C                           ;83A752;
    JSL.L CODE_848F07                    ;83A754;
    LDA.B #$02                           ;83A758;
    STA.B $27                            ;83A75A;
    STA.B $26                            ;83A75C;
    STZ.B $28                            ;83A75E;
    LDA.B $0B                            ;83A760;
    BEQ CODE_83A7AB                      ;83A762;
    LDA.B #$04                           ;83A764;
    STA.B $01                            ;83A766;
    JSL.L CODE_84A07C                    ;83A768;
    STA.B $0B                            ;83A76C;
    LDA.B $11                            ;83A76E;
    ASL A                                ;83A770;
    ASL A                                ;83A771;
    LDA.B $0B                            ;83A772;
    BCC CODE_83A786                      ;83A774;
    CMP.B #$0D                           ;83A776;
    BCC CODE_83A77E                      ;83A778;
    LDA.B #$0C                           ;83A77A;
    BRA CODE_83A794                      ;83A77C;

CODE_83A77E:
    CMP.B #$04                           ;83A77E;
    BCS CODE_83A794                      ;83A780;
    LDA.B #$04                           ;83A782;
    BRA CODE_83A794                      ;83A784;

CODE_83A786:
    CMP.B #$1D                           ;83A786;
    BCC CODE_83A78E                      ;83A788;
    LDA.B #$1C                           ;83A78A;
    BRA CODE_83A794                      ;83A78C;

CODE_83A78E:
    CMP.B #$14                           ;83A78E;
    BCS CODE_83A794                      ;83A790;
    LDA.B #$14                           ;83A792;

CODE_83A794:
    ASL A                                ;83A794;
    ASL A                                ;83A795;
    TAX                                  ;83A796;
    REP #$20                             ;83A797;
    LDA.W DATA8_86EE37,X                 ;83A799;
    ASL A                                ;83A79C;
    STA.B $1A                            ;83A79D;
    LDA.W DATA8_86EE39,X                 ;83A79F;
    ASL A                                ;83A7A2;
    STA.B $1C                            ;83A7A3;
    SEP #$20                             ;83A7A5;
    JML.L CODE_8280B4                    ;83A7A7;

CODE_83A7AB:
    LDA.B #$02                           ;83A7AB;
    STA.B $01                            ;83A7AD;
    REP #$20                             ;83A7AF;
    STZ.B $1C                            ;83A7B1;
    STZ.B $1A                            ;83A7B3;
    SEP #$20                             ;83A7B5;
    LDA.B #$40                           ;83A7B7;
    STA.B $1E                            ;83A7B9;
    JML.L CODE_8280B4                    ;83A7BB;

CODE_83A7BF:
    JSL.L CODE_8281E8                    ;83A7BF;
    JSL.L CODE_849B03                    ;83A7C3;
    LDA.B $02                            ;83A7C7;
    BNE CODE_83A7E7                      ;83A7C9;
    REP #$10                             ;83A7CB;
    LDX.B $0C                            ;83A7CD;
    LDA.W $0000,X                        ;83A7CF;
    BEQ CODE_83A7E3                      ;83A7D2;
    JSL.L CODE_849C0E                    ;83A7D4;
    BCC CODE_83A7E7                      ;83A7D8;
    LDA.B #$01                           ;83A7DA;
    STA.W $000B,X                        ;83A7DC;
    JML.L CODE_8283A3                    ;83A7DF;

CODE_83A7E3:
    SEP #$10                             ;83A7E3;
    INC.B $02                            ;83A7E5;

CODE_83A7E7:
    SEP #$10                             ;83A7E7;
    JSL.L CODE_8280B4                    ;83A7E9;
    LDA.B $0E                            ;83A7ED;
    BEQ CODE_83A7F2                      ;83A7EF;
    RTL                                  ;83A7F1;

CODE_83A7F2:
    LDA.B $02                            ;83A7F2;
    BNE CODE_83A7FF                      ;83A7F4;
    REP #$10                             ;83A7F6;
    LDX.B $0C                            ;83A7F8;
    LDA.B #$80                           ;83A7FA;
    STA.W $000B,X                        ;83A7FC;

CODE_83A7FF:
    JML.L CODE_8283A3                    ;83A7FF;

CODE_83A803:
    JSL.L CODE_82820A                    ;83A803;
    JSL.L CODE_849B03                    ;83A807;
    BNE CODE_83A81C                      ;83A80B;
    JSL.L CODE_82806E                    ;83A80D;
    BCS CODE_83A81C                      ;83A811;
    JSL.L CODE_8280B4                    ;83A813;
    LDA.B $0E                            ;83A817;
    BEQ CODE_83A858                      ;83A819;
    RTL                                  ;83A81B;

CODE_83A81C:
    STZ.B $38                            ;83A81C;
    LDA.B #$18                           ;83A81E;
    STA.B $37                            ;83A820;
    LDA.B #$03                           ;83A822;
    STA.B $3C                            ;83A824;
    STZ.B $3B                            ;83A826;
    JSR.W CODE_83A85C                    ;83A828;
    LDA.B #$40                           ;83A82B;
    STA.B $38                            ;83A82D;
    LDA.B #$19                           ;83A82F;
    STA.B $37                            ;83A831;
    LDA.B #$03                           ;83A833;
    STA.B $3C                            ;83A835;
    STZ.B $3B                            ;83A837;
    JSR.W CODE_83A85C                    ;83A839;
    STZ.B $38                            ;83A83C;
    LDA.B #$19                           ;83A83E;
    STA.B $37                            ;83A840;
    STZ.B $3B                            ;83A842;
    STZ.B $3C                            ;83A844;
    JSR.W CODE_83A85C                    ;83A846;
    LDA.B #$40                           ;83A849;
    STA.B $38                            ;83A84B;
    LDA.B #$1A                           ;83A84D;
    STA.B $37                            ;83A84F;
    STZ.B $3B                            ;83A851;
    STZ.B $3C                            ;83A853;
    JSR.W CODE_83A85C                    ;83A855;

CODE_83A858:
    JML.L CODE_8283A3                    ;83A858;

CODE_83A85C:
    REP #$20                             ;83A85C;
    JSL.L CODE_849086                    ;83A85E;
    AND.W #$03FF                         ;83A862;
    CLC                                  ;83A865;
    ADC.W #$0100                         ;83A866;
    STA.B $39                            ;83A869;
    JSL.L CODE_849086                    ;83A86B;
    AND.W #$01FF                         ;83A86F;
    CLC                                  ;83A872;
    ADC.B $3B                            ;83A873;
    STA.B $3B                            ;83A875;
    JSL.L CODE_8282D3                    ;83A877;
    BNE CODE_83A8BA                      ;83A87B;
    INC.W $0000,X                        ;83A87D;
    LDA.B #$2B                           ;83A880;
    STA.W $000A,X                        ;83A882;
    LDA.B $37                            ;83A885;
    STA.W $000B,X                        ;83A887;
    STZ.W $001F,X                        ;83A88A;
    LDA.B #$40                           ;83A88D;
    STA.W $001E,X                        ;83A88F;
    LDA.B $38                            ;83A892;
    ORA.B #$30                           ;83A894;
    STA.W $0011,X                        ;83A896;
    ASL A                                ;83A899;
    ASL A                                ;83A89A;
    REP #$20                             ;83A89B;
    LDA.B $39                            ;83A89D;
    BCS CODE_83A8A5                      ;83A89F;
    EOR.W #$FFFF                         ;83A8A1;
    INC A                                ;83A8A4;

CODE_83A8A5:
    STA.W $001A,X                        ;83A8A5;
    LDA.B $3B                            ;83A8A8;
    STA.W $001C,X                        ;83A8AA;
    LDA.B $05                            ;83A8AD;
    STA.W $0005,X                        ;83A8AF;
    LDA.B $08                            ;83A8B2;
    STA.W $0008,X                        ;83A8B4;
    STZ.W $000C,X                        ;83A8B7;

CODE_83A8BA:
    SEP #$30                             ;83A8BA;
    RTS                                  ;83A8BC;

CODE_83A8BD:
    LDX.B $01                            ;83A8BD;
    JMP.W (PTR16_83A8C2,X)               ;83A8BF;

PTR16_83A8C2:
    dw CODE_83A8C8                       ;83A8C2;
    dw CODE_83A921                       ;83A8C4;
    dw CODE_83AB0F                       ;83A8C6;

CODE_83A8C8:
    STZ.B $29                            ;83A8C8;
    STZ.B $2A                            ;83A8CA;
    JSL.L CODE_8490A0                    ;83A8CC;
    CMP.B #$34                           ;83A8D0;
    BCC CODE_83A8D9                      ;83A8D2;
    LDA.B #$04                           ;83A8D4;
    STA.B $01                            ;83A8D6;
    RTL                                  ;83A8D8;

CODE_83A8D9:
    LDA.B #$02                           ;83A8D9;
    STA.B $01                            ;83A8DB;
    STZ.B $30                            ;83A8DD;
    LDA.L $7F825C                        ;83A8DF;
    STA.B $18                            ;83A8E3;
    STZ.B $12                            ;83A8E5;
    STZ.B $2F                            ;83A8E7;
    STZ.B $26                            ;83A8E9;
    STZ.B $34                            ;83A8EB;
    STZ.B $33                            ;83A8ED;
    STZ.B $10                            ;83A8EF;
    LDA.B #$04                           ;83A8F1;
    STA.B $27                            ;83A8F3;
    LDA.B #$03                           ;83A8F5;
    STA.B $28                            ;83A8F7;
    REP #$20                             ;83A8F9;
    LDA.W #$C2FD                         ;83A8FB;
    STA.B $20                            ;83A8FE;
    LDA.B $0B                            ;83A900;
    ASL A                                ;83A902;
    TAY                                  ;83A903;
    LDA.W DATA8_86C311,Y                 ;83A904;
    STA.B $1A                            ;83A907;
    LDA.W #$02F5                         ;83A909;
    STA.B $1C                            ;83A90C;
    LDA.W #$0040                         ;83A90E;
    STA.B $1E                            ;83A911;
    SEP #$20                             ;83A913;
    LDA.B $1A                            ;83A915;
    AND.B #$40                           ;83A917;
    EOR.B #$40                           ;83A919;
    TSB.B $11                            ;83A91B;
    LDA.B #$65                           ;83A91D;
    STA.B $16                            ;83A91F;

CODE_83A921:
    LDA.L $7F835C                        ;83A921;
    ORA.B #$30                           ;83A925;
    STA.B $11                            ;83A927;
    JSL.L CODE_82806E                    ;83A929;
    BCC CODE_83A934                      ;83A92D;
    LDA.B #$04                           ;83A92F;
    STA.B $01                            ;83A931;
    RTL                                  ;83A933;

CODE_83A934:
    LDX.B $02                            ;83A934;
    JSR.W (PTR16_83A975,X)               ;83A936;
    BIT.B $34                            ;83A939;
    BVS CODE_83A952                      ;83A93B;
    JSL.L CODE_849B03                    ;83A93D;
    BEQ CODE_83A952                      ;83A941;
    LDA.B #$40                           ;83A943;
    TSB.B $34                            ;83A945;
    LDA.B #$0C                           ;83A947;
    LDX.B $2F                            ;83A949;
    BEQ CODE_83A94F                      ;83A94B;
    LDA.B #$0E                           ;83A94D;

CODE_83A94F:
    JSR.W CODE_8386F1                    ;83A94F;

CODE_83A952:
    JSL.L CODE_849B43                    ;83A952;
    BEQ CODE_83A963                      ;83A956;
    BPL CODE_83A95F                      ;83A958;
    LDA.B #$10                           ;83A95A;
    JSR.W CODE_8386F1                    ;83A95C;

CODE_83A95F:
    LDA.B #$0E                           ;83A95F;
    TRB.B $11                            ;83A961;

CODE_83A963:
    LDA.B $33                            ;83A963;
    BEQ CODE_83A96A                      ;83A965;
    DEC A                                ;83A967;
    STA.B $33                            ;83A968;

CODE_83A96A:
    LSR A                                ;83A96A;
    BCS CODE_83A971                      ;83A96B;
    JSL.L CODE_8280B4                    ;83A96D;

CODE_83A971:
    JML.L CODE_8491BE                    ;83A971;

PTR16_83A975:
    dw CODE_83A987                       ;83A975;
    dw CODE_83A9A9                       ;83A977;
    dw CODE_83A9D0                       ;83A979;
    dw CODE_83A9F0                       ;83A97B;
    dw CODE_83AA22                       ;83A97D;
    dw CODE_83AA3C                       ;83A97F;
    dw CODE_83AA6A                       ;83A981;
    dw CODE_83AAB5                       ;83A983;
    dw CODE_83AAF6                       ;83A985;

CODE_83A987:
    LDX.B $03                            ;83A987;
    BNE CODE_83A995                      ;83A989;
    INC.B $03                            ;83A98B;
    INC.B $2F                            ;83A98D;
    LDA.B #$01                           ;83A98F;
    JSL.L CODE_848F07                    ;83A991;

CODE_83A995:
    LDA.B $1D                            ;83A995;
    BPL CODE_83A99E                      ;83A997;
    LDA.B #$02                           ;83A999;
    JMP.W CODE_8386F1                    ;83A99B;

CODE_83A99E:
    JSL.L CODE_828174                    ;83A99E;
    JSL.L CODE_848EEA                    ;83A9A2;
    JMP.W CODE_83AB1A                    ;83A9A6;

CODE_83A9A9:
    LDX.B $03                            ;83A9A9;
    BNE CODE_83A9B5                      ;83A9AB;
    INC.B $03                            ;83A9AD;
    INC.B $2F                            ;83A9AF;
    STZ.B $1C                            ;83A9B1;
    STZ.B $1D                            ;83A9B3;

CODE_83A9B5:
    LDA.B $2B                            ;83A9B5;
    BIT.B #$04                           ;83A9B7;
    BEQ CODE_83A9C2                      ;83A9B9;
    STZ.B $2F                            ;83A9BB;
    LDA.B #$06                           ;83A9BD;
    JMP.W CODE_8386F1                    ;83A9BF;

CODE_83A9C2:
    JSL.L CODE_828174                    ;83A9C2;
    JSR.W CODE_83AB4A                    ;83A9C6;
    JSL.L CODE_848EEA                    ;83A9C9;
    JMP.W CODE_83AB1A                    ;83A9CD;

CODE_83A9D0:
    LDX.B $03                            ;83A9D0;
    BNE CODE_83A9DC                      ;83A9D2;
    INC.B $03                            ;83A9D4;
    LDA.B #$03                           ;83A9D6;
    JSL.L CODE_848F07                    ;83A9D8;

CODE_83A9DC:
    LDA.B $0F                            ;83A9DC;
    BPL CODE_83A9EB                      ;83A9DE;
    LDA.B #$00                           ;83A9E0;
    LDX.B $1D                            ;83A9E2;
    BPL CODE_83A9E8                      ;83A9E4;
    LDA.B #$02                           ;83A9E6;

CODE_83A9E8:
    JMP.W CODE_8386F1                    ;83A9E8;

CODE_83A9EB:
    JSL.L CODE_848EEA                    ;83A9EB;
    RTS                                  ;83A9EF;

CODE_83A9F0:
    LDX.B $03                            ;83A9F0;
    BNE CODE_83A9FE                      ;83A9F2;
    INC.B $03                            ;83A9F4;
    INC.B $10                            ;83A9F6;
    LDA.B #$04                           ;83A9F8;
    JSL.L CODE_848F07                    ;83A9FA;

CODE_83A9FE:
    LDA.B $0F                            ;83A9FE;
    BPL CODE_83AA1D                      ;83AA00;
    LDX.B #$08                           ;83AA02;
    LDA.B $10                            ;83AA04;
    CMP.B #$02                           ;83AA06;
    BCS CODE_83AA19                      ;83AA08;
    REP #$20                             ;83AA0A;
    LDA.B $1C                            ;83AA0C;
    EOR.W #$FFFF                         ;83AA0E;
    INC A                                ;83AA11;
    LSR A                                ;83AA12;
    STA.B $1C                            ;83AA13;
    SEP #$20                             ;83AA15;
    LDX.B #$00                           ;83AA17;

CODE_83AA19:
    TXA                                  ;83AA19;
    JMP.W CODE_8386F1                    ;83AA1A;

CODE_83AA1D:
    JSL.L CODE_848EEA                    ;83AA1D;
    RTS                                  ;83AA21;

CODE_83AA22:
    LDX.B $03                            ;83AA22;
    BNE CODE_83AA2E                      ;83AA24;
    INC.B $03                            ;83AA26;
    LDA.B #$05                           ;83AA28;
    JSL.L CODE_848F07                    ;83AA2A;

CODE_83AA2E:
    LDA.B $0F                            ;83AA2E;
    BPL CODE_83AA37                      ;83AA30;
    LDA.B #$0A                           ;83AA32;
    JMP.W CODE_8386F1                    ;83AA34;

CODE_83AA37:
    JSL.L CODE_848EEA                    ;83AA37;
    RTS                                  ;83AA3B;

CODE_83AA3C:
    LDX.B $03                            ;83AA3C;
    BNE CODE_83AA54                      ;83AA3E;
    INC.B $03                            ;83AA40;
    LDA.B #$5A                           ;83AA42;
    STA.B $10                            ;83AA44;
    LDA.B #$07                           ;83AA46;
    STA.B $20                            ;83AA48;
    LDA.B #$C3                           ;83AA4A;
    STA.B $21                            ;83AA4C;
    LDA.B #$06                           ;83AA4E;
    JSL.L CODE_848F07                    ;83AA50;

CODE_83AA54:
    DEC.B $10                            ;83AA54;
    BNE CODE_83AA5D                      ;83AA56;
    LDA.B #$04                           ;83AA58;
    STA.B $01                            ;83AA5A;
    RTS                                  ;83AA5C;

CODE_83AA5D:
    LDA.B #$0A                           ;83AA5D;
    CMP.B $10                            ;83AA5F;
    BNE CODE_83AA65                      ;83AA61;
    STA.B $33                            ;83AA63;

CODE_83AA65:
    JSL.L CODE_848EEA                    ;83AA65;
    RTS                                  ;83AA69;

CODE_83AA6A:
    LDX.B $03                            ;83AA6A;
    BNE CODE_83AA88                      ;83AA6C;
    INC.B $03                            ;83AA6E;
    REP #$20                             ;83AA70;
    LDA.W #$C307                         ;83AA72;
    STA.B $20                            ;83AA75;
    LDA.W $0BAD                          ;83AA77;
    STA.B $05                            ;83AA7A;
    SEP #$20                             ;83AA7C;
    LDA.B #$78                           ;83AA7E;
    STA.B $10                            ;83AA80;
    LDA.B #$07                           ;83AA82;
    JSL.L CODE_848F07                    ;83AA84;

CODE_83AA88:
    LDA.W $0BCF                          ;83AA88;
    BEQ CODE_83AA98                      ;83AA8B;
    BMI CODE_83AA98                      ;83AA8D;
    LDA.B #$08                           ;83AA8F;
    TSB.W $0BD4                          ;83AA91;
    DEC.B $10                            ;83AA94;
    BNE CODE_83AA9D                      ;83AA96;

CODE_83AA98:
    LDA.B #$10                           ;83AA98;
    JMP.W CODE_8386F1                    ;83AA9A;

CODE_83AA9D:
    LDA.W $0BE2                          ;83AA9D;
    ORA.W $0BE3                          ;83AAA0;
    BEQ CODE_83AAAE                      ;83AAA3;
    LDA.B $10                            ;83AAA5;
    SEC                                  ;83AAA7;
    SBC.B #$05                           ;83AAA8;
    STA.B $10                            ;83AAAA;
    BMI CODE_83AA98                      ;83AAAC;

CODE_83AAAE:
    JSL.L CODE_848EEA                    ;83AAAE;
    JMP.W CODE_83AB38                    ;83AAB2;

CODE_83AAB5:
    LDX.B $03                            ;83AAB5;
    BNE CODE_83AADA                      ;83AAB7;
    INC.B $03                            ;83AAB9;
    REP #$20                             ;83AABB;
    STZ.B $1A                            ;83AABD;
    STZ.B $1C                            ;83AABF;
    LDA.W $0BAD                          ;83AAC1;
    STA.B $05                            ;83AAC4;
    LDA.W $0BB0                          ;83AAC6;
    CLC                                  ;83AAC9;
    ADC.W #$0008                         ;83AACA;
    STA.B $08                            ;83AACD;
    SEP #$20                             ;83AACF;
    LDA.B #$08                           ;83AAD1;
    JSL.L CODE_848F07                    ;83AAD3;
    JMP.W CODE_83AB38                    ;83AAD7;

CODE_83AADA:
    LDA.B #$08                           ;83AADA;
    TSB.W $0BD4                          ;83AADC;
    LDA.B $2B                            ;83AADF;
    BIT.B #$04                           ;83AAE1;
    BEQ CODE_83AAEC                      ;83AAE3;
    STZ.B $2F                            ;83AAE5;
    LDA.B #$0C                           ;83AAE7;
    JMP.W CODE_8386F1                    ;83AAE9;

CODE_83AAEC:
    JSL.L CODE_828174                    ;83AAEC;
    JSR.W CODE_83AB4A                    ;83AAF0;
    JMP.W CODE_83AB38                    ;83AAF3;

CODE_83AAF6:
    LDX.B $03                            ;83AAF6;
    BNE CODE_83AB02                      ;83AAF8;
    INC.B $03                            ;83AAFA;
    LDA.B #$09                           ;83AAFC;
    JSL.L CODE_848F07                    ;83AAFE;

CODE_83AB02:
    LDA.B $0F                            ;83AB02;
    BPL CODE_83AB0A                      ;83AB04;
    LDA.B #$04                           ;83AB06;
    STA.B $01                            ;83AB08;

CODE_83AB0A:
    JSL.L CODE_848EEA                    ;83AB0A;
    RTS                                  ;83AB0E;

CODE_83AB0F:
    REP #$10                             ;83AB0F;
    LDX.B $0C                            ;83AB11;
    DEC.W $0037,X                        ;83AB13;
    JML.L CODE_8283A3                    ;83AB16;

CODE_83AB1A:
    LDA.B $2B                            ;83AB1A;
    BIT.B #$03                           ;83AB1C;
    BEQ CODE_83AB37                      ;83AB1E;
    LDA.B $11                            ;83AB20;
    EOR.B #$40                           ;83AB22;
    STA.B $11                            ;83AB24;
    REP #$20                             ;83AB26;
    LDA.B $1A                            ;83AB28;
    EOR.W #$FFFF                         ;83AB2A;
    INC A                                ;83AB2D;
    STA.B $1A                            ;83AB2E;
    SEP #$20                             ;83AB30;
    LDA.B #$04                           ;83AB32;
    JMP.W CODE_8386F1                    ;83AB34;

CODE_83AB37:
    RTS                                  ;83AB37;

CODE_83AB38:
    REP #$21                             ;83AB38;
    LDA.B $08                            ;83AB3A;
    ADC.W #$FFF8                         ;83AB3C;
    STA.W $0BB0                          ;83AB3F;
    LDA.B $05                            ;83AB42;
    STA.W $0BAD                          ;83AB44;
    SEP #$20                             ;83AB47;
    RTS                                  ;83AB49;

CODE_83AB4A:
    REP #$20                             ;83AB4A;
    LDA.W #$FD00                         ;83AB4C;
    CMP.B $1C                            ;83AB4F;
    BMI CODE_83AB55                      ;83AB51;
    STA.B $1C                            ;83AB53;

CODE_83AB55:
    SEP #$20                             ;83AB55;
    RTS                                  ;83AB57;

CODE_83AB58:
    LDY.B #$27                           ;83AB58;
    LDA.B ($0C),Y                        ;83AB5A;
    AND.B #$7F                           ;83AB5C;
    BNE CODE_83AB64                      ;83AB5E;
    JML.L CODE_8283A3                    ;83AB60;

CODE_83AB64:
    LDA.B $0F                            ;83AB64;
    BPL CODE_83AB6E                      ;83AB66;
    LDA.B #$51                           ;83AB68;
    JSL.L CODE_8088A2                    ;83AB6A;

CODE_83AB6E:
    LDX.B $01                            ;83AB6E;
    JMP.W (PTR16_83AB73,X)               ;83AB70;

PTR16_83AB73:
    dw CODE_83AB79                       ;83AB73;
    dw CODE_83ABC5                       ;83AB75;
    dw CODE_83ABDD                       ;83AB77;

CODE_83AB79:
    STZ.B $28                            ;83AB79;
    JSL.L CODE_84A07C                    ;83AB7B;
    STA.B $37                            ;83AB7F;
    ASL A                                ;83AB81;
    ASL A                                ;83AB82;
    TAX                                  ;83AB83;
    REP #$20                             ;83AB84;
    LDA.W DATA8_86EE37,X                 ;83AB86;
    ASL A                                ;83AB89;
    STA.B $1A                            ;83AB8A;
    LDA.W DATA8_86EE39,X                 ;83AB8C;
    ASL A                                ;83AB8F;
    STA.B $1C                            ;83AB90;
    LDA.W #$C319                         ;83AB92;
    STA.B $20                            ;83AB95;
    SEP #$20                             ;83AB97;
    LDA.B #$28                           ;83AB99;
    STA.B $38                            ;83AB9B;
    LDA.L $7F8269                        ;83AB9D;
    STA.B $18                            ;83ABA1;
    LDA.L $7F8369                        ;83ABA3;
    STA.B $11                            ;83ABA7;
    LDA.B #$75                           ;83ABA9;
    STA.B $16                            ;83ABAB;
    LDA.B #$16                           ;83ABAD;
    JSL.L CODE_848F07                    ;83ABAF;
    LDA.B #$02                           ;83ABB3;
    STA.B $01                            ;83ABB5;
    LDA.B #$02                           ;83ABB7;
    STA.B $26                            ;83ABB9;
    STA.B $27                            ;83ABBB;
    JSL.L CODE_849B03                    ;83ABBD;
    JML.L CODE_8280B4                    ;83ABC1;

CODE_83ABC5:
    JSL.L CODE_82820A                    ;83ABC5;
    DEC.B $38                            ;83ABC9;
    BNE CODE_83ABD1                      ;83ABCB;
    LDA.B #$04                           ;83ABCD;
    STA.B $01                            ;83ABCF;

CODE_83ABD1:
    JSL.L CODE_848EEA                    ;83ABD1;
    JSL.L CODE_849B03                    ;83ABD5;
    JML.L CODE_8280B4                    ;83ABD9;

CODE_83ABDD:
    REP #$30                             ;83ABDD;
    LDX.B $0C                            ;83ABDF;
    LDA.W $0005,X                        ;83ABE1;
    STA.W $0004                          ;83ABE4;
    LDA.W $0008,X                        ;83ABE7;
    SEC                                  ;83ABEA;
    SBC.W #$0010                         ;83ABEB;
    STA.W $0006                          ;83ABEE;
    LDA.B $05                            ;83ABF1;
    STA.W $0000                          ;83ABF3;
    LDA.B $08                            ;83ABF6;
    STA.W $0002                          ;83ABF8;
    SEP #$30                             ;83ABFB;
    JSL.L CODE_84A097                    ;83ABFD;
    SEC                                  ;83AC01;
    SBC.B $37                            ;83AC02;
    BEQ CODE_83AC10                      ;83AC04;
    AND.B #$10                           ;83AC06;
    BEQ CODE_83AC0E                      ;83AC08;
    DEC.B $37                            ;83AC0A;
    BRA CODE_83AC10                      ;83AC0C;

CODE_83AC0E:
    INC.B $37                            ;83AC0E;

CODE_83AC10:
    LDA.B $37                            ;83AC10;
    AND.B #$1F                           ;83AC12;
    STA.B $37                            ;83AC14;
    ASL A                                ;83AC16;
    ASL A                                ;83AC17;
    TAX                                  ;83AC18;
    REP #$30                             ;83AC19;
    LDA.W DATA8_86EE37,X                 ;83AC1B;
    ASL A                                ;83AC1E;
    STA.B $1A                            ;83AC1F;
    LDA.W DATA8_86EE39,X                 ;83AC21;
    ASL A                                ;83AC24;
    STA.B $1C                            ;83AC25;
    JSL.L CODE_82820A                    ;83AC27;
    LDX.B $0C                            ;83AC2B;
    LDA.B $05                            ;83AC2D;
    SEC                                  ;83AC2F;
    SBC.W $0005,X                        ;83AC30;
    BCS CODE_83AC39                      ;83AC33;
    EOR.W #$FFFF                         ;83AC35;
    INC A                                ;83AC38;

CODE_83AC39:
    CMP.W #$0006                         ;83AC39;
    BCS CODE_83AC5C                      ;83AC3C;
    LDA.B $08                            ;83AC3E;
    CLC                                  ;83AC40;
    ADC.W #$0010                         ;83AC41;
    SEC                                  ;83AC44;
    SBC.W $0008,X                        ;83AC45;
    BCS CODE_83AC4E                      ;83AC48;
    EOR.W #$FFFF                         ;83AC4A;
    INC A                                ;83AC4D;

CODE_83AC4E:
    CMP.W #$0006                         ;83AC4E;
    BCS CODE_83AC5C                      ;83AC51;
    SEP #$20                             ;83AC53;
    INC.W $0037,X                        ;83AC55;
    JML.L CODE_8283A3                    ;83AC58;

CODE_83AC5C:
    SEP #$30                             ;83AC5C;
    JSL.L CODE_848EEA                    ;83AC5E;
    JSL.L CODE_849B03                    ;83AC62;
    JML.L CODE_8280B4                    ;83AC66;

CODE_83AC6A:
    LDX.B $01                            ;83AC6A;
    JSR.W (PTR16_83AC70,X)               ;83AC6C;
    RTL                                  ;83AC6F;

PTR16_83AC70:
    dw CODE_83AC76                       ;83AC70;
    dw CODE_83ACCB                       ;83AC72;
    dw CODE_83AD37                       ;83AC74;

CODE_83AC76:
    INC.B $28                            ;83AC76;
    LDA.B #$02                           ;83AC78;
    STA.B $01                            ;83AC7A;
    STA.B $27                            ;83AC7C;
    LDA.B #$02                           ;83AC7E;
    STA.B $26                            ;83AC80;
    LDA.B #$06                           ;83AC82;
    STA.B $12                            ;83AC84;
    LDA.B #$0A                           ;83AC86;
    SEC                                  ;83AC88;
    SBC.B $0B                            ;83AC89;
    STA.B $38                            ;83AC8B;
    STA.B $37                            ;83AC8D;
    ASL A                                ;83AC8F;
    ASL A                                ;83AC90;
    CLC                                  ;83AC91;
    ADC.B $37                            ;83AC92;
    STA.B $37                            ;83AC94;
    REP #$20                             ;83AC96;
    LDA.B $37                            ;83AC98;
    AND.W #$00FF                         ;83AC9A;
    CLC                                  ;83AC9D;
    ADC.W #$C31D                         ;83AC9E;
    STA.B $20                            ;83ACA1;
    SEP #$20                             ;83ACA3;
    JSL.L CODE_8280B4                    ;83ACA5;
    LDA.B $0B                            ;83ACA9;
    JSL.L CODE_848F07                    ;83ACAB;
    LDA.B $38                            ;83ACAF;
    ASL A                                ;83ACB1;
    TAX                                  ;83ACB2;
    LDA.W DATA8_86C34A,X                 ;83ACB3;
    STA.B $29                            ;83ACB6;
    LDA.W DATA8_86C34B,X                 ;83ACB8;
    STA.B $2A                            ;83ACBB;
    LDA.B $11                            ;83ACBD;
    AND.B #$40                           ;83ACBF;
    BEQ CODE_83ACCA                      ;83ACC1;
    LDA.B $29                            ;83ACC3;
    EOR.B #$FF                           ;83ACC5;
    INC A                                ;83ACC7;
    STA.B $29                            ;83ACC8;

CODE_83ACCA:
    RTS                                  ;83ACCA;

CODE_83ACCB:
    JSL.L CODE_849B03                    ;83ACCB;
    JSL.L CODE_8490A0                    ;83ACCF;
    CMP.B #$00                           ;83ACD3;
    BEQ CODE_83AD22                      ;83ACD5;
    REP #$20                             ;83ACD7;
    LDA.B $29                            ;83ACD9;
    AND.W #$00FF                         ;83ACDB;
    STA.W $0000                          ;83ACDE;
    AND.W #$0080                         ;83ACE1;
    BEQ CODE_83ACEE                      ;83ACE4;
    LDA.B $29                            ;83ACE6;
    ORA.W #$FF00                         ;83ACE8;
    STA.W $0000                          ;83ACEB;

CODE_83ACEE:
    LDA.B $2A                            ;83ACEE;
    AND.W #$00FF                         ;83ACF0;
    STA.W $0002                          ;83ACF3;
    AND.W #$0080                         ;83ACF6;
    BEQ CODE_83AD03                      ;83ACF9;
    LDA.B $2A                            ;83ACFB;
    ORA.W #$FF00                         ;83ACFD;
    STA.W $0002                          ;83AD00;

CODE_83AD03:
    LDA.B $05                            ;83AD03;
    CLC                                  ;83AD05;
    ADC.W $0000                          ;83AD06;
    STA.B $05                            ;83AD09;
    LDA.B $08                            ;83AD0B;
    CLC                                  ;83AD0D;
    ADC.W $0002                          ;83AD0E;
    STA.B $08                            ;83AD11;
    SEP #$20                             ;83AD13;
    LDA.B #$0B                           ;83AD15;
    JSL.L CODE_848F07                    ;83AD17;
    LDA.B #$04                           ;83AD1B;
    STA.B $01                            ;83AD1D;
    JMP.W CODE_83AD36                    ;83AD1F;

CODE_83AD22:
    JSL.L CODE_82820A                    ;83AD22;
    JSL.L CODE_848EEA                    ;83AD26;
    JSL.L CODE_8280B4                    ;83AD2A;
    LDA.B $0E                            ;83AD2E;
    BNE CODE_83AD36                      ;83AD30;
    JSL.L CODE_8283A3                    ;83AD32;

CODE_83AD36:
    RTS                                  ;83AD36;

CODE_83AD37:
    LDA.B $0F                            ;83AD37;
    BMI CODE_83AD46                      ;83AD39;
    JSL.L CODE_848EEA                    ;83AD3B;
    JSL.L CODE_8280B4                    ;83AD3F;
    JMP.W CODE_83AD4A                    ;83AD43;

CODE_83AD46:
    JSL.L CODE_8283A3                    ;83AD46;

CODE_83AD4A:
    RTS                                  ;83AD4A;

CODE_83AD4B:
    LDX.B $01                            ;83AD4B;
    JSR.W (PTR16_83AD82,X)               ;83AD4D;
    LDA.B $37                            ;83AD50;
    TSB.B $11                            ;83AD52;
    LDA.B $00                            ;83AD54;
    BNE CODE_83AD59                      ;83AD56;
    RTL                                  ;83AD58;

CODE_83AD59:
    JSL.L CODE_849B03                    ;83AD59;
    BNE CODE_83AD67                      ;83AD5D;
    JSL.L CODE_849B43                    ;83AD5F;
    BEQ CODE_83AD75                      ;83AD63;
    BPL CODE_83AD71                      ;83AD65;

CODE_83AD67:
    LDA.B #$04                           ;83AD67;
    STA.B $01                            ;83AD69;
    STZ.B $02                            ;83AD6B;
    JML.L CODE_8280B4                    ;83AD6D;

CODE_83AD71:
    LDA.B #$0E                           ;83AD71;
    TRB.B $11                            ;83AD73;

CODE_83AD75:
    JSL.L CODE_8280B4                    ;83AD75;
    LDA.B $0E                            ;83AD79;
    BEQ CODE_83AD7E                      ;83AD7B;
    RTL                                  ;83AD7D;

CODE_83AD7E:
    JML.L CODE_8283A3                    ;83AD7E;

PTR16_83AD82:
    dw CODE_83AD88                       ;83AD82;
    dw CODE_83ADCC                       ;83AD84;
    dw CODE_83AE36                       ;83AD86;

CODE_83AD88:
    REP #$20                             ;83AD88;
    LDA.W #$C3BB                         ;83AD8A;
    STA.B $20                            ;83AD8D;
    LDA.W $0BAD                          ;83AD8F;
    SEC                                  ;83AD92;
    SBC.B $05                            ;83AD93;
    ASL A                                ;83AD95;
    ASL A                                ;83AD96;
    ASL A                                ;83AD97;
    STA.B $1A                            ;83AD98;
    LDA.W #$0606                         ;83AD9A;
    STA.B $1C                            ;83AD9D;
    SEP #$20                             ;83AD9F;
    LDA.B $11                            ;83ADA1;
    AND.B #$0E                           ;83ADA3;
    STA.B $37                            ;83ADA5;
    STZ.B $1F                            ;83ADA7;
    LDA.B #$44                           ;83ADA9;
    STA.B $1E                            ;83ADAB;
    LDA.B #$03                           ;83ADAD;
    STA.B $26                            ;83ADAF;
    STA.B $28                            ;83ADB1;
    LDA.B #$04                           ;83ADB3;
    STA.B $27                            ;83ADB5;
    STZ.B $2B                            ;83ADB7;
    STZ.B $2F                            ;83ADB9;
    STZ.B $30                            ;83ADBB;
    LDA.B #$02                           ;83ADBD;
    STA.B $01                            ;83ADBF;
    STZ.B $02                            ;83ADC1;
    STZ.B $03                            ;83ADC3;
    LDA.B #$05                           ;83ADC5;
    JSL.L CODE_848F07                    ;83ADC7;
    RTS                                  ;83ADCB;

CODE_83ADCC:
    LDX.B $02                            ;83ADCC;
    JMP.W (PTR16_83ADD1,X)               ;83ADCE;

PTR16_83ADD1:
    dw CODE_83ADD7                       ;83ADD1;
    dw CODE_83ADF0                       ;83ADD3;
    dw CODE_83AE1D                       ;83ADD5;

CODE_83ADD7:
    JSL.L CODE_8281E8                    ;83ADD7;
    REP #$20                             ;83ADDB;
    LDA.B $1C                            ;83ADDD;
    BPL CODE_83ADED                      ;83ADDF;
    SEP #$20                             ;83ADE1;
    LDA.B #$04                           ;83ADE3;
    JSL.L CODE_848F07                    ;83ADE5;
    LDA.B #$02                           ;83ADE9;
    STA.B $02                            ;83ADEB;

CODE_83ADED:
    SEP #$20                             ;83ADED;
    RTS                                  ;83ADEF;

CODE_83ADF0:
    LDA.B $0F                            ;83ADF0;
    BPL CODE_83AE14                      ;83ADF2;
    LDA.B #$06                           ;83ADF4;
    JSL.L CODE_848F07                    ;83ADF6;
    REP #$20                             ;83ADFA;
    STZ.B $1A                            ;83ADFC;
    LDA.W #$FE80                         ;83ADFE;
    STA.B $1C                            ;83AE01;
    LDA.B $08                            ;83AE03;
    SEC                                  ;83AE05;
    SBC.W #$0003                         ;83AE06;
    STA.B $08                            ;83AE09;
    SEP #$20                             ;83AE0B;
    LDA.B #$04                           ;83AE0D;
    STA.B $02                            ;83AE0F;
    STZ.B $03                            ;83AE11;
    RTS                                  ;83AE13;

CODE_83AE14:
    JSL.L CODE_8281E8                    ;83AE14;
    JSL.L CODE_848EEA                    ;83AE18;
    RTS                                  ;83AE1C;

CODE_83AE1D:
    JSL.L CODE_82825D                    ;83AE1D;
    JSL.L CODE_848EEA                    ;83AE21;
    JSL.L CODE_8491BE                    ;83AE25;
    LDA.B $2B                            ;83AE29;
    BIT.B #$04                           ;83AE2B;
    BEQ CODE_83AE35                      ;83AE2D;
    LDA.B #$04                           ;83AE2F;
    STA.B $01                            ;83AE31;
    STZ.B $02                            ;83AE33;

CODE_83AE35:
    RTS                                  ;83AE35;

CODE_83AE36:
    JSL.L CODE_8283A3                    ;83AE36;
    JSL.L CODE_84A445                    ;83AE3A;
    RTS                                  ;83AE3E;

CODE_83AE3F:
    LDX.B $01                            ;83AE3F;
    JMP.W (PTR16_83AE44,X)               ;83AE41;

PTR16_83AE44:
    dw LOOSE_OP_00AE48                   ;83AE44;
    dw CODE_00AE65                       ;83AE46;
    LDA.B #$02                           ;83AE48;
    STA.B $26                            ;83AE4A;
    STA.B $27                            ;83AE4C;
    LDA.B #$01                           ;83AE4E;
    STA.B $28                            ;83AE50;
    LDA.B #$02                           ;83AE52;
    STA.B $12                            ;83AE54;
    LDA.B #$02                           ;83AE56;
    STA.B $01                            ;83AE58;
    LDA.B #$60                           ;83AE5A;
    STA.B $38                            ;83AE5C;
    LDA.B #$05                           ;83AE5E;
    JSL.L CODE_848F07                    ;83AE60;
    RTL                                  ;83AE64;
    DEC.B $38                            ;83AE65;
    BEQ CODE_83AE7D                      ;83AE67;
    JSL.L CODE_82820A                    ;83AE69;
    JSL.L CODE_849B03                    ;83AE6D;
    BNE CODE_83AE7D                      ;83AE71;
    JSL.L CODE_82806E                    ;83AE73;
    BCS CODE_83AE7D                      ;83AE77;
    JML.L CODE_8280B4                    ;83AE79;

CODE_83AE7D:
    JML.L CODE_8283A3                    ;83AE7D;

CODE_83AE81:
    LDX.B $01                            ;83AE81;
    JSR.W (PTR16_83AE8F,X)               ;83AE83;
    LDA.B $11                            ;83AE86;
    AND.B #$3F                           ;83AE88;
    ORA.B $33                            ;83AE8A;
    STA.B $11                            ;83AE8C;
    RTL                                  ;83AE8E;

PTR16_83AE8F:
    dw CODE_83AE95                       ;83AE8F;
    dw CODE_83AED0                       ;83AE91;
    dw CODE_83B0A9                       ;83AE93;

CODE_83AE95:
    JSL.L CODE_82827D                    ;83AE95;
    LDA.B #$08                           ;83AE99;
    STA.B $27                            ;83AE9B;
    LDA.B #$03                           ;83AE9D;
    STA.B $26                            ;83AE9F;
    STA.B $38                            ;83AEA1;
    LDA.B #$02                           ;83AEA3;
    STA.B $12                            ;83AEA5;
    STA.B $02                            ;83AEA7;
    STZ.B $37                            ;83AEA9;
    STZ.B $2F                            ;83AEAB;
    REP #$20                             ;83AEAD;
    LDA.W #$C423                         ;83AEAF;
    STA.B $20                            ;83AEB2;
    LDX.B #$00                           ;83AEB4;
    LDA.W $0BAD                          ;83AEB6;
    CMP.B $05                            ;83AEB9;
    BCC CODE_83AEBF                      ;83AEBB;
    LDX.B #$40                           ;83AEBD;

CODE_83AEBF:
    STX.B $33                            ;83AEBF;
    SEP #$20                             ;83AEC1;
    LDA.B #$40                           ;83AEC3;
    STA.B $1E                            ;83AEC5;
    LDA.B #$00                           ;83AEC7;
    JSL.L CODE_848F07                    ;83AEC9;
    JMP.W CODE_83B0D9                    ;83AECD;

CODE_83AED0:
    LDX.B $02                            ;83AED0;
    JSR.W (PTR16_83AEFA,X)               ;83AED2;
    LDA.L $7F8300                        ;83AED5;
    STA.B $11                            ;83AED9;
    JSL.L CODE_849B43                    ;83AEDB;
    BEQ CODE_83AEF1                      ;83AEDF;
    LDA.B #$0E                           ;83AEE1;
    TRB.B $11                            ;83AEE3;
    LDA.B $27                            ;83AEE5;
    AND.B #$7F                           ;83AEE7;
    BNE CODE_83AEF1                      ;83AEE9;
    LDA.B #$04                           ;83AEEB;
    STA.B $01                            ;83AEED;
    STA.B $0B                            ;83AEEF;

CODE_83AEF1:
    JSL.L CODE_8280B4                    ;83AEF1;
    JSL.L CODE_849B03                    ;83AEF5;
    RTS                                  ;83AEF9;

PTR16_83AEFA:
    dw CODE_83AF04                       ;83AEFA;
    dw CODE_83AF70                       ;83AEFC;
    dw CODE_83AF9B                       ;83AEFE;
    dw CODE_83B01E                       ;83AF00;
    dw CODE_83B075                       ;83AF02;

CODE_83AF04:
    LDX.B $03                            ;83AF04;
    BNE CODE_83AF15                      ;83AF06;
    INC.B $03                            ;83AF08;
    LDA.B #$3C                           ;83AF0A;
    STA.B $36                            ;83AF0C;
    LDA.B #$00                           ;83AF0E;
    JSL.L CODE_848F07                    ;83AF10;
    RTS                                  ;83AF14;

CODE_83AF15:
    JSL.L CODE_82806E                    ;83AF15;
    BCC CODE_83AF2E                      ;83AF19;
    REP #$30                             ;83AF1B;
    LDX.B $34                            ;83AF1D;
    BEQ CODE_83AF27                      ;83AF1F;
    STZ.W $0000,X                        ;83AF21;
    STZ.W $0002,X                        ;83AF24;

CODE_83AF27:
    SEP #$30                             ;83AF27;
    JSL.L CODE_828387                    ;83AF29;
    RTS                                  ;83AF2D;

CODE_83AF2E:
    LDA.B $37                            ;83AF2E;
    BEQ CODE_83AF35                      ;83AF30;
    JMP.W CODE_83B0D2                    ;83AF32;

CODE_83AF35:
    DEC.B $38                            ;83AF35;
    BNE CODE_83AF56                      ;83AF37;
    INC.B $38                            ;83AF39;
    REP #$10                             ;83AF3B;
    LDX.B $20                            ;83AF3D;
    PHX                                  ;83AF3F;
    LDX.W #$C41B                         ;83AF40;
    STX.B $20                            ;83AF43;
    LDX.W #$0BA8                         ;83AF45;
    JSL.L CODE_849C0E                    ;83AF48;
    BCC CODE_83AF51                      ;83AF4C;
    JSR.W CODE_83B0C4                    ;83AF4E;

CODE_83AF51:
    PLX                                  ;83AF51;
    STX.B $20                            ;83AF52;
    SEP #$10                             ;83AF54;

CODE_83AF56:
    DEC.B $36                            ;83AF56;
    BNE CODE_83AF6F                      ;83AF58;
    LDA.B #$3C                           ;83AF5A;
    STA.B $36                            ;83AF5C;
    REP #$20                             ;83AF5E;
    LDX.B #$00                           ;83AF60;
    LDA.W $0BAD                          ;83AF62;
    CMP.B $05                            ;83AF65;
    BCC CODE_83AF6B                      ;83AF67;
    LDX.B #$40                           ;83AF69;

CODE_83AF6B:
    STX.B $33                            ;83AF6B;
    SEP #$20                             ;83AF6D;

CODE_83AF6F:
    RTS                                  ;83AF6F;

CODE_83AF70:
    LDX.B $03                            ;83AF70;
    JSR.W (PTR16_83AF7A,X)               ;83AF72;
    JSL.L CODE_8491BE                    ;83AF75;
    RTS                                  ;83AF79;

PTR16_83AF7A:
    dw LOOSE_OP_00AF7E                   ;83AF7A;
    dw CODE_00AF8D                       ;83AF7C;
    LDA.B #$02                           ;83AF7E;
    STA.B $03                            ;83AF80;
    STZ.B $1C                            ;83AF82;
    STZ.B $1D                            ;83AF84;
    LDA.B #$06                           ;83AF86;
    JSL.L CODE_848F07                    ;83AF88;
    RTS                                  ;83AF8C;
    LDA.B $2B                            ;83AF8D;
    BIT.B #$04                           ;83AF8F;
    BEQ CODE_83AF96                      ;83AF91;
    JMP.W CODE_83B0B8                    ;83AF93;

CODE_83AF96:
    JSL.L CODE_828174                    ;83AF96;
    RTS                                  ;83AF9A;

CODE_83AF9B:
    LDX.B $03                            ;83AF9B;
    JMP.W (PTR16_83AFA0,X)               ;83AF9D;

PTR16_83AFA0:
    dw CODE_83AFA8                       ;83AFA0;
    dw CODE_83AFB9                       ;83AFA2;
    dw CODE_83AFE5                       ;83AFA4;
    dw CODE_83AFF4                       ;83AFA6;

CODE_83AFA8:
    LDA.B #$02                           ;83AFA8;
    STA.B $03                            ;83AFAA;
    JSL.L CODE_84A07C                    ;83AFAC;
    STA.B $39                            ;83AFB0;
    LDA.B #$02                           ;83AFB2;
    JSL.L CODE_848F07                    ;83AFB4;
    RTS                                  ;83AFB8;

CODE_83AFB9:
    LDA.B $0F                            ;83AFB9;
    BIT.B #$01                           ;83AFBB;
    BEQ CODE_83AFCC                      ;83AFBD;
    LDA.B #$04                           ;83AFBF;
    STA.B $03                            ;83AFC1;
    STZ.B $36                            ;83AFC3;
    JSR.W CODE_83B109                    ;83AFC5;
    BEQ CODE_83AFCC                      ;83AFC8;
    INC.B $36                            ;83AFCA;

CODE_83AFCC:
    REP #$10                             ;83AFCC;
    LDX.W #$C41F                         ;83AFCE;
    STX.B $20                            ;83AFD1;
    JSL.L CODE_849B03                    ;83AFD3;
    REP #$10                             ;83AFD7;
    LDX.W #$C423                         ;83AFD9;
    STX.B $20                            ;83AFDC;
    SEP #$10                             ;83AFDE;

CODE_83AFE0:
    JSL.L CODE_848EEA                    ;83AFE0;
    RTS                                  ;83AFE4;

CODE_83AFE5:
    LDA.B $36                            ;83AFE5;
    BEQ CODE_83AFE0                      ;83AFE7;
    LDA.B #$06                           ;83AFE9;
    STA.B $03                            ;83AFEB;
    LDA.B #$04                           ;83AFED;
    JSL.L CODE_848F07                    ;83AFEF;
    RTS                                  ;83AFF3;

CODE_83AFF4:
    LDA.B $0F                            ;83AFF4;
    BPL CODE_83AFFF                      ;83AFF6;
    LDA.B #$3C                           ;83AFF8;
    STA.B $38                            ;83AFFA;
    JMP.W CODE_83B0B8                    ;83AFFC;

CODE_83AFFF:
    BIT.B #$01                           ;83AFFF;
    BEQ CODE_83B019                      ;83B001;
    REP #$20                             ;83B003;
    LDA.W #$C417                         ;83B005;
    STA.B $20                            ;83B008;
    SEP #$20                             ;83B00A;
    JSL.L CODE_849B03                    ;83B00C;
    REP #$20                             ;83B010;
    LDA.W #$C423                         ;83B012;
    STA.B $20                            ;83B015;
    SEP #$20                             ;83B017;

CODE_83B019:
    JSL.L CODE_848EEA                    ;83B019;
    RTS                                  ;83B01D;

CODE_83B01E:
    LDX.B $03                            ;83B01E;
    JSR.W (PTR16_83B028,X)               ;83B020;
    JSL.L CODE_8491BE                    ;83B023;
    RTS                                  ;83B027;

PTR16_83B028:
    dw CODE_83B02C                       ;83B028;
    dw CODE_83B059                       ;83B02A;

CODE_83B02C:
    LDA.B #$02                           ;83B02C;
    STA.B $03                            ;83B02E;
    REP #$20                             ;83B030;
    LDX.B #$00                           ;83B032;
    LDA.W $0BAD                          ;83B034;
    CMP.B $05                            ;83B037;
    BCC CODE_83B03D                      ;83B039;
    LDX.B #$40                           ;83B03B;

CODE_83B03D:
    STX.B $33                            ;83B03D;
    LDA.W #$0150                         ;83B03F;
    BIT.B $32                            ;83B042;
    BVS CODE_83B049                      ;83B044;
    LDA.W #$FEB0                         ;83B046;

CODE_83B049:
    STA.B $1A                            ;83B049;
    LDA.W #$0507                         ;83B04B;
    STA.B $1C                            ;83B04E;
    SEP #$20                             ;83B050;
    LDA.B #$06                           ;83B052;
    JSL.L CODE_848F07                    ;83B054;
    RTS                                  ;83B058;

CODE_83B059:
    LDA.B $2B                            ;83B059;
    BIT.B #$08                           ;83B05B;
    BEQ CODE_83B062                      ;83B05D;
    JMP.W CODE_83B0BD                    ;83B05F;

CODE_83B062:
    JSL.L CODE_828174                    ;83B062;
    REP #$20                             ;83B066;
    LDA.B $1C                            ;83B068;
    CMP.W #$0080                         ;83B06A;
    SEP #$20                             ;83B06D;
    BPL CODE_83B074                      ;83B06F;
    JMP.W CODE_83B0BD                    ;83B071;

CODE_83B074:
    RTS                                  ;83B074;

CODE_83B075:
    LDX.B $03                            ;83B075;
    BNE CODE_83B086                      ;83B077;
    INC.B $03                            ;83B079;
    LDA.B #$08                           ;83B07B;
    STA.B $36                            ;83B07D;
    LDA.B #$00                           ;83B07F;
    JSL.L CODE_848F07                    ;83B081;
    RTS                                  ;83B085;

CODE_83B086:
    DEC.B $36                            ;83B086;
    BNE CODE_83B0A8                      ;83B088;
    JSR.W CODE_83B0CB                    ;83B08A;
    REP #$10                             ;83B08D;
    LDX.B $20                            ;83B08F;
    PHX                                  ;83B091;
    LDX.W #$C41B                         ;83B092;
    STX.B $20                            ;83B095;
    LDX.W #$0BA8                         ;83B097;
    JSL.L CODE_849C0E                    ;83B09A;
    BCC CODE_83B0A3                      ;83B09E;
    JSR.W CODE_83B0C4                    ;83B0A0;

CODE_83B0A3:
    PLX                                  ;83B0A3;
    STX.B $20                            ;83B0A4;
    SEP #$10                             ;83B0A6;

CODE_83B0A8:
    RTS                                  ;83B0A8;

CODE_83B0A9:
    LDA.B #$00                           ;83B0A9;
    JSL.L CODE_84A37F                    ;83B0AB;
    JSL.L CODE_84A4AB                    ;83B0AF;
    JSL.L CODE_828398                    ;83B0B3;
    RTS                                  ;83B0B7;

CODE_83B0B8:
    STZ.B $02                            ;83B0B8;
    STZ.B $03                            ;83B0BA;
    RTS                                  ;83B0BC;

CODE_83B0BD:
    LDA.B #$02                           ;83B0BD;
    STA.B $02                            ;83B0BF;
    STZ.B $03                            ;83B0C1;
    RTS                                  ;83B0C3;

CODE_83B0C4:
    LDA.B #$04                           ;83B0C4;
    STA.B $02                            ;83B0C6;
    STZ.B $03                            ;83B0C8;
    RTS                                  ;83B0CA;

CODE_83B0CB:
    LDA.B #$06                           ;83B0CB;
    STA.B $02                            ;83B0CD;
    STZ.B $03                            ;83B0CF;
    RTS                                  ;83B0D1;

CODE_83B0D2:
    LDA.B #$08                           ;83B0D2;
    STA.B $02                            ;83B0D4;
    STZ.B $03                            ;83B0D6;
    RTS                                  ;83B0D8;

CODE_83B0D9:
    STZ.B $34                            ;83B0D9;
    STZ.B $35                            ;83B0DB;
    JSL.L CODE_8282B9                    ;83B0DD;
    BNE CODE_83B104                      ;83B0E1;
    INC.W $0000,X                        ;83B0E3;
    LDA.B #$03                           ;83B0E6;
    STA.W $000A,X                        ;83B0E8;
    LDA.B $18                            ;83B0EB;
    STA.W $0018,X                        ;83B0ED;
    REP #$20                             ;83B0F0;
    LDA.B $05                            ;83B0F2;
    STA.W $0005,X                        ;83B0F4;
    LDA.B $08                            ;83B0F7;
    STA.W $0008,X                        ;83B0F9;
    TDC                                  ;83B0FC;
    STA.W $0029,X                        ;83B0FD;
    STX.B $34                            ;83B100;
    BRA CODE_83B106                      ;83B102;

CODE_83B104:
    STA.B $37                            ;83B104;

CODE_83B106:
    SEP #$30                             ;83B106;
    RTS                                  ;83B108;

CODE_83B109:
    JSL.L CODE_828358                    ;83B109;
    BNE CODE_83B141                      ;83B10D;
    INC.W $0000,X                        ;83B10F;
    LDA.B #$01                           ;83B112;
    STA.W $000A,X                        ;83B114;
    LDA.B $18                            ;83B117;
    STA.W $0018,X                        ;83B119;
    LDA.B $39                            ;83B11C;
    STA.W $0035,X                        ;83B11E;
    STZ.W $0028,X                        ;83B121;
    REP #$20                             ;83B124;
    LDA.W #$0014                         ;83B126;
    BIT.B $32                            ;83B129;
    BVS CODE_83B130                      ;83B12B;
    LDA.W #$FFEC                         ;83B12D;

CODE_83B130:
    CLC                                  ;83B130;
    ADC.B $05                            ;83B131;
    STA.W $0005,X                        ;83B133;
    LDA.B $08                            ;83B136;
    STA.W $0008,X                        ;83B138;
    TDC                                  ;83B13B;
    STA.W $0033,X                        ;83B13C;
    SEP #$22                             ;83B13F;

CODE_83B141:
    SEP #$10                             ;83B141;
    RTS                                  ;83B143;

CODE_83B144:
    LDX.B $01                            ;83B144;
    JMP.W (PTR16_83B149,X)               ;83B146;

PTR16_83B149:
    dw CODE_83B151                       ;83B149;
    dw CODE_83B1FC                       ;83B14B;
    dw CODE_83B2E8                       ;83B14D;
    dw CODE_83B908                       ;83B14F;

CODE_83B151:
    LDA.B $02                            ;83B151;
    BNE CODE_83B17A                      ;83B153;
    JSL.L CODE_84AAD3                    ;83B155;
    BEQ CODE_83B15F                      ;83B159;
    JML.L CODE_828398                    ;83B15B;

CODE_83B15F:
    INC.B $02                            ;83B15F;
    JSL.L CODE_849FE6                    ;83B161;
    LDA.B #$3C                           ;83B165;
    STA.B $34                            ;83B167;
    LDA.B #$3C                           ;83B169;
    JSL.L CODE_84A333                    ;83B16B;
    LDA.W $1F26                          ;83B16F;
    BEQ CODE_83B17A                      ;83B172;
    LDA.B #$2E                           ;83B174;
    JSL.L CODE_8087A2                    ;83B176;

CODE_83B17A:
    DEC.B $34                            ;83B17A;
    BEQ CODE_83B17F                      ;83B17C;
    RTL                                  ;83B17E;

CODE_83B17F:
    JSL.L CODE_82827D                    ;83B17F;
    REP #$10                             ;83B183;
    LDY.W #$01F0                         ;83B185;
    JSL.L CODE_828011                    ;83B188;
    LDA.L $7F835D                        ;83B18C;
    AND.B #$FE                           ;83B190;
    STA.B $11                            ;83B192;
    AND.B #$0E                           ;83B194;
    STA.B $35                            ;83B196;
    STZ.B $33                            ;83B198;
    STZ.B $37                            ;83B19A;
    STZ.B $38                            ;83B19C;
    STZ.B $3C                            ;83B19E;
    STZ.B $02                            ;83B1A0;
    LDA.B #$0B                           ;83B1A2;
    JSR.W CODE_83B9C8                    ;83B1A4;
    REP #$20                             ;83B1A7;
    LDA.B $08                            ;83B1A9;
    STA.W $0002                          ;83B1AB;
    LDA.B $05                            ;83B1AE;
    SEC                                  ;83B1B0;
    SBC.W #$0008                         ;83B1B1;
    STA.W $0000                          ;83B1B4;
    JSR.W CODE_83BB38                    ;83B1B7;
    LDA.B $05                            ;83B1BA;
    CLC                                  ;83B1BC;
    ADC.W #$0008                         ;83B1BD;
    STA.W $0000                          ;83B1C0;
    JSR.W CODE_83BB38                    ;83B1C3;
    LDA.B $08                            ;83B1C6;
    CLC                                  ;83B1C8;
    ADC.W #$0008                         ;83B1C9;
    STA.W $0002                          ;83B1CC;
    JSR.W CODE_83BB38                    ;83B1CF;
    LDA.B $05                            ;83B1D2;
    SEC                                  ;83B1D4;
    SBC.W #$0008                         ;83B1D5;
    STA.W $0000                          ;83B1D8;
    JSR.W CODE_83BB38                    ;83B1DB;
    LDA.W #$C945                         ;83B1DE;
    STA.B $20                            ;83B1E1;
    SEP #$20                             ;83B1E3;
    LDA.B #$40                           ;83B1E5;
    STA.B $1E                            ;83B1E7;
    LDA.B #$FF                           ;83B1E9;
    STA.B $2F                            ;83B1EB;
    LDA.B #$04                           ;83B1ED;
    STA.B $12                            ;83B1EF;
    LDA.B #$06                           ;83B1F1;
    STA.B $26                            ;83B1F3;
    LDA.B #$00                           ;83B1F5;
    JSL.L CODE_848000                    ;83B1F7;
    RTL                                  ;83B1FB;

CODE_83B1FC:
    LDX.B $02                            ;83B1FC;
    JSR.W (PTR16_83B205,X)               ;83B1FE;
    JML.L CODE_8280B4                    ;83B201;

PTR16_83B205:
    dw CODE_83B20F                       ;83B205;
    dw CODE_83B23D                       ;83B207;
    dw CODE_83B277                       ;83B209;
    dw CODE_83B294                       ;83B20B;
    dw CODE_83B2C6                       ;83B20D;

CODE_83B20F:
    JSL.L CODE_848EEA                    ;83B20F;
    JSL.L CODE_8281E8                    ;83B213;
    JSL.L CODE_8491BE                    ;83B217;
    LDA.B $2B                            ;83B21B;
    AND.B #$04                           ;83B21D;
    BEQ CODE_83B23C                      ;83B21F;
    LDA.B #$02                           ;83B221;
    STA.B $02                            ;83B223;
    LDA.B #$04                           ;83B225;
    JSR.W CODE_83B9C8                    ;83B227;
    REP #$20                             ;83B22A;
    LDA.W #$C94F                         ;83B22C;
    STA.B $20                            ;83B22F;
    LDA.B $1C                            ;83B231;
    EOR.W #$FFFF                         ;83B233;
    INC A                                ;83B236;
    LSR A                                ;83B237;
    STA.B $1C                            ;83B238;
    SEP #$20                             ;83B23A;

CODE_83B23C:
    RTS                                  ;83B23C;

CODE_83B23D:
    LDA.B $03                            ;83B23D;
    BNE CODE_83B255                      ;83B23F;
    JSL.L CODE_848EEA                    ;83B241;
    LDA.B $0F                            ;83B245;
    BPL CODE_83B255                      ;83B247;
    LDA.B $1D                            ;83B249;
    BPL CODE_83B255                      ;83B24B;
    LDA.B #$02                           ;83B24D;
    JSL.L CODE_848F07                    ;83B24F;
    INC.B $03                            ;83B253;

CODE_83B255:
    JSL.L CODE_8281E8                    ;83B255;
    JSL.L CODE_8491BE                    ;83B259;
    LDA.B $2B                            ;83B25D;
    AND.B #$04                           ;83B25F;
    BEQ CODE_83B276                      ;83B261;
    LDA.B #$08                           ;83B263;
    JSL.L CODE_84A333                    ;83B265;
    LDA.B #$05                           ;83B269;
    JSR.W CODE_83B9C8                    ;83B26B;
    LDA.B #$04                           ;83B26E;
    STA.B $02                            ;83B270;
    STZ.B $03                            ;83B272;
    STZ.B $2F                            ;83B274;

CODE_83B276:
    RTS                                  ;83B276;

CODE_83B277:
    JSL.L CODE_848EEA                    ;83B277;
    LDA.B $0F                            ;83B27B;
    BPL CODE_83B293                      ;83B27D;
    LDA.B #$06                           ;83B27F;
    STA.B $02                            ;83B281;
    STZ.B $27                            ;83B283;
    REP #$20                             ;83B285;
    TDC                                  ;83B287;
    STA.W $1F0E                          ;83B288;
    SEP #$20                             ;83B28B;
    LDA.B #$15                           ;83B28D;
    JSL.L CODE_848F07                    ;83B28F;

CODE_83B293:
    RTS                                  ;83B293;

CODE_83B294:
    LDA.B $0F                            ;83B294;
    BMI CODE_83B29D                      ;83B296;
    JSL.L CODE_848EEA                    ;83B298;
    RTS                                  ;83B29C;

CODE_83B29D:
    LDA.W $0B9C                          ;83B29D;
    AND.B #$01                           ;83B2A0;
    BEQ CODE_83B2C5                      ;83B2A2;
    LDA.B #$0C                           ;83B2A4;
    JSL.L CODE_8088CD                    ;83B2A6;
    INC.B $27                            ;83B2AA;
    LDA.B #$80                           ;83B2AC;
    ORA.B $27                            ;83B2AE;
    STA.B $27                            ;83B2B0;
    AND.B #$7F                           ;83B2B2;
    CMP.B #$20                           ;83B2B4;
    BCC CODE_83B2C5                      ;83B2B6;
    LDA.B #$08                           ;83B2B8;
    STA.B $02                            ;83B2BA;
    LDA.B #$0A                           ;83B2BC;
    STA.B $34                            ;83B2BE;
    LDA.B #$00                           ;83B2C0;
    JSR.W CODE_83B9C8                    ;83B2C2;

CODE_83B2C5:
    RTS                                  ;83B2C5;

CODE_83B2C6:
    DEC.B $34                            ;83B2C6;
    BNE CODE_83B2E7                      ;83B2C8;
    LDA.B #$04                           ;83B2CA;
    STA.B $01                            ;83B2CC;
    STZ.B $02                            ;83B2CE;
    STZ.B $03                            ;83B2D0;
    STZ.B $31                            ;83B2D2;
    LDA.B #$01                           ;83B2D4;
    STA.B $32                            ;83B2D6;
    JSL.L CODE_849FFE                    ;83B2D8;
    LDA.W $1F26                          ;83B2DC;
    BEQ CODE_83B2E7                      ;83B2DF;
    LDA.B #$1E                           ;83B2E1;
    JSL.L CODE_8087A2                    ;83B2E3;

CODE_83B2E7:
    RTS                                  ;83B2E7;

CODE_83B2E8:
    LDX.B $02                            ;83B2E8;
    JSR.W (PTR16_83B3DA,X)               ;83B2EA;
    LDA.B $27                            ;83B2ED;
    STA.B $39                            ;83B2EF;
    LDA.B $35                            ;83B2F1;
    TSB.B $11                            ;83B2F3;
    LDA.B $37                            ;83B2F5;
    BMI CODE_83B301                      ;83B2F7;
    AND.B #$01                           ;83B2F9;
    BEQ CODE_83B309                      ;83B2FB;
    LDA.B #$00                           ;83B2FD;
    BRA CODE_83B30B                      ;83B2FF;

CODE_83B301:
    LDA.B $33                            ;83B301;
    BNE CODE_83B309                      ;83B303;
    LDA.B #$00                           ;83B305;
    BRA CODE_83B30B                      ;83B307;

CODE_83B309:
    LDA.B #$0B                           ;83B309;

CODE_83B30B:
    STA.B $28                            ;83B30B;
    LDA.B $38                            ;83B30D;
    BEQ CODE_83B32A                      ;83B30F;
    DEC.B $38                            ;83B311;
    LDA.B $02                            ;83B313;
    CMP.B #$08                           ;83B315;
    BNE CODE_83B31F                      ;83B317;
    LDA.B $03                            ;83B319;
    CMP.B #$08                           ;83B31B;
    BCS CODE_83B32A                      ;83B31D;

CODE_83B31F:
    LDA.B $38                            ;83B31F;
    LSR A                                ;83B321;
    LSR A                                ;83B322;
    LSR A                                ;83B323;
    BCC CODE_83B32A                      ;83B324;
    LDA.B #$0E                           ;83B326;
    TRB.B $11                            ;83B328;

CODE_83B32A:
    JSL.L CODE_849B43                    ;83B32A;
    BVC CODE_83B35A                      ;83B32E;
    LDA.B $3C                            ;83B330;
    CLC                                  ;83B332;
    ADC.B #$02                           ;83B333;
    STA.B $3C                            ;83B335;
    LDA.B #$01                           ;83B337;
    STA.B $3B                            ;83B339;
    LDA.B $37                            ;83B33B;
    LSR A                                ;83B33D;
    BCS CODE_83B343                      ;83B33E;
    JMP.W CODE_83B3C7                    ;83B340;

CODE_83B343:
    LDA.W $1F1D                          ;83B343;
    CMP.B #$02                           ;83B346;
    BEQ CODE_83B352                      ;83B348;
    CMP.B #$03                           ;83B34A;
    BEQ CODE_83B352                      ;83B34C;
    CMP.B #$01                           ;83B34E;
    BNE CODE_83B3C7                      ;83B350;

CODE_83B352:
    LDA.B #$06                           ;83B352;
    STA.B $02                            ;83B354;
    STZ.B $03                            ;83B356;
    BRA CODE_83B3C7                      ;83B358;

CODE_83B35A:
    BEQ CODE_83B3C7                      ;83B35A;
    LDA.B $38                            ;83B35C;
    BEQ CODE_83B366                      ;83B35E;
    LDA.B $39                            ;83B360;
    STA.B $27                            ;83B362;
    BRA CODE_83B3C7                      ;83B364;

CODE_83B366:
    LDA.B #$3C                           ;83B366;
    STA.B $38                            ;83B368;
    LDA.B $02                            ;83B36A;
    BNE CODE_83B374                      ;83B36C;
    LDA.B $03                            ;83B36E;
    CMP.B #$0C                           ;83B370;
    BCC CODE_83B39A                      ;83B372;

CODE_83B374:
    LDA.B #$08                           ;83B374;
    STA.B $02                            ;83B376;
    STZ.B $03                            ;83B378;
    LDA.B #$40                           ;83B37A;
    TRB.B $11                            ;83B37C;
    LDA.W $1F1B                          ;83B37E;
    TSB.B $11                            ;83B381;
    LDA.B $33                            ;83B383;
    BNE CODE_83B39A                      ;83B385;
    LDA.W $1F1D                          ;83B387;
    CMP.B #$0C                           ;83B38A;
    BEQ CODE_83B392                      ;83B38C;
    CMP.B #$15                           ;83B38E;
    BNE CODE_83B39A                      ;83B390;

CODE_83B392:
    LDA.B #$02                           ;83B392;
    STA.B $03                            ;83B394;
    LDA.B #$B4                           ;83B396;
    STA.B $38                            ;83B398;

CODE_83B39A:
    LDA.B #$13                           ;83B39A;
    JSL.L CODE_8088A2                    ;83B39C;
    LDA.B $27                            ;83B3A0;
    AND.B #$7F                           ;83B3A2;
    BNE CODE_83B3C7                      ;83B3A4;
    LDA.B #$06                           ;83B3A6;
    STA.B $01                            ;83B3A8;
    STZ.B $02                            ;83B3AA;
    STZ.B $03                            ;83B3AC;
    LDA.B #$01                           ;83B3AE;
    STA.W $0BD8                          ;83B3B0;
    STA.W $1F0C                          ;83B3B3;
    LDA.B #$07                           ;83B3B6;
    JSR.W CODE_83B9C8                    ;83B3B8;
    LDA.B $11                            ;83B3BB;
    AND.B #$F1                           ;83B3BD;
    ORA.B #$08                           ;83B3BF;
    STA.B $11                            ;83B3C1;
    JML.L CODE_8280B4                    ;83B3C3;

CODE_83B3C7:
    JSL.L CODE_849B03                    ;83B3C7;
    LDA.W $0BCF                          ;83B3CB;
    AND.B #$7F                           ;83B3CE;
    BNE CODE_83B3D6                      ;83B3D0;
    LDA.B #$01                           ;83B3D2;
    STA.B $30                            ;83B3D4;

CODE_83B3D6:
    JML.L CODE_8280B4                    ;83B3D6;

PTR16_83B3DA:
    dw CODE_83B3E4                       ;83B3DA;
    dw CODE_83B69D                       ;83B3DC;
    dw CODE_83B5F5                       ;83B3DE;
    dw CODE_83B784                       ;83B3E0;
    dw CODE_83B826                       ;83B3E2;

CODE_83B3E4:
    LDX.B $03                            ;83B3E4;
    JMP.W (PTR16_83B3E9,X)               ;83B3E6;

PTR16_83B3E9:
    dw CODE_83B3F9                       ;83B3E9;
    dw CODE_83B416                       ;83B3EB;
    dw CODE_83B441                       ;83B3ED;
    dw CODE_83B468                       ;83B3EF;
    dw CODE_83B493                       ;83B3F1;
    dw CODE_83B4FE                       ;83B3F3;
    dw CODE_83B5A9                       ;83B3F5;
    dw CODE_83B5E2                       ;83B3F7;

CODE_83B3F9:
    LDA.B #$03                           ;83B3F9;
    JSR.W CODE_83B9C8                    ;83B3FB;
    LDA.B #$02                           ;83B3FE;
    STA.B $03                            ;83B400;
    JSL.L CODE_84AC9B                    ;83B402;
    REP #$20                             ;83B406;
    LDA.W #$0506                         ;83B408;
    STA.B $1C                            ;83B40B;
    STZ.B $1A                            ;83B40D;
    SEP #$20                             ;83B40F;
    LDA.B #$FF                           ;83B411;
    STA.B $2F                            ;83B413;
    RTS                                  ;83B415;

CODE_83B416:
    JSL.L CODE_84AC9B                    ;83B416;
    JSL.L CODE_8281E8                    ;83B41A;
    JSL.L CODE_848EEA                    ;83B41E;
    JSL.L CODE_8491BE                    ;83B422;
    LDA.B $0F                            ;83B426;
    BPL CODE_83B440                      ;83B428;
    LDA.B #$04                           ;83B42A;
    STA.B $03                            ;83B42C;
    LDA.B #$0B                           ;83B42E;
    JSR.W CODE_83B9C8                    ;83B430;
    LDA.B #$80                           ;83B433;
    TSB.B $37                            ;83B435;
    REP #$20                             ;83B437;
    LDA.W #$C945                         ;83B439;
    STA.B $20                            ;83B43C;
    SEP #$20                             ;83B43E;

CODE_83B440:
    RTS                                  ;83B440;

CODE_83B441:
    JSL.L CODE_84AC9B                    ;83B441;
    JSL.L CODE_8281E8                    ;83B445;
    JSL.L CODE_848EEA                    ;83B449;
    JSL.L CODE_8491BE                    ;83B44D;
    LDA.B $2B                            ;83B451;
    AND.B #$04                           ;83B453;
    BEQ CODE_83B467                      ;83B455;
    REP #$20                             ;83B457;
    LDA.B $1C                            ;83B459;
    EOR.W #$FFFF                         ;83B45B;
    INC A                                ;83B45E;
    STA.B $1C                            ;83B45F;
    SEP #$20                             ;83B461;
    LDA.B #$06                           ;83B463;
    STA.B $03                            ;83B465;

CODE_83B467:
    RTS                                  ;83B467;

CODE_83B468:
    JSL.L CODE_84AC9B                    ;83B468;
    JSL.L CODE_848EEA                    ;83B46C;
    JSL.L CODE_8281E8                    ;83B470;
    LDA.B $2B                            ;83B474;
    AND.B #$04                           ;83B476;
    BEQ CODE_83B492                      ;83B478;
    LDA.B #$08                           ;83B47A;
    STA.B $03                            ;83B47C;
    LDA.B $11                            ;83B47E;
    ASL A                                ;83B480;
    ASL A                                ;83B481;
    REP #$20                             ;83B482;
    LDA.W #$0600                         ;83B484;
    BCS CODE_83B48C                      ;83B487;
    LDA.W #$FA00                         ;83B489;

CODE_83B48C:
    STA.B $1A                            ;83B48C;
    STZ.B $1C                            ;83B48E;
    SEP #$20                             ;83B490;

CODE_83B492:
    RTS                                  ;83B492;

CODE_83B493:
    JSL.L CODE_82823E                    ;83B493;
    JSL.L CODE_8491BE                    ;83B497;
    JSL.L CODE_848EEA                    ;83B49B;
    LDA.B $2B                            ;83B49F;
    AND.B #$03                           ;83B4A1;
    BEQ CODE_83B4FD                      ;83B4A3;
    LDA.B #$48                           ;83B4A5;
    JSL.L CODE_8088A2                    ;83B4A7;
    LDA.B $11                            ;83B4AB;
    ASL A                                ;83B4AD;
    ASL A                                ;83B4AE;
    REP #$20                             ;83B4AF;
    LDA.W #$0010                         ;83B4B1;
    BCS CODE_83B4B9                      ;83B4B4;
    LDA.W #$FFF0                         ;83B4B6;

CODE_83B4B9:
    CLC                                  ;83B4B9;
    ADC.B $05                            ;83B4BA;
    STA.W $0000                          ;83B4BC;
    LDA.B $08                            ;83B4BF;
    STA.W $0002                          ;83B4C1;
    JSR.W CODE_83BB38                    ;83B4C4;
    SEP #$20                             ;83B4C7;
    JSL.L CODE_849086                    ;83B4C9;
    AND.B #$0F                           ;83B4CD;
    CMP.B #$06                           ;83B4CF;
    BCS CODE_83B4DC                      ;83B4D1;
    LDA.B $1B                            ;83B4D3;
    EOR.B #$80                           ;83B4D5;
    STA.B $1B                            ;83B4D7;
    JMP.W CODE_83B9FE                    ;83B4D9;

CODE_83B4DC:
    LDA.B #$08                           ;83B4DC;
    JSL.L CODE_84A311                    ;83B4DE;
    REP #$20                             ;83B4E2;
    LDA.W DATA8_86EE49                   ;83B4E4;
    ASL A                                ;83B4E7;
    ADC.W DATA8_86EE49                   ;83B4E8;
    STA.B $1C                            ;83B4EB;
    LDX.B $1B                            ;83B4ED;
    BMI CODE_83B4F5                      ;83B4EF;
    EOR.W #$FFFF                         ;83B4F1;
    INC A                                ;83B4F4;

CODE_83B4F5:
    STA.B $1A                            ;83B4F5;
    SEP #$20                             ;83B4F7;
    LDA.B #$0A                           ;83B4F9;
    STA.B $03                            ;83B4FB;

CODE_83B4FD:
    RTS                                  ;83B4FD;

CODE_83B4FE:
    LDA.B #$40                           ;83B4FE;
    TRB.B $11                            ;83B500;
    LDA.B $1B                            ;83B502;
    AND.B #$80                           ;83B504;
    LSR A                                ;83B506;
    EOR.B #$40                           ;83B507;
    TSB.B $11                            ;83B509;
    JSL.L CODE_82820A                    ;83B50B;
    JSL.L CODE_848EEA                    ;83B50F;
    JSL.L CODE_8491BE                    ;83B513;
    LDA.B $2B                            ;83B517;
    BNE CODE_83B51C                      ;83B519;
    RTS                                  ;83B51B;

CODE_83B51C:
    BIT.B #$04                           ;83B51C;
    BEQ CODE_83B548                      ;83B51E;
    JSL.L CODE_849086                    ;83B520;
    AND.B #$0F                           ;83B524;
    CMP.B #$06                           ;83B526;
    BCS CODE_83B548                      ;83B528;
    REP #$20                             ;83B52A;
    LDA.W #$0010                         ;83B52C;
    CLC                                  ;83B52F;
    ADC.B $08                            ;83B530;
    STA.W $0002                          ;83B532;
    LDA.B $05                            ;83B535;
    STA.W $0000                          ;83B537;
    JSR.W CODE_83BB38                    ;83B53A;
    SEP #$20                             ;83B53D;
    LDA.B #$48                           ;83B53F;
    JSL.L CODE_8088A2                    ;83B541;
    JMP.W CODE_83B9FE                    ;83B545;

CODE_83B548:
    LDA.B #$48                           ;83B548;
    JSL.L CODE_8088A2                    ;83B54A;
    LDA.B $2B                            ;83B54E;
    BIT.B #$0C                           ;83B550;
    REP #$20                             ;83B552;
    BEQ CODE_83B581                      ;83B554;
    LSR A                                ;83B556;
    LSR A                                ;83B557;
    LSR A                                ;83B558;
    LDA.W #$0010                         ;83B559;
    BCS CODE_83B561                      ;83B55C;
    LDA.W #$FFF0                         ;83B55E;

CODE_83B561:
    CLC                                  ;83B561;
    ADC.B $08                            ;83B562;
    STA.W $0002                          ;83B564;
    LDA.B $05                            ;83B567;
    STA.W $0000                          ;83B569;
    JSR.W CODE_83BB38                    ;83B56C;
    LDA.B $1C                            ;83B56F;
    EOR.W #$FFFF                         ;83B571;
    INC A                                ;83B574;
    STA.B $1C                            ;83B575;
    SEP #$20                             ;83B577;
    LDA.B #$08                           ;83B579;
    JSL.L CODE_84A333                    ;83B57B;
    BRA CODE_83B5A8                      ;83B57F;

CODE_83B581:
    LSR A                                ;83B581;
    LDA.W #$0010                         ;83B582;
    BCS CODE_83B58A                      ;83B585;
    LDA.W #$FFF0                         ;83B587;

CODE_83B58A:
    CLC                                  ;83B58A;
    ADC.B $05                            ;83B58B;
    STA.W $0000                          ;83B58D;
    LDA.B $08                            ;83B590;
    STA.W $0002                          ;83B592;
    JSR.W CODE_83BB38                    ;83B595;
    LDA.B $1A                            ;83B598;
    EOR.W #$FFFF                         ;83B59A;
    INC A                                ;83B59D;
    STA.B $1A                            ;83B59E;
    SEP #$20                             ;83B5A0;
    LDA.B #$08                           ;83B5A2;
    JSL.L CODE_84A311                    ;83B5A4;

CODE_83B5A8:
    RTS                                  ;83B5A8;

CODE_83B5A9:
    REP #$20                             ;83B5A9;
    LDA.W #$C94F                         ;83B5AB;
    STA.B $20                            ;83B5AE;
    SEP #$20                             ;83B5B0;
    JSL.L CODE_8281E8                    ;83B5B2;
    JSL.L CODE_848EEA                    ;83B5B6;
    JSL.L CODE_8491BE                    ;83B5BA;
    LDA.B $2B                            ;83B5BE;
    AND.B #$03                           ;83B5C0;
    BEQ CODE_83B5D0                      ;83B5C2;
    REP #$20                             ;83B5C4;
    LDA.B $1A                            ;83B5C6;
    EOR.W #$FFFF                         ;83B5C8;
    INC A                                ;83B5CB;
    STA.B $1A                            ;83B5CC;
    SEP #$20                             ;83B5CE;

CODE_83B5D0:
    LDA.B $2B                            ;83B5D0;
    AND.B #$04                           ;83B5D2;
    BEQ CODE_83B5E1                      ;83B5D4;
    LDA.B #$0E                           ;83B5D6;
    STA.B $03                            ;83B5D8;
    STZ.B $2B                            ;83B5DA;
    LDA.B #$05                           ;83B5DC;
    JSR.W CODE_83B9C8                    ;83B5DE;

CODE_83B5E1:
    RTS                                  ;83B5E1;

CODE_83B5E2:
    JSL.L CODE_8491BE                    ;83B5E2;
    JSL.L CODE_848EEA                    ;83B5E6;
    LDA.B $0F                            ;83B5EA;
    BPL CODE_83B5F4                      ;83B5EC;
    LDA.B #$04                           ;83B5EE;
    STA.B $02                            ;83B5F0;
    STZ.B $03                            ;83B5F2;

CODE_83B5F4:
    RTS                                  ;83B5F4;

CODE_83B5F5:
    LDX.B $03                            ;83B5F5;
    JMP.W (PTR16_83B5FA,X)               ;83B5F7;

PTR16_83B5FA:
    dw CODE_83B600                       ;83B5FA;
    dw CODE_83B60E                       ;83B5FC;
    dw CODE_83B682                       ;83B5FE;

CODE_83B600:
    LDA.B #$02                           ;83B600;
    STA.B $03                            ;83B602;
    LDA.B #$1E                           ;83B604;
    STA.B $34                            ;83B606;
    LDA.B #$00                           ;83B608;
    JSR.W CODE_83B9C8                    ;83B60A;
    RTS                                  ;83B60D;

CODE_83B60E:
    JSL.L CODE_84AC9B                    ;83B60E;
    JSR.W CODE_83BA20                    ;83B612;
    BEQ CODE_83B628                      ;83B615;
    LDA.B #$04                           ;83B617;
    STA.B $03                            ;83B619;
    LDA.B #$01                           ;83B61B;
    TSB.B $37                            ;83B61D;
    LDA.B #$1E                           ;83B61F;
    STA.B $3B                            ;83B621;
    LDA.B #$09                           ;83B623;
    JMP.W CODE_83B9C8                    ;83B625;

CODE_83B628:
    LDA.B $34                            ;83B628;
    BEQ CODE_83B630                      ;83B62A;
    DEC.B $34                            ;83B62C;
    BNE CODE_83B681                      ;83B62E;

CODE_83B630:
    STZ.B $03                            ;83B630;
    LDA.B $32                            ;83B632;
    CMP.B #$02                           ;83B634;
    BCC CODE_83B643                      ;83B636;
    DEC.B $32                            ;83B638;
    LDA.B $31                            ;83B63A;
    EOR.B #$02                           ;83B63C;
    STA.B $31                            ;83B63E;
    STA.B $02                            ;83B640;
    RTS                                  ;83B642;

CODE_83B643:
    JSL.L CODE_849086                    ;83B643;
    AND.B #$0F                           ;83B647;
    TAX                                  ;83B649;
    REP #$20                             ;83B64A;
    LDA.B $05                            ;83B64C;
    SEC                                  ;83B64E;
    SBC.W $0BAD                          ;83B64F;
    BCS CODE_83B658                      ;83B652;
    EOR.W #$FFFF                         ;83B654;
    INC A                                ;83B657;

CODE_83B658:
    CMP.W #$0080                         ;83B658;
    SEP #$20                             ;83B65B;
    BCS CODE_83B66D                      ;83B65D;
    CMP.B #$50                           ;83B65F;
    BCS CODE_83B668                      ;83B661;
    LDA.W DATA8_86C980,X                 ;83B663;
    BRA CODE_83B670                      ;83B666;

CODE_83B668:
    LDA.W DATA8_86C990,X                 ;83B668;
    BRA CODE_83B670                      ;83B66B;

CODE_83B66D:
    LDA.W DATA8_86C9A0,X                 ;83B66D;

CODE_83B670:
    CMP.B $31                            ;83B670;
    BEQ CODE_83B67D                      ;83B672;
    STA.B $31                            ;83B674;
    STA.B $02                            ;83B676;
    LDA.B #$01                           ;83B678;
    STA.B $32                            ;83B67A;
    RTS                                  ;83B67C;

CODE_83B67D:
    STA.B $02                            ;83B67D;
    INC.B $32                            ;83B67F;

CODE_83B681:
    RTS                                  ;83B681;

CODE_83B682:
    JSR.W CODE_83BAAA                    ;83B682;
    LDA.B $34                            ;83B685;
    BEQ CODE_83B68B                      ;83B687;
    DEC.B $34                            ;83B689;

CODE_83B68B:
    DEC.B $3B                            ;83B68B;
    BNE CODE_83B69C                      ;83B68D;
    LDA.B #$02                           ;83B68F;
    STA.B $03                            ;83B691;
    LDA.B #$01                           ;83B693;
    TRB.B $37                            ;83B695;
    LDA.B #$00                           ;83B697;
    JMP.W CODE_83B9C8                    ;83B699;

CODE_83B69C:
    RTS                                  ;83B69C;

CODE_83B69D:
    LDX.B $03                            ;83B69D;
    JMP.W (PTR16_83B6A2,X)               ;83B69F;

PTR16_83B6A2:
    dw CODE_83B6A8                       ;83B6A2;
    dw CODE_83B6BE                       ;83B6A4;
    dw CODE_83B75C                       ;83B6A6;

CODE_83B6A8:
    LDA.B #$02                           ;83B6A8;
    STA.B $03                            ;83B6AA;
    JSL.L CODE_849086                    ;83B6AC;
    AND.B #$0F                           ;83B6B0;
    TAX                                  ;83B6B2;
    LDA.W DATA8_86C970,X                 ;83B6B3;
    STA.B $36                            ;83B6B6;
    LDA.B #$06                           ;83B6B8;
    JSR.W CODE_83B9C8                    ;83B6BA;
    RTS                                  ;83B6BD;

CODE_83B6BE:
    JSL.L CODE_848EEA                    ;83B6BE;
    LDA.B $17                            ;83B6C2;
    BPL CODE_83B741                      ;83B6C4;
    AND.B #$7F                           ;83B6C6;
    STA.B $17                            ;83B6C8;
    LDA.B $0F                            ;83B6CA;
    BMI CODE_83B733                      ;83B6CC;
    BEQ CODE_83B741                      ;83B6CE;
    DEC.B $36                            ;83B6D0;
    JSL.L CODE_828358                    ;83B6D2;
    BNE CODE_83B729                      ;83B6D6;
    INC.W $0000,X                        ;83B6D8;
    LDA.B #$04                           ;83B6DB;
    STA.W $000A,X                        ;83B6DD;
    STZ.W $000B,X                        ;83B6E0;
    LDA.B $11                            ;83B6E3;
    AND.B #$40                           ;83B6E5;
    STA.W $0011,X                        ;83B6E7;
    ASL A                                ;83B6EA;
    ASL A                                ;83B6EB;
    REP #$20                             ;83B6EC;
    LDA.W #$000F                         ;83B6EE;
    BCS CODE_83B6F6                      ;83B6F1;
    LDA.W #$FFF1                         ;83B6F3;

CODE_83B6F6:
    CLC                                  ;83B6F6;
    ADC.B $05                            ;83B6F7;
    STA.W $0005,X                        ;83B6F9;
    LDA.B $08                            ;83B6FC;
    SEC                                  ;83B6FE;
    SBC.W #$000E                         ;83B6FF;
    STA.W $0008,X                        ;83B702;
    JSL.L CODE_8282D3                    ;83B705;
    BNE CODE_83B729                      ;83B709;
    INC.W $0000,X                        ;83B70B;
    LDA.B #$10                           ;83B70E;
    STA.W $000A,X                        ;83B710;
    LDA.B #$0F                           ;83B713;
    STA.W $000B,X                        ;83B715;
    LDA.B $11                            ;83B718;
    STA.W $0011,X                        ;83B71A;
    REP #$20                             ;83B71D;
    LDA.B $05                            ;83B71F;
    STA.W $0005,X                        ;83B721;
    LDA.B $08                            ;83B724;
    STA.W $0008,X                        ;83B726;

CODE_83B729:
    SEP #$30                             ;83B729;
    LDA.B #$33                           ;83B72B;
    JSL.L CODE_8088A2                    ;83B72D;
    BRA CODE_83B741                      ;83B731;

CODE_83B733:
    JSL.L CODE_84AC9B                    ;83B733;
    LDA.B $36                            ;83B737;
    BNE CODE_83B741                      ;83B739;
    LDA.B #$04                           ;83B73B;
    STA.B $02                            ;83B73D;
    STZ.B $03                            ;83B73F;

CODE_83B741:
    JSR.W CODE_83BA20                    ;83B741;
    BEQ CODE_83B75B                      ;83B744;
    LDA.B #$02                           ;83B746;
    STA.B $02                            ;83B748;
    LDA.B #$04                           ;83B74A;
    STA.B $03                            ;83B74C;
    LDA.B #$01                           ;83B74E;
    TSB.B $37                            ;83B750;
    LDA.B #$09                           ;83B752;
    JSR.W CODE_83B9C8                    ;83B754;
    LDA.B #$1E                           ;83B757;
    STA.B $3B                            ;83B759;

CODE_83B75B:
    RTS                                  ;83B75B;

CODE_83B75C:
    JSL.L CODE_84AC9B                    ;83B75C;
    JSR.W CODE_83BAAA                    ;83B760;
    DEC.B $3B                            ;83B763;
    BNE CODE_83B783                      ;83B765;
    LDA.B #$01                           ;83B767;
    TRB.B $37                            ;83B769;
    LDA.B $36                            ;83B76B;
    BNE CODE_83B77A                      ;83B76D;
    LDA.B #$04                           ;83B76F;
    STA.B $02                            ;83B771;
    STZ.B $03                            ;83B773;
    LDA.B #$00                           ;83B775;
    JMP.W CODE_83B9C8                    ;83B777;

CODE_83B77A:
    LDA.B #$02                           ;83B77A;
    STA.B $03                            ;83B77C;
    LDA.B #$06                           ;83B77E;
    JSR.W CODE_83B9C8                    ;83B780;

CODE_83B783:
    RTS                                  ;83B783;

CODE_83B784:
    LDX.B $03                            ;83B784;
    JMP.W (PTR16_83B789,X)               ;83B786;

PTR16_83B789:
    dw CODE_83B78F                       ;83B789;
    dw CODE_83B7A5                       ;83B78B;
    dw CODE_83B816                       ;83B78D;

CODE_83B78F:
    LDA.B #$02                           ;83B78F;
    STA.B $03                            ;83B791;
    LDA.B #$0A                           ;83B793;
    JSR.W CODE_83B9C8                    ;83B795;
    STZ.B $36                            ;83B798;
    LDA.B #$80                           ;83B79A;
    STA.B $37                            ;83B79C;
    LDA.B #$4E                           ;83B79E;
    JSL.L CODE_8088A2                    ;83B7A0;
    RTS                                  ;83B7A4;

CODE_83B7A5:
    JSR.W CODE_83BAAA                    ;83B7A5;
    JSL.L CODE_848EEA                    ;83B7A8;
    LDA.B $17                            ;83B7AC;
    BPL CODE_83B815                      ;83B7AE;
    AND.B #$7F                           ;83B7B0;
    STA.B $17                            ;83B7B2;
    LDA.B $0F                            ;83B7B4;
    AND.B #$0F                           ;83B7B6;
    CLC                                  ;83B7B8;
    ADC.B #$90                           ;83B7B9;
    REP #$30                             ;83B7BB;
    AND.W #$00FF                         ;83B7BD;
    ASL A                                ;83B7C0;
    TAY                                  ;83B7C1;
    LDX.W #$0050                         ;83B7C2;
    LDA.W $0BCF                          ;83B7C5;
    AND.W #$007F                         ;83B7C8;
    BEQ CODE_83B7D1                      ;83B7CB;
    JSL.L CODE_828000                    ;83B7CD;

CODE_83B7D1:
    SEP #$30                             ;83B7D1;
    LDA.B $0F                            ;83B7D3;
    BPL CODE_83B815                      ;83B7D5;
    LDA.B #$08                           ;83B7D7;
    STA.B $3D                            ;83B7D9;

CODE_83B7DB:
    JSL.L CODE_828358                    ;83B7DB;
    BNE CODE_83B803                      ;83B7DF;
    INC.W $0000,X                        ;83B7E1;
    LDA.B #$04                           ;83B7E4;
    STA.W $000A,X                        ;83B7E6;
    LDA.B $3D                            ;83B7E9;
    STA.W $000B,X                        ;83B7EB;
    STZ.W $0011,X                        ;83B7EE;
    REP #$20                             ;83B7F1;
    LDA.B $05                            ;83B7F3;
    STA.W $0005,X                        ;83B7F5;
    LDA.B $08                            ;83B7F8;
    STA.W $0008,X                        ;83B7FA;
    SEP #$20                             ;83B7FD;
    DEC.B $3D                            ;83B7FF;
    BNE CODE_83B7DB                      ;83B801;

CODE_83B803:
    SEP #$10                             ;83B803;
    LDA.B #$04                           ;83B805;
    STA.B $03                            ;83B807;
    LDA.B #$1E                           ;83B809;
    STA.B $34                            ;83B80B;
    STZ.B $37                            ;83B80D;
    LDA.B #$02                           ;83B80F;
    JSL.L CODE_8088A2                    ;83B811;

CODE_83B815:
    RTS                                  ;83B815;

CODE_83B816:
    DEC.B $34                            ;83B816;
    BNE CODE_83B825                      ;83B818;
    LDA.B #$04                           ;83B81A;
    STA.B $02                            ;83B81C;
    STZ.B $03                            ;83B81E;
    LDA.B #$00                           ;83B820;
    JSR.W CODE_83B9C8                    ;83B822;

CODE_83B825:
    RTS                                  ;83B825;

CODE_83B826:
    LDX.B $03                            ;83B826;
    JMP.W (PTR16_83B82B,X)               ;83B828;

PTR16_83B82B:
    dw CODE_83B839                       ;83B82B;
    dw CODE_83B848                       ;83B82D;
    dw CODE_83B878                       ;83B82F;
    dw CODE_83B897                       ;83B831;
    dw CODE_83B8E3                       ;83B833;
    dw CODE_83B878                       ;83B835;
    dw CODE_83B8C0                       ;83B837;

CODE_83B839:
    LDA.B #$07                           ;83B839;
    JSR.W CODE_83B9C8                    ;83B83B;
    LDA.B #$04                           ;83B83E;
    STA.B $03                            ;83B840;
    LDA.B #$14                           ;83B842;
    STA.B $3A                            ;83B844;
    BRA CODE_83B855                      ;83B846;

CODE_83B848:
    LDA.B #$08                           ;83B848;
    JSR.W CODE_83B9C8                    ;83B84A;
    LDA.B #$08                           ;83B84D;
    STA.B $03                            ;83B84F;
    LDA.B #$5A                           ;83B851;
    STA.B $3A                            ;83B853;

CODE_83B855:
    LDA.B $11                            ;83B855;
    ASL A                                ;83B857;
    ASL A                                ;83B858;
    REP #$20                             ;83B859;
    LDA.W #$0100                         ;83B85B;
    BCC CODE_83B863                      ;83B85E;
    LDA.W #$FF00                         ;83B860;

CODE_83B863:
    STA.B $1A                            ;83B863;
    LDA.W #$0100                         ;83B865;
    STA.B $1C                            ;83B868;
    LDA.W #$C94F                         ;83B86A;
    STA.B $20                            ;83B86D;
    SEP #$20                             ;83B86F;
    LDA.B #$FF                           ;83B871;
    STA.B $2F                            ;83B873;
    STZ.B $37                            ;83B875;
    RTS                                  ;83B877;

CODE_83B878:
    JSL.L CODE_8281E8                    ;83B878;
    JSL.L CODE_848EEA                    ;83B87C;
    JSL.L CODE_8491BE                    ;83B880;
    LDA.B $2B                            ;83B884;
    AND.B #$04                           ;83B886;
    BEQ CODE_83B890                      ;83B888;
    INC.B $03                            ;83B88A;
    INC.B $03                            ;83B88C;
    STZ.B $2F                            ;83B88E;

CODE_83B890:
    LDA.B $3A                            ;83B890;
    BEQ CODE_83B896                      ;83B892;
    DEC.B $3A                            ;83B894;

CODE_83B896:
    RTS                                  ;83B896;

CODE_83B897:
    JSL.L CODE_82823E                    ;83B897;
    JSL.L CODE_848EEA                    ;83B89B;
    JSL.L CODE_8491BE                    ;83B89F;
    LDA.B $3A                            ;83B8A3;
    BNE CODE_83B8BD                      ;83B8A5;
    LDA.B $36                            ;83B8A7;
    BEQ CODE_83B8B6                      ;83B8A9;
    LDA.B #$02                           ;83B8AB;
    STA.B $02                            ;83B8AD;
    STA.B $03                            ;83B8AF;
    LDA.B #$06                           ;83B8B1;
    JMP.W CODE_83B9C8                    ;83B8B3;

CODE_83B8B6:
    LDA.B #$04                           ;83B8B6;
    STA.B $02                            ;83B8B8;
    STZ.B $03                            ;83B8BA;
    RTS                                  ;83B8BC;

CODE_83B8BD:
    DEC.B $3A                            ;83B8BD;
    RTS                                  ;83B8BF;

CODE_83B8C0:
    JSL.L CODE_82823E                    ;83B8C0;
    JSL.L CODE_848EEA                    ;83B8C4;
    JSL.L CODE_8491BE                    ;83B8C8;
    LDA.B $3A                            ;83B8CC;
    BNE CODE_83B8E0                      ;83B8CE;
    JSR.W CODE_83BACA                    ;83B8D0;
    INC.B $33                            ;83B8D3;
    LDA.B #$04                           ;83B8D5;
    STA.B $02                            ;83B8D7;
    STZ.B $03                            ;83B8D9;
    LDA.B #$00                           ;83B8DB;
    JMP.W CODE_83B9C8                    ;83B8DD;

CODE_83B8E0:
    DEC.B $3A                            ;83B8E0;
    RTS                                  ;83B8E2;

CODE_83B8E3:
    JSL.L CODE_848EEA                    ;83B8E3;
    LDA.B $17                            ;83B8E7;
    BPL CODE_83B8F9                      ;83B8E9;
    AND.B #$7F                           ;83B8EB;
    STA.B $17                            ;83B8ED;
    LDA.B $0F                            ;83B8EF;
    BPL CODE_83B8F9                      ;83B8F1;
    LDA.B #$47                           ;83B8F3;
    JSL.L CODE_8088A2                    ;83B8F5;

CODE_83B8F9:
    LDA.B $3A                            ;83B8F9;
    BNE CODE_83B905                      ;83B8FB;
    INC.B $03                            ;83B8FD;
    INC.B $03                            ;83B8FF;
    LDA.B #$14                           ;83B901;
    STA.B $3A                            ;83B903;

CODE_83B905:
    DEC.B $3A                            ;83B905;
    RTS                                  ;83B907;

CODE_83B908:
    JSL.L CODE_84A66D                    ;83B908;
    BPL CODE_83B927                      ;83B90C;
    LDA.W $1F7A                          ;83B90E;
    CMP.B #$09                           ;83B911;
    BCC CODE_83B923                      ;83B913;
    LDA.B #$1C                           ;83B915;
    JSL.L CODE_8087A2                    ;83B917;
    LDA.B #$F5                           ;83B91B;
    LDY.B #$03                           ;83B91D;
    JSL.L CODE_80887F                    ;83B91F;

CODE_83B923:
    JML.L CODE_828398                    ;83B923;

CODE_83B927:
    LDA.W $1F15                          ;83B927;
    BNE CODE_83B930                      ;83B92A;
    JSL.L CODE_848EEA                    ;83B92C;

CODE_83B930:
    LDA.B $03                            ;83B930;
    CMP.B #$14                           ;83B932;
    BCS CODE_83B93A                      ;83B934;
    JML.L CODE_8280B4                    ;83B936;

CODE_83B93A:
    RTL                                  ;83B93A;

CODE_83B93B:
    LDA.B $01                            ;83B93B;
    BNE CODE_83B9AD                      ;83B93D;
    INC.B $01                            ;83B93F;
    LDA.B #$01                           ;83B941;
    STA.B $28                            ;83B943;
    LDA.B #$40                           ;83B945;
    STA.B $18                            ;83B947;
    LDA.B #$28                           ;83B949;
    TSB.B $11                            ;83B94B;
    LDA.B #$63                           ;83B94D;
    STA.B $16                            ;83B94F;
    LDA.B #$02                           ;83B951;
    STA.B $12                            ;83B953;
    LDA.B $0B                            ;83B955;
    BEQ CODE_83B986                      ;83B957;
    DEC A                                ;83B959;
    ASL A                                ;83B95A;
    ASL A                                ;83B95B;
    ASL A                                ;83B95C;
    ASL A                                ;83B95D;
    TAX                                  ;83B95E;
    REP #$20                             ;83B95F;
    LDA.W DATA8_86EE37,X                 ;83B961;
    ASL A                                ;83B964;
    ASL A                                ;83B965;
    STA.B $1A                            ;83B966;
    LDA.W DATA8_86EE39,X                 ;83B968;
    ASL A                                ;83B96B;
    ASL A                                ;83B96C;
    STA.B $1C                            ;83B96D;
    LDA.W #$C959                         ;83B96F;
    STA.B $20                            ;83B972;
    SEP #$20                             ;83B974;
    LDA.B #$06                           ;83B976;
    STA.B $26                            ;83B978;
    LDA.B #$01                           ;83B97A;
    STA.B $27                            ;83B97C;
    LDA.B #$03                           ;83B97E;
    JSL.L CODE_848F07                    ;83B980;
    BRA CODE_83B9AD                      ;83B984;

CODE_83B986:
    LDA.B #$04                           ;83B986;
    STA.B $26                            ;83B988;
    LDA.B #$01                           ;83B98A;
    STA.B $27                            ;83B98C;
    LDA.B $11                            ;83B98E;
    ASL A                                ;83B990;
    ASL A                                ;83B991;
    REP #$20                             ;83B992;
    LDA.W #$0300                         ;83B994;
    BCS CODE_83B99C                      ;83B997;
    LDA.W #$FD00                         ;83B999;

CODE_83B99C:
    STA.B $1A                            ;83B99C;
    STZ.B $1C                            ;83B99E;
    LDA.W #$C959                         ;83B9A0;
    STA.B $20                            ;83B9A3;
    SEP #$20                             ;83B9A5;
    LDA.B #$02                           ;83B9A7;
    JSL.L CODE_848F07                    ;83B9A9;

CODE_83B9AD:
    JSL.L CODE_848EEA                    ;83B9AD;
    JSL.L CODE_82820A                    ;83B9B1;
    JSL.L CODE_849B03                    ;83B9B5;
    BNE CODE_83B9C4                      ;83B9B9;
    JSL.L CODE_8280B4                    ;83B9BB;
    LDA.B $0E                            ;83B9BF;
    BEQ CODE_83B9C4                      ;83B9C1;
    RTL                                  ;83B9C3;

CODE_83B9C4:
    JML.L CODE_8283A3                    ;83B9C4;

CODE_83B9C8:
    PHP                                  ;83B9C8;
    SEP #$30                             ;83B9C9;
    CMP.B #$0B                           ;83B9CB;
    BEQ CODE_83B9EA                      ;83B9CD;
    LDX.B $33                            ;83B9CF;
    BEQ CODE_83B9D6                      ;83B9D1;
    CLC                                  ;83B9D3;
    ADC.B #$0B                           ;83B9D4;

CODE_83B9D6:
    TAX                                  ;83B9D6;
    LDA.W DATA8_86C95D,X                 ;83B9D7;
    LDX.B #$62                           ;83B9DA;
    STX.B $16                            ;83B9DC;
    JSL.L CODE_848F07                    ;83B9DE;
    LDA.B #$01                           ;83B9E2;
    TSB.B $11                            ;83B9E4;
    STZ.B $18                            ;83B9E6;
    PLP                                  ;83B9E8;
    RTS                                  ;83B9E9;

CODE_83B9EA:
    LDX.B #$63                           ;83B9EA;
    STX.B $16                            ;83B9EC;
    LDA.B #$00                           ;83B9EE;
    JSL.L CODE_848F07                    ;83B9F0;
    LDA.B #$01                           ;83B9F4;
    TRB.B $11                            ;83B9F6;
    LDA.B #$40                           ;83B9F8;
    STA.B $18                            ;83B9FA;
    PLP                                  ;83B9FC;
    RTS                                  ;83B9FD;

CODE_83B9FE:
    REP #$20                             ;83B9FE;
    LDA.W #$0100                         ;83BA00;
    LDX.B $1B                            ;83BA03;
    BPL CODE_83BA0A                      ;83BA05;
    LDA.W #$FF00                         ;83BA07;

CODE_83BA0A:
    STA.B $1A                            ;83BA0A;
    LDA.W #$0506                         ;83BA0C;
    STA.B $1C                            ;83BA0F;
    SEP #$20                             ;83BA11;
    LDA.B #$0C                           ;83BA13;
    STA.B $03                            ;83BA15;
    LDA.B #$80                           ;83BA17;
    TRB.B $37                            ;83BA19;
    LDA.B #$04                           ;83BA1B;
    JMP.W CODE_83B9C8                    ;83BA1D;

CODE_83BA20:
    LDA.B $33                            ;83BA20;
    BEQ CODE_83BA27                      ;83BA22;
    LDA.B #$00                           ;83BA24;
    RTS                                  ;83BA26;

CODE_83BA27:
    REP #$10                             ;83BA27;
    LDX.W #$1228                         ;83BA29;

CODE_83BA2C:
    SEP #$20                             ;83BA2C;
    LDA.W $0000,X                        ;83BA2E;
    BEQ CODE_83BA87                      ;83BA31;
    LDA.W $0030,X                        ;83BA33;
    BNE CODE_83BA87                      ;83BA36;
    LDA.W $002C,X                        ;83BA38;
    BNE CODE_83BA87                      ;83BA3B;
    REP #$20                             ;83BA3D;
    LDA.W $0020,X                        ;83BA3F;
    TAY                                  ;83BA42;
    LDA.W $0000,Y                        ;83BA43;
    AND.W #$00FF                         ;83BA46;
    BIT.W #$0080                         ;83BA49;
    BEQ CODE_83BA51                      ;83BA4C;
    ORA.W #$FF00                         ;83BA4E;

CODE_83BA51:
    PHA                                  ;83BA51;
    LDA.W $0011,X                        ;83BA52;
    XBA                                  ;83BA55;
    ASL A                                ;83BA56;
    ASL A                                ;83BA57;
    PLA                                  ;83BA58;
    BCC CODE_83BA5F                      ;83BA59;
    EOR.W #$FFFF                         ;83BA5B;
    INC A                                ;83BA5E;

CODE_83BA5F:
    CLC                                  ;83BA5F;
    ADC.W $0005,X                        ;83BA60;
    SEC                                  ;83BA63;
    SBC.B $05                            ;83BA64;
    BCS CODE_83BA6C                      ;83BA66;
    EOR.W #$FFFF                         ;83BA68;
    INC A                                ;83BA6B;

CODE_83BA6C:
    CMP.W #$0050                         ;83BA6C;
    BCS CODE_83BA87                      ;83BA6F;
    LDA.B $08                            ;83BA71;
    SEC                                  ;83BA73;
    SBC.W $0008,X                        ;83BA74;
    BCS CODE_83BA7D                      ;83BA77;
    EOR.W #$FFFF                         ;83BA79;
    INC A                                ;83BA7C;

CODE_83BA7D:
    CMP.W #$0024                         ;83BA7D;
    BCS CODE_83BA87                      ;83BA80;
    INC.W $002C,X                        ;83BA82;
    BRA CODE_83BA99                      ;83BA85;

CODE_83BA87:
    REP #$20                             ;83BA87;
    TXA                                  ;83BA89;
    CLC                                  ;83BA8A;
    ADC.W #$0040                         ;83BA8B;
    TAX                                  ;83BA8E;
    CMP.W #$1428                         ;83BA8F;
    BCC CODE_83BA2C                      ;83BA92;

CODE_83BA94:
    SEP #$30                             ;83BA94;
    LDA.B #$00                           ;83BA96;
    RTS                                  ;83BA98;

CODE_83BA99:
    SEP #$30                             ;83BA99;
    JSL.L CODE_849086                    ;83BA9B;
    AND.B #$0F                           ;83BA9F;
    CMP.B #$04                           ;83BAA1;
    BCC CODE_83BA94                      ;83BAA3;
    STZ.B $3C                            ;83BAA5;
    LDA.B #$01                           ;83BAA7;
    RTS                                  ;83BAA9;

CODE_83BAAA:
    LDA.B $3C                            ;83BAAA;
    BEQ CODE_83BAC9                      ;83BAAC;
    DEC.B $3C                            ;83BAAE;
    LDA.B $11                            ;83BAB0;
    ASL A                                ;83BAB2;
    ASL A                                ;83BAB3;
    REP #$20                             ;83BAB4;
    LDA.W #$0002                         ;83BAB6;
    BCC CODE_83BABE                      ;83BAB9;
    LDA.W #$FFFE                         ;83BABB;

CODE_83BABE:
    CLC                                  ;83BABE;
    ADC.B $05                            ;83BABF;
    STA.B $05                            ;83BAC1;
    SEP #$20                             ;83BAC3;
    JSL.L CODE_8491BE                    ;83BAC5;

CODE_83BAC9:
    RTS                                  ;83BAC9;

CODE_83BACA:
    LDA.B #$04                           ;83BACA;
    STA.B $3D                            ;83BACC;

CODE_83BACE:
    JSL.L CODE_8282D3                    ;83BACE;
    BNE CODE_83BB35                      ;83BAD2;
    INC.W $0000,X                        ;83BAD4;
    LDA.B #$2B                           ;83BAD7;
    STA.W $000A,X                        ;83BAD9;
    LDA.B $3D                            ;83BADC;
    CLC                                  ;83BADE;
    ADC.B #$1E                           ;83BADF;
    STA.W $000B,X                        ;83BAE1;
    LDA.B #$00                           ;83BAE4;
    XBA                                  ;83BAE6;
    LDA.B $3D                            ;83BAE7;
    ASL A                                ;83BAE9;
    TAY                                  ;83BAEA;
    LDA.B $11                            ;83BAEB;
    AND.B #$70                           ;83BAED;
    STA.W $0011,X                        ;83BAEF;
    ASL A                                ;83BAF2;
    ASL A                                ;83BAF3;
    REP #$20                             ;83BAF4;
    LDA.W DATA8_86C9B0,Y                 ;83BAF6;
    BCC CODE_83BAFF                      ;83BAF9;
    EOR.W #$FFFF                         ;83BAFB;
    INC A                                ;83BAFE;

CODE_83BAFF:
    CLC                                  ;83BAFF;
    ADC.B $05                            ;83BB00;
    STA.W $0005,X                        ;83BB02;
    LDA.W DATA8_86C9BA,Y                 ;83BB05;
    CLC                                  ;83BB08;
    ADC.B $08                            ;83BB09;
    STA.W $0008,X                        ;83BB0B;
    LDA.B $10                            ;83BB0E;
    ASL A                                ;83BB10;
    ASL A                                ;83BB11;
    LDA.W DATA8_86C9C4,Y                 ;83BB12;
    BCC CODE_83BB1B                      ;83BB15;
    EOR.W #$FFFF                         ;83BB17;
    INC A                                ;83BB1A;

CODE_83BB1B:
    STA.W $001A,X                        ;83BB1B;
    LDA.W DATA8_86C9CE,Y                 ;83BB1E;
    STA.W $001C,X                        ;83BB21;
    STZ.W $000C,X                        ;83BB24;
    SEP #$20                             ;83BB27;
    STZ.W $001F,X                        ;83BB29;
    LDA.B #$40                           ;83BB2C;
    STA.W $001E,X                        ;83BB2E;
    DEC.B $3D                            ;83BB31;
    BPL CODE_83BACE                      ;83BB33;

CODE_83BB35:
    SEP #$10                             ;83BB35;
    RTS                                  ;83BB37;

CODE_83BB38:
    PHP                                  ;83BB38;
    SEP #$30                             ;83BB39;
    LDA.B #$03                           ;83BB3B;
    STA.B $3D                            ;83BB3D;
    JSL.L CODE_849086                    ;83BB3F;
    AND.B #$0F                           ;83BB43;
    STA.W $0004                          ;83BB45;

CODE_83BB48:
    JSL.L CODE_8282D3                    ;83BB48;
    BEQ CODE_83BB50                      ;83BB4C;
    PLP                                  ;83BB4E;
    RTS                                  ;83BB4F;

CODE_83BB50:
    INC.W $0000,X                        ;83BB50;
    LDA.B #$2B                           ;83BB53;
    STA.W $000A,X                        ;83BB55;
    LDA.B #$00                           ;83BB58;
    XBA                                  ;83BB5A;
    LDA.W $0004                          ;83BB5B;
    CLC                                  ;83BB5E;
    ADC.B $3D                            ;83BB5F;
    TAY                                  ;83BB61;
    LDA.W DATA8_86C9D8,Y                 ;83BB62;
    STA.W $000B,X                        ;83BB65;
    REP #$20                             ;83BB68;
    STZ.W $000C,X                        ;83BB6A;
    JSL.L CODE_849086                    ;83BB6D;
    AND.W #$000F                         ;83BB71;
    ASL A                                ;83BB74;
    TAY                                  ;83BB75;
    LDA.B $3D                            ;83BB76;
    LSR A                                ;83BB78;
    LDA.W DATA8_86C9EB,Y                 ;83BB79;
    BCC CODE_83BB82                      ;83BB7C;
    EOR.W #$FFFF                         ;83BB7E;
    INC A                                ;83BB81;

CODE_83BB82:
    STA.W $001A,X                        ;83BB82;
    JSL.L CODE_849086                    ;83BB85;
    AND.W #$000F                         ;83BB89;
    ASL A                                ;83BB8C;
    TAY                                  ;83BB8D;
    LDA.W DATA8_86CA0B,Y                 ;83BB8E;
    STA.W $001C,X                        ;83BB91;
    LDA.W $0000                          ;83BB94;
    STA.W $0005,X                        ;83BB97;
    LDA.W $0002                          ;83BB9A;
    STA.W $0008,X                        ;83BB9D;
    SEP #$20                             ;83BBA0;
    LDA.B #$40                           ;83BBA2;
    STA.W $001E,X                        ;83BBA4;
    STZ.W $001F,X                        ;83BBA7;
    DEC.B $3D                            ;83BBAA;
    BPL CODE_83BB48                      ;83BBAC;
    JSL.L CODE_8282D3                    ;83BBAE;
    BNE CODE_83BBD0                      ;83BBB2;
    INC.W $0000,X                        ;83BBB4;
    LDA.B #$22                           ;83BBB7;
    STA.W $000A,X                        ;83BBB9;
    STZ.W $000B,X                        ;83BBBC;
    STZ.W $0011,X                        ;83BBBF;
    REP #$20                             ;83BBC2;
    LDA.W $0000                          ;83BBC4;
    STA.W $0005,X                        ;83BBC7;
    LDA.W $0002                          ;83BBCA;
    STA.W $0008,X                        ;83BBCD;

CODE_83BBD0:
    PLP                                  ;83BBD0;
    RTS                                  ;83BBD1;

CODE_83BBD2:
    LDX.B $01                            ;83BBD2;
    JMP.W (PTR16_83BBD7,X)               ;83BBD4;

PTR16_83BBD7:
    dw CODE_83BBDF                       ;83BBD7;
    dw CODE_83BCA6                       ;83BBD9;
    dw CODE_83BCBF                       ;83BBDB;
    dw CODE_83BD6A                       ;83BBDD;

CODE_83BBDF:
    JSL.L CODE_82827D                    ;83BBDF;
    LDA.B $0B                            ;83BBE3;
    BEQ CODE_83BC26                      ;83BBE5;
    REP #$10                             ;83BBE7;
    LDX.W #$0E68                         ;83BBE9;

CODE_83BBEC:
    SEP #$20                             ;83BBEC;
    LDA.W $0000,X                        ;83BBEE;
    BEQ CODE_83BC0E                      ;83BBF1;
    LDA.W $000A,X                        ;83BBF3;
    CMP.B #$18                           ;83BBF6;
    BNE CODE_83BC0E                      ;83BBF8;
    LDA.W $000B,X                        ;83BBFA;
    BEQ CODE_83BC0E                      ;83BBFD;
    REP #$20                             ;83BBFF;
    TDC                                  ;83BC01;
    STA.W $0000                          ;83BC02;
    CPX.W $0000                          ;83BC05;
    BEQ CODE_83BC0E                      ;83BC08;
    JML.L CODE_828387                    ;83BC0A;

CODE_83BC0E:
    REP #$21                             ;83BC0E;
    TXA                                  ;83BC10;
    ADC.W #$0040                         ;83BC11;
    TAX                                  ;83BC14;
    CMP.W #$1228                         ;83BC15;
    BCC CODE_83BBEC                      ;83BC18;
    LDA.W #$CAA6                         ;83BC1A;
    STA.B $20                            ;83BC1D;
    SEP #$30                             ;83BC1F;
    LDA.B #$06                           ;83BC21;
    STA.B $01                            ;83BC23;
    RTL                                  ;83BC25;

CODE_83BC26:
    LDA.B #$04                           ;83BC26;
    STA.B $12                            ;83BC28;
    LDA.B #$01                           ;83BC2A;
    STA.B $27                            ;83BC2C;
    STA.B $26                            ;83BC2E;
    LDA.B #$00                           ;83BC30;
    JSL.L CODE_848F07                    ;83BC32;
    REP #$20                             ;83BC36;
    LDA.W #$CA9C                         ;83BC38;
    STA.B $20                            ;83BC3B;
    LDA.B $05                            ;83BC3D;
    CMP.W #$0C20                         ;83BC3F;
    BCS CODE_83BC49                      ;83BC42;
    CMP.W #$05E0                         ;83BC44;
    BCS CODE_83BC4D                      ;83BC47;

CODE_83BC49:
    JML.L CODE_828398                    ;83BC49;

CODE_83BC4D:
    LDA.B $05                            ;83BC4D;
    SEC                                  ;83BC4F;
    SBC.W $0BAD                          ;83BC50;
    BCS CODE_83BC59                      ;83BC53;
    EOR.W #$FFFF                         ;83BC55;
    INC A                                ;83BC58;

CODE_83BC59:
    CMP.W #$0018                         ;83BC59;
    SEP #$20                             ;83BC5C;
    BCS CODE_83BC6A                      ;83BC5E;
    JSL.L CODE_849086                    ;83BC60;
    AND.W #$C90F                         ;83BC64;
    ASL A                                ;83BC67;
    BCC CODE_83BC49                      ;83BC68;

CODE_83BC6A:
    LDA.B #$20                           ;83BC6A;
    JSL.L CODE_8088CD                    ;83BC6C;
    LDA.B #$14                           ;83BC70;
    JSL.L CODE_84A333                    ;83BC72;
    STZ.B $29                            ;83BC76;
    LDA.B #$F7                           ;83BC78;
    STA.B $2A                            ;83BC7A;

CODE_83BC7C:
    JSL.L CODE_8490A0                    ;83BC7C;
    CMP.B #$34                           ;83BC80;
    BCS CODE_83BC92                      ;83BC82;
    REP #$20                             ;83BC84;
    LDA.B $08                            ;83BC86;
    SEC                                  ;83BC88;
    SBC.W #$0010                         ;83BC89;
    STA.B $08                            ;83BC8C;
    SEP #$20                             ;83BC8E;
    BRA CODE_83BC7C                      ;83BC90;

CODE_83BC92:
    CMP.B #$34                           ;83BC92;
    BNE CODE_83BC9A                      ;83BC94;
    JML.L CODE_828398                    ;83BC96;

CODE_83BC9A:
    LDA.B #$40                           ;83BC9A;
    STA.B $1E                            ;83BC9C;
    LDA.B #$FF                           ;83BC9E;
    STA.B $2F                            ;83BCA0;
    JML.L CODE_8280B4                    ;83BCA2;

CODE_83BCA6:
    JSL.L CODE_848EEA                    ;83BCA6;
    LDA.B $0F                            ;83BCAA;
    BEQ CODE_83BD0C                      ;83BCAC;
    LDA.B #$04                           ;83BCAE;
    STA.B $01                            ;83BCB0;
    REP #$20                             ;83BCB2;
    LDA.W #$FE00                         ;83BCB4;
    STA.B $1C                            ;83BCB7;
    SEP #$20                             ;83BCB9;
    STZ.B $36                            ;83BCBB;
    BRA CODE_83BD0C                      ;83BCBD;

CODE_83BCBF:
    JSL.L CODE_848EEA                    ;83BCBF;
    JSL.L CODE_8281E8                    ;83BCC3;
    JSL.L CODE_8491BE                    ;83BCC7;
    LDA.B $2B                            ;83BCCB;
    AND.B #$04                           ;83BCCD;
    BEQ CODE_83BD0C                      ;83BCCF;
    REP #$20                             ;83BCD1;
    LDA.B $1C                            ;83BCD3;
    EOR.W #$FFFF                         ;83BCD5;
    INC A                                ;83BCD8;
    LSR A                                ;83BCD9;
    LSR A                                ;83BCDA;
    LDX.B $36                            ;83BCDB;
    BEQ CODE_83BCE4                      ;83BCDD;
    CMP.W #$0100                         ;83BCDF;
    BCC CODE_83BCEC                      ;83BCE2;

CODE_83BCE4:
    STA.B $1C                            ;83BCE4;
    INC.B $36                            ;83BCE6;
    SEP #$20                             ;83BCE8;
    BRA CODE_83BD0C                      ;83BCEA;

CODE_83BCEC:
    REP #$20                             ;83BCEC;
    LDA.W #$0227                         ;83BCEE;
    STA.W $0008                          ;83BCF1;
    LDA.B $05                            ;83BCF4;
    STA.W $0000                          ;83BCF6;
    LDA.B $08                            ;83BCF9;
    STA.W $0002                          ;83BCFB;
    SEP #$20                             ;83BCFE;
    JSL.L CODE_849111                    ;83BD00;
    JSL.L CODE_80B8D7                    ;83BD04;
    JML.L CODE_828398                    ;83BD08;

CODE_83BD0C:
    REP #$10                             ;83BD0C;
    LDX.W #$0BA8                         ;83BD0E;
    JSL.L CODE_849C0E                    ;83BD11;
    SEP #$10                             ;83BD15;
    BCC CODE_83BD3E                      ;83BD17;
    LDA.W $0C32                          ;83BD19;
    ORA.W $1F0C                          ;83BD1C;
    BNE CODE_83BD57                      ;83BD1F;
    REP #$20                             ;83BD21;
    LDA.W $0BB0                          ;83BD23;
    CMP.B $08                            ;83BD26;
    SEP #$20                             ;83BD28;
    BCC CODE_83BD33                      ;83BD2A;
    LDA.W $1F99                          ;83BD2C;
    AND.B #$01                           ;83BD2F;
    BNE CODE_83BD57                      ;83BD31;

CODE_83BD33:
    LDA.B #$01                           ;83BD33;
    STA.W $0BCE                          ;83BD35;
    JSL.L CODE_849F2A                    ;83BD38;
    BRA CODE_83BD57                      ;83BD3C;

CODE_83BD3E:
    JSL.L CODE_849B43                    ;83BD3E;
    BNE CODE_83BD57                      ;83BD42;
    JSR.W CODE_83BF21                    ;83BD44;
    BNE CODE_83BD57                      ;83BD47;
    JSL.L CODE_82806E                    ;83BD49;
    BCS CODE_83BD53                      ;83BD4D;
    JML.L CODE_8280B4                    ;83BD4F;

CODE_83BD53:
    JML.L CODE_828398                    ;83BD53;

CODE_83BD57:
    REP #$20                             ;83BD57;
    LDA.B $05                            ;83BD59;
    STA.W $0000                          ;83BD5B;
    LDA.B $08                            ;83BD5E;
    STA.W $0002                          ;83BD60;
    JSR.W CODE_83BEC3                    ;83BD63;
    JML.L CODE_828398                    ;83BD66;

CODE_83BD6A:
    REP #$10                             ;83BD6A;
    LDX.W #$1228                         ;83BD6C;

CODE_83BD6F:
    LDA.W $0000,X                        ;83BD6F;
    BEQ CODE_83BD7E                      ;83BD72;
    LDA.W $000E,X                        ;83BD74;
    BEQ CODE_83BD7E                      ;83BD77;
    LDA.W $0030,X                        ;83BD79;
    BEQ CODE_83BD81                      ;83BD7C;

CODE_83BD7E:
    JMP.W CODE_83BE25                    ;83BD7E;

CODE_83BD81:
    REP #$20                             ;83BD81;
    LDA.W $0020,X                        ;83BD83;
    TAY                                  ;83BD86;
    REP #$20                             ;83BD87;
    LDA.W $0010,X                        ;83BD89;
    ASL A                                ;83BD8C;
    ASL A                                ;83BD8D;
    LDA.W $0000,Y                        ;83BD8E;
    BCC CODE_83BD97                      ;83BD91;
    EOR.W #$00FF                         ;83BD93;
    INC A                                ;83BD96;

CODE_83BD97:
    AND.W #$00FF                         ;83BD97;
    BIT.W #$0080                         ;83BD9A;
    BEQ CODE_83BDA2                      ;83BD9D;
    ORA.W #$FF00                         ;83BD9F;

CODE_83BDA2:
    CLC                                  ;83BDA2;
    ADC.W $0005,X                        ;83BDA3;
    AND.W #$FFF0                         ;83BDA6;
    SEC                                  ;83BDA9;
    SBC.W #$0008                         ;83BDAA;
    STA.B $05                            ;83BDAD;
    LDA.W $0001,Y                        ;83BDAF;
    AND.W #$00FF                         ;83BDB2;
    BIT.W #$0080                         ;83BDB5;
    BEQ CODE_83BDBD                      ;83BDB8;
    ORA.W #$FF00                         ;83BDBA;

CODE_83BDBD:
    CLC                                  ;83BDBD;
    ADC.W $0008,X                        ;83BDBE;
    AND.W #$FFF0                         ;83BDC1;
    SEC                                  ;83BDC4;
    SBC.W #$0008                         ;83BDC5;
    STA.B $08                            ;83BDC8;
    JSR.W CODE_83BE4B                    ;83BDCA;
    LDA.B $05                            ;83BDCD;
    CLC                                  ;83BDCF;
    ADC.W #$0010                         ;83BDD0;
    STA.B $05                            ;83BDD3;
    JSR.W CODE_83BE4B                    ;83BDD5;
    LDA.B $05                            ;83BDD8;
    CLC                                  ;83BDDA;
    ADC.W #$0010                         ;83BDDB;
    STA.B $05                            ;83BDDE;
    JSR.W CODE_83BE4B                    ;83BDE0;
    LDA.B $08                            ;83BDE3;
    CLC                                  ;83BDE5;
    ADC.W #$0010                         ;83BDE6;
    STA.B $08                            ;83BDE9;
    JSR.W CODE_83BE4B                    ;83BDEB;
    LDA.B $05                            ;83BDEE;
    SEC                                  ;83BDF0;
    SBC.W #$0010                         ;83BDF1;
    STA.B $05                            ;83BDF4;
    JSR.W CODE_83BE4B                    ;83BDF6;
    LDA.B $05                            ;83BDF9;
    SEC                                  ;83BDFB;
    SBC.W #$0010                         ;83BDFC;
    STA.B $05                            ;83BDFF;
    JSR.W CODE_83BE4B                    ;83BE01;
    LDA.B $08                            ;83BE04;
    CLC                                  ;83BE06;
    ADC.W #$0010                         ;83BE07;
    STA.B $08                            ;83BE0A;
    JSR.W CODE_83BE4B                    ;83BE0C;
    LDA.B $05                            ;83BE0F;
    CLC                                  ;83BE11;
    ADC.W #$0010                         ;83BE12;
    STA.B $05                            ;83BE15;
    JSR.W CODE_83BE4B                    ;83BE17;
    LDA.B $05                            ;83BE1A;
    CLC                                  ;83BE1C;
    ADC.W #$0010                         ;83BE1D;
    STA.B $05                            ;83BE20;
    JSR.W CODE_83BE4B                    ;83BE22;

CODE_83BE25:
    REP #$20                             ;83BE25;
    TXA                                  ;83BE27;
    CLC                                  ;83BE28;
    ADC.W #$0040                         ;83BE29;
    TAX                                  ;83BE2C;
    SEP #$20                             ;83BE2D;
    CPX.W #$1428                         ;83BE2F;
    BCS CODE_83BE37                      ;83BE32;
    JMP.W CODE_83BD6F                    ;83BE34;

CODE_83BE37:
    REP #$20                             ;83BE37;
    LDA.W $1E4D                          ;83BE39;
    CMP.W #$0440                         ;83BE3C;
    BCC CODE_83BE47                      ;83BE3F;
    CMP.W #$0CA0                         ;83BE41;
    BCS CODE_83BE47                      ;83BE44;
    RTL                                  ;83BE46;

CODE_83BE47:
    JML.L CODE_828387                    ;83BE47;

CODE_83BE4B:
    PHP                                  ;83BE4B;
    REP #$30                             ;83BE4C;
    STX.B $34                            ;83BE4E;
    LDA.W $0005,X                        ;83BE50;
    CMP.W #$0C50                         ;83BE53;
    BCS CODE_83BEBF                      ;83BE56;
    CMP.W #$05B0                         ;83BE58;
    BCC CODE_83BEBF                      ;83BE5B;
    LDA.W $0008,X                        ;83BE5D;
    CMP.W #$02F0                         ;83BE60;
    BCS CODE_83BEBF                      ;83BE63;
    CMP.W #$0250                         ;83BE65;
    BCC CODE_83BEBF                      ;83BE68;
    SEP #$20                             ;83BE6A;
    JSL.L CODE_849C0E                    ;83BE6C;
    BCC CODE_83BEBF                      ;83BE70;
    JSL.L CODE_84A544                    ;83BE72;
    PHD                                  ;83BE76;
    REP #$20                             ;83BE77;
    LDA.W #$0000                         ;83BE79;
    TCD                                  ;83BE7C;
    JSL.L CODE_849156                    ;83BE7D;
    LDA.L $7E2000,X                      ;83BE81;
    TAY                                  ;83BE85;
    LDA.W $0B92                          ;83BE86;
    STA.B $10                            ;83BE89;
    LDA.W $0B94                          ;83BE8B;
    STA.B $12                            ;83BE8E;
    LDA.B [$10],Y                        ;83BE90;
    SEP #$20                             ;83BE92;
    PLD                                  ;83BE94;
    LDX.B $34                            ;83BE95;
    CMP.B #$34                           ;83BE97;
    BNE CODE_83BEBF                      ;83BE99;
    LDA.B #$06                           ;83BE9B;
    STA.W $0001,X                        ;83BE9D;
    REP #$20                             ;83BEA0;
    LDA.W $0000                          ;83BEA2;
    STA.W $0033,X                        ;83BEA5;
    LDA.W $0002                          ;83BEA8;
    STA.W $0035,X                        ;83BEAB;
    LDA.W #$0226                         ;83BEAE;
    STA.W $0008                          ;83BEB1;
    JSL.L CODE_849111                    ;83BEB4;
    JSL.L CODE_80B8D7                    ;83BEB8;
    JSR.W CODE_83BEC3                    ;83BEBC;

CODE_83BEBF:
    PLP                                  ;83BEBF;
    LDX.B $34                            ;83BEC0;
    RTS                                  ;83BEC2;

CODE_83BEC3:
    PHP                                  ;83BEC3;
    SEP #$30                             ;83BEC4;
    LDY.B #$03                           ;83BEC6;
    JSL.L CODE_849086                    ;83BEC8;
    AND.B #$03                           ;83BECC;
    ASL A                                ;83BECE;
    ASL A                                ;83BECF;
    STA.B $33                            ;83BED0;

CODE_83BED2:
    JSL.L CODE_8282D3                    ;83BED2;
    BNE CODE_83BF1F                      ;83BED6;
    INC.W $0000,X                        ;83BED8;
    LDA.B #$2B                           ;83BEDB;
    STA.W $000A,X                        ;83BEDD;
    PHY                                  ;83BEE0;
    TYA                                  ;83BEE1;
    CLC                                  ;83BEE2;
    ADC.B $33                            ;83BEE3;
    TAY                                  ;83BEE5;
    LDA.W DATA8_86CAEA,Y                 ;83BEE6;
    STA.W $000B,X                        ;83BEE9;
    LDA.B $11                            ;83BEEC;
    STA.W $0011,X                        ;83BEEE;
    LDA.B #$40                           ;83BEF1;
    STA.W $001E,X                        ;83BEF3;
    STZ.W $001F,X                        ;83BEF6;
    TYA                                  ;83BEF9;
    ASL A                                ;83BEFA;
    TAY                                  ;83BEFB;
    REP #$20                             ;83BEFC;
    LDA.W DATA8_86CAAA,Y                 ;83BEFE;
    STA.W $001A,X                        ;83BF01;
    LDA.W DATA8_86CACA,Y                 ;83BF04;
    STA.W $001C,X                        ;83BF07;
    LDA.W $0000                          ;83BF0A;
    STA.W $0005,X                        ;83BF0D;
    LDA.W $0002                          ;83BF10;
    STA.W $0008,X                        ;83BF13;
    STZ.W $000C,X                        ;83BF16;
    SEP #$20                             ;83BF19;
    PLY                                  ;83BF1B;
    DEY                                  ;83BF1C;
    BPL CODE_83BED2                      ;83BF1D;

CODE_83BF1F:
    PLP                                  ;83BF1F;
    RTS                                  ;83BF20;

CODE_83BF21:
    LDA.B #$34                           ;83BF21;
    STA.B $0A                            ;83BF23;
    JSL.L CODE_84A1D0                    ;83BF25;
    LDA.B #$18                           ;83BF29;
    STA.B $0A                            ;83BF2B;
    CPY.B #$00                           ;83BF2D;
    BEQ CODE_83BF41                      ;83BF2F;
    REP #$10                             ;83BF31;
    LDX.W $0000                          ;83BF33;
    JSL.L CODE_849C0E                    ;83BF36;
    SEP #$10                             ;83BF3A;
    BCC CODE_83BF41                      ;83BF3C;
    LDA.B #$01                           ;83BF3E;
    RTS                                  ;83BF40;

CODE_83BF41:
    LDA.B #$00                           ;83BF41;
    RTS                                  ;83BF43;

CODE_83BF44:
    LDA.L $7F8348                        ;83BF44;
    TSB.B $11                            ;83BF48;
    LDX.B $01                            ;83BF4A;
    JSR.W (PTR16_83BFCC,X)               ;83BF4C;
    LDA.B #$09                           ;83BF4F;
    STA.B $28                            ;83BF51;
    LDA.B $27                            ;83BF53;
    STA.B $0B                            ;83BF55;
    JSL.L CODE_849B03                    ;83BF57;
    JSL.L CODE_849B43                    ;83BF5B;
    BEQ CODE_83BF7D                      ;83BF5F;
    LDA.B #$0E                           ;83BF61;
    TRB.B $11                            ;83BF63;
    LDA.B $2C                            ;83BF65;
    BEQ CODE_83BF6F                      ;83BF67;
    LDA.B $0B                            ;83BF69;
    STA.B $27                            ;83BF6B;
    BRA CODE_83BF81                      ;83BF6D;

CODE_83BF6F:
    LDA.B #$06                           ;83BF6F;
    STA.B $2C                            ;83BF71;
    LDA.B $01                            ;83BF73;
    BNE CODE_83BF7D                      ;83BF75;
    LDA.B #$02                           ;83BF77;
    STA.B $01                            ;83BF79;
    STZ.B $02                            ;83BF7B;

CODE_83BF7D:
    LDA.B $2C                            ;83BF7D;
    BEQ CODE_83BF83                      ;83BF7F;

CODE_83BF81:
    DEC.B $2C                            ;83BF81;

CODE_83BF83:
    REP #$20                             ;83BF83;
    LDA.B $0F                            ;83BF85;
    AND.W #$007F                         ;83BF87;
    ASL A                                ;83BF8A;
    ASL A                                ;83BF8B;
    ADC.W #$CE83                         ;83BF8C;
    STA.B $20                            ;83BF8F;
    SEP #$20                             ;83BF91;
    LDA.B $26                            ;83BF93;
    PHA                                  ;83BF95;
    LDA.B #$7F                           ;83BF96;
    STA.B $26                            ;83BF98;
    STZ.B $28                            ;83BF9A;
    JSL.L CODE_849B03                    ;83BF9C;
    JSL.L CODE_849B43                    ;83BFA0;
    PLA                                  ;83BFA4;
    STA.B $26                            ;83BFA5;
    LDA.B $3E                            ;83BFA7;
    BNE CODE_83BFC4                      ;83BFA9;
    LDA.B $27                            ;83BFAB;
    AND.B #$7F                           ;83BFAD;
    BNE CODE_83BFC4                      ;83BFAF;
    INC.B $3E                            ;83BFB1;
    LDA.B $01                            ;83BFB3;
    CLC                                  ;83BFB5;
    ADC.B #$04                           ;83BFB6;
    STA.B $01                            ;83BFB8;
    LDA.B #$21                           ;83BFBA;
    JSL.L CODE_8088A2                    ;83BFBC;
    LDA.B #$B4                           ;83BFC0;
    STA.B $33                            ;83BFC2;

CODE_83BFC4:
    REP #$20                             ;83BFC4;
    LDA.W #$CE79                         ;83BFC6;
    STA.B $20                            ;83BFC9;
    RTL                                  ;83BFCB;

PTR16_83BFCC:
    dw CODE_83BFD6                       ;83BFCC;
    dw CODE_83C02E                       ;83BFCE;
    dw CODE_83C06A                       ;83BFD0;
    dw CODE_83C0A4                       ;83BFD2;
    dw CODE_83C092                       ;83BFD4;

CODE_83BFD6:
    LDA.B $02                            ;83BFD6;
    BNE CODE_83C00E                      ;83BFD8;
    JSL.L CODE_82827D                    ;83BFDA;
    LDA.B #$40                           ;83BFDE;
    TSB.B $11                            ;83BFE0;
    STZ.B $3E                            ;83BFE2;
    LDA.B #$00                           ;83BFE4;
    JSL.L CODE_848F07                    ;83BFE6;
    STZ.B $28                            ;83BFEA;
    LDA.B #$3C                           ;83BFEC;
    STA.B $27                            ;83BFEE;
    LDA.B #$02                           ;83BFF0;
    STA.B $26                            ;83BFF2;
    LDA.B #$04                           ;83BFF4;
    STA.B $12                            ;83BFF6;
    REP #$20                             ;83BFF8;
    LDA.W #$CE79                         ;83BFFA;
    STA.B $20                            ;83BFFD;
    LDA.W #$0140                         ;83BFFF;
    STA.B $1A                            ;83C002;
    SEP #$20                             ;83C004;
    LDA.B #$40                           ;83C006;
    STA.B $1E                            ;83C008;
    INC.B $02                            ;83C00A;
    STZ.B $01                            ;83C00C;

CODE_83C00E:
    REP #$20                             ;83C00E;
    LDA.B $08                            ;83C010;
    SEC                                  ;83C012;
    SBC.W $0BB0                          ;83C013;
    BCS CODE_83C01C                      ;83C016;
    EOR.W #$FFFF                         ;83C018;
    INC A                                ;83C01B;

CODE_83C01C:
    CMP.W #$0020                         ;83C01C;
    SEP #$20                             ;83C01F;
    BCS CODE_83C029                      ;83C021;
    LDA.B #$02                           ;83C023;
    STA.B $01                            ;83C025;
    STZ.B $02                            ;83C027;

CODE_83C029:
    JSL.L CODE_82808F                    ;83C029;
    RTS                                  ;83C02D;

CODE_83C02E:
    JSL.L CODE_848EEA                    ;83C02E;
    JSL.L CODE_82808F                    ;83C032;
    LDA.B $17                            ;83C036;
    BPL CODE_83C04D                      ;83C038;
    AND.B #$7F                           ;83C03A;
    STA.B $17                            ;83C03C;
    JSR.W CODE_83C0D7                    ;83C03E;
    LDA.B $17                            ;83C041;
    CMP.B #$03                           ;83C043;
    BNE CODE_83C04D                      ;83C045;
    LDA.B #$42                           ;83C047;
    JSL.L CODE_8088A2                    ;83C049;

CODE_83C04D:
    JSL.L CODE_82823E                    ;83C04D;
    JSL.L CODE_8491BE                    ;83C051;
    LDA.B $2B                            ;83C055;
    BNE CODE_83C067                      ;83C057;
    LDA.B #$04                           ;83C059;
    STA.B $01                            ;83C05B;
    STA.B $2F                            ;83C05D;
    REP #$20                             ;83C05F;
    STZ.B $1A                            ;83C061;
    STZ.B $1C                            ;83C063;
    SEP #$20                             ;83C065;

CODE_83C067:
    JMP.W CODE_83C089                    ;83C067;

CODE_83C06A:
    JSL.L CODE_8281E8                    ;83C06A;
    JSL.L CODE_8491BE                    ;83C06E;
    JSL.L CODE_82808F                    ;83C072;
    LDA.B $2B                            ;83C076;
    BEQ CODE_83C089                      ;83C078;
    LDA.B #$02                           ;83C07A;
    STA.B $01                            ;83C07C;
    STZ.B $2F                            ;83C07E;
    REP #$20                             ;83C080;
    LDA.W #$0140                         ;83C082;
    STA.B $1A                            ;83C085;
    SEP #$20                             ;83C087;

CODE_83C089:
    LDA.B $2E                            ;83C089;
    CMP.B #$3F                           ;83C08B;
    BNE CODE_83C091                      ;83C08D;
    STZ.B $27                            ;83C08F;

CODE_83C091:
    RTS                                  ;83C091;

CODE_83C092:
    JSL.L CODE_8281E8                    ;83C092;
    JSL.L CODE_8491BE                    ;83C096;
    LDA.B $2B                            ;83C09A;
    AND.B #$04                           ;83C09C;
    BEQ CODE_83C0A4                      ;83C09E;
    LDA.B #$06                           ;83C0A0;
    STA.B $01                            ;83C0A2;

CODE_83C0A4:
    DEC.B $33                            ;83C0A4;
    BEQ CODE_83C0D2                      ;83C0A6;
    LDA.B $33                            ;83C0A8;
    LSR A                                ;83C0AA;
    BCC CODE_83C0B1                      ;83C0AB;
    JSL.L CODE_82808F                    ;83C0AD;

CODE_83C0B1:
    REP #$20                             ;83C0B1;
    LDA.W #$FFE0                         ;83C0B3;
    STA.W $0000                          ;83C0B6;
    STA.W $0002                          ;83C0B9;
    LDA.W #$003F                         ;83C0BC;
    STA.W $0004                          ;83C0BF;
    STA.W $0006                          ;83C0C2;
    LDA.W #$0003                         ;83C0C5;
    STA.W $0008                          ;83C0C8;
    JSL.L CODE_84A4C6                    ;83C0CB;
    SEP #$20                             ;83C0CF;
    RTS                                  ;83C0D1;

CODE_83C0D2:
    JSL.L CODE_828398                    ;83C0D2;
    RTS                                  ;83C0D6;

CODE_83C0D7:
    JSR.W CODE_83C2DD                    ;83C0D7;
    LDA.B $0F                            ;83C0DA;
    AND.B #$7F                           ;83C0DC;
    ASL A                                ;83C0DE;
    TAX                                  ;83C0DF;
    LDA.W DATA8_86CE93,X                 ;83C0E0;
    STA.B $35                            ;83C0E3;
    LDA.W DATA8_86CE94,X                 ;83C0E5;
    STA.B $36                            ;83C0E8;
    JSR.W CODE_83C132                    ;83C0EA;
    LDA.B #$04                           ;83C0ED;
    STA.B $32                            ;83C0EF;

CODE_83C0F1:
    LDA.B #$05                           ;83C0F1;
    STA.B $31                            ;83C0F3;

CODE_83C0F5:
    LDA.B $32                            ;83C0F5;
    ASL A                                ;83C0F7;
    ASL A                                ;83C0F8;
    ASL A                                ;83C0F9;
    ADC.B $31                            ;83C0FA;
    STA.B $3A                            ;83C0FC;
    TAX                                  ;83C0FE;
    LDA.L $7FF200,X                      ;83C0FF;
    BIT.B #$40                           ;83C103;
    BEQ CODE_83C129                      ;83C105;
    BIT.B #$80                           ;83C107;
    BNE CODE_83C122                      ;83C109;
    LDA.B $31                            ;83C10B;
    ASL A                                ;83C10D;
    ASL A                                ;83C10E;
    ASL A                                ;83C10F;
    ASL A                                ;83C110;
    ADC.B $35                            ;83C111;
    STA.B $29                            ;83C113;
    LDA.B $32                            ;83C115;
    ASL A                                ;83C117;
    ASL A                                ;83C118;
    ASL A                                ;83C119;
    ASL A                                ;83C11A;
    ADC.B $36                            ;83C11B;
    STA.B $2A                            ;83C11D;
    JSR.W CODE_83C2F7                    ;83C11F;

CODE_83C122:
    BIT.B #$01                           ;83C122;
    BNE CODE_83C129                      ;83C124;
    JSR.W CODE_83C1D8                    ;83C126;

CODE_83C129:
    DEC.B $31                            ;83C129;
    BNE CODE_83C0F5                      ;83C12B;
    DEC.B $32                            ;83C12D;
    BNE CODE_83C0F1                      ;83C12F;
    RTS                                  ;83C131;

CODE_83C132:
    STZ.B $3D                            ;83C132;
    LDA.B #$02                           ;83C134;
    STA.B $31                            ;83C136;
    STA.B $32                            ;83C138;
    LDA.B $35                            ;83C13A;
    CLC                                  ;83C13C;
    ADC.B #$20                           ;83C13D;
    STA.B $29                            ;83C13F;
    LDA.B $36                            ;83C141;
    CLC                                  ;83C143;
    ADC.B #$20                           ;83C144;
    STA.B $2A                            ;83C146;
    JSR.W CODE_83C17D                    ;83C148;
    JSR.W CODE_83C17D                    ;83C14B;
    JSR.W CODE_83C17D                    ;83C14E;
    LDA.B #$02                           ;83C151;
    STA.B $31                            ;83C153;
    INC.B $32                            ;83C155;
    LDA.B $35                            ;83C157;
    CLC                                  ;83C159;
    ADC.B #$20                           ;83C15A;
    STA.B $29                            ;83C15C;
    LDA.B $2A                            ;83C15E;
    CLC                                  ;83C160;
    ADC.B #$10                           ;83C161;
    STA.B $2A                            ;83C163;
    JSR.W CODE_83C17D                    ;83C165;
    JSR.W CODE_83C17D                    ;83C168;
    JSR.W CODE_83C17D                    ;83C16B;
    LDA.B $3D                            ;83C16E;
    BEQ CODE_83C17C                      ;83C170;
    LDA.B #$04                           ;83C172;
    LDX.B #$02                           ;83C174;
    LDY.B #$02                           ;83C176;
    JSL.L CODE_84A33C                    ;83C178;

CODE_83C17C:
    RTS                                  ;83C17C;

CODE_83C17D:
    LDA.B $32                            ;83C17D;
    ASL A                                ;83C17F;
    ASL A                                ;83C180;
    ASL A                                ;83C181;
    ADC.B $31                            ;83C182;
    STA.B $3A                            ;83C184;
    TAX                                  ;83C186;
    LDA.L $7FF200,X                      ;83C187;
    ORA.B #$80                           ;83C18B;
    STA.L $7FF200,X                      ;83C18D;
    JSL.L CODE_8490A0                    ;83C191;
    CMP.B #$34                           ;83C195;
    BCC CODE_83C1CE                      ;83C197;
    PHB                                  ;83C199;
    LDA.B #$7F                           ;83C19A;
    PHA                                  ;83C19C;
    PLB                                  ;83C19D;
    LDX.B $3A                            ;83C19E;
    LDA.B #$40                           ;83C1A0;
    ORA.W $F200,X                        ;83C1A2;
    STA.W $F200,X                        ;83C1A5;
    LDA.B #$40                           ;83C1A8;
    ORA.W $F1FF,X                        ;83C1AA;
    STA.W $F1FF,X                        ;83C1AD;
    LDA.B #$40                           ;83C1B0;
    ORA.W $F201,X                        ;83C1B2;
    STA.W $F201,X                        ;83C1B5;
    LDA.B #$40                           ;83C1B8;
    ORA.W $F1F8,X                        ;83C1BA;
    STA.W $F1F8,X                        ;83C1BD;
    LDA.B #$40                           ;83C1C0;
    ORA.W $F208,X                        ;83C1C2;
    STA.W $F208,X                        ;83C1C5;
    PLB                                  ;83C1C8;
    JSR.W CODE_83C316                    ;83C1C9;
    INC.B $3D                            ;83C1CC;

CODE_83C1CE:
    LDA.B $29                            ;83C1CE;
    CLC                                  ;83C1D0;
    ADC.B #$10                           ;83C1D1;
    STA.B $29                            ;83C1D3;
    INC.B $31                            ;83C1D5;
    RTS                                  ;83C1D7;

CODE_83C1D8:
    STZ.B $34                            ;83C1D8;
    LDX.B $3A                            ;83C1DA;
    LDA.L $7FF1FF,X                      ;83C1DC;
    BMI CODE_83C200                      ;83C1E0;
    LDA.B $31                            ;83C1E2;
    ASL A                                ;83C1E4;
    ASL A                                ;83C1E5;
    ASL A                                ;83C1E6;
    ASL A                                ;83C1E7;
    CLC                                  ;83C1E8;
    ADC.B $35                            ;83C1E9;
    SEC                                  ;83C1EB;
    SBC.B #$10                           ;83C1EC;
    STA.B $29                            ;83C1EE;
    LDA.B $32                            ;83C1F0;
    ASL A                                ;83C1F2;
    ASL A                                ;83C1F3;
    ASL A                                ;83C1F4;
    ASL A                                ;83C1F5;
    CLC                                  ;83C1F6;
    ADC.B $36                            ;83C1F7;
    STA.B $2A                            ;83C1F9;
    DEX                                  ;83C1FB;
    JSR.W CODE_83C2F7                    ;83C1FC;
    INX                                  ;83C1FF;

CODE_83C200:
    AND.B #$01                           ;83C200;
    TSB.B $34                            ;83C202;
    ASL.B $34                            ;83C204;
    LDA.L $7FF201,X                      ;83C206;
    BMI CODE_83C22A                      ;83C20A;
    LDA.B $31                            ;83C20C;
    ASL A                                ;83C20E;
    ASL A                                ;83C20F;
    ASL A                                ;83C210;
    ASL A                                ;83C211;
    CLC                                  ;83C212;
    ADC.B $35                            ;83C213;
    CLC                                  ;83C215;
    ADC.B #$10                           ;83C216;
    STA.B $29                            ;83C218;
    LDA.B $32                            ;83C21A;
    ASL A                                ;83C21C;
    ASL A                                ;83C21D;
    ASL A                                ;83C21E;
    ASL A                                ;83C21F;
    CLC                                  ;83C220;
    ADC.B $36                            ;83C221;
    STA.B $2A                            ;83C223;
    INX                                  ;83C225;
    JSR.W CODE_83C2F7                    ;83C226;
    DEX                                  ;83C229;

CODE_83C22A:
    AND.B #$01                           ;83C22A;
    TSB.B $34                            ;83C22C;
    ASL.B $34                            ;83C22E;
    LDA.L $7FF1F8,X                      ;83C230;
    BMI CODE_83C259                      ;83C234;
    LDA.B $31                            ;83C236;
    ASL A                                ;83C238;
    ASL A                                ;83C239;
    ASL A                                ;83C23A;
    ASL A                                ;83C23B;
    CLC                                  ;83C23C;
    ADC.B $35                            ;83C23D;
    STA.B $29                            ;83C23F;
    LDA.B $32                            ;83C241;
    ASL A                                ;83C243;
    ASL A                                ;83C244;
    ASL A                                ;83C245;
    ASL A                                ;83C246;
    CLC                                  ;83C247;
    ADC.B $36                            ;83C248;
    SEC                                  ;83C24A;
    SBC.B #$10                           ;83C24B;
    STA.B $2A                            ;83C24D;
    PHX                                  ;83C24F;
    TXA                                  ;83C250;
    SEC                                  ;83C251;
    SBC.B #$08                           ;83C252;
    TAX                                  ;83C254;
    JSR.W CODE_83C2F7                    ;83C255;
    PLX                                  ;83C258;

CODE_83C259:
    AND.B #$01                           ;83C259;
    TSB.B $34                            ;83C25B;
    ASL.B $34                            ;83C25D;
    LDA.L $7FF208,X                      ;83C25F;
    BMI CODE_83C286                      ;83C263;
    LDA.B $31                            ;83C265;
    ASL A                                ;83C267;
    ASL A                                ;83C268;
    ASL A                                ;83C269;
    ASL A                                ;83C26A;
    CLC                                  ;83C26B;
    ADC.B $35                            ;83C26C;
    STA.B $29                            ;83C26E;
    LDA.B $32                            ;83C270;
    ASL A                                ;83C272;
    ASL A                                ;83C273;
    ASL A                                ;83C274;
    ASL A                                ;83C275;
    CLC                                  ;83C276;
    ADC.B $36                            ;83C277;
    CLC                                  ;83C279;
    ADC.B #$10                           ;83C27A;
    STA.B $2A                            ;83C27C;
    TXA                                  ;83C27E;
    CLC                                  ;83C27F;
    ADC.B #$08                           ;83C280;
    TAX                                  ;83C282;
    JSR.W CODE_83C2F7                    ;83C283;

CODE_83C286:
    AND.B #$01                           ;83C286;
    ORA.B $34                            ;83C288;
    STA.B $34                            ;83C28A;
    ASL A                                ;83C28C;
    TAX                                  ;83C28D;
    LDA.B $31                            ;83C28E;
    ASL A                                ;83C290;
    ASL A                                ;83C291;
    ASL A                                ;83C292;
    ASL A                                ;83C293;
    CLC                                  ;83C294;
    ADC.B $35                            ;83C295;
    STA.B $29                            ;83C297;
    LDA.B $32                            ;83C299;
    ASL A                                ;83C29B;
    ASL A                                ;83C29C;
    ASL A                                ;83C29D;
    ASL A                                ;83C29E;
    CLC                                  ;83C29F;
    ADC.B $36                            ;83C2A0;
    STA.B $2A                            ;83C2A2;
    REP #$20                             ;83C2A4;
    LDA.W DATA8_86CE9B,X                 ;83C2A6;
    STA.W $0008                          ;83C2A9;
    LDA.B $29                            ;83C2AC;
    AND.W #$00FF                         ;83C2AE;
    BIT.W #$0080                         ;83C2B1;
    BEQ CODE_83C2B9                      ;83C2B4;
    ORA.W #$FF00                         ;83C2B6;

CODE_83C2B9:
    CLC                                  ;83C2B9;
    ADC.B $05                            ;83C2BA;
    STA.W $0000                          ;83C2BC;
    LDA.B $2A                            ;83C2BF;
    AND.W #$00FF                         ;83C2C1;
    BIT.W #$0080                         ;83C2C4;
    BEQ CODE_83C2CC                      ;83C2C7;
    ORA.W #$FF00                         ;83C2C9;

CODE_83C2CC:
    CLC                                  ;83C2CC;
    ADC.B $08                            ;83C2CD;
    STA.W $0002                          ;83C2CF;
    SEP #$20                             ;83C2D2;
    JSL.L CODE_849111                    ;83C2D4;
    JSL.L CODE_80B8D7                    ;83C2D8;
    RTS                                  ;83C2DC;

CODE_83C2DD:
    PHB                                  ;83C2DD;
    LDA.B #$7F                           ;83C2DE;
    PHA                                  ;83C2E0;
    PLB                                  ;83C2E1;
    STZ.W $F200                          ;83C2E2;
    REP #$30                             ;83C2E5;
    LDX.W #$F200                         ;83C2E7;
    LDY.W #$F201                         ;83C2EA;
    LDA.W #$002F                         ;83C2ED;
    MVN $7F,$7F                          ;83C2F0;
    PLB                                  ;83C2F3;
    SEP #$30                             ;83C2F4;
    RTS                                  ;83C2F6;

CODE_83C2F7:
    PHX                                  ;83C2F7;
    JSL.L CODE_8490A0                    ;83C2F8;
    PLX                                  ;83C2FC;
    CMP.B #$34                           ;83C2FD;
    BCC CODE_83C30B                      ;83C2FF;
    LDA.L $7FF200,X                      ;83C301;
    ORA.B #$01                           ;83C305;
    STA.L $7FF200,X                      ;83C307;

CODE_83C30B:
    LDA.L $7FF200,X                      ;83C30B;
    ORA.B #$80                           ;83C30F;
    STA.L $7FF200,X                      ;83C311;
    RTS                                  ;83C315;

CODE_83C316:
    LDA.B #$03                           ;83C316;
    STA.B $3B                            ;83C318;
    JSL.L CODE_849086                    ;83C31A;
    AND.B #$3C                           ;83C31E;
    STA.B $3C                            ;83C320;

CODE_83C322:
    JSL.L CODE_8282D3                    ;83C322;
    BNE CODE_83C384                      ;83C326;
    INC.W $0000,X                        ;83C328;
    LDA.B $11                            ;83C32B;
    STA.W $0011,X                        ;83C32D;
    LDA.B $18                            ;83C330;
    STA.W $0018,X                        ;83C332;
    LDA.B #$23                           ;83C335;
    STA.W $000A,X                        ;83C337;
    REP #$20                             ;83C33A;
    LDA.B $29                            ;83C33C;
    AND.W #$00FF                         ;83C33E;
    BIT.W #$0080                         ;83C341;
    BEQ CODE_83C349                      ;83C344;
    ORA.W #$FF00                         ;83C346;

CODE_83C349:
    CLC                                  ;83C349;
    ADC.B $05                            ;83C34A;
    AND.W #$FFF0                         ;83C34C;
    CLC                                  ;83C34F;
    ADC.W #$0008                         ;83C350;
    STA.W $0005,X                        ;83C353;
    LDA.B $2A                            ;83C356;
    AND.W #$00FF                         ;83C358;
    BIT.W #$0080                         ;83C35B;
    BEQ CODE_83C363                      ;83C35E;
    ORA.W #$FF00                         ;83C360;

CODE_83C363:
    CLC                                  ;83C363;
    ADC.B $08                            ;83C364;
    AND.W #$FFF0                         ;83C366;
    CLC                                  ;83C369;
    ADC.W #$0008                         ;83C36A;
    STA.W $0008,X                        ;83C36D;
    LDA.B $3B                            ;83C370;
    ADC.B $3C                            ;83C372;
    AND.W #$00FF                         ;83C374;
    TAY                                  ;83C377;
    SEP #$20                             ;83C378;
    LDA.W DATA8_86CEBB,Y                 ;83C37A;
    STA.W $000B,X                        ;83C37D;
    DEC.B $3B                            ;83C380;
    BPL CODE_83C322                      ;83C382;

CODE_83C384:
    SEP #$10                             ;83C384;
    RTS                                  ;83C386;

CODE_83C387:
    LDA.B $33                            ;83C387;
    TSB.B $11                            ;83C389;
    LDX.B $01                            ;83C38B;
    JSR.W (PTR16_83C3C7,X)               ;83C38D;
    REP #$20                             ;83C390;
    LDA.B $0F                            ;83C392;
    AND.W #$000F                         ;83C394;
    CLC                                  ;83C397;
    ADC.W #$CF23                         ;83C398;
    STA.B $20                            ;83C39B;
    SEP #$20                             ;83C39D;
    JSL.L CODE_849B03                    ;83C39F;
    JSL.L CODE_849B43                    ;83C3A3;
    BEQ CODE_83C3BD                      ;83C3A7;
    BPL CODE_83C3B9                      ;83C3A9;
    JSL.L CODE_84A4AB                    ;83C3AB;
    LDA.B #$01                           ;83C3AF;
    JSL.L CODE_84A37F                    ;83C3B1;

CODE_83C3B5:
    JML.L CODE_828387                    ;83C3B5;

CODE_83C3B9:
    LDA.B #$0E                           ;83C3B9;
    TRB.B $11                            ;83C3BB;

CODE_83C3BD:
    JSL.L CODE_82806E                    ;83C3BD;
    BCS CODE_83C3B5                      ;83C3C1;
    JML.L CODE_8280B4                    ;83C3C3;

PTR16_83C3C7:
    dw CODE_83C3CF                       ;83C3C7;
    dw CODE_83C3EE                       ;83C3C9;
    dw CODE_83C441                       ;83C3CB;
    dw CODE_83C4B1                       ;83C3CD;

CODE_83C3CF:
    JSL.L CODE_82827D                    ;83C3CF;
    LDA.B $11                            ;83C3D3;
    AND.B #$0E                           ;83C3D5;
    STA.B $33                            ;83C3D7;
    LDA.B #$02                           ;83C3D9;
    STA.B $27                            ;83C3DB;
    LDA.B #$02                           ;83C3DD;
    STA.B $26                            ;83C3DF;
    STZ.B $2F                            ;83C3E1;
    LDA.B #$00                           ;83C3E3;
    JSL.L CODE_848F07                    ;83C3E5;
    LDA.B #$78                           ;83C3E9;
    STA.B $34                            ;83C3EB;
    RTS                                  ;83C3ED;

CODE_83C3EE:
    LDA.B $02                            ;83C3EE;
    BNE CODE_83C3FC                      ;83C3F0;
    INC.B $02                            ;83C3F2;
    LDA.B #$00                           ;83C3F4;
    JSL.L CODE_848F07                    ;83C3F6;
    STZ.B $28                            ;83C3FA;

CODE_83C3FC:
    JSL.L CODE_84AC9B                    ;83C3FC;
    JSR.W CODE_83C55B                    ;83C400;
    BNE CODE_83C40C                      ;83C403;
    LDA.B #$04                           ;83C405;
    STA.B $01                            ;83C407;
    STZ.B $02                            ;83C409;
    RTS                                  ;83C40B;

CODE_83C40C:
    DEC.B $34                            ;83C40C;
    BNE CODE_83C43E                      ;83C40E;
    INC.B $34                            ;83C410;
    REP #$20                             ;83C412;
    LDA.B $05                            ;83C414;
    SEC                                  ;83C416;
    SBC.W $0BAD                          ;83C417;
    BCS CODE_83C420                      ;83C41A;
    EOR.W #$FFFF                         ;83C41C;
    INC A                                ;83C41F;

CODE_83C420:
    CMP.W #$0050                         ;83C420;
    BCS CODE_83C43E                      ;83C423;
    LDA.B $08                            ;83C425;
    SEC                                  ;83C427;
    SBC.W $0BB0                          ;83C428;
    BCS CODE_83C431                      ;83C42B;
    EOR.W #$FFFF                         ;83C42D;
    INC A                                ;83C430;

CODE_83C431:
    CMP.W #$0020                         ;83C431;
    BCS CODE_83C43E                      ;83C434;
    SEP #$20                             ;83C436;
    LDA.B #$06                           ;83C438;
    STA.B $01                            ;83C43A;
    STZ.B $02                            ;83C43C;

CODE_83C43E:
    SEP #$20                             ;83C43E;
    RTS                                  ;83C440;

CODE_83C441:
    JSL.L CODE_84AC9B                    ;83C441;
    LDX.B $02                            ;83C445;
    JMP.W (PTR16_83C44A,X)               ;83C447;

PTR16_83C44A:
    dw CODE_83C452                       ;83C44A;
    dw CODE_83C460                       ;83C44C;
    dw CODE_83C473                       ;83C44E;
    dw CODE_83C4A2                       ;83C450;

CODE_83C452:
    LDA.B #$02                           ;83C452;
    STA.B $02                            ;83C454;
    LDA.B #$01                           ;83C456;
    JSL.L CODE_848F07                    ;83C458;
    LDA.B #$03                           ;83C45C;
    STA.B $28                            ;83C45E;

CODE_83C460:
    JSL.L CODE_848EEA                    ;83C460;
    LDA.B $0F                            ;83C464;
    BPL CODE_83C472                      ;83C466;
    LDA.B #$04                           ;83C468;
    STA.B $02                            ;83C46A;
    LDA.B #$02                           ;83C46C;
    JSL.L CODE_848F07                    ;83C46E;

CODE_83C472:
    RTS                                  ;83C472;

CODE_83C473:
    LDA.B $11                            ;83C473;
    ASL A                                ;83C475;
    ASL A                                ;83C476;
    REP #$20                             ;83C477;
    LDA.W #$01C0                         ;83C479;
    BCS CODE_83C481                      ;83C47C;
    LDA.W #$FE40                         ;83C47E;

CODE_83C481:
    STA.B $1A                            ;83C481;
    SEP #$20                             ;83C483;
    JSR.W CODE_83C55B                    ;83C485;
    BEQ CODE_83C495                      ;83C488;
    LDA.B #$03                           ;83C48A;
    JSL.L CODE_848F07                    ;83C48C;
    LDA.B #$06                           ;83C490;
    STA.B $02                            ;83C492;
    RTS                                  ;83C494;

CODE_83C495:
    JSL.L CODE_82823E                    ;83C495;
    JSL.L CODE_848EEA                    ;83C499;
    JSL.L CODE_8491BE                    ;83C49D;
    RTS                                  ;83C4A1;

CODE_83C4A2:
    JSL.L CODE_848EEA                    ;83C4A2;
    LDA.B $0F                            ;83C4A6;
    BPL CODE_83C4B0                      ;83C4A8;
    LDA.B #$02                           ;83C4AA;
    STA.B $01                            ;83C4AC;
    STZ.B $02                            ;83C4AE;

CODE_83C4B0:
    RTS                                  ;83C4B0;

CODE_83C4B1:
    JSL.L CODE_84AC9B                    ;83C4B1;
    LDX.B $02                            ;83C4B5;
    JMP.W (PTR16_83C4BA,X)               ;83C4B7;

PTR16_83C4BA:
    dw CODE_83C4C0                       ;83C4BA;
    dw CODE_83C4CE                       ;83C4BC;
    dw CODE_83C548                       ;83C4BE;

CODE_83C4C0:
    LDA.B #$02                           ;83C4C0;
    STA.B $02                            ;83C4C2;
    LDA.B #$01                           ;83C4C4;
    JSL.L CODE_848F07                    ;83C4C6;
    LDA.B #$03                           ;83C4CA;
    STA.B $28                            ;83C4CC;

CODE_83C4CE:
    JSL.L CODE_848EEA                    ;83C4CE;
    LDA.B $0F                            ;83C4D2;
    BPL CODE_83C547                      ;83C4D4;
    LDA.B #$04                           ;83C4D6;
    STA.B $02                            ;83C4D8;
    LDA.B #$03                           ;83C4DA;
    JSL.L CODE_848F07                    ;83C4DC;
    JSL.L CODE_84A07C                    ;83C4E0;
    TAY                                  ;83C4E4;
    LDA.B $11                            ;83C4E5;
    BIT.B #$40                           ;83C4E7;
    BNE CODE_83C4FB                      ;83C4E9;
    CPY.B #$1B                           ;83C4EB;
    BCC CODE_83C4F3                      ;83C4ED;
    LDY.B #$1A                           ;83C4EF;
    BRA CODE_83C509                      ;83C4F1;

CODE_83C4F3:
    CPY.B #$16                           ;83C4F3;
    BCS CODE_83C509                      ;83C4F5;
    LDY.B #$16                           ;83C4F7;
    BRA CODE_83C509                      ;83C4F9;

CODE_83C4FB:
    CPY.B #$0B                           ;83C4FB;
    BCC CODE_83C503                      ;83C4FD;
    LDY.B #$0A                           ;83C4FF;
    BRA CODE_83C509                      ;83C501;

CODE_83C503:
    CPY.B #$06                           ;83C503;
    BCS CODE_83C509                      ;83C505;
    LDY.B #$06                           ;83C507;

CODE_83C509:
    JSL.L CODE_828358                    ;83C509;
    BNE CODE_83C545                      ;83C50D;
    INC.W $0000,X                        ;83C50F;
    LDA.B #$10                           ;83C512;
    STA.W $000A,X                        ;83C514;
    LDA.B $18                            ;83C517;
    STA.W $0018,X                        ;83C519;
    LDA.B $16                            ;83C51C;
    STA.W $0016,X                        ;83C51E;
    TYA                                  ;83C521;
    STA.W $000B,X                        ;83C522;
    LDA.B $11                            ;83C525;
    STA.W $0011,X                        ;83C527;
    ASL A                                ;83C52A;
    ASL A                                ;83C52B;
    REP #$20                             ;83C52C;
    LDA.W #$0003                         ;83C52E;
    BCS CODE_83C536                      ;83C531;
    LDA.W #$FFFD                         ;83C533;

CODE_83C536:
    CLC                                  ;83C536;
    ADC.B $05                            ;83C537;
    STA.W $0005,X                        ;83C539;
    LDA.W #$0001                         ;83C53C;
    CLC                                  ;83C53F;
    ADC.B $08                            ;83C540;
    STA.W $0008,X                        ;83C542;

CODE_83C545:
    SEP #$30                             ;83C545;

CODE_83C547:
    RTS                                  ;83C547;

CODE_83C548:
    JSL.L CODE_848EEA                    ;83C548;
    LDA.B $0F                            ;83C54C;
    BPL CODE_83C55A                      ;83C54E;
    LDA.B #$02                           ;83C550;
    STA.B $01                            ;83C552;
    STZ.B $02                            ;83C554;
    LDA.B #$78                           ;83C556;
    STA.B $34                            ;83C558;

CODE_83C55A:
    RTS                                  ;83C55A;

CODE_83C55B:
    REP #$20                             ;83C55B;
    LDA.B $08                            ;83C55D;
    SEC                                  ;83C55F;
    SBC.W $0BB0                          ;83C560;
    BCS CODE_83C569                      ;83C563;
    EOR.W #$FFFF                         ;83C565;
    INC A                                ;83C568;

CODE_83C569:
    CMP.W #$0030                         ;83C569;
    BCS CODE_83C5A6                      ;83C56C;
    SEP #$20                             ;83C56E;
    LDA.B $11                            ;83C570;
    ASL A                                ;83C572;
    ASL A                                ;83C573;
    LDA.B #$0B                           ;83C574;
    BCS CODE_83C57A                      ;83C576;
    LDA.B #$F5                           ;83C578;

CODE_83C57A:
    STA.B $29                            ;83C57A;
    STZ.B $2A                            ;83C57C;
    JSL.L CODE_8490A0                    ;83C57E;
    CMP.B #$34                           ;83C582;
    BCS CODE_83C5A6                      ;83C584;
    LDA.B #$0B                           ;83C586;
    STA.B $2A                            ;83C588;
    JSL.L CODE_8490A0                    ;83C58A;
    CMP.B #$34                           ;83C58E;
    BCS CODE_83C59E                      ;83C590;
    CMP.B #$13                           ;83C592;
    BEQ CODE_83C59E                      ;83C594;
    CMP.B #$0D                           ;83C596;
    BCS CODE_83C5A6                      ;83C598;
    CMP.B #$01                           ;83C59A;
    BCC CODE_83C5A6                      ;83C59C;

CODE_83C59E:
    LDA.B $11                            ;83C59E;
    EOR.W $0BB9                          ;83C5A0;
    AND.B #$40                           ;83C5A3;
    RTS                                  ;83C5A5;

CODE_83C5A6:
    SEP #$20                             ;83C5A6;
    LDA.B #$01                           ;83C5A8;
    RTS                                  ;83C5AA;

CODE_83C5AB:
    LDX.B $01                            ;83C5AB;
    JMP.W (PTR16_83C5B0,X)               ;83C5AD;

PTR16_83C5B0:
    dw CODE_83C5B6                       ;83C5B0;
    dw CODE_83C655                       ;83C5B2;
    dw CODE_83CAAB                       ;83C5B4;

CODE_83C5B6:
    LDA.B $0B                            ;83C5B6;
    CMP.B #$01                           ;83C5B8;
    BEQ CODE_83C5C7                      ;83C5BA;
    JSL.L CODE_84A1D0                    ;83C5BC;
    TYA                                  ;83C5C0;
    BEQ CODE_83C5C7                      ;83C5C1;
    JML.L CODE_828387                    ;83C5C3;

CODE_83C5C7:
    JSL.L CODE_82827D                    ;83C5C7;
    LDA.B #$04                           ;83C5CB;
    STA.B $12                            ;83C5CD;
    STZ.B $33                            ;83C5CF;
    STZ.B $2F                            ;83C5D1;
    LDA.B #$02                           ;83C5D3;
    STA.B $26                            ;83C5D5;
    LDA.B #$03                           ;83C5D7;
    STA.B $27                            ;83C5D9;
    STA.B $3B                            ;83C5DB;
    LDA.B #$03                           ;83C5DD;
    STA.B $28                            ;83C5DF;
    STZ.B $35                            ;83C5E1;
    STZ.B $10                            ;83C5E3;
    STZ.B $32                            ;83C5E5;
    REP #$20                             ;83C5E7;
    LDA.W #$CF31                         ;83C5E9;
    STA.B $20                            ;83C5EC;
    STZ.B $36                            ;83C5EE;
    STZ.B $38                            ;83C5F0;
    LDA.W #$0040                         ;83C5F2;
    STA.B $1E                            ;83C5F5;
    SEP #$20                             ;83C5F7;
    LDA.B $0B                            ;83C5F9;
    BMI CODE_83C63B                      ;83C5FB;
    LDA.W $0E18                          ;83C5FD;
    BNE CODE_83C63B                      ;83C600;
    INC.W $0E18                          ;83C602;
    STZ.W $0E4B                          ;83C605;
    REP #$31                             ;83C608;
    LDA.W #$0020                         ;83C60A;
    LDX.W $0BAD                          ;83C60D;
    CPX.B $05                            ;83C610;
    BCC CODE_83C61D                      ;83C612;
    LDA.W #$0040                         ;83C614;
    TSB.W $0E4B                          ;83C617;
    LDA.W #$FFE0                         ;83C61A;

CODE_83C61D:
    ADC.B $05                            ;83C61D;
    STA.W $0E1D                          ;83C61F;
    LDA.B $08                            ;83C622;
    CLC                                  ;83C624;
    ADC.W #$FFF0                         ;83C625;
    STA.W $0E20                          ;83C628;
    STZ.W $0E19                          ;83C62B;
    STZ.W $0E1B                          ;83C62E;
    SEP #$30                             ;83C631;
    LDA.B $0B                            ;83C633;
    BEQ CODE_83C654                      ;83C635;

CODE_83C637:
    JML.L CODE_828387                    ;83C637;

CODE_83C63B:
    LDA.B $0B                            ;83C63B;
    BMI CODE_83C641                      ;83C63D;
    BNE CODE_83C637                      ;83C63F;

CODE_83C641:
    LDA.B #$06                           ;83C641;
    STA.B $02                            ;83C643;
    LDA.B #$10                           ;83C645;
    STA.B $27                            ;83C647;
    REP #$21                             ;83C649;
    LDA.B $08                            ;83C64B;
    ADC.W #$FFF0                         ;83C64D;
    STA.B $08                            ;83C650;
    SEP #$20                             ;83C652;

CODE_83C654:
    RTL                                  ;83C654;

CODE_83C655:
    JSL.L CODE_82806E                    ;83C655;
    BCC CODE_83C65F                      ;83C659;
    JML.L CODE_828387                    ;83C65B;

CODE_83C65F:
    LDA.L $7F8349                        ;83C65F;
    ORA.B $33                            ;83C663;
    STA.B $11                            ;83C665;
    LDX.B $02                            ;83C667;
    JSR.W (PTR16_83C6D0,X)               ;83C669;
    JSL.L CODE_8280B4                    ;83C66C;
    LDA.B $27                            ;83C670;
    AND.B #$7F                           ;83C672;
    STA.B $3B                            ;83C674;
    JSL.L CODE_849B43                    ;83C676;
    BEQ CODE_83C6BA                      ;83C67A;
    BPL CODE_83C685                      ;83C67C;
    LDA.B #$04                           ;83C67E;
    STA.B $01                            ;83C680;
    STZ.B $02                            ;83C682;
    RTL                                  ;83C684;

CODE_83C685:
    LDA.B #$0E                           ;83C685;
    TRB.B $11                            ;83C687;
    BIT.B $10                            ;83C689;
    BVC CODE_83C6BA                      ;83C68B;
    LDA.W $1F1B                          ;83C68D;
    STA.B $3A                            ;83C690;
    STA.B $33                            ;83C692;
    LDA.B #$0D                           ;83C694;
    JSR.W CODE_83CD18                    ;83C696;
    LDA.W $1F1D                          ;83C699;
    CMP.B #$19                           ;83C69C;
    BEQ CODE_83C6A4                      ;83C69E;
    CMP.B #$1A                           ;83C6A0;
    BNE CODE_83C6A8                      ;83C6A2;

CODE_83C6A4:
    LDA.B #$3C                           ;83C6A4;
    BRA CODE_83C6AA                      ;83C6A6;

CODE_83C6A8:
    LDA.B #$09                           ;83C6A8;

CODE_83C6AA:
    JSL.L CODE_8088A2                    ;83C6AA;
    LDA.B #$06                           ;83C6AE;
    STA.B $35                            ;83C6B0;
    LDA.B #$05                           ;83C6B2;
    STA.B $28                            ;83C6B4;
    LDA.B #$02                           ;83C6B6;
    STA.B $32                            ;83C6B8;

CODE_83C6BA:
    JSR.W CODE_83CBA5                    ;83C6BA;
    JSR.W CODE_83CBB2                    ;83C6BD;
    LDA.B $11                            ;83C6C0;
    AND.B #$3F                           ;83C6C2;
    ORA.B $33                            ;83C6C4;
    STA.B $11                            ;83C6C6;
    JSL.L CODE_849B03                    ;83C6C8;
    JML.L CODE_8491BE                    ;83C6CC;

PTR16_83C6D0:
    dw CODE_83C6EC                       ;83C6D0;
    dw CODE_83C746                       ;83C6D2;
    dw CODE_83C7B0                       ;83C6D4;
    dw CODE_83C7D6                       ;83C6D6;
    dw CODE_83C810                       ;83C6D8;
    dw CODE_83C82D                       ;83C6DA;
    dw CODE_83C892                       ;83C6DC;
    dw CODE_83C8F4                       ;83C6DE;
    dw CODE_83C930                       ;83C6E0;
    dw CODE_83C998                       ;83C6E2;
    dw CODE_83C9E6                       ;83C6E4;
    dw CODE_83CA4C                       ;83C6E6;
    dw CODE_83CA79                       ;83C6E8;
    dw CODE_83C9CC                       ;83C6EA;

CODE_83C6EC:
    LDX.B $03                            ;83C6EC;
    JSR.W (PTR16_83C6F4,X)               ;83C6EE;
    JMP.W CODE_83CAF8                    ;83C6F1;

PTR16_83C6F4:
    dw CODE_83C6FA                       ;83C6F4;
    dw CODE_83C704                       ;83C6F6;
    dw CODE_83C727                       ;83C6F8;

CODE_83C6FA:
    LDA.B #$02                           ;83C6FA;
    STA.B $03                            ;83C6FC;
    LDA.B #$18                           ;83C6FE;
    JSL.L CODE_848F07                    ;83C700;

CODE_83C704:
    REP #$20                             ;83C704;
    LDA.W $0BAD                          ;83C706;
    SEC                                  ;83C709;
    SBC.B $05                            ;83C70A;
    CLC                                  ;83C70C;
    ADC.W #$0060                         ;83C70D;
    CMP.W #$00C0                         ;83C710;
    SEP #$20                             ;83C713;
    BCS CODE_83C71F                      ;83C715;
    LDA.B #$04                           ;83C717;
    STA.B $03                            ;83C719;
    LDA.B #$3C                           ;83C71B;
    STA.B $34                            ;83C71D;

CODE_83C71F:
    JSR.W CODE_83C738                    ;83C71F;
    JSL.L CODE_848EEA                    ;83C722;
    RTS                                  ;83C726;

CODE_83C727:
    JSR.W CODE_83C738                    ;83C727;
    DEC.B $34                            ;83C72A;
    BNE CODE_83C733                      ;83C72C;
    LDA.B #$02                           ;83C72E;
    JMP.W CODE_8386F1                    ;83C730;

CODE_83C733:
    JSL.L CODE_848EEA                    ;83C733;
    RTS                                  ;83C737;

CODE_83C738:
    LDA.B $27                            ;83C738;
    AND.B #$7F                           ;83C73A;
    CMP.B #$03                           ;83C73C;
    BEQ CODE_83C745                      ;83C73E;
    LDA.B #$02                           ;83C740;
    JMP.W CODE_8386F1                    ;83C742;

CODE_83C745:
    RTS                                  ;83C745;

CODE_83C746:
    LDX.B $03                            ;83C746;
    BNE CODE_83C777                      ;83C748;
    INC.B $03                            ;83C74A;
    LDA.B #$40                           ;83C74C;
    STA.B $33                            ;83C74E;
    REP #$30                             ;83C750;
    LDA.W #$0100                         ;83C752;
    LDX.W $0E1D                          ;83C755;
    CPX.B $05                            ;83C758;
    BCS CODE_83C764                      ;83C75A;
    LDA.W #$0040                         ;83C75C;
    TRB.B $33                            ;83C75F;
    LDA.W #$FF00                         ;83C761;

CODE_83C764:
    STA.B $1A                            ;83C764;
    LDA.W #$0500                         ;83C766;
    STA.B $1C                            ;83C769;
    SEP #$30                             ;83C76B;
    LDA.B #$04                           ;83C76D;
    TRB.B $2B                            ;83C76F;
    LDA.B #$1A                           ;83C771;
    JSL.L CODE_848F07                    ;83C773;

CODE_83C777:
    LDA.B $2B                            ;83C777;
    BIT.B #$04                           ;83C779;
    BEQ CODE_83C7AB                      ;83C77B;
    JSR.W CODE_83CAF8                    ;83C77D;
    BNE CODE_83C7AB                      ;83C780;
    LDA.B #$40                           ;83C782;
    TSB.B $10                            ;83C784;
    LDA.B #$10                           ;83C786;
    STA.B $27                            ;83C788;
    STZ.W $0E18                          ;83C78A;
    STZ.W $0E19                          ;83C78D;
    STZ.W $0E1A                          ;83C790;
    STZ.W $0E1B                          ;83C793;
    REP #$21                             ;83C796;
    LDA.B $08                            ;83C798;
    ADC.W #$FFF8                         ;83C79A;
    STA.B $08                            ;83C79D;
    LDA.W #$CF3B                         ;83C79F;
    STA.B $20                            ;83C7A2;
    SEP #$20                             ;83C7A4;
    LDA.B #$04                           ;83C7A6;
    JMP.W CODE_8386F1                    ;83C7A8;

CODE_83C7AB:
    JSL.L CODE_828174                    ;83C7AB;
    RTS                                  ;83C7AF;

CODE_83C7B0:
    LDX.B $03                            ;83C7B0;
    BNE CODE_83C7C2                      ;83C7B2;
    INC.B $03                            ;83C7B4;
    LDA.B $33                            ;83C7B6;
    EOR.B #$40                           ;83C7B8;
    STA.B $33                            ;83C7BA;
    LDA.B #$09                           ;83C7BC;
    JSL.L CODE_848F07                    ;83C7BE;

CODE_83C7C2:
    LDA.B $0F                            ;83C7C2;
    BPL CODE_83C7CB                      ;83C7C4;
    LDA.B #$06                           ;83C7C6;
    JMP.W CODE_8386F1                    ;83C7C8;

CODE_83C7CB:
    LSR A                                ;83C7CB;
    BCC CODE_83C7D1                      ;83C7CC;
    JSR.W CODE_83CD41                    ;83C7CE;

CODE_83C7D1:
    JSL.L CODE_848EEA                    ;83C7D1;
    RTS                                  ;83C7D5;

CODE_83C7D6:
    LDX.B $03                            ;83C7D6;
    BNE CODE_83C7F7                      ;83C7D8;
    INC.B $03                            ;83C7DA;
    LDA.B #$40                           ;83C7DC;
    TSB.B $10                            ;83C7DE;
    REP #$20                             ;83C7E0;
    LDA.W #$CF3B                         ;83C7E2;
    STA.B $20                            ;83C7E5;
    SEP #$20                             ;83C7E7;
    JSL.L CODE_849086                    ;83C7E9;
    AND.B #$3F                           ;83C7ED;
    STA.B $34                            ;83C7EF;
    LDA.B #$00                           ;83C7F1;
    JSL.L CODE_848F07                    ;83C7F3;

CODE_83C7F7:
    DEC.B $34                            ;83C7F7;
    BNE CODE_83C800                      ;83C7F9;
    LDA.B #$0A                           ;83C7FB;
    JMP.W CODE_8386F1                    ;83C7FD;

CODE_83C800:
    LDA.B $2B                            ;83C800;
    BIT.B #$04                           ;83C802;
    BNE CODE_83C80F                      ;83C804;
    STZ.B $1C                            ;83C806;
    STZ.B $1D                            ;83C808;
    LDA.B #$16                           ;83C80A;
    JMP.W CODE_8386F1                    ;83C80C;

CODE_83C80F:
    RTS                                  ;83C80F;

CODE_83C810:
    LDX.B $03                            ;83C810;
    BNE CODE_83C81C                      ;83C812;
    INC.B $03                            ;83C814;
    LDA.B #$02                           ;83C816;
    JSL.L CODE_848F07                    ;83C818;

CODE_83C81C:
    LDA.B $0F                            ;83C81C;
    BPL CODE_83C825                      ;83C81E;
    LDA.B #$06                           ;83C820;
    JMP.W CODE_8386F1                    ;83C822;

CODE_83C825:
    JSR.W CODE_83CB6C                    ;83C825;
    JSL.L CODE_848EEA                    ;83C828;
    RTS                                  ;83C82C;

CODE_83C82D:
    LDX.B $03                            ;83C82D;
    BNE CODE_83C839                      ;83C82F;
    INC.B $03                            ;83C831;
    LDA.B #$01                           ;83C833;
    JSL.L CODE_848F07                    ;83C835;

CODE_83C839:
    LDA.B $2B                            ;83C839;
    BIT.B #$04                           ;83C83B;
    BNE CODE_83C848                      ;83C83D;
    STZ.B $1C                            ;83C83F;
    STZ.B $1D                            ;83C841;
    LDA.B #$16                           ;83C843;
    JMP.W CODE_8386F1                    ;83C845;

CODE_83C848:
    JSR.W CODE_83CB17                    ;83C848;
    JSL.L CODE_82823E                    ;83C84B;
    LDA.B #$00                           ;83C84F;
    XBA                                  ;83C851;
    LDA.B #$70                           ;83C852;
    JSR.W CODE_83CB2B                    ;83C854;
    BCC CODE_83C85E                      ;83C857;
    LDA.B #$10                           ;83C859;
    JMP.W CODE_8386F1                    ;83C85B;

CODE_83C85E:
    JSR.W CODE_83CB42                    ;83C85E;
    BCS CODE_83C86D                      ;83C861;
    LDA.B $2B                            ;83C863;
    BIT.B #$03                           ;83C865;
    BEQ CODE_83C872                      ;83C867;
    LDA.B #$80                           ;83C869;
    TSB.B $10                            ;83C86B;

CODE_83C86D:
    LDA.B #$0C                           ;83C86D;
    JMP.W CODE_8386F1                    ;83C86F;

CODE_83C872:
    LDA.B #$00                           ;83C872;
    XBA                                  ;83C874;
    LDA.B #$35                           ;83C875;
    JSR.W CODE_83CB2B                    ;83C877;
    BCS CODE_83C881                      ;83C87A;
    LDA.B #$08                           ;83C87C;
    JMP.W CODE_8386F1                    ;83C87E;

CODE_83C881:
    JSL.L CODE_848EEA                    ;83C881;
    LDA.B $0F                            ;83C885;
    AND.B #$03                           ;83C887;
    BEQ CODE_83C891                      ;83C889;
    ORA.B #$38                           ;83C88B;
    JSL.L CODE_8088A2                    ;83C88D;

CODE_83C891:
    RTS                                  ;83C891;

CODE_83C892:
    LDX.B $03                            ;83C892;
    BNE CODE_83C8D1                      ;83C894;
    INC.B $03                            ;83C896;
    LDA.B $10                            ;83C898;
    BMI CODE_83C8B0                      ;83C89A;
    JSL.L CODE_849086                    ;83C89C;
    AND.B #$01                           ;83C8A0;
    BNE CODE_83C8B0                      ;83C8A2;
    REP #$20                             ;83C8A4;
    LDA.B $1A                            ;83C8A6;
    EOR.W #$FFFF                         ;83C8A8;
    INC A                                ;83C8AB;
    STA.B $1A                            ;83C8AC;
    SEP #$20                             ;83C8AE;

CODE_83C8B0:
    LDA.B #$80                           ;83C8B0;
    TRB.B $10                            ;83C8B2;
    LDA.B #$53                           ;83C8B4;
    STA.B $1C                            ;83C8B6;
    LDA.B #$05                           ;83C8B8;
    STA.B $1D                            ;83C8BA;
    LDA.B #$38                           ;83C8BC;
    JSL.L CODE_8088A2                    ;83C8BE;
    LDA.B #$08                           ;83C8C2;
    STA.B $2F                            ;83C8C4;
    LDA.B #$0C                           ;83C8C6;
    JSR.W CODE_83CD18                    ;83C8C8;
    LDA.B #$03                           ;83C8CB;
    JSL.L CODE_848F07                    ;83C8CD;

CODE_83C8D1:
    LDA.B $1D                            ;83C8D1;
    BMI CODE_83C8DB                      ;83C8D3;
    LDA.B $2B                            ;83C8D5;
    BIT.B #$08                           ;83C8D7;
    BEQ CODE_83C8E0                      ;83C8D9;

CODE_83C8DB:
    LDA.B #$16                           ;83C8DB;
    JMP.W CODE_8386F1                    ;83C8DD;

CODE_83C8E0:
    LDA.B #$00                           ;83C8E0;
    XBA                                  ;83C8E2;
    LDA.B #$35                           ;83C8E3;
    JSR.W CODE_83CB2B                    ;83C8E5;
    BCS CODE_83C8EF                      ;83C8E8;
    LDA.B #$0E                           ;83C8EA;
    JMP.W CODE_8386F1                    ;83C8EC;

CODE_83C8EF:
    JSL.L CODE_828174                    ;83C8EF;
    RTS                                  ;83C8F3;

CODE_83C8F4:
    LDX.B $03                            ;83C8F4;
    BNE CODE_83C900                      ;83C8F6;
    INC.B $03                            ;83C8F8;
    LDA.B #$05                           ;83C8FA;
    JSL.L CODE_848F07                    ;83C8FC;

CODE_83C900:
    LDA.B $2B                            ;83C900;
    BIT.B #$08                           ;83C902;
    BEQ CODE_83C90A                      ;83C904;
    STZ.B $1C                            ;83C906;
    STZ.B $1D                            ;83C908;

CODE_83C90A:
    BIT.B #$04                           ;83C90A;
    BEQ CODE_83C913                      ;83C90C;
    LDA.B #$18                           ;83C90E;
    JMP.W CODE_8386F1                    ;83C910;

CODE_83C913:
    LDA.B $0F                            ;83C913;
    BPL CODE_83C924                      ;83C915;
    LDA.B $1D                            ;83C917;
    BPL CODE_83C91F                      ;83C919;
    LDA.B #$0C                           ;83C91B;
    BRA CODE_83C921                      ;83C91D;

CODE_83C91F:
    LDA.B #$16                           ;83C91F;

CODE_83C921:
    STA.B $02                            ;83C921;
    RTS                                  ;83C923;

CODE_83C924:
    JSR.W CODE_83CB6C                    ;83C924;
    JSL.L CODE_828174                    ;83C927;
    JSL.L CODE_848EEA                    ;83C92B;
    RTS                                  ;83C92F;

CODE_83C930:
    LDX.B $03                            ;83C930;
    BNE CODE_83C958                      ;83C932;
    INC.B $03                            ;83C934;
    REP #$20                             ;83C936;
    LDA.W #$0400                         ;83C938;
    BIT.B $32                            ;83C93B;
    BVS CODE_83C942                      ;83C93D;
    LDA.W #$FC00                         ;83C93F;

CODE_83C942:
    STA.B $1A                            ;83C942;
    SEP #$20                             ;83C944;
    STZ.B $31                            ;83C946;
    LDA.B #$3B                           ;83C948;
    JSL.L CODE_8088A2                    ;83C94A;
    LDA.B #$40                           ;83C94E;
    STA.B $34                            ;83C950;
    LDA.B #$06                           ;83C952;
    JSL.L CODE_848F07                    ;83C954;

CODE_83C958:
    JSR.W CODE_83CDB3                    ;83C958;
    DEC.B $34                            ;83C95B;
    BNE CODE_83C964                      ;83C95D;
    LDA.B #$1A                           ;83C95F;
    JMP.W CODE_8386F1                    ;83C961;

CODE_83C964:
    LDA.B $2B                            ;83C964;
    BIT.B #$04                           ;83C966;
    BNE CODE_83C973                      ;83C968;
    STZ.B $1C                            ;83C96A;
    STZ.B $1D                            ;83C96C;
    LDA.B #$16                           ;83C96E;
    JMP.W CODE_8386F1                    ;83C970;

CODE_83C973:
    BIT.B #$03                           ;83C973;
    BEQ CODE_83C980                      ;83C975;
    LDA.B #$80                           ;83C977;
    TSB.B $10                            ;83C979;
    LDA.B #$0C                           ;83C97B;
    JMP.W CODE_8386F1                    ;83C97D;

CODE_83C980:
    LDA.B #$00                           ;83C980;
    XBA                                  ;83C982;
    LDA.B #$50                           ;83C983;
    JSR.W CODE_83CB2B                    ;83C985;
    BCS CODE_83C98F                      ;83C988;
    LDA.B #$12                           ;83C98A;
    JMP.W CODE_8386F1                    ;83C98C;

CODE_83C98F:
    JSL.L CODE_82823E                    ;83C98F;
    JSL.L CODE_848EEA                    ;83C993;
    RTS                                  ;83C997;

CODE_83C998:
    LDX.B $03                            ;83C998;
    BNE CODE_83C9A4                      ;83C99A;
    INC.B $03                            ;83C99C;
    LDA.B #$08                           ;83C99E;
    JSL.L CODE_848F07                    ;83C9A0;

CODE_83C9A4:
    DEC.B $34                            ;83C9A4;
    BEQ CODE_83C9BB                      ;83C9A6;
    LDA.B $2B                            ;83C9A8;
    BIT.B #$04                           ;83C9AA;
    BNE CODE_83C9B7                      ;83C9AC;
    STZ.B $1C                            ;83C9AE;
    STZ.B $1D                            ;83C9B0;
    LDA.B #$16                           ;83C9B2;
    JMP.W CODE_8386F1                    ;83C9B4;

CODE_83C9B7:
    BIT.B #$03                           ;83C9B7;
    BEQ CODE_83C9C0                      ;83C9B9;

CODE_83C9BB:
    LDA.B #$1A                           ;83C9BB;
    JMP.W CODE_8386F1                    ;83C9BD;

CODE_83C9C0:
    JSR.W CODE_83CB6C                    ;83C9C0;
    JSL.L CODE_82823E                    ;83C9C3;
    JSL.L CODE_848EEA                    ;83C9C7;
    RTS                                  ;83C9CB;

CODE_83C9CC:
    LDX.B $03                            ;83C9CC;
    BNE CODE_83C9D8                      ;83C9CE;
    INC.B $03                            ;83C9D0;
    LDA.B #$07                           ;83C9D2;
    JSL.L CODE_848F07                    ;83C9D4;

CODE_83C9D8:
    LDA.B $0F                            ;83C9D8;
    BPL CODE_83C9E1                      ;83C9DA;
    LDA.B #$0A                           ;83C9DC;
    JMP.W CODE_8386F1                    ;83C9DE;

CODE_83C9E1:
    JSL.L CODE_848EEA                    ;83C9E1;

CODE_83C9E5:
    RTS                                  ;83C9E5;

CODE_83C9E6:
    LDX.B $03                            ;83C9E6;
    JMP.W (PTR16_83C9EB,X)               ;83C9E8;

PTR16_83C9EB:
    dw CODE_83C9F5                       ;83C9EB;
    dw CODE_83CA02                       ;83C9ED;
    dw CODE_83C9F1                       ;83C9EF;

CODE_83C9F1:
    DEC.B $34                            ;83C9F1;
    BNE CODE_83C9E5                      ;83C9F3;

CODE_83C9F5:
    LDA.B #$02                           ;83C9F5;
    STA.B $03                            ;83C9F7;
    LDA.B #$1B                           ;83C9F9;
    JSL.L CODE_848F07                    ;83C9FB;
    JSR.W CODE_83CB05                    ;83C9FF;

CODE_83CA02:
    BIT.B $0F                            ;83CA02;
    BVC CODE_83CA35                      ;83CA04;
    JSL.L CODE_828358                    ;83CA06;
    BNE CODE_83CA35                      ;83CA0A;
    INC.W $0000,X                        ;83CA0C;
    LDA.B #$15                           ;83CA0F;
    STA.W $000A,X                        ;83CA11;
    LDA.B $33                            ;83CA14;
    STA.W $0011,X                        ;83CA16;
    REP #$21                             ;83CA19;
    LDA.B $08                            ;83CA1B;
    ADC.W #$FFF9                         ;83CA1D;
    STA.W $0008,X                        ;83CA20;
    LDA.W #$0013                         ;83CA23;
    BIT.B $32                            ;83CA26;
    BVS CODE_83CA2D                      ;83CA28;
    LDA.W #$FFED                         ;83CA2A;

CODE_83CA2D:
    CLC                                  ;83CA2D;
    ADC.B $05                            ;83CA2E;
    STA.W $0005,X                        ;83CA30;
    SEP #$20                             ;83CA33;

CODE_83CA35:
    LDA.B $0F                            ;83CA35;
    BPL CODE_83CA47                      ;83CA37;
    LDA.B #$3C                           ;83CA39;
    STA.B $34                            ;83CA3B;
    LDA.B #$18                           ;83CA3D;
    JSL.L CODE_848F07                    ;83CA3F;
    LDA.B #$04                           ;83CA43;
    STA.B $03                            ;83CA45;

CODE_83CA47:
    JSL.L CODE_848EEA                    ;83CA47;
    RTS                                  ;83CA4B;

CODE_83CA4C:
    LDX.B $03                            ;83CA4C;
    BNE CODE_83CA5C                      ;83CA4E;
    INC.B $03                            ;83CA50;
    LDA.B #$08                           ;83CA52;
    STA.B $2F                            ;83CA54;
    LDA.B #$03                           ;83CA56;
    JSL.L CODE_848F07                    ;83CA58;

CODE_83CA5C:
    LDA.B $2B                            ;83CA5C;
    BIT.B #$04                           ;83CA5E;
    BEQ CODE_83CA67                      ;83CA60;
    LDA.B #$18                           ;83CA62;
    JMP.W CODE_8386F1                    ;83CA64;

CODE_83CA67:
    REP #$20                             ;83CA67;
    LDA.W #$FA80                         ;83CA69;
    CMP.B $1C                            ;83CA6C;
    BMI CODE_83CA72                      ;83CA6E;
    STA.B $1C                            ;83CA70;

CODE_83CA72:
    SEP #$20                             ;83CA72;
    JSL.L CODE_828174                    ;83CA74;
    RTS                                  ;83CA78;

CODE_83CA79:
    LDX.B $03                            ;83CA79;
    BNE CODE_83CA9D                      ;83CA7B;
    INC.B $03                            ;83CA7D;
    LDX.B #$02                           ;83CA7F;
    LDY.B #$01                           ;83CA81;
    LDA.B #$0A                           ;83CA83;
    JSL.L CODE_84A33C                    ;83CA85;
    LDA.B #$39                           ;83CA89;
    JSL.L CODE_8088A2                    ;83CA8B;
    STZ.B $2F                            ;83CA8F;
    JSR.W CODE_83CD41                    ;83CA91;
    JSR.W CODE_83CD6C                    ;83CA94;
    LDA.B #$04                           ;83CA97;
    JSL.L CODE_848F07                    ;83CA99;

CODE_83CA9D:
    LDA.B $0F                            ;83CA9D;
    BPL CODE_83CAA6                      ;83CA9F;
    LDA.B #$0A                           ;83CAA1;
    JMP.W CODE_8386F1                    ;83CAA3;

CODE_83CAA6:
    JSL.L CODE_848EEA                    ;83CAA6;
    RTS                                  ;83CAAA;

CODE_83CAAB:
    LDX.B $02                            ;83CAAB;
    BNE CODE_83CAC7                      ;83CAAD;
    INC.B $02                            ;83CAAF;
    LDA.B #$01                           ;83CAB1;
    STA.B $34                            ;83CAB3;
    BIT.B $10                            ;83CAB5;
    BVC CODE_83CAC6                      ;83CAB7;
    LDA.B #$1E                           ;83CAB9;
    STA.B $34                            ;83CABB;
    JSR.W CODE_83CC52                    ;83CABD;
    JSR.W CODE_83CC46                    ;83CAC0;
    JSR.W CODE_83CCBD                    ;83CAC3;

CODE_83CAC6:
    RTL                                  ;83CAC6;

CODE_83CAC7:
    DEC.B $34                            ;83CAC7;
    BNE CODE_83CAD3                      ;83CAC9;
    JSL.L CODE_84A4AB                    ;83CACB;
    JML.L CODE_828387                    ;83CACF;

CODE_83CAD3:
    REP #$20                             ;83CAD3;
    LDA.W #$FFF0                         ;83CAD5;
    STA.W $0000                          ;83CAD8;
    LDA.W #$FFE0                         ;83CADB;
    STA.W $0002                          ;83CADE;
    LDA.W #$001F                         ;83CAE1;
    STA.W $0004                          ;83CAE4;
    LDA.W #$003F                         ;83CAE7;
    STA.W $0006                          ;83CAEA;
    SEP #$20                             ;83CAED;
    LDA.B #$07                           ;83CAEF;
    STA.W $0008                          ;83CAF1;
    JML.L CODE_84A4C6                    ;83CAF4;

CODE_83CAF8:
    BIT.W $0E22                          ;83CAF8;
    BVC CODE_83CB02                      ;83CAFB;
    LDA.B #$14                           ;83CAFD;
    JMP.W CODE_8386F1                    ;83CAFF;

CODE_83CB02:
    LDA.B #$00                           ;83CB02;
    RTS                                  ;83CB04;

CODE_83CB05:
    REP #$20                             ;83CB05;
    LDX.B #$40                           ;83CB07;
    LDA.W $0BAD                          ;83CB09;
    CMP.B $05                            ;83CB0C;
    BCS CODE_83CB12                      ;83CB0E;
    LDX.B #$00                           ;83CB10;

CODE_83CB12:
    STX.B $33                            ;83CB12;
    SEP #$20                             ;83CB14;
    RTS                                  ;83CB16;

CODE_83CB17:
    JSR.W CODE_83CB05                    ;83CB17;
    REP #$20                             ;83CB1A;
    LDA.W #$0178                         ;83CB1C;
    BIT.B $32                            ;83CB1F;
    BVS CODE_83CB26                      ;83CB21;
    LDA.W #$FE88                         ;83CB23;

CODE_83CB26:
    STA.B $1A                            ;83CB26;
    SEP #$20                             ;83CB28;
    RTS                                  ;83CB2A;

CODE_83CB2B:
    REP #$20                             ;83CB2B;
    STA.W $0000                          ;83CB2D;
    LDA.W $0BAD                          ;83CB30;
    SEC                                  ;83CB33;
    SBC.B $05                            ;83CB34;
    BPL CODE_83CB3C                      ;83CB36;
    EOR.W #$FFFF                         ;83CB38;
    INC A                                ;83CB3B;

CODE_83CB3C:
    CMP.W $0000                          ;83CB3C;
    SEP #$20                             ;83CB3F;
    RTS                                  ;83CB41;

CODE_83CB42:
    REP #$20                             ;83CB42;
    LDA.B $08                            ;83CB44;
    SEC                                  ;83CB46;
    SBC.W $0BB0                          ;83CB47;
    BCC CODE_83CB51                      ;83CB4A;
    CMP.W #$0018                         ;83CB4C;
    BCS CODE_83CB65                      ;83CB4F;

CODE_83CB51:
    SEP #$20                             ;83CB51;
    LDA.W $1F0D                          ;83CB53;
    BEQ CODE_83CB63                      ;83CB56;
    LDA.W $0BB9                          ;83CB58;
    AND.B #$40                           ;83CB5B;
    CMP.B $33                            ;83CB5D;
    BEQ CODE_83CB63                      ;83CB5F;
    SEC                                  ;83CB61;
    RTS                                  ;83CB62;

CODE_83CB63:
    CLC                                  ;83CB63;
    RTS                                  ;83CB64;

CODE_83CB65:
    SEP #$20                             ;83CB65;
    LDA.B #$80                           ;83CB67;
    TSB.B $10                            ;83CB69;
    RTS                                  ;83CB6B;

CODE_83CB6C:
    BIT.B $0F                            ;83CB6C;
    BVC CODE_83CBA4                      ;83CB6E;
    REP #$21                             ;83CB70;
    LDA.B $0F                            ;83CB72;
    AND.W #$0030                         ;83CB74;
    LSR A                                ;83CB77;
    LSR A                                ;83CB78;
    ADC.W #$CF45                         ;83CB79;
    STA.B $20                            ;83CB7C;
    SEP #$20                             ;83CB7E;
    LDA.B #$03                           ;83CB80;
    LDX.B $0A                            ;83CB82;
    CPX.B #$67                           ;83CB84;
    BNE CODE_83CB8A                      ;83CB86;
    LDA.B #$06                           ;83CB88;

CODE_83CB8A:
    STA.B $26                            ;83CB8A;
    JSL.L CODE_849B03                    ;83CB8C;
    BEQ CODE_83CB98                      ;83CB90;
    LDA.B #$3C                           ;83CB92;
    JSL.L CODE_8088A2                    ;83CB94;

CODE_83CB98:
    LDA.B #$3B                           ;83CB98;
    STA.B $20                            ;83CB9A;
    LDA.B #$CF                           ;83CB9C;
    STA.B $21                            ;83CB9E;
    LDA.B #$01                           ;83CBA0;
    STA.B $26                            ;83CBA2;

CODE_83CBA4:
    RTS                                  ;83CBA4;

CODE_83CBA5:
    LDA.B $35                            ;83CBA5;
    BEQ CODE_83CBB1                      ;83CBA7;
    DEC.B $35                            ;83CBA9;
    BNE CODE_83CBB1                      ;83CBAB;
    LDA.B #$03                           ;83CBAD;
    STA.B $28                            ;83CBAF;

CODE_83CBB1:
    RTS                                  ;83CBB1;

CODE_83CBB2:
    LDX.B $32                            ;83CBB2;
    JMP.W (PTR16_83CBB7,X)               ;83CBB4;

PTR16_83CBB7:
    dw CODE_83CBEA                       ;83CBB7;
    dw CODE_83CBBD                       ;83CBB9;
    dw CODE_83CBEB                       ;83CBBB;

CODE_83CBBD:
    LDA.B #$04                           ;83CBBD;
    STA.B $32                            ;83CBBF;
    STZ.B $31                            ;83CBC1;
    LDA.B $27                            ;83CBC3;
    AND.B #$7F                           ;83CBC5;
    STA.W $0000                          ;83CBC7;
    LDA.B $3B                            ;83CBCA;
    SEC                                  ;83CBCC;
    SBC.W $0000                          ;83CBCD;
    REP #$20                             ;83CBD0;
    AND.W #$00FF                         ;83CBD2;
    XBA                                  ;83CBD5;
    CMP.W #$0800                         ;83CBD6;
    BCC CODE_83CBDE                      ;83CBD9;
    LDA.W #$0700                         ;83CBDB;

CODE_83CBDE:
    BIT.B $39                            ;83CBDE;
    BVC CODE_83CBE6                      ;83CBE0;
    EOR.W #$FFFF                         ;83CBE2;
    INC A                                ;83CBE5;

CODE_83CBE6:
    STA.B $36                            ;83CBE6;
    SEP #$20                             ;83CBE8;

CODE_83CBEA:
    RTS                                  ;83CBEA;

CODE_83CBEB:
    REP #$30                             ;83CBEB;
    LDX.B $1A                            ;83CBED;
    LDA.B $36                            ;83CBEF;
    STA.B $1A                            ;83CBF1;
    STX.B $36                            ;83CBF3;
    LDA.B $1C                            ;83CBF5;
    STA.B $38                            ;83CBF7;
    STZ.B $1C                            ;83CBF9;
    LDA.W #$4040                         ;83CBFB;
    STA.B $1E                            ;83CBFE;
    SEP #$30                             ;83CC00;
    LDA.B $2B                            ;83CC02;
    BIT.B #$04                           ;83CC04;
    BEQ CODE_83CC0B                      ;83CC06;
    JSR.W CODE_83CDB3                    ;83CC08;

CODE_83CC0B:
    LDA.B $3A                            ;83CC0B;
    STA.B $33                            ;83CC0D;
    BIT.B $3A                            ;83CC0F;
    BVC CODE_83CC19                      ;83CC11;
    JSL.L CODE_828195                    ;83CC13;
    BRA CODE_83CC1D                      ;83CC17;

CODE_83CC19:
    JSL.L CODE_828174                    ;83CC19;

CODE_83CC1D:
    REP #$20                             ;83CC1D;
    LDA.B $1A                            ;83CC1F;
    BPL CODE_83CC27                      ;83CC21;
    EOR.W #$FFFF                         ;83CC23;
    INC A                                ;83CC26;

CODE_83CC27:
    CMP.W #$0040                         ;83CC27;
    BCS CODE_83CC30                      ;83CC2A;
    LDX.B #$00                           ;83CC2C;
    STX.B $32                            ;83CC2E;

CODE_83CC30:
    REP #$10                             ;83CC30;
    LDX.B $36                            ;83CC32;
    LDA.B $1A                            ;83CC34;
    STA.B $36                            ;83CC36;
    STX.B $1A                            ;83CC38;
    LDA.B $38                            ;83CC3A;
    STA.B $1C                            ;83CC3C;
    LDA.W #$0040                         ;83CC3E;
    STA.B $1E                            ;83CC41;
    SEP #$30                             ;83CC43;
    RTS                                  ;83CC45;

CODE_83CC46:
    REP #$10                             ;83CC46;
    LDA.B #$12                           ;83CC48;
    STA.W $0000                          ;83CC4A;
    LDY.W #$0001                         ;83CC4D;
    BRA CODE_83CC62                      ;83CC50;

CODE_83CC52:
    REP #$10                             ;83CC52;
    LDA.B #$21                           ;83CC54;
    JSL.L CODE_8088A2                    ;83CC56;
    LDA.B #$08                           ;83CC5A;
    STA.W $0000                          ;83CC5C;
    LDY.W #$0009                         ;83CC5F;

CODE_83CC62:
    JSL.L CODE_8282D3                    ;83CC62;
    BNE CODE_83CCBA                      ;83CC66;
    INC.W $0000,X                        ;83CC68;
    LDA.B #$2B                           ;83CC6B;
    STA.W $000A,X                        ;83CC6D;
    LDA.W $0000                          ;83CC70;
    STA.W $000B,X                        ;83CC73;
    INC.W $0000                          ;83CC76;
    LDA.B $33                            ;83CC79;
    ORA.B #$30                           ;83CC7B;
    STA.W $0011,X                        ;83CC7D;
    STZ.W $001F,X                        ;83CC80;
    LDA.B #$30                           ;83CC83;
    STA.W $001E,X                        ;83CC85;
    REP #$20                             ;83CC88;
    STZ.W $000C,X                        ;83CC8A;
    LDA.B $05                            ;83CC8D;
    STA.W $0005,X                        ;83CC8F;
    LDA.B $08                            ;83CC92;
    STA.W $0008,X                        ;83CC94;
    PHY                                  ;83CC97;
    JSL.L CODE_849086                    ;83CC98;
    AND.W #$0006                         ;83CC9C;
    TAY                                  ;83CC9F;
    LDA.W DATA8_86CF51,Y                 ;83CCA0;
    STA.W $001A,X                        ;83CCA3;
    JSL.L CODE_849086                    ;83CCA6;
    AND.W #$0006                         ;83CCAA;
    TAY                                  ;83CCAD;
    LDA.W DATA8_86CF59,Y                 ;83CCAE;
    STA.W $001C,X                        ;83CCB1;
    PLY                                  ;83CCB4;
    SEP #$20                             ;83CCB5;
    DEY                                  ;83CCB7;
    BPL CODE_83CC62                      ;83CCB8;

CODE_83CCBA:
    SEP #$10                             ;83CCBA;
    RTS                                  ;83CCBC;

CODE_83CCBD:
    REP #$10                             ;83CCBD;
    LDY.W #$0007                         ;83CCBF;

CODE_83CCC2:
    JSL.L CODE_8282D3                    ;83CCC2;
    BNE CODE_83CD15                      ;83CCC6;
    INC.W $0000,X                        ;83CCC8;
    LDA.B #$2B                           ;83CCCB;
    STA.W $000A,X                        ;83CCCD;
    TYA                                  ;83CCD0;
    AND.B #$03                           ;83CCD1;
    CLC                                  ;83CCD3;
    ADC.B #$0E                           ;83CCD4;
    STA.W $000B,X                        ;83CCD6;
    LDA.B $11                            ;83CCD9;
    STA.W $0011,X                        ;83CCDB;
    STZ.W $001F,X                        ;83CCDE;
    LDA.B #$30                           ;83CCE1;
    STA.W $001E,X                        ;83CCE3;
    REP #$20                             ;83CCE6;
    LDA.B $05                            ;83CCE8;
    STA.W $0005,X                        ;83CCEA;
    LDA.B $08                            ;83CCED;
    STA.W $0008,X                        ;83CCEF;
    PHY                                  ;83CCF2;
    JSL.L CODE_849086                    ;83CCF3;
    AND.W #$0006                         ;83CCF7;
    TAY                                  ;83CCFA;
    LDA.W DATA8_86CF61,Y                 ;83CCFB;
    STA.W $001A,X                        ;83CCFE;
    JSL.L CODE_849086                    ;83CD01;
    AND.W #$0006                         ;83CD05;
    TAY                                  ;83CD08;
    LDA.W DATA8_86CF69,Y                 ;83CD09;
    STA.W $001C,X                        ;83CD0C;
    PLY                                  ;83CD0F;
    SEP #$20                             ;83CD10;
    DEY                                  ;83CD12;
    BPL CODE_83CCC2                      ;83CD13;

CODE_83CD15:
    SEP #$10                             ;83CD15;
    RTS                                  ;83CD17;

CODE_83CD18:
    STA.W $0000                          ;83CD18;
    JSL.L CODE_8282D3                    ;83CD1B;
    BNE CODE_83CD3E                      ;83CD1F;
    INC.W $0000,X                        ;83CD21;
    LDA.B #$2C                           ;83CD24;
    STA.W $000A,X                        ;83CD26;
    LDA.W $0000                          ;83CD29;
    STA.W $000B,X                        ;83CD2C;
    LDA.B $11                            ;83CD2F;
    ORA.B $33                            ;83CD31;
    STA.W $0011,X                        ;83CD33;
    REP #$20                             ;83CD36;
    TDC                                  ;83CD38;
    STA.W $000C,X                        ;83CD39;
    SEP #$20                             ;83CD3C;

CODE_83CD3E:
    SEP #$10                             ;83CD3E;
    RTS                                  ;83CD40;

CODE_83CD41:
    JSL.L CODE_8282D3                    ;83CD41;
    BNE CODE_83CD69                      ;83CD45;
    INC.W $0000,X                        ;83CD47;
    LDA.B #$10                           ;83CD4A;
    STA.W $000A,X                        ;83CD4C;
    LDA.B $11                            ;83CD4F;
    ORA.B $33                            ;83CD51;
    STA.W $0011,X                        ;83CD53;
    LDA.B #$0B                           ;83CD56;
    STA.W $000B,X                        ;83CD58;
    REP #$20                             ;83CD5B;
    LDA.B $05                            ;83CD5D;
    STA.W $0005,X                        ;83CD5F;
    LDA.B $08                            ;83CD62;
    STA.W $0008,X                        ;83CD64;
    SEP #$20                             ;83CD67;

CODE_83CD69:
    SEP #$10                             ;83CD69;
    RTS                                  ;83CD6B;

CODE_83CD6C:
    JSR.W CODE_83CDEA                    ;83CD6C;
    BEQ CODE_83CDB2                      ;83CD6F;
    REP #$10                             ;83CD71;
    LDY.W #$0001                         ;83CD73;

CODE_83CD76:
    JSL.L CODE_8282D3                    ;83CD76;
    BNE CODE_83CDB0                      ;83CD7A;
    INC.W $0000,X                        ;83CD7C;
    LDA.B #$09                           ;83CD7F;
    STA.W $000A,X                        ;83CD81;
    STZ.W $000B,X                        ;83CD84;
    REP #$21                             ;83CD87;
    LDA.B $08                            ;83CD89;
    ADC.W #$0020                         ;83CD8B;
    STA.W $0008,X                        ;83CD8E;
    JSL.L CODE_849086                    ;83CD91;
    AND.W #$0007                         ;83CD95;
    CLC                                  ;83CD98;
    ADC.W #$0008                         ;83CD99;
    CPY.W #$0001                         ;83CD9C;
    BEQ CODE_83CDA5                      ;83CD9F;
    EOR.W #$FFFF                         ;83CDA1;
    INC A                                ;83CDA4;

CODE_83CDA5:
    CLC                                  ;83CDA5;
    ADC.B $05                            ;83CDA6;
    STA.W $0005,X                        ;83CDA8;
    SEP #$20                             ;83CDAB;
    DEY                                  ;83CDAD;
    BPL CODE_83CD76                      ;83CDAE;

CODE_83CDB0:
    SEP #$10                             ;83CDB0;

CODE_83CDB2:
    RTS                                  ;83CDB2;

CODE_83CDB3:
    JSR.W CODE_83CDEA                    ;83CDB3;
    BEQ CODE_83CDE9                      ;83CDB6;
    LDA.B $31                            ;83CDB8;
    CMP.B #$04                           ;83CDBA;
    BCS CODE_83CDE7                      ;83CDBC;
    LDA.W $0B9C                          ;83CDBE;
    BIT.B #$03                           ;83CDC1;
    BNE CODE_83CDE7                      ;83CDC3;
    JSL.L CODE_8282D3                    ;83CDC5;
    BNE CODE_83CDE7                      ;83CDC9;
    INC.B $31                            ;83CDCB;
    INC.W $0000,X                        ;83CDCD;
    LDA.B #$09                           ;83CDD0;
    STA.W $000A,X                        ;83CDD2;
    STZ.W $000B,X                        ;83CDD5;
    REP #$21                             ;83CDD8;
    LDA.B $08                            ;83CDDA;
    ADC.W #$0020                         ;83CDDC;
    STA.W $0008,X                        ;83CDDF;
    LDA.B $05                            ;83CDE2;
    STA.W $0005,X                        ;83CDE4;

CODE_83CDE7:
    SEP #$30                             ;83CDE7;

CODE_83CDE9:
    RTS                                  ;83CDE9;

CODE_83CDEA:
    STZ.B $29                            ;83CDEA;
    LDA.B #$22                           ;83CDEC;
    STA.B $2A                            ;83CDEE;
    JSL.L CODE_8490A0                    ;83CDF0;
    CMP.B #$11                           ;83CDF4;
    BEQ CODE_83CE02                      ;83CDF6;
    LDA.B #$10                           ;83CDF8;
    STA.B $2A                            ;83CDFA;
    JSL.L CODE_8490A0                    ;83CDFC;
    CMP.B #$11                           ;83CE00;

CODE_83CE02:
    RTS                                  ;83CE02;

CODE_83CE03:
    LDX.B $01                            ;83CE03;
    JSR.W (PTR16_83CE65,X)               ;83CE05;
    JSL.L CODE_879ED4                    ;83CE08;
    LDA.B $27                            ;83CE0C;
    BEQ CODE_83CE56                      ;83CE0E;
    JSL.L CODE_849B43                    ;83CE10;
    BEQ CODE_83CE36                      ;83CE14;
    LDA.B $27                            ;83CE16;
    AND.B #$7F                           ;83CE18;
    BNE CODE_83CE2E                      ;83CE1A;
    JSL.L CODE_84A4AB                    ;83CE1C;
    JSL.L CODE_828387                    ;83CE20;
    SEP #$10                             ;83CE24;
    LDA.B #$01                           ;83CE26;
    JSL.L CODE_84A37F                    ;83CE28;
    BRA CODE_83CE64                      ;83CE2C;

CODE_83CE2E:
    LDA.B #$F1                           ;83CE2E;
    AND.B $11                            ;83CE30;
    STA.B $11                            ;83CE32;
    BRA CODE_83CE3C                      ;83CE34;

CODE_83CE36:
    LDA.B $34                            ;83CE36;
    ORA.B $11                            ;83CE38;
    STA.B $11                            ;83CE3A;

CODE_83CE3C:
    JSL.L CODE_849B03                    ;83CE3C;
    LDA.B $0B                            ;83CE40;
    CMP.B #$FF                           ;83CE42;
    BNE CODE_83CE56                      ;83CE44;
    STZ.B $0B                            ;83CE46;
    LDA.B #$03                           ;83CE48;
    JSL.L CODE_848F07                    ;83CE4A;
    LDA.B #$02                           ;83CE4E;
    STA.B $01                            ;83CE50;
    LDA.B #$50                           ;83CE52;
    STA.B $33                            ;83CE54;

CODE_83CE56:
    JSL.L CODE_8280B4                    ;83CE56;
    JSL.L CODE_82806E                    ;83CE5A;
    BCC CODE_83CE64                      ;83CE5E;
    JSL.L CODE_828387                    ;83CE60;

CODE_83CE64:
    RTL                                  ;83CE64;

PTR16_83CE65:
    dw CODE_83CE6D                       ;83CE65;
    dw CODE_83CE9D                       ;83CE67;
    dw CODE_83CEB7                       ;83CE69;
    dw CODE_83CECE                       ;83CE6B;

CODE_83CE6D:
    JSL.L CODE_82827D                    ;83CE6D;
    LDA.B $11                            ;83CE71;
    AND.B #$0E                           ;83CE73;
    STA.B $34                            ;83CE75;
    LDA.B #$08                           ;83CE77;
    STA.B $27                            ;83CE79;
    LDA.B #$01                           ;83CE7B;
    STA.B $28                            ;83CE7D;
    LDA.B #$03                           ;83CE7F;
    STA.B $26                            ;83CE81;
    LDA.B #$04                           ;83CE83;
    STA.B $12                            ;83CE85;
    STZ.B $0B                            ;83CE87;
    REP #$20                             ;83CE89;
    LDA.W #$CF71                         ;83CE8B;
    STA.B $20                            ;83CE8E;
    SEP #$20                             ;83CE90;
    LDA.B #$01                           ;83CE92;
    STA.B $33                            ;83CE94;
    LDA.B #$00                           ;83CE96;
    JSL.L CODE_848F07                    ;83CE98;
    RTS                                  ;83CE9C;

CODE_83CE9D:
    DEC.B $33                            ;83CE9D;
    BNE CODE_83CEB2                      ;83CE9F;
    LDA.B #$04                           ;83CEA1;
    STA.B $01                            ;83CEA3;
    LDA.B #$01                           ;83CEA5;
    JSL.L CODE_848F07                    ;83CEA7;
    LDA.B #$40                           ;83CEAB;
    STA.B $35                            ;83CEAD;
    JMP.W CODE_83CEB6                    ;83CEAF;

CODE_83CEB2:
    JSL.L CODE_848EEA                    ;83CEB2;

CODE_83CEB6:
    RTS                                  ;83CEB6;

CODE_83CEB7:
    DEC.B $35                            ;83CEB7;
    BNE CODE_83CEC9                      ;83CEB9;
    JSR.W CODE_83CEE4                    ;83CEBB;
    LDA.B #$12                           ;83CEBE;
    STA.B $35                            ;83CEC0;
    LDA.B #$06                           ;83CEC2;
    STA.B $01                            ;83CEC4;
    JMP.W CODE_83CECD                    ;83CEC6;

CODE_83CEC9:
    JSL.L CODE_848EEA                    ;83CEC9;

CODE_83CECD:
    RTS                                  ;83CECD;

CODE_83CECE:
    DEC.B $35                            ;83CECE;
    BNE CODE_83CEDF                      ;83CED0;
    LDA.B #$00                           ;83CED2;
    JSL.L CODE_848F07                    ;83CED4;
    LDA.B #$02                           ;83CED8;
    STA.B $01                            ;83CEDA;
    JMP.W CODE_83CEE3                    ;83CEDC;

CODE_83CEDF:
    JSL.L CODE_848EEA                    ;83CEDF;

CODE_83CEE3:
    RTS                                  ;83CEE3;

CODE_83CEE4:
    REP #$10                             ;83CEE4;
    JSL.L CODE_828358                    ;83CEE6;
    BNE CODE_83CF48                      ;83CEEA;
    INC.W $0000,X                        ;83CEEC;
    LDA.B #$14                           ;83CEEF;
    STA.W $000A,X                        ;83CEF1;
    LDA.L $7F824E                        ;83CEF4;
    STA.W $0018,X                        ;83CEF8;
    LDA.B $34                            ;83CEFB;
    ORA.B $11                            ;83CEFD;
    STA.W $0011,X                        ;83CEFF;
    AND.B #$40                           ;83CF02;
    BNE CODE_83CF17                      ;83CF04;
    REP #$20                             ;83CF06;
    LDA.B $05                            ;83CF08;
    SEC                                  ;83CF0A;
    SBC.W #$0014                         ;83CF0B;
    STA.W $0005,X                        ;83CF0E;
    STA.W $0004                          ;83CF11;
    JMP.W CODE_83CF25                    ;83CF14;

CODE_83CF17:
    REP #$20                             ;83CF17;
    LDA.B $05                            ;83CF19;
    CLC                                  ;83CF1B;
    ADC.W #$0014                         ;83CF1C;
    STA.W $0005,X                        ;83CF1F;
    STA.W $0004                          ;83CF22;

CODE_83CF25:
    REP #$20                             ;83CF25;
    LDA.B $08                            ;83CF27;
    SEC                                  ;83CF29;
    SBC.W #$000C                         ;83CF2A;
    STA.W $0008,X                        ;83CF2D;
    STA.W $0006                          ;83CF30;
    PHX                                  ;83CF33;
    SEP #$30                             ;83CF34;
    JSR.W CODE_83CF55                    ;83CF36;
    REP #$30                             ;83CF39;
    PLX                                  ;83CF3B;
    LDA.W $0000                          ;83CF3C;
    STA.W $001A,X                        ;83CF3F;
    LDA.W $0002                          ;83CF42;
    STA.W $001C,X                        ;83CF45;

CODE_83CF48:
    REP #$20                             ;83CF48;
    TDC                                  ;83CF4A;
    STA.W $000C,X                        ;83CF4B;
    SEP #$30                             ;83CF4E;
    LDA.B #$28                           ;83CF50;
    STA.B $33                            ;83CF52;
    RTS                                  ;83CF54;

CODE_83CF55:
    REP #$20                             ;83CF55;
    LDA.W $0BAD                          ;83CF57;
    STA.W $0000                          ;83CF5A;
    LDA.W $0BB0                          ;83CF5D;
    STA.W $0002                          ;83CF60;
    LDA.W #$0600                         ;83CF63;
    STA.W $0008                          ;83CF66;
    SEP #$20                             ;83CF69;
    JSL.L CODE_84ACB4                    ;83CF6B;
    RTS                                  ;83CF6F;

CODE_83CF70:
    LDX.B $01                            ;83CF70;
    JMP.W (PTR16_83CF75,X)               ;83CF72;

PTR16_83CF75:
    dw CODE_83CF7B                       ;83CF75;
    dw CODE_83CFAC                       ;83CF77;
    dw CODE_83D6E3                       ;83CF79;

CODE_83CF7B:
    JSL.L CODE_82827D                    ;83CF7B;
    LDA.B #$04                           ;83CF7F;
    STA.B $12                            ;83CF81;
    STZ.B $33                            ;83CF83;
    STZ.B $2F                            ;83CF85;
    LDA.B #$02                           ;83CF87;
    STA.B $26                            ;83CF89;
    LDA.B #$7F                           ;83CF8B;
    STA.B $27                            ;83CF8D;
    STA.B $3B                            ;83CF8F;
    LDA.B #$03                           ;83CF91;
    STA.B $28                            ;83CF93;
    STZ.B $10                            ;83CF95;
    STZ.B $32                            ;83CF97;
    REP #$20                             ;83CF99;
    LDA.W #$CF3B                         ;83CF9B;
    STA.B $20                            ;83CF9E;
    STZ.B $36                            ;83CFA0;
    STZ.B $38                            ;83CFA2;
    LDA.W #$0040                         ;83CFA4;
    STA.B $1E                            ;83CFA7;
    SEP #$20                             ;83CFA9;
    RTL                                  ;83CFAB;

CODE_83CFAC:
    LDA.L $7F8349                        ;83CFAC;
    ORA.B $33                            ;83CFB0;
    STA.B $11                            ;83CFB2;
    LDX.B $02                            ;83CFB4;
    JSR.W (PTR16_83D03C,X)               ;83CFB6;
    JSL.L CODE_8280B4                    ;83CFB9;
    LDA.B $27                            ;83CFBD;
    AND.B #$7F                           ;83CFBF;
    STA.B $3B                            ;83CFC1;
    JSL.L CODE_849B43                    ;83CFC3;
    BEQ CODE_83D01D                      ;83CFC7;
    BPL CODE_83CFD6                      ;83CFC9;
    LDA.B #$30                           ;83CFCB;
    STA.B $27                            ;83CFCD;
    LDA.B $3B                            ;83CFCF;
    CLC                                  ;83CFD1;
    ADC.B #$30                           ;83CFD2;
    STA.B $3B                            ;83CFD4;

CODE_83CFD6:
    LDA.W $1F1D                          ;83CFD6;
    CMP.B #$1C                           ;83CFD9;
    BNE CODE_83CFF7                      ;83CFDB;
    BIT.B $10                            ;83CFDD;
    BVS CODE_83CFF7                      ;83CFDF;
    LDA.B #$40                           ;83CFE1;
    TSB.B $10                            ;83CFE3;
    JSR.W CODE_83D7AC                    ;83CFE5;
    JSR.W CODE_83D7ED                    ;83CFE8;
    LDA.B #$1C                           ;83CFEB;
    JSR.W CODE_8386F1                    ;83CFED;
    INC.W $1F3B                          ;83CFF0;
    JSL.L CODE_84A04D                    ;83CFF3;

CODE_83CFF7:
    LDA.B #$0E                           ;83CFF7;
    TRB.B $11                            ;83CFF9;
    LDA.W $1F1B                          ;83CFFB;
    STA.B $3A                            ;83CFFE;
    STA.B $33                            ;83D000;
    LDA.B $3C                            ;83D002;
    BNE CODE_83D00F                      ;83D004;
    LDA.B #$05                           ;83D006;
    STA.B $3C                            ;83D008;
    LDA.B #$0D                           ;83D00A;
    JSR.W CODE_83CD18                    ;83D00C;

CODE_83D00F:
    BIT.B $10                            ;83D00F;
    BVS CODE_83D019                      ;83D011;
    LDA.B #$13                           ;83D013;
    JSL.L CODE_8088A2                    ;83D015;

CODE_83D019:
    LDA.B #$02                           ;83D019;
    STA.B $32                            ;83D01B;

CODE_83D01D:
    LDA.B $3C                            ;83D01D;
    BEQ CODE_83D023                      ;83D01F;
    DEC.B $3C                            ;83D021;

CODE_83D023:
    JSR.W CODE_83CBB2                    ;83D023;
    LDA.B $11                            ;83D026;
    AND.B #$3F                           ;83D028;
    ORA.B $33                            ;83D02A;
    STA.B $11                            ;83D02C;
    LDA.W $0C2F                          ;83D02E;
    LSR A                                ;83D031;
    BCS CODE_83D038                      ;83D032;
    JSL.L CODE_849B03                    ;83D034;

CODE_83D038:
    JML.L CODE_8491BE                    ;83D038;

PTR16_83D03C:
    dw CODE_83D064                       ;83D03C;
    dw CODE_83D090                       ;83D03E;
    dw CODE_83D0DA                       ;83D040;
    dw CODE_83D159                       ;83D042;
    dw CODE_83D1AD                       ;83D044;
    dw CODE_83D1EF                       ;83D046;
    dw CODE_83D233                       ;83D048;
    dw CODE_83D233                       ;83D04A;
    dw CODE_83D2C0                       ;83D04C;
    dw CODE_83D2A6                       ;83D04E;
    dw CODE_83D36C                       ;83D050;
    dw CODE_83D395                       ;83D052;
    dw CODE_83D3C5                       ;83D054;
    dw CODE_83D426                       ;83D056;
    dw CODE_83D513                       ;83D058;
    dw CODE_83D565                       ;83D05A;
    dw CODE_83D59E                       ;83D05C;
    dw CODE_83D615                       ;83D05E;
    dw CODE_83D63B                       ;83D060;
    dw CODE_83D2F6                       ;83D062;

CODE_83D064:
    LDX.B $03                            ;83D064;
    BNE CODE_83D082                      ;83D066;
    INC.B $03                            ;83D068;
    LDA.B #$02                           ;83D06A;
    JSL.L CODE_848F07                    ;83D06C;
    REP #$20                             ;83D070;
    LDA.W #$FF80                         ;83D072;
    STA.B $1C                            ;83D075;
    LDA.W #$0040                         ;83D077;
    STA.B $1E                            ;83D07A;
    SEP #$20                             ;83D07C;
    LDA.B #$54                           ;83D07E;
    STA.B $34                            ;83D080;

CODE_83D082:
    DEC.B $34                            ;83D082;
    BNE CODE_83D08B                      ;83D084;
    LDA.B #$02                           ;83D086;
    JSR.W CODE_8386F1                    ;83D088;

CODE_83D08B:
    JSL.L CODE_82825D                    ;83D08B;
    RTS                                  ;83D08F;

CODE_83D090:
    LDX.B $03                            ;83D090;
    BNE CODE_83D09C                      ;83D092;
    INC.B $03                            ;83D094;
    STZ.B $34                            ;83D096;
    LDA.B #$07                           ;83D098;
    STA.B $35                            ;83D09A;

CODE_83D09C:
    REP #$10                             ;83D09C;
    LDX.B $0C                            ;83D09E;
    LDA.W $0013,X                        ;83D0A0;
    CMP.B #$01                           ;83D0A3;
    SEP #$10                             ;83D0A5;
    BNE CODE_83D0D9                      ;83D0A7;
    REP #$21                             ;83D0A9;
    STZ.W $0000                          ;83D0AB;
    LDX.B $34                            ;83D0AE;
    LDA.W DATA8_86CFF3,X                 ;83D0B0;
    AND.W #$00FF                         ;83D0B3;
    BIT.W #$0080                         ;83D0B6;
    BEQ CODE_83D0C1                      ;83D0B9;
    DEC.W $0000                          ;83D0BB;
    ORA.W #$FF00                         ;83D0BE;

CODE_83D0C1:
    ADC.B $08                            ;83D0C1;
    STA.B $08                            ;83D0C3;
    SEP #$20                             ;83D0C5;
    LDA.B $08                            ;83D0C7;
    ADC.W $0000                          ;83D0C9;
    STA.B $08                            ;83D0CC;
    INC.B $34                            ;83D0CE;
    DEC.B $35                            ;83D0D0;
    BNE CODE_83D0D9                      ;83D0D2;
    LDA.B #$24                           ;83D0D4;
    JSR.W CODE_8386F1                    ;83D0D6;

CODE_83D0D9:
    RTS                                  ;83D0D9;

CODE_83D0DA:
    LDX.B $03                            ;83D0DA;
    BNE CODE_83D0EF                      ;83D0DC;
    INC.B $03                            ;83D0DE;
    JSR.W CODE_83CB05                    ;83D0E0;
    LDA.B #$02                           ;83D0E3;
    BIT.B $10                            ;83D0E5;
    BVC CODE_83D0EB                      ;83D0E7;
    LDA.B #$09                           ;83D0E9;

CODE_83D0EB:
    JSL.L CODE_848F07                    ;83D0EB;

CODE_83D0EF:
    JSR.W CODE_83D6E7                    ;83D0EF;
    JSR.W (PTR16_83D0F8,X)               ;83D0F2;
    JMP.W CODE_83D755                    ;83D0F5;

PTR16_83D0F8:
    dw CODE_83D0FE                       ;83D0F8;
    dw CODE_83D117                       ;83D0FA;
    dw CODE_83D138                       ;83D0FC;

CODE_83D0FE:
    JSR.W CODE_83D714                    ;83D0FE;
    JSL.L CODE_849086                    ;83D101;
    AND.B #$07                           ;83D105;
    TAX                                  ;83D107;
    LDA.W DATA8_86CFFE,X                 ;83D108;
    BEQ CODE_83D116                      ;83D10B;
    LDA.B #$80                           ;83D10D;
    TSB.B $10                            ;83D10F;
    LDA.B #$0A                           ;83D111;
    JMP.W CODE_8386F1                    ;83D113;

CODE_83D116:
    RTS                                  ;83D116;

CODE_83D117:
    LDA.B #$06                           ;83D117;
    JSR.W CODE_8386F1                    ;83D119;
    JSL.L CODE_849086                    ;83D11C;
    AND.B #$07                           ;83D120;
    TAX                                  ;83D122;
    LDA.W DATA8_86D006,X                 ;83D123;
    BEQ CODE_83D137                      ;83D126;
    LDA.B #$0E                           ;83D128;
    JMP.W CODE_8386F1                    ;83D12A;
    JSL.L CODE_849086                    ;83D12D;
    LSR A                                ;83D131;
    BCC CODE_83D137                      ;83D132;
    JMP.W CODE_83D70C                    ;83D134;

CODE_83D137:
    RTS                                  ;83D137;

CODE_83D138:
    LDA.B #$0E                           ;83D138;
    JSR.W CODE_8386F1                    ;83D13A;
    JSL.L CODE_849086                    ;83D13D;
    LSR A                                ;83D141;
    BCC CODE_83D147                      ;83D142;
    JMP.W CODE_83D70C                    ;83D144;

CODE_83D147:
    JSL.L CODE_849086                    ;83D147;
    AND.B #$07                           ;83D14B;
    TAX                                  ;83D14D;
    LDA.W DATA8_86D006,X                 ;83D14E;
    BEQ CODE_83D158                      ;83D151;
    LDA.B #$06                           ;83D153;
    JMP.W CODE_8386F1                    ;83D155;

CODE_83D158:
    RTS                                  ;83D158;

CODE_83D159:
    LDX.B $03                            ;83D159;
    BNE CODE_83D165                      ;83D15B;
    INC.B $03                            ;83D15D;
    LDA.B #$00                           ;83D15F;
    JSL.L CODE_848F07                    ;83D161;

CODE_83D165:
    LDA.B $2B                            ;83D165;
    BIT.B #$04                           ;83D167;
    BNE CODE_83D174                      ;83D169;
    STZ.B $1C                            ;83D16B;
    STZ.B $1D                            ;83D16D;
    LDA.B #$14                           ;83D16F;
    JMP.W CODE_8386F1                    ;83D171;

CODE_83D174:
    JSR.W CODE_83CB17                    ;83D174;
    JSR.W CODE_83D6E7                    ;83D177;
    STX.W $0000                          ;83D17A;
    JSL.L CODE_82823E                    ;83D17D;
    JSR.W CODE_83D6E7                    ;83D181;
    CPX.W $0000                          ;83D184;
    BEQ CODE_83D18D                      ;83D187;
    LDA.B #$04                           ;83D189;
    STA.B $02                            ;83D18B;

CODE_83D18D:
    LDA.B #$00                           ;83D18D;
    XBA                                  ;83D18F;
    LDA.B #$20                           ;83D190;
    JSR.W CODE_83CB2B                    ;83D192;
    BCS CODE_83D19A                      ;83D195;
    JMP.W CODE_83D714                    ;83D197;

CODE_83D19A:
    JSL.L CODE_848EEA                    ;83D19A;
    LDA.B $0F                            ;83D19E;
    AND.B #$03                           ;83D1A0;
    BEQ CODE_83D1AA                      ;83D1A2;
    ORA.B #$38                           ;83D1A4;
    JSL.L CODE_8088A2                    ;83D1A6;

CODE_83D1AA:
    JMP.W CODE_83D755                    ;83D1AA;

CODE_83D1AD:
    LDX.B $03                            ;83D1AD;
    JMP.W (PTR16_83D1B2,X)               ;83D1AF;

PTR16_83D1B2:
    dw CODE_83D1B8                       ;83D1B2;
    dw CODE_83D1CD                       ;83D1B4;
    dw CODE_83D1DC                       ;83D1B6;

CODE_83D1B8:
    LDA.B #$02                           ;83D1B8;
    STA.B $03                            ;83D1BA;
    JSL.L CODE_849086                    ;83D1BC;
    AND.B #$0F                           ;83D1C0;
    CLC                                  ;83D1C2;
    ADC.B #$0F                           ;83D1C3;
    STA.B $34                            ;83D1C5;
    LDA.B #$02                           ;83D1C7;
    JSL.L CODE_848F07                    ;83D1C9;

CODE_83D1CD:
    DEC.B $34                            ;83D1CD;
    BNE CODE_83D1DB                      ;83D1CF;
    LDA.B #$01                           ;83D1D1;
    JSL.L CODE_848F07                    ;83D1D3;
    LDA.B #$04                           ;83D1D7;
    STA.B $03                            ;83D1D9;

CODE_83D1DB:
    RTS                                  ;83D1DB;

CODE_83D1DC:
    LDA.B $0F                            ;83D1DC;
    BPL CODE_83D1E5                      ;83D1DE;
    LDA.B #$04                           ;83D1E0;
    JMP.W CODE_8386F1                    ;83D1E2;

CODE_83D1E5:
    JSR.W CODE_83CB6C                    ;83D1E5;
    JSL.L CODE_848EEA                    ;83D1E8;
    JMP.W CODE_83D755                    ;83D1EC;

CODE_83D1EF:
    LDX.B $03                            ;83D1EF;
    BNE CODE_83D21F                      ;83D1F1;
    INC.B $03                            ;83D1F3;
    REP #$20                             ;83D1F5;
    LDA.B $1A                            ;83D1F7;
    BIT.B $0F                            ;83D1F9;
    BPL CODE_83D201                      ;83D1FB;
    EOR.W #$FFFF                         ;83D1FD;
    INC A                                ;83D200;

CODE_83D201:
    STA.B $1A                            ;83D201;
    LDA.W #$0553                         ;83D203;
    STA.B $1C                            ;83D206;
    SEP #$20                             ;83D208;
    LDA.B #$80                           ;83D20A;
    TRB.B $10                            ;83D20C;
    LDA.B #$38                           ;83D20E;
    JSL.L CODE_8088A2                    ;83D210;
    LDA.B #$0C                           ;83D214;
    JSR.W CODE_83CD18                    ;83D216;
    LDA.B #$03                           ;83D219;
    JSL.L CODE_848F07                    ;83D21B;

CODE_83D21F:
    LDA.B $1D                            ;83D21F;
    BMI CODE_83D229                      ;83D221;
    LDA.B $2B                            ;83D223;
    BIT.B #$08                           ;83D225;
    BEQ CODE_83D22E                      ;83D227;

CODE_83D229:
    LDA.B #$14                           ;83D229;
    JMP.W CODE_8386F1                    ;83D22B;

CODE_83D22E:
    JSL.L CODE_828174                    ;83D22E;
    RTS                                  ;83D232;

CODE_83D233:
    LDX.B $03                            ;83D233;
    BNE CODE_83D25B                      ;83D235;
    INC.B $03                            ;83D237;
    REP #$20                             ;83D239;
    LDA.W #$0400                         ;83D23B;
    BIT.B $32                            ;83D23E;
    BVS CODE_83D245                      ;83D240;
    LDA.W #$FC00                         ;83D242;

CODE_83D245:
    STA.B $1A                            ;83D245;
    SEP #$20                             ;83D247;
    STZ.B $31                            ;83D249;
    LDA.B #$3B                           ;83D24B;
    JSL.L CODE_8088A2                    ;83D24D;
    LDA.B #$40                           ;83D251;
    STA.B $34                            ;83D253;
    LDA.B #$06                           ;83D255;
    JSL.L CODE_848F07                    ;83D257;

CODE_83D25B:
    JSR.W CODE_83CDB3                    ;83D25B;
    DEC.B $34                            ;83D25E;
    BNE CODE_83D267                      ;83D260;
    LDA.B #$12                           ;83D262;
    JMP.W CODE_8386F1                    ;83D264;

CODE_83D267:
    LDA.B $2B                            ;83D267;
    BIT.B #$04                           ;83D269;
    BNE CODE_83D276                      ;83D26B;
    STZ.B $1C                            ;83D26D;
    STZ.B $1D                            ;83D26F;
    LDA.B #$14                           ;83D271;
    JMP.W CODE_8386F1                    ;83D273;

CODE_83D276:
    BIT.B #$03                           ;83D276;
    BEQ CODE_83D27F                      ;83D278;
    LDA.B #$0A                           ;83D27A;
    JMP.W CODE_8386F1                    ;83D27C;

CODE_83D27F:
    LDA.B #$00                           ;83D27F;
    XBA                                  ;83D281;
    LDA.B #$20                           ;83D282;
    JSR.W CODE_83CB2B                    ;83D284;
    BCS CODE_83D29B                      ;83D287;
    JSL.L CODE_849086                    ;83D289;
    AND.B #$07                           ;83D28D;
    TAX                                  ;83D28F;
    LDA.W DATA8_86D00E,X                 ;83D290;
    BNE CODE_83D298                      ;83D293;
    JMP.W CODE_83D714                    ;83D295;

CODE_83D298:
    JMP.W CODE_83D710                    ;83D298;

CODE_83D29B:
    JSL.L CODE_82823E                    ;83D29B;
    JSL.L CODE_848EEA                    ;83D29F;
    JMP.W CODE_83D755                    ;83D2A3;

CODE_83D2A6:
    LDX.B $03                            ;83D2A6;
    BNE CODE_83D2B2                      ;83D2A8;
    INC.B $03                            ;83D2AA;
    LDA.B #$07                           ;83D2AC;
    JSL.L CODE_848F07                    ;83D2AE;

CODE_83D2B2:
    LDA.B $0F                            ;83D2B2;
    BPL CODE_83D2BB                      ;83D2B4;
    LDA.B #$04                           ;83D2B6;
    JMP.W CODE_8386F1                    ;83D2B8;

CODE_83D2BB:
    JSL.L CODE_848EEA                    ;83D2BB;
    RTS                                  ;83D2BF;

CODE_83D2C0:
    LDX.B $03                            ;83D2C0;
    BNE CODE_83D2CC                      ;83D2C2;
    INC.B $03                            ;83D2C4;
    LDA.B #$08                           ;83D2C6;
    JSL.L CODE_848F07                    ;83D2C8;

CODE_83D2CC:
    DEC.B $34                            ;83D2CC;
    BEQ CODE_83D2E3                      ;83D2CE;
    LDA.B $2B                            ;83D2D0;
    BIT.B #$04                           ;83D2D2;
    BNE CODE_83D2DF                      ;83D2D4;
    STZ.B $1C                            ;83D2D6;
    STZ.B $1D                            ;83D2D8;
    LDA.B #$14                           ;83D2DA;
    JMP.W CODE_8386F1                    ;83D2DC;

CODE_83D2DF:
    BIT.B #$03                           ;83D2DF;
    BEQ CODE_83D2E8                      ;83D2E1;

CODE_83D2E3:
    LDA.B #$12                           ;83D2E3;
    JMP.W CODE_8386F1                    ;83D2E5;

CODE_83D2E8:
    JSR.W CODE_83CB6C                    ;83D2E8;
    JSL.L CODE_82823E                    ;83D2EB;
    JSL.L CODE_848EEA                    ;83D2EF;
    JMP.W CODE_83D755                    ;83D2F3;

CODE_83D2F6:
    LDX.B $03                            ;83D2F6;
    JMP.W (PTR16_83D2FB,X)               ;83D2F8;

PTR16_83D2FB:
    dw CODE_83D301                       ;83D2FB;
    dw CODE_83D310                       ;83D2FD;
    dw CODE_83D33F                       ;83D2FF;

CODE_83D301:
    LDA.B #$02                           ;83D301;
    STA.B $03                            ;83D303;
    LDA.B #$3C                           ;83D305;
    STA.B $34                            ;83D307;
    LDA.B #$16                           ;83D309;
    JSL.L CODE_848F07                    ;83D30B;
    RTS                                  ;83D30F;

CODE_83D310:
    DEC.B $34                            ;83D310;
    BNE CODE_83D33A                      ;83D312;
    LDA.B #$04                           ;83D314;
    STA.B $03                            ;83D316;
    REP #$20                             ;83D318;
    LDA.W #$0400                         ;83D31A;
    BIT.B $32                            ;83D31D;
    BVS CODE_83D324                      ;83D31F;
    LDA.W #$FC00                         ;83D321;

CODE_83D324:
    STA.B $1A                            ;83D324;
    SEP #$20                             ;83D326;
    STZ.B $31                            ;83D328;
    LDA.B #$3B                           ;83D32A;
    JSL.L CODE_8088A2                    ;83D32C;
    LDA.B #$40                           ;83D330;
    STA.B $34                            ;83D332;
    LDA.B #$15                           ;83D334;
    JSL.L CODE_848F07                    ;83D336;

CODE_83D33A:
    JSL.L CODE_848EEA                    ;83D33A;
    RTS                                  ;83D33E;

CODE_83D33F:
    JSR.W CODE_83CDB3                    ;83D33F;
    DEC.B $34                            ;83D342;
    BEQ CODE_83D359                      ;83D344;
    LDA.B $2B                            ;83D346;
    BIT.B #$04                           ;83D348;
    BNE CODE_83D355                      ;83D34A;
    STZ.B $1C                            ;83D34C;
    STZ.B $1D                            ;83D34E;
    LDA.B #$14                           ;83D350;
    JMP.W CODE_8386F1                    ;83D352;

CODE_83D355:
    BIT.B #$03                           ;83D355;
    BEQ CODE_83D35E                      ;83D357;

CODE_83D359:
    LDA.B #$12                           ;83D359;
    JMP.W CODE_8386F1                    ;83D35B;

CODE_83D35E:
    JSR.W CODE_83CB6C                    ;83D35E;
    JSL.L CODE_82823E                    ;83D361;
    JSL.L CODE_848EEA                    ;83D365;
    JMP.W CODE_83D755                    ;83D369;

CODE_83D36C:
    LDX.B $03                            ;83D36C;
    BNE CODE_83D378                      ;83D36E;
    INC.B $03                            ;83D370;
    LDA.B #$03                           ;83D372;
    JSL.L CODE_848F07                    ;83D374;

CODE_83D378:
    LDA.B $2B                            ;83D378;
    BIT.B #$04                           ;83D37A;
    BEQ CODE_83D383                      ;83D37C;
    LDA.B #$16                           ;83D37E;
    JMP.W CODE_8386F1                    ;83D380;

CODE_83D383:
    REP #$20                             ;83D383;
    LDA.W #$FA80                         ;83D385;
    CMP.B $1C                            ;83D388;
    BMI CODE_83D38E                      ;83D38A;
    STA.B $1C                            ;83D38C;

CODE_83D38E:
    SEP #$20                             ;83D38E;
    JSL.L CODE_828174                    ;83D390;
    RTS                                  ;83D394;

CODE_83D395:
    LDX.B $03                            ;83D395;
    BNE CODE_83D3B7                      ;83D397;
    INC.B $03                            ;83D399;
    LDX.B #$02                           ;83D39B;
    LDY.B #$01                           ;83D39D;
    LDA.B #$0A                           ;83D39F;
    JSL.L CODE_84A33C                    ;83D3A1;
    LDA.B #$39                           ;83D3A5;
    JSL.L CODE_8088A2                    ;83D3A7;
    JSR.W CODE_83CD41                    ;83D3AB;
    JSR.W CODE_83CD6C                    ;83D3AE;
    LDA.B #$04                           ;83D3B1;
    JSL.L CODE_848F07                    ;83D3B3;

CODE_83D3B7:
    LDA.B $0F                            ;83D3B7;
    BPL CODE_83D3C0                      ;83D3B9;
    LDA.B #$04                           ;83D3BB;
    JMP.W CODE_8386F1                    ;83D3BD;

CODE_83D3C0:
    JSL.L CODE_848EEA                    ;83D3C0;
    RTS                                  ;83D3C4;

CODE_83D3C5:
    LDX.B $03                            ;83D3C5;
    JMP.W (PTR16_83D3CA,X)               ;83D3C7;

PTR16_83D3CA:
    dw CODE_83D3D0                       ;83D3CA;
    dw CODE_83D3FE                       ;83D3CC;
    dw CODE_83D415                       ;83D3CE;

CODE_83D3D0:
    LDA.B #$02                           ;83D3D0;
    STA.B $03                            ;83D3D2;
    STA.B $2F                            ;83D3D4;
    REP #$30                             ;83D3D6;
    LDX.W #$0000                         ;83D3D8;
    JSL.L CODE_849086                    ;83D3DB;
    BIT.W #$0007                         ;83D3DF;
    BEQ CODE_83D3EE                      ;83D3E2;
    LDX.W #$0178                         ;83D3E4;
    BIT.B $32                            ;83D3E7;
    BVC CODE_83D3EE                      ;83D3E9;
    LDX.W #$FE88                         ;83D3EB;

CODE_83D3EE:
    STX.B $1A                            ;83D3EE;
    LDA.W #$0553                         ;83D3F0;
    STA.B $1C                            ;83D3F3;
    SEP #$30                             ;83D3F5;
    LDA.B #$03                           ;83D3F7;
    JSL.L CODE_848F07                    ;83D3F9;
    RTS                                  ;83D3FD;

CODE_83D3FE:
    LDA.B $2B                            ;83D3FE;
    BIT.B #$04                           ;83D400;
    BEQ CODE_83D410                      ;83D402;
    LDA.B #$04                           ;83D404;
    STA.B $03                            ;83D406;
    STZ.B $2F                            ;83D408;
    LDA.B #$0F                           ;83D40A;
    JSL.L CODE_848F07                    ;83D40C;

CODE_83D410:
    JSL.L CODE_828174                    ;83D410;
    RTS                                  ;83D414;

CODE_83D415:
    LDA.B $0F                            ;83D415;
    BPL CODE_83D421                      ;83D417;
    JSR.W CODE_83D725                    ;83D419;
    LDA.B #$04                           ;83D41C;
    JMP.W CODE_8386F1                    ;83D41E;

CODE_83D421:
    JSL.L CODE_848EEA                    ;83D421;
    RTS                                  ;83D425;

CODE_83D426:
    LDX.B $03                            ;83D426;
    JMP.W (PTR16_83D42B,X)               ;83D428;

PTR16_83D42B:
    dw CODE_83D437                       ;83D42B;
    dw CODE_83D469                       ;83D42D;
    dw CODE_83D48C                       ;83D42F;
    dw CODE_83D4C8                       ;83D431;
    dw CODE_83D506                       ;83D433;
    dw CODE_83D512                       ;83D435;

CODE_83D437:
    LDA.B #$02                           ;83D437;
    STA.B $03                            ;83D439;
    REP #$31                             ;83D43B;
    LDA.W $0BAD                          ;83D43D;
    ADC.W #$FF80                         ;83D440;
    STA.W $1E5E                          ;83D443;
    STA.W $1E60                          ;83D446;
    LDX.W #$0178                         ;83D449;
    LDA.W $0BAD                          ;83D44C;
    CLC                                  ;83D44F;
    ADC.W #$0020                         ;83D450;
    CMP.B $05                            ;83D453;
    BCS CODE_83D45A                      ;83D455;
    LDX.W #$FE88                         ;83D457;

CODE_83D45A:
    STX.B $1A                            ;83D45A;
    SEP #$30                             ;83D45C;
    LDA.B #$78                           ;83D45E;
    STA.B $34                            ;83D460;
    LDA.B #$02                           ;83D462;
    JSL.L CODE_848F07                    ;83D464;
    RTS                                  ;83D468;

CODE_83D469:
    DEC.B $34                            ;83D469;
    BNE CODE_83D48B                      ;83D46B;
    LDA.B #$04                           ;83D46D;
    STA.B $03                            ;83D46F;
    REP #$21                             ;83D471;
    LDX.B #$40                           ;83D473;
    LDA.W $0BAD                          ;83D475;
    ADC.W #$0020                         ;83D478;
    CMP.B $05                            ;83D47B;
    BCS CODE_83D481                      ;83D47D;
    LDX.B #$00                           ;83D47F;

CODE_83D481:
    STX.B $33                            ;83D481;
    SEP #$20                             ;83D483;
    LDA.B #$00                           ;83D485;
    JSL.L CODE_848F07                    ;83D487;

CODE_83D48B:
    RTS                                  ;83D48B;

CODE_83D48C:
    REP #$21                             ;83D48C;
    LDA.W $0BAD                          ;83D48E;
    ADC.W #$0020                         ;83D491;
    SEC                                  ;83D494;
    SBC.B $05                            ;83D495;
    CLC                                  ;83D497;
    ADC.W #$0008                         ;83D498;
    CMP.W #$0010                         ;83D49B;
    SEP #$20                             ;83D49E;
    BCS CODE_83D4B3                      ;83D4A0;
    STZ.B $33                            ;83D4A2;
    LDA.B #$06                           ;83D4A4;
    STA.B $03                            ;83D4A6;
    LDA.B #$02                           ;83D4A8;
    STA.B $12                            ;83D4AA;
    LDA.B #$14                           ;83D4AC;
    JSL.L CODE_848F07                    ;83D4AE;
    RTS                                  ;83D4B2;

CODE_83D4B3:
    JSL.L CODE_82823E                    ;83D4B3;
    JSL.L CODE_848EEA                    ;83D4B7;
    LDA.B $0F                            ;83D4BB;
    AND.B #$03                           ;83D4BD;
    BEQ CODE_83D4C7                      ;83D4BF;
    ORA.B #$38                           ;83D4C1;
    JSL.L CODE_8088A2                    ;83D4C3;

CODE_83D4C7:
    RTS                                  ;83D4C7;

CODE_83D4C8:
    JSL.L CODE_848EEA                    ;83D4C8;
    BIT.B $0F                            ;83D4CC;
    BPL CODE_83D4FC                      ;83D4CE;
    LDA.B #$08                           ;83D4D0;
    STA.B $03                            ;83D4D2;
    LDY.B #$02                           ;83D4D4;
    LDA.B #$F6                           ;83D4D6;
    JSL.L CODE_80887F                    ;83D4D8;
    LDA.B #$80                           ;83D4DC;
    STA.W $0000                          ;83D4DE;
    LDA.B #$48                           ;83D4E1;
    STA.W $0002                          ;83D4E3;
    LDA.B #$58                           ;83D4E6;
    STA.W $0004                          ;83D4E8;
    LDA.B #$28                           ;83D4EB;
    STA.W $0006                          ;83D4ED;
    LDA.B #$01                           ;83D4F0;
    STA.W $0008                          ;83D4F2;
    JSL.L CODE_83F74A                    ;83D4F5;
    JMP.W CODE_83D846                    ;83D4F9;

CODE_83D4FC:
    BVC CODE_83D505                      ;83D4FC;
    JSL.L CODE_84A061                    ;83D4FE;
    JSR.W CODE_83D760                    ;83D502;

CODE_83D505:
    RTS                                  ;83D505;

CODE_83D506:
    LDA.W $1F2C                          ;83D506;
    BMI CODE_83D512                      ;83D509;
    LDA.B #$0A                           ;83D50B;
    STA.B $03                            ;83D50D;
    JSR.W CODE_83D78A                    ;83D50F;

CODE_83D512:
    RTS                                  ;83D512;

CODE_83D513:
    JSR.W CODE_83D80D                    ;83D513;
    LDX.B $03                            ;83D516;
    JMP.W (PTR16_83D51B,X)               ;83D518;

PTR16_83D51B:
    dw CODE_83D521                       ;83D51B;
    dw CODE_83D531                       ;83D51D;
    dw CODE_83D546                       ;83D51F;

CODE_83D521:
    LDA.B #$02                           ;83D521;
    STA.B $03                            ;83D523;
    LDA.B #$40                           ;83D525;
    STA.W $0C11                          ;83D527;
    LDA.B #$0E                           ;83D52A;
    JSL.L CODE_848F07                    ;83D52C;
    RTS                                  ;83D530;

CODE_83D531:
    LDA.B $0F                            ;83D531;
    BPL CODE_83D541                      ;83D533;
    LDA.B #$04                           ;83D535;
    STA.B $03                            ;83D537;
    STA.B $30                            ;83D539;
    LDA.B #$09                           ;83D53B;
    JSL.L CODE_848F07                    ;83D53D;

CODE_83D541:
    JSL.L CODE_848EEA                    ;83D541;
    RTS                                  ;83D545;

CODE_83D546:
    LDA.B #$33                           ;83D546;
    STA.B $0A                            ;83D548;
    JSL.L CODE_84A1D0                    ;83D54A;
    LDA.B #$32                           ;83D54E;
    STA.B $0A                            ;83D550;
    REP #$10                             ;83D552;
    LDX.W $0000                          ;83D554;
    LDA.W $003B,X                        ;83D557;
    SEP #$10                             ;83D55A;
    LSR A                                ;83D55C;
    BCC CODE_83D564                      ;83D55D;
    LDA.B #$1E                           ;83D55F;
    JMP.W CODE_8386F1                    ;83D561;

CODE_83D564:
    RTS                                  ;83D564;

CODE_83D565:
    JSR.W CODE_83D80D                    ;83D565;
    LDX.B $03                            ;83D568;
    BNE CODE_83D581                      ;83D56A;
    INC.B $03                            ;83D56C;
    REP #$20                             ;83D56E;
    LDA.W #$0500                         ;83D570;
    STA.B $1C                            ;83D573;
    STZ.B $1A                            ;83D575;
    STZ.B $1E                            ;83D577;
    SEP #$20                             ;83D579;
    LDA.B #$0A                           ;83D57B;
    JSL.L CODE_848F07                    ;83D57D;

CODE_83D581:
    JSL.L CODE_82825D                    ;83D581;
    REP #$20                             ;83D585;
    LDA.W #$0136                         ;83D587;
    CMP.B $08                            ;83D58A;
    BCC CODE_83D597                      ;83D58C;
    STA.B $08                            ;83D58E;
    SEP #$20                             ;83D590;
    LDA.B #$20                           ;83D592;
    JMP.W CODE_8386F1                    ;83D594;

CODE_83D597:
    SEP #$20                             ;83D597;
    JSL.L CODE_848EEA                    ;83D599;
    RTS                                  ;83D59D;

CODE_83D59E:
    JSR.W CODE_83D80D                    ;83D59E;
    LDX.B $03                            ;83D5A1;
    JMP.W (PTR16_83D5A6,X)               ;83D5A3;

PTR16_83D5A6:
    dw CODE_83D5AC                       ;83D5A6;
    dw CODE_83D5C7                       ;83D5A8;
    dw CODE_83D5D7                       ;83D5AA;

CODE_83D5AC:
    REP #$10                             ;83D5AC;
    LDX.B $0C                            ;83D5AE;
    LDA.W $0002,X                        ;83D5B0;
    CMP.B #$04                           ;83D5B3;
    BNE CODE_83D5C0                      ;83D5B5;
    LDA.B #$01                           ;83D5B7;
    STA.W $0010,X                        ;83D5B9;
    LDA.B #$02                           ;83D5BC;
    STA.B $03                            ;83D5BE;

CODE_83D5C0:
    SEP #$10                             ;83D5C0;
    JSL.L CODE_848EEA                    ;83D5C2;
    RTS                                  ;83D5C6;

CODE_83D5C7:
    LDA.B #$04                           ;83D5C7;
    STA.B $03                            ;83D5C9;
    LDA.B #$09                           ;83D5CB;
    JSL.L CODE_848F07                    ;83D5CD;
    STZ.B $34                            ;83D5D1;
    LDA.B #$04                           ;83D5D3;
    STA.B $35                            ;83D5D5;

CODE_83D5D7:
    REP #$10                             ;83D5D7;
    LDX.B $0C                            ;83D5D9;
    LDA.W $0013,X                        ;83D5DB;
    CMP.B #$01                           ;83D5DE;
    SEP #$10                             ;83D5E0;
    BNE CODE_83D614                      ;83D5E2;
    REP #$21                             ;83D5E4;
    STZ.W $0000                          ;83D5E6;
    LDX.B $34                            ;83D5E9;
    LDA.W DATA8_86CFFA,X                 ;83D5EB;
    AND.W #$00FF                         ;83D5EE;
    BIT.W #$0080                         ;83D5F1;
    BEQ CODE_83D5FC                      ;83D5F4;
    DEC.W $0000                          ;83D5F6;
    ORA.W #$FF00                         ;83D5F9;

CODE_83D5FC:
    ADC.B $08                            ;83D5FC;
    STA.B $08                            ;83D5FE;
    SEP #$20                             ;83D600;
    LDA.B $08                            ;83D602;
    ADC.W $0000                          ;83D604;
    STA.B $08                            ;83D607;
    INC.B $34                            ;83D609;
    DEC.B $35                            ;83D60B;
    BNE CODE_83D614                      ;83D60D;
    LDA.B #$22                           ;83D60F;
    JSR.W CODE_8386F1                    ;83D611;

CODE_83D614:
    RTS                                  ;83D614;

CODE_83D615:
    JSR.W CODE_83D80D                    ;83D615;
    LDX.B $03                            ;83D618;
    BNE CODE_83D62A                      ;83D61A;
    INC.B $03                            ;83D61C;
    LDA.B #$00                           ;83D61E;
    STA.B $1C                            ;83D620;
    LDA.B #$01                           ;83D622;
    STA.B $1D                            ;83D624;
    LDA.B #$2A                           ;83D626;
    STA.B $34                            ;83D628;

CODE_83D62A:
    DEC.B $34                            ;83D62A;
    BNE CODE_83D636                      ;83D62C;
    LDA.B #$02                           ;83D62E;
    TSB.B $10                            ;83D630;
    LDA.B #$04                           ;83D632;
    STA.B $01                            ;83D634;

CODE_83D636:
    JSL.L CODE_82825D                    ;83D636;
    RTS                                  ;83D63A;

CODE_83D63B:
    LDX.B $03                            ;83D63B;
    JMP.W (PTR16_83D640,X)               ;83D63D;

PTR16_83D640:
    dw CODE_83D64A                       ;83D640;
    dw CODE_83D667                       ;83D642;
    dw CODE_83D6A0                       ;83D644;
    dw CODE_83D6B1                       ;83D646;
    dw CODE_83D6C6                       ;83D648;

CODE_83D64A:
    LDA.B #$02                           ;83D64A;
    STA.B $03                            ;83D64C;
    LDA.B #$00                           ;83D64E;
    STA.B $1C                            ;83D650;
    LDA.B #$05                           ;83D652;
    STA.B $1D                            ;83D654;
    LDA.B #$38                           ;83D656;
    JSL.L CODE_8088A2                    ;83D658;
    LDA.B #$0C                           ;83D65C;
    JSR.W CODE_83CD18                    ;83D65E;
    LDA.B #$03                           ;83D661;
    JSL.L CODE_848F07                    ;83D663;

CODE_83D667:
    LDA.B $2B                            ;83D667;
    BIT.B #$04                           ;83D669;
    BEQ CODE_83D68E                      ;83D66B;
    LDA.B #$04                           ;83D66D;
    STA.B $03                            ;83D66F;
    LDA.B #$39                           ;83D671;
    JSL.L CODE_8088A2                    ;83D673;
    LDX.B #$02                           ;83D677;
    LDY.B #$01                           ;83D679;
    LDA.B #$0A                           ;83D67B;
    JSL.L CODE_84A33C                    ;83D67D;
    JSR.W CODE_83CD41                    ;83D681;
    JSR.W CODE_83CD6C                    ;83D684;
    LDA.B #$04                           ;83D687;
    JSL.L CODE_848F07                    ;83D689;
    RTS                                  ;83D68D;

CODE_83D68E:
    JSL.L CODE_828174                    ;83D68E;
    REP #$20                             ;83D692;
    LDA.W #$FA80                         ;83D694;
    CMP.B $1C                            ;83D697;
    BMI CODE_83D69D                      ;83D699;
    STA.B $1C                            ;83D69B;

CODE_83D69D:
    SEP #$20                             ;83D69D;
    RTS                                  ;83D69F;

CODE_83D6A0:
    LDA.B $0F                            ;83D6A0;
    BPL CODE_83D6AC                      ;83D6A2;
    LDA.B #$06                           ;83D6A4;
    STA.B $03                            ;83D6A6;
    LDA.B #$B0                           ;83D6A8;
    STA.B $34                            ;83D6AA;

CODE_83D6AC:
    JSL.L CODE_848EEA                    ;83D6AC;
    RTS                                  ;83D6B0;

CODE_83D6B1:
    DEC.B $34                            ;83D6B1;
    BNE CODE_83D6C5                      ;83D6B3;
    LDA.B #$08                           ;83D6B5;
    STA.B $03                            ;83D6B7;
    LDA.B #$3C                           ;83D6B9;
    STA.B $34                            ;83D6BB;
    LDY.B #$02                           ;83D6BD;
    LDA.B #$F6                           ;83D6BF;
    JSL.L CODE_80887F                    ;83D6C1;

CODE_83D6C5:
    RTS                                  ;83D6C5;

CODE_83D6C6:
    DEC.B $34                            ;83D6C6;
    BNE CODE_83D6E2                      ;83D6C8;
    LDA.L $001F26                        ;83D6CA;
    BEQ CODE_83D6D6                      ;83D6CE;
    LDA.B #$24                           ;83D6D0;
    JSL.L CODE_8087A2                    ;83D6D2;

CODE_83D6D6:
    JSL.L CODE_849FFE                    ;83D6D6;
    STZ.W $0BD8                          ;83D6DA;
    LDA.B #$04                           ;83D6DD;
    JMP.W CODE_8386F1                    ;83D6DF;

CODE_83D6E2:
    RTS                                  ;83D6E2;

CODE_83D6E3:
    JML.L CODE_828398                    ;83D6E3;

CODE_83D6E7:
    REP #$20                             ;83D6E7;
    LDA.B $05                            ;83D6E9;
    SEC                                  ;83D6EB;
    SBC.W $0BAD                          ;83D6EC;
    BPL CODE_83D6F5                      ;83D6EF;
    EOR.W #$FFFF                         ;83D6F1;
    INC A                                ;83D6F4;

CODE_83D6F5:
    CMP.W #$0020                         ;83D6F5;
    BCC CODE_83D707                      ;83D6F8;
    CMP.W #$00A0                         ;83D6FA;
    BCC CODE_83D703                      ;83D6FD;
    LDX.B #$04                           ;83D6FF;
    BRA CODE_83D709                      ;83D701;

CODE_83D703:
    LDX.B #$02                           ;83D703;
    BRA CODE_83D709                      ;83D705;

CODE_83D707:
    LDX.B #$00                           ;83D707;

CODE_83D709:
    SEP #$20                             ;83D709;
    RTS                                  ;83D70B;

CODE_83D70C:
    LDX.B #$26                           ;83D70C;
    BRA CODE_83D716                      ;83D70E;

CODE_83D710:
    LDX.B #$10                           ;83D710;
    BRA CODE_83D716                      ;83D712;

CODE_83D714:
    LDX.B #$08                           ;83D714;

CODE_83D716:
    LDA.W $0BCF                          ;83D716;
    AND.B #$7F                           ;83D719;
    CMP.B #$04                           ;83D71B;
    BCS CODE_83D721                      ;83D71D;
    LDX.B #$18                           ;83D71F;

CODE_83D721:
    TXA                                  ;83D721;
    JMP.W CODE_8386F1                    ;83D722;

CODE_83D725:
    JSL.L CODE_828358                    ;83D725;
    BNE CODE_83D752                      ;83D729;
    INC.W $0000,X                        ;83D72B;
    LDA.B #$16                           ;83D72E;
    STA.W $000A,X                        ;83D730;
    LDA.B $33                            ;83D733;
    STA.W $0011,X                        ;83D735;
    REP #$21                             ;83D738;
    LDA.W #$0016                         ;83D73A;
    BIT.B $32                            ;83D73D;
    BVS CODE_83D744                      ;83D73F;
    LDA.W #$FFEA                         ;83D741;

CODE_83D744:
    ADC.B $05                            ;83D744;
    STA.W $0005,X                        ;83D746;
    LDA.B $08                            ;83D749;
    CLC                                  ;83D74B;
    ADC.W #$FFE2                         ;83D74C;
    STA.W $0008,X                        ;83D74F;

CODE_83D752:
    SEP #$30                             ;83D752;
    RTS                                  ;83D754;

CODE_83D755:
    LDA.W $0C26                          ;83D755;
    BPL CODE_83D75F                      ;83D758;
    LDA.B #$1A                           ;83D75A;
    JMP.W CODE_8386F1                    ;83D75C;

CODE_83D75F:
    RTS                                  ;83D75F;

CODE_83D760:
    REP #$21                             ;83D760;
    LDA.B $0F                            ;83D762;
    AND.W #$0003                         ;83D764;
    TAX                                  ;83D767;
    LDA.W DATA8_86D016,X                 ;83D768;
    AND.W #$00FF                         ;83D76B;
    BIT.B $32                            ;83D76E;
    BVS CODE_83D776                      ;83D770;
    EOR.W #$FFFF                         ;83D772;
    INC A                                ;83D775;

CODE_83D776:
    ADC.B $05                            ;83D776;
    STA.W $0BAD                          ;83D778;
    LDA.W DATA8_86D017,X                 ;83D77B;
    AND.W #$00FF                         ;83D77E;
    CLC                                  ;83D781;
    ADC.B $08                            ;83D782;
    STA.W $0BB0                          ;83D784;
    SEP #$20                             ;83D787;
    RTS                                  ;83D789;

CODE_83D78A:
    JSL.L CODE_828321                    ;83D78A;
    BNE CODE_83D7A9                      ;83D78E;
    INC.W $0000,X                        ;83D790;
    LDA.B #$33                           ;83D793;
    STA.W $000A,X                        ;83D795;
    REP #$21                             ;83D798;
    LDA.W $1E4D                          ;83D79A;
    ADC.W #$FFD0                         ;83D79D;
    STA.W $0005,X                        ;83D7A0;
    LDA.W #$01AF                         ;83D7A3;
    STA.W $0008,X                        ;83D7A6;

CODE_83D7A9:
    SEP #$30                             ;83D7A9;
    RTS                                  ;83D7AB;

CODE_83D7AC:
    JSL.L CODE_8282D3                    ;83D7AC;
    BNE CODE_83D7EA                      ;83D7B0;
    INC.W $0000,X                        ;83D7B2;
    LDA.B #$2B                           ;83D7B5;
    STA.W $000A,X                        ;83D7B7;
    LDA.B #$14                           ;83D7BA;
    STA.W $000B,X                        ;83D7BC;
    LDA.B $33                            ;83D7BF;
    ORA.B #$30                           ;83D7C1;
    STA.W $0011,X                        ;83D7C3;
    REP #$20                             ;83D7C6;
    LDA.B $05                            ;83D7C8;
    STA.W $0005,X                        ;83D7CA;
    LDA.B $08                            ;83D7CD;
    STA.W $0008,X                        ;83D7CF;
    LDA.W #$FF00                         ;83D7D2;
    STA.W $001A,X                        ;83D7D5;
    LDA.W #$0300                         ;83D7D8;
    STA.W $001C,X                        ;83D7DB;
    LDA.W #$0030                         ;83D7DE;
    STA.W $001E,X                        ;83D7E1;
    LDA.W #$01BC                         ;83D7E4;
    STA.W $000C,X                        ;83D7E7;

CODE_83D7EA:
    SEP #$30                             ;83D7EA;
    RTS                                  ;83D7EC;

CODE_83D7ED:
    REP #$21                             ;83D7ED;
    LDA.B $05                            ;83D7EF;
    ADC.W #$FFED                         ;83D7F1;
    STA.W $0000                          ;83D7F4;
    LDA.B $08                            ;83D7F7;
    CLC                                  ;83D7F9;
    ADC.W #$FFF4                         ;83D7FA;
    STA.W $0002                          ;83D7FD;
    LDA.W #$0508                         ;83D800;
    STA.W $0004                          ;83D803;
    JSL.L CODE_84A462                    ;83D806;
    SEP #$20                             ;83D80A;
    RTS                                  ;83D80C;

CODE_83D80D:
    LDA.W $0B9C                          ;83D80D;
    AND.B #$07                           ;83D810;
    BNE CODE_83D845                      ;83D812;
    JSL.L CODE_8282D3                    ;83D814;
    BNE CODE_83D843                      ;83D818;
    INC.W $0000,X                        ;83D81A;
    LDA.B #$09                           ;83D81D;
    STA.W $000A,X                        ;83D81F;
    LDA.B #$80                           ;83D822;
    STA.W $000B,X                        ;83D824;
    JSL.L CODE_849086                    ;83D827;
    AND.B #$01                           ;83D82B;
    STA.W $000C,X                        ;83D82D;
    REP #$21                             ;83D830;
    LDA.B $05                            ;83D832;
    ADC.W #$0011                         ;83D834;
    STA.W $0005,X                        ;83D837;
    LDA.B $08                            ;83D83A;
    CLC                                  ;83D83C;
    ADC.W #$FFF5                         ;83D83D;
    STA.W $0008,X                        ;83D840;

CODE_83D843:
    SEP #$30                             ;83D843;

CODE_83D845:
    RTS                                  ;83D845;

CODE_83D846:
    JSL.L CODE_828321                    ;83D846;
    BNE CODE_83D859                      ;83D84A;
    INC.W $0000,X                        ;83D84C;
    LDA.B #$3C                           ;83D84F;
    STA.W $000A,X                        ;83D851;
    LDA.B #$01                           ;83D854;
    STA.W $000B,X                        ;83D856;

CODE_83D859:
    SEP #$10                             ;83D859;
    RTS                                  ;83D85B;

CODE_83D85C:
    LDA.B $33                            ;83D85C;
    TSB.B $11                            ;83D85E;
    LDX.B $01                            ;83D860;
    JSR.W (PTR16_83D8B2,X)               ;83D862;
    JSL.L CODE_849B03                    ;83D865;
    JSL.L CODE_849B43                    ;83D869;
    BEQ CODE_83D8A4                      ;83D86D;
    BPL CODE_83D8A0                      ;83D86F;
    JSL.L CODE_84A4AB                    ;83D871;
    LDA.B #$01                           ;83D875;
    JSL.L CODE_84A37F                    ;83D877;
    LDA.B #$03                           ;83D87B;
    STA.B $34                            ;83D87D;
    STA.B $3A                            ;83D87F;
    JSR.W CODE_83DA93                    ;83D881;
    LDA.B #$01                           ;83D884;
    STA.B $34                            ;83D886;
    LDA.B #$04                           ;83D888;
    STA.B $3A                            ;83D88A;
    LDA.B $11                            ;83D88C;
    EOR.B #$40                           ;83D88E;
    STA.B $11                            ;83D890;
    JSR.W CODE_83DA93                    ;83D892;
    LDA.B #$08                           ;83D895;
    STA.B $34                            ;83D897;
    JSR.W CODE_83DB01                    ;83D899;
    JML.L CODE_828387                    ;83D89C;

CODE_83D8A0:
    LDA.B #$0E                           ;83D8A0;
    TRB.B $11                            ;83D8A2;

CODE_83D8A4:
    JSL.L CODE_82806E                    ;83D8A4;
    BCS CODE_83D8AE                      ;83D8A8;
    JML.L CODE_8280B4                    ;83D8AA;

CODE_83D8AE:
    JML.L CODE_828387                    ;83D8AE;

PTR16_83D8B2:
    dw CODE_83D8C2                       ;83D8B2;
    dw CODE_83D8E6                       ;83D8B4;
    dw CODE_83D90E                       ;83D8B6;
    dw CODE_83D94F                       ;83D8B8;
    dw CODE_83D98A                       ;83D8BA;
    dw CODE_83D9AF                       ;83D8BC;
    dw CODE_83DA0D                       ;83D8BE;
    dw CODE_83DA2E                       ;83D8C0;

CODE_83D8C2:
    JSL.L CODE_82827D                    ;83D8C2;
    STZ.B $28                            ;83D8C6;
    LDA.B $11                            ;83D8C8;
    AND.B #$0E                           ;83D8CA;
    STA.B $33                            ;83D8CC;
    LDA.B #$7F                           ;83D8CE;
    STA.B $27                            ;83D8D0;
    LDA.B #$02                           ;83D8D2;
    STA.B $26                            ;83D8D4;
    LDA.B #$00                           ;83D8D6;
    JSL.L CODE_848F07                    ;83D8D8;
    REP #$20                             ;83D8DC;
    LDA.W #$D024                         ;83D8DE;
    STA.B $20                            ;83D8E1;
    SEP #$20                             ;83D8E3;
    RTS                                  ;83D8E5;

CODE_83D8E6:
    REP #$20                             ;83D8E6;
    LDA.B $05                            ;83D8E8;
    SEC                                  ;83D8EA;
    SBC.W $0BAD                          ;83D8EB;
    BCS CODE_83D8F4                      ;83D8EE;
    EOR.W #$FFFF                         ;83D8F0;
    INC A                                ;83D8F3;

CODE_83D8F4:
    CMP.W #$0050                         ;83D8F4;
    SEP #$20                             ;83D8F7;
    BCS CODE_83D909                      ;83D8F9;
    LDA.B #$04                           ;83D8FB;
    STA.B $01                            ;83D8FD;
    STZ.B $34                            ;83D8FF;
    LDA.B #$40                           ;83D901;
    STA.B $1E                            ;83D903;
    LDA.B #$FF                           ;83D905;
    STA.B $2F                            ;83D907;

CODE_83D909:
    LDA.B #$7F                           ;83D909;
    STA.B $27                            ;83D90B;
    RTS                                  ;83D90D;

CODE_83D90E:
    JSL.L CODE_8281E8                    ;83D90E;
    JSL.L CODE_8491BE                    ;83D912;
    LDA.B $2B                            ;83D916;
    AND.B #$04                           ;83D918;
    BEQ CODE_83D94A                      ;83D91A;
    LDA.B #$06                           ;83D91C;
    JSL.L CODE_848F07                    ;83D91E;
    LDA.B #$06                           ;83D922;
    STA.B $01                            ;83D924;
    LDA.B #$20                           ;83D926;
    JSL.L CODE_8088A2                    ;83D928;
    REP #$20                             ;83D92C;
    LDA.B $1C                            ;83D92E;
    EOR.W #$FFFF                         ;83D930;
    INC A                                ;83D933;
    LSR A                                ;83D934;
    LSR A                                ;83D935;
    STA.B $1C                            ;83D936;
    SEP #$20                             ;83D938;
    STZ.B $3A                            ;83D93A;
    LDA.B #$03                           ;83D93C;
    STA.B $34                            ;83D93E;
    JSR.W CODE_83DA93                    ;83D940;
    LDA.B #$05                           ;83D943;
    STA.B $34                            ;83D945;
    JSR.W CODE_83DB01                    ;83D947;

CODE_83D94A:
    LDA.B #$7F                           ;83D94A;
    STA.B $27                            ;83D94C;
    RTS                                  ;83D94E;

CODE_83D94F:
    JSL.L CODE_848EEA                    ;83D94F;
    LDA.B $02                            ;83D953;
    BNE CODE_83D969                      ;83D955;
    JSL.L CODE_8281E8                    ;83D957;
    JSL.L CODE_8491BE                    ;83D95B;
    LDA.B $2B                            ;83D95F;
    AND.B #$04                           ;83D961;
    BEQ CODE_83D985                      ;83D963;
    INC.B $02                            ;83D965;
    STZ.B $03                            ;83D967;

CODE_83D969:
    JSR.W CODE_83DB67                    ;83D969;
    LDA.B $0F                            ;83D96C;
    BPL CODE_83D985                      ;83D96E;
    LDA.B #$08                           ;83D970;
    STA.B $01                            ;83D972;
    STZ.B $02                            ;83D974;
    LDA.B #$05                           ;83D976;
    JSL.L CODE_848F07                    ;83D978;
    REP #$20                             ;83D97C;
    LDA.W #$D02E                         ;83D97E;
    STA.B $20                            ;83D981;
    SEP #$20                             ;83D983;

CODE_83D985:
    LDA.B #$7F                           ;83D985;
    STA.B $27                            ;83D987;
    RTS                                  ;83D989;

CODE_83D98A:
    LDA.B #$7F                           ;83D98A;
    STA.B $27                            ;83D98C;
    JSL.L CODE_848EEA                    ;83D98E;
    LDA.B $0F                            ;83D992;
    BPL CODE_83D9AC                      ;83D994;
    LDA.B #$0A                           ;83D996;
    STA.B $01                            ;83D998;
    LDA.B #$1E                           ;83D99A;
    STA.B $35                            ;83D99C;
    LDA.B #$10                           ;83D99E;
    JSL.L CODE_848F07                    ;83D9A0;
    LDA.B #$08                           ;83D9A4;
    STA.B $27                            ;83D9A6;
    LDA.B #$03                           ;83D9A8;
    STA.B $28                            ;83D9AA;

CODE_83D9AC:
    JMP.W CODE_83DB67                    ;83D9AC;

CODE_83D9AF:
    JSL.L CODE_84AC9B                    ;83D9AF;
    DEC.B $35                            ;83D9B3;
    BNE CODE_83DA0A                      ;83D9B5;
    JSL.L CODE_849086                    ;83D9B7;
    AND.B #$0F                           ;83D9BB;
    CMP.B #$0A                           ;83D9BD;
    BCC CODE_83DA06                      ;83D9BF;
    JSL.L CODE_828358                    ;83D9C1;
    BNE CODE_83DA04                      ;83D9C5;
    INC.W $0000,X                        ;83D9C7;
    LDA.B #$17                           ;83D9CA;
    STA.W $000A,X                        ;83D9CC;
    STZ.W $000B,X                        ;83D9CF;
    LDA.B $11                            ;83D9D2;
    STA.W $0011,X                        ;83D9D4;
    LDA.B $18                            ;83D9D7;
    STA.W $0018,X                        ;83D9D9;
    LDA.B $16                            ;83D9DC;
    STA.W $0016,X                        ;83D9DE;
    REP #$20                             ;83D9E1;
    TDC                                  ;83D9E3;
    STA.W $000C,X                        ;83D9E4;
    LDA.B $05                            ;83D9E7;
    STA.W $0005,X                        ;83D9E9;
    LDA.W $1E50                          ;83D9EC;
    CLC                                  ;83D9EF;
    ADC.W #$0008                         ;83D9F0;
    STA.W $0008,X                        ;83D9F3;
    SEP #$20                             ;83D9F6;
    LDA.B #$0C                           ;83D9F8;
    STA.B $01                            ;83D9FA;
    LDA.B #$07                           ;83D9FC;
    JSL.L CODE_848F07                    ;83D9FE;
    STZ.B $0B                            ;83DA02;

CODE_83DA04:
    SEP #$10                             ;83DA04;

CODE_83DA06:
    LDA.B #$1E                           ;83DA06;
    STA.B $35                            ;83DA08;

CODE_83DA0A:
    JMP.W CODE_83DB67                    ;83DA0A;

CODE_83DA0D:
    JSL.L CODE_84AC9B                    ;83DA0D;
    JSR.W CODE_83DB67                    ;83DA11;
    LDA.B $0B                            ;83DA14;
    BEQ CODE_83DA22                      ;83DA16;
    BMI CODE_83DA23                      ;83DA18;
    LDA.B #$0E                           ;83DA1A;
    STA.B $01                            ;83DA1C;
    JSL.L CODE_848EEA                    ;83DA1E;

CODE_83DA22:
    RTS                                  ;83DA22;

CODE_83DA23:
    LDA.B #$10                           ;83DA23;
    JSL.L CODE_848F07                    ;83DA25;
    LDA.B #$0A                           ;83DA29;
    STA.B $01                            ;83DA2B;
    RTS                                  ;83DA2D;

CODE_83DA2E:
    JSL.L CODE_84AC9B                    ;83DA2E;
    JSR.W CODE_83DB67                    ;83DA32;
    JSL.L CODE_848EEA                    ;83DA35;
    LDA.B $02                            ;83DA39;
    BNE CODE_83DA82                      ;83DA3B;
    LDA.B $0F                            ;83DA3D;
    AND.B #$0F                           ;83DA3F;
    BEQ CODE_83DA92                      ;83DA41;
    INC.B $02                            ;83DA43;
    JSL.L CODE_828358                    ;83DA45;
    BNE CODE_83DA80                      ;83DA49;
    INC.W $0000,X                        ;83DA4B;
    LDA.B #$17                           ;83DA4E;
    STA.W $000A,X                        ;83DA50;
    STA.W $000B,X                        ;83DA53;
    LDA.B $18                            ;83DA56;
    STA.W $0018,X                        ;83DA58;
    LDA.B $16                            ;83DA5B;
    STA.W $0016,X                        ;83DA5D;
    LDA.B $11                            ;83DA60;
    STA.W $0011,X                        ;83DA62;
    ASL A                                ;83DA65;
    ASL A                                ;83DA66;
    REP #$20                             ;83DA67;
    LDA.W #$0016                         ;83DA69;
    BCS CODE_83DA71                      ;83DA6C;
    LDA.W #$FFEA                         ;83DA6E;

CODE_83DA71:
    CLC                                  ;83DA71;
    ADC.B $05                            ;83DA72;
    STA.W $0005,X                        ;83DA74;
    LDA.B $08                            ;83DA77;
    SEC                                  ;83DA79;
    SBC.W #$0008                         ;83DA7A;
    STA.W $0008,X                        ;83DA7D;

CODE_83DA80:
    SEP #$30                             ;83DA80;

CODE_83DA82:
    LDA.B $0F                            ;83DA82;
    BPL CODE_83DA92                      ;83DA84;
    LDA.B #$10                           ;83DA86;
    JSL.L CODE_848F07                    ;83DA88;
    LDA.B #$0A                           ;83DA8C;
    STA.B $01                            ;83DA8E;
    STZ.B $02                            ;83DA90;

CODE_83DA92:
    RTS                                  ;83DA92;

CODE_83DA93:
    JSL.L CODE_8282D3                    ;83DA93;
    BNE CODE_83DAFE                      ;83DA97;
    INC.W $0000,X                        ;83DA99;
    LDA.B #$2B                           ;83DA9C;
    STA.W $000A,X                        ;83DA9E;
    LDA.B $11                            ;83DAA1;
    STA.W $0011,X                        ;83DAA3;
    STZ.W $001F,X                        ;83DAA6;
    LDA.B #$40                           ;83DAA9;
    STA.W $001E,X                        ;83DAAB;
    LDA.B #$00                           ;83DAAE;
    XBA                                  ;83DAB0;
    LDA.B $3A                            ;83DAB1;
    CLC                                  ;83DAB3;
    ADC.B $34                            ;83DAB4;
    DEC A                                ;83DAB6;
    TAY                                  ;83DAB7;
    LDA.W DATA8_86D068,Y                 ;83DAB8;
    STA.W $000B,X                        ;83DABB;
    TYA                                  ;83DABE;
    ASL A                                ;83DABF;
    TAY                                  ;83DAC0;
    LDA.B $11                            ;83DAC1;
    ASL A                                ;83DAC3;
    ASL A                                ;83DAC4;
    REP #$20                             ;83DAC5;
    LDA.W DATA8_86D038,Y                 ;83DAC7;
    BCC CODE_83DAD0                      ;83DACA;
    EOR.W #$FFFF                         ;83DACC;
    INC A                                ;83DACF;

CODE_83DAD0:
    CLC                                  ;83DAD0;
    ADC.B $05                            ;83DAD1;
    STA.W $0005,X                        ;83DAD3;
    LDA.W DATA8_86D044,Y                 ;83DAD6;
    CLC                                  ;83DAD9;
    ADC.B $08                            ;83DADA;
    STA.W $0008,X                        ;83DADC;
    LDA.B $10                            ;83DADF;
    ASL A                                ;83DAE1;
    ASL A                                ;83DAE2;
    LDA.W DATA8_86D050,Y                 ;83DAE3;
    BCC CODE_83DAEC                      ;83DAE6;
    EOR.W #$FFFF                         ;83DAE8;
    INC A                                ;83DAEB;

CODE_83DAEC:
    STA.W $001A,X                        ;83DAEC;
    LDA.W DATA8_86D05C,Y                 ;83DAEF;
    STA.W $001C,X                        ;83DAF2;
    STZ.W $000C,X                        ;83DAF5;
    SEP #$20                             ;83DAF8;
    DEC.B $34                            ;83DAFA;
    BNE CODE_83DA93                      ;83DAFC;

CODE_83DAFE:
    SEP #$30                             ;83DAFE;
    RTS                                  ;83DB00;

CODE_83DB01:
    JSL.L CODE_8282D3                    ;83DB01;
    BNE CODE_83DB64                      ;83DB05;
    INC.W $0000,X                        ;83DB07;
    LDA.B #$2B                           ;83DB0A;
    STA.W $000A,X                        ;83DB0C;
    LDA.B $11                            ;83DB0F;
    STA.W $0011,X                        ;83DB11;
    JSL.L CODE_849086                    ;83DB14;
    LDA.B #$00                           ;83DB18;
    XBA                                  ;83DB1A;
    AND.B #$0F                           ;83DB1B;
    TAY                                  ;83DB1D;
    LDA.W DATA8_86D0AE,Y                 ;83DB1E;
    STA.W $000B,X                        ;83DB21;
    REP #$20                             ;83DB24;
    JSL.L CODE_849086                    ;83DB26;
    LSR A                                ;83DB2A;
    AND.W #$001E                         ;83DB2B;
    TAY                                  ;83DB2E;
    LDA.W DATA8_86D06E,Y                 ;83DB2F;
    BCC CODE_83DB38                      ;83DB32;
    EOR.W #$FFFF                         ;83DB34;
    INC A                                ;83DB37;

CODE_83DB38:
    STA.W $001A,X                        ;83DB38;
    JSL.L CODE_849086                    ;83DB3B;
    AND.W #$001E                         ;83DB3F;
    TAY                                  ;83DB42;
    LDA.W DATA8_86D08E,Y                 ;83DB43;
    STA.W $001C,X                        ;83DB46;
    LDA.B $05                            ;83DB49;
    STA.W $0005,X                        ;83DB4B;
    LDA.B $08                            ;83DB4E;
    STA.W $0008,X                        ;83DB50;
    STZ.W $000C,X                        ;83DB53;
    SEP #$20                             ;83DB56;
    STZ.W $001F,X                        ;83DB58;
    LDA.B #$40                           ;83DB5B;
    STA.W $001E,X                        ;83DB5D;
    DEC.B $34                            ;83DB60;
    BNE CODE_83DB01                      ;83DB62;

CODE_83DB64:
    SEP #$30                             ;83DB64;
    RTS                                  ;83DB66;

CODE_83DB67:
    LDA.B $03                            ;83DB67;
    BNE CODE_83DB88                      ;83DB69;
    JSL.L CODE_8491BE                    ;83DB6B;
    LDA.B $2B                            ;83DB6F;
    AND.B #$04                           ;83DB71;
    BNE CODE_83DB9A                      ;83DB73;
    INC.B $03                            ;83DB75;
    REP #$20                             ;83DB77;
    STZ.B $1A                            ;83DB79;
    STZ.B $1C                            ;83DB7B;
    SEP #$20                             ;83DB7D;
    LDA.B #$40                           ;83DB7F;
    STA.B $1E                            ;83DB81;
    LDA.B #$FF                           ;83DB83;
    STA.B $2F                            ;83DB85;
    RTS                                  ;83DB87;

CODE_83DB88:
    JSL.L CODE_8281E8                    ;83DB88;
    JSL.L CODE_8491BE                    ;83DB8C;
    LDA.B $2B                            ;83DB90;
    AND.B #$04                           ;83DB92;
    BEQ CODE_83DB9A                      ;83DB94;
    STZ.B $03                            ;83DB96;
    STZ.B $2F                            ;83DB98;

CODE_83DB9A:
    RTS                                  ;83DB9A;

CODE_83DB9B:
    LDX.B $01                            ;83DB9B;
    JMP.W (PTR16_83DBA0,X)               ;83DB9D;

PTR16_83DBA0:
    dw CODE_83DBA6                       ;83DBA0;
    dw CODE_83DBEE                       ;83DBA2;
    dw CODE_83DCD6                       ;83DBA4;

CODE_83DBA6:
    JSL.L CODE_84A1D0                    ;83DBA6;
    CPY.B #$0A                           ;83DBAA;
    BCS CODE_83DBD4                      ;83DBAC;
    LDA.W $0C26                          ;83DBAE;
    BIT.B #$20                           ;83DBB1;
    BEQ CODE_83DBD4                      ;83DBB3;
    JSL.L CODE_82827D                    ;83DBB5;
    LDA.B #$04                           ;83DBB9;
    STA.B $12                            ;83DBBB;
    STZ.B $2F                            ;83DBBD;
    LDA.B #$02                           ;83DBBF;
    STA.B $27                            ;83DBC1;
    LDA.B #$01                           ;83DBC3;
    STA.B $28                            ;83DBC5;
    LDA.B #$03                           ;83DBC7;
    STA.B $26                            ;83DBC9;
    REP #$20                             ;83DBCB;
    LDA.W $0BAD                          ;83DBCD;
    CMP.B $05                            ;83DBD0;
    BCC CODE_83DBD8                      ;83DBD2;

CODE_83DBD4:
    JML.L CODE_828387                    ;83DBD4;

CODE_83DBD8:
    LDA.W #$D0BE                         ;83DBD8;
    STA.B $20                            ;83DBDB;
    LDA.W #$0480                         ;83DBDD;
    STA.B $1A                            ;83DBE0;
    STZ.B $1C                            ;83DBE2;
    STZ.B $1E                            ;83DBE4;
    SEP #$20                             ;83DBE6;
    LDA.B #$02                           ;83DBE8;
    JML.L CODE_848F07                    ;83DBEA;

CODE_83DBEE:
    JSL.L CODE_82806E                    ;83DBEE;
    BCC CODE_83DBF8                      ;83DBF2;
    JML.L CODE_828387                    ;83DBF4;

CODE_83DBF8:
    LDA.L $7F8356                        ;83DBF8;
    ORA.B #$40                           ;83DBFC;
    STA.B $11                            ;83DBFE;
    LDX.B $02                            ;83DC00;
    JSR.W (PTR16_83DC24,X)               ;83DC02;
    JSL.L CODE_849B43                    ;83DC05;
    BEQ CODE_83DC1C                      ;83DC09;
    BPL CODE_83DC18                      ;83DC0B;
    JSL.L CODE_84A4AB                    ;83DC0D;
    LDA.B #$04                           ;83DC11;
    STA.B $01                            ;83DC13;
    STZ.B $02                            ;83DC15;
    RTL                                  ;83DC17;

CODE_83DC18:
    LDA.B #$0E                           ;83DC18;
    TRB.B $11                            ;83DC1A;

CODE_83DC1C:
    JSL.L CODE_849B03                    ;83DC1C;
    JML.L CODE_8280B4                    ;83DC20;

PTR16_83DC24:
    dw CODE_83DC2A                       ;83DC24;
    dw CODE_83DC59                       ;83DC26;
    dw CODE_83DCA1                       ;83DC28;

CODE_83DC2A:
    LDX.B $03                            ;83DC2A;
    BNE CODE_83DC47                      ;83DC2C;
    INC.B $03                            ;83DC2E;
    LDA.B #$01                           ;83DC30;
    LDX.B $0B                            ;83DC32;
    BMI CODE_83DC3F                      ;83DC34;
    JSL.L CODE_849086                    ;83DC36;
    AND.B #$7E                           ;83DC3A;
    CLC                                  ;83DC3C;
    ADC.B #$3C                           ;83DC3D;

CODE_83DC3F:
    STA.B $33                            ;83DC3F;
    LDA.B #$00                           ;83DC41;
    JSL.L CODE_848F07                    ;83DC43;

CODE_83DC47:
    DEC.B $33                            ;83DC47;
    BNE CODE_83DC50                      ;83DC49;
    LDA.B #$04                           ;83DC4B;
    JMP.W CODE_8386F1                    ;83DC4D;

CODE_83DC50:
    JSL.L CODE_82823E                    ;83DC50;
    JSL.L CODE_848EEA                    ;83DC54;
    RTS                                  ;83DC58;

CODE_83DC59:
    LDX.B $03                            ;83DC59;
    JMP.W (PTR16_83DC5E,X)               ;83DC5B;

PTR16_83DC5E:
    dw CODE_83DC64                       ;83DC5E;
    dw CODE_83DC72                       ;83DC60;
    dw CODE_83DC89                       ;83DC62;

CODE_83DC64:
    LDA.B #$02                           ;83DC64;
    STA.B $03                            ;83DC66;
    LDA.B #$40                           ;83DC68;
    STA.B $1F                            ;83DC6A;
    LDA.B #$02                           ;83DC6C;
    JSL.L CODE_848F07                    ;83DC6E;

CODE_83DC72:
    LDA.B $0F                            ;83DC72;
    BPL CODE_83DC80                      ;83DC74;
    LDA.B #$04                           ;83DC76;
    STA.B $03                            ;83DC78;
    LDA.B #$00                           ;83DC7A;
    JSL.L CODE_848F07                    ;83DC7C;

CODE_83DC80:
    JSL.L CODE_828195                    ;83DC80;
    JSL.L CODE_848EEA                    ;83DC84;
    RTS                                  ;83DC88;

CODE_83DC89:
    JSL.L CODE_828195                    ;83DC89;
    REP #$20                             ;83DC8D;
    LDA.W #$0680                         ;83DC8F;
    CMP.B $1A                            ;83DC92;
    BCS CODE_83DC9A                      ;83DC94;
    STA.B $1A                            ;83DC96;
    STZ.B $02                            ;83DC98;

CODE_83DC9A:
    SEP #$20                             ;83DC9A;
    JSL.L CODE_848EEA                    ;83DC9C;
    RTS                                  ;83DCA0;

CODE_83DCA1:
    LDX.B $03                            ;83DCA1;
    BNE CODE_83DCB1                      ;83DCA3;
    INC.B $03                            ;83DCA5;
    LDA.B #$04                           ;83DCA7;
    STA.B $1F                            ;83DCA9;
    LDA.B #$01                           ;83DCAB;
    JSL.L CODE_848F07                    ;83DCAD;

CODE_83DCB1:
    JSL.L CODE_828174                    ;83DCB1;
    REP #$21                             ;83DCB5;
    LDA.B $05                            ;83DCB7;
    ADC.W #$FFC0                         ;83DCB9;
    CMP.W $1E4D                          ;83DCBC;
    BCC CODE_83DCC8                      ;83DCBF;
    LDA.B $1A                            ;83DCC1;
    CMP.W #$0200                         ;83DCC3;
    BCS CODE_83DCCF                      ;83DCC6;

CODE_83DCC8:
    SEP #$20                             ;83DCC8;
    LDA.B #$02                           ;83DCCA;
    JMP.W CODE_8386F1                    ;83DCCC;

CODE_83DCCF:
    SEP #$20                             ;83DCCF;
    JSL.L CODE_848EEA                    ;83DCD1;
    RTS                                  ;83DCD5;

CODE_83DCD6:
    JSL.L CODE_82806E                    ;83DCD6;
    BCC CODE_83DCE0                      ;83DCDA;
    JML.L CODE_828398                    ;83DCDC;

CODE_83DCE0:
    LDX.B $02                            ;83DCE0;
    JSR.W (PTR16_83DCEA,X)               ;83DCE2;
    JSL.L CODE_8280B4                    ;83DCE5;
    RTL                                  ;83DCE9;

PTR16_83DCEA:
    dw CODE_83DCF0                       ;83DCEA;
    dw CODE_83DD0A                       ;83DCEC;
    dw CODE_83DD2F                       ;83DCEE;

CODE_83DCF0:
    LDA.B #$02                           ;83DCF0;
    STA.B $02                            ;83DCF2;
    LDA.B #$10                           ;83DCF4;
    STA.B $1F                            ;83DCF6;
    LDA.B #$10                           ;83DCF8;
    STA.B $1E                            ;83DCFA;
    LDA.B #$10                           ;83DCFC;
    STA.B $29                            ;83DCFE;
    LDA.B #$10                           ;83DD00;
    STA.B $2A                            ;83DD02;
    LDA.B #$03                           ;83DD04;
    JSL.L CODE_848F07                    ;83DD06;

CODE_83DD0A:
    JSR.W CODE_83DD38                    ;83DD0A;
    JSL.L CODE_8490A0                    ;83DD0D;
    CMP.B #$34                           ;83DD11;
    BCC CODE_83DD19                      ;83DD13;
    LDA.B #$04                           ;83DD15;
    STA.B $02                            ;83DD17;

CODE_83DD19:
    JSL.L CODE_828174                    ;83DD19;
    REP #$20                             ;83DD1D;
    LDA.W #$0200                         ;83DD1F;
    CMP.B $1A                            ;83DD22;
    BCC CODE_83DD28                      ;83DD24;
    STA.B $1A                            ;83DD26;

CODE_83DD28:
    SEP #$20                             ;83DD28;
    JSL.L CODE_848EEA                    ;83DD2A;
    RTS                                  ;83DD2E;

CODE_83DD2F:
    JSL.L CODE_84A4AB                    ;83DD2F;
    JSL.L CODE_828387                    ;83DD33;
    RTS                                  ;83DD37;

CODE_83DD38:
    LDA.W $0B9C                          ;83DD38;
    AND.B #$07                           ;83DD3B;
    BNE CODE_83DD66                      ;83DD3D;
    JSL.L CODE_8282D3                    ;83DD3F;
    BNE CODE_83DD64                      ;83DD43;
    INC.W $0000,X                        ;83DD45;
    LDA.B #$09                           ;83DD48;
    STA.W $000A,X                        ;83DD4A;
    STZ.W $000B,X                        ;83DD4D;
    REP #$20                             ;83DD50;
    JSL.L CODE_849086                    ;83DD52;
    AND.W #$000F                         ;83DD56;
    CLC                                  ;83DD59;
    ADC.B $05                            ;83DD5A;
    STA.W $0005,X                        ;83DD5C;
    LDA.B $08                            ;83DD5F;
    STA.W $0008,X                        ;83DD61;

CODE_83DD64:
    SEP #$30                             ;83DD64;

CODE_83DD66:
    RTS                                  ;83DD66;

CODE_83DD67:
    LDA.B $33                            ;83DD67;
    TSB.B $11                            ;83DD69;
    LDX.B $01                            ;83DD6B;
    JSR.W (PTR16_83DDA5,X)               ;83DD6D;
    JSL.L CODE_848EEA                    ;83DD70;
    STZ.B $35                            ;83DD74;
    JSL.L CODE_849B03                    ;83DD76;
    BEQ CODE_83DD7E                      ;83DD7A;
    INC.B $35                            ;83DD7C;

CODE_83DD7E:
    JSL.L CODE_849B43                    ;83DD7E;
    BEQ CODE_83DD98                      ;83DD82;
    BPL CODE_83DD94                      ;83DD84;
    JSL.L CODE_84A4AB                    ;83DD86;
    LDA.B #$01                           ;83DD8A;
    JSL.L CODE_84A37F                    ;83DD8C;

CODE_83DD90:
    JML.L CODE_828387                    ;83DD90;

CODE_83DD94:
    LDA.B #$0E                           ;83DD94;
    TRB.B $11                            ;83DD96;

CODE_83DD98:
    JSL.L CODE_82806E                    ;83DD98;
    BCS CODE_83DD90                      ;83DD9C;
    JSR.W CODE_83DF5E                    ;83DD9E;
    JML.L CODE_8280B4                    ;83DDA1;

PTR16_83DDA5:
    dw CODE_83DDB3                       ;83DDA5;
    dw CODE_83DDDF                       ;83DDA7;
    dw CODE_83DE5C                       ;83DDA9;
    dw CODE_83DEA6                       ;83DDAB;
    dw CODE_83DED6                       ;83DDAD;
    dw CODE_83DEF3                       ;83DDAF;
    dw CODE_83DF17                       ;83DDB1;

CODE_83DDB3:
    JSL.L CODE_82827D                    ;83DDB3;
    LDA.B $11                            ;83DDB7;
    AND.B #$0E                           ;83DDB9;
    STA.B $33                            ;83DDBB;
    LDA.B #$02                           ;83DDBD;
    STA.B $27                            ;83DDBF;
    LDA.B #$01                           ;83DDC1;
    STA.B $26                            ;83DDC3;
    LDA.B #$04                           ;83DDC5;
    STA.B $12                            ;83DDC7;
    STZ.B $34                            ;83DDC9;
    LDA.B #$00                           ;83DDCB;
    JSL.L CODE_848F07                    ;83DDCD;
    REP #$20                             ;83DDD1;
    LDA.W #$D0C2                         ;83DDD3;
    STA.B $20                            ;83DDD6;
    LDA.B $05                            ;83DDD8;
    STA.B $37                            ;83DDDA;
    SEP #$20                             ;83DDDC;
    RTS                                  ;83DDDE;

CODE_83DDDF:
    JSL.L CODE_84A07C                    ;83DDDF;
    ASL A                                ;83DDE3;
    ASL A                                ;83DDE4;
    TAX                                  ;83DDE5;
    JSR.W CODE_83DF35                    ;83DDE6;
    JSL.L CODE_82820A                    ;83DDE9;
    REP #$20                             ;83DDED;
    LDA.W $0BAD                          ;83DDEF;
    SEC                                  ;83DDF2;
    SBC.B $05                            ;83DDF3;
    BCS CODE_83DDFB                      ;83DDF5;
    EOR.W #$FFFF                         ;83DDF7;
    INC A                                ;83DDFA;

CODE_83DDFB:
    CMP.W #$0040                         ;83DDFB;
    BCS CODE_83DE59                      ;83DDFE;
    LDA.W $0BB0                          ;83DE00;
    SEC                                  ;83DE03;
    SBC.B $08                            ;83DE04;
    BCS CODE_83DE0C                      ;83DE06;
    EOR.W #$FFFF                         ;83DE08;
    INC A                                ;83DE0B;

CODE_83DE0C:
    CMP.W #$0040                         ;83DE0C;
    BCS CODE_83DE59                      ;83DE0F;
    SEP #$20                             ;83DE11;
    JSL.L CODE_84A07C                    ;83DE13;
    STA.W $0000                          ;83DE17;
    ASL A                                ;83DE1A;
    ASL A                                ;83DE1B;
    TAX                                  ;83DE1C;
    REP #$20                             ;83DE1D;
    LDA.W DATA8_86EE37,X                 ;83DE1F;
    LSR A                                ;83DE22;
    LSR A                                ;83DE23;
    LSR A                                ;83DE24;
    LSR A                                ;83DE25;
    BIT.W #$0080                         ;83DE26;
    BEQ CODE_83DE2F                      ;83DE29;
    EOR.W #$FFFF                         ;83DE2B;
    INC A                                ;83DE2E;

CODE_83DE2F:
    TAY                                  ;83DE2F;
    STY.B $1F                            ;83DE30;
    LDA.W DATA8_86EE39,X                 ;83DE32;
    LSR A                                ;83DE35;
    LSR A                                ;83DE36;
    LSR A                                ;83DE37;
    LSR A                                ;83DE38;
    BIT.W #$0080                         ;83DE39;
    BEQ CODE_83DE42                      ;83DE3C;
    EOR.W #$FFFF                         ;83DE3E;
    INC A                                ;83DE41;

CODE_83DE42:
    TAY                                  ;83DE42;
    STY.B $1E                            ;83DE43;
    JSR.W CODE_83DF35                    ;83DE45;
    LDA.W $0000                          ;83DE48;
    LSR A                                ;83DE4B;
    LSR A                                ;83DE4C;
    AND.B #$06                           ;83DE4D;
    STA.B $36                            ;83DE4F;
    LDA.B #$04                           ;83DE51;
    STA.B $01                            ;83DE53;
    LDA.B #$20                           ;83DE55;
    STA.B $34                            ;83DE57;

CODE_83DE59:
    SEP #$30                             ;83DE59;
    RTS                                  ;83DE5B;

CODE_83DE5C:
    LDX.B $36                            ;83DE5C;
    JMP.W (PTR16_83DE61,X)               ;83DE5E;

PTR16_83DE61:
    dw CODE_83DE69                       ;83DE61;
    dw CODE_83DE6F                       ;83DE63;
    dw CODE_83DE75                       ;83DE65;
    dw CODE_83DE7B                       ;83DE67;

CODE_83DE69:
    JSL.L CODE_828174                    ;83DE69;
    BRA CODE_83DE7F                      ;83DE6D;

CODE_83DE6F:
    JSL.L CODE_8281B2                    ;83DE6F;
    BRA CODE_83DE7F                      ;83DE73;

CODE_83DE75:
    JSL.L CODE_8281CF                    ;83DE75;
    BRA CODE_83DE7F                      ;83DE79;

CODE_83DE7B:
    JSL.L CODE_828195                    ;83DE7B;

CODE_83DE7F:
    DEC.B $34                            ;83DE7F;
    BNE CODE_83DE8B                      ;83DE81;
    LDA.B #$06                           ;83DE83;
    STA.B $01                            ;83DE85;
    LDA.B #$1E                           ;83DE87;
    STA.B $34                            ;83DE89;

CODE_83DE8B:
    LDA.B $35                            ;83DE8B;
    BEQ CODE_83DEA5                      ;83DE8D;
    LDA.B #$01                           ;83DE8F;
    JSL.L CODE_848F07                    ;83DE91;
    LDA.B #$04                           ;83DE95;
    STA.B $1D                            ;83DE97;
    STZ.B $1C                            ;83DE99;
    LDA.B #$0C                           ;83DE9B;
    STA.B $34                            ;83DE9D;
    LDA.B #$0A                           ;83DE9F;
    STA.B $01                            ;83DEA1;
    STZ.B $02                            ;83DEA3;

CODE_83DEA5:
    RTS                                  ;83DEA5;

CODE_83DEA6:
    DEC.B $34                            ;83DEA6;
    BNE CODE_83DED5                      ;83DEA8;
    LDA.B #$08                           ;83DEAA;
    STA.B $01                            ;83DEAC;
    JSL.L CODE_84A07C                    ;83DEAE;
    ASL A                                ;83DEB2;
    ASL A                                ;83DEB3;
    TAX                                  ;83DEB4;
    REP #$20                             ;83DEB5;
    LDA.W DATA8_86EE37,X                 ;83DEB7;
    LSR A                                ;83DEBA;
    BIT.W #$4000                         ;83DEBB;
    BEQ CODE_83DEC3                      ;83DEBE;
    ORA.W #$8000                         ;83DEC0;

CODE_83DEC3:
    STA.B $1A                            ;83DEC3;
    LDA.W DATA8_86EE39,X                 ;83DEC5;
    LSR A                                ;83DEC8;
    BIT.W #$4000                         ;83DEC9;
    BEQ CODE_83DED1                      ;83DECC;
    ORA.W #$8000                         ;83DECE;

CODE_83DED1:
    STA.B $1C                            ;83DED1;
    SEP #$20                             ;83DED3;

CODE_83DED5:
    RTS                                  ;83DED5;

CODE_83DED6:
    JSL.L CODE_82820A                    ;83DED6;
    LDA.B $35                            ;83DEDA;
    BEQ CODE_83DEF2                      ;83DEDC;
    LDA.B #$01                           ;83DEDE;
    JSL.L CODE_848F07                    ;83DEE0;
    LDA.B #$04                           ;83DEE4;
    STA.B $1D                            ;83DEE6;
    STZ.B $1C                            ;83DEE8;
    LDA.B #$0C                           ;83DEEA;
    STA.B $34                            ;83DEEC;
    LDA.B #$0A                           ;83DEEE;
    STA.B $01                            ;83DEF0;

CODE_83DEF2:
    RTS                                  ;83DEF2;

CODE_83DEF3:
    LDA.B $02                            ;83DEF3;
    BNE CODE_83DF06                      ;83DEF5;
    JSL.L CODE_82825D                    ;83DEF7;
    DEC.B $34                            ;83DEFB;
    BNE CODE_83DF05                      ;83DEFD;
    INC.B $02                            ;83DEFF;
    LDA.B #$3C                           ;83DF01;
    STA.B $34                            ;83DF03;

CODE_83DF05:
    RTS                                  ;83DF05;

CODE_83DF06:
    DEC.B $34                            ;83DF06;
    BNE CODE_83DF16                      ;83DF08;
    LDA.B #$00                           ;83DF0A;
    JSL.L CODE_848F07                    ;83DF0C;
    LDA.B #$02                           ;83DF10;
    STA.B $01                            ;83DF12;
    STZ.B $02                            ;83DF14;

CODE_83DF16:
    RTS                                  ;83DF16;

CODE_83DF17:
    LDA.B $02                            ;83DF17;
    BNE CODE_83DF2C                      ;83DF19;
    LDA.B #$00                           ;83DF1B;
    JSL.L CODE_848F07                    ;83DF1D;
    REP #$20                             ;83DF21;
    LDA.W #$0300                         ;83DF23;
    STA.B $1C                            ;83DF26;
    SEP #$20                             ;83DF28;
    INC.B $02                            ;83DF2A;

CODE_83DF2C:
    JSL.L CODE_848EEA                    ;83DF2C;
    JSL.L CODE_82825D                    ;83DF30;
    RTS                                  ;83DF34;

CODE_83DF35:
    REP #$20                             ;83DF35;
    LDA.W DATA8_86EE37,X                 ;83DF37;
    LSR A                                ;83DF3A;
    BIT.W #$4000                         ;83DF3B;
    BEQ CODE_83DF43                      ;83DF3E;
    ORA.W #$8000                         ;83DF40;

CODE_83DF43:
    CLC                                  ;83DF43;
    ADC.W DATA8_86EE37,X                 ;83DF44;
    STA.B $1A                            ;83DF47;
    LDA.W DATA8_86EE39,X                 ;83DF49;
    LSR A                                ;83DF4C;
    BIT.W #$4000                         ;83DF4D;
    BEQ CODE_83DF55                      ;83DF50;
    ORA.W #$8000                         ;83DF52;

CODE_83DF55:
    CLC                                  ;83DF55;
    ADC.W DATA8_86EE39,X                 ;83DF56;
    STA.B $1C                            ;83DF59;
    SEP #$20                             ;83DF5B;
    RTS                                  ;83DF5D;

CODE_83DF5E:
    LDA.B $01                            ;83DF5E;
    CMP.B #$0C                           ;83DF60;
    BEQ CODE_83DF7E                      ;83DF62;
    REP #$20                             ;83DF64;
    LDA.B $05                            ;83DF66;
    SEC                                  ;83DF68;
    SBC.B $37                            ;83DF69;
    BCS CODE_83DF71                      ;83DF6B;
    EOR.W #$FFFF                         ;83DF6D;
    INC A                                ;83DF70;

CODE_83DF71:
    CMP.W #$00A0                         ;83DF71;
    SEP #$20                             ;83DF74;
    BCC CODE_83DF7E                      ;83DF76;
    LDA.B #$0C                           ;83DF78;
    STA.B $01                            ;83DF7A;
    STZ.B $02                            ;83DF7C;

CODE_83DF7E:
    RTS                                  ;83DF7E;

CODE_83DF7F:
    LDA.B $3E                            ;83DF7F;
    TSB.B $11                            ;83DF81;
    LDX.B $01                            ;83DF83;
    JMP.W (PTR16_83DF88,X)               ;83DF85;

PTR16_83DF88:
    dw CODE_83DF94                       ;83DF88;
    dw CODE_83E018                       ;83DF8A;
    dw CODE_83E076                       ;83DF8C;
    dw CODE_83E0EA                       ;83DF8E;
    dw CODE_83E134                       ;83DF90;
    dw CODE_83E16B                       ;83DF92;

CODE_83DF94:
    JSL.L CODE_82827D                    ;83DF94;
    LDA.B $11                            ;83DF98;
    AND.B #$0E                           ;83DF9A;
    STA.B $3E                            ;83DF9C;
    LDA.B #$04                           ;83DF9E;
    STA.B $12                            ;83DFA0;
    LDA.B $0B                            ;83DFA2;
    AND.B #$7F                           ;83DFA4;
    BNE CODE_83DFCD                      ;83DFA6;
    LDA.B #$03                           ;83DFA8;
    STA.B $3B                            ;83DFAA;
    REP #$20                             ;83DFAC;
    LDA.W #$D14E                         ;83DFAE;
    STA.B $20                            ;83DFB1;
    LDA.B $08                            ;83DFB3;
    STA.B $33                            ;83DFB5;
    STA.B $35                            ;83DFB7;
    STA.B $37                            ;83DFB9;
    STA.B $39                            ;83DFBB;
    SEP #$20                             ;83DFBD;
    LDA.B #$03                           ;83DFBF;
    STA.B $26                            ;83DFC1;
    LDA.B #$06                           ;83DFC3;
    STA.B $27                            ;83DFC5;
    LDA.B #$00                           ;83DFC7;
    JML.L CODE_848F07                    ;83DFC9;

CODE_83DFCD:
    LDA.B ($0C)                          ;83DFCD;
    BEQ CODE_83DFDF                      ;83DFCF;
    LDY.B #$01                           ;83DFD1;
    LDA.B ($0C),Y                        ;83DFD3;
    BEQ CODE_83DFDF                      ;83DFD5;
    LDY.B #$0B                           ;83DFD7;
    LDA.B ($0C),Y                        ;83DFD9;
    AND.B #$7F                           ;83DFDB;
    BEQ CODE_83DFE3                      ;83DFDD;

CODE_83DFDF:
    JML.L CODE_828398                    ;83DFDF;

CODE_83DFE3:
    LDA.B #$01                           ;83DFE3;
    STA.B $27                            ;83DFE5;
    STA.B $30                            ;83DFE7;
    LDA.B #$02                           ;83DFE9;
    STA.B $26                            ;83DFEB;
    LDA.B #$10                           ;83DFED;
    STA.B $3B                            ;83DFEF;
    LDA.B #$02                           ;83DFF1;
    JSL.L CODE_848F07                    ;83DFF3;
    LDA.B #$06                           ;83DFF7;
    STA.B $01                            ;83DFF9;
    LDY.B #$11                           ;83DFFB;
    LDA.B ($0C),Y                        ;83DFFD;
    AND.B #$40                           ;83DFFF;
    TSB.B $11                            ;83E001;
    LDA.B $0B                            ;83E003;
    DEC A                                ;83E005;
    BNE CODE_83E010                      ;83E006;
    LDA.B #$01                           ;83E008;
    STA.B $3B                            ;83E00A;
    LDA.B #$0F                           ;83E00C;
    STA.B $3C                            ;83E00E;

CODE_83E010:
    REP #$20                             ;83E010;
    LDA.W #$D152                         ;83E012;
    STA.B $20                            ;83E015;
    RTL                                  ;83E017;

CODE_83E018:
    JSL.L CODE_84AC9B                    ;83E018;
    LDA.B $3B                            ;83E01C;
    BEQ CODE_83E025                      ;83E01E;
    DEC.B $3B                            ;83E020;
    JMP.W CODE_83E088                    ;83E022;

CODE_83E025:
    REP #$20                             ;83E025;
    LDA.B $05                            ;83E027;
    SEC                                  ;83E029;
    SBC.W $0BAD                          ;83E02A;
    BCS CODE_83E033                      ;83E02D;
    EOR.W #$FFFF                         ;83E02F;
    INC A                                ;83E032;

CODE_83E033:
    CMP.W #$0060                         ;83E033;
    BCS CODE_83E072                      ;83E036;
    LDA.B $08                            ;83E038;
    SEC                                  ;83E03A;
    SBC.W $0BB0                          ;83E03B;
    BCS CODE_83E044                      ;83E03E;
    EOR.W #$FFFF                         ;83E040;
    INC A                                ;83E043;

CODE_83E044:
    CMP.W #$0020                         ;83E044;
    BCS CODE_83E072                      ;83E047;
    JSL.L CODE_828321                    ;83E049;
    BNE CODE_83E072                      ;83E04D;
    INC.W $0000,X                        ;83E04F;
    LDA.B #$38                           ;83E052;
    STA.W $000A,X                        ;83E054;
    LDA.B #$01                           ;83E057;
    STA.W $000B,X                        ;83E059;
    LDA.B #$04                           ;83E05C;
    STA.B $01                            ;83E05E;
    LDA.B #$50                           ;83E060;
    STA.B $3B                            ;83E062;
    REP #$20                             ;83E064;
    TDC                                  ;83E066;
    STA.W $000C,X                        ;83E067;
    SEP #$20                             ;83E06A;
    LDA.B #$01                           ;83E06C;
    JSL.L CODE_848F07                    ;83E06E;

CODE_83E072:
    SEP #$30                             ;83E072;
    BRA CODE_83E088                      ;83E074;

CODE_83E076:
    DEC.B $3B                            ;83E076;
    BNE CODE_83E088                      ;83E078;
    LDA.B #$02                           ;83E07A;
    STA.B $01                            ;83E07C;
    LDA.B #$00                           ;83E07E;
    JSL.L CODE_848F07                    ;83E080;
    LDA.B #$3C                           ;83E084;
    STA.B $3B                            ;83E086;

CODE_83E088:
    LDA.B $0B                            ;83E088;
    BPL CODE_83E09E                      ;83E08A;
    REP #$30                             ;83E08C;
    LDX.B $0C                            ;83E08E;
    LDA.W $0005,X                        ;83E090;
    STA.B $05                            ;83E093;
    LDA.W $0008,X                        ;83E095;
    SEC                                  ;83E098;
    SBC.W #$0013                         ;83E099;
    STA.B $08                            ;83E09C;

CODE_83E09E:
    REP #$20                             ;83E09E;
    LDA.B $37                            ;83E0A0;
    STA.B $39                            ;83E0A2;
    LDA.B $35                            ;83E0A4;
    STA.B $37                            ;83E0A6;
    LDA.B $33                            ;83E0A8;
    STA.B $35                            ;83E0AA;
    LDA.B $08                            ;83E0AC;
    STA.B $33                            ;83E0AE;
    SEP #$30                             ;83E0B0;
    JSL.L CODE_849B03                    ;83E0B2;
    JSL.L CODE_849B43                    ;83E0B6;
    BEQ CODE_83E0DC                      ;83E0BA;
    BPL CODE_83E0D8                      ;83E0BC;
    LDA.B $0B                            ;83E0BE;
    BMI CODE_83E0C8                      ;83E0C0;
    LDA.B #$00                           ;83E0C2;
    JSL.L CODE_84A37F                    ;83E0C4;

CODE_83E0C8:
    JSL.L CODE_84A4AB                    ;83E0C8;

CODE_83E0CC:
    LDA.B $0B                            ;83E0CC;
    BMI CODE_83E0D4                      ;83E0CE;
    JML.L CODE_828387                    ;83E0D0;

CODE_83E0D4:
    JML.L CODE_828398                    ;83E0D4;

CODE_83E0D8:
    LDA.B #$0E                           ;83E0D8;
    TRB.B $11                            ;83E0DA;

CODE_83E0DC:
    JSL.L CODE_82806E                    ;83E0DC;
    BCS CODE_83E0CC                      ;83E0E0;
    JSL.L CODE_848EEA                    ;83E0E2;
    JML.L CODE_8280B4                    ;83E0E6;

CODE_83E0EA:
    INC.B $3C                            ;83E0EA;
    JSR.W CODE_83E17B                    ;83E0EC;
    DEC.B $3B                            ;83E0EF;
    BNE CODE_83E13B                      ;83E0F1;
    LDA.B $0B                            ;83E0F3;
    CMP.B #$04                           ;83E0F5;
    BEQ CODE_83E11C                      ;83E0F7;
    JSL.L CODE_828321                    ;83E0F9;
    BNE CODE_83E11C                      ;83E0FD;
    INC.W $0000,X                        ;83E0FF;
    LDA.B #$38                           ;83E102;
    STA.W $000A,X                        ;83E104;
    LDA.B $0B                            ;83E107;
    INC A                                ;83E109;
    STA.W $000B,X                        ;83E10A;
    LDA.B $0C                            ;83E10D;
    STA.W $000C,X                        ;83E10F;
    LDA.B $0D                            ;83E112;
    STA.W $000D,X                        ;83E114;
    LDA.B $3C                            ;83E117;
    STA.W $003C,X                        ;83E119;

CODE_83E11C:
    SEP #$30                             ;83E11C;
    LDA.B $3B                            ;83E11E;
    LDA.B #$04                           ;83E120;
    SEC                                  ;83E122;
    SBC.B $0B                            ;83E123;
    ASL A                                ;83E125;
    ASL A                                ;83E126;
    ASL A                                ;83E127;
    ASL A                                ;83E128;
    CLC                                  ;83E129;
    ADC.B #$1E                           ;83E12A;
    STA.B $3B                            ;83E12C;
    LDA.B #$08                           ;83E12E;
    STA.B $01                            ;83E130;
    BRA CODE_83E13B                      ;83E132;

CODE_83E134:
    JSR.W CODE_83E17B                    ;83E134;
    DEC.B $3B                            ;83E137;
    BEQ CODE_83E155                      ;83E139;

CODE_83E13B:
    LDA.B ($0C)                          ;83E13B;
    BEQ CODE_83E155                      ;83E13D;
    LDY.B #$0A                           ;83E13F;
    LDA.B ($0C),Y                        ;83E141;
    CMP.B #$38                           ;83E143;
    BNE CODE_83E155                      ;83E145;
    LDY.B #$01                           ;83E147;
    LDA.B ($0C),Y                        ;83E149;
    BEQ CODE_83E155                      ;83E14B;
    LDY.B #$0B                           ;83E14D;
    LDA.B ($0C),Y                        ;83E14F;
    AND.B #$7F                           ;83E151;
    BEQ CODE_83E15F                      ;83E153;

CODE_83E155:
    LDA.B #$0A                           ;83E155;
    STA.B $01                            ;83E157;
    LDA.B #$03                           ;83E159;
    JSL.L CODE_848F07                    ;83E15B;

CODE_83E15F:
    JSL.L CODE_849B03                    ;83E15F;
    JSL.L CODE_848EEA                    ;83E163;
    JML.L CODE_8280B4                    ;83E167;

CODE_83E16B:
    JSL.L CODE_848EEA                    ;83E16B;
    LDA.B $0F                            ;83E16F;
    BPL CODE_83E177                      ;83E171;
    JML.L CODE_828398                    ;83E173;

CODE_83E177:
    JML.L CODE_8280B4                    ;83E177;

CODE_83E17B:
    PHP                                  ;83E17B;
    SEP #$30                             ;83E17C;
    LDY.B #$05                           ;83E17E;
    LDA.B $3C                            ;83E180;
    STA.W $0000                          ;83E182;
    STZ.W $0001                          ;83E185;
    LDA.B $11                            ;83E188;
    ASL A                                ;83E18A;
    ASL A                                ;83E18B;
    REP #$20                             ;83E18C;
    LDA.B ($0C),Y                        ;83E18E;
    BCC CODE_83E19C                      ;83E190;
    CLC                                  ;83E192;
    ADC.W $0000                          ;83E193;
    CLC                                  ;83E196;
    ADC.W #$0008                         ;83E197;
    BRA CODE_83E1A4                      ;83E19A;

CODE_83E19C:
    SEC                                  ;83E19C;
    SBC.W $0000                          ;83E19D;
    SEC                                  ;83E1A0;
    SBC.W #$0008                         ;83E1A1;

CODE_83E1A4:
    STA.B $05                            ;83E1A4;
    LDA.B $0B                            ;83E1A6;
    AND.W #$000F                         ;83E1A8;
    DEC A                                ;83E1AB;
    ASL A                                ;83E1AC;
    CLC                                  ;83E1AD;
    ADC.W #$0033                         ;83E1AE;
    TAY                                  ;83E1B1;
    LDA.B ($0C),Y                        ;83E1B2;
    SEC                                  ;83E1B4;
    SBC.W #$0003                         ;83E1B5;
    STA.B $08                            ;83E1B8;
    PLP                                  ;83E1BA;
    RTS                                  ;83E1BB;

CODE_83E1BC:
    LDX.B $01                            ;83E1BC;
    JSR.W (PTR16_83E205,X)               ;83E1BE;
    REP #$20                             ;83E1C1;
    LDA.W #$D160                         ;83E1C3;
    STA.B $20                            ;83E1C6;
    SEP #$20                             ;83E1C8;
    JSL.L CODE_849B43                    ;83E1CA;
    REP #$20                             ;83E1CE;
    LDA.W #$D156                         ;83E1D0;
    STA.B $20                            ;83E1D3;
    SEP #$20                             ;83E1D5;
    JSL.L CODE_849B43                    ;83E1D7;
    REP #$20                             ;83E1DB;
    LDA.B $08                            ;83E1DD;
    CLC                                  ;83E1DF;
    ADC.W #$0030                         ;83E1E0;
    STA.B $08                            ;83E1E3;
    SEP #$20                             ;83E1E5;
    JSL.L CODE_8280B4                    ;83E1E7;
    JSL.L CODE_82806E                    ;83E1EB;
    BCC CODE_83E1F8                      ;83E1EF;
    JSL.L CODE_828387                    ;83E1F1;
    JMP.W CODE_83E204                    ;83E1F5;

CODE_83E1F8:
    REP #$20                             ;83E1F8;
    LDA.B $08                            ;83E1FA;
    SEC                                  ;83E1FC;
    SBC.W #$0030                         ;83E1FD;
    STA.B $08                            ;83E200;
    SEP #$20                             ;83E202;

CODE_83E204:
    RTL                                  ;83E204;

PTR16_83E205:
    dw CODE_83E20F                       ;83E205;
    dw CODE_83E24B                       ;83E207;
    dw CODE_83E2CB                       ;83E209;
    dw CODE_83E2F9                       ;83E20B;
    dw CODE_83E3A8                       ;83E20D;

CODE_83E20F:
    JSL.L CODE_82827D                    ;83E20F;
    LDA.B #$01                           ;83E213;
    STA.B $27                            ;83E215;
    STZ.B $28                            ;83E217;
    LDA.B #$04                           ;83E219;
    STA.B $26                            ;83E21B;
    LDA.B #$04                           ;83E21D;
    STA.B $12                            ;83E21F;
    LDA.B #$01                           ;83E221;
    STA.B $35                            ;83E223;
    LDA.B #$14                           ;83E225;
    STA.B $38                            ;83E227;
    REP #$20                             ;83E229;
    LDA.W #$FE00                         ;83E22B;
    STA.B $1C                            ;83E22E;
    LDA.B $08                            ;83E230;
    SEC                                  ;83E232;
    SBC.W #$0011                         ;83E233;
    STA.B $33                            ;83E236;
    STA.B $08                            ;83E238;
    LDA.B $05                            ;83E23A;
    STA.B $36                            ;83E23C;
    SEP #$20                             ;83E23E;
    LDA.B #$50                           ;83E240;
    STA.B $1E                            ;83E242;
    LDA.B #$00                           ;83E244;
    JSL.L CODE_848F07                    ;83E246;
    RTS                                  ;83E24A;

CODE_83E24B:
    REP #$20                             ;83E24B;
    LDA.B $05                            ;83E24D;
    STA.W $0000                          ;83E24F;
    LDA.B $08                            ;83E252;
    STA.W $0004                          ;83E254;
    TDC                                  ;83E257;
    STA.W $0002                          ;83E258;
    LDA.W #$0E68                         ;83E25B;

CODE_83E25E:
    TCD                                  ;83E25E;
    SEP #$20                             ;83E25F;
    LDA.B $00                            ;83E261;
    BEQ CODE_83E293                      ;83E263;
    LDA.B $0A                            ;83E265;
    CMP.B #$2A                           ;83E267;
    BNE CODE_83E293                      ;83E269;
    LDA.B $0F                            ;83E26B;
    AND.B #$02                           ;83E26D;
    CMP.B #$02                           ;83E26F;
    BEQ CODE_83E293                      ;83E271;
    REP #$20                             ;83E273;
    LDA.B $05                            ;83E275;
    SEC                                  ;83E277;
    SBC.W $0000                          ;83E278;
    BCS CODE_83E281                      ;83E27B;
    EOR.W #$FFFF                         ;83E27D;
    INC A                                ;83E280;

CODE_83E281:
    CMP.W #$0028                         ;83E281;
    BCS CODE_83E293                      ;83E284;
    LDA.W $0002                          ;83E286;
    TCD                                  ;83E289;
    SEP #$20                             ;83E28A;
    LDA.B #$04                           ;83E28C;
    STA.B $01                            ;83E28E;
    JMP.W CODE_83E2C5                    ;83E290;

CODE_83E293:
    REP #$21                             ;83E293;
    TDC                                  ;83E295;
    ADC.W #$0040                         ;83E296;
    CMP.W #$1228                         ;83E299;
    BCC CODE_83E25E                      ;83E29C;
    REP #$20                             ;83E29E;
    LDA.W $0002                          ;83E2A0;
    TCD                                  ;83E2A3;
    LDA.W $0BAD                          ;83E2A4;
    SEC                                  ;83E2A7;
    SBC.W $0000                          ;83E2A8;
    BCS CODE_83E2B1                      ;83E2AB;
    EOR.W #$FFFF                         ;83E2AD;
    INC A                                ;83E2B0;

CODE_83E2B1:
    CMP.W #$0020                         ;83E2B1;
    BCS CODE_83E2C5                      ;83E2B4;
    LDA.W $0BB0                          ;83E2B6;
    SEC                                  ;83E2B9;
    SBC.W $0004                          ;83E2BA;
    BCC CODE_83E2C5                      ;83E2BD;
    SEP #$20                             ;83E2BF;
    LDA.B #$04                           ;83E2C1;
    STA.B $01                            ;83E2C3;

CODE_83E2C5:
    SEP #$20                             ;83E2C5;
    JSR.W CODE_83E3E1                    ;83E2C7;
    RTS                                  ;83E2CA;

CODE_83E2CB:
    DEC.B $38                            ;83E2CB;
    BEQ CODE_83E2ED                      ;83E2CD;
    LDA.B $38                            ;83E2CF;
    AND.B #$01                           ;83E2D1;
    BEQ CODE_83E2DD                      ;83E2D3;
    LDA.B #$02                           ;83E2D5;
    STA.W $0000                          ;83E2D7;
    JMP.W CODE_83E2E2                    ;83E2DA;

CODE_83E2DD:
    LDA.B #$FE                           ;83E2DD;
    STA.W $0000                          ;83E2DF;

CODE_83E2E2:
    LDA.B $05                            ;83E2E2;
    SEC                                  ;83E2E4;
    SBC.W $0000                          ;83E2E5;
    STA.B $05                            ;83E2E8;
    JMP.W CODE_83E2F5                    ;83E2EA;

CODE_83E2ED:
    LDA.B #$06                           ;83E2ED;
    STA.B $01                            ;83E2EF;
    LDA.B #$14                           ;83E2F1;
    STA.B $38                            ;83E2F3;

CODE_83E2F5:
    JSR.W CODE_83E3E1                    ;83E2F5;
    RTS                                  ;83E2F8;

CODE_83E2F9:
    JSR.W CODE_83E3E1                    ;83E2F9;
    REP #$20                             ;83E2FC;
    LDA.W $0006                          ;83E2FE;
    CMP.W #$0008                         ;83E301;
    BCS CODE_83E33F                      ;83E304;
    LDA.W $0002                          ;83E306;
    BMI CODE_83E33F                      ;83E309;
    LDA.W $0006                          ;83E30B;
    CMP.W #$0004                         ;83E30E;
    LDA.W #$D156                         ;83E311;
    BCC CODE_83E31C                      ;83E314;
    LDA.W #$0003                         ;83E316;
    STA.W $0006                          ;83E319;

CODE_83E31C:
    REP #$20                             ;83E31C;
    LDA.W $0BB0                          ;83E31E;
    SEC                                  ;83E321;
    SBC.W $0006                          ;83E322;
    STA.W $0BB0                          ;83E325;
    SEP #$20                             ;83E328;
    LDA.W $0C06                          ;83E32A;
    AND.B #$04                           ;83E32D;
    BNE CODE_83E338                      ;83E32F;
    LDA.W $0BD3                          ;83E331;
    AND.B #$04                           ;83E334;
    BEQ CODE_83E33F                      ;83E336;

CODE_83E338:
    JSL.L CODE_849B03                    ;83E338;
    JMP.W CODE_83E33F                    ;83E33C;

CODE_83E33F:
    SEP #$20                             ;83E33F;
    DEC.B $35                            ;83E341;
    BNE CODE_83E39B                      ;83E343;
    LDA.B #$01                           ;83E345;
    STA.B $35                            ;83E347;
    JSL.L CODE_8281E8                    ;83E349;
    LDA.B $2C                            ;83E34D;
    AND.B #$7F                           ;83E34F;
    BEQ CODE_83E357                      ;83E351;
    JSL.L CODE_82C70E                    ;83E353;

CODE_83E357:
    JSL.L CODE_8491BE                    ;83E357;
    LDA.B $2E                            ;83E35B;
    CMP.B #$00                           ;83E35D;
    BEQ CODE_83E39B                      ;83E35F;
    LDA.B #$10                           ;83E361;
    JSL.L CODE_84A333                    ;83E363;
    LDA.B #$3D                           ;83E367;
    JSL.L CODE_8088A2                    ;83E369;
    LDA.B #$08                           ;83E36D;
    STA.B $01                            ;83E36F;
    LDA.B #$2C                           ;83E371;
    STA.B $35                            ;83E373;
    LDA.B #$01                           ;83E375;
    JSL.L CODE_848F07                    ;83E377;
    JSL.L CODE_849B7E                    ;83E37B;
    BEQ CODE_83E38F                      ;83E37F;
    CMP.B #$2A                           ;83E381;
    BNE CODE_83E38F                      ;83E383;
    REP #$20                             ;83E385;
    LDA.B $08                            ;83E387;
    SEC                                  ;83E389;
    SBC.W #$0006                         ;83E38A;
    STA.B $08                            ;83E38D;

CODE_83E38F:
    REP #$20                             ;83E38F;
    LDA.W #$0180                         ;83E391;
    STA.B $1C                            ;83E394;
    SEP #$20                             ;83E396;
    JMP.W CODE_83E39B                    ;83E398;

CODE_83E39B:
    REP #$20                             ;83E39B;
    LDA.B $36                            ;83E39D;
    STA.B $05                            ;83E39F;
    SEP #$20                             ;83E3A1;
    JSL.L CODE_848EEA                    ;83E3A3;
    RTS                                  ;83E3A7;

CODE_83E3A8:
    JSR.W CODE_83E3E1                    ;83E3A8;
    DEC.B $35                            ;83E3AB;
    BNE CODE_83E3D4                      ;83E3AD;
    LDA.B #$01                           ;83E3AF;
    STA.B $35                            ;83E3B1;
    LDA.B #$00                           ;83E3B3;
    JSL.L CODE_848F07                    ;83E3B5;
    JSL.L CODE_82825D                    ;83E3B9;
    REP #$20                             ;83E3BD;
    LDA.B $08                            ;83E3BF;
    CMP.B $33                            ;83E3C1;
    BPL CODE_83E3D4                      ;83E3C3;
    LDA.W #$FE00                         ;83E3C5;
    STA.B $1C                            ;83E3C8;
    SEP #$20                             ;83E3CA;
    LDA.B #$02                           ;83E3CC;
    STA.B $01                            ;83E3CE;
    LDA.B #$20                           ;83E3D0;
    STA.B $35                            ;83E3D2;

CODE_83E3D4:
    REP #$20                             ;83E3D4;
    LDA.B $36                            ;83E3D6;
    STA.B $05                            ;83E3D8;
    SEP #$20                             ;83E3DA;
    JSL.L CODE_848EEA                    ;83E3DC;
    RTS                                  ;83E3E0;

CODE_83E3E1:
    REP #$20                             ;83E3E1;
    LDA.W #$D160                         ;83E3E3;
    STA.B $20                            ;83E3E6;
    SEP #$20                             ;83E3E8;
    LDA.B #$80                           ;83E3EA;
    STA.B $2C                            ;83E3EC;
    JSL.L CODE_82D7D0                    ;83E3EE;
    REP #$20                             ;83E3F2;
    LDA.W #$D156                         ;83E3F4;
    STA.B $20                            ;83E3F7;
    SEP #$20                             ;83E3F9;
    LDA.B #$80                           ;83E3FB;
    STA.B $2C                            ;83E3FD;
    JSL.L CODE_82D7D0                    ;83E3FF;
    RTS                                  ;83E403;

CODE_83E404:
    LDX.B $01                            ;83E404;
    JSR.W (PTR16_83E444,X)               ;83E406;
    LDA.B $27                            ;83E409;
    BEQ CODE_83E433                      ;83E40B;
    JSL.L CODE_849B43                    ;83E40D;
    BEQ CODE_83E42D                      ;83E411;
    LDA.B $27                            ;83E413;
    AND.B #$7F                           ;83E415;
    BNE CODE_83E425                      ;83E417;
    JSL.L CODE_84A4AB                    ;83E419;
    LDA.B #$01                           ;83E41D;
    JSL.L CODE_84A37F                    ;83E41F;
    BRA CODE_83E43F                      ;83E423;

CODE_83E425:
    LDA.B #$F1                           ;83E425;
    AND.B $11                            ;83E427;
    STA.B $11                            ;83E429;
    BRA CODE_83E433                      ;83E42B;

CODE_83E42D:
    LDA.B $33                            ;83E42D;
    ORA.B $11                            ;83E42F;
    STA.B $11                            ;83E431;

CODE_83E433:
    JSL.L CODE_849B03                    ;83E433;
    JSL.L CODE_8280B4                    ;83E437;
    LDA.B $0E                            ;83E43B;
    BNE CODE_83E443                      ;83E43D;

CODE_83E43F:
    JSL.L CODE_828398                    ;83E43F;

CODE_83E443:
    RTL                                  ;83E443;

PTR16_83E444:
    dw CODE_83E450                       ;83E444;
    dw CODE_83E4F0                       ;83E446;
    dw CODE_83E514                       ;83E448;
    dw CODE_83E601                       ;83E44A;
    dw CODE_83E631                       ;83E44C;
    dw CODE_83E663                       ;83E44E;

CODE_83E450:
    JSL.L CODE_82827D                    ;83E450;
    LDA.B $0B                            ;83E454;
    CMP.B #$80                           ;83E456;
    BNE CODE_83E45C                      ;83E458;
    STZ.B $09                            ;83E45A;

CODE_83E45C:
    LDA.B $0B                            ;83E45C;
    AND.B #$02                           ;83E45E;
    CMP.B #$02                           ;83E460;
    BEQ CODE_83E471                      ;83E462;
    LDA.B $11                            ;83E464;
    ORA.B #$10                           ;83E466;
    STA.B $11                            ;83E468;
    AND.B #$0E                           ;83E46A;
    STA.B $33                            ;83E46C;
    JMP.W CODE_83E477                    ;83E46E;

CODE_83E471:
    LDA.B $11                            ;83E471;
    AND.B #$0E                           ;83E473;
    STA.B $33                            ;83E475;

CODE_83E477:
    LDA.B $0B                            ;83E477;
    AND.B #$10                           ;83E479;
    BEQ CODE_83E49A                      ;83E47B;
    REP #$20                             ;83E47D;
    LDA.W $0BAD                          ;83E47F;
    SEC                                  ;83E482;
    SBC.B $05                            ;83E483;
    BCC CODE_83E492                      ;83E485;
    SEP #$20                             ;83E487;
    LDA.B $0B                            ;83E489;
    ORA.B #$01                           ;83E48B;
    STA.B $0B                            ;83E48D;
    JMP.W CODE_83E49A                    ;83E48F;

CODE_83E492:
    SEP #$20                             ;83E492;
    LDA.B $0B                            ;83E494;
    ORA.B #$00                           ;83E496;
    STA.B $0B                            ;83E498;

CODE_83E49A:
    LDA.B $0B                            ;83E49A;
    AND.B #$01                           ;83E49C;
    BEQ CODE_83E4A6                      ;83E49E;
    LDA.B #$40                           ;83E4A0;
    ORA.B $11                            ;83E4A2;
    STA.B $11                            ;83E4A4;

CODE_83E4A6:
    LDA.B #$01                           ;83E4A6;
    STA.B $27                            ;83E4A8;
    LDA.B #$01                           ;83E4AA;
    STA.B $28                            ;83E4AC;
    LDA.B #$02                           ;83E4AE;
    STA.B $26                            ;83E4B0;
    LDA.B #$06                           ;83E4B2;
    STA.B $12                            ;83E4B4;
    STZ.B $35                            ;83E4B6;
    STZ.B $37                            ;83E4B8;
    STZ.B $3B                            ;83E4BA;
    STZ.B $39                            ;83E4BC;
    REP #$20                             ;83E4BE;
    LDA.W #$D16A                         ;83E4C0;
    STA.B $20                            ;83E4C3;
    LDA.W #$0180                         ;83E4C5;
    STA.B $1C                            ;83E4C8;
    LDA.B $05                            ;83E4CA;
    STA.B $3C                            ;83E4CC;
    SEP #$20                             ;83E4CE;
    LDA.B $0B                            ;83E4D0;
    AND.B #$10                           ;83E4D2;
    BEQ CODE_83E4E5                      ;83E4D4;
    LDA.B #$02                           ;83E4D6;
    STA.B $34                            ;83E4D8;
    LDA.B #$04                           ;83E4DA;
    STA.B $01                            ;83E4DC;
    STZ.B $1A                            ;83E4DE;
    STZ.B $1C                            ;83E4E0;
    JMP.W CODE_83E4E9                    ;83E4E2;

CODE_83E4E5:
    LDA.B #$10                           ;83E4E5;
    STA.B $34                            ;83E4E7;

CODE_83E4E9:
    LDA.B #$00                           ;83E4E9;
    JSL.L CODE_848F07                    ;83E4EB;
    RTS                                  ;83E4EF;

CODE_83E4F0:
    DEC.B $34                            ;83E4F0;
    BEQ CODE_83E4FB                      ;83E4F2;
    JSL.L CODE_82825D                    ;83E4F4;
    JMP.W CODE_83E50F                    ;83E4F8;

CODE_83E4FB:
    LDA.B #$04                           ;83E4FB;
    STA.B $01                            ;83E4FD;
    LDA.B #$00                           ;83E4FF;
    STA.B $02                            ;83E501;
    REP #$20                             ;83E503;
    STZ.B $1A                            ;83E505;
    STZ.B $1C                            ;83E507;
    SEP #$20                             ;83E509;
    LDA.B #$02                           ;83E50B;
    STA.B $34                            ;83E50D;

CODE_83E50F:
    JSL.L CODE_848EEA                    ;83E50F;
    RTS                                  ;83E513;

CODE_83E514:
    LDX.B $02                            ;83E514;
    JSR.W (PTR16_83E51A,X)               ;83E516;
    RTS                                  ;83E519;

PTR16_83E51A:
    dw CODE_83E520                       ;83E51A;
    dw CODE_83E53B                       ;83E51C;
    dw CODE_83E5C0                       ;83E51E;

CODE_83E520:
    DEC.B $34                            ;83E520;
    BNE CODE_83E53A                      ;83E522;
    LDA.B #$02                           ;83E524;
    STA.B $02                            ;83E526;
    LDA.B #$10                           ;83E528;
    STA.B $34                            ;83E52A;
    LDA.B #$10                           ;83E52C;
    STA.B $1F                            ;83E52E;
    LDA.B #$2C                           ;83E530;
    STA.B $35                            ;83E532;
    LDA.B #$01                           ;83E534;
    JSL.L CODE_848F07                    ;83E536;

CODE_83E53A:
    RTS                                  ;83E53A;

CODE_83E53B:
    DEC.B $35                            ;83E53B;
    BNE CODE_83E554                      ;83E53D;
    SEP #$20                             ;83E53F;
    LDA.B #$04                           ;83E541;
    STA.B $02                            ;83E543;
    LDA.B #$10                           ;83E545;
    STA.B $34                            ;83E547;
    LDA.B #$18                           ;83E549;
    STA.B $1F                            ;83E54B;
    LDA.B #$10                           ;83E54D;
    STA.B $1E                            ;83E54F;
    JMP.W CODE_83E5BB                    ;83E551;

CODE_83E554:
    SEP #$20                             ;83E554;
    DEC.B $34                            ;83E556;
    BNE CODE_83E56F                      ;83E558;
    LDA.B #$01                           ;83E55A;
    STA.B $34                            ;83E55C;
    LDA.B #$08                           ;83E55E;
    STA.B $1E                            ;83E560;
    REP #$20                             ;83E562;
    LDA.B $1C                            ;83E564;
    CMP.W #$FF00                         ;83E566;
    BNE CODE_83E56F                      ;83E569;
    SEP #$20                             ;83E56B;
    STZ.B $1E                            ;83E56D;

CODE_83E56F:
    SEP #$20                             ;83E56F;
    LDA.B $34                            ;83E571;
    CMP.B #$01                           ;83E573;
    BEQ CODE_83E57E                      ;83E575;
    AND.B #$05                           ;83E577;
    BNE CODE_83E57E                      ;83E579;
    JSR.W CODE_83E775                    ;83E57B;

CODE_83E57E:
    SEP #$20                             ;83E57E;
    LDA.B $0B                            ;83E580;
    AND.B #$01                           ;83E582;
    BEQ CODE_83E591                      ;83E584;
    REP #$20                             ;83E586;
    LDA.W #$0200                         ;83E588;
    STA.W $0000                          ;83E58B;
    JMP.W CODE_83E599                    ;83E58E;

CODE_83E591:
    REP #$20                             ;83E591;
    LDA.W #$FE00                         ;83E593;
    STA.W $0000                          ;83E596;

CODE_83E599:
    REP #$20                             ;83E599;
    LDA.B $1A                            ;83E59B;
    CMP.W $0000                          ;83E59D;
    BNE CODE_83E5A6                      ;83E5A0;
    SEP #$20                             ;83E5A2;
    STZ.B $1F                            ;83E5A4;

CODE_83E5A6:
    SEP #$20                             ;83E5A6;
    LDA.B $0B                            ;83E5A8;
    AND.B #$01                           ;83E5AA;
    BNE CODE_83E5B5                      ;83E5AC;
    JSL.L CODE_8281B2                    ;83E5AE;
    JMP.W CODE_83E5B9                    ;83E5B2;

CODE_83E5B5:
    JSL.L CODE_8281CF                    ;83E5B5;

CODE_83E5B9:
    SEP #$20                             ;83E5B9;

CODE_83E5BB:
    JSL.L CODE_848EEA                    ;83E5BB;
    RTS                                  ;83E5BF;

CODE_83E5C0:
    DEC.B $34                            ;83E5C0;
    BEQ CODE_83E5D8                      ;83E5C2;
    LDA.B $0B                            ;83E5C4;
    AND.B #$01                           ;83E5C6;
    BNE CODE_83E5D1                      ;83E5C8;
    JSL.L CODE_828195                    ;83E5CA;
    JMP.W CODE_83E600                    ;83E5CE;

CODE_83E5D1:
    JSL.L CODE_828174                    ;83E5D1;
    JMP.W CODE_83E600                    ;83E5D5;

CODE_83E5D8:
    LDA.B #$03                           ;83E5D8;
    JSL.L CODE_848F07                    ;83E5DA;
    LDA.B #$06                           ;83E5DE;
    STA.B $01                            ;83E5E0;
    LDA.B #$00                           ;83E5E2;
    STA.B $12                            ;83E5E4;
    LDA.B #$10                           ;83E5E6;
    ORA.B $11                            ;83E5E8;
    STA.B $11                            ;83E5EA;
    LDA.B #$01                           ;83E5EC;
    STA.B $39                            ;83E5EE;
    JSR.W CODE_83E6C4                    ;83E5F0;
    JSR.W CODE_83E68F                    ;83E5F3;
    JSR.W CODE_83E66C                    ;83E5F6;
    JSR.W CODE_83E7C9                    ;83E5F9;
    LDA.B #$07                           ;83E5FC;
    STA.B $2C                            ;83E5FE;

CODE_83E600:
    RTS                                  ;83E600;

CODE_83E601:
    LDA.B $37                            ;83E601;
    BEQ CODE_83E614                      ;83E603;
    LDA.B #$08                           ;83E605;
    STA.B $01                            ;83E607;
    LDA.B #$02                           ;83E609;
    JSL.L CODE_848F07                    ;83E60B;
    STZ.B $37                            ;83E60F;
    JMP.W CODE_83E630                    ;83E611;

CODE_83E614:
    DEC.B $34                            ;83E614;
    BNE CODE_83E625                      ;83E616;
    JSR.W CODE_83E68F                    ;83E618;
    LDA.B $37                            ;83E61B;
    BNE CODE_83E622                      ;83E61D;
    JSR.W CODE_83E66C                    ;83E61F;

CODE_83E622:
    JSR.W CODE_83E7C9                    ;83E622;

CODE_83E625:
    JSL.L CODE_82820A                    ;83E625;
    JSR.W CODE_83E7A4                    ;83E629;
    JSL.L CODE_848EEA                    ;83E62C;

CODE_83E630:
    RTS                                  ;83E630;

CODE_83E631:
    JSL.L CODE_848EEA                    ;83E631;
    LDA.B $0F                            ;83E635;
    CMP.B #$81                           ;83E637;
    BNE CODE_83E65E                      ;83E639;
    LDA.B $11                            ;83E63B;
    AND.B #$40                           ;83E63D;
    BEQ CODE_83E64A                      ;83E63F;
    LDA.B $11                            ;83E641;
    AND.B #$BF                           ;83E643;
    STA.B $11                            ;83E645;
    JMP.W CODE_83E650                    ;83E647;

CODE_83E64A:
    LDA.B $11                            ;83E64A;
    ORA.B #$40                           ;83E64C;
    STA.B $11                            ;83E64E;

CODE_83E650:
    LDA.B #$03                           ;83E650;
    JSL.L CODE_848F07                    ;83E652;
    LDA.B #$06                           ;83E656;
    STA.B $01                            ;83E658;
    LDA.B #$01                           ;83E65A;
    STA.B $34                            ;83E65C;

CODE_83E65E:
    JSL.L CODE_82820A                    ;83E65E;
    RTS                                  ;83E662;

CODE_83E663:
    JSL.L CODE_82825D                    ;83E663;
    JSL.L CODE_848EEA                    ;83E667;
    RTS                                  ;83E66B;

CODE_83E66C:
    REP #$20                             ;83E66C;
    LDA.W DATA8_86EE37,X                 ;83E66E;
    BPL CODE_83E67A                      ;83E671;
    LSR A                                ;83E673;
    ORA.W #$F000                         ;83E674;
    JMP.W CODE_83E67B                    ;83E677;

CODE_83E67A:
    LSR A                                ;83E67A;

CODE_83E67B:
    STA.B $1A                            ;83E67B;
    LDA.W DATA8_86EE39,X                 ;83E67D;
    BPL CODE_83E689                      ;83E680;
    LSR A                                ;83E682;
    ORA.W #$F000                         ;83E683;
    JMP.W CODE_83E68A                    ;83E686;

CODE_83E689:
    LSR A                                ;83E689;

CODE_83E68A:
    STA.B $1C                            ;83E68A;
    SEP #$20                             ;83E68C;
    RTS                                  ;83E68E;

CODE_83E68F:
    JSL.L CODE_84A07C                    ;83E68F;
    STA.B $36                            ;83E693;
    LDA.B $36                            ;83E695;
    STA.B $38                            ;83E697;
    ASL A                                ;83E699;
    ASL A                                ;83E69A;
    TAX                                  ;83E69B;
    CMP.B #$40                           ;83E69C;
    BMI CODE_83E6B3                      ;83E69E;
    LDA.B $11                            ;83E6A0;
    AND.B #$40                           ;83E6A2;
    BEQ CODE_83E6C3                      ;83E6A4;
    LDA.B #$02                           ;83E6A6;
    JSL.L CODE_848F07                    ;83E6A8;
    LDA.B #$01                           ;83E6AC;
    STA.B $37                            ;83E6AE;
    JMP.W CODE_83E6C3                    ;83E6B0;

CODE_83E6B3:
    LDA.B $11                            ;83E6B3;
    AND.B #$40                           ;83E6B5;
    BNE CODE_83E6C3                      ;83E6B7;
    LDA.B #$02                           ;83E6B9;
    JSL.L CODE_848F07                    ;83E6BB;
    LDA.B #$01                           ;83E6BF;
    STA.B $37                            ;83E6C1;

CODE_83E6C3:
    RTS                                  ;83E6C3;

CODE_83E6C4:
    REP #$10                             ;83E6C4;

CODE_83E6C6:
    JSL.L CODE_8282D3                    ;83E6C6;
    BEQ CODE_83E6CF                      ;83E6CA;
    JMP.W CODE_83E770                    ;83E6CC;

CODE_83E6CF:
    INC.W $0000,X                        ;83E6CF;
    LDA.B #$30                           ;83E6D2;
    STA.W $000A,X                        ;83E6D4;
    LDA.B $33                            ;83E6D7;
    ORA.B $11                            ;83E6D9;
    STA.W $0011,X                        ;83E6DB;
    LDA.B $18                            ;83E6DE;
    STA.W $0018,X                        ;83E6E0;
    LDA.B $16                            ;83E6E3;
    STA.W $0016,X                        ;83E6E5;
    STZ.W $0002,X                        ;83E6E8;
    LDA.B $11                            ;83E6EB;
    AND.B #$40                           ;83E6ED;
    BEQ CODE_83E708                      ;83E6EF;
    REP #$20                             ;83E6F1;
    LDA.W #$FFF7                         ;83E6F3;
    STA.W $0000                          ;83E6F6;
    LDA.W #$FFFF                         ;83E6F9;
    STA.W $0002                          ;83E6FC;
    LDA.W #$0080                         ;83E6FF;
    STA.W $001A,X                        ;83E702;
    JMP.W CODE_83E71C                    ;83E705;

CODE_83E708:
    REP #$20                             ;83E708;
    LDA.W #$0009                         ;83E70A;
    STA.W $0000                          ;83E70D;
    LDA.W #$0001                         ;83E710;
    STA.W $0002                          ;83E713;
    LDA.W #$FF80                         ;83E716;
    STA.W $001A,X                        ;83E719;

CODE_83E71C:
    SEP #$20                             ;83E71C;
    LDA.B $39                            ;83E71E;
    BNE CODE_83E730                      ;83E720;
    REP #$20                             ;83E722;
    LDA.B $05                            ;83E724;
    SEC                                  ;83E726;
    SBC.W $0000                          ;83E727;
    STA.W $0005,X                        ;83E72A;
    JMP.W CODE_83E73B                    ;83E72D;

CODE_83E730:
    REP #$20                             ;83E730;
    LDA.B $05                            ;83E732;
    SEC                                  ;83E734;
    SBC.W $0002                          ;83E735;
    STA.W $0005,X                        ;83E738;

CODE_83E73B:
    LDA.B $08                            ;83E73B;
    CLC                                  ;83E73D;
    ADC.W #$0009                         ;83E73E;
    STA.W $0008,X                        ;83E741;
    STZ.W $001C,X                        ;83E744;
    SEP #$20                             ;83E747;
    LDA.B #$30                           ;83E749;
    STA.W $001E,X                        ;83E74B;
    LDA.B $39                            ;83E74E;
    BEQ CODE_83E75F                      ;83E750;
    LDA.B #$06                           ;83E752;
    STA.W $000B,X                        ;83E754;
    LDA.B #$06                           ;83E757;
    STA.W $0012,X                        ;83E759;
    JMP.W CODE_83E769                    ;83E75C;

CODE_83E75F:
    LDA.B #$05                           ;83E75F;
    STA.W $000B,X                        ;83E761;
    LDA.B #$04                           ;83E764;
    STA.W $0012,X                        ;83E766;

CODE_83E769:
    DEC.B $39                            ;83E769;
    BMI CODE_83E770                      ;83E76B;
    JMP.W CODE_83E6C6                    ;83E76D;

CODE_83E770:
    STZ.B $39                            ;83E770;
    SEP #$10                             ;83E772;
    RTS                                  ;83E774;

CODE_83E775:
    REP #$10                             ;83E775;
    JSL.L CODE_8282D3                    ;83E777;
    BNE CODE_83E7A1                      ;83E77B;
    INC.W $0000,X                        ;83E77D;
    LDA.B #$31                           ;83E780;
    STA.W $000A,X                        ;83E782;
    LDA.B $33                            ;83E785;
    ORA.B $11                            ;83E787;
    STA.W $0011,X                        ;83E789;
    STZ.W $000B,X                        ;83E78C;
    REP #$20                             ;83E78F;
    LDA.B $08                            ;83E791;
    CLC                                  ;83E793;
    ADC.W #$000B                         ;83E794;
    STA.W $0008,X                        ;83E797;
    LDA.B $05                            ;83E79A;
    STA.W $0005,X                        ;83E79C;
    SEP #$20                             ;83E79F;

CODE_83E7A1:
    SEP #$10                             ;83E7A1;
    RTS                                  ;83E7A3;

CODE_83E7A4:
    REP #$20                             ;83E7A4;
    LDA.W #$0128                         ;83E7A6;
    STA.W $0000                          ;83E7A9;
    LDA.B $3C                            ;83E7AC;
    STA.W $0002                          ;83E7AE;
    SEP #$20                             ;83E7B1;
    JSL.L CODE_87A3EC                    ;83E7B3;
    BEQ CODE_83E7C8                      ;83E7B7;
    REP #$20                             ;83E7B9;
    STZ.B $1A                            ;83E7BB;
    LDA.W #$0100                         ;83E7BD;
    STA.B $1C                            ;83E7C0;
    SEP #$20                             ;83E7C2;
    LDA.B #$0A                           ;83E7C4;
    STA.B $01                            ;83E7C6;

CODE_83E7C8:
    RTS                                  ;83E7C8;

CODE_83E7C9:
    REP #$20                             ;83E7C9;
    TDC                                  ;83E7CB;
    LSR A                                ;83E7CC;
    LSR A                                ;83E7CD;
    LSR A                                ;83E7CE;
    LSR A                                ;83E7CF;
    LSR A                                ;83E7D0;
    CLC                                  ;83E7D1;
    ADC.W $0B9C                          ;83E7D2;
    AND.W #$0007                         ;83E7D5;
    CLC                                  ;83E7D8;
    ADC.W #$0020                         ;83E7D9;
    SEP #$20                             ;83E7DC;
    STA.B $34                            ;83E7DE;
    RTS                                  ;83E7E0;

CODE_83E7E1:
    LDX.B $01                            ;83E7E1;
    JMP.W (PTR16_83E7E6,X)               ;83E7E3;

PTR16_83E7E6:
    dw CODE_83E7EC                       ;83E7E6;
    dw CODE_83E85E                       ;83E7E8;
    dw CODE_83EE51                       ;83E7EA;

CODE_83E7EC:
    LDA.W $1F7D                          ;83E7EC;
    CMP.B #$03                           ;83E7EF;
    BEQ CODE_83E80B                      ;83E7F1;
    CMP.B #$02                           ;83E7F3;
    BNE CODE_83E80F                      ;83E7F5;
    REP #$20                             ;83E7F7;
    LDA.W #$0A80                         ;83E7F9;
    STA.W $1E5E                          ;83E7FC;
    STA.W $1E60                          ;83E7FF;
    SEP #$20                             ;83E802;
    JSR.W CODE_83EF1F                    ;83E804;
    JSL.L CODE_88D808                    ;83E807;

CODE_83E80B:
    JML.L CODE_828398                    ;83E80B;

CODE_83E80F:
    JSL.L CODE_82827D                    ;83E80F;
    LDA.B #$04                           ;83E813;
    STA.B $12                            ;83E815;
    STA.B $30                            ;83E817;
    STZ.B $33                            ;83E819;
    STZ.B $2F                            ;83E81B;
    LDA.B #$06                           ;83E81D;
    STA.B $26                            ;83E81F;
    LDA.B #$7F                           ;83E821;
    STA.B $27                            ;83E823;
    STA.B $3B                            ;83E825;
    LDA.B #$03                           ;83E827;
    STA.B $28                            ;83E829;
    STZ.B $10                            ;83E82B;
    STZ.B $32                            ;83E82D;
    REP #$20                             ;83E82F;
    LDA.W #$CF3B                         ;83E831;
    STA.B $20                            ;83E834;
    STZ.B $36                            ;83E836;
    STZ.B $38                            ;83E838;
    LDA.W #$0040                         ;83E83A;
    STA.B $1E                            ;83E83D;
    LDA.W #$0A80                         ;83E83F;
    STA.W $1E5E                          ;83E842;
    STA.W $1E60                          ;83E845;
    SEP #$20                             ;83E848;
    JSL.L CODE_849FE6                    ;83E84A;
    LDA.B #$1A                           ;83E84E;
    STA.B $02                            ;83E850;
    STA.W $1F49                          ;83E852;
    JSR.W CODE_83EF1F                    ;83E855;
    LDA.B #$02                           ;83E858;
    JML.L CODE_848F07                    ;83E85A;

CODE_83E85E:
    LDA.L $7F8349                        ;83E85E;
    ORA.B $33                            ;83E862;
    STA.B $11                            ;83E864;
    LDX.B $02                            ;83E866;
    JSR.W (PTR16_83E8C6,X)               ;83E868;
    JSL.L CODE_8280B4                    ;83E86B;
    LDA.B $27                            ;83E86F;
    AND.B #$7F                           ;83E871;
    STA.B $3B                            ;83E873;
    JSL.L CODE_849B43                    ;83E875;
    BEQ CODE_83E8A7                      ;83E879;
    BPL CODE_83E888                      ;83E87B;
    LDA.B #$30                           ;83E87D;
    STA.B $27                            ;83E87F;
    LDA.B $3B                            ;83E881;
    CLC                                  ;83E883;
    ADC.B #$30                           ;83E884;
    STA.B $3B                            ;83E886;

CODE_83E888:
    LDA.B #$0E                           ;83E888;
    TRB.B $11                            ;83E88A;
    LDA.W $1F1B                          ;83E88C;
    STA.B $3A                            ;83E88F;
    LDA.B $3C                            ;83E891;
    BNE CODE_83E899                      ;83E893;
    LDA.B #$05                           ;83E895;
    STA.B $3C                            ;83E897;

CODE_83E899:
    BIT.B $10                            ;83E899;
    BVS CODE_83E8A3                      ;83E89B;
    LDA.B #$13                           ;83E89D;
    JSL.L CODE_8088A2                    ;83E89F;

CODE_83E8A3:
    LDA.B #$02                           ;83E8A3;
    STA.B $32                            ;83E8A5;

CODE_83E8A7:
    LDA.B $3C                            ;83E8A7;
    BEQ CODE_83E8AD                      ;83E8A9;
    DEC.B $3C                            ;83E8AB;

CODE_83E8AD:
    JSR.W CODE_83CBB2                    ;83E8AD;
    LDA.B $11                            ;83E8B0;
    AND.B #$3F                           ;83E8B2;
    ORA.B $33                            ;83E8B4;
    STA.B $11                            ;83E8B6;
    LDA.W $0C2F                          ;83E8B8;
    LSR A                                ;83E8BB;
    BCS CODE_83E8C2                      ;83E8BC;
    JSL.L CODE_849B03                    ;83E8BE;

CODE_83E8C2:
    JML.L CODE_8491BE                    ;83E8C2;

PTR16_83E8C6:
    dw CODE_83E94B                       ;83E8C6;
    dw CODE_83E9C4                       ;83E8C8;
    dw CODE_83EA18                       ;83E8CA;
    dw CODE_83EA5A                       ;83E8CC;
    dw CODE_83EA9E                       ;83E8CE;
    dw CODE_83EA9E                       ;83E8D0;
    dw CODE_83EB2B                       ;83E8D2;
    dw CODE_83EB11                       ;83E8D4;
    dw CODE_83EBD7                       ;83E8D6;
    dw CODE_83EC00                       ;83E8D8;
    dw CODE_83EC30                       ;83E8DA;
    dw CODE_83EC91                       ;83E8DC;
    dw CODE_83EB61                       ;83E8DE;
    dw CODE_83E8E2                       ;83E8E0;

CODE_83E8E2:
    LDX.B $03                            ;83E8E2;
    BNE CODE_83E92C                      ;83E8E4;
    REP #$20                             ;83E8E6;
    LDA.W $1E4D                          ;83E8E8;
    CMP.W $1E56                          ;83E8EB;
    SEP #$20                             ;83E8EE;
    BNE CODE_83E92B                      ;83E8F0;
    LDA.B #$02                           ;83E8F2;
    STA.B $03                            ;83E8F4;
    STZ.W $1F49                          ;83E8F6;
    LDA.W $1F7D                          ;83E8F9;
    CMP.B #$01                           ;83E8FC;
    BEQ CODE_83E92B                      ;83E8FE;
    LDA.B #$80                           ;83E900;
    STA.W $0000                          ;83E902;
    LDA.B #$50                           ;83E905;
    STA.W $0002                          ;83E907;
    LDA.B #$58                           ;83E90A;
    STA.W $0004                          ;83E90C;
    LDA.B #$30                           ;83E90F;
    STA.W $0006                          ;83E911;
    LDA.B #$11                           ;83E914;
    STA.W $0008                          ;83E916;
    JSL.L CODE_83F74A                    ;83E919;
    LDA.B #$40                           ;83E91D;
    STA.W $0C11                          ;83E91F;
    JSR.W CODE_83EF00                    ;83E922;
    LDA.B #$02                           ;83E925;
    JSL.L CODE_848F07                    ;83E927;

CODE_83E92B:
    RTS                                  ;83E92B;

CODE_83E92C:
    LDA.W $1F2C                          ;83E92C;
    BMI CODE_83E94A                      ;83E92F;
    LDA.B #$01                           ;83E931;
    STA.W $1F7D                          ;83E933;
    STA.W $1F81                          ;83E936;
    STZ.B $30                            ;83E939;
    JSL.L CODE_849FFE                    ;83E93B;
    LDA.B #$1E                           ;83E93F;
    JSL.L CODE_8087A2                    ;83E941;
    LDA.B #$00                           ;83E945;
    JMP.W CODE_8386F1                    ;83E947;

CODE_83E94A:
    RTS                                  ;83E94A;

CODE_83E94B:
    LDX.B $03                            ;83E94B;
    BNE CODE_83E95A                      ;83E94D;
    INC.B $03                            ;83E94F;
    JSR.W CODE_83CB05                    ;83E951;
    LDA.B #$02                           ;83E954;
    JSL.L CODE_848F07                    ;83E956;

CODE_83E95A:
    JSR.W CODE_83EE55                    ;83E95A;
    JSR.W (PTR16_83E963,X)               ;83E95D;
    JMP.W CODE_83EEC3                    ;83E960;

PTR16_83E963:
    dw CODE_83E969                       ;83E963;
    dw CODE_83E982                       ;83E965;
    dw CODE_83E9A3                       ;83E967;

CODE_83E969:
    JSR.W CODE_83EE82                    ;83E969;
    JSL.L CODE_849086                    ;83E96C;
    AND.B #$07                           ;83E970;
    TAX                                  ;83E972;
    LDA.W DATA8_86D7DC,X                 ;83E973;
    BEQ CODE_83E981                      ;83E976;
    LDA.B #$80                           ;83E978;
    TSB.B $10                            ;83E97A;
    LDA.B #$06                           ;83E97C;
    JMP.W CODE_8386F1                    ;83E97E;

CODE_83E981:
    RTS                                  ;83E981;

CODE_83E982:
    LDA.B #$02                           ;83E982;
    JSR.W CODE_8386F1                    ;83E984;
    JSL.L CODE_849086                    ;83E987;
    AND.B #$07                           ;83E98B;
    TAX                                  ;83E98D;
    LDA.W DATA8_86D7E4,X                 ;83E98E;
    BEQ CODE_83E9A2                      ;83E991;
    LDA.B #$0A                           ;83E993;
    JMP.W CODE_8386F1                    ;83E995;
    JSL.L CODE_849086                    ;83E998;
    LSR A                                ;83E99C;
    BCC CODE_83E9A2                      ;83E99D;
    JMP.W CODE_83EE7A                    ;83E99F;

CODE_83E9A2:
    RTS                                  ;83E9A2;

CODE_83E9A3:
    LDA.B #$0A                           ;83E9A3;
    JSR.W CODE_8386F1                    ;83E9A5;
    JSL.L CODE_849086                    ;83E9A8;
    LSR A                                ;83E9AC;
    BCC CODE_83E9B2                      ;83E9AD;
    JMP.W CODE_83EE7A                    ;83E9AF;

CODE_83E9B2:
    JSL.L CODE_849086                    ;83E9B2;
    AND.B #$07                           ;83E9B6;
    TAX                                  ;83E9B8;
    LDA.W DATA8_86D7E4,X                 ;83E9B9;
    BEQ CODE_83E9C3                      ;83E9BC;
    LDA.B #$02                           ;83E9BE;
    JMP.W CODE_8386F1                    ;83E9C0;

CODE_83E9C3:
    RTS                                  ;83E9C3;

CODE_83E9C4:
    LDX.B $03                            ;83E9C4;
    BNE CODE_83E9D0                      ;83E9C6;
    INC.B $03                            ;83E9C8;
    LDA.B #$00                           ;83E9CA;
    JSL.L CODE_848F07                    ;83E9CC;

CODE_83E9D0:
    LDA.B $2B                            ;83E9D0;
    BIT.B #$04                           ;83E9D2;
    BNE CODE_83E9DF                      ;83E9D4;
    STZ.B $1C                            ;83E9D6;
    STZ.B $1D                            ;83E9D8;
    LDA.B #$10                           ;83E9DA;
    JMP.W CODE_8386F1                    ;83E9DC;

CODE_83E9DF:
    JSR.W CODE_83CB17                    ;83E9DF;
    JSR.W CODE_83EE55                    ;83E9E2;
    STX.W $0000                          ;83E9E5;
    JSL.L CODE_82823E                    ;83E9E8;
    JSR.W CODE_83EE55                    ;83E9EC;
    CPX.W $0000                          ;83E9EF;
    BEQ CODE_83E9F8                      ;83E9F2;
    LDA.B #$00                           ;83E9F4;
    STA.B $02                            ;83E9F6;

CODE_83E9F8:
    LDA.B #$00                           ;83E9F8;
    XBA                                  ;83E9FA;
    LDA.B #$20                           ;83E9FB;
    JSR.W CODE_83CB2B                    ;83E9FD;
    BCS CODE_83EA05                      ;83EA00;
    JMP.W CODE_83EE82                    ;83EA02;

CODE_83EA05:
    JSL.L CODE_848EEA                    ;83EA05;
    LDA.B $0F                            ;83EA09;
    AND.B #$03                           ;83EA0B;
    BEQ CODE_83EA15                      ;83EA0D;
    ORA.B #$38                           ;83EA0F;
    JSL.L CODE_8088A2                    ;83EA11;

CODE_83EA15:
    JMP.W CODE_83EEC3                    ;83EA15;

CODE_83EA18:
    LDX.B $03                            ;83EA18;
    JMP.W (PTR16_83EA1D,X)               ;83EA1A;

PTR16_83EA1D:
    dw CODE_83EA23                       ;83EA1D;
    dw CODE_83EA38                       ;83EA1F;
    dw CODE_83EA47                       ;83EA21;

CODE_83EA23:
    LDA.B #$02                           ;83EA23;
    STA.B $03                            ;83EA25;
    JSL.L CODE_849086                    ;83EA27;
    AND.B #$0F                           ;83EA2B;
    CLC                                  ;83EA2D;
    ADC.B #$0F                           ;83EA2E;
    STA.B $34                            ;83EA30;
    LDA.B #$02                           ;83EA32;
    JSL.L CODE_848F07                    ;83EA34;

CODE_83EA38:
    DEC.B $34                            ;83EA38;
    BNE CODE_83EA46                      ;83EA3A;
    LDA.B #$01                           ;83EA3C;
    JSL.L CODE_848F07                    ;83EA3E;
    LDA.B #$04                           ;83EA42;
    STA.B $03                            ;83EA44;

CODE_83EA46:
    RTS                                  ;83EA46;

CODE_83EA47:
    LDA.B $0F                            ;83EA47;
    BPL CODE_83EA50                      ;83EA49;
    LDA.B #$00                           ;83EA4B;
    JMP.W CODE_8386F1                    ;83EA4D;

CODE_83EA50:
    JSR.W CODE_83CB6C                    ;83EA50;
    JSL.L CODE_848EEA                    ;83EA53;
    JMP.W CODE_83EEC3                    ;83EA57;

CODE_83EA5A:
    LDX.B $03                            ;83EA5A;
    BNE CODE_83EA8A                      ;83EA5C;
    INC.B $03                            ;83EA5E;
    REP #$20                             ;83EA60;
    LDA.B $1A                            ;83EA62;
    BIT.B $0F                            ;83EA64;
    BPL CODE_83EA6C                      ;83EA66;
    EOR.W #$FFFF                         ;83EA68;
    INC A                                ;83EA6B;

CODE_83EA6C:
    STA.B $1A                            ;83EA6C;
    LDA.W #$0553                         ;83EA6E;
    STA.B $1C                            ;83EA71;
    SEP #$20                             ;83EA73;
    LDA.B #$80                           ;83EA75;
    TRB.B $10                            ;83EA77;
    LDA.B #$38                           ;83EA79;
    JSL.L CODE_8088A2                    ;83EA7B;
    LDA.B #$0C                           ;83EA7F;
    JSR.W CODE_83CD18                    ;83EA81;
    LDA.B #$03                           ;83EA84;
    JSL.L CODE_848F07                    ;83EA86;

CODE_83EA8A:
    LDA.B $1D                            ;83EA8A;
    BMI CODE_83EA94                      ;83EA8C;
    LDA.B $2B                            ;83EA8E;
    BIT.B #$08                           ;83EA90;
    BEQ CODE_83EA99                      ;83EA92;

CODE_83EA94:
    LDA.B #$10                           ;83EA94;
    JMP.W CODE_8386F1                    ;83EA96;

CODE_83EA99:
    JSL.L CODE_828174                    ;83EA99;
    RTS                                  ;83EA9D;

CODE_83EA9E:
    LDX.B $03                            ;83EA9E;
    BNE CODE_83EAC6                      ;83EAA0;
    INC.B $03                            ;83EAA2;
    REP #$20                             ;83EAA4;
    LDA.W #$0400                         ;83EAA6;
    BIT.B $32                            ;83EAA9;
    BVS CODE_83EAB0                      ;83EAAB;
    LDA.W #$FC00                         ;83EAAD;

CODE_83EAB0:
    STA.B $1A                            ;83EAB0;
    SEP #$20                             ;83EAB2;
    STZ.B $31                            ;83EAB4;
    LDA.B #$3B                           ;83EAB6;
    JSL.L CODE_8088A2                    ;83EAB8;
    LDA.B #$40                           ;83EABC;
    STA.B $34                            ;83EABE;
    LDA.B #$06                           ;83EAC0;
    JSL.L CODE_848F07                    ;83EAC2;

CODE_83EAC6:
    JSR.W CODE_83CDB3                    ;83EAC6;
    DEC.B $34                            ;83EAC9;
    BNE CODE_83EAD2                      ;83EACB;
    LDA.B #$0E                           ;83EACD;
    JMP.W CODE_8386F1                    ;83EACF;

CODE_83EAD2:
    LDA.B $2B                            ;83EAD2;
    BIT.B #$04                           ;83EAD4;
    BNE CODE_83EAE1                      ;83EAD6;
    STZ.B $1C                            ;83EAD8;
    STZ.B $1D                            ;83EADA;
    LDA.B #$10                           ;83EADC;
    JMP.W CODE_8386F1                    ;83EADE;

CODE_83EAE1:
    BIT.B #$03                           ;83EAE1;
    BEQ CODE_83EAEA                      ;83EAE3;
    LDA.B #$06                           ;83EAE5;
    JMP.W CODE_8386F1                    ;83EAE7;

CODE_83EAEA:
    LDA.B #$00                           ;83EAEA;
    XBA                                  ;83EAEC;
    LDA.B #$20                           ;83EAED;
    JSR.W CODE_83CB2B                    ;83EAEF;
    BCS CODE_83EB06                      ;83EAF2;
    JSL.L CODE_849086                    ;83EAF4;
    AND.B #$07                           ;83EAF8;
    TAX                                  ;83EAFA;
    LDA.W DATA8_86D7EC,X                 ;83EAFB;
    BNE CODE_83EB03                      ;83EAFE;
    JMP.W CODE_83EE82                    ;83EB00;

CODE_83EB03:
    JMP.W CODE_83EE7E                    ;83EB03;

CODE_83EB06:
    JSL.L CODE_82823E                    ;83EB06;
    JSL.L CODE_848EEA                    ;83EB0A;
    JMP.W CODE_83EEC3                    ;83EB0E;

CODE_83EB11:
    LDX.B $03                            ;83EB11;
    BNE CODE_83EB1D                      ;83EB13;
    INC.B $03                            ;83EB15;
    LDA.B #$07                           ;83EB17;
    JSL.L CODE_848F07                    ;83EB19;

CODE_83EB1D:
    LDA.B $0F                            ;83EB1D;
    BPL CODE_83EB26                      ;83EB1F;
    LDA.B #$00                           ;83EB21;
    JMP.W CODE_8386F1                    ;83EB23;

CODE_83EB26:
    JSL.L CODE_848EEA                    ;83EB26;
    RTS                                  ;83EB2A;

CODE_83EB2B:
    LDX.B $03                            ;83EB2B;
    BNE CODE_83EB37                      ;83EB2D;
    INC.B $03                            ;83EB2F;
    LDA.B #$08                           ;83EB31;
    JSL.L CODE_848F07                    ;83EB33;

CODE_83EB37:
    DEC.B $34                            ;83EB37;
    BEQ CODE_83EB4E                      ;83EB39;
    LDA.B $2B                            ;83EB3B;
    BIT.B #$04                           ;83EB3D;
    BNE CODE_83EB4A                      ;83EB3F;
    STZ.B $1C                            ;83EB41;
    STZ.B $1D                            ;83EB43;
    LDA.B #$10                           ;83EB45;
    JMP.W CODE_8386F1                    ;83EB47;

CODE_83EB4A:
    BIT.B #$03                           ;83EB4A;
    BEQ CODE_83EB53                      ;83EB4C;

CODE_83EB4E:
    LDA.B #$0E                           ;83EB4E;
    JMP.W CODE_8386F1                    ;83EB50;

CODE_83EB53:
    JSR.W CODE_83CB6C                    ;83EB53;
    JSL.L CODE_82823E                    ;83EB56;
    JSL.L CODE_848EEA                    ;83EB5A;
    JMP.W CODE_83EEC3                    ;83EB5E;

CODE_83EB61:
    LDX.B $03                            ;83EB61;
    JMP.W (PTR16_83EB66,X)               ;83EB63;

PTR16_83EB66:
    dw CODE_83EB6C                       ;83EB66;
    dw CODE_83EB7B                       ;83EB68;
    dw CODE_83EBAA                       ;83EB6A;

CODE_83EB6C:
    LDA.B #$02                           ;83EB6C;
    STA.B $03                            ;83EB6E;
    LDA.B #$3C                           ;83EB70;
    STA.B $34                            ;83EB72;
    LDA.B #$16                           ;83EB74;
    JSL.L CODE_848F07                    ;83EB76;
    RTS                                  ;83EB7A;

CODE_83EB7B:
    DEC.B $34                            ;83EB7B;
    BNE CODE_83EBA5                      ;83EB7D;
    LDA.B #$04                           ;83EB7F;
    STA.B $03                            ;83EB81;
    REP #$20                             ;83EB83;
    LDA.W #$0400                         ;83EB85;
    BIT.B $32                            ;83EB88;
    BVS CODE_83EB8F                      ;83EB8A;
    LDA.W #$FC00                         ;83EB8C;

CODE_83EB8F:
    STA.B $1A                            ;83EB8F;
    SEP #$20                             ;83EB91;
    STZ.B $31                            ;83EB93;
    LDA.B #$3B                           ;83EB95;
    JSL.L CODE_8088A2                    ;83EB97;
    LDA.B #$40                           ;83EB9B;
    STA.B $34                            ;83EB9D;
    LDA.B #$15                           ;83EB9F;
    JSL.L CODE_848F07                    ;83EBA1;

CODE_83EBA5:
    JSL.L CODE_848EEA                    ;83EBA5;
    RTS                                  ;83EBA9;

CODE_83EBAA:
    JSR.W CODE_83CDB3                    ;83EBAA;
    DEC.B $34                            ;83EBAD;
    BEQ CODE_83EBC4                      ;83EBAF;
    LDA.B $2B                            ;83EBB1;
    BIT.B #$04                           ;83EBB3;
    BNE CODE_83EBC0                      ;83EBB5;
    STZ.B $1C                            ;83EBB7;
    STZ.B $1D                            ;83EBB9;
    LDA.B #$10                           ;83EBBB;
    JMP.W CODE_8386F1                    ;83EBBD;

CODE_83EBC0:
    BIT.B #$03                           ;83EBC0;
    BEQ CODE_83EBC9                      ;83EBC2;

CODE_83EBC4:
    LDA.B #$0E                           ;83EBC4;
    JMP.W CODE_8386F1                    ;83EBC6;

CODE_83EBC9:
    JSR.W CODE_83CB6C                    ;83EBC9;
    JSL.L CODE_82823E                    ;83EBCC;
    JSL.L CODE_848EEA                    ;83EBD0;
    JMP.W CODE_83EEC3                    ;83EBD4;

CODE_83EBD7:
    LDX.B $03                            ;83EBD7;
    BNE CODE_83EBE3                      ;83EBD9;
    INC.B $03                            ;83EBDB;
    LDA.B #$03                           ;83EBDD;
    JSL.L CODE_848F07                    ;83EBDF;

CODE_83EBE3:
    LDA.B $2B                            ;83EBE3;
    BIT.B #$04                           ;83EBE5;
    BEQ CODE_83EBEE                      ;83EBE7;
    LDA.B #$12                           ;83EBE9;
    JMP.W CODE_8386F1                    ;83EBEB;

CODE_83EBEE:
    REP #$20                             ;83EBEE;
    LDA.W #$FA80                         ;83EBF0;
    CMP.B $1C                            ;83EBF3;
    BMI CODE_83EBF9                      ;83EBF5;
    STA.B $1C                            ;83EBF7;

CODE_83EBF9:
    SEP #$20                             ;83EBF9;
    JSL.L CODE_828174                    ;83EBFB;
    RTS                                  ;83EBFF;

CODE_83EC00:
    LDX.B $03                            ;83EC00;
    BNE CODE_83EC22                      ;83EC02;
    INC.B $03                            ;83EC04;
    LDX.B #$02                           ;83EC06;
    LDY.B #$01                           ;83EC08;
    LDA.B #$0A                           ;83EC0A;
    JSL.L CODE_84A33C                    ;83EC0C;
    LDA.B #$39                           ;83EC10;
    JSL.L CODE_8088A2                    ;83EC12;
    JSR.W CODE_83CD41                    ;83EC16;
    JSR.W CODE_83CD6C                    ;83EC19;
    LDA.B #$04                           ;83EC1C;
    JSL.L CODE_848F07                    ;83EC1E;

CODE_83EC22:
    LDA.B $0F                            ;83EC22;
    BPL CODE_83EC2B                      ;83EC24;
    LDA.B #$00                           ;83EC26;
    JMP.W CODE_8386F1                    ;83EC28;

CODE_83EC2B:
    JSL.L CODE_848EEA                    ;83EC2B;
    RTS                                  ;83EC2F;

CODE_83EC30:
    LDX.B $03                            ;83EC30;
    JMP.W (PTR16_83EC35,X)               ;83EC32;

PTR16_83EC35:
    dw CODE_83EC3B                       ;83EC35;
    dw CODE_83EC69                       ;83EC37;
    dw CODE_83EC80                       ;83EC39;

CODE_83EC3B:
    LDA.B #$02                           ;83EC3B;
    STA.B $03                            ;83EC3D;
    STA.B $2F                            ;83EC3F;
    REP #$30                             ;83EC41;
    LDX.W #$0000                         ;83EC43;
    JSL.L CODE_849086                    ;83EC46;
    BIT.W #$0007                         ;83EC4A;
    BEQ CODE_83EC59                      ;83EC4D;
    LDX.W #$0178                         ;83EC4F;
    BIT.B $32                            ;83EC52;
    BVC CODE_83EC59                      ;83EC54;
    LDX.W #$FE88                         ;83EC56;

CODE_83EC59:
    STX.B $1A                            ;83EC59;
    LDA.W #$0553                         ;83EC5B;
    STA.B $1C                            ;83EC5E;
    SEP #$30                             ;83EC60;
    LDA.B #$03                           ;83EC62;
    JSL.L CODE_848F07                    ;83EC64;
    RTS                                  ;83EC68;

CODE_83EC69:
    LDA.B $2B                            ;83EC69;
    BIT.B #$04                           ;83EC6B;
    BEQ CODE_83EC7B                      ;83EC6D;
    LDA.B #$04                           ;83EC6F;
    STA.B $03                            ;83EC71;
    STZ.B $2F                            ;83EC73;
    LDA.B #$0F                           ;83EC75;
    JSL.L CODE_848F07                    ;83EC77;

CODE_83EC7B:
    JSL.L CODE_828174                    ;83EC7B;
    RTS                                  ;83EC7F;

CODE_83EC80:
    LDA.B $0F                            ;83EC80;
    BPL CODE_83EC8C                      ;83EC82;
    JSR.W CODE_83EE93                    ;83EC84;
    LDA.B #$00                           ;83EC87;
    JMP.W CODE_8386F1                    ;83EC89;

CODE_83EC8C:
    JSL.L CODE_848EEA                    ;83EC8C;
    RTS                                  ;83EC90;

CODE_83EC91:
    LDX.B $03                            ;83EC91;
    JMP.W (PTR16_83EC96,X)               ;83EC93;

PTR16_83EC96:
    dw CODE_83ECA8                       ;83EC96;
    dw CODE_83ED08                       ;83EC98;
    dw CODE_83ED2B                       ;83EC9A;
    dw CODE_83ED69                       ;83EC9C;
    dw CODE_83ED95                       ;83EC9E;
    dw CODE_83EDC7                       ;83ECA0;
    dw CODE_83EDF6                       ;83ECA2;
    dw CODE_83EE37                       ;83ECA4;
    dw CODE_83EE47                       ;83ECA6;

CODE_83ECA8:
    REP #$20                             ;83ECA8;
    LDA.W $0BAD                          ;83ECAA;
    CMP.W #$0AB0                         ;83ECAD;
    SEP #$20                             ;83ECB0;
    BCS CODE_83ECDA                      ;83ECB2;
    LDA.B #$0C                           ;83ECB4;
    STA.B $03                            ;83ECB6;
    REP #$30                             ;83ECB8;
    LDY.W #$0040                         ;83ECBA;
    LDX.W #$0178                         ;83ECBD;
    LDA.B $05                            ;83ECC0;
    CMP.W #$0B30                         ;83ECC2;
    BCC CODE_83ECCD                      ;83ECC5;
    LDY.W #$0000                         ;83ECC7;
    LDX.W #$FE88                         ;83ECCA;

CODE_83ECCD:
    STX.B $1A                            ;83ECCD;
    SEP #$30                             ;83ECCF;
    STY.B $33                            ;83ECD1;
    LDA.B #$00                           ;83ECD3;
    JSL.L CODE_848F07                    ;83ECD5;
    RTS                                  ;83ECD9;

CODE_83ECDA:
    LDA.B #$02                           ;83ECDA;
    STA.B $03                            ;83ECDC;
    REP #$31                             ;83ECDE;
    LDX.W #$0178                         ;83ECE0;
    LDA.W $0BAD                          ;83ECE3;
    CLC                                  ;83ECE6;
    ADC.W #$0020                         ;83ECE7;
    CMP.B $05                            ;83ECEA;
    BCS CODE_83ECF1                      ;83ECEC;
    LDX.W #$FE88                         ;83ECEE;

CODE_83ECF1:
    STX.B $1A                            ;83ECF1;
    SEP #$30                             ;83ECF3;
    LDY.B #$03                           ;83ECF5;
    LDA.B #$F6                           ;83ECF7;
    JSL.L CODE_80887F                    ;83ECF9;
    LDA.B #$78                           ;83ECFD;
    STA.B $34                            ;83ECFF;
    LDA.B #$02                           ;83ED01;
    JSL.L CODE_848F07                    ;83ED03;
    RTS                                  ;83ED07;

CODE_83ED08:
    DEC.B $34                            ;83ED08;
    BNE CODE_83ED2A                      ;83ED0A;
    LDA.B #$04                           ;83ED0C;
    STA.B $03                            ;83ED0E;
    REP #$21                             ;83ED10;
    LDX.B #$40                           ;83ED12;
    LDA.W $0BAD                          ;83ED14;
    ADC.W #$0020                         ;83ED17;
    CMP.B $05                            ;83ED1A;
    BCS CODE_83ED20                      ;83ED1C;
    LDX.B #$00                           ;83ED1E;

CODE_83ED20:
    STX.B $33                            ;83ED20;
    SEP #$20                             ;83ED22;
    LDA.B #$00                           ;83ED24;
    JSL.L CODE_848F07                    ;83ED26;

CODE_83ED2A:
    RTS                                  ;83ED2A;

CODE_83ED2B:
    REP #$21                             ;83ED2B;
    LDA.W $0BAD                          ;83ED2D;
    ADC.W #$0020                         ;83ED30;
    SEC                                  ;83ED33;
    SBC.B $05                            ;83ED34;
    CLC                                  ;83ED36;
    ADC.W #$0008                         ;83ED37;
    CMP.W #$0010                         ;83ED3A;
    SEP #$20                             ;83ED3D;
    BCS CODE_83ED54                      ;83ED3F;
    STZ.B $33                            ;83ED41;
    LDA.B #$06                           ;83ED43;
    STA.B $03                            ;83ED45;
    STA.B $30                            ;83ED47;
    LDA.B #$02                           ;83ED49;
    STA.B $12                            ;83ED4B;
    LDA.B #$14                           ;83ED4D;
    JSL.L CODE_848F07                    ;83ED4F;
    RTS                                  ;83ED53;

CODE_83ED54:
    JSL.L CODE_82823E                    ;83ED54;
    JSL.L CODE_848EEA                    ;83ED58;
    LDA.B $0F                            ;83ED5C;
    AND.B #$03                           ;83ED5E;
    BEQ CODE_83ED68                      ;83ED60;
    ORA.B #$38                           ;83ED62;
    JSL.L CODE_8088A2                    ;83ED64;

CODE_83ED68:
    RTS                                  ;83ED68;

CODE_83ED69:
    JSL.L CODE_848EEA                    ;83ED69;
    BIT.B $0F                            ;83ED6D;
    BPL CODE_83ED86                      ;83ED6F;
    LDA.B #$08                           ;83ED71;
    STA.B $03                            ;83ED73;
    LDA.B #$88                           ;83ED75;
    STA.B $1A                            ;83ED77;
    LDA.B #$FE                           ;83ED79;
    STA.B $1B                            ;83ED7B;
    LDA.B #$17                           ;83ED7D;
    JSL.L CODE_848F07                    ;83ED7F;
    JMP.W CODE_83EECE                    ;83ED83;

CODE_83ED86:
    BVC CODE_83ED94                      ;83ED86;
    JSL.L CODE_84A061                    ;83ED88;
    LDA.B #$40                           ;83ED8C;
    STA.W $0C11                          ;83ED8E;
    JSR.W CODE_83EECE                    ;83ED91;

CODE_83ED94:
    RTS                                  ;83ED94;

CODE_83ED95:
    JSL.L CODE_848EEA                    ;83ED95;
    REP #$20                             ;83ED99;
    LDA.B $05                            ;83ED9B;
    CMP.W #$0AD0                         ;83ED9D;
    SEP #$20                             ;83EDA0;
    BCS CODE_83EDB0                      ;83EDA2;
    LDA.B #$0A                           ;83EDA4;
    STA.B $03                            ;83EDA6;
    STZ.B $33                            ;83EDA8;
    LDA.B #$18                           ;83EDAA;
    JSL.L CODE_848F07                    ;83EDAC;

CODE_83EDB0:
    JSL.L CODE_82823E                    ;83EDB0;
    LDA.B $0F                            ;83EDB4;
    AND.B #$30                           ;83EDB6;
    BEQ CODE_83EDC4                      ;83EDB8;
    LSR A                                ;83EDBA;
    LSR A                                ;83EDBB;
    LSR A                                ;83EDBC;
    LSR A                                ;83EDBD;
    ORA.B #$38                           ;83EDBE;
    JSL.L CODE_8088A2                    ;83EDC0;

CODE_83EDC4:
    JMP.W CODE_83EECE                    ;83EDC4;

CODE_83EDC7:
    JSL.L CODE_848EEA                    ;83EDC7;
    BIT.B $0F                            ;83EDCB;
    BPL CODE_83EDE6                      ;83EDCD;
    LDA.B #$0C                           ;83EDCF;
    STA.B $03                            ;83EDD1;
    LDA.B #$40                           ;83EDD3;
    STA.B $33                            ;83EDD5;
    LDA.B #$78                           ;83EDD7;
    STA.B $1A                            ;83EDD9;
    LDA.B #$01                           ;83EDDB;
    STA.B $1B                            ;83EDDD;
    LDA.B #$00                           ;83EDDF;
    JSL.L CODE_848F07                    ;83EDE1;
    RTS                                  ;83EDE5;

CODE_83EDE6:
    BVC CODE_83EDF5                      ;83EDE6;
    LDA.B $0F                            ;83EDE8;
    CMP.B #$50                           ;83EDEA;
    BNE CODE_83EDF2                      ;83EDEC;
    JSL.L CODE_84A026                    ;83EDEE;

CODE_83EDF2:
    JMP.W CODE_83EECE                    ;83EDF2;

CODE_83EDF5:
    RTS                                  ;83EDF5;

CODE_83EDF6:
    REP #$20                             ;83EDF6;
    LDA.B $05                            ;83EDF8;
    SEC                                  ;83EDFA;
    SBC.W #$0B30                         ;83EDFB;
    BPL CODE_83EE04                      ;83EDFE;
    EOR.W #$FFFF                         ;83EE00;
    INC A                                ;83EE03;

CODE_83EE04:
    CMP.W #$0002                         ;83EE04;
    BCS CODE_83EE20                      ;83EE07;
    LDA.W #$0B30                         ;83EE09;
    STA.B $05                            ;83EE0C;
    SEP #$20                             ;83EE0E;
    LDA.B #$3C                           ;83EE10;
    STA.B $34                            ;83EE12;
    STZ.B $33                            ;83EE14;
    LDA.B #$0E                           ;83EE16;
    STA.B $03                            ;83EE18;
    LDA.B #$16                           ;83EE1A;
    JSL.L CODE_848F07                    ;83EE1C;

CODE_83EE20:
    SEP #$20                             ;83EE20;
    JSL.L CODE_82823E                    ;83EE22;
    JSL.L CODE_848EEA                    ;83EE26;
    LDA.B $0F                            ;83EE2A;
    AND.B #$03                           ;83EE2C;
    BEQ CODE_83EE36                      ;83EE2E;
    ORA.B #$38                           ;83EE30;
    JSL.L CODE_8088A2                    ;83EE32;

CODE_83EE36:
    RTS                                  ;83EE36;

CODE_83EE37:
    DEC.B $34                            ;83EE37;
    BNE CODE_83EE42                      ;83EE39;
    LDA.B #$10                           ;83EE3B;
    STA.B $03                            ;83EE3D;
    STA.W $1F40                          ;83EE3F;

CODE_83EE42:
    JSL.L CODE_848EEA                    ;83EE42;
    RTS                                  ;83EE46;

CODE_83EE47:
    LDA.W $1F42                          ;83EE47;
    BEQ CODE_83EE50                      ;83EE4A;
    LDA.B #$04                           ;83EE4C;
    STA.B $01                            ;83EE4E;

CODE_83EE50:
    RTS                                  ;83EE50;

CODE_83EE51:
    JML.L CODE_828398                    ;83EE51;

CODE_83EE55:
    REP #$20                             ;83EE55;
    LDA.B $05                            ;83EE57;
    SEC                                  ;83EE59;
    SBC.W $0BAD                          ;83EE5A;
    BPL CODE_83EE63                      ;83EE5D;
    EOR.W #$FFFF                         ;83EE5F;
    INC A                                ;83EE62;

CODE_83EE63:
    CMP.W #$0020                         ;83EE63;
    BCC CODE_83EE75                      ;83EE66;
    CMP.W #$00A0                         ;83EE68;
    BCC CODE_83EE71                      ;83EE6B;
    LDX.B #$04                           ;83EE6D;
    BRA CODE_83EE77                      ;83EE6F;

CODE_83EE71:
    LDX.B #$02                           ;83EE71;
    BRA CODE_83EE77                      ;83EE73;

CODE_83EE75:
    LDX.B #$00                           ;83EE75;

CODE_83EE77:
    SEP #$20                             ;83EE77;
    RTS                                  ;83EE79;

CODE_83EE7A:
    LDX.B #$18                           ;83EE7A;
    BRA CODE_83EE84                      ;83EE7C;

CODE_83EE7E:
    LDX.B #$0C                           ;83EE7E;
    BRA CODE_83EE84                      ;83EE80;

CODE_83EE82:
    LDX.B #$04                           ;83EE82;

CODE_83EE84:
    LDA.W $0BCF                          ;83EE84;
    AND.B #$7F                           ;83EE87;
    CMP.B #$07                           ;83EE89;
    BCS CODE_83EE8F                      ;83EE8B;
    LDX.B #$14                           ;83EE8D;

CODE_83EE8F:
    TXA                                  ;83EE8F;
    JMP.W CODE_8386F1                    ;83EE90;

CODE_83EE93:
    JSL.L CODE_828358                    ;83EE93;
    BNE CODE_83EEC0                      ;83EE97;
    INC.W $0000,X                        ;83EE99;
    LDA.B #$16                           ;83EE9C;
    STA.W $000A,X                        ;83EE9E;
    LDA.B $33                            ;83EEA1;
    STA.W $0011,X                        ;83EEA3;
    REP #$21                             ;83EEA6;
    LDA.W #$0016                         ;83EEA8;
    BIT.B $32                            ;83EEAB;
    BVS CODE_83EEB2                      ;83EEAD;
    LDA.W #$FFEA                         ;83EEAF;

CODE_83EEB2:
    ADC.B $05                            ;83EEB2;
    STA.W $0005,X                        ;83EEB4;
    LDA.B $08                            ;83EEB7;
    CLC                                  ;83EEB9;
    ADC.W #$FFE2                         ;83EEBA;
    STA.W $0008,X                        ;83EEBD;

CODE_83EEC0:
    SEP #$30                             ;83EEC0;
    RTS                                  ;83EEC2;

CODE_83EEC3:
    LDA.W $0C26                          ;83EEC3;
    BPL CODE_83EECD                      ;83EEC6;
    LDA.B #$16                           ;83EEC8;
    JMP.W CODE_8386F1                    ;83EECA;

CODE_83EECD:
    RTS                                  ;83EECD;

CODE_83EECE:
    REP #$21                             ;83EECE;
    LDA.B $0F                            ;83EED0;
    AND.W #$000F                         ;83EED2;
    TAX                                  ;83EED5;
    LDA.W DATA8_86D7F4,X                 ;83EED6;
    AND.W #$00FF                         ;83EED9;
    BIT.B $32                            ;83EEDC;
    BVS CODE_83EEE4                      ;83EEDE;
    EOR.W #$FFFF                         ;83EEE0;
    INC A                                ;83EEE3;

CODE_83EEE4:
    ADC.B $05                            ;83EEE4;
    STA.W $0BAD                          ;83EEE6;
    LDA.W DATA8_86D7F5,X                 ;83EEE9;
    AND.W #$00FF                         ;83EEEC;
    BIT.W #$0080                         ;83EEEF;
    BEQ CODE_83EEF7                      ;83EEF2;
    ORA.W #$FF00                         ;83EEF4;

CODE_83EEF7:
    CLC                                  ;83EEF7;
    ADC.B $08                            ;83EEF8;
    STA.W $0BB0                          ;83EEFA;
    SEP #$20                             ;83EEFD;
    RTS                                  ;83EEFF;

CODE_83EF00:
    REP #$10                             ;83EF00;
    LDY.W #$0001                         ;83EF02;

CODE_83EF05:
    JSL.L CODE_828321                    ;83EF05;
    BNE CODE_83EF1C                      ;83EF09;
    INC.W $0000,X                        ;83EF0B;
    LDA.B #$3C                           ;83EF0E;
    STA.W $000A,X                        ;83EF10;
    LDA.W DATA8_86D800,Y                 ;83EF13;
    STA.W $000B,X                        ;83EF16;
    DEY                                  ;83EF19;
    BPL CODE_83EF05                      ;83EF1A;

CODE_83EF1C:
    SEP #$10                             ;83EF1C;
    RTS                                  ;83EF1E;

CODE_83EF1F:
    JSL.L CODE_828321                    ;83EF1F;
    BNE CODE_83EF32                      ;83EF23;
    INC.W $0000,X                        ;83EF25;
    LDA.B #$66                           ;83EF28;
    STA.W $000A,X                        ;83EF2A;
    LDA.B #$08                           ;83EF2D;
    STA.W $000B,X                        ;83EF2F;

CODE_83EF32:
    SEP #$10                             ;83EF32;
    RTS                                  ;83EF34;

CODE_83EF35:
    LDA.W $1F3F                          ;83EF35;
    BNE CODE_83EF65                      ;83EF38;
    REP #$20                             ;83EF3A;
    LDA.W $1E4D                          ;83EF3C;
    CMP.W #$0440                         ;83EF3F;
    BCC CODE_83EF61                      ;83EF42;
    CMP.W #$0CA0                         ;83EF44;
    BCS CODE_83EF61                      ;83EF47;
    AND.W #$FFF0                         ;83EF49;
    CLC                                  ;83EF4C;
    ADC.W #$0088                         ;83EF4D;
    STA.B $05                            ;83EF50;
    LDA.W $1E50                          ;83EF52;
    CMP.W #$0140                         ;83EF55;
    BCC CODE_83EF61                      ;83EF58;
    SEP #$20                             ;83EF5A;
    LDX.B $01                            ;83EF5C;
    JMP.W (PTR16_83EF69,X)               ;83EF5E;

CODE_83EF61:
    JML.L CODE_828387                    ;83EF61;

CODE_83EF65:
    JML.L CODE_828398                    ;83EF65;

PTR16_83EF69:
    dw CODE_83EF6D                       ;83EF69;
    dw CODE_83EFAE                       ;83EF6B;

CODE_83EF6D:
    LDA.B #$02                           ;83EF6D;
    STA.B $01                            ;83EF6F;
    JSL.L CODE_849086                    ;83EF71;
    AND.B #$F0                           ;83EF75;
    STA.B $0B                            ;83EF77;
    LDA.B #$1E                           ;83EF79;
    STA.B $1A                            ;83EF7B;
    REP #$10                             ;83EF7D;
    LDX.W #$1628                         ;83EF7F;

CODE_83EF82:
    LDA.W $0000,X                        ;83EF82;
    BEQ CODE_83EF9D                      ;83EF85;
    LDA.W $000A,X                        ;83EF87;
    CMP.B #$0D                           ;83EF8A;
    BNE CODE_83EF9D                      ;83EF8C;
    REP #$20                             ;83EF8E;
    TDC                                  ;83EF90;
    STA.W $0000                          ;83EF91;
    CPX.W $0000                          ;83EF94;
    BEQ CODE_83EF9D                      ;83EF97;
    JML.L CODE_828387                    ;83EF99;

CODE_83EF9D:
    REP #$20                             ;83EF9D;
    TXA                                  ;83EF9F;
    CLC                                  ;83EFA0;
    ADC.W #$0030                         ;83EFA1;
    TAX                                  ;83EFA4;
    SEP #$20                             ;83EFA5;
    CPX.W #$1928                         ;83EFA7;
    BCC CODE_83EF82                      ;83EFAA;
    SEP #$10                             ;83EFAC;

CODE_83EFAE:
    DEC.B $1A                            ;83EFAE;
    BNE CODE_83EFFD                      ;83EFB0;
    LDA.B #$1E                           ;83EFB2;
    STA.B $1A                            ;83EFB4;

CODE_83EFB6:
    JSL.L CODE_849086                    ;83EFB6;
    AND.B #$F0                           ;83EFBA;
    CMP.B $0B                            ;83EFBC;
    BEQ CODE_83EFB6                      ;83EFBE;
    STA.B $0B                            ;83EFC0;
    STA.B $29                            ;83EFC2;
    LDA.B #$20                           ;83EFC4;
    STA.B $2A                            ;83EFC6;
    JSL.L CODE_8490A0                    ;83EFC8;
    CMP.B #$34                           ;83EFCC;
    BCS CODE_83EFFD                      ;83EFCE;
    JSL.L CODE_828321                    ;83EFD0;
    BNE CODE_83EFFB                      ;83EFD4;
    INC.W $0000,X                        ;83EFD6;
    LDA.B #$18                           ;83EFD9;
    STA.W $000A,X                        ;83EFDB;
    STZ.W $000B,X                        ;83EFDE;
    REP #$20                             ;83EFE1;
    LDA.B $08                            ;83EFE3;
    STA.W $0008,X                        ;83EFE5;
    LDA.B $29                            ;83EFE8;
    AND.W #$00FF                         ;83EFEA;
    BIT.W #$0080                         ;83EFED;
    BEQ CODE_83EFF5                      ;83EFF0;
    ORA.W #$FF00                         ;83EFF2;

CODE_83EFF5:
    CLC                                  ;83EFF5;
    ADC.B $05                            ;83EFF6;
    STA.W $0005,X                        ;83EFF8;

CODE_83EFFB:
    SEP #$30                             ;83EFFB;

CODE_83EFFD:
    RTL                                  ;83EFFD;

CODE_83EFFE:
    LDX.B $01                            ;83EFFE;
    JMP.W (PTR16_83F003,X)               ;83F000;

PTR16_83F003:
    dw CODE_83F009                       ;83F003;
    dw CODE_83F050                       ;83F005;
    dw CODE_83F098                       ;83F007;

CODE_83F009:
    LDA.B #$5B                           ;83F009;
    STA.B $16                            ;83F00B;
    LDA.L $7F825A                        ;83F00D;
    STA.B $18                            ;83F011;
    LDA.L $7F835A                        ;83F013;
    STA.B $11                            ;83F017;
    LDA.B #$04                           ;83F019;
    STA.B $12                            ;83F01B;
    LDA.B $0B                            ;83F01D;
    AND.B #$0F                           ;83F01F;
    TAX                                  ;83F021;
    LDA.W DATA8_86DAB5,X                 ;83F022;
    STA.B $02                            ;83F025;
    TXA                                  ;83F027;
    ASL A                                ;83F028;
    TAX                                  ;83F029;
    STZ.B $2C                            ;83F02A;
    REP #$20                             ;83F02C;
    LDA.W DATA8_86DABF,X                 ;83F02E;
    STA.B $05                            ;83F031;
    LDA.W DATA8_86DAD3,X                 ;83F033;
    STA.B $08                            ;83F036;
    LDA.W DATA8_86DAE7,X                 ;83F038;
    STA.B $29                            ;83F03B;
    SEP #$20                             ;83F03D;
    LDA.B #$00                           ;83F03F;
    JSL.L CODE_848F07                    ;83F041;
    LDA.B #$02                           ;83F045;
    LDX.B $0B                            ;83F047;
    BPL CODE_83F04D                      ;83F049;
    LDA.B #$04                           ;83F04B;

CODE_83F04D:
    STA.B $01                            ;83F04D;
    RTL                                  ;83F04F;

CODE_83F050:
    REP #$20                             ;83F050;
    LDX.B $02                            ;83F052;
    JMP.W (PTR16_83F057,X)               ;83F054;

PTR16_83F057:
    dw CODE_83F05F                       ;83F057;
    dw CODE_83F066                       ;83F059;
    dw CODE_83F06D                       ;83F05B;
    dw CODE_83F074                       ;83F05D;

CODE_83F05F:
    LDA.B $08                            ;83F05F;
    DEC A                                ;83F061;
    STA.B $08                            ;83F062;
    BRA CODE_83F079                      ;83F064;

CODE_83F066:
    LDA.B $05                            ;83F066;
    INC A                                ;83F068;
    STA.B $05                            ;83F069;
    BRA CODE_83F079                      ;83F06B;

CODE_83F06D:
    LDA.B $08                            ;83F06D;
    INC A                                ;83F06F;
    STA.B $08                            ;83F070;
    BRA CODE_83F079                      ;83F072;

CODE_83F074:
    LDA.B $05                            ;83F074;
    DEC A                                ;83F076;
    STA.B $05                            ;83F077;

CODE_83F079:
    DEC.B $29                            ;83F079;
    BNE CODE_83F095                      ;83F07B;
    SEP #$20                             ;83F07D;
    LDA.B $02                            ;83F07F;
    INC A                                ;83F081;
    INC A                                ;83F082;
    AND.B #$06                           ;83F083;
    STA.B $02                            ;83F085;
    LSR A                                ;83F087;
    LSR A                                ;83F088;
    REP #$20                             ;83F089;
    LDA.W #$0200                         ;83F08B;
    BCC CODE_83F093                      ;83F08E;
    LDA.W #$0040                         ;83F090;

CODE_83F093:
    STA.B $29                            ;83F093;

CODE_83F095:
    JMP.W CODE_83F110                    ;83F095;

CODE_83F098:
    REP #$20                             ;83F098;
    LDX.B $02                            ;83F09A;
    JMP.W (PTR16_83F09F,X)               ;83F09C;

PTR16_83F09F:
    dw CODE_83F0A9                       ;83F09F;
    dw CODE_83F0BD                       ;83F0A1;
    dw CODE_83F0D6                       ;83F0A3;
    dw CODE_83F0EA                       ;83F0A5;
    dw CODE_83F0FE                       ;83F0A7;

CODE_83F0A9:
    LDA.B $08                            ;83F0A9;
    DEC A                                ;83F0AB;
    STA.B $08                            ;83F0AC;
    DEC.B $29                            ;83F0AE;
    BNE CODE_83F110                      ;83F0B0;
    INC.B $02                            ;83F0B2;
    INC.B $02                            ;83F0B4;
    LDA.W #$0080                         ;83F0B6;
    STA.B $29                            ;83F0B9;
    BRA CODE_83F110                      ;83F0BB;

CODE_83F0BD:
    LDA.B $05                            ;83F0BD;
    INC A                                ;83F0BF;
    STA.B $05                            ;83F0C0;
    LDA.B $08                            ;83F0C2;
    DEC A                                ;83F0C4;
    STA.B $08                            ;83F0C5;
    DEC.B $29                            ;83F0C7;
    BNE CODE_83F110                      ;83F0C9;
    INC.B $02                            ;83F0CB;
    INC.B $02                            ;83F0CD;
    LDA.W #$0040                         ;83F0CF;
    STA.B $29                            ;83F0D2;
    BRA CODE_83F110                      ;83F0D4;

CODE_83F0D6:
    LDA.B $05                            ;83F0D6;
    INC A                                ;83F0D8;
    STA.B $05                            ;83F0D9;
    DEC.B $29                            ;83F0DB;
    BNE CODE_83F110                      ;83F0DD;
    INC.B $02                            ;83F0DF;
    INC.B $02                            ;83F0E1;
    LDA.W #$00E0                         ;83F0E3;
    STA.B $29                            ;83F0E6;
    BRA CODE_83F110                      ;83F0E8;

CODE_83F0EA:
    LDA.B $08                            ;83F0EA;
    INC A                                ;83F0EC;
    STA.B $08                            ;83F0ED;
    DEC.B $29                            ;83F0EF;
    BNE CODE_83F110                      ;83F0F1;
    INC.B $02                            ;83F0F3;
    INC.B $02                            ;83F0F5;
    LDA.W #$00C0                         ;83F0F7;
    STA.B $29                            ;83F0FA;
    BRA CODE_83F110                      ;83F0FC;

CODE_83F0FE:
    LDA.B $05                            ;83F0FE;
    DEC A                                ;83F100;
    STA.B $05                            ;83F101;
    DEC.B $29                            ;83F103;
    BNE CODE_83F110                      ;83F105;
    LDX.B #$00                           ;83F107;
    STX.B $02                            ;83F109;
    LDA.W #$0060                         ;83F10B;
    STA.B $29                            ;83F10E;

CODE_83F110:
    SEP #$30                             ;83F110;
    JSL.L CODE_82806E                    ;83F112;
    BCC CODE_83F119                      ;83F116;
    RTL                                  ;83F118;

CODE_83F119:
    REP #$20                             ;83F119;
    LDA.W #$DAAD                         ;83F11B;
    STA.B $20                            ;83F11E;
    JSL.L CODE_84AB77                    ;83F120;
    LDA.W #$DAB1                         ;83F124;
    STA.B $20                            ;83F127;
    JSL.L CODE_84AB4C                    ;83F129;
    SEP #$20                             ;83F12D;
    JSL.L CODE_848EEA                    ;83F12F;
    JML.L CODE_8280B4                    ;83F133;

CODE_83F137:
    LDX.B $01                            ;83F137;
    JSR.W (PTR16_83F19E,X)               ;83F139;
    JSL.L CODE_848EEA                    ;83F13C;
    JSL.L CODE_82806E                    ;83F140;
    BCC CODE_83F14F                      ;83F144;
    INC.B $1F                            ;83F146;
    BPL CODE_83F14E                      ;83F148;
    LDA.B #$80                           ;83F14A;
    STA.B $1F                            ;83F14C;

CODE_83F14E:
    RTL                                  ;83F14E;

CODE_83F14F:
    LDA.B $1F                            ;83F14F;
    BEQ CODE_83F184                      ;83F151;
    STZ.B $1F                            ;83F153;
    CMP.B #$0A                           ;83F155;
    BCC CODE_83F184                      ;83F157;
    LDA.B #$38                           ;83F159;
    STA.B $0A                            ;83F15B;
    JSL.L CODE_84A1D0                    ;83F15D;
    LDA.B #$0F                           ;83F161;
    STA.B $0A                            ;83F163;
    CPY.B #$02                           ;83F165;
    BCS CODE_83F184                      ;83F167;
    JSL.L CODE_828321                    ;83F169;
    BNE CODE_83F182                      ;83F16D;
    INC.W $0000,X                        ;83F16F;
    LDA.B #$38                           ;83F172;
    STA.W $000A,X                        ;83F174;
    LDA.B #$80                           ;83F177;
    STA.W $000B,X                        ;83F179;
    REP #$20                             ;83F17C;
    TDC                                  ;83F17E;
    STA.W $000C,X                        ;83F17F;

CODE_83F182:
    SEP #$10                             ;83F182;

CODE_83F184:
    REP #$20                             ;83F184;
    LDA.W #$DAFB                         ;83F186;
    STA.B $20                            ;83F189;
    JSL.L CODE_84AB77                    ;83F18B;
    LDA.W #$DAFF                         ;83F18F;
    STA.B $20                            ;83F192;
    JSL.L CODE_84AB4C                    ;83F194;
    SEP #$20                             ;83F198;
    JML.L CODE_8280B4                    ;83F19A;

PTR16_83F19E:
    dw CODE_83F1AA                       ;83F19E;
    dw CODE_83F1FF                       ;83F1A0;
    dw CODE_83F25B                       ;83F1A2;
    dw CODE_83F22D                       ;83F1A4;
    dw CODE_83F25B                       ;83F1A6;
    dw CODE_83F276                       ;83F1A8;

CODE_83F1AA:
    LDA.B #$5C                           ;83F1AA;
    STA.B $16                            ;83F1AC;
    STZ.B $1F                            ;83F1AE;
    LDA.L $7F825B                        ;83F1B0;
    STA.B $18                            ;83F1B4;
    LDA.L $7F835B                        ;83F1B6;
    STA.B $11                            ;83F1BA;
    LDA.B #$04                           ;83F1BC;
    STA.B $12                            ;83F1BE;
    LDX.B $0B                            ;83F1C0;
    LDA.W DATA8_86DB3A,X                 ;83F1C2;
    STA.B $01                            ;83F1C5;
    LDA.W DATA8_86DB2F,X                 ;83F1C7;
    STA.B $08                            ;83F1CA;
    STZ.B $09                            ;83F1CC;
    BIT.B #$40                           ;83F1CE;
    BEQ CODE_83F1D6                      ;83F1D0;
    LDA.B #$FF                           ;83F1D2;
    STA.B $06                            ;83F1D4;

CODE_83F1D6:
    TXA                                  ;83F1D6;
    ASL A                                ;83F1D7;
    TAX                                  ;83F1D8;
    REP #$20                             ;83F1D9;
    LDA.W DATA8_86DB03,X                 ;83F1DB;
    STA.B $05                            ;83F1DE;
    LDA.W DATA8_86DB19,X                 ;83F1E0;
    STA.B $29                            ;83F1E3;
    CLC                                  ;83F1E5;
    ADC.B $08                            ;83F1E6;
    STA.B $08                            ;83F1E8;
    SEP #$20                             ;83F1EA;
    LDA.B #$00                           ;83F1EC;
    JSL.L CODE_848F07                    ;83F1EE;
    JSL.L CODE_849086                    ;83F1F2;
    AND.B #$0F                           ;83F1F6;
    CMP.B #$04                           ;83F1F8;
    BCC CODE_83F1FC                      ;83F1FA;

CODE_83F1FC:
    SEP #$30                             ;83F1FC;
    RTS                                  ;83F1FE;

CODE_83F1FF:
    LDA.B $02                            ;83F1FF;
    BNE CODE_83F214                      ;83F201;
    INC.B $02                            ;83F203;
    LDA.B #$00                           ;83F205;
    JSL.L CODE_848F07                    ;83F207;
    REP #$20                             ;83F20B;
    LDA.W #$0100                         ;83F20D;
    STA.B $1C                            ;83F210;
    SEP #$20                             ;83F212;

CODE_83F214:
    JSL.L CODE_82825D                    ;83F214;
    REP #$20                             ;83F218;
    LDA.B $08                            ;83F21A;
    CLC                                  ;83F21C;
    ADC.W #$0040                         ;83F21D;
    CMP.B $29                            ;83F220;
    SEP #$20                             ;83F222;
    BNE CODE_83F22C                      ;83F224;
    INC.B $01                            ;83F226;
    INC.B $01                            ;83F228;
    STZ.B $02                            ;83F22A;

CODE_83F22C:
    RTS                                  ;83F22C;

CODE_83F22D:
    LDA.B $02                            ;83F22D;
    BNE CODE_83F242                      ;83F22F;
    INC.B $02                            ;83F231;
    LDA.B #$02                           ;83F233;
    JSL.L CODE_848F07                    ;83F235;
    REP #$20                             ;83F239;
    LDA.W #$FF00                         ;83F23B;
    STA.B $1C                            ;83F23E;
    SEP #$20                             ;83F240;

CODE_83F242:
    JSL.L CODE_82825D                    ;83F242;
    REP #$20                             ;83F246;
    LDA.B $08                            ;83F248;
    SEC                                  ;83F24A;
    SBC.W #$0040                         ;83F24B;
    CMP.B $29                            ;83F24E;
    SEP #$20                             ;83F250;
    BNE CODE_83F25A                      ;83F252;
    INC.B $01                            ;83F254;
    INC.B $01                            ;83F256;
    STZ.B $02                            ;83F258;

CODE_83F25A:
    RTS                                  ;83F25A;

CODE_83F25B:
    LDA.B $02                            ;83F25B;
    BNE CODE_83F26B                      ;83F25D;
    INC.B $02                            ;83F25F;
    LDA.B #$1E                           ;83F261;
    STA.B $1E                            ;83F263;
    LDA.B #$01                           ;83F265;
    JSL.L CODE_848F07                    ;83F267;

CODE_83F26B:
    DEC.B $1E                            ;83F26B;
    BNE CODE_83F275                      ;83F26D;
    INC.B $01                            ;83F26F;
    INC.B $01                            ;83F271;
    STZ.B $02                            ;83F273;

CODE_83F275:
    RTS                                  ;83F275;

CODE_83F276:
    LDA.B #$02                           ;83F276;
    STA.B $01                            ;83F278;
    JMP.W CODE_83F1FF                    ;83F27A;

CODE_83F27D:
    LDX.B $01                            ;83F27D;
    JSR.W (PTR16_83F286,X)               ;83F27F;
    JML.L CODE_8280B4                    ;83F282;

PTR16_83F286:
    dw CODE_83F28C                       ;83F286;
    dw CODE_83F2C9                       ;83F288;
    dw CODE_83F330                       ;83F28A;

CODE_83F28C:
    LDA.B #$9C                           ;83F28C;
    STA.B $16                            ;83F28E;
    LDA.L $7F8293                        ;83F290;
    STA.B $18                            ;83F294;
    LDA.L $7F8393                        ;83F296;
    STA.B $11                            ;83F29A;
    LDA.B #$06                           ;83F29C;
    STA.B $12                            ;83F29E;
    REP #$30                             ;83F2A0;
    JSR.W CODE_83F353                    ;83F2A2;
    LDA.B $0B                            ;83F2A5;
    AND.W #$001C                         ;83F2A7;
    LSR A                                ;83F2AA;
    TAX                                  ;83F2AB;
    LDA.W DATA8_86DB66,X                 ;83F2AC;
    STA.B $1E                            ;83F2AF;
    CLC                                  ;83F2B1;
    ADC.W DATA8_86DB82,X                 ;83F2B2;
    STA.B $05                            ;83F2B5;
    LDA.W DATA8_86DB74,X                 ;83F2B7;
    STA.B $08                            ;83F2BA;
    SEP #$20                             ;83F2BC;
    LDA.B #$00                           ;83F2BE;
    JSL.L CODE_848F07                    ;83F2C0;
    LDA.B #$02                           ;83F2C4;
    STA.B $01                            ;83F2C6;
    RTS                                  ;83F2C8;

CODE_83F2C9:
    JSL.L CODE_82823E                    ;83F2C9;
    JSL.L CODE_848EEA                    ;83F2CD;
    REP #$20                             ;83F2D1;
    LDA.W #$DB58                         ;83F2D3;
    STA.B $20                            ;83F2D6;
    JSL.L CODE_84AB77                    ;83F2D8;
    LDA.W #$DB62                         ;83F2DC;
    STA.B $20                            ;83F2DF;
    JSL.L CODE_84AB4C                    ;83F2E1;
    REP #$10                             ;83F2E5;
    LDA.B $1A                            ;83F2E7;
    BMI CODE_83F30C                      ;83F2E9;
    LDA.B $05                            ;83F2EB;
    SEC                                  ;83F2ED;
    SBC.B $1E                            ;83F2EE;
    BMI CODE_83F32D                      ;83F2F0;
    CMP.W #$0040                         ;83F2F2;
    SEP #$20                             ;83F2F5;
    BCC CODE_83F32D                      ;83F2F7;
    LDA.B #$04                           ;83F2F9;
    STA.B $01                            ;83F2FB;
    LDA.B #$40                           ;83F2FD;
    STA.B $26                            ;83F2FF;
    LDA.B #$02                           ;83F301;
    TRB.B $0B                            ;83F303;
    REP #$20                             ;83F305;
    JSR.W CODE_83F353                    ;83F307;
    BRA CODE_83F32D                      ;83F30A;

CODE_83F30C:
    REP #$20                             ;83F30C;
    LDA.B $1E                            ;83F30E;
    SEC                                  ;83F310;
    SBC.B $05                            ;83F311;
    BMI CODE_83F32D                      ;83F313;
    CMP.W #$0040                         ;83F315;
    SEP #$20                             ;83F318;
    BCC CODE_83F32D                      ;83F31A;
    LDA.B #$04                           ;83F31C;
    STA.B $01                            ;83F31E;
    LDA.B #$40                           ;83F320;
    STA.B $26                            ;83F322;
    LDA.B #$02                           ;83F324;
    TSB.B $0B                            ;83F326;
    REP #$20                             ;83F328;
    JSR.W CODE_83F353                    ;83F32A;

CODE_83F32D:
    SEP #$30                             ;83F32D;
    RTS                                  ;83F32F;

CODE_83F330:
    DEC.B $26                            ;83F330;
    BNE CODE_83F338                      ;83F332;
    LDA.B #$02                           ;83F334;
    STA.B $01                            ;83F336;

CODE_83F338:
    JSL.L CODE_848EEA                    ;83F338;
    REP #$20                             ;83F33C;
    LDA.W #$DB58                         ;83F33E;
    STA.B $20                            ;83F341;
    JSL.L CODE_84AB77                    ;83F343;
    LDA.W #$DB62                         ;83F347;
    STA.B $20                            ;83F34A;
    JSL.L CODE_84AB4C                    ;83F34C;
    SEP #$20                             ;83F350;
    RTS                                  ;83F352;

CODE_83F353:
    LDA.B $0B                            ;83F353;
    AND.W #$0003                         ;83F355;
    ASL A                                ;83F358;
    TAX                                  ;83F359;
    LDA.W DATA8_86DB90,X                 ;83F35A;
    STA.B $1A                            ;83F35D;
    RTS                                  ;83F35F;

CODE_83F360:
    LDX.B $01                            ;83F360;
    JMP.W (PTR16_83F365,X)               ;83F362;

PTR16_83F365:
    dw CODE_83F369                       ;83F365;
    dw CODE_83F3AC                       ;83F367;

CODE_83F369:
    LDA.B #$5B                           ;83F369;
    STA.B $16                            ;83F36B;
    LDA.L $7F825A                        ;83F36D;
    STA.B $18                            ;83F371;
    LDA.L $7F835A                        ;83F373;
    STA.B $11                            ;83F377;
    LDA.B #$04                           ;83F379;
    STA.B $12                            ;83F37B;
    LDA.B $0B                            ;83F37D;
    BPL CODE_83F385                      ;83F37F;
    LDA.B #$40                           ;83F381;
    TSB.B $11                            ;83F383;

CODE_83F385:
    LDA.B $0B                            ;83F385;
    AND.B #$0F                           ;83F387;
    TAX                                  ;83F389;
    LDA.W DATA8_86DBA0,X                 ;83F38A;
    STA.B $02                            ;83F38D;
    REP #$20                             ;83F38F;
    LDA.W DATA8_86DBA6,X                 ;83F391;
    STA.B $05                            ;83F394;
    LDA.W DATA8_86DBAC,X                 ;83F396;
    STA.B $08                            ;83F399;
    SEP #$20                             ;83F39B;
    LDA.B #$00                           ;83F39D;
    JSL.L CODE_848F07                    ;83F39F;
    LDA.B #$40                           ;83F3A3;
    STA.B $26                            ;83F3A5;
    LDA.B #$02                           ;83F3A7;
    STA.B $01                            ;83F3A9;
    RTL                                  ;83F3AB;

CODE_83F3AC:
    REP #$20                             ;83F3AC;
    LDX.B $02                            ;83F3AE;
    JMP.W (PTR16_83F3B3,X)               ;83F3B0;

PTR16_83F3B3:
    dw CODE_83F3BB                       ;83F3B3;
    dw CODE_83F3BF                       ;83F3B5;
    dw CODE_83F3CE                       ;83F3B7;
    dw CODE_83F3D2                       ;83F3B9;

CODE_83F3BB:
    DEC.B $08                            ;83F3BB;
    BRA CODE_83F3DF                      ;83F3BD;

CODE_83F3BF:
    LDA.B $0B                            ;83F3BF;
    AND.W #$0080                         ;83F3C1;
    BNE CODE_83F3CA                      ;83F3C4;
    INC.B $05                            ;83F3C6;
    BRA CODE_83F3DF                      ;83F3C8;

CODE_83F3CA:
    DEC.B $05                            ;83F3CA;
    BRA CODE_83F3DF                      ;83F3CC;

CODE_83F3CE:
    INC.B $08                            ;83F3CE;
    BRA CODE_83F3DF                      ;83F3D0;

CODE_83F3D2:
    LDA.B $0B                            ;83F3D2;
    AND.W #$0080                         ;83F3D4;
    BNE CODE_83F3DD                      ;83F3D7;
    DEC.B $05                            ;83F3D9;
    BRA CODE_83F3DF                      ;83F3DB;

CODE_83F3DD:
    INC.B $05                            ;83F3DD;

CODE_83F3DF:
    SEP #$20                             ;83F3DF;
    DEC.B $26                            ;83F3E1;
    BNE CODE_83F3F1                      ;83F3E3;
    LDA.B $02                            ;83F3E5;
    INC A                                ;83F3E7;
    INC A                                ;83F3E8;
    AND.B #$06                           ;83F3E9;
    STA.B $02                            ;83F3EB;
    LDA.B #$40                           ;83F3ED;
    STA.B $26                            ;83F3EF;

CODE_83F3F1:
    JSL.L CODE_848EEA                    ;83F3F1;
    REP #$20                             ;83F3F5;
    LDA.W #$DB98                         ;83F3F7;
    STA.B $20                            ;83F3FA;
    JSL.L CODE_84AB77                    ;83F3FC;
    LDA.W #$DB9C                         ;83F400;
    STA.B $20                            ;83F403;
    JSL.L CODE_84AB4C                    ;83F405;
    SEP #$20                             ;83F409;
    JML.L CODE_8280B4                    ;83F40B;

CODE_83F40F:
    LDA.B $01                            ;83F40F;
    BNE CODE_83F47E                      ;83F411;
    INC.B $01                            ;83F413;
    LDA.B $02                            ;83F415;
    BNE CODE_83F420                      ;83F417;
    LDA.B #$42                           ;83F419;
    STA.B $16                            ;83F41B;
    JMP.W CODE_83F424                    ;83F41D;

CODE_83F420:
    LDA.B #$45                           ;83F420;
    STA.B $16                            ;83F422;

CODE_83F424:
    LDX.B $0B                            ;83F424;
    LDA.B $02                            ;83F426;
    BNE CODE_83F430                      ;83F428;
    LDA.W DATA8_86DFB1,X                 ;83F42A;
    JMP.W CODE_83F43B                    ;83F42D;

CODE_83F430:
    LDA.W DATA8_86DFB1,X                 ;83F430;
    SEC                                  ;83F433;
    SBC.B #$04                           ;83F434;
    CMP.B #$01                           ;83F436;
    BNE CODE_83F43B                      ;83F438;
    INC A                                ;83F43A;

CODE_83F43B:
    JSL.L CODE_848F07                    ;83F43B;
    LDX.B $0B                            ;83F43F;
    LDA.W DATA8_86E006,X                 ;83F441;
    STA.B $1E                            ;83F444;
    LDA.W DATA8_86DFE4,X                 ;83F446;
    STA.B $1B                            ;83F449;
    STZ.B $1A                            ;83F44B;
    LDA.W DATA8_86DFF5,X                 ;83F44D;
    STA.B $1D                            ;83F450;
    STZ.B $1C                            ;83F452;
    REP #$20                             ;83F454;
    LDA.W DATA8_86DFC2,X                 ;83F456;
    AND.W #$00FF                         ;83F459;
    BIT.W #$0080                         ;83F45C;
    BEQ CODE_83F464                      ;83F45F;
    ORA.W #$FF00                         ;83F461;

CODE_83F464:
    CLC                                  ;83F464;
    ADC.B $05                            ;83F465;
    STA.B $05                            ;83F467;
    LDA.W DATA8_86DFD3,X                 ;83F469;
    AND.W #$00FF                         ;83F46C;
    BIT.W #$0080                         ;83F46F;
    BEQ CODE_83F477                      ;83F472;
    ORA.W #$FF00                         ;83F474;

CODE_83F477:
    CLC                                  ;83F477;
    ADC.B $08                            ;83F478;
    STA.B $08                            ;83F47A;
    SEP #$20                             ;83F47C;

CODE_83F47E:
    JSL.L CODE_848EEA                    ;83F47E;
    JSL.L CODE_8281E8                    ;83F482;
    JSL.L CODE_82806E                    ;83F486;
    BCS CODE_83F498                      ;83F48A;
    LDA.W $0B9C                          ;83F48C;
    EOR.B $0B                            ;83F48F;
    LSR A                                ;83F491;
    BCC CODE_83F49C                      ;83F492;
    JML.L CODE_8280B4                    ;83F494;

CODE_83F498:
    JML.L CODE_828398                    ;83F498;

CODE_83F49C:
    RTL                                  ;83F49C;

CODE_83F49D:
    LDX.B $01                            ;83F49D;
    JMP.W (PTR16_83F4A2,X)               ;83F49F;

PTR16_83F4A2:
    dw CODE_83F4A6                       ;83F4A2;
    dw CODE_83F4FA                       ;83F4A4;

CODE_83F4A6:
    LDA.B #$02                           ;83F4A6;
    STA.B $01                            ;83F4A8;
    STZ.B $18                            ;83F4AA;
    STZ.B $12                            ;83F4AC;
    LDA.B #$17                           ;83F4AE;
    STA.B $16                            ;83F4B0;
    LDA.B #$00                           ;83F4B2;
    JSL.L CODE_848F07                    ;83F4B4;
    LDA.B #$34                           ;83F4B8;
    ORA.B $11                            ;83F4BA;
    STA.B $11                            ;83F4BC;
    ASL A                                ;83F4BE;
    ASL A                                ;83F4BF;
    REP #$20                             ;83F4C0;
    BCS CODE_83F4D9                      ;83F4C2;
    LDA.W #$FC00                         ;83F4C4;
    STA.B $1A                            ;83F4C7;
    JSL.L CODE_849086                    ;83F4C9;
    AND.W #$00FF                         ;83F4CD;
    EOR.W #$FFFF                         ;83F4D0;
    INC A                                ;83F4D3;
    CLC                                  ;83F4D4;
    ADC.B $05                            ;83F4D5;
    BRA CODE_83F4E8                      ;83F4D7;

CODE_83F4D9:
    LDA.W #$0400                         ;83F4D9;
    STA.B $1A                            ;83F4DC;
    JSL.L CODE_849086                    ;83F4DE;
    AND.W #$00FF                         ;83F4E2;
    CLC                                  ;83F4E5;
    ADC.B $05                            ;83F4E6;

CODE_83F4E8:
    STA.B $05                            ;83F4E8;
    STZ.B $1C                            ;83F4EA;
    SEP #$20                             ;83F4EC;
    LDA.B #$20                           ;83F4EE;
    STA.B $1F                            ;83F4F0;
    LDA.B #$10                           ;83F4F2;
    STA.B $1E                            ;83F4F4;
    JML.L CODE_8280B4                    ;83F4F6;

CODE_83F4FA:
    JSL.L CODE_848EEA                    ;83F4FA;
    LDA.B $0F                            ;83F4FE;
    BPL CODE_83F506                      ;83F500;
    JML.L CODE_828398                    ;83F502;

CODE_83F506:
    LDA.B $11                            ;83F506;
    ASL A                                ;83F508;
    ASL A                                ;83F509;
    BCS CODE_83F512                      ;83F50A;
    JSL.L CODE_8281CF                    ;83F50C;
    BRA CODE_83F516                      ;83F510;

CODE_83F512:
    JSL.L CODE_8281B2                    ;83F512;

CODE_83F516:
    JML.L CODE_8280B4                    ;83F516;

CODE_83F51A:
    LDX.B $01                            ;83F51A;
    BEQ CODE_83F521                      ;83F51C;
    JMP.W CODE_83F5B8                    ;83F51E;

CODE_83F521:
    LDX.B $02                            ;83F521;
    BNE CODE_83F532                      ;83F523;
    LDA.W $1F25                          ;83F525;
    BNE CODE_83F531                      ;83F528;
    INC.B $02                            ;83F52A;
    LDA.B #$04                           ;83F52C;
    TSB.W $00A2                          ;83F52E;

CODE_83F531:
    RTL                                  ;83F531;

CODE_83F532:
    INC.B $01                            ;83F532;
    STZ.B $02                            ;83F534;
    LDA.W $1F7A                          ;83F536;
    CMP.B #$05                           ;83F539;
    BEQ CODE_83F543                      ;83F53B;
    LDY.B #$12                           ;83F53D;
    JSL.L CODE_828011                    ;83F53F;

CODE_83F543:
    LDA.B #$01                           ;83F543;
    STA.W $2105                          ;83F545;
    LDA.B #$04                           ;83F548;
    TSB.W $00C0                          ;83F54A;
    LDA.B #$22                           ;83F54D;
    STA.W $2123                          ;83F54F;
    STA.W $00C6                          ;83F552;
    STZ.W $2124                          ;83F555;
    STZ.W $00C7                          ;83F558;
    STZ.W $2125                          ;83F55B;
    STZ.W $00C8                          ;83F55E;
    STZ.W $212A                          ;83F561;
    STZ.W $212B                          ;83F564;
    LDA.B #$FF                           ;83F567;
    STA.W $2126                          ;83F569;
    STZ.W $2127                          ;83F56C;
    LDA.B #$03                           ;83F56F;
    STA.W $212E                          ;83F571;
    STA.W $00CE                          ;83F574;
    LDA.B #$80                           ;83F577;
    STA.W $00C9                          ;83F579;
    LDA.W $1F7B                          ;83F57C;
    CMP.B #$04                           ;83F57F;
    BEQ CODE_83F587                      ;83F581;
    LDA.B #$A0                           ;83F583;
    BRA CODE_83F589                      ;83F585;

CODE_83F587:
    LDA.B #$13                           ;83F587;

CODE_83F589:
    STA.W $00CA                          ;83F589;
    LDA.B #$3F                           ;83F58C;
    STA.W $00CB                          ;83F58E;
    LDA.B #$5F                           ;83F591;
    STA.W $00CC                          ;83F593;
    LDA.B #$9F                           ;83F596;
    STA.W $00CD                          ;83F598;
    STZ.B $1A                            ;83F59B;
    STZ.B $1B                            ;83F59D;
    INC.W $1F31                          ;83F59F;
    PHB                                  ;83F5A2;
    REP #$30                             ;83F5A3;
    LDX.W #$E017                         ;83F5A5;
    LDY.W #$0AA1                         ;83F5A8;
    LDA.W #$000D                         ;83F5AB;
    MVN $00,$86                          ;83F5AE;
    SEP #$30                             ;83F5B1;
    PLB                                  ;83F5B3;
    JSR.W CODE_83F67E                    ;83F5B4;
    RTL                                  ;83F5B7;

CODE_83F5B8:
    LDX.B $02                            ;83F5B8;
    JMP.W (PTR16_83F5BD,X)               ;83F5BA;

PTR16_83F5BD:
    dw CODE_83F5C5                       ;83F5BD;
    dw CODE_83F5F1                       ;83F5BF;
    dw CODE_83F5FB                       ;83F5C1;
    dw CODE_83F66A                       ;83F5C3;

CODE_83F5C5:
    STZ.W $0000                          ;83F5C5;
    LDA.B $07                            ;83F5C8;
    CMP.B $1A                            ;83F5CA;
    BEQ CODE_83F5D3                      ;83F5CC;
    INC.W $0000                          ;83F5CE;
    INC.B $1A                            ;83F5D1;

CODE_83F5D3:
    LDA.B $08                            ;83F5D3;
    CMP.B $1B                            ;83F5D5;
    BEQ CODE_83F5DE                      ;83F5D7;
    INC.W $0000                          ;83F5D9;
    INC.B $1B                            ;83F5DC;

CODE_83F5DE:
    LDA.W $0000                          ;83F5DE;
    BNE CODE_83F5ED                      ;83F5E1;
    LDA.B $06                            ;83F5E3;
    JSL.L CODE_80E9EE                    ;83F5E5;
    LDA.B #$02                           ;83F5E9;
    STA.B $02                            ;83F5EB;

CODE_83F5ED:
    JSR.W CODE_83F67E                    ;83F5ED;
    RTL                                  ;83F5F0;

CODE_83F5F1:
    LDA.W $0060                          ;83F5F1;
    BNE CODE_83F5FA                      ;83F5F4;
    LDA.B #$04                           ;83F5F6;
    STA.B $02                            ;83F5F8;

CODE_83F5FA:
    RTL                                  ;83F5FA;

CODE_83F5FB:
    STZ.W $0000                          ;83F5FB;
    LDA.B $1A                            ;83F5FE;
    BEQ CODE_83F607                      ;83F600;
    INC.W $0000                          ;83F602;
    DEC.B $1A                            ;83F605;

CODE_83F607:
    LDA.B $1B                            ;83F607;
    BEQ CODE_83F610                      ;83F609;
    INC.W $0000                          ;83F60B;
    DEC.B $1B                            ;83F60E;

CODE_83F610:
    LDA.W $0000                          ;83F610;
    BNE CODE_83F666                      ;83F613;
    LDA.W $1F25                          ;83F615;
    BNE CODE_83F669                      ;83F618;
    LDA.B #$06                           ;83F61A;
    STA.B $02                            ;83F61C;
    LDA.B #$04                           ;83F61E;
    TSB.W $00A2                          ;83F620;
    LDA.B #$80                           ;83F623;
    TRB.W $1F2C                          ;83F625;
    LDA.B #$09                           ;83F628;
    STA.W $2105                          ;83F62A;
    LDA.W $1F7B                          ;83F62D;
    CMP.B #$04                           ;83F630;
    BEQ CODE_83F654                      ;83F632;
    STZ.W $2123                          ;83F634;
    STZ.W $00C6                          ;83F637;
    STZ.W $00C9                          ;83F63A;
    STZ.W $00CA                          ;83F63D;
    LDA.B #$E0                           ;83F640;
    STA.W $2132                          ;83F642;
    LDA.B #$20                           ;83F645;
    STA.W $00CB                          ;83F647;
    LDA.B #$40                           ;83F64A;
    STA.W $00CC                          ;83F64C;
    LDA.B #$80                           ;83F64F;
    STA.W $00CD                          ;83F651;

CODE_83F654:
    LDA.W $1F7A                          ;83F654;
    BEQ CODE_83F65F                      ;83F657;
    STZ.W $1F3B                          ;83F659;
    STZ.W $1F31                          ;83F65C;

CODE_83F65F:
    STZ.W $0AA1                          ;83F65F;
    STZ.W $0AA8                          ;83F662;
    RTL                                  ;83F665;

CODE_83F666:
    JSR.W CODE_83F67E                    ;83F666;

CODE_83F669:
    RTL                                  ;83F669;

CODE_83F66A:
    LDA.W $1F7A                          ;83F66A;
    ASL A                                ;83F66D;
    CLC                                  ;83F66E;
    ADC.B #$60                           ;83F66F;
    TAY                                  ;83F671;
    JSL.L CODE_828011                    ;83F672;
    JSL.L CODE_80B4F3                    ;83F676;
    JML.L CODE_828398                    ;83F67A;

CODE_83F67E:
    LDX.B #$00                           ;83F67E;
    LDA.B $05                            ;83F680;
    SEC                                  ;83F682;
    SBC.B $1B                            ;83F683;
    CMP.B #$80                           ;83F685;
    BCC CODE_83F691                      ;83F687;
    LDY.B #$FF                           ;83F689;
    STY.W $0000                          ;83F68B;
    JSR.W CODE_83F737                    ;83F68E;

CODE_83F691:
    STA.W $0B22,X                        ;83F691;
    LDA.B #$FF                           ;83F694;
    STA.W $0B23,X                        ;83F696;
    INX                                  ;83F699;
    INX                                  ;83F69A;
    LDA.B $1B                            ;83F69B;
    ASL A                                ;83F69D;
    CMP.B #$80                           ;83F69E;
    BCC CODE_83F6AA                      ;83F6A0;
    LDY.B #$FF                           ;83F6A2;
    STY.W $0000                          ;83F6A4;
    JSR.W CODE_83F737                    ;83F6A7;

CODE_83F6AA:
    STA.W $0B22,X                        ;83F6AA;
    LDA.B $04                            ;83F6AD;
    SEC                                  ;83F6AF;
    SBC.B $1A                            ;83F6B0;
    STA.W $0B23,X                        ;83F6B2;
    INX                                  ;83F6B5;
    INX                                  ;83F6B6;
    LDA.B #$E0                           ;83F6B7;
    SEC                                  ;83F6B9;
    SBC.B $05                            ;83F6BA;
    SEC                                  ;83F6BC;
    SBC.B $1B                            ;83F6BD;
    CMP.B #$80                           ;83F6BF;
    BCC CODE_83F6CB                      ;83F6C1;
    LDY.B #$FF                           ;83F6C3;
    STY.W $0000                          ;83F6C5;
    JSR.W CODE_83F737                    ;83F6C8;

CODE_83F6CB:
    STA.W $0B22,X                        ;83F6CB;
    LDA.B #$FF                           ;83F6CE;
    STA.W $0B23,X                        ;83F6D0;
    INX                                  ;83F6D3;
    INX                                  ;83F6D4;
    STZ.W $0B22,X                        ;83F6D5;
    INX                                  ;83F6D8;
    REP #$21                             ;83F6D9;
    TXA                                  ;83F6DB;
    ADC.W #$0AD2                         ;83F6DC;
    STA.W $0AAB                          ;83F6DF;
    SEP #$20                             ;83F6E2;
    LDA.B $05                            ;83F6E4;
    SEC                                  ;83F6E6;
    SBC.B $1B                            ;83F6E7;
    CMP.B #$80                           ;83F6E9;
    BCC CODE_83F6F3                      ;83F6EB;
    STZ.W $0000                          ;83F6ED;
    JSR.W CODE_83F737                    ;83F6F0;

CODE_83F6F3:
    STA.W $0B22,X                        ;83F6F3;
    LDA.B #$00                           ;83F6F6;
    STA.W $0B23,X                        ;83F6F8;
    INX                                  ;83F6FB;
    INX                                  ;83F6FC;
    LDA.B $1B                            ;83F6FD;
    ASL A                                ;83F6FF;
    CMP.B #$80                           ;83F700;
    BCC CODE_83F70A                      ;83F702;
    STZ.W $0000                          ;83F704;
    JSR.W CODE_83F737                    ;83F707;

CODE_83F70A:
    STA.W $0B22,X                        ;83F70A;
    LDA.B $04                            ;83F70D;
    CLC                                  ;83F70F;
    ADC.B $1A                            ;83F710;
    STA.W $0B23,X                        ;83F712;
    INX                                  ;83F715;
    INX                                  ;83F716;
    LDA.B #$E0                           ;83F717;
    SEC                                  ;83F719;
    SBC.B $05                            ;83F71A;
    SEC                                  ;83F71C;
    SBC.B $1B                            ;83F71D;
    CMP.B #$80                           ;83F71F;
    BCC CODE_83F729                      ;83F721;
    STZ.W $0000                          ;83F723;
    JSR.W CODE_83F737                    ;83F726;

CODE_83F729:
    STA.W $0B22,X                        ;83F729;
    LDA.B #$00                           ;83F72C;
    STA.W $0B23,X                        ;83F72E;
    INX                                  ;83F731;
    INX                                  ;83F732;
    STZ.W $0B22,X                        ;83F733;
    RTS                                  ;83F736;

CODE_83F737:
    PHA                                  ;83F737;
    LDA.B #$7F                           ;83F738;
    STA.W $0B22,X                        ;83F73A;
    LDA.W $0000                          ;83F73D;
    STA.W $0B23,X                        ;83F740;
    INX                                  ;83F743;
    INX                                  ;83F744;
    PLA                                  ;83F745;
    SEC                                  ;83F746;
    SBC.B #$7F                           ;83F747;
    RTS                                  ;83F749;

CODE_83F74A:
    JSL.L CODE_8282D3                    ;83F74A;
    BNE CODE_83F77E                      ;83F74E;
    INC.W $0000,X                        ;83F750;
    LDA.B #$2A                           ;83F753;
    STA.W $000A,X                        ;83F755;
    STA.W $1F3B                          ;83F758;
    LDA.B #$80                           ;83F75B;
    TSB.W $1F2C                          ;83F75D;
    LDA.W $0000                          ;83F760;
    STA.W $0004,X                        ;83F763;
    LDA.W $0002                          ;83F766;
    STA.W $0005,X                        ;83F769;
    LDA.W $0004                          ;83F76C;
    STA.W $0007,X                        ;83F76F;
    LDA.W $0006                          ;83F772;
    STA.W $0008,X                        ;83F775;
    LDA.W $0008                          ;83F778;
    STA.W $0006,X                        ;83F77B;

CODE_83F77E:
    SEP #$10                             ;83F77E;
    RTL                                  ;83F780;

CODE_83F781:
    LDX.B $01                            ;83F781;
    BNE CODE_83F7D4                      ;83F783;
    INC.B $01                            ;83F785;
    LDA.B #$33                           ;83F787;
    STA.W $2123                          ;83F789;
    STA.W $00C6                          ;83F78C;
    STZ.W $2124                          ;83F78F;
    STZ.W $00C7                          ;83F792;
    STZ.W $2125                          ;83F795;
    STZ.W $00C8                          ;83F798;
    STZ.W $212A                          ;83F79B;
    STZ.W $212B                          ;83F79E;
    STZ.W $2126                          ;83F7A1;
    LDA.B #$FF                           ;83F7A4;
    STA.W $2127                          ;83F7A6;
    LDA.B #$03                           ;83F7A9;
    STA.W $212E                          ;83F7AB;
    STA.W $00CE                          ;83F7AE;
    LDA.B #$7F                           ;83F7B1;
    STA.B $07                            ;83F7B3;
    LDA.B #$01                           ;83F7B5;
    STA.B $08                            ;83F7B7;
    PHB                                  ;83F7B9;
    REP #$30                             ;83F7BA;
    LDA.W #$0100                         ;83F7BC;
    STA.B $11                            ;83F7BF;
    LDX.W #$E017                         ;83F7C1;
    LDY.W #$0AA1                         ;83F7C4;
    LDA.W #$000D                         ;83F7C7;
    MVN $00,$86                          ;83F7CA;
    SEP #$30                             ;83F7CD;
    PLB                                  ;83F7CF;
    JSR.W CODE_83F876                    ;83F7D0;
    RTL                                  ;83F7D3;

CODE_83F7D4:
    LDX.B $02                            ;83F7D4;
    JMP.W (PTR16_83F7D9,X)               ;83F7D6;

PTR16_83F7D9:
    dw CODE_83F7E3                       ;83F7D9;
    dw CODE_83F81D                       ;83F7DB;
    dw CODE_83F839                       ;83F7DD;
    dw CODE_83F856                       ;83F7DF;
    dw CODE_83F868                       ;83F7E1;

CODE_83F7E3:
    STZ.W $0000                          ;83F7E3;
    LDA.B $08                            ;83F7E6;
    CMP.B #$60                           ;83F7E8;
    BEQ CODE_83F7F1                      ;83F7EA;
    INC.W $0000                          ;83F7EC;
    INC.B $08                            ;83F7EF;

CODE_83F7F1:
    REP #$20                             ;83F7F1;
    LDA.B $11                            ;83F7F3;
    CMP.W #$00A0                         ;83F7F5;
    BEQ CODE_83F7FF                      ;83F7F8;
    INC.W $0000                          ;83F7FA;
    DEC.B $11                            ;83F7FD;

CODE_83F7FF:
    SEP #$20                             ;83F7FF;
    LDA.B $07                            ;83F801;
    CMP.B #$30                           ;83F803;
    BEQ CODE_83F80C                      ;83F805;
    INC.W $0000                          ;83F807;
    DEC.B $07                            ;83F80A;

CODE_83F80C:
    LDA.W $0000                          ;83F80C;
    BNE CODE_83F819                      ;83F80F;
    LDA.B #$02                           ;83F811;
    STA.B $02                            ;83F813;
    LDA.B #$1E                           ;83F815;
    STA.B $16                            ;83F817;

CODE_83F819:
    JSR.W CODE_83F876                    ;83F819;
    RTL                                  ;83F81C;

CODE_83F81D:
    DEC.B $16                            ;83F81D;
    BNE CODE_83F838                      ;83F81F;
    LDA.B #$04                           ;83F821;
    STA.B $02                            ;83F823;
    REP #$20                             ;83F825;
    LDA.W #$0318                         ;83F827;
    STA.W $1E68                          ;83F82A;
    STA.W $1E6E                          ;83F82D;
    LDA.W #$0001                         ;83F830;
    STA.W $1E52                          ;83F833;
    SEP #$20                             ;83F836;

CODE_83F838:
    RTL                                  ;83F838;

CODE_83F839:
    DEC.B $08                            ;83F839;
    REP #$20                             ;83F83B;
    DEC.B $11                            ;83F83D;
    LDA.B $11                            ;83F83F;
    CMP.W #$0088                         ;83F841;
    SEP #$20                             ;83F844;
    BNE CODE_83F852                      ;83F846;
    LDA.B #$06                           ;83F848;
    STA.B $02                            ;83F84A;
    LDA.B #$96                           ;83F84C;
    JSL.L CODE_80E9EE                    ;83F84E;

CODE_83F852:
    JSR.W CODE_83F876                    ;83F852;
    RTL                                  ;83F855;

CODE_83F856:
    LDA.W $0060                          ;83F856;
    BNE CODE_83F867                      ;83F859;
    LDA.B #$08                           ;83F85B;
    STA.B $02                            ;83F85D;
    LDA.B #$58                           ;83F85F;
    STA.B $16                            ;83F861;
    LDA.B #$02                           ;83F863;
    STA.B $17                            ;83F865;

CODE_83F867:
    RTL                                  ;83F867;

CODE_83F868:
    REP #$20                             ;83F868;
    DEC.B $16                            ;83F86A;
    SEP #$20                             ;83F86C;
    BNE CODE_83F875                      ;83F86E;
    LDA.B #$80                           ;83F870;
    STA.W $1F7F                          ;83F872;

CODE_83F875:
    RTL                                  ;83F875;

CODE_83F876:
    LDX.B #$00                           ;83F876;
    STZ.B $14                            ;83F878;
    STZ.B $15                            ;83F87A;
    LDA.B $08                            ;83F87C;
    STA.W $0B22,X                        ;83F87E;
    LDA.B #$FF                           ;83F881;
    STA.W $0B23,X                        ;83F883;
    INX                                  ;83F886;
    INX                                  ;83F887;
    REP #$20                             ;83F888;
    LDA.B $11                            ;83F88A;
    CMP.W #$00E0                         ;83F88C;
    SEP #$20                             ;83F88F;
    BCC CODE_83F895                      ;83F891;
    LDA.B #$DF                           ;83F893;

CODE_83F895:
    SEC                                  ;83F895;
    SBC.B $08                            ;83F896;
    CMP.B #$80                           ;83F898;
    BCC CODE_83F8A9                      ;83F89A;
    PHA                                  ;83F89C;
    LDA.B #$80                           ;83F89D;
    SEC                                  ;83F89F;
    SBC.B $07                            ;83F8A0;
    STA.W $0000                          ;83F8A2;
    PLA                                  ;83F8A5;
    JSR.W CODE_83F737                    ;83F8A6;

CODE_83F8A9:
    STA.W $0B22,X                        ;83F8A9;
    LDA.B #$80                           ;83F8AC;
    SEC                                  ;83F8AE;
    SBC.B $07                            ;83F8AF;
    STA.W $0B23,X                        ;83F8B1;
    INX                                  ;83F8B4;
    INX                                  ;83F8B5;
    REP #$20                             ;83F8B6;
    LDA.W #$00E0                         ;83F8B8;
    SEC                                  ;83F8BB;
    SBC.B $11                            ;83F8BC;
    SEP #$20                             ;83F8BE;
    BCC CODE_83F8D8                      ;83F8C0;
    CMP.B #$80                           ;83F8C2;
    BCC CODE_83F8CE                      ;83F8C4;
    LDY.B #$FF                           ;83F8C6;
    STY.W $0000                          ;83F8C8;
    JSR.W CODE_83F737                    ;83F8CB;

CODE_83F8CE:
    STA.W $0B22,X                        ;83F8CE;
    LDA.B #$FF                           ;83F8D1;
    STA.W $0B23,X                        ;83F8D3;
    INX                                  ;83F8D6;
    INX                                  ;83F8D7;

CODE_83F8D8:
    STZ.W $0B22,X                        ;83F8D8;
    INX                                  ;83F8DB;
    REP #$21                             ;83F8DC;
    TXA                                  ;83F8DE;
    ADC.W #$0AD2                         ;83F8DF;
    STA.W $0AAB                          ;83F8E2;
    SEP #$20                             ;83F8E5;
    LDA.B $08                            ;83F8E7;
    STA.W $0B22,X                        ;83F8E9;
    LDA.B #$00                           ;83F8EC;
    STA.W $0B23,X                        ;83F8EE;
    INX                                  ;83F8F1;
    INX                                  ;83F8F2;
    REP #$20                             ;83F8F3;
    LDA.B $11                            ;83F8F5;
    CMP.W #$00E0                         ;83F8F7;
    SEP #$20                             ;83F8FA;
    BCC CODE_83F900                      ;83F8FC;
    LDA.B #$DF                           ;83F8FE;

CODE_83F900:
    SEC                                  ;83F900;
    SBC.B $08                            ;83F901;
    CMP.B #$80                           ;83F903;
    BCC CODE_83F914                      ;83F905;
    PHA                                  ;83F907;
    LDA.B #$80                           ;83F908;
    CLC                                  ;83F90A;
    ADC.B $07                            ;83F90B;
    STA.W $0000                          ;83F90D;
    PLA                                  ;83F910;
    JSR.W CODE_83F737                    ;83F911;

CODE_83F914:
    STA.W $0B22,X                        ;83F914;
    LDA.B #$80                           ;83F917;
    CLC                                  ;83F919;
    ADC.B $07                            ;83F91A;
    STA.W $0B23,X                        ;83F91C;
    INX                                  ;83F91F;
    INX                                  ;83F920;
    REP #$20                             ;83F921;
    LDA.W #$00E0                         ;83F923;
    SEC                                  ;83F926;
    SBC.B $11                            ;83F927;
    SEP #$20                             ;83F929;
    BCC CODE_83F941                      ;83F92B;
    CMP.B #$80                           ;83F92D;
    BCC CODE_83F937                      ;83F92F;
    STZ.W $0000                          ;83F931;
    JSR.W CODE_83F737                    ;83F934;

CODE_83F937:
    STA.W $0B22,X                        ;83F937;
    LDA.B #$00                           ;83F93A;
    STA.W $0B23,X                        ;83F93C;
    INX                                  ;83F93F;
    INX                                  ;83F940;

CODE_83F941:
    STZ.W $0B22,X                        ;83F941;
    RTS                                  ;83F944;

CODE_83F945:
    LDA.B $01                            ;83F945;
    BNE CODE_83F9B5                      ;83F947;
    INC.B $01                            ;83F949;
    REP #$30                             ;83F94B;
    LDA.B $0B                            ;83F94D;
    AND.W #$007F                         ;83F94F;
    ASL A                                ;83F952;
    ASL A                                ;83F953;
    TAY                                  ;83F954;
    SEP #$20                             ;83F955;
    LDA.B #$00                           ;83F957;
    XBA                                  ;83F959;
    LDA.W DATA8_86E025,Y                 ;83F95A;
    TAX                                  ;83F95D;
    LDA.L $7F8200,X                      ;83F95E;
    STA.B $18                            ;83F962;
    LDA.B $11                            ;83F964;
    AND.B #$70                           ;83F966;
    STA.B $11                            ;83F968;
    LDA.L $7F8300,X                      ;83F96A;
    AND.B #$0F                           ;83F96E;
    TSB.B $11                            ;83F970;
    LDA.W DATA8_86E028,Y                 ;83F972;
    STA.B $12                            ;83F975;
    LDA.W DATA8_86E026,Y                 ;83F977;
    STA.B $16                            ;83F97A;
    STZ.B $10                            ;83F97C;
    REP #$20                             ;83F97E;
    BIT.B $0A                            ;83F980;
    BPL CODE_83F9A3                      ;83F982;
    LDA.W #$0030                         ;83F984;
    STA.B $1E                            ;83F987;
    JSL.L CODE_849086                    ;83F989;
    AND.W #$000E                         ;83F98D;
    TAX                                  ;83F990;
    LDA.W DATA8_86E1D5,X                 ;83F991;
    STA.B $1A                            ;83F994;
    JSL.L CODE_849086                    ;83F996;
    AND.W #$000E                         ;83F99A;
    TAX                                  ;83F99D;
    LDA.W DATA8_86E1E5,X                 ;83F99E;
    STA.B $1C                            ;83F9A1;

CODE_83F9A3:
    TDC                                  ;83F9A3;
    SEC                                  ;83F9A4;
    SBC.W #$1928                         ;83F9A5;
    SEP #$20                             ;83F9A8;
    AND.B #$20                           ;83F9AA;
    STA.B $0B                            ;83F9AC;
    LDA.W DATA8_86E027,Y                 ;83F9AE;
    JML.L CODE_848F07                    ;83F9B1;

CODE_83F9B5:
    REP #$20                             ;83F9B5;
    LDA.B $0C                            ;83F9B7;
    BEQ CODE_83F9CC                      ;83F9B9;
    CMP.B $08                            ;83F9BB;
    BCS CODE_83F9CC                      ;83F9BD;
    STA.B $08                            ;83F9BF;
    STZ.B $0C                            ;83F9C1;
    LDA.B $1C                            ;83F9C3;
    EOR.W #$FFFF                         ;83F9C5;
    INC A                                ;83F9C8;
    LSR A                                ;83F9C9;
    STA.B $1C                            ;83F9CA;

CODE_83F9CC:
    SEP #$20                             ;83F9CC;
    INC.B $10                            ;83F9CE;
    JSL.L CODE_82806E                    ;83F9D0;
    BCC CODE_83F9DA                      ;83F9D4;
    JML.L CODE_828398                    ;83F9D6;

CODE_83F9DA:
    JSL.L CODE_828174                    ;83F9DA;
    JSL.L CODE_848EEA                    ;83F9DE;
    LDA.B $10                            ;83F9E2;
    LSR A                                ;83F9E4;
    LDX.B $0B                            ;83F9E5;
    BEQ CODE_83F9ED                      ;83F9E7;
    BCS CODE_83F9F3                      ;83F9E9;
    BRA CODE_83F9EF                      ;83F9EB;

CODE_83F9ED:
    BCC CODE_83F9F3                      ;83F9ED;

CODE_83F9EF:
    JML.L CODE_8280B4                    ;83F9EF;

CODE_83F9F3:
    RTL                                  ;83F9F3;

CODE_83F9F4:
    LDA.B $01                            ;83F9F4;
    BNE CODE_83FA16                      ;83F9F6;
    INC.B $01                            ;83F9F8;
    LDA.L $7F8249                        ;83F9FA;
    STA.B $18                            ;83F9FE;
    LDA.B $11                            ;83FA00;
    AND.B #$40                           ;83FA02;
    ORA.L $7F8349                        ;83FA04;
    STA.B $11                            ;83FA08;
    STZ.B $12                            ;83FA0A;
    LDA.B #$4F                           ;83FA0C;
    STA.B $16                            ;83FA0E;
    LDA.B $0B                            ;83FA10;
    JML.L CODE_848F07                    ;83FA12;

CODE_83FA16:
    REP #$30                             ;83FA16;
    LDX.B $0C                            ;83FA18;
    LDA.W $0005,X                        ;83FA1A;
    STA.B $05                            ;83FA1D;
    LDA.W $0008,X                        ;83FA1F;
    STA.B $08                            ;83FA22;
    SEP #$30                             ;83FA24;
    LDA.B $0F                            ;83FA26;
    BPL CODE_83FA2E                      ;83FA28;
    JML.L CODE_828398                    ;83FA2A;

CODE_83FA2E:
    JSL.L CODE_848EEA                    ;83FA2E;
    JML.L CODE_8280B4                    ;83FA32;

CODE_83FA36:
    LDA.B $01                            ;83FA36;
    BNE CODE_83FA69                      ;83FA38;
    INC.B $01                            ;83FA3A;
    LDA.L $7F8226                        ;83FA3C;
    STA.B $18                            ;83FA40;
    LDA.L $7F8326                        ;83FA42;
    STA.B $11                            ;83FA46;
    LDA.B #$04                           ;83FA48;
    STA.B $12                            ;83FA4A;
    STZ.B $07                            ;83FA4C;
    REP #$20                             ;83FA4E;
    STZ.B $1A                            ;83FA50;
    LDA.W #$FF80                         ;83FA52;
    STA.B $1C                            ;83FA55;
    STZ.B $1E                            ;83FA57;
    SEP #$20                             ;83FA59;
    LDA.B #$54                           ;83FA5B;
    STA.B $10                            ;83FA5D;
    LDA.B #$29                           ;83FA5F;
    STA.B $16                            ;83FA61;
    LDA.B #$00                           ;83FA63;
    JML.L CODE_848F07                    ;83FA65;

CODE_83FA69:
    LDX.B $02                            ;83FA69;
    JSR.W (PTR16_83FA72,X)               ;83FA6B;
    JML.L CODE_8280B4                    ;83FA6E;

PTR16_83FA72:
    dw CODE_83FA7C                       ;83FA72;
    dw CODE_83FA89                       ;83FA74;
    dw CODE_83FA9A                       ;83FA76;
    dw CODE_83FAA9                       ;83FA78;
    dw CODE_83FAC2                       ;83FA7A;

CODE_83FA7C:
    DEC.B $10                            ;83FA7C;
    BNE CODE_83FA84                      ;83FA7E;
    LDA.B #$02                           ;83FA80;
    STA.B $02                            ;83FA82;

CODE_83FA84:
    JSL.L CODE_82825D                    ;83FA84;
    RTS                                  ;83FA88;

CODE_83FA89:
    LDA.B $0F                            ;83FA89;
    BPL CODE_83FA95                      ;83FA8B;
    LDA.B #$3C                           ;83FA8D;
    STA.B $10                            ;83FA8F;
    LDA.B #$04                           ;83FA91;
    STA.B $02                            ;83FA93;

CODE_83FA95:
    JSL.L CODE_848EEA                    ;83FA95;
    RTS                                  ;83FA99;

CODE_83FA9A:
    DEC.B $10                            ;83FA9A;
    BNE CODE_83FAA8                      ;83FA9C;
    LDA.B #$06                           ;83FA9E;
    STA.B $02                            ;83FAA0;
    LDA.B #$02                           ;83FAA2;
    JSL.L CODE_848F07                    ;83FAA4;

CODE_83FAA8:
    RTS                                  ;83FAA8;

CODE_83FAA9:
    LDA.B $0F                            ;83FAA9;
    BPL CODE_83FABD                      ;83FAAB;
    LDA.B #$2A                           ;83FAAD;
    STA.B $10                            ;83FAAF;
    LDA.B #$00                           ;83FAB1;
    STA.B $1C                            ;83FAB3;
    LDA.B #$01                           ;83FAB5;
    STA.B $1D                            ;83FAB7;
    LDA.B #$08                           ;83FAB9;
    STA.B $02                            ;83FABB;

CODE_83FABD:
    JSL.L CODE_848EEA                    ;83FABD;
    RTS                                  ;83FAC1;

CODE_83FAC2:
    DEC.B $10                            ;83FAC2;
    BNE CODE_83FACA                      ;83FAC4;
    JSL.L CODE_828398                    ;83FAC6;

CODE_83FACA:
    JSL.L CODE_82825D                    ;83FACA;
    RTS                                  ;83FACE;

CODE_83FACF:
    LDX.B $01                            ;83FACF;
    BNE CODE_83FB0D                      ;83FAD1;
    JSL.L CODE_84A23A                    ;83FAD3;
    TYA                                  ;83FAD7;
    BEQ CODE_83FADE                      ;83FAD8;
    JML.L CODE_828387                    ;83FADA;

CODE_83FADE:
    INC.B $01                            ;83FADE;
    STZ.B $0F                            ;83FAE0;
    STZ.B $0E                            ;83FAE2;
    STZ.B $0B                            ;83FAE4;
    REP #$30                             ;83FAE6;
    PHB                                  ;83FAE8;
    LDX.W #$E263                         ;83FAE9;
    LDY.W #$0ABD                         ;83FAEC;
    LDA.W #$0006                         ;83FAEF;
    MVN $00,$86                          ;83FAF2;
    PLB                                  ;83FAF5;
    JSR.W CODE_83FB47                    ;83FAF6;
    JSR.W CODE_83FB5B                    ;83FAF9;
    LDA.W #$0080                         ;83FAFC;
    STA.B $11                            ;83FAFF;
    LDA.W #$0100                         ;83FB01;
    STA.B $1A                            ;83FB04;
    LDA.W #$0080                         ;83FB06;
    STA.B $1C                            ;83FB09;
    STZ.B $07                            ;83FB0B;

CODE_83FB0D:
    REP #$30                             ;83FB0D;
    LDA.W $0BAD                          ;83FB0F;
    CMP.W #$0320                         ;83FB12;
    BCS CODE_83FB26                      ;83FB15;
    LDA.W $0BB0                          ;83FB17;
    CMP.W #$049F                         ;83FB1A;
    BCC CODE_83FB26                      ;83FB1D;
    STZ.W $0ABD                          ;83FB1F;
    JML.L CODE_828387                    ;83FB22;

CODE_83FB26:
    JSR.W CODE_83FC87                    ;83FB26;
    JSR.W CODE_83FB79                    ;83FB29;
    JSR.W CODE_83FBF3                    ;83FB2C;
    JSR.W CODE_83FC2F                    ;83FB2F;
    JSR.W CODE_83FCD3                    ;83FB32;
    JSR.W CODE_83FD01                    ;83FB35;
    JSR.W CODE_83FD62                    ;83FB38;
    SEP #$30                             ;83FB3B;
    JSR.W CODE_83FD58                    ;83FB3D;
    LDA.B $0F                            ;83FB40;
    EOR.B #$40                           ;83FB42;
    STA.B $0F                            ;83FB44;
    RTL                                  ;83FB46;

CODE_83FB47:
    LDX.W #$0060                         ;83FB47;
    LDA.W #$0000                         ;83FB4A;

CODE_83FB4D:
    STA.L $7FD085,X                      ;83FB4D;
    STA.L $7FD084,X                      ;83FB51;
    DEX                                  ;83FB55;
    DEX                                  ;83FB56;
    DEX                                  ;83FB57;
    BPL CODE_83FB4D                      ;83FB58;
    RTS                                  ;83FB5A;

CODE_83FB5B:
    LDX.W #$003E                         ;83FB5B;

CODE_83FB5E:
    LDA.W DATA8_86E26A,X                 ;83FB5E;
    STA.L $7FD0E7,X                      ;83FB61;
    DEX                                  ;83FB65;
    DEX                                  ;83FB66;
    BPL CODE_83FB5E                      ;83FB67;
    RTS                                  ;83FB69;

CODE_83FB6A:
    LDX.W #$003E                         ;83FB6A;
    LDA.W #$0000                         ;83FB6D;

CODE_83FB70:
    STA.L $7FD0E7,X                      ;83FB70;
    DEX                                  ;83FB74;
    DEX                                  ;83FB75;
    BPL CODE_83FB70                      ;83FB76;
    RTS                                  ;83FB78;

CODE_83FB79:
    LDA.W #$007F                         ;83FB79;
    XBA                                  ;83FB7C;
    STA.B $05                            ;83FB7D;
    LDA.W #$D000                         ;83FB7F;
    BIT.B $0E                            ;83FB82;
    BVC CODE_83FB89                      ;83FB84;
    LDA.W #$D042                         ;83FB86;

CODE_83FB89:
    STA.B $04                            ;83FB89;
    LDA.W $1E90                          ;83FB8B;
    AND.W #$001F                         ;83FB8E;
    STA.W $0000                          ;83FB91;
    ASL A                                ;83FB94;
    TAY                                  ;83FB95;
    CLC                                  ;83FB96;
    ADC.W $0000                          ;83FB97;
    TAX                                  ;83FB9A;
    LDA.W #$0020                         ;83FB9B;
    STA.W $0000                          ;83FB9E;
    STZ.B $16                            ;83FBA1;

CODE_83FBA3:
    PEA.W DATA8_86867F                   ;83FBA3;
    PLB                                  ;83FBA6;
    STZ.W $D129                          ;83FBA7;
    LDA.W $D0E7,Y                        ;83FBAA;
    BPL CODE_83FBB2                      ;83FBAD;
    DEC.W $D129                          ;83FBAF;

CODE_83FBB2:
    CLC                                  ;83FBB2;
    ADC.W $D084,X                        ;83FBB3;
    STA.W $D084,X                        ;83FBB6;
    SEP #$20                             ;83FBB9;
    LDA.W $D086,X                        ;83FBBB;
    ADC.W $D129                          ;83FBBE;
    STA.W $D086,X                        ;83FBC1;
    REP #$21                             ;83FBC4;
    PLB                                  ;83FBC6;
    LDA.L $7FD085,X                      ;83FBC7;
    ADC.W $1E8D                          ;83FBCB;
    PHY                                  ;83FBCE;
    LDY.B $16                            ;83FBCF;
    STA.B [$04],Y                        ;83FBD1;
    INC.B $16                            ;83FBD3;
    INC.B $16                            ;83FBD5;
    PLY                                  ;83FBD7;
    TXA                                  ;83FBD8;
    INC A                                ;83FBD9;
    INC A                                ;83FBDA;
    INC A                                ;83FBDB;
    CMP.W #$0060                         ;83FBDC;
    BCC CODE_83FBE5                      ;83FBDF;
    SEC                                  ;83FBE1;
    SBC.W #$0060                         ;83FBE2;

CODE_83FBE5:
    TAX                                  ;83FBE5;
    TYA                                  ;83FBE6;
    INC A                                ;83FBE7;
    INC A                                ;83FBE8;
    AND.W #$003E                         ;83FBE9;
    TAY                                  ;83FBEC;
    DEC.W $0000                          ;83FBED;
    BNE CODE_83FBA3                      ;83FBF0;
    RTS                                  ;83FBF2;

CODE_83FBF3:
    LDA.W #$0000                         ;83FBF3;
    BIT.B $0E                            ;83FBF6;
    BVC CODE_83FBFD                      ;83FBF8;
    LDA.W #$0042                         ;83FBFA;

CODE_83FBFD:
    STA.W $0000                          ;83FBFD;
    LDX.W #$0030                         ;83FC00;
    LDY.W #$0007                         ;83FC03;

CODE_83FC06:
    LDA.W #$00A0                         ;83FC06;
    STA.W $0B22,X                        ;83FC09;
    LDA.W #$D000                         ;83FC0C;
    CLC                                  ;83FC0F;
    ADC.W $0000                          ;83FC10;
    STA.W $0B23,X                        ;83FC13;
    INX                                  ;83FC16;
    INX                                  ;83FC17;
    INX                                  ;83FC18;
    DEY                                  ;83FC19;
    BNE CODE_83FC06                      ;83FC1A;
    LDA.W #$0001                         ;83FC1C;
    STA.W $0B22,X                        ;83FC1F;
    LDA.W #$D040                         ;83FC22;
    STA.W $0B23,X                        ;83FC25;
    INX                                  ;83FC28;
    INX                                  ;83FC29;
    INX                                  ;83FC2A;
    STZ.W $0B22,X                        ;83FC2B;

CODE_83FC2E:
    RTS                                  ;83FC2E;

CODE_83FC2F:
    DEC.B $11                            ;83FC2F;
    BNE CODE_83FC2E                      ;83FC31;
    SEP #$30                             ;83FC33;

CODE_83FC35:
    LDX.B $0E                            ;83FC35;
    INC.B $0E                            ;83FC37;
    INC.B $0E                            ;83FC39;
    LDA.W DATA8_86E2AA,X                 ;83FC3B;
    CMP.B #$FF                           ;83FC3E;
    BNE CODE_83FC46                      ;83FC40;
    STZ.B $0E                            ;83FC42;
    BRA CODE_83FC35                      ;83FC44;

CODE_83FC46:
    AND.B #$0F                           ;83FC46;
    STA.B $0B                            ;83FC48;
    REP #$30                             ;83FC4A;
    LDA.W DATA8_86E2AA,X                 ;83FC4C;
    AND.W #$FFF0                         ;83FC4F;
    STA.B $11                            ;83FC52;
    LDA.B $0B                            ;83FC54;
    AND.W #$00FF                         ;83FC56;
    TAX                                  ;83FC59;
    JMP.W (PTR16_83FC5D,X)               ;83FC5A;

PTR16_83FC5D:
    dw CODE_83FC63                       ;83FC5D;
    dw CODE_83FC69                       ;83FC5F;
    dw CODE_83FC7F                       ;83FC61;

CODE_83FC63:
    JSR.W CODE_83FCCD                    ;83FC63;
    JMP.W CODE_83FB5B                    ;83FC66;

CODE_83FC69:
    JSR.W CODE_83FCCD                    ;83FC69;
    LDX.W #$003E                         ;83FC6C;

CODE_83FC6F:
    LDA.W DATA8_86E26A,X                 ;83FC6F;
    EOR.W #$FFFF                         ;83FC72;
    INC A                                ;83FC75;
    STA.L $7FD0E7,X                      ;83FC76;
    DEX                                  ;83FC7A;
    DEX                                  ;83FC7B;
    BPL CODE_83FC6F                      ;83FC7C;
    RTS                                  ;83FC7E;

CODE_83FC7F:
    LDA.W #$0100                         ;83FC7F;
    STA.B $1A                            ;83FC82;
    JMP.W CODE_83FB6A                    ;83FC84;

CODE_83FC87:
    LDA.W $1E8C                          ;83FC87;
    CLC                                  ;83FC8A;
    ADC.B $1A                            ;83FC8B;
    STA.W $1E8C                          ;83FC8D;
    SEP #$20                             ;83FC90;
    LDA.W $1E8E                          ;83FC92;
    ADC.B #$00                           ;83FC95;
    STA.W $1E8E                          ;83FC97;
    REP #$20                             ;83FC9A;
    LDA.W $1E4D                          ;83FC9C;
    SEC                                  ;83FC9F;
    SBC.W $1E6A                          ;83FCA0;
    CLC                                  ;83FCA3;
    ADC.W $1E8D                          ;83FCA4;
    STA.W $1E8D                          ;83FCA7;
    STA.W $00B8                          ;83FCAA;
    LDA.W $1E50                          ;83FCAD;
    LSR A                                ;83FCB0;
    LSR A                                ;83FCB1;
    SEC                                  ;83FCB2;
    SBC.B $08                            ;83FCB3;
    STA.W $1E90                          ;83FCB5;
    STA.W $00BA                          ;83FCB8;
    LDA.B $07                            ;83FCBB;
    CLC                                  ;83FCBD;
    ADC.B $1C                            ;83FCBE;
    STA.B $07                            ;83FCC0;
    SEP #$20                             ;83FCC2;
    LDA.B $09                            ;83FCC4;
    ADC.B #$00                           ;83FCC6;
    STA.B $09                            ;83FCC8;
    REP #$20                             ;83FCCA;
    RTS                                  ;83FCCC;

CODE_83FCCD:
    LDA.W #$0100                         ;83FCCD;
    STA.B $1A                            ;83FCD0;
    RTS                                  ;83FCD2;

CODE_83FCD3:
    LDA.W #$1650                         ;83FCD3;
    CMP.W $0BAD                          ;83FCD6;
    BCS CODE_83FD00                      ;83FCD9;
    CMP.W $0BCA                          ;83FCDB;
    BCC CODE_83FD00                      ;83FCDE;
    SEP #$20                             ;83FCE0;
    LDA.W $1F45                          ;83FCE2;
    BNE CODE_83FCFE                      ;83FCE5;
    LDA.B #$02                           ;83FCE7;
    STA.B $03                            ;83FCE9;
    STA.W $1F45                          ;83FCEB;
    LDA.B #$FF                           ;83FCEE;
    JSL.L CODE_84A311                    ;83FCF0;
    LDA.B #$D0                           ;83FCF4;
    STA.W $1E5E                          ;83FCF6;
    LDA.B #$15                           ;83FCF9;
    STA.W $1E5F                          ;83FCFB;

CODE_83FCFE:
    REP #$20                             ;83FCFE;

CODE_83FD00:
    RTS                                  ;83FD00;

CODE_83FD01:
    LDA.B $03                            ;83FD01;
    AND.W #$00FF                         ;83FD03;
    TAX                                  ;83FD06;
    JMP.W (PTR16_83FD0A,X)               ;83FD07;

PTR16_83FD0A:
    dw CODE_83FD46                       ;83FD0A;
    dw CODE_83FD10                       ;83FD0C;
    dw CODE_83FD47                       ;83FD0E;

CODE_83FD10:
    LDA.B $1C                            ;83FD10;
    CLC                                  ;83FD12;
    ADC.W #$0004                         ;83FD13;
    CMP.W #$0800                         ;83FD16;
    BCC CODE_83FD44                      ;83FD19;
    JSL.L CODE_849086                    ;83FD1B;
    AND.W #$007F                         ;83FD1F;
    BNE CODE_83FD41                      ;83FD22;
    LDA.W $1E58                          ;83FD24;
    CMP.W $1E60                          ;83FD27;
    BNE CODE_83FD41                      ;83FD2A;
    LDX.W #$0001                         ;83FD2C;
    LDY.W #$0002                         ;83FD2F;
    JSL.L CODE_849086                    ;83FD32;
    AND.W #$007F                         ;83FD36;
    CLC                                  ;83FD39;
    ADC.W #$001E                         ;83FD3A;
    JSL.L CODE_84A31A                    ;83FD3D;

CODE_83FD41:
    LDA.W #$0800                         ;83FD41;

CODE_83FD44:
    STA.B $1C                            ;83FD44;

CODE_83FD46:
    RTS                                  ;83FD46;

CODE_83FD47:
    LDA.B $1C                            ;83FD47;
    SEC                                  ;83FD49;
    SBC.W #$0008                         ;83FD4A;
    CMP.W #$F000                         ;83FD4D;
    BPL CODE_83FD55                      ;83FD50;
    LDA.W #$F000                         ;83FD52;

CODE_83FD55:
    STA.B $1C                            ;83FD55;
    RTS                                  ;83FD57;

CODE_83FD58:
    LDA.W $1F42                          ;83FD58;
    BEQ CODE_83FD61                      ;83FD5B;
    LDA.B #$04                           ;83FD5D;
    STA.B $03                            ;83FD5F;

CODE_83FD61:
    RTS                                  ;83FD61;

CODE_83FD62:
    LDA.W $0BAD                          ;83FD62;
    CMP.W #$1650                         ;83FD65;
    BCC CODE_83FD7A                      ;83FD68;
    SEP #$20                             ;83FD6A;
    LDA.W $1E78                          ;83FD6C;
    BEQ CODE_83FD78                      ;83FD6F;
    LDA.W $0B9C                          ;83FD71;
    AND.B #$1F                           ;83FD74;
    BNE CODE_83FD78                      ;83FD76;

CODE_83FD78:
    REP #$20                             ;83FD78;

CODE_83FD7A:
    RTS                                  ;83FD7A;

CODE_83FD7B:
    PHP                                  ;83FD7B;
    REP #$20                             ;83FD7C;
    SEP #$10                             ;83FD7E;
    LDX.B $01                            ;83FD80;
    JSR.W (PTR16_83FD91,X)               ;83FD82;
    JSL.L CODE_82806E                    ;83FD85;
    BCC CODE_83FD8F                      ;83FD89;
    JSL.L CODE_828387                    ;83FD8B;

CODE_83FD8F:
    PLP                                  ;83FD8F;
    RTL                                  ;83FD90;

PTR16_83FD91:
    dw CODE_83FD95                       ;83FD91;
    dw CODE_83FDA2                       ;83FD93;

CODE_83FD95:
    LDX.B #$02                           ;83FD95;
    STX.B $01                            ;83FD97;
    JSR.W CODE_83FDD3                    ;83FD99;
    BPL CODE_83FDA2                      ;83FD9C;
    LDX.B #$02                           ;83FD9E;
    STX.B $02                            ;83FDA0;

CODE_83FDA2:
    LDX.B $02                            ;83FDA2;
    JMP.W (PTR16_83FDA7,X)               ;83FDA4;

PTR16_83FDA7:
    dw CODE_83FDAB                       ;83FDA7;
    dw CODE_83FDC0                       ;83FDA9;

CODE_83FDAB:
    JSR.W CODE_83FDD3                    ;83FDAB;
    BPL CODE_83FDBF                      ;83FDAE;
    LDX.B #$02                           ;83FDB0;
    STX.B $02                            ;83FDB2;
    LDA.B $0A                            ;83FDB4;
    SEC                                  ;83FDB6;
    SBC.W #$0015                         ;83FDB7;
    ASL A                                ;83FDBA;
    TAX                                  ;83FDBB;
    JSR.W (PTR16_83FDED,X)               ;83FDBC;

CODE_83FDBF:
    RTS                                  ;83FDBF;

CODE_83FDC0:
    JSR.W CODE_83FDD3                    ;83FDC0;
    BMI CODE_83FDD2                      ;83FDC3;
    STZ.B $02                            ;83FDC5;
    LDA.B $0A                            ;83FDC7;
    SEC                                  ;83FDC9;
    SBC.W #$0015                         ;83FDCA;
    ASL A                                ;83FDCD;
    TAX                                  ;83FDCE;
    JSR.W (PTR16_83FDF9,X)               ;83FDCF;

CODE_83FDD2:
    RTS                                  ;83FDD2;

CODE_83FDD3:
    LDA.B $0A                            ;83FDD3;
    SEC                                  ;83FDD5;
    SBC.W #$0015                         ;83FDD6;
    TAX                                  ;83FDD9;
    LDA.W DATA8_86E4DC,X                 ;83FDDA;
    TAX                                  ;83FDDD;
    LDA.W $0BA8,X                        ;83FDDE;
    CMP.B $00,X                          ;83FDE1;
    RTS                                  ;83FDE3;

CODE_83FDE4:
    LDA.B $0B                            ;83FDE4;
    AND.B #$F0                           ;83FDE6;
    LSR A                                ;83FDE8;
    LSR A                                ;83FDE9;
    LSR A                                ;83FDEA;
    LSR A                                ;83FDEB;
    RTS                                  ;83FDEC;

PTR16_83FDED:
    dw CODE_83FE05                       ;83FDED;
    dw CODE_83FE1A                       ;83FDEF;
    dw CODE_83FE2F                       ;83FDF1;
    dw CODE_83FE05                       ;83FDF3;
    dw CODE_83FE1A                       ;83FDF5;
    dw CODE_83FE2F                       ;83FDF7;

PTR16_83FDF9:
    dw CODE_83FE0C                       ;83FDF9;
    dw CODE_83FE21                       ;83FDFB;
    dw CODE_83FE36                       ;83FDFD;
    dw CODE_83FE0C                       ;83FDFF;
    dw CODE_83FE21                       ;83FE01;
    dw CODE_83FE36                       ;83FE03;

CODE_83FE05:
    SEP #$30                             ;83FE05;
    JSR.W CODE_83FDE4                    ;83FE07;
    BRA CODE_83FE12                      ;83FE0A;

CODE_83FE0C:
    SEP #$30                             ;83FE0C;
    LDA.B $0B                            ;83FE0E;
    AND.B #$0F                           ;83FE10;

CODE_83FE12:
    STA.W $1F08                          ;83FE12;
    JSL.L CODE_80B087                    ;83FE15;
    RTS                                  ;83FE19;

CODE_83FE1A:
    SEP #$30                             ;83FE1A;
    JSR.W CODE_83FDE4                    ;83FE1C;
    BRA CODE_83FE27                      ;83FE1F;

CODE_83FE21:
    SEP #$30                             ;83FE21;
    LDA.B $0B                            ;83FE23;
    AND.B #$0F                           ;83FE25;

CODE_83FE27:
    STA.W $1F09                          ;83FE27;
    JSL.L CODE_80B42C                    ;83FE2A;
    RTS                                  ;83FE2E;

CODE_83FE2F:
    SEP #$30                             ;83FE2F;
    JSR.W CODE_83FDE4                    ;83FE31;
    BRA CODE_83FE3C                      ;83FE34;

CODE_83FE36:
    SEP #$30                             ;83FE36;
    LDA.B $0B                            ;83FE38;
    AND.B #$0F                           ;83FE3A;

CODE_83FE3C:
    STA.W $1F0A                          ;83FE3C;
    JSL.L CODE_80B4F3                    ;83FE3F;
    RTS                                  ;83FE43;

CODE_83FE44:
    LDA.B $0B                            ;83FE44;
    BMI CODE_83FE64                      ;83FE46;
    REP #$20                             ;83FE48;
    LDA.B $05                            ;83FE4A;
    STA.W $002C                          ;83FE4C;
    LDA.B $08                            ;83FE4F;
    STA.W $002E                          ;83FE51;
    SEP #$20                             ;83FE54;
    LDA.B $0C                            ;83FE56;
    JSL.L CODE_848011                    ;83FE58;
    LDA.B $01                            ;83FE5C;
    BEQ CODE_83FE72                      ;83FE5E;
    JML.L CODE_828398                    ;83FE60;

CODE_83FE64:
    LDA.B $0C                            ;83FE64;
    JSL.L CODE_848000                    ;83FE66;
    LDA.B $01                            ;83FE6A;
    BEQ CODE_83FE72                      ;83FE6C;
    JML.L CODE_828398                    ;83FE6E;

CODE_83FE72:
    INC.B $01                            ;83FE72;
    RTL                                  ;83FE74;

CODE_83FE75:
    JSL.L CODE_828307                    ;83FE75;
    BNE CODE_83FE9D                      ;83FE79;
    INC.W $0000,X                        ;83FE7B;
    LDA.B #$1B                           ;83FE7E;
    STA.W $000A,X                        ;83FE80;
    LDA.W $0000                          ;83FE83;
    STA.W $000B,X                        ;83FE86;
    LDA.W $0001                          ;83FE89;
    STA.W $000C,X                        ;83FE8C;
    REP #$20                             ;83FE8F;
    LDA.W $002C                          ;83FE91;
    STA.W $0005,X                        ;83FE94;
    LDA.W $002E                          ;83FE97;
    STA.W $0008,X                        ;83FE9A;

CODE_83FE9D:
    SEP #$30                             ;83FE9D;
    RTL                                  ;83FE9F;

CODE_83FEA0:
    LDX.B $01                            ;83FEA0;
    JSR.W (PTR16_83FEA8,X)               ;83FEA2;
    JMP.W CODE_83FF64                    ;83FEA5;

PTR16_83FEA8:
    dw CODE_83FEAC                       ;83FEA8;
    dw CODE_83FEB9                       ;83FEAA;

CODE_83FEAC:
    LDA.B #$02                           ;83FEAC;
    STA.B $01                            ;83FEAE;
    LDA.B #$01                           ;83FEB0;
    STA.B $02                            ;83FEB2;
    LDA.B #$1C                           ;83FEB4;
    STA.B $0A                            ;83FEB6;
    RTS                                  ;83FEB8;

CODE_83FEB9:
    JSR.W CODE_83FF36                    ;83FEB9;
    BNE CODE_83FF33                      ;83FEBC;
    LDA.B #$2A                           ;83FEBE;
    STA.B $0A                            ;83FEC0;
    JSL.L CODE_84A1D0                    ;83FEC2;
    LDA.B #$1C                           ;83FEC6;
    STA.B $0A                            ;83FEC8;
    TYA                                  ;83FECA;
    CMP.B #$08                           ;83FECB;
    BPL CODE_83FF33                      ;83FECD;
    REP #$20                             ;83FECF;
    DEC.B $02                            ;83FED1;
    BNE CODE_83FF33                      ;83FED3;
    LDA.B $0B                            ;83FED5;
    AND.W #$00FF                         ;83FED7;
    BNE CODE_83FEE4                      ;83FEDA;
    LDA.W #$00F0                         ;83FEDC;
    STA.B $02                            ;83FEDF;
    JMP.W CODE_83FF06                    ;83FEE1;

CODE_83FEE4:
    CMP.W #$0001                         ;83FEE4;
    BEQ CODE_83FEF6                      ;83FEE7;
    CMP.W #$0002                         ;83FEE9;
    BEQ CODE_83FEFE                      ;83FEEC;
    LDA.W #$008F                         ;83FEEE;
    STA.B $02                            ;83FEF1;
    JMP.W CODE_83FF06                    ;83FEF3;

CODE_83FEF6:
    LDA.W #$00C0                         ;83FEF6;
    STA.B $02                            ;83FEF9;
    JMP.W CODE_83FF06                    ;83FEFB;

CODE_83FEFE:
    LDA.W #$00B8                         ;83FEFE;
    STA.B $02                            ;83FF01;
    JMP.W CODE_83FF06                    ;83FF03;

CODE_83FF06:
    SEP #$20                             ;83FF06;
    JSL.L CODE_828321                    ;83FF08;
    BNE CODE_83FF33                      ;83FF0C;
    REP #$20                             ;83FF0E;
    LDA.B $05                            ;83FF10;
    STA.W $0005,X                        ;83FF12;
    LDA.B $08                            ;83FF15;
    STA.W $0008,X                        ;83FF17;
    SEP #$20                             ;83FF1A;
    LDA.B #$2A                           ;83FF1C;
    STA.W $000A,X                        ;83FF1E;
    INC.W $0000,X                        ;83FF21;
    PHX                                  ;83FF24;
    JSL.L CODE_849086                    ;83FF25;
    AND.B #$02                           ;83FF29;
    BEQ CODE_83FF2F                      ;83FF2B;
    LDA.B #$01                           ;83FF2D;

CODE_83FF2F:
    PLX                                  ;83FF2F;
    STA.W $000B,X                        ;83FF30;

CODE_83FF33:
    SEP #$30                             ;83FF33;
    RTS                                  ;83FF35;

CODE_83FF36:
    REP #$20                             ;83FF36;
    LDA.B $05                            ;83FF38;
    SEC                                  ;83FF3A;
    SBC.W $0BAD                          ;83FF3B;
    BCS CODE_83FF44                      ;83FF3E;
    EOR.W #$FFFF                         ;83FF40;
    INC A                                ;83FF43;

CODE_83FF44:
    CMP.W #$0028                         ;83FF44;
    BCC CODE_83FF5F                      ;83FF47;
    LDA.B $08                            ;83FF49;
    SEC                                  ;83FF4B;
    SBC.W $0BB0                          ;83FF4C;
    BCS CODE_83FF55                      ;83FF4F;
    EOR.W #$FFFF                         ;83FF51;
    INC A                                ;83FF54;

CODE_83FF55:
    CMP.W #$0028                         ;83FF55;
    BCC CODE_83FF5F                      ;83FF58;
    SEP #$20                             ;83FF5A;
    LDA.B #$00                           ;83FF5C;
    RTS                                  ;83FF5E;

CODE_83FF5F:
    SEP #$20                             ;83FF5F;
    LDA.B #$01                           ;83FF61;
    RTS                                  ;83FF63;

CODE_83FF64:
    JSL.L CODE_82806E                    ;83FF64;
    BCC CODE_83FF6E                      ;83FF68;
    JML.L CODE_828387                    ;83FF6A;

CODE_83FF6E:
    RTL                                  ;83FF6E;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF6F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF77;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF7F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF87;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF8F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF97;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FF9F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFA7;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFAF;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFB7;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFBF;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFC7;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFCF;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFD7;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFDF;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFE7;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFEF;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;83FFF7;
    db $FF                               ;83FFFF;

ORG $888000

CODE_888000:
    LDX.B $01                            ;888000;
    BNE CODE_888024                      ;888002;
    INC.B $01                            ;888004;
    STZ.B $30                            ;888006;
    STZ.B $12                            ;888008;
    LDA.B #$02                           ;88800A;
    STA.B $26                            ;88800C;
    STA.B $27                            ;88800E;
    STA.B $28                            ;888010;
    LDA.B #$C5                           ;888012;
    STA.B $20                            ;888014;
    LDA.B #$C3                           ;888016;
    STA.B $21                            ;888018;
    LDA.B #$9B                           ;88801A;
    STA.B $16                            ;88801C;
    LDA.B #$0F                           ;88801E;
    JSL.L CODE_848F07                    ;888020;

CODE_888024:
    JSL.L CODE_848EEA                    ;888024;
    JSL.L CODE_82820A                    ;888028;
    JSL.L CODE_8280B4                    ;88802C;
    LDA.B $0E                            ;888030;
    BNE CODE_888038                      ;888032;
    JML.L CODE_8283A3                    ;888034;

CODE_888038:
    JML.L CODE_849B03                    ;888038;

CODE_88803C:
    LDY.B #$27                           ;88803C;
    LDA.B ($0C),Y                        ;88803E;
    AND.B #$7F                           ;888040;
    BEQ CODE_888049                      ;888042;
    LDX.B $01                            ;888044;
    JMP.W (PTR16_88804D,X)               ;888046;

CODE_888049:
    JML.L CODE_8283A3                    ;888049;

PTR16_88804D:
    dw CODE_888053                       ;88804D;
    dw CODE_88809A                       ;88804F;
    dw CODE_8880C8                       ;888051;

CODE_888053:
    LDA.B #$02                           ;888053;
    STA.B $01                            ;888055;
    LDA.L $7F828A                        ;888057;
    STA.B $18                            ;88805B;
    LDA.B #$2D                           ;88805D;
    STA.B $11                            ;88805F;
    LDA.B #$91                           ;888061;
    STA.B $16                            ;888063;
    LDA.B #$0C                           ;888065;
    JSL.L CODE_848F07                    ;888067;
    REP #$20                             ;88806B;
    LDA.W #$0400                         ;88806D;
    LDX.B $0B                            ;888070;
    BNE CODE_888077                      ;888072;
    LDA.W #$FC00                         ;888074;

CODE_888077:
    STA.B $1A                            ;888077;
    LDA.W #$C3C9                         ;888079;
    STA.B $20                            ;88807C;
    SEP #$20                             ;88807E;
    LDA.B #$02                           ;888080;
    STA.B $01                            ;888082;
    LDA.B #$04                           ;888084;
    STA.B $26                            ;888086;
    STA.B $27                            ;888088;
    STA.B $28                            ;88808A;
    STZ.B $30                            ;88808C;
    LDA.B #$78                           ;88808E;
    STA.B $37                            ;888090;
    LDA.B #$FF                           ;888092;
    STA.B $2F                            ;888094;
    JML.L CODE_8280B4                    ;888096;

CODE_88809A:
    JSL.L CODE_82823E                    ;88809A;
    JSL.L CODE_8491BE                    ;88809E;
    LDA.B $2B                            ;8880A2;
    AND.B #$03                           ;8880A4;
    BEQ CODE_8880F4                      ;8880A6;
    LDA.B #$04                           ;8880A8;
    STA.B $01                            ;8880AA;
    STZ.B $29                            ;8880AC;
    LDA.B #$08                           ;8880AE;
    STA.B $2A                            ;8880B0;
    JSL.L CODE_8490A0                    ;8880B2;
    CMP.B #$34                           ;8880B6;
    REP #$20                             ;8880B8;
    LDA.W #$0400                         ;8880BA;
    BCS CODE_8880C2                      ;8880BD;
    LDA.W #$FC00                         ;8880BF;

CODE_8880C2:
    STA.B $1C                            ;8880C2;
    SEP #$20                             ;8880C4;
    BRA CODE_8880F4                      ;8880C6;

CODE_8880C8:
    JSL.L CODE_82825D                    ;8880C8;
    JSL.L CODE_8491BE                    ;8880CC;
    LDA.B $2B                            ;8880D0;
    AND.B #$0C                           ;8880D2;
    BEQ CODE_8880F4                      ;8880D4;
    LDA.B #$02                           ;8880D6;
    STA.B $01                            ;8880D8;
    STZ.B $2A                            ;8880DA;
    LDA.B #$08                           ;8880DC;
    STA.B $29                            ;8880DE;
    JSL.L CODE_8490A0                    ;8880E0;
    CMP.B #$34                           ;8880E4;
    REP #$20                             ;8880E6;
    LDA.W #$FC00                         ;8880E8;
    BCS CODE_8880F0                      ;8880EB;
    LDA.W #$0400                         ;8880ED;

CODE_8880F0:
    STA.B $1A                            ;8880F0;
    SEP #$20                             ;8880F2;

CODE_8880F4:
    DEC.B $37                            ;8880F4;
    BNE CODE_8880FC                      ;8880F6;
    JML.L CODE_8283A3                    ;8880F8;

CODE_8880FC:
    JSL.L CODE_848EEA                    ;8880FC;
    JSL.L CODE_849B03                    ;888100;
    JML.L CODE_8280B4                    ;888104;

CODE_888108:
    LDX.B $01                            ;888108;
    JSR.W (PTR16_88810E,X)               ;88810A;
    RTL                                  ;88810D;

PTR16_88810E:
    dw CODE_888112                       ;88810E;
    dw CODE_88813C                       ;888110;

CODE_888112:
    LDA.B #$02                           ;888112;
    STA.B $01                            ;888114;
    STA.B $27                            ;888116;
    LDA.B #$01                           ;888118;
    STA.B $28                            ;88811A;
    LDA.B #$04                           ;88811C;
    STA.B $26                            ;88811E;
    LDA.B #$02                           ;888120;
    STA.B $12                            ;888122;
    LDA.B #$40                           ;888124;
    STA.B $1E                            ;888126;
    REP #$20                             ;888128;
    LDA.W #$C3D3                         ;88812A;
    STA.B $20                            ;88812D;
    SEP #$20                             ;88812F;
    LDA.B $0B                            ;888131;
    JSL.L CODE_848F07                    ;888133;
    JSL.L CODE_8280B4                    ;888137;
    RTS                                  ;88813B;

CODE_88813C:
    JSL.L CODE_849B03                    ;88813C;
    LDA.B $0B                            ;888140;
    CMP.B #$08                           ;888142;
    BEQ CODE_88814D                      ;888144;
    JSL.L CODE_8281E8                    ;888146;
    JMP.W CODE_888151                    ;88814A;

CODE_88814D:
    JSL.L CODE_8281FB                    ;88814D;

CODE_888151:
    JSL.L CODE_848EEA                    ;888151;
    JSL.L CODE_8280B4                    ;888155;
    LDA.B $0E                            ;888159;
    BNE CODE_888161                      ;88815B;
    JSL.L CODE_8283A3                    ;88815D;

CODE_888161:
    RTS                                  ;888161;

CODE_888162:
    LDX.B $01                            ;888162;
    JSR.W (PTR16_888195,X)               ;888164;
    REP #$10                             ;888167;
    LDX.B $0C                            ;888169;
    LDA.W $0001,X                        ;88816B;
    CMP.B #$06                           ;88816E;
    BEQ CODE_888182                      ;888170;
    JSL.L CODE_849B03                    ;888172;
    JSL.L CODE_849B43                    ;888176;
    BEQ CODE_88818A                      ;88817A;
    LDA.B $27                            ;88817C;
    AND.B #$7F                           ;88817E;
    BNE CODE_88818A                      ;888180;

CODE_888182:
    JSL.L CODE_84A4AB                    ;888182;

CODE_888186:
    JML.L CODE_8283A3                    ;888186;

CODE_88818A:
    JSL.L CODE_8280B4                    ;88818A;
    JSL.L CODE_82806E                    ;88818E;
    BCS CODE_888186                      ;888192;
    RTL                                  ;888194;

PTR16_888195:
    dw CODE_88819F                       ;888195;
    dw CODE_8881C7                       ;888197;
    dw CODE_8881FC                       ;888199;
    dw CODE_888259                       ;88819B;
    dw CODE_8882BB                       ;88819D;

CODE_88819F:
    LDA.B #$02                           ;88819F;
    STA.B $01                            ;8881A1;
    STA.B $27                            ;8881A3;
    LDA.B #$03                           ;8881A5;
    STA.B $28                            ;8881A7;
    LDA.B #$04                           ;8881A9;
    STA.B $26                            ;8881AB;
    LDA.B #$06                           ;8881AD;
    STA.B $12                            ;8881AF;
    LDA.B #$40                           ;8881B1;
    STA.B $1E                            ;8881B3;
    STZ.B $30                            ;8881B5;
    REP #$20                             ;8881B7;
    LDA.W #$C3D7                         ;8881B9;
    STA.B $20                            ;8881BC;
    SEP #$20                             ;8881BE;
    LDA.B #$02                           ;8881C0;
    JSL.L CODE_848F07                    ;8881C2;
    RTS                                  ;8881C6;

CODE_8881C7:
    JSL.L CODE_8281E8                    ;8881C7;
    JSL.L CODE_8491BE                    ;8881CB;
    LDA.B $2B                            ;8881CF;
    AND.B #$04                           ;8881D1;
    BNE CODE_8881E4                      ;8881D3;
    LDA.B $2B                            ;8881D5;
    AND.B #$01                           ;8881D7;
    BNE CODE_8881F1                      ;8881D9;
    LDA.B $2B                            ;8881DB;
    AND.B #$02                           ;8881DD;
    BNE CODE_8881F1                      ;8881DF;
    JMP.W CODE_8881F7                    ;8881E1;

CODE_8881E4:
    LDA.B #$03                           ;8881E4;
    JSL.L CODE_848F07                    ;8881E6;
    LDA.B #$04                           ;8881EA;
    STA.B $01                            ;8881EC;
    JMP.W CODE_8881FB                    ;8881EE;

CODE_8881F1:
    REP #$20                             ;8881F1;
    STZ.B $1A                            ;8881F3;
    SEP #$20                             ;8881F5;

CODE_8881F7:
    JSL.L CODE_848EEA                    ;8881F7;

CODE_8881FB:
    RTS                                  ;8881FB;

CODE_8881FC:
    LDA.B $0F                            ;8881FC;
    BPL CODE_888254                      ;8881FE;
    LDA.B #$06                           ;888200;
    STA.B $01                            ;888202;
    JSL.L CODE_879ED4                    ;888204;
    LDA.B $11                            ;888208;
    AND.B #$40                           ;88820A;
    BNE CODE_888226                      ;88820C;
    LDA.B $0B                            ;88820E;
    BNE CODE_88821C                      ;888210;
    REP #$10                             ;888212;
    LDX.W #$FF00                         ;888214;
    STX.B $1A                            ;888217;
    JMP.W CODE_88823B                    ;888219;

CODE_88821C:
    REP #$10                             ;88821C;
    LDX.W #$FD00                         ;88821E;
    STX.B $1A                            ;888221;
    JMP.W CODE_88823B                    ;888223;

CODE_888226:
    LDA.B $0B                            ;888226;
    BNE CODE_888234                      ;888228;
    REP #$10                             ;88822A;
    LDX.W #$0100                         ;88822C;
    STX.B $1A                            ;88822F;
    JMP.W CODE_88823B                    ;888231;

CODE_888234:
    REP #$10                             ;888234;
    LDX.W #$0300                         ;888236;
    STX.B $1A                            ;888239;

CODE_88823B:
    LDX.W #$0000                         ;88823B;
    STX.B $1C                            ;88823E;
    SEP #$10                             ;888240;
    LDA.B $0B                            ;888242;
    BEQ CODE_88824B                      ;888244;
    LDA.B #$0A                           ;888246;
    JMP.W CODE_88824D                    ;888248;

CODE_88824B:
    LDA.B #$04                           ;88824B;

CODE_88824D:
    JSL.L CODE_848F07                    ;88824D;
    JMP.W CODE_888258                    ;888251;

CODE_888254:
    JSL.L CODE_848EEA                    ;888254;

CODE_888258:
    RTS                                  ;888258;

CODE_888259:
    JSL.L CODE_82823E                    ;888259;
    LDA.B $11                            ;88825D;
    AND.B #$40                           ;88825F;
    BNE CODE_88826A                      ;888261;
    LDA.B #$F8                           ;888263;
    STA.B $29                            ;888265;
    JMP.W CODE_88826E                    ;888267;

CODE_88826A:
    LDA.B #$08                           ;88826A;
    STA.B $29                            ;88826C;

CODE_88826E:
    STZ.B $2A                            ;88826E;
    JSL.L CODE_8490A0                    ;888270;
    CMP.B #$3B                           ;888274;
    BEQ CODE_88827B                      ;888276;
    JMP.W CODE_8882B4                    ;888278;

CODE_88827B:
    LDA.B $11                            ;88827B;
    EOR.B #$40                           ;88827D;
    STA.B $11                            ;88827F;
    LDA.B $0B                            ;888281;
    BEQ CODE_88828A                      ;888283;
    LDA.B #$0B                           ;888285;
    JMP.W CODE_88828C                    ;888287;

CODE_88828A:
    LDA.B #$05                           ;88828A;

CODE_88828C:
    JSL.L CODE_848F07                    ;88828C;
    LDA.B $0B                            ;888290;
    BNE CODE_8882A0                      ;888292;
    REP #$20                             ;888294;
    LDA.W #$0100                         ;888296;
    STA.B $1C                            ;888299;
    STZ.B $1A                            ;88829B;
    JMP.W CODE_8882A9                    ;88829D;

CODE_8882A0:
    REP #$20                             ;8882A0;
    LDA.W #$0300                         ;8882A2;
    STA.B $1C                            ;8882A5;
    STZ.B $1A                            ;8882A7;

CODE_8882A9:
    LDA.W #$C3E1                         ;8882A9;
    STA.B $20                            ;8882AC;
    SEP #$20                             ;8882AE;
    LDA.B #$08                           ;8882B0;
    STA.B $01                            ;8882B2;

CODE_8882B4:
    SEP #$20                             ;8882B4;
    JSL.L CODE_848EEA                    ;8882B6;
    RTS                                  ;8882BA;

CODE_8882BB:
    JSL.L CODE_82825D                    ;8882BB;
    JSL.L CODE_848EEA                    ;8882BF;
    RTS                                  ;8882C3;

CODE_8882C4:
    LDY.B #$27                           ;8882C4;
    LDA.B ($0C),Y                        ;8882C6;
    AND.B #$7F                           ;8882C8;
    BNE CODE_8882D0                      ;8882CA;
    JML.L CODE_8283A3                    ;8882CC;

CODE_8882D0:
    LDA.B $01                            ;8882D0;
    BNE CODE_8882F6                      ;8882D2;
    INC.B $01                            ;8882D4;
    LDA.B #$28                           ;8882D6;
    TSB.B $11                            ;8882D8;
    LDA.B #$A2                           ;8882DA;
    STA.B $16                            ;8882DC;
    LDA.B #$40                           ;8882DE;
    STA.B $18                            ;8882E0;
    LDA.B #$14                           ;8882E2;
    STA.B $37                            ;8882E4;
    LDA.B #$0E                           ;8882E6;
    STA.B $27                            ;8882E8;
    STA.B $26                            ;8882EA;
    STA.B $30                            ;8882EC;
    STZ.B $28                            ;8882EE;
    LDA.B #$01                           ;8882F0;
    JSL.L CODE_848F07                    ;8882F2;

CODE_8882F6:
    DEC.B $37                            ;8882F6;
    BNE CODE_8882FE                      ;8882F8;
    JML.L CODE_8283A3                    ;8882FA;

CODE_8882FE:
    REP #$20                             ;8882FE;
    LDA.W #$C3EF                         ;888300;
    STA.B $20                            ;888303;
    SEP #$20                             ;888305;
    JSL.L CODE_849B03                    ;888307;
    REP #$20                             ;88830B;
    LDA.W #$C3F3                         ;88830D;
    STA.B $20                            ;888310;
    SEP #$20                             ;888312;
    JSL.L CODE_849B03                    ;888314;
    REP #$20                             ;888318;
    LDA.W #$C3F7                         ;88831A;
    STA.B $20                            ;88831D;
    SEP #$20                             ;88831F;
    JSL.L CODE_849B03                    ;888321;
    REP #$20                             ;888325;
    LDA.W #$C3FB                         ;888327;
    STA.B $20                            ;88832A;
    SEP #$20                             ;88832C;
    JSL.L CODE_849B03                    ;88832E;
    LDA.B $37                            ;888332;
    LSR A                                ;888334;
    BCC CODE_88833B                      ;888335;
    JML.L CODE_8280B4                    ;888337;

CODE_88833B:
    RTL                                  ;88833B;

CODE_88833C:
    LDY.B #$27                           ;88833C;
    LDA.B ($0C),Y                        ;88833E;
    AND.B #$7F                           ;888340;
    BNE CODE_888348                      ;888342;
    JML.L CODE_8283A3                    ;888344;

CODE_888348:
    LDA.B $01                            ;888348;
    BNE CODE_88839B                      ;88834A;
    INC.B $01                            ;88834C;
    LDA.B #$A1                           ;88834E;
    STA.B $16                            ;888350;
    STZ.B $18                            ;888352;
    LDA.B #$29                           ;888354;
    TSB.B $11                            ;888356;
    LDA.B #$0C                           ;888358;
    JSL.L CODE_848F07                    ;88835A;
    LDA.B #$08                           ;88835E;
    STA.B $27                            ;888360;
    STA.B $26                            ;888362;
    LDA.B #$01                           ;888364;
    STA.B $30                            ;888366;
    STZ.B $28                            ;888368;
    LDA.B $11                            ;88836A;
    ASL A                                ;88836C;
    BMI CODE_888376                      ;88836D;
    LDA.B $0B                            ;88836F;
    CLC                                  ;888371;
    ADC.B #$12                           ;888372;
    BRA CODE_88837B                      ;888374;

CODE_888376:
    LDA.B #$0E                           ;888376;
    SEC                                  ;888378;
    SBC.B $0B                            ;888379;

CODE_88837B:
    ASL A                                ;88837B;
    ASL A                                ;88837C;
    TAX                                  ;88837D;
    REP #$20                             ;88837E;
    LDA.W DATA8_86EE37,X                 ;888380;
    ASL A                                ;888383;
    ASL A                                ;888384;
    STA.B $1A                            ;888385;
    LDA.W DATA8_86EE39,X                 ;888387;
    ASL A                                ;88838A;
    ASL A                                ;88838B;
    STA.B $1C                            ;88838C;
    LDA.W #$C3EB                         ;88838E;
    STA.B $20                            ;888391;
    SEP #$20                             ;888393;
    LDA.B #$33                           ;888395;
    JSL.L CODE_8088A2                    ;888397;

CODE_88839B:
    LDA.B $0F                            ;88839B;
    BMI CODE_8883A7                      ;88839D;
    JSL.L CODE_848EEA                    ;88839F;
    JML.L CODE_8280B4                    ;8883A3;

CODE_8883A7:
    JSL.L CODE_82820A                    ;8883A7;
    JSL.L CODE_849B03                    ;8883AB;
    BNE CODE_8883B9                      ;8883AF;
    JSL.L CODE_8280B4                    ;8883B1;
    LDA.B $0E                            ;8883B5;
    BNE CODE_8883BD                      ;8883B7;

CODE_8883B9:
    JML.L CODE_8283A3                    ;8883B9;

CODE_8883BD:
    RTL                                  ;8883BD;

CODE_8883BE:
    LDX.B $01                            ;8883BE;
    JSR.W (PTR16_8883D4,X)               ;8883C0;
    JSL.L CODE_849B03                    ;8883C3;
    JSL.L CODE_8280B4                    ;8883C7;
    LDA.B $0E                            ;8883CB;
    BNE CODE_8883D3                      ;8883CD;
    JSL.L CODE_8283A3                    ;8883CF;

CODE_8883D3:
    RTL                                  ;8883D3;

PTR16_8883D4:
    dw CODE_8883DC                       ;8883D4;
    dw CODE_888413                       ;8883D6;
    dw CODE_888497                       ;8883D8;
    dw CODE_8884A0                       ;8883DA;

CODE_8883DC:
    LDA.B $0B                            ;8883DC;
    BEQ CODE_8883F3                      ;8883DE;
    LDA.B #$04                           ;8883E0;
    STA.B $01                            ;8883E2;
    STA.B $27                            ;8883E4;
    LDA.B #$0F                           ;8883E6;
    JSL.L CODE_848F07                    ;8883E8;
    LDA.B #$06                           ;8883EC;
    STA.B $12                            ;8883EE;
    JMP.W CODE_888403                    ;8883F0;

CODE_8883F3:
    LDA.B #$02                           ;8883F3;
    STA.B $01                            ;8883F5;
    STA.B $27                            ;8883F7;
    LDA.B #$0A                           ;8883F9;
    JSL.L CODE_848F07                    ;8883FB;
    LDA.B #$04                           ;8883FF;
    STA.B $12                            ;888401;

CODE_888403:
    LDA.B #$04                           ;888403;
    STA.B $26                            ;888405;
    REP #$20                             ;888407;
    LDA.W #$C3FF                         ;888409;
    STA.B $20                            ;88840C;
    SEP #$20                             ;88840E;
    STZ.B $28                            ;888410;
    RTS                                  ;888412;

CODE_888413:
    JSL.L CODE_82820A                    ;888413;
    STZ.B $29                            ;888417;
    STZ.B $2A                            ;888419;
    JSL.L CODE_8490A0                    ;88841B;
    CMP.B #$00                           ;88841F;
    BEQ CODE_88848E                      ;888421;
    LDA.B #$06                           ;888423;
    STA.B $01                            ;888425;
    LDA.B #$0B                           ;888427;
    JSL.L CODE_848F07                    ;888429;
    LDA.B #$02                           ;88842D;
    STA.B $37                            ;88842F;

CODE_888431:
    LDA.B $37                            ;888431;
    BEQ CODE_888494                      ;888433;
    REP #$10                             ;888435;
    JSL.L CODE_828358                    ;888437;
    BNE CODE_888494                      ;88843B;
    LDA.B #$2E                           ;88843D;
    STA.W $000A,X                        ;88843F;
    INC.W $0000,X                        ;888442;
    LDA.B $11                            ;888445;
    AND.B #$F1                           ;888447;
    ORA.B #$04                           ;888449;
    STA.W $0011,X                        ;88844B;
    LDA.B $16                            ;88844E;
    STA.W $0016,X                        ;888450;
    LDA.B $18                            ;888453;
    STA.W $0018,X                        ;888455;
    LDA.B #$01                           ;888458;
    STA.W $000B,X                        ;88845A;
    REP #$20                             ;88845D;
    LDA.B $05                            ;88845F;
    STA.W $0005,X                        ;888461;
    LDA.B $08                            ;888464;
    STA.W $0008,X                        ;888466;
    STZ.W $001C,X                        ;888469;
    SEP #$20                             ;88846C;
    LDA.B $37                            ;88846E;
    CMP.B #$01                           ;888470;
    BEQ CODE_88847F                      ;888472;
    REP #$20                             ;888474;
    LDA.W #$0400                         ;888476;
    STA.W $001A,X                        ;888479;
    JMP.W CODE_888487                    ;88847C;

CODE_88847F:
    REP #$20                             ;88847F;
    LDA.W #$FC00                         ;888481;
    STA.W $001A,X                        ;888484;

CODE_888487:
    SEP #$20                             ;888487;
    DEC.B $37                            ;888489;
    JMP.W CODE_888431                    ;88848B;

CODE_88848E:
    SEP #$10                             ;88848E;
    JSL.L CODE_848EEA                    ;888490;

CODE_888494:
    SEP #$10                             ;888494;
    RTS                                  ;888496;

CODE_888497:
    JSL.L CODE_82823E                    ;888497;
    JSL.L CODE_848EEA                    ;88849B;
    RTS                                  ;88849F;

CODE_8884A0:
    LDA.B $0F                            ;8884A0;
    BPL CODE_8884AB                      ;8884A2;
    JSL.L CODE_8283A3                    ;8884A4;
    JMP.W CODE_8884AF                    ;8884A8;

CODE_8884AB:
    JSL.L CODE_848EEA                    ;8884AB;

CODE_8884AF:
    RTS                                  ;8884AF;

CODE_8884B0:
    LDX.B $01                            ;8884B0;
    JSR.W (PTR16_88851F,X)               ;8884B2;
    REP #$10                             ;8884B5;
    LDA.W $0C16                          ;8884B7;
    BNE CODE_88850C                      ;8884BA;
    LDA.W $1F0C                          ;8884BC;
    BNE CODE_88850C                      ;8884BF;
    LDA.W $0C32                          ;8884C1;
    BNE CODE_88850C                      ;8884C4;
    LDX.W #$0BA8                         ;8884C6;
    JSL.L CODE_849C0E                    ;8884C9;
    BCC CODE_88850C                      ;8884CD;
    JMP.W CODE_8884D8                    ;8884CF;

CODE_8884D2:
    SEP #$10                             ;8884D2;
    JML.L CODE_8283A3                    ;8884D4;

CODE_8884D8:
    JSL.L CODE_8282D3                    ;8884D8;
    BNE CODE_88850C                      ;8884DC;
    INC.W $0000,X                        ;8884DE;
    LDA.B #$3F                           ;8884E1;
    STA.W $000A,X                        ;8884E3;
    LDA.B $16                            ;8884E6;
    STA.W $0016,X                        ;8884E8;
    LDA.B $11                            ;8884EB;
    STA.W $0011,X                        ;8884ED;
    LDA.B $18                            ;8884F0;
    STA.W $0018,X                        ;8884F2;
    REP #$20                             ;8884F5;
    LDA.W $0BAD                          ;8884F7;
    STA.W $0005,X                        ;8884FA;
    LDA.W $0BB0                          ;8884FD;
    STA.W $0008,X                        ;888500;
    SEP #$20                             ;888503;
    JSL.L CODE_849FE6                    ;888505;
    JMP.W CODE_8884D2                    ;888509;

CODE_88850C:
    SEP #$10                             ;88850C;
    JSL.L CODE_848EEA                    ;88850E;
    JSL.L CODE_8280B4                    ;888512;
    LDA.B $0E                            ;888516;
    BNE CODE_88851E                      ;888518;
    JSL.L CODE_8283A3                    ;88851A;

CODE_88851E:
    RTL                                  ;88851E;

PTR16_88851F:
    dw CODE_888523                       ;88851F;
    dw CODE_888539                       ;888521;

CODE_888523:
    LDA.B #$0E                           ;888523;
    JSL.L CODE_848F07                    ;888525;
    LDA.B #$02                           ;888529;
    STA.B $01                            ;88852B;
    REP #$20                             ;88852D;
    LDA.W #$C3FF                         ;88852F;
    STA.B $20                            ;888532;
    SEP #$20                             ;888534;
    STZ.B $28                            ;888536;
    RTS                                  ;888538;

CODE_888539:
    JSL.L CODE_82820A                    ;888539;
    RTS                                  ;88853D;

CODE_88853E:
    LDX.B $01                            ;88853E;
    JMP.W (PTR16_888543,X)               ;888540;

PTR16_888543:
    dw CODE_88854B                       ;888543;
    dw CODE_8885F0                       ;888545;
    dw CODE_88870A                       ;888547;
    dw CODE_888CF3                       ;888549;

CODE_88854B:
    LDA.B $02                            ;88854B;
    BNE CODE_88859C                      ;88854D;
    JSL.L CODE_84AAD3                    ;88854F;
    BEQ CODE_888559                      ;888553;
    JML.L CODE_828398                    ;888555;

CODE_888559:
    JSL.L CODE_849FE6                    ;888559;
    INC.B $02                            ;88855D;
    LDA.B #$3C                           ;88855F;
    STA.B $34                            ;888561;
    LDA.B #$FF                           ;888563;
    STA.B $2F                            ;888565;
    LDA.W $1E89                          ;888567;
    STA.B $3B                            ;88856A;
    LDA.B #$0C                           ;88856C;
    STA.W $1E89                          ;88856E;
    LDA.B #$15                           ;888571;
    STA.W $00C0                          ;888573;
    REP #$20                             ;888576;
    STZ.W $1E8D                          ;888578;
    LDA.W #$0200                         ;88857B;
    LDX.W $1F7A                          ;88857E;
    CPX.B #$09                           ;888581;
    BCC CODE_888588                      ;888583;
    LDA.W #$0100                         ;888585;

CODE_888588:
    STA.W $1E90                          ;888588;
    SEP #$20                             ;88858B;
    JSL.L CODE_80E02E                    ;88858D;
    LDA.W $1F26                          ;888591;
    BEQ CODE_88859C                      ;888594;
    LDA.B #$2E                           ;888596;
    JSL.L CODE_8087A2                    ;888598;

CODE_88859C:
    DEC.B $34                            ;88859C;
    BEQ CODE_8885A1                      ;88859E;
    RTL                                  ;8885A0;

CODE_8885A1:
    JSL.L CODE_82827D                    ;8885A1;
    STZ.B $02                            ;8885A5;
    LDA.B #$04                           ;8885A7;
    STA.B $26                            ;8885A9;
    STZ.B $33                            ;8885AB;
    LDA.B #$2B                           ;8885AD;
    STA.B $11                            ;8885AF;
    AND.B #$0E                           ;8885B1;
    STA.B $3A                            ;8885B3;
    LDX.B #$1F                           ;8885B5;

CODE_8885B7:
    STZ.W $04A0,X                        ;8885B7;
    DEX                                  ;8885BA;
    BPL CODE_8885B7                      ;8885BB;
    INC.W $00A1                          ;8885BD;
    LDA.B #$04                           ;8885C0;
    STA.B $12                            ;8885C2;
    LDA.B #$03                           ;8885C4;
    JSL.L CODE_848F07                    ;8885C6;
    STZ.B $36                            ;8885CA;
    STZ.B $35                            ;8885CC;
    JSR.W CODE_888D79                    ;8885CE;
    JSR.W CODE_888D2F                    ;8885D1;
    LDA.B #$15                           ;8885D4;
    STA.W $00C0                          ;8885D6;
    LDA.B #$02                           ;8885D9;
    STA.W $00C1                          ;8885DB;
    LDA.B #$10                           ;8885DE;
    STA.W $00CA                          ;8885E0;
    LDA.B #$02                           ;8885E3;
    STA.W $00C9                          ;8885E5;
    LDA.B #$1E                           ;8885E8;
    STA.B $34                            ;8885EA;
    JML.L CODE_8280B4                    ;8885EC;

CODE_8885F0:
    JSR.W CODE_888D2F                    ;8885F0;
    LDX.B $02                            ;8885F3;
    JSR.W (PTR16_8885FC,X)               ;8885F5;
    JML.L CODE_8280B4                    ;8885F8;

PTR16_8885FC:
    dw CODE_88860C                       ;8885FC;
    dw CODE_888622                       ;8885FE;
    dw CODE_88863D                       ;888600;
    dw CODE_888669                       ;888602;
    dw CODE_888694                       ;888604;
    dw CODE_8886A7                       ;888606;
    dw CODE_8886B4                       ;888608;
    dw CODE_8886D5                       ;88860A;

CODE_88860C:
    DEC.B $34                            ;88860C;
    BNE CODE_888621                      ;88860E;
    LDA.B #$02                           ;888610;
    STA.B $02                            ;888612;
    LDA.B #$3C                           ;888614;
    STA.B $34                            ;888616;
    REP #$20                             ;888618;
    LDA.W #$FF80                         ;88861A;
    STA.B $1C                            ;88861D;
    SEP #$20                             ;88861F;

CODE_888621:
    RTS                                  ;888621;

CODE_888622:
    JSL.L CODE_82825D                    ;888622;
    JSL.L CODE_848EEA                    ;888626;
    DEC.B $34                            ;88862A;
    BNE CODE_88863C                      ;88862C;
    LDA.B #$04                           ;88862E;
    STA.B $02                            ;888630;
    LDA.B #$5A                           ;888632;
    STA.B $34                            ;888634;
    LDA.B #$76                           ;888636;
    JSL.L CODE_8088A2                    ;888638;

CODE_88863C:
    RTS                                  ;88863C;

CODE_88863D:
    LDA.W $0B9C                          ;88863D;
    LSR A                                ;888640;
    BCC CODE_888646                      ;888641;
    JSR.W CODE_888DAB                    ;888643;

CODE_888646:
    DEC.B $34                            ;888646;
    BNE CODE_888668                      ;888648;
    LDA.B #$06                           ;88864A;
    STA.B $02                            ;88864C;
    STZ.W $00C1                          ;88864E;
    REP #$20                             ;888651;
    STZ.B $1C                            ;888653;
    STZ.B $1A                            ;888655;
    LDA.W #$C771                         ;888657;
    STA.B $20                            ;88865A;
    SEP #$20                             ;88865C;
    LDA.B #$40                           ;88865E;
    STA.B $1E                            ;888660;
    LDA.B #$11                           ;888662;
    JSL.L CODE_848F07                    ;888664;

CODE_888668:
    RTS                                  ;888668;

CODE_888669:
    JSL.L CODE_8281E8                    ;888669;
    JSL.L CODE_848EEA                    ;88866D;
    JSL.L CODE_8491BE                    ;888671;
    LDA.B $2B                            ;888675;
    AND.B #$04                           ;888677;
    BEQ CODE_888693                      ;888679;
    LDA.B #$08                           ;88867B;
    STA.B $02                            ;88867D;
    LDA.B #$06                           ;88867F;
    JSL.L CODE_848F07                    ;888681;
    STZ.B $2F                            ;888685;
    REP #$20                             ;888687;
    TDC                                  ;888689;
    STA.W $1F0E                          ;88868A;
    SEP #$20                             ;88868D;
    LDA.B #$80                           ;88868F;
    STA.B $27                            ;888691;

CODE_888693:
    RTS                                  ;888693;

CODE_888694:
    JSL.L CODE_848EEA                    ;888694;
    LDA.B $0F                            ;888698;
    BPL CODE_8886A6                      ;88869A;
    LDA.B #$0A                           ;88869C;
    STA.B $02                            ;88869E;
    LDA.B #$05                           ;8886A0;
    JSL.L CODE_848F07                    ;8886A2;

CODE_8886A6:
    RTS                                  ;8886A6;

CODE_8886A7:
    JSL.L CODE_848EEA                    ;8886A7;
    LDA.B $0F                            ;8886AB;
    BEQ CODE_8886B3                      ;8886AD;
    LDA.B #$0C                           ;8886AF;
    STA.B $02                            ;8886B1;

CODE_8886B3:
    RTS                                  ;8886B3;

CODE_8886B4:
    INC.B $34                            ;8886B4;
    LDA.B $34                            ;8886B6;
    LSR A                                ;8886B8;
    BCC CODE_8886D0                      ;8886B9;
    LDA.B #$0C                           ;8886BB;
    JSL.L CODE_8088CD                    ;8886BD;
    LDA.B $27                            ;8886C1;
    AND.B #$7F                           ;8886C3;
    INC A                                ;8886C5;
    STA.B $27                            ;8886C6;
    CMP.B #$20                           ;8886C8;
    BCC CODE_8886D0                      ;8886CA;
    LDA.B #$0E                           ;8886CC;
    STA.B $02                            ;8886CE;

CODE_8886D0:
    LDA.B #$80                           ;8886D0;
    TSB.B $27                            ;8886D2;
    RTS                                  ;8886D4;

CODE_8886D5:
    LDA.B $0F                            ;8886D5;
    BMI CODE_8886F1                      ;8886D7;
    JSL.L CODE_848EEA                    ;8886D9;
    LDA.B $0F                            ;8886DD;
    BPL CODE_8886F0                      ;8886DF;
    LDA.B #$1E                           ;8886E1;
    STA.B $34                            ;8886E3;
    LDA.W $1F26                          ;8886E5;
    BEQ CODE_8886F0                      ;8886E8;
    LDA.B #$1E                           ;8886EA;
    JSL.L CODE_8087A2                    ;8886EC;

CODE_8886F0:
    RTS                                  ;8886F0;

CODE_8886F1:
    DEC.B $34                            ;8886F1;
    BEQ CODE_888709                      ;8886F3;
    LDA.B #$04                           ;8886F5;
    STA.B $01                            ;8886F7;
    STZ.B $02                            ;8886F9;
    STZ.B $03                            ;8886FB;
    STZ.B $37                            ;8886FD;
    JSL.L CODE_849FFE                    ;8886FF;
    LDA.B #$00                           ;888703;
    JSL.L CODE_848F07                    ;888705;

CODE_888709:
    RTS                                  ;888709;

CODE_88870A:
    LDA.B $3A                            ;88870A;
    TSB.B $11                            ;88870C;
    LDX.B $02                            ;88870E;
    JSR.W (PTR16_8887BD,X)               ;888710;
    LDA.B $37                            ;888713;
    BEQ CODE_88871A                      ;888715;
    JMP.W CODE_88879A                    ;888717;

CODE_88871A:
    LDA.B $17                            ;88871A;
    AND.B #$7F                           ;88871C;
    TAX                                  ;88871E;
    LDA.W DATA8_86C71F,X                 ;88871F;
    ASL A                                ;888722;
    ASL A                                ;888723;
    REP #$20                             ;888724;
    AND.W #$00FF                         ;888726;
    CLC                                  ;888729;
    ADC.W #$C751                         ;88872A;
    STA.B $20                            ;88872D;
    SEP #$20                             ;88872F;
    LDX.B #$06                           ;888731;
    LDA.B $33                            ;888733;
    BEQ CODE_888739                      ;888735;
    LDX.B #$05                           ;888737;

CODE_888739:
    STX.B $28                            ;888739;
    STZ.B $30                            ;88873B;
    LDA.W $0BCF                          ;88873D;
    AND.B #$7F                           ;888740;
    BEQ CODE_88879A                      ;888742;
    JSL.L CODE_849B43                    ;888744;
    BEQ CODE_88879A                      ;888748;
    BPL CODE_88877B                      ;88874A;
    LDA.B #$06                           ;88874C;
    STA.B $01                            ;88874E;
    STZ.B $02                            ;888750;
    STZ.B $03                            ;888752;
    LDA.B #$15                           ;888754;
    JSL.L CODE_848F07                    ;888756;
    STZ.B $37                            ;88875A;
    STZ.W $00C1                          ;88875C;
    LDA.B #$29                           ;88875F;
    STA.B $11                            ;888761;
    LDA.B $3B                            ;888763;
    STA.W $1E89                          ;888765;
    LDX.B $35                            ;888768;
    STZ.W $0AA1,X                        ;88876A;
    LDA.B #$13                           ;88876D;
    JSL.L CODE_8088A2                    ;88876F;
    JSL.L CODE_84AC9B                    ;888773;
    JML.L CODE_8280B4                    ;888777;

CODE_88877B:
    LDA.B $33                            ;88877B;
    BNE CODE_88879A                      ;88877D;
    LDA.B #$13                           ;88877F;
    JSL.L CODE_8088A2                    ;888781;
    LDA.B #$3C                           ;888785;
    STA.B $33                            ;888787;
    LDA.W $1F1D                          ;888789;
    CMP.B #$0D                           ;88878C;
    BEQ CODE_888794                      ;88878E;
    CMP.B #$16                           ;888790;
    BNE CODE_88879A                      ;888792;

CODE_888794:
    LDA.B #$0C                           ;888794;
    STA.B $02                            ;888796;
    STZ.B $03                            ;888798;

CODE_88879A:
    LDA.B $33                            ;88879A;
    BEQ CODE_8887AD                      ;88879C;
    DEC A                                ;88879E;
    STA.B $33                            ;88879F;
    LDX.B $37                            ;8887A1;
    BNE CODE_8887B5                      ;8887A3;
    AND.B #$03                           ;8887A5;
    BNE CODE_8887B5                      ;8887A7;
    LDA.B #$0E                           ;8887A9;
    TRB.B $11                            ;8887AB;

CODE_8887AD:
    LDA.B $37                            ;8887AD;
    BNE CODE_8887B5                      ;8887AF;
    JSL.L CODE_849B03                    ;8887B1;

CODE_8887B5:
    LDA.B $37                            ;8887B5;
    STA.B $30                            ;8887B7;
    JML.L CODE_8280B4                    ;8887B9;

PTR16_8887BD:
    dw CODE_8887CB                       ;8887BD;
    dw CODE_8888FF                       ;8887BF;
    dw CODE_888959                       ;8887C1;
    dw CODE_888AE7                       ;8887C3;
    dw CODE_888B5F                       ;8887C5;
    dw CODE_888BCF                       ;8887C7;
    dw CODE_888C8F                       ;8887C9;

CODE_8887CB:
    LDX.B $03                            ;8887CB;
    JMP.W (PTR16_8887D0,X)               ;8887CD;

PTR16_8887D0:
    dw CODE_8887DC                       ;8887D0;
    dw CODE_888879                       ;8887D2;
    dw CODE_88889D                       ;8887D4;
    dw CODE_8888B4                       ;8887D6;
    dw CODE_8888D0                       ;8887D8;
    dw CODE_8888F0                       ;8887DA;

CODE_8887DC:
    LDA.B $2F                            ;8887DC;
    BEQ CODE_8887F7                      ;8887DE;
    LDA.B #$02                           ;8887E0;
    STA.B $03                            ;8887E2;
    LDA.B #$01                           ;8887E4;
    JSL.L CODE_848F07                    ;8887E6;
    REP #$20                             ;8887EA;
    STZ.B $1A                            ;8887EC;
    STZ.B $1C                            ;8887EE;
    SEP #$20                             ;8887F0;
    LDA.B #$40                           ;8887F2;
    STA.B $1E                            ;8887F4;
    RTS                                  ;8887F6;

CODE_8887F7:
    LDA.B #$01                           ;8887F7;
    JSL.L CODE_848F07                    ;8887F9;
    LDA.B #$FF                           ;8887FD;
    STA.B $2F                            ;8887FF;
    LDA.B #$40                           ;888801;
    TRB.B $11                            ;888803;
    LDX.B #$00                           ;888805;
    JSL.L CODE_849086                    ;888807;
    AND.B #$0F                           ;88880B;
    CMP.B #$04                           ;88880D;
    BCC CODE_888845                      ;88880F;
    REP #$20                             ;888811;
    LDA.W $1E4D                          ;888813;
    CLC                                  ;888816;
    ADC.W #$0080                         ;888817;
    CMP.B $05                            ;88881A;
    LDA.W #$0040                         ;88881C;
    BCC CODE_888826                      ;88881F;
    LDA.W #$00C0                         ;888821;
    LDX.B #$40                           ;888824;

CODE_888826:
    CLC                                  ;888826;
    ADC.W $1E4D                          ;888827;
    SEC                                  ;88882A;
    SBC.B $05                            ;88882B;
    ASL A                                ;88882D;
    ASL A                                ;88882E;
    ASL A                                ;88882F;
    STA.B $1A                            ;888830;
    LDA.W #$0593                         ;888832;
    STA.B $1C                            ;888835;
    SEP #$20                             ;888837;
    LDA.B #$30                           ;888839;
    STA.B $1E                            ;88883B;
    TXA                                  ;88883D;
    TSB.B $11                            ;88883E;
    LDA.B #$06                           ;888840;
    STA.B $03                            ;888842;
    RTS                                  ;888844;

CODE_888845:
    REP #$20                             ;888845;
    LDA.W $1E4D                          ;888847;
    CLC                                  ;88884A;
    ADC.W #$0080                         ;88884B;
    CMP.B $05                            ;88884E;
    LDA.W #$0030                         ;888850;
    BCC CODE_88885A                      ;888853;
    LDX.B #$40                           ;888855;
    LDA.W #$00D0                         ;888857;

CODE_88885A:
    CLC                                  ;88885A;
    ADC.W $1E4D                          ;88885B;
    SEC                                  ;88885E;
    SBC.B $05                            ;88885F;
    ASL A                                ;888861;
    ASL A                                ;888862;
    ASL A                                ;888863;
    STA.B $1A                            ;888864;
    LDA.W #$070D                         ;888866;
    STA.B $1C                            ;888869;
    SEP #$20                             ;88886B;
    LDA.B #$40                           ;88886D;
    STA.B $1C                            ;88886F;
    TXA                                  ;888871;
    TSB.B $11                            ;888872;
    LDA.B #$08                           ;888874;
    STA.B $03                            ;888876;
    RTS                                  ;888878;

CODE_888879:
    JSL.L CODE_8281E8                    ;888879;
    REP #$20                             ;88887D;
    LDA.W #$C771                         ;88887F;
    STA.B $20                            ;888882;
    SEP #$20                             ;888884;
    JSL.L CODE_8491BE                    ;888886;
    LDA.B $2B                            ;88888A;
    AND.B #$04                           ;88888C;
    BEQ CODE_88889C                      ;88888E;
    STZ.B $2F                            ;888890;
    LDA.B #$06                           ;888892;
    JSL.L CODE_848F07                    ;888894;
    LDA.B #$04                           ;888898;
    STA.B $03                            ;88889A;

CODE_88889C:
    RTS                                  ;88889C;

CODE_88889D:
    JSL.L CODE_848EEA                    ;88889D;
    LDA.B $0F                            ;8888A1;
    BPL CODE_8888A8                      ;8888A3;
    JMP.W CODE_8887F7                    ;8888A5;

CODE_8888A8:
    JSR.W CODE_888EA4                    ;8888A8;
    BCC CODE_8888B3                      ;8888AB;
    LDA.B #$0A                           ;8888AD;
    STA.B $02                            ;8888AF;
    STZ.B $03                            ;8888B1;

CODE_8888B3:
    RTS                                  ;8888B3;

CODE_8888B4:
    JSL.L CODE_8281E8                    ;8888B4;
    REP #$20                             ;8888B8;
    LDA.W #$C771                         ;8888BA;
    STA.B $20                            ;8888BD;
    SEP #$20                             ;8888BF;
    JSL.L CODE_8491BE                    ;8888C1;
    LDA.B $1D                            ;8888C5;
    BPL CODE_8888CF                      ;8888C7;
    LDA.B #$06                           ;8888C9;
    STA.B $02                            ;8888CB;
    STZ.B $03                            ;8888CD;

CODE_8888CF:
    RTS                                  ;8888CF;

CODE_8888D0:
    JSL.L CODE_8281E8                    ;8888D0;
    REP #$20                             ;8888D4;
    LDA.W #$C771                         ;8888D6;
    STA.B $20                            ;8888D9;
    SEP #$20                             ;8888DB;
    JSL.L CODE_8491BE                    ;8888DD;
    LDA.B $1D                            ;8888E1;
    BPL CODE_8888EF                      ;8888E3;
    LDA.B #$0A                           ;8888E5;
    STA.B $03                            ;8888E7;
    LDA.B #$12                           ;8888E9;
    JSL.L CODE_848F07                    ;8888EB;

CODE_8888EF:
    RTS                                  ;8888EF;

CODE_8888F0:
    JSL.L CODE_848EEA                    ;8888F0;
    LDA.B $0F                            ;8888F4;
    BPL CODE_8888FE                      ;8888F6;
    LDA.B #$08                           ;8888F8;
    STA.B $02                            ;8888FA;
    STZ.B $03                            ;8888FC;

CODE_8888FE:
    RTS                                  ;8888FE;

CODE_8888FF:
    JSR.W CODE_888D2F                    ;8888FF;
    LDX.B $03                            ;888902;
    JMP.W (PTR16_888907,X)               ;888904;

PTR16_888907:
    dw CODE_88890F                       ;888907;
    dw CODE_888925                       ;888909;
    dw CODE_888932                       ;88890B;
    dw CODE_888948                       ;88890D;

CODE_88890F:
    LDA.B #$02                           ;88890F;
    STA.B $03                            ;888911;
    LDA.B #$20                           ;888913;
    STA.B $34                            ;888915;
    LDA.B #$02                           ;888917;
    STA.W $00C1                          ;888919;
    INC.B $37                            ;88891C;
    LDA.B #$76                           ;88891E;
    JSL.L CODE_8088A2                    ;888920;
    RTS                                  ;888924;

CODE_888925:
    DEC.B $34                            ;888925;
    BNE CODE_888931                      ;888927;
    LDA.B #$04                           ;888929;
    STA.B $03                            ;88892B;
    LDA.B #$20                           ;88892D;
    STA.B $34                            ;88892F;

CODE_888931:
    RTS                                  ;888931;

CODE_888932:
    LDA.W $0B9C                          ;888932;
    LSR A                                ;888935;
    BCC CODE_888947                      ;888936;
    JSR.W CODE_888E0F                    ;888938;
    DEC.B $34                            ;88893B;
    BNE CODE_888947                      ;88893D;
    LDA.B #$06                           ;88893F;
    STA.B $03                            ;888941;
    LDA.B #$3C                           ;888943;
    STA.B $34                            ;888945;

CODE_888947:
    RTS                                  ;888947;

CODE_888948:
    DEC.B $34                            ;888948;
    BNE CODE_888958                      ;88894A;
    LDA.B #$04                           ;88894C;
    STA.B $02                            ;88894E;
    STZ.B $03                            ;888950;
    LDA.B #$03                           ;888952;
    JSL.L CODE_848F07                    ;888954;

CODE_888958:
    RTS                                  ;888958;

CODE_888959:
    LDX.B $03                            ;888959;
    JMP.W (PTR16_88895E,X)               ;88895B;

PTR16_88895E:
    dw CODE_888972                       ;88895E;
    dw CODE_888A18                       ;888960;
    dw CODE_888A44                       ;888962;
    dw CODE_888A57                       ;888964;
    dw CODE_888A77                       ;888966;
    dw CODE_888A44                       ;888968;
    dw CODE_888AC0                       ;88896A;
    dw CODE_888A44                       ;88896C;
    dw CODE_888ADD                       ;88896E;
    dw CODE_888A6A                       ;888970;

CODE_888972:
    STZ.B $38                            ;888972;
    LDA.B #$03                           ;888974;
    JSL.L CODE_848F07                    ;888976;
    JSL.L CODE_849086                    ;88897A;
    AND.B #$0F                           ;88897E;
    CMP.B #$06                           ;888980;
    BCS CODE_8889E1                      ;888982;
    LDA.B #$02                           ;888984;
    STA.B $03                            ;888986;
    REP #$20                             ;888988;
    LDA.W $1E4D                          ;88898A;
    CLC                                  ;88898D;
    ADC.W #$0080                         ;88898E;
    CMP.B $05                            ;888991;
    LDA.W #$0030                         ;888993;
    BCC CODE_88899B                      ;888996;
    LDA.W #$00D0                         ;888998;

CODE_88899B:
    CLC                                  ;88899B;
    ADC.W $1E4D                          ;88899C;
    STA.W $0004                          ;88899F;
    LDA.W $1E50                          ;8889A2;
    CLC                                  ;8889A5;
    ADC.W #$0030                         ;8889A6;
    STA.W $0006                          ;8889A9;
    LDA.B $05                            ;8889AC;
    STA.W $0000                          ;8889AE;
    LDA.B $08                            ;8889B1;
    STA.W $0002                          ;8889B3;
    JSL.L CODE_84A097                    ;8889B6;
    AND.W #$00FF                         ;8889BA;
    ASL A                                ;8889BD;
    ASL A                                ;8889BE;
    TAX                                  ;8889BF;
    LDA.W DATA8_86EE37,X                 ;8889C0;
    STA.B $1A                            ;8889C3;
    LDA.W DATA8_86EE39,X                 ;8889C5;
    STA.B $1C                            ;8889C8;
    JSL.L CODE_80CEB0                    ;8889CA;
    SEP #$20                             ;8889CE;
    LDA.W $0000                          ;8889D0;
    INC A                                ;8889D3;
    STA.B $34                            ;8889D4;
    LDA.B #$40                           ;8889D6;
    TRB.B $11                            ;8889D8;
    LDX.B $1B                            ;8889DA;
    BMI CODE_8889E0                      ;8889DC;
    TSB.B $11                            ;8889DE;

CODE_8889E0:
    RTS                                  ;8889E0;

CODE_8889E1:
    REP #$20                             ;8889E1;
    LDA.B $05                            ;8889E3;
    CMP.W $0BAD                          ;8889E5;
    LDA.W #$FE00                         ;8889E8;
    BCS CODE_8889F2                      ;8889EB;
    LDA.W #$0200                         ;8889ED;
    LDX.B #$40                           ;8889F0;

CODE_8889F2:
    STA.B $1A                            ;8889F2;
    LDA.B $08                            ;8889F4;
    SEC                                  ;8889F6;
    SBC.W $1E50                          ;8889F7;
    SEC                                  ;8889FA;
    SBC.W #$0080                         ;8889FB;
    ASL A                                ;8889FE;
    ASL A                                ;8889FF;
    ASL A                                ;888A00;
    STA.B $1C                            ;888A01;
    SEP #$20                             ;888A03;
    LDA.B #$12                           ;888A05;
    STA.B $03                            ;888A07;
    LDA.B #$20                           ;888A09;
    STA.B $34                            ;888A0B;
    LDA.B #$40                           ;888A0D;
    TRB.B $11                            ;888A0F;
    LDX.B $1B                            ;888A11;
    BMI CODE_888A17                      ;888A13;
    TSB.B $11                            ;888A15;

CODE_888A17:
    RTS                                  ;888A17;

CODE_888A18:
    JSL.L CODE_82820A                    ;888A18;
    JSL.L CODE_848EEA                    ;888A1C;
    REP #$20                             ;888A20;
    LDA.W #$C771                         ;888A22;
    STA.B $20                            ;888A25;
    SEP #$20                             ;888A27;
    DEC.B $34                            ;888A29;
    BEQ CODE_888A35                      ;888A2B;
    JSL.L CODE_8491BE                    ;888A2D;
    LDA.B $2B                            ;888A31;
    BEQ CODE_888A43                      ;888A33;

CODE_888A35:
    LDA.B #$04                           ;888A35;
    STA.B $03                            ;888A37;
    LDA.B #$20                           ;888A39;
    STA.B $34                            ;888A3B;
    LDA.B #$76                           ;888A3D;
    JSL.L CODE_8088A2                    ;888A3F;

CODE_888A43:
    RTS                                  ;888A43;

CODE_888A44:
    JSR.W CODE_888D2F                    ;888A44;
    JSR.W CODE_888DAB                    ;888A47;
    DEC.B $34                            ;888A4A;
    BNE CODE_888A56                      ;888A4C;
    INC.B $03                            ;888A4E;
    INC.B $03                            ;888A50;
    LDA.B #$20                           ;888A52;
    STA.B $34                            ;888A54;

CODE_888A56:
    RTS                                  ;888A56;

CODE_888A57:
    JSR.W CODE_888D2F                    ;888A57;
    DEC.B $34                            ;888A5A;
    BNE CODE_888A69                      ;888A5C;
    LDA.B #$08                           ;888A5E;
    STA.B $02                            ;888A60;
    STZ.B $03                            ;888A62;
    STZ.W $00C1                          ;888A64;
    STZ.B $37                            ;888A67;

CODE_888A69:
    RTS                                  ;888A69;

CODE_888A6A:
    DEC.B $34                            ;888A6A;
    BNE CODE_888A76                      ;888A6C;
    LDA.B #$08                           ;888A6E;
    STA.B $03                            ;888A70;
    LDA.B #$20                           ;888A72;
    STA.B $34                            ;888A74;

CODE_888A76:
    RTS                                  ;888A76;

CODE_888A77:
    JSL.L CODE_82820A                    ;888A77;
    REP #$20                             ;888A7B;
    LDA.W #$C771                         ;888A7D;
    STA.B $20                            ;888A80;
    SEP #$20                             ;888A82;
    JSL.L CODE_8491BE                    ;888A84;
    JSR.W CODE_888E4F                    ;888A88;
    BNE CODE_888AAF                      ;888A8B;
    JSL.L CODE_848EEA                    ;888A8D;
    DEC.B $34                            ;888A91;
    BNE CODE_888ABF                      ;888A93;
    INC.B $38                            ;888A95;
    LDA.B $38                            ;888A97;
    CMP.B #$03                           ;888A99;
    BCC CODE_888AAC                      ;888A9B;
    LDA.B #$0E                           ;888A9D;
    STA.B $03                            ;888A9F;
    LDA.B #$20                           ;888AA1;
    STA.B $34                            ;888AA3;
    LDA.B #$76                           ;888AA5;
    JSL.L CODE_8088A2                    ;888AA7;
    RTS                                  ;888AAB;

CODE_888AAC:
    JMP.W CODE_8889E1                    ;888AAC;

CODE_888AAF:
    STA.B $39                            ;888AAF;
    LDA.B #$0C                           ;888AB1;
    STA.B $03                            ;888AB3;
    LDA.B #$20                           ;888AB5;
    STA.B $34                            ;888AB7;
    LDA.B #$76                           ;888AB9;
    JSL.L CODE_8088A2                    ;888ABB;

CODE_888ABF:
    RTS                                  ;888ABF;

CODE_888AC0:
    JSR.W CODE_888D2F                    ;888AC0;
    JSR.W CODE_888DAB                    ;888AC3;
    DEC.B $34                            ;888AC6;
    BNE CODE_888ADC                      ;888AC8;
    JSR.W CODE_888E4F                    ;888ACA;
    BEQ CODE_888AD1                      ;888ACD;
    STA.B $39                            ;888ACF;

CODE_888AD1:
    LDA.B #$0A                           ;888AD1;
    STA.B $02                            ;888AD3;
    STZ.B $03                            ;888AD5;
    STZ.W $00C1                          ;888AD7;
    STZ.B $37                            ;888ADA;

CODE_888ADC:
    RTS                                  ;888ADC;

CODE_888ADD:
    STZ.B $02                            ;888ADD;
    STZ.B $03                            ;888ADF;
    STZ.W $00C1                          ;888AE1;
    STZ.B $37                            ;888AE4;
    RTS                                  ;888AE6;

CODE_888AE7:
    LDX.B $03                            ;888AE7;
    JMP.W (PTR16_888AEC,X)               ;888AE9;

PTR16_888AEC:
    dw CODE_888AF4                       ;888AEC;
    dw CODE_888B03                       ;888AEE;
    dw CODE_888B17                       ;888AF0;
    dw CODE_888B54                       ;888AF2;

CODE_888AF4:
    LDA.B #$02                           ;888AF4;
    STA.B $03                            ;888AF6;
    LDA.B #$04                           ;888AF8;
    JSL.L CODE_848F07                    ;888AFA;
    LDA.B #$20                           ;888AFE;
    STA.B $34                            ;888B00;
    RTS                                  ;888B02;

CODE_888B03:
    DEC.B $34                            ;888B03;
    BNE CODE_888B16                      ;888B05;
    JSL.L CODE_849086                    ;888B07;
    AND.B #$7F                           ;888B0B;
    CLC                                  ;888B0D;
    ADC.B #$3C                           ;888B0E;
    STA.B $34                            ;888B10;
    LDA.B #$04                           ;888B12;
    STA.B $03                            ;888B14;

CODE_888B16:
    RTS                                  ;888B16;

CODE_888B17:
    JSL.L CODE_848EEA                    ;888B17;
    LDA.B $34                            ;888B1B;
    BNE CODE_888B30                      ;888B1D;
    LDA.B $17                            ;888B1F;
    AND.B #$7F                           ;888B21;
    CMP.B #$0A                           ;888B23;
    BNE CODE_888B2F                      ;888B25;
    LDA.B #$06                           ;888B27;
    STA.B $03                            ;888B29;
    LDA.B #$20                           ;888B2B;
    STA.B $34                            ;888B2D;

CODE_888B2F:
    RTS                                  ;888B2F;

CODE_888B30:
    DEC.B $34                            ;888B30;
    LDA.B $17                            ;888B32;
    BPL CODE_888B53                      ;888B34;
    AND.B #$7F                           ;888B36;
    STA.B $17                            ;888B38;
    JSL.L CODE_828358                    ;888B3A;
    BNE CODE_888B51                      ;888B3E;
    INC.W $0000,X                        ;888B40;
    LDA.B #$11                           ;888B43;
    STA.W $000A,X                        ;888B45;
    STZ.W $000B,X                        ;888B48;
    REP #$20                             ;888B4B;
    TDC                                  ;888B4D;
    STA.W $000C,X                        ;888B4E;

CODE_888B51:
    SEP #$30                             ;888B51;

CODE_888B53:
    RTS                                  ;888B53;

CODE_888B54:
    DEC.B $34                            ;888B54;
    BNE CODE_888B5E                      ;888B56;
    LDA.B #$02                           ;888B58;
    STA.B $02                            ;888B5A;
    STZ.B $03                            ;888B5C;

CODE_888B5E:
    RTS                                  ;888B5E;

CODE_888B5F:
    LDX.B $03                            ;888B5F;
    JMP.W (PTR16_888B64,X)               ;888B61;

PTR16_888B64:
    dw CODE_888B6A                       ;888B64;
    dw CODE_888B7B                       ;888B66;
    dw CODE_888B9A                       ;888B68;

CODE_888B6A:
    LDA.B #$02                           ;888B6A;
    STA.B $03                            ;888B6C;
    STZ.B $38                            ;888B6E;
    LDA.B #$08                           ;888B70;
    JSL.L CODE_848F07                    ;888B72;
    JSL.L CODE_84AC9B                    ;888B76;
    RTS                                  ;888B7A;

CODE_888B7B:
    JSL.L CODE_848EEA                    ;888B7B;
    LDA.B $0F                            ;888B7F;
    BEQ CODE_888B99                      ;888B81;
    BPL CODE_888B8E                      ;888B83;
    LDA.B #$04                           ;888B85;
    STA.B $03                            ;888B87;
    LDA.B #$20                           ;888B89;
    STA.B $34                            ;888B8B;
    RTS                                  ;888B8D;

CODE_888B8E:
    LDA.B $17                            ;888B8E;
    BPL CODE_888B99                      ;888B90;
    AND.B #$7F                           ;888B92;
    STA.B $17                            ;888B94;
    JMP.W CODE_888EB9                    ;888B96;

CODE_888B99:
    RTS                                  ;888B99;

CODE_888B9A:
    DEC.B $34                            ;888B9A;
    BNE CODE_888BCE                      ;888B9C;
    JSL.L CODE_849086                    ;888B9E;
    AND.B #$0F                           ;888BA2;
    CMP.B #$0C                           ;888BA4;
    BCS CODE_888BBC                      ;888BA6;
    LDA.B $38                            ;888BA8;
    INC A                                ;888BAA;
    STA.B $38                            ;888BAB;
    CMP.B #$03                           ;888BAD;
    BCS CODE_888BBC                      ;888BAF;
    LDA.B #$08                           ;888BB1;
    JSL.L CODE_848F07                    ;888BB3;
    LDA.B #$02                           ;888BB7;
    STA.B $03                            ;888BB9;
    RTS                                  ;888BBB;

CODE_888BBC:
    LDA.B #$02                           ;888BBC;
    STA.B $02                            ;888BBE;
    STZ.B $03                            ;888BC0;
    JSL.L CODE_849086                    ;888BC2;
    AND.B #$0F                           ;888BC6;
    CMP.B #$03                           ;888BC8;
    BCS CODE_888BCE                      ;888BCA;
    STZ.B $02                            ;888BCC;

CODE_888BCE:
    RTS                                  ;888BCE;

CODE_888BCF:
    LDX.B $03                            ;888BCF;
    JMP.W (PTR16_888BD4,X)               ;888BD1;

PTR16_888BD4:
    dw CODE_888BDA                       ;888BD4;
    dw CODE_888C09                       ;888BD6;
    dw CODE_888C57                       ;888BD8;

CODE_888BDA:
    STZ.B $38                            ;888BDA;
    LDA.B $2F                            ;888BDC;
    BNE CODE_888BF5                      ;888BDE;
    LDA.B #$07                           ;888BE0;
    JSL.L CODE_848F07                    ;888BE2;
    LDA.B #$7C                           ;888BE6;
    JSL.L CODE_8088A2                    ;888BE8;
    JSL.L CODE_84AC9B                    ;888BEC;
    LDA.B #$04                           ;888BF0;
    STA.B $03                            ;888BF2;
    RTS                                  ;888BF4;

CODE_888BF5:
    LDA.B $39                            ;888BF5;
    CLC                                  ;888BF7;
    ADC.B #$0B                           ;888BF8;
    JSL.L CODE_848F07                    ;888BFA;
    LDA.B #$7C                           ;888BFE;
    JSL.L CODE_8088A2                    ;888C00;
    LDA.B #$02                           ;888C04;
    STA.B $03                            ;888C06;
    RTS                                  ;888C08;

CODE_888C09:
    JSL.L CODE_848EEA                    ;888C09;
    LDA.B $0F                            ;888C0D;
    BEQ CODE_888C56                      ;888C0F;
    BPL CODE_888C43                      ;888C11;
    LDA.B $38                            ;888C13;
    INC A                                ;888C15;
    STA.B $38                            ;888C16;
    CMP.B #$03                           ;888C18;
    BCS CODE_888C2F                      ;888C1A;
    JSR.W CODE_888E4F                    ;888C1C;
    BEQ CODE_888C2F                      ;888C1F;
    CLC                                  ;888C21;
    ADC.B #$0B                           ;888C22;
    JSL.L CODE_848F07                    ;888C24;
    LDA.B #$7C                           ;888C28;
    JSL.L CODE_8088A2                    ;888C2A;
    RTS                                  ;888C2E;

CODE_888C2F:
    STZ.B $03                            ;888C2F;
    JSL.L CODE_849086                    ;888C31;
    AND.B #$0F                           ;888C35;
    CMP.B #$08                           ;888C37;
    BCS CODE_888C3E                      ;888C39;
    STZ.B $02                            ;888C3B;
    RTS                                  ;888C3D;

CODE_888C3E:
    LDA.B #$02                           ;888C3E;
    STA.B $02                            ;888C40;
    RTS                                  ;888C42;

CODE_888C43:
    DEC A                                ;888C43;
    ASL A                                ;888C44;
    ASL A                                ;888C45;
    REP #$21                             ;888C46;
    AND.W #$00FF                         ;888C48;
    ADC.W #$C77F                         ;888C4B;
    STA.B $20                            ;888C4E;
    SEP #$20                             ;888C50;
    JSL.L CODE_849B03                    ;888C52;

CODE_888C56:
    RTS                                  ;888C56;

CODE_888C57:
    JSL.L CODE_848EEA                    ;888C57;
    LDA.B $0F                            ;888C5B;
    BEQ CODE_888C8E                      ;888C5D;
    BPL CODE_888C81                      ;888C5F;
    LDA.B $38                            ;888C61;
    INC A                                ;888C63;
    STA.B $38                            ;888C64;
    CMP.B #$03                           ;888C66;
    BCS CODE_888C7C                      ;888C68;
    JSR.W CODE_888EA4                    ;888C6A;
    BCC CODE_888C7C                      ;888C6D;
    LDA.B #$07                           ;888C6F;
    JSL.L CODE_848F07                    ;888C71;
    LDA.B #$7C                           ;888C75;
    JSL.L CODE_8088A2                    ;888C77;
    RTS                                  ;888C7B;

CODE_888C7C:
    STZ.B $02                            ;888C7C;
    STZ.B $03                            ;888C7E;
    RTS                                  ;888C80;

CODE_888C81:
    REP #$20                             ;888C81;
    LDA.W #$C77B                         ;888C83;
    STA.B $20                            ;888C86;
    SEP #$20                             ;888C88;
    JSL.L CODE_849B03                    ;888C8A;

CODE_888C8E:
    RTS                                  ;888C8E;

CODE_888C8F:
    LDX.B $03                            ;888C8F;
    JMP.W (PTR16_888C94,X)               ;888C91;

PTR16_888C94:
    dw CODE_888C9A                       ;888C94;
    dw CODE_888CC4                       ;888C96;
    dw CODE_888CE6                       ;888C98;

CODE_888C9A:
    LDA.B #$02                           ;888C9A;
    STA.B $03                            ;888C9C;
    LDA.B $11                            ;888C9E;
    ASL A                                ;888CA0;
    ASL A                                ;888CA1;
    REP #$20                             ;888CA2;
    LDA.W #$0100                         ;888CA4;
    BCC CODE_888CAC                      ;888CA7;
    LDA.W #$FF00                         ;888CA9;

CODE_888CAC:
    STA.B $1A                            ;888CAC;
    LDA.W #$0200                         ;888CAE;
    STA.B $1C                            ;888CB1;
    SEP #$20                             ;888CB3;
    LDA.B #$40                           ;888CB5;
    STA.B $1E                            ;888CB7;
    LDA.B #$FF                           ;888CB9;
    STA.B $2F                            ;888CBB;
    LDA.B #$02                           ;888CBD;
    JSL.L CODE_848F07                    ;888CBF;
    RTS                                  ;888CC3;

CODE_888CC4:
    JSL.L CODE_8281E8                    ;888CC4;
    JSL.L CODE_848EEA                    ;888CC8;
    REP #$20                             ;888CCC;
    LDA.W #$C771                         ;888CCE;
    STA.B $20                            ;888CD1;
    SEP #$20                             ;888CD3;
    JSL.L CODE_8491BE                    ;888CD5;
    LDA.B $2B                            ;888CD9;
    AND.B #$04                           ;888CDB;
    BEQ CODE_888CE5                      ;888CDD;
    LDA.B #$04                           ;888CDF;
    STA.B $03                            ;888CE1;
    STZ.B $2F                            ;888CE3;

CODE_888CE5:
    RTS                                  ;888CE5;

CODE_888CE6:
    JSL.L CODE_848EEA                    ;888CE6;
    LDA.B $0F                            ;888CEA;
    BPL CODE_888CF2                      ;888CEC;
    STZ.B $02                            ;888CEE;
    STZ.B $03                            ;888CF0;

CODE_888CF2:
    RTS                                  ;888CF2;

CODE_888CF3:
    JSL.L CODE_84A66D                    ;888CF3;
    BPL CODE_888D20                      ;888CF7;
    LDA.W $1F7A                          ;888CF9;
    CMP.B #$09                           ;888CFC;
    BCC CODE_888D1C                      ;888CFE;
    LDA.B #$1C                           ;888D00;
    JSL.L CODE_8087A2                    ;888D02;
    LDA.B #$F5                           ;888D06;
    LDY.B #$03                           ;888D08;
    JSL.L CODE_80887F                    ;888D0A;
    LDA.B #$17                           ;888D0E;
    STA.W $00C0                          ;888D10;
    STZ.W $00C1                          ;888D13;
    STZ.W $2131                          ;888D16;
    STZ.W $2130                          ;888D19;

CODE_888D1C:
    JML.L CODE_828398                    ;888D1C;

CODE_888D20:
    LDA.B $03                            ;888D20;
    CMP.B #$14                           ;888D22;
    BCS CODE_888D2E                      ;888D24;
    JSL.L CODE_848EEA                    ;888D26;
    JML.L CODE_8280B4                    ;888D2A;

CODE_888D2E:
    RTL                                  ;888D2E;

CODE_888D2F:
    LDA.B #$A0                           ;888D2F;
    STA.W $0B22                          ;888D31;
    STA.W $0B25                          ;888D34;
    STA.W $0B28                          ;888D37;
    STA.W $0B2B                          ;888D3A;
    STA.W $0B2E                          ;888D3D;
    STA.W $0B31                          ;888D40;
    STA.W $0B34                          ;888D43;
    STZ.W $0B37                          ;888D46;
    LDA.B $36                            ;888D49;
    INC A                                ;888D4B;
    CMP.B #$20                           ;888D4C;
    BCC CODE_888D52                      ;888D4E;
    LDA.B #$00                           ;888D50;

CODE_888D52:
    STA.B $36                            ;888D52;
    ASL A                                ;888D54;
    REP #$21                             ;888D55;
    AND.W #$00FF                         ;888D57;
    CLC                                  ;888D5A;
    ADC.W #$C7AF                         ;888D5B;
    STA.W $0B23                          ;888D5E;
    STA.W $0B26                          ;888D61;
    STA.W $0B29                          ;888D64;
    STA.W $0B2C                          ;888D67;
    STA.W $0B2F                          ;888D6A;
    STA.W $0B32                          ;888D6D;
    STA.W $0B35                          ;888D70;
    STA.W $0B38                          ;888D73;
    SEP #$20                             ;888D76;
    RTS                                  ;888D78;

CODE_888D79:
    LDX.B #$00                           ;888D79;

CODE_888D7B:
    LDA.W $0AA1,X                        ;888D7B;
    BEQ CODE_888D87                      ;888D7E;
    TXA                                  ;888D80;
    CLC                                  ;888D81;
    ADC.B #$07                           ;888D82;
    TAX                                  ;888D84;
    BRA CODE_888D7B                      ;888D85;

CODE_888D87:
    INC.W $0AA1,X                        ;888D87;
    LDA.B #$42                           ;888D8A;
    STA.W $0AA2,X                        ;888D8C;
    LDA.B #$0F                           ;888D8F;
    STA.W $0AA3,X                        ;888D91;
    LDA.B #$D2                           ;888D94;
    STA.W $0AA4,X                        ;888D96;
    LDA.B #$0A                           ;888D99;
    STA.W $0AA5,X                        ;888D9B;
    LDA.B #$00                           ;888D9E;
    STA.W $0AA6,X                        ;888DA0;
    LDA.B #$86                           ;888DA3;
    STA.W $0AA7,X                        ;888DA5;
    STX.B $35                            ;888DA8;
    RTS                                  ;888DAA;

CODE_888DAB:
    PHP                                  ;888DAB;
    PHD                                  ;888DAC;
    REP #$20                             ;888DAD;
    SEP #$10                             ;888DAF;
    LDA.W #$0000                         ;888DB1;
    TCD                                  ;888DB4;
    LDX.B #$1E                           ;888DB5;

CODE_888DB7:
    LDA.W $0480,X                        ;888DB7;
    AND.W #$001F                         ;888DBA;
    STA.B $00                            ;888DBD;
    LDA.W $0480,X                        ;888DBF;
    AND.W #$03E0                         ;888DC2;
    STA.B $02                            ;888DC5;
    LDA.W $0480,X                        ;888DC7;
    AND.W #$7C00                         ;888DCA;
    STA.B $04                            ;888DCD;
    LDA.W $04A0,X                        ;888DCF;
    AND.W #$001F                         ;888DD2;
    INC A                                ;888DD5;
    CMP.B $00                            ;888DD6;
    BCC CODE_888DDC                      ;888DD8;
    LDA.B $00                            ;888DDA;

CODE_888DDC:
    STA.B $06                            ;888DDC;
    LDA.W $04A0,X                        ;888DDE;
    AND.W #$03E0                         ;888DE1;
    CLC                                  ;888DE4;
    ADC.W #$0020                         ;888DE5;
    CMP.B $02                            ;888DE8;
    BCC CODE_888DEE                      ;888DEA;
    LDA.B $02                            ;888DEC;

CODE_888DEE:
    TSB.B $06                            ;888DEE;
    LDA.W $04A0,X                        ;888DF0;
    AND.W #$7C00                         ;888DF3;
    CLC                                  ;888DF6;
    ADC.W #$0400                         ;888DF7;
    CMP.B $04                            ;888DFA;
    BCC CODE_888E00                      ;888DFC;
    LDA.B $04                            ;888DFE;

CODE_888E00:
    ORA.B $06                            ;888E00;
    STA.W $04A0,X                        ;888E02;
    DEX                                  ;888E05;
    DEX                                  ;888E06;
    BPL CODE_888DB7                      ;888E07;
    INC.W $00A1                          ;888E09;
    PLD                                  ;888E0C;
    PLP                                  ;888E0D;
    RTS                                  ;888E0E;

CODE_888E0F:
    PHP                                  ;888E0F;
    PHD                                  ;888E10;
    REP #$20                             ;888E11;
    SEP #$10                             ;888E13;
    LDA.W #$0000                         ;888E15;
    TCD                                  ;888E18;
    LDX.B #$1E                           ;888E19;

CODE_888E1B:
    LDA.W $04A0,X                        ;888E1B;
    AND.W #$001F                         ;888E1E;
    BEQ CODE_888E24                      ;888E21;
    DEC A                                ;888E23;

CODE_888E24:
    STA.B $00                            ;888E24;
    LDA.W $04A0,X                        ;888E26;
    AND.W #$03E0                         ;888E29;
    BEQ CODE_888E32                      ;888E2C;
    SEC                                  ;888E2E;
    SBC.W #$0020                         ;888E2F;

CODE_888E32:
    TSB.B $00                            ;888E32;
    LDA.W $04A0,X                        ;888E34;
    AND.W #$7C00                         ;888E37;
    BEQ CODE_888E40                      ;888E3A;
    SEC                                  ;888E3C;
    SBC.W #$0400                         ;888E3D;

CODE_888E40:
    ORA.B $00                            ;888E40;
    STA.W $04A0,X                        ;888E42;
    DEX                                  ;888E45;
    DEX                                  ;888E46;
    BPL CODE_888E1B                      ;888E47;
    INC.W $00A1                          ;888E49;
    PLD                                  ;888E4C;
    PLP                                  ;888E4D;
    RTS                                  ;888E4E;

CODE_888E4F:
    JSL.L CODE_84AC9B                    ;888E4F;
    REP #$10                             ;888E53;
    LDX.W #$C79F                         ;888E55;
    STX.B $20                            ;888E58;
    LDX.W #$0BA8                         ;888E5A;
    JSL.L CODE_849C0E                    ;888E5D;
    BCC CODE_888E68                      ;888E61;
    SEP #$10                             ;888E63;
    LDA.B #$01                           ;888E65;
    RTS                                  ;888E67;

CODE_888E68:
    LDX.W #$C7A3                         ;888E68;
    STX.B $20                            ;888E6B;
    LDX.W #$0BA8                         ;888E6D;
    JSL.L CODE_849C0E                    ;888E70;
    BCC CODE_888E7B                      ;888E74;
    SEP #$10                             ;888E76;
    LDA.B #$02                           ;888E78;
    RTS                                  ;888E7A;

CODE_888E7B:
    LDX.W #$C7A7                         ;888E7B;
    STX.B $20                            ;888E7E;
    LDX.W #$0BA8                         ;888E80;
    JSL.L CODE_849C0E                    ;888E83;
    BCC CODE_888E8E                      ;888E87;
    SEP #$10                             ;888E89;
    LDA.B #$03                           ;888E8B;
    RTS                                  ;888E8D;

CODE_888E8E:
    LDX.W #$C7AB                         ;888E8E;
    STX.B $20                            ;888E91;
    LDX.W #$0BA8                         ;888E93;
    JSL.L CODE_849C0E                    ;888E96;
    SEP #$10                             ;888E9A;
    BCC CODE_888EA1                      ;888E9C;
    LDA.B #$04                           ;888E9E;
    RTS                                  ;888EA0;

CODE_888EA1:
    LDA.B #$00                           ;888EA1;
    RTS                                  ;888EA3;

CODE_888EA4:
    JSL.L CODE_84AC9B                    ;888EA4;
    REP #$10                             ;888EA8;
    LDX.W #$C77B                         ;888EAA;
    STX.B $20                            ;888EAD;
    LDX.W #$0BA8                         ;888EAF;
    JSL.L CODE_849C0E                    ;888EB2;
    SEP #$10                             ;888EB6;
    RTS                                  ;888EB8;

CODE_888EB9:
    REP #$20                             ;888EB9;
    LDA.B $05                            ;888EBB;
    STA.W $0000                          ;888EBD;
    LDA.B $08                            ;888EC0;
    CLC                                  ;888EC2;
    ADC.W #$0030                         ;888EC3;
    STA.W $0002                          ;888EC6;
    LDA.W $0BAD                          ;888EC9;
    STA.W $0004                          ;888ECC;
    LDA.W $0BB0                          ;888ECF;
    STA.W $0006                          ;888ED2;
    SEP #$20                             ;888ED5;
    JSL.L CODE_84A097                    ;888ED7;
    LSR A                                ;888EDB;
    SEC                                  ;888EDC;
    SBC.B #$04                           ;888EDD;
    BEQ CODE_888EEB                      ;888EDF;
    BMI CODE_888EEB                      ;888EE1;
    CMP.B #$08                           ;888EE3;
    BCC CODE_888EED                      ;888EE5;
    LDA.B #$07                           ;888EE7;
    BRA CODE_888EED                      ;888EE9;

CODE_888EEB:
    LDA.B #$01                           ;888EEB;

CODE_888EED:
    STA.W $0000                          ;888EED;
    LDY.B #$02                           ;888EF0;

CODE_888EF2:
    JSL.L CODE_828358                    ;888EF2;
    BNE CODE_888F21                      ;888EF6;
    INC.W $0000,X                        ;888EF8;
    LDA.B #$11                           ;888EFB;
    STA.W $000A,X                        ;888EFD;
    TYA                                  ;888F00;
    CLC                                  ;888F01;
    ADC.W $0000                          ;888F02;
    STA.W $000B,X                        ;888F05;
    REP #$20                             ;888F08;
    LDA.B $05                            ;888F0A;
    STA.W $0005,X                        ;888F0C;
    LDA.B $08                            ;888F0F;
    CLC                                  ;888F11;
    ADC.W #$0030                         ;888F12;
    STA.W $0008,X                        ;888F15;
    TDC                                  ;888F18;
    STA.W $000C,X                        ;888F19;
    SEP #$20                             ;888F1C;
    DEY                                  ;888F1E;
    BPL CODE_888EF2                      ;888F1F;

CODE_888F21:
    SEP #$30                             ;888F21;
    LDA.B #$79                           ;888F23;
    JSL.L CODE_8088A2                    ;888F25;
    RTS                                  ;888F29;

CODE_888F2A:
    LDX.B $01                            ;888F2A;
    JSR.W (PTR16_888F3C,X)               ;888F2C;
    JSL.L CODE_848FCA                    ;888F2F;
    LDA.B $11                            ;888F33;
    AND.B #$3F                           ;888F35;
    ORA.B $37                            ;888F37;
    STA.B $11                            ;888F39;
    RTL                                  ;888F3B;

PTR16_888F3C:
    dw CODE_888F42                       ;888F3C;
    dw CODE_888F91                       ;888F3E;
    dw CODE_8892D4                       ;888F40;

CODE_888F42:
    JSL.L CODE_82827D                    ;888F42;
    LDA.B #$07                           ;888F46;
    STA.B $10                            ;888F48;
    LDA.B #$00                           ;888F4A;
    LDX.B $0B                            ;888F4C;
    BEQ CODE_888F52                      ;888F4E;
    LDA.B #$08                           ;888F50;

CODE_888F52:
    STA.B $18                            ;888F52;
    STA.B $2F                            ;888F54;
    LDA.B #$04                           ;888F56;
    STA.B $12                            ;888F58;
    STZ.B $33                            ;888F5A;
    STZ.B $2B                            ;888F5C;
    STZ.B $36                            ;888F5E;
    LDA.B #$02                           ;888F60;
    STA.B $26                            ;888F62;
    LDA.B #$06                           ;888F64;
    STA.B $27                            ;888F66;
    REP #$20                             ;888F68;
    LDX.B #$00                           ;888F6A;
    LDA.W $0BAD                          ;888F6C;
    CMP.B $05                            ;888F6F;
    BMI CODE_888F75                      ;888F71;
    LDX.B #$40                           ;888F73;

CODE_888F75:
    STX.B $37                            ;888F75;
    LDA.W #$01C0                         ;888F77;
    BIT.B $36                            ;888F7A;
    BVS CODE_888F81                      ;888F7C;
    LDA.W #$FE40                         ;888F7E;

CODE_888F81:
    STA.B $1A                            ;888F81;
    LDA.W #$AA2D                         ;888F83;
    STA.B $31                            ;888F86;
    SEP #$20                             ;888F88;
    LDA.B #$00                           ;888F8A;
    JSL.L CODE_848F07                    ;888F8C;
    RTS                                  ;888F90;

CODE_888F91:
    LDX.B $02                            ;888F91;
    JSR.W (PTR16_889011,X)               ;888F93;
    JSL.L CODE_8280B4                    ;888F96;
    JSL.L CODE_82806E                    ;888F9A;
    BCC CODE_888FA5                      ;888F9E;
    JSL.L CODE_828387                    ;888FA0;
    RTS                                  ;888FA4;

CODE_888FA5:
    REP #$10                             ;888FA5;
    LDX.W #$C8A3                         ;888FA7;
    STX.B $20                            ;888FAA;
    JSL.L CODE_849B03                    ;888FAC;
    LDA.B $36                            ;888FB0;
    BNE CODE_888FE9                      ;888FB2;
    REP #$10                             ;888FB4;
    LDX.W #$C8A7                         ;888FB6;
    STX.B $20                            ;888FB9;
    JSL.L CODE_849B43                    ;888FBB;
    BEQ CODE_888FD6                      ;888FBF;
    LDA.B $27                            ;888FC1;
    AND.B #$7F                           ;888FC3;
    BEQ CODE_889006                      ;888FC5;
    LDA.B #$0E                           ;888FC7;
    TRB.B $11                            ;888FC9;
    LDA.B #$02                           ;888FCB;
    STA.B $01                            ;888FCD;
    LDA.B #$08                           ;888FCF;
    STA.B $02                            ;888FD1;
    STZ.B $03                            ;888FD3;
    RTS                                  ;888FD5;

CODE_888FD6:
    LDA.B $2B                            ;888FD6;
    BIT.B #$04                           ;888FD8;
    BEQ CODE_888FE9                      ;888FDA;
    LDA.B $2E                            ;888FDC;
    CMP.B #$3E                           ;888FDE;
    BEQ CODE_888FE6                      ;888FE0;
    CMP.B #$3F                           ;888FE2;
    BNE CODE_888FE9                      ;888FE4;

CODE_888FE6:
    JMP.W CODE_8892F6                    ;888FE6;

CODE_888FE9:
    REP #$10                             ;888FE9;
    LDX.W #$C8AB                         ;888FEB;
    STX.B $20                            ;888FEE;
    LDA.L $7F8307                        ;888FF0;
    STA.B $11                            ;888FF4;
    JSL.L CODE_849B43                    ;888FF6;
    BEQ CODE_88900C                      ;888FFA;
    LDA.B #$0E                           ;888FFC;
    TRB.B $11                            ;888FFE;
    LDA.B $27                            ;889000;
    AND.B #$7F                           ;889002;
    BNE CODE_88900C                      ;889004;

CODE_889006:
    LDA.B #$04                           ;889006;
    STA.B $01                            ;889008;
    STZ.B $02                            ;88900A;

CODE_88900C:
    JSL.L CODE_8491BE                    ;88900C;
    RTS                                  ;889010;

PTR16_889011:
    dw CODE_88901D                       ;889011;
    dw CODE_8890FB                       ;889013;
    dw CODE_88918E                       ;889015;
    dw CODE_8891D0                       ;889017;
    dw CODE_8891FB                       ;889019;
    dw CODE_88927B                       ;88901B;

CODE_88901D:
    LDX.B $03                            ;88901D;
    JMP.W (PTR16_889022,X)               ;88901F;

PTR16_889022:
    dw CODE_889028                       ;889022;
    dw CODE_88904D                       ;889024;
    dw CODE_8890B2                       ;889026;

CODE_889028:
    LDA.B #$02                           ;889028;
    STA.B $03                            ;88902A;
    JSL.L CODE_849ACD                    ;88902C;
    TAX                                  ;889030;
    LDA.W DATA8_86C8C1,X                 ;889031;
    STA.B $1F                            ;889034;
    STZ.B $1E                            ;889036;
    STZ.B $1A                            ;889038;
    STZ.B $1B                            ;88903A;
    STZ.B $1C                            ;88903C;
    STZ.B $1D                            ;88903E;
    LDA.B #$00                           ;889040;
    JSL.L CODE_848F07                    ;889042;
    LDA.B #$FF                           ;889046;
    STA.B $35                            ;889048;
    JMP.W CODE_889383                    ;88904A;

CODE_88904D:
    LDA.B $2B                            ;88904D;
    BIT.B #$04                           ;88904F;
    BNE CODE_889056                      ;889051;
    JMP.W CODE_8892EF                    ;889053;

CODE_889056:
    BIT.B #$03                           ;889056;
    BEQ CODE_88905D                      ;889058;
    JMP.W CODE_8892FD                    ;88905A;

CODE_88905D:
    BIT.B $37                            ;88905D;
    BVS CODE_889067                      ;88905F;
    JSL.L CODE_828174                    ;889061;
    BRA CODE_88906B                      ;889065;

CODE_889067:
    JSL.L CODE_828195                    ;889067;

CODE_88906B:
    LDA.B $33                            ;88906B;
    BEQ CODE_88907A                      ;88906D;
    JSL.L CODE_849AAB                    ;88906F;
    CMP.B #$04                           ;889073;
    BNE CODE_88907A                      ;889075;
    JMP.W CODE_8892E8                    ;889077;

CODE_88907A:
    JSR.W CODE_889383                    ;88907A;
    JSL.L CODE_849ACD                    ;88907D;
    ASL A                                ;889081;
    TAX                                  ;889082;
    REP #$20                             ;889083;
    LDA.W DATA8_86C8B5,X                 ;889085;
    BIT.B $36                            ;889088;
    BVS CODE_889096                      ;88908A;
    EOR.W #$FFFF                         ;88908C;
    INC A                                ;88908F;
    CMP.B $1A                            ;889090;
    BMI CODE_8890A3                      ;889092;
    BRA CODE_88909A                      ;889094;

CODE_889096:
    CMP.B $1A                            ;889096;
    BPL CODE_8890A3                      ;889098;

CODE_88909A:
    STA.B $1A                            ;88909A;
    SEP #$20                             ;88909C;
    LDA.B #$04                           ;88909E;
    STA.B $03                            ;8890A0;
    RTS                                  ;8890A2;

CODE_8890A3:
    SEP #$20                             ;8890A3;
    JSR.W CODE_88930B                    ;8890A5;
    BNE CODE_8890AD                      ;8890A8;
    JMP.W CODE_8892FD                    ;8890AA;

CODE_8890AD:
    JSL.L CODE_848EEA                    ;8890AD;
    RTS                                  ;8890B1;

CODE_8890B2:
    LDA.B $2B                            ;8890B2;
    BIT.B #$04                           ;8890B4;
    BNE CODE_8890BB                      ;8890B6;
    JMP.W CODE_8892EF                    ;8890B8;

CODE_8890BB:
    BIT.B #$03                           ;8890BB;
    BEQ CODE_8890C2                      ;8890BD;
    JMP.W CODE_889304                    ;8890BF;

CODE_8890C2:
    LDA.B $33                            ;8890C2;
    BEQ CODE_8890D1                      ;8890C4;
    JSL.L CODE_849AAB                    ;8890C6;
    CMP.B #$04                           ;8890CA;
    BNE CODE_8890D1                      ;8890CC;
    JMP.W CODE_8892E8                    ;8890CE;

CODE_8890D1:
    JSR.W CODE_889338                    ;8890D1;
    REP #$20                             ;8890D4;
    LDX.B #$00                           ;8890D6;
    LDA.W $0BAD                          ;8890D8;
    CMP.B $05                            ;8890DB;
    BPL CODE_8890E1                      ;8890DD;
    LDX.B #$40                           ;8890DF;

CODE_8890E1:
    CPX.B $37                            ;8890E1;
    SEP #$20                             ;8890E3;
    BNE CODE_8890EA                      ;8890E5;
    JMP.W CODE_8892FD                    ;8890E7;

CODE_8890EA:
    JSR.W CODE_88930B                    ;8890EA;
    BNE CODE_8890F2                      ;8890ED;
    JMP.W CODE_8892FD                    ;8890EF;

CODE_8890F2:
    JSL.L CODE_82823E                    ;8890F2;
    JSL.L CODE_848EEA                    ;8890F6;
    RTS                                  ;8890FA;

CODE_8890FB:
    LDX.B $03                            ;8890FB;
    JMP.W (PTR16_889100,X)               ;8890FD;

PTR16_889100:
    dw CODE_889106                       ;889100;
    dw CODE_889138                       ;889102;
    dw CODE_889176                       ;889104;

CODE_889106:
    LDA.B #$02                           ;889106;
    STA.B $03                            ;889108;
    STZ.B $33                            ;88910A;
    REP #$30                             ;88910C;
    LDX.W #$01C0                         ;88910E;
    BIT.B $36                            ;889111;
    BVS CODE_889118                      ;889113;
    LDX.W #$FE40                         ;889115;

CODE_889118:
    LDA.B $1A                            ;889118;
    BPL CODE_889120                      ;88911A;
    EOR.W #$FFFF                         ;88911C;
    INC A                                ;88911F;

CODE_889120:
    CMP.W #$01C0                         ;889120;
    BMI CODE_889127                      ;889123;
    STX.B $1A                            ;889125;

CODE_889127:
    STZ.B $1C                            ;889127;
    SEP #$30                             ;889129;
    LDA.B #$08                           ;88912B;
    STA.B $1F                            ;88912D;
    STZ.B $1E                            ;88912F;
    LDA.B #$01                           ;889131;
    JSL.L CODE_848F07                    ;889133;
    RTS                                  ;889137;

CODE_889138:
    LDA.B $2B                            ;889138;
    BIT.B #$04                           ;88913A;
    BNE CODE_889141                      ;88913C;
    JMP.W CODE_8892EF                    ;88913E;

CODE_889141:
    BIT.B #$03                           ;889141;
    BNE CODE_889164                      ;889143;
    BIT.B $37                            ;889145;
    BVC CODE_88914F                      ;889147;
    JSL.L CODE_828174                    ;889149;
    BRA CODE_889153                      ;88914D;

CODE_88914F:
    JSL.L CODE_828195                    ;88914F;

CODE_889153:
    REP #$20                             ;889153;
    LDA.B $1A                            ;889155;
    BPL CODE_88915D                      ;889157;
    EOR.W #$FFFF                         ;889159;
    INC A                                ;88915C;

CODE_88915D:
    CMP.W #$0040                         ;88915D;
    SEP #$20                             ;889160;
    BPL CODE_88916D                      ;889162;

CODE_889164:
    LDA.B #$04                           ;889164;
    STA.B $03                            ;889166;
    STZ.B $1A                            ;889168;
    STZ.B $1B                            ;88916A;
    RTS                                  ;88916C;

CODE_88916D:
    LDA.B $0F                            ;88916D;
    BNE CODE_889175                      ;88916F;
    JSL.L CODE_848EEA                    ;889171;

CODE_889175:
    RTS                                  ;889175;

CODE_889176:
    LDA.B $0F                            ;889176;
    BPL CODE_889189                      ;889178;
    LDA.B $37                            ;88917A;
    EOR.B #$40                           ;88917C;
    STA.B $37                            ;88917E;
    LDA.B #$00                           ;889180;
    JSL.L CODE_848F07                    ;889182;
    JMP.W CODE_8892E3                    ;889186;

CODE_889189:
    JSL.L CODE_848EEA                    ;889189;
    RTS                                  ;88918D;

CODE_88918E:
    LDX.B $03                            ;88918E;
    BNE CODE_8891A8                      ;889190;
    INC.B $03                            ;889192;
    DEC.B $2F                            ;889194;
    STZ.B $33                            ;889196;
    REP #$20                             ;889198;
    LDA.W #$0300                         ;88919A;
    STA.B $1C                            ;88919D;
    SEP #$20                             ;88919F;
    STZ.B $1F                            ;8891A1;
    LDA.B #$40                           ;8891A3;
    STA.B $1E                            ;8891A5;
    RTS                                  ;8891A7;

CODE_8891A8:
    LDA.B $2B                            ;8891A8;
    BIT.B #$04                           ;8891AA;
    BEQ CODE_8891C7                      ;8891AC;
    REP #$20                             ;8891AE;
    LDA.B $1C                            ;8891B0;
    BPL CODE_8891B8                      ;8891B2;
    EOR.W #$FFFF                         ;8891B4;
    INC A                                ;8891B7;

CODE_8891B8:
    LSR A                                ;8891B8;
    STA.B $1C                            ;8891B9;
    CMP.W #$0100                         ;8891BB;
    SEP #$20                             ;8891BE;
    BPL CODE_8891C7                      ;8891C0;
    STZ.B $2F                            ;8891C2;
    JMP.W CODE_8892E3                    ;8891C4;

CODE_8891C7:
    JSL.L CODE_828174                    ;8891C7;
    JSL.L CODE_848EEA                    ;8891CB;
    RTS                                  ;8891CF;

CODE_8891D0:
    LDX.B $03                            ;8891D0;
    BNE CODE_8891E7                      ;8891D2;
    REP #$20                             ;8891D4;
    STZ.B $1A                            ;8891D6;
    STZ.B $1C                            ;8891D8;
    SEP #$20                             ;8891DA;
    STZ.B $1F                            ;8891DC;
    LDA.B #$40                           ;8891DE;
    STA.B $1E                            ;8891E0;
    DEC.B $2F                            ;8891E2;
    INC.B $03                            ;8891E4;
    RTS                                  ;8891E6;

CODE_8891E7:
    LDA.B $2B                            ;8891E7;
    BIT.B #$04                           ;8891E9;
    BEQ CODE_8891F2                      ;8891EB;
    STZ.B $2F                            ;8891ED;
    JMP.W CODE_8892E3                    ;8891EF;

CODE_8891F2:
    JSL.L CODE_828174                    ;8891F2;
    JSL.L CODE_848EEA                    ;8891F6;
    RTS                                  ;8891FA;

CODE_8891FB:
    LDX.B $03                            ;8891FB;
    JMP.W (PTR16_889200,X)               ;8891FD;

PTR16_889200:
    dw CODE_889206                       ;889200;
    dw CODE_88922F                       ;889202;
    dw CODE_889241                       ;889204;

CODE_889206:
    LDA.B #$04                           ;889206;
    STA.B $03                            ;889208;
    STZ.B $37                            ;88920A;
    INC.B $36                            ;88920C;
    LDA.B $2B                            ;88920E;
    BIT.B #$04                           ;889210;
    BNE CODE_889228                      ;889212;
    REP #$20                             ;889214;
    STZ.B $1A                            ;889216;
    STZ.B $1C                            ;889218;
    SEP #$20                             ;88921A;
    STZ.B $1F                            ;88921C;
    LDA.B #$40                           ;88921E;
    STA.B $1E                            ;889220;
    LDA.B #$02                           ;889222;
    STA.B $03                            ;889224;
    STA.B $2F                            ;889226;

CODE_889228:
    LDA.B #$02                           ;889228;
    JSL.L CODE_848F07                    ;88922A;
    RTS                                  ;88922E;

CODE_88922F:
    LDA.B $2B                            ;88922F;
    BIT.B #$04                           ;889231;
    BEQ CODE_88923C                      ;889233;
    LDA.B #$04                           ;889235;
    STA.B $03                            ;889237;
    STZ.B $2F                            ;889239;
    RTS                                  ;88923B;

CODE_88923C:
    JSL.L CODE_828174                    ;88923C;
    RTS                                  ;889240;

CODE_889241:
    LDA.B $2B                            ;889241;
    BIT.B #$04                           ;889243;
    BNE CODE_88925C                      ;889245;
    REP #$20                             ;889247;
    STZ.B $1A                            ;889249;
    STZ.B $1C                            ;88924B;
    SEP #$20                             ;88924D;
    STZ.B $1F                            ;88924F;
    LDA.B #$40                           ;889251;
    STA.B $1E                            ;889253;
    LDA.B #$02                           ;889255;
    STA.B $03                            ;889257;
    STA.B $2F                            ;889259;
    RTS                                  ;88925B;

CODE_88925C:
    LDA.B $0F                            ;88925C;
    AND.B #$40                           ;88925E;
    STA.B $37                            ;889260;
    REP #$20                             ;889262;
    LDA.W #$0155                         ;889264;
    BIT.B $36                            ;889267;
    BVS CODE_88926E                      ;889269;
    LDA.W #$FEAB                         ;88926B;

CODE_88926E:
    STA.B $1A                            ;88926E;
    SEP #$20                             ;889270;
    JSL.L CODE_82823E                    ;889272;
    JSL.L CODE_848EEA                    ;889276;
    RTS                                  ;88927A;

CODE_88927B:
    LDX.B $03                            ;88927B;
    BNE CODE_88929F                      ;88927D;
    INC.B $03                            ;88927F;
    DEC.B $2F                            ;889281;
    REP #$20                             ;889283;
    LDA.B $1A                            ;889285;
    EOR.W #$FFFF                         ;889287;
    INC A                                ;88928A;
    BPL CODE_88928E                      ;88928B;
    SEC                                  ;88928D;

CODE_88928E:
    ROR A                                ;88928E;
    STA.B $1A                            ;88928F;
    LDA.W #$0300                         ;889291;
    STA.B $1C                            ;889294;
    SEP #$20                             ;889296;
    STZ.B $1F                            ;889298;
    LDA.B #$40                           ;88929A;
    STA.B $1E                            ;88929C;
    RTS                                  ;88929E;

CODE_88929F:
    LDA.B $2B                            ;88929F;
    BIT.B #$04                           ;8892A1;
    BEQ CODE_8892CB                      ;8892A3;
    REP #$20                             ;8892A5;
    LDA.B $1C                            ;8892A7;
    EOR.W #$FFFF                         ;8892A9;
    INC A                                ;8892AC;
    CMP.W #$0100                         ;8892AD;
    BPL CODE_8892C3                      ;8892B0;
    STZ.B $1C                            ;8892B2;
    STZ.B $1A                            ;8892B4;
    SEP #$20                             ;8892B6;
    STZ.B $1E                            ;8892B8;
    LDA.B #$04                           ;8892BA;
    STA.B $1F                            ;8892BC;
    STZ.B $2F                            ;8892BE;
    JMP.W CODE_8892E3                    ;8892C0;

CODE_8892C3:
    SEC                                  ;8892C3;
    SBC.W #$0080                         ;8892C4;
    STA.B $1C                            ;8892C7;
    SEP #$20                             ;8892C9;

CODE_8892CB:
    JSL.L CODE_828174                    ;8892CB;
    JSL.L CODE_848EEA                    ;8892CF;
    RTS                                  ;8892D3;

CODE_8892D4:
    LDA.B #$00                           ;8892D4;
    JSL.L CODE_84A37F                    ;8892D6;
    JSL.L CODE_84A4AB                    ;8892DA;
    JSL.L CODE_828387                    ;8892DE;
    RTS                                  ;8892E2;

CODE_8892E3:
    STZ.B $02                            ;8892E3;
    STZ.B $03                            ;8892E5;
    RTS                                  ;8892E7;

CODE_8892E8:
    LDA.B #$04                           ;8892E8;
    STA.B $02                            ;8892EA;
    STZ.B $03                            ;8892EC;
    RTS                                  ;8892EE;

CODE_8892EF:
    LDA.B #$06                           ;8892EF;
    STA.B $02                            ;8892F1;
    STZ.B $03                            ;8892F3;
    RTS                                  ;8892F5;

CODE_8892F6:
    LDA.B #$08                           ;8892F6;
    STA.B $02                            ;8892F8;
    STZ.B $03                            ;8892FA;
    RTS                                  ;8892FC;

CODE_8892FD:
    LDA.B #$02                           ;8892FD;
    STA.B $02                            ;8892FF;
    STZ.B $03                            ;889301;
    RTS                                  ;889303;

CODE_889304:
    LDA.B #$0A                           ;889304;
    STA.B $02                            ;889306;
    STZ.B $03                            ;889308;
    RTS                                  ;88930A;

CODE_88930B:
    LDA.B #$20                           ;88930B;
    BIT.B $37                            ;88930D;
    BVS CODE_889313                      ;88930F;
    LDA.B #$E0                           ;889311;

CODE_889313:
    STA.B $29                            ;889313;
    LDA.B #$10                           ;889315;
    STA.B $2A                            ;889317;
    JSL.L CODE_8490A0                    ;889319;
    CMP.B #$00                           ;88931D;
    BNE CODE_889337                      ;88931F;
    LDA.B #$20                           ;889321;
    STA.B $2A                            ;889323;
    JSL.L CODE_8490A0                    ;889325;
    CMP.B #$00                           ;889329;
    BNE CODE_889337                      ;88932B;
    LDA.B #$30                           ;88932D;
    STA.B $2A                            ;88932F;
    JSL.L CODE_8490A0                    ;889331;
    CMP.B #$00                           ;889335;

CODE_889337:
    RTS                                  ;889337;

CODE_889338:
    JSL.L CODE_849ACD                    ;889338;
    TAX                                  ;88933C;
    STA.B $34                            ;88933D;
    CPX.B $35                            ;88933F;
    BEQ CODE_88937E                      ;889341;
    REP #$20                             ;889343;
    CPX.B #$04                           ;889345;
    BPL CODE_88936E                      ;889347;
    AND.W #$00FF                         ;889349;
    ASL A                                ;88934C;
    TAX                                  ;88934D;
    LDA.W DATA8_86C8B5,X                 ;88934E;
    BIT.B $36                            ;889351;
    BVS CODE_889359                      ;889353;
    EOR.W #$FFFF                         ;889355;
    INC A                                ;889358;

CODE_889359:
    LDX.B $34                            ;889359;
    LDY.W DATA8_86C8C7,X                 ;88935B;
    BMI CODE_88937A                      ;88935E;
    STA.B $1A                            ;889360;
    SEP #$20                             ;889362;
    LDA.B #$03                           ;889364;
    STA.B $33                            ;889366;
    JSL.L CODE_848F07                    ;889368;
    BRA CODE_88937E                      ;88936C;

CODE_88936E:
    STZ.B $33                            ;88936E;
    LDA.W #$01C0                         ;889370;
    BIT.B $36                            ;889373;
    BVS CODE_88937A                      ;889375;
    LDA.W #$FE40                         ;889377;

CODE_88937A:
    STA.B $1A                            ;88937A;
    SEP #$20                             ;88937C;

CODE_88937E:
    LDA.B $34                            ;88937E;
    STA.B $35                            ;889380;
    RTS                                  ;889382;

CODE_889383:
    JSL.L CODE_849ACD                    ;889383;
    STA.B $34                            ;889387;
    CMP.B $35                            ;889389;
    BEQ CODE_88939F                      ;88938B;
    STZ.B $33                            ;88938D;
    CMP.B #$04                           ;88938F;
    BPL CODE_88939F                      ;889391;
    BIT.B #$01                           ;889393;
    BEQ CODE_88939F                      ;889395;
    LDA.B #$03                           ;889397;
    STA.B $33                            ;889399;
    JSL.L CODE_848F07                    ;88939B;

CODE_88939F:
    LDA.B $34                            ;88939F;
    STA.B $35                            ;8893A1;
    RTS                                  ;8893A3;

CODE_8893A4:
    LDX.B $01                            ;8893A4;
    JMP.W (PTR16_8893A9,X)               ;8893A6;

PTR16_8893A9:
    dw CODE_8893AF                       ;8893A9;
    dw CODE_889439                       ;8893AB;
    dw CODE_889718                       ;8893AD;

CODE_8893AF:
    LDX.B $02                            ;8893AF;
    JMP.W (PTR16_8893B4,X)               ;8893B1;

PTR16_8893B4:
    dw CODE_8893BA                       ;8893B4;
    dw CODE_8893FC                       ;8893B6;
    dw CODE_889415                       ;8893B8;

CODE_8893BA:
    LDA.B #$02                           ;8893BA;
    STA.B $02                            ;8893BC;
    LDA.B #$FA                           ;8893BE;
    JSL.L CODE_84A311                    ;8893C0;
    LDA.B #$18                           ;8893C4;
    JSL.L CODE_8088A2                    ;8893C6;
    LDA.B #$11                           ;8893CA;
    STA.W $00C0                          ;8893CC;
    STZ.B $0E                            ;8893CF;
    LDA.B #$1E                           ;8893D1;
    STA.B $39                            ;8893D3;
    STZ.B $04                            ;8893D5;
    STZ.B $07                            ;8893D7;
    REP #$20                             ;8893D9;
    LDA.W #$FFFF                         ;8893DB;
    STA.B $37                            ;8893DE;
    LDA.W #$1B80                         ;8893E0;
    STA.B $05                            ;8893E3;
    LDA.W #$0100                         ;8893E5;
    STA.B $08                            ;8893E8;
    LDA.W #$0B20                         ;8893EA;
    STA.B $12                            ;8893ED;
    LDA.W #$0150                         ;8893EF;
    STA.B $14                            ;8893F2;
    TDC                                  ;8893F4;
    STA.W $1F2E                          ;8893F5;
    JML.L CODE_80E02E                    ;8893F8;

CODE_8893FC:
    LDA.W $1F27                          ;8893FC;
    BEQ CODE_889402                      ;8893FF;
    RTL                                  ;889401;

CODE_889402:
    LDA.B #$04                           ;889402;
    STA.B $02                            ;889404;
    REP #$21                             ;889406;
    LDA.W $1E8D                          ;889408;
    ADC.W #$0100                         ;88940B;
    STA.W $1E8D                          ;88940E;
    JML.L CODE_80E02E                    ;889411;

CODE_889415:
    LDA.W $1F27                          ;889415;
    BEQ CODE_88941B                      ;889418;
    RTL                                  ;88941A;

CODE_88941B:
    LDA.B #$02                           ;88941B;
    STA.B $01                            ;88941D;
    STZ.B $02                            ;88941F;
    REP #$21                             ;889421;
    LDA.W $1E8D                          ;889423;
    ADC.W #$FF00                         ;889426;
    STA.W $1E8D                          ;889429;
    LDX.B #$13                           ;88942C;
    STX.W $00C0                          ;88942E;
    JSL.L CODE_80E01E                    ;889431;
    INC.W $1E88                          ;889435;
    RTL                                  ;889438;

CODE_889439:
    DEC.B $39                            ;889439;
    BNE CODE_889452                      ;88943B;
    LDA.B #$1E                           ;88943D;
    STA.B $39                            ;88943F;
    REP #$20                             ;889441;
    LDA.B $08                            ;889443;
    CMP.W #$0100                         ;889445;
    SEP #$20                             ;889448;
    BCC CODE_889452                      ;88944A;
    LDA.B #$19                           ;88944C;
    JSL.L CODE_8088A2                    ;88944E;

CODE_889452:
    LDX.B $02                            ;889452;
    JSR.W (PTR16_889499,X)               ;889454;
    SEP #$20                             ;889457;
    LDA.B $02                            ;889459;
    CMP.B #$0A                           ;88945B;
    BEQ CODE_88946F                      ;88945D;
    LDA.B #$01                           ;88945F;
    CMP.B $0E                            ;889461;
    BCS CODE_88946F                      ;889463;
    LDA.B #$0A                           ;889465;
    STA.B $02                            ;889467;
    STZ.B $03                            ;889469;
    STZ.B $3B                            ;88946B;
    STZ.B $3C                            ;88946D;

CODE_88946F:
    REP #$20                             ;88946F;
    JSR.W CODE_889719                    ;889471;
    LDA.W $0B9C                          ;889474;
    LSR A                                ;889477;
    BCS CODE_889488                      ;889478;
    LDA.B $08                            ;88947A;
    ADC.B $37                            ;88947C;
    STA.B $08                            ;88947E;
    LDA.B $37                            ;889480;
    EOR.W #$FFFF                         ;889482;
    INC A                                ;889485;
    STA.B $37                            ;889486;

CODE_889488:
    LDA.W $1E8D                          ;889488;
    STA.W $1EAA                          ;88948B;
    LDA.W $1E90                          ;88948E;
    STA.W $1EAC                          ;889491;
    TDC                                  ;889494;
    STA.W $1F2E                          ;889495;
    RTL                                  ;889498;

PTR16_889499:
    dw CODE_8894A5                       ;889499;
    dw CODE_8894B3                       ;88949B;
    dw CODE_8894CC                       ;88949D;
    dw CODE_8894F8                       ;88949F;
    dw CODE_889511                       ;8894A1;
    dw CODE_889558                       ;8894A3;

CODE_8894A5:
    LDA.B #$02                           ;8894A5;
    STA.B $02                            ;8894A7;
    REP #$20                             ;8894A9;
    STZ.B $1A                            ;8894AB;
    LDA.W #$FF80                         ;8894AD;
    STA.B $1C                            ;8894B0;
    RTS                                  ;8894B2;

CODE_8894B3:
    JSL.L CODE_82825D                    ;8894B3;
    REP #$20                             ;8894B7;
    LDA.B $08                            ;8894B9;
    CMP.W #$0140                         ;8894BB;
    BCC CODE_8894C9                      ;8894BE;
    LDX.B #$04                           ;8894C0;
    STX.B $02                            ;8894C2;
    LDA.W #$0078                         ;8894C4;
    STA.B $35                            ;8894C7;

CODE_8894C9:
    SEP #$20                             ;8894C9;
    RTS                                  ;8894CB;

CODE_8894CC:
    REP #$31                             ;8894CC;
    LDX.W #$0160                         ;8894CE;
    LDA.B $05                            ;8894D1;
    ADC.W #$FFA0                         ;8894D3;
    CMP.W $0BAD                          ;8894D6;
    BCC CODE_8894DE                      ;8894D9;
    LDX.W #$FEA0                         ;8894DB;

CODE_8894DE:
    STX.B $1A                            ;8894DE;
    JSL.L CODE_849086                    ;8894E0;
    AND.W #$0006                         ;8894E4;
    TAX                                  ;8894E7;
    LDA.W DATA8_86CB06,X                 ;8894E8;
    STA.B $33                            ;8894EB;
    SEP #$10                             ;8894ED;
    LDX.B #$06                           ;8894EF;
    STX.B $02                            ;8894F1;
    JSL.L CODE_82823E                    ;8894F3;
    RTS                                  ;8894F7;

CODE_8894F8:
    REP #$20                             ;8894F8;
    DEC.B $33                            ;8894FA;
    BNE CODE_889503                      ;8894FC;
    LDX.B #$04                           ;8894FE;
    STX.B $02                            ;889500;
    RTS                                  ;889502;

CODE_889503:
    DEC.B $35                            ;889503;
    BNE CODE_88950C                      ;889505;
    LDX.B #$08                           ;889507;
    STX.B $02                            ;889509;
    RTS                                  ;88950B;

CODE_88950C:
    JSL.L CODE_82823E                    ;88950C;
    RTS                                  ;889510;

CODE_889511:
    LDA.B #$11                           ;889511;
    STA.B $0A                            ;889513;
    JSL.L CODE_84A1D0                    ;889515;
    LDA.B #$1A                           ;889519;
    STA.B $0A                            ;88951B;
    CPY.B #$04                           ;88951D;
    BNE CODE_889524                      ;88951F;
    JMP.W CODE_88954D                    ;889521;

CODE_889524:
    JSL.L CODE_828321                    ;889524;
    BNE CODE_88954D                      ;889528;
    INC.W $0000,X                        ;88952A;
    LDA.B #$11                           ;88952D;
    STA.W $000A,X                        ;88952F;
    LDA.B #$80                           ;889532;
    STA.W $000B,X                        ;889534;
    REP #$20                             ;889537;
    TDC                                  ;889539;
    STA.W $000C,X                        ;88953A;
    LDA.B $05                            ;88953D;
    STA.W $0005,X                        ;88953F;
    LDA.B $08                            ;889542;
    SEC                                  ;889544;
    SBC.W #$0030                         ;889545;
    STA.W $0008,X                        ;889548;
    SEP #$20                             ;88954B;

CODE_88954D:
    SEP #$10                             ;88954D;
    LDA.B #$F0                           ;88954F;
    STA.B $35                            ;889551;
    LDA.B #$06                           ;889553;
    STA.B $02                            ;889555;
    RTS                                  ;889557;

CODE_889558:
    LDX.B $03                            ;889558;
    JSR.W (PTR16_889572,X)               ;88955A;
    REP #$30                             ;88955D;
    LDX.B $3B                            ;88955F;
    BEQ CODE_88956F                      ;889561;
    LDA.B $08                            ;889563;
    CMP.W #$0100                         ;889565;
    BCS CODE_88956F                      ;889568;
    LDA.W $0005,X                        ;88956A;
    STA.B $05                            ;88956D;

CODE_88956F:
    SEP #$30                             ;88956F;
    RTS                                  ;889571;

PTR16_889572:
    dw CODE_88958C                       ;889572;
    dw CODE_8895A2                       ;889574;
    dw CODE_8895DC                       ;889576;
    dw CODE_889614                       ;889578;
    dw CODE_88963C                       ;88957A;
    dw CODE_889654                       ;88957C;
    dw CODE_88966B                       ;88957E;
    dw CODE_889678                       ;889580;
    dw CODE_88968C                       ;889582;
    dw CODE_8896A7                       ;889584;
    dw CODE_8896C3                       ;889586;
    dw CODE_8896E3                       ;889588;
    dw CODE_88970E                       ;88958A;

CODE_88958C:
    LDA.B #$11                           ;88958C;
    STA.B $0A                            ;88958E;
    JSL.L CODE_84A1D0                    ;889590;
    LDA.B #$1A                           ;889594;
    STA.B $0A                            ;889596;
    TYA                                  ;889598;
    BNE CODE_8895A1                      ;889599;
    STZ.B $07                            ;88959B;
    LDA.B #$02                           ;88959D;
    STA.B $03                            ;88959F;

CODE_8895A1:
    RTS                                  ;8895A1;

CODE_8895A2:
    LDA.B #$04                           ;8895A2;
    STA.B $03                            ;8895A4;
    STA.B $3A                            ;8895A6;
    STZ.W $0C00                          ;8895A8;
    STZ.W $0C03                          ;8895AB;
    LDA.B #$17                           ;8895AE;
    JSL.L CODE_8088CD                    ;8895B0;
    REP #$31                             ;8895B4;
    LDA.W $0BDB                          ;8895B6;
    AND.W #$00FF                         ;8895B9;
    ADC.W #$0100                         ;8895BC;
    TAY                                  ;8895BF;
    JSL.L CODE_828011                    ;8895C0;
    SEP #$30                             ;8895C4;
    LDA.B #$40                           ;8895C6;
    STA.W $0C11                          ;8895C8;
    JSL.L CODE_849FE6                    ;8895CB;
    LDY.B #$02                           ;8895CF;
    LDA.B #$F6                           ;8895D1;
    JSL.L CODE_80887F                    ;8895D3;
    LDA.B #$3C                           ;8895D7;
    STA.B $33                            ;8895D9;
    RTS                                  ;8895DB;

CODE_8895DC:
    DEC.B $33                            ;8895DC;
    BNE CODE_8895F0                      ;8895DE;
    LDA.B #$06                           ;8895E0;
    STA.B $03                            ;8895E2;
    LDA.L $001F26                        ;8895E4;
    BEQ CODE_8895F0                      ;8895E8;
    LDA.B #$23                           ;8895EA;
    JSL.L CODE_8087A2                    ;8895EC;

CODE_8895F0:
    REP #$31                             ;8895F0;
    LDX.W #$0080                         ;8895F2;
    LDA.B $05                            ;8895F5;
    ADC.W #$FF4C                         ;8895F7;
    CMP.W $0BAD                          ;8895FA;
    BMI CODE_889602                      ;8895FD;
    LDX.W #$FF80                         ;8895FF;

CODE_889602:
    STX.B $1A                            ;889602;
    LDA.W $0BAD                          ;889604;
    SEC                                  ;889607;
    SBC.W #$0020                         ;889608;
    STA.W $1E5E                          ;88960B;
    STA.W $1E60                          ;88960E;
    SEP #$30                             ;889611;
    RTS                                  ;889613;

CODE_889614:
    REP #$21                             ;889614;
    LDA.B $05                            ;889616;
    ADC.W #$FF4C                         ;889618;
    SEC                                  ;88961B;
    SBC.W $0BAD                          ;88961C;
    CLC                                  ;88961F;
    ADC.W #$0008                         ;889620;
    CMP.W #$0010                         ;889623;
    BCS CODE_889635                      ;889626;
    LDX.B #$08                           ;889628;
    STX.W $1F08                          ;88962A;
    JSL.L CODE_80B087                    ;88962D;
    LDX.B #$08                           ;889631;
    STX.B $03                            ;889633;

CODE_889635:
    SEP #$20                             ;889635;
    JSL.L CODE_82823E                    ;889637;
    RTS                                  ;88963B;

CODE_88963C:
    LDA.W $0040                          ;88963C;
    BNE CODE_889653                      ;88963F;
    LDA.B #$0A                           ;889641;
    STA.B $03                            ;889643;
    LDA.B #$E8                           ;889645;
    STA.B $33                            ;889647;
    LDA.B #$00                           ;889649;
    STA.B $34                            ;88964B;
    JSR.W CODE_889750                    ;88964D;
    JSR.W CODE_889773                    ;889650;

CODE_889653:
    RTS                                  ;889653;

CODE_889654:
    REP #$20                             ;889654;
    DEC.B $33                            ;889656;
    BNE CODE_889668                      ;889658;
    LDA.W #$0080                         ;88965A;
    STA.B $1C                            ;88965D;
    LDA.W #$00B4                         ;88965F;
    STA.B $33                            ;889662;
    LDX.B #$0C                           ;889664;
    STX.B $03                            ;889666;

CODE_889668:
    SEP #$20                             ;889668;
    RTS                                  ;88966A;

CODE_88966B:
    DEC.B $33                            ;88966B;
    BNE CODE_889673                      ;88966D;
    LDA.B #$0E                           ;88966F;
    STA.B $03                            ;889671;

CODE_889673:
    JSL.L CODE_82825D                    ;889673;
    RTS                                  ;889677;

CODE_889678:
    REP #$10                             ;889678;
    LDX.B $3B                            ;88967A;
    BIT.W $0010,X                        ;88967C;
    SEP #$10                             ;88967F;
    BVC CODE_88968B                      ;889681;
    LDA.B #$10                           ;889683;
    STA.B $03                            ;889685;
    LDA.B #$B4                           ;889687;
    STA.B $33                            ;889689;

CODE_88968B:
    RTS                                  ;88968B;

CODE_88968C:
    DEC.B $33                            ;88968C;
    BNE CODE_8896A6                      ;88968E;
    LDA.B #$12                           ;889690;
    STA.B $03                            ;889692;
    LDA.B #$00                           ;889694;
    STA.B $1C                            ;889696;
    LDA.B #$FF                           ;889698;
    STA.B $1D                            ;88969A;
    LDA.B #$18                           ;88969C;
    JSL.L CODE_8088A2                    ;88969E;
    LDA.B #$5A                           ;8896A2;
    STA.B $33                            ;8896A4;

CODE_8896A6:
    RTS                                  ;8896A6;

CODE_8896A7:
    DEC.B $33                            ;8896A7;
    BNE CODE_8896BE                      ;8896A9;
    LDA.B #$14                           ;8896AB;
    STA.B $03                            ;8896AD;
    JSR.W CODE_889750                    ;8896AF;
    REP #$30                             ;8896B2;
    LDX.B $3B                            ;8896B4;
    LDA.W $0000                          ;8896B6;
    STA.W $000C,X                        ;8896B9;
    SEP #$30                             ;8896BC;

CODE_8896BE:
    JSL.L CODE_82825D                    ;8896BE;
    RTS                                  ;8896C2;

CODE_8896C3:
    REP #$10                             ;8896C3;
    LDX.B $3B                            ;8896C5;
    LDA.W $0010,X                        ;8896C7;
    BIT.B #$02                           ;8896CA;
    SEP #$10                             ;8896CC;
    BEQ CODE_8896E2                      ;8896CE;
    LDA.B #$16                           ;8896D0;
    STA.B $03                            ;8896D2;
    REP #$20                             ;8896D4;
    LDA.W #$0080                         ;8896D6;
    STA.B $1C                            ;8896D9;
    LDA.W #$00B4                         ;8896DB;
    STA.B $33                            ;8896DE;
    SEP #$20                             ;8896E0;

CODE_8896E2:
    RTS                                  ;8896E2;

CODE_8896E3:
    DEC.B $33                            ;8896E3;
    BNE CODE_889709                      ;8896E5;
    LDA.B #$18                           ;8896E7;
    STA.B $03                            ;8896E9;
    LDA.B #$80                           ;8896EB;
    STA.W $0000                          ;8896ED;
    LDA.B #$50                           ;8896F0;
    STA.W $0002                          ;8896F2;
    LDA.B #$58                           ;8896F5;
    STA.W $0004                          ;8896F7;
    LDA.B #$30                           ;8896FA;
    STA.W $0006                          ;8896FC;
    STZ.W $0008                          ;8896FF;
    JSL.L CODE_83F74A                    ;889702;
    JMP.W CODE_88979B                    ;889706;

CODE_889709:
    JSL.L CODE_82825D                    ;889709;
    RTS                                  ;88970D;

CODE_88970E:
    LDA.W $1F2C                          ;88970E;
    BMI CODE_889717                      ;889711;
    LDA.B #$04                           ;889713;
    STA.B $01                            ;889715;

CODE_889717:
    RTS                                  ;889717;

CODE_889718:
    RTL                                  ;889718;

CODE_889719:
    LDX.B $3A                            ;889719;
    BNE CODE_88974F                      ;88971B;
    LDA.W $1E58                          ;88971D;
    CLC                                  ;889720;
    ADC.W #$0100                         ;889721;
    STA.W $0000                          ;889724;
    LDA.B $05                            ;889727;
    CLC                                  ;889729;
    ADC.W #$FFC0                         ;88972A;
    CMP.W $0000                          ;88972D;
    BCC CODE_88973D                      ;889730;
    LDA.W $0000                          ;889732;
    SBC.W #$FFC1                         ;889735;
    STA.B $05                            ;889738;
    STZ.B $1A                            ;88973A;
    RTS                                  ;88973C;

CODE_88973D:
    LDA.B $05                            ;88973D;
    CLC                                  ;88973F;
    ADC.W #$FF80                         ;889740;
    CMP.W #$1B00                         ;889743;
    BCS CODE_88974F                      ;889746;
    LDA.W #$1B80                         ;889748;
    STA.B $05                            ;88974B;
    STZ.B $1A                            ;88974D;

CODE_88974F:
    RTS                                  ;88974F;

CODE_889750:
    JSL.L CODE_8282D3                    ;889750;
    BNE CODE_889770                      ;889754;
    INC.W $0000,X                        ;889756;
    LDA.B #$2D                           ;889759;
    STA.W $000A,X                        ;88975B;
    STX.W $0000                          ;88975E;
    REP #$21                             ;889761;
    LDA.B $08                            ;889763;
    ADC.W #$FFE0                         ;889765;
    STA.W $0008,X                        ;889768;
    LDA.B $05                            ;88976B;
    STA.W $0005,X                        ;88976D;

CODE_889770:
    SEP #$30                             ;889770;
    RTS                                  ;889772;

CODE_889773:
    JSL.L CODE_828321                    ;889773;
    BNE CODE_889798                      ;889777;
    INC.W $0000,X                        ;889779;
    LDA.B #$32                           ;88977C;
    STA.W $000A,X                        ;88977E;
    STX.B $3B                            ;889781;
    REP #$21                             ;889783;
    LDA.B $08                            ;889785;
    ADC.W #$FFC0                         ;889787;
    STA.W $0008,X                        ;88978A;
    LDA.B $05                            ;88978D;
    STA.W $0005,X                        ;88978F;
    LDA.W $0000                          ;889792;
    STA.W $000C,X                        ;889795;

CODE_889798:
    SEP #$30                             ;889798;
    RTS                                  ;88979A;

CODE_88979B:
    REP #$10                             ;88979B;
    LDY.W #$0001                         ;88979D;

CODE_8897A0:
    JSL.L CODE_828321                    ;8897A0;
    BNE CODE_8897B7                      ;8897A4;
    INC.W $0000,X                        ;8897A6;
    LDA.B #$3C                           ;8897A9;
    STA.W $000A,X                        ;8897AB;
    LDA.W DATA8_86CB0E,Y                 ;8897AE;
    STA.W $000B,X                        ;8897B1;
    DEY                                  ;8897B4;
    BPL CODE_8897A0                      ;8897B5;

CODE_8897B7:
    SEP #$10                             ;8897B7;
    RTS                                  ;8897B9;

CODE_8897BA:
    LDX.B $01                            ;8897BA;
    JMP.W (PTR16_8897BF,X)               ;8897BC;

PTR16_8897BF:
    dw CODE_8897C5                       ;8897BF;
    dw CODE_8897F7                       ;8897C1;
    dw CODE_889A09                       ;8897C3;

CODE_8897C5:
    JSL.L CODE_82827D                    ;8897C5;
    LDA.B #$04                           ;8897C9;
    STA.B $12                            ;8897CB;
    LDA.B #$40                           ;8897CD;
    STA.B $33                            ;8897CF;
    STA.B $27                            ;8897D1;
    STA.B $30                            ;8897D3;
    STZ.B $34                            ;8897D5;
    STZ.B $35                            ;8897D7;
    STZ.B $36                            ;8897D9;
    STZ.B $37                            ;8897DB;
    STZ.B $04                            ;8897DD;
    STZ.B $07                            ;8897DF;
    STZ.B $2F                            ;8897E1;
    LDA.B #$02                           ;8897E3;
    STA.B $26                            ;8897E5;
    REP #$20                             ;8897E7;
    LDA.W #$CE43                         ;8897E9;
    STA.B $20                            ;8897EC;
    SEP #$20                             ;8897EE;
    LDA.B #$00                           ;8897F0;
    JSL.L CODE_848F07                    ;8897F2;
    RTL                                  ;8897F6;

CODE_8897F7:
    JSL.L CODE_82806E                    ;8897F7;
    BCC CODE_889801                      ;8897FB;
    JML.L CODE_828387                    ;8897FD;

CODE_889801:
    LDA.B $2C                            ;889801;
    STA.B $38                            ;889803;
    LDA.B #$80                           ;889805;
    STA.B $2C                            ;889807;
    LDA.B $11                            ;889809;
    AND.B #$3F                           ;88980B;
    ORA.B $33                            ;88980D;
    STA.B $11                            ;88980F;
    JSR.W CODE_889A97                    ;889811;
    JSL.L CODE_82D7D0                    ;889814;
    LDX.B $02                            ;889818;
    JSR.W (PTR16_88988B,X)               ;88981A;
    JSL.L CODE_8491BE                    ;88981D;
    LDA.B #$20                           ;889821;
    TRB.W $0C26                          ;889823;
    LDA.B $2C                            ;889826;
    BIT.B #$01                           ;889828;
    BEQ CODE_889867                      ;88982A;
    CMP.B $38                            ;88982C;
    REP #$20                             ;88982E;
    BNE CODE_889843                      ;889830;
    LDA.B $1A                            ;889832;
    STA.W $0C21                          ;889834;
    LDA.B $05                            ;889837;
    SEC                                  ;889839;
    SBC.B $22                            ;88983A;
    CLC                                  ;88983C;
    ADC.W $0BAD                          ;88983D;
    STA.W $0BAD                          ;889840;

CODE_889843:
    LDA.B $08                            ;889843;
    SEC                                  ;889845;
    SBC.B $24                            ;889846;
    CLC                                  ;889848;
    ADC.W $0BB0                          ;889849;
    STA.W $0BB0                          ;88984C;
    SEP #$20                             ;88984F;
    LDA.W $1F9D                          ;889851;
    BPL CODE_88985B                      ;889854;
    LDA.B #$0C                           ;889856;
    TSB.W $0BD4                          ;889858;

CODE_88985B:
    LDA.B #$20                           ;88985B;
    TSB.W $0C26                          ;88985D;
    LDA.B $0F                            ;889860;
    AND.B #$01                           ;889862;
    STA.W $0BC1                          ;889864;

CODE_889867:
    LDA.B #$4D                           ;889867;
    STA.B $20                            ;889869;
    LDA.B #$CE                           ;88986B;
    STA.B $21                            ;88986D;
    JSL.L CODE_849B03                    ;88986F;
    LDA.B #$51                           ;889873;
    STA.B $20                            ;889875;
    LDA.B #$CE                           ;889877;
    STA.B $21                            ;889879;
    JSL.L CODE_849B03                    ;88987B;
    LDA.B #$43                           ;88987F;
    STA.B $20                            ;889881;
    LDA.B #$CE                           ;889883;
    STA.B $21                            ;889885;
    JML.L CODE_8280B4                    ;889887;

PTR16_88988B:
    dw CODE_889895                       ;88988B;
    dw CODE_8898B6                       ;88988D;
    dw CODE_8899A8                       ;88988F;
    dw CODE_8899BC                       ;889891;
    dw CODE_889A08                       ;889893;

CODE_889895:
    LDA.B $2C                            ;889895;
    LSR A                                ;889897;
    BCC CODE_8898B5                      ;889898;
    LDA.B #$02                           ;88989A;
    STA.B $02                            ;88989C;
    REP #$20                             ;88989E;
    LDA.W #$0100                         ;8898A0;
    BIT.B $32                            ;8898A3;
    BVS CODE_8898AA                      ;8898A5;
    LDA.W #$FF00                         ;8898A7;

CODE_8898AA:
    STA.B $1A                            ;8898AA;
    STZ.B $1C                            ;8898AC;
    STZ.B $1E                            ;8898AE;
    SEP #$20                             ;8898B0;
    JSR.W CODE_889BC5                    ;8898B2;

CODE_8898B5:
    RTS                                  ;8898B5;

CODE_8898B6:
    LDX.B $03                            ;8898B6;
    BNE CODE_8898C7                      ;8898B8;
    INC.B $03                            ;8898BA;
    STZ.B $1E                            ;8898BC;
    STZ.B $34                            ;8898BE;
    LDA.B #$00                           ;8898C0;
    JSL.L CODE_848F07                    ;8898C2;
    RTS                                  ;8898C6;

CODE_8898C7:
    LDA.B $35                            ;8898C7;
    STA.B $36                            ;8898C9;
    JSR.W CODE_889A67                    ;8898CB;
    LDA.W $0B9C                          ;8898CE;
    AND.B #$03                           ;8898D1;
    BNE CODE_8898DB                      ;8898D3;
    LDA.B #$37                           ;8898D5;
    JSL.L CODE_8088A2                    ;8898D7;

CODE_8898DB:
    LDA.B $34                            ;8898DB;
    BEQ CODE_889917                      ;8898DD;
    JSL.L CODE_849AAB                    ;8898DF;
    CMP.B #$04                           ;8898E3;
    BNE CODE_889917                      ;8898E5;
    LDA.B $37                            ;8898E7;
    INC A                                ;8898E9;
    INC A                                ;8898EA;
    AND.B #$0F                           ;8898EB;
    TAX                                  ;8898ED;
    REP #$20                             ;8898EE;
    LDA.L $7FD000,X                      ;8898F0;
    SEC                                  ;8898F4;
    SBC.B $08                            ;8898F5;
    BPL CODE_8898FC                      ;8898F7;
    LDA.W #$0000                         ;8898F9;

CODE_8898FC:
    XBA                                  ;8898FC;
    LSR A                                ;8898FD;
    LSR A                                ;8898FE;
    LSR A                                ;8898FF;
    STA.B $1C                            ;889900;
    SEP #$20                             ;889902;
    STZ.B $1F                            ;889904;
    LDA.B #$0D                           ;889906;
    STA.B $1E                            ;889908;
    LDA.B #$04                           ;88990A;
    STA.B $02                            ;88990C;
    STZ.B $03                            ;88990E;
    LDA.B #$FF                           ;889910;
    STA.B $35                            ;889912;
    STA.B $2F                            ;889914;
    RTS                                  ;889916;

CODE_889917:
    LDA.B $2B                            ;889917;
    BIT.B #$04                           ;889919;
    BNE CODE_889930                      ;88991B;
    LDA.B #$06                           ;88991D;
    STA.B $02                            ;88991F;
    STZ.B $03                            ;889921;
    LDA.B #$FF                           ;889923;
    STA.B $35                            ;889925;
    STZ.B $1F                            ;889927;
    LDA.B #$0D                           ;889929;
    STA.B $1E                            ;88992B;
    STA.B $2F                            ;88992D;
    RTS                                  ;88992F;

CODE_889930:
    JSL.L CODE_849ACD                    ;889930;
    STA.B $35                            ;889934;
    CMP.B $36                            ;889936;
    BEQ CODE_889946                      ;889938;
    ASL A                                ;88993A;
    TAX                                  ;88993B;
    LDA.W DATA8_86CE55,X                 ;88993C;
    STA.B $1F                            ;88993F;
    LDA.W DATA8_86CE56,X                 ;889941;
    STA.B $34                            ;889944;

CODE_889946:
    LDA.B $33                            ;889946;
    ORA.B $34                            ;889948;
    LSR A                                ;88994A;
    LSR A                                ;88994B;
    LSR A                                ;88994C;
    LSR A                                ;88994D;
    TAX                                  ;88994E;
    JSR.W (PTR16_88998A,X)               ;88994F;
    REP #$20                             ;889952;
    LDA.B $1A                            ;889954;
    BPL CODE_88995C                      ;889956;
    EOR.W #$FFFF                         ;889958;
    INC A                                ;88995B;

CODE_88995C:
    CMP.W #$0500                         ;88995C;
    BCC CODE_88996D                      ;88995F;
    LDA.W #$0500                         ;889961;
    BIT.B $1A                            ;889964;
    BPL CODE_88996B                      ;889966;
    LDA.W #$FB00                         ;889968;

CODE_88996B:
    STA.B $1A                            ;88996B;

CODE_88996D:
    SEP #$20                             ;88996D;
    JSL.L CODE_848EEA                    ;88996F;
    LDA.B $2C                            ;889973;
    LSR A                                ;889975;
    BCC CODE_889989                      ;889976;
    LDA.W $0B9C                          ;889978;
    AND.B #$0F                           ;88997B;
    BNE CODE_889989                      ;88997D;
    LDX.B #$02                           ;88997F;
    LDY.B #$02                           ;889981;
    LDA.B #$0F                           ;889983;
    JSL.L CODE_84A33C                    ;889985;

CODE_889989:
    RTS                                  ;889989;

PTR16_88998A:
    dw CODE_889992                       ;88998A;
    dw CODE_889999                       ;88998C;
    dw CODE_889999                       ;88998E;
    dw CODE_889992                       ;889990;

CODE_889992:
    JSL.L CODE_828174                    ;889992;
    JMP.W CODE_88999D                    ;889996;

CODE_889999:
    JSL.L CODE_828195                    ;889999;

CODE_88999D:
    LDX.B #$40                           ;88999D;
    BIT.B $1B                            ;88999F;
    BPL CODE_8899A5                      ;8899A1;
    LDX.B #$00                           ;8899A3;

CODE_8899A5:
    STX.B $33                            ;8899A5;
    RTS                                  ;8899A7;

CODE_8899A8:
    JSR.W CODE_889A67                    ;8899A8;
    JSL.L CODE_848EEA                    ;8899AB;
    JSL.L CODE_828174                    ;8899AF;
    LDA.B $1D                            ;8899B3;
    BPL CODE_8899BB                      ;8899B5;
    LDA.B #$06                           ;8899B7;
    STA.B $02                            ;8899B9;

CODE_8899BB:
    RTS                                  ;8899BB;

CODE_8899BC:
    JSR.W CODE_889A67                    ;8899BC;
    JSL.L CODE_848EEA                    ;8899BF;
    LDA.B $2B                            ;8899C3;
    BIT.B #$04                           ;8899C5;
    BEQ CODE_8899F6                      ;8899C7;
    JSR.W CODE_889AE7                    ;8899C9;
    LDA.B #$08                           ;8899CC;
    JSL.L CODE_84A333                    ;8899CE;
    REP #$20                             ;8899D2;
    LDA.B $1C                            ;8899D4;
    EOR.W #$FFFF                         ;8899D6;
    INC A                                ;8899D9;
    LSR A                                ;8899DA;
    LSR A                                ;8899DB;
    CMP.W #$00C0                         ;8899DC;
    SEP #$20                             ;8899DF;
    BCS CODE_8899EC                      ;8899E1;
    LDA.B #$02                           ;8899E3;
    STA.B $02                            ;8899E5;
    STZ.B $03                            ;8899E7;
    STZ.B $2F                            ;8899E9;
    RTS                                  ;8899EB;

CODE_8899EC:
    STA.B $1C                            ;8899EC;
    XBA                                  ;8899EE;
    STA.B $1D                            ;8899EF;
    LDA.B #$04                           ;8899F1;
    STA.B $02                            ;8899F3;
    RTS                                  ;8899F5;

CODE_8899F6:
    JSL.L CODE_828174                    ;8899F6;
    REP #$20                             ;8899FA;
    LDA.W #$FD00                         ;8899FC;
    CMP.B $1C                            ;8899FF;
    BMI CODE_889A05                      ;889A01;
    STA.B $1C                            ;889A03;

CODE_889A05:
    SEP #$20                             ;889A05;
    RTS                                  ;889A07;

CODE_889A08:
    RTS                                  ;889A08;

CODE_889A09:
    JSL.L CODE_82806E                    ;889A09;
    BCC CODE_889A13                      ;889A0D;
    JML.L CODE_828387                    ;889A0F;

CODE_889A13:
    LDX.B $02                            ;889A13;
    JSR.W (PTR16_889A23,X)               ;889A15;
    LDA.W $0B9C                          ;889A18;
    LSR A                                ;889A1B;
    BCC CODE_889A22                      ;889A1C;
    JSL.L CODE_8280B4                    ;889A1E;

CODE_889A22:
    RTL                                  ;889A22;

PTR16_889A23:
    dw CODE_889A29                       ;889A23;
    dw CODE_889A52                       ;889A25;
    dw CODE_889A62                       ;889A27;

CODE_889A29:
    LDA.B #$02                           ;889A29;
    STA.B $02                            ;889A2B;
    JSL.L CODE_84A4AB                    ;889A2D;
    REP #$20                             ;889A31;
    LDA.W #$0100                         ;889A33;
    BIT.B $1A                            ;889A36;
    BPL CODE_889A3D                      ;889A38;
    LDA.W #$FF00                         ;889A3A;

CODE_889A3D:
    STA.B $1A                            ;889A3D;
    LDA.W #$0400                         ;889A3F;
    STA.B $1C                            ;889A42;
    LDA.W #$0040                         ;889A44;
    STA.B $1E                            ;889A47;
    SEP #$20                             ;889A49;
    LDA.B #$03                           ;889A4B;
    JSL.L CODE_848F07                    ;889A4D;
    RTS                                  ;889A51;

CODE_889A52:
    LDA.B $0F                            ;889A52;
    BPL CODE_889A5D                      ;889A54;
    JSR.W CODE_889B12                    ;889A56;
    LDA.B #$04                           ;889A59;
    STA.B $02                            ;889A5B;

CODE_889A5D:
    JSL.L CODE_848EEA                    ;889A5D;
    RTS                                  ;889A61;

CODE_889A62:
    JSL.L CODE_828174                    ;889A62;
    RTS                                  ;889A66;

CODE_889A67:
    LDA.B $2B                            ;889A67;
    BIT.B #$03                           ;889A69;
    BEQ CODE_889A96                      ;889A6B;
    LDA.B $2D                            ;889A6D;
    CMP.B #$3C                           ;889A6F;
    BNE CODE_889A76                      ;889A71;
    JMP.W CODE_889AAD                    ;889A73;

CODE_889A76:
    CMP.B #$34                           ;889A76;
    BNE CODE_889A84                      ;889A78;
    JSR.W CODE_889B70                    ;889A7A;
    LDA.B #$04                           ;889A7D;
    STA.B $01                            ;889A7F;
    STZ.B $02                            ;889A81;
    RTS                                  ;889A83;

CODE_889A84:
    LDA.B $33                            ;889A84;
    EOR.B #$40                           ;889A86;
    STA.B $33                            ;889A88;
    REP #$20                             ;889A8A;
    LDA.B $1A                            ;889A8C;
    EOR.W #$FFFF                         ;889A8E;
    INC A                                ;889A91;
    STA.B $1A                            ;889A92;
    SEP #$20                             ;889A94;

CODE_889A96:
    RTS                                  ;889A96;

CODE_889A97:
    LDX.B $37                            ;889A97;
    LDA.B $08                            ;889A99;
    STA.L $7FD000,X                      ;889A9B;
    LDA.B $09                            ;889A9F;
    STA.L $7FD001,X                      ;889AA1;
    TXA                                  ;889AA5;
    INC A                                ;889AA6;
    INC A                                ;889AA7;
    AND.B #$0F                           ;889AA8;
    STA.B $37                            ;889AAA;
    RTS                                  ;889AAC;

CODE_889AAD:
    REP #$20                             ;889AAD;
    LDA.W #$0010                         ;889AAF;
    STA.B $39                            ;889AB2;

CODE_889AB4:
    LDA.W #$001B                         ;889AB4;
    BIT.B $1A                            ;889AB7;
    BPL CODE_889ABE                      ;889AB9;
    LDA.W #$FFE5                         ;889ABB;

CODE_889ABE:
    CLC                                  ;889ABE;
    ADC.B $05                            ;889ABF;
    STA.W $0000                          ;889AC1;
    LDA.B $39                            ;889AC4;
    CLC                                  ;889AC6;
    ADC.B $08                            ;889AC7;
    STA.W $0002                          ;889AC9;
    STZ.W $0008                          ;889ACC;
    JSL.L CODE_849111                    ;889ACF;
    JSL.L CODE_80B8D7                    ;889AD3;
    LDA.B $39                            ;889AD7;
    CLC                                  ;889AD9;
    ADC.W #$FFF0                         ;889ADA;
    STA.B $39                            ;889ADD;
    CMP.W #$FFE0                         ;889ADF;
    BNE CODE_889AB4                      ;889AE2;
    SEP #$20                             ;889AE4;
    RTS                                  ;889AE6;

CODE_889AE7:
    JSL.L CODE_8282D3                    ;889AE7;
    BNE CODE_889B0F                      ;889AEB;
    INC.W $0000,X                        ;889AED;
    LDA.B #$10                           ;889AF0;
    STA.W $000A,X                        ;889AF2;
    LDA.B #$0A                           ;889AF5;
    STA.W $000B,X                        ;889AF7;
    LDA.B $33                            ;889AFA;
    ORA.B #$30                           ;889AFC;
    STA.W $0011,X                        ;889AFE;
    REP #$20                             ;889B01;
    LDA.B $08                            ;889B03;
    STA.W $0008,X                        ;889B05;
    LDA.B $05                            ;889B08;
    STA.W $0005,X                        ;889B0A;
    SEP #$20                             ;889B0D;

CODE_889B0F:
    SEP #$10                             ;889B0F;
    RTS                                  ;889B11;

CODE_889B12:
    REP #$10                             ;889B12;
    LDY.W #$0007                         ;889B14;

CODE_889B17:
    JSL.L CODE_8282D3                    ;889B17;
    BNE CODE_889B6D                      ;889B1B;
    INC.W $0000,X                        ;889B1D;
    LDA.B #$2B                           ;889B20;
    STA.W $000A,X                        ;889B22;
    LDA.W DATA8_86CE61,Y                 ;889B25;
    STA.W $000B,X                        ;889B28;
    LDA.B $11                            ;889B2B;
    STA.W $0011,X                        ;889B2D;
    STZ.W $001F,X                        ;889B30;
    LDA.B #$40                           ;889B33;
    STA.W $001E,X                        ;889B35;
    REP #$20                             ;889B38;
    LDA.W #$0C80                         ;889B3A;
    STA.W $000C,X                        ;889B3D;
    LDA.B $05                            ;889B40;
    STA.W $0005,X                        ;889B42;
    LDA.B $08                            ;889B45;
    STA.W $0008,X                        ;889B47;
    PHY                                  ;889B4A;
    JSL.L CODE_849086                    ;889B4B;
    AND.W #$0006                         ;889B4F;
    TAY                                  ;889B52;
    LDA.W DATA8_86CE69,Y                 ;889B53;
    STA.W $001A,X                        ;889B56;
    JSL.L CODE_849086                    ;889B59;
    AND.W #$0006                         ;889B5D;
    TAY                                  ;889B60;
    LDA.W DATA8_86CE71,Y                 ;889B61;
    STA.W $001C,X                        ;889B64;
    PLY                                  ;889B67;
    SEP #$20                             ;889B68;
    DEY                                  ;889B6A;
    BPL CODE_889B17                      ;889B6B;

CODE_889B6D:
    SEP #$10                             ;889B6D;
    RTS                                  ;889B6F;

CODE_889B70:
    REP #$10                             ;889B70;
    LDY.W #$0007                         ;889B72;

CODE_889B75:
    JSL.L CODE_8282D3                    ;889B75;
    BNE CODE_889BBF                      ;889B79;
    INC.W $0000,X                        ;889B7B;
    LDA.B #$09                           ;889B7E;
    STA.W $000A,X                        ;889B80;
    STZ.W $000B,X                        ;889B83;
    REP #$20                             ;889B86;
    JSL.L CODE_849086                    ;889B88;
    AND.W #$0007                         ;889B8C;
    STA.W $0000                          ;889B8F;
    LDA.W #$0016                         ;889B92;
    BIT.B $1A                            ;889B95;
    BPL CODE_889B9C                      ;889B97;
    LDA.W #$FFEA                         ;889B99;

CODE_889B9C:
    CLC                                  ;889B9C;
    ADC.B $05                            ;889B9D;
    CLC                                  ;889B9F;
    ADC.W $0000                          ;889BA0;
    STA.W $0005,X                        ;889BA3;
    JSL.L CODE_849086                    ;889BA6;
    AND.W #$001F                         ;889BAA;
    STA.W $0000                          ;889BAD;
    LDA.B $08                            ;889BB0;
    CLC                                  ;889BB2;
    ADC.W #$FFF8                         ;889BB3;
    CLC                                  ;889BB6;
    ADC.W $0000                          ;889BB7;
    STA.W $0008,X                        ;889BBA;
    SEP #$20                             ;889BBD;

CODE_889BBF:
    DEY                                  ;889BBF;
    BPL CODE_889B75                      ;889BC0;
    SEP #$10                             ;889BC2;
    RTS                                  ;889BC4;

CODE_889BC5:
    JSL.L CODE_82833E                    ;889BC5;
    BEQ CODE_889BD0                      ;889BC9;
    TXA                                  ;889BCB;
    SEC                                  ;889BCC;
    SBC.B #$40                           ;889BCD;
    TAX                                  ;889BCF;

CODE_889BD0:
    INC.W $0000,X                        ;889BD0;
    LDA.B #$1B                           ;889BD3;
    STA.W $000A,X                        ;889BD5;
    REP #$20                             ;889BD8;
    TDC                                  ;889BDA;
    STA.W $000C,X                        ;889BDB;
    SEP #$30                             ;889BDE;
    RTS                                  ;889BE0;

CODE_889BE1:
    LDX.B $01                            ;889BE1;
    JMP.W (PTR16_889BE6,X)               ;889BE3;

PTR16_889BE6:
    dw CODE_889BEE                       ;889BE6;
    dw CODE_889C5C                       ;889BE8;
    dw CODE_889D6E                       ;889BEA;
    dw CODE_88A334                       ;889BEC;

CODE_889BEE:
    LDA.B $02                            ;889BEE;
    BNE CODE_889C22                      ;889BF0;
    JSL.L CODE_84AAD3                    ;889BF2;
    BEQ CODE_889BFC                      ;889BF6;
    JML.L CODE_828398                    ;889BF8;

CODE_889BFC:
    JSL.L CODE_849FE6                    ;889BFC;
    STZ.W $00CB                          ;889C00;
    STZ.W $00CC                          ;889C03;
    STZ.W $00CD                          ;889C06;
    STZ.W $00C9                          ;889C09;
    LDA.B #$AF                           ;889C0C;
    STA.W $00CA                          ;889C0E;
    INC.B $02                            ;889C11;
    LDA.B #$3C                           ;889C13;
    STA.B $34                            ;889C15;
    LDA.W $1F26                          ;889C17;
    BEQ CODE_889C22                      ;889C1A;
    LDA.B #$2E                           ;889C1C;
    JSL.L CODE_8087A2                    ;889C1E;

CODE_889C22:
    DEC.B $34                            ;889C22;
    BEQ CODE_889C38                      ;889C24;
    LDA.W $00CB                          ;889C26;
    INC A                                ;889C29;
    CMP.B #$20                           ;889C2A;
    BCS CODE_889C37                      ;889C2C;
    STA.W $00CB                          ;889C2E;
    STA.W $00CC                          ;889C31;
    STA.W $00CD                          ;889C34;

CODE_889C37:
    RTL                                  ;889C37;

CODE_889C38:
    JSL.L CODE_82827D                    ;889C38;
    REP #$20                             ;889C3C;
    LDA.W #$CFB8                         ;889C3E;
    STA.B $20                            ;889C41;
    SEP #$20                             ;889C43;
    LDA.B $11                            ;889C45;
    AND.B #$0E                           ;889C47;
    STA.B $33                            ;889C49;
    LDA.B #$04                           ;889C4B;
    STA.B $12                            ;889C4D;
    STZ.B $02                            ;889C4F;
    LDA.B #$06                           ;889C51;
    JSL.L CODE_848F07                    ;889C53;
    LDA.B #$FF                           ;889C57;
    STA.B $2F                            ;889C59;
    RTL                                  ;889C5B;

CODE_889C5C:
    LDX.B $02                            ;889C5C;
    JMP.W (PTR16_889C61,X)               ;889C5E;

PTR16_889C61:
    dw CODE_889C6F                       ;889C61;
    dw CODE_889C84                       ;889C63;
    dw CODE_889CB7                       ;889C65;
    dw CODE_889CE5                       ;889C67;
    dw CODE_889D05                       ;889C69;
    dw CODE_889D15                       ;889C6B;
    dw CODE_889D3C                       ;889C6D;

CODE_889C6F:
    JSL.L CODE_848EEA                    ;889C6F;
    LDA.B $0F                            ;889C73;
    BEQ CODE_889C80                      ;889C75;
    LDA.B #$02                           ;889C77;
    STA.B $02                            ;889C79;
    LDA.B #$9F                           ;889C7B;
    STA.W $00CA                          ;889C7D;

CODE_889C80:
    JML.L CODE_8280B4                    ;889C80;

CODE_889C84:
    JSL.L CODE_848EEA                    ;889C84;
    LDA.B $0F                            ;889C88;
    BPL CODE_889CA4                      ;889C8A;
    LDA.B #$04                           ;889C8C;
    STA.B $02                            ;889C8E;
    STZ.W $00CA                          ;889C90;
    STZ.W $00CB                          ;889C93;
    STZ.W $00CC                          ;889C96;
    STZ.W $00CD                          ;889C99;
    LDA.B #$40                           ;889C9C;
    STA.B $1E                            ;889C9E;
    JML.L CODE_8280B4                    ;889CA0;

CODE_889CA4:
    LDA.W $00CB                          ;889CA4;
    DEC A                                ;889CA7;
    BMI CODE_889CB3                      ;889CA8;
    STA.W $00CB                          ;889CAA;
    STA.W $00CC                          ;889CAD;
    STA.W $00CD                          ;889CB0;

CODE_889CB3:
    JML.L CODE_8280B4                    ;889CB3;

CODE_889CB7:
    JSL.L CODE_8281E8                    ;889CB7;
    JSL.L CODE_848EEA                    ;889CBB;
    JSL.L CODE_8491BE                    ;889CBF;
    LDA.B $2B                            ;889CC3;
    AND.B #$04                           ;889CC5;
    BEQ CODE_889CE1                      ;889CC7;
    LDA.B #$06                           ;889CC9;
    STA.B $02                            ;889CCB;
    LDA.B #$05                           ;889CCD;
    JSL.L CODE_848F07                    ;889CCF;
    STZ.B $2F                            ;889CD3;
    LDA.B #$4D                           ;889CD5;
    JSL.L CODE_8088A2                    ;889CD7;
    LDA.B #$1E                           ;889CDB;
    JSL.L CODE_84A333                    ;889CDD;

CODE_889CE1:
    JML.L CODE_8280B4                    ;889CE1;

CODE_889CE5:
    JSL.L CODE_848EEA                    ;889CE5;
    LDA.B $0F                            ;889CE9;
    BPL CODE_889D01                      ;889CEB;
    LDA.B #$08                           ;889CED;
    STA.B $02                            ;889CEF;
    LDA.B #$04                           ;889CF1;
    JSL.L CODE_848F07                    ;889CF3;
    REP #$20                             ;889CF7;
    TDC                                  ;889CF9;
    STA.W $1F0E                          ;889CFA;
    SEP #$20                             ;889CFD;
    STZ.B $27                            ;889CFF;

CODE_889D01:
    JML.L CODE_8280B4                    ;889D01;

CODE_889D05:
    JSL.L CODE_848EEA                    ;889D05;
    LDA.B $0F                            ;889D09;
    BPL CODE_889D11                      ;889D0B;
    LDA.B #$0A                           ;889D0D;
    STA.B $02                            ;889D0F;

CODE_889D11:
    JML.L CODE_8280B4                    ;889D11;

CODE_889D15:
    LDA.W $0B9C                          ;889D15;
    LSR A                                ;889D18;
    BCC CODE_889D34                      ;889D19;
    LDA.B #$0C                           ;889D1B;
    JSL.L CODE_8088CD                    ;889D1D;
    LDA.B $27                            ;889D21;
    AND.B #$7F                           ;889D23;
    INC A                                ;889D25;
    STA.B $27                            ;889D26;
    CMP.B #$20                           ;889D28;
    BCC CODE_889D34                      ;889D2A;
    LDA.B #$0C                           ;889D2C;
    STA.B $02                            ;889D2E;
    LDA.B #$1E                           ;889D30;
    STA.B $34                            ;889D32;

CODE_889D34:
    LDA.B #$80                           ;889D34;
    TSB.B $27                            ;889D36;
    JML.L CODE_8280B4                    ;889D38;

CODE_889D3C:
    DEC.B $34                            ;889D3C;
    BNE CODE_889D6A                      ;889D3E;
    JSL.L CODE_849FFE                    ;889D40;
    LDA.B #$04                           ;889D44;
    STA.B $01                            ;889D46;
    STZ.B $03                            ;889D48;
    JSL.L CODE_849086                    ;889D4A;
    AND.B #$03                           ;889D4E;
    ASL A                                ;889D50;
    STA.B $02                            ;889D51;
    STZ.B $03                            ;889D53;
    LDA.B #$06                           ;889D55;
    STA.B $26                            ;889D57;
    STZ.B $35                            ;889D59;
    STZ.B $30                            ;889D5B;
    STZ.B $36                            ;889D5D;
    LDA.W $1F26                          ;889D5F;
    BEQ CODE_889D6A                      ;889D62;
    LDA.B #$1E                           ;889D64;
    JSL.L CODE_8087A2                    ;889D66;

CODE_889D6A:
    JML.L CODE_8280B4                    ;889D6A;

CODE_889D6E:
    LDA.B #$0E                           ;889D6E;
    TRB.B $11                            ;889D70;
    LDA.B $33                            ;889D72;
    TSB.B $11                            ;889D74;
    LDX.B $02                            ;889D76;
    JSR.W (PTR16_889E2C,X)               ;889D78;
    LDA.W $0BCF                          ;889D7B;
    AND.B #$7F                           ;889D7E;
    BNE CODE_889D85                      ;889D80;
    JMP.W CODE_889E11                    ;889D82;

CODE_889D85:
    LDA.B #$0A                           ;889D85;
    LDX.B $35                            ;889D87;
    BEQ CODE_889D8D                      ;889D89;
    LDA.B #$05                           ;889D8B;

CODE_889D8D:
    STA.B $28                            ;889D8D;
    LDA.B $17                            ;889D8F;
    AND.B #$7F                           ;889D91;
    TAX                                  ;889D93;
    LDA.W DATA8_86CF75,X                 ;889D94;
    ASL A                                ;889D97;
    ASL A                                ;889D98;
    REP #$20                             ;889D99;
    AND.W #$00FF                         ;889D9B;
    ADC.W #$CF94                         ;889D9E;
    STA.B $20                            ;889DA1;
    SEP #$20                             ;889DA3;
    JSL.L CODE_849B43                    ;889DA5;
    BEQ CODE_889E11                      ;889DA9;
    BPL CODE_889DCD                      ;889DAB;
    LDA.B #$06                           ;889DAD;
    STA.B $01                            ;889DAF;
    STZ.B $02                            ;889DB1;
    STZ.B $03                            ;889DB3;
    LDA.B #$11                           ;889DB5;
    JSL.L CODE_848F07                    ;889DB7;
    LDA.B #$13                           ;889DBB;
    JSL.L CODE_8088A2                    ;889DBD;
    LDA.B #$29                           ;889DC1;
    STA.B $11                            ;889DC3;
    JSL.L CODE_84AC9B                    ;889DC5;
    JML.L CODE_8280B4                    ;889DC9;

CODE_889DCD:
    LDA.B #$3C                           ;889DCD;
    STA.B $35                            ;889DCF;
    LDA.B #$13                           ;889DD1;
    JSL.L CODE_8088A2                    ;889DD3;
    LDA.B $02                            ;889DD7;
    CMP.B #$04                           ;889DD9;
    BNE CODE_889DFA                      ;889DDB;
    LDA.B $03                            ;889DDD;
    CMP.B #$02                           ;889DDF;
    BNE CODE_889DFA                      ;889DE1;
    LDA.W $1F1D                          ;889DE3;
    CMP.B #$01                           ;889DE6;
    BEQ CODE_889DF2                      ;889DE8;
    CMP.B #$02                           ;889DEA;
    BEQ CODE_889DF2                      ;889DEC;
    CMP.B #$03                           ;889DEE;
    BNE CODE_889DFA                      ;889DF0;

CODE_889DF2:
    LDA.B #$08                           ;889DF2;
    STA.B $02                            ;889DF4;
    STZ.B $03                            ;889DF6;
    BRA CODE_889E11                      ;889DF8;

CODE_889DFA:
    LDA.W $1F1D                          ;889DFA;
    CMP.B #$0E                           ;889DFD;
    BEQ CODE_889E05                      ;889DFF;
    CMP.B #$17                           ;889E01;
    BNE CODE_889E11                      ;889E03;

CODE_889E05:
    LDA.B $02                            ;889E05;
    CMP.B #$0A                           ;889E07;
    BEQ CODE_889E11                      ;889E09;
    LDA.B #$0A                           ;889E0B;
    STA.B $02                            ;889E0D;
    STZ.B $03                            ;889E0F;

CODE_889E11:
    LDA.B $35                            ;889E11;
    BEQ CODE_889E24                      ;889E13;
    DEC A                                ;889E15;
    STA.B $35                            ;889E16;
    AND.B #$03                           ;889E18;
    BNE CODE_889E24                      ;889E1A;
    LDA.B $36                            ;889E1C;
    BNE CODE_889E24                      ;889E1E;
    LDA.B #$0E                           ;889E20;
    TRB.B $11                            ;889E22;

CODE_889E24:
    JSL.L CODE_849B03                    ;889E24;
    JML.L CODE_8280B4                    ;889E28;

PTR16_889E2C:
    dw CODE_889E38                       ;889E2C;
    dw CODE_889F24                       ;889E2E;
    dw CODE_88A059                       ;889E30;
    dw CODE_88A16E                       ;889E32;
    dw CODE_88A20B                       ;889E34;
    dw CODE_88A25E                       ;889E36;

CODE_889E38:
    LDX.B $03                            ;889E38;
    JMP.W (PTR16_889E3D,X)               ;889E3A;

PTR16_889E3D:
    dw CODE_889E45                       ;889E3D;
    dw CODE_889E72                       ;889E3F;
    dw CODE_889EF6                       ;889E41;
    dw CODE_889F14                       ;889E43;

CODE_889E45:
    LDA.B #$02                           ;889E45;
    STA.B $03                            ;889E47;
    LDA.B #$09                           ;889E49;
    JSL.L CODE_848F07                    ;889E4B;
    JSL.L CODE_84AC9B                    ;889E4F;
    LDA.B #$16                           ;889E53;
    STA.B $2A                            ;889E55;
    LDA.B $11                            ;889E57;
    ASL A                                ;889E59;
    ASL A                                ;889E5A;
    LDA.B #$16                           ;889E5B;
    BCS CODE_889E61                      ;889E5D;
    LDA.B #$EA                           ;889E5F;

CODE_889E61:
    STA.B $2A                            ;889E61;
    JSL.L CODE_8490A0                    ;889E63;
    CMP.B #$34                           ;889E67;
    BCC CODE_889E71                      ;889E69;
    LDA.B $11                            ;889E6B;
    EOR.B #$40                           ;889E6D;
    STA.B $11                            ;889E6F;

CODE_889E71:
    RTS                                  ;889E71;

CODE_889E72:
    JSL.L CODE_848EEA                    ;889E72;
    LDA.B $0F                            ;889E76;
    BEQ CODE_889EF5                      ;889E78;
    LDA.B #$04                           ;889E7A;
    STA.B $03                            ;889E7C;
    LDA.B #$06                           ;889E7E;
    TSB.B $11                            ;889E80;
    LDA.B #$0A                           ;889E82;
    JSL.L CODE_84A333                    ;889E84;
    LDA.B $11                            ;889E88;
    ASL A                                ;889E8A;
    ASL A                                ;889E8B;
    REP #$20                             ;889E8C;
    LDA.W #$001A                         ;889E8E;
    BCS CODE_889E96                      ;889E91;
    LDA.W #$FFE6                         ;889E93;

CODE_889E96:
    CLC                                  ;889E96;
    ADC.B $05                            ;889E97;
    STA.W $0000                          ;889E99;
    LDA.B $08                            ;889E9C;
    CLC                                  ;889E9E;
    ADC.W #$0018                         ;889E9F;
    STA.W $0002                          ;889EA2;
    JSL.L CODE_828358                    ;889EA5;
    BNE CODE_889EF3                      ;889EA9;
    INC.W $0000,X                        ;889EAB;
    LDA.B #$28                           ;889EAE;
    STA.W $000A,X                        ;889EB0;
    STZ.W $000B,X                        ;889EB3;
    REP #$20                             ;889EB6;
    LDA.W $0000                          ;889EB8;
    STA.W $0005,X                        ;889EBB;
    LDA.W $0002                          ;889EBE;
    STA.W $0008,X                        ;889EC1;
    TDC                                  ;889EC4;
    STA.W $000C,X                        ;889EC5;
    SEP #$30                             ;889EC8;
    LDA.B #$44                           ;889ECA;
    JSL.L CODE_8088A2                    ;889ECC;
    JSL.L CODE_828358                    ;889ED0;
    BNE CODE_889EF3                      ;889ED4;
    INC.W $0000,X                        ;889ED6;
    LDA.B #$28                           ;889ED9;
    STA.W $000A,X                        ;889EDB;
    STA.W $000B,X                        ;889EDE;
    REP #$20                             ;889EE1;
    LDA.W $0000                          ;889EE3;
    STA.W $0005,X                        ;889EE6;
    LDA.W $0002                          ;889EE9;
    STA.W $0008,X                        ;889EEC;
    TDC                                  ;889EEF;
    STA.W $000C,X                        ;889EF0;

CODE_889EF3:
    SEP #$30                             ;889EF3;

CODE_889EF5:
    RTS                                  ;889EF5;

CODE_889EF6:
    JSL.L CODE_848EEA                    ;889EF6;
    LDA.B $0F                            ;889EFA;
    BEQ CODE_889F13                      ;889EFC;
    BPL CODE_889F0F                      ;889EFE;
    LDA.B #$06                           ;889F00;
    STA.B $03                            ;889F02;
    LDA.B #$00                           ;889F04;
    JSL.L CODE_848F07                    ;889F06;
    LDA.B #$20                           ;889F0A;
    STA.B $34                            ;889F0C;
    RTS                                  ;889F0E;

CODE_889F0F:
    LDA.B #$06                           ;889F0F;
    TSB.B $11                            ;889F11;

CODE_889F13:
    RTS                                  ;889F13;

CODE_889F14:
    JSL.L CODE_84AC9B                    ;889F14;
    JSL.L CODE_848EEA                    ;889F18;
    DEC.B $34                            ;889F1C;
    BNE CODE_889F23                      ;889F1E;
    JMP.W CODE_88A362                    ;889F20;

CODE_889F23:
    RTS                                  ;889F23;

CODE_889F24:
    LDX.B $03                            ;889F24;
    JMP.W (PTR16_889F29,X)               ;889F26;

PTR16_889F29:
    dw CODE_889F37                       ;889F29;
    dw CODE_889F59                       ;889F2B;
    dw CODE_889F7A                       ;889F2D;
    dw CODE_889F8D                       ;889F2F;
    dw CODE_88A002                       ;889F31;
    dw CODE_88A032                       ;889F33;
    dw CODE_88A049                       ;889F35;

CODE_889F37:
    JSL.L CODE_84AC9B                    ;889F37;
    LDA.B #$02                           ;889F3B;
    JSL.L CODE_848F07                    ;889F3D;
    LDA.B #$02                           ;889F41;
    STA.B $03                            ;889F43;
    REP #$20                             ;889F45;
    LDA.W #$06C3                         ;889F47;
    STA.B $1C                            ;889F4A;
    STZ.B $1A                            ;889F4C;
    SEP #$20                             ;889F4E;
    LDA.B #$40                           ;889F50;
    STA.B $1E                            ;889F52;
    LDA.B #$FF                           ;889F54;
    STA.B $2F                            ;889F56;
    RTS                                  ;889F58;

CODE_889F59:
    JSL.L CODE_848EEA                    ;889F59;
    LDA.B $0F                            ;889F5D;
    BPL CODE_889F79                      ;889F5F;
    JSL.L CODE_8281E8                    ;889F61;
    LDA.B $1D                            ;889F65;
    BPL CODE_889F79                      ;889F67;
    LDA.B #$07                           ;889F69;
    JSL.L CODE_848F07                    ;889F6B;
    LDA.B #$04                           ;889F6F;
    STA.B $03                            ;889F71;
    LDA.B #$0A                           ;889F73;
    JSL.L CODE_84A333                    ;889F75;

CODE_889F79:
    RTS                                  ;889F79;

CODE_889F7A:
    JSL.L CODE_848EEA                    ;889F7A;
    LDA.B $0F                            ;889F7E;
    BPL CODE_889F8C                      ;889F80;
    LDA.B #$08                           ;889F82;
    JSL.L CODE_848F07                    ;889F84;
    LDA.B #$06                           ;889F88;
    STA.B $03                            ;889F8A;

CODE_889F8C:
    RTS                                  ;889F8C;

CODE_889F8D:
    LDA.B $0F                            ;889F8D;
    BPL CODE_889FA6                      ;889F8F;
    LDA.B $11                            ;889F91;
    ASL A                                ;889F93;
    ASL A                                ;889F94;
    REP #$20                             ;889F95;
    LDA.W #$001C                         ;889F97;
    BCS CODE_889F9F                      ;889F9A;
    LDA.W #$FFE4                         ;889F9C;

CODE_889F9F:
    CLC                                  ;889F9F;
    ADC.B $05                            ;889FA0;
    STA.B $05                            ;889FA2;
    SEP #$20                             ;889FA4;

CODE_889FA6:
    JSL.L CODE_848EEA                    ;889FA6;
    LDA.B $0F                            ;889FAA;
    AND.B #$0F                           ;889FAC;
    STA.W $0000                          ;889FAE;
    ASL A                                ;889FB1;
    ASL A                                ;889FB2;
    ADC.W $0000                          ;889FB3;
    REP #$20                             ;889FB6;
    AND.W #$00FF                         ;889FB8;
    CLC                                  ;889FBB;
    ADC.W #$CFBD                         ;889FBC;
    STA.B $20                            ;889FBF;
    LDA.B $10                            ;889FC1;
    ASL A                                ;889FC3;
    ASL A                                ;889FC4;
    BCS CODE_889FCB                      ;889FC5;
    INC.B $22                            ;889FC7;
    BRA CODE_889FCD                      ;889FC9;

CODE_889FCB:
    DEC.B $22                            ;889FCB;

CODE_889FCD:
    SEP #$20                             ;889FCD;
    JSL.L CODE_8491BE                    ;889FCF;
    LDA.B $2B                            ;889FD3;
    AND.B #$03                           ;889FD5;
    BNE CODE_889FEB                      ;889FD7;
    REP #$20                             ;889FD9;
    LDA.W $0BAD                          ;889FDB;
    SEC                                  ;889FDE;
    SBC.B $05                            ;889FDF;
    SEP #$20                             ;889FE1;
    ROR A                                ;889FE3;
    LSR A                                ;889FE4;
    EOR.B $11                            ;889FE5;
    AND.B #$40                           ;889FE7;
    BEQ CODE_88A001                      ;889FE9;

CODE_889FEB:
    LDA.B #$07                           ;889FEB;
    JSL.L CODE_848F07                    ;889FED;
    LDA.B #$08                           ;889FF1;
    STA.B $03                            ;889FF3;
    REP #$20                             ;889FF5;
    STZ.B $1A                            ;889FF7;
    STZ.B $1C                            ;889FF9;
    SEP #$20                             ;889FFB;
    LDA.B #$40                           ;889FFD;
    STA.B $1E                            ;889FFF;

CODE_88A001:
    RTS                                  ;88A001;

CODE_88A002:
    JSL.L CODE_8281E8                    ;88A002;
    REP #$20                             ;88A006;
    LDA.W #$CFB8                         ;88A008;
    STA.B $20                            ;88A00B;
    SEP #$20                             ;88A00D;
    JSL.L CODE_8491BE                    ;88A00F;
    LDA.B $2B                            ;88A013;
    AND.B #$04                           ;88A015;
    BEQ CODE_88A031                      ;88A017;
    LDA.B #$05                           ;88A019;
    JSL.L CODE_848F07                    ;88A01B;
    STZ.B $2F                            ;88A01F;
    LDA.B #$0A                           ;88A021;
    STA.B $03                            ;88A023;
    LDA.B #$4D                           ;88A025;
    JSL.L CODE_8088A2                    ;88A027;
    LDA.B #$1E                           ;88A02B;
    JSL.L CODE_84A333                    ;88A02D;

CODE_88A031:
    RTS                                  ;88A031;

CODE_88A032:
    JSL.L CODE_848EEA                    ;88A032;
    LDA.B $0F                            ;88A036;
    BPL CODE_88A048                      ;88A038;
    LDA.B #$0C                           ;88A03A;
    STA.B $03                            ;88A03C;
    LDA.B #$00                           ;88A03E;
    JSL.L CODE_848F07                    ;88A040;
    LDA.B #$20                           ;88A044;
    STA.B $34                            ;88A046;

CODE_88A048:
    RTS                                  ;88A048;

CODE_88A049:
    JSL.L CODE_84AC9B                    ;88A049;
    JSL.L CODE_848EEA                    ;88A04D;
    DEC.B $34                            ;88A051;
    BNE CODE_88A058                      ;88A053;
    JMP.W CODE_88A362                    ;88A055;

CODE_88A058:
    RTS                                  ;88A058;

CODE_88A059:
    LDX.B $03                            ;88A059;
    JMP.W (PTR16_88A05E,X)               ;88A05B;

PTR16_88A05E:
    dw CODE_88A068                       ;88A05E;
    dw CODE_88A0CE                       ;88A060;
    dw CODE_88A10D                       ;88A062;
    dw CODE_88A122                       ;88A064;
    dw CODE_88A15E                       ;88A066;

CODE_88A068:
    JSL.L CODE_84AC9B                    ;88A068;
    STZ.B $2A                            ;88A06C;
    LDA.B $11                            ;88A06E;
    ASL A                                ;88A070;
    ASL A                                ;88A071;
    LDA.B #$22                           ;88A072;
    BCS CODE_88A078                      ;88A074;
    LDA.B #$DE                           ;88A076;

CODE_88A078:
    STA.B $29                            ;88A078;
    JSL.L CODE_8490A0                    ;88A07A;
    CMP.B #$34                           ;88A07E;
    BCS CODE_88A0C3                      ;88A080;
    LDA.B #$32                           ;88A082;
    LDX.B $29                            ;88A084;
    BPL CODE_88A08A                      ;88A086;
    LDA.B #$CE                           ;88A088;

CODE_88A08A:
    STA.B $29                            ;88A08A;
    JSL.L CODE_8490A0                    ;88A08C;
    CMP.B #$34                           ;88A090;
    BCS CODE_88A0C3                      ;88A092;
    LDA.B #$38                           ;88A094;
    LDX.B $29                            ;88A096;
    BPL CODE_88A09C                      ;88A098;
    LDA.B #$C8                           ;88A09A;

CODE_88A09C:
    STA.B $29                            ;88A09C;
    JSL.L CODE_8490A0                    ;88A09E;
    CMP.B #$34                           ;88A0A2;
    BCS CODE_88A0C3                      ;88A0A4;
    LDA.B #$0A                           ;88A0A6;
    JSL.L CODE_848F07                    ;88A0A8;
    LDA.B $11                            ;88A0AC;
    ASL A                                ;88A0AE;
    ASL A                                ;88A0AF;
    REP #$20                             ;88A0B0;
    LDA.W #$0400                         ;88A0B2;
    BCS CODE_88A0BA                      ;88A0B5;
    LDA.W #$FC00                         ;88A0B7;

CODE_88A0BA:
    STA.B $1A                            ;88A0BA;
    SEP #$20                             ;88A0BC;
    LDA.B #$02                           ;88A0BE;
    STA.B $03                            ;88A0C0;
    RTS                                  ;88A0C2;

CODE_88A0C3:
    LDA.B #$04                           ;88A0C3;
    STA.B $03                            ;88A0C5;
    LDA.B #$10                           ;88A0C7;
    JSL.L CODE_848F07                    ;88A0C9;
    RTS                                  ;88A0CD;

CODE_88A0CE:
    JSL.L CODE_848EEA                    ;88A0CE;
    LDA.B $0F                            ;88A0D2;
    BPL CODE_88A0FF                      ;88A0D4;
    JSL.L CODE_82823E                    ;88A0D6;
    REP #$20                             ;88A0DA;
    LDA.W #$CFD1                         ;88A0DC;
    STA.B $20                            ;88A0DF;
    SEP #$20                             ;88A0E1;
    JSL.L CODE_8491BE                    ;88A0E3;
    LDA.B $2B                            ;88A0E7;
    AND.B #$03                           ;88A0E9;
    BEQ CODE_88A0FF                      ;88A0EB;
    LDA.B #$0B                           ;88A0ED;
    JSL.L CODE_848F07                    ;88A0EF;
    LDA.B #$06                           ;88A0F3;
    STA.B $03                            ;88A0F5;
    LDA.B #$1E                           ;88A0F7;
    STA.B $34                            ;88A0F9;
    JSL.L CODE_84A311                    ;88A0FB;

CODE_88A0FF:
    REP #$20                             ;88A0FF;
    LDA.W #$CFD6                         ;88A101;
    STA.B $20                            ;88A104;
    SEP #$20                             ;88A106;
    JSL.L CODE_849B03                    ;88A108;
    RTS                                  ;88A10C;

CODE_88A10D:
    JSL.L CODE_848EEA                    ;88A10D;
    LDA.B $0F                            ;88A111;
    BEQ CODE_88A121                      ;88A113;
    LDA.B #$06                           ;88A115;
    STA.B $03                            ;88A117;
    LDA.B #$1E                           ;88A119;
    STA.B $34                            ;88A11B;
    JSL.L CODE_84A311                    ;88A11D;

CODE_88A121:
    RTS                                  ;88A121;

CODE_88A122:
    REP #$20                             ;88A122;
    LDA.W #$CFD6                         ;88A124;
    STA.B $20                            ;88A127;
    SEP #$20                             ;88A129;
    JSL.L CODE_849B03                    ;88A12B;
    JSL.L CODE_848EEA                    ;88A12F;
    DEC.B $34                            ;88A133;
    BNE CODE_88A146                      ;88A135;
    LDA.B #$08                           ;88A137;
    STA.B $03                            ;88A139;
    LDA.B #$00                           ;88A13B;
    JSL.L CODE_848F07                    ;88A13D;
    LDA.B #$20                           ;88A141;
    STA.B $34                            ;88A143;
    RTS                                  ;88A145;

CODE_88A146:
    LDA.W $0C32                          ;88A146;
    BNE CODE_88A15D                      ;88A149;
    LDA.W $0C06                          ;88A14B;
    AND.B #$03                           ;88A14E;
    BEQ CODE_88A15D                      ;88A150;
    LDA.W $0C2F                          ;88A152;
    BMI CODE_88A15D                      ;88A155;
    LDA.B #$20                           ;88A157;
    JSL.L CODE_84A008                    ;88A159;

CODE_88A15D:
    RTS                                  ;88A15D;

CODE_88A15E:
    JSL.L CODE_84AC9B                    ;88A15E;
    JSL.L CODE_848EEA                    ;88A162;
    DEC.B $34                            ;88A166;
    BNE CODE_88A16D                      ;88A168;
    JMP.W CODE_88A362                    ;88A16A;

CODE_88A16D:
    RTS                                  ;88A16D;

CODE_88A16E:
    LDX.B $03                            ;88A16E;
    JMP.W (PTR16_88A173,X)               ;88A170;

PTR16_88A173:
    dw CODE_88A17D                       ;88A173;
    dw CODE_88A1A3                       ;88A175;
    dw CODE_88A1B4                       ;88A177;
    dw CODE_88A1E4                       ;88A179;
    dw CODE_88A1FB                       ;88A17B;

CODE_88A17D:
    LDA.B #$02                           ;88A17D;
    STA.B $03                            ;88A17F;
    LDA.B #$02                           ;88A181;
    JSL.L CODE_848F07                    ;88A183;
    JSL.L CODE_84AC9B                    ;88A187;
    REP #$20                             ;88A18B;
    LDA.W $0BAD                          ;88A18D;
    SEC                                  ;88A190;
    SBC.B $05                            ;88A191;
    ASL A                                ;88A193;
    ASL A                                ;88A194;
    STA.B $1A                            ;88A195;
    LDA.W #$070D                         ;88A197;
    STA.B $1C                            ;88A19A;
    SEP #$20                             ;88A19C;
    LDA.B #$40                           ;88A19E;
    STA.B $1E                            ;88A1A0;
    RTS                                  ;88A1A2;

CODE_88A1A3:
    JSL.L CODE_848EEA                    ;88A1A3;
    LDA.B $0F                            ;88A1A7;
    BPL CODE_88A1B3                      ;88A1A9;
    LDA.B #$FF                           ;88A1AB;
    STA.B $2F                            ;88A1AD;
    LDA.B #$04                           ;88A1AF;
    STA.B $03                            ;88A1B1;

CODE_88A1B3:
    RTS                                  ;88A1B3;

CODE_88A1B4:
    JSL.L CODE_8281E8                    ;88A1B4;
    REP #$20                             ;88A1B8;
    LDA.W #$CFB8                         ;88A1BA;
    STA.B $20                            ;88A1BD;
    SEP #$20                             ;88A1BF;
    JSL.L CODE_8491BE                    ;88A1C1;
    LDA.B $2B                            ;88A1C5;
    AND.B #$04                           ;88A1C7;
    BEQ CODE_88A1E3                      ;88A1C9;
    LDA.B #$05                           ;88A1CB;
    JSL.L CODE_848F07                    ;88A1CD;
    STZ.B $2F                            ;88A1D1;
    LDA.B #$06                           ;88A1D3;
    STA.B $03                            ;88A1D5;
    LDA.B #$4D                           ;88A1D7;
    JSL.L CODE_8088A2                    ;88A1D9;
    LDA.B #$1E                           ;88A1DD;
    JSL.L CODE_84A333                    ;88A1DF;

CODE_88A1E3:
    RTS                                  ;88A1E3;

CODE_88A1E4:
    JSL.L CODE_848EEA                    ;88A1E4;
    LDA.B $0F                            ;88A1E8;
    BPL CODE_88A1FA                      ;88A1EA;
    LDA.B #$08                           ;88A1EC;
    STA.B $03                            ;88A1EE;
    LDA.B #$00                           ;88A1F0;
    JSL.L CODE_848F07                    ;88A1F2;
    LDA.B #$20                           ;88A1F6;
    STA.B $34                            ;88A1F8;

CODE_88A1FA:
    RTS                                  ;88A1FA;

CODE_88A1FB:
    JSL.L CODE_84AC9B                    ;88A1FB;
    JSL.L CODE_848EEA                    ;88A1FF;
    DEC.B $34                            ;88A203;
    BNE CODE_88A20A                      ;88A205;
    JMP.W CODE_88A362                    ;88A207;

CODE_88A20A:
    RTS                                  ;88A20A;

CODE_88A20B:
    LDA.B $03                            ;88A20B;
    BNE CODE_88A235                      ;88A20D;
    INC.B $03                            ;88A20F;
    LDA.B $11                            ;88A211;
    ASL A                                ;88A213;
    ASL A                                ;88A214;
    REP #$20                             ;88A215;
    LDA.W #$0400                         ;88A217;
    BCC CODE_88A21F                      ;88A21A;
    LDA.W #$FC00                         ;88A21C;

CODE_88A21F:
    STA.B $1A                            ;88A21F;
    STZ.B $1C                            ;88A221;
    SEP #$20                             ;88A223;
    LDA.B #$20                           ;88A225;
    STA.B $1F                            ;88A227;
    STZ.B $1E                            ;88A229;
    LDA.B #$20                           ;88A22B;
    STA.B $34                            ;88A22D;
    LDA.B #$01                           ;88A22F;
    JSL.L CODE_848F07                    ;88A231;

CODE_88A235:
    JSL.L CODE_848EEA                    ;88A235;
    LDA.B $11                            ;88A239;
    ASL A                                ;88A23B;
    ASL A                                ;88A23C;
    BCS CODE_88A245                      ;88A23D;
    JSL.L CODE_828174                    ;88A23F;
    BRA CODE_88A249                      ;88A243;

CODE_88A245:
    JSL.L CODE_828195                    ;88A245;

CODE_88A249:
    REP #$20                             ;88A249;
    LDA.W #$CFB8                         ;88A24B;
    STA.B $20                            ;88A24E;
    SEP #$20                             ;88A250;
    JSL.L CODE_8491BE                    ;88A252;
    DEC.B $34                            ;88A256;
    BNE CODE_88A25D                      ;88A258;
    JMP.W CODE_88A362                    ;88A25A;

CODE_88A25D:
    RTS                                  ;88A25D;

CODE_88A25E:
    LDA.B $11                            ;88A25E;
    AND.B #$F1                           ;88A260;
    ORA.B #$0A                           ;88A262;
    STA.B $11                            ;88A264;
    LDX.B $03                            ;88A266;
    JMP.W (PTR16_88A26B,X)               ;88A268;

PTR16_88A26B:
    dw CODE_88A275                       ;88A26B;
    dw CODE_88A29D                       ;88A26D;
    dw CODE_88A2CD                       ;88A26F;
    dw CODE_88A2DF                       ;88A271;
    dw CODE_88A322                       ;88A273;

CODE_88A275:
    LDA.B #$01                           ;88A275;
    STA.B $36                            ;88A277;
    LDA.B #$3C                           ;88A279;
    STA.B $34                            ;88A27B;
    LDA.B $2F                            ;88A27D;
    BEQ CODE_88A298                      ;88A27F;
    REP #$20                             ;88A281;
    STZ.B $1A                            ;88A283;
    STZ.B $1C                            ;88A285;
    SEP #$20                             ;88A287;
    LDA.B #$40                           ;88A289;
    STA.B $1E                            ;88A28B;
    LDA.B #$12                           ;88A28D;
    JSL.L CODE_848F07                    ;88A28F;
    LDA.B #$02                           ;88A293;
    STA.B $03                            ;88A295;
    RTS                                  ;88A297;

CODE_88A298:
    LDA.B #$04                           ;88A298;
    STA.B $03                            ;88A29A;
    RTS                                  ;88A29C;

CODE_88A29D:
    JSL.L CODE_8281E8                    ;88A29D;
    REP #$20                             ;88A2A1;
    LDA.W #$CFB8                         ;88A2A3;
    STA.B $20                            ;88A2A6;
    SEP #$20                             ;88A2A8;
    JSL.L CODE_8491BE                    ;88A2AA;
    LDA.B $2B                            ;88A2AE;
    AND.B #$04                           ;88A2B0;
    BEQ CODE_88A2C6                      ;88A2B2;
    LDA.B #$04                           ;88A2B4;
    STA.B $03                            ;88A2B6;
    STZ.B $2F                            ;88A2B8;
    LDA.B #$4D                           ;88A2BA;
    JSL.L CODE_8088A2                    ;88A2BC;
    LDA.B #$1E                           ;88A2C0;
    JSL.L CODE_84A333                    ;88A2C2;

CODE_88A2C6:
    LDA.B $34                            ;88A2C6;
    BEQ CODE_88A2CC                      ;88A2C8;
    DEC.B $34                            ;88A2CA;

CODE_88A2CC:
    RTS                                  ;88A2CC;

CODE_88A2CD:
    LDA.B $34                            ;88A2CD;
    BNE CODE_88A2DC                      ;88A2CF;
    LDA.B #$06                           ;88A2D1;
    STA.B $03                            ;88A2D3;
    LDA.B #$12                           ;88A2D5;
    JSL.L CODE_848F07                    ;88A2D7;
    RTS                                  ;88A2DB;

CODE_88A2DC:
    DEC.B $34                            ;88A2DC;
    RTS                                  ;88A2DE;

CODE_88A2DF:
    JSL.L CODE_848EEA                    ;88A2DF;
    LDA.B $0F                            ;88A2E3;
    BPL CODE_88A321                      ;88A2E5;
    LDA.B #$08                           ;88A2E7;
    STA.B $03                            ;88A2E9;
    LDA.B #$1E                           ;88A2EB;
    STA.B $34                            ;88A2ED;
    LDY.B #$0F                           ;88A2EF;

CODE_88A2F1:
    JSL.L CODE_8282D3                    ;88A2F1;
    BNE CODE_88A319                      ;88A2F5;
    INC.W $0000,X                        ;88A2F7;
    LDA.B #$06                           ;88A2FA;
    STA.W $000A,X                        ;88A2FC;
    LDA.B $11                            ;88A2FF;
    AND.B #$40                           ;88A301;
    STA.W $0011,X                        ;88A303;
    TYA                                  ;88A306;
    STA.W $000B,X                        ;88A307;
    REP #$20                             ;88A30A;
    LDA.B $05                            ;88A30C;
    STA.W $0005,X                        ;88A30E;
    LDA.B $08                            ;88A311;
    STA.W $0008,X                        ;88A313;
    DEY                                  ;88A316;
    BPL CODE_88A2F1                      ;88A317;

CODE_88A319:
    SEP #$30                             ;88A319;
    LDA.B #$4C                           ;88A31B;
    JSL.L CODE_8088A2                    ;88A31D;

CODE_88A321:
    RTS                                  ;88A321;

CODE_88A322:
    LDA.B $11                            ;88A322;
    AND.B #$F1                           ;88A324;
    ORA.B #$08                           ;88A326;
    STA.B $11                            ;88A328;
    DEC.B $34                            ;88A32A;
    BNE CODE_88A333                      ;88A32C;
    STZ.B $36                            ;88A32E;
    JMP.W CODE_88A362                    ;88A330;

CODE_88A333:
    RTS                                  ;88A333;

CODE_88A334:
    JSL.L CODE_84A66D                    ;88A334;
    BPL CODE_88A353                      ;88A338;
    LDA.W $1F7A                          ;88A33A;
    CMP.B #$09                           ;88A33D;
    BCC CODE_88A34F                      ;88A33F;
    LDA.B #$1C                           ;88A341;
    JSL.L CODE_8087A2                    ;88A343;
    LDA.B #$F5                           ;88A347;
    LDY.B #$03                           ;88A349;
    JSL.L CODE_80887F                    ;88A34B;

CODE_88A34F:
    JML.L CODE_828398                    ;88A34F;

CODE_88A353:
    JSL.L CODE_848EEA                    ;88A353;
    LDA.B $03                            ;88A357;
    CMP.B #$14                           ;88A359;
    BCS CODE_88A361                      ;88A35B;
    JML.L CODE_8280B4                    ;88A35D;

CODE_88A361:
    RTL                                  ;88A361;

CODE_88A362:
    LDA.B $02                            ;88A362;
    ASL A                                ;88A364;
    CLC                                  ;88A365;
    ADC.B #$03                           ;88A366;
    TAX                                  ;88A368;
    LDY.B #$03                           ;88A369;
    JSL.L CODE_849086                    ;88A36B;
    AND.B #$1F                           ;88A36F;

CODE_88A371:
    SEC                                  ;88A371;
    SBC.W DATA8_86CFDB,X                 ;88A372;
    BCC CODE_88A37B                      ;88A375;
    DEX                                  ;88A377;
    DEY                                  ;88A378;
    BNE CODE_88A371                      ;88A379;

CODE_88A37B:
    TYA                                  ;88A37B;
    ASL A                                ;88A37C;
    STA.B $02                            ;88A37D;
    STZ.B $03                            ;88A37F;
    RTS                                  ;88A381;

CODE_88A382:
    LDX.B $01                            ;88A382;
    JSR.W (PTR16_88A394,X)               ;88A384;
    JSL.L CODE_848FCA                    ;88A387;
    LDA.B $11                            ;88A38B;
    AND.B #$3F                           ;88A38D;
    ORA.B $33                            ;88A38F;
    STA.B $11                            ;88A391;
    RTL                                  ;88A393;

PTR16_88A394:
    dw CODE_88A39C                       ;88A394;
    dw CODE_88A3ED                       ;88A396;
    dw CODE_88A73A                       ;88A398;
    dw CODE_88A73F                       ;88A39A;

CODE_88A39C:
    JSL.L CODE_82827D                    ;88A39C;
    LDA.B #$51                           ;88A3A0;
    STA.B $10                            ;88A3A2;
    STZ.B $18                            ;88A3A4;
    LDA.B #$04                           ;88A3A6;
    STA.B $12                            ;88A3A8;
    LDA.B #$40                           ;88A3AA;
    STA.B $33                            ;88A3AC;
    STZ.B $2F                            ;88A3AE;
    LDA.B #$7F                           ;88A3B0;
    STA.B $27                            ;88A3B2;
    STZ.B $3B                            ;88A3B4;
    STZ.B $17                            ;88A3B6;
    REP #$20                             ;88A3B8;
    LDA.W #$D01A                         ;88A3BA;
    STA.B $20                            ;88A3BD;
    LDA.W #$A96E                         ;88A3BF;
    STA.B $31                            ;88A3C2;
    LDA.W #$0040                         ;88A3C4;
    STA.B $1E                            ;88A3C7;
    SEP #$20                             ;88A3C9;
    LDA.W $1F7A                          ;88A3CB;
    CMP.B #$09                           ;88A3CE;
    BNE CODE_88A3EC                      ;88A3D0;
    LDA.W $00D3                          ;88A3D2;
    CMP.B #$0A                           ;88A3D5;
    BEQ CODE_88A3E8                      ;88A3D7;
    LDA.W $1F7C                          ;88A3D9;
    BPL CODE_88A3E3                      ;88A3DC;
    LDA.B #$04                           ;88A3DE;
    STA.B $01                            ;88A3E0;
    RTS                                  ;88A3E2;

CODE_88A3E3:
    LDA.B #$80                           ;88A3E3;
    TSB.W $1F7C                          ;88A3E5;

CODE_88A3E8:
    LDA.B #$0C                           ;88A3E8;
    STA.B $02                            ;88A3EA;

CODE_88A3EC:
    RTS                                  ;88A3EC;

CODE_88A3ED:
    LDX.B $02                            ;88A3ED;
    JSR.W (PTR16_88A3FB,X)               ;88A3EF;
    JSL.L CODE_8280B4                    ;88A3F2;
    JSL.L CODE_8491BE                    ;88A3F6;
    RTS                                  ;88A3FA;

PTR16_88A3FB:
    dw CODE_88A567                       ;88A3FB;
    dw CODE_88A5AC                       ;88A3FD;
    dw CODE_88A619                       ;88A3FF;
    dw CODE_88A626                       ;88A401;
    dw CODE_88A6C5                       ;88A403;
    dw CODE_88A708                       ;88A405;
    dw CODE_88A51C                       ;88A407;
    dw CODE_88A40B                       ;88A409;

CODE_88A40B:
    LDA.W $0BAA                          ;88A40B;
    BNE CODE_88A419                      ;88A40E;
    LDA.W $0BAB                          ;88A410;
    BNE CODE_88A419                      ;88A413;
    JSL.L CODE_849FE6                    ;88A415;

CODE_88A419:
    LDX.B $03                            ;88A419;
    JMP.W (PTR16_88A41E,X)               ;88A41B;

PTR16_88A41E:
    dw CODE_88A42C                       ;88A41E;
    dw CODE_88A43D                       ;88A420;
    dw CODE_88A470                       ;88A422;
    dw CODE_88A4A7                       ;88A424;
    dw CODE_88A4E6                       ;88A426;
    dw CODE_88A4FC                       ;88A428;
    dw CODE_88A50F                       ;88A42A;

CODE_88A42C:
    LDA.B #$02                           ;88A42C;
    STA.B $03                            ;88A42E;
    LDA.B #$3C                           ;88A430;
    STA.B $34                            ;88A432;
    LDA.B #$02                           ;88A434;
    JSL.L CODE_848F07                    ;88A436;
    JMP.W CODE_88A778                    ;88A43A;

CODE_88A43D:
    DEC.B $34                            ;88A43D;
    BNE CODE_88A46F                      ;88A43F;
    LDA.B #$04                           ;88A441;
    STA.B $03                            ;88A443;
    LDA.W $1F3D                          ;88A445;
    STA.B $3B                            ;88A448;
    LDA.B #$80                           ;88A44A;
    STA.W $0000                          ;88A44C;
    LDA.B #$50                           ;88A44F;
    STA.W $0002                          ;88A451;
    LDA.B #$58                           ;88A454;
    STA.W $0004                          ;88A456;
    LDA.B #$30                           ;88A459;
    STA.W $0006                          ;88A45B;
    LDA.B #$17                           ;88A45E;
    LDX.W $00D3                          ;88A460;
    CPX.B #$0A                           ;88A463;
    BNE CODE_88A468                      ;88A465;
    INC A                                ;88A467;

CODE_88A468:
    STA.W $0008                          ;88A468;
    JSL.L CODE_83F74A                    ;88A46B;

CODE_88A46F:
    RTS                                  ;88A46F;

CODE_88A470:
    LDA.W $1F3C                          ;88A470;
    BEQ CODE_88A4A1                      ;88A473;
    CMP.B #$02                           ;88A475;
    BNE CODE_88A484                      ;88A477;
    LDA.B #$06                           ;88A479;
    STA.B $03                            ;88A47B;
    LDA.B #$01                           ;88A47D;
    JSL.L CODE_848F07                    ;88A47F;
    RTS                                  ;88A483;

CODE_88A484:
    LDA.W $1F3D                          ;88A484;
    CMP.B $3B                            ;88A487;
    BEQ CODE_88A49D                      ;88A489;
    LDA.B $3B                            ;88A48B;
    BNE CODE_88A497                      ;88A48D;
    LDA.B #$01                           ;88A48F;
    JSL.L CODE_848F07                    ;88A491;
    BRA CODE_88A49D                      ;88A495;

CODE_88A497:
    LDA.B #$02                           ;88A497;
    JSL.L CODE_848F07                    ;88A499;

CODE_88A49D:
    JSL.L CODE_848EEA                    ;88A49D;

CODE_88A4A1:
    LDA.W $1F3D                          ;88A4A1;
    STA.B $3B                            ;88A4A4;
    RTS                                  ;88A4A6;

CODE_88A4A7:
    LDA.W $1F2C                          ;88A4A7;
    BMI CODE_88A4E5                      ;88A4AA;
    LDA.W $00D3                          ;88A4AC;
    CMP.B #$0A                           ;88A4AF;
    BNE CODE_88A4C9                      ;88A4B1;
    LDA.B #$0A                           ;88A4B3;
    STA.B $03                            ;88A4B5;
    STA.W $1F23                          ;88A4B7;
    LDA.B #$00                           ;88A4BA;
    STA.B $1C                            ;88A4BC;
    LDA.B #$08                           ;88A4BE;
    STA.B $1D                            ;88A4C0;
    LDA.B #$04                           ;88A4C2;
    JSL.L CODE_848F07                    ;88A4C4;
    RTS                                  ;88A4C8;

CODE_88A4C9:
    LDA.B #$08                           ;88A4C9;
    STA.B $03                            ;88A4CB;
    LDA.B #$40                           ;88A4CD;
    STA.B $33                            ;88A4CF;
    LDA.B #$00                           ;88A4D1;
    STA.B $1A                            ;88A4D3;
    LDA.B #$04                           ;88A4D5;
    STA.B $1B                            ;88A4D7;
    LDA.B #$08                           ;88A4D9;
    JSL.L CODE_8088A2                    ;88A4DB;
    LDA.B #$00                           ;88A4DF;
    JSL.L CODE_848F07                    ;88A4E1;

CODE_88A4E5:
    RTS                                  ;88A4E5;

CODE_88A4E6:
    LDA.B $0E                            ;88A4E6;
    BNE CODE_88A4F3                      ;88A4E8;
    LDA.B #$06                           ;88A4EA;
    STA.B $01                            ;88A4EC;
    JSL.L CODE_849FFE                    ;88A4EE;
    RTS                                  ;88A4F2;

CODE_88A4F3:
    JSL.L CODE_82823E                    ;88A4F3;
    JSL.L CODE_848EEA                    ;88A4F7;
    RTS                                  ;88A4FB;

CODE_88A4FC:
    LDA.B $0F                            ;88A4FC;
    BPL CODE_88A50A                      ;88A4FE;
    LDA.B #$0C                           ;88A500;
    STA.B $03                            ;88A502;
    LDA.B #$0F                           ;88A504;
    JSL.L CODE_8088A2                    ;88A506;

CODE_88A50A:
    JSL.L CODE_848EEA                    ;88A50A;
    RTS                                  ;88A50E;

CODE_88A50F:
    LDA.B $0E                            ;88A50F;
    BNE CODE_88A517                      ;88A511;
    LDA.B #$04                           ;88A513;
    STA.B $01                            ;88A515;

CODE_88A517:
    JSL.L CODE_82825D                    ;88A517;
    RTS                                  ;88A51B;

CODE_88A51C:
    LDX.B $03                            ;88A51C;
    JMP.W (PTR16_88A521,X)               ;88A51E;

PTR16_88A521:
    dw CODE_88A527                       ;88A521;
    dw CODE_88A543                       ;88A523;
    dw CODE_88A558                       ;88A525;

CODE_88A527:
    LDA.B #$02                           ;88A527;
    STA.B $03                            ;88A529;
    REP #$20                             ;88A52B;
    LDA.W #$F800                         ;88A52D;
    STA.B $1C                            ;88A530;
    LDA.W #$0060                         ;88A532;
    STA.W $0BAD                          ;88A535;
    SEP #$20                             ;88A538;
    STZ.B $33                            ;88A53A;
    LDA.B #$0E                           ;88A53C;
    JSL.L CODE_848F07                    ;88A53E;
    RTS                                  ;88A542;

CODE_88A543:
    LDA.B $2B                            ;88A543;
    BIT.B #$04                           ;88A545;
    BEQ CODE_88A553                      ;88A547;
    LDA.B #$04                           ;88A549;
    STA.B $03                            ;88A54B;
    LDA.B #$0D                           ;88A54D;
    JSL.L CODE_848F07                    ;88A54F;

CODE_88A553:
    JSL.L CODE_82825D                    ;88A553;
    RTS                                  ;88A557;

CODE_88A558:
    LDA.B $0F                            ;88A558;
    BPL CODE_88A562                      ;88A55A;
    LDA.B #$0E                           ;88A55C;
    STA.B $02                            ;88A55E;
    STZ.B $03                            ;88A560;

CODE_88A562:
    JSL.L CODE_848EEA                    ;88A562;
    RTS                                  ;88A566;

CODE_88A567:
    LDX.B $03                            ;88A567;
    BNE CODE_88A573                      ;88A569;
    INC.B $03                            ;88A56B;
    LDA.B #$03                           ;88A56D;
    JSL.L CODE_848F07                    ;88A56F;

CODE_88A573:
    LDA.B $0F                            ;88A573;
    LSR A                                ;88A575;
    BCC CODE_88A57E                      ;88A576;
    LDA.B #$03                           ;88A578;
    JSL.L CODE_8088A2                    ;88A57A;

CODE_88A57E:
    BIT.B $0F                            ;88A57E;
    BPL CODE_88A598                      ;88A580;
    LDA.B #$01                           ;88A582;
    TRB.B $3B                            ;88A584;
    BIT.B $3B                            ;88A586;
    BVC CODE_88A593                      ;88A588;
    JSL.L CODE_84A070                    ;88A58A;
    LDA.B #$06                           ;88A58E;
    JMP.W CODE_88A78E                    ;88A590;

CODE_88A593:
    LDA.B #$0A                           ;88A593;
    JMP.W CODE_88A78E                    ;88A595;

CODE_88A598:
    BVC CODE_88A5A7                      ;88A598;
    LDA.B #$01                           ;88A59A;
    TSB.B $3B                            ;88A59C;
    LDA.B #$02                           ;88A59E;
    JSL.L CODE_8088A2                    ;88A5A0;
    JSR.W CODE_88A744                    ;88A5A4;

CODE_88A5A7:
    JSL.L CODE_848EEA                    ;88A5A7;
    RTS                                  ;88A5AB;

CODE_88A5AC:
    LDX.B $03                            ;88A5AC;
    JMP.W (PTR16_88A5B1,X)               ;88A5AE;

PTR16_88A5B1:
    dw CODE_88A5B7                       ;88A5B1;
    dw CODE_88A5D7                       ;88A5B3;
    dw CODE_88A60B                       ;88A5B5;

CODE_88A5B7:
    LDA.B #$02                           ;88A5B7;
    STA.B $03                            ;88A5B9;
    REP #$20                             ;88A5BB;
    LDA.W #$0400                         ;88A5BD;
    BIT.B $32                            ;88A5C0;
    BVS CODE_88A5C7                      ;88A5C2;
    LDA.W #$FC00                         ;88A5C4;

CODE_88A5C7:
    STA.B $1A                            ;88A5C7;
    SEP #$20                             ;88A5C9;
    LDA.B #$08                           ;88A5CB;
    JSL.L CODE_8088A2                    ;88A5CD;
    LDA.B #$00                           ;88A5D1;
    JSL.L CODE_848F07                    ;88A5D3;

CODE_88A5D7:
    JSL.L CODE_848EEA                    ;88A5D7;
    JSL.L CODE_82823E                    ;88A5DB;
    REP #$21                             ;88A5DF;
    LDA.W $0BAD                          ;88A5E1;
    ADC.W #$0020                         ;88A5E4;
    CMP.B $05                            ;88A5E7;
    SEP #$20                             ;88A5E9;
    BCS CODE_88A60A                      ;88A5EB;
    LDA.B #$04                           ;88A5ED;
    STA.B $03                            ;88A5EF;
    LDA.B #$3C                           ;88A5F1;
    STA.B $34                            ;88A5F3;
    LDA.B #$01                           ;88A5F5;
    JSL.L CODE_848F07                    ;88A5F7;
    REP #$21                             ;88A5FB;
    LDA.B $05                            ;88A5FD;
    ADC.W #$FFA0                         ;88A5FF;
    STA.W $1E5E                          ;88A602;
    STA.W $1E60                          ;88A605;
    SEP #$20                             ;88A608;

CODE_88A60A:
    RTS                                  ;88A60A;

CODE_88A60B:
    DEC.B $34                            ;88A60B;
    BNE CODE_88A618                      ;88A60D;
    LDA.B #$40                           ;88A60F;
    TSB.B $3B                            ;88A611;
    LDA.B #$00                           ;88A613;
    JMP.W CODE_88A78E                    ;88A615;

CODE_88A618:
    RTS                                  ;88A618;

CODE_88A619:
    LDX.B $03                            ;88A619;
    BNE CODE_88A625                      ;88A61B;
    INC.B $03                            ;88A61D;
    LDA.B #$04                           ;88A61F;
    JSL.L CODE_848F07                    ;88A621;

CODE_88A625:
    RTS                                  ;88A625;

CODE_88A626:
    LDX.B $03                            ;88A626;
    JMP.W (PTR16_88A62B,X)               ;88A628;

PTR16_88A62B:
    dw CODE_88A639                       ;88A62B;
    dw CODE_88A648                       ;88A62D;
    dw CODE_88A65D                       ;88A62F;
    dw CODE_88A678                       ;88A631;
    dw CODE_88A68E                       ;88A633;
    dw CODE_88A69A                       ;88A635;
    dw CODE_88A6BB                       ;88A637;

CODE_88A639:
    LDA.B #$02                           ;88A639;
    STA.B $03                            ;88A63B;
    LDA.B #$05                           ;88A63D;
    JSL.L CODE_848F07                    ;88A63F;
    LDA.B #$80                           ;88A643;
    STA.B $34                            ;88A645;
    RTS                                  ;88A647;

CODE_88A648:
    DEC.B $34                            ;88A648;
    BNE CODE_88A65C                      ;88A64A;
    LDA.B #$04                           ;88A64C;
    STA.B $03                            ;88A64E;
    LDY.B #$02                           ;88A650;
    LDA.B #$F6                           ;88A652;
    JSL.L CODE_80887F                    ;88A654;
    LDA.B #$3C                           ;88A658;
    STA.B $34                            ;88A65A;

CODE_88A65C:
    RTS                                  ;88A65C;

CODE_88A65D:
    DEC.B $34                            ;88A65D;
    BNE CODE_88A677                      ;88A65F;
    LDA.B #$06                           ;88A661;
    STA.B $03                            ;88A663;
    LDA.B #$01                           ;88A665;
    JSL.L CODE_848F07                    ;88A667;
    LDA.L $001F26                        ;88A66B;
    BEQ CODE_88A677                      ;88A66F;
    LDA.B #$26                           ;88A671;
    JSL.L CODE_8087A2                    ;88A673;

CODE_88A677:
    RTS                                  ;88A677;

CODE_88A678:
    LDA.W $1F3C                          ;88A678;
    BEQ CODE_88A68D                      ;88A67B;
    LDA.B #$08                           ;88A67D;
    STA.B $03                            ;88A67F;
    LDA.B $33                            ;88A681;
    EOR.B #$40                           ;88A683;
    STA.B $33                            ;88A685;
    LDA.B #$02                           ;88A687;
    JSL.L CODE_848F07                    ;88A689;

CODE_88A68D:
    RTS                                  ;88A68D;

CODE_88A68E:
    LDA.W $1F3C                          ;88A68E;
    CMP.B #$04                           ;88A691;
    BNE CODE_88A699                      ;88A693;
    LDA.B #$0A                           ;88A695;
    STA.B $03                            ;88A697;

CODE_88A699:
    RTS                                  ;88A699;

CODE_88A69A:
    LDA.W $1F3C                          ;88A69A;
    BNE CODE_88A6AA                      ;88A69D;
    LDA.B #$0C                           ;88A69F;
    STA.B $03                            ;88A6A1;
    LDA.B #$01                           ;88A6A3;
    JSL.L CODE_848F07                    ;88A6A5;
    RTS                                  ;88A6A9;

CODE_88A6AA:
    LDA.W $1F3D                          ;88A6AA;
    BNE CODE_88A6B4                      ;88A6AD;
    JSL.L CODE_848EEA                    ;88A6AF;
    RTS                                  ;88A6B3;

CODE_88A6B4:
    LDA.B #$02                           ;88A6B4;
    JSL.L CODE_848F07                    ;88A6B6;

CODE_88A6BA:
    RTS                                  ;88A6BA;

CODE_88A6BB:
    LDA.W $1F2C                          ;88A6BB;
    BMI CODE_88A6BA                      ;88A6BE;
    LDA.B #$08                           ;88A6C0;
    JMP.W CODE_88A78E                    ;88A6C2;

CODE_88A6C5:
    LDX.B $03                            ;88A6C5;
    JMP.W (PTR16_88A6CA,X)               ;88A6C7;

PTR16_88A6CA:
    dw CODE_88A6D0                       ;88A6CA;
    dw CODE_88A6DA                       ;88A6CC;
    dw CODE_88A6F5                       ;88A6CE;

CODE_88A6D0:
    LDA.B #$02                           ;88A6D0;
    STA.B $03                            ;88A6D2;
    LDA.B #$04                           ;88A6D4;
    JSL.L CODE_848F07                    ;88A6D6;

CODE_88A6DA:
    LDA.B $0F                            ;88A6DA;
    BPL CODE_88A6F0                      ;88A6DC;
    LDA.B #$04                           ;88A6DE;
    STA.B $03                            ;88A6E0;
    LDA.B #$A6                           ;88A6E2;
    STA.B $1C                            ;88A6E4;
    LDA.B #$0A                           ;88A6E6;
    STA.B $1D                            ;88A6E8;
    LDA.B #$0F                           ;88A6EA;
    JSL.L CODE_8088A2                    ;88A6EC;

CODE_88A6F0:
    JSL.L CODE_848EEA                    ;88A6F0;
    RTS                                  ;88A6F4;

CODE_88A6F5:
    LDA.B $0E                            ;88A6F5;
    BNE CODE_88A703                      ;88A6F7;
    LDA.B #$04                           ;88A6F9;
    STA.B $01                            ;88A6FB;
    STA.W $1F23                          ;88A6FD;
    STA.W $1F9B                          ;88A700;

CODE_88A703:
    JSL.L CODE_82825D                    ;88A703;
    RTS                                  ;88A707;

CODE_88A708:
    LDX.B $03                            ;88A708;
    JMP.W (PTR16_88A70D,X)               ;88A70A;

PTR16_88A70D:
    dw CODE_88A713                       ;88A70D;
    dw CODE_88A717                       ;88A70F;
    dw CODE_88A730                       ;88A711;

CODE_88A713:
    LDA.B #$02                           ;88A713;
    STA.B $03                            ;88A715;

CODE_88A717:
    BIT.B $3B                            ;88A717;
    BPL CODE_88A72F                      ;88A719;
    LDA.B #$04                           ;88A71B;
    STA.B $03                            ;88A71D;
    LDA.B #$3C                           ;88A71F;
    STA.B $34                            ;88A721;
    LDA.L $001F26                        ;88A723;
    BEQ CODE_88A72F                      ;88A727;
    LDA.B #$25                           ;88A729;
    JSL.L CODE_8087A2                    ;88A72B;

CODE_88A72F:
    RTS                                  ;88A72F;

CODE_88A730:
    DEC.B $34                            ;88A730;
    BPL CODE_88A739                      ;88A732;
    LDA.B #$02                           ;88A734;
    JSR.W CODE_88A78E                    ;88A736;

CODE_88A739:
    RTS                                  ;88A739;

CODE_88A73A:
    JSL.L CODE_828398                    ;88A73A;
    RTS                                  ;88A73E;

CODE_88A73F:
    JSL.L CODE_828398                    ;88A73F;
    RTS                                  ;88A743;

CODE_88A744:
    JSL.L CODE_82833E                    ;88A744;
    BNE CODE_88A775                      ;88A748;
    INC.W $0000,X                        ;88A74A;
    LDA.B #$1C                           ;88A74D;
    STA.W $000A,X                        ;88A74F;
    LDA.B $11                            ;88A752;
    STA.W $0011,X                        ;88A754;
    REP #$21                             ;88A757;
    LDA.W #$0016                         ;88A759;
    BIT.B $32                            ;88A75C;
    BVS CODE_88A763                      ;88A75E;
    LDA.W #$FFEA                         ;88A760;

CODE_88A763:
    ADC.B $05                            ;88A763;
    STA.W $0005,X                        ;88A765;
    LDA.B $08                            ;88A768;
    CLC                                  ;88A76A;
    ADC.W #$FFFD                         ;88A76B;
    STA.W $0008,X                        ;88A76E;
    TDC                                  ;88A771;
    STA.W $000C,X                        ;88A772;

CODE_88A775:
    SEP #$30                             ;88A775;
    RTS                                  ;88A777;

CODE_88A778:
    JSL.L CODE_828321                    ;88A778;
    BNE CODE_88A78B                      ;88A77C;
    INC.W $0000,X                        ;88A77E;
    LDA.B #$3C                           ;88A781;
    STA.W $000A,X                        ;88A783;
    LDA.B #$03                           ;88A786;
    STA.W $000B,X                        ;88A788;

CODE_88A78B:
    SEP #$10                             ;88A78B;
    RTS                                  ;88A78D;

CODE_88A78E:
    STA.B $02                            ;88A78E;
    STZ.B $03                            ;88A790;
    RTS                                  ;88A792;

CODE_88A793:
    LDX.B $01                            ;88A793;
    JMP.W (PTR16_88A798,X)               ;88A795;

PTR16_88A798:
    dw CODE_88A79E                       ;88A798;
    dw CODE_88A7F8                       ;88A79A;
    dw CODE_88A94F                       ;88A79C;

CODE_88A79E:
    JSL.L CODE_82827D                    ;88A79E;
    LDA.B #$92                           ;88A7A2;
    STA.B $10                            ;88A7A4;
    LDA.W $1F7A                          ;88A7A6;
    CMP.B #$03                           ;88A7A9;
    BNE CODE_88A7BB                      ;88A7AB;
    LDA.B #$9E                           ;88A7AD;
    STA.B $10                            ;88A7AF;
    LDA.B #$AC                           ;88A7B1;
    STA.B $16                            ;88A7B3;
    LDA.L $7F839E                        ;88A7B5;
    STA.B $11                            ;88A7B9;

CODE_88A7BB:
    LDA.B #$20                           ;88A7BB;
    STA.B $18                            ;88A7BD;
    LDA.B #$04                           ;88A7BF;
    STA.B $12                            ;88A7C1;
    LDA.B $0B                            ;88A7C3;
    BEQ CODE_88A7CC                      ;88A7C5;
    LDA.B #$06                           ;88A7C7;
    STA.B $02                            ;88A7C9;
    RTL                                  ;88A7CB;

CODE_88A7CC:
    LDA.B #$03                           ;88A7CC;
    STA.B $34                            ;88A7CE;
    STZ.B $35                            ;88A7D0;
    LDA.W $1F7A                          ;88A7D2;
    CMP.B #$04                           ;88A7D5;
    BNE CODE_88A7DF                      ;88A7D7;
    LDA.B $11                            ;88A7D9;
    EOR.B #$40                           ;88A7DB;
    STA.B $11                            ;88A7DD;

CODE_88A7DF:
    LDA.B $11                            ;88A7DF;
    AND.B #$40                           ;88A7E1;
    EOR.B #$40                           ;88A7E3;
    STA.W $0C11                          ;88A7E5;
    LDY.B #$02                           ;88A7E8;
    LDA.B #$F6                           ;88A7EA;
    JSL.L CODE_80887F                    ;88A7EC;
    REP #$20                             ;88A7F0;
    LDA.W #$B307                         ;88A7F2;
    STA.B $31                            ;88A7F5;
    RTL                                  ;88A7F7;

CODE_88A7F8:
    LDX.B $02                            ;88A7F8;
    JSR.W (PTR16_88A821,X)               ;88A7FA;
    LDA.B $0B                            ;88A7FD;
    BNE CODE_88A81D                      ;88A7FF;
    LDA.B $35                            ;88A801;
    BNE CODE_88A809                      ;88A803;
    JSL.L CODE_8280B4                    ;88A805;

CODE_88A809:
    DEC.B $34                            ;88A809;
    BNE CODE_88A819                      ;88A80B;
    LDA.B $35                            ;88A80D;
    EOR.B #$01                           ;88A80F;
    STA.B $35                            ;88A811;
    TAX                                  ;88A813;
    LDA.W DATA8_86D4E1,X                 ;88A814;
    STA.B $34                            ;88A817;

CODE_88A819:
    JML.L CODE_848FCA                    ;88A819;

CODE_88A81D:
    JML.L CODE_8280B4                    ;88A81D;

PTR16_88A821:
    dw CODE_88A829                       ;88A821;
    dw CODE_88A86C                       ;88A823;
    dw CODE_88A8C0                       ;88A825;
    dw CODE_88A910                       ;88A827;

CODE_88A829:
    LDX.B $03                            ;88A829;
    BNE CODE_88A836                      ;88A82B;
    INC.B $03                            ;88A82D;
    LDA.B #$00                           ;88A82F;
    JSL.L CODE_848F07                    ;88A831;
    RTS                                  ;88A835;

CODE_88A836:
    JSL.L CODE_848EEA                    ;88A836;
    LDA.B $0F                            ;88A83A;
    BPL CODE_88A86B                      ;88A83C;
    LDA.B #$02                           ;88A83E;
    STA.B $02                            ;88A840;
    STZ.B $03                            ;88A842;
    LDA.B #$01                           ;88A844;
    JSL.L CODE_848F07                    ;88A846;
    LDA.B #$80                           ;88A84A;
    STA.W $0000                          ;88A84C;
    LDA.B #$50                           ;88A84F;
    STA.W $0002                          ;88A851;
    LDA.B #$58                           ;88A854;
    STA.W $0004                          ;88A856;
    LDA.B #$30                           ;88A859;
    STA.W $0006                          ;88A85B;
    LDX.W $1F7A                          ;88A85E;
    LDA.W DATA8_86D4E3,X                 ;88A861;
    STA.W $0008                          ;88A864;
    JSL.L CODE_83F74A                    ;88A867;

CODE_88A86B:
    RTS                                  ;88A86B;

CODE_88A86C:
    LDX.B $03                            ;88A86C;
    BNE CODE_88A88C                      ;88A86E;
    LDA.W $1F3C                          ;88A870;
    BEQ CODE_88A88B                      ;88A873;
    LDA.B #$AE                           ;88A875;
    JSL.L CODE_8088CD                    ;88A877;
    INC.B $03                            ;88A87B;
    LDA.B #$02                           ;88A87D;
    JSL.L CODE_848F07                    ;88A87F;
    LDA.W $1F3D                          ;88A883;
    STA.B $36                            ;88A886;
    JMP.W CODE_88A953                    ;88A888;

CODE_88A88B:
    RTS                                  ;88A88B;

CODE_88A88C:
    LDA.W $1F2C                          ;88A88C;
    BMI CODE_88A898                      ;88A88F;
    LDA.B #$04                           ;88A891;
    STA.B $02                            ;88A893;
    STZ.B $03                            ;88A895;
    RTS                                  ;88A897;

CODE_88A898:
    LDA.W $0060                          ;88A898;
    BEQ CODE_88A8BA                      ;88A89B;
    LDA.W $1F3D                          ;88A89D;
    CMP.B $36                            ;88A8A0;
    BEQ CODE_88A8B6                      ;88A8A2;
    LDA.B $36                            ;88A8A4;
    BNE CODE_88A8B0                      ;88A8A6;
    LDA.B #$01                           ;88A8A8;
    JSL.L CODE_848F07                    ;88A8AA;
    BRA CODE_88A8B6                      ;88A8AE;

CODE_88A8B0:
    LDA.B #$02                           ;88A8B0;
    JSL.L CODE_848F07                    ;88A8B2;

CODE_88A8B6:
    JSL.L CODE_848EEA                    ;88A8B6;

CODE_88A8BA:
    LDA.W $1F3D                          ;88A8BA;
    STA.B $36                            ;88A8BD;
    RTS                                  ;88A8BF;

CODE_88A8C0:
    LDX.B $03                            ;88A8C0;
    BNE CODE_88A8D5                      ;88A8C2;
    INC.B $03                            ;88A8C4;
    LDY.B #$10                           ;88A8C6;
    LDA.B #$F5                           ;88A8C8;
    JSL.L CODE_80887F                    ;88A8CA;
    LDA.B #$05                           ;88A8CE;
    JSL.L CODE_848F07                    ;88A8D0;
    RTS                                  ;88A8D4;

CODE_88A8D5:
    JSL.L CODE_848EEA                    ;88A8D5;
    BIT.B $0F                            ;88A8D9;
    BVC CODE_88A8E3                      ;88A8DB;
    LDA.B #$F1                           ;88A8DD;
    JSL.L CODE_80887F                    ;88A8DF;

CODE_88A8E3:
    LDA.B $0F                            ;88A8E3;
    BPL CODE_88A90F                      ;88A8E5;
    LDA.B #$04                           ;88A8E7;
    STA.B $01                            ;88A8E9;
    JSL.L CODE_849FFE                    ;88A8EB;
    REP #$20                             ;88A8EF;
    LDA.L $7FF000                        ;88A8F1;
    STA.W $1E5E                          ;88A8F5;
    LDA.L $7FF002                        ;88A8F8;
    STA.W $1E60                          ;88A8FC;
    LDA.L $7FF004                        ;88A8FF;
    STA.W $1E68                          ;88A903;
    LDA.L $7FF006                        ;88A906;
    STA.W $1E6E                          ;88A90A;
    SEP #$20                             ;88A90D;

CODE_88A90F:
    RTS                                  ;88A90F;

CODE_88A910:
    LDX.B $03                            ;88A910;
    BNE CODE_88A922                      ;88A912;
    INC.B $03                            ;88A914;
    LDA.W $1F3D                          ;88A916;
    STA.B $36                            ;88A919;
    LDA.B #$04                           ;88A91B;
    JSL.L CODE_848F07                    ;88A91D;
    RTS                                  ;88A921;

CODE_88A922:
    LDA.W $1F3C                          ;88A922;
    BNE CODE_88A92C                      ;88A925;
    LDA.B #$04                           ;88A927;
    STA.B $01                            ;88A929;
    RTS                                  ;88A92B;

CODE_88A92C:
    LDA.W $1F3D                          ;88A92C;
    CMP.B $36                            ;88A92F;
    BEQ CODE_88A945                      ;88A931;
    LDA.B $36                            ;88A933;
    BNE CODE_88A93F                      ;88A935;
    LDA.B #$03                           ;88A937;
    JSL.L CODE_848F07                    ;88A939;
    BRA CODE_88A945                      ;88A93D;

CODE_88A93F:
    LDA.B #$04                           ;88A93F;
    JSL.L CODE_848F07                    ;88A941;

CODE_88A945:
    JSL.L CODE_848EEA                    ;88A945;
    LDA.W $1F3D                          ;88A949;
    STA.B $36                            ;88A94C;
    RTS                                  ;88A94E;

CODE_88A94F:
    JML.L CODE_828398                    ;88A94F;

CODE_88A953:
    JSL.L CODE_828321                    ;88A953;
    BNE CODE_88A982                      ;88A957;
    INC.W $0000,X                        ;88A959;
    LDA.B #$5C                           ;88A95C;
    STA.W $000A,X                        ;88A95E;
    LDA.B $11                            ;88A961;
    AND.B #$3F                           ;88A963;
    STA.W $0011,X                        ;88A965;
    LDA.B #$01                           ;88A968;
    STA.W $000B,X                        ;88A96A;
    REP #$21                             ;88A96D;
    LDA.W #$00C0                         ;88A96F;
    ADC.W $1E4D                          ;88A972;
    STA.W $0005,X                        ;88A975;
    LDA.W #$0038                         ;88A978;
    CLC                                  ;88A97B;
    ADC.W $1E50                          ;88A97C;
    STA.W $0008,X                        ;88A97F;

CODE_88A982:
    SEP #$30                             ;88A982;
    RTS                                  ;88A984;

CODE_88A985:
    LDX.B $01                            ;88A985;
    JMP.W (PTR16_88A98A,X)               ;88A987;

PTR16_88A98A:
    dw CODE_88A990                       ;88A98A;
    dw CODE_88AA57                       ;88A98C;
    dw CODE_88ABE0                       ;88A98E;

CODE_88A990:
    LDX.B $02                            ;88A990;
    JMP.W (PTR16_88A995,X)               ;88A992;

PTR16_88A995:
    dw CODE_88A9A1                       ;88A995;
    dw CODE_88A9C5                       ;88A997;
    dw CODE_88A9E0                       ;88A999;
    dw CODE_88A9FB                       ;88A99B;
    dw CODE_88AA1C                       ;88A99D;
    dw CODE_88AA2B                       ;88A99F;

CODE_88A9A1:
    LDA.B #$02                           ;88A9A1;
    STA.B $02                            ;88A9A3;
    STA.B $30                            ;88A9A5;
    STZ.B $27                            ;88A9A7;
    STZ.B $3E                            ;88A9A9;
    REP #$10                             ;88A9AB;
    LDY.W #$0112                         ;88A9AD;
    JSL.L CODE_828011                    ;88A9B0;
    SEP #$10                             ;88A9B4;
    LDA.B #$08                           ;88A9B6;
    STA.W $1F08                          ;88A9B8;
    JSL.L CODE_849FE6                    ;88A9BB;
    LDA.B #$23                           ;88A9BF;
    JML.L CODE_8087A2                    ;88A9C1;

CODE_88A9C5:
    REP #$20                             ;88A9C5;
    LDA.W $0BAD                          ;88A9C7;
    CMP.W #$1400                         ;88A9CA;
    BCC CODE_88A9DF                      ;88A9CD;
    LDX.B #$04                           ;88A9CF;
    STX.B $02                            ;88A9D1;
    LDA.W #$1400                         ;88A9D3;
    STA.W $1E5E                          ;88A9D6;
    STA.W $1E60                          ;88A9D9;
    STZ.W $1E6E                          ;88A9DC;

CODE_88A9DF:
    RTL                                  ;88A9DF;

CODE_88A9E0:
    REP #$20                             ;88A9E0;
    LDA.W $1E56                          ;88A9E2;
    CMP.W #$1400                         ;88A9E5;
    SEP #$20                             ;88A9E8;
    BNE CODE_88A9FA                      ;88A9EA;
    LDA.B #$06                           ;88A9EC;
    STA.B $02                            ;88A9EE;
    LDA.B #$08                           ;88A9F0;
    STA.B $3B                            ;88A9F2;
    JSR.W CODE_88ACDD                    ;88A9F4;
    JSR.W CODE_88AD1A                    ;88A9F7;

CODE_88A9FA:
    RTL                                  ;88A9FA;

CODE_88A9FB:
    DEC.B $3B                            ;88A9FB;
    BNE CODE_88AA1B                      ;88A9FD;
    LDA.B #$08                           ;88A9FF;
    STA.B $3B                            ;88AA01;
    LDA.B $3E                            ;88AA03;
    CLC                                  ;88AA05;
    ADC.B #$B8                           ;88AA06;
    TAY                                  ;88AA08;
    JSL.L CODE_828011                    ;88AA09;
    INC.B $3E                            ;88AA0D;
    INC.B $3E                            ;88AA0F;
    LDA.B $3E                            ;88AA11;
    CMP.B #$08                           ;88AA13;
    BCC CODE_88AA1B                      ;88AA15;
    LDA.B #$08                           ;88AA17;
    STA.B $02                            ;88AA19;

CODE_88AA1B:
    RTL                                  ;88AA1B;

CODE_88AA1C:
    LDA.B #$0A                           ;88AA1C;
    STA.B $02                            ;88AA1E;
    LDA.B #$02                           ;88AA20;
    STA.B $3B                            ;88AA22;
    REP #$20                             ;88AA24;
    TDC                                  ;88AA26;
    STA.W $1F0E                          ;88AA27;
    RTL                                  ;88AA2A;

CODE_88AA2B:
    DEC.B $3B                            ;88AA2B;
    BNE CODE_88AA56                      ;88AA2D;
    LDA.B #$02                           ;88AA2F;
    STA.B $3B                            ;88AA31;
    LDA.B $27                            ;88AA33;
    AND.B #$7F                           ;88AA35;
    CMP.B #$20                           ;88AA37;
    BEQ CODE_88AA46                      ;88AA39;
    INC A                                ;88AA3B;
    ORA.B #$80                           ;88AA3C;
    STA.B $27                            ;88AA3E;
    LDA.B #$0C                           ;88AA40;
    JML.L CODE_8088CD                    ;88AA42;

CODE_88AA46:
    LDA.B #$02                           ;88AA46;
    STA.B $01                            ;88AA48;
    STZ.B $02                            ;88AA4A;
    JSL.L CODE_849FFE                    ;88AA4C;
    LDA.B #$24                           ;88AA50;
    JML.L CODE_8087A2                    ;88AA52;

CODE_88AA56:
    RTL                                  ;88AA56;

CODE_88AA57:
    LDA.B $02                            ;88AA57;
    CMP.B #$04                           ;88AA59;
    BEQ CODE_88AA80                      ;88AA5B;
    LDA.W $1F3F                          ;88AA5D;
    AND.W $1F40                          ;88AA60;
    AND.W $1F41                          ;88AA63;
    CMP.B #$80                           ;88AA66;
    BNE CODE_88AA80                      ;88AA68;
    LDA.W $0BCF                          ;88AA6A;
    AND.B #$7F                           ;88AA6D;
    BEQ CODE_88AA80                      ;88AA6F;
    LDA.B #$04                           ;88AA71;
    STA.B $02                            ;88AA73;
    STZ.B $03                            ;88AA75;
    STA.W $0BD8                          ;88AA77;
    LDA.B #$02                           ;88AA7A;
    JML.L CODE_848000                    ;88AA7C;

CODE_88AA80:
    LDX.B $02                            ;88AA80;
    JSR.W (PTR16_88AA89,X)               ;88AA82;
    JSR.W CODE_88AD66                    ;88AA85;
    RTL                                  ;88AA88;

PTR16_88AA89:
    dw CODE_88AAC1                       ;88AA89;
    dw CODE_88AB77                       ;88AA8B;
    dw CODE_88AA8F                       ;88AA8D;

CODE_88AA8F:
    LDX.B $03                            ;88AA8F;
    BNE CODE_88AAA9                      ;88AA91;
    INC.B $03                            ;88AA93;
    LDA.B #$28                           ;88AA95;
    STA.B $3B                            ;88AA97;
    JSL.L CODE_849F85                    ;88AA99;
    LDA.B #$01                           ;88AA9D;
    STA.W $1F13                          ;88AA9F;
    STA.W $1F14                          ;88AAA2;
    STA.W $1F17                          ;88AAA5;
    RTS                                  ;88AAA8;

CODE_88AAA9:
    DEC.B $3B                            ;88AAA9;
    BNE CODE_88AAC0                      ;88AAAB;
    LDA.B #$04                           ;88AAAD;
    STA.B $01                            ;88AAAF;
    STZ.B $02                            ;88AAB1;
    STZ.W $1F13                          ;88AAB3;
    STZ.W $1F14                          ;88AAB6;
    STZ.W $1F17                          ;88AAB9;
    JSL.L CODE_849FE6                    ;88AABC;

CODE_88AAC0:
    RTS                                  ;88AAC0;

CODE_88AAC1:
    LDX.B $03                            ;88AAC1;
    JMP.W (PTR16_88AAC6,X)               ;88AAC3;

PTR16_88AAC6:
    dw CODE_88AACC                       ;88AAC6;
    dw CODE_88AADD                       ;88AAC8;
    dw CODE_88AB5D                       ;88AACA;

CODE_88AACC:
    LDA.B #$02                           ;88AACC;
    STA.B $03                            ;88AACE;
    JSL.L CODE_849086                    ;88AAD0;
    AND.B #$0F                           ;88AAD4;
    TAX                                  ;88AAD6;
    LDA.W DATA8_86D4F4,X                 ;88AAD7;
    STA.B $39                            ;88AADA;
    RTS                                  ;88AADC;

CODE_88AADD:
    LDA.B #$04                           ;88AADD;
    STA.B $03                            ;88AADF;
    LDA.W $1F3F                          ;88AAE1;
    ORA.W $1F40                          ;88AAE4;
    BMI CODE_88AB25                      ;88AAE7;
    REP #$10                             ;88AAE9;
    JSL.L CODE_849086                    ;88AAEB;
    AND.B #$1E                           ;88AAEF;
    XBA                                  ;88AAF1;
    LDA.B #$00                           ;88AAF2;
    XBA                                  ;88AAF4;
    TAY                                  ;88AAF5;
    JSL.L CODE_849086                    ;88AAF6;
    LSR A                                ;88AAFA;
    BCS CODE_88AB0A                      ;88AAFB;
    LDX.B $33                            ;88AAFD;
    LDA.W DATA8_86D504,Y                 ;88AAFF;
    STA.W $0002,X                        ;88AB02;
    STZ.W $0003,X                        ;88AB05;
    BRA CODE_88AB15                      ;88AB08;

CODE_88AB0A:
    LDX.B $35                            ;88AB0A;
    LDA.W DATA8_86D505,Y                 ;88AB0C;
    STA.W $0002,X                        ;88AB0F;
    STZ.W $0003,X                        ;88AB12;

CODE_88AB15:
    JSL.L CODE_849086                    ;88AB15;
    AND.B #$03                           ;88AB19;
    INC A                                ;88AB1B;
    INC A                                ;88AB1C;
    STA.B $3A                            ;88AB1D;
    STA.W $003A,X                        ;88AB1F;
    SEP #$10                             ;88AB22;
    RTS                                  ;88AB24;

CODE_88AB25:
    REP #$10                             ;88AB25;
    JSL.L CODE_849086                    ;88AB27;
    AND.B #$01                           ;88AB2B;
    XBA                                  ;88AB2D;
    LDA.B #$00                           ;88AB2E;
    XBA                                  ;88AB30;
    TAY                                  ;88AB31;
    LDX.B $33                            ;88AB32;
    LDA.W DATA8_86D524,Y                 ;88AB34;
    STA.W $0002,X                        ;88AB37;
    STZ.W $0003,X                        ;88AB3A;
    JSL.L CODE_849086                    ;88AB3D;
    AND.B #$03                           ;88AB41;
    INC A                                ;88AB43;
    INC A                                ;88AB44;
    STA.B $3A                            ;88AB45;
    STA.W $003A,X                        ;88AB47;
    LDX.B $35                            ;88AB4A;
    LDA.W DATA8_86D524,Y                 ;88AB4C;
    STA.W $0002,X                        ;88AB4F;
    STZ.W $0003,X                        ;88AB52;
    LDA.B $3A                            ;88AB55;
    STA.W $003A,X                        ;88AB57;
    SEP #$10                             ;88AB5A;
    RTS                                  ;88AB5C;

CODE_88AB5D:
    LDA.W $1F3F                          ;88AB5D;
    ORA.W $1F40                          ;88AB60;
    AND.B #$7F                           ;88AB63;
    BNE CODE_88AB76                      ;88AB65;
    DEC.B $39                            ;88AB67;
    BNE CODE_88AB72                      ;88AB69;
    LDA.B #$02                           ;88AB6B;
    STA.B $02                            ;88AB6D;
    STZ.B $03                            ;88AB6F;
    RTS                                  ;88AB71;

CODE_88AB72:
    LDA.B #$02                           ;88AB72;
    STA.B $03                            ;88AB74;

CODE_88AB76:
    RTS                                  ;88AB76;

CODE_88AB77:
    LDX.B $03                            ;88AB77;
    JMP.W (PTR16_88AB7C,X)               ;88AB79;

PTR16_88AB7C:
    dw CODE_88AB84                       ;88AB7C;
    dw CODE_88AB9A                       ;88AB7E;
    dw CODE_88ABB2                       ;88AB80;
    dw CODE_88ABD6                       ;88AB82;

CODE_88AB84:
    LDA.W $1F41                          ;88AB84;
    BPL CODE_88AB8E                      ;88AB87;
    STZ.B $02                            ;88AB89;
    STZ.B $03                            ;88AB8B;
    RTS                                  ;88AB8D;

CODE_88AB8E:
    LDA.B #$02                           ;88AB8E;
    STA.B $03                            ;88AB90;
    STZ.W $1F42                          ;88AB92;
    LDA.B #$02                           ;88AB95;
    JMP.W CODE_88AD3B                    ;88AB97;

CODE_88AB9A:
    LDA.W $1F42                          ;88AB9A;
    BEQ CODE_88ABB1                      ;88AB9D;
    LDA.B #$04                           ;88AB9F;
    STA.B $03                            ;88ABA1;
    REP #$10                             ;88ABA3;
    LDX.B $37                            ;88ABA5;
    LDA.B #$02                           ;88ABA7;
    STA.W $0002,X                        ;88ABA9;
    STZ.W $0003,X                        ;88ABAC;
    SEP #$10                             ;88ABAF;

CODE_88ABB1:
    RTS                                  ;88ABB1;

CODE_88ABB2:
    LDA.W $1F41                          ;88ABB2;
    BNE CODE_88ABCF                      ;88ABB5;
    LDA.W $1F3F                          ;88ABB7;
    AND.W $1F40                          ;88ABBA;
    CMP.B #$80                           ;88ABBD;
    BNE CODE_88ABC6                      ;88ABBF;
    LDA.B #$02                           ;88ABC1;
    STA.B $03                            ;88ABC3;
    RTS                                  ;88ABC5;

CODE_88ABC6:
    LDA.B #$06                           ;88ABC6;
    STA.B $03                            ;88ABC8;
    LDA.B #$04                           ;88ABCA;
    JMP.W CODE_88AD3B                    ;88ABCC;

CODE_88ABCF:
    BPL CODE_88ABD5                      ;88ABCF;
    STZ.B $02                            ;88ABD1;
    STZ.B $03                            ;88ABD3;

CODE_88ABD5:
    RTS                                  ;88ABD5;

CODE_88ABD6:
    LDA.W $1F42                          ;88ABD6;
    BEQ CODE_88ABDF                      ;88ABD9;
    STZ.B $02                            ;88ABDB;
    STZ.B $03                            ;88ABDD;

CODE_88ABDF:
    RTS                                  ;88ABDF;

CODE_88ABE0:
    LDX.B $02                            ;88ABE0;
    JMP.W (PTR16_88ABE5,X)               ;88ABE2;

PTR16_88ABE5:
    dw CODE_88ABF1                       ;88ABE5;
    dw CODE_88AC0E                       ;88ABE7;
    dw CODE_88AC42                       ;88ABE9;
    dw CODE_88AC7B                       ;88ABEB;
    dw CODE_88ACBB                       ;88ABED;
    dw CODE_88ACDC                       ;88ABEF;

CODE_88ABF1:
    LDA.B #$02                           ;88ABF1;
    STA.B $02                            ;88ABF3;
    LDA.B #$FF                           ;88ABF5;
    STA.B $3B                            ;88ABF7;
    LDY.B #$02                           ;88ABF9;
    LDA.B #$F6                           ;88ABFB;
    JSL.L CODE_80887F                    ;88ABFD;
    REP #$20                             ;88AC01;
    LDA.W #$1480                         ;88AC03;
    STA.B $05                            ;88AC06;
    LDA.W #$0080                         ;88AC08;
    STA.B $08                            ;88AC0B;
    RTL                                  ;88AC0D;

CODE_88AC0E:
    LDA.W $0B9C                          ;88AC0E;
    AND.B #$1F                           ;88AC11;
    BNE CODE_88AC1B                      ;88AC13;
    LDA.B #$20                           ;88AC15;
    JSL.L CODE_84A333                    ;88AC17;

CODE_88AC1B:
    DEC.B $3B                            ;88AC1B;
    BNE CODE_88AC23                      ;88AC1D;
    LDA.B #$04                           ;88AC1F;
    STA.B $02                            ;88AC21;

CODE_88AC23:
    REP #$20                             ;88AC23;
    LDA.W #$FFC0                         ;88AC25;
    STA.W $0000                          ;88AC28;
    STA.W $0002                          ;88AC2B;
    LDA.W #$007F                         ;88AC2E;
    STA.W $0004                          ;88AC31;
    STA.W $0006                          ;88AC34;
    SEP #$20                             ;88AC37;
    LDA.B #$03                           ;88AC39;
    STA.W $0008                          ;88AC3B;
    JML.L CODE_84A4C6                    ;88AC3E;

CODE_88AC42:
    LDA.B #$06                           ;88AC42;
    STA.B $02                            ;88AC44;
    PHB                                  ;88AC46;
    REP #$30                             ;88AC47;
    LDX.W #$D526                         ;88AC49;
    LDY.W #$0AA1                         ;88AC4C;
    LDA.W #$0006                         ;88AC4F;
    MVN $00,$86                          ;88AC52;
    LDX.W #$D52D                         ;88AC55;
    LDY.W #$0B22                         ;88AC58;
    LDA.W #$0009                         ;88AC5B;
    MVN $00,$86                          ;88AC5E;
    JSR.W CODE_88ADFC                    ;88AC61;
    SEP #$30                             ;88AC64;
    PLB                                  ;88AC66;
    LDA.B #$3F                           ;88AC67;
    STA.W $00CA                          ;88AC69;
    STZ.W $00CB                          ;88AC6C;
    LDA.B #$01                           ;88AC6F;
    STA.B $3D                            ;88AC71;
    JSR.W CODE_88AD92                    ;88AC73;
    LDA.B #$C0                           ;88AC76;
    STA.B $3B                            ;88AC78;
    RTL                                  ;88AC7A;

CODE_88AC7B:
    LDA.W $0B9C                          ;88AC7B;
    AND.B #$01                           ;88AC7E;
    BNE CODE_88AC8A                      ;88AC80;
    LDA.B $3D                            ;88AC82;
    CMP.B #$1F                           ;88AC84;
    BEQ CODE_88AC8A                      ;88AC86;
    INC.B $3D                            ;88AC88;

CODE_88AC8A:
    LDA.B $3B                            ;88AC8A;
    CMP.B #$B0                           ;88AC8C;
    BNE CODE_88AC96                      ;88AC8E;
    LDA.B #$21                           ;88AC90;
    JSL.L CODE_8088CD                    ;88AC92;

CODE_88AC96:
    DEC.B $3B                            ;88AC96;
    LDA.B $3B                            ;88AC98;
    BNE CODE_88ACAF                      ;88AC9A;
    LDA.B #$08                           ;88AC9C;
    STA.B $02                            ;88AC9E;
    LDA.B #$1F                           ;88ACA0;
    STA.W $00CB                          ;88ACA2;
    STA.W $00CC                          ;88ACA5;
    STA.W $00CD                          ;88ACA8;
    STZ.W $0AA1                          ;88ACAB;
    RTL                                  ;88ACAE;

CODE_88ACAF:
    CMP.B #$B0                           ;88ACAF;
    BCC CODE_88ACB7                      ;88ACB1;
    JSR.W CODE_88AD92                    ;88ACB3;
    RTL                                  ;88ACB6;

CODE_88ACB7:
    JSR.W CODE_88ADB9                    ;88ACB7;
    RTL                                  ;88ACBA;

CODE_88ACBB:
    LDA.W $0B9C                          ;88ACBB;
    AND.B #$01                           ;88ACBE;
    BNE CODE_88ACDB                      ;88ACC0;
    DEC.W $00CB                          ;88ACC2;
    DEC.W $00CC                          ;88ACC5;
    DEC.W $00CD                          ;88ACC8;
    BNE CODE_88ACDB                      ;88ACCB;
    LDA.B #$01                           ;88ACCD;
    STA.W $1F23                          ;88ACCF;
    LDA.B #$02                           ;88ACD2;
    STA.W $1F7B                          ;88ACD4;
    LDA.B #$0A                           ;88ACD7;
    STA.B $02                            ;88ACD9;

CODE_88ACDB:
    RTL                                  ;88ACDB;

CODE_88ACDC:
    RTL                                  ;88ACDC;

CODE_88ACDD:
    REP #$10                             ;88ACDD;
    LDY.W #$0001                         ;88ACDF;

CODE_88ACE2:
    JSL.L CODE_828321                    ;88ACE2;
    BNE CODE_88AD17                      ;88ACE6;
    INC.W $0000,X                        ;88ACE8;
    LDA.B #$5E                           ;88ACEB;
    STA.W $000A,X                        ;88ACED;
    TYA                                  ;88ACF0;
    STA.W $000B,X                        ;88ACF1;
    BEQ CODE_88ACFA                      ;88ACF4;
    STX.B $35                            ;88ACF6;
    BRA CODE_88ACFC                      ;88ACF8;

CODE_88ACFA:
    STX.B $33                            ;88ACFA;

CODE_88ACFC:
    PHY                                  ;88ACFC;
    REP #$20                             ;88ACFD;
    AND.W #$00FF                         ;88ACFF;
    ASL A                                ;88AD02;
    ASL A                                ;88AD03;
    TAY                                  ;88AD04;
    LDA.W DATA8_86D4EC,Y                 ;88AD05;
    STA.W $0005,X                        ;88AD08;
    LDA.W DATA8_86D4EE,Y                 ;88AD0B;
    STA.W $0008,X                        ;88AD0E;
    SEP #$20                             ;88AD11;
    PLY                                  ;88AD13;
    DEY                                  ;88AD14;
    BPL CODE_88ACE2                      ;88AD15;

CODE_88AD17:
    SEP #$10                             ;88AD17;
    RTS                                  ;88AD19;

CODE_88AD1A:
    JSL.L CODE_828321                    ;88AD1A;
    BNE CODE_88AD38                      ;88AD1E;
    INC.W $0000,X                        ;88AD20;
    LDA.B #$5F                           ;88AD23;
    STA.W $000A,X                        ;88AD25;
    STX.B $37                            ;88AD28;
    REP #$20                             ;88AD2A;
    LDA.W #$1480                         ;88AD2C;
    STA.W $0005,X                        ;88AD2F;
    LDA.W #$0088                         ;88AD32;
    STA.W $0008,X                        ;88AD35;

CODE_88AD38:
    SEP #$30                             ;88AD38;
    RTS                                  ;88AD3A;

CODE_88AD3B:
    REP #$10                             ;88AD3B;
    STA.W $0000                          ;88AD3D;
    LDY.W #$0001                         ;88AD40;

CODE_88AD43:
    JSL.L CODE_828321                    ;88AD43;
    BNE CODE_88AD63                      ;88AD47;
    INC.W $0000,X                        ;88AD49;
    LDA.B #$60                           ;88AD4C;
    STA.W $000A,X                        ;88AD4E;
    TYA                                  ;88AD51;
    STA.W $000B,X                        ;88AD52;
    LDA.W $0000                          ;88AD55;
    STA.W $0002,X                        ;88AD58;
    LDA.B $3A                            ;88AD5B;
    STA.W $0034,X                        ;88AD5D;
    DEY                                  ;88AD60;
    BPL CODE_88AD43                      ;88AD61;

CODE_88AD63:
    SEP #$20                             ;88AD63;
    RTS                                  ;88AD65;

CODE_88AD66:
    REP #$10                             ;88AD66;
    LDX.B $33                            ;88AD68;
    LDA.W $0027,X                        ;88AD6A;
    AND.B #$7F                           ;88AD6D;
    STA.W $0000                          ;88AD6F;
    LDX.B $35                            ;88AD72;
    LDA.W $0027,X                        ;88AD74;
    AND.B #$7F                           ;88AD77;
    STA.W $0001                          ;88AD79;
    LDX.B $37                            ;88AD7C;
    LDA.W $0027,X                        ;88AD7E;
    AND.B #$7F                           ;88AD81;
    CLC                                  ;88AD83;
    ADC.W $0000                          ;88AD84;
    CLC                                  ;88AD87;
    ADC.W $0001                          ;88AD88;
    ORA.B #$80                           ;88AD8B;
    STA.B $27                            ;88AD8D;
    SEP #$10                             ;88AD8F;
    RTS                                  ;88AD91;

CODE_88AD92:
    PHB                                  ;88AD92;
    REP #$30                             ;88AD93;
    LDX.W #$D001                         ;88AD95;
    LDY.W #$D000                         ;88AD98;
    LDA.W #$006F                         ;88AD9B;
    MVN $7F,$7F                          ;88AD9E;
    LDX.W #$D0DE                         ;88ADA1;
    LDY.W #$D0DF                         ;88ADA4;
    LDA.W #$006E                         ;88ADA7;
    MVP $7F,$7F                          ;88ADAA;
    SEP #$30                             ;88ADAD;
    PLB                                  ;88ADAF;
    LDA.B $3D                            ;88ADB0;
    ORA.B #$E0                           ;88ADB2;
    STA.L $7FD070                        ;88ADB4;
    RTS                                  ;88ADB8;

CODE_88ADB9:
    PHB                                  ;88ADB9;
    REP #$30                             ;88ADBA;
    LDX.W #$D008                         ;88ADBC;
    LDY.W #$D000                         ;88ADBF;
    LDA.W #$006C                         ;88ADC2;
    MVN $7F,$7F                          ;88ADC5;
    LDX.W #$D0D5                         ;88ADC8;
    LDY.W #$D0DF                         ;88ADCB;
    LDA.W #$006C                         ;88ADCE;
    MVP $7F,$7F                          ;88ADD1;
    SEP #$30                             ;88ADD4;
    PLB                                  ;88ADD6;
    LDA.B $3D                            ;88ADD7;
    ORA.B #$E0                           ;88ADD9;
    STA.L $7FD06C                        ;88ADDB;
    STA.L $7FD06D                        ;88ADDF;
    STA.L $7FD06E                        ;88ADE3;
    STA.L $7FD06F                        ;88ADE7;
    STA.L $7FD070                        ;88ADEB;
    STA.L $7FD071                        ;88ADEF;
    STA.L $7FD072                        ;88ADF3;
    STA.L $7FD073                        ;88ADF7;
    RTS                                  ;88ADFB;

CODE_88ADFC:
    LDX.W #$00DE                         ;88ADFC;
    LDA.W #$0000                         ;88ADFF;

CODE_88AE02:
    STA.L $7FD000,X                      ;88AE02;
    DEX                                  ;88AE06;
    DEX                                  ;88AE07;
    BPL CODE_88AE02                      ;88AE08;
    RTS                                  ;88AE0A;

CODE_88AE0B:
    LDX.B $01                            ;88AE0B;
    JMP.W (PTR16_88AE10,X)               ;88AE0D;

PTR16_88AE10:
    dw CODE_88AE16                       ;88AE10;
    dw CODE_88AE3D                       ;88AE12;
    dw CODE_88B133                       ;88AE14;

CODE_88AE16:
    JSL.L CODE_82827D                    ;88AE16;
    LDA.B #$06                           ;88AE1A;
    STA.B $12                            ;88AE1C;
    LDA.B #$07                           ;88AE1E;
    STA.B $28                            ;88AE20;
    LDA.B #$0A                           ;88AE22;
    STA.B $27                            ;88AE24;
    LDA.B #$06                           ;88AE26;
    STA.B $26                            ;88AE28;
    LDA.B #$37                           ;88AE2A;
    STA.B $20                            ;88AE2C;
    LDA.B #$D5                           ;88AE2E;
    STA.B $21                            ;88AE30;
    STZ.B $33                            ;88AE32;
    STZ.B $3C                            ;88AE34;
    LDA.B $11                            ;88AE36;
    AND.B #$EF                           ;88AE38;
    STA.B $3B                            ;88AE3A;
    RTL                                  ;88AE3C;

CODE_88AE3D:
    LDA.B $3B                            ;88AE3D;
    STA.B $11                            ;88AE3F;
    LDX.B $02                            ;88AE41;
    JSR.W (PTR16_88AE89,X)               ;88AE43;
    LDA.B #$01                           ;88AE46;
    STA.B $30                            ;88AE48;
    BIT.B $33                            ;88AE4A;
    BVS CODE_88AE79                      ;88AE4C;
    STZ.B $30                            ;88AE4E;
    JSL.L CODE_849B43                    ;88AE50;
    BEQ CODE_88AE75                      ;88AE54;
    BPL CODE_88AE63                      ;88AE56;
    LDA.B #$04                           ;88AE58;
    STA.B $01                            ;88AE5A;
    JSR.W CODE_88B1D0                    ;88AE5C;
    JSL.L CODE_84A4AB                    ;88AE5F;

CODE_88AE63:
    LDA.B #$0E                           ;88AE63;
    TRB.B $11                            ;88AE65;
    LDA.B #$13                           ;88AE67;
    JSL.L CODE_8088A2                    ;88AE69;
    LDA.B #$05                           ;88AE6D;
    STA.B $28                            ;88AE6F;
    LDA.B #$3C                           ;88AE71;
    STA.B $3C                            ;88AE73;

CODE_88AE75:
    JSL.L CODE_849B03                    ;88AE75;

CODE_88AE79:
    LDA.B $3C                            ;88AE79;
    BEQ CODE_88AE85                      ;88AE7B;
    DEC.B $3C                            ;88AE7D;
    BNE CODE_88AE85                      ;88AE7F;
    LDA.B #$07                           ;88AE81;
    STA.B $28                            ;88AE83;

CODE_88AE85:
    JML.L CODE_8280B4                    ;88AE85;

PTR16_88AE89:
    dw CODE_88AE93                       ;88AE89;
    dw CODE_88AF6E                       ;88AE8B;
    dw CODE_88AEAD                       ;88AE8D;
    dw CODE_88AFDD                       ;88AE8F;
    dw CODE_88B0AB                       ;88AE91;

CODE_88AE93:
    LDX.B $03                            ;88AE93;
    BNE CODE_88AEAC                      ;88AE95;
    INC.B $03                            ;88AE97;
    LDA.B #$06                           ;88AE99;
    STA.B $12                            ;88AE9B;
    LDX.B $0B                            ;88AE9D;
    STZ.W $1F3F,X                        ;88AE9F;
    LDA.B #$40                           ;88AEA2;
    TSB.B $33                            ;88AEA4;
    LDA.B #$00                           ;88AEA6;
    JSL.L CODE_848F07                    ;88AEA8;

CODE_88AEAC:
    RTS                                  ;88AEAC;

CODE_88AEAD:
    LDX.B $03                            ;88AEAD;
    JMP.W (PTR16_88AEB2,X)               ;88AEAF;

PTR16_88AEB2:
    dw CODE_88AEBE                       ;88AEB2;
    dw CODE_88AED9                       ;88AEB4;
    dw CODE_88AF21                       ;88AEB6;
    dw CODE_88AF36                       ;88AEB8;
    dw CODE_88AF42                       ;88AEBA;
    dw CODE_88AF61                       ;88AEBC;

CODE_88AEBE:
    LDA.B #$02                           ;88AEBE;
    STA.B $03                            ;88AEC0;
    LDA.B #$04                           ;88AEC2;
    STA.B $12                            ;88AEC4;
    LDA.B $11                            ;88AEC6;
    AND.B #$F1                           ;88AEC8;
    ORA.B #$0A                           ;88AECA;
    STA.B $11                            ;88AECC;
    STA.B $3B                            ;88AECE;
    LDA.B #$01                           ;88AED0;
    JSL.L CODE_848F07                    ;88AED2;
    JMP.W CODE_88B1C8                    ;88AED6;

CODE_88AED9:
    LDA.B $0F                            ;88AED9;
    BPL CODE_88AF1C                      ;88AEDB;
    LDA.B #$04                           ;88AEDD;
    STA.B $03                            ;88AEDF;
    LDA.B #$40                           ;88AEE1;
    TRB.B $33                            ;88AEE3;
    JSL.L CODE_84A07C                    ;88AEE5;
    ASL A                                ;88AEE9;
    ASL A                                ;88AEEA;
    TAX                                  ;88AEEB;
    REP #$20                             ;88AEEC;
    LDA.W DATA8_86EEB7,X                 ;88AEEE;
    STA.B $1A                            ;88AEF1;
    LDA.W DATA8_86EEB9,X                 ;88AEF3;
    STA.B $1C                            ;88AEF6;
    LDA.B $05                            ;88AEF8;
    STA.W $0000                          ;88AEFA;
    LDA.B $08                            ;88AEFD;
    STA.W $0002                          ;88AEFF;
    LDA.W $0BAD                          ;88AF02;
    STA.W $0004                          ;88AF05;
    LDA.W $0BB0                          ;88AF08;
    STA.W $0006                          ;88AF0B;
    JSL.L CODE_80CEB0                    ;88AF0E;
    LDA.W $0000                          ;88AF12;
    LSR A                                ;88AF15;
    STA.B $34                            ;88AF16;
    STA.B $36                            ;88AF18;
    SEP #$20                             ;88AF1A;

CODE_88AF1C:
    JSL.L CODE_848EEA                    ;88AF1C;
    RTS                                  ;88AF20;

CODE_88AF21:
    JSL.L CODE_82820A                    ;88AF21;
    REP #$20                             ;88AF25;
    DEC.B $34                            ;88AF27;
    SEP #$20                             ;88AF29;
    BNE CODE_88AF35                      ;88AF2B;
    LDA.B #$06                           ;88AF2D;
    STA.B $03                            ;88AF2F;
    LDA.B #$3C                           ;88AF31;
    STA.B $38                            ;88AF33;

CODE_88AF35:
    RTS                                  ;88AF35;

CODE_88AF36:
    DEC.B $38                            ;88AF36;
    BNE CODE_88AF41                      ;88AF38;
    LDA.B #$08                           ;88AF3A;
    STA.B $03                            ;88AF3C;
    JMP.W CODE_88B152                    ;88AF3E;

CODE_88AF41:
    RTS                                  ;88AF41;

CODE_88AF42:
    REP #$20                             ;88AF42;
    DEC.B $36                            ;88AF44;
    SEP #$20                             ;88AF46;
    BNE CODE_88AF5C                      ;88AF48;
    LDA.B #$0A                           ;88AF4A;
    STA.B $03                            ;88AF4C;
    LDA.B #$40                           ;88AF4E;
    TSB.B $33                            ;88AF50;
    JSR.W CODE_88B167                    ;88AF52;
    LDA.B #$10                           ;88AF55;
    JSL.L CODE_848F07                    ;88AF57;
    RTS                                  ;88AF5B;

CODE_88AF5C:
    JSL.L CODE_82820A                    ;88AF5C;
    RTS                                  ;88AF60;

CODE_88AF61:
    LDA.B $0F                            ;88AF61;
    BPL CODE_88AF69                      ;88AF63;
    STZ.B $02                            ;88AF65;
    STZ.B $03                            ;88AF67;

CODE_88AF69:
    JSL.L CODE_848EEA                    ;88AF69;
    RTS                                  ;88AF6D;

CODE_88AF6E:
    LDX.B $03                            ;88AF6E;
    JMP.W (PTR16_88AF73,X)               ;88AF70;

PTR16_88AF73:
    dw CODE_88AF7D                       ;88AF73;
    dw CODE_88AF96                       ;88AF75;
    dw CODE_88AFAB                       ;88AF77;
    dw CODE_88AFBD                       ;88AF79;
    dw CODE_88AFD0                       ;88AF7B;

CODE_88AF7D:
    LDA.B #$02                           ;88AF7D;
    STA.B $03                            ;88AF7F;
    LDA.B #$04                           ;88AF81;
    STA.B $12                            ;88AF83;
    LDA.B $11                            ;88AF85;
    AND.B #$F9                           ;88AF87;
    STA.B $11                            ;88AF89;
    STA.B $3B                            ;88AF8B;
    LDA.B #$01                           ;88AF8D;
    JSL.L CODE_848F07                    ;88AF8F;
    JMP.W CODE_88B1C8                    ;88AF93;

CODE_88AF96:
    LDA.B $0F                            ;88AF96;
    BPL CODE_88AFA6                      ;88AF98;
    LDA.B #$04                           ;88AF9A;
    STA.B $03                            ;88AF9C;
    LDA.B #$40                           ;88AF9E;
    TRB.B $33                            ;88AFA0;
    LDA.B #$0F                           ;88AFA2;
    STA.B $38                            ;88AFA4;

CODE_88AFA6:
    JSL.L CODE_848EEA                    ;88AFA6;
    RTS                                  ;88AFAA;

CODE_88AFAB:
    DEC.B $38                            ;88AFAB;
    BNE CODE_88AFBC                      ;88AFAD;
    LDA.B #$06                           ;88AFAF;
    STA.B $03                            ;88AFB1;
    LDA.B #$3C                           ;88AFB3;
    STA.B $38                            ;88AFB5;
    LDA.B #$00                           ;88AFB7;
    JSR.W CODE_88B17E                    ;88AFB9;

CODE_88AFBC:
    RTS                                  ;88AFBC;

CODE_88AFBD:
    DEC.B $38                            ;88AFBD;
    BNE CODE_88AFCF                      ;88AFBF;
    LDA.B #$08                           ;88AFC1;
    STA.B $03                            ;88AFC3;
    LDA.B #$40                           ;88AFC5;
    TSB.B $33                            ;88AFC7;
    LDA.B #$10                           ;88AFC9;
    JSL.L CODE_848F07                    ;88AFCB;

CODE_88AFCF:
    RTS                                  ;88AFCF;

CODE_88AFD0:
    LDA.B $0F                            ;88AFD0;
    BPL CODE_88AFD8                      ;88AFD2;
    STZ.B $02                            ;88AFD4;
    STZ.B $03                            ;88AFD6;

CODE_88AFD8:
    JSL.L CODE_848EEA                    ;88AFD8;
    RTS                                  ;88AFDC;

CODE_88AFDD:
    LDX.B $03                            ;88AFDD;
    JMP.W (PTR16_88AFE2,X)               ;88AFDF;

PTR16_88AFE2:
    dw CODE_88AFF0                       ;88AFE2;
    dw CODE_88B00B                       ;88AFE4;
    dw CODE_88B020                       ;88AFE6;
    dw CODE_88B061                       ;88AFE8;
    dw CODE_88B075                       ;88AFEA;
    dw CODE_88B083                       ;88AFEC;
    dw CODE_88B09E                       ;88AFEE;

CODE_88AFF0:
    LDA.B #$02                           ;88AFF0;
    STA.B $03                            ;88AFF2;
    LDA.B #$04                           ;88AFF4;
    STA.B $12                            ;88AFF6;
    LDA.B $11                            ;88AFF8;
    AND.B #$F1                           ;88AFFA;
    ORA.B #$0C                           ;88AFFC;
    STA.B $11                            ;88AFFE;
    STA.B $3B                            ;88B000;
    LDA.B #$01                           ;88B002;
    JSL.L CODE_848F07                    ;88B004;
    JMP.W CODE_88B1C8                    ;88B008;

CODE_88B00B:
    LDA.B $0F                            ;88B00B;
    BPL CODE_88B01B                      ;88B00D;
    LDA.B #$04                           ;88B00F;
    STA.B $03                            ;88B011;
    LDA.B #$40                           ;88B013;
    TRB.B $33                            ;88B015;
    LDA.B #$0F                           ;88B017;
    STA.B $38                            ;88B019;

CODE_88B01B:
    JSL.L CODE_848EEA                    ;88B01B;
    RTS                                  ;88B01F;

CODE_88B020:
    DEC.B $38                            ;88B020;
    BNE CODE_88B060                      ;88B022;
    LDA.B #$06                           ;88B024;
    STA.B $03                            ;88B026;
    JSL.L CODE_849086                    ;88B028;
    AND.B #$1C                           ;88B02C;
    TAX                                  ;88B02E;
    LDA.W DATA8_86D53B,X                 ;88B02F;
    STA.B $34                            ;88B032;
    LDA.W DATA8_86D53C,X                 ;88B034;
    STA.B $38                            ;88B037;
    LDA.W DATA8_86D53D,X                 ;88B039;
    JSR.W CODE_88B17E                    ;88B03C;
    LDA.B $38                            ;88B03F;
    JSR.W CODE_88B17E                    ;88B041;
    LDA.B $34                            ;88B044;
    STA.B $39                            ;88B046;
    JSR.W CODE_88B13E                    ;88B048;
    ASL A                                ;88B04B;
    ASL A                                ;88B04C;
    TAX                                  ;88B04D;
    REP #$20                             ;88B04E;
    LDA.W DATA8_86EEB7,X                 ;88B050;
    STA.B $1A                            ;88B053;
    LDA.W DATA8_86EEB9,X                 ;88B055;
    STA.B $1C                            ;88B058;
    SEP #$20                             ;88B05A;
    LDA.B #$3C                           ;88B05C;
    STA.B $38                            ;88B05E;

CODE_88B060:
    RTS                                  ;88B060;

CODE_88B061:
    DEC.B $38                            ;88B061;
    BNE CODE_88B070                      ;88B063;
    LDA.B #$08                           ;88B065;
    STA.B $03                            ;88B067;
    LDA.B #$3C                           ;88B069;
    STA.B $38                            ;88B06B;
    JMP.W CODE_88B152                    ;88B06D;

CODE_88B070:
    JSL.L CODE_82820A                    ;88B070;
    RTS                                  ;88B074;

CODE_88B075:
    DEC.B $38                            ;88B075;
    BNE CODE_88B082                      ;88B077;
    LDA.B #$0A                           ;88B079;
    STA.B $03                            ;88B07B;
    LDA.B #$3C                           ;88B07D;
    STA.B $38                            ;88B07F;
    RTS                                  ;88B081;

CODE_88B082:
    RTS                                  ;88B082;

CODE_88B083:
    DEC.B $38                            ;88B083;
    BNE CODE_88B099                      ;88B085;
    LDA.B #$0C                           ;88B087;
    STA.B $03                            ;88B089;
    LDA.B #$40                           ;88B08B;
    TSB.B $33                            ;88B08D;
    JSR.W CODE_88B167                    ;88B08F;
    LDA.B #$10                           ;88B092;
    JSL.L CODE_848F07                    ;88B094;
    RTS                                  ;88B098;

CODE_88B099:
    JSL.L CODE_82820A                    ;88B099;
    RTS                                  ;88B09D;

CODE_88B09E:
    LDA.B $0F                            ;88B09E;
    BPL CODE_88B0A6                      ;88B0A0;
    STZ.B $02                            ;88B0A2;
    STZ.B $03                            ;88B0A4;

CODE_88B0A6:
    JSL.L CODE_848EEA                    ;88B0A6;
    RTS                                  ;88B0AA;

CODE_88B0AB:
    LDX.B $03                            ;88B0AB;
    JMP.W (PTR16_88B0B0,X)               ;88B0AD;

PTR16_88B0B0:
    dw CODE_88B0BA                       ;88B0B0;
    dw CODE_88B0D5                       ;88B0B2;
    dw CODE_88B0EA                       ;88B0B4;
    dw CODE_88B119                       ;88B0B6;
    dw CODE_88B126                       ;88B0B8;

CODE_88B0BA:
    LDA.B #$02                           ;88B0BA;
    STA.B $03                            ;88B0BC;
    LDA.B #$04                           ;88B0BE;
    STA.B $12                            ;88B0C0;
    LDA.B $11                            ;88B0C2;
    AND.B #$F1                           ;88B0C4;
    ORA.B #$0C                           ;88B0C6;
    STA.B $11                            ;88B0C8;
    STA.B $3B                            ;88B0CA;
    LDA.B #$01                           ;88B0CC;
    JSL.L CODE_848F07                    ;88B0CE;
    JMP.W CODE_88B1C8                    ;88B0D2;

CODE_88B0D5:
    LDA.B $0F                            ;88B0D5;
    BPL CODE_88B0E5                      ;88B0D7;
    LDA.B #$04                           ;88B0D9;
    STA.B $03                            ;88B0DB;
    LDA.B #$40                           ;88B0DD;
    TRB.B $33                            ;88B0DF;
    LDA.B #$0F                           ;88B0E1;
    STA.B $38                            ;88B0E3;

CODE_88B0E5:
    JSL.L CODE_848EEA                    ;88B0E5;
    RTS                                  ;88B0E9;

CODE_88B0EA:
    DEC.B $38                            ;88B0EA;
    BNE CODE_88B118                      ;88B0EC;
    DEC.B $3A                            ;88B0EE;
    BNE CODE_88B101                      ;88B0F0;
    LDA.B #$08                           ;88B0F2;
    STA.B $03                            ;88B0F4;
    LDA.B #$40                           ;88B0F6;
    TSB.B $33                            ;88B0F8;
    LDA.B #$10                           ;88B0FA;
    JSL.L CODE_848F07                    ;88B0FC;
    RTS                                  ;88B100;

CODE_88B101:
    LDA.B #$06                           ;88B101;
    STA.B $03                            ;88B103;
    LDA.B #$5A                           ;88B105;
    STA.B $38                            ;88B107;
    LDA.B #$00                           ;88B109;
    JSR.W CODE_88B17E                    ;88B10B;
    LDA.B #$02                           ;88B10E;
    JSR.W CODE_88B17E                    ;88B110;
    LDA.B #$FE                           ;88B113;
    JMP.W CODE_88B17E                    ;88B115;

CODE_88B118:
    RTS                                  ;88B118;

CODE_88B119:
    DEC.B $38                            ;88B119;
    BNE CODE_88B125                      ;88B11B;
    LDA.B #$04                           ;88B11D;
    STA.B $03                            ;88B11F;
    LDA.B #$01                           ;88B121;
    STA.B $38                            ;88B123;

CODE_88B125:
    RTS                                  ;88B125;

CODE_88B126:
    LDA.B $0F                            ;88B126;
    BPL CODE_88B12E                      ;88B128;
    STZ.B $02                            ;88B12A;
    STZ.B $03                            ;88B12C;

CODE_88B12E:
    JSL.L CODE_848EEA                    ;88B12E;
    RTS                                  ;88B132;

CODE_88B133:
    LDX.B $0B                            ;88B133;
    LDA.B #$80                           ;88B135;
    STA.W $1F3F,X                        ;88B137;
    JML.L CODE_828398                    ;88B13A;

CODE_88B13E:
    JSL.L CODE_84A07C                    ;88B13E;
    CLC                                  ;88B142;
    ADC.B $39                            ;88B143;
    BPL CODE_88B14A                      ;88B145;
    CLC                                  ;88B147;
    ADC.B #$20                           ;88B148;

CODE_88B14A:
    CMP.B #$20                           ;88B14A;
    BMI CODE_88B151                      ;88B14C;
    SEC                                  ;88B14E;
    SBC.B #$20                           ;88B14F;

CODE_88B151:
    RTS                                  ;88B151;

CODE_88B152:
    REP #$20                             ;88B152;
    LDA.B $1A                            ;88B154;
    EOR.W #$FFFF                         ;88B156;
    INC A                                ;88B159;
    STA.B $1A                            ;88B15A;
    LDA.B $1C                            ;88B15C;
    EOR.W #$FFFF                         ;88B15E;
    INC A                                ;88B161;
    STA.B $1C                            ;88B162;
    SEP #$20                             ;88B164;
    RTS                                  ;88B166;

CODE_88B167:
    REP #$20                             ;88B167;
    LDA.B $0B                            ;88B169;
    AND.W #$00FF                         ;88B16B;
    ASL A                                ;88B16E;
    ASL A                                ;88B16F;
    TAX                                  ;88B170;
    LDA.W DATA8_86D4EC,X                 ;88B171;
    STA.B $05                            ;88B174;
    LDA.W DATA8_86D4EE,X                 ;88B176;
    STA.B $08                            ;88B179;
    SEP #$20                             ;88B17B;
    RTS                                  ;88B17D;

CODE_88B17E:
    STA.W $0000                          ;88B17E;
    JSL.L CODE_828358                    ;88B181;
    BNE CODE_88B1C5                      ;88B185;
    INC.W $0000,X                        ;88B187;
    LDA.B #$26                           ;88B18A;
    STA.W $000A,X                        ;88B18C;
    LDA.B $11                            ;88B18F;
    AND.B #$F9                           ;88B191;
    STA.W $0011,X                        ;88B193;
    LDA.B $18                            ;88B196;
    STA.W $0018,X                        ;88B198;
    PHX                                  ;88B19B;
    LDA.W $0000                          ;88B19C;
    STA.B $39                            ;88B19F;
    JSR.W CODE_88B13E                    ;88B1A1;
    PLX                                  ;88B1A4;
    REP #$20                             ;88B1A5;
    AND.W #$00FF                         ;88B1A7;
    ASL A                                ;88B1AA;
    ASL A                                ;88B1AB;
    TAY                                  ;88B1AC;
    LDA.W DATA8_86EEB7,Y                 ;88B1AD;
    STA.W $001A,X                        ;88B1B0;
    LDA.W DATA8_86EEB9,Y                 ;88B1B3;
    STA.W $001C,X                        ;88B1B6;
    LDA.B $05                            ;88B1B9;
    STA.W $0005,X                        ;88B1BB;
    LDA.B $08                            ;88B1BE;
    STA.W $0008,X                        ;88B1C0;
    SEP #$20                             ;88B1C3;

CODE_88B1C5:
    SEP #$10                             ;88B1C5;
    RTS                                  ;88B1C7;

CODE_88B1C8:
    LDX.B $0B                            ;88B1C8;
    LDA.B #$01                           ;88B1CA;
    STA.W $1F3F,X                        ;88B1CC;
    RTS                                  ;88B1CF;

CODE_88B1D0:
    REP #$10                             ;88B1D0;
    LDA.B $11                            ;88B1D2;
    ORA.B #$20                           ;88B1D4;
    STA.L $7F838F                        ;88B1D6;
    LDY.W #$000F                         ;88B1DA;

CODE_88B1DD:
    JSL.L CODE_8282D3                    ;88B1DD;
    BNE CODE_88B213                      ;88B1E1;
    INC.W $0000,X                        ;88B1E3;
    LDA.B #$2B                           ;88B1E6;
    STA.W $000A,X                        ;88B1E8;
    LDA.B $11                            ;88B1EB;
    STA.W $0011,X                        ;88B1ED;
    EOR.B #$40                           ;88B1F0;
    STA.B $11                            ;88B1F2;
    JSL.L CODE_849086                    ;88B1F4;
    AND.B #$01                           ;88B1F8;
    CLC                                  ;88B1FA;
    ADC.B #$5B                           ;88B1FB;
    ORA.B #$80                           ;88B1FD;
    STA.W $000B,X                        ;88B1FF;
    REP #$20                             ;88B202;
    LDA.B $05                            ;88B204;
    STA.W $0005,X                        ;88B206;
    LDA.B $08                            ;88B209;
    STA.W $0008,X                        ;88B20B;
    SEP #$20                             ;88B20E;
    DEY                                  ;88B210;
    BPL CODE_88B1DD                      ;88B211;

CODE_88B213:
    SEP #$10                             ;88B213;
    RTS                                  ;88B215;

CODE_88B216:
    LDX.B $01                            ;88B216;
    JMP.W (PTR16_88B21B,X)               ;88B218;

PTR16_88B21B:
    dw CODE_88B221                       ;88B21B;
    dw CODE_88B244                       ;88B21D;
    dw CODE_88B3DA                       ;88B21F;

CODE_88B221:
    JSL.L CODE_82827D                    ;88B221;
    LDA.B #$06                           ;88B225;
    STA.B $12                            ;88B227;
    LDA.B #$07                           ;88B229;
    STA.B $28                            ;88B22B;
    LDA.B #$0C                           ;88B22D;
    STA.B $27                            ;88B22F;
    LDA.B #$06                           ;88B231;
    STA.B $26                            ;88B233;
    LDA.B #$5B                           ;88B235;
    STA.B $20                            ;88B237;
    LDA.B #$D5                           ;88B239;
    STA.B $21                            ;88B23B;
    STZ.B $33                            ;88B23D;
    LDA.B $11                            ;88B23F;
    STA.B $36                            ;88B241;
    RTL                                  ;88B243;

CODE_88B244:
    LDA.B $36                            ;88B244;
    STA.B $11                            ;88B246;
    LDX.B $02                            ;88B248;
    JSR.W (PTR16_88B294,X)               ;88B24A;
    LDA.B #$01                           ;88B24D;
    STA.B $30                            ;88B24F;
    BIT.B $33                            ;88B251;
    BVS CODE_88B280                      ;88B253;
    STZ.B $30                            ;88B255;
    JSL.L CODE_849B43                    ;88B257;
    BEQ CODE_88B27C                      ;88B25B;
    BPL CODE_88B26A                      ;88B25D;
    LDA.B #$04                           ;88B25F;
    STA.B $01                            ;88B261;
    JSR.W CODE_88B40C                    ;88B263;
    JSL.L CODE_84A4AB                    ;88B266;

CODE_88B26A:
    LDA.B #$0E                           ;88B26A;
    TRB.B $11                            ;88B26C;
    LDA.B #$13                           ;88B26E;
    JSL.L CODE_8088A2                    ;88B270;
    LDA.B #$05                           ;88B274;
    STA.B $28                            ;88B276;
    LDA.B #$3C                           ;88B278;
    STA.B $34                            ;88B27A;

CODE_88B27C:
    JSL.L CODE_849B03                    ;88B27C;

CODE_88B280:
    LDA.B $34                            ;88B280;
    BEQ CODE_88B28C                      ;88B282;
    DEC.B $34                            ;88B284;
    BNE CODE_88B28C                      ;88B286;
    LDA.B #$07                           ;88B288;
    STA.B $28                            ;88B28A;

CODE_88B28C:
    JSL.L CODE_8491BE                    ;88B28C;
    JML.L CODE_8280B4                    ;88B290;

PTR16_88B294:
    dw CODE_88B29C                       ;88B294;
    dw CODE_88B2B4                       ;88B296;
    dw CODE_88B302                       ;88B298;
    dw CODE_88B399                       ;88B29A;

CODE_88B29C:
    LDX.B $03                            ;88B29C;
    BNE CODE_88B2B3                      ;88B29E;
    INC.B $03                            ;88B2A0;
    LDA.B #$06                           ;88B2A2;
    STA.B $12                            ;88B2A4;
    STZ.W $1F41                          ;88B2A6;
    LDA.B #$40                           ;88B2A9;
    TSB.B $33                            ;88B2AB;
    LDA.B #$02                           ;88B2AD;
    JSL.L CODE_848F07                    ;88B2AF;

CODE_88B2B3:
    RTS                                  ;88B2B3;

CODE_88B2B4:
    LDX.B $03                            ;88B2B4;
    JMP.W (PTR16_88B2B9,X)               ;88B2B6;

PTR16_88B2B9:
    dw CODE_88B2BF                       ;88B2B9;
    dw CODE_88B2D3                       ;88B2BB;
    dw CODE_88B2E8                       ;88B2BD;

CODE_88B2BF:
    LDA.B #$02                           ;88B2BF;
    STA.B $03                            ;88B2C1;
    LDA.B #$04                           ;88B2C3;
    STA.B $12                            ;88B2C5;
    LDA.B #$01                           ;88B2C7;
    STA.W $1F41                          ;88B2C9;
    LDA.B #$03                           ;88B2CC;
    JSL.L CODE_848F07                    ;88B2CE;
    RTS                                  ;88B2D2;

CODE_88B2D3:
    LDA.B $0F                            ;88B2D3;
    BPL CODE_88B2E3                      ;88B2D5;
    LDA.B #$04                           ;88B2D7;
    STA.B $03                            ;88B2D9;
    LDA.B #$00                           ;88B2DB;
    STA.B $1C                            ;88B2DD;
    LDA.B #$FF                           ;88B2DF;
    STA.B $1D                            ;88B2E1;

CODE_88B2E3:
    JSL.L CODE_848EEA                    ;88B2E3;
    RTS                                  ;88B2E7;

CODE_88B2E8:
    JSL.L CODE_82825D                    ;88B2E8;
    REP #$20                             ;88B2EC;
    LDA.W #$0090                         ;88B2EE;
    CMP.B $08                            ;88B2F1;
    BCS CODE_88B2FF                      ;88B2F3;
    STA.B $08                            ;88B2F5;
    SEP #$20                             ;88B2F7;
    LDA.B #$04                           ;88B2F9;
    STA.B $02                            ;88B2FB;
    STZ.B $03                            ;88B2FD;

CODE_88B2FF:
    SEP #$20                             ;88B2FF;
    RTS                                  ;88B301;

CODE_88B302:
    LDX.B $03                            ;88B302;
    BNE CODE_88B32C                      ;88B304;
    INC.B $03                            ;88B306;
    LDA.B #$40                           ;88B308;
    TRB.B $33                            ;88B30A;
    JSL.L CODE_849086                    ;88B30C;
    AND.B #$01                           ;88B310;
    STA.B $35                            ;88B312;
    ASL A                                ;88B314;
    ASL A                                ;88B315;
    TAX                                  ;88B316;
    REP #$20                             ;88B317;
    LDA.W DATA8_86D565,X                 ;88B319;
    STA.B $1A                            ;88B31C;
    LDA.W DATA8_86D567,X                 ;88B31E;
    STA.B $1C                            ;88B321;
    SEP #$20                             ;88B323;
    LDA.B #$80                           ;88B325;
    TRB.B $33                            ;88B327;
    JMP.W CODE_88B3E3                    ;88B329;

CODE_88B32C:
    LDA.B $2B                            ;88B32C;
    BIT.B #$03                           ;88B32E;
    BEQ CODE_88B342                      ;88B330;
    LDA.B #$80                           ;88B332;
    TSB.B $33                            ;88B334;
    REP #$20                             ;88B336;
    LDA.B $1A                            ;88B338;
    EOR.W #$FFFF                         ;88B33A;
    INC A                                ;88B33D;
    STA.B $1A                            ;88B33E;
    SEP #$20                             ;88B340;

CODE_88B342:
    LDA.B $2B                            ;88B342;
    BIT.B #$0C                           ;88B344;
    BEQ CODE_88B358                      ;88B346;
    LDA.B #$80                           ;88B348;
    TSB.B $33                            ;88B34A;
    REP #$20                             ;88B34C;
    LDA.B $1C                            ;88B34E;
    EOR.W #$FFFF                         ;88B350;
    INC A                                ;88B353;
    STA.B $1C                            ;88B354;
    SEP #$20                             ;88B356;

CODE_88B358:
    BIT.B $33                            ;88B358;
    BPL CODE_88B394                      ;88B35A;
    REP #$21                             ;88B35C;
    LDA.B $05                            ;88B35E;
    ADC.W #$EB80                         ;88B360;
    CLC                                  ;88B363;
    ADC.W #$0008                         ;88B364;
    CMP.W #$0010                         ;88B367;
    BCS CODE_88B392                      ;88B36A;
    LDA.B $08                            ;88B36C;
    CLC                                  ;88B36E;
    ADC.W #$FF70                         ;88B36F;
    CLC                                  ;88B372;
    ADC.W #$0008                         ;88B373;
    CMP.W #$0010                         ;88B376;
    BCS CODE_88B392                      ;88B379;
    LDA.W #$1480                         ;88B37B;
    STA.B $05                            ;88B37E;
    LDA.W #$0090                         ;88B380;
    STA.B $08                            ;88B383;
    SEP #$20                             ;88B385;
    LDA.B #$06                           ;88B387;
    STA.B $02                            ;88B389;
    STZ.B $03                            ;88B38B;
    LDA.B #$40                           ;88B38D;
    TSB.B $33                            ;88B38F;
    RTS                                  ;88B391;

CODE_88B392:
    SEP #$20                             ;88B392;

CODE_88B394:
    JSL.L CODE_82820A                    ;88B394;
    RTS                                  ;88B398;

CODE_88B399:
    LDX.B $03                            ;88B399;
    JMP.W (PTR16_88B39E,X)               ;88B39B;

PTR16_88B39E:
    dw CODE_88B3A4                       ;88B39E;
    dw CODE_88B3B7                       ;88B3A0;
    dw CODE_88B3CD                       ;88B3A2;

CODE_88B3A4:
    LDA.B #$02                           ;88B3A4;
    STA.B $03                            ;88B3A6;
    LDA.B #$80                           ;88B3A8;
    STA.B $1C                            ;88B3AA;
    LDA.B #$00                           ;88B3AC;
    STA.B $1D                            ;88B3AE;
    LDA.B #$04                           ;88B3B0;
    JSL.L CODE_848F07                    ;88B3B2;
    RTS                                  ;88B3B6;

CODE_88B3B7:
    JSL.L CODE_82825D                    ;88B3B7;
    REP #$20                             ;88B3BB;
    LDA.W #$0088                         ;88B3BD;
    CMP.B $08                            ;88B3C0;
    BCC CODE_88B3CA                      ;88B3C2;
    STA.B $08                            ;88B3C4;
    LDX.B #$04                           ;88B3C6;
    STX.B $03                            ;88B3C8;

CODE_88B3CA:
    SEP #$20                             ;88B3CA;
    RTS                                  ;88B3CC;

CODE_88B3CD:
    LDA.B $0F                            ;88B3CD;
    BPL CODE_88B3D5                      ;88B3CF;
    STZ.B $02                            ;88B3D1;
    STZ.B $03                            ;88B3D3;

CODE_88B3D5:
    JSL.L CODE_848EEA                    ;88B3D5;
    RTS                                  ;88B3D9;

CODE_88B3DA:
    LDA.B #$80                           ;88B3DA;
    STA.W $1F41                          ;88B3DC;
    JML.L CODE_828398                    ;88B3DF;

CODE_88B3E3:
    JSL.L CODE_8282D3                    ;88B3E3;
    BNE CODE_88B409                      ;88B3E7;
    INC.W $0000,X                        ;88B3E9;
    LDA.B #$3B                           ;88B3EC;
    STA.W $000A,X                        ;88B3EE;
    LDA.B $35                            ;88B3F1;
    CLC                                  ;88B3F3;
    ADC.B #$02                           ;88B3F4;
    STA.W $000B,X                        ;88B3F6;
    REP #$20                             ;88B3F9;
    TDC                                  ;88B3FB;
    STA.W $000C,X                        ;88B3FC;
    LDA.B $05                            ;88B3FF;
    STA.W $0005,X                        ;88B401;
    LDA.B $08                            ;88B404;
    STA.W $0008,X                        ;88B406;

CODE_88B409:
    SEP #$30                             ;88B409;
    RTS                                  ;88B40B;

CODE_88B40C:
    REP #$10                             ;88B40C;
    LDA.B $11                            ;88B40E;
    ORA.B #$20                           ;88B410;
    STA.L $7F838F                        ;88B412;
    LDY.W #$000F                         ;88B416;

CODE_88B419:
    JSL.L CODE_8282D3                    ;88B419;
    BNE CODE_88B44F                      ;88B41D;
    INC.W $0000,X                        ;88B41F;
    LDA.B #$2B                           ;88B422;
    STA.W $000A,X                        ;88B424;
    LDA.B $11                            ;88B427;
    STA.W $0011,X                        ;88B429;
    EOR.B #$40                           ;88B42C;
    STA.B $11                            ;88B42E;
    JSL.L CODE_849086                    ;88B430;
    AND.B #$03                           ;88B434;
    CLC                                  ;88B436;
    ADC.B #$5D                           ;88B437;
    ORA.B #$80                           ;88B439;
    STA.W $000B,X                        ;88B43B;
    REP #$20                             ;88B43E;
    LDA.B $05                            ;88B440;
    STA.W $0005,X                        ;88B442;
    LDA.B $08                            ;88B445;
    STA.W $0008,X                        ;88B447;
    SEP #$20                             ;88B44A;
    DEY                                  ;88B44C;
    BPL CODE_88B419                      ;88B44D;

CODE_88B44F:
    SEP #$10                             ;88B44F;
    RTS                                  ;88B451;

CODE_88B452:
    LDX.B $01                            ;88B452;
    JMP.W (PTR16_88B457,X)               ;88B454;

PTR16_88B457:
    dw CODE_88B45D                       ;88B457;
    dw CODE_88B487                       ;88B459;
    dw CODE_88B5A0                       ;88B45B;

CODE_88B45D:
    JSL.L CODE_82827D                    ;88B45D;
    LDA.B #$2F                           ;88B461;
    LDX.B $0B                            ;88B463;
    BEQ CODE_88B469                      ;88B465;
    LDA.B #$6F                           ;88B467;

CODE_88B469:
    STA.B $11                            ;88B469;
    STZ.W $1F42                          ;88B46B;
    LDA.B #$04                           ;88B46E;
    STA.B $12                            ;88B470;
    STA.B $30                            ;88B472;
    LDA.B #$75                           ;88B474;
    STA.B $20                            ;88B476;
    LDA.B #$D5                           ;88B478;
    STA.B $21                            ;88B47A;
    LDA.B #$9B                           ;88B47C;
    STA.B $16                            ;88B47E;
    LDA.B #$0E                           ;88B480;
    JSL.L CODE_848F07                    ;88B482;
    RTL                                  ;88B486;

CODE_88B487:
    LDX.B $02                            ;88B487;
    JSR.W (PTR16_88B496,X)               ;88B489;
    JSR.W CODE_88B610                    ;88B48C;
    JSR.W CODE_88B5A9                    ;88B48F;
    JML.L CODE_8280B4                    ;88B492;

PTR16_88B496:
    dw CODE_88B49C                       ;88B496;
    dw CODE_88B51A                       ;88B498;
    dw CODE_88B562                       ;88B49A;

CODE_88B49C:
    LDX.B $03                            ;88B49C;
    JMP.W (PTR16_88B4A1,X)               ;88B49E;

PTR16_88B4A1:
    dw CODE_88B4AB                       ;88B4A1;
    dw CODE_88B4CF                       ;88B4A3;
    dw CODE_88B4E0                       ;88B4A5;
    dw CODE_88B4F9                       ;88B4A7;
    dw CODE_88B50A                       ;88B4A9;

CODE_88B4AB:
    LDA.B #$02                           ;88B4AB;
    STA.B $03                            ;88B4AD;
    LDA.B $0B                            ;88B4AF;
    ASL A                                ;88B4B1;
    ASL A                                ;88B4B2;
    TAX                                  ;88B4B3;
    REP #$20                             ;88B4B4;
    LDA.W DATA8_86D57D,X                 ;88B4B6;
    STA.B $05                            ;88B4B9;
    LDA.W DATA8_86D57F,X                 ;88B4BB;
    STA.B $08                            ;88B4BE;
    TXA                                  ;88B4C0;
    LSR A                                ;88B4C1;
    TAX                                  ;88B4C2;
    LDA.W DATA8_86D585,X                 ;88B4C3;
    STA.B $1A                            ;88B4C6;
    SEP #$20                             ;88B4C8;
    LDA.B #$20                           ;88B4CA;
    STA.B $33                            ;88B4CC;
    RTS                                  ;88B4CE;

CODE_88B4CF:
    JSL.L CODE_82823E                    ;88B4CF;
    DEC.B $33                            ;88B4D3;
    BNE CODE_88B4DF                      ;88B4D5;
    LDA.B #$04                           ;88B4D7;
    STA.B $03                            ;88B4D9;
    LDA.B #$3C                           ;88B4DB;
    STA.B $33                            ;88B4DD;

CODE_88B4DF:
    RTS                                  ;88B4DF;

CODE_88B4E0:
    DEC.B $33                            ;88B4E0;
    BNE CODE_88B4F8                      ;88B4E2;
    LDA.B #$06                           ;88B4E4;
    STA.B $03                            ;88B4E6;
    LDA.B #$20                           ;88B4E8;
    STA.B $33                            ;88B4EA;
    REP #$20                             ;88B4EC;
    LDA.B $1A                            ;88B4EE;
    EOR.W #$FFFF                         ;88B4F0;
    INC A                                ;88B4F3;
    STA.B $1A                            ;88B4F4;
    SEP #$20                             ;88B4F6;

CODE_88B4F8:
    RTS                                  ;88B4F8;

CODE_88B4F9:
    JSL.L CODE_82823E                    ;88B4F9;
    DEC.B $33                            ;88B4FD;
    BNE CODE_88B509                      ;88B4FF;
    LDA.B #$08                           ;88B501;
    STA.B $03                            ;88B503;
    LDA.B #$3C                           ;88B505;
    STA.B $33                            ;88B507;

CODE_88B509:
    RTS                                  ;88B509;

CODE_88B50A:
    DEC.B $33                            ;88B50A;
    BNE CODE_88B519                      ;88B50C;
    DEC.B $34                            ;88B50E;
    BNE CODE_88B517                      ;88B510;
    LDA.B #$04                           ;88B512;
    STA.B $01                            ;88B514;
    RTS                                  ;88B516;

CODE_88B517:
    STZ.B $03                            ;88B517;

CODE_88B519:
    RTS                                  ;88B519;

CODE_88B51A:
    LDX.B $03                            ;88B51A;
    BNE CODE_88B54A                      ;88B51C;
    INC.B $03                            ;88B51E;
    LDA.B $0B                            ;88B520;
    ASL A                                ;88B522;
    ASL A                                ;88B523;
    TAX                                  ;88B524;
    REP #$20                             ;88B525;
    LDA.W DATA8_86D57D,X                 ;88B527;
    STA.B $05                            ;88B52A;
    LDA.W DATA8_86D57F,X                 ;88B52C;
    STA.B $08                            ;88B52F;
    TXA                                  ;88B531;
    LSR A                                ;88B532;
    TAX                                  ;88B533;
    LDA.W DATA8_86D585,X                 ;88B534;
    STA.B $1A                            ;88B537;
    SEP #$20                             ;88B539;
    LDA.B #$41                           ;88B53B;
    LDX.B $0B                            ;88B53D;
    BEQ CODE_88B543                      ;88B53F;
    LDA.B #$3F                           ;88B541;

CODE_88B543:
    STA.B $33                            ;88B543;
    LDA.B #$10                           ;88B545;
    TRB.B $11                            ;88B547;
    RTS                                  ;88B549;

CODE_88B54A:
    JSL.L CODE_82823E                    ;88B54A;
    DEC.B $33                            ;88B54E;
    BNE CODE_88B55D                      ;88B550;
    LDA.B #$04                           ;88B552;
    STA.B $01                            ;88B554;
    LDA.B #$03                           ;88B556;
    JSL.L CODE_848000                    ;88B558;
    RTS                                  ;88B55C;

CODE_88B55D:
    LDA.B #$00                           ;88B55D;
    JMP.W CODE_88B5D6                    ;88B55F;

CODE_88B562:
    LDX.B $03                            ;88B562;
    BNE CODE_88B590                      ;88B564;
    INC.B $03                            ;88B566;
    LDA.B $0B                            ;88B568;
    ASL A                                ;88B56A;
    ASL A                                ;88B56B;
    TAX                                  ;88B56C;
    REP #$20                             ;88B56D;
    LDA.W DATA8_86D589,X                 ;88B56F;
    STA.B $05                            ;88B572;
    LDA.W DATA8_86D58B,X                 ;88B574;
    STA.B $08                            ;88B577;
    TXA                                  ;88B579;
    LSR A                                ;88B57A;
    TAX                                  ;88B57B;
    LDA.W DATA8_86D591,X                 ;88B57C;
    STA.B $1A                            ;88B57F;
    SEP #$20                             ;88B581;
    LDA.B #$04                           ;88B583;
    STA.B $35                            ;88B585;
    LDA.B #$40                           ;88B587;
    STA.B $33                            ;88B589;
    LDA.B #$10                           ;88B58B;
    TSB.B $11                            ;88B58D;
    RTS                                  ;88B58F;

CODE_88B590:
    JSR.W CODE_88B668                    ;88B590;
    JSL.L CODE_82823E                    ;88B593;
    DEC.B $33                            ;88B597;
    BNE CODE_88B59F                      ;88B599;
    LDA.B #$04                           ;88B59B;
    STA.B $01                            ;88B59D;

CODE_88B59F:
    RTS                                  ;88B59F;

CODE_88B5A0:
    LDA.B #$80                           ;88B5A0;
    STA.W $1F42                          ;88B5A2;
    JML.L CODE_828398                    ;88B5A5;

CODE_88B5A9:
    REP #$10                             ;88B5A9;
    LDX.B $20                            ;88B5AB;
    PHX                                  ;88B5AD;
    LDX.W #$D579                         ;88B5AE;
    STX.B $20                            ;88B5B1;
    LDX.W #$0BA8                         ;88B5B3;
    JSL.L CODE_849C0E                    ;88B5B6;
    BCC CODE_88B5D0                      ;88B5BA;
    LDA.B #$80                           ;88B5BC;
    TSB.W $0BD4                          ;88B5BE;
    LDA.B #$40                           ;88B5C1;
    TSB.W $0BD4                          ;88B5C3;
    LDY.W $0000                          ;88B5C6;
    BPL CODE_88B5D0                      ;88B5C9;
    LDA.B #$40                           ;88B5CB;
    TRB.W $0BD4                          ;88B5CD;

CODE_88B5D0:
    PLX                                  ;88B5D0;
    STX.B $20                            ;88B5D1;
    SEP #$10                             ;88B5D3;
    RTS                                  ;88B5D5;

CODE_88B5D6:
    STA.W $0000                          ;88B5D6;
    REP #$20                             ;88B5D9;
    LDA.W #$0008                         ;88B5DB;
    LDX.B $0B                            ;88B5DE;
    BEQ CODE_88B5E5                      ;88B5E0;
    LDA.W #$0007                         ;88B5E2;

CODE_88B5E5:
    STA.W $0001                          ;88B5E5;
    LDA.B $05                            ;88B5E8;
    AND.W #$000F                         ;88B5EA;
    CMP.W $0001                          ;88B5ED;
    BNE CODE_88B60D                      ;88B5F0;
    LDA.B $05                            ;88B5F2;
    STA.W $002C                          ;88B5F4;
    LDA.B $08                            ;88B5F7;
    CLC                                  ;88B5F9;
    ADC.W #$FFB0                         ;88B5FA;
    STA.W $002E                          ;88B5FD;
    SEP #$20                             ;88B600;
    LDA.B #$10                           ;88B602;
    TSB.B $11                            ;88B604;
    LDA.W $0000                          ;88B606;
    JSL.L CODE_848011                    ;88B609;

CODE_88B60D:
    SEP #$20                             ;88B60D;
    RTS                                  ;88B60F;

CODE_88B610:
    REP #$20                             ;88B610;
    LDX.B $0B                            ;88B612;
    BNE CODE_88B63D                      ;88B614;
    LDA.B $05                            ;88B616;
    CLC                                  ;88B618;
    ADC.W #$0010                         ;88B619;
    CMP.W $0BAD                          ;88B61C;
    BCC CODE_88B665                      ;88B61F;
    STA.W $0000                          ;88B621;
    LDA.W $0BD3                          ;88B624;
    BIT.W #$0004                         ;88B627;
    BNE CODE_88B62F                      ;88B62A;
    DEC.W $0000                          ;88B62C;

CODE_88B62F:
    LDA.W $0000                          ;88B62F;
    STA.W $0BAD                          ;88B632;
    SEP #$20                             ;88B635;
    LDA.B #$02                           ;88B637;
    TSB.W $0BD4                          ;88B639;
    RTS                                  ;88B63C;

CODE_88B63D:
    LDA.B $05                            ;88B63D;
    SEC                                  ;88B63F;
    SBC.W #$0010                         ;88B640;
    CMP.W $0BAD                          ;88B643;
    BEQ CODE_88B64A                      ;88B646;
    BCS CODE_88B665                      ;88B648;

CODE_88B64A:
    STA.W $0000                          ;88B64A;
    LDA.W $0BD3                          ;88B64D;
    BIT.W #$0004                         ;88B650;
    BNE CODE_88B658                      ;88B653;
    INC.W $0000                          ;88B655;

CODE_88B658:
    LDA.W $0000                          ;88B658;
    STA.W $0BAD                          ;88B65B;
    SEP #$20                             ;88B65E;
    LDA.B #$01                           ;88B660;
    TSB.W $0BD4                          ;88B662;

CODE_88B665:
    SEP #$20                             ;88B665;
    RTS                                  ;88B667;

CODE_88B668:
    REP #$20                             ;88B668;
    LDA.B $05                            ;88B66A;
    AND.W #$000F                         ;88B66C;
    CMP.W #$0007                         ;88B66F;
    SEP #$20                             ;88B672;
    BNE CODE_88B688                      ;88B674;
    LDA.B $35                            ;88B676;
    JSL.L CODE_848000                    ;88B678;
    LDA.B $35                            ;88B67C;
    CMP.B #$07                           ;88B67E;
    BNE CODE_88B686                      ;88B680;
    LDA.B #$10                           ;88B682;
    TRB.B $11                            ;88B684;

CODE_88B686:
    INC.B $35                            ;88B686;

CODE_88B688:
    RTS                                  ;88B688;

CODE_88B689:
    LDX.B $01                            ;88B689;
    JMP.W (PTR16_88B68E,X)               ;88B68B;

PTR16_88B68E:
    dw CODE_88B694                       ;88B68E;
    dw CODE_88B6C7                       ;88B690;
    dw CODE_88BBBB                       ;88B692;

CODE_88B694:
    JSL.L CODE_82827D                    ;88B694;
    LDA.B #$02                           ;88B698;
    STA.B $12                            ;88B69A;
    LDA.B #$06                           ;88B69C;
    STA.B $28                            ;88B69E;
    STZ.B $35                            ;88B6A0;
    STZ.B $3C                            ;88B6A2;
    STZ.B $34                            ;88B6A4;
    STZ.B $39                            ;88B6A6;
    STZ.B $3B                            ;88B6A8;
    LDA.B #$20                           ;88B6AA;
    STA.B $27                            ;88B6AC;
    STA.B $2F                            ;88B6AE;
    LDA.B #$04                           ;88B6B0;
    STA.B $26                            ;88B6B2;
    LDA.B #$9D                           ;88B6B4;
    STA.B $20                            ;88B6B6;
    LDA.B #$D5                           ;88B6B8;
    STA.B $21                            ;88B6BA;
    LDA.L $7F8398                        ;88B6BC;
    ORA.B #$30                           ;88B6C0;
    STA.B $11                            ;88B6C2;
    STA.B $36                            ;88B6C4;
    RTL                                  ;88B6C6;

CODE_88B6C7:
    LDA.W $0BCF                          ;88B6C7;
    CMP.B #$80                           ;88B6CA;
    BNE CODE_88B6D9                      ;88B6CC;
    REP #$10                             ;88B6CE;
    LDY.W #$019C                         ;88B6D0;
    JSL.L CODE_828011                    ;88B6D3;
    SEP #$10                             ;88B6D7;

CODE_88B6D9:
    LDX.B $02                            ;88B6D9;
    JSR.W (PTR16_88B71A,X)               ;88B6DB;
    LDA.B #$80                           ;88B6DE;
    STA.B $2C                            ;88B6E0;
    JSL.L CODE_82D7D0                    ;88B6E2;
    LDA.W $0BCF                          ;88B6E6;
    AND.B #$7F                           ;88B6E9;
    BEQ CODE_88B70B                      ;88B6EB;
    JSL.L CODE_849B43                    ;88B6ED;
    BEQ CODE_88B707                      ;88B6F1;
    BPL CODE_88B703                      ;88B6F3;
    LDA.B #$10                           ;88B6F5;
    STA.B $02                            ;88B6F7;
    STZ.B $03                            ;88B6F9;
    LDA.B #$13                           ;88B6FB;
    JSL.L CODE_8088A2                    ;88B6FD;
    BRA CODE_88B716                      ;88B701;

CODE_88B703:
    LDA.B #$02                           ;88B703;
    STA.B $3C                            ;88B705;

CODE_88B707:
    JSL.L CODE_849B03                    ;88B707;

CODE_88B70B:
    JSR.W CODE_88B761                    ;88B70B;
    BIT.B $34                            ;88B70E;
    BVS CODE_88B716                      ;88B710;
    JSL.L CODE_8491BE                    ;88B712;

CODE_88B716:
    JML.L CODE_8280B4                    ;88B716;

PTR16_88B71A:
    dw CODE_88B7BA                       ;88B71A;
    dw CODE_88B7E2                       ;88B71C;
    dw CODE_88B86C                       ;88B71E;
    dw CODE_88B8BB                       ;88B720;
    dw CODE_88B8F5                       ;88B722;
    dw CODE_88B957                       ;88B724;
    dw CODE_88BA9E                       ;88B726;
    dw CODE_88B9CC                       ;88B728;
    dw CODE_88B72C                       ;88B72A;

CODE_88B72C:
    LDX.B $03                            ;88B72C;
    BNE CODE_88B743                      ;88B72E;
    INC.B $03                            ;88B730;
    LDA.B #$28                           ;88B732;
    STA.B $33                            ;88B734;
    LDA.B #$01                           ;88B736;
    STA.W $1F13                          ;88B738;
    STA.W $1F14                          ;88B73B;
    JSL.L CODE_849F85                    ;88B73E;
    RTS                                  ;88B742;

CODE_88B743:
    DEC.B $33                            ;88B743;
    BNE CODE_88B760                      ;88B745;
    STZ.W $1F3F                          ;88B747;
    INC.W $1F42                          ;88B74A;
    LDA.B #$04                           ;88B74D;
    STA.B $01                            ;88B74F;
    STZ.B $02                            ;88B751;
    STA.W $0BD8                          ;88B753;
    STZ.W $1F13                          ;88B756;
    STZ.W $1F14                          ;88B759;
    JSL.L CODE_849FE6                    ;88B75C;

CODE_88B760:
    RTS                                  ;88B760;

CODE_88B761:
    LDX.B $3C                            ;88B761;
    JMP.W (PTR16_88B766,X)               ;88B763;

PTR16_88B766:
    dw CODE_88B788                       ;88B766;
    dw CODE_88B76C                       ;88B768;
    dw CODE_88B789                       ;88B76A;

CODE_88B76C:
    LDA.B #$04                           ;88B76C;
    STA.B $3C                            ;88B76E;
    LDA.B #$05                           ;88B770;
    STA.B $28                            ;88B772;
    LDA.B #$0E                           ;88B774;
    TRB.B $11                            ;88B776;
    LDA.B #$13                           ;88B778;
    JSL.L CODE_8088A2                    ;88B77A;
    LDA.B #$3C                           ;88B77E;
    STA.B $35                            ;88B780;
    LDA.B #$09                           ;88B782;
    JSL.L CODE_848F07                    ;88B784;

CODE_88B788:
    RTS                                  ;88B788;

CODE_88B789:
    LDA.W $0BCF                          ;88B789;
    AND.B #$7F                           ;88B78C;
    BEQ CODE_88B794                      ;88B78E;
    DEC.B $35                            ;88B790;
    BNE CODE_88B7A7                      ;88B792;

CODE_88B794:
    STZ.B $3C                            ;88B794;
    LDA.B #$06                           ;88B796;
    STA.B $28                            ;88B798;
    LDA.B #$00                           ;88B79A;
    JSL.L CODE_848F07                    ;88B79C;
    LDA.B $36                            ;88B7A0;
    STA.B $11                            ;88B7A2;
    JMP.W CODE_88BD71                    ;88B7A4;

CODE_88B7A7:
    LDA.B $35                            ;88B7A7;
    LSR A                                ;88B7A9;
    BCC CODE_88B7B3                      ;88B7AA;
    LDA.B #$0E                           ;88B7AC;
    TRB.B $11                            ;88B7AE;
    JMP.W CODE_88BD90                    ;88B7B0;

CODE_88B7B3:
    LDA.B $36                            ;88B7B3;
    STA.B $11                            ;88B7B5;
    JMP.W CODE_88BD71                    ;88B7B7;

CODE_88B7BA:
    LDX.B $03                            ;88B7BA;
    BNE CODE_88B7D7                      ;88B7BC;
    REP #$20                             ;88B7BE;
    LDA.W $1E5E                          ;88B7C0;
    CMP.W $1E56                          ;88B7C3;
    BNE CODE_88B7CA                      ;88B7C6;
    INC.B $03                            ;88B7C8;

CODE_88B7CA:
    SEP #$20                             ;88B7CA;
    LDA.B #$3C                           ;88B7CC;
    STA.B $33                            ;88B7CE;
    LDA.B #$00                           ;88B7D0;
    JSL.L CODE_848F07                    ;88B7D2;
    RTS                                  ;88B7D6;

CODE_88B7D7:
    DEC.B $33                            ;88B7D7;
    BNE CODE_88B7E1                      ;88B7D9;
    LDA.B #$02                           ;88B7DB;
    STA.B $02                            ;88B7DD;
    STZ.B $03                            ;88B7DF;

CODE_88B7E1:
    RTS                                  ;88B7E1;

CODE_88B7E2:
    LDX.B $03                            ;88B7E2;
    JMP.W (PTR16_88B7E7,X)               ;88B7E4;

PTR16_88B7E7:
    dw CODE_88B7ED                       ;88B7E7;
    dw CODE_88B807                       ;88B7E9;
    dw CODE_88B859                       ;88B7EB;

CODE_88B7ED:
    LDA.B #$02                           ;88B7ED;
    STA.B $03                            ;88B7EF;
    REP #$20                             ;88B7F1;
    STZ.B $1A                            ;88B7F3;
    STZ.B $1C                            ;88B7F5;
    LDA.W #$0040                         ;88B7F7;
    STA.B $1E                            ;88B7FA;
    SEP #$20                             ;88B7FC;
    LDA.B #$40                           ;88B7FE;
    TSB.B $34                            ;88B800;
    LDA.B #$1E                           ;88B802;
    STA.B $33                            ;88B804;
    RTS                                  ;88B806;

CODE_88B807:
    LDA.B $33                            ;88B807;
    BEQ CODE_88B813                      ;88B809;
    DEC.B $33                            ;88B80B;
    BNE CODE_88B813                      ;88B80D;
    LDA.B #$40                           ;88B80F;
    TRB.B $34                            ;88B811;

CODE_88B813:
    REP #$20                             ;88B813;
    LDA.W #$027F                         ;88B815;
    CMP.B $08                            ;88B818;
    SEP #$20                             ;88B81A;
    BCS CODE_88B847                      ;88B81C;
    STA.B $08                            ;88B81E;
    LDA.B #$1E                           ;88B820;
    JSL.L CODE_84A333                    ;88B822;
    LDA.B #$20                           ;88B826;
    JSL.L CODE_8088A2                    ;88B828;
    REP #$20                             ;88B82C;
    LDA.B $1C                            ;88B82E;
    EOR.W #$FFFF                         ;88B830;
    INC A                                ;88B833;
    LSR A                                ;88B834;
    STA.B $1C                            ;88B835;
    CMP.W #$0100                         ;88B837;
    SEP #$20                             ;88B83A;
    BCS CODE_88B847                      ;88B83C;
    LDA.B #$04                           ;88B83E;
    STA.B $03                            ;88B840;
    LDA.B #$5E                           ;88B842;
    STA.B $33                            ;88B844;
    RTS                                  ;88B846;

CODE_88B847:
    JSL.L CODE_828174                    ;88B847;
    REP #$20                             ;88B84B;
    LDA.W #$FA00                         ;88B84D;
    CMP.B $1C                            ;88B850;
    BMI CODE_88B856                      ;88B852;
    STA.B $1C                            ;88B854;

CODE_88B856:
    SEP #$20                             ;88B856;
    RTS                                  ;88B858;

CODE_88B859:
    DEC.B $33                            ;88B859;
    BNE CODE_88B86B                      ;88B85B;
    LDA.B #$04                           ;88B85D;
    STA.B $02                            ;88B85F;
    STZ.B $03                            ;88B861;
    REP #$20                             ;88B863;
    TDC                                  ;88B865;
    STA.W $1F0E                          ;88B866;
    SEP #$20                             ;88B869;

CODE_88B86B:
    RTS                                  ;88B86B;

CODE_88B86C:
    LDX.B $03                            ;88B86C;
    JMP.W (PTR16_88B871,X)               ;88B86E;

PTR16_88B871:
    dw CODE_88B877                       ;88B871;
    dw CODE_88B88A                       ;88B873;
    dw CODE_88B89D                       ;88B875;

CODE_88B877:
    LDA.B #$02                           ;88B877;
    STA.B $03                            ;88B879;
    LDA.B #$00                           ;88B87B;
    STA.B $1C                            ;88B87D;
    LDA.B #$01                           ;88B87F;
    STA.B $1D                            ;88B881;
    LDA.B #$01                           ;88B883;
    JSL.L CODE_848F07                    ;88B885;
    RTS                                  ;88B889;

CODE_88B88A:
    LDA.B $0F                            ;88B88A;
    BPL CODE_88B898                      ;88B88C;
    LDA.B #$04                           ;88B88E;
    STA.B $03                            ;88B890;
    LDA.B #$00                           ;88B892;
    JSL.L CODE_848F07                    ;88B894;

CODE_88B898:
    JSL.L CODE_848EEA                    ;88B898;
    RTS                                  ;88B89C;

CODE_88B89D:
    REP #$20                             ;88B89D;
    LDA.W #$0230                         ;88B89F;
    CMP.B $08                            ;88B8A2;
    BCC CODE_88B8B0                      ;88B8A4;
    STA.B $08                            ;88B8A6;
    SEP #$20                             ;88B8A8;
    LDA.B #$06                           ;88B8AA;
    STA.B $02                            ;88B8AC;
    STZ.B $03                            ;88B8AE;

CODE_88B8B0:
    SEP #$20                             ;88B8B0;
    JSL.L CODE_82825D                    ;88B8B2;
    JSL.L CODE_848EEA                    ;88B8B6;
    RTS                                  ;88B8BA;

CODE_88B8BB:
    LDX.B $03                            ;88B8BB;
    BNE CODE_88B8C6                      ;88B8BD;
    INC.B $03                            ;88B8BF;
    LDA.B #$1E                           ;88B8C1;
    STA.B $33                            ;88B8C3;
    RTS                                  ;88B8C5;

CODE_88B8C6:
    DEC.B $33                            ;88B8C6;
    BNE CODE_88B8F0                      ;88B8C8;
    JSL.L CODE_849086                    ;88B8CA;
    AND.B #$0F                           ;88B8CE;
    CLC                                  ;88B8D0;
    ADC.B $39                            ;88B8D1;
    TAX                                  ;88B8D3;
    LDA.W DATA8_86D5B3,X                 ;88B8D4;
    CMP.B #$0C                           ;88B8D7;
    STA.B $02                            ;88B8D9;
    STZ.B $03                            ;88B8DB;
    BEQ CODE_88B8EE                      ;88B8DD;
    LDA.B $39                            ;88B8DF;
    CLC                                  ;88B8E1;
    ADC.B #$10                           ;88B8E2;
    CMP.B #$60                           ;88B8E4;
    BCC CODE_88B8EA                      ;88B8E6;
    LDA.B #$50                           ;88B8E8;

CODE_88B8EA:
    STA.B $39                            ;88B8EA;
    BRA CODE_88B8F0                      ;88B8EC;

CODE_88B8EE:
    STZ.B $39                            ;88B8EE;

CODE_88B8F0:
    JSL.L CODE_848EEA                    ;88B8F0;
    RTS                                  ;88B8F4;

CODE_88B8F5:
    LDX.B $03                            ;88B8F5;
    BNE CODE_88B91D                      ;88B8F7;
    INC.B $03                            ;88B8F9;
    REP #$30                             ;88B8FB;
    LDX.W #$0180                         ;88B8FD;
    LDA.B $05                            ;88B900;
    CMP.W #$1180                         ;88B902;
    BCC CODE_88B90A                      ;88B905;
    LDX.W #$FE80                         ;88B907;

CODE_88B90A:
    STX.B $1A                            ;88B90A;
    SEP #$30                             ;88B90C;
    LDA.B $27                            ;88B90E;
    AND.B #$7F                           ;88B910;
    CMP.B #$10                           ;88B912;
    BCS CODE_88B91C                      ;88B914;
    REP #$20                             ;88B916;
    ASL.B $1A                            ;88B918;
    SEP #$20                             ;88B91A;

CODE_88B91C:
    RTS                                  ;88B91C;

CODE_88B91D:
    JSR.W CODE_88BCDA                    ;88B91D;
    BNE CODE_88B929                      ;88B920;
    LDA.B #$0E                           ;88B922;
    STA.B $02                            ;88B924;
    STZ.B $03                            ;88B926;
    RTS                                  ;88B928;

CODE_88B929:
    JSL.L CODE_848EEA                    ;88B929;
    JSL.L CODE_82823E                    ;88B92D;
    LDA.B $1B                            ;88B931;
    BMI CODE_88B94B                      ;88B933;
    REP #$20                             ;88B935;
    LDA.W #$11C0                         ;88B937;
    CMP.B $05                            ;88B93A;
    BCS CODE_88B954                      ;88B93C;

CODE_88B93E:
    STA.B $05                            ;88B93E;
    SEP #$20                             ;88B940;
    LDA.B #$06                           ;88B942;
    STA.B $02                            ;88B944;
    STZ.B $03                            ;88B946;
    STZ.B $3B                            ;88B948;
    RTS                                  ;88B94A;

CODE_88B94B:
    REP #$20                             ;88B94B;
    LDA.W #$1140                         ;88B94D;
    CMP.B $05                            ;88B950;
    BCS CODE_88B93E                      ;88B952;

CODE_88B954:
    SEP #$20                             ;88B954;
    RTS                                  ;88B956;

CODE_88B957:
    LDX.B $03                            ;88B957;
    JMP.W (PTR16_88B95C,X)               ;88B959;

PTR16_88B95C:
    dw CODE_88B962                       ;88B95C;
    dw CODE_88B98F                       ;88B95E;
    dw CODE_88B9AE                       ;88B960;

CODE_88B962:
    LDA.B #$02                           ;88B962;
    STA.B $03                            ;88B964;
    REP #$30                             ;88B966;
    LDX.W #$0199                         ;88B968;
    LDA.B $05                            ;88B96B;
    CMP.W #$1180                         ;88B96D;
    BCC CODE_88B975                      ;88B970;
    LDX.W #$FE67                         ;88B972;

CODE_88B975:
    STX.B $1A                            ;88B975;
    LDA.W #$FECD                         ;88B977;
    STA.B $1C                            ;88B97A;
    SEP #$30                             ;88B97C;
    LDA.B $27                            ;88B97E;
    AND.B #$7F                           ;88B980;
    CMP.B #$10                           ;88B982;
    BCS CODE_88B98E                      ;88B984;
    REP #$20                             ;88B986;
    ASL.B $1A                            ;88B988;
    ASL.B $1C                            ;88B98A;
    SEP #$20                             ;88B98C;

CODE_88B98E:
    RTS                                  ;88B98E;

CODE_88B98F:
    REP #$20                             ;88B98F;
    LDA.W #$027F                         ;88B991;
    CMP.B $08                            ;88B994;
    BCS CODE_88B9A3                      ;88B996;
    STA.B $08                            ;88B998;
    LDX.B #$04                           ;88B99A;
    STX.B $03                            ;88B99C;
    LDA.W #$0100                         ;88B99E;
    STA.B $1C                            ;88B9A1;

CODE_88B9A3:
    SEP #$20                             ;88B9A3;
    JSL.L CODE_82820A                    ;88B9A5;
    JSL.L CODE_848EEA                    ;88B9A9;
    RTS                                  ;88B9AD;

CODE_88B9AE:
    REP #$20                             ;88B9AE;
    LDA.W #$0230                         ;88B9B0;
    CMP.B $08                            ;88B9B3;
    BCC CODE_88B9C1                      ;88B9B5;
    STA.B $08                            ;88B9B7;
    SEP #$20                             ;88B9B9;
    LDA.B #$06                           ;88B9BB;
    STA.B $02                            ;88B9BD;
    STZ.B $03                            ;88B9BF;

CODE_88B9C1:
    SEP #$20                             ;88B9C1;
    JSL.L CODE_82825D                    ;88B9C3;
    JSL.L CODE_848EEA                    ;88B9C7;
    RTS                                  ;88B9CB;

CODE_88B9CC:
    LDX.B $03                            ;88B9CC;
    JMP.W (PTR16_88B9D1,X)               ;88B9CE;

PTR16_88B9D1:
    dw CODE_88B9DB                       ;88B9D1;
    dw CODE_88B9F8                       ;88B9D3;
    dw CODE_88BA19                       ;88B9D5;
    dw CODE_88BA65                       ;88B9D7;
    dw CODE_88BA80                       ;88B9D9;

CODE_88B9DB:
    LDA.B #$02                           ;88B9DB;
    STA.B $03                            ;88B9DD;
    STZ.W $1F3F                          ;88B9DF;
    REP #$30                             ;88B9E2;
    LDX.B $37                            ;88B9E4;
    LDY.W #$0100                         ;88B9E6;
    LDA.W $0005,X                        ;88B9E9;
    CMP.B $05                            ;88B9EC;
    BCS CODE_88B9F3                      ;88B9EE;
    LDY.W #$FF00                         ;88B9F0;

CODE_88B9F3:
    STY.B $1A                            ;88B9F3;
    SEP #$30                             ;88B9F5;
    RTS                                  ;88B9F7;

CODE_88B9F8:
    JSR.W CODE_88BD12                    ;88B9F8;
    BCS CODE_88BA10                      ;88B9FB;
    LDA.B #$04                           ;88B9FD;
    STA.B $03                            ;88B9FF;
    LDA.B #$0A                           ;88BA01;
    STA.B $26                            ;88BA03;
    REP #$20                             ;88BA05;
    LDA.W #$0000                         ;88BA07;
    STA.B $1C                            ;88BA0A;
    STZ.B $1A                            ;88BA0C;
    SEP #$20                             ;88BA0E;

CODE_88BA10:
    JSL.L CODE_82823E                    ;88BA10;
    JSL.L CODE_848EEA                    ;88BA14;
    RTS                                  ;88BA18;

CODE_88BA19:
    REP #$20                             ;88BA19;
    LDA.W #$027F                         ;88BA1B;
    CMP.B $08                            ;88BA1E;
    SEP #$20                             ;88BA20;
    BCS CODE_88BA53                      ;88BA22;
    STA.B $08                            ;88BA24;
    LDA.B #$1E                           ;88BA26;
    JSL.L CODE_84A333                    ;88BA28;
    LDA.B #$20                           ;88BA2C;
    JSL.L CODE_8088A2                    ;88BA2E;
    REP #$20                             ;88BA32;
    LDA.B $1C                            ;88BA34;
    EOR.W #$FFFF                         ;88BA36;
    INC A                                ;88BA39;
    LSR A                                ;88BA3A;
    STA.B $1C                            ;88BA3B;
    CMP.W #$0100                         ;88BA3D;
    SEP #$20                             ;88BA40;
    BCS CODE_88BA53                      ;88BA42;
    LDA.B #$06                           ;88BA44;
    STA.B $03                            ;88BA46;
    LDA.B #$04                           ;88BA48;
    STA.B $26                            ;88BA4A;
    LDA.B #$01                           ;88BA4C;
    JSL.L CODE_848F07                    ;88BA4E;
    RTS                                  ;88BA52;

CODE_88BA53:
    JSL.L CODE_828174                    ;88BA53;
    REP #$20                             ;88BA57;
    LDA.W #$FA00                         ;88BA59;
    CMP.B $1C                            ;88BA5C;
    BMI CODE_88BA62                      ;88BA5E;
    STA.B $1C                            ;88BA60;

CODE_88BA62:
    SEP #$20                             ;88BA62;
    RTS                                  ;88BA64;

CODE_88BA65:
    LDA.B $0F                            ;88BA65;
    BPL CODE_88BA7B                      ;88BA67;
    LDA.B #$08                           ;88BA69;
    STA.B $03                            ;88BA6B;
    LDA.B #$00                           ;88BA6D;
    STA.B $1C                            ;88BA6F;
    LDA.B #$01                           ;88BA71;
    STA.B $1D                            ;88BA73;
    LDA.B #$00                           ;88BA75;
    JSL.L CODE_848F07                    ;88BA77;

CODE_88BA7B:
    JSL.L CODE_848EEA                    ;88BA7B;
    RTS                                  ;88BA7F;

CODE_88BA80:
    REP #$20                             ;88BA80;
    LDA.W #$0230                         ;88BA82;
    CMP.B $08                            ;88BA85;
    BCC CODE_88BA97                      ;88BA87;
    STA.B $08                            ;88BA89;
    SEP #$20                             ;88BA8B;
    LDA.B #$08                           ;88BA8D;
    STA.B $02                            ;88BA8F;
    STZ.B $03                            ;88BA91;
    STA.W $1F3F                          ;88BA93;
    RTS                                  ;88BA96;

CODE_88BA97:
    SEP #$20                             ;88BA97;
    JSL.L CODE_82825D                    ;88BA99;
    RTS                                  ;88BA9D;

CODE_88BA9E:
    LDX.B $03                            ;88BA9E;
    JMP.W (PTR16_88BAA3,X)               ;88BAA0;

PTR16_88BAA3:
    dw CODE_88BAB3                       ;88BAA3;
    dw CODE_88BAD0                       ;88BAA5;
    dw CODE_88BAFF                       ;88BAA7;
    dw CODE_88BB21                       ;88BAA9;
    dw CODE_88BB38                       ;88BAAB;
    dw CODE_88BB5C                       ;88BAAD;
    dw CODE_88BB89                       ;88BAAF;
    dw CODE_88BB99                       ;88BAB1;

CODE_88BAB3:
    LDA.B #$02                           ;88BAB3;
    STA.B $03                            ;88BAB5;
    REP #$30                             ;88BAB7;
    LDX.W #$0180                         ;88BAB9;
    LDA.W #$11C0                         ;88BABC;
    CMP.B $05                            ;88BABF;
    BCS CODE_88BAC6                      ;88BAC1;
    LDX.W #$FE80                         ;88BAC3;

CODE_88BAC6:
    STX.B $1A                            ;88BAC6;
    SEP #$30                             ;88BAC8;
    STZ.B $3A                            ;88BACA;
    STZ.W $1F40                          ;88BACC;
    RTS                                  ;88BACF;

CODE_88BAD0:
    REP #$20                             ;88BAD0;
    LDA.B $05                            ;88BAD2;
    SEC                                  ;88BAD4;
    SBC.W #$11C0                         ;88BAD5;
    BPL CODE_88BADE                      ;88BAD8;
    EOR.W #$FFFF                         ;88BADA;
    INC A                                ;88BADD;

CODE_88BADE:
    CMP.W #$0002                         ;88BADE;
    BCS CODE_88BAF4                      ;88BAE1;
    LDA.W #$11C0                         ;88BAE3;
    STA.B $05                            ;88BAE6;
    LDA.W #$FEC0                         ;88BAE8;
    STA.B $1C                            ;88BAEB;
    SEP #$20                             ;88BAED;
    LDA.B #$04                           ;88BAEF;
    STA.B $03                            ;88BAF1;
    RTS                                  ;88BAF3;

CODE_88BAF4:
    SEP #$20                             ;88BAF4;
    JSL.L CODE_82823E                    ;88BAF6;
    JSL.L CODE_848EEA                    ;88BAFA;
    RTS                                  ;88BAFE;

CODE_88BAFF:
    REP #$20                             ;88BAFF;
    LDA.W #$025F                         ;88BB01;
    CMP.B $08                            ;88BB04;
    BCS CODE_88BB16                      ;88BB06;
    STA.B $08                            ;88BB08;
    SEP #$20                             ;88BB0A;
    LDA.B #$06                           ;88BB0C;
    STA.B $03                            ;88BB0E;
    LDA.B #$80                           ;88BB10;
    TSB.W $1F40                          ;88BB12;
    RTS                                  ;88BB15;

CODE_88BB16:
    SEP #$20                             ;88BB16;
    JSL.L CODE_82825D                    ;88BB18;
    JSL.L CODE_848EEA                    ;88BB1C;
    RTS                                  ;88BB20;

CODE_88BB21:
    LDA.W $1F40                          ;88BB21;
    CMP.B #$C0                           ;88BB24;
    BNE CODE_88BB33                      ;88BB26;
    LDA.B #$08                           ;88BB28;
    STA.B $03                            ;88BB2A;
    LDA.B #$78                           ;88BB2C;
    STA.B $33                            ;88BB2E;
    JMP.W CODE_88BD32                    ;88BB30;

CODE_88BB33:
    JSL.L CODE_848EEA                    ;88BB33;
    RTS                                  ;88BB37;

CODE_88BB38:
    JSL.L CODE_848EEA                    ;88BB38;
    DEC.B $33                            ;88BB3C;
    BNE CODE_88BB59                      ;88BB3E;
    LDA.B #$0A                           ;88BB40;
    STA.B $03                            ;88BB42;
    LDX.B #$5E                           ;88BB44;
    LDA.B $27                            ;88BB46;
    AND.B #$7F                           ;88BB48;
    CMP.B #$10                           ;88BB4A;
    BCS CODE_88BB50                      ;88BB4C;
    LDX.B #$14                           ;88BB4E;

CODE_88BB50:
    STX.B $33                            ;88BB50;
    LDA.B $36                            ;88BB52;
    STA.B $11                            ;88BB54;
    JMP.W CODE_88BD71                    ;88BB56;

CODE_88BB59:
    JMP.W CODE_88BD97                    ;88BB59;

CODE_88BB5C:
    JSL.L CODE_848EEA                    ;88BB5C;
    DEC.B $33                            ;88BB60;
    BNE CODE_88BB88                      ;88BB62;
    JSL.L CODE_849086                    ;88BB64;
    AND.B #$0F                           ;88BB68;
    CLC                                  ;88BB6A;
    ADC.B $3A                            ;88BB6B;
    TAX                                  ;88BB6D;
    LDA.W DATA8_86D613,X                 ;88BB6E;
    CMP.B #$06                           ;88BB71;
    STA.B $03                            ;88BB73;
    BNE CODE_88BB86                      ;88BB75;
    LDA.B $3A                            ;88BB77;
    CLC                                  ;88BB79;
    ADC.B #$10                           ;88BB7A;
    CMP.B #$30                           ;88BB7C;
    BCC CODE_88BB82                      ;88BB7E;
    LDA.B #$20                           ;88BB80;

CODE_88BB82:
    STA.B $3A                            ;88BB82;
    BRA CODE_88BB88                      ;88BB84;

CODE_88BB86:
    STZ.B $3A                            ;88BB86;

CODE_88BB88:
    RTS                                  ;88BB88;

CODE_88BB89:
    LDA.B #$0E                           ;88BB89;
    STA.B $03                            ;88BB8B;
    LDA.B #$00                           ;88BB8D;
    STA.B $1C                            ;88BB8F;
    LDA.B #$02                           ;88BB91;
    STA.B $1D                            ;88BB93;
    STZ.W $1F41                          ;88BB95;
    RTS                                  ;88BB98;

CODE_88BB99:
    REP #$20                             ;88BB99;
    LDA.W #$0230                         ;88BB9B;
    CMP.B $08                            ;88BB9E;
    BCC CODE_88BBB0                      ;88BBA0;
    STA.B $08                            ;88BBA2;
    SEP #$20                             ;88BBA4;
    LDA.B #$08                           ;88BBA6;
    STA.B $02                            ;88BBA8;
    STZ.B $03                            ;88BBAA;
    STA.W $1F41                          ;88BBAC;
    RTS                                  ;88BBAF;

CODE_88BBB0:
    SEP #$20                             ;88BBB0;
    JSL.L CODE_82825D                    ;88BBB2;
    JSL.L CODE_848EEA                    ;88BBB6;
    RTS                                  ;88BBBA;

CODE_88BBBB:
    LDX.B $02                            ;88BBBB;
    JMP.W (PTR16_88BBC0,X)               ;88BBBD;

PTR16_88BBC0:
    dw CODE_88BBCC                       ;88BBC0;
    dw CODE_88BBF2                       ;88BBC2;
    dw CODE_88BC30                       ;88BBC4;
    dw CODE_88BC6C                       ;88BBC6;
    dw CODE_88BCB5                       ;88BBC8;
    dw CODE_88BCD6                       ;88BBCA;

CODE_88BBCC:
    LDA.B #$02                           ;88BBCC;
    STA.B $02                            ;88BBCE;
    LDY.B #$02                           ;88BBD0;
    LDA.B #$F6                           ;88BBD2;
    JSL.L CODE_80887F                    ;88BBD4;
    LDA.B #$30                           ;88BBD8;
    TSB.W $0BB9                          ;88BBDA;
    LDA.B #$FF                           ;88BBDD;
    STA.B $33                            ;88BBDF;
    JSR.W CODE_88BD71                    ;88BBE1;
    LDA.B $36                            ;88BBE4;
    STA.B $11                            ;88BBE6;
    LDA.B #$0A                           ;88BBE8;
    JSL.L CODE_848F07                    ;88BBEA;
    JML.L CODE_8280B4                    ;88BBEE;

CODE_88BBF2:
    LDA.W $0B9C                          ;88BBF2;
    AND.B #$1F                           ;88BBF5;
    BNE CODE_88BBFF                      ;88BBF7;
    LDA.B #$20                           ;88BBF9;
    JSL.L CODE_84A333                    ;88BBFB;

CODE_88BBFF:
    DEC.B $33                            ;88BBFF;
    BNE CODE_88BC07                      ;88BC01;
    LDA.B #$04                           ;88BC03;
    STA.B $02                            ;88BC05;

CODE_88BC07:
    REP #$20                             ;88BC07;
    LDA.W #$FFE0                         ;88BC09;
    STA.W $0000                          ;88BC0C;
    LDA.W #$FFF0                         ;88BC0F;
    STA.W $0002                          ;88BC12;
    LDA.W #$003F                         ;88BC15;
    STA.W $0004                          ;88BC18;
    LDA.W #$001F                         ;88BC1B;
    STA.W $0006                          ;88BC1E;
    SEP #$20                             ;88BC21;
    LDA.B #$03                           ;88BC23;
    STA.W $0008                          ;88BC25;
    JSL.L CODE_8280B4                    ;88BC28;
    JML.L CODE_84A4C6                    ;88BC2C;

CODE_88BC30:
    LDA.B #$06                           ;88BC30;
    STA.B $02                            ;88BC32;
    PHB                                  ;88BC34;
    REP #$30                             ;88BC35;
    LDX.W #$D526                         ;88BC37;
    LDY.W #$0AA1                         ;88BC3A;
    LDA.W #$0006                         ;88BC3D;
    MVN $00,$86                          ;88BC40;
    LDX.W #$D52D                         ;88BC43;
    LDY.W #$0B22                         ;88BC46;
    LDA.W #$0009                         ;88BC49;
    MVN $00,$86                          ;88BC4C;
    JSR.W CODE_88ADFC                    ;88BC4F;
    SEP #$30                             ;88BC52;
    PLB                                  ;88BC54;
    LDA.B #$3F                           ;88BC55;
    STA.W $00CA                          ;88BC57;
    STZ.W $00CB                          ;88BC5A;
    LDA.B #$01                           ;88BC5D;
    STA.B $3D                            ;88BC5F;
    JSR.W CODE_88AD92                    ;88BC61;
    LDA.B #$C0                           ;88BC64;
    STA.B $33                            ;88BC66;
    JML.L CODE_8280B4                    ;88BC68;

CODE_88BC6C:
    LDA.W $0B9C                          ;88BC6C;
    AND.B #$01                           ;88BC6F;
    BNE CODE_88BC7B                      ;88BC71;
    LDA.B $3D                            ;88BC73;
    CMP.B #$1F                           ;88BC75;
    BEQ CODE_88BC7B                      ;88BC77;
    INC.B $3D                            ;88BC79;

CODE_88BC7B:
    LDA.B $33                            ;88BC7B;
    CMP.B #$B0                           ;88BC7D;
    BNE CODE_88BC87                      ;88BC7F;
    LDA.B #$21                           ;88BC81;
    JSL.L CODE_8088A2                    ;88BC83;

CODE_88BC87:
    DEC.B $33                            ;88BC87;
    LDA.B $33                            ;88BC89;
    BNE CODE_88BCA3                      ;88BC8B;
    LDA.B #$08                           ;88BC8D;
    STA.B $02                            ;88BC8F;
    LDA.B #$1F                           ;88BC91;
    STA.W $00CB                          ;88BC93;
    STA.W $00CC                          ;88BC96;
    STA.W $00CD                          ;88BC99;
    STZ.W $0AA1                          ;88BC9C;
    INC.W $1F3F                          ;88BC9F;
    RTL                                  ;88BCA2;

CODE_88BCA3:
    CMP.B #$B0                           ;88BCA3;
    BCC CODE_88BCAE                      ;88BCA5;
    JSR.W CODE_88AD92                    ;88BCA7;
    JML.L CODE_8280B4                    ;88BCAA;

CODE_88BCAE:
    JSR.W CODE_88ADB9                    ;88BCAE;
    JML.L CODE_8280B4                    ;88BCB1;

CODE_88BCB5:
    LDA.W $0B9C                          ;88BCB5;
    AND.B #$01                           ;88BCB8;
    BNE CODE_88BCD5                      ;88BCBA;
    DEC.W $00CB                          ;88BCBC;
    DEC.W $00CC                          ;88BCBF;
    DEC.W $00CD                          ;88BCC2;
    BNE CODE_88BCD5                      ;88BCC5;
    LDA.B #$01                           ;88BCC7;
    STA.W $1F23                          ;88BCC9;
    LDA.B #$03                           ;88BCCC;
    STA.W $1F7B                          ;88BCCE;
    LDA.B #$0A                           ;88BCD1;
    STA.B $02                            ;88BCD3;

CODE_88BCD5:
    RTL                                  ;88BCD5;

CODE_88BCD6:
    JML.L CODE_828398                    ;88BCD6;

CODE_88BCDA:
    REP #$30                             ;88BCDA;
    LDX.B $37                            ;88BCDC;
    LDA.W $0005,X                        ;88BCDE;
    SEC                                  ;88BCE1;
    SBC.B $05                            ;88BCE2;
    BPL CODE_88BCEA                      ;88BCE4;
    EOR.W #$FFFF                         ;88BCE6;
    INC A                                ;88BCE9;

CODE_88BCEA:
    CMP.W #$0020                         ;88BCEA;
    BCS CODE_88BD0D                      ;88BCED;
    LDA.W $0BAD                          ;88BCEF;
    SEC                                  ;88BCF2;
    SBC.B $05                            ;88BCF3;
    BPL CODE_88BCFB                      ;88BCF5;
    EOR.W #$FFFF                         ;88BCF7;
    INC A                                ;88BCFA;

CODE_88BCFB:
    CMP.W #$0020                         ;88BCFB;
    BCS CODE_88BD0D                      ;88BCFE;
    SEP #$30                             ;88BD00;
    INC.B $3B                            ;88BD02;
    LDA.B $3B                            ;88BD04;
    CMP.B #$03                           ;88BD06;
    BCS CODE_88BD0D                      ;88BD08;
    LDA.B #$00                           ;88BD0A;
    RTS                                  ;88BD0C;

CODE_88BD0D:
    SEP #$30                             ;88BD0D;
    LDA.B #$01                           ;88BD0F;
    RTS                                  ;88BD11;

CODE_88BD12:
    REP #$30                             ;88BD12;
    LDX.B $37                            ;88BD14;
    LDA.W $0005,X                        ;88BD16;
    SEC                                  ;88BD19;
    SBC.B $05                            ;88BD1A;
    BPL CODE_88BD22                      ;88BD1C;
    EOR.W #$FFFF                         ;88BD1E;
    INC A                                ;88BD21;

CODE_88BD22:
    CMP.W #$0002                         ;88BD22;
    SEP #$30                             ;88BD25;
    RTS                                  ;88BD27;

CODE_88BD28:
    STZ.W $0002                          ;88BD28;
    STZ.W $0003                          ;88BD2B;
    LDA.B #$01                           ;88BD2E;
    BRA CODE_88BD3E                      ;88BD30;

CODE_88BD32:
    LDA.B #$1A                           ;88BD32;
    STA.W $0002                          ;88BD34;
    LDA.B #$00                           ;88BD37;
    STA.W $0003                          ;88BD39;
    LDA.B #$00                           ;88BD3C;

CODE_88BD3E:
    STA.W $0000                          ;88BD3E;
    JSL.L CODE_828358                    ;88BD41;
    BNE CODE_88BD6E                      ;88BD45;
    INC.W $0000,X                        ;88BD47;
    LDA.B #$2A                           ;88BD4A;
    STA.W $000A,X                        ;88BD4C;
    LDA.W $0000                          ;88BD4F;
    STA.W $000B,X                        ;88BD52;
    LDA.B $11                            ;88BD55;
    STA.W $0011,X                        ;88BD57;
    LDA.B $18                            ;88BD5A;
    STA.W $0018,X                        ;88BD5C;
    REP #$21                             ;88BD5F;
    LDA.B $08                            ;88BD61;
    ADC.W $0002                          ;88BD63;
    STA.W $0008,X                        ;88BD66;
    LDA.B $05                            ;88BD69;
    STA.W $0005,X                        ;88BD6B;

CODE_88BD6E:
    SEP #$30                             ;88BD6E;
    RTS                                  ;88BD70;

CODE_88BD71:
    LDA.W $0BCF                          ;88BD71;
    AND.B #$7F                           ;88BD74;
    BEQ CODE_88BD83                      ;88BD76;
    REP #$10                             ;88BD78;
    LDY.W #$019C                         ;88BD7A;
    JSL.L CODE_828011                    ;88BD7D;
    SEP #$10                             ;88BD81;

CODE_88BD83:
    RTS                                  ;88BD83;

CODE_88BD84:
    REP #$10                             ;88BD84;
    LDY.W #$019E                         ;88BD86;
    JSL.L CODE_828011                    ;88BD89;
    SEP #$10                             ;88BD8D;
    RTS                                  ;88BD8F;

CODE_88BD90:
    LDY.B #$A4                           ;88BD90;
    JSL.L CODE_828011                    ;88BD92;

CODE_88BD96:
    RTS                                  ;88BD96;

CODE_88BD97:
    LDA.W $0BCF                          ;88BD97;
    AND.B #$7F                           ;88BD9A;
    BEQ CODE_88BD96                      ;88BD9C;
    LDA.W $0B9C                          ;88BD9E;
    LSR A                                ;88BDA1;
    BCC CODE_88BDAD                      ;88BDA2;
    LDA.B $36                            ;88BDA4;
    ORA.B #$04                           ;88BDA6;
    STA.B $11                            ;88BDA8;
    JMP.W CODE_88BD84                    ;88BDAA;

CODE_88BDAD:
    LDA.B $36                            ;88BDAD;
    STA.B $11                            ;88BDAF;
    JMP.W CODE_88BD71                    ;88BDB1;

CODE_88BDB4:
    LDX.B $01                            ;88BDB4;
    JMP.W (PTR16_88BDB9,X)               ;88BDB6;

PTR16_88BDB9:
    dw CODE_88BDBF                       ;88BDB9;
    dw CODE_88BDE0                       ;88BDBB;
    dw CODE_88BF44                       ;88BDBD;

CODE_88BDBF:
    LDA.B #$02                           ;88BDBF;
    STA.B $01                            ;88BDC1;
    LDA.B #$04                           ;88BDC3;
    STA.B $12                            ;88BDC5;
    LDA.B #$08                           ;88BDC7;
    STA.B $26                            ;88BDC9;
    STA.B $27                            ;88BDCB;
    STZ.B $30                            ;88BDCD;
    LDA.B #$EB                           ;88BDCF;
    STA.B $11                            ;88BDD1;
    LDA.B $0B                            ;88BDD3;
    BEQ CODE_88BDDB                      ;88BDD5;
    LDA.B #$04                           ;88BDD7;
    STA.B $02                            ;88BDD9;

CODE_88BDDB:
    LDA.B #$A0                           ;88BDDB;
    STA.B $16                            ;88BDDD;
    RTL                                  ;88BDDF;

CODE_88BDE0:
    LDX.B $02                            ;88BDE0;
    JSR.W (PTR16_88BDF6,X)               ;88BDE2;
    LDA.W $1F42                          ;88BDE5;
    BEQ CODE_88BDEE                      ;88BDE8;
    LDA.B #$04                           ;88BDEA;
    STA.B $01                            ;88BDEC;

CODE_88BDEE:
    JSL.L CODE_849B03                    ;88BDEE;
    JML.L CODE_8280B4                    ;88BDF2;

PTR16_88BDF6:
    dw CODE_88BE06                       ;88BDF6;
    dw CODE_88BE31                       ;88BDF8;
    dw CODE_88BE4F                       ;88BDFA;
    dw CODE_88BE71                       ;88BDFC;
    dw CODE_88BE91                       ;88BDFE;
    dw CODE_88BEBB                       ;88BE00;
    dw CODE_88BEE3                       ;88BE02;
    dw CODE_88BF28                       ;88BE04;

CODE_88BE06:
    LDX.B $03                            ;88BE06;
    BNE CODE_88BE1F                      ;88BE08;
    INC.B $03                            ;88BE0A;
    LDA.B #$1E                           ;88BE0C;
    STA.B $1F                            ;88BE0E;
    LDA.B #$A7                           ;88BE10;
    STA.B $20                            ;88BE12;
    LDA.B #$D5                           ;88BE14;
    STA.B $21                            ;88BE16;
    LDA.B #$02                           ;88BE18;
    JSL.L CODE_848F07                    ;88BE1A;
    RTS                                  ;88BE1E;

CODE_88BE1F:
    DEC.B $1F                            ;88BE1F;
    BNE CODE_88BE2C                      ;88BE21;
    LDA.B #$02                           ;88BE23;
    STA.B $02                            ;88BE25;
    STZ.B $03                            ;88BE27;
    JMP.W CODE_88BD28                    ;88BE29;

CODE_88BE2C:
    JSL.L CODE_848EEA                    ;88BE2C;
    RTS                                  ;88BE30;

CODE_88BE31:
    LDX.B $03                            ;88BE31;
    BNE CODE_88BE42                      ;88BE33;
    INC.B $03                            ;88BE35;
    LDA.B #$3C                           ;88BE37;
    STA.B $1F                            ;88BE39;
    LDA.B #$03                           ;88BE3B;
    JSL.L CODE_848F07                    ;88BE3D;
    RTS                                  ;88BE41;

CODE_88BE42:
    DEC.B $1F                            ;88BE42;
    BNE CODE_88BE4A                      ;88BE44;
    LDA.B #$04                           ;88BE46;
    STA.B $01                            ;88BE48;

CODE_88BE4A:
    JSL.L CODE_848EEA                    ;88BE4A;
    RTS                                  ;88BE4E;

CODE_88BE4F:
    LDX.B $03                            ;88BE4F;
    BNE CODE_88BE62                      ;88BE51;
    INC.B $03                            ;88BE53;
    LDA.B #$1E                           ;88BE55;
    STA.B $1F                            ;88BE57;
    STA.B $30                            ;88BE59;
    LDA.B #$04                           ;88BE5B;
    JSL.L CODE_848F07                    ;88BE5D;
    RTS                                  ;88BE61;

CODE_88BE62:
    DEC.B $1F                            ;88BE62;
    BNE CODE_88BE6C                      ;88BE64;
    LDA.B #$06                           ;88BE66;
    STA.B $02                            ;88BE68;
    STZ.B $03                            ;88BE6A;

CODE_88BE6C:
    JSL.L CODE_848EEA                    ;88BE6C;
    RTS                                  ;88BE70;

CODE_88BE71:
    LDX.B $03                            ;88BE71;
    BNE CODE_88BE82                      ;88BE73;
    INC.B $03                            ;88BE75;
    LDA.B #$1E                           ;88BE77;
    STA.B $1F                            ;88BE79;
    LDA.B #$05                           ;88BE7B;
    JSL.L CODE_848F07                    ;88BE7D;
    RTS                                  ;88BE81;

CODE_88BE82:
    DEC.B $1F                            ;88BE82;
    BNE CODE_88BE8C                      ;88BE84;
    LDA.B #$08                           ;88BE86;
    STA.B $02                            ;88BE88;
    STZ.B $03                            ;88BE8A;

CODE_88BE8C:
    JSL.L CODE_848EEA                    ;88BE8C;
    RTS                                  ;88BE90;

CODE_88BE91:
    LDX.B $03                            ;88BE91;
    BNE CODE_88BEAC                      ;88BE93;
    INC.B $03                            ;88BE95;
    LDA.B #$1E                           ;88BE97;
    STA.B $1F                            ;88BE99;
    STZ.B $30                            ;88BE9B;
    LDA.B #$AB                           ;88BE9D;
    STA.B $20                            ;88BE9F;
    LDA.B #$D5                           ;88BEA1;
    STA.B $21                            ;88BEA3;
    LDA.B #$06                           ;88BEA5;
    JSL.L CODE_848F07                    ;88BEA7;
    RTS                                  ;88BEAB;

CODE_88BEAC:
    DEC.B $1F                            ;88BEAC;
    BNE CODE_88BEB6                      ;88BEAE;
    LDA.B #$0A                           ;88BEB0;
    STA.B $02                            ;88BEB2;
    STZ.B $03                            ;88BEB4;

CODE_88BEB6:
    JSL.L CODE_848EEA                    ;88BEB6;
    RTS                                  ;88BEBA;

CODE_88BEBB:
    LDX.B $03                            ;88BEBB;
    BNE CODE_88BED4                      ;88BEBD;
    INC.B $03                            ;88BEBF;
    LDA.B #$1E                           ;88BEC1;
    STA.B $1F                            ;88BEC3;
    LDA.B #$AF                           ;88BEC5;
    STA.B $20                            ;88BEC7;
    LDA.B #$D5                           ;88BEC9;
    STA.B $21                            ;88BECB;
    LDA.B #$07                           ;88BECD;
    JSL.L CODE_848F07                    ;88BECF;
    RTS                                  ;88BED3;

CODE_88BED4:
    DEC.B $1F                            ;88BED4;
    BNE CODE_88BEDE                      ;88BED6;
    LDA.B #$0C                           ;88BED8;
    STA.B $02                            ;88BEDA;
    STZ.B $03                            ;88BEDC;

CODE_88BEDE:
    JSL.L CODE_848EEA                    ;88BEDE;
    RTS                                  ;88BEE2;

CODE_88BEE3:
    LDX.B $03                            ;88BEE3;
    BNE CODE_88BF09                      ;88BEE5;
    INC.B $03                            ;88BEE7;
    REP #$20                             ;88BEE9;
    LDA.W #$FA00                         ;88BEEB;
    STA.B $1A                            ;88BEEE;
    STZ.B $1C                            ;88BEF0;
    STZ.B $1E                            ;88BEF2;
    LDA.B $08                            ;88BEF4;
    SEC                                  ;88BEF6;
    SBC.W $0BB0                          ;88BEF7;
    BMI CODE_88BF00                      ;88BEFA;
    LSR A                                ;88BEFC;
    LSR A                                ;88BEFD;
    STA.B $1E                            ;88BEFE;

CODE_88BF00:
    SEP #$20                             ;88BF00;
    LDA.B #$44                           ;88BF02;
    JSL.L CODE_8088A2                    ;88BF04;
    RTS                                  ;88BF08;

CODE_88BF09:
    REP #$20                             ;88BF09;
    LDA.W #$1100                         ;88BF0B;
    CMP.B $05                            ;88BF0E;
    BCC CODE_88BF1D                      ;88BF10;
    STA.B $05                            ;88BF12;
    SEP #$20                             ;88BF14;
    LDA.B #$0E                           ;88BF16;
    STA.B $02                            ;88BF18;
    STZ.B $03                            ;88BF1A;
    RTS                                  ;88BF1C;

CODE_88BF1D:
    SEP #$20                             ;88BF1D;
    JSL.L CODE_8281B2                    ;88BF1F;
    JSL.L CODE_848EEA                    ;88BF23;
    RTS                                  ;88BF27;

CODE_88BF28:
    LDX.B $03                            ;88BF28;
    BNE CODE_88BF37                      ;88BF2A;
    INC.B $03                            ;88BF2C;
    STZ.B $30                            ;88BF2E;
    LDA.B #$05                           ;88BF30;
    JSL.L CODE_848F07                    ;88BF32;
    RTS                                  ;88BF36;

CODE_88BF37:
    LDA.B $0F                            ;88BF37;
    BPL CODE_88BF3F                      ;88BF39;
    LDA.B #$04                           ;88BF3B;
    STA.B $01                            ;88BF3D;

CODE_88BF3F:
    JSL.L CODE_848EEA                    ;88BF3F;
    RTS                                  ;88BF43;

CODE_88BF44:
    JML.L CODE_8283A3                    ;88BF44;

CODE_88BF48:
    LDX.B $01                            ;88BF48;
    JMP.W (PTR16_88BF4D,X)               ;88BF4A;

PTR16_88BF4D:
    dw CODE_88BF53                       ;88BF4D;
    dw CODE_88BFE7                       ;88BF4F;
    dw CODE_88C28F                       ;88BF51;

CODE_88BF53:
    LDX.B $02                            ;88BF53;
    JMP.W (PTR16_88BF58,X)               ;88BF55;

PTR16_88BF58:
    dw CODE_88BF5E                       ;88BF58;
    dw CODE_88BFB4                       ;88BF5A;
    dw CODE_88BFCC                       ;88BF5C;

CODE_88BF5E:
    LDA.B #$02                           ;88BF5E;
    STA.B $02                            ;88BF60;
    STZ.B $28                            ;88BF62;
    LDA.B #$01                           ;88BF64;
    STA.B $0E                            ;88BF66;
    STA.B $2F                            ;88BF68;
    REP #$20                             ;88BF6A;
    LDA.W #$11C0                         ;88BF6C;
    STA.B $05                            ;88BF6F;
    LDA.W #$01E8                         ;88BF71;
    STA.B $08                            ;88BF74;
    LDA.W #$02D2                         ;88BF76;
    STA.B $12                            ;88BF79;
    LDA.W #$0098                         ;88BF7B;
    STA.B $14                            ;88BF7E;
    LDA.W #$D643                         ;88BF80;
    STA.B $20                            ;88BF83;
    LDA.W #$02D2                         ;88BF85;
    STA.W $1E8D                          ;88BF88;
    LDA.W #$0098                         ;88BF8B;
    STA.W $1E90                          ;88BF8E;
    LDA.W #$1100                         ;88BF91;
    STA.W $1E5E                          ;88BF94;
    STA.W $1E60                          ;88BF97;
    LDA.W #$0200                         ;88BF9A;
    STA.W $1E68                          ;88BF9D;
    STA.W $1E6E                          ;88BFA0;
    SEP #$20                             ;88BFA3;
    STZ.B $34                            ;88BFA5;
    LDA.B #$02                           ;88BFA7;
    TRB.W $00C0                          ;88BFA9;
    JSL.L CODE_849FE6                    ;88BFAC;
    JML.L CODE_80E02E                    ;88BFB0;

CODE_88BFB4:
    LDA.W $1F27                          ;88BFB4;
    BNE CODE_88BFCB                      ;88BFB7;
    LDA.B #$04                           ;88BFB9;
    STA.B $02                            ;88BFBB;
    LDA.B #$D2                           ;88BFBD;
    STA.W $1E8D                          ;88BFBF;
    LDA.B #$03                           ;88BFC2;
    STA.W $1E8E                          ;88BFC4;
    JSL.L CODE_80E02E                    ;88BFC7;

CODE_88BFCB:
    RTL                                  ;88BFCB;

CODE_88BFCC:
    LDA.W $1F27                          ;88BFCC;
    BNE CODE_88BFCB                      ;88BFCF;
    LDA.B #$02                           ;88BFD1;
    STA.B $01                            ;88BFD3;
    STZ.B $02                            ;88BFD5;
    LDA.B #$02                           ;88BFD7;
    TSB.W $00C0                          ;88BFD9;
    JSR.W CODE_88C310                    ;88BFDC;
    JSL.L CODE_80E01E                    ;88BFDF;
    INC.W $1E88                          ;88BFE3;

CODE_88BFE6:
    RTL                                  ;88BFE6;

CODE_88BFE7:
    JSR.W CODE_88C3A6                    ;88BFE7;
    BNE CODE_88BFF3                      ;88BFEA;
    LDA.B #$04                           ;88BFEC;
    STA.B $01                            ;88BFEE;
    STZ.B $02                            ;88BFF0;
    RTL                                  ;88BFF2;

CODE_88BFF3:
    STZ.B $2C                            ;88BFF3;
    LDX.B $02                            ;88BFF5;
    JSR.W (PTR16_88C01F,X)               ;88BFF7;
    LDA.B $34                            ;88BFFA;
    BMI CODE_88C002                      ;88BFFC;
    JSL.L CODE_849B43                    ;88BFFE;

CODE_88C002:
    JSL.L CODE_82D7D0                    ;88C002;
    JSR.W CODE_88C38E                    ;88C006;
    JSR.W CODE_88C333                    ;88C009;
    JSR.W CODE_88C2FB                    ;88C00C;
    LDA.B $2C                            ;88C00F;
    BEQ CODE_88C017                      ;88C011;
    JSL.L CODE_82C70E                    ;88C013;

CODE_88C017:
    BIT.B $34                            ;88C017;
    BVS CODE_88BFE6                      ;88C019;
    JML.L CODE_8491BE                    ;88C01B;

PTR16_88C01F:
    dw CODE_88C02D                       ;88C01F;
    dw CODE_88C057                       ;88C021;
    dw CODE_88C0D1                       ;88C023;
    dw CODE_88C11B                       ;88C025;
    dw CODE_88C131                       ;88C027;
    dw CODE_88C1CE                       ;88C029;
    dw CODE_88C218                       ;88C02B;

CODE_88C02D:
    LDX.B $03                            ;88C02D;
    BNE CODE_88C04C                      ;88C02F;
    REP #$20                             ;88C031;
    LDA.W $1E5E                          ;88C033;
    CMP.W $1E56                          ;88C036;
    BNE CODE_88C045                      ;88C039;
    SEP #$20                             ;88C03B;
    INC.B $03                            ;88C03D;
    LDA.B #$23                           ;88C03F;
    JSL.L CODE_8087A2                    ;88C041;

CODE_88C045:
    SEP #$20                             ;88C045;
    LDA.B #$28                           ;88C047;
    STA.B $33                            ;88C049;
    RTS                                  ;88C04B;

CODE_88C04C:
    DEC.B $33                            ;88C04C;
    BNE CODE_88C056                      ;88C04E;
    LDA.B #$02                           ;88C050;
    STA.B $02                            ;88C052;
    STZ.B $03                            ;88C054;

CODE_88C056:
    RTS                                  ;88C056;

CODE_88C057:
    LDX.B $03                            ;88C057;
    JMP.W (PTR16_88C05C,X)               ;88C059;

PTR16_88C05C:
    dw CODE_88C062                       ;88C05C;
    dw CODE_88C07C                       ;88C05E;
    dw CODE_88C0C6                       ;88C060;

CODE_88C062:
    LDA.B #$02                           ;88C062;
    STA.B $03                            ;88C064;
    REP #$20                             ;88C066;
    STZ.B $1A                            ;88C068;
    STZ.B $1C                            ;88C06A;
    LDA.W #$0040                         ;88C06C;
    STA.B $1E                            ;88C06F;
    SEP #$20                             ;88C071;
    LDA.B #$40                           ;88C073;
    TSB.B $34                            ;88C075;
    LDA.B #$1E                           ;88C077;
    STA.B $33                            ;88C079;
    RTS                                  ;88C07B;

CODE_88C07C:
    LDA.B $33                            ;88C07C;
    BEQ CODE_88C088                      ;88C07E;
    DEC.B $33                            ;88C080;
    BNE CODE_88C088                      ;88C082;
    LDA.B #$40                           ;88C084;
    TRB.B $34                            ;88C086;

CODE_88C088:
    LDA.B $2B                            ;88C088;
    BIT.B #$04                           ;88C08A;
    BEQ CODE_88C0B4                      ;88C08C;
    LDA.B #$1E                           ;88C08E;
    JSL.L CODE_84A333                    ;88C090;
    LDA.B #$20                           ;88C094;
    JSL.L CODE_8088A2                    ;88C096;
    REP #$20                             ;88C09A;
    LDA.B $1C                            ;88C09C;
    EOR.W #$FFFF                         ;88C09E;
    INC A                                ;88C0A1;
    LSR A                                ;88C0A2;
    STA.B $1C                            ;88C0A3;
    CMP.W #$0100                         ;88C0A5;
    BCS CODE_88C0B2                      ;88C0A8;
    LDX.B #$04                           ;88C0AA;
    STX.B $03                            ;88C0AC;
    LDX.B #$1E                           ;88C0AE;
    STX.B $33                            ;88C0B0;

CODE_88C0B2:
    SEP #$20                             ;88C0B2;

CODE_88C0B4:
    JSL.L CODE_828174                    ;88C0B4;
    REP #$20                             ;88C0B8;
    LDA.W #$FA00                         ;88C0BA;
    CMP.B $1C                            ;88C0BD;
    BMI CODE_88C0C3                      ;88C0BF;
    STA.B $1C                            ;88C0C1;

CODE_88C0C3:
    SEP #$20                             ;88C0C3;
    RTS                                  ;88C0C5;

CODE_88C0C6:
    DEC.B $33                            ;88C0C6;
    BNE CODE_88C0D0                      ;88C0C8;
    LDA.B #$04                           ;88C0CA;
    STA.B $02                            ;88C0CC;
    STZ.B $03                            ;88C0CE;

CODE_88C0D0:
    RTS                                  ;88C0D0;

CODE_88C0D1:
    LDX.B $03                            ;88C0D1;
    BNE CODE_88C0EA                      ;88C0D3;
    INC.B $03                            ;88C0D5;
    STZ.B $27                            ;88C0D7;
    REP #$20                             ;88C0D9;
    TDC                                  ;88C0DB;
    STA.W $1F0E                          ;88C0DC;
    SEP #$20                             ;88C0DF;
    LDA.B #$02                           ;88C0E1;
    STA.B $33                            ;88C0E3;
    LDA.B #$80                           ;88C0E5;
    TSB.B $34                            ;88C0E7;
    RTS                                  ;88C0E9;

CODE_88C0EA:
    DEC.B $33                            ;88C0EA;
    BNE CODE_88C11A                      ;88C0EC;
    LDA.B #$02                           ;88C0EE;
    STA.B $33                            ;88C0F0;
    LDA.B #$0C                           ;88C0F2;
    JSL.L CODE_8088CD                    ;88C0F4;
    LDA.B $27                            ;88C0F8;
    AND.B #$7F                           ;88C0FA;
    CMP.B #$20                           ;88C0FC;
    BCC CODE_88C115                      ;88C0FE;
    LDA.B #$06                           ;88C100;
    STA.B $02                            ;88C102;
    STZ.B $03                            ;88C104;
    LDA.B #$80                           ;88C106;
    TRB.B $34                            ;88C108;
    LDA.B #$24                           ;88C10A;
    JSL.L CODE_8087A2                    ;88C10C;
    JSL.L CODE_849FFE                    ;88C110;
    RTS                                  ;88C114;

CODE_88C115:
    INC A                                ;88C115;
    ORA.B #$80                           ;88C116;
    STA.B $27                            ;88C118;

CODE_88C11A:
    RTS                                  ;88C11A;

CODE_88C11B:
    LDX.B $03                            ;88C11B;
    BNE CODE_88C126                      ;88C11D;
    INC.B $03                            ;88C11F;
    LDA.B #$78                           ;88C121;
    STA.B $33                            ;88C123;
    RTS                                  ;88C125;

CODE_88C126:
    DEC.B $33                            ;88C126;
    BNE CODE_88C130                      ;88C128;
    LDA.B #$08                           ;88C12A;
    STA.B $02                            ;88C12C;
    STZ.B $03                            ;88C12E;

CODE_88C130:
    RTS                                  ;88C130;

CODE_88C131:
    LDX.B $03                            ;88C131;
    JMP.W (PTR16_88C136,X)               ;88C133;

PTR16_88C136:
    dw CODE_88C13C                       ;88C136;
    dw CODE_88C177                       ;88C138;
    dw CODE_88C1AC                       ;88C13A;

CODE_88C13C:
    LDA.B #$02                           ;88C13C;
    STA.B $03                            ;88C13E;
    REP #$10                             ;88C140;
    LDX.W #$0140                         ;88C142;
    JSL.L CODE_849086                    ;88C145;
    AND.B #$0F                           ;88C149;
    CMP.B #$04                           ;88C14B;
    BCS CODE_88C152                      ;88C14D;
    LDX.W #$0200                         ;88C14F;

CODE_88C152:
    REP #$20                             ;88C152;
    LDY.B $35                            ;88C154;
    LDA.W $0027,Y                        ;88C156;
    AND.W #$007F                         ;88C159;
    CMP.W #$0010                         ;88C15C;
    BCS CODE_88C166                      ;88C15F;
    TXA                                  ;88C161;
    ADC.W #$0200                         ;88C162;
    TAX                                  ;88C165;

CODE_88C166:
    TXA                                  ;88C166;
    LDX.B $05                            ;88C167;
    CPX.W #$1180                         ;88C169;
    BCC CODE_88C172                      ;88C16C;
    EOR.W #$FFFF                         ;88C16E;
    INC A                                ;88C171;

CODE_88C172:
    STA.B $1A                            ;88C172;
    SEP #$30                             ;88C174;
    RTS                                  ;88C176;

CODE_88C177:
    JSR.W CODE_88C360                    ;88C177;
    BNE CODE_88C183                      ;88C17A;
    LDA.B #$0A                           ;88C17C;
    STA.B $02                            ;88C17E;
    STZ.B $03                            ;88C180;
    RTS                                  ;88C182;

CODE_88C183:
    JSR.W CODE_88C36C                    ;88C183;
    BNE CODE_88C18F                      ;88C186;
    LDA.B #$0C                           ;88C188;
    STA.B $02                            ;88C18A;
    STZ.B $03                            ;88C18C;
    RTS                                  ;88C18E;

CODE_88C18F:
    LDA.B $2B                            ;88C18F;
    BIT.B #$03                           ;88C191;
    BEQ CODE_88C1A7                      ;88C193;
    LDA.B #$04                           ;88C195;
    STA.B $03                            ;88C197;
    LDA.B #$48                           ;88C199;
    JSL.L CODE_8088A2                    ;88C19B;
    LDA.B #$28                           ;88C19F;
    STA.B $33                            ;88C1A1;
    JSL.L CODE_84A311                    ;88C1A3;

CODE_88C1A7:
    JSL.L CODE_82823E                    ;88C1A7;
    RTS                                  ;88C1AB;

CODE_88C1AC:
    DEC.B $33                            ;88C1AC;
    BNE CODE_88C1B2                      ;88C1AE;
    STZ.B $03                            ;88C1B0;

CODE_88C1B2:
    LDA.W $0C32                          ;88C1B2;
    BNE CODE_88C1CD                      ;88C1B5;
    LDA.W $0C2F                          ;88C1B7;
    BMI CODE_88C1CD                      ;88C1BA;
    LDA.W $0BD3                          ;88C1BC;
    BIT.B #$03                           ;88C1BF;
    BEQ CODE_88C1CD                      ;88C1C1;
    BIT.B #$04                           ;88C1C3;
    BNE CODE_88C1CD                      ;88C1C5;
    LDA.B #$1E                           ;88C1C7;
    JSL.L CODE_84A008                    ;88C1C9;

CODE_88C1CD:
    RTS                                  ;88C1CD;

CODE_88C1CE:
    LDX.B $03                            ;88C1CE;
    JMP.W (PTR16_88C1D3,X)               ;88C1D0;

PTR16_88C1D3:
    dw CODE_88C1D9                       ;88C1D3;
    dw CODE_88C1F3                       ;88C1D5;
    dw CODE_88C201                       ;88C1D7;

CODE_88C1D9:
    LDA.B #$02                           ;88C1D9;
    STA.B $03                            ;88C1DB;
    REP #$30                             ;88C1DD;
    LDX.B $35                            ;88C1DF;
    LDY.W #$0100                         ;88C1E1;
    LDA.W $0005,X                        ;88C1E4;
    CMP.B $05                            ;88C1E7;
    BCS CODE_88C1EE                      ;88C1E9;
    LDY.W #$FF00                         ;88C1EB;

CODE_88C1EE:
    STY.B $1A                            ;88C1EE;
    SEP #$30                             ;88C1F0;
    RTS                                  ;88C1F2;

CODE_88C1F3:
    JSR.W CODE_88C378                    ;88C1F3;
    BCS CODE_88C1FC                      ;88C1F6;
    LDA.B #$04                           ;88C1F8;
    STA.B $03                            ;88C1FA;

CODE_88C1FC:
    JSL.L CODE_82823E                    ;88C1FC;
    RTS                                  ;88C200;

CODE_88C201:
    REP #$10                             ;88C201;
    LDX.B $35                            ;88C203;
    LDA.W $0005,X                        ;88C205;
    STA.B $05                            ;88C208;
    SEP #$10                             ;88C20A;
    LDA.W $1F3F                          ;88C20C;
    BEQ CODE_88C217                      ;88C20F;
    LDA.B #$08                           ;88C211;
    STA.B $02                            ;88C213;
    STZ.B $03                            ;88C215;

CODE_88C217:
    RTS                                  ;88C217;

CODE_88C218:
    LDX.B $03                            ;88C218;
    JMP.W (PTR16_88C21D,X)               ;88C21A;

PTR16_88C21D:
    dw CODE_88C227                       ;88C21D;
    dw CODE_88C23F                       ;88C21F;
    dw CODE_88C26A                       ;88C221;
    dw CODE_88C27A                       ;88C223;
    dw CODE_88C283                       ;88C225;

CODE_88C227:
    LDA.B #$02                           ;88C227;
    STA.B $03                            ;88C229;
    REP #$30                             ;88C22B;
    LDX.W #$0180                         ;88C22D;
    LDA.W #$11C0                         ;88C230;
    CMP.B $05                            ;88C233;
    BCS CODE_88C23A                      ;88C235;
    LDX.W #$FE80                         ;88C237;

CODE_88C23A:
    STX.B $1A                            ;88C23A;
    SEP #$30                             ;88C23C;
    RTS                                  ;88C23E;

CODE_88C23F:
    REP #$20                             ;88C23F;
    LDA.B $05                            ;88C241;
    SEC                                  ;88C243;
    SBC.W #$11C0                         ;88C244;
    BPL CODE_88C24D                      ;88C247;
    EOR.W #$FFFF                         ;88C249;
    INC A                                ;88C24C;

CODE_88C24D:
    CMP.W #$0002                         ;88C24D;
    BCS CODE_88C263                      ;88C250;
    LDA.W #$11C0                         ;88C252;
    STA.B $05                            ;88C255;
    SEP #$20                             ;88C257;
    LDA.B #$04                           ;88C259;
    STA.B $03                            ;88C25B;
    LDA.B #$40                           ;88C25D;
    TSB.W $1F40                          ;88C25F;
    RTS                                  ;88C262;

CODE_88C263:
    SEP #$20                             ;88C263;
    JSL.L CODE_82823E                    ;88C265;
    RTS                                  ;88C269;

CODE_88C26A:
    LDA.W $1F40                          ;88C26A;
    CMP.B #$C0                           ;88C26D;
    BNE CODE_88C279                      ;88C26F;
    LDA.B #$06                           ;88C271;
    STA.B $03                            ;88C273;
    LDA.B #$78                           ;88C275;
    STA.B $33                            ;88C277;

CODE_88C279:
    RTS                                  ;88C279;

CODE_88C27A:
    DEC.B $33                            ;88C27A;
    BNE CODE_88C282                      ;88C27C;
    LDA.B #$08                           ;88C27E;
    STA.B $03                            ;88C280;

CODE_88C282:
    RTS                                  ;88C282;

CODE_88C283:
    LDA.W $1F41                          ;88C283;
    BEQ CODE_88C28E                      ;88C286;
    LDA.B #$08                           ;88C288;
    STA.B $02                            ;88C28A;
    STZ.B $03                            ;88C28C;

CODE_88C28E:
    RTS                                  ;88C28E;

CODE_88C28F:
    LDX.B $02                            ;88C28F;
    JMP.W (PTR16_88C294,X)               ;88C291;

PTR16_88C294:
    dw CODE_88C29C                       ;88C294;
    dw CODE_88C2B2                       ;88C296;
    dw CODE_88C2EC                       ;88C298;
    dw CODE_88C2A5                       ;88C29A;

CODE_88C29C:
    LDA.B #$06                           ;88C29C;
    STA.B $02                            ;88C29E;
    LDA.B #$30                           ;88C2A0;
    STA.B $33                            ;88C2A2;
    RTL                                  ;88C2A4;

CODE_88C2A5:
    DEC.B $33                            ;88C2A5;
    BNE CODE_88C2B1                      ;88C2A7;
    LDA.B #$02                           ;88C2A9;
    STA.B $02                            ;88C2AB;
    LDA.B #$FF                           ;88C2AD;
    STA.B $33                            ;88C2AF;

CODE_88C2B1:
    RTL                                  ;88C2B1;

CODE_88C2B2:
    LDA.W $0B9C                          ;88C2B2;
    AND.B #$1F                           ;88C2B5;
    BNE CODE_88C2BF                      ;88C2B7;
    LDA.B #$20                           ;88C2B9;
    JSL.L CODE_84A333                    ;88C2BB;

CODE_88C2BF:
    DEC.B $33                            ;88C2BF;
    BNE CODE_88C2C7                      ;88C2C1;
    LDA.B #$04                           ;88C2C3;
    STA.B $02                            ;88C2C5;

CODE_88C2C7:
    REP #$20                             ;88C2C7;
    LDA.W #$FFE0                         ;88C2C9;
    STA.W $0000                          ;88C2CC;
    LDA.W #$FFF0                         ;88C2CF;
    STA.W $0002                          ;88C2D2;
    LDA.W #$003F                         ;88C2D5;
    STA.W $0004                          ;88C2D8;
    LDA.W #$001F                         ;88C2DB;
    STA.W $0006                          ;88C2DE;
    SEP #$20                             ;88C2E1;
    LDA.B #$07                           ;88C2E3;
    STA.W $0008                          ;88C2E5;
    JML.L CODE_84A4C6                    ;88C2E8;

CODE_88C2EC:
    LDA.W $1F3F                          ;88C2EC;
    BEQ CODE_88C2FA                      ;88C2EF;
    LDA.B #$15                           ;88C2F1;
    STA.W $00C0                          ;88C2F3;
    JML.L CODE_828398                    ;88C2F6;

CODE_88C2FA:
    RTL                                  ;88C2FA;

CODE_88C2FB:
    REP #$20                             ;88C2FB;
    LDA.W $1E8D                          ;88C2FD;
    STA.W $1EAA                          ;88C300;
    LDA.W $1E90                          ;88C303;
    STA.W $1EAC                          ;88C306;
    TDC                                  ;88C309;
    STA.W $1F2E                          ;88C30A;
    SEP #$20                             ;88C30D;
    RTS                                  ;88C30F;

CODE_88C310:
    JSL.L CODE_828321                    ;88C310;
    BNE CODE_88C330                      ;88C314;
    INC.W $0000,X                        ;88C316;
    LDA.B #$61                           ;88C319;
    STA.W $000A,X                        ;88C31B;
    STX.B $35                            ;88C31E;
    REP #$20                             ;88C320;
    TDC                                  ;88C322;
    STA.W $0037,X                        ;88C323;
    LDA.B $05                            ;88C326;
    STA.W $0005,X                        ;88C328;
    LDA.B $08                            ;88C32B;
    STA.W $0008,X                        ;88C32D;

CODE_88C330:
    SEP #$30                             ;88C330;
    RTS                                  ;88C332;

CODE_88C333:
    REP #$10                             ;88C333;
    LDX.B $20                            ;88C335;
    PHX                                  ;88C337;
    LDX.W #$D64D                         ;88C338;
    STX.B $20                            ;88C33B;
    LDX.W #$0BA8                         ;88C33D;
    JSL.L CODE_849C0E                    ;88C340;
    BCC CODE_88C35A                      ;88C344;
    LDA.B #$80                           ;88C346;
    TSB.W $0BD4                          ;88C348;
    LDA.B #$40                           ;88C34B;
    TSB.W $0BD4                          ;88C34D;
    LDY.W $0000                          ;88C350;
    BPL CODE_88C35A                      ;88C353;
    LDA.B #$40                           ;88C355;
    TRB.W $0BD4                          ;88C357;

CODE_88C35A:
    PLX                                  ;88C35A;
    STX.B $20                            ;88C35B;
    SEP #$10                             ;88C35D;
    RTS                                  ;88C35F;

CODE_88C360:
    REP #$10                             ;88C360;
    LDX.B $35                            ;88C362;
    LDA.W $0002,X                        ;88C364;
    CMP.B #$0E                           ;88C367;
    SEP #$10                             ;88C369;
    RTS                                  ;88C36B;

CODE_88C36C:
    REP #$10                             ;88C36C;
    LDX.B $35                            ;88C36E;
    LDA.W $0002,X                        ;88C370;
    CMP.B #$0C                           ;88C373;
    SEP #$10                             ;88C375;
    RTS                                  ;88C377;

CODE_88C378:
    REP #$30                             ;88C378;
    LDX.B $35                            ;88C37A;
    LDA.W $0005,X                        ;88C37C;
    SEC                                  ;88C37F;
    SBC.B $05                            ;88C380;
    BPL CODE_88C388                      ;88C382;
    EOR.W #$FFFF                         ;88C384;
    INC A                                ;88C387;

CODE_88C388:
    CMP.W #$0002                         ;88C388;
    SEP #$30                             ;88C38B;
    RTS                                  ;88C38D;

CODE_88C38E:
    LDA.W $0C32                          ;88C38E;
    BNE CODE_88C3A5                      ;88C391;
    LDA.W $0C06                          ;88C393;
    AND.B #$03                           ;88C396;
    CMP.B #$03                           ;88C398;
    BNE CODE_88C3A5                      ;88C39A;
    LDA.B #$06                           ;88C39C;
    STA.W $0BCE                          ;88C39E;
    JSL.L CODE_849F2A                    ;88C3A1;

CODE_88C3A5:
    RTS                                  ;88C3A5;

CODE_88C3A6:
    REP #$10                             ;88C3A6;
    LDX.B $35                            ;88C3A8;
    LDA.W $0002,X                        ;88C3AA;
    CMP.B #$10                           ;88C3AD;
    SEP #$10                             ;88C3AF;
    RTS                                  ;88C3B1;

CODE_88C3B2:
    LDX.B $01                            ;88C3B2;
    JMP.W (PTR16_88C3B7,X)               ;88C3B4;

PTR16_88C3B7:
    dw CODE_88C3CB                       ;88C3B7;
    dw CODE_88C3F7                       ;88C3B9;
    dw CODE_88C48B                       ;88C3BB;
    dw CODE_88C570                       ;88C3BD;
    dw CODE_88C58C                       ;88C3BF;
    dw CODE_88C6C0                       ;88C3C1;
    dw CODE_88CA36                       ;88C3C3;
    dw CODE_88CAD1                       ;88C3C5;
    dw CODE_88CBC6                       ;88C3C7;
    dw CODE_88CD30                       ;88C3C9;

CODE_88C3CB:
    REP #$20                             ;88C3CB;
    LDA.W $0BB0                          ;88C3CD;
    CMP.W #$00C0                         ;88C3D0;
    SEP #$20                             ;88C3D3;
    BCS CODE_88C3F4                      ;88C3D5;
    LDA.B #$02                           ;88C3D7;
    STA.B $01                            ;88C3D9;
    JSL.L CODE_849F85                    ;88C3DB;
    REP #$20                             ;88C3DF;
    STZ.W $1E6E                          ;88C3E1;
    STZ.W $1E68                          ;88C3E4;
    SEP #$20                             ;88C3E7;
    LDA.B #$F6                           ;88C3E9;
    LDY.B #$03                           ;88C3EB;
    JSL.L CODE_80887F                    ;88C3ED;
    INC.W $1F49                          ;88C3F1;

CODE_88C3F4:
    STZ.B $27                            ;88C3F4;
    RTL                                  ;88C3F6;

CODE_88C3F7:
    LDX.B $02                            ;88C3F7;
    JMP.W (PTR16_88C3FC,X)               ;88C3F9;

PTR16_88C3FC:
    dw CODE_88C404                       ;88C3FC;
    dw CODE_88C419                       ;88C3FE;
    dw CODE_88C42C                       ;88C400;
    dw CODE_88C447                       ;88C402;

CODE_88C404:
    REP #$20                             ;88C404;
    LDA.W $1E50                          ;88C406;
    SEP #$20                             ;88C409;
    BNE CODE_88C418                      ;88C40B;
    LDA.B #$1E                           ;88C40D;
    STA.B $33                            ;88C40F;
    LDA.B #$02                           ;88C411;
    STA.B $02                            ;88C413;
    STZ.W $1F49                          ;88C415;

CODE_88C418:
    RTL                                  ;88C418;

CODE_88C419:
    DEC.B $33                            ;88C419;
    BNE CODE_88C42B                      ;88C41B;
    LDA.B #$00                           ;88C41D;
    JSL.L CODE_848000                    ;88C41F;
    LDA.B #$10                           ;88C423;
    STA.B $33                            ;88C425;
    LDA.B #$04                           ;88C427;
    STA.B $02                            ;88C429;

CODE_88C42B:
    RTL                                  ;88C42B;

CODE_88C42C:
    DEC.B $33                            ;88C42C;
    BNE CODE_88C446                      ;88C42E;
    LDA.B #$01                           ;88C430;
    JSL.L CODE_848000                    ;88C432;
    LDA.B #$3C                           ;88C436;
    STA.B $33                            ;88C438;
    LDA.B #$06                           ;88C43A;
    STA.B $02                            ;88C43C;
    JSL.L CODE_849FAD                    ;88C43E;
    JSL.L CODE_84A041                    ;88C442;

CODE_88C446:
    RTL                                  ;88C446;

CODE_88C447:
    DEC.B $33                            ;88C447;
    BNE CODE_88C487                      ;88C449;
    JSL.L CODE_8282D3                    ;88C44B;
    BNE CODE_88C488                      ;88C44F;
    INC.W $0000,X                        ;88C451;
    LDA.B #$3E                           ;88C454;
    STA.W $000A,X                        ;88C456;
    STX.B $0C                            ;88C459;
    REP #$20                             ;88C45B;
    TDC                                  ;88C45D;
    STA.W $000C,X                        ;88C45E;
    LDA.W #$FFE0                         ;88C461;
    STA.B $08                            ;88C464;
    LDA.W #$00D0                         ;88C466;
    STA.B $05                            ;88C469;
    SEP #$30                             ;88C46B;
    JSL.L CODE_82827D                    ;88C46D;
    LDA.B #$04                           ;88C471;
    STA.B $12                            ;88C473;
    LDA.B #$00                           ;88C475;
    JSL.L CODE_848F07                    ;88C477;
    LDA.B #$04                           ;88C47B;
    STA.B $01                            ;88C47D;
    STZ.B $02                            ;88C47F;
    LDA.B #$2E                           ;88C481;
    JSL.L CODE_8087A2                    ;88C483;

CODE_88C487:
    RTL                                  ;88C487;

CODE_88C488:
    INC.B $33                            ;88C488;
    RTL                                  ;88C48A;

CODE_88C48B:
    LDX.B $02                            ;88C48B;
    JMP.W (PTR16_88C490,X)               ;88C48D;

PTR16_88C490:
    dw CODE_88C498                       ;88C490;
    dw CODE_88C4CF                       ;88C492;
    dw CODE_88C53B                       ;88C494;
    dw CODE_88C555                       ;88C496;

CODE_88C498:
    JSL.L CODE_828321                    ;88C498;
    BNE CODE_88C4CE                      ;88C49C;
    INC.W $0000,X                        ;88C49E;
    LDA.B #$26                           ;88C4A1;
    STA.W $000A,X                        ;88C4A3;
    REP #$20                             ;88C4A6;
    LDA.W #$00C0                         ;88C4A8;
    STA.W $0005,X                        ;88C4AB;
    LDA.W #$FFFF                         ;88C4AE;
    STA.W $0008,X                        ;88C4B1;
    STX.B $20                            ;88C4B4;
    LDA.W #$FFEE                         ;88C4B6;
    STA.B $08                            ;88C4B9;
    STA.B $35                            ;88C4BB;
    LDA.W #$F000                         ;88C4BD;
    STA.B $1C                            ;88C4C0;
    SEP #$20                             ;88C4C2;
    LDA.B #$0C                           ;88C4C4;
    STA.B $37                            ;88C4C6;
    STA.B $38                            ;88C4C8;
    LDA.B #$02                           ;88C4CA;
    STA.B $02                            ;88C4CC;

CODE_88C4CE:
    RTL                                  ;88C4CE;

CODE_88C4CF:
    LDA.B $38                            ;88C4CF;
    BNE CODE_88C522                      ;88C4D1;
    LDA.B $37                            ;88C4D3;
    DEC A                                ;88C4D5;
    BEQ CODE_88C4FD                      ;88C4D6;
    STA.B $38                            ;88C4D8;
    STA.B $37                            ;88C4DA;
    REP #$30                             ;88C4DC;
    AND.W #$00FF                         ;88C4DE;
    ASL A                                ;88C4E1;
    ASL A                                ;88C4E2;
    ASL A                                ;88C4E3;
    ASL A                                ;88C4E4;
    EOR.W #$FFFF                         ;88C4E5;
    INC A                                ;88C4E8;
    CLC                                  ;88C4E9;
    ADC.B $08                            ;88C4EA;
    STA.B $08                            ;88C4EC;
    LDX.B $20                            ;88C4EE;
    CLC                                  ;88C4F0;
    ADC.W #$0011                         ;88C4F1;
    STA.W $0008,X                        ;88C4F4;
    SEP #$30                             ;88C4F7;
    JML.L CODE_8280B4                    ;88C4F9;

CODE_88C4FD:
    LDA.B #$04                           ;88C4FD;
    STA.B $02                            ;88C4FF;
    LDA.B #$80                           ;88C501;
    STA.W $0000                          ;88C503;
    LDA.B #$50                           ;88C506;
    STA.W $0002                          ;88C508;
    LDA.B #$58                           ;88C50B;
    STA.W $0004                          ;88C50D;
    LDA.B #$30                           ;88C510;
    STA.W $0006                          ;88C512;
    LDA.B #$12                           ;88C515;
    STA.W $0008                          ;88C517;
    JSL.L CODE_83F74A                    ;88C51A;
    JML.L CODE_8280B4                    ;88C51E;

CODE_88C522:
    DEC.B $38                            ;88C522;
    JSL.L CODE_82825D                    ;88C524;
    REP #$30                             ;88C528;
    LDX.B $20                            ;88C52A;
    LDA.B $08                            ;88C52C;
    CLC                                  ;88C52E;
    ADC.W #$0011                         ;88C52F;
    STA.W $0008,X                        ;88C532;
    SEP #$30                             ;88C535;
    JML.L CODE_8280B4                    ;88C537;

CODE_88C53B:
    LDA.W $1F2C                          ;88C53B;
    BMI CODE_88C551                      ;88C53E;
    LDA.B #$0E                           ;88C540;
    STA.B $33                            ;88C542;
    REP #$20                             ;88C544;
    LDA.W #$1000                         ;88C546;
    STA.B $1C                            ;88C549;
    SEP #$20                             ;88C54B;
    LDA.B #$06                           ;88C54D;
    STA.B $02                            ;88C54F;

CODE_88C551:
    JML.L CODE_8280B4                    ;88C551;

CODE_88C555:
    JSL.L CODE_82825D                    ;88C555;
    DEC.B $33                            ;88C559;
    BNE CODE_88C56C                      ;88C55B;
    LDA.B #$06                           ;88C55D;
    STA.B $01                            ;88C55F;
    STZ.B $02                            ;88C561;
    LDA.B #$01                           ;88C563;
    STA.W $1F3F                          ;88C565;
    JSL.L CODE_849FFE                    ;88C568;

CODE_88C56C:
    JML.L CODE_8280B4                    ;88C56C;

CODE_88C570:
    LDA.W $1F3F                          ;88C570;
    BNE CODE_88C58B                      ;88C573;
    LDA.B #$F6                           ;88C575;
    LDY.B #$03                           ;88C577;
    JSL.L CODE_80887F                    ;88C579;
    JSL.L CODE_84A041                    ;88C57D;
    LDA.B #$78                           ;88C581;
    STA.B $33                            ;88C583;
    LDA.B #$08                           ;88C585;
    STA.B $01                            ;88C587;
    STZ.B $02                            ;88C589;

CODE_88C58B:
    RTL                                  ;88C58B;

CODE_88C58C:
    LDX.B $02                            ;88C58C;
    JMP.W (PTR16_88C591,X)               ;88C58E;

PTR16_88C591:
    dw CODE_88C59F                       ;88C591;
    dw CODE_88C5B9                       ;88C593;
    dw CODE_88C5D8                       ;88C595;
    dw CODE_88C62C                       ;88C597;
    dw CODE_88C64D                       ;88C599;
    dw CODE_88C667                       ;88C59B;
    dw CODE_88C68E                       ;88C59D;

CODE_88C59F:
    DEC.B $33                            ;88C59F;
    BNE CODE_88C5B8                      ;88C5A1;
    LDA.B #$02                           ;88C5A3;
    STA.B $02                            ;88C5A5;
    INC.W $1F08                          ;88C5A7;
    JSL.L CODE_80B087                    ;88C5AA;
    LDA.B #$14                           ;88C5AE;
    STA.B $33                            ;88C5B0;
    LDA.B #$23                           ;88C5B2;
    JSL.L CODE_8087A2                    ;88C5B4;

CODE_88C5B8:
    RTL                                  ;88C5B8;

CODE_88C5B9:
    DEC.B $33                            ;88C5B9;
    BNE CODE_88C5D7                      ;88C5BB;
    LDA.B #$04                           ;88C5BD;
    STA.B $02                            ;88C5BF;
    REP #$20                             ;88C5C1;
    LDA.W #$FFEE                         ;88C5C3;
    STA.B $08                            ;88C5C6;
    STA.B $35                            ;88C5C8;
    LDA.W #$F000                         ;88C5CA;
    STA.B $1C                            ;88C5CD;
    SEP #$20                             ;88C5CF;
    LDA.B #$0C                           ;88C5D1;
    STA.B $37                            ;88C5D3;
    STA.B $38                            ;88C5D5;

CODE_88C5D7:
    RTL                                  ;88C5D7;

CODE_88C5D8:
    LDA.B $38                            ;88C5D8;
    BNE CODE_88C622                      ;88C5DA;
    LDA.B $37                            ;88C5DC;
    DEC A                                ;88C5DE;
    BEQ CODE_88C5FD                      ;88C5DF;
    STA.B $37                            ;88C5E1;
    STA.B $38                            ;88C5E3;
    REP #$20                             ;88C5E5;
    AND.W #$00FF                         ;88C5E7;
    ASL A                                ;88C5EA;
    ASL A                                ;88C5EB;
    ASL A                                ;88C5EC;
    ASL A                                ;88C5ED;
    EOR.W #$FFFF                         ;88C5EE;
    INC A                                ;88C5F1;
    CLC                                  ;88C5F2;
    ADC.B $08                            ;88C5F3;
    STA.B $08                            ;88C5F5;
    SEP #$20                             ;88C5F7;
    JML.L CODE_8280B4                    ;88C5F9;

CODE_88C5FD:
    LDA.B #$80                           ;88C5FD;
    STA.W $0000                          ;88C5FF;
    LDA.B #$50                           ;88C602;
    STA.W $0002                          ;88C604;
    LDA.B #$58                           ;88C607;
    STA.W $0004                          ;88C609;
    LDA.B #$30                           ;88C60C;
    STA.W $0006                          ;88C60E;
    LDA.B #$13                           ;88C611;
    STA.W $0008                          ;88C613;
    JSL.L CODE_83F74A                    ;88C616;
    LDA.B #$06                           ;88C61A;
    STA.B $02                            ;88C61C;
    JML.L CODE_8280B4                    ;88C61E;

CODE_88C622:
    DEC.B $38                            ;88C622;
    JSL.L CODE_82825D                    ;88C624;
    JML.L CODE_8280B4                    ;88C628;

CODE_88C62C:
    LDA.W $1F2C                          ;88C62C;
    BMI CODE_88C649                      ;88C62F;
    LDA.B #$02                           ;88C631;
    JSL.L CODE_848F07                    ;88C633;
    REP #$20                             ;88C637;
    TDC                                  ;88C639;
    STA.W $1F0E                          ;88C63A;
    SEP #$20                             ;88C63D;
    LDY.B #$01                           ;88C63F;
    LDA.B #$04                           ;88C641;
    STA.B ($0C),Y                        ;88C643;
    LDA.B #$08                           ;88C645;
    STA.B $02                            ;88C647;

CODE_88C649:
    JML.L CODE_8280B4                    ;88C649;

CODE_88C64D:
    JSL.L CODE_848EEA                    ;88C64D;
    LDA.B $0F                            ;88C651;
    BEQ CODE_88C663                      ;88C653;
    BMI CODE_88C65F                      ;88C655;
    LDA.B #$A2                           ;88C657;
    JSL.L CODE_8088CD                    ;88C659;
    BRA CODE_88C663                      ;88C65D;

CODE_88C65F:
    LDA.B #$0A                           ;88C65F;
    STA.B $02                            ;88C661;

CODE_88C663:
    JML.L CODE_8280B4                    ;88C663;

CODE_88C667:
    LDA.W $0B9C                          ;88C667;
    LSR A                                ;88C66A;
    BCC CODE_88C686                      ;88C66B;
    LDA.B #$0C                           ;88C66D;
    JSL.L CODE_8088CD                    ;88C66F;
    LDA.B $27                            ;88C673;
    AND.B #$7F                           ;88C675;
    INC A                                ;88C677;
    STA.B $27                            ;88C678;
    CMP.B #$20                           ;88C67A;
    BCC CODE_88C686                      ;88C67C;
    LDA.B #$0C                           ;88C67E;
    STA.B $02                            ;88C680;
    LDA.B #$1E                           ;88C682;
    STA.B $33                            ;88C684;

CODE_88C686:
    LDA.B #$80                           ;88C686;
    TSB.B $27                            ;88C688;
    JML.L CODE_8280B4                    ;88C68A;

CODE_88C68E:
    DEC.B $33                            ;88C68E;
    BNE CODE_88C6BC                      ;88C690;
    LDA.B #$2A                           ;88C692;
    JSL.L CODE_8087A2                    ;88C694;
    LDA.B #$03                           ;88C698;
    JSL.L CODE_848F07                    ;88C69A;
    LDA.B #$0A                           ;88C69E;
    STA.B $01                            ;88C6A0;
    STZ.B $02                            ;88C6A2;
    STZ.B $03                            ;88C6A4;
    STZ.B $2F                            ;88C6A6;
    STZ.B $35                            ;88C6A8;
    STZ.B $36                            ;88C6AA;
    STZ.B $30                            ;88C6AC;
    LDA.B $11                            ;88C6AE;
    AND.B #$0E                           ;88C6B0;
    STA.B $34                            ;88C6B2;
    LDA.B #$0A                           ;88C6B4;
    STA.B $26                            ;88C6B6;
    JSL.L CODE_849FFE                    ;88C6B8;

CODE_88C6BC:
    JML.L CODE_8280B4                    ;88C6BC;

CODE_88C6C0:
    LDA.B $34                            ;88C6C0;
    TSB.B $11                            ;88C6C2;
    STZ.B $30                            ;88C6C4;
    LDX.B $02                            ;88C6C6;
    JSR.W (PTR16_88C73D,X)               ;88C6C8;
    LDA.B #$12                           ;88C6CB;
    LDX.B $35                            ;88C6CD;
    BEQ CODE_88C6D3                      ;88C6CF;
    LDA.B #$05                           ;88C6D1;

CODE_88C6D3:
    STA.B $28                            ;88C6D3;
    REP #$20                             ;88C6D5;
    LDA.B $36                            ;88C6D7;
    AND.W #$00FF                         ;88C6D9;
    CLC                                  ;88C6DC;
    ADC.W #$D787                         ;88C6DD;
    STA.B $20                            ;88C6E0;
    SEP #$20                             ;88C6E2;
    LDA.W $0BCF                          ;88C6E4;
    AND.B #$7F                           ;88C6E7;
    BEQ CODE_88C722                      ;88C6E9;
    JSL.L CODE_849B43                    ;88C6EB;
    BEQ CODE_88C722                      ;88C6EF;
    BPL CODE_88C718                      ;88C6F1;
    LDA.B #$0C                           ;88C6F3;
    STA.B $01                            ;88C6F5;
    STZ.B $02                            ;88C6F7;
    STZ.B $03                            ;88C6F9;
    INC.W $0BD8                          ;88C6FB;
    INC.W $1F0C                          ;88C6FE;
    LDA.B #$0A                           ;88C701;
    JSL.L CODE_848F07                    ;88C703;
    REP #$10                             ;88C707;
    LDY.W #$01E8                         ;88C709;
    JSL.L CODE_828011                    ;88C70C;
    SEP #$10                             ;88C710;
    STZ.B $3D                            ;88C712;
    JML.L CODE_8280B4                    ;88C714;

CODE_88C718:
    LDA.B #$3C                           ;88C718;
    STA.B $35                            ;88C71A;
    LDA.B #$13                           ;88C71C;
    JSL.L CODE_8088A2                    ;88C71E;

CODE_88C722:
    LDA.B $35                            ;88C722;
    BEQ CODE_88C731                      ;88C724;
    DEC A                                ;88C726;
    STA.B $35                            ;88C727;
    AND.B #$03                           ;88C729;
    BNE CODE_88C731                      ;88C72B;
    LDA.B #$0E                           ;88C72D;
    TRB.B $11                            ;88C72F;

CODE_88C731:
    JSL.L CODE_849B03                    ;88C731;
    LDA.B #$01                           ;88C735;
    STA.B $30                            ;88C737;
    JML.L CODE_8280B4                    ;88C739;

PTR16_88C73D:
    dw CODE_88C74D                       ;88C73D;
    dw CODE_88C7E0                       ;88C73F;
    dw CODE_88C84F                       ;88C741;
    dw CODE_88C89F                       ;88C743;
    dw CODE_88C8EA                       ;88C745;
    dw CODE_88C91F                       ;88C747;
    dw CODE_88C9AE                       ;88C749;
    dw CODE_88CA14                       ;88C74B;

CODE_88C74D:
    LDX.B $03                            ;88C74D;
    JMP.W (PTR16_88C752,X)               ;88C74F;

PTR16_88C752:
    dw CODE_88C758                       ;88C752;
    dw CODE_88C796                       ;88C754;
    dw CODE_88C7A7                       ;88C756;

CODE_88C758:
    JSL.L CODE_84AC9B                    ;88C758;
    LDA.B $11                            ;88C75C;
    ASL A                                ;88C75E;
    ASL A                                ;88C75F;
    REP #$20                             ;88C760;
    LDA.W #$0400                         ;88C762;
    BCS CODE_88C771                      ;88C765;
    LDA.W #$FC00                         ;88C767;
    STA.B $1A                            ;88C76A;
    LDA.W #$FFD0                         ;88C76C;
    BRA CODE_88C776                      ;88C76F;

CODE_88C771:
    STA.B $1A                            ;88C771;
    LDA.W #$0030                         ;88C773;

CODE_88C776:
    CLC                                  ;88C776;
    ADC.W $0BAD                          ;88C777;
    SEC                                  ;88C77A;
    SBC.B $05                            ;88C77B;
    BCS CODE_88C783                      ;88C77D;
    EOR.W #$FFFF                         ;88C77F;
    INC A                                ;88C782;

CODE_88C783:
    LSR A                                ;88C783;
    LSR A                                ;88C784;
    SEP #$20                             ;88C785;
    STA.B $33                            ;88C787;
    LDA.B #$04                           ;88C789;
    JSL.L CODE_848F07                    ;88C78B;
    STZ.B $36                            ;88C78F;
    LDA.B #$02                           ;88C791;
    STA.B $03                            ;88C793;
    RTS                                  ;88C795;

CODE_88C796:
    JSL.L CODE_848EEA                    ;88C796;
    LDA.B $0F                            ;88C79A;
    BPL CODE_88C7A6                      ;88C79C;
    LDA.B #$04                           ;88C79E;
    STA.B $03                            ;88C7A0;
    LDA.B #$04                           ;88C7A2;
    STA.B $36                            ;88C7A4;

CODE_88C7A6:
    RTS                                  ;88C7A6;

CODE_88C7A7:
    JSL.L CODE_82823E                    ;88C7A7;
    DEC.B $33                            ;88C7AB;
    BEQ CODE_88C7C2                      ;88C7AD;
    REP #$20                             ;88C7AF;
    LDA.W #$D77D                         ;88C7B1;
    STA.B $20                            ;88C7B4;
    SEP #$20                             ;88C7B6;
    JSL.L CODE_8491BE                    ;88C7B8;
    LDA.B $2B                            ;88C7BC;
    AND.B #$03                           ;88C7BE;
    BEQ CODE_88C7C5                      ;88C7C0;

CODE_88C7C2:
    JMP.W CODE_88CEE1                    ;88C7C2;

CODE_88C7C5:
    REP #$30                             ;88C7C5;
    LDA.W #$D7A1                         ;88C7C7;
    STA.B $20                            ;88C7CA;
    SEP #$20                             ;88C7CC;
    LDX.W #$0BA8                         ;88C7CE;
    JSL.L CODE_849C0E                    ;88C7D1;
    SEP #$10                             ;88C7D5;
    BCC CODE_88C7DF                      ;88C7D7;
    LDA.B #$06                           ;88C7D9;
    STA.B $02                            ;88C7DB;
    STZ.B $03                            ;88C7DD;

CODE_88C7DF:
    RTS                                  ;88C7DF;

CODE_88C7E0:
    LDX.B $03                            ;88C7E0;
    JMP.W (PTR16_88C7E5,X)               ;88C7E2;

PTR16_88C7E5:
    dw CODE_88C7EB                       ;88C7E5;
    dw CODE_88C813                       ;88C7E7;
    dw CODE_88C828                       ;88C7E9;

CODE_88C7EB:
    LDA.B #$02                           ;88C7EB;
    STA.B $03                            ;88C7ED;
    LDA.B #$04                           ;88C7EF;
    JSL.L CODE_848F07                    ;88C7F1;
    STZ.B $36                            ;88C7F5;
    JSL.L CODE_84AC9B                    ;88C7F7;
    LDA.B $11                            ;88C7FB;
    ASL A                                ;88C7FD;
    ASL A                                ;88C7FE;
    REP #$20                             ;88C7FF;
    LDA.W #$0600                         ;88C801;
    BCS CODE_88C809                      ;88C804;
    LDA.W #$FA00                         ;88C806;

CODE_88C809:
    STA.B $1A                            ;88C809;
    LDA.W #$0100                         ;88C80B;
    STA.B $1C                            ;88C80E;
    SEP #$20                             ;88C810;
    RTS                                  ;88C812;

CODE_88C813:
    JSL.L CODE_848EEA                    ;88C813;
    LDA.B $0F                            ;88C817;
    BPL CODE_88C827                      ;88C819;
    LDA.B #$04                           ;88C81B;
    STA.B $03                            ;88C81D;
    LDA.B #$FF                           ;88C81F;
    STA.B $2F                            ;88C821;
    LDA.B #$04                           ;88C823;
    STA.B $36                            ;88C825;

CODE_88C827:
    RTS                                  ;88C827;

CODE_88C828:
    JSL.L CODE_82820A                    ;88C828;
    REP #$20                             ;88C82C;
    LDA.W #$D77D                         ;88C82E;
    STA.B $20                            ;88C831;
    SEP #$20                             ;88C833;
    JSL.L CODE_8491BE                    ;88C835;
    LDA.B $2B                            ;88C839;
    AND.B #$03                           ;88C83B;
    BEQ CODE_88C84E                      ;88C83D;
    LDA.B #$0A                           ;88C83F;
    STA.B $02                            ;88C841;
    STZ.B $03                            ;88C843;
    REP #$20                             ;88C845;
    LDA.W #$00C0                         ;88C847;
    STA.B $1C                            ;88C84A;
    SEP #$20                             ;88C84C;

CODE_88C84E:
    RTS                                  ;88C84E;

CODE_88C84F:
    LDA.B $03                            ;88C84F;
    BNE CODE_88C861                      ;88C851;
    INC.B $03                            ;88C853;
    JSL.L CODE_84AC9B                    ;88C855;
    LDA.B #$09                           ;88C859;
    JSL.L CODE_848F07                    ;88C85B;
    STZ.B $36                            ;88C85F;

CODE_88C861:
    JSL.L CODE_848EEA                    ;88C861;
    LDA.B $0F                            ;88C865;
    BEQ CODE_88C89E                      ;88C867;
    BPL CODE_88C86E                      ;88C869;
    JMP.W CODE_88CEE1                    ;88C86B;

CODE_88C86E:
    JSL.L CODE_828358                    ;88C86E;
    BNE CODE_88C89C                      ;88C872;
    INC.W $0000,X                        ;88C874;
    LDA.B #$2D                           ;88C877;
    STA.W $000A,X                        ;88C879;
    LDA.B $0F                            ;88C87C;
    STA.W $000B,X                        ;88C87E;
    LDA.B $11                            ;88C881;
    AND.B #$40                           ;88C883;
    STA.W $0011,X                        ;88C885;
    REP #$20                             ;88C888;
    LDA.B $05                            ;88C88A;
    STA.W $0005,X                        ;88C88C;
    LDA.B $08                            ;88C88F;
    SEC                                  ;88C891;
    SBC.W #$0014                         ;88C892;
    STA.W $0008,X                        ;88C895;
    TDC                                  ;88C898;
    STA.W $000C,X                        ;88C899;

CODE_88C89C:
    SEP #$30                             ;88C89C;

CODE_88C89E:
    RTS                                  ;88C89E;

CODE_88C89F:
    LDA.B $03                            ;88C89F;
    BNE CODE_88C8AF                      ;88C8A1;
    INC.B $03                            ;88C8A3;
    LDA.B #$05                           ;88C8A5;
    JSL.L CODE_848F07                    ;88C8A7;
    LDA.B #$08                           ;88C8AB;
    STA.B $36                            ;88C8AD;

CODE_88C8AF:
    JSL.L CODE_848EEA                    ;88C8AF;
    LDA.B $0F                            ;88C8B3;
    BEQ CODE_88C8E9                      ;88C8B5;
    BPL CODE_88C8BC                      ;88C8B7;
    JMP.W CODE_88CEE1                    ;88C8B9;

CODE_88C8BC:
    JSL.L CODE_828358                    ;88C8BC;
    BNE CODE_88C8E1                      ;88C8C0;
    INC.W $0000,X                        ;88C8C2;
    LDA.B #$2C                           ;88C8C5;
    STA.W $000A,X                        ;88C8C7;
    LDA.B $11                            ;88C8CA;
    AND.B #$40                           ;88C8CC;
    STA.W $0011,X                        ;88C8CE;
    REP #$20                             ;88C8D1;
    LDA.B $05                            ;88C8D3;
    STA.W $0005,X                        ;88C8D5;
    LDA.B $08                            ;88C8D8;
    STA.W $0008,X                        ;88C8DA;
    TDC                                  ;88C8DD;
    STA.W $000C,X                        ;88C8DE;

CODE_88C8E1:
    SEP #$30                             ;88C8E1;
    LDA.B #$50                           ;88C8E3;
    JSL.L CODE_8088A2                    ;88C8E5;

CODE_88C8E9:
    RTS                                  ;88C8E9;

CODE_88C8EA:
    LDA.B $03                            ;88C8EA;
    BNE CODE_88C8FC                      ;88C8EC;
    INC.B $03                            ;88C8EE;
    LDA.B #$08                           ;88C8F0;
    JSL.L CODE_848F07                    ;88C8F2;
    STZ.B $36                            ;88C8F6;
    LDA.B #$3C                           ;88C8F8;
    STA.B $33                            ;88C8FA;

CODE_88C8FC:
    JSL.L CODE_84AC9B                    ;88C8FC;
    DEC.B $33                            ;88C900;
    BNE CODE_88C907                      ;88C902;
    JMP.W CODE_88CEF4                    ;88C904;

CODE_88C907:
    REP #$20                             ;88C907;
    LDA.W #$D7A5                         ;88C909;
    STA.B $20                            ;88C90C;
    SEP #$20                             ;88C90E;
    STZ.B $28                            ;88C910;
    JSL.L CODE_849B43                    ;88C912;
    BVC CODE_88C91E                      ;88C916;
    LDA.B #$47                           ;88C918;
    JSL.L CODE_8088A2                    ;88C91A;

CODE_88C91E:
    RTS                                  ;88C91E;

CODE_88C91F:
    LDX.B $03                            ;88C91F;
    JMP.W (PTR16_88C924,X)               ;88C921;

PTR16_88C924:
    dw CODE_88C92A                       ;88C924;
    dw CODE_88C939                       ;88C926;
    dw CODE_88C970                       ;88C928;

CODE_88C92A:
    LDA.B #$02                           ;88C92A;
    STA.B $03                            ;88C92C;
    LDA.B #$06                           ;88C92E;
    JSL.L CODE_848F07                    ;88C930;
    LDA.B #$08                           ;88C934;
    STA.B $36                            ;88C936;
    RTS                                  ;88C938;

CODE_88C939:
    JSL.L CODE_848EEA                    ;88C939;
    LDA.B $0F                            ;88C93D;
    BPL CODE_88C96F                      ;88C93F;
    LDA.B #$04                           ;88C941;
    STA.B $03                            ;88C943;
    LDA.B #$07                           ;88C945;
    JSL.L CODE_848F07                    ;88C947;
    LDA.B #$04                           ;88C94B;
    STA.B $36                            ;88C94D;
    REP #$20                             ;88C94F;
    LDA.B $1A                            ;88C951;
    BPL CODE_88C959                      ;88C953;
    EOR.W #$FFFF                         ;88C955;
    INC A                                ;88C958;

CODE_88C959:
    CLC                                  ;88C959;
    ADC.W #$0080                         ;88C95A;
    LDX.B $1B                            ;88C95D;
    BMI CODE_88C965                      ;88C95F;
    EOR.W #$FFFF                         ;88C961;
    INC A                                ;88C964;

CODE_88C965:
    STA.B $1A                            ;88C965;
    SEP #$20                             ;88C967;
    LDA.B $11                            ;88C969;
    EOR.B #$40                           ;88C96B;
    STA.B $11                            ;88C96D;

CODE_88C96F:
    RTS                                  ;88C96F;

CODE_88C970:
    JSL.L CODE_82820A                    ;88C970;
    REP #$20                             ;88C974;
    LDA.W #$D77D                         ;88C976;
    STA.B $20                            ;88C979;
    SEP #$20                             ;88C97B;
    JSL.L CODE_8491BE                    ;88C97D;
    LDA.B $2B                            ;88C981;
    AND.B #$03                           ;88C983;
    BEQ CODE_88C9AD                      ;88C985;
    REP #$20                             ;88C987;
    LDA.B $08                            ;88C989;
    CMP.W #$0040                         ;88C98B;
    BCC CODE_88C99E                      ;88C98E;
    SEC                                  ;88C990;
    SBC.W #$0018                         ;88C991;
    CMP.W $0BB0                          ;88C994;
    SEP #$20                             ;88C997;
    BCC CODE_88C99E                      ;88C999;
    STZ.B $03                            ;88C99B;
    RTS                                  ;88C99D;

CODE_88C99E:
    REP #$20                             ;88C99E;
    LDA.W #$FE80                         ;88C9A0;
    STA.B $1C                            ;88C9A3;
    SEP #$20                             ;88C9A5;
    LDA.B #$0C                           ;88C9A7;
    STA.B $02                            ;88C9A9;
    STZ.B $03                            ;88C9AB;

CODE_88C9AD:
    RTS                                  ;88C9AD;

CODE_88C9AE:
    LDX.B $03                            ;88C9AE;
    JMP.W (PTR16_88C9B3,X)               ;88C9B0;

PTR16_88C9B3:
    dw CODE_88C9B9                       ;88C9B3;
    dw CODE_88C9C8                       ;88C9B5;
    dw CODE_88C9F1                       ;88C9B7;

CODE_88C9B9:
    LDA.B #$02                           ;88C9B9;
    STA.B $03                            ;88C9BB;
    LDA.B #$06                           ;88C9BD;
    JSL.L CODE_848F07                    ;88C9BF;
    LDA.B #$08                           ;88C9C3;
    STA.B $36                            ;88C9C5;
    RTS                                  ;88C9C7;

CODE_88C9C8:
    JSL.L CODE_848EEA                    ;88C9C8;
    LDA.B $0F                            ;88C9CC;
    BPL CODE_88C9F0                      ;88C9CE;
    LDA.B #$04                           ;88C9D0;
    STA.B $03                            ;88C9D2;
    REP #$20                             ;88C9D4;
    LDA.B $1A                            ;88C9D6;
    EOR.W #$FFFF                         ;88C9D8;
    INC A                                ;88C9DB;
    STA.B $1A                            ;88C9DC;
    SEP #$20                             ;88C9DE;
    LDA.B $11                            ;88C9E0;
    EOR.B #$40                           ;88C9E2;
    STA.B $11                            ;88C9E4;
    LDA.B #$07                           ;88C9E6;
    JSL.L CODE_848F07                    ;88C9E8;
    LDA.B #$04                           ;88C9EC;
    STA.B $36                            ;88C9EE;

CODE_88C9F0:
    RTS                                  ;88C9F0;

CODE_88C9F1:
    JSL.L CODE_82820A                    ;88C9F1;
    REP #$20                             ;88C9F5;
    LDA.W #$D77D                         ;88C9F7;
    STA.B $20                            ;88C9FA;
    SEP #$20                             ;88C9FC;
    JSL.L CODE_8491BE                    ;88C9FE;
    LDA.B $2B                            ;88CA02;
    BIT.B #$04                           ;88CA04;
    BEQ CODE_88CA0D                      ;88CA06;
    STZ.B $2F                            ;88CA08;
    JMP.W CODE_88CEE1                    ;88CA0A;

CODE_88CA0D:
    AND.B #$03                           ;88CA0D;
    BEQ CODE_88CA13                      ;88CA0F;
    STZ.B $03                            ;88CA11;

CODE_88CA13:
    RTS                                  ;88CA13;

CODE_88CA14:
    LDA.B $03                            ;88CA14;
    BNE CODE_88CA26                      ;88CA16;
    INC.B $03                            ;88CA18;
    LDA.B #$03                           ;88CA1A;
    JSL.L CODE_848F07                    ;88CA1C;
    STZ.B $36                            ;88CA20;
    LDA.B #$28                           ;88CA22;
    STA.B $33                            ;88CA24;

CODE_88CA26:
    JSL.L CODE_84AC9B                    ;88CA26;
    JSL.L CODE_848EEA                    ;88CA2A;
    DEC.B $33                            ;88CA2E;
    BNE CODE_88CA35                      ;88CA30;
    JMP.W CODE_88CEF4                    ;88CA32;

CODE_88CA35:
    RTS                                  ;88CA35;

CODE_88CA36:
    JSL.L CODE_84A66D                    ;88CA36;
    BPL CODE_88CA48                      ;88CA3A;
    LDA.B #$0E                           ;88CA3C;
    STA.B $01                            ;88CA3E;
    STZ.B $02                            ;88CA40;
    STZ.B $03                            ;88CA42;
    JML.L CODE_8280B4                    ;88CA44;

CODE_88CA48:
    LDA.B $03                            ;88CA48;
    CMP.B #$14                           ;88CA4A;
    BCS CODE_88CA52                      ;88CA4C;
    JML.L CODE_8280B4                    ;88CA4E;

CODE_88CA52:
    LDA.B $3D                            ;88CA52;
    BMI CODE_88CACD                      ;88CA54;
    BNE CODE_88CA61                      ;88CA56;
    INC.B $3D                            ;88CA58;
    INC.W $1F08                          ;88CA5A;
    JML.L CODE_80B087                    ;88CA5D;

CODE_88CA61:
    LDA.W $0040                          ;88CA61;
    BNE CODE_88CACC                      ;88CA64;
    LDA.B #$3E                           ;88CA66;
    STA.B $16                            ;88CA68;
    LDA.B #$02                           ;88CA6A;
    JSL.L CODE_848F07                    ;88CA6C;
    LDA.B #$2D                           ;88CA70;
    STA.B $11                            ;88CA72;
    LDA.B #$06                           ;88CA74;
    STA.B $12                            ;88CA76;
    REP #$20                             ;88CA78;
    LDA.W #$0080                         ;88CA7A;
    STA.B $05                            ;88CA7D;
    LDA.W #$003E                         ;88CA7F;
    STA.B $08                            ;88CA82;
    JSL.L CODE_8282D3                    ;88CA84;
    BNE CODE_88CACC                      ;88CA88;
    INC.W $0000,X                        ;88CA8A;
    LDA.B #$43                           ;88CA8D;
    STA.W $000A,X                        ;88CA8F;
    STZ.W $000B,X                        ;88CA92;
    LDA.B #$80                           ;88CA95;
    STA.B $3D                            ;88CA97;
    REP #$20                             ;88CA99;
    TDC                                  ;88CA9B;
    STA.W $000C,X                        ;88CA9C;
    STZ.W $1F3F                          ;88CA9F;
    STZ.W $1F41                          ;88CAA2;
    STZ.W $1F43                          ;88CAA5;
    JSL.L CODE_828321                    ;88CAA8;
    BNE CODE_88CACC                      ;88CAAC;
    INC.W $0000,X                        ;88CAAE;
    LDA.B #$6B                           ;88CAB1;
    STA.W $000A,X                        ;88CAB3;
    STZ.W $000B,X                        ;88CAB6;
    JSL.L CODE_828321                    ;88CAB9;
    BNE CODE_88CACC                      ;88CABD;
    INC.W $0000,X                        ;88CABF;
    LDA.B #$6B                           ;88CAC2;
    STA.W $000A,X                        ;88CAC4;
    LDA.B #$80                           ;88CAC7;
    STA.W $000B,X                        ;88CAC9;

CODE_88CACC:
    RTL                                  ;88CACC;

CODE_88CACD:
    JML.L CODE_8280B4                    ;88CACD;

CODE_88CAD1:
    LDX.B $02                            ;88CAD1;
    JSR.W (PTR16_88CADA,X)               ;88CAD3;
    JML.L CODE_8280B4                    ;88CAD6;

PTR16_88CADA:
    dw CODE_88CAE6                       ;88CADA;
    dw CODE_88CAFD                       ;88CADC;
    dw CODE_88CB2E                       ;88CADE;
    dw CODE_88CB5A                       ;88CAE0;
    dw CODE_88CB64                       ;88CAE2;
    dw CODE_88CB88                       ;88CAE4;

CODE_88CAE6:
    INC.W $1F3B                          ;88CAE6;
    LDA.B #$02                           ;88CAE9;
    STA.B $02                            ;88CAEB;
    LDA.B #$08                           ;88CAED;
    STA.B $12                            ;88CAEF;
    LDA.B #$2F                           ;88CAF1;
    JSL.L CODE_8087A2                    ;88CAF3;
    LDA.B #$01                           ;88CAF7;
    STA.W $1F3F                          ;88CAF9;
    RTS                                  ;88CAFC;

CODE_88CAFD:
    LDA.W $1F3F                          ;88CAFD;
    BNE CODE_88CB2D                      ;88CB00;
    JSL.L CODE_8282D3                    ;88CB02;
    BNE CODE_88CB2B                      ;88CB06;
    INC.W $0000,X                        ;88CB08;
    LDA.B #$43                           ;88CB0B;
    STA.W $000A,X                        ;88CB0D;
    LDA.B #$80                           ;88CB10;
    STA.W $000B,X                        ;88CB12;
    REP #$20                             ;88CB15;
    TDC                                  ;88CB17;
    STA.W $000C,X                        ;88CB18;
    STA.W $1F0E                          ;88CB1B;
    SEP #$20                             ;88CB1E;
    LDA.B #$04                           ;88CB20;
    STA.B $02                            ;88CB22;
    LDA.B #$01                           ;88CB24;
    STA.W $1F3F                          ;88CB26;
    STZ.B $27                            ;88CB29;

CODE_88CB2B:
    SEP #$10                             ;88CB2B;

CODE_88CB2D:
    RTS                                  ;88CB2D;

CODE_88CB2E:
    LDA.W $1F3F                          ;88CB2E;
    BNE CODE_88CB59                      ;88CB31;
    JSL.L CODE_8282D3                    ;88CB33;
    BNE CODE_88CB57                      ;88CB37;
    INC.W $0000,X                        ;88CB39;
    LDA.B #$43                           ;88CB3C;
    STA.W $000A,X                        ;88CB3E;
    LDA.B #$01                           ;88CB41;
    STA.W $000B,X                        ;88CB43;
    REP #$20                             ;88CB46;
    TDC                                  ;88CB48;
    STA.W $000C,X                        ;88CB49;
    SEP #$20                             ;88CB4C;
    LDA.B #$01                           ;88CB4E;
    STA.W $1F3F                          ;88CB50;
    LDA.B #$06                           ;88CB53;
    STA.B $02                            ;88CB55;

CODE_88CB57:
    SEP #$10                             ;88CB57;

CODE_88CB59:
    RTS                                  ;88CB59;

CODE_88CB5A:
    LDA.W $1F3F                          ;88CB5A;
    BNE CODE_88CB63                      ;88CB5D;
    LDA.B #$08                           ;88CB5F;
    STA.B $02                            ;88CB61;

CODE_88CB63:
    RTS                                  ;88CB63;

CODE_88CB64:
    LDA.W $0B9C                          ;88CB64;
    LSR A                                ;88CB67;
    BCC CODE_88CB83                      ;88CB68;
    LDA.B #$0C                           ;88CB6A;
    JSL.L CODE_8088CD                    ;88CB6C;
    LDA.B $27                            ;88CB70;
    AND.B #$7F                           ;88CB72;
    INC A                                ;88CB74;
    STA.B $27                            ;88CB75;
    CMP.B #$20                           ;88CB77;
    BCC CODE_88CB83                      ;88CB79;
    LDA.B #$0A                           ;88CB7B;
    STA.B $02                            ;88CB7D;
    LDA.B #$1E                           ;88CB7F;
    STA.B $33                            ;88CB81;

CODE_88CB83:
    LDA.B #$80                           ;88CB83;
    TSB.B $27                            ;88CB85;
    RTS                                  ;88CB87;

CODE_88CB88:
    DEC.B $33                            ;88CB88;
    BNE CODE_88CBC5                      ;88CB8A;
    LDA.B #$10                           ;88CB8C;
    STA.B $01                            ;88CB8E;
    STZ.B $02                            ;88CB90;
    STZ.B $03                            ;88CB92;
    LDA.B #$2B                           ;88CB94;
    JSL.L CODE_8087A2                    ;88CB96;
    REP #$20                             ;88CB9A;
    LDA.W #$0040                         ;88CB9C;
    STA.B $1A                            ;88CB9F;
    SEP #$20                             ;88CBA1;
    LDA.B #$10                           ;88CBA3;
    STA.B $33                            ;88CBA5;
    STZ.W $1F3F                          ;88CBA7;
    STZ.B $35                            ;88CBAA;
    STZ.B $30                            ;88CBAC;
    INC.W $1F43                          ;88CBAE;
    LDA.B $11                            ;88CBB1;
    AND.B #$0E                           ;88CBB3;
    STA.B $34                            ;88CBB5;
    LDA.B #$0A                           ;88CBB7;
    STA.B $26                            ;88CBB9;
    JSL.L CODE_849FFE                    ;88CBBB;
    DEC.W $1F3B                          ;88CBBF;
    INC.W $1F08                          ;88CBC2;

CODE_88CBC5:
    RTS                                  ;88CBC5;

CODE_88CBC6:
    LDA.B $34                            ;88CBC6;
    TSB.B $11                            ;88CBC8;
    STZ.B $30                            ;88CBCA;
    LDX.B $02                            ;88CBCC;
    JSR.W (PTR16_88CC39,X)               ;88CBCE;
    REP #$20                             ;88CBD1;
    LDA.W #$D79D                         ;88CBD3;
    STA.B $20                            ;88CBD6;
    SEP #$20                             ;88CBD8;
    LDA.B #$13                           ;88CBDA;
    LDX.B $35                            ;88CBDC;
    BEQ CODE_88CBE2                      ;88CBDE;
    LDA.B #$00                           ;88CBE0;

CODE_88CBE2:
    STA.B $28                            ;88CBE2;
    JSL.L CODE_849B43                    ;88CBE4;
    BEQ CODE_88CC19                      ;88CBE8;
    BPL CODE_88CC0F                      ;88CBEA;
    LDA.B #$12                           ;88CBEC;
    STA.B $01                            ;88CBEE;
    STZ.B $02                            ;88CBF0;
    STZ.B $03                            ;88CBF2;
    LDA.B #$80                           ;88CBF4;
    STA.W $1F3F                          ;88CBF6;
    STZ.W $1F40                          ;88CBF9;
    STZ.W $1F41                          ;88CBFC;
    STZ.W $1F42                          ;88CBFF;
    STZ.W $1F43                          ;88CC02;
    INC.W $0BD8                          ;88CC05;
    INC.W $1F0C                          ;88CC08;
    JML.L CODE_8280B4                    ;88CC0B;

CODE_88CC0F:
    LDA.B #$3C                           ;88CC0F;
    STA.B $35                            ;88CC11;
    LDA.B #$13                           ;88CC13;
    JSL.L CODE_8088A2                    ;88CC15;

CODE_88CC19:
    LDA.B $35                            ;88CC19;
    BEQ CODE_88CC28                      ;88CC1B;
    DEC A                                ;88CC1D;
    STA.B $35                            ;88CC1E;
    AND.B #$03                           ;88CC20;
    BNE CODE_88CC28                      ;88CC22;
    LDA.B #$0E                           ;88CC24;
    TRB.B $11                            ;88CC26;

CODE_88CC28:
    REP #$20                             ;88CC28;
    LDA.W #$D793                         ;88CC2A;
    STA.B $20                            ;88CC2D;
    SEP #$20                             ;88CC2F;
    JSL.L CODE_849B03                    ;88CC31;
    JML.L CODE_8280B4                    ;88CC35;

PTR16_88CC39:
    dw CODE_88CC41                       ;88CC39;
    dw CODE_88CC8C                       ;88CC3B;
    dw CODE_88CCA3                       ;88CC3D;
    dw CODE_88CCE9                       ;88CC3F;

CODE_88CC41:
    DEC.B $33                            ;88CC41;
    BNE CODE_88CC8B                      ;88CC43;
    JSL.L CODE_849086                    ;88CC45;
    LSR A                                ;88CC49;
    BCC CODE_88CC5D                      ;88CC4A;
    JSL.L CODE_849086                    ;88CC4C;
    AND.B #$01                           ;88CC50;
    TAX                                  ;88CC52;
    LDA.B #$01                           ;88CC53;
    STA.W $1F40,X                        ;88CC55;
    LDA.B #$02                           ;88CC58;
    STA.B $02                            ;88CC5A;
    RTS                                  ;88CC5C;

CODE_88CC5D:
    JSL.L CODE_849086                    ;88CC5D;
    AND.B #$40                           ;88CC61;
    STA.B $3D                            ;88CC63;
    JSL.L CODE_849086                    ;88CC65;
    ASL A                                ;88CC69;
    BCC CODE_88CC7C                      ;88CC6A;
    LDA.B #$06                           ;88CC6C;
    STA.B $02                            ;88CC6E;
    LDA.B #$3F                           ;88CC70;
    STA.B $38                            ;88CC72;
    LDA.B #$3C                           ;88CC74;
    STA.B $33                            ;88CC76;
    STA.W $1F42                          ;88CC78;
    RTS                                  ;88CC7B;

CODE_88CC7C:
    LDA.B #$04                           ;88CC7C;
    STA.B $02                            ;88CC7E;
    LDA.B #$08                           ;88CC80;
    STA.B $38                            ;88CC82;
    LDA.B #$1E                           ;88CC84;
    STA.B $33                            ;88CC86;
    STA.W $1F42                          ;88CC88;

CODE_88CC8B:
    RTS                                  ;88CC8B;

CODE_88CC8C:
    REP #$20                             ;88CC8C;
    LDA.W $1F40                          ;88CC8E;
    SEP #$20                             ;88CC91;
    BNE CODE_88CCA2                      ;88CC93;
    JSL.L CODE_849086                    ;88CC95;
    AND.B #$3F                           ;88CC99;
    CLC                                  ;88CC9B;
    ADC.B #$10                           ;88CC9C;
    STA.B $33                            ;88CC9E;
    STZ.B $02                            ;88CCA0;

CODE_88CCA2:
    RTS                                  ;88CCA2;

CODE_88CCA3:
    DEC.B $33                            ;88CCA3;
    BNE CODE_88CCE6                      ;88CCA5;
    LDA.B #$10                           ;88CCA7;
    STA.B $33                            ;88CCA9;
    JSL.L CODE_828358                    ;88CCAB;
    BNE CODE_88CCE6                      ;88CCAF;
    INC.W $0000,X                        ;88CCB1;
    LDA.B #$31                           ;88CCB4;
    STA.W $000A,X                        ;88CCB6;
    LDA.B $3D                            ;88CCB9;
    STA.W $0011,X                        ;88CCBB;
    LDA.B $38                            ;88CCBE;
    STA.W $000B,X                        ;88CCC0;
    REP #$20                             ;88CCC3;
    LDA.B $05                            ;88CCC5;
    STA.W $0005,X                        ;88CCC7;
    LDA.B $08                            ;88CCCA;
    CLC                                  ;88CCCC;
    ADC.W #$0010                         ;88CCCD;
    STA.W $0008,X                        ;88CCD0;
    SEP #$30                             ;88CCD3;
    DEC.B $38                            ;88CCD5;
    BPL CODE_88CCE6                      ;88CCD7;
    JSL.L CODE_849086                    ;88CCD9;
    AND.B #$3F                           ;88CCDD;
    CLC                                  ;88CCDF;
    ADC.B #$10                           ;88CCE0;
    STA.B $33                            ;88CCE2;
    STZ.B $02                            ;88CCE4;

CODE_88CCE6:
    SEP #$30                             ;88CCE6;
    RTS                                  ;88CCE8;

CODE_88CCE9:
    DEC.B $33                            ;88CCE9;
    BNE CODE_88CD2F                      ;88CCEB;
    LDA.B #$03                           ;88CCED;
    STA.B $33                            ;88CCEF;
    JSL.L CODE_828358                    ;88CCF1;
    BNE CODE_88CD2D                      ;88CCF5;
    INC.W $0000,X                        ;88CCF7;
    LDA.B #$32                           ;88CCFA;
    STA.W $000A,X                        ;88CCFC;
    LDA.B $38                            ;88CCFF;
    LSR A                                ;88CD01;
    STA.W $000B,X                        ;88CD02;
    LDA.B $3D                            ;88CD05;
    STA.W $0011,X                        ;88CD07;
    REP #$20                             ;88CD0A;
    LDA.B $05                            ;88CD0C;
    STA.W $0005,X                        ;88CD0E;
    LDA.B $08                            ;88CD11;
    CLC                                  ;88CD13;
    ADC.W #$0018                         ;88CD14;
    STA.W $0008,X                        ;88CD17;
    SEP #$20                             ;88CD1A;
    DEC.B $38                            ;88CD1C;
    BPL CODE_88CD2D                      ;88CD1E;
    JSL.L CODE_849086                    ;88CD20;
    AND.B #$3F                           ;88CD24;
    CLC                                  ;88CD26;
    ADC.B #$10                           ;88CD27;
    STA.B $33                            ;88CD29;
    STZ.B $02                            ;88CD2B;

CODE_88CD2D:
    SEP #$10                             ;88CD2D;

CODE_88CD2F:
    RTS                                  ;88CD2F;

CODE_88CD30:
    LDX.B $02                            ;88CD30;
    JMP.W (PTR16_88CD35,X)               ;88CD32;

PTR16_88CD35:
    dw CODE_88CD47                       ;88CD35;
    dw CODE_88CD7E                       ;88CD37;
    dw CODE_88CDB3                       ;88CD39;
    dw CODE_88CDDA                       ;88CD3B;
    dw CODE_88CDFF                       ;88CD3D;
    dw CODE_88CE1F                       ;88CD3F;
    dw CODE_88CE37                       ;88CD41;
    dw CODE_88CE62                       ;88CD43;
    dw CODE_88CE8B                       ;88CD45;

CODE_88CD47:
    LDA.B #$02                           ;88CD47;
    STA.B $02                            ;88CD49;
    LDA.B #$FF                           ;88CD4B;
    STA.B $00                            ;88CD4D;
    JSL.L CODE_849F85                    ;88CD4F;
    INC.W $1F13                          ;88CD53;
    INC.W $1F14                          ;88CD56;
    INC.W $1F15                          ;88CD59;
    INC.W $1F16                          ;88CD5C;
    INC.W $1F17                          ;88CD5F;
    INC.W $1F18                          ;88CD62;
    INC.W $1F1A                          ;88CD65;
    INC.W $1F3B                          ;88CD68;
    INC.W $1F31                          ;88CD6B;
    LDA.B #$3C                           ;88CD6E;
    STA.B $33                            ;88CD70;
    LDA.B #$F6                           ;88CD72;
    LDY.B #$03                           ;88CD74;
    JSL.L CODE_80887F                    ;88CD76;
    JML.L CODE_8280B4                    ;88CD7A;

CODE_88CD7E:
    DEC.B $33                            ;88CD7E;
    BNE CODE_88CDAF                      ;88CD80;
    JSL.L CODE_849FAD                    ;88CD82;
    JSL.L CODE_849FE6                    ;88CD86;
    DEC.W $1F13                          ;88CD8A;
    DEC.W $1F14                          ;88CD8D;
    DEC.W $1F15                          ;88CD90;
    DEC.W $1F16                          ;88CD93;
    DEC.W $1F17                          ;88CD96;
    DEC.W $1F18                          ;88CD99;
    DEC.W $1F1A                          ;88CD9C;
    LDA.B #$78                           ;88CD9F;
    STA.B $33                            ;88CDA1;
    LDA.B #$04                           ;88CDA3;
    STA.B $02                            ;88CDA5;
    LDA.B #$F0                           ;88CDA7;
    STA.B $39                            ;88CDA9;
    JSL.L CODE_84A311                    ;88CDAB;

CODE_88CDAF:
    JML.L CODE_8280B4                    ;88CDAF;

CODE_88CDB3:
    DEC.B $33                            ;88CDB3;
    BNE CODE_88CDD0                      ;88CDB5;
    REP #$20                             ;88CDB7;
    STZ.B $1A                            ;88CDB9;
    STZ.B $1C                            ;88CDBB;
    LDA.W #$D793                         ;88CDBD;
    STA.B $20                            ;88CDC0;
    SEP #$20                             ;88CDC2;
    LDA.B #$40                           ;88CDC4;
    STA.B $1E                            ;88CDC6;
    LDA.B #$FF                           ;88CDC8;
    STA.B $2F                            ;88CDCA;
    LDA.B #$06                           ;88CDCC;
    STA.B $02                            ;88CDCE;

CODE_88CDD0:
    JSR.W CODE_88CEB4                    ;88CDD0;
    JSR.W CODE_88CEC1                    ;88CDD3;
    JML.L CODE_8280B4                    ;88CDD6;

CODE_88CDDA:
    JSL.L CODE_8281E8                    ;88CDDA;
    JSL.L CODE_8491BE                    ;88CDDE;
    LDA.B $2B                            ;88CDE2;
    AND.B #$04                           ;88CDE4;
    BEQ CODE_88CDF5                      ;88CDE6;
    LDA.B #$08                           ;88CDE8;
    STA.B $02                            ;88CDEA;
    REP #$20                             ;88CDEC;
    LDA.W #$0200                         ;88CDEE;
    STA.B $1C                            ;88CDF1;
    SEP #$20                             ;88CDF3;

CODE_88CDF5:
    JSR.W CODE_88CEB4                    ;88CDF5;
    JSR.W CODE_88CEC1                    ;88CDF8;
    JML.L CODE_8280B4                    ;88CDFB;

CODE_88CDFF:
    JSL.L CODE_8281E8                    ;88CDFF;
    JSL.L CODE_8491BE                    ;88CE03;
    LDA.B $2B                            ;88CE07;
    AND.B #$04                           ;88CE09;
    BEQ CODE_88CE15                      ;88CE0B;
    LDA.B #$0A                           ;88CE0D;
    STA.B $02                            ;88CE0F;
    LDA.B #$3C                           ;88CE11;
    STA.B $33                            ;88CE13;

CODE_88CE15:
    JSR.W CODE_88CEB4                    ;88CE15;
    JSR.W CODE_88CEC1                    ;88CE18;
    JML.L CODE_8280B4                    ;88CE1B;

CODE_88CE1F:
    DEC.B $33                            ;88CE1F;
    BNE CODE_88CE2D                      ;88CE21;
    LDA.B #$0C                           ;88CE23;
    STA.B $02                            ;88CE25;
    LDA.B #$21                           ;88CE27;
    JSL.L CODE_8088CD                    ;88CE29;

CODE_88CE2D:
    JSR.W CODE_88CEB4                    ;88CE2D;
    JSR.W CODE_88CEC1                    ;88CE30;
    JML.L CODE_8280B4                    ;88CE33;

CODE_88CE37:
    LDA.B #$0E                           ;88CE37;
    STA.B $02                            ;88CE39;
    LDA.B #$80                           ;88CE3B;
    STA.W $0000                          ;88CE3D;
    LDA.B #$50                           ;88CE40;
    STA.W $0002                          ;88CE42;
    LDA.B #$58                           ;88CE45;
    STA.W $0004                          ;88CE47;
    LDA.B #$30                           ;88CE4A;
    STA.W $0006                          ;88CE4C;
    LDA.B #$1E                           ;88CE4F;
    STA.W $0008                          ;88CE51;
    JSL.L CODE_83F74A                    ;88CE54;
    JSR.W CODE_88CEC1                    ;88CE58;
    JSR.W CODE_88CEB4                    ;88CE5B;
    JML.L CODE_8280B4                    ;88CE5E;

CODE_88CE62:
    LDA.W $1F2C                          ;88CE62;
    BMI CODE_88CE81                      ;88CE65;
    LDA.B #$10                           ;88CE67;
    STA.B $02                            ;88CE69;
    LDA.B #$04                           ;88CE6B;
    STA.W $1F7B                          ;88CE6D;
    STZ.W $00CB                          ;88CE70;
    STZ.W $00CC                          ;88CE73;
    STZ.W $00CD                          ;88CE76;
    LDA.B #$3F                           ;88CE79;
    STA.W $00CA                          ;88CE7B;
    STZ.W $00C9                          ;88CE7E;

CODE_88CE81:
    JSR.W CODE_88CEB4                    ;88CE81;
    JSR.W CODE_88CEC1                    ;88CE84;
    JML.L CODE_8280B4                    ;88CE87;

CODE_88CE8B:
    LDA.W $0B9C                          ;88CE8B;
    LSR A                                ;88CE8E;
    BCC CODE_88CEAA                      ;88CE8F;
    LDA.W $00CB                          ;88CE91;
    CMP.B #$1F                           ;88CE94;
    BEQ CODE_88CEAA                      ;88CE96;
    INC A                                ;88CE98;
    STA.W $00CB                          ;88CE99;
    STA.W $00CC                          ;88CE9C;
    STA.W $00CD                          ;88CE9F;
    CMP.B #$18                           ;88CEA2;
    BNE CODE_88CEAA                      ;88CEA4;
    JSL.L CODE_84A014                    ;88CEA6;

CODE_88CEAA:
    JSR.W CODE_88CEC1                    ;88CEAA;
    JSR.W CODE_88CEB4                    ;88CEAD;
    JML.L CODE_8280B4                    ;88CEB0;

CODE_88CEB4:
    DEC.B $39                            ;88CEB4;
    BNE CODE_88CEC0                      ;88CEB6;
    LDA.B #$F0                           ;88CEB8;
    STA.B $39                            ;88CEBA;
    JSL.L CODE_84A311                    ;88CEBC;

CODE_88CEC0:
    RTS                                  ;88CEC0;

CODE_88CEC1:
    REP #$20                             ;88CEC1;
    LDA.W #$FFE0                         ;88CEC3;
    STA.W $0000                          ;88CEC6;
    STA.W $0002                          ;88CEC9;
    LDA.W #$003F                         ;88CECC;
    STA.W $0004                          ;88CECF;
    STA.W $0006                          ;88CED2;
    SEP #$20                             ;88CED5;
    LDA.B #$07                           ;88CED7;
    STA.W $0008                          ;88CED9;
    JSL.L CODE_84A4C6                    ;88CEDC;
    RTS                                  ;88CEE0;

CODE_88CEE1:
    JSL.L CODE_849086                    ;88CEE1;
    AND.B #$0F                           ;88CEE5;
    CMP.B #$06                           ;88CEE7;
    LDA.B #$0E                           ;88CEE9;
    BCC CODE_88CEEF                      ;88CEEB;
    LDA.B #$08                           ;88CEED;

CODE_88CEEF:
    STA.B $02                            ;88CEEF;
    STZ.B $03                            ;88CEF1;
    RTS                                  ;88CEF3;

CODE_88CEF4:
    STZ.B $3D                            ;88CEF4;
    REP #$20                             ;88CEF6;
    LDA.W $0BAD                          ;88CEF8;
    CMP.W #$0040                         ;88CEFB;
    BCS CODE_88CF09                      ;88CEFE;
    SEP #$20                             ;88CF00;
    LDA.B #$02                           ;88CF02;
    STA.B $02                            ;88CF04;
    STZ.B $03                            ;88CF06;
    RTS                                  ;88CF08;

CODE_88CF09:
    LDA.W $0BAD                          ;88CF09;
    SEC                                  ;88CF0C;
    SBC.B $05                            ;88CF0D;
    BCS CODE_88CF15                      ;88CF0F;
    EOR.W #$FFFF                         ;88CF11;
    INC A                                ;88CF14;

CODE_88CF15:
    CMP.W #$0050                         ;88CF15;
    SEP #$20                             ;88CF18;
    ROL.B $3D                            ;88CF1A;
    REP #$20                             ;88CF1C;
    LDA.W #$00A8                         ;88CF1E;
    CMP.W $0BB0                          ;88CF21;
    SEP #$20                             ;88CF24;
    ROL.B $3D                            ;88CF26;
    LDA.B $3D                            ;88CF28;
    ASL A                                ;88CF2A;
    ADC.B $3D                            ;88CF2B;
    CLC                                  ;88CF2D;
    ADC.B #$02                           ;88CF2E;
    TAX                                  ;88CF30;
    LDY.B #$02                           ;88CF31;
    JSL.L CODE_849086                    ;88CF33;
    AND.B #$0F                           ;88CF37;

CODE_88CF39:
    SEC                                  ;88CF39;
    SBC.W DATA8_86D7A9,X                 ;88CF3A;
    BCC CODE_88CF43                      ;88CF3D;
    DEX                                  ;88CF3F;
    DEY                                  ;88CF40;
    BNE CODE_88CF39                      ;88CF41;

CODE_88CF43:
    TYA                                  ;88CF43;
    ASL A                                ;88CF44;
    STA.B $02                            ;88CF45;
    STZ.B $03                            ;88CF47;
    RTS                                  ;88CF49;

CODE_88CF4A:
    LDX.B $01                            ;88CF4A;
    JMP.W (PTR16_88CF4F,X)               ;88CF4C;

PTR16_88CF4F:
    dw CODE_88CF5F                       ;88CF4F;
    dw CODE_88CFE7                       ;88CF51;
    dw CODE_88CFF8                       ;88CF53;
    dw CODE_88D00B                       ;88CF55;
    dw CODE_88D01E                       ;88CF57;
    dw CODE_88D068                       ;88CF59;
    dw CODE_88D07E                       ;88CF5B;
    dw CODE_88D092                       ;88CF5D;

CODE_88CF5F:
    STZ.B $18                            ;88CF5F;
    LDA.B #$3E                           ;88CF61;
    STA.B $16                            ;88CF63;
    LDA.B $0B                            ;88CF65;
    BNE CODE_88CF92                      ;88CF67;
    LDA.B #$2B                           ;88CF69;
    STA.B $11                            ;88CF6B;
    LDA.B #$00                           ;88CF6D;
    JSL.L CODE_848F07                    ;88CF6F;
    REP #$20                             ;88CF73;
    LDA.W #$0080                         ;88CF75;
    STA.B $05                            ;88CF78;
    LDA.W #$00C4                         ;88CF7A;
    STA.B $08                            ;88CF7D;
    LDA.W #$0100                         ;88CF7F;
    STA.B $1C                            ;88CF82;
    SEP #$20                             ;88CF84;
    LDA.B #$02                           ;88CF86;
    STA.B $01                            ;88CF88;
    LDA.B #$06                           ;88CF8A;
    STA.B $12                            ;88CF8C;
    JML.L CODE_8280B4                    ;88CF8E;

CODE_88CF92:
    BMI CODE_88CFB8                      ;88CF92;
    LDA.B #$2D                           ;88CF94;
    STA.B $11                            ;88CF96;
    LDA.B #$03                           ;88CF98;
    JSL.L CODE_848F07                    ;88CF9A;
    REP #$20                             ;88CF9E;
    LDA.W #$003E                         ;88CFA0;
    STA.B $08                            ;88CFA3;
    LDA.W #$0080                         ;88CFA5;
    STA.B $05                            ;88CFA8;
    SEP #$20                             ;88CFAA;
    LDA.B #$06                           ;88CFAC;
    STA.B $01                            ;88CFAE;
    LDA.B #$04                           ;88CFB0;
    STA.B $12                            ;88CFB2;
    JML.L CODE_8280B4                    ;88CFB4;

CODE_88CFB8:
    LDA.B #$29                           ;88CFB8;
    STA.B $11                            ;88CFBA;
    LDA.B #$01                           ;88CFBC;
    JSL.L CODE_848F07                    ;88CFBE;
    REP #$10                             ;88CFC2;
    LDY.W #$0080                         ;88CFC4;
    STY.B $05                            ;88CFC7;
    LDY.W #$003E                         ;88CFC9;
    STY.B $08                            ;88CFCC;
    LDY.W #$01EA                         ;88CFCE;
    JSL.L CODE_828011                    ;88CFD1;
    LDA.B #$08                           ;88CFD5;
    STA.B $01                            ;88CFD7;
    LDA.B #$04                           ;88CFD9;
    STA.B $12                            ;88CFDB;
    LDA.B #$46                           ;88CFDD;
    JSL.L CODE_8088CD                    ;88CFDF;
    JML.L CODE_8280B4                    ;88CFE3;

CODE_88CFE7:
    LDA.W $1F3F                          ;88CFE7;
    BEQ CODE_88CFF4                      ;88CFEA;
    LDA.B #$04                           ;88CFEC;
    STA.B $01                            ;88CFEE;
    LDA.B #$9C                           ;88CFF0;
    STA.B $1A                            ;88CFF2;

CODE_88CFF4:
    JML.L CODE_8280B4                    ;88CFF4;

CODE_88CFF8:
    JSL.L CODE_82825D                    ;88CFF8;
    DEC.B $1A                            ;88CFFC;
    BNE CODE_88D007                      ;88CFFE;
    LDA.B #$0A                           ;88D000;
    STA.B $01                            ;88D002;
    STZ.W $1F3F                          ;88D004;

CODE_88D007:
    JML.L CODE_8280B4                    ;88D007;

CODE_88D00B:
    JSL.L CODE_848EEA                    ;88D00B;
    LDA.B $0F                            ;88D00F;
    BPL CODE_88D01A                      ;88D011;
    LDA.B #$0C                           ;88D013;
    STA.B $01                            ;88D015;
    STZ.W $1F3F                          ;88D017;

CODE_88D01A:
    JML.L CODE_8280B4                    ;88D01A;

CODE_88D01E:
    LDA.B $0F                            ;88D01E;
    BPL CODE_88D056                      ;88D020;
    DEC.B $1A                            ;88D022;
    BNE CODE_88D052                      ;88D024;
    LDA.B #$20                           ;88D026;
    STA.B $1A                            ;88D028;
    LDA.B #$F0                           ;88D02A;
    CLC                                  ;88D02C;
    ADC.B $1B                            ;88D02D;
    REP #$30                             ;88D02F;
    AND.W #$00FF                         ;88D031;
    ASL A                                ;88D034;
    TAY                                  ;88D035;
    JSL.L CODE_828011                    ;88D036;
    SEP #$30                             ;88D03A;
    INC.B $1B                            ;88D03C;
    LDA.B $1B                            ;88D03E;
    CMP.B #$04                           ;88D040;
    BCC CODE_88D052                      ;88D042;
    LDA.B #$0E                           ;88D044;
    STA.B $01                            ;88D046;
    STZ.W $1F3F                          ;88D048;
    LDA.B #$0D                           ;88D04B;
    JSL.L CODE_848F07                    ;88D04D;
    RTL                                  ;88D051;

CODE_88D052:
    JML.L CODE_8280B4                    ;88D052;

CODE_88D056:
    JSL.L CODE_848EEA                    ;88D056;
    LDA.B $0F                            ;88D05A;
    BPL CODE_88D064                      ;88D05C;
    LDA.B #$20                           ;88D05E;
    STA.B $1A                            ;88D060;
    STZ.B $1B                            ;88D062;

CODE_88D064:
    JML.L CODE_8280B4                    ;88D064;

CODE_88D068:
    REP #$30                             ;88D068;
    LDX.B $0C                            ;88D06A;
    LDA.W $0005,X                        ;88D06C;
    STA.B $05                            ;88D06F;
    LDA.W $0008,X                        ;88D071;
    SEC                                  ;88D074;
    SBC.W #$0017                         ;88D075;
    STA.B $08                            ;88D078;
    JML.L CODE_8280B4                    ;88D07A;

CODE_88D07E:
    REP #$30                             ;88D07E;
    LDX.B $0C                            ;88D080;
    LDA.W $0005,X                        ;88D082;
    STA.B $05                            ;88D085;
    LDA.W $0008,X                        ;88D087;
    STA.B $08                            ;88D08A;
    SEP #$20                             ;88D08C;
    JML.L CODE_8280B4                    ;88D08E;

CODE_88D092:
    REP #$30                             ;88D092;
    LDX.B $0C                            ;88D094;
    LDA.W $0005,X                        ;88D096;
    STA.B $05                            ;88D099;
    LDA.W $0008,X                        ;88D09B;
    STA.B $08                            ;88D09E;
    SEP #$20                             ;88D0A0;
    LDA.W $1F42                          ;88D0A2;
    BEQ CODE_88D0B2                      ;88D0A5;
    DEC.W $1F42                          ;88D0A7;
    JSL.L CODE_848EEA                    ;88D0AA;
    JML.L CODE_8280B4                    ;88D0AE;

CODE_88D0B2:
    RTL                                  ;88D0B2;

CODE_88D0B3:
    LDX.B $01                            ;88D0B3;
    JMP.W (PTR16_88D0B8,X)               ;88D0B5;

PTR16_88D0B8:
    dw CODE_88D0BE                       ;88D0B8;
    dw CODE_88D10D                       ;88D0BA;
    dw CODE_88D123                       ;88D0BC;

CODE_88D0BE:
    LDA.B #$02                           ;88D0BE;
    STA.B $01                            ;88D0C0;
    LDA.B #$2F                           ;88D0C2;
    TSB.B $11                            ;88D0C4;
    STZ.B $18                            ;88D0C6;
    LDA.B #$3E                           ;88D0C8;
    STA.B $16                            ;88D0CA;
    LDA.B #$0B                           ;88D0CC;
    JSL.L CODE_848F07                    ;88D0CE;
    STZ.B $28                            ;88D0D2;
    LDA.B $0B                            ;88D0D4;
    CLC                                  ;88D0D6;
    ADC.B #$0C                           ;88D0D7;
    ASL A                                ;88D0D9;
    ASL A                                ;88D0DA;
    TAX                                  ;88D0DB;
    REP #$20                             ;88D0DC;
    LDA.W DATA8_86EE39,X                 ;88D0DE;
    ASL A                                ;88D0E1;
    ASL A                                ;88D0E2;
    STA.B $1C                            ;88D0E3;
    LDA.B $10                            ;88D0E5;
    ASL A                                ;88D0E7;
    ASL A                                ;88D0E8;
    LDA.W DATA8_86EE37,X                 ;88D0E9;
    BCS CODE_88D0F2                      ;88D0EC;
    EOR.W #$FFFF                         ;88D0EE;
    INC A                                ;88D0F1;

CODE_88D0F2:
    ASL A                                ;88D0F2;
    ASL A                                ;88D0F3;
    STA.B $1A                            ;88D0F4;
    LDA.W #$D7B5                         ;88D0F6;
    STA.B $20                            ;88D0F9;
    SEP #$20                             ;88D0FB;
    LDA.B #$33                           ;88D0FD;
    JSL.L CODE_8088A2                    ;88D0FF;
    LDA.B #$0A                           ;88D103;
    STA.B $27                            ;88D105;
    STA.B $26                            ;88D107;
    JML.L CODE_8280B4                    ;88D109;

CODE_88D10D:
    JSL.L CODE_848EEA                    ;88D10D;
    LDA.B $0F                            ;88D111;
    BPL CODE_88D11F                      ;88D113;
    LDA.B #$04                           ;88D115;
    STA.B $01                            ;88D117;
    LDA.B #$0C                           ;88D119;
    JSL.L CODE_848F07                    ;88D11B;

CODE_88D11F:
    JML.L CODE_8280B4                    ;88D11F;

CODE_88D123:
    JSL.L CODE_82820A                    ;88D123;
    JSL.L CODE_848EEA                    ;88D127;
    JSL.L CODE_8280B4                    ;88D12B;
    LDA.B $0E                            ;88D12F;
    BEQ CODE_88D137                      ;88D131;
    JML.L CODE_849B03                    ;88D133;

CODE_88D137:
    JML.L CODE_8283A3                    ;88D137;

CODE_88D13B:
    LDX.B $01                            ;88D13B;
    JMP.W (PTR16_88D140,X)               ;88D13D;

PTR16_88D140:
    dw CODE_88D144                       ;88D140;
    dw CODE_88D195                       ;88D142;

CODE_88D144:
    LDA.B #$02                           ;88D144;
    STA.B $01                            ;88D146;
    LDA.B $0B                            ;88D148;
    REP #$20                             ;88D14A;
    AND.W #$00FF                         ;88D14C;
    ASL A                                ;88D14F;
    ASL A                                ;88D150;
    ASL A                                ;88D151;
    ASL A                                ;88D152;
    ASL A                                ;88D153;
    ASL A                                ;88D154;
    CLC                                  ;88D155;
    ADC.W #$FC00                         ;88D156;
    STA.B $1A                            ;88D159;
    LDA.B $10                            ;88D15B;
    ASL A                                ;88D15D;
    ASL A                                ;88D15E;
    BCS CODE_88D169                      ;88D15F;
    LDA.B $1A                            ;88D161;
    EOR.W #$FFFF                         ;88D163;
    INC A                                ;88D166;
    STA.B $1A                            ;88D167;

CODE_88D169:
    LDA.W #$F800                         ;88D169;
    STA.B $1C                            ;88D16C;
    LDA.W #$D7B9                         ;88D16E;
    STA.B $20                            ;88D171;
    SEP #$20                             ;88D173;
    LDA.B #$2F                           ;88D175;
    TSB.B $11                            ;88D177;
    LDA.B #$3E                           ;88D179;
    STA.B $16                            ;88D17B;
    STZ.B $18                            ;88D17D;
    LDA.B #$02                           ;88D17F;
    STA.B $12                            ;88D181;
    LDA.B #$0E                           ;88D183;
    STA.B $26                            ;88D185;
    STA.B $27                            ;88D187;
    STZ.B $28                            ;88D189;
    LDA.B #$12                           ;88D18B;
    JSL.L CODE_848F07                    ;88D18D;
    JML.L CODE_8280B4                    ;88D191;

CODE_88D195:
    JSL.L CODE_82820A                    ;88D195;
    JSL.L CODE_848EEA                    ;88D199;
    LDA.B $0F                            ;88D19D;
    BMI CODE_88D1AD                      ;88D19F;
    JSL.L CODE_8280B4                    ;88D1A1;
    LDA.B $0E                            ;88D1A5;
    BEQ CODE_88D1AD                      ;88D1A7;
    JML.L CODE_849B03                    ;88D1A9;

CODE_88D1AD:
    JML.L CODE_8283A3                    ;88D1AD;

CODE_88D1B1:
    LDX.B $01                            ;88D1B1;
    JSR.W (PTR16_88D1C3,X)               ;88D1B3;
    JSL.L CODE_848FCA                    ;88D1B6;
    LDA.B $11                            ;88D1BA;
    AND.B #$3F                           ;88D1BC;
    ORA.B $33                            ;88D1BE;
    STA.B $11                            ;88D1C0;
    RTL                                  ;88D1C2;

PTR16_88D1C3:
    dw CODE_88D1C9                       ;88D1C3;
    dw CODE_88D214                       ;88D1C5;
    dw CODE_88D803                       ;88D1C7;

CODE_88D1C9:
    JSL.L CODE_82827D                    ;88D1C9;
    LDA.B #$51                           ;88D1CD;
    STA.B $10                            ;88D1CF;
    STZ.B $18                            ;88D1D1;
    LDA.B #$06                           ;88D1D3;
    STA.B $12                            ;88D1D5;
    STA.B $30                            ;88D1D7;
    LDA.B #$40                           ;88D1D9;
    STA.B $33                            ;88D1DB;
    STZ.B $2F                            ;88D1DD;
    LDA.B #$7F                           ;88D1DF;
    STA.B $27                            ;88D1E1;
    STZ.B $3B                            ;88D1E3;
    STZ.B $17                            ;88D1E5;
    REP #$20                             ;88D1E7;
    LDA.W #$D7BD                         ;88D1E9;
    STA.B $20                            ;88D1EC;
    LDA.W #$A96E                         ;88D1EE;
    STA.B $31                            ;88D1F1;
    LDA.W #$0040                         ;88D1F3;
    STA.B $1E                            ;88D1F6;
    LDA.W #$0880                         ;88D1F8;
    STA.B $05                            ;88D1FB;
    LDA.W #$0500                         ;88D1FD;
    STA.B $08                            ;88D200;
    SEP #$20                             ;88D202;
    LDA.B $0B                            ;88D204;
    STA.B $02                            ;88D206;
    LDA.W $1F7D                          ;88D208;
    CMP.B #$02                           ;88D20B;
    BNE CODE_88D213                      ;88D20D;
    LDA.B #$0E                           ;88D20F;
    STA.B $02                            ;88D211;

CODE_88D213:
    RTS                                  ;88D213;

CODE_88D214:
    LDX.B $02                            ;88D214;
    JSR.W (PTR16_88D228,X)               ;88D216;
    LDA.B $3B                            ;88D219;
    BIT.B #$20                           ;88D21B;
    BNE CODE_88D223                      ;88D21D;
    JSL.L CODE_8491BE                    ;88D21F;

CODE_88D223:
    JSL.L CODE_8280B4                    ;88D223;
    RTS                                  ;88D227;

PTR16_88D228:
    dw CODE_88D238                       ;88D228;
    dw CODE_88D280                       ;88D22A;
    dw CODE_88D301                       ;88D22C;
    dw CODE_88D352                       ;88D22E;
    dw CODE_88D3C7                       ;88D230;
    dw CODE_88D424                       ;88D232;
    dw CODE_88D531                       ;88D234;
    dw CODE_88D672                       ;88D236;

CODE_88D238:
    LDX.B $03                            ;88D238;
    JMP.W (PTR16_88D23D,X)               ;88D23A;

PTR16_88D23D:
    dw CODE_88D243                       ;88D23D;
    dw CODE_88D25C                       ;88D23F;
    dw CODE_88D271                       ;88D241;

CODE_88D243:
    LDA.B #$02                           ;88D243;
    STA.B $03                            ;88D245;
    LDA.B #$00                           ;88D247;
    STA.B $1C                            ;88D249;
    LDA.B #$F8                           ;88D24B;
    STA.B $1D                            ;88D24D;
    LDA.B #$0E                           ;88D24F;
    JSL.L CODE_8088A2                    ;88D251;
    LDA.B #$0E                           ;88D255;
    JSL.L CODE_848F07                    ;88D257;
    RTS                                  ;88D25B;

CODE_88D25C:
    LDA.B $2B                            ;88D25C;
    BIT.B #$04                           ;88D25E;
    BEQ CODE_88D26C                      ;88D260;
    LDA.B #$04                           ;88D262;
    STA.B $03                            ;88D264;
    LDA.B #$0D                           ;88D266;
    JSL.L CODE_848F07                    ;88D268;

CODE_88D26C:
    JSL.L CODE_82825D                    ;88D26C;
    RTS                                  ;88D270;

CODE_88D271:
    LDA.B $0F                            ;88D271;
    BPL CODE_88D27B                      ;88D273;
    LDA.B #$02                           ;88D275;
    STA.B $02                            ;88D277;
    STZ.B $03                            ;88D279;

CODE_88D27B:
    JSL.L CODE_848EEA                    ;88D27B;
    RTS                                  ;88D27F;

CODE_88D280:
    LDX.B $03                            ;88D280;
    JMP.W (PTR16_88D285,X)               ;88D282;

PTR16_88D285:
    dw CODE_88D28B                       ;88D285;
    dw CODE_88D2BE                       ;88D287;
    dw CODE_88D2F5                       ;88D289;

CODE_88D28B:
    LDA.B #$02                           ;88D28B;
    STA.B $03                            ;88D28D;
    LDA.W $1F3D                          ;88D28F;
    STA.B $3C                            ;88D292;
    LDA.B #$02                           ;88D294;
    JSL.L CODE_848F07                    ;88D296;
    LDA.B #$80                           ;88D29A;
    STA.W $0000                          ;88D29C;
    LDA.B #$50                           ;88D29F;
    STA.W $0002                          ;88D2A1;
    LDA.B #$58                           ;88D2A4;
    STA.W $0004                          ;88D2A6;
    LDA.B #$30                           ;88D2A9;
    STA.W $0006                          ;88D2AB;
    LDA.B #$15                           ;88D2AE;
    STA.W $0008                          ;88D2B0;
    JSL.L CODE_83F74A                    ;88D2B3;
    LDA.B #$08                           ;88D2B7;
    JSL.L CODE_88D838                    ;88D2B9;
    RTS                                  ;88D2BD;

CODE_88D2BE:
    LDA.W $1F3C                          ;88D2BE;
    BEQ CODE_88D2EF                      ;88D2C1;
    CMP.B #$02                           ;88D2C3;
    BNE CODE_88D2D2                      ;88D2C5;
    LDA.B #$04                           ;88D2C7;
    STA.B $03                            ;88D2C9;
    LDA.B #$01                           ;88D2CB;
    JSL.L CODE_848F07                    ;88D2CD;
    RTS                                  ;88D2D1;

CODE_88D2D2:
    LDA.W $1F3D                          ;88D2D2;
    CMP.B $3C                            ;88D2D5;
    BEQ CODE_88D2EB                      ;88D2D7;
    LDA.B $3C                            ;88D2D9;
    BNE CODE_88D2E5                      ;88D2DB;
    LDA.B #$01                           ;88D2DD;
    JSL.L CODE_848F07                    ;88D2DF;
    BRA CODE_88D2EB                      ;88D2E3;

CODE_88D2E5:
    LDA.B #$02                           ;88D2E5;
    JSL.L CODE_848F07                    ;88D2E7;

CODE_88D2EB:
    JSL.L CODE_848EEA                    ;88D2EB;

CODE_88D2EF:
    LDA.W $1F3D                          ;88D2EF;
    STA.B $3C                            ;88D2F2;
    RTS                                  ;88D2F4;

CODE_88D2F5:
    LDA.W $1F2C                          ;88D2F5;
    BMI CODE_88D300                      ;88D2F8;
    LDA.B #$04                           ;88D2FA;
    STA.B $02                            ;88D2FC;
    STZ.B $03                            ;88D2FE;

CODE_88D300:
    RTS                                  ;88D300;

CODE_88D301:
    LDX.B $03                            ;88D301;
    JMP.W (PTR16_88D306,X)               ;88D303;

PTR16_88D306:
    dw CODE_88D30C                       ;88D306;
    dw CODE_88D327                       ;88D308;
    dw CODE_88D336                       ;88D30A;

CODE_88D30C:
    LDA.B #$02                           ;88D30C;
    STA.B $03                            ;88D30E;
    LDA.B #$00                           ;88D310;
    STA.B $1A                            ;88D312;
    LDA.B #$04                           ;88D314;
    STA.B $1B                            ;88D316;
    LDA.B #$20                           ;88D318;
    TSB.B $3B                            ;88D31A;
    LDA.B #$50                           ;88D31C;
    STA.B $34                            ;88D31E;
    LDA.B #$01                           ;88D320;
    JSL.L CODE_848F07                    ;88D322;
    RTS                                  ;88D326;

CODE_88D327:
    DEC.B $34                            ;88D327;
    BNE CODE_88D335                      ;88D329;
    LDA.B #$04                           ;88D32B;
    STA.B $03                            ;88D32D;
    LDA.B #$00                           ;88D32F;
    JSL.L CODE_848F07                    ;88D331;

CODE_88D335:
    RTS                                  ;88D335;

CODE_88D336:
    REP #$20                             ;88D336;
    LDA.B $05                            ;88D338;
    CMP.W #$0910                         ;88D33A;
    SEP #$20                             ;88D33D;
    BCC CODE_88D349                      ;88D33F;
    JSL.L CODE_849FFE                    ;88D341;
    LDA.B #$04                           ;88D345;
    STA.B $01                            ;88D347;

CODE_88D349:
    JSL.L CODE_82823E                    ;88D349;
    JSL.L CODE_848EEA                    ;88D34D;
    RTS                                  ;88D351;

CODE_88D352:
    LDX.B $03                            ;88D352;
    JMP.W (PTR16_88D357,X)               ;88D354;

PTR16_88D357:
    dw CODE_88D35D                       ;88D357;
    dw CODE_88D38A                       ;88D359;
    dw CODE_88D39B                       ;88D35B;

CODE_88D35D:
    LDA.W $1F7D                          ;88D35D;
    BEQ CODE_88D367                      ;88D360;
    LDA.B #$04                           ;88D362;
    STA.B $01                            ;88D364;
    RTS                                  ;88D366;

CODE_88D367:
    LDA.B #$02                           ;88D367;
    STA.B $03                            ;88D369;
    LDA.B #$80                           ;88D36B;
    STA.B $05                            ;88D36D;
    LDA.B #$0A                           ;88D36F;
    STA.B $06                            ;88D371;
    STZ.B $35                            ;88D373;
    LDY.B #$02                           ;88D375;
    LDA.B #$F6                           ;88D377;
    JSL.L CODE_80887F                    ;88D379;
    LDA.B #$01                           ;88D37D;
    STA.B $34                            ;88D37F;
    LDA.B #$B4                           ;88D381;
    STA.B $36                            ;88D383;
    JSL.L CODE_849FE6                    ;88D385;
    RTS                                  ;88D389;

CODE_88D38A:
    REP #$20                             ;88D38A;
    LDA.W $0BAD                          ;88D38C;
    CMP.W #$0900                         ;88D38F;
    SEP #$20                             ;88D392;
    BCC CODE_88D39A                      ;88D394;
    LDA.B #$04                           ;88D396;
    STA.B $03                            ;88D398;

CODE_88D39A:
    RTS                                  ;88D39A;

CODE_88D39B:
    LDA.B $36                            ;88D39B;
    BEQ CODE_88D3A7                      ;88D39D;
    DEC.B $36                            ;88D39F;
    BNE CODE_88D3A7                      ;88D3A1;
    JSL.L CODE_849FFE                    ;88D3A3;

CODE_88D3A7:
    DEC.B $34                            ;88D3A7;
    BNE CODE_88D3C6                      ;88D3A9;
    LDX.B $35                            ;88D3AB;
    LDA.W DATA8_86D7C7,X                 ;88D3AD;
    CMP.B #$FF                           ;88D3B0;
    BNE CODE_88D3B9                      ;88D3B2;
    LDA.B #$04                           ;88D3B4;
    STA.B $01                            ;88D3B6;
    RTS                                  ;88D3B8;

CODE_88D3B9:
    JSL.L CODE_8088A2                    ;88D3B9;
    LDA.W DATA8_86D7C8,X                 ;88D3BD;
    STA.B $34                            ;88D3C0;
    INC.B $35                            ;88D3C2;
    INC.B $35                            ;88D3C4;

CODE_88D3C6:
    RTS                                  ;88D3C6;

CODE_88D3C7:
    LDX.B $03                            ;88D3C7;
    JMP.W (PTR16_88D3CC,X)               ;88D3C9;

PTR16_88D3CC:
    dw CODE_88D3D4                       ;88D3CC;
    dw CODE_88D3F6                       ;88D3CE;
    dw CODE_88D402                       ;88D3D0;
    dw CODE_88D418                       ;88D3D2;

CODE_88D3D4:
    LDA.B #$02                           ;88D3D4;
    STA.B $03                            ;88D3D6;
    REP #$20                             ;88D3D8;
    LDA.W #$0B60                         ;88D3DA;
    STA.B $05                            ;88D3DD;
    LDA.W #$058E                         ;88D3DF;
    STA.B $08                            ;88D3E2;
    SEP #$20                             ;88D3E4;
    STZ.B $33                            ;88D3E6;
    LDA.W $1F7D                          ;88D3E8;
    CMP.B #$01                           ;88D3EB;
    BEQ CODE_88D409                      ;88D3ED;
    LDA.B #$11                           ;88D3EF;
    JSL.L CODE_848F07                    ;88D3F1;
    RTS                                  ;88D3F5;

CODE_88D3F6:
    LDA.W $1F3C                          ;88D3F6;
    CMP.B #$03                           ;88D3F9;
    BNE CODE_88D401                      ;88D3FB;
    LDA.B #$04                           ;88D3FD;
    STA.B $03                            ;88D3FF;

CODE_88D401:
    RTS                                  ;88D401;

CODE_88D402:
    LDA.W $1F3C                          ;88D402;
    CMP.B #$04                           ;88D405;
    BNE CODE_88D413                      ;88D407;

CODE_88D409:
    LDA.B #$06                           ;88D409;
    STA.B $03                            ;88D40B;
    LDA.B #$11                           ;88D40D;
    JSL.L CODE_848F07                    ;88D40F;

CODE_88D413:
    JSL.L CODE_848EEA                    ;88D413;
    RTS                                  ;88D417;

CODE_88D418:
    LDA.W $1F40                          ;88D418;
    BEQ CODE_88D423                      ;88D41B;
    LDA.B #$0A                           ;88D41D;
    STA.B $02                            ;88D41F;
    STZ.B $03                            ;88D421;

CODE_88D423:
    RTS                                  ;88D423;

CODE_88D424:
    LDX.B $03                            ;88D424;
    JMP.W (PTR16_88D429,X)               ;88D426;

PTR16_88D429:
    dw CODE_88D437                       ;88D429;
    dw CODE_88D450                       ;88D42B;
    dw CODE_88D470                       ;88D42D;
    dw CODE_88D483                       ;88D42F;
    dw CODE_88D4C9                       ;88D431;
    dw CODE_88D500                       ;88D433;
    dw CODE_88D522                       ;88D435;

CODE_88D437:
    LDA.B #$02                           ;88D437;
    STA.B $03                            ;88D439;
    LDA.B #$88                           ;88D43B;
    STA.B $08                            ;88D43D;
    LDA.B #$05                           ;88D43F;
    STA.B $09                            ;88D441;
    LDA.B #$25                           ;88D443;
    JSL.L CODE_8087A2                    ;88D445;
    LDA.B #$06                           ;88D449;
    JSL.L CODE_848F07                    ;88D44B;
    RTS                                  ;88D44F;

CODE_88D450:
    LDA.B $0F                            ;88D450;
    BPL CODE_88D46B                      ;88D452;
    LDA.B #$04                           ;88D454;
    STA.B $03                            ;88D456;
    REP #$20                             ;88D458;
    LDA.W #$FF80                         ;88D45A;
    STA.B $1A                            ;88D45D;
    LDA.W #$0674                         ;88D45F;
    STA.B $1C                            ;88D462;
    LDA.W #$0040                         ;88D464;
    STA.B $1E                            ;88D467;
    SEP #$20                             ;88D469;

CODE_88D46B:
    JSL.L CODE_848EEA                    ;88D46B;
    RTS                                  ;88D46F;

CODE_88D470:
    JSL.L CODE_828174                    ;88D470;
    LDA.B $1D                            ;88D474;
    BPL CODE_88D482                      ;88D476;
    LDA.B #$06                           ;88D478;
    STA.B $03                            ;88D47A;
    LDA.B #$07                           ;88D47C;
    JSL.L CODE_848F07                    ;88D47E;

CODE_88D482:
    RTS                                  ;88D482;

CODE_88D483:
    REP #$20                             ;88D483;
    LDA.W #$0570                         ;88D485;
    CMP.B $08                            ;88D488;
    BCS CODE_88D4C2                      ;88D48A;
    STA.B $08                            ;88D48C;
    SEP #$20                             ;88D48E;
    LDA.B #$08                           ;88D490;
    STA.B $03                            ;88D492;
    LDA.W $1F3D                          ;88D494;
    STA.B $3C                            ;88D497;
    LDA.B #$08                           ;88D499;
    JSL.L CODE_848F07                    ;88D49B;
    LDA.B #$80                           ;88D49F;
    STA.W $0000                          ;88D4A1;
    LDA.B #$50                           ;88D4A4;
    STA.W $0002                          ;88D4A6;
    LDA.B #$58                           ;88D4A9;
    STA.W $0004                          ;88D4AB;
    LDA.B #$30                           ;88D4AE;
    STA.W $0006                          ;88D4B0;
    LDA.B #$14                           ;88D4B3;
    STA.W $0008                          ;88D4B5;
    JSL.L CODE_83F74A                    ;88D4B8;
    LDA.B #$05                           ;88D4BC;
    JSL.L CODE_88D838                    ;88D4BE;

CODE_88D4C2:
    SEP #$20                             ;88D4C2;
    JSL.L CODE_828174                    ;88D4C4;
    RTS                                  ;88D4C8;

CODE_88D4C9:
    LDA.W $1F3C                          ;88D4C9;
    BEQ CODE_88D4FA                      ;88D4CC;
    CMP.B #$02                           ;88D4CE;
    BNE CODE_88D4DD                      ;88D4D0;
    LDA.B #$0A                           ;88D4D2;
    STA.B $03                            ;88D4D4;
    LDA.B #$0F                           ;88D4D6;
    JSL.L CODE_848F07                    ;88D4D8;
    RTS                                  ;88D4DC;

CODE_88D4DD:
    LDA.W $1F3D                          ;88D4DD;
    CMP.B $3C                            ;88D4E0;
    BEQ CODE_88D4F6                      ;88D4E2;
    LDA.B $3C                            ;88D4E4;
    BNE CODE_88D4F0                      ;88D4E6;
    LDA.B #$0F                           ;88D4E8;
    JSL.L CODE_848F07                    ;88D4EA;
    BRA CODE_88D4F6                      ;88D4EE;

CODE_88D4F0:
    LDA.B #$08                           ;88D4F0;
    JSL.L CODE_848F07                    ;88D4F2;

CODE_88D4F6:
    JSL.L CODE_848EEA                    ;88D4F6;

CODE_88D4FA:
    LDA.W $1F3D                          ;88D4FA;
    STA.B $3C                            ;88D4FD;
    RTS                                  ;88D4FF;

CODE_88D500:
    LDA.W $1F2C                          ;88D500;
    BMI CODE_88D521                      ;88D503;
    LDA.B #$0C                           ;88D505;
    STA.B $03                            ;88D507;
    LDY.B #$03                           ;88D509;
    LDA.B #$F6                           ;88D50B;
    JSL.L CODE_80887F                    ;88D50D;
    LDA.B #$78                           ;88D511;
    STA.B $34                            ;88D513;
    LDA.B #$03                           ;88D515;
    JSL.L CODE_8088A2                    ;88D517;
    LDA.B #$09                           ;88D51B;
    JSL.L CODE_848F07                    ;88D51D;

CODE_88D521:
    RTS                                  ;88D521;

CODE_88D522:
    DEC.B $34                            ;88D522;
    BNE CODE_88D52C                      ;88D524;
    LDA.B #$0C                           ;88D526;
    STA.B $02                            ;88D528;
    STZ.B $03                            ;88D52A;

CODE_88D52C:
    JSL.L CODE_848EEA                    ;88D52C;
    RTS                                  ;88D530;

CODE_88D531:
    LDX.B $03                            ;88D531;
    JMP.W (PTR16_88D536,X)               ;88D533;

PTR16_88D536:
    dw CODE_88D544                       ;88D536;
    dw CODE_88D555                       ;88D538;
    dw CODE_88D594                       ;88D53A;
    dw CODE_88D5CD                       ;88D53C;
    dw CODE_88D643                       ;88D53E;
    dw CODE_88D65A                       ;88D540;
    dw CODE_88D661                       ;88D542;

CODE_88D544:
    LDA.B #$02                           ;88D544;
    STA.B $03                            ;88D546;
    LDY.B #$02                           ;88D548;
    LDA.B #$F6                           ;88D54A;
    JSL.L CODE_80887F                    ;88D54C;
    LDA.B #$FF                           ;88D550;
    STA.B $34                            ;88D552;
    RTS                                  ;88D554;

CODE_88D555:
    LDA.W $0B9C                          ;88D555;
    AND.B #$1F                           ;88D558;
    BNE CODE_88D562                      ;88D55A;
    LDA.B #$20                           ;88D55C;
    JSL.L CODE_84A333                    ;88D55E;

CODE_88D562:
    DEC.B $34                            ;88D562;
    BNE CODE_88D56A                      ;88D564;
    LDA.B #$04                           ;88D566;
    STA.B $03                            ;88D568;

CODE_88D56A:
    REP #$20                             ;88D56A;
    LDA.W #$FFE0                         ;88D56C;
    STA.W $0000                          ;88D56F;
    LDA.W #$FFF0                         ;88D572;
    STA.W $0002                          ;88D575;
    LDA.W #$003F                         ;88D578;
    STA.W $0004                          ;88D57B;
    LDA.W #$001F                         ;88D57E;
    STA.W $0006                          ;88D581;
    SEP #$20                             ;88D584;
    LDA.B #$03                           ;88D586;
    STA.W $0008                          ;88D588;
    JSL.L CODE_84A4C6                    ;88D58B;
    JSL.L CODE_848EEA                    ;88D58F;
    RTS                                  ;88D593;

CODE_88D594:
    LDA.B #$06                           ;88D594;
    STA.B $03                            ;88D596;
    PHB                                  ;88D598;
    REP #$30                             ;88D599;
    LDX.W #$D526                         ;88D59B;
    LDY.W #$0AA1                         ;88D59E;
    LDA.W #$0006                         ;88D5A1;
    MVN $00,$86                          ;88D5A4;
    LDX.W #$D52D                         ;88D5A7;
    LDY.W #$0B22                         ;88D5AA;
    LDA.W #$0009                         ;88D5AD;
    MVN $00,$86                          ;88D5B0;
    JSR.W CODE_88ADFC                    ;88D5B3;
    SEP #$30                             ;88D5B6;
    PLB                                  ;88D5B8;
    LDA.B #$3F                           ;88D5B9;
    STA.W $00CA                          ;88D5BB;
    STZ.W $00CB                          ;88D5BE;
    LDA.B #$01                           ;88D5C1;
    STA.B $3D                            ;88D5C3;
    JSR.W CODE_88AD92                    ;88D5C5;
    LDA.B #$C0                           ;88D5C8;
    STA.B $34                            ;88D5CA;
    RTS                                  ;88D5CC;

CODE_88D5CD:
    LDA.W $0B9C                          ;88D5CD;
    AND.B #$01                           ;88D5D0;
    BNE CODE_88D5DC                      ;88D5D2;
    LDA.B $3D                            ;88D5D4;
    CMP.B #$1F                           ;88D5D6;
    BEQ CODE_88D5DC                      ;88D5D8;
    INC.B $3D                            ;88D5DA;

CODE_88D5DC:
    LDA.B $34                            ;88D5DC;
    CMP.B #$B0                           ;88D5DE;
    BNE CODE_88D5E8                      ;88D5E0;
    LDA.B #$21                           ;88D5E2;
    JSL.L CODE_8088A2                    ;88D5E4;

CODE_88D5E8:
    DEC.B $34                            ;88D5E8;
    LDA.B $34                            ;88D5EA;
    BNE CODE_88D618                      ;88D5EC;
    LDA.B #$0C                           ;88D5EE;
    STA.B $03                            ;88D5F0;
    LDA.B #$1F                           ;88D5F2;
    STA.W $00CB                          ;88D5F4;
    STA.W $00CC                          ;88D5F7;
    STA.W $00CD                          ;88D5FA;
    STZ.W $0AA1                          ;88D5FD;
    LDA.B #$23                           ;88D600;
    JSL.L CODE_8087A2                    ;88D602;
    LDY.B #$03                           ;88D606;
    LDA.B #$F5                           ;88D608;
    JSL.L CODE_80887F                    ;88D60A;
    LDA.B #$0A                           ;88D60E;
    STA.W $1F08                          ;88D610;
    JSL.L CODE_80B087                    ;88D613;
    RTS                                  ;88D617;

CODE_88D618:
    CMP.B #$B0                           ;88D618;
    BCC CODE_88D61F                      ;88D61A;
    JMP.W CODE_88AD92                    ;88D61C;

CODE_88D61F:
    CMP.B #$AF                           ;88D61F;
    BNE CODE_88D63C                      ;88D621;
    LDA.B #$0B                           ;88D623;
    JSL.L CODE_848F07                    ;88D625;
    REP #$20                             ;88D629;
    LDA.W #$0200                         ;88D62B;
    STA.B $1A                            ;88D62E;
    LDA.W #$0200                         ;88D630;
    STA.B $1C                            ;88D633;
    LDA.W #$0010                         ;88D635;
    STA.B $1E                            ;88D638;
    SEP #$20                             ;88D63A;

CODE_88D63C:
    JSL.L CODE_828174                    ;88D63C;
    JMP.W CODE_88ADB9                    ;88D640;

CODE_88D643:
    LDA.W $0B9C                          ;88D643;
    AND.B #$01                           ;88D646;
    BNE CODE_88D659                      ;88D648;
    DEC.W $00CB                          ;88D64A;
    DEC.W $00CC                          ;88D64D;
    DEC.W $00CD                          ;88D650;
    BNE CODE_88D659                      ;88D653;
    LDA.B #$0A                           ;88D655;
    STA.B $03                            ;88D657;

CODE_88D659:
    RTS                                  ;88D659;

CODE_88D65A:
    LDA.B #$0E                           ;88D65A;
    STA.B $02                            ;88D65C;
    STZ.B $03                            ;88D65E;
    RTS                                  ;88D660;

CODE_88D661:
    LDA.W $0040                          ;88D661;
    BNE CODE_88D671                      ;88D664;
    LDA.B #$08                           ;88D666;
    STA.B $03                            ;88D668;
    INC.W $1F42                          ;88D66A;
    JSL.L CODE_88D808                    ;88D66D;

CODE_88D671:
    RTS                                  ;88D671;

CODE_88D672:
    LDX.B $03                            ;88D672;
    JMP.W (PTR16_88D677,X)               ;88D674;

PTR16_88D677:
    dw CODE_88D685                       ;88D677;
    dw CODE_88D6A4                       ;88D679;
    dw CODE_88D701                       ;88D67B;
    dw CODE_88D714                       ;88D67D;
    dw CODE_88D755                       ;88D67F;
    dw CODE_88D78C                       ;88D681;
    dw CODE_88D7B5                       ;88D683;

CODE_88D685:
    LDA.B #$02                           ;88D685;
    STA.B $03                            ;88D687;
    STZ.B $33                            ;88D689;
    LDA.B #$20                           ;88D68B;
    TSB.B $3B                            ;88D68D;
    REP #$20                             ;88D68F;
    LDA.W #$0BE4                         ;88D691;
    STA.B $05                            ;88D694;
    LDA.W #$05A7                         ;88D696;
    STA.B $08                            ;88D699;
    SEP #$20                             ;88D69B;
    LDA.B #$0A                           ;88D69D;
    JSL.L CODE_848F07                    ;88D69F;
    RTS                                  ;88D6A3;

CODE_88D6A4:
    REP #$20                             ;88D6A4;
    LDA.W $0BAD                          ;88D6A6;
    CMP.W #$0BB8                         ;88D6A9;
    SEP #$20                             ;88D6AC;
    BCC CODE_88D6FC                      ;88D6AE;
    LDA.B #$26                           ;88D6B0;
    JSL.L CODE_8087A2                    ;88D6B2;
    JSL.L CODE_849FE6                    ;88D6B6;
    LDA.B #$04                           ;88D6BA;
    STA.B $03                            ;88D6BC;
    STA.W $1F31                          ;88D6BE;
    STA.W $1F3B                          ;88D6C1;
    STA.W $1F49                          ;88D6C4;
    STZ.W $0BDB                          ;88D6C7;
    LDA.B #$04                           ;88D6CA;
    STA.W $1F12                          ;88D6CC;
    LDA.B #$03                           ;88D6CF;
    STA.W $0C0F                          ;88D6D1;
    LDX.B #$30                           ;88D6D4;
    LDY.B #$40                           ;88D6D6;
    JSL.L CODE_828000                    ;88D6D8;
    JSL.L CODE_84A2A7                    ;88D6DC;
    LDA.B #$01                           ;88D6E0;
    STA.W $0BB6                          ;88D6E2;
    REP #$10                             ;88D6E5;
    LDY.W #$0100                         ;88D6E7;
    JSL.L CODE_828011                    ;88D6EA;
    LDX.W #$0B38                         ;88D6EE;
    STX.W $1E5E                          ;88D6F1;
    SEP #$10                             ;88D6F4;
    LDA.B #$0B                           ;88D6F6;
    JSL.L CODE_848F07                    ;88D6F8;

CODE_88D6FC:
    JSL.L CODE_848EEA                    ;88D6FC;
    RTS                                  ;88D700;

CODE_88D701:
    LDA.W $0BD3                          ;88D701;
    BIT.B #$04                           ;88D704;
    BEQ CODE_88D713                      ;88D706;
    LDA.B #$06                           ;88D708;
    STA.B $03                            ;88D70A;
    STZ.W $1F49                          ;88D70C;
    JSL.L CODE_84A026                    ;88D70F;

CODE_88D713:
    RTS                                  ;88D713;

CODE_88D714:
    REP #$20                             ;88D714;
    LDA.W $1E56                          ;88D716;
    CMP.W $1E5E                          ;88D719;
    SEP #$20                             ;88D71C;
    BNE CODE_88D754                      ;88D71E;
    LDA.B #$08                           ;88D720;
    STA.B $03                            ;88D722;
    LDA.W $1F3D                          ;88D724;
    STA.B $3C                            ;88D727;
    LDA.B #$80                           ;88D729;
    STA.W $0000                          ;88D72B;
    LDA.B #$50                           ;88D72E;
    STA.W $0002                          ;88D730;
    LDA.B #$58                           ;88D733;
    STA.W $0004                          ;88D735;
    LDA.B #$30                           ;88D738;
    STA.W $0006                          ;88D73A;
    LDX.B #$1C                           ;88D73D;
    LDA.W $1F99                          ;88D73F;
    BIT.B #$02                           ;88D742;
    BNE CODE_88D747                      ;88D744;
    INX                                  ;88D746;

CODE_88D747:
    STX.W $0008                          ;88D747;
    JSL.L CODE_83F74A                    ;88D74A;
    LDA.B #$06                           ;88D74E;
    JSL.L CODE_88D838                    ;88D750;

CODE_88D754:
    RTS                                  ;88D754;

CODE_88D755:
    LDA.W $1F3C                          ;88D755;
    BEQ CODE_88D786                      ;88D758;
    CMP.B #$02                           ;88D75A;
    BNE CODE_88D769                      ;88D75C;
    LDA.B #$0A                           ;88D75E;
    STA.B $03                            ;88D760;
    LDA.B #$0C                           ;88D762;
    JSL.L CODE_848F07                    ;88D764;
    RTS                                  ;88D768;

CODE_88D769:
    LDA.W $1F3D                          ;88D769;
    CMP.B $3C                            ;88D76C;
    BEQ CODE_88D782                      ;88D76E;
    LDA.B $3C                            ;88D770;
    BNE CODE_88D77C                      ;88D772;
    LDA.B #$0A                           ;88D774;
    JSL.L CODE_848F07                    ;88D776;
    BRA CODE_88D782                      ;88D77A;

CODE_88D77C:
    LDA.B #$0B                           ;88D77C;
    JSL.L CODE_848F07                    ;88D77E;

CODE_88D782:
    JSL.L CODE_848EEA                    ;88D782;

CODE_88D786:
    LDA.W $1F3D                          ;88D786;
    STA.B $3C                            ;88D789;
    RTS                                  ;88D78B;

CODE_88D78C:
    LDA.B $0F                            ;88D78C;
    BPL CODE_88D7A3                      ;88D78E;
    LDA.B #$0C                           ;88D790;
    STA.B $03                            ;88D792;
    LDY.B #$03                           ;88D794;
    LDA.B #$F6                           ;88D796;
    JSL.L CODE_80887F                    ;88D798;
    LDA.B #$3C                           ;88D79C;
    STA.B $34                            ;88D79E;
    JMP.W CODE_88D827                    ;88D7A0;

CODE_88D7A3:
    LDA.W $1F2C                          ;88D7A3;
    BMI CODE_88D7B4                      ;88D7A6;
    LDA.B #$01                           ;88D7A8;
    STA.W $1F3B                          ;88D7AA;
    STA.W $1F31                          ;88D7AD;
    JSL.L CODE_848EEA                    ;88D7B0;

CODE_88D7B4:
    RTS                                  ;88D7B4;

CODE_88D7B5:
    DEC.B $34                            ;88D7B5;
    BNE CODE_88D802                      ;88D7B7;
    LDA.W $1F99                          ;88D7B9;
    BIT.B #$02                           ;88D7BC;
    BEQ CODE_88D7CC                      ;88D7BE;
    JSL.L CODE_849FFE                    ;88D7C0;
    STZ.W $1F31                          ;88D7C4;
    STZ.W $1F3B                          ;88D7C7;
    BRA CODE_88D7E6                      ;88D7CA;

CODE_88D7CC:
    LDA.B #$02                           ;88D7CC;
    TSB.W $1F99                          ;88D7CE;
    INC.W $0C38                          ;88D7D1;
    STZ.W $0C42                          ;88D7D4;
    STZ.W $0C43                          ;88D7D7;
    STZ.W $0C39                          ;88D7DA;
    LDA.B #$5D                           ;88D7DD;
    STA.W $0C48                          ;88D7DF;
    JSL.L CODE_84A038                    ;88D7E2;

CODE_88D7E6:
    LDA.B #$04                           ;88D7E6;
    STA.B $01                            ;88D7E8;
    LDA.B #$1A                           ;88D7EA;
    JSL.L CODE_8087A2                    ;88D7EC;
    LDA.B #$03                           ;88D7F0;
    LDA.B #$F5                           ;88D7F2;
    JSL.L CODE_80887F                    ;88D7F4;
    LDA.B #$03                           ;88D7F8;
    STA.W $1F7D                          ;88D7FA;
    LDA.B #$02                           ;88D7FD;
    STA.W $1F81                          ;88D7FF;

CODE_88D802:
    RTS                                  ;88D802;

CODE_88D803:
    JSL.L CODE_828398                    ;88D803;
    RTS                                  ;88D807;

CODE_88D808:
    JSL.L CODE_828321                    ;88D808;
    BNE CODE_88D824                      ;88D80C;
    INC.W $0000,X                        ;88D80E;
    LDA.B #$69                           ;88D811;
    STA.W $000A,X                        ;88D813;
    REP #$20                             ;88D816;
    LDA.W #$0B30                         ;88D818;
    STA.W $0005,X                        ;88D81B;
    LDA.W #$059B                         ;88D81E;
    STA.W $0008,X                        ;88D821;

CODE_88D824:
    SEP #$30                             ;88D824;
    RTL                                  ;88D826;

CODE_88D827:
    JSL.L CODE_8282D3                    ;88D827;
    BNE CODE_88D835                      ;88D82B;
    INC.W $0000,X                        ;88D82D;
    LDA.B #$42                           ;88D830;
    STA.W $000A,X                        ;88D832;

CODE_88D835:
    SEP #$10                             ;88D835;
    RTS                                  ;88D837;

CODE_88D838:
    STA.W $0000                          ;88D838;
    JSL.L CODE_828321                    ;88D83B;
    BNE CODE_88D84F                      ;88D83F;
    INC.W $0000,X                        ;88D841;
    LDA.B #$3C                           ;88D844;
    STA.W $000A,X                        ;88D846;
    LDA.W $0000                          ;88D849;
    STA.W $000B,X                        ;88D84C;

CODE_88D84F:
    SEP #$10                             ;88D84F;
    RTL                                  ;88D851;

CODE_88D852:
    LDX.B $01                            ;88D852;
    JMP.W (PTR16_88D857,X)               ;88D854;

PTR16_88D857:
    dw CODE_88D85D                       ;88D857;
    dw CODE_88D87F                       ;88D859;
    dw CODE_88D88F                       ;88D85B;

CODE_88D85D:
    LDA.B #$02                           ;88D85D;
    STA.B $01                            ;88D85F;
    STZ.B $18                            ;88D861;
    STZ.B $12                            ;88D863;
    STZ.B $11                            ;88D865;
    LDA.B #$AA                           ;88D867;
    STA.B $16                            ;88D869;
    REP #$20                             ;88D86B;
    LDA.W #$0BE4                         ;88D86D;
    STA.B $05                            ;88D870;
    LDA.W #$05A7                         ;88D872;
    STA.B $08                            ;88D875;
    SEP #$20                             ;88D877;
    LDA.B #$00                           ;88D879;
    JSL.L CODE_848F07                    ;88D87B;

CODE_88D87F:
    LDA.B $0F                            ;88D87F;
    BPL CODE_88D887                      ;88D881;
    LDA.B #$04                           ;88D883;
    STA.B $01                            ;88D885;

CODE_88D887:
    JSL.L CODE_848EEA                    ;88D887;
    JML.L CODE_8280B4                    ;88D88B;

CODE_88D88F:
    LDA.B #$66                           ;88D88F;
    STA.B $0A                            ;88D891;
    JSL.L CODE_84A1D0                    ;88D893;
    LDA.B #$42                           ;88D897;
    STA.B $0A                            ;88D899;
    TYA                                  ;88D89B;
    BNE CODE_88D887                      ;88D89C;
    JML.L CODE_828398                    ;88D89E;

CODE_88D8A2:
    LDX.B $01                            ;88D8A2;
    JSR.W (PTR16_88D8B5,X)               ;88D8A4;
    JSL.L CODE_82806E                    ;88D8A7;
    BCC CODE_88D8B1                      ;88D8AB;
    JML.L CODE_828387                    ;88D8AD;

CODE_88D8B1:
    JML.L CODE_8280B4                    ;88D8B1;

PTR16_88D8B5:
    dw CODE_88D8B9                       ;88D8B5;
    dw CODE_88D8DC                       ;88D8B7;

CODE_88D8B9:
    JSL.L CODE_82827D                    ;88D8B9;
    LDA.B #$01                           ;88D8BD;
    STA.B $27                            ;88D8BF;
    STA.B $30                            ;88D8C1;
    LDA.B #$06                           ;88D8C3;
    STA.B $12                            ;88D8C5;
    STZ.B $28                            ;88D8C7;
    LDA.B $0B                            ;88D8C9;
    TSB.B $11                            ;88D8CB;
    LDA.B #$02                           ;88D8CD;
    STA.B $01                            ;88D8CF;
    LDA.B #$64                           ;88D8D1;
    STA.B $33                            ;88D8D3;
    LDA.B #$06                           ;88D8D5;
    JSL.L CODE_848F07                    ;88D8D7;
    RTS                                  ;88D8DB;

CODE_88D8DC:
    DEC.B $33                            ;88D8DC;
    BNE CODE_88D93A                      ;88D8DE;
    REP #$30                             ;88D8E0;
    LDY.W #$0000                         ;88D8E2;
    LDX.W #$0E68                         ;88D8E5;

CODE_88D8E8:
    LDA.W $0000,X                        ;88D8E8;
    BEQ CODE_88D8F9                      ;88D8EB;
    SEP #$20                             ;88D8ED;
    LDA.W $000A,X                        ;88D8EF;
    CMP.B #$6A                           ;88D8F2;
    REP #$20                             ;88D8F4;
    BNE CODE_88D8F9                      ;88D8F6;
    INY                                  ;88D8F8;

CODE_88D8F9:
    TXA                                  ;88D8F9;
    CLC                                  ;88D8FA;
    ADC.W #$0040                         ;88D8FB;
    TAX                                  ;88D8FE;
    CMP.W #$1228                         ;88D8FF;
    BCC CODE_88D8E8                      ;88D902;
    SEP #$20                             ;88D904;
    CPY.W #$0003                         ;88D906;
    BCS CODE_88D934                      ;88D909;
    JSL.L CODE_828321                    ;88D90B;
    BNE CODE_88D934                      ;88D90F;
    INC.W $0000,X                        ;88D911;
    LDA.B #$6A                           ;88D914;
    STA.W $000A,X                        ;88D916;
    LDA.B $18                            ;88D919;
    STA.W $0018,X                        ;88D91B;
    LDA.B $16                            ;88D91E;
    STA.W $0016,X                        ;88D920;
    LDA.B $11                            ;88D923;
    STA.W $0011,X                        ;88D925;
    REP #$20                             ;88D928;
    LDA.B $05                            ;88D92A;
    STA.W $0005,X                        ;88D92C;
    LDA.B $08                            ;88D92F;
    STA.W $0008,X                        ;88D931;

CODE_88D934:
    SEP #$30                             ;88D934;
    LDA.B #$64                           ;88D936;
    STA.B $33                            ;88D938;

CODE_88D93A:
    RTS                                  ;88D93A;

CODE_88D93B:
    LDX.B $01                            ;88D93B;
    JSR.W (PTR16_88D9AA,X)               ;88D93D;
    LDA.B $34                            ;88D940;
    TSB.B $11                            ;88D942;
    JSL.L CODE_849B43                    ;88D944;
    BEQ CODE_88D99C                      ;88D948;
    BPL CODE_88D998                      ;88D94A;
    JSL.L CODE_84A4AB                    ;88D94C;
    LDA.B $11                            ;88D950;
    AND.B #$40                           ;88D952;
    BNE CODE_88D972                      ;88D954;
    LDA.B $02                            ;88D956;
    CMP.B #$02                           ;88D958;
    REP #$20                             ;88D95A;
    BCS CODE_88D968                      ;88D95C;
    LDA.B $05                            ;88D95E;
    SEC                                  ;88D960;
    SBC.W #$000A                         ;88D961;
    STA.B $05                            ;88D964;
    BRA CODE_88D98C                      ;88D966;

CODE_88D968:
    LDA.B $05                            ;88D968;
    SEC                                  ;88D96A;
    SBC.W #$0006                         ;88D96B;
    STA.B $05                            ;88D96E;
    BRA CODE_88D98C                      ;88D970;

CODE_88D972:
    LDA.B $02                            ;88D972;
    CMP.B #$02                           ;88D974;
    REP #$20                             ;88D976;
    BCS CODE_88D984                      ;88D978;
    LDA.B $05                            ;88D97A;
    CLC                                  ;88D97C;
    ADC.W #$000A                         ;88D97D;
    STA.B $05                            ;88D980;
    BRA CODE_88D98C                      ;88D982;

CODE_88D984:
    LDA.B $05                            ;88D984;
    CLC                                  ;88D986;
    ADC.W #$0006                         ;88D987;
    STA.B $05                            ;88D98A;

CODE_88D98C:
    SEP #$20                             ;88D98C;
    LDA.B #$05                           ;88D98E;
    JSL.L CODE_84A37F                    ;88D990;

CODE_88D994:
    JML.L CODE_828398                    ;88D994;

CODE_88D998:
    LDA.B #$0E                           ;88D998;
    TRB.B $11                            ;88D99A;

CODE_88D99C:
    JSL.L CODE_849B03                    ;88D99C;
    JSL.L CODE_82806E                    ;88D9A0;
    BCS CODE_88D994                      ;88D9A4;
    JML.L CODE_8280B4                    ;88D9A6;

PTR16_88D9AA:
    dw CODE_88D9B4                       ;88D9AA;
    dw CODE_88D9E2                       ;88D9AC;
    dw CODE_88DA1C                       ;88D9AE;
    dw CODE_88DA5A                       ;88D9B0;
    dw CODE_88DAA0                       ;88D9B2;

CODE_88D9B4:
    LDA.B $11                            ;88D9B4;
    AND.B #$0E                           ;88D9B6;
    STA.B $34                            ;88D9B8;
    LDA.B #$02                           ;88D9BA;
    STA.B $27                            ;88D9BC;
    STA.B $26                            ;88D9BE;
    LDA.B #$03                           ;88D9C0;
    STA.B $28                            ;88D9C2;
    LDA.B #$04                           ;88D9C4;
    STA.B $12                            ;88D9C6;
    STZ.B $30                            ;88D9C8;
    REP #$20                             ;88D9CA;
    LDA.B $08                            ;88D9CC;
    STA.B $35                            ;88D9CE;
    LDA.W #$D802                         ;88D9D0;
    STA.B $20                            ;88D9D3;
    SEP #$20                             ;88D9D5;
    LDA.B #$02                           ;88D9D7;
    STA.B $01                            ;88D9D9;
    LDA.B #$07                           ;88D9DB;
    JSL.L CODE_848F07                    ;88D9DD;
    RTS                                  ;88D9E1;

CODE_88D9E2:
    JSL.L CODE_848EEA                    ;88D9E2;
    LDA.B $0F                            ;88D9E6;
    BPL CODE_88DA1B                      ;88D9E8;
    LDA.B $11                            ;88D9EA;
    REP #$20                             ;88D9EC;
    AND.W #$0040                         ;88D9EE;
    BNE CODE_88D9FD                      ;88D9F1;
    LDA.B $05                            ;88D9F3;
    SEC                                  ;88D9F5;
    SBC.W #$0004                         ;88D9F6;
    STA.B $05                            ;88D9F9;
    BRA CODE_88DA05                      ;88D9FB;

CODE_88D9FD:
    LDA.B $05                            ;88D9FD;
    CLC                                  ;88D9FF;
    ADC.W #$0004                         ;88DA00;
    STA.B $05                            ;88DA03;

CODE_88DA05:
    LDA.W #$FF40                         ;88DA05;
    STA.B $1C                            ;88DA08;
    LDA.W #$D80C                         ;88DA0A;
    STA.B $20                            ;88DA0D;
    SEP #$20                             ;88DA0F;
    LDA.B #$04                           ;88DA11;
    STA.B $01                            ;88DA13;
    LDA.B #$05                           ;88DA15;
    JSL.L CODE_848F07                    ;88DA17;

CODE_88DA1B:
    RTS                                  ;88DA1B;

CODE_88DA1C:
    JSL.L CODE_82825D                    ;88DA1C;
    JSL.L CODE_848EEA                    ;88DA20;
    REP #$20                             ;88DA24;
    LDA.B $08                            ;88DA26;
    SEC                                  ;88DA28;
    SBC.B $35                            ;88DA29;
    CMP.W #$0080                         ;88DA2B;
    SEP #$20                             ;88DA2E;
    BCC CODE_88DA59                      ;88DA30;
    LDA.B $11                            ;88DA32;
    BIT.B #$40                           ;88DA34;
    REP #$20                             ;88DA36;
    BNE CODE_88DA3F                      ;88DA38;
    LDA.W #$FF00                         ;88DA3A;
    BRA CODE_88DA42                      ;88DA3D;

CODE_88DA3F:
    LDA.W #$0100                         ;88DA3F;

CODE_88DA42:
    STA.B $1A                            ;88DA42;
    LDA.W #$D802                         ;88DA44;
    STA.B $20                            ;88DA47;
    SEP #$20                             ;88DA49;
    LDA.B #$40                           ;88DA4B;
    STA.B $1E                            ;88DA4D;
    LDA.B #$06                           ;88DA4F;
    STA.B $01                            ;88DA51;
    LDA.B #$03                           ;88DA53;
    JSL.L CODE_848F07                    ;88DA55;

CODE_88DA59:
    RTS                                  ;88DA59;

CODE_88DA5A:
    JSL.L CODE_828174                    ;88DA5A;
    JSL.L CODE_8491BE                    ;88DA5E;
    JSL.L CODE_848EEA                    ;88DA62;
    REP #$20                             ;88DA66;
    LDA.B $08                            ;88DA68;
    SEC                                  ;88DA6A;
    SBC.B $35                            ;88DA6B;
    CMP.W #$00C0                         ;88DA6D;
    SEP #$20                             ;88DA70;
    BCC CODE_88DA9F                      ;88DA72;
    LDA.B $2B                            ;88DA74;
    BIT.B #$04                           ;88DA76;
    BEQ CODE_88DA9F                      ;88DA78;
    LDA.B $11                            ;88DA7A;
    AND.B #$40                           ;88DA7C;
    REP #$20                             ;88DA7E;
    BNE CODE_88DA89                      ;88DA80;
    LDA.W #$FF40                         ;88DA82;
    STA.B $1A                            ;88DA85;
    BRA CODE_88DA8E                      ;88DA87;

CODE_88DA89:
    LDA.W #$00C0                         ;88DA89;
    STA.B $1A                            ;88DA8C;

CODE_88DA8E:
    LDA.W #$D816                         ;88DA8E;
    STA.B $20                            ;88DA91;
    SEP #$20                             ;88DA93;
    LDA.B #$08                           ;88DA95;
    STA.B $01                            ;88DA97;
    LDA.B #$04                           ;88DA99;
    JSL.L CODE_848F07                    ;88DA9B;

CODE_88DA9F:
    RTS                                  ;88DA9F;

CODE_88DAA0:
    JSL.L CODE_82823E                    ;88DAA0;
    JSL.L CODE_8491BE                    ;88DAA4;
    JSL.L CODE_848EEA                    ;88DAA8;
    LDA.B $2B                            ;88DAAC;
    BIT.B #$02                           ;88DAAE;
    BNE CODE_88DAB7                      ;88DAB0;
    BIT.B #$01                           ;88DAB2;
    BNE CODE_88DAC5                      ;88DAB4;
    RTS                                  ;88DAB6;

CODE_88DAB7:
    LDA.B #$40                           ;88DAB7;
    TSB.B $11                            ;88DAB9;
    REP #$20                             ;88DABB;
    LDA.W #$00C0                         ;88DABD;
    STA.B $1A                            ;88DAC0;
    SEP #$20                             ;88DAC2;
    RTS                                  ;88DAC4;

CODE_88DAC5:
    LDA.B #$40                           ;88DAC5;
    TRB.B $11                            ;88DAC7;
    REP #$20                             ;88DAC9;
    LDA.W #$FF40                         ;88DACB;
    STA.B $1A                            ;88DACE;
    SEP #$20                             ;88DAD0;
    RTS                                  ;88DAD2;

CODE_88DAD3:
    LDX.B $01                            ;88DAD3;
    JMP.W (PTR16_88DAD8,X)               ;88DAD5;

PTR16_88DAD8:
    dw CODE_88DAE0                       ;88DAD8;
    dw CODE_88DB30                       ;88DADA;
    dw CODE_88DC8E                       ;88DADC;
    dw CODE_88E0F3                       ;88DADE;

CODE_88DAE0:
    JSL.L CODE_82827D                    ;88DAE0;
    LDA.B $11                            ;88DAE4;
    AND.B #$0E                           ;88DAE6;
    STA.B $34                            ;88DAE8;
    LDA.B #$04                           ;88DAEA;
    STA.B $12                            ;88DAEC;
    LDA.B #$08                           ;88DAEE;
    STA.B $26                            ;88DAF0;
    LDA.B #$20                           ;88DAF2;
    STA.B $27                            ;88DAF4;
    LDA.B #$00                           ;88DAF6;
    JSL.L CODE_848F07                    ;88DAF8;
    LDA.B #$01                           ;88DAFC;
    STA.B $30                            ;88DAFE;
    REP #$20                             ;88DB00;
    LDA.W #$D820                         ;88DB02;
    STA.B $20                            ;88DB05;
    LDA.W #$0064                         ;88DB07;
    STA.B $0C                            ;88DB0A;
    SEP #$20                             ;88DB0C;
    LDA.B #$01                           ;88DB0E;
    STA.W $1F81                          ;88DB10;
    LDA.B #$02                           ;88DB13;
    STA.B $01                            ;88DB15;
    STZ.B $38                            ;88DB17;
    LDA.W $1F7D                          ;88DB19;
    CMP.B #$02                           ;88DB1C;
    BNE CODE_88DB2B                      ;88DB1E;
    LDA.B #$08                           ;88DB20;
    STA.B $02                            ;88DB22;
    LDA.B #$2E                           ;88DB24;
    STA.B $0C                            ;88DB26;
    JMP.W CODE_88DB2F                    ;88DB28;

CODE_88DB2B:
    LDA.B #$00                           ;88DB2B;
    STA.B $02                            ;88DB2D;

CODE_88DB2F:
    RTL                                  ;88DB2F;

CODE_88DB30:
    LDX.B $02                            ;88DB30;
    JSR.W (PTR16_88DB36,X)               ;88DB32;
    RTL                                  ;88DB35;

PTR16_88DB36:
    dw CODE_88DB44                       ;88DB36;
    dw CODE_88DB83                       ;88DB38;
    dw CODE_88DBA2                       ;88DB3A;
    dw CODE_88DBD9                       ;88DB3C;
    dw CODE_88DBEE                       ;88DB3E;
    dw CODE_88DC26                       ;88DB40;
    dw CODE_88DC6A                       ;88DB42;

CODE_88DB44:
    REP #$20                             ;88DB44;
    LDA.B $0C                            ;88DB46;
    BNE CODE_88DB7A                      ;88DB48;
    SEP #$20                             ;88DB4A;
    LDA.B #$02                           ;88DB4C;
    STA.B $02                            ;88DB4E;
    LDA.B #$3C                           ;88DB50;
    STA.B $0C                            ;88DB52;
    LDA.B #$80                           ;88DB54;
    STA.W $0000                          ;88DB56;
    LDA.B #$50                           ;88DB59;
    STA.W $0002                          ;88DB5B;
    LDA.B #$58                           ;88DB5E;
    STA.W $0004                          ;88DB60;
    LDA.B #$30                           ;88DB63;
    STA.W $0006                          ;88DB65;
    LDA.B #$1A                           ;88DB68;
    STA.W $0008                          ;88DB6A;
    JSL.L CODE_83F74A                    ;88DB6D;
    LDA.B #$09                           ;88DB71;
    JSL.L CODE_88D838                    ;88DB73;
    JMP.W CODE_88DB7E                    ;88DB77;

CODE_88DB7A:
    DEC.B $0C                            ;88DB7A;
    SEP #$20                             ;88DB7C;

CODE_88DB7E:
    JSL.L CODE_8280B4                    ;88DB7E;
    RTS                                  ;88DB82;

CODE_88DB83:
    LDA.W $1F2C                          ;88DB83;
    BMI CODE_88DB9D                      ;88DB86;
    LDA.B $0C                            ;88DB88;
    BNE CODE_88DB9B                      ;88DB8A;
    LDA.B #$04                           ;88DB8C;
    STA.B $02                            ;88DB8E;
    JSL.L CODE_84A02F                    ;88DB90;
    LDA.B #$50                           ;88DB94;
    STA.B $0C                            ;88DB96;
    JMP.W CODE_88DB9D                    ;88DB98;

CODE_88DB9B:
    DEC.B $0C                            ;88DB9B;

CODE_88DB9D:
    JSL.L CODE_8280B4                    ;88DB9D;
    RTS                                  ;88DBA1;

CODE_88DBA2:
    LDA.W $1F2C                          ;88DBA2;
    BMI CODE_88DBD4                      ;88DBA5;
    LDA.B $0C                            ;88DBA7;
    BNE CODE_88DBD2                      ;88DBA9;
    LDA.B #$80                           ;88DBAB;
    STA.W $0000                          ;88DBAD;
    LDA.B #$50                           ;88DBB0;
    STA.W $0002                          ;88DBB2;
    LDA.B #$58                           ;88DBB5;
    STA.W $0004                          ;88DBB7;
    LDA.B #$30                           ;88DBBA;
    STA.W $0006                          ;88DBBC;
    LDA.B #$1B                           ;88DBBF;
    STA.W $0008                          ;88DBC1;
    JSL.L CODE_83F74A                    ;88DBC4;
    LDA.B #$09                           ;88DBC8;
    JSL.L CODE_88D838                    ;88DBCA;
    LDA.B #$06                           ;88DBCE;
    STA.B $02                            ;88DBD0;

CODE_88DBD2:
    DEC.B $0C                            ;88DBD2;

CODE_88DBD4:
    JSL.L CODE_8280B4                    ;88DBD4;
    RTS                                  ;88DBD8;

CODE_88DBD9:
    LDA.W $1F2C                          ;88DBD9;
    BMI CODE_88DBE9                      ;88DBDC;
    LDA.B #$08                           ;88DBDE;
    STA.B $02                            ;88DBE0;
    LDA.B #$02                           ;88DBE2;
    STA.W $1F7D                          ;88DBE4;
    STZ.B $0C                            ;88DBE7;

CODE_88DBE9:
    JSL.L CODE_8280B4                    ;88DBE9;
    RTS                                  ;88DBED;

CODE_88DBEE:
    REP #$20                             ;88DBEE;
    LDA.W $1E60                          ;88DBF0;
    CMP.W $1E5E                          ;88DBF3;
    BNE CODE_88DC1F                      ;88DBF6;
    SEP #$20                             ;88DBF8;
    LDA.W $0C16                          ;88DBFA;
    BNE CODE_88DC08                      ;88DBFD;
    JSL.L CODE_849FE6                    ;88DBFF;
    LDA.B #$01                           ;88DC03;
    STA.W $1F49                          ;88DC05;

CODE_88DC08:
    LDA.B $0C                            ;88DC08;
    BEQ CODE_88DC11                      ;88DC0A;
    DEC.B $0C                            ;88DC0C;
    JMP.W CODE_88DC21                    ;88DC0E;

CODE_88DC11:
    REP #$20                             ;88DC11;
    TDC                                  ;88DC13;
    STA.W $1F0E                          ;88DC14;
    SEP #$20                             ;88DC17;
    STZ.B $27                            ;88DC19;
    LDA.B #$0A                           ;88DC1B;
    STA.B $02                            ;88DC1D;

CODE_88DC1F:
    SEP #$20                             ;88DC1F;

CODE_88DC21:
    JSL.L CODE_8280B4                    ;88DC21;
    RTS                                  ;88DC25;

CODE_88DC26:
    STZ.W $1F49                          ;88DC26;
    LDA.W $0B9C                          ;88DC29;
    LSR A                                ;88DC2C;
    BCC CODE_88DC65                      ;88DC2D;
    LDA.B $27                            ;88DC2F;
    AND.B #$7F                           ;88DC31;
    CMP.B #$20                           ;88DC33;
    BEQ CODE_88DC45                      ;88DC35;
    INC A                                ;88DC37;
    ORA.B #$80                           ;88DC38;
    STA.B $27                            ;88DC3A;
    LDA.B #$0C                           ;88DC3C;
    JSL.L CODE_8088CD                    ;88DC3E;
    JMP.W CODE_88DC65                    ;88DC42;

CODE_88DC45:
    LDA.W $0BD3                          ;88DC45;
    AND.B #$04                           ;88DC48;
    BEQ CODE_88DC65                      ;88DC4A;
    LDA.B #$00                           ;88DC4C;
    JSL.L CODE_848F07                    ;88DC4E;
    LDA.B #$0C                           ;88DC52;
    STA.B $02                            ;88DC54;
    LDA.B #$10                           ;88DC56;
    STA.B $0C                            ;88DC58;
    LDA.W $1F26                          ;88DC5A;
    BEQ CODE_88DC65                      ;88DC5D;
    LDA.B #$24                           ;88DC5F;
    JSL.L CODE_8087A2                    ;88DC61;

CODE_88DC65:
    JSL.L CODE_8280B4                    ;88DC65;
    RTS                                  ;88DC69;

CODE_88DC6A:
    LDA.B $0C                            ;88DC6A;
    BNE CODE_88DC83                      ;88DC6C;
    LDA.B #$04                           ;88DC6E;
    STA.B $01                            ;88DC70;
    LDA.B #$00                           ;88DC72;
    STA.B $02                            ;88DC74;
    STZ.B $03                            ;88DC76;
    STZ.B $38                            ;88DC78;
    STZ.B $30                            ;88DC7A;
    JSL.L CODE_849FFE                    ;88DC7C;
    JMP.W CODE_88DC85                    ;88DC80;

CODE_88DC83:
    DEC.B $0C                            ;88DC83;

CODE_88DC85:
    JSL.L CODE_848EEA                    ;88DC85;
    JSL.L CODE_8280B4                    ;88DC89;
    RTS                                  ;88DC8D;

CODE_88DC8E:
    LDX.B $02                            ;88DC8E;
    JSR.W (PTR16_88DD07,X)               ;88DC90;
    LDA.B $27                            ;88DC93;
    BEQ CODE_88DD03                      ;88DC95;
    LDA.B $3A                            ;88DC97;
    BEQ CODE_88DC9E                      ;88DC99;
    JMP.W CODE_88DCA5                    ;88DC9B;

CODE_88DC9E:
    LDA.B #$03                           ;88DC9E;
    STA.B $28                            ;88DCA0;
    JMP.W CODE_88DCA7                    ;88DCA2;

CODE_88DCA5:
    DEC.B $3A                            ;88DCA5;

CODE_88DCA7:
    JSL.L CODE_849B43                    ;88DCA7;
    BEQ CODE_88DCFB                      ;88DCAB;
    LDA.B $27                            ;88DCAD;
    AND.B #$7F                           ;88DCAF;
    BNE CODE_88DCE6                      ;88DCB1;
    LDA.W $0BCF                          ;88DCB3;
    AND.B #$7F                           ;88DCB6;
    BEQ CODE_88DCEA                      ;88DCB8;
    LDA.B #$13                           ;88DCBA;
    JSL.L CODE_8088A2                    ;88DCBC;
    LDA.B #$06                           ;88DCC0;
    STA.B $01                            ;88DCC2;
    STZ.B $02                            ;88DCC4;
    STZ.B $03                            ;88DCC6;
    LDA.B #$01                           ;88DCC8;
    STA.W $0BD8                          ;88DCCA;
    STA.W $1F0C                          ;88DCCD;
    LDA.B #$14                           ;88DCD0;
    STA.B $0C                            ;88DCD2;
    LDA.B #$01                           ;88DCD4;
    STA.W $1F13                          ;88DCD6;
    STA.W $1F14                          ;88DCD9;
    STA.W $1F17                          ;88DCDC;
    JSL.L CODE_849F85                    ;88DCDF;
    JMP.W CODE_88DD03                    ;88DCE3;

CODE_88DCE6:
    LDA.B #$0E                           ;88DCE6;
    TRB.B $11                            ;88DCE8;

CODE_88DCEA:
    LDA.B #$13                           ;88DCEA;
    JSL.L CODE_8088A2                    ;88DCEC;
    LDA.B #$18                           ;88DCF0;
    STA.B $3A                            ;88DCF2;
    LDA.B #$05                           ;88DCF4;
    STA.B $28                            ;88DCF6;
    JMP.W CODE_88DCFF                    ;88DCF8;

CODE_88DCFB:
    LDA.B $34                            ;88DCFB;
    TSB.B $11                            ;88DCFD;

CODE_88DCFF:
    JSL.L CODE_849B03                    ;88DCFF;

CODE_88DD03:
    JML.L CODE_8280B4                    ;88DD03;

PTR16_88DD07:
    dw CODE_88DD0F                       ;88DD07;
    dw CODE_88DEAD                       ;88DD09;
    dw CODE_88E058                       ;88DD0B;
    dw CODE_88DF83                       ;88DD0D;

CODE_88DD0F:
    LDX.B $03                            ;88DD0F;
    JSR.W (PTR16_88DD15,X)               ;88DD11;
    RTS                                  ;88DD14;

PTR16_88DD15:
    dw CODE_88DD23                       ;88DD15;
    dw CODE_88DD66                       ;88DD17;
    dw CODE_88DDF9                       ;88DD19;
    dw CODE_88DE21                       ;88DD1B;
    dw CODE_88DE5C                       ;88DD1D;
    dw CODE_88DE79                       ;88DD1F;
    dw CODE_88DE8F                       ;88DD21;

CODE_88DD23:
    LDA.B #$02                           ;88DD23;
    JSL.L CODE_848F07                    ;88DD25;
    REP #$20                             ;88DD29;
    LDA.W #$0600                         ;88DD2B;
    STA.B $1C                            ;88DD2E;
    LDA.W $0BAD                          ;88DD30;
    SEC                                  ;88DD33;
    SBC.B $05                            ;88DD34;
    BCS CODE_88DD41                      ;88DD36;
    LDA.W #$FFC0                         ;88DD38;
    STA.W $0000                          ;88DD3B;
    JMP.W CODE_88DD47                    ;88DD3E;

CODE_88DD41:
    LDA.W #$0040                         ;88DD41;
    STA.W $0000                          ;88DD44;

CODE_88DD47:
    LDA.W $0BAD                          ;88DD47;
    CLC                                  ;88DD4A;
    ADC.W $0000                          ;88DD4B;
    SEC                                  ;88DD4E;
    SBC.B $05                            ;88DD4F;
    ASL A                                ;88DD51;
    ASL A                                ;88DD52;
    STA.B $1A                            ;88DD53;
    SEP #$20                             ;88DD55;
    LDA.B #$30                           ;88DD57;
    STA.B $1E                            ;88DD59;
    JSL.L CODE_8281E8                    ;88DD5B;
    LDA.B #$02                           ;88DD5F;
    STA.B $03                            ;88DD61;
    STZ.B $35                            ;88DD63;
    RTS                                  ;88DD65;

CODE_88DD66:
    LDA.B $0F                            ;88DD66;
    BPL CODE_88DD8B                      ;88DD68;
    LDA.B $0F                            ;88DD6A;
    AND.B #$01                           ;88DD6C;
    BNE CODE_88DD8B                      ;88DD6E;
    LDA.B $38                            ;88DD70;
    BEQ CODE_88DD85                      ;88DD72;
    LDA.B $0F                            ;88DD74;
    AND.B #$02                           ;88DD76;
    CMP.B #$02                           ;88DD78;
    BEQ CODE_88DD8B                      ;88DD7A;
    LDA.B #$07                           ;88DD7C;
    JSL.L CODE_848F07                    ;88DD7E;
    JMP.W CODE_88DD8B                    ;88DD82;

CODE_88DD85:
    LDA.B #$03                           ;88DD85;
    JSL.L CODE_848F07                    ;88DD87;

CODE_88DD8B:
    JSL.L CODE_8281E8                    ;88DD8B;
    LDA.B $35                            ;88DD8F;
    BNE CODE_88DDB7                      ;88DD91;
    REP #$20                             ;88DD93;
    LDA.B $1C                            ;88DD95;
    BPL CODE_88DDB7                      ;88DD97;
    SEP #$20                             ;88DD99;
    LDA.B $38                            ;88DD9B;
    BEQ CODE_88DDB5                      ;88DD9D;
    LDA.B #$04                           ;88DD9F;
    STA.B $03                            ;88DDA1;
    LDA.B #$09                           ;88DDA3;
    JSL.L CODE_848F07                    ;88DDA5;
    LDA.B #$01                           ;88DDA9;
    STA.B $37                            ;88DDAB;
    JSR.W CODE_88E2C4                    ;88DDAD;
    DEC.B $37                            ;88DDB0;
    JMP.W CODE_88DDF5                    ;88DDB2;

CODE_88DDB5:
    INC.B $35                            ;88DDB5;

CODE_88DDB7:
    SEP #$20                             ;88DDB7;
    JSL.L CODE_8491BE                    ;88DDB9;
    LDA.B $2B                            ;88DDBD;
    AND.B #$04                           ;88DDBF;
    BNE CODE_88DDD2                      ;88DDC1;
    LDA.B $2B                            ;88DDC3;
    AND.B #$01                           ;88DDC5;
    BNE CODE_88DDE3                      ;88DDC7;
    LDA.B $2B                            ;88DDC9;
    AND.B #$02                           ;88DDCB;
    BNE CODE_88DDE3                      ;88DDCD;
    JMP.W CODE_88DDF1                    ;88DDCF;

CODE_88DDD2:
    LDA.B #$04                           ;88DDD2;
    JSL.L CODE_848F07                    ;88DDD4;
    LDA.B #$08                           ;88DDD8;
    STA.B $03                            ;88DDDA;
    LDA.B #$1E                           ;88DDDC;
    STA.B $0C                            ;88DDDE;
    JMP.W CODE_88DDF5                    ;88DDE0;

CODE_88DDE3:
    LDA.B $35                            ;88DDE3;
    BNE CODE_88DDEB                      ;88DDE5;
    REP #$20                             ;88DDE7;
    STZ.B $1C                            ;88DDE9;

CODE_88DDEB:
    REP #$20                             ;88DDEB;
    STZ.B $1A                            ;88DDED;
    SEP #$20                             ;88DDEF;

CODE_88DDF1:
    JSL.L CODE_848EEA                    ;88DDF1;

CODE_88DDF5:
    RTS                                  ;88DDF5;
    JMP.W CODE_88DF82                    ;88DDF6;

CODE_88DDF9:
    LDA.B $0F                            ;88DDF9;
    BPL CODE_88DE1C                      ;88DDFB;
    LDA.B $37                            ;88DDFD;
    BMI CODE_88DE0F                      ;88DDFF;
    LDA.B #$09                           ;88DE01;
    JSL.L CODE_848F07                    ;88DE03;
    JSR.W CODE_88E2C4                    ;88DE07;
    DEC.B $37                            ;88DE0A;
    JMP.W CODE_88DE1C                    ;88DE0C;

CODE_88DE0F:
    LDA.B #$0A                           ;88DE0F;
    STA.B $03                            ;88DE11;
    LDA.B #$08                           ;88DE13;
    JSL.L CODE_848F07                    ;88DE15;
    JMP.W CODE_88DE20                    ;88DE19;

CODE_88DE1C:
    JSL.L CODE_848EEA                    ;88DE1C;

CODE_88DE20:
    RTS                                  ;88DE20;

CODE_88DE21:
    JSL.L CODE_8281E8                    ;88DE21;
    JSL.L CODE_8491BE                    ;88DE25;
    LDA.B $2B                            ;88DE29;
    AND.B #$04                           ;88DE2B;
    BNE CODE_88DE3E                      ;88DE2D;
    LDA.B $2B                            ;88DE2F;
    AND.B #$01                           ;88DE31;
    BNE CODE_88DE4F                      ;88DE33;
    LDA.B $2B                            ;88DE35;
    AND.B #$02                           ;88DE37;
    BNE CODE_88DE4F                      ;88DE39;
    JMP.W CODE_88DE57                    ;88DE3B;

CODE_88DE3E:
    LDA.B #$08                           ;88DE3E;
    STA.B $03                            ;88DE40;
    LDA.B #$04                           ;88DE42;
    JSL.L CODE_848F07                    ;88DE44;
    LDA.B #$0A                           ;88DE48;
    STA.B $0C                            ;88DE4A;
    JMP.W CODE_88DE5B                    ;88DE4C;

CODE_88DE4F:
    REP #$20                             ;88DE4F;
    STZ.B $1A                            ;88DE51;
    STZ.B $1C                            ;88DE53;
    SEP #$20                             ;88DE55;

CODE_88DE57:
    JSL.L CODE_848EEA                    ;88DE57;

CODE_88DE5B:
    RTS                                  ;88DE5B;

CODE_88DE5C:
    LDA.B $0F                            ;88DE5C;
    BPL CODE_88DE69                      ;88DE5E;
    LDA.B #$01                           ;88DE60;
    JSL.L CODE_848F07                    ;88DE62;
    JMP.W CODE_88DE70                    ;88DE66;

CODE_88DE69:
    JSL.L CODE_848EEA                    ;88DE69;
    JMP.W CODE_88DE78                    ;88DE6D;

CODE_88DE70:
    LDA.B #$04                           ;88DE70;
    STA.B $0C                            ;88DE72;
    LDA.B #$0C                           ;88DE74;
    STA.B $03                            ;88DE76;

CODE_88DE78:
    RTS                                  ;88DE78;

CODE_88DE79:
    LDA.B $0F                            ;88DE79;
    BPL CODE_88DE8A                      ;88DE7B;
    LDA.B #$06                           ;88DE7D;
    STA.B $03                            ;88DE7F;
    LDA.B #$05                           ;88DE81;
    JSL.L CODE_848F07                    ;88DE83;
    JMP.W CODE_88DE8E                    ;88DE87;

CODE_88DE8A:
    JSL.L CODE_848EEA                    ;88DE8A;

CODE_88DE8E:
    RTS                                  ;88DE8E;

CODE_88DE8F:
    LDA.B $0C                            ;88DE8F;
    BNE CODE_88DEA6                      ;88DE91;
    LDA.B #$00                           ;88DE93;
    JSL.L CODE_848F07                    ;88DE95;
    LDA.B #$1E                           ;88DE99;
    STA.B $0C                            ;88DE9B;
    LDA.B #$04                           ;88DE9D;
    STA.B $02                            ;88DE9F;
    STZ.B $03                            ;88DEA1;
    JMP.W CODE_88DEAC                    ;88DEA3;

CODE_88DEA6:
    DEC.B $0C                            ;88DEA6;
    JSL.L CODE_848EEA                    ;88DEA8;

CODE_88DEAC:
    RTS                                  ;88DEAC;

CODE_88DEAD:
    LDX.B $03                            ;88DEAD;
    JSR.W (PTR16_88DEB3,X)               ;88DEAF;
    RTS                                  ;88DEB2;

PTR16_88DEB3:
    dw CODE_88DEBB                       ;88DEB3;
    dw CODE_88DEF3                       ;88DEB5;
    dw CODE_88DF01                       ;88DEB7;
    dw CODE_88DF67                       ;88DEB9;

CODE_88DEBB:
    LDA.B #$01                           ;88DEBB;
    JSL.L CODE_848F07                    ;88DEBD;
    LDA.B #$02                           ;88DEC1;
    STA.B $03                            ;88DEC3;
    JSL.L CODE_84A07C                    ;88DEC5;
    ASL A                                ;88DEC9;
    ASL A                                ;88DECA;
    TAX                                  ;88DECB;
    REP #$20                             ;88DECC;
    LDA.W DATA8_86EE37,X                 ;88DECE;
    BPL CODE_88DEDA                      ;88DED1;
    ASL A                                ;88DED3;
    ORA.W #$F000                         ;88DED4;
    JMP.W CODE_88DEDB                    ;88DED7;

CODE_88DEDA:
    ASL A                                ;88DEDA;

CODE_88DEDB:
    STA.B $3C                            ;88DEDB;
    LDA.W DATA8_86EE39,X                 ;88DEDD;
    BPL CODE_88DEE9                      ;88DEE0;
    ASL A                                ;88DEE2;
    ORA.W #$F000                         ;88DEE3;
    JMP.W CODE_88DEEA                    ;88DEE6;

CODE_88DEE9:
    ASL A                                ;88DEE9;

CODE_88DEEA:
    STA.B $3E                            ;88DEEA;
    SEP #$20                             ;88DEEC;
    LDA.B #$01                           ;88DEEE;
    STA.B $0C                            ;88DEF0;
    RTS                                  ;88DEF2;

CODE_88DEF3:
    LDA.B $0C                            ;88DEF3;
    BNE CODE_88DEFE                      ;88DEF5;
    LDA.B #$04                           ;88DEF7;
    STA.B $03                            ;88DEF9;
    JMP.W CODE_88DF00                    ;88DEFB;

CODE_88DEFE:
    DEC.B $0C                            ;88DEFE;

CODE_88DF00:
    RTS                                  ;88DF00;

CODE_88DF01:
    LDA.B $0F                            ;88DF01;
    AND.B #$01                           ;88DF03;
    BEQ CODE_88DF62                      ;88DF05;
    REP #$10                             ;88DF07;
    JSL.L CODE_828358                    ;88DF09;
    BNE CODE_88DF62                      ;88DF0D;
    LDA.B #$2F                           ;88DF0F;
    STA.W $000A,X                        ;88DF11;
    INC.W $0000,X                        ;88DF14;
    REP #$20                             ;88DF17;
    LDA.B $11                            ;88DF19;
    AND.W #$0040                         ;88DF1B;
    BNE CODE_88DF29                      ;88DF1E;
    LDA.W #$FFE8                         ;88DF20;
    STA.W $0000                          ;88DF23;
    JMP.W CODE_88DF2F                    ;88DF26;

CODE_88DF29:
    LDA.W #$0018                         ;88DF29;
    STA.W $0000                          ;88DF2C;

CODE_88DF2F:
    LDA.B $05                            ;88DF2F;
    CLC                                  ;88DF31;
    ADC.W $0000                          ;88DF32;
    STA.W $0005,X                        ;88DF35;
    LDA.B $08                            ;88DF38;
    SEC                                  ;88DF3A;
    SBC.W #$0007                         ;88DF3B;
    STA.W $0008,X                        ;88DF3E;
    LDA.B $3C                            ;88DF41;
    STA.W $001A,X                        ;88DF43;
    LDA.B $3E                            ;88DF46;
    STA.W $001C,X                        ;88DF48;
    SEP #$20                             ;88DF4B;
    LDA.B $16                            ;88DF4D;
    STA.W $0016,X                        ;88DF4F;
    LDA.B $11                            ;88DF52;
    ORA.B $34                            ;88DF54;
    STA.W $0011,X                        ;88DF56;
    LDA.B $18                            ;88DF59;
    STA.W $0018,X                        ;88DF5B;
    LDA.B #$06                           ;88DF5E;
    STA.B $03                            ;88DF60;

CODE_88DF62:
    JSL.L CODE_848EEA                    ;88DF62;
    RTS                                  ;88DF66;

CODE_88DF67:
    LDA.B $0F                            ;88DF67;
    BPL CODE_88DF7E                      ;88DF69;
    LDA.B #$04                           ;88DF6B;
    STA.B $02                            ;88DF6D;
    STZ.B $03                            ;88DF6F;
    LDA.B #$1E                           ;88DF71;
    STA.B $0C                            ;88DF73;
    LDA.B #$00                           ;88DF75;
    JSL.L CODE_848F07                    ;88DF77;
    JMP.W CODE_88DF82                    ;88DF7B;

CODE_88DF7E:
    JSL.L CODE_848EEA                    ;88DF7E;

CODE_88DF82:
    RTS                                  ;88DF82;

CODE_88DF83:
    LDX.B $03                            ;88DF83;
    JSR.W (PTR16_88DF89,X)               ;88DF85;
    RTS                                  ;88DF88;

PTR16_88DF89:
    dw CODE_88DF8F                       ;88DF89;
    dw CODE_88DFD0                       ;88DF8B;
    dw CODE_88E019                       ;88DF8D;

CODE_88DF8F:
    LDA.B #$06                           ;88DF8F;
    JSL.L CODE_848F07                    ;88DF91;
    LDA.B #$02                           ;88DF95;
    STA.B $03                            ;88DF97;
    REP #$20                             ;88DF99;
    LDA.W #$D82A                         ;88DF9B;
    STA.B $20                            ;88DF9E;
    LDA.B $11                            ;88DFA0;
    AND.W #$0040                         ;88DFA2;
    BEQ CODE_88DFB5                      ;88DFA5;
    LDA.W #$0400                         ;88DFA7;
    STA.B $1A                            ;88DFAA;
    LDA.W #$0034                         ;88DFAC;
    STA.W $0000                          ;88DFAF;
    JMP.W CODE_88DFC0                    ;88DFB2;

CODE_88DFB5:
    LDA.W #$FC00                         ;88DFB5;
    STA.B $1A                            ;88DFB8;
    LDA.W #$FFCC                         ;88DFBA;
    STA.W $0000                          ;88DFBD;

CODE_88DFC0:
    LDA.W $0BAD                          ;88DFC0;
    CLC                                  ;88DFC3;
    ADC.W $0000                          ;88DFC4;
    STA.B $3C                            ;88DFC7;
    SEP #$20                             ;88DFC9;
    LDA.B #$03                           ;88DFCB;
    STA.B $0C                            ;88DFCD;
    RTS                                  ;88DFCF;

CODE_88DFD0:
    LDA.B $0F                            ;88DFD0;
    BPL CODE_88DFE1                      ;88DFD2;
    LDA.B #$10                           ;88DFD4;
    JSL.L CODE_848F07                    ;88DFD6;
    LDA.B #$04                           ;88DFDA;
    STA.B $03                            ;88DFDC;
    JMP.W CODE_88DFE5                    ;88DFDE;

CODE_88DFE1:
    JSL.L CODE_848EEA                    ;88DFE1;

CODE_88DFE5:
    LDA.B $0C                            ;88DFE5;
    BNE CODE_88DFF0                      ;88DFE7;
    JSR.W CODE_88E337                    ;88DFE9;
    LDA.B #$03                           ;88DFEC;
    STA.B $0C                            ;88DFEE;

CODE_88DFF0:
    DEC.B $0C                            ;88DFF0;
    JSL.L CODE_82823E                    ;88DFF2;
    REP #$20                             ;88DFF6;
    LDA.B $05                            ;88DFF8;
    SEC                                  ;88DFFA;
    SBC.B $3C                            ;88DFFB;
    BCS CODE_88E003                      ;88DFFD;
    EOR.W #$FFFF                         ;88DFFF;
    INC A                                ;88E002;

CODE_88E003:
    CMP.W #$0010                         ;88E003;
    BPL CODE_88E016                      ;88E006;
    SEP #$20                             ;88E008;
    LDA.B #$00                           ;88E00A;
    JSL.L CODE_848F07                    ;88E00C;
    LDA.B #$04                           ;88E010;
    STA.B $02                            ;88E012;
    STZ.B $03                            ;88E014;

CODE_88E016:
    SEP #$20                             ;88E016;
    RTS                                  ;88E018;

CODE_88E019:
    LDA.B $0C                            ;88E019;
    BNE CODE_88E024                      ;88E01B;
    JSR.W CODE_88E337                    ;88E01D;
    LDA.B #$03                           ;88E020;
    STA.B $0C                            ;88E022;

CODE_88E024:
    DEC.B $0C                            ;88E024;
    REP #$20                             ;88E026;
    JSL.L CODE_82823E                    ;88E028;
    LDA.B $05                            ;88E02C;
    SEC                                  ;88E02E;
    SBC.B $3C                            ;88E02F;
    BCS CODE_88E037                      ;88E031;
    EOR.W #$FFFF                         ;88E033;
    INC A                                ;88E036;

CODE_88E037:
    CMP.W #$000A                         ;88E037;
    BPL CODE_88E051                      ;88E03A;
    SEP #$20                             ;88E03C;
    LDA.B #$00                           ;88E03E;
    JSL.L CODE_848F07                    ;88E040;
    LDA.B #$28                           ;88E044;
    STA.B $0C                            ;88E046;
    LDA.B #$04                           ;88E048;
    STA.B $02                            ;88E04A;
    STZ.B $03                            ;88E04C;
    JMP.W CODE_88E057                    ;88E04E;

CODE_88E051:
    SEP #$20                             ;88E051;
    JSL.L CODE_848EEA                    ;88E053;

CODE_88E057:
    RTS                                  ;88E057;

CODE_88E058:
    REP #$20                             ;88E058;
    LDA.W #$D820                         ;88E05A;
    STA.B $20                            ;88E05D;
    SEP #$20                             ;88E05F;
    JSL.L CODE_879ED4                    ;88E061;
    LDA.B $0C                            ;88E065;
    BEQ CODE_88E06E                      ;88E067;
    DEC.B $0C                            ;88E069;
    JMP.W CODE_88E0EE                    ;88E06B;

CODE_88E06E:
    LDA.W $0C16                          ;88E06E;
    BEQ CODE_88E076                      ;88E071;
    JMP.W CODE_88E0DF                    ;88E073;

CODE_88E076:
    REP #$20                             ;88E076;
    LDA.W $0BAD                          ;88E078;
    SEC                                  ;88E07B;
    SBC.B $05                            ;88E07C;
    BCC CODE_88E084                      ;88E07E;
    EOR.W #$FFFF                         ;88E080;
    INC A                                ;88E083;

CODE_88E084:
    CMP.W #$0050                         ;88E084;
    BPL CODE_88E09E                      ;88E087;
    SEP #$20                             ;88E089;
    JSL.L CODE_849086                    ;88E08B;
    AND.B #$07                           ;88E08F;
    BEQ CODE_88E0DF                      ;88E091;
    CMP.B #$01                           ;88E093;
    BEQ CODE_88E0E6                      ;88E095;
    CMP.B #$05                           ;88E097;
    BMI CODE_88E0D6                      ;88E099;
    JMP.W CODE_88E0CD                    ;88E09B;

CODE_88E09E:
    REP #$20                             ;88E09E;
    CMP.W #$00A0                         ;88E0A0;
    BPL CODE_88E0BA                      ;88E0A3;
    SEP #$20                             ;88E0A5;
    JSL.L CODE_849086                    ;88E0A7;
    AND.B #$07                           ;88E0AB;
    BEQ CODE_88E0E6                      ;88E0AD;
    CMP.B #$04                           ;88E0AF;
    BMI CODE_88E0CD                      ;88E0B1;
    CMP.B #$06                           ;88E0B3;
    BMI CODE_88E0D6                      ;88E0B5;
    JMP.W CODE_88E0DF                    ;88E0B7;

CODE_88E0BA:
    SEP #$20                             ;88E0BA;
    JSL.L CODE_849086                    ;88E0BC;
    AND.B #$07                           ;88E0C0;
    CMP.B #$02                           ;88E0C2;
    BMI CODE_88E0CD                      ;88E0C4;
    CMP.B #$04                           ;88E0C6;
    BMI CODE_88E0D6                      ;88E0C8;
    JMP.W CODE_88E0DF                    ;88E0CA;

CODE_88E0CD:
    LDA.B #$02                           ;88E0CD;
    STA.B $02                            ;88E0CF;
    STZ.B $03                            ;88E0D1;
    JMP.W CODE_88E0EE                    ;88E0D3;

CODE_88E0D6:
    LDA.B #$06                           ;88E0D6;
    STA.B $02                            ;88E0D8;
    STZ.B $03                            ;88E0DA;
    JMP.W CODE_88E0EE                    ;88E0DC;

CODE_88E0DF:
    LDA.B #$01                           ;88E0DF;
    STA.B $38                            ;88E0E1;
    JMP.W CODE_88E0E8                    ;88E0E3;

CODE_88E0E6:
    STZ.B $38                            ;88E0E6;

CODE_88E0E8:
    LDA.B #$00                           ;88E0E8;
    STA.B $02                            ;88E0EA;
    STZ.B $03                            ;88E0EC;

CODE_88E0EE:
    JSL.L CODE_848EEA                    ;88E0EE;
    RTS                                  ;88E0F2;

CODE_88E0F3:
    LDX.B $02                            ;88E0F3;
    JMP.W (PTR16_88E0F8,X)               ;88E0F5;

PTR16_88E0F8:
    dw CODE_88E106                       ;88E0F8;
    dw CODE_88E159                       ;88E0FA;
    dw CODE_88E195                       ;88E0FC;
    dw CODE_88E1D1                       ;88E0FE;
    dw CODE_88E217                       ;88E100;
    dw CODE_88E22E                       ;88E102;
    dw CODE_88E140                       ;88E104;

CODE_88E106:
    LDA.B $0C                            ;88E106;
    BEQ CODE_88E114                      ;88E108;
    LDA.B #$01                           ;88E10A;
    STA.W $1F13                          ;88E10C;
    DEC.B $0C                            ;88E10F;
    JMP.W CODE_88E13C                    ;88E111;

CODE_88E114:
    STZ.W $1F13                          ;88E114;
    STZ.W $1F14                          ;88E117;
    STZ.W $1F17                          ;88E11A;
    LDY.B #$02                           ;88E11D;
    LDA.B #$F6                           ;88E11F;
    JSL.L CODE_80887F                    ;88E121;
    JSL.L CODE_849FE6                    ;88E125;
    LDA.B #$0C                           ;88E129;
    STA.B $02                            ;88E12B;
    LDA.B #$30                           ;88E12D;
    TSB.W $0BB9                          ;88E12F;
    LDA.B #$78                           ;88E132;
    STA.B $0C                            ;88E134;
    LDA.B #$0C                           ;88E136;
    JSL.L CODE_848F07                    ;88E138;

CODE_88E13C:
    JML.L CODE_8280B4                    ;88E13C;

CODE_88E140:
    LDA.B $0C                            ;88E140;
    BNE CODE_88E14F                      ;88E142;
    LDA.B #$FF                           ;88E144;
    STA.B $0C                            ;88E146;
    LDA.B #$02                           ;88E148;
    STA.B $02                            ;88E14A;
    JMP.W CODE_88E151                    ;88E14C;

CODE_88E14F:
    DEC.B $0C                            ;88E14F;

CODE_88E151:
    JSL.L CODE_848EEA                    ;88E151;
    JML.L CODE_8280B4                    ;88E155;

CODE_88E159:
    LDA.W $0B9C                          ;88E159;
    AND.B #$1F                           ;88E15C;
    BNE CODE_88E166                      ;88E15E;
    LDA.B #$20                           ;88E160;
    JSL.L CODE_84A333                    ;88E162;

CODE_88E166:
    DEC.B $0C                            ;88E166;
    BNE CODE_88E16E                      ;88E168;
    LDA.B #$04                           ;88E16A;
    STA.B $02                            ;88E16C;

CODE_88E16E:
    REP #$20                             ;88E16E;
    LDA.W #$FFE1                         ;88E170;
    STA.W $0000                          ;88E173;
    STA.W $0002                          ;88E176;
    LDA.W #$002F                         ;88E179;
    STA.W $0004                          ;88E17C;
    STA.W $0006                          ;88E17F;
    SEP #$20                             ;88E182;
    LDA.B #$03                           ;88E184;
    STA.W $0008                          ;88E186;
    JSL.L CODE_848EEA                    ;88E189;
    JSL.L CODE_8280B4                    ;88E18D;
    JML.L CODE_84A4C6                    ;88E191;

CODE_88E195:
    LDA.B #$06                           ;88E195;
    STA.B $02                            ;88E197;
    PHB                                  ;88E199;
    REP #$30                             ;88E19A;
    LDX.W #$D848                         ;88E19C;
    LDY.W #$0AA1                         ;88E19F;
    LDA.W #$0006                         ;88E1A2;
    MVN $00,$86                          ;88E1A5;
    LDX.W #$D84F                         ;88E1A8;
    LDY.W #$0B22                         ;88E1AB;
    LDA.W #$0009                         ;88E1AE;
    MVN $00,$86                          ;88E1B1;
    JSR.W CODE_88E2B5                    ;88E1B4;
    SEP #$30                             ;88E1B7;
    PLB                                  ;88E1B9;
    LDA.B #$3F                           ;88E1BA;
    STA.W $00CA                          ;88E1BC;
    STZ.W $00CB                          ;88E1BF;
    LDA.B #$01                           ;88E1C2;
    STA.B $3B                            ;88E1C4;
    JSR.W CODE_88E24B                    ;88E1C6;
    LDA.B #$C0                           ;88E1C9;
    STA.B $0C                            ;88E1CB;
    JML.L CODE_8280B4                    ;88E1CD;

CODE_88E1D1:
    LDA.W $0B9C                          ;88E1D1;
    AND.B #$01                           ;88E1D4;
    BNE CODE_88E1E0                      ;88E1D6;
    LDA.B $3B                            ;88E1D8;
    CMP.B #$1F                           ;88E1DA;
    BEQ CODE_88E1E0                      ;88E1DC;
    INC.B $3B                            ;88E1DE;

CODE_88E1E0:
    LDA.B $0C                            ;88E1E0;
    CMP.B #$B0                           ;88E1E2;
    BNE CODE_88E1EC                      ;88E1E4;
    LDA.B #$21                           ;88E1E6;
    JSL.L CODE_8088CD                    ;88E1E8;

CODE_88E1EC:
    DEC.B $0C                            ;88E1EC;
    LDA.B $0C                            ;88E1EE;
    BNE CODE_88E205                      ;88E1F0;
    LDA.B #$08                           ;88E1F2;
    STA.B $02                            ;88E1F4;
    LDA.B #$1F                           ;88E1F6;
    STA.W $00CB                          ;88E1F8;
    STA.W $00CC                          ;88E1FB;
    STA.W $00CD                          ;88E1FE;
    STZ.W $0AA1                          ;88E201;
    RTL                                  ;88E204;

CODE_88E205:
    CMP.B #$B0                           ;88E205;
    BCC CODE_88E210                      ;88E207;
    JSR.W CODE_88E24B                    ;88E209;
    JML.L CODE_8280B4                    ;88E20C;

CODE_88E210:
    JSR.W CODE_88E272                    ;88E210;
    JML.L CODE_8280B4                    ;88E213;

CODE_88E217:
    LDA.W $0B9C                          ;88E217;
    AND.B #$01                           ;88E21A;
    BNE CODE_88E22D                      ;88E21C;
    DEC.W $00CB                          ;88E21E;
    DEC.W $00CC                          ;88E221;
    DEC.W $00CD                          ;88E224;
    BNE CODE_88E22D                      ;88E227;
    LDA.B #$0A                           ;88E229;
    STA.B $02                            ;88E22B;

CODE_88E22D:
    RTL                                  ;88E22D;

CODE_88E22E:
    LDA.B #$04                           ;88E22E;
    STA.W $1F10                          ;88E230;
    REP #$20                             ;88E233;
    LDA.W #$0F00                         ;88E235;
    STA.W $1E60                          ;88E238;
    SEP #$20                             ;88E23B;
    STZ.W $0BD8                          ;88E23D;
    STZ.W $1F0C                          ;88E240;
    JSL.L CODE_849FFE                    ;88E243;
    JML.L CODE_828398                    ;88E247;

CODE_88E24B:
    PHB                                  ;88E24B;
    REP #$30                             ;88E24C;
    LDX.W #$D001                         ;88E24E;
    LDY.W #$D000                         ;88E251;
    LDA.W #$006F                         ;88E254;
    MVN $7F,$7F                          ;88E257;
    LDX.W #$D0DE                         ;88E25A;
    LDY.W #$D0DF                         ;88E25D;
    LDA.W #$006E                         ;88E260;
    MVP $7F,$7F                          ;88E263;
    SEP #$30                             ;88E266;
    PLB                                  ;88E268;
    LDA.B $3B                            ;88E269;
    ORA.B #$E0                           ;88E26B;
    STA.L $7FD070                        ;88E26D;
    RTS                                  ;88E271;

CODE_88E272:
    PHB                                  ;88E272;
    REP #$30                             ;88E273;
    LDX.W #$D008                         ;88E275;
    LDY.W #$D000                         ;88E278;
    LDA.W #$006C                         ;88E27B;
    MVN $7F,$7F                          ;88E27E;
    LDX.W #$D0D5                         ;88E281;
    LDY.W #$D0DF                         ;88E284;
    LDA.W #$006C                         ;88E287;
    MVP $7F,$7F                          ;88E28A;
    SEP #$30                             ;88E28D;
    PLB                                  ;88E28F;
    LDA.B $3B                            ;88E290;
    ORA.B #$E0                           ;88E292;
    STA.L $7FD06C                        ;88E294;
    STA.L $7FD06D                        ;88E298;
    STA.L $7FD06E                        ;88E29C;
    STA.L $7FD06F                        ;88E2A0;
    STA.L $7FD070                        ;88E2A4;
    STA.L $7FD071                        ;88E2A8;
    STA.L $7FD072                        ;88E2AC;
    STA.L $7FD073                        ;88E2B0;
    RTS                                  ;88E2B4;

CODE_88E2B5:
    LDX.W #$00DE                         ;88E2B5;
    LDA.W #$0000                         ;88E2B8;

CODE_88E2BB:
    STA.L $7FD000,X                      ;88E2BB;
    DEX                                  ;88E2BF;
    DEX                                  ;88E2C0;
    BPL CODE_88E2BB                      ;88E2C1;
    RTS                                  ;88E2C3;

CODE_88E2C4:
    LDA.B #$10                           ;88E2C4;
    STA.B $0C                            ;88E2C6;
    LDA.B $37                            ;88E2C8;
    ASL A                                ;88E2CA;
    TAX                                  ;88E2CB;
    REP #$20                             ;88E2CC;
    LDA.W DATA8_86D834,X                 ;88E2CE;
    STA.W $0000                          ;88E2D1;
    LDA.B $11                            ;88E2D4;
    AND.W #$0040                         ;88E2D6;
    BNE CODE_88E2E5                      ;88E2D9;
    LDA.W $0000                          ;88E2DB;
    EOR.W #$FFFF                         ;88E2DE;
    INC A                                ;88E2E1;
    STA.W $0000                          ;88E2E2;

CODE_88E2E5:
    LDA.W DATA8_86D838,X                 ;88E2E5;
    EOR.W #$FFFF                         ;88E2E8;
    INC A                                ;88E2EB;
    STA.W $0002                          ;88E2EC;
    SEP #$20                             ;88E2EF;
    REP #$10                             ;88E2F1;
    JSL.L CODE_828358                    ;88E2F3;
    BNE CODE_88E336                      ;88E2F7;
    LDA.B #$2E                           ;88E2F9;
    STA.W $000A,X                        ;88E2FB;
    INC.W $0000,X                        ;88E2FE;
    REP #$20                             ;88E301;
    LDA.B $05                            ;88E303;
    STA.W $0005,X                        ;88E305;
    LDA.B $08                            ;88E308;
    CLC                                  ;88E30A;
    ADC.W #$000D                         ;88E30B;
    STA.W $0008,X                        ;88E30E;
    LDA.W $0000                          ;88E311;
    STA.W $001A,X                        ;88E314;
    LDA.W $0002                          ;88E317;
    STA.W $001C,X                        ;88E31A;
    SEP #$20                             ;88E31D;
    LDA.B $11                            ;88E31F;
    ORA.B $34                            ;88E321;
    STA.W $0011,X                        ;88E323;
    LDA.B $16                            ;88E326;
    STA.W $0016,X                        ;88E328;
    LDA.B $18                            ;88E32B;
    STA.W $0018,X                        ;88E32D;
    STZ.W $000B,X                        ;88E330;
    JMP.W CODE_88E336                    ;88E333;

CODE_88E336:
    RTS                                  ;88E336;

CODE_88E337:
    REP #$10                             ;88E337;
    JSL.L CODE_8282D3                    ;88E339;
    BNE CODE_88E361                      ;88E33D;
    INC.W $0000,X                        ;88E33F;
    LDA.B #$31                           ;88E342;
    STA.W $000A,X                        ;88E344;
    LDA.B $11                            ;88E347;
    ORA.B $34                            ;88E349;
    STA.W $0011,X                        ;88E34B;
    STZ.W $000B,X                        ;88E34E;
    REP #$20                             ;88E351;
    LDA.B $08                            ;88E353;
    CLC                                  ;88E355;
    ADC.W #$0014                         ;88E356;
    STA.W $0008,X                        ;88E359;
    LDA.B $05                            ;88E35C;
    STA.W $0005,X                        ;88E35E;

CODE_88E361:
    SEP #$30                             ;88E361;
    RTS                                  ;88E363;

CODE_88E364:
    LDX.B $01                            ;88E364;
    JSR.W (PTR16_88E37D,X)               ;88E366;
    LDA.W $0BCF                          ;88E369;
    AND.B #$7F                           ;88E36C;
    BEQ CODE_88E375                      ;88E36E;
    LDA.W $0C16                          ;88E370;
    BNE CODE_88E379                      ;88E373;

CODE_88E375:
    JML.L CODE_828398                    ;88E375;

CODE_88E379:
    JML.L CODE_8280B4                    ;88E379;

PTR16_88E37D:
    dw CODE_88E381                       ;88E37D;
    dw CODE_88E39F                       ;88E37F;

CODE_88E381:
    LDA.B #$0D                           ;88E381;
    JSL.L CODE_848F07                    ;88E383;
    LDA.B #$02                           ;88E387;
    STA.B $01                            ;88E389;
    REP #$20                             ;88E38B;
    LDA.W $0BAD                          ;88E38D;
    STA.B $05                            ;88E390;
    LDA.W $0BB0                          ;88E392;
    STA.B $08                            ;88E395;
    LDA.W #$012C                         ;88E397;
    STA.B $1A                            ;88E39A;
    SEP #$20                             ;88E39C;
    RTS                                  ;88E39E;

CODE_88E39F:
    REP #$20                             ;88E39F;
    LDA.W $0BAD                          ;88E3A1;
    STA.B $05                            ;88E3A4;
    LDA.W $0BB0                          ;88E3A6;
    STA.B $08                            ;88E3A9;
    SEP #$20                             ;88E3AB;
    LDA.W $0BE3                          ;88E3AD;
    BEQ CODE_88E3BE                      ;88E3B0;
    REP #$20                             ;88E3B2;
    LDA.B $1A                            ;88E3B4;
    SEC                                  ;88E3B6;
    SBC.W #$000A                         ;88E3B7;
    STA.B $1A                            ;88E3BA;
    BMI CODE_88E3C9                      ;88E3BC;

CODE_88E3BE:
    REP #$20                             ;88E3BE;
    DEC.B $1A                            ;88E3C0;
    LDA.B $1A                            ;88E3C2;
    BMI CODE_88E3C9                      ;88E3C4;
    JMP.W CODE_88E3D7                    ;88E3C6;

CODE_88E3C9:
    SEP #$20                             ;88E3C9;
    LDA.W $0C32                          ;88E3CB;
    BNE CODE_88E3D7                      ;88E3CE;
    JSL.L CODE_849FFE                    ;88E3D0;
    JMP.W CODE_88E3DD                    ;88E3D4;

CODE_88E3D7:
    SEP #$20                             ;88E3D7;
    JSL.L CODE_848EEA                    ;88E3D9;

CODE_88E3DD:
    RTS                                  ;88E3DD;

CODE_88E3DE:
    LDX.B $01                            ;88E3DE;
    JSR.W (PTR16_88E3FA,X)               ;88E3E0;
    LDA.W $1F7D                          ;88E3E3;
    BNE CODE_88E3F3                      ;88E3E6;
    REP #$20                             ;88E3E8;
    LDA.B $05                            ;88E3EA;
    CMP.W #$0900                         ;88E3EC;
    BMI CODE_88E3F7                      ;88E3EF;
    SEP #$20                             ;88E3F1;

CODE_88E3F3:
    JML.L CODE_828398                    ;88E3F3;

CODE_88E3F7:
    SEP #$20                             ;88E3F7;
    RTL                                  ;88E3F9;

PTR16_88E3FA:
    dw CODE_88E40A                       ;88E3FA;
    dw CODE_88E443                       ;88E3FC;
    dw CODE_88E463                       ;88E3FE;
    dw CODE_88E493                       ;88E400;
    dw CODE_88E4B3                       ;88E402;
    dw CODE_88E4EA                       ;88E404;
    dw CODE_88E513                       ;88E406;
    dw CODE_88E532                       ;88E408;

CODE_88E40A:
    LDA.W $1F7D                          ;88E40A;
    BNE CODE_88E440                      ;88E40D;
    REP #$20                             ;88E40F;
    LDA.W $0BB0                          ;88E411;
    CMP.W #$059F                         ;88E414;
    BNE CODE_88E440                      ;88E417;
    SEP #$20                             ;88E419;
    LDA.W $0BD3                          ;88E41B;
    AND.B #$04                           ;88E41E;
    BEQ CODE_88E440                      ;88E420;
    LDA.B #$69                           ;88E422;
    STA.B $0A                            ;88E424;
    JSL.L CODE_82827D                    ;88E426;
    LDA.B #$41                           ;88E42A;
    STA.B $0A                            ;88E42C;
    LDA.B #$02                           ;88E42E;
    STA.B $01                            ;88E430;
    JSL.L CODE_849FE6                    ;88E432;
    LDA.B #$01                           ;88E436;
    STA.W $1F49                          ;88E438;
    LDA.B #$40                           ;88E43B;
    STA.W $0C11                          ;88E43D;

CODE_88E440:
    SEP #$20                             ;88E440;
    RTS                                  ;88E442;

CODE_88E443:
    STZ.W $1F49                          ;88E443;
    LDA.B #$04                           ;88E446;
    STA.B $01                            ;88E448;
    REP #$20                             ;88E44A;
    STZ.B $1C                            ;88E44C;
    STZ.B $1A                            ;88E44E;
    SEP #$20                             ;88E450;
    LDA.B #$40                           ;88E452;
    STA.B $1E                            ;88E454;
    LDA.B #$03                           ;88E456;
    JSL.L CODE_848F07                    ;88E458;
    SEP #$20                             ;88E45C;
    JSL.L CODE_8280B4                    ;88E45E;
    RTS                                  ;88E462;

CODE_88E463:
    JSL.L CODE_8281E8                    ;88E463;
    REP #$20                             ;88E467;
    LDA.B $08                            ;88E469;
    CMP.W #$059F                         ;88E46B;
    BMI CODE_88E488                      ;88E46E;
    LDA.W #$059B                         ;88E470;
    STA.B $08                            ;88E473;
    SEP #$20                             ;88E475;
    LDA.B #$06                           ;88E477;
    STA.B $01                            ;88E479;
    LDA.B #$04                           ;88E47B;
    STA.B $0C                            ;88E47D;
    LDA.B #$01                           ;88E47F;
    JSL.L CODE_848F07                    ;88E481;
    JMP.W CODE_88E48E                    ;88E485;

CODE_88E488:
    SEP #$20                             ;88E488;
    JSL.L CODE_848EEA                    ;88E48A;

CODE_88E48E:
    JSL.L CODE_8280B4                    ;88E48E;
    RTS                                  ;88E492;

CODE_88E493:
    LDA.B $0C                            ;88E493;
    BNE CODE_88E4A8                      ;88E495;
    LDA.B #$00                           ;88E497;
    JSL.L CODE_848F07                    ;88E499;
    LDA.B #$08                           ;88E49D;
    STA.B $01                            ;88E49F;
    LDA.B #$3C                           ;88E4A1;
    STA.B $0C                            ;88E4A3;
    JMP.W CODE_88E4AE                    ;88E4A5;

CODE_88E4A8:
    DEC.B $0C                            ;88E4A8;
    JSL.L CODE_848EEA                    ;88E4AA;

CODE_88E4AE:
    JSL.L CODE_8280B4                    ;88E4AE;
    RTS                                  ;88E4B2;

CODE_88E4B3:
    LDA.B $0C                            ;88E4B3;
    BEQ CODE_88E4BC                      ;88E4B5;
    DEC.B $0C                            ;88E4B7;
    JMP.W CODE_88E4E5                    ;88E4B9;

CODE_88E4BC:
    REP #$10                             ;88E4BC;
    JSL.L CODE_828321                    ;88E4BE;
    INC.W $0000,X                        ;88E4C2;
    LDA.B #$66                           ;88E4C5;
    STA.W $000A,X                        ;88E4C7;
    STZ.W $000B,X                        ;88E4CA;
    REP #$20                             ;88E4CD;
    LDA.W #$0882                         ;88E4CF;
    STA.W $0005,X                        ;88E4D2;
    LDA.W #$04F4                         ;88E4D5;
    STA.W $0008,X                        ;88E4D8;
    SEP #$30                             ;88E4DB;
    LDA.B #$3C                           ;88E4DD;
    STA.B $0C                            ;88E4DF;
    LDA.B #$0A                           ;88E4E1;
    STA.B $01                            ;88E4E3;

CODE_88E4E5:
    JSL.L CODE_8280B4                    ;88E4E5;
    RTS                                  ;88E4E9;

CODE_88E4EA:
    LDA.B $0C                            ;88E4EA;
    BNE CODE_88E50C                      ;88E4EC;
    LDA.W $1F2C                          ;88E4EE;
    BMI CODE_88E50E                      ;88E4F1;
    LDA.B #$0C                           ;88E4F3;
    STA.B $01                            ;88E4F5;
    LDA.B #$01                           ;88E4F7;
    STA.W $1F3F                          ;88E4F9;
    REP #$20                             ;88E4FC;
    LDA.W #$0400                         ;88E4FE;
    STA.B $1A                            ;88E501;
    SEP #$20                             ;88E503;
    LDA.B #$3C                           ;88E505;
    STA.B $0C                            ;88E507;
    JMP.W CODE_88E50E                    ;88E509;

CODE_88E50C:
    DEC.B $0C                            ;88E50C;

CODE_88E50E:
    JSL.L CODE_8280B4                    ;88E50E;
    RTS                                  ;88E512;

CODE_88E513:
    LDA.B $0C                            ;88E513;
    BNE CODE_88E527                      ;88E515;
    LDA.B #$0E                           ;88E517;
    STA.B $01                            ;88E519;
    LDA.B #$06                           ;88E51B;
    JSL.L CODE_848F07                    ;88E51D;
    LDA.B #$40                           ;88E521;
    ORA.B $11                            ;88E523;
    STA.B $11                            ;88E525;

CODE_88E527:
    DEC.B $0C                            ;88E527;
    JSL.L CODE_848EEA                    ;88E529;
    JSL.L CODE_8280B4                    ;88E52D;
    RTS                                  ;88E531;

CODE_88E532:
    JSL.L CODE_82823E                    ;88E532;
    JSL.L CODE_848EEA                    ;88E536;
    JSL.L CODE_8280B4                    ;88E53A;
    RTS                                  ;88E53E;

CODE_88E53F:
    LDX.B $01                            ;88E53F;
    JMP.W (PTR16_88E544,X)               ;88E541;

PTR16_88E544:
    dw CODE_88E550                       ;88E544;
    dw CODE_88E598                       ;88E546;
    dw CODE_88E598                       ;88E548;
    dw CODE_88E5F8                       ;88E54A;
    dw CODE_88E716                       ;88E54C;
    dw CODE_88E774                       ;88E54E;

CODE_88E550:
    LDA.B #$2D                           ;88E550;
    STA.B $11                            ;88E552;
    STZ.B $18                            ;88E554;
    REP #$20                             ;88E556;
    LDA.B $0A                            ;88E558;
    ASL A                                ;88E55A;
    LDA.W #$002A                         ;88E55B;
    LDX.B #$0C                           ;88E55E;
    BCS CODE_88E567                      ;88E560;
    LDA.W #$00D6                         ;88E562;
    LDX.B #$00                           ;88E565;

CODE_88E567:
    STA.B $05                            ;88E567;
    STA.B $35                            ;88E569;
    STX.B $33                            ;88E56B;
    LDA.W #$0070                         ;88E56D;
    STA.B $08                            ;88E570;
    SEP #$20                             ;88E572;
    STZ.B $37                            ;88E574;
    STZ.B $2C                            ;88E576;
    LDA.B #$3E                           ;88E578;
    STA.B $16                            ;88E57A;
    LDA.B #$04                           ;88E57C;
    JSL.L CODE_848F07                    ;88E57E;
    LDA.B #$02                           ;88E582;
    STA.B $01                            ;88E584;
    LDA.B #$04                           ;88E586;
    STA.B $12                            ;88E588;
    STZ.B $04                            ;88E58A;
    LDA.B #$08                           ;88E58C;
    STA.B $27                            ;88E58E;
    STA.B $26                            ;88E590;
    STA.B $30                            ;88E592;
    JML.L CODE_8280B4                    ;88E594;

CODE_88E598:
    LDA.W $0B9C                          ;88E598;
    AND.B #$01                           ;88E59B;
    BNE CODE_88E5A9                      ;88E59D;
    LDA.B $0B                            ;88E59F;
    BPL CODE_88E5A7                      ;88E5A1;
    DEC.B $37                            ;88E5A3;
    BRA CODE_88E5A9                      ;88E5A5;

CODE_88E5A7:
    INC.B $37                            ;88E5A7;

CODE_88E5A9:
    LDA.B #$E0                           ;88E5A9;
    TRB.B $37                            ;88E5AB;
    JSR.W CODE_88E841                    ;88E5AD;
    REP #$20                             ;88E5B0;
    LDA.W $0004                          ;88E5B2;
    STA.B $05                            ;88E5B5;
    LDA.W $0006                          ;88E5B7;
    STA.B $08                            ;88E5BA;
    SEP #$20                             ;88E5BC;
    LDA.B $0B                            ;88E5BE;
    BPL CODE_88E5D0                      ;88E5C0;
    LDA.W $1F41                          ;88E5C2;
    BEQ CODE_88E5DE                      ;88E5C5;
    LDA.B #$06                           ;88E5C7;
    STA.B $01                            ;88E5C9;
    STZ.B $02                            ;88E5CB;
    JMP.W CODE_88E807                    ;88E5CD;

CODE_88E5D0:
    LDA.W $1F40                          ;88E5D0;
    BEQ CODE_88E5DE                      ;88E5D3;
    LDA.B #$06                           ;88E5D5;
    STA.B $01                            ;88E5D7;
    STZ.B $02                            ;88E5D9;
    JMP.W CODE_88E807                    ;88E5DB;

CODE_88E5DE:
    LDA.W $1F43                          ;88E5DE;
    BEQ CODE_88E5F5                      ;88E5E1;
    JSL.L CODE_849086                    ;88E5E3;
    CMP.B #$3A                           ;88E5E7;
    BEQ CODE_88E5EF                      ;88E5E9;
    CMP.B #$7F                           ;88E5EB;
    BNE CODE_88E5F5                      ;88E5ED;

CODE_88E5EF:
    LDA.B #$08                           ;88E5EF;
    STA.B $01                            ;88E5F1;
    STZ.B $02                            ;88E5F3;

CODE_88E5F5:
    JMP.W CODE_88E807                    ;88E5F5;

CODE_88E5F8:
    LDX.B $02                            ;88E5F8;
    JMP.W (PTR16_88E5FD,X)               ;88E5FA;

PTR16_88E5FD:
    dw CODE_88E60B                       ;88E5FD;
    dw CODE_88E618                       ;88E5FF;
    dw CODE_88E663                       ;88E601;
    dw CODE_88E676                       ;88E603;
    dw CODE_88E681                       ;88E605;
    dw CODE_88E6DA                       ;88E607;
    dw CODE_88E6F2                       ;88E609;

CODE_88E60B:
    LDA.B #$02                           ;88E60B;
    STA.B $02                            ;88E60D;
    LDA.B #$04                           ;88E60F;
    JSL.L CODE_848F07                    ;88E611;
    JMP.W CODE_88E807                    ;88E615;

CODE_88E618:
    JSL.L CODE_848EEA                    ;88E618;
    LDA.B $0F                            ;88E61C;
    BPL CODE_88E660                      ;88E61E;
    LDA.B #$04                           ;88E620;
    STA.B $02                            ;88E622;
    JSL.L CODE_84A07C                    ;88E624;
    ASL A                                ;88E628;
    ASL A                                ;88E629;
    TAX                                  ;88E62A;
    REP #$20                             ;88E62B;
    LDA.W DATA8_86EE37,X                 ;88E62D;
    ASL A                                ;88E630;
    STA.B $1A                            ;88E631;
    LDA.W DATA8_86EE39,X                 ;88E633;
    ASL A                                ;88E636;
    STA.B $1C                            ;88E637;
    LDA.W $0BAD                          ;88E639;
    STA.B $39                            ;88E63C;
    STA.W $0004                          ;88E63E;
    LDA.W $0BB0                          ;88E641;
    STA.B $3B                            ;88E644;
    STA.W $0006                          ;88E646;
    LDA.B $05                            ;88E649;
    STA.W $0000                          ;88E64B;
    LDA.B $08                            ;88E64E;
    STA.W $0002                          ;88E650;
    JSL.L CODE_80CEB0                    ;88E653;
    LDA.W $0000                          ;88E657;
    LSR A                                ;88E65A;
    LSR A                                ;88E65B;
    SEP #$20                             ;88E65C;
    STA.B $38                            ;88E65E;

CODE_88E660:
    JMP.W CODE_88E807                    ;88E660;

CODE_88E663:
    JSL.L CODE_82820A                    ;88E663;
    DEC.B $38                            ;88E667;
    BNE CODE_88E673                      ;88E669;
    LDA.B #$06                           ;88E66B;
    STA.B $02                            ;88E66D;
    LDA.B #$3C                           ;88E66F;
    STA.B $38                            ;88E671;

CODE_88E673:
    JMP.W CODE_88E807                    ;88E673;

CODE_88E676:
    DEC.B $38                            ;88E676;
    BNE CODE_88E67E                      ;88E678;
    LDA.B #$08                           ;88E67A;
    STA.B $02                            ;88E67C;

CODE_88E67E:
    JMP.W CODE_88E807                    ;88E67E;

CODE_88E681:
    JSR.W CODE_88E841                    ;88E681;
    REP #$20                             ;88E684;
    LDA.B $05                            ;88E686;
    STA.W $0000                          ;88E688;
    LDA.B $08                            ;88E68B;
    STA.W $0002                          ;88E68D;
    SEP #$20                             ;88E690;
    JSL.L CODE_84A097                    ;88E692;
    ASL A                                ;88E696;
    ASL A                                ;88E697;
    TAX                                  ;88E698;
    REP #$20                             ;88E699;
    LDA.W DATA8_86EE37,X                 ;88E69B;
    STA.B $1A                            ;88E69E;
    LDA.W DATA8_86EE39,X                 ;88E6A0;
    STA.B $1C                            ;88E6A3;
    JSL.L CODE_82820A                    ;88E6A5;
    LDA.B $08                            ;88E6A9;
    SEC                                  ;88E6AB;
    SBC.W $0006                          ;88E6AC;
    BCS CODE_88E6B5                      ;88E6AF;
    EOR.W #$FFFF                         ;88E6B1;
    INC A                                ;88E6B4;

CODE_88E6B5:
    CMP.W #$0002                         ;88E6B5;
    BCS CODE_88E6D7                      ;88E6B8;
    LDA.B $05                            ;88E6BA;
    SEC                                  ;88E6BC;
    SBC.W $0004                          ;88E6BD;
    BCS CODE_88E6C6                      ;88E6C0;
    EOR.W #$FFFF                         ;88E6C2;
    INC A                                ;88E6C5;

CODE_88E6C6:
    CMP.W #$0002                         ;88E6C6;
    SEP #$20                             ;88E6C9;
    BCS CODE_88E713                      ;88E6CB;
    LDA.B #$0A                           ;88E6CD;
    STA.B $02                            ;88E6CF;
    LDA.B #$05                           ;88E6D1;
    JSL.L CODE_848F07                    ;88E6D3;

CODE_88E6D7:
    JMP.W CODE_88E807                    ;88E6D7;

CODE_88E6DA:
    JSL.L CODE_848EEA                    ;88E6DA;
    LDA.B $0F                            ;88E6DE;
    BPL CODE_88E6EF                      ;88E6E0;
    LDA.B #$0A                           ;88E6E2;
    JSL.L CODE_848F07                    ;88E6E4;
    LDA.B #$0C                           ;88E6E8;
    STA.B $02                            ;88E6EA;
    JSR.W CODE_88E880                    ;88E6EC;

CODE_88E6EF:
    JMP.W CODE_88E807                    ;88E6EF;

CODE_88E6F2:
    JSL.L CODE_848EEA                    ;88E6F2;
    LDA.B $0F                            ;88E6F6;
    BPL CODE_88E713                      ;88E6F8;
    LDA.B #$04                           ;88E6FA;
    STA.B $01                            ;88E6FC;
    STZ.B $02                            ;88E6FE;
    LDA.B #$04                           ;88E700;
    JSL.L CODE_848F07                    ;88E702;
    LDA.B $0B                            ;88E706;
    BPL CODE_88E710                      ;88E708;
    STZ.W $1F41                          ;88E70A;
    JMP.W CODE_88E807                    ;88E70D;

CODE_88E710:
    STZ.W $1F40                          ;88E710;

CODE_88E713:
    JMP.W CODE_88E807                    ;88E713;

CODE_88E716:
    LDX.B $02                            ;88E716;
    JMP.W (PTR16_88E71B,X)               ;88E718;

PTR16_88E71B:
    dw CODE_88E723                       ;88E71B;
    dw CODE_88E730                       ;88E71D;
    dw CODE_88E745                       ;88E71F;
    dw CODE_88E75D                       ;88E721;

CODE_88E723:
    LDA.B #$02                           ;88E723;
    STA.B $02                            ;88E725;
    LDA.B #$04                           ;88E727;
    JSL.L CODE_848F07                    ;88E729;
    JMP.W CODE_88E807                    ;88E72D;

CODE_88E730:
    JSL.L CODE_848EEA                    ;88E730;
    LDA.B $0F                            ;88E734;
    BPL CODE_88E742                      ;88E736;
    LDA.B #$04                           ;88E738;
    STA.B $02                            ;88E73A;
    LDA.B #$05                           ;88E73C;
    JSL.L CODE_848F07                    ;88E73E;

CODE_88E742:
    JMP.W CODE_88E807                    ;88E742;

CODE_88E745:
    JSL.L CODE_848EEA                    ;88E745;
    LDA.B $0F                            ;88E749;
    BPL CODE_88E75A                      ;88E74B;
    LDA.B #$06                           ;88E74D;
    STA.B $02                            ;88E74F;
    LDA.B #$0A                           ;88E751;
    JSL.L CODE_848F07                    ;88E753;
    JSR.W CODE_88E880                    ;88E757;

CODE_88E75A:
    JMP.W CODE_88E807                    ;88E75A;

CODE_88E75D:
    JSL.L CODE_848EEA                    ;88E75D;
    LDA.B $0F                            ;88E761;
    BPL CODE_88E771                      ;88E763;
    LDA.B #$04                           ;88E765;
    JSL.L CODE_848F07                    ;88E767;
    LDA.B #$04                           ;88E76B;
    STA.B $01                            ;88E76D;
    STZ.B $02                            ;88E76F;

CODE_88E771:
    JMP.W CODE_88E807                    ;88E771;

CODE_88E774:
    LDX.B $02                            ;88E774;
    JMP.W (PTR16_88E779,X)               ;88E776;

PTR16_88E779:
    dw CODE_88E781                       ;88E779;
    dw CODE_88E79E                       ;88E77B;
    dw CODE_88E7C2                       ;88E77D;
    dw CODE_88E7DC                       ;88E77F;

CODE_88E781:
    LDA.B #$02                           ;88E781;
    STA.B $02                            ;88E783;
    REP #$20                             ;88E785;
    STZ.B $1A                            ;88E787;
    STZ.B $1C                            ;88E789;
    LDA.W #$D859                         ;88E78B;
    STA.B $20                            ;88E78E;
    SEP #$20                             ;88E790;
    LDA.B #$40                           ;88E792;
    STA.B $1E                            ;88E794;
    LDA.B #$FF                           ;88E796;
    STA.B $2F                            ;88E798;
    JML.L CODE_8280B4                    ;88E79A;

CODE_88E79E:
    JSL.L CODE_8281E8                    ;88E79E;
    JSL.L CODE_8491BE                    ;88E7A2;
    LDA.B $2B                            ;88E7A6;
    AND.B #$04                           ;88E7A8;
    BEQ CODE_88E7BE                      ;88E7AA;
    LDA.B #$04                           ;88E7AC;
    STA.B $02                            ;88E7AE;
    REP #$20                             ;88E7B0;
    LDA.B $1C                            ;88E7B2;
    EOR.W #$FFFF                         ;88E7B4;
    INC A                                ;88E7B7;
    LSR A                                ;88E7B8;
    LSR A                                ;88E7B9;
    STA.B $1C                            ;88E7BA;
    SEP #$20                             ;88E7BC;

CODE_88E7BE:
    JML.L CODE_8280B4                    ;88E7BE;

CODE_88E7C2:
    JSL.L CODE_8281E8                    ;88E7C2;
    JSL.L CODE_8491BE                    ;88E7C6;
    LDA.B $2B                            ;88E7CA;
    AND.B #$04                           ;88E7CC;
    BEQ CODE_88E7D8                      ;88E7CE;
    LDA.B #$06                           ;88E7D0;
    STA.B $02                            ;88E7D2;
    LDA.B #$78                           ;88E7D4;
    STA.B $38                            ;88E7D6;

CODE_88E7D8:
    JML.L CODE_8280B4                    ;88E7D8;

CODE_88E7DC:
    DEC.B $38                            ;88E7DC;
    BEQ CODE_88E803                      ;88E7DE;
    REP #$20                             ;88E7E0;
    LDA.W #$FFF0                         ;88E7E2;
    STA.W $0000                          ;88E7E5;
    STA.W $0002                          ;88E7E8;
    LDA.W #$001F                         ;88E7EB;
    STA.W $0004                          ;88E7EE;
    STA.W $0006                          ;88E7F1;
    SEP #$20                             ;88E7F4;
    LDA.B #$07                           ;88E7F6;
    STA.W $0008                          ;88E7F8;
    JSL.L CODE_84A4C6                    ;88E7FB;
    JML.L CODE_8280B4                    ;88E7FF;

CODE_88E803:
    JML.L CODE_828398                    ;88E803;

CODE_88E807:
    REP #$20                             ;88E807;
    LDA.W #$D859                         ;88E809;
    STA.B $20                            ;88E80C;
    JSL.L CODE_84AB77                    ;88E80E;
    LDA.W #$D867                         ;88E812;
    STA.B $20                            ;88E815;
    JSL.L CODE_84AB4C                    ;88E817;
    LDA.W #$D863                         ;88E81B;
    STA.B $20                            ;88E81E;
    SEP #$20                             ;88E820;
    LDA.W $1F3F                          ;88E822;
    BMI CODE_88E82F                      ;88E825;
    JSL.L CODE_849B03                    ;88E827;
    JML.L CODE_8280B4                    ;88E82B;

CODE_88E82F:
    LDA.B #$0A                           ;88E82F;
    STA.B $01                            ;88E831;
    STZ.B $02                            ;88E833;
    STZ.B $03                            ;88E835;
    LDA.B #$04                           ;88E837;
    JSL.L CODE_848F07                    ;88E839;
    JML.L CODE_8280B4                    ;88E83D;

CODE_88E841:
    LDA.B $37                            ;88E841;
    ASL A                                ;88E843;
    ASL A                                ;88E844;
    TAX                                  ;88E845;
    REP #$20                             ;88E846;
    LDA.W DATA8_86EEB7,X                 ;88E848;
    ASL A                                ;88E84B;
    ASL A                                ;88E84C;
    ASL A                                ;88E84D;
    XBA                                  ;88E84E;
    BIT.W #$0080                         ;88E84F;
    BEQ CODE_88E859                      ;88E852;
    ORA.W #$FF00                         ;88E854;
    BRA CODE_88E85C                      ;88E857;

CODE_88E859:
    AND.W #$00FF                         ;88E859;

CODE_88E85C:
    CLC                                  ;88E85C;
    ADC.B $35                            ;88E85D;
    STA.W $0004                          ;88E85F;
    LDA.W DATA8_86EEB9,X                 ;88E862;
    ASL A                                ;88E865;
    ASL A                                ;88E866;
    ASL A                                ;88E867;
    XBA                                  ;88E868;
    BIT.W #$0080                         ;88E869;
    BEQ CODE_88E873                      ;88E86C;
    ORA.W #$FF00                         ;88E86E;
    BRA CODE_88E876                      ;88E871;

CODE_88E873:
    AND.W #$00FF                         ;88E873;

CODE_88E876:
    CLC                                  ;88E876;
    ADC.W #$0070                         ;88E877;
    STA.W $0006                          ;88E87A;
    SEP #$20                             ;88E87D;
    RTS                                  ;88E87F;

CODE_88E880:
    JSL.L CODE_828358                    ;88E880;
    BNE CODE_88E89B                      ;88E884;
    INC.W $0000,X                        ;88E886;
    LDA.B #$30                           ;88E889;
    STA.W $000A,X                        ;88E88B;
    REP #$20                             ;88E88E;
    LDA.W #$0070                         ;88E890;
    STA.W $0008,X                        ;88E893;
    LDA.B $05                            ;88E896;
    STA.W $0005,X                        ;88E898;

CODE_88E89B:
    SEP #$30                             ;88E89B;
    RTS                                  ;88E89D;

CODE_88E89E:
    LDX.B $01                            ;88E89E;
    JSR.W (PTR16_88E8A7,X)               ;88E8A0;
    JML.L CODE_8280B4                    ;88E8A3;

PTR16_88E8A7:
    dw CODE_88E8AD                       ;88E8A7;
    dw CODE_88E8E3                       ;88E8A9;
    dw CODE_88E905                       ;88E8AB;

CODE_88E8AD:
    LDA.B #$02                           ;88E8AD;
    STA.B $01                            ;88E8AF;
    LDA.B #$2D                           ;88E8B1;
    STA.B $11                            ;88E8B3;
    STZ.B $18                            ;88E8B5;
    LDA.B #$06                           ;88E8B7;
    STA.B $12                            ;88E8B9;
    LDA.B #$3E                           ;88E8BB;
    STA.B $16                            ;88E8BD;
    LDA.B #$06                           ;88E8BF;
    JSL.L CODE_848F07                    ;88E8C1;
    LDA.B #$44                           ;88E8C5;
    JSL.L CODE_8088A2                    ;88E8C7;
    LDA.B #$0C                           ;88E8CB;
    STA.B $27                            ;88E8CD;
    STA.B $26                            ;88E8CF;
    STA.B $30                            ;88E8D1;
    STZ.B $28                            ;88E8D3;
    REP #$20                             ;88E8D5;
    LDA.W #$D86B                         ;88E8D7;
    STA.B $20                            ;88E8DA;
    SEP #$20                             ;88E8DC;
    JSL.L CODE_849B03                    ;88E8DE;
    RTS                                  ;88E8E2;

CODE_88E8E3:
    JSL.L CODE_848EEA                    ;88E8E3;
    LDA.B $0F                            ;88E8E7;
    BPL CODE_88E8EF                      ;88E8E9;
    LDA.B #$04                           ;88E8EB;
    STA.B $01                            ;88E8ED;

CODE_88E8EF:
    LDA.B $0F                            ;88E8EF;
    REP #$20                             ;88E8F1;
    AND.W #$007F                         ;88E8F3;
    ASL A                                ;88E8F6;
    ASL A                                ;88E8F7;
    CLC                                  ;88E8F8;
    ADC.W #$D86B                         ;88E8F9;
    STA.B $20                            ;88E8FC;
    SEP #$20                             ;88E8FE;
    JSL.L CODE_849B03                    ;88E900;
    RTS                                  ;88E904;

CODE_88E905:
    JSL.L CODE_848EEA                    ;88E905;
    LDA.B $0F                            ;88E909;
    BPL CODE_88E912                      ;88E90B;
    JSL.L CODE_8283A3                    ;88E90D;
    RTS                                  ;88E911;

CODE_88E912:
    LDA.B $0F                            ;88E912;
    REP #$20                             ;88E914;
    AND.W #$007F                         ;88E916;
    ASL A                                ;88E919;
    ASL A                                ;88E91A;
    ASL A                                ;88E91B;
    CLC                                  ;88E91C;
    ADC.W #$D873                         ;88E91D;
    STA.B $20                            ;88E920;
    SEP #$20                             ;88E922;
    JSL.L CODE_849B03                    ;88E924;
    REP #$20                             ;88E928;
    LDA.B $20                            ;88E92A;
    CLC                                  ;88E92C;
    ADC.W #$0004                         ;88E92D;
    STA.B $20                            ;88E930;
    SEP #$20                             ;88E932;
    JSL.L CODE_849B03                    ;88E934;
    RTS                                  ;88E938;

CODE_88E939:
    LDA.B $01                            ;88E939;
    BNE CODE_88E9A1                      ;88E93B;
    INC.B $01                            ;88E93D;
    LDA.B #$2B                           ;88E93F;
    TSB.B $11                            ;88E941;
    STZ.B $18                            ;88E943;
    LDA.B #$91                           ;88E945;
    STA.B $16                            ;88E947;
    STZ.B $12                            ;88E949;
    LDA.B $0B                            ;88E94B;
    AND.B #$1C                           ;88E94D;
    TAX                                  ;88E94F;
    LDA.B $0B                            ;88E950;
    ASL A                                ;88E952;
    ASL A                                ;88E953;
    REP #$20                             ;88E954;
    LDA.W DATA8_86DBDC,X                 ;88E956;
    BCS CODE_88E95F                      ;88E959;
    EOR.W #$FFFF                         ;88E95B;
    INC A                                ;88E95E;

CODE_88E95F:
    CLC                                  ;88E95F;
    ADC.B $05                            ;88E960;
    STA.B $05                            ;88E962;
    LDA.W DATA8_86DBEC,X                 ;88E964;
    CLC                                  ;88E967;
    ADC.B $08                            ;88E968;
    STA.B $08                            ;88E96A;
    JSL.L CODE_849086                    ;88E96C;
    AND.W #$003C                         ;88E970;
    TAX                                  ;88E973;
    LDA.B $0B                            ;88E974;
    LSR A                                ;88E976;
    LSR A                                ;88E977;
    LSR A                                ;88E978;
    LSR A                                ;88E979;
    LDA.W DATA8_86DBFC,X                 ;88E97A;
    BCS CODE_88E983                      ;88E97D;
    EOR.W #$FFFF                         ;88E97F;
    INC A                                ;88E982;

CODE_88E983:
    STA.B $1A                            ;88E983;
    JSL.L CODE_849086                    ;88E985;
    AND.W #$003C                         ;88E989;
    TAX                                  ;88E98C;
    LDA.W DATA8_86DC1C,X                 ;88E98D;
    STA.B $1C                            ;88E990;
    SEP #$20                             ;88E992;
    LDA.B #$30                           ;88E994;
    STA.B $1E                            ;88E996;
    LDX.B $0B                            ;88E998;
    LDA.W DATA8_86DC3C,X                 ;88E99A;
    JSL.L CODE_848F07                    ;88E99D;

CODE_88E9A1:
    JSL.L CODE_8281E8                    ;88E9A1;
    LDA.B $0B                            ;88E9A5;
    EOR.W $0B9B                          ;88E9A7;
    LSR A                                ;88E9AA;
    BCC CODE_88E9B5                      ;88E9AB;
    JSL.L CODE_8280B4                    ;88E9AD;
    LDA.B $0E                            ;88E9B1;
    BEQ CODE_88E9B6                      ;88E9B3;

CODE_88E9B5:
    RTL                                  ;88E9B5;

CODE_88E9B6:
    JML.L CODE_828398                    ;88E9B6;

CODE_88E9BA:
    LDA.B $01                            ;88E9BA;
    BNE CODE_88EA16                      ;88E9BC;
    INC.B $01                            ;88E9BE;
    LDA.B #$29                           ;88E9C0;
    STA.B $11                            ;88E9C2;
    STZ.B $18                            ;88E9C4;
    STZ.B $12                            ;88E9C6;
    LDA.B #$76                           ;88E9C8;
    STA.B $16                            ;88E9CA;
    LDX.B $0B                            ;88E9CC;
    LDA.W DATA8_86DC50,X                 ;88E9CE;
    TSB.B $11                            ;88E9D1;
    LDA.W DATA8_86DC4C,X                 ;88E9D3;
    JSL.L CODE_848F07                    ;88E9D6;
    LDA.B $0B                            ;88E9DA;
    ASL A                                ;88E9DC;
    TAX                                  ;88E9DD;
    REP #$20                             ;88E9DE;
    LDA.W DATA8_86DC54,X                 ;88E9E0;
    CLC                                  ;88E9E3;
    ADC.B $05                            ;88E9E4;
    STA.B $05                            ;88E9E6;
    LDA.W DATA8_86DC5C,X                 ;88E9E8;
    CLC                                  ;88E9EB;
    ADC.B $08                            ;88E9EC;
    STA.B $08                            ;88E9EE;
    JSL.L CODE_849086                    ;88E9F0;
    AND.W #$01FF                         ;88E9F4;
    STA.B $1A                            ;88E9F7;
    LDA.B $10                            ;88E9F9;
    ASL A                                ;88E9FB;
    ASL A                                ;88E9FC;
    BCS CODE_88EA07                      ;88E9FD;
    LDA.B $1A                            ;88E9FF;
    EOR.W #$FFFF                         ;88EA01;
    INC A                                ;88EA04;
    STA.B $1A                            ;88EA05;

CODE_88EA07:
    JSL.L CODE_849086                    ;88EA07;
    AND.W #$01FF                         ;88EA0B;
    STA.B $1C                            ;88EA0E;
    SEP #$20                             ;88EA10;
    LDA.B #$2C                           ;88EA12;
    STA.B $1E                            ;88EA14;

CODE_88EA16:
    JSL.L CODE_8281E8                    ;88EA16;
    JSL.L CODE_848EEA                    ;88EA1A;
    LDA.B $0B                            ;88EA1E;
    EOR.W $0B9B                          ;88EA20;
    LSR A                                ;88EA23;
    BCC CODE_88EA32                      ;88EA24;
    JSL.L CODE_8280B4                    ;88EA26;
    LDA.B $0E                            ;88EA2A;
    BNE CODE_88EA32                      ;88EA2C;
    JML.L CODE_828398                    ;88EA2E;

CODE_88EA32:
    RTL                                  ;88EA32;

CODE_88EA33:
    LDA.B $01                            ;88EA33;
    BNE CODE_88EA43                      ;88EA35;
    INC.B $01                            ;88EA37;
    LDA.B $0B                            ;88EA39;
    JSL.L CODE_848F07                    ;88EA3B;
    LDA.B #$01                           ;88EA3F;
    STA.B $0B                            ;88EA41;

CODE_88EA43:
    DEC.B $02                            ;88EA43;
    BEQ CODE_88EA5F                      ;88EA45;
    JSL.L CODE_848EEA                    ;88EA47;
    JSL.L CODE_8281E8                    ;88EA4B;
    LDA.B $0B                            ;88EA4F;
    EOR.B #$01                           ;88EA51;
    STA.B $0B                            ;88EA53;
    BEQ CODE_88EA63                      ;88EA55;
    JSL.L CODE_8280B4                    ;88EA57;
    LDA.B $0E                            ;88EA5B;
    BNE CODE_88EA63                      ;88EA5D;

CODE_88EA5F:
    JML.L CODE_828398                    ;88EA5F;

CODE_88EA63:
    RTL                                  ;88EA63;

CODE_88EA64:
    LDX.B $01                            ;88EA64;
    JSR.W (PTR16_88EA99,X)               ;88EA66;
    LDA.B $0B                            ;88EA69;
    CMP.B #$0A                           ;88EA6B;
    BNE CODE_88EA73                      ;88EA6D;
    DEC A                                ;88EA6F;
    JMP.W CODE_88EA77                    ;88EA70;

CODE_88EA73:
    CMP.B #$0B                           ;88EA73;
    BEQ CODE_88EA78                      ;88EA75;

CODE_88EA77:
    INC A                                ;88EA77;

CODE_88EA78:
    CMP.W $1F3C                          ;88EA78;
    BNE CODE_88EA8C                      ;88EA7B;
    REP #$20                             ;88EA7D;
    DEC.B $02                            ;88EA7F;
    BEQ CODE_88EA92                      ;88EA81;
    SEP #$20                             ;88EA83;
    JSL.L CODE_8280B4                    ;88EA85;
    JMP.W CODE_88EA98                    ;88EA89;

CODE_88EA8C:
    JSL.L CODE_82806E                    ;88EA8C;
    BCC CODE_88EA98                      ;88EA90;

CODE_88EA92:
    SEP #$20                             ;88EA92;
    JSL.L CODE_828398                    ;88EA94;

CODE_88EA98:
    RTL                                  ;88EA98;

PTR16_88EA99:
    dw CODE_88EA9D                       ;88EA99;
    dw CODE_88EB22                       ;88EA9B;

CODE_88EA9D:
    REP #$20                             ;88EA9D;
    LDA.W #$009C                         ;88EA9F;
    STA.B $02                            ;88EAA2;
    SEP #$20                             ;88EAA4;
    LDA.B #$02                           ;88EAA6;
    STA.B $01                            ;88EAA8;
    LDA.B #$17                           ;88EAAA;
    STA.W $00C0                          ;88EAAC;
    LDA.B #$07                           ;88EAAF;
    STA.W $00C1                          ;88EAB1;
    LDA.B #$02                           ;88EAB4;
    STA.W $00C9                          ;88EAB6;
    LDA.B #$50                           ;88EAB9;
    STA.W $00CA                          ;88EABB;
    LDA.B $0B                            ;88EABE;
    CMP.B #$0A                           ;88EAC0;
    BEQ CODE_88EAE1                      ;88EAC2;
    ASL A                                ;88EAC4;
    ASL A                                ;88EAC5;
    TAY                                  ;88EAC6;
    REP #$20                             ;88EAC7;
    LDA.W DATA8_86E2F4,Y                 ;88EAC9;
    STA.W $0000                          ;88EACC;
    LDA.W DATA8_86E2F6,Y                 ;88EACF;
    STA.W $0002                          ;88EAD2;
    REP #$10                             ;88EAD5;
    LDX.W $0000                          ;88EAD7;
    LDY.W $0002                          ;88EADA;
    JSL.L CODE_828000                    ;88EADD;

CODE_88EAE1:
    SEP #$30                             ;88EAE1;
    LDA.B $0B                            ;88EAE3;
    ASL A                                ;88EAE5;
    ASL A                                ;88EAE6;
    TAY                                  ;88EAE7;
    LDA.W DATA8_86E2C4,Y                 ;88EAE8;
    TAX                                  ;88EAEB;
    LDA.L $7F8200,X                      ;88EAEC;
    STA.B $18                            ;88EAF0;
    LDA.B $0B                            ;88EAF2;
    CMP.B #$0A                           ;88EAF4;
    BNE CODE_88EB00                      ;88EAF6;
    LDA.B #$1A                           ;88EAF8;
    STA.W $0000                          ;88EAFA;
    JMP.W CODE_88EB05                    ;88EAFD;

CODE_88EB00:
    LDA.B #$18                           ;88EB00;
    STA.W $0000                          ;88EB02;

CODE_88EB05:
    LDA.L $7F8300,X                      ;88EB05;
    AND.B #$F1                           ;88EB09;
    ORA.W $0000                          ;88EB0B;
    STA.B $11                            ;88EB0E;
    LDA.W DATA8_86E2C7,Y                 ;88EB10;
    STA.B $12                            ;88EB13;
    LDA.W DATA8_86E2C5,Y                 ;88EB15;
    STA.B $16                            ;88EB18;
    LDA.W DATA8_86E2C6,Y                 ;88EB1A;
    JSL.L CODE_848F07                    ;88EB1D;
    RTS                                  ;88EB21;

CODE_88EB22:
    LDA.B $0B                            ;88EB22;
    CMP.B #$0A                           ;88EB24;
    BNE CODE_88EB2C                      ;88EB26;
    DEC A                                ;88EB28;
    JMP.W CODE_88EB30                    ;88EB29;

CODE_88EB2C:
    CMP.B #$0B                           ;88EB2C;
    BEQ CODE_88EB31                      ;88EB2E;

CODE_88EB30:
    INC A                                ;88EB30;

CODE_88EB31:
    CMP.W $1F3C                          ;88EB31;
    BNE CODE_88EB43                      ;88EB34;
    REP #$20                             ;88EB36;
    LDA.W $1E4D                          ;88EB38;
    CLC                                  ;88EB3B;
    ADC.W #$0080                         ;88EB3C;
    STA.B $05                            ;88EB3F;
    SEP #$20                             ;88EB41;

CODE_88EB43:
    RTS                                  ;88EB43;

CODE_88EB44:
    LDX.B $01                            ;88EB44;
    JMP.W (PTR16_88EB49,X)               ;88EB46;

PTR16_88EB49:
    dw CODE_88EB4F                       ;88EB49;
    dw CODE_88EB66                       ;88EB4B;
    dw CODE_88EB78                       ;88EB4D;

CODE_88EB4F:
    LDA.B #$02                           ;88EB4F;
    STA.B $01                            ;88EB51;
    STA.B $12                            ;88EB53;
    STZ.B $18                            ;88EB55;
    LDA.B #$2B                           ;88EB57;
    STA.B $11                            ;88EB59;
    LDA.B #$A1                           ;88EB5B;
    STA.B $16                            ;88EB5D;
    LDA.B #$01                           ;88EB5F;
    JSL.L CODE_848F07                    ;88EB61;
    RTL                                  ;88EB65;

CODE_88EB66:
    REP #$30                             ;88EB66;
    LDX.B $0C                            ;88EB68;
    LDA.W $0005,X                        ;88EB6A;
    STA.B $05                            ;88EB6D;
    LDA.W $0008,X                        ;88EB6F;
    STA.B $08                            ;88EB72;
    JML.L CODE_8280B4                    ;88EB74;

CODE_88EB78:
    LDA.B $02                            ;88EB78;
    BNE CODE_88EBA3                      ;88EB7A;
    INC.B $02                            ;88EB7C;
    LDA.B #$40                           ;88EB7E;
    STA.B $18                            ;88EB80;
    LDA.B #$2A                           ;88EB82;
    STA.B $11                            ;88EB84;
    LDA.B #$A2                           ;88EB86;
    STA.B $16                            ;88EB88;
    LDA.B #$00                           ;88EB8A;
    JSL.L CODE_848F07                    ;88EB8C;
    REP #$20                             ;88EB90;
    LDA.B $05                            ;88EB92;
    CLC                                  ;88EB94;
    ADC.W #$0020                         ;88EB95;
    STA.B $05                            ;88EB98;
    LDA.W #$0080                         ;88EB9A;
    STA.B $1A                            ;88EB9D;
    STA.B $1C                            ;88EB9F;
    SEP #$20                             ;88EBA1;

CODE_88EBA3:
    JSL.L CODE_82820A                    ;88EBA3;
    LDA.W $0B9C                          ;88EBA7;
    LSR A                                ;88EBAA;
    BCC CODE_88EBB9                      ;88EBAB;
    JSL.L CODE_8280B4                    ;88EBAD;
    LDA.B $0E                            ;88EBB1;
    BNE CODE_88EBB9                      ;88EBB3;
    JML.L CODE_828398                    ;88EBB5;

CODE_88EBB9:
    RTL                                  ;88EBB9;

CODE_88EBBA:
    REP #$20                             ;88EBBA;
    LDA.W $0BAD                          ;88EBBC;
    CMP.W #$0A80                         ;88EBBF;
    BCC CODE_88EBCE                      ;88EBC2;
    LDA.W #$0F00                         ;88EBC4;
    STA.W $1E60                          ;88EBC7;
    JML.L CODE_828398                    ;88EBCA;

CODE_88EBCE:
    SEP #$20                             ;88EBCE;
    LDA.W $1F7D                          ;88EBD0;
    CMP.B #$02                           ;88EBD3;
    BNE CODE_88EBE6                      ;88EBD5;
    LDX.B $01                            ;88EBD7;
    BNE CODE_88EBE6                      ;88EBD9;
    INC.B $01                            ;88EBDB;
    LDA.B #$0A                           ;88EBDD;
    STA.W $1F08                          ;88EBDF;
    JML.L CODE_80B087                    ;88EBE2;

CODE_88EBE6:
    RTL                                  ;88EBE6;

CODE_88EBE7:
    LDX.B $01                            ;88EBE7;
    BNE CODE_88EBF5                      ;88EBE9;
    INC.B $01                            ;88EBEB;
    LDA.B #$04                           ;88EBED;
    STA.B $02                            ;88EBEF;
    LDA.B #$04                           ;88EBF1;
    STA.B $04                            ;88EBF3;

CODE_88EBF5:
    REP #$20                             ;88EBF5;
    LDA.W $0BAD                          ;88EBF7;
    CMP.W #$0C20                         ;88EBFA;
    BCC CODE_88EC03                      ;88EBFD;
    JML.L CODE_828398                    ;88EBFF;

CODE_88EC03:
    CMP.W #$0B00                         ;88EC03;
    BCS CODE_88EC0C                      ;88EC06;
    JML.L CODE_828387                    ;88EC08;

CODE_88EC0C:
    SEP #$20                             ;88EC0C;
    LDA.B $04                            ;88EC0E;
    STA.B $05                            ;88EC10;
    JSR.W CODE_88EC85                    ;88EC12;
    LDX.B $02                            ;88EC15;
    JSR.W (PTR16_88EC1B,X)               ;88EC17;
    RTL                                  ;88EC1A;

PTR16_88EC1B:
    dw CODE_88EC21                       ;88EC1B;
    dw CODE_88EC31                       ;88EC1D;
    dw CODE_88EC59                       ;88EC1F;

CODE_88EC21:
    LDA.B #$02                           ;88EC21;
    STA.W $1E89                          ;88EC23;
    STZ.W $1E9A                          ;88EC26;
    INC.W $1E88                          ;88EC29;
    LDA.B #$04                           ;88EC2C;
    STA.B $02                            ;88EC2E;
    RTS                                  ;88EC30;

CODE_88EC31:
    LDX.B $03                            ;88EC31;
    JMP.W (PTR16_88EC36,X)               ;88EC33;

PTR16_88EC36:
    dw CODE_88EC3C                       ;88EC36;
    dw CODE_88EC5A                       ;88EC38;
    dw CODE_88EC72                       ;88EC3A;

CODE_88EC3C:
    LDA.B #$02                           ;88EC3C;
    STA.B $03                            ;88EC3E;
    REP #$20                             ;88EC40;
    LDA.W #$0000                         ;88EC42;
    STA.W $1E8D                          ;88EC45;
    LDA.W #$0400                         ;88EC48;
    STA.W $1E90                          ;88EC4B;
    SEP #$20                             ;88EC4E;
    LDA.B #$02                           ;88EC50;
    TRB.W $00C0                          ;88EC52;
    JSL.L CODE_80E02E                    ;88EC55;

CODE_88EC59:
    RTS                                  ;88EC59;

CODE_88EC5A:
    LDA.W $1F27                          ;88EC5A;
    BNE CODE_88EC71                      ;88EC5D;
    LDA.B #$04                           ;88EC5F;
    STA.B $03                            ;88EC61;
    LDA.B #$00                           ;88EC63;
    STA.W $1E8D                          ;88EC65;
    LDA.B #$01                           ;88EC68;
    STA.W $1E8E                          ;88EC6A;
    JSL.L CODE_80E02E                    ;88EC6D;

CODE_88EC71:
    RTS                                  ;88EC71;

CODE_88EC72:
    LDA.W $1F27                          ;88EC72;
    BNE CODE_88EC84                      ;88EC75;
    LDA.B #$04                           ;88EC77;
    STA.B $02                            ;88EC79;
    LDA.B #$02                           ;88EC7B;
    TSB.W $00C0                          ;88EC7D;
    JSL.L CODE_80E01E                    ;88EC80;

CODE_88EC84:
    RTS                                  ;88EC84;

CODE_88EC85:
    REP #$20                             ;88EC85;
    LDX.B #$00                           ;88EC87;
    LDA.W $0BB0                          ;88EC89;
    CMP.W DATA8_86E479,X                 ;88EC8C;
    BCC CODE_88EC93                      ;88EC8F;
    LDX.B #$02                           ;88EC91;

CODE_88EC93:
    SEP #$20                             ;88EC93;
    STX.B $04                            ;88EC95;
    CPX.B $05                            ;88EC97;
    BEQ CODE_88EC9F                      ;88EC99;
    STX.B $02                            ;88EC9B;
    STZ.B $03                            ;88EC9D;

CODE_88EC9F:
    RTS                                  ;88EC9F;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ECF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88ED98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EDF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EE98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EED0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EED8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EEF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EF98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88EFF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F000;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F008;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F010;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F018;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F020;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F028;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F030;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F038;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F040;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F048;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F050;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F058;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F060;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F068;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F070;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F078;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F080;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F088;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F090;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F098;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F0F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F100;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F108;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F110;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F118;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F120;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F128;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F130;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F138;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F140;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F148;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F150;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F158;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F160;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F168;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F170;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F178;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F180;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F188;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F190;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F198;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F1F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F200;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F208;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F210;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F218;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F220;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F228;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F230;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F238;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F240;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F248;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F250;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F258;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F260;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F268;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F270;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F278;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F280;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F288;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F290;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F298;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F2F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F300;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F308;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F310;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F318;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F320;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F328;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F330;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F338;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F340;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F348;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F350;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F358;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F360;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F368;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F370;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F378;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F380;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F388;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F390;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F398;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F3F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F400;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F408;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F410;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F418;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F420;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F428;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F430;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F438;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F440;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F448;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F450;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F458;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F460;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F468;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F470;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F478;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F480;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F488;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F490;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F498;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F4F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F500;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F508;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F510;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F518;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F520;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F528;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F530;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F538;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F540;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F548;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F550;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F558;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F560;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F568;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F570;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F578;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F580;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F588;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F590;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F598;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F5F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F600;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F608;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F610;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F618;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F620;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F628;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F630;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F638;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F640;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F648;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F650;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F658;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F660;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F668;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F670;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F678;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F680;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F688;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F690;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F698;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F6F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F700;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F708;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F710;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F718;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F720;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F728;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F730;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F738;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F740;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F748;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F750;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F758;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F760;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F768;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F770;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F778;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F780;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F788;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F790;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F798;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F7F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F800;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F808;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F810;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F818;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F820;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F828;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F830;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F838;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F840;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F848;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F850;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F858;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F860;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F868;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F870;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F878;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F880;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F888;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F890;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F898;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F8F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F900;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F908;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F910;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F918;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F920;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F928;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F930;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F938;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F940;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F948;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F950;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F958;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F960;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F968;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F970;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F978;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F980;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F988;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F990;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F998;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9A0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9A8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9B0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9B8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9C0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9C8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9D0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9D8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9E0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9E8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9F0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88F9F8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FA98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FAF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FB98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FBF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FC98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FCF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FD98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FDF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FE98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FED0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FED8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FEF8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF00;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF08;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF10;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF18;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF20;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF28;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF30;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF38;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF40;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF48;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF50;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF58;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF60;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF68;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF70;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF78;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF80;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF88;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF90;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FF98;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFA0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFA8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFB0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFB8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFC0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFC8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFD0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFD8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFE0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFE8;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFF0;
    db $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF   ;88FFF8;

          #ifndef __STC15F2K60S2_H_
#define __STC15F2K60S2_H_

/////////////////////////////////////////////////
//注意: STC15W4K32S4系列的芯片,上电后所有与PWM相关的IO口均为
//      高阻态,需将这些口设置为准双向口或强推挽模式方可正常使用
//相关IO: P0.6/P0.7/P1.6/P1.7/P2.1/P2.2
//        P2.3/P2.7/P3.7/P4.2/P4.4/P4.5
/////////////////////////////////////////////////

/////////////////////////////////////////////////

//包含本头文件后,不用另外再包含"REG51.H"

//内核特殊功能寄存器        // 复位值   描述
sfr ACC         =   0xE0;   //0000,0000 累加器Accumulator
sfr B           =   0xF0;   //0000,0000 B寄存器
sfr PSW         =   0xD0;   //0000,0000 程序状态字
sbit CY         =   PSW^7;
sbit AC         =   PSW^6;
sbit F0         =   PSW^5;
sbit RS1        =   PSW^4;
sbit RS0        =   PSW^3;
sbit OV         =   PSW^2;                                                          
sbit P          =   PSW^0;
sfr SP          =   0x81;   //0000,0111 堆栈指针
sfr DPL         =   0x82;   //0000,0000 数据指针低字节
sfr DPH         =   0x83;   //0000,0000 数据指针高字节

//I/O 口特殊功能寄存器
sfr P0          =   0x80;   //1111,1111 端口0
sbit P00        =   P0^0;
sbit P01        =   P0^1;
sbit P02        =   P0^2;
sbit P03        =   P0^3;
sbit P04        =   P0^4;
sbit P05        =   P0^5;
sbit P06        =   P0^6;
sbit P07        =   P0^7;
sfr P1          =   0x90;   //1111,1111 端口1
sbit P10        =   P1^0;
sbit P11        =   P1^1;
sbit P12        =   P1^2;
sbit P13        =   P1^3;
sbit P14        =   P1^4;
sbit P15        =   P1^5;
sbit P16        =   P1^6;
sbit P17        =   P1^7;
sfr P2          =   0xA0;   //1111,1111 端口2
sbit P20        =   P2^0;
sbit P21        =   P2^1;
sbit P22        =   P2^2;
sbit P23        =   P2^3;
sbit P24        =   P2^4;
sbit P25        =   P2^5;
sbit P26        =   P2^6;
sbit P27        =   P2^7;
sfr P3          =   0xB0;   //1111,1111 端口3
sbit P30        =   P3^0;
sbit P31        =   P3^1;
sbit P32        =   P3^2;
sbit P33        =   P3^3;
sbit P34        =   P3^4;
sbit P35        =   P3^5;
sbit P36        =   P3^6;
sbit P37        =   P3^7;
sfr P4          =   0xC0;   //1111,1111 端口4
sbit P40        =   P4^0;
sbit P41        =   P4^1;
sbit P42        =   P4^2;
sbit P43        =   P4^3;
sbit P44        =   P4^4;
sbit P45        =   P4^5;
sbit P46        =   P4^6;
sbit P47        =   P4^7;
sfr P5          =   0xC8;   //xxxx,1111 端口5
sbit P50        =   P5^0;
sbit P51        =   P5^1;
sbit P52        =   P5^2;
sbit P53        =   P5^3;
sbit P54        =   P5^4;
sbit P55        =   P5^5;
sbit P56        =   P5^6;
sbit P57        =   P5^7;
sfr P6          =   0xE8;   //0000,0000 端口6
sbit P60        =   P6^0;
sbit P61        =   P6^1;
sbit P62        =   P6^2;
sbit P63        =   P6^3;
sbit P64        =   P6^4;
sbit P65        =   P6^5;
sbit P66        =   P6^6;
sbit P67        =   P6^7;
sfr P7          =   0xF8;   //0000,0000 端口7
sbit P70        =   P7^0;
sbit P71        =   P7^1;
sbit P72        =   P7^2;
sbit P73        =   P7^3;
sbit P74        =   P7^4;
sbit P75        =   P7^5;
sbit P76        =   P7^6;
sbit P77        =   P7^7;
sfr P0M0        =   0x94;   //0000,0000 端口0模式寄存器0
sfr P0M1        =   0x93;   //0000,0000 端口0模式寄存器1
sfr P1M0        =   0x92;   //0000,0000 端口1模式寄存器0
sfr P1M1        =   0x91;   //0000,0000 端口1模式寄存器1
sfr P2M0        =   0x96;   //0000,0000 端口2模式寄存器0
sfr P2M1        =   0x95;   //0000,0000 端口2模式寄存器1
sfr P3M0        =   0xB2;   //0000,0000 端口3模式寄存器0
sfr P3M1        =   0xB1;   //0000,0000 端口3模式寄存器1
sfr P4M0        =   0xB4;   //0000,0000 端口4模式寄存器0
sfr P4M1        =   0xB3;   //0000,0000 端口4模式寄存器1
sfr P5M0        =   0xCA;   //0000,0000 端口5模式寄存器0
sfr P5M1        =   0xC9;   //0000,0000 端口5模式寄存器1
sfr P6M0        =   0xCC;   //0000,0000 端口6模式寄存器0
sfr P6M1        =   0xCB;   //0000,0000 端口6模式寄存器1
sfr P7M0        =   0xE2;   //0000,0000 端口7模式寄存器0
sfr P7M1        =   0xE1;   //0000,0000 端口7模式寄存器1

//系统管理特殊功能寄存器
sfr PCON        =   0x87;   //0001,0000 电源控制寄存器
sfr AUXR        =   0x8E;   //0000,0000 辅助寄存器
sfr AUXR1       =   0xA2;   //0000,0000 辅助寄存器1
sfr P_SW1       =   0xA2;   //0000,0000 外设端口切换寄存器1
sfr CLK_DIV     =   0x97;   //0000,0000 时钟分频控制寄存器
sfr BUS_SPEED   =   0xA1;   //xx10,x011 总线速度控制寄存器
sfr P1ASF       =   0x9D;   //0000,0000 端口1模拟功能配置寄存器
sfr P_SW2       =   0xBA;   //0xxx,x000 外设端口切换寄存器

//中断特殊功能寄存器
sfr IE          =   0xA8;   //0000,0000 中断控制寄存器
sbit EA         =   IE^7;
sbit ELVD       =   IE^6;
sbit EADC       =   IE^5;
sbit ES         =   IE^4;
sbit ET1        =   IE^3;
sbit EX1        =   IE^2;
sbit ET0        =   IE^1;
sbit EX0        =   IE^0;
sfr IP          =   0xB8;   //0000,0000 中断优先级寄存器
sbit PPCA       =   IP^7;
sbit PLVD       =   IP^6;
sbit PADC       =   IP^5;
sbit PS         =   IP^4;
sbit PT1        =   IP^3;
sbit PX1        =   IP^2;
sbit PT0        =   IP^1;
sbit PX0        =   IP^0;
sfr IE2         =   0xAF;   //0000,0000 中断控制寄存器2
sfr IP2         =   0xB5;   //xxxx,xx00 中断优先级寄存器2
sfr INT_CLKO    =   0x8F;   //0000,0000 外部中断与时钟输出控制寄存器

//定时器特殊功能寄存器
sfr TCON        =   0x88;   //0000,0000 T0/T1控制寄存器
sbit TF1        =   TCON^7;
sbit TR1        =   TCON^6;
sbit TF0        =   TCON^5;
sbit TR0        =   TCON^4;
sbit IE1        =   TCON^3;
sbit IT1        =   TCON^2;
sbit IE0        =   TCON^1;
sbit IT0        =   TCON^0;
sfr TMOD        =   0x89;   //0000,0000 T0/T1模式寄存器
sfr TL0         =   0x8A;   //0000,0000 T0低字节
sfr TL1         =   0x8B;   //0000,0000 T1低字节
sfr TH0         =   0x8C;   //0000,0000 T0高字节
sfr TH1         =   0x8D;   //0000,0000 T1高字节
sfr T4T3M       =   0xD1;   //0000,0000 T3/T4模式寄存器
sfr T3T4M       =   0xD1;   //0000,0000 T3/T4模式寄存器
sfr T4H         =   0xD2;   //0000,0000 T4高字节
sfr T4L         =   0xD3;   //0000,0000 T4低字节
sfr T3H         =   0xD4;   //0000,0000 T3高字节
sfr T3L         =   0xD5;   //0000,0000 T3低字节
sfr T2H         =   0xD6;   //0000,0000 T2高字节
sfr T2L         =   0xD7;   //0000,0000 T2低字节
sfr WKTCL       =   0xAA;   //0000,0000 掉电唤醒定时器低字节
sfr WKTCH       =   0xAB;   //0000,0000 掉电唤醒定时器高字节
sfr WDT_CONTR   =   0xC1;   //0000,0000 看门狗控制寄存器

//串行口特殊功能寄存器
sfr SCON        =   0x98;   //0000,0000 串口1控制寄存器
sbit SM0        =   SCON^7;
sbit SM1        =   SCON^6;
sbit SM2        =   SCON^5;
sbit REN        =   SCON^4;
sbit TB8        =   SCON^3;
sbit RB8        =   SCON^2;
sbit TI         =   SCON^1;
sbit RI         =   SCON^0;
sfr SBUF        =   0x99;   //xxxx,xxxx 串口1数据寄存器
sfr S2CON       =   0x9A;   //0000,0000 串口2控制寄存器
sfr S2BUF       =   0x9B;   //xxxx,xxxx 串口2数据寄存器
sfr S3CON       =   0xAC;   //0000,0000 串口3控制寄存器
sfr S3BUF       =   0xAD;   //xxxx,xxxx 串口3数据寄存器
sfr S4CON       =   0x84;   //0000,0000 串口4控制寄存器
sfr S4BUF       =   0x85;   //xxxx,xxxx 串口4数据寄存器
sfr SADDR       =   0xA9;   //0000,0000 从机地址寄存器
sfr SADEN       =   0xB9;   //0000,0000 从机地址屏蔽寄存器

//ADC 特殊功能寄存器
sfr ADC_CONTR   =   0xBC;   //0000,0000 A/D转换控制寄存器
sfr ADC_RES     =   0xBD;   //0000,0000 A/D转换结果高8位
sfr ADC_RESL    =   0xBE;   //0000,0000 A/D转换结果低2位

//SPI 特殊功能寄存器
sfr SPSTAT      =   0xCD;   //00xx,xxxx SPI状态寄存器
sfr SPCTL       =   0xCE;   //0000,0100 SPI控制寄存器
sfr SPDAT       =   0xCF;   //0000,0000 SPI数据寄存器

//IAP/ISP 特殊功能寄存器
sfr IAP_DATA    =   0xC2;   //0000,0000 EEPROM数据寄存器
sfr IAP_ADDRH   =   0xC3;   //0000,0000 EEPROM地址高字节
sfr IAP_ADDRL   =   0xC4;   //0000,0000 EEPROM地址第字节
sfr IAP_CMD     =   0xC5;   //xxxx,xx00 EEPROM命令寄存器
sfr IAP_TRIG    =   0xC6;   //0000,0000 EEPRPM命令触发寄存器
sfr IAP_CONTR   =   0xC7;   //0000,x000 EEPROM控制寄存器

//PCA/PWM 特殊功能寄存器
sfr CCON        =   0xD8;   //00xx,xx00 PCA控制寄存器
sbit CF         =   CCON^7;
sbit CR         =   CCON^6;
sbit CCF2       =   CCON^2;
sbit CCF1       =   CCON^1;
sbit CCF0       =   CCON^0;
sfr CMOD        =   0xD9;   //0xxx,x000 PCA 工作模式寄存器
sfr CL          =   0xE9;   //0000,0000 PCA计数器低字节
sfr CH          =   0xF9;   //0000,0000 PCA计数器高字节
sfr CCAPM0      =   0xDA;   //0000,0000 PCA模块0的PWM寄存器
sfr CCAPM1      =   0xDB;   //0000,0000 PCA模块1的PWM寄存器
sfr CCAPM2      =   0xDC;   //0000,0000 PCA模块2的PWM 寄存器
sfr CCAP0L      =   0xEA;   //0000,0000 PCA模块0的捕捉/比较寄存器低字节
sfr CCAP1L      =   0xEB;   //0000,0000 PCA模块1的捕捉/比较寄存器低字节
sfr CCAP2L      =   0xEC;   //0000,0000 PCA模块2的捕捉/比较寄存器低字节
sfr PCA_PWM0    =   0xF2;   //xxxx,xx00 PCA模块0的PWM寄存器
sfr PCA_PWM1    =   0xF3;   //xxxx,xx00 PCA模块1的PWM寄存器
sfr PCA_PWM2    =   0xF4;   //xxxx,xx00 PCA模块1的PWM寄存器
sfr CCAP0H      =   0xFA;   //0000,0000 PCA模块0的捕捉/比较寄存器高字节
sfr CCAP1H      =   0xFB;   //0000,0000 PCA模块1的捕捉/比较寄存器高字节
sfr CCAP2H      =   0xFC;   //0000,0000 PCA模块2的捕捉/比较寄存器高字节

//比较器特殊功能寄存器
sfr CMPCR1      =   0xE6;   //0000,0000 比较器控制寄存器1
sfr CMPCR2      =   0xE7;   //0000,0000 比较器控制寄存器2

//增强型PWM波形发生器特殊功能寄存器
sfr PWMCFG      =   0xf1;   //x000,0000 PWM配置寄存器
sfr PWMCR       =   0xf5;   //0000,0000 PWM控制寄存器
sfr PWMIF       =   0xf6;   //x000,0000 PWM中断标志寄存器
sfr PWMFDCR     =   0xf7;   //xx00,0000 PWM外部异常检测控制寄存器

//如下特殊功能寄存器位于扩展RAM区域
//访问这些寄存器,需先将P_SW2的BIT7设置为1,才可正常读写
#define PWMC        (*(unsigned int  volatile xdata *)0xfff0)
#define PWMCH       (*(unsigned char volatile xdata *)0xfff0)
#define PWMCL       (*(unsigned char volatile xdata *)0xfff1)
#define PWMCKS      (*(unsigned char volatile xdata *)0xfff2)
#define PWM2T1      (*(unsigned int  volatile xdata *)0xff00)
#define PWM2T1H     (*(unsigned char volatile xdata *)0xff00)
#define PWM2T1L     (*(unsigned char volatile xdata *)0xff01)
#define PWM2T2      (*(unsigned int  volatile xdata *)0xff02)
#define PWM2T2H     (*(unsigned char volatile xdata *)0xff02)
#define PWM2T2L     (*(unsigned char volatile xdata *)0xff03)
#define PWM2CR      (*(unsigned char volatile xdata *)0xff04)
#define PWM3T1      (*(unsigned int  volatile xdata *)0xff10)
#define PWM3T1H     (*(unsigned char volatile xdata *)0xff10)
#define PWM3T1L     (*(unsigned char volatile xdata *)0xff11)
#define PWM3T2      (*(unsigned int  volatile xdata *)0xff12)
#define PWM3T2H     (*(unsigned char volatile xdata *)0xff12)
#define PWM3T2L     (*(unsigned char volatile xdata *)0xff13)
#define PWM3CR      (*(unsigned char volatile xdata *)0xff14)
#define PWM4T1      (*(unsigned int  volatile xdata *)0xff20)
#define PWM4T1H     (*(unsigned char volatile xdata *)0xff20)
#define PWM4T1L     (*(unsigned char volatile xdata *)0xff21)
#define PWM4T2      (*(unsigned int  volatile xdata *)0xff22)
#define PWM4T2H     (*(unsigned char volatile xdata *)0xff22)
#define PWM4T2L     (*(unsigned char volatile xdata *)0xff23)
#define PWM4CR      (*(unsigned char volatile xdata *)0xff24)
#define PWM5T1      (*(unsigned int  volatile xdata *)0xff30)
#define PWM5T1H     (*(unsigned char volatile xdata *)0xff30)
#define PWM5T1L     (*(unsigned char volatile xdata *)0xff31)
#define PWM5T2      (*(unsigned int  volatile xdata *)0xff32)
#define PWM5T2H     (*(unsigned char volatile xdata *)0xff32)
#define PWM5T2L     (*(unsigned char volatile xdata *)0xff33)
#define PWM5CR      (*(unsigned char volatile xdata *)0xff34)
#define PWM6T1      (*(unsigned int  volatile xdata *)0xff40)
#define PWM6T1H     (*(unsigned char volatile xdata *)0xff40)
#define PWM6T1L     (*(unsigned char volatile xdata *)0xff41)
#define PWM6T2      (*(unsigned int  volatile xdata *)0xff42)
#define PWM6T2H     (*(unsigned char volatile xdata *)0xff42)
#define PWM6T2L     (*(unsigned char volatile xdata *)0xff43)
#define PWM6CR      (*(unsigned char volatile xdata *)0xff44)
#define PWM7T1      (*(unsigned int  volatile xdata *)0xff50)        
#define PWM7T1H     (*(unsigned char volatile xdata *)0xff50)        
#define PWM7T1L     (*(unsigned char volatile xdata *)0xff51)
#define PWM7T2      (*(unsigned int  volatile xdata *)0xff52)
#define PWM7T2H     (*(unsigned char volatile xdata *)0xff52)
#define PWM7T2L     (*(unsigned char volatile xdata *)0xff53)
#define PWM7CR      (*(unsigned char volatile xdata *)0xff54)

/////////////////////////////////////////////////

#endif

org 0000h    ;波特率为9600，时钟频率为5.5926MHz  
 mov sp,#0A0h  ;  两个串口的波特率发生器都是定时器2. 
ljmp aa     ; 采用定时器1的中断进行定时，定时间隔为10毫秒。      
;ORG  001BH  ;四种方式模式，分别为遥控器，调整模式，读取模式，赋值模式。          
;LJMP   TIMER1INTD ;  回应主机正确#0DDH,回应主机错误#0BBH.

org 100h
aa: NOP
    UARTINIT:			;57600bps@11.0592MHz
	MOV SCON,#50H		;8位数据,可变波特率
	ORL AUXR,#01H		;串口1选择定时器2为波特率发生器
	ORL AUXR,#04H		;定时器2时钟为Fosc,即1T
	MOV T2L,#0D0H		;设定定时初值
	MOV T2H,#0FFH		;设定定时初值
	ORL AUXR,#10H		;启动定时器2 
	MOV S2CON,#50H		;8位数据,可变波特率
	ORL AUXR,#04H		;定时器2时钟为Fosc,即1T
	MOV T2L,#0D0H		;设定定时初值
	MOV T2H,#0FFH		;设定定时初值
	ORL AUXR,#10H		;启动定时器2 
                  

   mov  WDT_CONTR,#37h  
                     
	mov p2m1,#00h    
	mov p2m0,#0ffh

    MOV P3M1,#00H
    MOV  P3M0,#0F0H

     MOV P1M1,#00H
    MOV  P1M0,#0FFH


    MOV  P0M1,#0FFH
    MOV   P0M0,#00H

    MOV P2,#00H
    CLR P3.7
    CLR P1.6
    CLR P1.7

    MOV  20H,#00H

    
YYU:    mov  WDT_CONTR,#37h
        LCALL JIANCEXINHAO1
        LCALL JIANCEXINHAO2
        LCALL JIANCEXINHAO3
        LCALL JIANCEXINHAO4
        LCALL JIANCEXINHAO5
        LCALL JIANCEXINHAO6
           ; LCALL YAOKONGQISHUZHUANSHUMEIPAI ;将50H 5FH之间的数转成35H到4CH 的ASCII 
      ;  LCALL YAOKONGQIFASHUMEIPAI ;TX  AABBCC 数据DD 
        LCALL  PWM2      ;打开5个的 
        LCALL SSSS  ;延时 
YYU1: LCALL JIANCEXINHAO1
      LCALL JIANCEXINHAO2
      LCALL JIANCEXINHAO3
      LCALL JIANCEXINHAO4
      LCALL JIANCEXINHAO5
      LCALL JIANCEXINHAO6
      LCALL PWMTEZHI

   ;   LCALL YAOKONGQIFASHUMEIPAI 
    ;  MOV SBUF,#0EEH
    ;  LCALL DENGTI
      LCALL PWM2
     ; LCALL   DELAY100US
     ; LCALL SSSS
     ; LCALL SSSS  ;延时 
     ;    LCALL SSSS
      ;LJMP YYU1

            JNB RI,YYU1
            MOV A,SBUF
            CLR RI
            LCALL  QIEHUANZHUANGTAI
            LJMP YYU1


PWMTEZHI:  MOV PWMIF,#00H       
PWMTEZHI1: MOV A,PWMIF
           mov  WDT_CONTR,#37h                        
           NOP
           JNB ACC.6,PWMTEZHI1
          ; LCALL TIMER0PWM     ;
PWMTEZHI2: NOP
           ;JNB TF0,PWMTEZHI2
          ; CLR TR0
          ; CLR TF0
           RET



TIMER0PWM:	;TESHU
	ANL AUXR,#7FH		;定时器时钟12T模式
	ANL TMOD,#0F0H		;设置定时器模式
	ORL TMOD,#01H		;设置定时器模式
	MOV TL0,#0B3H		;设置定时初值
	MOV TH0,#0CEH		;设置定时初值
	CLR TF0			;清除TF0标志
	SETB TR0		;定时器0开始计时
    RET


QIEHUANZHUANGTAI:NOP
                 NOP
                 NOP
                 NOP
                 NOP
 CJNE A,#4DH,ZHUANGTAI1 ;理想跳转格式    ，入口A 寄存器 
      ;   LCALL  DELAY100US   ;根据接收串口数据进行跳转 
      ; LCALL  ZTDELAY10MS
        ;  MOV SBUF,#4DH      ; M中立点模式，R遥控器模式，G串口数据模式 
         ;   LCALL DENGTI    ;M   
    LJMP ZHONGLIDIAN
ZHUANGTAI1:CJNE A,#52H,ZHUANGTAI2
      ;  LCALL   DELAY100US         ;本段代码返回小写格式数据 
       ; LCALL ZTDELAY10MS
       ;     MOV SBUF,#52H
        ;    LCALL DENGTI    ;R  
            LJMP YAOKONGQI
ZHUANGTAI2: CJNE A,#47H,ZHUANGTAI3
          ; LCALL   DELAY100US
          ; LCALL ZTDELAY10MS
          ;  MOV SBUF,#47H   ;G  
          ;  LCALL DENGTI
            LJMP DIMIANZHAN
ZHUANGTAI3:RET




ZHONGLIDIAN: mov  WDT_CONTR,#37h    ;M   
            LCALL JIANCEXINHAO1
            LCALL JIANCEXINHAO2
            LCALL JIANCEXINHAO3
            LCALL JIANCEXINHAO4
            LCALL JIANCEXINHAO5
             LCALL JIANCEXINHAO6
           
            LCALL YAOKONGQIFASHUMEIPAI ;TX  AABBCC 数据DD 
            LCALL  PWMTEZHI
            LCALL  PWM2      ;打开5个的 
            MOV A,#00H    
           MOV 5CH,A
           MOV 5DH,A
           MOV 5EH,A
           MOV 5FH,A
           MOV 60H,A
 
          ; LCALL YAOKONGQIFASHUMEIPAI ;TX  AABBCC 数据DD 
            JNB RI,ZHONGLIDIAN ;收到格式跳转 ，在0.1大约秒内接收到 
            MOV A,SBUF
            CLR RI                 ;其他不是有效数据不处理，继续进行该模式 ，等待下一个有效数据           
            LCALL QIEHUANZHUANGTAI  ;
            LJMP ZHONGLIDIAN
                
ZHONGLIDIANTE:LJMP ZHONGLIDIAN  
               
                                 

YAOKONGQI:  LCALL JIANCEXINHAO1 ;R模式 ，遥控器模式 
            LCALL JIANCEXINHAO2 ;跟M模式，中立点模式的区别是遥控器检测数据不发给树莓派 
            LCALL JIANCEXINHAO3  ;为了遥控器高质量的遥控飞机 
            LCALL JIANCEXINHAO4
            LCALL JIANCEXINHAO5
            LCALL JIANCEXINHAO6
            ;LCALL YAOKONGQISHUZHUANSHUMEIPAI ;将50H 5FH之间的数转成35H到4CH 的ASCII 
          ;  LCALL YAOKONGQIFASHUMEIPAI ;TX  AABBCC 数据DD 
           ; MOV SBUF,#0EEH
            ;LCALL DENGTI

           LCALL  PWMTEZHI
            LCALL  PWM2      ;打开5个的 
           ; LCALL SSSS  ;延时 
           ; LCALL SSSS
           ; LCALL SSSS  ;延时 
          
           NOP
           NOP
            JNB RI,YAOKONGQI ;如果没有检测到串口数据，跳转到本模式继续执行本模式 
            MOV A,SBUF    ;读取串口字节数据，存入A累加器 
            CLR RI
            LCALL QIEHUANZHUANGTAI  ;如果是有效跳转数据，就跳转到相应模式 ，发送小写模式 
            LJMP  YAOKONGQI  ;如果接收的模式数据不正确，继续执行遥控器模式 
           NOP
           NOP
           NOP
           LJMP YAOKONGQI


DIMIANZHAN:NOP     ;为了稳定，意义不大 
         MOV WDT_CONTR,#37h ;此处容易死循环，喂狗 
         JNB RI,DIMIANZHAN  ;等待串口数据 
         MOV A,SBUF  ; 读取数据 
         CLR RI    ;清除标志位 ，为了稳定不用JBC指令 
         LCALL QIEHUANZHUANGTAI  ;如果是跳转指令就进行模式跳转 
         CJNE A,#0AAH ,DIMIANZHAN ;如果是有效数据帧头第一个A ,进入数据鉴别读取 
                          ;如果是其他数据继续进行本模式开头轮询串口数据 
SHUMEIPAI:LCALL UART1SHOU1 ;接受到一帧符合帧头是AABBCC式数据   ，此 处自第二个A开始接收           
     MOV A,34H   ;如果上一帧数据帧尾是DD，那么34H=#99H;      如果错误34H=#08H 
     CJNE A,#99H ,DIMIANZHAN ;如果错误继续接收一帧合格数据 ，并且接收跳转指令仍然有效 
                             ;在接收一帧合格数据前子程序加入跳转处理 
SHUMEIPAIZHENGQUE: LCALL PWMTEZHI
                   LCALL  PWM2      ;输出各个通道的PWM 

DIMIANZHAN1:LJMP DIMIANZHAN



UART1SHOU:NOP    ;接收有效数据的标准帧头 
        mov  WDT_CONTR,#37h 
         JNB RI,UART1SHOU
        MOV A,SBUF
        CLR RI
        LCALL  QIEHUANZHUANGTAI;如果是有效模式转换数据进行模式切换  
       CJNE A, #0AAH,UART1SHOU
UART1SHOU1:NOP  ;很多时候子程序调用时在此处开始调用 
       JNB RI,UART1SHOU1
       MOV A,SBUF
       CLR RI
       CJNE A,#0BBH,UART1SHOU

                                   ;如果不符合标准帧头AABBCC(16进制)标准，从帧头处开始检测串口数据 
        MOV R0,#50H ;开始接受各个通道数据 
        MOV R7,#17;数据加DD 
         MOV  WDT_CONTR,#37h  ;喂狗 
UART1SHOU6:NOP 
        JNB RI,UART1SHOU6
        MOV A,SBUF
        CLR RI
        MOV @R0,A
        INC R0      ;数据存于60H到79H  
        DJNZ R7,UART1SHOU6
        MOV A,60H
        CJNE A,#0CCH,JIESHOUCUOWU                
        MOV 34H,#99H  ;比较帧尾DD 
      ; LCALL DELAY100US ;正确标志 
        LCALL     DELAY10MS
        MOV SBUF,#53H  ;S
        LCALL DENGTI
        LJMP JIEXIEND
JIESHOUCUOWU: MOV 34H,#0AH ;错误标志  
       ; LCALL DELAY100US
        LCALL     DELAY10MS
        MOV SBUF,#46H  ;F
        LCALL DENGTI
JIEXIEND:  RET

SSSS:  LCALL DELAY10MS
            LCALL DELAY10MS
           LCALL DELAY10MS
           LCALL DELAY10MS
            LCALL DELAY10MS
            LCALL DELAY10MS
           ; LCALL DELAY10MS
          ;  LCALL DELAY10MS
           ; LCALL DELAY10MS
           ; LCALL DELAY10MS
                RET

                RET

TIMER1INIT:			;100毫秒@5.5296MHz
	ANL AUXR,#0BFH		;定时器时钟12T模式
	ANL TMOD,#0FH		;设置定时器模式
	MOV TL1,#000H		;设置定时初值
	MOV TH1,#04CH		;设置定时初值
	CLR TF1			;清除TF1标志
	SETB TR1		;定时器1开始计时
	RET

UART2SHOU: MOV  R0,#40H
           MOV  60H,#00H
           SETB  EA
           SETB  ET1
           MOV WDT_CONTR,#37h  
UART2SHOU1:MOV  R6,60H      ;BUG 
           CJNE  R6,#02H, UART2SHOUEND         
UART2SHOU2:MOV A,S2CON
           JNB  ACC.0,UART2SHOU
           MOV  @R0,S2BUF
           MOV  S2CON,#50H
           INC  R0
           CJNE  R0,#4EH,UART2SHOU1
           LJMP  UART2SHOU1
UART2SHOUEND:CLR EA
      CLR ET1
      CLR TR1
      CLR TF1
 RET

DENG2TI:    MOV  A,S2CON
       NOP
       JNB  ACC.1 ,DENG2TI
       MOV  S2CON,#50H
       RET

dengti:nop
       mov  WDT_CONTR,#37h
       jnb ti,dengti
	   clr ti
	   ret

JIANCEPWM:
   LCALL    TIMER0INIT
    RET

TIMER0INIT:			;100微秒@5.5296MHz
	ANL AUXR,#7FH		;定时器时钟12T模式
	ANL TMOD,#0F0H		;设置定时器模式
	ORL TMOD,#01H		;设置定时器模式
	MOV TL0,#00H		;设置定时初值
	MOV TH0,#00H		;设置定时初值
	CLR TF0			;清除TF0标志
	SETB TR0		;定时器0开始计时
    RET


JIANCEXINHAO1: mov  WDT_CONTR,#37h
             JB  P0.0, JIANCEXINHAO1
JIANCEXINHAO1B:NOP 
            JNB P0.0,JIANCEXINHAO1B
            LCALL  JIANCEPWM
JIANCEXINHAO1C:nop
            JB  P0.0,JIANCEXINHAO1C
            CLR TR0
            MOV  50H,TH0
            MOV  51H,TL0
            RET  


JIANCEXINHAO2: mov  WDT_CONTR,#37h
             JB  P0.1, JIANCEXINHAO2
JIANCEXINHAO2B: 
JNB P0.1,JIANCEXINHAO2B         
          LCALL  JIANCEPWM
JIANCEXINHAO2C:nop
 JB  P0.1,JIANCEXINHAO2C
CLR TR0
          MOV  52H,TH0
          MOV  53H,TL0
              RET

JIANCEXINHAO3: mov  WDT_CONTR,#37h
             JB  P0.2, JIANCEXINHAO3
JIANCEXINHAO3B: 
          JNB P0.2,JIANCEXINHAO3B         
          LCALL  JIANCEPWM
JIANCEXINHAO3C:NOP
          JB  P0.2,JIANCEXINHAO3C
          CLR TR0
          MOV  54H,TH0
          MOV  55H,TL0
              RET

JIANCEXINHAO4: mov  WDT_CONTR,#37h
             JB  P0.3, JIANCEXINHAO4
JIANCEXINHAO4B:NOP 
          JNB P0.3,JIANCEXINHAO4B         
          LCALL  JIANCEPWM
JIANCEXINHAO4C:NOP
          JB  P0.3,JIANCEXINHAO4C
          CLR TR0
          MOV  56H,TH0
          MOV  57H,TL0
              RET

JIANCEXINHAO5: mov  WDT_CONTR,#37h
             JB  P0.4, JIANCEXINHAO5
JIANCEXINHAO5B: NOP
           JNB P0.4,JIANCEXINHAO5B         
          LCALL  JIANCEPWM
JIANCEXINHAO5C: NOP
          JB  P0.4,JIANCEXINHAO5C
           CLR TR0
          MOV  58H,TH0
          MOV  59H,TL0
              RET

JIANCEXINHAO6: mov  WDT_CONTR,#37h
             JB  P0.5, JIANCEXINHAO6
JIANCEXINHAO6B:NOP 
            JNB P0.5,JIANCEXINHAO6B         
          LCALL  JIANCEPWM
JIANCEXINHAO6C:NOP
           JB  P0.5,JIANCEXINHAO6C
           CLR TR0
          MOV  5AH,TH0
          MOV  5BH,TL0
              RET

PWM2: MOV  A,PWMCR
      ANL  A,00H
      MOV  PWMCR,A

      MOV A,P_SW2
      ORL A,#80H
      MOV P_SW2,A

      MOV A,PWMCFG
      ANL A,#00H
      MOV  PWMCFG,A

      MOV  DPTR ,#0FFF2H      ;PWMCKS
      MOV A,#0BH     ;采用系统时钟12分频，（11+1） 
      MOVX @DPTR,A

      MOV  DPTR ,#0FFF0H   ;PWMCH
      MOV A,#35H
      MOVX   @DPTR,A
      MOV  DPTR,#0FFF1H       ;PWMCL
      MOV  A,#60H
      MOVX  @DPTR,A

      MOV DPTR,#0FF00H         ;PWM2T1H
      MOV A,#01h
      MOVX @DPTR,A
      MOV  DPTR,#0FF01H         ;2T1L
      MOV  A,#00H
      MOVX  @DPTR,A
      INC 50H
      MOV DPTR,#0FF02H        ;                   PWM2T2H
      MOV  A,50H
      MOVX @DPTR,A
      MOV  DPTR,#0FF03H    ;                      PWM2T2L                                                     
      MOV  A,51H
      MOVX  @DPTR,A
      MOV DPTR,#0FF04H                    ;PWM2CR
      MOV A,#00H                       ;端口P3.7
      MOVX  @DPTR,A


      MOV DPTR,#0FF10H        ;PWM3T1H
      MOV A,#01h
      MOVX @DPTR,A
      MOV  DPTR,#0FF11H     ;PWM3T1L
      MOV  A,#00H
      MOVX  @DPTR,A
      INC 52H
      MOV DPTR,#0FF12H  ;PWM3T2H
      MOV  A,52H
      MOVX @DPTR,A
      MOV  DPTR,#0FF13H   ;PWM3T2L                                            
      MOV  A,53H
      MOVX  @DPTR,A
      MOV DPTR,#0FF14H  ;PWM3CR
      MOV A,#00H
      MOVX  @DPTR,A

      MOV DPTR,#0FF20H   ;PWM4T1H
      MOV A,#01H
      MOVX @DPTR,A
      MOV  DPTR,#0FF21H   ;PWM4T1L
      MOV  A,#00H
      MOVX  @DPTR,A                 
      INC 54H
      MOV DPTR,#0FF22H    ;PWM4T2H
      MOV  A,54H
      MOVX @DPTR,A
      MOV  DPTR,#0FF23H    ;PWM4T2L                                             
      MOV  A,55H
      MOVX  @DPTR,A
      MOV DPTR,#0FF24H    ;PWM4CR
      MOV A,#00H
      MOVX  @DPTR,A

      MOV DPTR,#0FF30H  ;PWM5T1H
      MOV A,#01h
      MOVX @DPTR,A
      MOV  DPTR,#0FF31H  ;PWM5T1L
      MOV  A,#00H
      MOVX  @DPTR,A
      INC 56H
      MOV DPTR,#0FF32H    ;PWM5T2H
      MOV  A,56H
      MOVX @DPTR,A
      MOV  DPTR,#0FF33H   ;PWM5T2L                                            
      MOV  A,57H
      MOVX  @DPTR,A
      MOV DPTR,#0FF34H   ;PWM5CR
      MOV A,#00H
      MOVX  @DPTR,A

      MOV DPTR,#0FF40H    ;PWM6T1H
      MOV A,#01h
      MOVX @DPTR,A
      MOV  DPTR,#0FF41H   ;PWM6T1L
      MOV  A,#00H
      MOVX  @DPTR,A
      INC 58H
      MOV DPTR,#0FF42H    ;PWM6T2H
      MOV  A,58H
      MOVX @DPTR,A
      MOV  DPTR,#0FF43H     ;PWM6T2L                                              
      MOV  A,59H
      MOVX  @DPTR,A
      MOV DPTR,#0FF44H    ;PWM6CR
      MOV A,#00H
      MOVX  @DPTR,A

      MOV DPTR,#0FF50H   ;PWM7T1H
      MOV A,#01h
      MOVX @DPTR,A
      MOV  DPTR,#0FF51H     ;PWM7T1L
      MOV  A,#00H
      MOVX  @DPTR,A
      INC 5AH       
      MOV DPTR,#0FF52H     ;PWM7T2H
      MOV  A,5AH
      MOVX @DPTR,A
      MOV  DPTR,#0FF53H    ;PWM7T2L                                              
      MOV  A,5BH
      MOVX  @DPTR,A
      MOV DPTR,#0FF54H   ;PWM7CR
      MOV A,#00H
      MOVX  @DPTR,A

      MOV A,P_SW2
      ANL  A,#7FH
      MOV  P_SW2,A

       MOV  A,PWMCR
       ORL  A,#0BFH
       MOV  PWMCR,A
       RET


DELAY10USA:			;@5.5296MHz
	NOP
	NOP
	NOP
	NOP
    mov  WDT_CONTR,#37h
	MOV 30H,#7
NEXTA:NOP
	DJNZ 30H,NEXTA
	RET


;PCA:MOV A,#00H
  ;  MOV  CCON,A
   ; MOV  CL,A
   ; MOV   CH,A
    ;MOV   CMOD,#04H
    ;SETB  CR
    ;RET       

DELAY10MS:			;@11.0592MHz
	NOP
	NOP
	 mov  WDT_CONTR,#37h
	MOV 30H,#87
	MOV 31H,#10
NEXT10MS:
	DJNZ 31H,NEXT10MS
	DJNZ 30H,NEXT10MS
	RET




DELAY1S:			;@5.5296MHz
	NOP
	 mov  WDT_CONTR,#37h
	NOP
	MOV 30H,#17
	MOV 31H,#208
	MOV 32H,#24
NEXT1S:
	DJNZ 32H,NEXT1S
	DJNZ 31H,NEXT1S
	DJNZ 30H,NEXT1S
	RET

TRYM: MOV SBUF,#41H
             LCALL DENGTI
             MOV SBUF,#41H
             LCALL DENGTI
             MOV SBUF,#42H
             LCALL DENGTI
             MOV SBUF,#42H
             LCALL DENGTI
             MOV SBUF,#43H
             LCALL DENGTI
              MOV SBUF,#43H
             LCALL DENGTI

             MOV SBUF,#31H
             LCALL DENGTI
              MOV SBUF,#31H
             LCALL DENGTI
             MOV SBUF,#31H
             LCALL DENGTI

              MOV SBUF,#32H
             LCALL DENGTI
             MOV SBUF,#32H
             LCALL DENGTI
              MOV SBUF,#32H
             LCALL DENGTI

             MOV SBUF,#33H
             LCALL DENGTI
              MOV SBUF,#33H
             LCALL DENGTI
             MOV SBUF,#33H
             LCALL DENGTI

              MOV SBUF,#34H
             LCALL DENGTI
             MOV SBUF,#34H
             LCALL DENGTI
             MOV SBUF,#34H
             LCALL DENGTI

             MOV SBUF,#35H
             LCALL DENGTI
              MOV SBUF,#35H
             LCALL DENGTI
             MOV SBUF,#35H
             LCALL DENGTI

              MOV SBUF,#36H
             LCALL DENGTI
             MOV SBUF,#36H
             LCALL DENGTI
              MOV SBUF,#36H
             LCALL DENGTI

             MOV SBUF,#37H
             LCALL DENGTI
              MOV SBUF,#37H
             LCALL DENGTI
             MOV SBUF,#37H
             LCALL DENGTI

              MOV SBUF,#38H
             LCALL DENGTI
             MOV SBUF,#38H
             LCALL DENGTI
              MOV SBUF,#38H
             LCALL DENGTI
             MOV SBUF,#44H
             LCALL DENGTI
             MOV SBUF,#44H
             LCALL DENGTI
           ; LCALL  DELAY1S
           ;  LCALL  DELAY1S
             RET
YAOKONGQIFASHUMEIPAI:MOV SBUF,#0AAH
                     LCALL  DENGTI
                    LCALL DELAY100US
                     MOV SBUF,#0BBH
                     LCALL  DENGTI
                    LCALL  DELAY100US
                     MOV R0,#50H
                     MOV R1,#16
YAOKONGQIFASHUMEIPAI1:MOV SBUF,@R0
                      LCALL DENGTI
                     LCALL DELAY100US
                      INC R0
                      DJNZ R1,YAOKONGQIFASHUMEIPAI1
                     MOV SBUF,#0CCH
                     LCALL  DENGTI
                     RET
DELAY100US:			;@5.5296MHz
	NOP
	mov  WDT_CONTR,#37h
	MOV 30H,#107
NEXT100US: NOP
        NOP
	DJNZ 30H,NEXT100US
	RET

FAXIECHULIQISHUJU: MOV S2BUF,#43H
        LCALL DENG2TI
;    LCALL TIMER1INIT
       NOP
       NOP
       NOP
       NOP
       NOP
        MOV S2BUF,#0AAH
        LCALL DENG2TI
        MOV S2BUF,6CH
        LCALL DENGTI
        MOV S2BUF,6DH
        LCALL DENG2TI
        MOV S2BUF,6EH
        LCALL DENG2TI
        MOV S2BUF,6FH
        LCALL DENG2TI
        MOV S2BUF,#0DDH
        LCALL DENG2TI
        RET

ZTDELAY10MS:			;@11.0592MHz
	NOP
	NOP
	NOP
    mov  WDT_CONTR,#37h
	PUSH 30H
	PUSH 31H
	MOV 30H,#87
	MOV 31H,#10
ZTNEXT:
	DJNZ 31H,ZTNEXT
	DJNZ 30H,ZTNEXT
	POP 31H
	POP 30H
	RET


 NOP
end

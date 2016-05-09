   1 REM                                                               ìììììììììììììììììì              NO CHEATING NOW !!              ãããããããããããããããããã    
     LET ink=9: 
	 LET bonus=0: 
	 LET lev=1: 
	 LET damsels=1: 
	 LET HSC=250 :  
	 LET DAMSELS=1
     LET H$="IAN": 
	 GO TO 6
     LET SPE=6: BEEP 9,-9: LIST
   
   6 IF damsels>2 THEN GO TO 5700
     LET PAPER=6: 
	 LET INK=9
     LET BORDER=0: 
	 LET mines=50: 
	 LET damsels=1: 
	 LET SC=0
     LET bonus=0: 
	 LET DAMSELS=1

  10 LET ink=9: 
	 LET BORDER BORDER: 
	 LET PAPER PAPER: 
	 LET INK INK: 
	 CLS : 
	 LET BORDER BORDER
     LET x=21: 
	 LET y=15
     LET t$=CHR$ (x+65)+CHR$ (y+65)
     LET XX=21: 
	 LET YY=15
     LET TI=0
     LET oldx=x: 
	 LET oldy=y
     LET C$="ö": 
	 LET V$="÷"
     LET CC=0: 
	 LET DD=0: 
	 LET EE=0
     LET RR=1
     LET OO=21: 
	 LET PP=15
     LET X$="                                  < SAFE AREA >                                  "
     LET PA=7
     LET ss=0
     IF lev<>1 THEN PRINT AT 15,0;: LIST
     GO TO 300

 100 LET RN=INT (RND*13)+4
     FOR a=3 TO 30
	     IF A=10 OR A=20 THEN NEXT A
    	 PRINT AT 21,19; PAPER PAPER; INK 9;"MORE MINES"
     	IF ATTR (RN,A)=56 THEN GO TO 115
     	PRINT AT RN,a;"³"
 
 115 	LET K=RN-1+INT (RND*3)
     	IF ATTR (K,A-1)<>56 THEN PRINT AT K,a-1;"¹"
     	BEEP .002,55
     	PRINT AT 21,19;"          "

 135 	IF ATTR (RN,A)=56 THEN GO TO 150
     	PRINT AT RN,A;" "

 150 	REM --- FIX - LINE INSERTED BY MATS ---
     NEXT a
     GO TO 570
 
 300 PRINT AT 0,28; PAPER 0;"    "
     PRINT AT 0,0; PAPER 0; INK 7;"ADJACENT º»¼½ 0";AT 0,17;"NO.";DAMSELS;" SCORE ";SC
     PRINT AT 1,0;"ûûûûûûûûûûûûûûû  ûûûûûûûûûûûûûûû"
     FOR n=2 TO 19
     	PRINT AT n,0;"û                              û"
     NEXT n
     PRINT AT 20,0;"ûûûûûûûûûûûûûû   ûûûûûûûûûûûûûûû"
     PRINT AT x,y;C$
     NEXT n: 
	 IF SC=0 AND DAMSELS>2 AND BONUS=0 THEN PRINT AT 15,0;: LIST
     PRINT AT 21,19; FLASH 1; PAPER 2; INK 7;"MINE HIDING": IF damsels=9 THEN LET mines=mines+32: LET MINES=MINES+(10-INT (SC/1000))
     PRINT AT 21,3; FLASH 1; PAPER 2; INK 7; INVERSE 1;"LEVEL ";DAMSELS
     FOR w=1 TO mines: PRINT AT INT (RND*16)+3,INT (RND*30)+1; INK PAPER;"¹"
     	BEEP .0015,35
     	IF DAMSELS<>1 THEN NEXT W
     	IF DAMSELS<>1 THEN GO TO 439
     	PRINT AT 19,1;X$(W TO W+29)
     	PRINT AT 2,1;X$(51-W TO 51-W+29)
     NEXT W
 
 439 IF lev<>1 THEN PRINT AT 15,0;: LIST
     PRINT AT 10,1; INK PAPER;"¹";AT 11,15;"¹¹";AT 10,30;"¹"
     PRINT AT 21,0;"                               "
     IF DAMSELS=1 THEN GO TO 480
     IF damsels=9 THEN GO SUB 9900: GO TO 480
     PRINT AT 21,0; INVERSE 1; BRIGHT 1;"RESCUE DAMSELS FOR EXTRA POINTS!":
	 GO TO 450
 
 450 LET CC=INT (RND*12)+4: 
 	 LET DD=INT (RND*6)+6: 
 	 LET EE=INT (RND*6)+19
     FOR J=1 TO 7
     	PRINT AT CC,DD;"ù";AT CC,EE;"ù"
     	FOR E=1 TO 11: NEXT E
     	BEEP .002,58
     	PRINT AT CC,DD;"ú";AT CC,EE;"ú"
     	FOR E=1 TO 11: NEXT E
     	BEEP .002,58
     NEXT J
 
 480 IF damsels<>8 THEN GO TO 490
     PRINT AT 21,0; INK 7; FLASH 1; PAPER 0; BRIGHT 1;"HIDE BETWEEN 3 MINES TO OPEN GAP"
     PRINT AT 1,15;"ûû": PRINT AT 8,11; INK 1; BRIGHT 1; PAPER 7;"GAP CLOSED"
     FOR m=60 TO 10 STEP -2.5: 
	 	FOR n=1 TO 7: NEXT n: 
		 BEEP .125,m: 
	 NEXT m
     PRINT AT 21,0;"                                "
     PRINT AT 8,11;"          "
 
 490 BEEP .0875,10
     PRINT AT 21,0;"               ö                "
     PRINT AT 21,31; INK paper; PAPER paper;"ý"
     PRINT AT 21,10; INVERSE 1;"GO!": 
	 FOR n=1 TO 20: 
		 BEEP .002,n+20: 
	 NEXT n: 
	 PRINT AT 21,10;"   ":
	 BEEP .05,37
     GO TO 535
     LET oldx=x: 
	 LET oldy=y

 520 LET x=x+(INKEY$="9")-(INKEY$="8")+(INKEY$=CHR$ 10)-(INKEY$=CHR$ 11)
     LET x=x-(x=22)
     LET y=y+(INKEY$="7")-(INKEY$="6")+(INKEY$=CHR$ 9)-(INKEY$=CHR$ 8)
     LET TI=TI+1
     IF DAMSELS>=4 THEN IF TI>(260*PAPER+70) THEN IF INT (TI/(3*PAPER+1))=(TI/(3*PAPER+1)) THEN GO SUB 543
     IF oldx=x AND oldy=y THEN GO TO 520
     BEEP .003,-4
 
 535 PRINT AT oldx,oldy; PAPER PA;" "
     LET t$=t$+CHR$ (x+65)+CHR$ (y+65)
     IF SCREEN$ (x,y)<>" " THEN GO SUB 1000
     IF damsels=9 AND pa<>paper AND x<17 THEN GO SUB 8000
     GO TO 550

 543 PRINT AT OO,PP; PAPER PA;" "
     LET I$=T$+T$: 
	 IF DAMSELS>=5 AND PAPER<>PA AND TI>2000 THEN GO SUB 8000
     LET RR=RR+2: 
	 BEEP .0018,60
     LET OO=65-CODE I$(RR): 
	 LET PP=65-CODE I$(RR+1)
     IF SCREEN$ (OO,PP)<>" " THEN GO SUB 1000
     PRINT AT OO,PP; PAPER PA;"ý"
     RETURN

 550 PRINT AT x,y; PAPER PA;C$
 
 570 LET o=(SCREEN$ (x-1,y)<>" ")
     LET p=(SCREEN$ (x+1,y)<>" ")
     LET q=(SCREEN$ (x,y-1)<>" ")
     LET r=(SCREEN$ (x,y+1)<>" ")
     LET o=o+p+q+r
     IF o THEN BEEP .04,o*10
     PRINT AT 0,0; PAPER (4-O); INK 9;"ADJACENT º»¼½ ";O
     IF x=0 THEN GO SUB 3000
     IF o=3 AND damsels=8 THEN PRINT AT 8,12; FLASH 1;"GAP OPEN": FOR c=1 TO 40: BEEP .001,30+c/4: BORDER 0: BORDER 7: NEXT c: PRINT AT 1,15;"  ": PRINT AT  8,12;"        ": BORDER 2
     IF damsels>2 AND damsels<9 AND ti>50 THEN IF RND>.98 THEN GO TO 100
     GO TO 500
     STOP

1000 IF X=CC THEN IF Y=DD OR Y=EE THEN GO SUB 6000: RETURN
     IF damsels=9 THEN IF x=8 AND y=5+ss THEN GO TO 8444
     FOR W=20 TO 1 STEP -1: 
     	BEEP .003,0+W: 
     	PRINT AT X,Y;"ø": 
     	BEEP .002,10: 
     	PRINT AT X,Y;"¹": 
     NEXT W
     LET j$="MUFFED": 
     IF RND>.8 THEN LET j$="GOOFED": IF RND>.7 THEN LET j$="BLEW"
     PRINT AT 0,0; PAPER 0; INK 7;" YOU ";j$;" IT ! "
     BEEP 1.6,-35
     GO SUB 2000
     PRINT AT X,Y; PAPER 7; INK 0; OVER 1;CHR$ (65+INT (RND*60))
     BEEP 1,-35
     IF SC>HSC THEN GO SUB 4500
     PRINT AT 0,28; PAPER 0;"  "
     PRINT AT 0,0; PAPER 0; INK 7;" ";"TRY AGAIN ?  LEVEL ";DAMSELS;" ";AT 0,22; FLASH 1;"SCORE ";SC
     PRINT AT 2,1; PAPER 0; INK 7;" PRESS ANY KEY (""I"" FOR INFO) "
     PRINT AT 10,9; INK 7; PAPER 2; BRIGHT 1;"  GAME  OVER  "
     IF paper>=4 THEN INK 0
     IF paper<4 THEN INK 7
     PLOT 72,96: 
     DRAW 112,0: 
     DRAW 0,-9: 
     DRAW -113,0: 
     DRAW 0,9
     INK 9

1200 PRINT AT 21,29; PAPER BORDER; INK 9;"   ";AT 21,0; PAPER BORDER; INK 9;"  HIGHEST SCORE IS ";HSC;" BY ";H$
     FOR n=1 TO 100: NEXT n
     FOR N=1 TO 10000000
     	IF SC=HSC THEN PRINT AT 21,0; PAPER border; INK 9;"ù";AT 21,31;"ú"
     	IF INKEY$="" THEN FOR M=1 TO 16: NEXT M
     	IF SC=HSC THEN PRINT AT 21,0; PAPER border; INK 9;"ú";AT 21,31;"ù"
     	IF INKEY$="" THEN FOR M=1 TO 16: NEXT M
     	LET s$=INKEY$
     IF s$="" THEN NEXT n
     IF S$="I" OR S$="i" THEN GO SUB 7000
     PRINT AT 2,1;"                              "
     GO TO 6
     STOP : REM I.ANDREW (CARDS) FOR ALL MODERN POSTCARDS

2000 REM --- FIX - LINE INSERTED BY MATS ---
     FOR n=1 TO 20: NEXT n
     FOR a=1 TO 21
     	PRINT AT a,0; OVER 1; INK 9;"                                "
     NEXT a
     PRINT AT 21,1; FLASH 1; PAPER 7; INK 0;"ACTION REPLAY"
     FOR n=1 TO 100: NEXT n
     LET y$=t$
     FOR t=1 TO LEN y$ STEP 2
     	FOR m=1 TO 5: 
     		IF INKEY$="S" OR INKEY$="s" THEN GO TO 2033:
     	NEXT m

2033 PRINT AT XX,YY; PAPER 7;" "
     IF damsels>1 AND T=21 THEN PRINT AT 21,0; PAPER 0; INK 7;"HOLD ""S"" FOR SPEED OR ""E"" TO END"
     LET xX=CODE y$(1)-65: 
     LET yY=CODE y$(2)-65
     PRINT AT Xx,Yy; PAPER 7;C$
     BEEP .005,5+(T*40/(LEN T$))
     LET y$=y$(3 TO )
     IF INKEY$="E" OR INKEY$="e" THEN GO TO 2055

2055 REM --- FIX - LINE INSERTED BY MATS ---
     NEXT t
     PRINT AT 21,0;"                                "
     RETURN
     STOP

3000 LET SS=(INT ((2000-TI)/50))*5: IF SS<50 THEN LET SS=50
     LET SS=SS*DAMSELS
     PRINT AT 0,0; PAPER DAMSELS/1.5; INK 9;"  LEVEL ";DAMSELS;"   SPEED SCORE = ";SS;"   "
     IF damsels=1 AND ss<100 THEN PRINT AT 0,31; PAPER 1;" "
     PRINT AT 1,0;"û"
     FOR N=15 TO 50: 
     	BEEP .001+((50-30)/2000),(50+N/2.8): 
     	BORDER 2:: 
     	BORDER 7: 
     	BORDER 0: 
     NEXT N
     BORDER border
     IF bonus>0 THEN LET sc=sc+bonus: PRINT AT 21,0; PAPER 7; BRIGHT 1;"INITIAL BONUS = ";BONUS: LET BONUS=0: FOR N=1 TO 20 STEP .6: BEEP .025,n+5: NEXT N:  PRINT AT 21,0;"                                "
     GO SUB 2000
     FOR g=4 TO 22 STEP 6: 
     	BEEP .005,g+24: 
     NEXT g
     FOR N=1 TO 80: 
     	BORDER 1: 
     	BORDER 2: 
     	BORDER 3: 
     	BORDER 4: 
     	BORDER 5: 
     	BORDER 6: 
     NEXT N
     LET SC=SC+SS
     PRINT AT 0,30; PAPER 0;"  "
     PRINT AT 0,0; PAPER 0; INK 7;"ADJACENT º»¼½ 0  NO.";DAMSELS;" SCORE ";SC
     FOR n=1 TO 120
     NEXT n
     LET MINES=MINES+10
     LET PAPER=PAPER-1
     LET DAMSELS=DAMSELS+1
     IF PAPER<0 THEN LET BORDER=BORDER+2: LET PAPER=6
     IF PAPER=6 THEN LET MINES=50
     IF damsels=7 THEN LET mines=20
     GO TO 10

4500 FOR N=1 TO 50: 
		BORDER 1: 
		BORDER 2: 
		BORDER 3: 
		BORDER 4: 
	 NEXT N: 
	 IF DAMSELS=1 THEN LIST
     FOR N=1 TO 50: 
     	BORDER 6: 
     	BORDER 2: 
     	BEEP .002,40+(N/10): 
     	BORDER 6: 
     NEXT N
     FOR M=1 TO 4
     	FOR N=7 TO 0 STEP -1
     		PRINT AT 10,7; INK N;"A NEW HIGH SCORE !"
     		BEEP .004,50-N
     	NEXT N
     NEXT M
     PRINT AT 10,7; INK 9;"A NEW HIGH SCORE !"
     FOR N=1 TO 6
     	PRINT AT 0,15;"ùú"
     	FOR L=1 TO 7: NEXT L
     	BEEP .006,13
     	PRINT AT 0,15;"úù"
     	FOR L=1 TO 7: NEXT L
     	BEEP .006,16
     NEXT N
     PRINT AT 21,0; FLASH 1; PAPER 1; INK 7;" ENTER YOUR INITIALS NOW "; FLASH 0;"       "
     LET Q$="   "
     FOR N=1 TO 3
 	    LET Q$(N)=INKEY$
 	    IF Q$(N)=" " THEN GO TO 5088
    	IF CODE Q$(N)>=97 AND CODE Q$(N)<=122 THEN LET Q$(N)=CHR$ ((CODE Q$(N))-32)
     	PRINT AT 21,(24+(2*N)); INK 7; PAPER 1;Q$(N)
     	BEEP .12,(N*5)+20
     	FOR m=1 TO 4: NEXT m
     NEXT N
     LET H$=Q$: 
     LET HSC=SC
     PRINT AT 21,0; PAPER 7; INK 0;"         WELL DONE ";H$;"          "
     FOR N=1 TO 12: 
     	BEEP .0045,-10: 
     	BORDER 1: 
     	BORDER 2: 
     	BORDER 6: 
     	BORDER 4: 
     NEXT N
     BORDER BORDER
     BEEP .1,8: 
     FOR N=1 TO 4: NEXT N: 
     BEEP .1,8: 
     BEEP .1,8: 
     BEEP .1,20: 
     BEEP .1,24: 
     BEEP .1,18: 
     BEEP .15,29
     FOR N=1 TO 7: NEXT N: 
     BEEP .12,22: 
     FOR N=1 TO 3: NEXT N:: 
     BEEP .07,19: 
     BEEP .08,17: 
     FOR N=1 TO 3: NEXT N: 
     BEEP .1,14: BEEP .1,12
     PRINT AT 10,7;"                  "
     RETURN

5700 LET lev=damsels-1
     LET z$="     Which level to start ?       "
     FOR n=0 TO 21: 
     	PAPER paper: 
     	BEEP .002,n+5: 
     	PRINT AT n,0; OVER 1;"ï                              ï": 
     NEXT n
     FOR n=1 TO 21: NEXT n: 
     FOR n=0 TO 31: 
     	PAPER paper: INK paper: PLOT n*8,0: DRAW 0,175
     	BEEP .0015,64: 
     	BEEP .0015,59
     	PRINT AT 10,n; PAPER INT (RND*6); INK 9;z$(n+1)
     NEXT n
     INK 9: 
     IF sc=0 AND bonus=0 THEN PRINT AT 15,0;: LIST
     PRINT AT 13,13; FLASH 1;"1";AT 13,14;"  TO ";AT 13,18; FLASH 1;lev
     PRINT AT 13,13; FLASH 1;"1"
     PRINT AT 13,14;" TO "
     PRINT AT 13,18; FLASH 1;LEV
     BEEP .1,30: 
     FOR n=1 TO 25: NEXT n

5751 LET l$=INKEY$: 
	 IF l$="" THEN GO TO 5751
     PRINT AT 21,0; INK paper; PAPER paper; INVERSE 1;"      WHOOPS ! TRY AGAIN !!     "
     PRINT AT 0,0; INK paper; PAPER paper; INVERSE 1;"      WHOOPS ! TRY AGAIN !!     "
     IF CODE l$<49 OR CODE l$>57 THEN BEEP 1,-15: GO TO 5700
     LET ll=VAL l$
     IF ll>lev OR ll<>(INT ll) OR ll<1 THEN BEEP 1,-15: GO TO 5700
     LET sc=0
     LET damsels=ll
     IF ll=1 THEN LET paper=6: LET border=0: LET mines=50: LET bonus=0
     FOR n=30 TO 34: 
     	BEEP .006,n: 
     NEXT n
     IF ll=2 THEN LET paper=5: LET border=0: LET mines=60: LET bonus=250
     IF ll=3 THEN LET paper=4: LET border=0: LET mines=70: LET bonus=750
     IF ll=4 THEN LET paper=3: LET border=0: LET mines=80: LET bonus=1500
     IF ll=5 THEN LET paper=2: LET border=0: LET mines=90: LET bonus=2200
     IF ll=6 THEN LET paper=1: LET border=0: LET mines=100: LET bonus=2700
     IF ll=7 THEN LET paper=0: LET border=0: LET mines=20: LET bonus=3500
     IF ll=8 THEN LET paper=6: LET border=2: LET mines=50: LET bonus=4200
     IF LL=9 THEN LIST

5888 LET lev=1
     GO TO 10
     STOP

6000 PRINT AT X,Y;V$: 
	 LET C$=V$
     PAPER 7: 
     LET C$=V$
     FOR U=25 TO 50 STEP 5: 
     	PRINT AT X,Y;"ü"
     	FOR N=1 TO 8 STEP 2: 
     		BEEP .002,n+u
     	LET SC=SC+5
     	PRINT AT 0,21; PAPER 0; INK 7;" SCORE ";SC
     	NEXT n
     	PRINT AT X,Y;"ù"
     	FOR N=1 TO 8 STEP 2: 
     		BEEP .002,n+u
     	NEXT n
     NEXT U
     LET ti=ti+35
     PAPER paper
     RETURN

7000 REM INSTRUCTIONS
     LET P=0
     BORDER 1: 
     PAPER 1: 
     CLS : 
     INK 7
     PRINT AT 0,0;"    QUICKSILVA PRESENTS ...."
     FOR n=1 TO 60: NEXT n
     FOR N=2 TO 16
     	PRINT AT N,0;"                                "
     NEXT N
     BEEP .2,30: 
     BEEP .1,20: 
     FOR N=1 TO 5: NEXT N: 
     BEEP .075,26: 
     BEEP .125,26: 
     BEEP .1,18
     PRINT AT 0,0;" A GAME OF STRATEGY AND SKILL ! "
     FOR N=47 TO 56 STEP 3
     	PRINT AT 9,11; PAPER P; OVER 0; INK 9;"MINED OUT!": CIRCLE INK 7;128,99,N: 
     	LET P=P+2
     NEXT N
     INK 9
     PRINT AT 18,0;" OR ""RESCUE BILL THE WORM FROM       CERTAIN OLD AGE"""
     PRINT AT 9,11; INK 0; PAPER 7; FLASH 1;"MINED OUT!"
     PAPER 8: 
     FOR N=3 TO 17: 
     	PRINT AT N-1,4; PAPER 8;"¹";AT N-1,27;"¹": 
     	PRINT AT 19-n,3;"¹";AT 19-n,5;"¹";AT 19-n,26;"¹";AT 19-n,28;"¹"
	    BEEP .005,33: 
	 NEXT N: 
	 PAPER 1
     GO SUB 7057
     GO TO 7080

7057 PRINT AT 21,21; INVERSE 1;"PRESS A KEY"
     FOR n=1 TO 60: NEXT n

7080 REM --- FIX - LINE INSERTED BY MATS ---

7060 IF INKEY$="" THEN GO TO 7060
     PAPER 7: 
     INK 0
     CLS
     RETURN

7081 PRINT AT 2,0;"  © MINED OUT!  By  Ian Andrew"
     PRINT ''" YOUR MISSION (should you decide to accept it) IS TO RESCUE BILL THE WORM BY REACHING HIM"''" HE LAYS DORMANT ON THE FINAL    MINEFIELD (LEVEL  9)"
     PRINT '" THIS IS BILL ""¸"""
     PRINT ''" YOU ""ö"" BEGIN AT EACH LEVEL AT  THE BOTTOM OF THE SCREEN"
     PRINT '" AIM FOR THE GAP AT THE TOP OF   THE SCREEN"
     PRINT AT 21,21; INVERSE 1;"PRESS A KEY"
     FOR N=1 TO 40: NEXT N: 
     FOR N=1 TO 50000: IF INKEY$="" THEN NEXT N
     RESTORE 9980: 
     FOR N=1 TO 44: 
     	READ I: 
     	READ L:
     	PRINT AT I,L;"ö": 
     	BEEP .035,N/2
     	PRINT AT I,L;" ": 
     NEXT N
     CLS
     PRINT AT 1,0;" MOVE USING KEYS... 5,6,7 & 8"'" [ 6=left 7=right 8=up 9=down ]    ** SEE KEYBOARD OVERLAY **"
     PRINT '" MINES  ""¹"" ARE VERY UNPLEASANT"''"  YOU ARE WARNED OF ANY MINES     THAT ARE ADJACENT TO YOUR       POSITION AT THE TOP LEFT OF     THE SCRE EN"
     REM "HELLO THERE"
     PRINT '" YOU ONLY LIVE ONCE                        DO NOT HIT ANY MINES"
     PRINT ''" DAMSELS - THESE ALSO REGISTER   AS MINES, BUT IF YOU ARE NEXT   TO ONE DO NOT HESITATE TO RUSH  IN AND RESCUE HER. YOU WILL BE  REWARDED"
     GO SUB 7057
     PRINT AT 2,0;" THE BUG ""ý"" (a mine with legs)  WILL CHASE YOU SOMETIMES -      IT CAN GET VERY AGGRESSIVE"
     FOR n=1 TO 15: NEXT n
     LET j$="                                 ö        ý                                        "
     FOR n=1 TO LEN j$-35: 
     	PRINT AT 6,0;j$(n TO n+31): 
     	BEEP .0018,60: 
     	FOR m=1 TO 1: NEXT m: 
     NEXT n
     PRINT " AND NOW SOME..."''" TIPS - THE SAFE AREAS ARE       COMPLETLY MINE FREE - SO AIM    FOR THE TOP SAFE AREA (NOT JUST THE GAP) & YOU CAN SAFELY M OVE  TO THE GAP FROM THERE.          WHEN THE BUG IS ACTIVE (LEVEL 4 ONWARDS) KEEP ON THE MOVE - YOU CAN USUALLY MOVE QUICKER THAN   THE BUG!"
     GO SUB 7057
     PRINT AT 3,0;" THE FENCE IS MINED AND WILL     REGISTER AS A MINE IF YOU ARE   NEXT TO IT"
     PRINT AT 8,0;"ûûûûûûûûûûûûûûûûûûûûûûûûûûûûûûûû"
     REM
     FOR N=1 TO 2
	    FOR O=0 TO 1
    		PRINT AT 6+O,14;"ö"
     		PRINT AT 0,0; PAPER (4-O); INK 9;"ADJACENT º»¼½ ";O
     		IF o THEN BEEP .04,o*10
     		FOR M=1 TO 22: NEXT M: 
    		PRINT AT 6+O,14;" ": 
    	NEXT O: 
     NEXT N
     PRINT AT 6,14;"ö": PRINT AT 0,0; PAPER 4; INK 9;"ADJACENT º»¼½ 0"
     PRINT AT 11,0;" IMPOSSIBLE? - IF IT SEEMS       IMPOSSIBLE TO GET THROUGH - DO  NOT DESPAIR - MINE SPREADERS    ""³"" NOT ONLY ADD MINES BUT "
     PRINT " THEY ALSO REMOVE SOME HIDDEN    ONES  (Kind aren't they!)"
     PRINT ''; PAPER 1; INK 7;"                                 PRESS ""I"" TO SEE INSTRUCTIONS   AGAIN - ANY OTHER KEY TO BEGIN "

7390 LET s$=INKEY$: 
	 IF s$="" THEN GO TO 7390
     IF s$="I" OR s$="i" THEN GO TO 7000
     CLS
     RETURN

7990 GO TO 7990
     STOP

8000 REM --- FIX - LINE INSERTED BY MATS ---
     LET PA=PAPER
     PRINT AT 21,0; FLASH 1; BRIGHT 1; INK 7; PAPER 1;"YOUR MAP HAS BLOWN AWAY! (SHAME)"
     PRINT AT 20,14; PAPER paper;"   "
     FOR n=19 TO 2 STEP -.5
     	BEEP .05,N-10: 
     	IF damsels<=8 OR n>14 THEN PRINT AT N,1; OVER 1; INK PAPER; PAPER PAPER;"                              "
     	PRINT AT X,Y; PAPER PA;C$
     NEXT N
     PRINT AT 20,14; PAPER PA;"   "
     PRINT AT 21,0;"                                "
     RETURN

8444 GO SUB 9300: 
	 LET DX=30: 
	 FOR u=.155 TO .005 STEP -.01: 
	 	IF damsels<>9 OR x<>8 THEN PRINT AT 15,0;: LIST
     	PRINT AT 0,dx; INK 0; PAPER 7;"¸ ": 
     	LET dx=dx-1: 
     	BEEP u,8: 
     	BEEP u,12: 
     	BEEP u,16: 
     	BORDER RND*7: 
     NEXT u: 
     FOR n=1 TO 16: PRINT AT 0,dx; INK 0; PAPER 7;"¸  ": 
     	LET dx=dx-1+(dx=0): 
     	BEEP u+.005,8: 
     	BORDER RND*7: 
     	BEEP u+.005,12: 
     	BEEP u,16: 
     NEXT n
     PRINT AT 0,0; PAPER 7;" ": 
     FOR t=0 TO 2
     	FOR l=0 TO 7 STEP 7: INK l
     	GO SUB 8450: 
     	GO TO 8700

8450 FOR n=1 TO 5
     	PRINT AT x+n,y+n;"*"
     	PRINT AT x-n,y+n;"*"
     	PRINT AT x+n,y-n;"*"
     	PRINT AT x-n,y-n;"*"
     NEXT n
     FOR n=1 TO 5
     	PRINT AT x,y+n;">"
     	PRINT AT x,y-n;"<"
     	PRINT AT x+n,y;"#"
     	PRINT AT x-n,y;"#"
     NEXT n
     RETURN

8700 	NEXT l
8720 NEXT t
     INK 0
     GO SUB 9300
     PRINT AT 0,0; INK 7; PAPER 0;"   TWO THOUSAND POINTS EXTRA !  "
     LET sc=sc+2000
     FOR b=0 TO 7
     	PAPER B: 
     	INK 9: 
     	PRINT AT x,y;c$
     	FOR n=1 TO 14: 
     		BEEP .002,50-n+b: 
     		BORDER 1: 
     		BORDER 2: 
     		BORDER 3: 
     		BORDER 4: 
     		BORDER 5: 
     		BORDER 6: 
     		BORDER 7: 
     		BORDER b: 
     	NEXT n
     NEXT b
     BORDER 6: 
     PAPER paper: 
     INK 9
     BORDER 0: 
     PAPER 0: 
     CLS
     FOR n=0 TO 30 STEP 6: 
     	FOR m=1 TO 10
     		BEEP .008,n+m: 
     	NEXT m: 
     NEXT n
     PRINT AT 3,8;"CONGRATULATIONS";'';" YOU HAVE RESCUED BILL AND THE      WHOLE WORLD IS GRATEFUL !      "
     PRINT ''''';" YOUR SCORE = ";SC;" WHICH ISN'T"'" AT ALL BAD ....  WHY NOT HAVE   ANOTHER GAME AND IMPROVE YOUR              SCORE ?"
     IF SC>HSC THEN GO SUB 4500
     LET DAMSELS=1: 
     GO TO 1200
     LET DAMSELS=1: 
     FOR N=1 TO 50000000: IF INKEY$="" THEN NEXT N
     GO TO 6
     STOP
     BORDER 1: 
     PAPER 3: 
     INK 9
     CLEAR : 
     RESTORE : 
     PRINT AT 10,9;"STOP THE TAPE"
     PAPER 2: 
     FOR g=1 TO 50: 
     	BEEP .000650,50+g/50: 
     	BORDER 5: 
     	BORDER 2: 
     	BORDER 3: 
     	BORDER 4: 
     	BORDER 1: 
     	BORDER 4: 
     	BORDER 6: 
     	BORDER 1: 
     NEXT g
     POKE 23609,32
     PRINT AT 10,9;"DON'T GO AWAY!"
     PRINT AT 0,0;" ";AT 0,31;" ";AT 21,0;" ";AT 21,31;" "
     REM
     FOR A=1 TO 16: 
     	READ A$: 
     	FOR B=0 TO 7: 
     		READ C: 
     		POKE USR A$+B,C: 
     	NEXT B: 
     	BEEP .012,40: 
     NEXT A
     DATA "¹",0,0,0,0,60,126,0,0
     DATA "A",24,24,36,195,195,36,24,24
     DATA "B",90,90,36,219,219,36,90,153
     DATA "C",165,165,66,90,40,189,126,129
     DATA "D",72,84,73,62,8,28,62,62
     DATA "E",18,42,146,124,16,56,124,124
     DATA "F",8,16,8,186,93,16,8,16
     DATA "G",90,90,36,195,195,36,90,153
     BEEP .04 ,23
     PRINT AT 10,0; PAPER 0; INK 7;"   Press ""I"" for INSTRUCTIONS   "'"     Any other Key to begin     "
     BEEP .1 ,23

9095 LET s$=INKEY$: 
	 IF s$="" THEN GO TO 9095
     IF s$="i" OR s$="I" THEN GO SUB 7000
     RUN
     DATA "ý",0,0,0,0,60,126,165,165
     DATA "K",0,0,0,0,0,0,85,170
     DATA "m",192,32,18,13,63,16,32,192
     DATA "N",0,0,192,192,78,74,91,112
     DATA "P",0,132,204,180,132,132,132,0
     DATA "Q",0,144,152,148,146,145,144,0
     DATA "R",0,159,144,158,144,144,159,0
     DATA "S",0,31,32,30,1,33,30,0
     FOR n=2 TO -1 STEP -1
     	BEEP .003,27-n: 
     	BEEP .003,19-n: 
     	BEEP .003,29-n
     	IF n>=0 THEN INK n
     	IF n=-1 THEN FLASH 1: BRIGHT 0
     	GO SUB 9300: 
     	GO TO 9340

9300 REM --- FIX - LINE INSERTED BY MATS ---
     PRINT AT 4,4+ss;"å";AT 4,6+ss;"ê"
     PRINT AT 5,4+ss;"å";AT 5,6+ss;"ê"
     PRINT AT 6,4+ss;"å";AT 6,6+ss;"ê"
     PRINT AT 7,1+ss;"ìììí";AT 7,6+ss;"îììì"
     PRINT AT 9,1+ss;"ãããç";AT 9,6+ss;"ëããã"
     PRINT AT 10,4+ss;"å";AT 10,6+ss;"ê"
     PRINT AT 11,4+ss;"å";AT 11,6+ss;"ê"
     PRINT AT 12,4+ss;"å";AT 12,6+ss;"ê"
     RETURN

9340 NEXT n
     PRINT AT 11,5+ss; INK paper; PAPER paper;"¹"
     FLASH 0
     PRINT AT 8,5+ss; FLASH 0;"¸"
     RETURN
     STOP

9900 LET ss=INT (RND*11)+6: 
	 BEEP .3,-12
     PRINT AT 0,15;"ýý";AT 1,15;"ûû": BEEP .3,-12
     FOR n=0 TO 1: 
     	FOR m=0 TO 6: 
     		BORDER n: 
     		BEEP .003,n*m: 
     		BORDER m: 
     		BEEP .002,30+n+m*2: 
     	NEXT m: 
     NEXT n
     BORDER 2: 
     FLASH 1
     FOR n=0 TO 9
     	PRINT AT n+3,ss+1; PAPER paper; INK paper;"         ": 
     NEXT n
     FLASH 0
     GO TO 9200
     DATA 15,6,15,6,15,6,15,6,15,6,14,6,13,6,13,7,13,8,12,8,11,8,11,7,11,6,11,5,11,4,11,3,11,2,11,1,11,0,10,0,9,0,8,0,7,0,6,0,5,0,4,0,3,0
     DATA 3,1,3,2,3,3,3,4,3,5,3,6,3,7,3,8,3,9,3,10,3,11,3,12,3,13,3,14,2,14,1,14,0,14
     DATA 0,14,0,14
     REM                                      END

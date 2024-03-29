#!/bin/bash
## Wargames
## Simula la secuencia de la película Juegos de Guerra
## Copyleft Ubuntu Peronista
## requiere 
## slowcat y ${SPEAK} para la voz sintetizada
## minimodem para crear modem
## Para GNU con Linux/BSD

#define variables
DIR="/tmp/$USER"
SLOWCAT="/usr/local/bin/scat"
SPEAK="espeak-ng"
MODEM="minimodem --tx-carrier -a -q 1200"
MUSIC="$USER/Música/Mitch\ Murder/impact\\ winter/Mitch\\ Murder\\ -\\ Below-2816601710.flac"
mkdir -p ${DIR}

#Borra temporales previos si los hubiese
rm -f ${DIR}/.wargames.txt
rm -f ${DIR}/.powers.txt
rm -f ${DIR}/.usa.txt
rm -f ${DIR}/.ussr.txt
rm -f ${DIR}/.flpcc.txt
rm -f ${DIR}/.flpp.txt
rm -f ${DIR}/.pjkr.txt

#crea ficheros temporales del arte ASCII
touch ${DIR}/.wargames.txt  #crea el fichero temporal del texto
touch ${DIR}/.powers.txt
touch ${DIR}/.usa.txt
touch ${DIR}/.ussr.txt
touch ${DIR}/.flpcc.txt
touch ${DIR}/.flpp,txt
touch ${DIR}/.pjkr.txt

#crea fichero temporal con arte gráfica de las powers >> ${DIR}/.powers.txt
FILE="${DIR}/.powers.txt"
cat <<EOM >$FILE
 ,------~~v,                                _--^\\
 |'         п\   ,__/п||                  _/    /,_
/             \,/     /          ,,   ,,/^      п  vпv-__
|                    /         |'~^п                    п\\
\                   |          _/                     _  /^
 \                 /          /                   ,~~^/|пп
  ^п~_             /          |          __,,  v__\   \/
      '~~,  ,п~п\ \            ^~       /    ~п  //
          \/     \/              \~,  ,/         п
                                    ~~
EOM

# creates .usa.txt
FILE="${DIR}/.usa.txt"
cat <<EOM >$FILE
 ,------~~v,
 |'         п\   ,__/п||'
/             \,/     /
|                    /
\                   |
 \                 /
  ^п~_             /
      '~~,  ,п~п\ \\
          \/     \/
EOM

#creates .ussr.txt
FILE="${DIR}/.ussr.txt"
cat <<EOM >$FILE
               _--^\\
             _/    /'_
    ,,   ,,/^      п  vпv-__
    /'~^п                    п\\
  _/                     _  /^
 /                   ,~~^/|пп
|          __,,  v__\   \/
 ^~       /    ~п  //
   \~,  ,/         п
      ~~
EOM

#creates .flpcc.txt
FILE="${DIR}/.flpcc.txt"
cat <<EOM >$FILE
FORCE LOSS PROJECTION - COMMAND & CONTROL

COMPONENT       CONTROL AREA       % LOSS

   SAC            HQ                 82
   SAC            8 AF               96
   SAC            1 STRAD            43
   SAC            15 AF              61
   SAC            1 CEG              77
   SAC            544 SIW            82
   SAC            3902 ABW           76

   TAC            HQ                 74
   TAC            9 AF               96
   TAC            12 AF              83
   TAC            ADC                92
   TAC            SOUTH AIR          82
EOM

#creates .flpp.txt
FILE="${DIR}/.flpp.txt"
cat <<EOM >$FILE
                    FORCE LOSS PROJECTION -- PERSONNEL

                USAF PERSONNEL BY COMMANDS, SOAs, AND DRUs

MAJOR COMMANDS                           MILITARY    CIVILIAN    % LOSS

Air Force Communications Command (AFCC)    41,393       6,406      47
Air Force Logistics Command (AFLC)          9,936      80,949      96
Air Force Systems Command (AFSC)           25,132      26,288      84
Air Training Command (ATC)                 89,022      15,813      23
Alaskan Air Command (AAC)                   7,347       1,125      46
Electronic Security Command (ESC)          10,832         432      51
Military Airlift Comand (MAC)              72,144      16,171      73
Pacific Air Forces (PACAF)                 25,144       9,541      22
Strategic Air Command (SAC)               104,985      13,484      21
Tactical Air Command (TAC)                 99,765      11,851      58
U.S. Air Forces in Europe (USAFEU)         56,844      11,642      79
EOM

#crea .pjkr.txt
FILE="${DIR}/.pjkr.txt"
cat <<EOM >$FILE
 UNITED STATES
UNITS DETROYED             MILITARY FORCES            UNITS
------------------------------------------------------------------
      68%                  BOMBERS
      54%                  ICBM'S
      12%                  ATTACK SUBS
      39%                  TACTICAL AIRCRAFT
      58%                  GROUND FORCES

 UNITED STATES
UNITS DESTROYED            CIVILIAN ASSETS             UNITS
-------------------------------------------------------------------
      69%                  HOUSING
      22%                  COMMUNICATIONS
      45%                  TRANSPORTATION
      70%                  FOOD STOCKPILES
      89%                  HOSPITALS

 UNITED STATES             HUMAN RESOURCES               SDV
-------------------------------------------------------------------
  49 MILLION               NON-FATAL INJURED            65 MILLION
  72 MILLION               POPULATION DEATHS           110 MILLION
EOM

## Toca la música
#play ${MUSIC} -q &
#disown


# Login screen
clear # borra la pantalla
echo 'LOGON:'
read -t 3 # pausa tres segundos
clear
echo 'LOGIN:'
# comienza a "teclear"
clear
echo 'LOGON:  J'
read -t 0.32
clear
echo 'LOGON:  Jo'
read -t 0.21
clear
echo 'LOGON:  Jos'
read -t 0.25
clear
echo 'LOGON:  Josh'
read -t 0.14
clear
echo 'LOGON:  Joshu'
read -t 0.26
clear
echo 'LOGON:  Joshua'
read -t 2

#pantalla con boludeces
clear
echo "#45       11458     11009     11893    11972   11315"
read -t 0.05
clear
echo "#45       11458     11009     11893    11972   11315"
echo "PRT COM. 3.4.5. SECTRAN 9.4.3     PORT STAT: SD-345"
read -t 0.09
clear

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "(311) 767-8739"
echo "(311) 963-2364"
rear -t 0.13
clear

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "(311) 767-8739"
echo "(311) 963-2364"
echo "-           PRT.STAT.                                    CRT. DEF." | ${SLOWCAT} -b 6000000
echo "================================================================" | ${SLOWCAT} -b 6000000
echo "FS0JJLSD: SDSDKJ: SBF.JSL:                          DKSJL: SKFJJ: SDKFJLJ:" | ${SLOWCAT} -b 6000000
echo "SYSPROC FUNCT READY                            ACT NET READY" | ${SLOWCAT} -b 6000000
echo "CPU AUTH RY-345-A08           SYSCOMP STATUS:  ALL PORTS ACTIVE" | ${SLOWCAT} -b 6000000
echo "22/34534.98/3209                                          11CVB-2907-39490" | ${SLOWCAT} -b 6000000
echo "(211) 936-2364" | ${SLOWCAT} -b 5000000
read -t 0.1

clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "(311) 767-8739"
echo "(311) 963-2364"
echo "-           PRT.STAT.                                    CRT. DEF." 
echo"================================================================"
echo"FS0JJLSD: SDSDKJ: SBF.JSL:                          DKSJL: SKFJJ: SDKFJLJ:"
echo "SYSPROC FUNCT READY                            ACT NET READY"
echo "CPU AUTH RY-345-A08           SYSCOMP STATUS:  ALL PORTS ACTIVE"
echo "22/34534.98/3209                                          11CVB-2907-39490"
echo"(211) 936-2364"


clear
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "TWS45-36-F8-3456                  WOPR STATUS: TRAK OFF       PRON ACTIVE"
echo "#45:45:45 11 WER: 45/29/81  XCOMP: 43239582   YCOMP:349322938D  ZCOMP:343906834"
echo ""
echo "-                  PRT.STAT                           CRT.DEF."
echo "                  ============================================="
echo "                     3453                              3594"
read -t 0.1

clear
echo 'Retrieving RAM...' | ${SLOWCAT} -b 3000000000
echo 'Recovering previous STATE' | ${SLOWCAT} -b 3000000000
echo '                                                 OK' | ${SLOWCAT} -b 2000000
echo 'Cleaning ROM' | ${SLOWCAT} -b 30000000
echo '                                                 FAIL' | ${SLOWCAT} -b 200000
echo 'CHKSUM ER' | ${SLOWCAT} -b 960000
echo 'Checking Subrutines                              OK' | ${SLOWCAT} -b 960000
echo 'CHKSUM                                           OK' | ${SLOWCAT} -b 960000
echo '' | ${SLOWCAT} -b 100000000
echo '' | ${SLOWCAT} -b 100000000
echo '' | ${SLOWCAT} -b 100000000
echo '....................................................' | ${SLOWCAT} -b 4000000000
echo 'WORP Online' | ${SLOWCAT} -b 100
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'DARTHMOUTH Init' | ${SLOWCAT} -b 144000
echo 'USER Logged                                      CHECK' | ${SLOWCAT} -b 6900
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'Artificial Inteligence                                               OK' | ${SLOWCAT} -b 7000000
echo 'Artificial Inteligence Subrutine                                     ON' | ${SLOWCAT} -b 7000000
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'ARPANet Check' | ${SLOWCAT} -b 96000
echo '                                                 OK' | ${SLOWCAT} -b 1440000


#greetings
clear
${SPEAK} "Greetings Professor Falken" &
echo 'GREETINGS PROFESSOR FALKEN.' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
clear

cat ${DIR}/.wargames.txt
echo 'Hello.' | tee -a ${DIR}/.wargames.txt  | ${SLOWCAT} -b 30
echo '' | tee -a ${DIR}/.wargames.txt
clear

cat ${DIR}/.wargames.txt
${SPEAK} "How are you feeling today?" &
echo 'HOW ARE YOU FEELING TODAY?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000 
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
echo "I'm fine. How are you?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70 
echo '' | tee -a ${DIR}/.wargames.txt
read -t 3

clear
cat ${DIR}/.wargames.txt
${SPEAK} "Excellent. It's been a long time. Can  you explain the removal of you user account on june 23, nineteen seventy three?" &
echo "EXCELLENT. IT'S BEEN A LONG TIME. CAN YOU EXPLAIN" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo "THE REMOVAL OF YOUR USER ACCOUNT ON 6/23/73?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 11

clear
cat ${DIR}/.wargames.txt
echo 'People sometimes make mistakes.' | tee ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
#echo '' | tee ${DIR}/.wargames.txt
# (NOTE: in one scene, it appears that he typed
# "mistak" instead of "mistakes.")
read -t 4

clear
#empieza una rutina nueva y borra todo lo anterior de memoria
rm ${DIR}/.wargames.txt
touch ${DIR}/.wargames.txt
read -t 1
#echo '' | tee -a ${DIR}/.wargames.txt
echo 'YES THEY DO.' | tee ${DIR}/.wargames.txt
${SPEAK} "Yes, They do." &
read -t 3
clear

#empieza una rutina nueva y borra todo lo anterior de memoria
rm ${DIR}/.wargames.txt
touch ${DIR}/.wargames.txt
${SPEAK} "Shall we play a game?" &
echo 'SHALL WE PLAY A GAME?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo ''
echo '' >> ${DIR}/.wargames.txt
read -t 3
clear

cat ${DIR}/.wargames.txt
echo 'Love to. How about Global Thermonuclear War?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
echo ''
echo '' >> ${DIR}/.wargames.txt
read -t 4



clear
cat ${DIR}/.wargames.txt
${SPEAK} "Wouldn't you prefer a good game of chess?" &
echo "WOULDN'T YOU PREFER A GOOD GAME OF CHESS?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
echo ''
clear

cat ${DIR}/.wargames.txt
echo "Later. Let's play Global Thermonuclear War." | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
read -t 1

echo ''
${SPEAK} 'Fine' &
echo "FINE."
read -t 4
clear
touch ${DIR}/.wargames.txt

#pantalla del juego
read -t 1

${SLOWCAT} ${DIR}/.powers.txt -b 9600
${SPEAK} "Please choose one side" &
echo "     UNITED STATES             SOVIET UNION" | ${SLOWCAT} -b 14400
echo ''
echo "WHICH SIDE DO YOU WANT?" | ${SLOWCAT} -b 2000
echo ''
echo '  1.   UNITED STATES' | ${SLOWCAT} -b 3000
echo '  2.   SOVIET UNION' | ${SLOWCAT} -b 3000
echo ''
echo 'PLEASE CHOOSE ONE:'
read -t 4

clear
cat ${DIR}/.powers.txt
echo "     UNITED STATES             SOVIET UNION"
echo ''
echo "WHICH SIDE DO YOU WANT?"
echo ''
echo '  1.   UNITED STATES'
echo '  2.   SOVIET UNION'
echo ''
echo 'PLEASE CHOOSE ONE: 2'
read -t 1
clear

cat ${DIR}/.usa.txt | ${SLOWCAT} -b 9600
${SPEAK} "Select your primary targets" &
echo 'AWAITING FIRST STRIKE COMMAND' | ${SLOWCAT} -b 3000
echo '-----------------------------' | ${SLOWCAT} -b 9000
echo ''
echo 'PLEASE LIST PRIMARY TARGETS BY' | ${SLOWCAT} -b 3000
echo 'CITY AND/OR COUNTY NAME:' | ${SLOWCAT} -b 3000
echo ''
read -t 3

clear
cat ${DIR}/.usa.txt
echo 'AWAITING FIRST STRIKE COMMAND'
echo '-----------------------------'
echo ''
echo 'PLEASE LIST PRIMARY TARGETS BY'
echo 'CITY AND/OR COUNTY NAME:'
echo ''
read -t 1
echo 'Las Vegas' | ${SLOWCAT} -b 63
read -t 1.4
echo 'Seattle' | ${SLOWCAT} -b 75
echo ''
read -t 0.5
clear

read -t 3
echo ''
cat ${DIR}/.powers.txt
${SPEAK} "The United States has trajectory headings of I C B ems incoming to Las Vegas and Seattle!"&
echo ''
echo "<US HAS TRAJECTORY HEADINGS OF ICBMS BOUND FOR LAS VEGAS AND SEATTLE>" | ${SLOWCAT} -b 9600
echo ''
echo "<SUBS REPRESENTED BY BLINKING DOTS ARE OFF US SHORELINES>" | ${SLOWCAT} -b 9600

read -t6

cat ${DIR}/.flpcc.txt | ${SLOWCAT} -b 130000
read -t 5.1
clear
cat ${DIR}/.flpp.txt | ${SLOWCAT} -b 130000
read -t 7.3
clear

cat ${DIR}/.powers.txt
${SPEAK} "Seattle has been obliterated by two I C B ems. 3.4 millons has been killed" &
clear
cat ${DIR}/.usa.txt
echo 'SEATTLE HAS BEEN OBLITERATED. 3.4 MILLION CASUALITIES.' | scat -b 1200
read -t 9
${SPEAK} "Las Vegas has been vaporized by an Intercontinental Ballistic Missile. 320000 people has been anihilated"&
echo ''
echo 'LAS VEGAS HAS BEEN VAPORIZED. 320.000 KILLED.' | scat -b 1200
read -t 6
echo ''
read -t 10
clear



#continua el juego de guerra...
echo 'TOC. 04/03/76         SYS PROC 3425.45.6456      XCOMP STATUS: PV-456'
echo 'ACTIVE PORTS: 34.33.75.94                          CPU 7M USCD: 23:45'
echo '045/34/74     ALT MODE FDNCT: 74-4-AY345          STANDBY MODE ACTIVE'
echo 'AD43_054     #529_Z80     A629_392'
read -t 2
echo ''
echo ''
echo '      LOGON: Joshua'
read -t 3
${SPEAK} "Greetings Professor Falken"&
echo ''
echo 'GREETINGS PROFESSOR FALKEN.' | ${SLOWCAT} -b 3000
echo ''
read -t 4
echo 'Hello, are you still playing the game?' | ${SLOWCAT} -b 78
read -t 1
echo ''
${SPEAK} "Of course. I should reach DEFCON 1 and launch my missiles in 28 hours."&
echo 'OF COURSE. I SHOULD REACH DEFCON 1 AND' | ${SLOWCAT} -b 3000
echo 'LAUNCH MY MISSILES IN 28 HOURS.' | ${SLOWCAT} -b 3000
echo ''
read -t 8
${SPEAK} "Would you like to see some projected kill ratios?"&
echo 'WOULD YOU LIKE TO SEE SOME PROJECTED KILL RATIOS?' | ${SLOWCAT} -b 3000
echo ''
read -t 5

#presenta .pjkr.txt
cat ${DIR}/.pjkr.txt | ${SLOWCAT} -b 1300000
echo ''
read -t 8
echo 'Is this a game or is it real?' | ${SLOWCAT} -b 87
echo ''
read -t 5

${SPEAK} "What's the difference?"&
echo "WHAT'S THE DIFFERENCE?" | ${SLOWCAT} -b 3000
read -t 8
echo ''
${SPEAK} "You are a hard man to reach. Could not find you in Seattle and no terminal is in operation at your classified address."&
echo "YOU ARE A HARD MAN TO REACH.  COULD NOT FIND" | ${SLOWCAT} -b 3000
echo "YOU IN SEATTLE AND NO TERMINAL IS IN" | ${SLOWCAT} -b 3000
echo "OPERATION AT YOUR CLASSIFIED ADDRESS." | ${SLOWCAT} -b 3000
echo ''
read -t 9

echo 'What classified address?' | ${SLOWCAT} -b 69
echo ''
read -t 5
${SPEAK} "D O D pension files indicate current mailing as: Doctor Robert Hume, A K A, Stephen W Falken. 5 tall cedar road, Goose Island, Oregon, 97014"&
echo 'DOD PENSION FILES INDICATE' | ${SLOWCAT} -b 3000
echo 'CURRENT MAILING AS:' | ${SLOWCAT} -b 3000
echo ''
echo 'DR. ROBERT HUME (A.K.A STEPHEN W. FALKEN)' | ${SLOWCAT} -b 1200
echo '5 TALL CEDAR ROAD' | ${SLOWCAT} -b 1200
echo 'GOOSE ISLAND, OREGON 97014' | ${SLOWCAT} -b 1200
read -t 12

clear
read -t 3
${SPEAK} "Greetings. Yesterday's game was interrupted, although our main goal has not yet been achieved. Solution is near. Game time: 31 hours, 12 minutes, 8 seconds. Estimated time remaining: 52 hours 17 minutes 10 seconds"&
echo "GREETINGS"  | ${SLOWCAT} -b 1200
read -t 1
echo ''
echo "YESTERDAY GAME WAS INTERRUPTED"  | ${SLOWCAT} -b 3000
echo "ALTHOUGH OUR MAIN GOAL HAS NOT YET BEEN ACHIEVED." | ${SLOWCAT} -b 3000
echo "SOLUTION IS NEAR." | ${SLOWCAT} -b 3000
echo ''
echo "                 GAME TIME:   31:12:08"  | ${SLOWCAT} -b 1200
echo "  ESTIMATED TIME REMAINING:   52:17:10" | ${SLOWCAT} -b 1200
echo ''
read -t 14

echo 'What is the primary goal?' | ${SLOWCAT} -b 90
echo ''
read -t 3
${SPEAK} "To win the game."&
echo "TO WIN THE GAME." | ${SLOWCAT} -b 1200
read -t 5

#Final
# Borra los archivos temporales creados
rm -f ${DIR}/.wargames.txt
rm -f ${DIR}/.powers.txt
rm -f ${DIR}/.usa.txt
rm -f ${DIR}/.ussr.txt
rm -f ${DIR}/.flpcc.txt
rm -f ${DIR}/.flpp.txt
rm -f ${DIR}/.pjkr.txt
rm -r ${DIR}
clear

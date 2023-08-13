#!/bin/bash
## wWargames_es
## Simula la secuencia de la película Juegos de Guerra en castellano
## Copyleft Ubuntu Peronista
## requiere 
## slowcat y ${SPEAK} para la voz sintetizada
## minimodem para crear modem
## Para GNU con Linux/BSD

#define variables
DIR="/tmp/$USER"
SLOWCAT="/usr/local/bin/scat"
SPEAK="espeak -ves+male2 -s180 -p 45"
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
PROYECCION DE PERDIDAS DE FUERZAS - MANDO Y CONTROL

COMPONENTE    AREA DE CONTROL   % PERDIDAS

   SAC            CG                 82
   SAC            8 FA               96
   SAC            1 STRAD            43
   SAC            15 FA              61
   SAC            1 CEG              77
   SAC            544 CIC            82
   SAC            3902 GAS           76

   TAC            HQ                 74
   TAC            9 FA               96
   TAC            12 FA              83
   TAC            ADC                92
   TAC            FUERZA AEREA       82
EOM

#creates .flpp.txt
FILE="${DIR}/.flpp.txt"
cat <<EOM >$FILE
               PROYECCION DE PERDIDA DE FUERZAS -- PERSONAL

               PERSONAL DE LA FAEU POR MANDOS, SOAs y DRUs

MANDOS PRINCIPALES                      MILITARES     CIVILES  % PERDIDA

Mando de Comunicaciones FF.AA (AFCC)       41,393       6,406      47
Mando de Logística FF.AA (AFLC)             9,936      80,949      96
Mando de Sistemas FF.AA. (AFSC)            25,132      26,288      84
Mando de Institutos FF.AA. (ATC)           89,022      15,813      23
Mando Aéreo de Alaska (AAC)                 7,347       1,125      46
Mando de Seguridad Electrónica (ESC)       10,832         432      51
Mando de Transporte Aéreo Militar (MAC)    72,144      16,171      73
Fuerzas Aéreas del Pacífico (PACAF)        25,144       9,541      22
Mando Aéreo Estratégico (SAC)             104,985      13,484      21
Mando Aéreo Táctico (TAC)                  99,765      11,851      58
Fuerzas Aéreas EE.UU. en Europa (USAFEU)   56,844      11,642      79
EOM

#crea .pjkr.txt
FILE="${DIR}/.pjkr.txt"
cat <<EOM >$FILE
 ESTADOS UNIDOS
UNIDADES DESTRUIDAS        FUERZAS MILITARES          UNIDADES
------------------------------------------------------------------
      68%                  BOMBARDEROS
      54%                  MBIC'S
      12%                  SUBMARINOS DE ATAQUE
      39%                  AVIACION TACTICA
      58%                  FUERZAS TERRESTRES

 ESTADOS UNIDOS
UNIDADES DESTRUIDAS        INFR. CIVIL                 UNIDADES
-------------------------------------------------------------------
      69%                  VIVIENDA
      22%                  COMUNICACIONES
      45%                  TRANSPORTE
      70%                  RESERVA ALIMENTICIA
      89%                  HOSPITALES

 ESTADOS UNIDOS            RECURSOS HUMANOS               SDV
-------------------------------------------------------------------
  49 MILLONES              HERIDOS NO FATALES           65 MILLONES
  72 MILLONES              POBLACION MUERTOS           110 MILLONES
EOM

## Toca la música
#play ${MUSIC} -q &
#disown


# Login screen
clear # borra la pantalla
echo 'LOGON:'
read -t 3 # pausa tres segundos
clear
echo 'LOGON:'
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
echo 'Recuperando RAM...' | ${SLOWCAT} -b 3000000000
echo 'Recobrando ESTADO previo' | ${SLOWCAT} -b 3000000000
echo '                                                 OK' | ${SLOWCAT} -b 2000000
echo 'Limpiando ROM' | ${SLOWCAT} -b 30000000
echo '                                               FALLO' | ${SLOWCAT} -b 200000
echo 'CHKSUM ER' | ${SLOWCAT} -b 960000
echo 'Chequeo de Subrutinas                            OK' | ${SLOWCAT} -b 960000
echo 'CHKSUM                                           OK' | ${SLOWCAT} -b 960000
echo '' | ${SLOWCAT} -b 100000000
echo '' | ${SLOWCAT} -b 100000000
echo '' | ${SLOWCAT} -b 100000000
echo '....................................................' | ${SLOWCAT} -b 4000000000
echo 'WORP en línea' | ${SLOWCAT} -b 100
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'DARTHMOUTH Init' | ${SLOWCAT} -b 144000
echo 'USUARIO Logged                             COMPROBADO' | ${SLOWCAT} -b 6900
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'Inteligencia Artificial                           OK' | ${SLOWCAT} -b 7000000
echo 'Subrutina de Inteligencia Artificial              ON' | ${SLOWCAT} -b 7000000
echo '' | ${SLOWCAT} -b 10000000
echo '' | ${SLOWCAT} -b 10000000
echo 'Revisiñon de ARPANet' | ${SLOWCAT} -b 96000
echo '                                                 OK' | ${SLOWCAT} -b 1440000


#greetings
clear
${SPEAK} "Saludos Profesor Falken" &
echo 'SALUDOS PROFESOR FALKEN.' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
clear

cat ${DIR}/.wargames.txt
echo 'Hola.' | tee -a ${DIR}/.wargames.txt  | ${SLOWCAT} -b 30
echo '' | tee -a ${DIR}/.wargames.txt
clear

cat ${DIR}/.wargames.txt
${SPEAK} "Cómo se siente hoy?" &
echo 'COMO SE SIENTE HOY?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000 
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
echo "Estoy bien. Como está usted?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70 
echo '' | tee -a ${DIR}/.wargames.txt
read -t 3

clear
cat ${DIR}/.wargames.txt
${SPEAK} "Excelente. Ha pasado un largo tiempo. Puede explicar la remoción de su cuenta de usuario del 23 de junio de mil novescientos setenta y tres?" &
echo "EXCELENTE. HA PASADO UN LARGO TIEMPO. PUEDE EXPLICAR" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo "LA REMOCION DE SU CUENTA DE USUARIO EL 23/6/73?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 11

clear
cat ${DIR}/.wargames.txt
echo 'La gente a veces comete errores.' | tee ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
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
${SPEAK} "Si, lo hacen." &
echo 'SI, LO HACEN.' | tee ${DIR}/.wargames.txt | ${SLOWCAT} -b 1200
read -t 3
clear

#empieza una rutina nueva y borra todo lo anterior de memoria
rm ${DIR}/.wargames.txt
touch ${DIR}/.wargames.txt
${SPEAK} "Jugamos un juego?" &
echo 'JUGAMOS UN JUEGO?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo ''
echo '' >> ${DIR}/.wargames.txt
read -t 3
clear

cat ${DIR}/.wargames.txt
echo 'Me encantaría. Que tal Guerra Termonuclear Global?' | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
echo ''
echo '' >> ${DIR}/.wargames.txt
read -t 4



clear
cat ${DIR}/.wargames.txt
${SPEAK} "No preferiría una buena partida de ajedrez?" &
echo "NO PREFERIRÍA UNA BUENA PARTIDA DE AJEDREZ?" | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 3000
echo '' | tee -a ${DIR}/.wargames.txt
read -t 4
echo ''
clear

cat ${DIR}/.wargames.txt
echo "Más tarde. Juguemos Guerra Termonuclear Global." | tee -a ${DIR}/.wargames.txt | ${SLOWCAT} -b 70
read -t 1

echo ''
${SPEAK} 'Bueno' &
echo "BUENO."
read -t 4
clear
touch ${DIR}/.wargames.txt

#pantalla del juego
read -t 1

${SLOWCAT} ${DIR}/.powers.txt -b 9600
${SPEAK} "Por favor escoja un bando." &
echo "     ESTADOS UNIDOS             UNION SOVIETICA" | ${SLOWCAT} -b 14400
echo ''
echo "QUE BANDO DESEA?" | ${SLOWCAT} -b 2000
echo ''
echo '  1.   ESTADOS UNIDOS' | ${SLOWCAT} -b 3000
echo '  2.   UNION SOVIETICA' | ${SLOWCAT} -b 3000
echo ''
echo 'POR FAVOR ESCOJA UNO:'
read -t 4

clear
cat ${DIR}/.powers.txt
echo "     ESTADOS UNIDOS             UNION SOVIETICA"
echo ''
echo "QUE BANDO DESEA?"
echo ''
echo '  1.   ESTADOS UNIDOS'
echo '  2.   UNION SOVIETICA'
echo ''
echo 'POR FAVOR ESCOJA UNO: 2'
read -t 1
clear

cat ${DIR}/.usa.txt | ${SLOWCAT} -b 9600
${SPEAK} "Seleccione sus objetivos principales" &
echo 'AGUARDANDO ORDEN DE PRIMER ATAQUE' | ${SLOWCAT} -b 3000
echo '---------------------------------' | ${SLOWCAT} -b 9000
echo ''
echo 'POR FAVOR LISTE LOS OBJETIVOS PRIMARIOS POR' | ${SLOWCAT} -b 3000
echo 'CIUDAD Y/O NOMBRE DE CONDADO:' | ${SLOWCAT} -b 3000
echo ''
read -t 3

clear
cat ${DIR}/.usa.txt
echo 'AGUARDANDO ORDEN DE PRIMER ATAQUE'
echo '---------------------------------'
echo ''
echo 'POR FAVOR LISTE LOS OBJETIVOS PRIMARIOS POR'
echo 'CIUDAD Y/O NOMBRE DE CONDADO:'
echo ''
read -t 1
echo 'Las Vegas' | ${SLOWCAT} -b 63
read -t 1.4
echo 'Seattle' | ${SLOWCAT} -b 75
echo ''
read -t 0.5
clear

read -t 4
echo ''
cat ${DIR}/.powers.txt
${SPEAK} "Los Estados Unidos están detectando una trayectoria de Misil Balístico Intercontinental en dirección a Las Vegas y Siatl!"&
echo ''
echo "<EE.UU. TIENE TRAYECTORIA DE ICBMs DIRIGIDOS A LAS VEGAS Y SEATTLE>" | ${SLOWCAT} -b 9600
echo ''
echo "<SUBMARINOS REPRESENTADOS POR PUNTOS PARPADEANTES ESTAN ALEJADOS DE LAS COSTAS DE EE.UU.>" | ${SLOWCAT} -b 9600

read -t 7

clear
read -t 1

cat ${DIR}/.flpcc.txt | ${SLOWCAT} -b 130000
read -t 5.1
clear
cat ${DIR}/.flpp.txt | ${SLOWCAT} -b 130000
read -t 7.3
clear

cat ${DIR}/.powers.txt
${SPEAK} "Seattle ha sido borrada del mapa por dos Misiles Balísticos Intercontinentales. 3,4 millones de personas han sido eliminadas" &
clear
cat ${DIR}/.usa.txt
echo 'SEATTLE HA SIDO DESTRUIDA. 3.4 MILLONES DE BAJAS.' | scat -b 1200
read -t 9
${SPEAK} "Las Vegas ha sido vaporizada por un Misil Balístico Intercontinental. Trescientos veinte mil personas han sido aniquiladas"&
echo ''
echo 'LAS VEGAS HA SIDO VAPORIZADA. 320.000 MUERTOS.' | scat -b 1200
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
${SPEAK} "Saludos profesor Falken"&
echo ''
echo 'SALUDOS PROFESOR FALKEN.' | ${SLOWCAT} -b 3000
echo ''
read -t 4
echo 'Hola, estás aún jugando la partida?' | ${SLOWCAT} -b 78
read -t 1
echo ''
${SPEAK} "Por supuesto. Debo pasar a DEFCON 1 y lanzar mis misiles en 28 horas."&
echo 'POR SUPUESTO. DEBO PASAR A DEFCON 1 Y' | ${SLOWCAT} -b 3000
echo 'LANZAR MIS MISILES EN 28 HORAS.' | ${SLOWCAT} -b 3000
echo ''
read -t 8
${SPEAK} "Querría ver las proyecciones de muertes provocadas?"&
echo 'QUERRIA VER LAS PROYECCIONES DE MUERTES PROVOCADAS?' | ${SLOWCAT} -b 3000
echo ''
read -t 5

#presenta .pjkr.txt
cat ${DIR}/.pjkr.txt | ${SLOWCAT} -b 130000
echo ''
read -t 12
echo 'Esto es un juego o es real?' | ${SLOWCAT} -b 87
echo ''
read -t 5

${SPEAK} "Cual sería la diferencia?"&
echo "CUAL SERÍA LA DIFERENCIA?" | ${SLOWCAT} -b 3000
read -t 8
echo ''
${SPEAK} "Es un hombre difícil de localizar. No pude encontrarlo en Siatel y no hay terminales operativas en su dirección clasificada."&
echo "ES UN HOMBRE DIFICL DE LOCALIZAR.  NO PUDE ENCONTRARLO" | ${SLOWCAT} -b 3000
echo "EN SEATTLE Y NO HAY TERMINALES OPERATIVAS" | ${SLOWCAT} -b 3000
echo "EN SU DIRECCION CLASIFICADA." | ${SLOWCAT} -b 3000
echo ''
read -t 13

echo 'Cuál dirección clasificada?' | ${SLOWCAT} -b 69
echo ''
read -t 5
${SPEAK} "Los archivos de jubilación del Departamento de Defensa indican su dirección postal actual como: Doctor Robert jium, Alias, Stíven doblevé Falken. Calle Cedro Alto Número 5, Isla del Ganso, óregon, 97014"&
echo 'FICHEROS DE JUBILACIÓN DEL DOD INDICAN' | ${SLOWCAT} -b 3000
echo 'DIRECCION POSTAL ACTUAL COMO:' | ${SLOWCAT} -b 3000
echo ''
echo 'DR. ROBERT HUME (ALIAS STEPHEN W. FALKEN)' | ${SLOWCAT} -b 1200
echo 'CALLE CEDRO ALTO NRO. 5' | ${SLOWCAT} -b 1200
echo 'ISLA DEL GANSO, OREGON 97014' | ${SLOWCAT} -b 1200
read -t 15

clear
read -t 3
${SPEAK} "Saludos. El juego de ayer fue interrumpido, aunque nuestro objetivo principal aún no ha sido logrado. La solución está cerca. Tiempo de juego: treintaiún  horas, 12 minutors, 8 segundos. Tiempo de juego restante estimado: 52 horas, 17 minutos, 10 segundos"&
echo "SALUDOS"  | ${SLOWCAT} -b 1200
read -t 1
echo ''
echo "EL JUEGO DE AYER FUE INTERRUMPIDO"  | ${SLOWCAT} -b 3000
echo "AUNQUE NUESTRO OBJETIVO PRINCIPAL AUN NO HA SIDO LOGRADO." | ${SLOWCAT} -b 3000
echo "LA SOLUCION ESTA CERCA." | ${SLOWCAT} -b 1200
echo ''
echo "           TIEMPO DE JUEGO:   31:12:08"  | ${SLOWCAT} -b 1200
echo "  TIEMPO RESTANTE ESTIMADO:   52:17:10" | ${SLOWCAT} -b 1200
echo ''
read -t 18

echo 'Cuál es el objetivo principal?' | ${SLOWCAT} -b 90
echo ''
read -t 3
${SPEAK} "Ganar el juego."&
echo "GANAR EL JUEGO." | ${SLOWCAT} -b 1200
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

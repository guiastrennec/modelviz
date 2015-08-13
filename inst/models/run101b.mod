;; 1. Based on: run100
;; 2. Description: Rename comments for modelviz
;; x1. Author: coen

$PROBLEM PK model

$INPUT ID TIME MDV EVID DV AMT  SEX WT ETN
$DATA acop.csv IGNORE=@
$SUBROUTINES ADVAN2 TRANS2

$PK
ET=1
IF(ETN.EQ.3) ET=1.3
KA = THETA(1)
CL = THETA(2)*(WT/70)**THETA(6)* EXP(ETA(1))
V = THETA(3)*EXP(ETA(2))
SC=V


$THETA
(0, 2)  ; KA
(0, 3)  ; CL
(0, 10) ; V
(0.02)  ; RUVp
(1)     ; RUVa
(0,1)   ; CL-WT

$OMEGA
0.05    ; CL
0.2     ; V

$SIGMA
1 FIX

$ERROR
IPRED = F
IRES = DV-IPRED
W = IPRED*THETA(4) + THETA(5)
IF (W.EQ.0) W = 1
IWRES = IRES/W
Y= IPRED+W*ERR(1)

$EST METHOD=1 INTERACTION MAXEVAL=9999 SIG=3 PRINT=5 NOABORT POSTHOC MSFO=msf103
$COV PRINT=E
;$SIM (1234) NSUBPROBLEMS=1 ONLYSIM

$TABLE ID TIME DV MDV EVID IPRED IWRES ONEHEADER NOPRINT FILE=sdtab101b
$TABLE ID CL V ONEHEADER NOPRINT FILE=patab101b
$TABLE ID SEX ETN ONEHEADER NOPRINT FILE=catab101b
$TABLE ID WT ONEHEADER NOPRINT FILE=cotab101b
$TABLE ID CL V SEX ETN WT ONEHEADER NOPRINT FILE=mytab101b

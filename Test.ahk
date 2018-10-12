# use autohotkey program 




!K::
Gui, New
Gui, Add, Text,, Agent
Gui, Add, DropDownList, vAgentS, PDQD|PDTJ|PDSH|PPILS|PPILCE|PPILSZ|PPILSCM|PPILLYG|NTT|NPT|NDL|CHINATRAN|CHINATRAN(SHA)|APA|HUAFENG TRANSPORT AG|XENA|WHSE
Gui, Add, Checkbox, vAAM, AMS?
Gui, Add, Checkbox, vTelex, Telex?
Gui, Add, Checkbox, vDoor, Door Move?
Gui, Add, Checkbox, vSOC, SOC?
Gui, Add, Text,, Carrier
Gui, Add, DropDownList, vCarrier, APL|ONE|MSC|CMA|HAPAG|MAERSK LINE|OOCL|EVERGREEN|COSCO (HOUSTON)|YANG MING LINE (HOU)|ZIM-- HOUSTON|SM LINE (AP)
Gui, Add, Text,, Place of Discharge	
Gui, Add, Edit, vPOD
Gui, Add, Text,, Place of Delivery	
Gui, Add, Edit, vFOD
Gui, Add, Text,, ETD	
Gui, Add, Edit, vETD
Gui, Add, Button, Default gOK1, OK
Gui, Show
RETURN


OK1:
Gui, Submit
IF (CARRIER = "APL")
	{
	MBL = APLU
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEY
	}
	ELSE IF (CARRIER = "CMA")
	{
	MBL = CMDU
	}
	ELSE IF (CARRIER = "MAERSK LINE")
	{
	MBL = MAEU
	}
	ELSE IF (CARRIER = "COSCO (HOUSTON)")
	{
	MBL = COSU
	}
	ELSE IF (CARRIER = "MSC")
	{
	MBL = MEDUQ1
	}
	ELSE IF (CARRIER = "OOCL")
	{
	MBL = OOLU
	}
	ELSE IF (CARRIER = "SM LINE (AP")
	{
	MBL = SMLM
	}
	ELSE
	{
	MBL = 
	}

;agent variables
IF (AAM = 1)
{
	AMS = PPILQD
	}
	else
	{
	AMS = 
	}
if (AgentS = "PDQD")
{
	
	AGENTREF:= "PDQDJM"
	AGENT:= "PUDONG TRANS (QD)"
	loadport:= "57047"
	IF (CARRIER = "APL")
	{
	IF (loadport = "57017")
	{
	MBL = APLU719
	AGENTREF := "PDQDJMTJ"
	}
	else
	{
	MBL = APLU0639
	AGENTREF := "PDQDJMQJ"
	}}
	ELSE IF (CARRIER = "ONE")
	IF (loadport = "Xingang")
	{
	MBL = ONEYTS8NN0
	AGENTREF := "PDQDJMTJ"
	}
	else
	{
	MBL = ONEYTA8PK0
	AGENTREF := "PDQDJMON"
	}
	ELSE IF (CARRIER = "CMA")
	{
	AGENTREF := "PDQDJMCM"
	MBL = CMDUQDJY
	}
	ELSE IF (CARRIER = "MSC")
	{
	AGENTREF := "PDQDJMMS"
	MBL = MEDUQ1
	}
	ELSE IF (CARRIER = "MAERSK LINE")
	{
	AGENTREF := "PDQDJMMK"
	MBL = MAEU
	}
	ELSE IF (CARRIER = "COSCO (HOUSTON)")
	{
	AGENTREF := "PDQDJMCO"
	MBL = COSU619
	}
	ELSE IF (CARRIER = "MSC")
	{
	AGENTREF := "PDQDJMMS"
	MBL = MEDUQ
	}
	ELSE IF (CARRIER = "HAPAG")
	{
	AGENTREF := "PDQDJMQQ"
	MBL = HLCUTA118
	}
	ELSE IF (CARRIER = "ZIM-- HOUSTON")
	{
	AGENTREF := "PDQDJMBS"
	MBL = ZIMUQIN
	}
}
else if (AgentS = "PDTJ")
{
	
	AGENT:= "NEPTUNE (QD)"
	loadport:= "57017"
	IF (CARRIER = "APL")
	{
	MBL = APLU719
	AGENTREF := "PDTJJMAP"
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYTS8NN0
	AGENTREF := "PDTJJMON"
	}
	ELSE IF (CARRIER = "CMA")
	{
	AGENTREF := "PDTJJMCM"
	MBL = CMDUCNSE
	}
	ELSE IF (CARRIER = "MAERSK LINE")
	{
	AGENTREF := "PDTJJMMK"
	MBL = MAEU
	}
	ELSE IF (CARRIER = "COSCO (HOUSTON)")
	{
	AGENTREF := "PDTJJMCO"
	MBL = COSU619
	}
	ELSE IF (CARRIER = "MSC")
	{
	AGENTREF := "PDTJJMMS"
	MBL = MEDUQ1
	}
	ELSE IF (CARRIER = "HAPAG")
	{
	AGENTREF := "PDTJJMHP"
	MBL = HLCUTS
	}
	ELSE IF (CARRIER = "SM LINE (AP)")
	{
	AGENTREF := "PDTJJMSM"
	MBL = SMLMTSPM
	}
	ELSE
	{
	MBL = 
	AGENTREF = PDTJJ
	}
}
ELSE if (AgentS = "PDSH")
{
	IF (CARRIER = "APL")
	{
	MBL = APLU104
	}
	else If ( CARRIER = "ONE")
	{
	MBL = ONEY
	}
	else If ( CARRIER = "CMA")
	{
	MBL = CMDU
	}
	else If ( CARRIER = "HAPAG")
	{
	MBL = HLCUSHA1808
	}
	AGENT:= "PUDONG TRANS (SHA)"
	loadport:= "57035"
	AGENTREF:= "PDSHJM"
}

ELSE if (AgentS = "PPILS")
{
	IF (CARRIER = "APL")
	{
	AGENTREF:= "PPILSAPL"
	MBL = APLU104
	}
	else If ( CARRIER = "ONE")
	{
	AGENTREF:= "PPILONW"
	MBL = ONEYSH8ET
	}
	ELSE If ( CARRIER = "CMA")
	{
	AGENTREF:= "PPILSCM"
	MBL = CMDUCNSE
	}
	AGENT:= "PUDONG TRANS (SHA)"
	loadport:= "57035"
}
else if (AgentS = "PPILCE")
{
	AGENTREF:= "PPILCE000"
	AGENT:= "PUDONG TRANS (XM)"
	loadport:= "57069"
	IF (CARRIER = "APL")
	{
	MBL = APLU101
	}
	else If ( CARRIER = "ONE")
	{
	MBL = ONEYXMNU
	}
}	
else if (AgentS = "PPILSZ")
{
	AGENTREF:= "PPILSZX"
	AGENT:= "PUDONG TRANS (SZ)"
	loadport:= "57078"
	IF (CARRIER = "APL")
	{
	MBL = APLU7510
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYSZPUB
	}
	
}	
else if (AgentS = "PPILSCM")
{
	AGENTREF:= "PPILSCM"
	AGENT:= "PUDONG TRANS (SZ)"
	loadport:= "57078"
}	
else if (AgentS = "PPILLYG")
{
	AGENTREF:= "PPILLYG"
	AGENT:= "PUDONG TRANS (LYG)"
	loadport:= "57081"
	IF (CARRIER = "APL")
	{
	MBL = APLU7510
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYLY8P
	}
	
}	
else if (AgentS = "NTT")
{
	AGENTREF := "NTT18090"
	AGENT:= "NEPTUNE (QD)"
	loadport:= "57047"
	IF (CARRIER = "APL")
	{
	MBL = APLU660
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYTA8P
	}
	ELSE IF (CARRIER = "CMA")
	{
	MBL = CMDUCNSE
	}
	
	
}
else if (AgentS = "NPT")
{
	AGENTREF:= "NPT18090"
	AGENT:= "NEPTUNE (SHA)"
	loadport:= "57035"
	IF (CARRIER = "APL")
	{
	MBL = APLU104
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYSH8AC
	}
	ELSE IF (CARRIER = "CMA")
	{
	MBL = CMDUCNSE
	}
	
}
else if (AgentS = "NDL")
{
	AGENTREF:= "NDL1809000"
	AGENT:= "NEPTUNE (DALIAN)"
	loadport:= "57051"
	IF (CARRIER = "APL")
	{
	MBL = APLU104
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEYDL8CX
	}
	ELSE IF (CARRIER = "CMA")
	{
	MBL = CMDUCNSE
	}
}
else if (AgentS = "CHINATRAN")
{
	AGENTREF:= "SZ2F18090"
	AGENT:= " CHINATRANS"
	loadport:= "57078"
	
}
else if (AgentS = "XENA")
{
	AGENTREF:= "XENA1800"
	AGENT:= "XENA LOGISTICS CO LT"
	loadport:= "57017"
	
}
else if (AgentS = "CHINATRAN(SHA)")
{
	AGENTREF:= "SH1F18090"
	AGENT:= " CHINATRANS"
	loadport:= "57035"
}
else if (AgentS = "APA")
{
	AGENTREF:= "APA18090"
	AGENT:= "TRIUMPHORTUNE (SHANG"
	loadport:= "57035"
}
else if (AgentS = "HUAFENG TRANSPORT AG")
{
	AGENTREF:= "XMA18090"
	AGENT:= "HUAFENG TRANSPORT AG"
	loadport:= "57069"
}
else if (AgentS = "WHSE")
{
	AGENTREF:= "WHSE18090"
	AGENT:= "SHANDONG PAN-ASIA IN)"
	loadport:= "57047"
	IF (CARRIER = "APL")
	{
	MBL = APLU660
	}
	ELSE IF (CARRIER = "ONE")
	{
	MBL = ONEY
	}
	
}	
else 
{
	AGENTREF:= ""
	AGENT:= ""
	loadport:= ""
	
}
	
Winactivate, FMS 2
SENDEVENT, {F2}
SENDEVENT, {TAB 2}
SEND  %AGENTREF%
SENDEVENT, {TAB}
SEND %AGENT% 
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB}
SEND %CARRIER%
SENDEVENT, {ENTER}
SLEEP, 300
SENDEVENT, {ENTER}
SLEEP,300
SENDEVENT, {TAB 1}
SEND %MBL%
SENDEVENT, {TAB 13}
SEND %loadport% 
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SEND %POD%
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
IF (Door = 1)
{
	SENDEVENT, {TAB}
	SEND, %FOD%
	SENDEVENT, {TAB 7}
	SENDEVENT, {DOWN 4}
	SENDEVENT, {TAB}
	}
	else
	{
	IF (FOD = "")
	{
	SEND %POD%
	}
	ELSE
	{
	SEND, %FOD%
	}
	SENDEVENT, {ENTER 2}
	SENDEVENT, {TAB 8}
	SENDEVENT, {DOWN 3}
	SENDEVENT, {TAB}

}
IF (Telex = 1)
{
	SENDEVENT, {SPACE}
}

SENDEVENT, +{TAB 13}
SEND, %ETD%
SENDEVENT, {TAB 17}
keywait, insert ,d 
SENDEVENT, +{HOME}
SENDEVENT, ^{C}
SENDEVENT, {ESC}
SENDEVENT, {LEFT}
SENDEVENT, {ENTER}
SLEEP, 200
SENDEVENT, {ENTER}
SLEEP, 1200
SENDEVENT, {ENTER 2}
SENDEVENT, {F6}
SENDEVENT, {F2}
SENDEVENT, {TAB}
IF (AMS <> "") 
	SENDRAW, %AMS%
	else
	SENDRAW, %AGENTREF%
SENDEVENT, {TAB 15}
SENDEVENT, ^{V}
SENDEVENT, +{TAB 11}
SENDEVENT, {RIGHT}
KEYWAIT, TAB,D

IF (AMS <> "")	{
	SENDEVENT, ^{V}
	SENDEVENT, +{TAB}
	SENDEVENT, ^{C}
	SLEEP,200
	SENDEVENT {TAB 2}
	SENDEVENT, ^{V}
	SENDEVENT, +{TAB 1}
	SENDEVENT, ^{C}
	SENDEVENT, {BACKSPACE}
	SENDEVENT, {TAB 5}
	}
	else
	SENDEVENT, {TAB 5}
	
KEYWAIT, END,D

SENDEVENT, {ESC}
SENDEVENT, {LEFT}
SENDEVENT, {ENTER}
SLEEP, 500
SENDEVENT, {ENTER 2}
SENDEVENT, {ESC}
SENDEVENT, {F3}
SENDEVENT, {RIGHT}
IF (loadport = "57047")
{
	IF (SOC = 1)
	{
	SENDRAW, QDF^
	}
	ELSE
	{
	SENDRAW, QDF
	}
}
IF (loadport = "57035")
{
	IF (SOC = 1)
	{
	SENDRAW, SHF^
	}
	ELSE
	{
	SENDRAW, SHF
	}
}
IF (loadport = "57069")
{
	IF (SOC = 1)
	{
	SENDRAW, XMF^
	}
	ELSE
	{
	SENDRAW, XMF
	}
}
IF (loadport = "57078")
{
	IF (SOC = 1)
	{
	SENDRAW, YTF^
	}
	ELSE
	{
	SENDRAW, YTF
	}
}
IF (loadport = "57043")
{
	IF (SOC = 1)
	{
	SENDRAW, TJF^
	}
	ELSE
	{
	SENDRAW, TJF
	}
}
IF (loadport = "57017")
{
	IF (SOC = 1)
	{
	SENDRAW, TJF^
	}
	ELSE
	{
	SENDRAW, TJF
	}
}
IF (loadport = "57081")
{
	IF (SOC = 1)
	{
	SENDRAW, LGF^
	}
	ELSE
	{
	SENDRAW, LGF
	}
}
IF (loadport = "57051")
{
	IF (SOC = 1)
	{
	SENDRAW, DLF^
	}
	ELSE
	{
	SENDRAW, DLF
	}
}

SENDEVENT, {F12}
SLEEP, 800							
SENDEVENT, {ENTER}
RETURN	
	

RETURN		




!NUMPAD4::
SENDRAW, MASTER HALCO
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, ANPING CHAO
SENDEVENT, {ENTER 2}
SLEEP, 800
SENDEVENT, {TAB 6}
RETURN

!NUMPAD5::
SENDRAW, MASTER HALCO
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, ZHONGSHAN TRANSMARK
SENDEVENT, {ENTER 2}
SLEEP, 800
SENDEVENT, {TAB 7}
RETURN

!NUMPAD6::
SENDRAW, MALLORY TRANSPORTATION SYSTEM (IL) 
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, MALLORY ALEXANDER (ASIA PACIFIC)
SENDEVENT, {ENTER 2}
SLEEP, 800
SENDEVENT, {TAB 3}
RETURN

!NUMPAD7::
SENDRAW, CACTUS WELLHEAD, LLC 
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, SUZHOU DOUSON
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 4}
SENDRAW, LOGISTICS INT
SENDEVENT, {ENTER 2}
RETURN

!NUMPAD8::
SENDRAW, ACS USA
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, APEX CARGO SERVICE CO., LTD
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 6}
RETURN

!NUMPAD9::
SENDRAW, LOGISTICS PAN-AMERICA C
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 3}
SENDRAW, SHANGHAI PINGHAI INTERATIONAL LOGIST
SENDEVENT, {ENTER 2}
SENDEVENT, {TAB 6}
RETURN

^TAB::
SENDEVENT, {TAB 11}
RETURN

				
^UP::
Send +{TAB 37}
SENDINPUT, {RIGHT}
RETURN	

!s::
sendevent {f5}
sleep, 200
str := "%"
sendinput, %str%
return

;ACCOUNTING
!Numpad1::
sendevent, {f7}
sleep, 200
sendevent, {tab}
sendevent, {tab}
KeyWait, NumpadEnter,D
sendevent, {tab}
sendevent,{tab}
sendevent,{tab}
sendevent,{enter}
sleep,500
sendevent,{esc}
return

!z::
sendevent, {f7}
SENDEVENT, {TAB}
SENDEVENT, {f2}
SENDEVENT, {TAB 13}
SENDEVENT, {ENTER}
SENDEVENT, {DOWN}
SENDEVENT, {ENTER}
SENDRAW, HANDLING
SENDEVENT, {TAB 8}
SENDEVENT, {ENTER]
SENDEVENT, {DOWN}
SENDEVENT, {ENTER}
SENDRAW, MAIL
SENDEVENT, {TAB 8}
SENDEVENT, {ENTER]
SENDEVENT, {DOWN}
SENDEVENT, {ENTER}
SENDRAW, DDS
SENDEVENT, {TAB 8}
SENDEVENT, {ENTER]
SENDEVENT, {DOWN}
SENDEVENT, {ENTER}
SENDRAW, AMS
SENDEVENT, {TAB 4}
RETURN

!m::
SENDEVENT, {F6}
SENDEVENT, {F3}
SLEEP, 2300	
ControlFocus, Edit6, FMS 2
SENDRAW, MAGGIE
SENDEVENT, {TAB}
RETURN
!n::
SENDEVENT, {F3}
SENDEVENT, {TAB 10}
KEYWAIT, TAB,D
SENDEVENT, {TAB 4}
RETURN
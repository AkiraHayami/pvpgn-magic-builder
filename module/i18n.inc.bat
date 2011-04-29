@echo off
:: Gets localization strings depending user's system locale
:: Batch files encoding should be "OEM 866"
::  Language abbreveations: http://blogs.msdn.com/b/jeffreyzeng/archive/2008/04/30/language-code-and-abbreviation.aspx

set Key="HKEY_CURRENT_USER\Control Panel\International"
for /F "tokens=3" %%a in ('reg query %Key%  ^| find /i "sLang"') do set LANGUAGE=%%a




:: default is English
goto ENU

:switch_lang
:: switch to another language, if it's found
if [%LANGUAGE%]==[RUS] goto RUS
if [%LANGUAGE%]==[NLD] goto NLD
if [%LANGUAGE%]==[PLK] goto PLK
if [%LANGUAGE%]==[CSY] goto CSY
if [%LANGUAGE%]==[ESN] goto ESN
if [%LANGUAGE%]==[FRA] goto FRA
if [%LANGUAGE%]==[DEU] goto DEU
if [%LANGUAGE%]==[PTB] goto PTB
if [%LANGUAGE%]==[PTG] goto PTG
if [%LANGUAGE%]==[CHS] goto CHS
if [%LANGUAGE%]==[CHT] goto CHT

:echo_phrase
if not [%1]==[] echo !PHRASE_%1!


goto :eof

:: English
:ENU
	set MOTD_LANGUAGE=enUS

	set PHRASE_1_1= Visual Studio is not installed
	set PHRASE_1_2= Visual C++ environment was not found!
	set PHRASE_1_3=Do you want to download/update the latest PvPGN source from the SVN (in "source" directory)?
	set PHRASE_1_4=  PvPGN will update from the SVN
	set PHRASE_1_5=  PvPGN will not update
	set PHRASE_1_6=Select a PvPGN interface: 
	set PHRASE_1_7=   1) Console (defaut)
	set PHRASE_1_8=   2) GUI
	set PHRASE_1_9=Choose a number
	set PHRASE_1_10=  Set PvPGN interface as Console
	set PHRASE_1_11=  Set PvPGN interface as GUI (Graphical User Interface)
	set PHRASE_1_12= Select a database type: 
	set PHRASE_1_13=   1) Plain (default)
	set PHRASE_1_14=
	set PHRASE_1_15=  PvPGN will build without database support
	set PHRASE_1_16=CMake configuration failed
	
	set PHRASE_2_1=Available %2 versions (you can add your own into modules\include\%2):
	set PHRASE_2_2=   Choose a number
	set PHRASE_2_3=   Wrong choice... try again
	set PHRASE_2_4=   PvPGN will compile with support %2 v%3
	set PHRASE_2_5=Do you want to configure settings for %2 now?
	set PHRASE_2_6=    Connection host
	set PHRASE_2_7=    Connection user
	set PHRASE_2_8=    Connection password
	set PHRASE_2_9=    Database name
	set PHRASE_2_10=    Tables prefix (leave empty if it does not need)
	set PHRASE_2_11=%2 configuration saved
	
	set PHRASE_3_1=Checking for update ...
	set PHRASE_3_2="v%2" is your version
	set PHRASE_3_3="v%2" is remote version
	set PHRASE_3_4= You have the latest PvPGN Magic Builder
	set PHRASE_3_5=Remote version of PvPGN Magic Builder is not equals with yours. Do you want to automatically update to the new version?
	set PHRASE_3_6= Update was cancelled by user
	set PHRASE_3_7=Starting update ...
	set PHRASE_3_8= Downloading file "%2" ...
	set PHRASE_3_9=Update finished
	set PHRASE_3_10=Please, check file "version-history.txt" for more information about changes

	goto switch_lang

:: Russian
:RUS
	set MOTD_LANGUAGE=ruRU

	set PHRASE_1_1=  Visual Studio �� ��⠭������
	set PHRASE_1_2=  �।� Visual C++ �� �������
	set PHRASE_1_3=������/�������� ��᫥���� ��室���� PvPGN �� SVN (� ����� "source")?
	set PHRASE_1_4=   PvPGN �㤥� �������� �� SVN
	set PHRASE_1_5=   PvPGN �� �㤥� ��������
	set PHRASE_1_6=�롥�� ����䥩� ��� PvPGN: 
	set PHRASE_1_7=    1) ���᮫�� (��-㬮�砭��)
	set PHRASE_1_8=    2) ������
	set PHRASE_1_9=������ �����
	set PHRASE_1_10=   ��� PvPGN ��࠭ ���᮫�� ����䥩�
	set PHRASE_1_11=   ��� PvPGN ��࠭ ������ ����䥩�
	set PHRASE_1_12= �롥�� ⨯ ���� ������: 
	set PHRASE_1_13=    1) ����⮢� 䠩�� (��-㬮�砭��)
	set PHRASE_1_14=
	set PHRASE_1_15=   PvPGN �㤥� ᮡ࠭ ��� �����প� ���� ������
	set PHRASE_1_16=�� ���䨣��樨 CMake �������� �訡��

	set PHRASE_2_1=����㯭� ���ᨨ %2 (����� �������� ᢮� � modules\include\%2):
	set PHRASE_2_2=   ������ �����
	set PHRASE_2_3=   ���ࠢ���� �����... ���஡�� ��� ࠧ
	set PHRASE_2_4=   PvPGN �㤥� ᪮�����஢�� � �����প�� %2 v%3
	set PHRASE_2_5=�������� ᥩ�� ����ன�� ��� %2?
	set PHRASE_2_6=    ���� �ࢥ� (���)
	set PHRASE_2_7=    ���짮��⥫�
	set PHRASE_2_8=    ��஫�
	set PHRASE_2_9=    �������� ���� ������
	set PHRASE_2_10=    ��䨪� ��� ⠡��� (��⠢�� �����, �᫨ �� �㦭�):
	set PHRASE_2_11=���䨣���� %2 ��࠭���
	
	set PHRASE_3_1=�஢�ઠ ���������� ...
	set PHRASE_3_2="v%2" ��� �����
	set PHRASE_3_3="v%2" ��᫥���� �����
	set PHRASE_3_4= � ��� ��᫥���� PvPGN Magic Builder
	set PHRASE_3_5=����� PvPGN Magic Builder �� �ࢥ� �� ᮢ������ � ��襩. ���� ��⮬���᪨ ���������� �� ��᫥���� ���ᨨ?
	set PHRASE_3_6= ���������� �⬥���� ���짮��⥫��
	set PHRASE_3_7=��稭�� ���������� ...
	set PHRASE_3_8= ����㧪� 䠩�� "%2" ...
	set PHRASE_3_9=���������� �����襭�
	set PHRASE_3_10=���ଠ�� �� ���������� ����� ��ᬮ���� � 䠩�� "version-history.txt"
	
	goto echo_phrase
	
	
:: Dutch - translation by MusicDemon
:NLD
	set MOTD_LANGUAGE=nlNL

	set PHRASE_1_1= Visual Studio is niet geinstaleerd
	set PHRASE_1_2= Visual C++ omgeving was niet gevonden!
	set PHRASE_1_3=Download/update de laatste PvPGN broncode van de SVN (in de "source" directory)?
	set PHRASE_1_4=  PvPGN zal updaten van de SVN
	set PHRASE_1_5=  PvPGN zal niet worden geupdate
	set PHRASE_1_6=Selecteer PvPGN omgeving:
	set PHRASE_1_7=   1) Console (defaut)
	set PHRASE_1_8=   2) GUI
	set PHRASE_1_9=Kies een nummer
	set PHRASE_1_10=  Zet PvPGN omgeving als Console
	set PHRASE_1_11=  Set PvPGN interface as GUI (Graphical User Interface) Zet PvPGN omgeving als GUI ()
	set PHRASE_1_12= Selecteer een database type:
	set PHRASE_1_13=   1) Normaal (Text) (Standaard)
	set PHRASE_1_14=
	set PHRASE_1_15=  PvPGN zal gebouwen worden zonder database ondersteuning
	set PHRASE_1_16=CMake configuratie mislukt
   
	set PHRASE_2_1=Beschikbare %2 versies (u kunt uw eigen in modules\includes\%2):
	set PHRASE_2_2=   Kies een nummer
	set PHRASE_2_3=   Verkeerde keuze... Probeer het opnieuw
	set PHRASE_2_4=   PvPGN word gebouwd met %2 ondersteuning op v%3
	set PHRASE_2_5=Wilt u %2 nu configureren?
	set PHRASE_2_6=    Connectie host
	set PHRASE_2_7=    Connectie gebruiker
	set PHRASE_2_8=    Connectie wachtwoord
	set PHRASE_2_9=    Database naam
	set PHRASE_2_10=    Tafel voorvoegsel (Table prefix) (Laat leeg als u dit niet gebruikt)
	set PHRASE_2_11=%2 configuratie opgeslagen
   
	set PHRASE_3_1=Checken voor updates...
	set PHRASE_3_2=U hebt versie "v%2"
	set PHRASE_3_3=Nieuwe versie is "v%2"
	set PHRASE_3_4= U hebt de laatste versie van PvPGN Magic Builder
	set PHRASE_3_5=Externe versie van PvPGN Magic Builder is niet gelijk aan met de jouwe. Wilt u automatisch bijgewerkt naar de nieuwe versi
	set PHRASE_3_6= Update was geannuleerd door gebruiker
	set PHRASE_3_7=Starten van update...
	set PHRASE_3_8= Downloaden van bestand "%2"...
	set PHRASE_3_9=Update voltooid
	set PHRASE_3_10=Controleer het bestand "version-history.txt" voor meer informatie over wijzigingen
   
	goto echo_phrase   

:: Polish
:PLK
	set MOTD_LANGUAGE=plPL
	goto echo_phrase   
	
:: Czech
:CSY
	set MOTD_LANGUAGE=csCZ
	goto echo_phrase   
	
:: Spanish
:ESN
	set MOTD_LANGUAGE=esES
	goto echo_phrase   
	
:: French
:FRA
	set MOTD_LANGUAGE=frFR
	goto echo_phrase   
	
:: German
:DEU
	set MOTD_LANGUAGE=deDE
	goto echo_phrase   
	
:: Chinese - China
:CHS
	set MOTD_LANGUAGE=zhCN
	goto echo_phrase   
	
:: Chinese - Taiwan
:CHT
	set MOTD_LANGUAGE=zhTW
	goto echo_phrase   
	
:: Portuguese - Brazil
:PTB
	set MOTD_LANGUAGE=ptBR
	goto echo_phrase   
	
:: Portuguese - Portugal
:PTG
	goto PTB


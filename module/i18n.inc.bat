@echo off
:: Gets localization strings depending user's system locale
:: Batch files encoding should be "OEM 866"
::  Windows Language abbreveations - http://msdn.microsoft.com/en-us/library/ms903928.aspx
::	MOTD Language identifiers - http://www.i18nguy.com/unicode/language-identifiers.html

if [%Key%]==[] (
	set Key="HKEY_CURRENT_USER\Control Panel\International"
	for /F "tokens=3" %%a in ('reg query %Key%  ^| find /i "sLang"') do set LANGUAGE=%%a
)


:: default is English
goto ENU

:switch_lang
:: switch to another language, if found
if [%LANGUAGE%]==[PLK] goto PLK
if [%LANGUAGE%]==[CSY] goto CSY
if [%LANGUAGE%]==[FRA] goto FRA
:: Russian
if [%LANGUAGE%]==[RUS] goto RUS
if [%LANGUAGE%]==[UZB] goto RUS
if [%LANGUAGE%]==[KKZ] goto RUS
if [%LANGUAGE%]==[TTT] goto RUS
if [%LANGUAGE%]==[UKR] goto RUS
:: Dutch
if [%LANGUAGE%]==[NLD] goto NLD
if [%LANGUAGE%]==[NLB] goto NLD
:: German
if [%LANGUAGE%]==[DEU] goto DEU
if [%LANGUAGE%]==[DEA] goto DEU
if [%LANGUAGE%]==[DEC] goto DEU
if [%LANGUAGE%]==[DEL] goto DEU
if [%LANGUAGE%]==[DES] goto DEU
:: Serbian
if [%LANGUAGE%]==[SRL] goto SRL
if [%LANGUAGE%]==[SRB] goto SRL
if [%LANGUAGE%]==[HRV] goto SRL
:: Chinese
if [%LANGUAGE%]==[CHS] goto CHS
if [%LANGUAGE%]==[CHT] goto CHT
if [%LANGUAGE%]==[ZHH] goto CHS
if [%LANGUAGE%]==[ZHM] goto CHS
if [%LANGUAGE%]==[ZHI] goto CHS
:: Japanese
if [%LANGUAGE%]==[JPN] goto JPN
:: Portuguese
if [%LANGUAGE%]==[PTB] goto PTB
if [%LANGUAGE%]==[PTG] goto PTB
:: Bulgarian
if [%LANGUAGE%]==[BGR] goto BGR
:: Swedish
if [%LANGUAGE%]==[SVF] goto SVF
if [%LANGUAGE%]==[SVE] goto SVF
:: Spanish
if [%LANGUAGE%]==[ESN] goto ESN
if [%LANGUAGE%]==[ESS] goto ESN
if [%LANGUAGE%]==[ESB] goto ESN
if [%LANGUAGE%]==[ESL] goto ESN
if [%LANGUAGE%]==[ESO] goto ESN
if [%LANGUAGE%]==[ESC] goto ESN
if [%LANGUAGE%]==[ESD] goto ESN
if [%LANGUAGE%]==[ESF] goto ESN
if [%LANGUAGE%]==[ESE] goto ESN
if [%LANGUAGE%]==[ESG] goto ESN
if [%LANGUAGE%]==[ESH] goto ESN
if [%LANGUAGE%]==[ESM] goto ESN
if [%LANGUAGE%]==[ESI] goto ESN
if [%LANGUAGE%]==[ESA] goto ESN
if [%LANGUAGE%]==[ESZ] goto ESN
if [%LANGUAGE%]==[ESR] goto ESN
if [%LANGUAGE%]==[ESU] goto ESN
if [%LANGUAGE%]==[ESP] goto ESN
if [%LANGUAGE%]==[ESY] goto ESN
if [%LANGUAGE%]==[ESV] goto ESN


:: print phrase and exit file
:echo_phrase
if not [%1]==[] echo !PHRASE_%1!

goto :eof


:: English
:ENU
	set MOTD_LANGUAGE=enUS

	set PHRASE_1_0=  Visual Studio is not installed
	set PHRASE_1_1=Select a Visual Studio version to build PvPGN:
	set PHRASE_1_2=%2 is selected as a build environment
	set PHRASE_1_3=Do you want to download/replace the latest PvPGN source from the GIT (into %2 directory)?
	set PHRASE_1_4=   PvPGN source code will be replaced from the GIT
	set PHRASE_1_5=   PvPGN source code will not be updated
	set PHRASE_1_6=Select PvPGN interface: 
	set PHRASE_1_7=   1) Console (defaut)
	set PHRASE_1_8=   2) GUI
	set PHRASE_1_9=Select a number
	set PHRASE_1_10=   Set PvPGN interface as Console
	set PHRASE_1_11=   Set PvPGN interface as GUI (Graphical User Interface)
	set PHRASE_1_12=Select a database type: 
	set PHRASE_1_13=   1) Plain / CDB (default)
	set PHRASE_1_14=
	set PHRASE_1_15=   PvPGN will be built without database support
	set PHRASE_1_16=CMake configuration failed

	set PHRASE_2_1=Available %2 versions (you can add your own into %3):
	set PHRASE_2_2=   Enter a number
	set PHRASE_2_3=   Wrong number... try again
	set PHRASE_2_4=   PvPGN will be compiled with %2 v%3 support
	set PHRASE_2_5=Do you want to configure settings for %2 now (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    Connection host
	set PHRASE_2_7=    Connection user
	set PHRASE_2_8=    Connection password
	set PHRASE_2_9=    Database name
	set PHRASE_2_10=    Tables prefix (default is %2)
	set PHRASE_2_11=%2 configuration is saved to %2.conf.bat

	set PHRASE_3_1=Checking for update ...
	set PHRASE_3_2="v%2" is your version
	set PHRASE_3_3="v%2" is remote version
	set PHRASE_3_4= You have the latest PvPGN Magic Builder
	set PHRASE_3_5=Remote version of PvPGN Magic Builder doesn't equal yours. Do you want to update to the latest version automatically?
	set PHRASE_3_6= Update was cancelled by user
	set PHRASE_3_6_1= There is no connection with update server
	set PHRASE_3_7=Starting update ...
	set PHRASE_3_8= Downloading file %2 ...
	set PHRASE_3_9=Update is finished
	set PHRASE_3_10=Please, check file %2 for more information about changes
	
	set PHRASE_4_1=Enable Lua scripting support?
	set PHRASE_4_2=   PvPGN will be compiled with Lua
	set PHRASE_4_3=   PvPGN will be compiled without Lua
	
	set PHRASE_9_1=Select your D2GS version:
	set PHRASE_9_2=Setup admin password for Telnet connection (listening on port 8888), will be saved in d2gs.reg
	set PHRASE_9_3=Password hash will be saved in %2
	set PHRASE_9_4=Do you want to download essential original MPQ files? (size 1GB)
	set PHRASE_9_9=^^!^^!^^! To complete setup D2GS edit d2gs.reg and run install.bat ^^!^^!^^!

	goto switch_lang

:: Russian
:RUS
	set MOTD_LANGUAGE=ruRU

	set PHRASE_1_0=  Visual Studio �� ��⠭������
	set PHRASE_1_1=�롥�� ����� Visual Studio ��� �������樨 PvPGN:
	set PHRASE_1_2=%2 ��࠭� � ����⢥ ���������
	set PHRASE_1_3=������/�������� ��᫥���� ��室���� PvPGN �� GIT (� ����� %2)?
	set PHRASE_1_4=   PvPGN �㤥� �������� �� GIT
	set PHRASE_1_5=   PvPGN �� �㤥� ��������
	set PHRASE_1_6=�롥�� ����䥩� ��� PvPGN: 
	set PHRASE_1_7=   1) ���᮫�� (��-㬮�砭��)
	set PHRASE_1_8=   2) ������
	set PHRASE_1_9=������ �����
	set PHRASE_1_10=   ��� PvPGN ��࠭ ���᮫�� ����䥩�
	set PHRASE_1_11=   ��� PvPGN ��࠭ ������ ����䥩�
	set PHRASE_1_12=�롥�� ⨯ ���� ������: 
	set PHRASE_1_13=   1) ����⮢� 䠩�� / CDB (��-㬮�砭��)
	set PHRASE_1_14=
	set PHRASE_1_15=   PvPGN �㤥� ᮡ࠭ ��� �����প� ���� ������
	set PHRASE_1_16=�� ���䨣��樨 CMake �������� �訡��

	set PHRASE_2_1=����㯭� ���ᨨ %2 (����� �������� ᢮� � %3):
	set PHRASE_2_2=   ������ �����
	set PHRASE_2_3=   ���ࠢ���� �����... ���஡�� ��� ࠧ
	set PHRASE_2_4=   PvPGN �㤥� ᪮�����஢�� � �����প�� %2 v%3
	set PHRASE_2_5=�������� ᥩ�� ����ன�� ��� %2 (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    ���� �ࢥ� (���)
	set PHRASE_2_7=    ���짮��⥫�
	set PHRASE_2_8=    ��஫�
	set PHRASE_2_9=    �������� ���� ������
	set PHRASE_2_10=    ��䨪� ��� ⠡��� (��-㬮�砭�� %2):
	set PHRASE_2_11=���䨣���� %2 ��࠭��� � %2.conf.bat

	set PHRASE_3_1=�஢�ઠ ���������� ...
	set PHRASE_3_2="v%2" ��� �����
	set PHRASE_3_3="v%2" ��᫥���� �����
	set PHRASE_3_4= � ��� ��᫥���� PvPGN Magic Builder
	set PHRASE_3_5=����� PvPGN Magic Builder �� �ࢥ� �� ᮢ������ � ��襩. ���� ��⮬���᪨ ���������� �� ��᫥���� ���ᨨ?
	set PHRASE_3_6= ���������� �⬥���� ���짮��⥫��
	set PHRASE_3_6_1= ��� ᮥ������� � �ࢥ஬ ����������
	set PHRASE_3_7=��稭�� ���������� ...
	set PHRASE_3_8= ����㧪� 䠩�� %2 ...
	set PHRASE_3_9=���������� �����襭�
	set PHRASE_3_10=���ଠ�� �� ���������� ����� ��ᬮ���� � 䠩�� %2
	
	set PHRASE_4_1=������� �����প� Lua �ਯ⮢?
	set PHRASE_4_2=   PvPGN �㤥� ᪮�����஢�� � Lua
	set PHRASE_4_3=   PvPGN �㤥� ᪮�����஢�� ��� Lua

	set PHRASE_9_1=�롥�� ����� D2GS:
	set PHRASE_9_2=��⠭���� ��஫� ������ ��� Telnet ᮥ������� (ࠡ�⠥� �� ����� 8888), �㤥� ��࠭�� � d2gs.reg
	set PHRASE_9_3=��� ��஫� �㤥� ��࠭�� � 䠩�� %2
	set PHRASE_9_4=�� ��� ����㧨�� MPQ 䠩��, ����室��� ��� ࠡ��� �ࢥ�? (ࠧ��� 1��)
	set PHRASE_9_9=^^!^^!^^! ��� �����襭�� ��⠭���� D2GS ������� d2gs.reg � ������� install.bat ^^!^^!^^!

	goto echo_phrase

:: Dutch - translation by MusicDemon
:NLD
	set MOTD_LANGUAGE=nlNL

	set PHRASE_1_0= Visual Studio is niet geinstaleerd
	set PHRASE_1_1=Selecteer een Visual Studio versie om PvPGN te bouwen:
    set PHRASE_1_2=%2 is gekozen als bouw omgeving
	set PHRASE_1_3=Download/replace de laatste PvPGN broncode van de GIT (in de %2 directory)?
	set PHRASE_1_4=   PvPGN zal updaten van de GIT
	set PHRASE_1_5=   PvPGN zal niet worden geupdate
	set PHRASE_1_6=Selecteer PvPGN omgeving:
	set PHRASE_1_7=   1) Console (defaut)
	set PHRASE_1_8=   2) GUI
	set PHRASE_1_9=Kies een nummer
	set PHRASE_1_10=  Zet PvPGN omgeving als Console
	set PHRASE_1_11=  Set PvPGN interface as GUI (Graphical User Interface) Zet PvPGN omgeving als GUI ()
	set PHRASE_1_12=Selecteer een database type:
	set PHRASE_1_13=   1) Normaal (Text / CDB) (Standaard)
	set PHRASE_1_14=
	set PHRASE_1_15=  PvPGN zal gebouwen worden zonder database ondersteuning
	set PHRASE_1_16=CMake configuratie mislukt

	set PHRASE_2_1=Beschikbare %2 versies (u kunt uw eigen in %3):
	set PHRASE_2_2=   Kies een nummer
	set PHRASE_2_3=   Verkeerde keuze... Probeer het opnieuw
	set PHRASE_2_4=   PvPGN word gebouwd met %2 ondersteuning op v%3
	set PHRASE_2_5=Wilt u %2 nu configureren (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    Connectie host
	set PHRASE_2_7=    Connectie gebruiker
	set PHRASE_2_8=    Connectie wachtwoord
	set PHRASE_2_9=    Database naam
	set PHRASE_2_10=    Tafel voorvoegsel (Table prefix, standaard is %2)
	set PHRASE_2_11=%2 configuratie opgeslagen (%2.conf.bat)

	set PHRASE_3_1=Checken voor updates...
	set PHRASE_3_2=U hebt versie "v%2"
	set PHRASE_3_3=Nieuwe versie is "v%2"
	set PHRASE_3_4= U hebt de laatste versie van PvPGN Magic Builder
	set PHRASE_3_5=Externe versie van PvPGN Magic Builder is niet gelijk aan met de jouwe. Wilt u automatisch bijgewerkt naar de nieuwe versi
	set PHRASE_3_6= Update was geannuleerd door gebruiker
	set PHRASE_3_6_1= Kan geen connectie maken met update server
	set PHRASE_3_7=Starten van update...
	set PHRASE_3_8= Downloaden van bestand %2...
	set PHRASE_3_9=Update voltooid
	set PHRASE_3_10=Controleer het bestand %2 voor meer informatie over wijzigingen
	
	set PHRASE_9_1=Selecteer jou D2GS versie:
	set PHRASE_9_2=Geef een administrator wachtwoord op voor de Telnet connectie (Luisterend op poort 8888), will be saved in d2gs.reg
	set PHRASE_9_3=Wachtwoord wordt opgeslagen in %2
	set PHRASE_9_4=Wilt u de vereiste originele MPQ-bestanden downloaden? (Grote: 1GB)
	set PHRASE_9_9=^^!^^!^^! Pas d2gs.reg aan en start install.bat om de setup te voltooien ^^!^^!^^!

	goto echo_phrase
	
:: Polish - translation by Grzegorz Nakonieczny (Naki)
:PLK
	set MOTD_LANGUAGE=plPL

	set PHRASE_1_0=  Program Visual Studio nie jest zainstalowany na komputerze
	set PHRASE_1_1=Wybierz wersje programu Visual Studio przy uzyciu ktorej chcesz skompilowac PvPGN:
	set PHRASE_1_2=Wybrano %2 jako srodowisko programistyczne
	set PHRASE_1_3=Czy chcesz pobrac/zastapic PvPGN do najnowszej wersji z repozytorium GIT (w katalogu %2)?
	set PHRASE_1_4=   PvPGN zostanie zaktualizowany do najnowszej wersji z repozytorium GIT
	set PHRASE_1_5=   PvPGN nie zostanie zaktualizowany
	set PHRASE_1_6=Wybierz interfejs PvPGN jaki chcesz uzywac: 
	set PHRASE_1_7=   1) Konsola - Wiersz polecen (domyslnie)
	set PHRASE_1_8=   2) GUI - Interfejs graficzny
	set PHRASE_1_9=Podaj liczbe
	set PHRASE_1_10=   Wybrany interfejs: Wiersz polecen
	set PHRASE_1_11=   Wybrany interfejs: Interfejs graficzny
	set PHRASE_1_12=Wybierz typ bazy danych: 
	set PHRASE_1_13=   1) Pliki / CDB (domyslnie)
	set PHRASE_1_14=
	set PHRASE_1_15=   PvPGN zostanie skompilowany bez obslugi bazy danych
	set PHRASE_1_16=Blad podczas konfiguracji CMake

	set PHRASE_2_1=Dostepne wersje %2 (mozesz dodac wlasne w katalogu %3):
	set PHRASE_2_2=   Podaj liczbe
	set PHRASE_2_3=   Bledny wybor... sprobuj ponownie
	set PHRASE_2_4=   PvPGN zostanie skompilowany z obsluga %2 v%3
	set PHRASE_2_5=Czy chcesz teraz dokonac konfiguracji %2 (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    Adres serwera bazy danych
	set PHRASE_2_7=    Nazwa uzytkownika bazy danych
	set PHRASE_2_8=    Haslo do bazy danych
	set PHRASE_2_9=    Nazwa bazy danych
	set PHRASE_2_10=    Prefiks tabel w bazie danych (domyslny %2)
	set PHRASE_2_11=Konfiguracja %2 zapisana w %2.conf.bat

	set PHRASE_3_1=Sprawdzanie aktualizacji ...
	set PHRASE_3_2=Twoja wersja "v%2"
	set PHRASE_3_3=Aktualna wersja "v%2"
	set PHRASE_3_4= Posiadasz najnowsza wersje PvPGN Magic Builder
	set PHRASE_3_5=Aktualna wersja PvPGN Magic Builder jest inna niz Twoja, czy chcesz dokonac aktualizacji?
	set PHRASE_3_6= Aktualizacja zostala anulowana przez uzytkownika
	set PHRASE_3_6_1= Brak polaczenia z serwerem
	set PHRASE_3_7=Trwa aktualizacja ...
	set PHRASE_3_8= Pobieranie pliku %2 ...
	set PHRASE_3_9=Aktualizacja zakonczona
	set PHRASE_3_10=Aby dowiedziec sie wiecej o wprowadzonych zmianach sprawdz plik %2

	set PHRASE_9_1=Wybierz wersje serwera D2GS:
	set PHRASE_9_2=Ustalcie haslo administratora wymagane do polaczenia z konsola Telnet (port 8888), will be saved in d2gs.reg
	set PHRASE_9_3=Haslo zostanie zapisane w pliku %2
	set PHRASE_9_4=Czy chcesz pobrac oryginalne pliki MPQ z internetu ? (rozmiar 1GB)
	set PHRASE_9_9=^^!^^!^^! Aby zakonczyc instalacje wyedytuj plik d2gs.reg i uruchom install.bat ^^!^^!^^!
   
	goto echo_phrase
	
:: German - translation by Natalya Lyovkina (SKY777)
:DEU
	set MOTD_LANGUAGE=deDE
	
	set PHRASE_1_0=  Visual Studio ist nicht installiert
	set PHRASE_1_1=Wahlen Sie eine Visual Studio-Version fur die PvPGN-Compilierung:
	set PHRASE_1_2=%2 wurde als Compiler gewahlt
	set PHRASE_1_3=Mochten Sie die letzten PvPGN-Programmcoden aus GIT (im %2-Ordner) herunterladen / ersetzen?
	set PHRASE_1_4=   PvPGN wird aus GIT aktualisiert werden
	set PHRASE_1_5=   PvPGN wird nicht aktualisieret werden
	set PHRASE_1_6=Wahlen Sie eine Schnittstelle fur PvPGN: 
	set PHRASE_1_7=   1) Konsolenschnittstelle (Standardeinstellung)
	set PHRASE_1_8=   2) Fensterschnittstelle
	set PHRASE_1_9=Geben Sie eine Nummer ein
	set PHRASE_1_10=   Fur PvPGN wurde die Konsolenschnittstelle gewahlt
	set PHRASE_1_11=   Fur PvPGN wurde die Fensterschnittstelle gewahlt
	set PHRASE_1_12=Wahlen Sie den Datenbanktyp: 
	set PHRASE_1_13=   1) Textdateien / CDB (Standardeinstellung)
	set PHRASE_1_14=
	set PHRASE_1_15=   PvPGN wird ohne Datenbankunterstutzung gewahlt
	set PHRASE_1_16=Bei der CMake-Konfiguration entstanden die Fehler 
	
	set PHRASE_2_1=Zugangliche %2 -Versionen (man kann seine Version in den %3 hinzufugen):
	set PHRASE_2_2=   Geben Sie eine Nummer ein
	set PHRASE_2_3=   Falsche Nummer... versuchen Sie noch einmal 
	set PHRASE_2_4=   PvPGN wird mit der %2 v%3-Unterstutzung kompiliert
	set PHRASE_2_5=Mochten Sie jetzt die %2-Einstellungen andern (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    Serveradresse (Host)
	set PHRASE_2_7=    Benutzer
	set PHRASE_2_8=    Passwort
	set PHRASE_2_9=    Datenbankname
	set PHRASE_2_10=    Vorsatzkode fur Tabellen (Standardeinstellung %2)
	set PHRASE_2_11=Die %2 -Konfiguration wurde gespeichert in %2.conf.bat

	set PHRASE_3_1=Update-Prufung ...
	set PHRASE_3_2=Ihre "v%2"-Version 
	set PHRASE_3_3=Letzte "v%2"-Version
	set PHRASE_3_4=Sie haben ein letzes PvPGN Magic Builder
	set PHRASE_3_5=Die  PvPGN Magic Builder-Version im Server stimmt mit Ihrer Version nicht uberein. Mochten Sie automatisch bis zur letzten Version aktualisieren?
	set PHRASE_3_6=Das Update wurde vom Benutzer zuruckgesetzt 
	set PHRASE_3_6_1= Keine Verbindung mit dem Update-Server
	set PHRASE_3_7=Das Update start ...
	set PHRASE_3_8= Herunterladen der %2-Datei ...
	set PHRASE_3_9=Das Update wurde beendet 
	set PHRASE_3_10=Die Information uber die Anderungen kann man im %2-Datei sehen
	
	set PHRASE_9_1=Wahlen Sie Ihre D2GS Version:
	set PHRASE_9_2=Einfuhren Sie das Admin-Passwort fur Telnet-Verbindungen (auf Port 8888), will be saved in d2gs.reg
	set PHRASE_9_3=Passwort-Hash wird in der Datei %2 gespeichert
	set PHRASE_9_4=Wollen Sie wesentliche ursprungliche MPQ-Dateien herunterladen? (1GB)
	set PHRASE_9_9=^^!^^!^^! Andern Sie d2gs.reg und schliesswn Sie install.bat ab ^^!^^!^^!

	goto echo_phrase

:: Serbian - translation by kingW3
:SRL
	set MOTD_LANGUAGE=enUS

	set PHRASE_1_0=  Visual Studio nije instaliran
	set PHRASE_1_1=Izaberi kojom verzijom Visual Studia ces da Napravis pvpgn:
	set PHRASE_1_2=%2 izabran kao kompajler
	set PHRASE_1_3=da li zelis da downloadujes/updejtujes zadnji pvpgn iz GIT-a (u %2 folder)?
	set PHRASE_1_4=   PvPGN ce updejtovati iz GIT-a
	set PHRASE_1_5=   PvPGN nece updejtovati iz GIT-a
	set PHRASE_1_6=Izaberi PvPGN izgled: 
	set PHRASE_1_7=   1) Consola (defaut)
	set PHRASE_1_8=   2) GUI(Graficki prikaz)
	set PHRASE_1_9=Izaberi broj
	set PHRASE_1_10=   izaberi PvPGN izgled as Console
	set PHRASE_1_11=   izaveri PvPGN izgled as GUI (Graficki izgled)
	set PHRASE_1_12=izaberi vrstu baze podataka: 
	set PHRASE_1_13=   1) Plain / CDB (default)
	set PHRASE_1_14=   2) MySql
	set PHRASE_1_15=   PvPGN ce praviti bez baze podataka
	set PHRASE_1_16=CMake konfigurisanje nije uspelo

	set PHRASE_2_1=Dostupne %2 verzije (mozes dodati svoju verziju %3):
	set PHRASE_2_2=   izaberi broj
	set PHRASE_2_3=   lose izabrano... probajte opet
	set PHRASE_2_4=   PvPGN ce compilirati pomocu %2 v%3
	set PHRASE_2_5=dali zelite da konfigurisete %2 now (bnetd.conf ^> storage_path)?
	set PHRASE_2_6=    host baze podataka
	set PHRASE_2_7=    korisnik baze podataka
	set PHRASE_2_8=    pasvord korisnika
	set PHRASE_2_9=    ime baze podataka
	set PHRASE_2_10=    prefix tabele (default is %2)
	set PHRASE_2_11=%2 konfiguracija sacuvana u %2.conf.bat

	set PHRASE_3_1=Gledanje za updejt ...
	set PHRASE_3_2="v%2" je tvoja verzija
	set PHRASE_3_3="v%2" je zadnja verzija
	set PHRASE_3_4= Imas zadnju verziju PvPGN Magic Builder-a
	set PHRASE_3_5=Verzija PvPGN Magic Builder nije jednaka tvojoj. Dali zelite da automatski updejtuje na zadnju verziju?
	set PHRASE_3_6= Korisnik je zaustavio Updejt
	set PHRASE_3_6_1= Can not connect to Updejt server
	set PHRASE_3_7=pocinje Updejt ...
	set PHRASE_3_8= skidanje fajlova %2 ...
	set PHRASE_3_9=Updejt zavrsen
	set PHRASE_3_10=Molimo vas, proverite fajl %2 za vise informacija oko promena

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

:: Chinese - China
:CHS
	set MOTD_LANGUAGE=zhCN
	goto echo_phrase
	
:: Chinese - Taiwan
:CHT
	set MOTD_LANGUAGE=zhTW
	goto echo_phrase
	
:: Japanese
:JPN
	set MOTD_LANGUAGE=jpJA
	goto echo_phrase

:: Portuguese
:PTB
	set MOTD_LANGUAGE=ptBR
	goto echo_phrase

:: Bulgarian
:BGR
	set MOTD_LANGUAGE=bgBG
	goto echo_phrase

:: Swedish
:SVF
	set MOTD_LANGUAGE=svSE
	goto echo_phrase

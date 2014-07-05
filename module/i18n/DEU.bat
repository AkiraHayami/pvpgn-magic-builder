@echo off
:: -----------------------------------------------
:: Language: 	German
:: Author:		Natalya Lyovkina (SKY777)
:: -----------------------------------------------
:: File encoding: ANSI


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

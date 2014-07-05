@echo off
:: -----------------------------------------------
:: Language: 	Polish
:: Author:		Grzegorz Nakonieczny (Naki)
:: -----------------------------------------------
:: File encoding: ANSI


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

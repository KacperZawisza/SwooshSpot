![screenshot](https://github.com/KacperZawisza/SwooshSpot/blob/main/Assets/Images/Screenshot1.png)

# SwooshSpot

SwooshSpot to projekt sklepu internetowego stworzony jako praca całoroczna w technikum informatycznym. Temat został przydzielony w drodze losowania na początku roku szkolnego.

Aplikacja emuluje działanie platformy e-commerce specjalizującej się w sprzedaży obuwia i produktów streetwearowych. Podczas projektowania postawiłem na prostotę połączoną z funkcjonalnością oraz przejrzysty interfejs użytkownika. Frontend został zaprojektowany w minimalistycznym stylu, a główny nacisk położono na implementację mechanizmów backendowych i logiki biznesowej sklepu.

Projekt został napisany od podstaw bez wykorzystania systemów CMS oraz frameworków. Większość funkcjonalności została zaimplementowana samodzielnie, co pozwoliło mi lepiej zrozumieć sposób działania aplikacji internetowych oraz integrację warstwy frontendowej z bazą danych.

## Technologie

* PHP
* MySQL
* JavaScript
* HTML
* CSS

## Funkcjonalności użytkownika

* Rejestracja nowych użytkowników.
* Logowanie i autoryzacja użytkowników.
* Obsługa sesji użytkownika.
* Wyświetlanie produktów pobieranych bezpośrednio z bazy danych.
* Szczegółowy widok produktów.
* Możliwość dodawania wielu produktów do koszyka.
* Indywidualny koszyk przypisany do zalogowanego użytkownika.
* Dynamiczny slider promocyjny na stronie głównej.
* Funkcja powiększania zdjęć produktów (lupa) umożliwiająca dokładniejsze obejrzenie produktu.

## Funkcjonalności administratora

Panel administracyjny został zaimplementowany z wykorzystaniem wzorca projektowego MVC.

Administrator posiada możliwość:

* przeglądania danych zapisanych w bazie danych,
* dodawania nowych produktów,
* edytowania istniejących produktów,
* usuwania produktów,
* zarządzania rekordami znajdującymi się w bazie danych.

Panel został stworzony jako uproszczony system administracyjny dostosowany do potrzeb projektu.

## Architektura projektu

Podczas tworzenia głównej części sklepu nie znałem jeszcze wzorca MVC, dlatego warstwa użytkownika została zrealizowana w prostszej formie poprzez osobne pliki dla poszczególnych podstron.

W praktyce oznacza to, że elementy wspólne, takie jak nagłówek czy stopka, występują w wielu plikach. Rozwiązanie to nie jest optymalne z perspektywy utrzymania kodu, jednak dobrze obrazuje mój rozwój i proces nauki.

W późniejszym etapie nauki poznałem architekturę MVC, którą zastosowałem podczas implementacji panelu administracyjnego.

## Napotkane problemy i sposób pracy

Projekt rozwijany był iteracyjnie. Każdego dnia wyznaczałem sobie konkretne cele związane z implementacją nowych funkcjonalności lub poprawą istniejących rozwiązań.

W trakcie realizacji projektu rozwiązywałem problemy związane między innymi z:

* obsługą sesji użytkowników,
* integracją aplikacji z bazą danych,
* logiką działania koszyka,
* zarządzaniem danymi produktów,
* organizacją kodu aplikacji.

## Ograniczenia projektu

Projekt nie został ukończony w 100%.

Aktualnie niezaimplementowane lub wymagające poprawy pozostają:

* moduł finalizacji zamówienia,
* obsługa płatności,
* funkcjonalność szybkiego dodawania produktów do koszyka za pomocą ikon widocznych na liście produktów.

Pomimo tych ograniczeń projekt spełniał wymagania pracy całorocznej i pozwolił mi zdobyć praktyczne doświadczenie w tworzeniu aplikacji webowych.


## Uruchomienie projektu

Aby uruchomić projekt lokalnie, wymagane jest środowisko umożliwiające obsługę PHP oraz MySQL, np. **XAMPP**.

### 1. Skopiuj pliki projektu

Pobierz lub sklonuj repozytorium, a następnie umieść folder `SwooshSpot` w katalogu serwera [WWW](http://WWW).

Przykładowa lokalizacja dla XAMPP:

```text
C:\xampp\htdocs\SwooshSpot
```

### 2. Uruchom wymagane usługi

W panelu sterowania XAMPP uruchom:

* Apache,
* MySQL.

### 3. Utwórz bazę danych

Za pomocą phpMyAdmin utwórz nową bazę danych o nazwie:

```text
swooshspotdata
```

### 4. Zaimportuj strukturę i dane bazy

Do utworzonej bazy danych zaimportuj plik:

```text
swooshspotdata.sql
```

Plik znajduje się w repozytorium projektu.

### 5. Skonfiguruj połączenie z bazą danych

W razie potrzeby zaktualizuj dane połączenia z bazą danych w plikach konfiguracyjnych projektu, tak aby odpowiadały konfiguracji lokalnego środowiska.

Domyślne dane dla XAMPP:

```text
Host: localhost
Użytkownik: root
Hasło:
Baza danych: swooshspotdata
```

### 6. Uruchom aplikację

Po wykonaniu powyższych kroków projekt powinien być dostępny pod adresem:

```text
http://localhost/SwooshSpot
```

## Uwagi

Projekt został przygotowany w celach edukacyjnych jako praca całoroczna realizowana w technikum informatycznym. Nie był wdrażany w środowisku produkcyjnym, dlatego może wymagać dodatkowej konfiguracji w zależności od używanego środowiska lokalnego.


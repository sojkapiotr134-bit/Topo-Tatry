# TatryTopo

**TatryTopo** to projekt aplikacji mapowo-przewodnikowej po pozaszlakowych rejonach Tatr Polskich i Słowackich.

Aplikacja ma porządkować informacje o przejściach graniowych, szczytach, przełęczach i drogach wspinaczkowych. Jej podstawą będzie mapa topograficzna, zweryfikowana baza obiektów i przejść oraz narzędzia nawigacyjne działające również offline.

> Projekt jest na etapie planowania i budowy fundamentów. Dane terenowe, przebiegi i informacje o dostępności będą wymagały weryfikacji przed publikacją.

## Założenia produktu

- Tatry Polskie i Słowackie.
- Przejścia graniowe, szczyty, przełęcze i drogi wspinaczkowe.
- Połączenie redakcyjnie weryfikowanej bazy z treściami społeczności.
- Mapa topograficzna, GPS, ślady GPX i wybrane funkcje offline.
- Karty obiektów i przejść z opisami, zdjęciami, wariantami oraz źródłami.
- Wyraźne rozróżnienie informacji historycznych, wspinaczkowych i aktualnie dostępnych.

## Planowany stack

| Obszar | Technologia |
| --- | --- |
| Aplikacja mobilna | Flutter / Dart |
| Mapa mobilna | MapLibre |
| Backend i uwierzytelnianie | Supabase |
| Baza danych | PostgreSQL + PostGIS |
| Dane lokalne/offline | SQLite + pliki mapowe |
| Panel redakcyjny | Next.js + React + MapLibre |
| Narzędzia kartograficzne | QGIS, GDAL |

Stack jest propozycją bazową i może zostać zmieniony po testach technicznych.

## Struktura repozytorium

- `mobile/` — aplikacja mobilna Flutter.
- `admin/` — panel redakcyjny.
- `backend/` — konfiguracja i kod backendu.
- `maps/` — źródła, style i proces przygotowania danych mapowych.
- `docs/` — dokumentacja techniczna, decyzje i roadmapa.
- `assets/` — zasoby projektowe.

## Status prac

Aktualnie: **Etap 0 — przygotowanie projektu**.

Najbliższe cele:
1. Przygotować środowisko Flutter i uruchomić pustą aplikację na Androidzie.
2. Zweryfikować MapLibre na urządzeniu.
3. Przygotować proof of concept mapy z warstwicami i własną warstwą GPX.
4. Dopiero potem rozwijać docelową bazę danych i funkcje offline.

## Ważne zasady dotyczące danych i bezpieczeństwa

- Status prawny i dostępność przejścia nie mogą być domyślane na podstawie relacji użytkowników.
- Informacje o ograniczeniach TPN i TANAP muszą mieć źródło, datę weryfikacji, okres obowiązywania i opis warunków.
- Treści społecznościowe nie zmieniają automatycznie statusu prawnego obiektu.
- Aplikacja nie może zachęcać do łamania przepisów ani obchodzenia zamknięć.
- Każda trasa wymaga jasnego opisu charakteru, trudności, ekspozycji i ograniczeń; dane nie zastępują oceny warunków w terenie.

## Dokumentacja

- [Architektura](docs/architecture/overview.md)
- [Roadmapa](docs/roadmap.md)
- [Decyzja technologiczna — stack](docs/decisions/0001-stack.md)
- [Dane mapowe](maps/README.md)

## Rozwój

Repozytorium jest prowadzone iteracyjnie. Zmiany architektury i istotne wybory techniczne powinny być zapisywane w `docs/decisions/`.

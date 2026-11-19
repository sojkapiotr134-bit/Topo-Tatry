# ADR 0001: Wstępny wybór stosu technologicznego

- Status: proponowany
- Data: 2026-11-19

## Kontekst

Projekt ma obejmować aplikację na Androida i iOS, rozbudowaną mapę, dane przestrzenne, tryb offline oraz panel redakcyjny. Rozwój rozpoczyna się na komputerze z Windows, dlatego pierwszym celem uruchomieniowym jest Android.

## Decyzja

Przyjmujemy następujący stack jako punkt wyjścia do prototypu:

- Flutter/Dart — aplikacja mobilna.
- MapLibre — renderowanie map.
- Supabase — backend, uwierzytelnianie, storage.
- PostgreSQL + PostGIS — dane przestrzenne.
- SQLite — lokalne dane aplikacji.
- Next.js + React — panel redakcyjny.
- QGIS/GDAL — przygotowanie danych kartograficznych.

## Konsekwencje

- Można rozwijać i testować aplikację Android na Windows.
- Budowanie i publikowanie aplikacji iOS wymaga środowiska macOS/Xcode lub odpowiedniego CI z runnerem macOS.
- Przed wyborem docelowego rozwiązania mapowego trzeba wykonać proof of concept: warstwice, hillshade, GPX, lokalizacja i pobieranie obszaru offline.
- Koszty usług, licencje danych i ograniczenia dostawców będą weryfikowane przed wdrożeniem produkcyjnym.

## Kryteria ponownej oceny

- Stabilność i wydajność mapy na telefonach ze średniej półki.
- Obsługa offline na Androidzie i iOS.
- Możliwość legalnej dystrybucji danych mapowych.
- Koszt utrzymania i łatwość aktualizacji danych.

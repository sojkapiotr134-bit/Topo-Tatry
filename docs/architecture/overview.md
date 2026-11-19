# Architektura — przegląd

## Cel

Zbudować aplikację mobilną dla Tatr Polskich i Słowackich, opartą na mapie topograficznej i ustrukturyzowanej bazie obiektów oraz przejść. System ma docelowo wspierać pracę redakcji, wkład społeczności i korzystanie z kluczowych danych bez dostępu do sieci.

## Komponenty

### Aplikacja mobilna — `mobile/`

- Flutter i Dart.
- MapLibre jako silnik mapowy — do potwierdzenia w proof of concept.
- Lokalna baza SQLite dla wybranych danych opisowych i indeksów.
- Lokalny magazyn plików na pobrane obszary mapowe, zdjęcia i GPX.
- Moduły: mapa, wyszukiwanie, karta obiektu, karta przejścia, GPS/ślady, konto, ustawienia offline.

### Backend — `backend/`

- Supabase jako punkt startowy: PostgreSQL, PostGIS, Auth i Storage.
- API i reguły dostępu do danych.
- Mechanizmy zgłoszeń, moderacji i synchronizacji.
- Kopie zapasowe oraz kontrola dostępu do operacji redakcyjnych.

### Panel redakcyjny — `admin/`

- Next.js + React.
- Mapa do edycji i kontroli geometrii.
- Zarządzanie obiektami, przejściami, źródłami, zdjęciami i statusem weryfikacji.
- Moderacja zgłoszeń społeczności.

### Kartografia — `maps/`

- QGIS/GDAL do przygotowania i kontroli danych.
- PostgreSQL/PostGIS jako docelowe zaplecze danych przestrzennych.
- Dane bazowe, numeryczny model terenu, warstwice, cieniowanie rzeźby i własne warstwy.
- Kwestie licencji, atrybucji i limitów usług kafelkowych muszą być sprawdzane dla każdego źródła.

## Główne encje domenowe

- `MountainObject`: szczyt, przełęcz, punkt charakterystyczny.
- `Route`: przejście graniowe, droga wspinaczkowa lub inne przejście.
- `RouteVariant`: wariant przebiegu lub zejścia.
- `Geometry`: geometria punktowa, liniowa lub obszarowa.
- `Difficulty`: trudność wraz z używaną skalą i kontekstem.
- `Source`: źródło informacji, autor, data i zakres potwierdzenia.
- `AccessStatus`: status dostępności/prawny z jurysdykcją, okresem i źródłem.
- `UserContribution`: relacja, komentarz lub zgłoszenie.
- `EditorialReview`: decyzja redakcyjna i historia zmian.

Nazwy są robocze; szczegółowy schemat zostanie opisany przed implementacją bazy.

## Zasady danych

1. Oddzielać treści opisowe od danych przestrzennych.
2. Zachowywać źródło, autora i datę weryfikacji informacji.
3. Przechowywać historię zmian ważnych danych.
4. Nie traktować relacji użytkownika jako potwierdzenia legalności przejścia.
5. Rozróżniać jurysdykcję polską i słowacką oraz właściwe okresy ograniczeń.
6. Projektować synchronizację i tryb offline z uwzględnieniem wersjonowania danych.

## Przepływ informacji

1. Redaktor tworzy lub aktualizuje obiekt w panelu.
2. Dane przechodzą walidację geometrii i wymaganych pól.
3. Redaktor przypisuje źródła i status weryfikacji.
4. Zatwierdzone dane trafiają do API.
5. Aplikacja pobiera aktualizacje i zapisuje wybrane dane lokalnie.
6. Zgłoszenia użytkowników trafiają do kolejki moderacji.

## Otwarte decyzje

- Format i dostawca map bazowych.
- Sposób dystrybucji kafelków offline.
- Model licencjonowania danych wysokościowych i zdjęć.
- Zakres funkcji dostępnych bez konta.
- Docelowy model synchronizacji zmian i konfliktów.

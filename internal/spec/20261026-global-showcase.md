---
type: spec
id: 20261026-global-showcase
status: approved       # draft | approved | superseded
created: 2026-10-26
updated: 2026-10-26
plan: internal/plan/20261026-global-showcase.md
done: internal/done/20261026-global-showcase.md
frd: [FR-001, FR-002, FR-003, FR-004, NFR-001, NFR-002]
---

# Spec: Profil GitHub untuk showcase global

## Tujuan

Ubah README profil ke bahasa Inggris yang ringkas, dan pin 6 repo yang cocok untuk pembaca global.

## Konteks

Rama meminta perbaikan README dan pin pada 2026-10-26. Kondisi awal:

- Profil tanpa pin (GraphQL `pinnedItems` kosong).
- README campur Indonesia dan Inggris. Bagian SEO seluruhnya bahasa Indonesia.
- Angka statis basi: README tulis 17,349 kontribusi, GitHub hitung 28,832 (2026-10-26).
- Lihat [blueprint](../docs/blueprint.md) dan [brd](../docs/brd.md).

## Ruang lingkup

- Tulis ulang `README.md`.
- Pin 6 repo lewat UI GitHub.

## Di luar lingkup

- Ubah README, deskripsi, atau topik di repo proyek lain.
- Ubah bio, nama, atau avatar akun.

## Batasan

- Jangan sebut nama badan hukum (BR-001).
- Jangan sebut nama klien NDA (BR-003).
- Pakai hanya angka bukti yang Rama setujui: 170+ bisnis sejak 2013, 700+ murid.

## Acceptance criteria (EARS)

| ID | Pola | Kriteria | Cara verifikasi |
|----|------|----------|-----------------|
| AC-01 | Ubiquitous | The README shall contain no Indonesian-language heading or paragraph, except product names and quoted search keywords. | Baca README + `grep -niE 'yang|dan |untuk|halaman|posisi'` |
| AC-02 | Ubiquitous | The README shall list CADIS, Titen, Caraka, compactio, CadisWave, and cloudflare-bulk-delete before the product list. | `grep -n` urutan heading |
| AC-03 | Ubiquitous | The README shall wrap the product, client, and SEO lists in `<details>` blocks whose summary states the count. | `grep -c '<details>'` dan baca summary |
| AC-04 | Ubiquitous | The GitHub profile shall pin exactly these 6 repositories: Growth-Circle/cadis, RamaAditya49/titen, CarakaDev/caraka, RamaAditya49/compactio, RamaAditya49/cadiswave, RamaAditya49/cloudflare-bulk-delete. | GraphQL `pinnedItems` |
| AC-05 | Unwanted behavior | If any README URL returns HTTP 4xx or 5xx, then the release shall stop until the URL is fixed. | `curl` tiap URL |
| AC-06 | Ubiquitous | Every `<img>` in the README shall have an `alt` attribute. | `grep -c '<img'` sama dengan `grep -c '<img[^>]*alt='` |
| AC-07 | Event-driven | When the README is pushed, github.com/RamaAditya49 shall render the new hero heading. | Buka profil di browser |

## Pertanyaan terbuka

- Tidak ada.

---
type: spec
id: 20261125-seira-spotlight
status: approved
created: 2026-11-25
updated: 2026-11-25
plan: internal/plan/20261125-seira-spotlight.md
done: internal/done/20261125-seira-spotlight.md
frd: [FR-009, FR-011, FR-012, NFR-001, NFR-003]
---

# Spec: Bagian Seira di profil GitHub

## Tujuan

Profil GitHub menampilkan Seira sebagai proyek open source terbaru, di atas bagian agent stack.

## Konteks

Rama meminta profil yang lebih bagus dan memberi tahu proyek open source baru bernama Seira (2026-11-25).
README yang tayang tidak menyebut Seira sama sekali.
Fakta Seira berasal dari `gh api repos/seira-bot/seira` dan README repo itu (2026-11-25):
35 bintang, lisensi Apache-2.0, rilis `v0.1.192` pada 2026-11-24, paket npm `@seira-bot/seira` dengan 2.872 unduhan per bulan.
Pekerjaan sebelumnya: `internal/done/20261112-founder-roles.md`.

## Ruang lingkup

- Bagian baru "Now building" di atas "The agent stack": screenshot, satu kalimat inti, 4 butir, jalur pasang, dan link.
- Label bagian baru `assets/label-now-{dark,light}.webp`, dari `tools/pieces.html`.
- Kalimat perkenalan menyebut Seira.
- Baris Creator memuat `seira.bot`.
- Baris badge npm memuat `@seira-bot/seira`.
- Baris "Linux desktop fixes" untuk repo publik `zorin-claude-desktop-fix`.
- Baris Stack memuat Electron.

## Di luar lingkup

- Pinned repositories dan bio akun. Keduanya butuh keputusan Rama.
- Header dan sketsa agent stack. Gambarnya tidak berubah.
- Isi daftar produk, klien, dan hasil SEO.
- README di repo `seira-bot/seira`.

## Batasan

- GitHub membuang CSS dan script dari README.
- Browser untuk render hanya boleh jalan di `rama-tuf`.
- Tiap klaim tentang Seira harus ada di README atau metadata repo `seira-bot/seira`.
- Screenshot Seira dimuat dari repo Seira, bukan disalin ke repo ini. Screenshot ikut berubah saat Seira berubah.
- Push ke `main` mengubah halaman publik. Push itu menunggu persetujuan Rama.

## Acceptance criteria (EARS)

| ID | Pola | Kriteria | Cara verifikasi |
|----|------|----------|-----------------|
| AC-01 | Ubiquitous | The README shall show the Seira section above the agent stack section, with a link to `github.com/seira-bot/seira` and one screenshot. | Nomor baris `label-now` lebih kecil dari nomor baris `label-stack`. `grep -c "seira-bot/seira/main/docs/screenshots" README.md` = 1 |
| AC-02 | Ubiquitous | The Creator row shall list four sites, with `seira.bot` first. | Skrip hitung link per baris tabel peran: 10, 4, 3 |
| AC-03 | Ubiquitous | The npm badge row shall show the downloads of `@seira-bot/seira`. | `grep -c "npm/dm/@seira-bot/seira" README.md` = 1. URL badge menjawab 200 |
| AC-04 | State-driven | While the GitHub theme is dark, the README shall show the `-dark` file of the new label. | `assets/label-now-dark.webp` dan `assets/label-now-light.webp` ada. Tiap `<picture>` punya `<source>` gelap dan `<img>` terang: 9 dari 9 |
| AC-05 | Ubiquitous | Each URL in the README shall return HTTP 2xx or 3xx, except linkedin.com and npmjs.com, which refuse automated clients. | Perintah cek link di `internal/docs/blueprint.md` |
| AC-06 | Ubiquitous | The images in `assets/` that one theme loads shall total less than 400 KB. | `cat assets/*-dark.webp \| wc -c` dan `cat assets/*-light.webp \| wc -c` |
| AC-07 | Unwanted behavior | If an image does not load, then the README shall show alt text for that image. | Jumlah `<img>` tanpa `alt` = 0 |
| AC-08 | Event-driven | When a visitor opens https://github.com/RamaAditya49, the profile page shall show the Seira section. | Buka URL setelah merge ke `main`. Cek tema gelap dan terang. |

## Pertanyaan terbuka

- Tidak ada.

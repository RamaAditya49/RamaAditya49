---
type: done
id: 20261125-seira-spotlight
status: done
spec: internal/spec/20261125-seira-spotlight.md
plan: internal/plan/20261125-seira-spotlight.md
completed: 2026-11-25
commit: cfebcd3
---

# Done: Bagian Seira di profil GitHub

## Hasil

Profil GitHub menampilkan bagian "Now building" untuk Seira, di atas "The agent stack".
Baris Creator memuat `seira.bot` sebagai link pertama. Baris badge npm memuat `@seira-bot/seira`.

## Matriks acceptance criteria

| ID | Hasil | Bukti |
|----|-------|-------|
| AC-01 | PASS | `label-now` ada di baris 44 README. `label-stack` ada di baris 70. `grep -c "seira-bot/seira/main/docs/screenshots" README.md` = 1. |
| AC-02 | PASS | Skrip hitung link per baris tabel peran: 10, 4, 3. Di halaman tayang, link pertama baris Creator = `seira.bot`. |
| AC-03 | PASS | `grep -c "npm/dm/@seira-bot/seira" README.md` = 1. URL badge menjawab 200. |
| AC-04 | PASS | `ls assets \| wc -l` = 18. `<picture>` = 9, `<source>` gelap = 9. Halaman tayang tema gelap memuat `label-now-dark.webp`. Tema terang memuat `label-now-light.webp`. |
| AC-05 | PASS | 111 URL dicek dengan `curl -L`. Hanya npmjs.com (403) dan linkedin.com (999) yang menolak. `registry.npmjs.org/@seira-bot%2fseira` menjawab 206. |
| AC-06 | PASS | `cat assets/*-dark.webp \| wc -c` = 294376. `cat assets/*-light.webp \| wc -c` = 138476. |
| AC-07 | PASS | 12 `<img>` di README, 0 tanpa `alt`. |
| AC-08 | PASS | https://github.com/RamaAditya49 dibuka tanpa login setelah merge PR #4. Tema gelap dan terang: 27 gambar termuat, 0 rusak, label "Now building" ada di atas "The agent stack", 9 link ke `seira-bot/seira`. |

## Berkas yang berubah

- `README.md` — bagian Seira, kalimat perkenalan, baris Creator, badge npm, baris "Linux desktop fixes", dan Electron di baris Stack.
- `assets/label-now-dark.webp`, `assets/label-now-light.webp` — label bagian baru.
- `tools/pieces.html`, `tools/render.sh` — label `label-now`.
- `internal/` — spec, plan, done, dan dokumen pusat.

## Verifikasi

- Render label di `rama-tuf` dengan batas memori 8 GB: `bash render.sh label-now`.
- Tangkapan layar halaman branch dari `rama-tuf`, tema terang: bagian Seira dan bagian atas rapi.
- Halaman tayang: browser bawaan, tanpa login, tema gelap dan terang. Cek lewat DOM, bukan tangkapan layar.
- Tidak ada build atau test. Repo hanya berisi Markdown, gambar, dan skrip render.

## Dokumen pusat yang diperbarui

- `internal/docs/frd.md` — FR-009 diubah. FR-011 dan FR-012 ditambah. Sumber NFR-001 dan NFR-003 ditambah.
- `internal/docs/prd.md` — F-07 diubah (4 situs Creator). F-09 ditambah, status live.
- `internal/docs/blueprint.md` — 18 gambar, badge rilis Seira, dan screenshot dari repo proyek.
- `internal/docs/README.md` — tanggal pembaruan 3 dokumen.

## Sisa risiko dan tindak lanjut

- Pin profil belum memuat `seira-bot/seira`. GitHub tidak punya API untuk pin. Rama mengaturnya lewat "Customize your pins".
- Bio akun kosong. Pengisian bio menunggu perintah Rama.
- Screenshot Seira dimuat dari repo Seira. Kalau path berubah di sana, alt text tampil sampai URL diganti.
- Baris badge npm turun ke 2 baris pada lebar 823 px. Badge `cadis` ada di baris kedua.
- Tema gelap pada halaman tayang dicek lewat DOM. Tangkapan layar tema gelap tidak ada.

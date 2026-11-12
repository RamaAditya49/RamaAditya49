---
type: plan
id: 20261111-profile-identity
status: in-progress
spec: internal/spec/20261111-profile-identity.md
created: 2026-11-11
updated: 2026-11-12
---

# Plan: Identitas visual profil GitHub

## Pendekatan

Satu halaman HTML, `tools/pieces.html`, menggambar semua coretan sebagai SVG.
Tiap garis punya goyangan kecil dari angka acak berbenih, jadi hasil render selalu sama.
Tema gelap memakai tekstur kapur. Tema terang memakai garis spidol. Tulisan memakai font Caveat (OFL) di `tools/fonts/`.
`tools/render.sh` membuka halaman itu di Chromium tanpa layar pada `rama-tuf`, lalu menyimpan tiap gambar pada skala 2x sebagai WebP.
Header dirender per frame lewat parameter `t`. `ffmpeg` menggabung frame itu menjadi WebP animasi yang main satu kali.
README berangkat dari versi yang tayang (`origin/main`). Tiap gambar memakai `<picture>` dengan `prefers-color-scheme`.
Uraian proyek tetap teks asli supaya terbaca di ponsel dan perintah bisa disalin.

## Langkah

- [x] 1. Pasang font Caveat dan lisensi — berkas: `tools/fonts/` — AC: AC-03 — verifikasi: `ls tools/fonts`
- [x] 2. Tulis sumber gambar dan skrip render — berkas: `tools/pieces.html`, `tools/render.sh`, `assets/` — AC: AC-03, AC-08, AC-09 — verifikasi: `bash render.sh` di `rama-tuf`, lalu `ls assets | wc -l`
- [x] 3. Tulis ulang README dari versi yang tayang — berkas: `README.md` — AC: AC-01, AC-02, AC-04, AC-05, AC-06 — verifikasi: perintah grep dan cek link di spec
- [x] 4. Perbarui dokumen pusat — berkas: `internal/docs/blueprint.md`, `internal/docs/frd.md`, `internal/docs/prd.md`, `internal/docs/README.md` — AC: tidak ada — verifikasi: `rw.sh check`
- [x] 5. Tambah daftar 3 layanan berjalan di bawah perkenalan — berkas: `README.md`, `internal/docs/frd.md`, `internal/docs/prd.md` — AC: AC-10 — verifikasi: perintah grep di spec, lalu pratinjau desktop dan ponsel
- [ ] 6. Push setelah Rama setuju — berkas: tidak ada — AC: AC-07 — verifikasi: buka https://github.com/RamaAditya49 di tema gelap dan terang

## Risiko dan rollback

- Tampilan di GitHub berbeda dari pratinjau → `git revert <sha>` lalu `git push origin main`.
- Rama menolak rancangan → ubah `tools/pieces.html`, render ulang, commit baru. Tidak ada push sebelum Rama setuju.
- Pembaca menghentikan animasi → frame pertama header sudah memuat nama, dan alt text memuat isi header.

## Log progres

- 2026-11-11: plan dibuat.
- 2026-11-11: langkah 1 sampai 4 selesai. AC-01, AC-02, AC-03, AC-05, AC-06 lulus di lokal. Commit lokal dibuat. Push menunggu persetujuan Rama.
- 2026-11-12: Rama menolak rancangan pertama ("jelek"). Commit lokal dibatalkan dengan `git reset --soft`. Gambar SVG dan `tools/build.py` dihapus.
- 2026-11-12: rancangan kedua selesai. Langkah 1 sampai 4 diulang dengan `tools/pieces.html` dan `tools/render.sh`. Push menunggu persetujuan Rama.
- 2026-11-12: Rama meminta tampilan yang tenang, sama dengan profil yang tayang, dengan coretan kapur atau spidol. Rancangan kedua tidak dipakai. Pendekatan dan langkah 1 sampai 4 ditulis ulang untuk rancangan ketiga.
- 2026-11-12: label bagian dipersempit dari 880 px ke 440 px supaya tulisan tetap besar di ponsel.
- 2026-11-12: nama tampil sejak frame pertama header. Alasan: pembaca yang menghentikan animasi hanya melihat frame pertama. Durasi animasi turun dari 4,6 detik ke 3,85 detik.
- 2026-11-12: rancangan ketiga selesai. AC-01 sampai AC-06, AC-08, dan AC-09 lulus di lokal. Pratinjau desktop dan ponsel dicek di tema gelap dan terang. Push menunggu persetujuan Rama.
- 2026-11-12: Rama meminta 3 layanan berjalan masuk ke profil: kelola marketing puluhan UMKM lewat AI agent, les privat SEO, AIO/AEO, dan GEO, serta mentoring 1-on-1 dari engineering sampai GTM. Langkah 5 ditambah. AC-10 lulus. Pratinjau desktop dan ponsel dicek. Kanvas Design diperbarui.

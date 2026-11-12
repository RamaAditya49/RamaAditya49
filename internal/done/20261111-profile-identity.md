---
type: done
id: 20261111-profile-identity
status: done
spec: internal/spec/20261111-profile-identity.md
plan: internal/plan/20261111-profile-identity.md
completed: 2026-11-12
commit: ae4dca5
---

# Done: Identitas visual profil GitHub

## Hasil

Profil GitHub memakai coretan tangan sendiri: kapur di tema gelap dan spidol di tema terang.
Header menggambar dirinya satu kali. Satu sketsa agent stack menggantikan 4 gambar proyek.
Profil memuat 3 layanan berjalan di bawah perkenalan. Susunan dan isi lain tetap.

## Matriks acceptance criteria

| ID | Hasil | Bukti |
|----|-------|-------|
| AC-01 | PASS | `grep -cE "skillicons\|for-the-badge" README.md` = 0. |
| AC-02 | PASS | 16 path lokal `assets/...` pada `src` dan `srcset`. Jumlah yang hilang = 0. |
| AC-03 | PASS | `bash render.sh` di `rama-tuf` menulis 16 berkas `out/*.webp`. `ls assets \| wc -l` = 16. |
| AC-04 | PASS | 8 `<picture>`, 8 `<source>` gelap. Di https://github.com/RamaAditya49 tema gelap memuat 8 berkas `-dark`, tema terang memuat 8 berkas `-light`. |
| AC-05 | PASS | `grep -c '<img' README.md` = 10. `grep -cE '<img[^>]*alt=' README.md` = 10. |
| AC-06 | PASS | `curl` semua URL: 82 kali 200, linkedin.com 999, 5 URL npmjs.com 403. `registry.npmjs.org/<paket>` = 200 untuk 5 paket. |
| AC-07 | PASS | https://github.com/RamaAditya49 dibuka tanpa login setelah push. Header dan sketsa agent stack tampil di tema gelap dan terang. |
| AC-08 | PASS | `cat assets/*-dark.webp \| wc -c` = 279334. `cat assets/*-light.webp \| wc -c` = 132332. |
| AC-09 | PASS | Chunk `ANIM` di `assets/hero-dark.webp` dan `assets/hero-light.webp`: loop count = 1, 53 frame. Di halaman tayang, header berhenti pada gambar lengkap. |
| AC-10 | PASS | Perintah grep di spec = 3. Daftar ada di baris 13 sampai 15, di atas baris kontak (baris 17). `curl -s https://github.com/RamaAditya49 \| grep -c "Managed marketing for small businesses"` = 1. |

## Berkas yang berubah

- `README.md` — header, sketsa, dan label memakai `<picture>` per tema. Tombol kontak dan ikon stack menjadi teks. Daftar 3 layanan ditambah.
- `assets/` — 16 berkas WebP baru. 4 gambar proyek lama dihapus.
- `tools/pieces.html` — sumber semua gambar.
- `tools/render.sh` — skrip render di `rama-tuf`.
- `tools/fonts/` — font Caveat dan lisensi OFL.
- `internal/` — spec, plan, done, dan dokumen pusat.

## Verifikasi

- Render: `bash render.sh` di `rama-tuf` dengan batas memori 8 GB. Hasil: 16 berkas.
- Pratinjau README di `rama-tuf`: desktop 894 px dan ponsel 375 px, tema gelap dan terang.
- Halaman tayang: browser bawaan, tanpa login, tema gelap dan terang.
- Tidak ada build atau test. Repo hanya berisi Markdown, gambar, dan skrip render.

## Dokumen pusat yang diperbarui

- `internal/docs/blueprint.md` — struktur `assets/` dan `tools/`, perintah render, perintah cek link.
- `internal/docs/frd.md` — FR-005 sampai FR-008 dan NFR-003 ditambah. NFR-001 diubah.
- `internal/docs/prd.md` — F-05 dan F-06 ditambah, status live.
- `internal/docs/README.md` — tanggal pembaruan.

## Sisa risiko dan tindak lanjut

- Pembaca yang menghentikan animasi hanya melihat nama pada header. Alt text memuat isi header.
- Angka "dozens of small businesses" tanpa angka pasti. Ganti kalau Rama memberi angka.
- Riwayat publik memuat satu commit. Rancangan pertama dan kedua tidak masuk riwayat.

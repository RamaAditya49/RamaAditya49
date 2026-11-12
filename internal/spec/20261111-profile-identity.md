---
type: spec
id: 20261111-profile-identity
status: approved
created: 2026-11-11
updated: 2026-11-12
plan: internal/plan/20261111-profile-identity.md
done: internal/done/20261111-profile-identity.md
frd: [FR-005, FR-006, FR-007, FR-008, NFR-001, NFR-003]
---

# Spec: Identitas visual profil GitHub

## Tujuan

Profil GitHub memakai coretan tangan sendiri: kapur di tema gelap dan spidol di tema terang.
Susunan dan isi profil yang tayang tetap.

## Konteks

Rama meminta tampilan yang profesional, unik, dan tidak seperti profil GitHub umum (2026-11-11).
Rama lalu meminta tampilan yang tenang (2026-11-12): sama dengan profil yang tayang, tetapi lebih bagus, dengan coretan kapur atau spidol.
README yang tayang memakai tombol kontak shields.io, ikon skillicons.dev, dan 4 gambar proyek dengan gaya berbeda.
Rancangan ada di kanvas Design: https://claude.ai/artifact/Km9nhGURtQn1MqJudFgDvN (privat).
Pekerjaan sebelumnya: `internal/done/20261026-global-showcase.md`.

## Ruang lingkup

- Header `assets/hero-{dark,light}.webp`: nama, peran, dan bukti angka. Header menggambar dirinya satu kali, lalu diam.
- Sketsa agent stack `assets/stack-{dark,light}.webp`. Satu sketsa papan tulis menggantikan 4 gambar proyek.
- 6 label bagian `assets/label-*-{dark,light}.webp`.
- `tools/pieces.html` sebagai sumber semua gambar, dan `tools/render.sh` yang menyimpannya pada skala 2x.
- README berangkat dari versi yang tayang. Tombol kontak menjadi link teks. Baris ikon stack menjadi teks. Garis pemisah dihapus.
- Daftar 3 layanan berjalan di bawah perkenalan: kelola marketing UMKM lewat AI agent, les privat SEO, AIO/AEO, dan GEO, serta mentoring 1-on-1.

## Di luar lingkup

- Pinned repositories, foto avatar, bio, dan nama akun.
- Isi daftar proyek, produk, klien, dan hasil SEO. Teksnya tidak berubah.
- Screenshot CadisWave dan peta-pixel-nusantara. Gambarnya tidak berubah.
- GitHub Action. Tidak ada angka yang perlu diperbarui otomatis.

## Batasan

- GitHub membuang CSS dan script dari README.
- Browser untuk render hanya boleh jalan di `rama-tuf`.
- BR-001 sampai BR-004 di `internal/docs/brd.md` tetap berlaku.
- Kode menggambar semua coretan. Tidak ada model gambar.
- Badge unduhan npm dan badge bintang tetap dari shields.io, dengan warna `E8B04B`.
- Frame pertama header memuat nama. Sebagian pembaca menghentikan animasi dan hanya melihat frame pertama.

## Riwayat rancangan

- 2026-11-11: rancangan pertama memakai SVG dengan teks outline dan peta piksel datar. Rama menolaknya ("jelek").
- 2026-11-12: rancangan kedua memakai gambar sampul yang bercahaya dan kartu berilustrasi. Rancangan ini tidak tayang.
- 2026-11-12: Rama meminta tampilan yang tenang dengan coretan kapur atau spidol. Spec ini mengikuti rancangan ketiga.
- 2026-11-12: Rama meminta 3 layanan berjalan masuk ke profil, dengan bahasa profesional. Angka "puluhan UMKM" berasal dari Rama.

## Acceptance criteria (EARS)

| ID | Pola | Kriteria | Cara verifikasi |
|----|------|----------|-----------------|
| AC-01 | Ubiquitous | The README shall load no image from skillicons.dev and no shields.io badge in the `for-the-badge` style. | `grep -cE "skillicons\|for-the-badge" README.md` = 0 |
| AC-02 | Ubiquitous | Each image path in the README shall point to a file in `assets/`. | Tiap `assets/...` di README ada di disk. Jumlah yang hilang = 0 |
| AC-03 | Event-driven | When `bash tools/render.sh` runs on `rama-tuf`, the render tool shall write 2 header images, 2 stack sketches, and 12 labels. | `ls out/*.webp \| wc -l` di `rama-tuf` = 16. `ls assets \| wc -l` = 16 |
| AC-04 | State-driven | While the GitHub theme is dark, the README shall show the `-dark` file of each drawing. | Tiap `<picture>` punya `<source>` gelap dan `<img>` terang: 8 dari 8. Cek mata pada pratinjau gelap dan terang. |
| AC-05 | Unwanted behavior | If an image does not load, then the README shall show alt text for that image. | Jumlah `<img>` tanpa `alt` = 0 |
| AC-06 | Ubiquitous | Each URL in the README shall return HTTP 2xx or 3xx, except linkedin.com (999) and npmjs.com (403), which refuse automated clients. | Perintah cek link di `internal/docs/blueprint.md`. Untuk npm: `registry.npmjs.org/<paket>` = 200 |
| AC-07 | Event-driven | When a visitor opens https://github.com/RamaAditya49, the profile page shall show the header drawing and the agent stack sketch. | Buka URL setelah push. Cek tema gelap dan terang. |
| AC-08 | Ubiquitous | The images that one theme loads shall total less than 400 KB. | `cat assets/*-dark.webp \| wc -c` dan `cat assets/*-light.webp \| wc -c` |
| AC-09 | Event-driven | When the header image loads, the header drawing shall play one time and then stay complete. | Baca chunk `ANIM` di `assets/hero-*.webp`: loop count = 1 |
| AC-10 | Ubiquitous | The README shall list three current services below the introduction: managed marketing for small businesses, private coaching in search, and 1-on-1 mentoring. | `grep -cE "^- \*\*(Managed marketing for small businesses\|Private coaching in search\|1-on-1 mentoring)\*\*" README.md` = 3. Daftar ada di atas baris kontak. |

## Pertanyaan terbuka

- Tidak ada.

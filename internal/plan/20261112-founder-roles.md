---
type: plan
id: 20261112-founder-roles
status: done
spec: internal/spec/20261112-founder-roles.md
created: 2026-11-12
updated: 2026-11-12
---

# Plan: Daftar peran Founder, Creator, dan Co-founder, serta kontak tanpa WhatsApp

## Pendekatan

Satu tabel HTML 3 baris masuk ke `README.md`, di bawah daftar layanan.
Kolom kiri memuat nama peran. Kolom kanan memuat nama domain sebagai link, dengan pemisah titik tengah.
Tabel HTML tanpa baris judul dipakai supaya GitHub tidak menggambar baris judul kosong.
Proyek open source masuk baris "Creator", bukan "Founder".

## Langkah

- [x] 1. Cek 16 situs — berkas: tidak ada — AC: AC-02 — verifikasi: `curl -L` ke tiap situs
- [x] 2. Tambah tabel peran ke README — berkas: `README.md` — AC: AC-01 — verifikasi: skrip hitung link per baris
- [x] 3. Cek pratinjau desktop dan ponsel — berkas: tidak ada — AC: AC-03 — verifikasi: pratinjau di `rama-tuf`, tema gelap dan terang
- [x] 4. Hapus link WhatsApp dari baris kontak — berkas: `README.md` — AC: AC-05 — verifikasi: perintah grep di spec
- [x] 5. Perbarui kanvas Design dan dokumen pusat — berkas: `internal/docs/frd.md`, `internal/docs/prd.md`, `internal/docs/erd.md` — AC: tidak ada — verifikasi: `rw.sh check`
- [x] 6. Push setelah Rama setuju — berkas: tidak ada — AC: AC-04, AC-05 — verifikasi: buka https://github.com/RamaAditya49 di tema gelap dan terang

## Risiko dan rollback

- Tabel terlalu lebar di ponsel → ganti tabel dengan 3 baris teks.
- Rama memilih sebutan "Founder" untuk proyek open source → pindahkan 3 situs ke baris Founder, lalu commit baru.
- Tampilan di GitHub berbeda dari pratinjau → `git revert <sha>` lalu `git push origin main`.

## Log progres

- 2026-11-12: plan dibuat. Langkah 1 selesai: 16 situs menjawab 200.
- 2026-11-12: tabel peran masuk ke README. Hitung link per baris: 10, 3, 3. AC-01 lulus.
- 2026-11-12: pratinjau pertama memecah "Co-founder" dan "open source" ke dua baris. Perbaikan: tanda hubung dan spasi yang tidak terpecah. Pemisah titik tengah menempel ke nama situs sebelumnya.
- 2026-11-12: pratinjau kedua di `rama-tuf` rapi pada desktop 894 px dan ponsel 375 px, tema gelap dan terang. AC-03 lulus.
- 2026-11-12: Rama meminta link WhatsApp dihapus. Langkah 4 ditambah. AC-05 lulus di lokal.
- 2026-11-12: kanvas Design versi 6 memuat tabel peran dan baris kontak baru. Push menunggu persetujuan Rama.
- 2026-11-12: Rama setuju. Push commit `0dfc0e3` selesai. AC-04 dan AC-05 lulus di halaman tayang, tema gelap dan terang.

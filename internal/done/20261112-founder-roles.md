---
type: done
id: 20261112-founder-roles
status: done
spec: internal/spec/20261112-founder-roles.md
plan: internal/plan/20261112-founder-roles.md
completed: 2026-11-12
commit: 0dfc0e3
---

# Done: Daftar peran Founder, Creator, dan Co-founder, serta kontak tanpa WhatsApp

## Hasil

Profil GitHub menampilkan 16 situs dalam tabel 3 baris: Founder (10), Creator open source (3), dan Co-founder (3).
Baris kontak mengarah ke situs, email, dan LinkedIn. Link WhatsApp sudah dihapus.

## Matriks acceptance criteria

| ID | Hasil | Bukti |
|----|-------|-------|
| AC-01 | PASS | Skrip hitung link per baris tabel: 10, 3, 3. Tabel ada di antara daftar layanan dan baris kontak. |
| AC-02 | PASS | `curl -L` ke 16 situs: 16 kali 200. |
| AC-03 | PASS | Pratinjau ponsel 375 px di `rama-tuf`, tema gelap dan terang: tabel ada di dalam lebar isi. Nama peran tidak terpecah. |
| AC-04 | PASS | https://github.com/RamaAditya49 dibuka tanpa login setelah push. Tema gelap dan terang menampilkan 3 baris peran dengan 10, 3, dan 3 link. Lebar tabel = lebar isi (575 px). |
| AC-05 | PASS | `grep -ciE "api\.whatsapp\.com\|wa\.me" README.md` = 0. Di halaman tayang, baris kontak berisi "ramadigital.id · halo@ramadigital.id · LinkedIn" dan jumlah link WhatsApp = 0. |

## Berkas yang berubah

- `README.md` — tabel peran ditambah di bawah daftar layanan. Link WhatsApp dihapus dari baris kontak.
- `internal/` — spec, plan, done, dan dokumen pusat.

## Verifikasi

- Pratinjau README di `rama-tuf` dengan batas memori 8 GB: desktop 894 px dan ponsel 375 px, tema gelap dan terang.
- Halaman tayang: browser bawaan, tanpa login, tema gelap dan terang.
- Tidak ada build atau test. Repo hanya berisi Markdown, gambar, dan skrip render.

## Dokumen pusat yang diperbarui

- `internal/docs/frd.md` — FR-009 dan FR-010 ditambah.
- `internal/docs/prd.md` — F-07 dan F-08 ditambah, status live.
- `internal/docs/erd.md` — catatan data publik: nomor WhatsApp dihapus dari README.
- `internal/docs/README.md` — tanggal pembaruan `erd.md`.

## Sisa risiko dan tindak lanjut

- Nomor WhatsApp masih ada di riwayat git publik. Penghapusan penuh butuh tulis ulang riwayat dan force-push. Tindakan itu menunggu perintah Rama.
- Tabel Products memakai `termilo.com`. Tabel peran memakai `termilo.id`. Kedua alamat menjawab 200.
- Rama boleh memindahkan titen.dev, caraka.dev, dan cadis.digital ke baris Founder. Perubahan itu butuh commit baru.

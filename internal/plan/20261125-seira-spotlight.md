---
type: plan
id: 20261125-seira-spotlight
status: done
spec: internal/spec/20261125-seira-spotlight.md
created: 2026-11-25
updated: 2026-11-25
---

# Plan: Bagian Seira di profil GitHub

## Pendekatan

Seira mendapat bagian sendiri di atas agent stack, karena Seira adalah proyek terbaru dan paling aktif.
Bagian itu memakai label coretan yang sama dengan bagian lain, supaya tampilan tetap satu gaya.
Screenshot dimuat dari repo Seira lewat `raw.githubusercontent.com`, seperti kartu CadisWave.
Susunan lama tetap: header, perkenalan, layanan, peran, kontak, lalu bagian proyek.
Pekerjaan jalan di branch `feat/seira-spotlight`. Merge ke `main` menunggu persetujuan Rama.

## Langkah

- [x] 1. Cek tiap link Seira — berkas: tidak ada — AC: AC-05 — verifikasi: `curl -L` ke tiap link
- [x] 2. Tambah label `label-now` — berkas: `tools/pieces.html`, `tools/render.sh`, `assets/label-now-*.webp` — AC: AC-04, AC-06 — verifikasi: `ls assets | wc -l` = 18
- [x] 3. Tulis bagian Seira dan perubahan kecil lain — berkas: `README.md` — AC: AC-01, AC-02, AC-03, AC-07 — verifikasi: perintah grep di spec
- [x] 4. Cek semua URL — berkas: tidak ada — AC: AC-05 — verifikasi: perintah cek link di `internal/docs/blueprint.md`
- [x] 5. Push branch dan cek tampilan di GitHub — berkas: tidak ada — AC: AC-01, AC-04 — verifikasi: buka `github.com/RamaAditya49/RamaAditya49/tree/feat/seira-spotlight`
- [x] 6. Perbarui dokumen pusat — berkas: `internal/docs/frd.md`, `internal/docs/prd.md`, `internal/docs/blueprint.md`, `internal/docs/README.md` — AC: tidak ada — verifikasi: `rw.sh check`
- [x] 7. Merge ke `main` setelah Rama setuju — berkas: tidak ada — AC: AC-08 — verifikasi: buka https://github.com/RamaAditya49 di tema gelap dan terang

## Risiko dan rollback

- Screenshot Seira pindah path di repo Seira → gambar hilang, alt text tampil. Ganti URL lalu commit baru.
- Tampilan di GitHub berbeda dari rancangan → perbaiki di branch sebelum merge.
- Rama tidak setuju dengan bagian baru → hapus branch. `main` tidak berubah.

## Log progres

- 2026-11-25: plan dibuat. Langkah 1 selesai: 15 link Seira menjawab 200 atau 206.
- 2026-11-25: label `label-now` dibuat di `rama-tuf`. `ls assets | wc -l` = 18. Tema gelap 294.376 byte, tema terang 138.476 byte. AC-04 dan AC-06 lulus.
- 2026-11-25: bagian Seira masuk README. AC-01, AC-02 (10, 4, 3), AC-03, dan AC-07 lulus di lokal.
- 2026-11-25: 111 URL dicek. Hanya npmjs.com (403) dan linkedin.com (999) yang menolak. `registry.npmjs.org/@seira-bot%2fseira` menjawab 206. AC-05 lulus.
- 2026-11-25: branch `feat/seira-spotlight` di-push, commit `08176ea`. Halaman branch di GitHub: 27 gambar termuat, 0 rusak, lebar isi 823 px tanpa geser samping. Tema gelap memuat `label-now-dark.webp`. Tangkapan layar tema terang dari `rama-tuf` rapi.
- 2026-11-25: langkah 7 menunggu persetujuan Rama. AC-08 belum dicek.
- 2026-11-25: Rama setuju ("Merge sekarang"). PR #4 masuk `main` lewat rebase: commit `cfebcd3` dan `5e3c205`. AC-08 lulus di halaman tayang, tema gelap dan terang.

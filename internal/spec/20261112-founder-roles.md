---
type: spec
id: 20261112-founder-roles
status: approved
created: 2026-11-12
updated: 2026-11-12
plan: internal/plan/20261112-founder-roles.md
done: internal/done/20261112-founder-roles.md
frd: [FR-009, FR-010]
---

# Spec: Daftar peran Founder, Creator, dan Co-founder, serta kontak tanpa WhatsApp

## Tujuan

Profil GitHub menampilkan 16 situs milik Rama dalam 3 kelompok peran, di bawah daftar layanan.
Baris kontak mengarah ke email dan LinkedIn, tanpa WhatsApp.

## Konteks

Rama meminta daftar "Founder of" (13 situs) dan "Co-Founder of" (3 situs) masuk ke profil (2026-11-12).
Rama meminta susunan yang rapi dan profesional.
Rama bertanya sebutan yang benar untuk proyek open source.
Jawaban: proyek open source memakai sebutan "Creator". Sebutan "Founder" dipakai untuk perusahaan dan produk bisnis.
Rama lalu meminta link WhatsApp dihapus dan pembaca diarahkan ke email atau LinkedIn (2026-11-12).
Pekerjaan sebelumnya: `internal/done/20261111-profile-identity.md`.

## Ruang lingkup

- Satu tabel 3 baris di `README.md`, di bawah daftar layanan dan di atas baris kontak.
- Baris **Founder**: ramadigital.id, tbr.ai.id, sanji.space, mcgg.studio, konektor.id, coret.id, biver.id, nayaka.studio, planogram.dev, semaya.chat.
- Baris **Creator** (open source): titen.dev, caraka.dev, cadis.digital.
- Baris **Co-founder**: aiclub.id, growthcircle.id, termilo.id.
- Tiap situs tampil sebagai nama domain huruf kecil dan menjadi link ke situs itu.
- Baris kontak: link WhatsApp dihapus. Link situs, email, dan LinkedIn tetap.
- Kanvas Design diperbarui dengan tabel yang sama dan baris kontak yang sama.

## Di luar lingkup

- Gambar baru. Tabel tidak memakai label coretan.
- Bagian Products, Client work, dan Results. Isinya tidak berubah.
- Uraian per situs. Bagian Products sudah memuat uraian produk.
- Kata "WhatsApp" pada uraian produk dan kerja klien. Kata itu nama produk, bukan kontak.

## Batasan

- GitHub membuang CSS dari README. Tabel memakai HTML polos.
- BR-001 sampai BR-004 di `internal/docs/brd.md` tetap berlaku.
- Urutan situs mengikuti urutan dari Rama.
- Push ke GitHub menunggu persetujuan Rama.

## Acceptance criteria (EARS)

| ID | Pola | Kriteria | Cara verifikasi |
|----|------|----------|-----------------|
| AC-01 | Ubiquitous | The README shall show three role groups below the service list: Founder with 10 sites, Creator with 3 sites, and Co-founder with 3 sites. | Skrip hitung link per baris tabel: 10, 3, 3. Tabel ada di antara daftar layanan dan baris kontak. |
| AC-02 | Ubiquitous | Each site in the role groups shall be a link that returns HTTP 2xx or 3xx. | `curl -L` ke 16 situs: semua 200 |
| AC-03 | State-driven | While the page width is 375 px, the role groups shall stay inside the page width. | Pratinjau ponsel di `rama-tuf`: lebar tabel tidak melebihi lebar isi |
| AC-04 | Event-driven | When a visitor opens https://github.com/RamaAditya49, the profile page shall show the three role groups. | Buka URL setelah push. Cek tema gelap dan terang. |
| AC-05 | Ubiquitous | The README shall link to email and LinkedIn as contact channels and shall contain no WhatsApp chat link. | `grep -ciE "api\.whatsapp\.com\|wa\.me" README.md` = 0. Baris kontak memuat `mailto:` dan `linkedin.com/in/`. |

## Pertanyaan terbuka

- Tidak ada.

---
type: plan
id: 20261026-global-showcase
status: in-progress    # draft | in-progress | blocked | done
spec: internal/spec/20261026-global-showcase.md
created: 2026-10-26
updated: 2026-10-26
---

# Plan: Profil GitHub untuk showcase global

## Pendekatan

Pilih repo dengan kriteria: bahasa Inggris, berguna di luar Indonesia, punya README rapi, lisensi jelas, dan rilis nyata (npm atau binary).
Repo yang khusus pasar Indonesia (tutur, peta-pixel-nusantara, jekardah-writer) tetap ada di README, tapi tidak di-pin.
README memakai urutan: hero, open source unggulan, open source lain, lalu produk dan kerja klien dalam `<details>`.
Hapus angka yang GitHub sudah tampilkan sendiri (kontribusi, jumlah repo).
Pin diatur lewat browser, karena GraphQL API tidak punya mutation pin repo profil.

## Langkah

- [x] 1. Tulis ulang README — berkas: `README.md` — AC: AC-01, AC-02, AC-03, AC-06 — verifikasi: `grep` di spec
- [x] 2. Cek semua URL — berkas: `README.md` — AC: AC-05 — verifikasi: `curl` tiap URL
- [x] 3. Commit dan push — berkas: `README.md`, `internal/` — AC: AC-07 — verifikasi: `git status`, `git log origin/main -1`
- [ ] 4. Pin 6 repo lewat UI GitHub — berkas: tidak ada — AC: AC-04 — verifikasi: GraphQL `pinnedItems`
- [ ] 5. Cek profil di browser — AC: AC-07 — verifikasi: screenshot

## Risiko dan rollback

- README baru jelek atau salah → `git revert <sha>` lalu push.
- Pin salah → ubah lewat "Customize your pins".

## Log progres

- 2026-10-26: plan dibuat.
- 2026-10-26: README ditulis ulang. `ai-builders-id/ai-builders-design-system` dihapus dari README karena HTTP 404 untuk publik.
- 2026-10-26: compactio dipasang lewat `claude plugin`, bukan `npx`. Perintah di README mengikuti README compactio.
- 2026-10-26: cek URL: 99 URL, hanya npmjs.com (403) dan LinkedIn (999) gagal karena blokir bot. Paket npm dicek lewat `npm view`.

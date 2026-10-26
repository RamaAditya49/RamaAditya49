---
type: done
id: 20261026-global-showcase
status: done
spec: internal/spec/20261026-global-showcase.md
plan: internal/plan/20261026-global-showcase.md
completed: 2026-10-26
commit: e768c83
---

# Done: Profil GitHub untuk showcase global

## Hasil

README profil sekarang berbahasa Inggris dan dibuka dengan "The agent stack": CADIS, Titen, Caraka, compactio.
Profil punya 6 pin dengan urutan yang sama dengan README.

## Matriks acceptance criteria

| ID | Hasil | Bukti |
|----|-------|-------|
| AC-01 | PASS | `grep -niE '\b(yang\|dan\|untuk\|halaman\|posisi\|saya\|kami)\b' README.md` di luar URL: 0 baris. Sisa teks Indonesia: nama produk dan kata kunci `jasa install openclaw`. |
| AC-02 | PASS | Heading "The agent stack" dan "Tools" berada sebelum heading "Products". |
| AC-03 | PASS | 3 blok `<details>`: "10 live products", "5 public clients, 10 under NDA, 2 internal platforms", "9 service pages on page 1". |
| AC-04 | PASS | GraphQL `pinnedItems`: Growth-Circle/cadis, RamaAditya49/titen, CarakaDev/caraka, RamaAditya49/compactio, RamaAditya49/cadiswave, RamaAditya49/cloudflare-bulk-delete. |
| AC-05 | PASS | `curl` 99 URL: semua 2xx/3xx, kecuali npmjs.com (403) dan LinkedIn (999) karena blokir bot. indirect: paket npm dicek dengan `npm view` (5 versi terbaca). |
| AC-06 | PASS | `grep -c '<img'` = 9, `grep -cE '<img[^>]*alt='` = 9. |
| AC-07 | PASS | `curl -s https://github.com/RamaAditya49 \| grep -c 'The agent stack'` = 1 (tanpa login). |

## Berkas yang berubah

- `README.md` — ditulis ulang untuk pembaca global.
- `internal/` — bootstrap docs, spec, plan, dan done.

## Verifikasi

- Tidak ada build atau test. Repo hanya berisi Markdown.
- Cek link dengan `curl` di mesin lokal. Cek pin dengan `gh api graphql`.

## Dokumen pusat yang diperbarui

- `internal/docs/frd.md` — FR-001 sampai FR-004, NFR-001, NFR-002 berstatus `implemented`.

## Sisa risiko dan tindak lanjut

- Link `ai-builders-id/ai-builders-design-system` dihapus karena repo itu private (HTTP 404). Buka repo itu kalau Rama ingin menampilkannya lagi.
- `Growth-Circle/cadis` punya lebih dari 6.000 issue terbuka dan lisensi yang GitHub baca sebagai NOASSERTION. Pengunjung pin pertama akan melihat itu.

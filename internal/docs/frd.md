---
type: frd
status: current
updated: 2026-11-12
---

# FRD: RamaAditya49 (GitHub profile)

## Konvensi

- Tulis tiap requirement dengan pola EARS. Lihat referensi EARS di skill `rama-aditya-workflows`.
- Satu baris berisi satu perilaku yang bisa diverifikasi.
- ID `FR-001` dan `NFR-001` tetap selamanya. Jangan pakai ulang ID yang sudah dihapus.
- Requirement yang tidak berlaku lagi memakai status `deprecated`. Jangan hapus barisnya.
- Kolom "Sumber" berisi ID spec yang menambah atau mengubah requirement itu.

## Profil

| ID | Pola | Requirement | Status | Sumber |
|----|------|-------------|--------|--------|
| FR-001 | Ubiquitous | The profile README shall show name, positioning, and contact links in English above the first section break. | implemented | 20261026-global-showcase |
| FR-002 | Ubiquitous | The profile README shall show the pinned open-source projects first, each with a link and a one-line description. | implemented | 20261026-global-showcase |
| FR-003 | Ubiquitous | The profile README shall put product, client, and SEO lists inside `<details>` blocks whose summary states the count. | implemented | 20261026-global-showcase |
| FR-004 | Ubiquitous | The GitHub profile shall pin six public repositories. | implemented | 20261026-global-showcase |
| FR-005 | State-driven | While the GitHub theme is dark, the profile README shall show the chalk file of each drawing. | implemented | 20261111-profile-identity |
| FR-006 | State-driven | While the GitHub theme is light, the profile README shall show the marker file of each drawing. | implemented | 20261111-profile-identity |
| FR-007 | Event-driven | When the header image loads, the header drawing shall play one time and then stay complete. | implemented | 20261111-profile-identity |
| FR-008 | Ubiquitous | The profile README shall list three current services below the introduction: managed marketing for small businesses, private coaching in search, and 1-on-1 mentoring. | implemented | 20261111-profile-identity |

## Kebutuhan non-fungsional

| ID | Pola | Requirement | Status | Sumber |
|----|------|-------------|--------|--------|
| NFR-001 | Ubiquitous | Every URL in the README shall return HTTP 2xx or 3xx, except linkedin.com and npmjs.com, which refuse automated clients. | implemented | 20261026-global-showcase, 20261111-profile-identity |
| NFR-002 | Ubiquitous | Every `<img>` in the README shall have an `alt` attribute. | implemented | 20261026-global-showcase |
| NFR-003 | Ubiquitous | The images that one theme loads shall total less than 400 KB. | implemented | 20261111-profile-identity |

## Pertanyaan terbuka

- Tidak ada.

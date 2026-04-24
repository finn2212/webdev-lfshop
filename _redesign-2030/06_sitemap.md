# 06 — Sitemap & Redesign-Status

**Ziel:** Einheitliches Look & Feel der Startseite auf _allen_ Seiten durchziehen. Dieses Dokument ist die Arbeitsliste dafür.

> Stand: 2026-04-24 · Branch `redesign-2030`
> Nach jedem Merge eines Seiten-Redesigns bitte hier den Status-Emoji updaten.

---

## 1 — Look-&-Feel-Baseline (was die Startseite definiert)

Alle anderen Seiten sollen dieses Muster visuell/strukturell matchen:

**Global (greift schon überall — via Theme-Settings / CSS-Override):**
- 4 Variable-Fonts via Fontsource (P0) → [snippets/fonts-2030.liquid](../snippets/fonts-2030.liquid)
- Editorial Header/Nav ohne Unterstreichung → Commit `3e3796f`, `bb3ab20`
- Globaler CSS-Override-Layer → [assets/redesign-2030.css](../assets/redesign-2030.css)
- Preise in Caveat, größer
- Cookie-Consent v3

**Pro Seite (was die Homepage-Komposition ausmacht):**
1. `section-editorial-hero` — großer Hero mit Eyebrow, H1 in neuer Serif, 2 CTAs, optionales Scroll-Hint
2. `section-editorial-text` — Intro mit Body + Quote + Signature + CTA
3. Content-Module (Link-Cards, Collection-Row, Gallery, Row …)
4. `section-principles` — Trust-Layer vor Checkout-Distanz
5. `section-lead-magnet` — Newsletter-Einstieg
6. Einheitliche Section-Paddings (tight, editorial — Commit `c587926`)

> **Leitplanke:** Jede redesignte Seite startet mit einem `section-editorial-hero` oder einem anderen bewusst gesetzten Eröffnungs-Block — _nie_ direkt mit einer Produkt-/Bundle-Section.

---

## 2 — Pages — Bestand

### ✅ Redesigned (Homepage-Look)

| Seite | Template | Sections | Notiz |
|---|---|---|---|
| Homepage | [index.json](../templates/index.json) | editorial-hero, editorial-text, link-cards, principles, collection-row, gallery, lead-magnet, row, collection | **Referenz-Seite** |
| Redaktionsprinzipien | [page.redaktionsprinzipien.json](../templates/page.redaktionsprinzipien.json) | principles | Trust-Page, neu |

### ✅ Alle Destination-Hubs auf Homepage-Muster

| Seite | Template | Status |
|---|---|---|
| Bali | [page.bali.json](../templates/page.bali.json) | ✅ Hero + Intro + Spotlight + Principles + 3 YouTube-Reels + Lead-Magnet |
| Südafrika | [page.suedafrika.json](../templates/page.suedafrika.json) | ✅ Hero + Intro + Spotlight + Principles + 3 YouTube-Reels + Lead-Magnet |
| Thailand | [page.thailand.json](../templates/page.thailand.json) | ✅ Hero + Intro + Spotlight + Principles + 3 YouTube-Reels + Lead-Magnet |
| Australien | [page.australien.json](../templates/page.australien.json) | ✅ Hero + Intro + Stories + Principles + 3 YouTube-Reels + Lead-Magnet (Australien-Wartelist statt Preset) |
| Familienreisen | [page.familienreisen.json](../templates/page.familienreisen.json) | ✅ Hero + Intro + Destinations + Principles + 3 YouTube-Reels + Story-Articles + Lead-Magnet |

**Hero-Bilder:** Nutzen `shopify://shop_images/thailand.jpg` / `suedafrika.jpg` / `australien.jpg` / `DSC02014-3.jpg` (bereits im Shop hochgeladen). Bali nutzt interim `DSC04341-5.jpg` — im Admin auf einen besseren Landscape-Shot stellen.

### ⚠️ Nur P0-Trust-Signals, sonst Alt-Look

| Seite | Template | Gap |
|---|---|---|
| PDPs (alle ~18) | [product.*.json](../templates/) + [sections/product.liquid](../sections/product.liquid) | Before/After + Reels nicht eingebaut, keine Editorial-Hülle, alte Galerie |

### ✅ Welle B — Trust- und Branding-Seiten

| Seite | Template | Status |
|---|---|---|
| Über uns | [page.uber-uns.json](../templates/page.uber-uns.json) | ✅ Hero + Intro + Story-Row (lange Version) + Principles + Lead-Magnet |
| Shop | [page.shop.json](../templates/page.shop.json) | ✅ Alter Banner durch Editorial-Hero ersetzt, Promo-Stack live belassen, Lead-Magnet am Ende |
| Story | [page.story.json](../templates/page.story.json) | ✅ Hero + Intro + 6 Blog-Story-Cards + Lead-Magnet (leerer Timeline-Placeholder entfernt) |
| Team | [page.team.json](../templates/page.team.json) | ✅ Hero + Intro + Laura/Finn/Tilda-Blocks + Lead-Magnet |
| Lookbook | [page.lookbook.json](../templates/page.lookbook.json) | ✅ Placeholder-Stack weg, neu: Hero + Intro + 8-Bild-Gallery + Presets-Collection + Lead-Magnet |

### ❌ Alt-Look / komplett unangetastet

| Seite | Template | Aktueller Zustand |
|---|---|---|
| FAQ | [page.faq.json](../templates/page.faq.json) | Default-Page (Welle D) |
| Contact | [page.contact.json](../templates/page.contact.json) | Default-Page (Welle D) |
| Collections (alle) | [collection.json](../templates/collection.json) | Alte Facetten, keine unified Grid (Phase 2) |
| Blog | [blog.json](../templates/blog.json) + 2 Varianten | Unverändert (Phase 2) |
| Articles | [article.json](../templates/article.json) + 7 Varianten | Unverändert (Phase 2) |
| Cart | [cart.json](../templates/cart.json) | Unverändert (Phase 2) |
| Search / 404 / Customer-Area | — | Unverändert |

### 🧭 Geplant, existiert noch nicht

| Seite (geplant) | Phase | Bemerkung |
|---|---|---|
| `/pages/reiseziele` (Index) | P2 | Dach über die 4 Destination-Hubs fehlt |
| `/pages/planer` (AI-Itinerary) | P3 | Cloudflare-Worker + Claude, consent-gated |
| `/pages/support` | P2/P3 | Könnte FAQ ablösen |
| ~~`/pages/honeymoon`~~ | — | Gestrichen (Commit `1611cf4`) |
| ~~`/pages/family-slow-travel`~~ | — | Ersetzt durch `/pages/familienreisen` |

---

## 3 — Sections — Bestand

### ✅ Neue Sections (für den Homepage-Look)

- [section-editorial-hero](../sections/section-editorial-hero.liquid) — Hero-Muster
- [section-editorial-text](../sections/section-editorial-text.liquid) — Intro-Muster
- [section-link-cards](../sections/section-link-cards.liquid) — Destination-Teaser
- [section-principles](../sections/section-principles.liquid) — Trust
- [section-bundle-spotlight](../sections/section-bundle-spotlight.liquid) — Display (kein Builder)
- [section-before-after](../sections/section-before-after.liquid) — gebaut, **noch in keinem PDP eingebaut**
- [section-reels](../sections/section-reels.liquid) — nur in Destination-Hubs, **nicht in PDPs**
- [section-lead-magnet](../sections/section-lead-magnet.liquid) — Newsletter

### ⏳ Noch zu bauen (laut [02_final_proposal §5](02_final_proposal.md#5--sections-bibliothek-8-core--4-wow))

Phase 2 Core: `destination-card`, `product-glass`, `collection-grid-v2`, `bundle-builder`, `mega-footer`
Phase 3 Wow: `cinematic-hero`, echtes `reels-grid`, `itinerary-ai`, `product-showcase-pin`

### 🗑 Abzuschalten nach P2/P3 (aktuell 75 Section-Files → Ziel ~12)

- 5 Collection-Varianten (`collection`, `-grid`, `-marbles`, `-row`, `-split`) → `collection-grid-v2`
- 2 Video-Sections (`video`, `video-player`) → `cinematic-hero`
- `section-hero` (alt) → ersetzt durch `section-editorial-hero`
- `slideshow`, `mosaic`, `columns`, `tabs`, `timeline`, `timeline-tree`, `press`, `logos`, `icons` — Nutzung prüfen, meist redundant

---

## 4 — Priorität für einheitliches Look & Feel

Reihenfolge optimiert auf sichtbare Einheitlichkeit pro Aufwand:

### Welle A — Quick-Wins auf bereits redesignten Seiten (1–2 PT gesamt)
1. **Editorial Hero + Lead auf alle Destination-Hubs** (Bali, Thailand, Südafrika, Australien, Familienreisen) — schließt die größte optische Lücke sofort
2. **Lead-Magnet auf Destination-Hubs** aufnehmen (wie Startseite)

### Welle B — High-Traffic Alt-Seiten auf Homepage-Muster heben (4–6 PT)
3. **Über uns** — Editorial-Hero + Editorial-Text (Laura+Finn+Tilda-Story) + Timeline + Principles
4. **Shop-Seite** — vorerst Editorial-Hero + Editorial-Text davorschalten (full redesign wartet auf `collection-grid-v2`)
5. **Story / Team / Lookbook** — jede mit Editorial-Hero + passendem Intro-Block

### Welle C — PDPs (Conversion-kritisch, 5–7 PT)
6. **Preset-PDPs:** `section-before-after` einbauen
7. **Destination-PDPs (Maps/Guides):** `section-reels` in Galerie
8. **Alle PDPs:** Editorial-Rahmen um die Media-/Kauf-Zone (wartet teilweise auf `product-glass`)

### Welle D — Low-Traffic / Funktional (2–3 PT)
9. FAQ, Contact — Editorial-Hero + bestehenden Content beibehalten
10. Cart, Collections, Article, Blog — warten bewusst auf Phase 2

### Welle E — Neu bauen (Phase 2/3)
11. `/reiseziele` Index
12. `/planer` (AI-Itinerary)
13. `/support`

---

## 5 — Pflege dieses Dokuments

- Nach jedem Feature-Merge: Status-Emoji (✅ / 🟡 / ⚠️ / ❌) in Abschnitt 2 anpassen.
- Welle-Schritte in Abschnitt 4 abhaken, wenn gemergt.
- Neue Seiten/Sections gehören hier rein, bevor sie gebaut werden.

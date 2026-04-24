# Redesign-2030 — Arbeitsverzeichnis

Mehragenten-Analyse und Redesign-Vorschlag für laurandfinn.com.

## Dateien

| # | Datei | Zweck |
| --- | --- | --- |
| 0 | [00_README.md](00_README.md) | Diese Übersicht |
| 1 | [01_synthesis_brief.md](01_synthesis_brief.md) | **V1** — Synthese aus 3 Persona-Reviews + Code-Audit (Big-Bang-Plan, 51 PT) |
| 2 | [02_final_proposal.md](02_final_proposal.md) | **V2 (final)** — Iterativer 4-Phasen-Plan mit eingearbeitetem Challenger-Pushback (85 PT) |
| 3 | [03_content_checklist.md](03_content_checklist.md) | Was Finn an Content / Zugängen / Antworten liefert |
| 4 | [04_metafields.md](04_metafields.md) | Shopify-Admin-Metafields für Trust-Signals |
| 5 | [05_localization.md](05_localization.md) | DE → EN Übersetzungs-Plan + Vorab-Übersetzungen aller neuen Strings |
| 6 | [06_sitemap.md](06_sitemap.md) | Laufende Sitemap + Redesign-Status pro Seite/Section, Prioritätenliste für einheitliches Look & Feel |
| 7 | [07_todos_content.md](07_todos_content.md) | **Offene Aufgaben nach Abschluss der Template-Migration** — alles Content-/Admin-/Infra-seitig, nichts im Code |

## Code-Stand auf `redesign-2030`-Branch

**Phase 0 (alle merged):**

- `feat/p0-cookie-consent` → vanilla-cookieconsent v3 ersetzt gettermscmp ([snippets/cookie-consent.liquid](../snippets/cookie-consent.liquid))
- `feat/p0-fonts` → 4 Open-Source-Variable-Fonts via Fontsource self-hosted ([snippets/fonts-2030.liquid](../snippets/fonts-2030.liquid))
- `feat/p0-trust-signals` → Update-Datum + Geld-zurück + Lieferumfang auf PDPs ([snippets/trust-signals.liquid](../snippets/trust-signals.liquid))

**Phase 1 (alle merged):**

- `feat/p1-before-after-slider` → Drag-Reveal-Slider für Preset-PDPs ([sections/section-before-after.liquid](../sections/section-before-after.liquid))
- `feat/p1-pdp-reels` → 9:16-Reels-Grid mit `<dialog>`-Fullscreen ([sections/section-reels.liquid](../sections/section-reels.liquid))
- `feat/p1-newsletter-magnet` → Lead-Magnet-Popup, consent-aware ([sections/section-lead-magnet.liquid](../sections/section-lead-magnet.liquid))
- `feat/p1-redaktionsprinzipien` → Trust-Page mit 6 Default-Prinzipien ([sections/section-principles.liquid](../sections/section-principles.liquid) + [templates/page.redaktionsprinzipien.json](../templates/page.redaktionsprinzipien.json))
- `feat/p1-bundle-landings` → Honeymoon + Family-Slow-Travel-Landings ([sections/section-bundle-spotlight.liquid](../sections/section-bundle-spotlight.liquid) + [templates/page.honeymoon.json](../templates/page.honeymoon.json) + [templates/page.family-slow-travel.json](../templates/page.family-slow-travel.json))
- `feat/p1-en-locales` → Übersetzungs-Plan + Vorab-Strings (Doku)

## Workflow (Runde 1 abgeschlossen)

```text
[Persona-Review Gen Z] ─┐
[Persona-Review Couple] ┼─→ V1 Synthese ─→ [Challenger-Review] ─→ V2 Final
[Persona-Review Nomad]  ┤
[Code/Design-Audit]     ─┘
```

Alle 5 Agenten liefen autonom, V2 ist die finale Empfehlung mit korrigierten KPI-Zielen, gestrichenen Risiko-Features und realistischer Aufwandsschätzung.

## Wichtigste Ergebnisse aus V2

- **Phase 0 (1 Woche, 5 PT):** Discovery + Quick-Wins ohne Theme-Wechsel — Cookie-Consent fixen, Reviews seeden, Update-Daten, Apple Pay/Klarna, Hero-A/B-Test.
- **Phase 1 (4 Wochen, 20 PT):** Trust- & PDP-Pivot auf Story-Theme — Before/After, Reels, Bundles, EN-Lokalisierung.
- **Phase 2 (6 Wochen, 35 PT):** Horizon-Theme-Fork als Dark-Build — 8 Core-Sections, OKLCH-Tokens, App-Migration.
- **Phase 3 (4 Wochen, 25 PT):** Wow-Layer & Launch — Cinematic Hero, Reels-Grid, AI-Itinerary (DSGVO-konform), View Transitions als PE.

**Realistischer Conversion-Lift:** CR 1.2 % → 1.8–2.0 %, AOV 35 € → 50 €, LCP 3.5 s → < 2.0 s.

## Was Finn HEUTE ohne weitere Planung tun kann

Siehe [02_final_proposal.md §12](02_final_proposal.md) — 5 Hebel in ~7 h Aufwand mit erwartetem +10–20 % Conversion in 30 Tagen.

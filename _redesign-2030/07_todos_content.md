# 07 — Content-TODOs nach Phase-2-Migration

Stand: 2026-04-24. Nach Abschluss der Template-/Section-Migration bleiben ausschließlich Aufgaben übrig, die **nicht autonom** erledigt werden können — sie brauchen dich, ein Asset, eine externe Integration oder eine Design-/Brand-Entscheidung.

Sortiert nach Impact absteigend.

---

## 🔴 High-Impact (Conversion-kritisch)

### 1. Before/After-Bildpaare für 6 Preset-PDPs hochladen
**Warum:** Auf den sechs Preset-PDPs ([preset-ocean](../templates/product.preset-ocean.json), -tropical, -vintage, -bundle, -collab, [preseet-oceanbeach](../templates/product.preseet-oceanbeach.json)) ist `section-before-after` bereits als Section eingehängt mit einem leeren `pair-1`-Block. Der Block braucht zwei Bilder: das Original und das mit dem Preset bearbeitete Bild.
**Wie:** Im Shopify Admin → Theme Editor → Preset-PDP öffnen → Section "Vorher / Nachher" → "Bild – Vorher (Original)" und "Bild – Nachher (Mit Preset)" setzen. Idealerweise 2–3 Paare pro Preset (du kannst Blocks im Theme Editor hinzufügen).
**Format:** 3:2 oder 4:3, min. 1600px breit, dasselbe Motiv pro Paar (nur Preset-Unterschied).

### 2. Judge.me-/Loox-Reviews einrichten und Review-Sections wieder einhängen
**Warum:** Die 6 Preset-PDPs hatten alle englische Dummy-Testimonials ("Testimonial name", "Founder, Company", "Use this text to showcase…"). Diese Sections (`section_reviews_ECUnCA`) sind aus dem `order`-Array entfernt, aber die Definition bleibt erhalten. Echte Reviews fehlen auf allen PDPs.
**Wie:** Judge.me oder Loox im Shop installieren → Reviews von bisherigen Käufern importieren oder seed-Campaign → im Theme Editor die Preset-PDPs öffnen → die (jetzt hidden) "Reviews"-Section wieder aktivieren, gleichzeitig die echten Review-Widgets einbauen, Dummy-Blocks löschen.

### 3. Hero-Bild Bali-Hub tauschen
**Warum:** [page.bali.json](../templates/page.bali.json) nutzt interim `shopify://shop_images/DSC04341-5.jpg` — das ist eigentlich ein Preset-/Newsletter-Foto, kein echtes Bali-Landscape.
**Wie:** Im Theme Editor → Bali-Seite → Hero-Section → "Hintergrundbild" neu picken. Unter `_redesign-2030/generated-images/bali.jpg` liegt ein AI-generierter Platzhalter; du kannst auch dein eigenes Bali-Landscape-Foto nehmen.

### 4. YouTube-Video-Metadaten gegenprüfen
**Warum:** Beim YouTube-Research-Agent konnten Länge und Upload-Datum nicht zuverlässig ausgelesen werden. Die 3 Videos auf jedem Destination-Hub + die 1–3 Videos auf 9 Map/Bundle-PDPs basieren auf URL-Suche. Ein oder zwei Videos könnten unpassend sein.
**Wie:** Jeden Destination-Hub öffnen (Bali, Thailand, Südafrika, Australien, Familienreisen), dort die Reels anschauen. Falls ein Video nicht passt → im Theme Editor → Section "Reels" → Block öffnen → YouTube-URL austauschen. Alternative Videos aus dem [@Laurandfinn-Kanal](https://www.youtube.com/@Laurandfinn).

---

## 🟡 Medium-Impact (Brand-Konsistenz)

### 5. FAQ-Accordions übersetzen + auf digitale Produkte anpassen
**Warum:** [page.faq.json](../templates/page.faq.json) hat Hero + Intro auf Deutsch, aber die vier Accordion-Sections (Payments, Shipping, Warranty, Returns) sind noch die englischen Shopify-Default-Texte über physische Produkte. Die Warranty-Section ist komplett unpassend für digitale Downloads.
**Wie:** Im Theme Editor → FAQ-Seite → jede Accordion-Section editieren:
- "Payments & Safety" → übersetzen, ggf. Klarna/PayPal erwähnen
- "Shipping & Delivery" → umbenennen zu "Download & Lieferung", Shipping-Texte durch Download-Flow-Erklärung ersetzen
- "Warranty & Repair" → entfernen (disabled setzen) oder zu "Content-Updates" umformen
- "Returns & Refunds" → übersetzen, 14-Tage-Geld-zurück-Garantie hervorheben

### 6. Contact-Accordions übersetzen
**Warum:** [page.contact.json](../templates/page.contact.json) hat 5 Accordion-Items und 2 Policy-Links, alle in Englisch, alle über physische Produkte.
**Wie:** Theme Editor → Contact-Seite → Accordions + Policies editieren / löschen. Ggf. ganz weglassen und nur das Formular stehen lassen.

### 7. Tiefere About-Page-Bilder
**Warum:** [page.uber-uns.json](../templates/page.uber-uns.json) nutzt auf Hero und in der Story-Row zweimal dasselbe Bild `DSC00859-2.jpg`.
**Wie:** Hero-Bild auf ein atmosphärisches Südafrika-Foto (neue Heimat) wechseln, Story-Row-Bild kann bleiben.

### 8. Footer-Description-Review
**Warum:** Die Footer-Description ("Gefällt dir unser Content auf Instagram…") könnte auf die neue Brand-Sprache upgedatet werden — sie ist freundlich, aber nicht mehr ganz im Editorial-Ton.
**Wie:** Theme Editor → Footer-Section → `footer_description` anpassen. Optional.

---

## 🟢 Low-Impact (Nice-to-have)

### 9. Blog-Featured-Artikel wieder einbauen
**Warum:** [blog.json](../templates/blog.json) hat `blog-custom` (Custom-Content-Section) aus dem `order`-Array entfernt, weil der Article-Picker leer war. Die Section-Definition steht noch da.
**Wie:** Theme Editor → Blog-Template → im linken Panel die "Custom Content"-Section per Drag in die Reihenfolge ziehen, einen guten aktuellen Artikel picken.

### 10. Team-Bilder hochladen
**Warum:** [page.team.json](../templates/page.team.json) hat drei Person-Blocks (Laura, Finn, Tilda) ohne Foto.
**Wie:** Theme Editor → Team-Seite → je Person ein Portrait-Bild picken.

### 11. Lookbook-Gallery kuratieren
**Warum:** [page.lookbook.json](../templates/page.lookbook.json) nutzt 8 Bilder aus den bestehenden Shop-Images als Platzhalter. Eine kuratierte Auswahl wäre stärker.
**Wie:** Theme Editor → Lookbook → Gallery-Section → Bilder tauschen. Ggf. mehr Bilder hinzufügen.

---

## 🔒 Content/Infra-blockiert (brauchen externe Setup-Entscheidungen)

### 12. `/pages/planer` (AI-Itinerary)
**Blockiert durch:** DSGVO-DSFA nötig, Cloudflare Worker-Setup in EU-Region, Anthropic-AVV abschließen, System-Prompt + kuratiertes Produkt-Korpus finalisieren, Cookie-Consent-Kategorie "AI-Trip-Planner" hinzufügen.
**Entscheidung pending:** Überhaupt bauen? Laut Proposal Phase-3-Feature mit hohem Aufwand (~6 PT) und DSGVO-Komplexität. Alternative: komplett skippen.

### 13. Phase-2-Core-Sections, die nicht gebaut wurden
Alle vier laut Proposal geplanten, aber zurückgestellt:
- `destination-card` — Glass-Morphism-Info-Panel auf Destinations. Aktuell reicht `section-editorial-hero`.
- `product-glass` — PDP Media-Gallery + Glass-Price-Card. Aktuelle Shopify-Product-Section funktioniert.
- `bundle-builder` — interaktiver Konfigurator mit Live-Preisanzeige. Aktuelle `section-bundle-spotlight` als statische Darstellung reicht.
- `mega-footer` — Multi-Column + IG-Grid. Aktueller Story-Theme-Footer ist funktional.

**Entscheidung:** Vor Bau jeweils Design-Ziel + konkreten UX-Benefit vs. Aufwand durchsprechen.

### 14. Phase-3-Wow-Sections
Alle vier laut Proposal, bewusst nicht gebaut:
- `cinematic-hero` — Video-Loop-Hero
- `product-showcase-pin` — Pinned Scrollytelling
- Echtes `reels-grid` — 9:16 Vertical-Video-Grid (deine inline-YouTube-Version ersetzt das bereits)
- `itinerary-ai` — siehe Punkt 12

**Entscheidung:** Separat pro Section, wenn du konkreten Need siehst.

---

## 📌 Sanity-Check vor Live-Kommunikation

Bevor du die Migration als "fertig" kommunizierst, wäre eine manuelle QA-Runde sinnvoll:

- [ ] Jede Destination-Hub öffnen, Reels testen (Play, Fullscreen, Ton)
- [ ] Bali-Hub Hero-Bild tauschen (siehe Punkt 3)
- [ ] Collection-Seite `/collections/presets` aufrufen, Pagination + Sort + Filter testen
- [ ] `/pages/reiseziele` aufrufen, Destination-Cards klicken
- [ ] Checkout-Flow: Cart → Checkout, Editorial-Intro auf Cart nicht störend?
- [ ] Mobile-Layout: Alle Heros auf iPhone-Breakpoint
- [ ] 404 aufrufen (`/irgendwas-das-nicht-existiert`), Back-CTAs testen

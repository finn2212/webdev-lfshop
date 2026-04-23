# Content- & Setup-Checkliste

Was Finn vorbereitet, damit Phase 0–3 ohne Wartezeiten durchlaufen.

> **Branch-Strategie**
> - Hauptbranch: `redesign-2030` (vom `main` abgezweigt)
> - Feature-Branches: `redesign-2030/<phase>-<thema>` (z. B. `redesign-2030/p0-cookie-consent`)
> - Merge-Richtung: Feature → `redesign-2030`. **Niemals** `redesign-2030` → `main`, bis Phase 3 abgeschlossen und freigegeben.
> - Live-Theme bleibt das aktuelle Story-Theme. Phase 0/1 deployt **direkt aufs aktuelle Theme** über das Story-Theme-Duplicate "Redesign-Staging". Phase 2/3 nutzt ein zweites Theme "Horizon-Redesign", das im Theme-Editor parallel verfügbar ist und am Ende per Klick aktiviert wird.

---

## 1 — Tech-Zugänge (sofort, blockierend)

| # | Was | Wofür | Wie liefern |
|---|---|---|---|
| 1.1 | **Shopify CLI Theme-Token** (Storefront API + Theme Edit) | Theme-Push/-Pull | `shopify theme dev`-Setup + Custom-App im Shopify-Admin mit Theme-Scope; Token in lokales `.env` |
| 1.2 | **GitHub-Push-Rechte** auf `webdev-lfshop` | Branch-Workflow | bereits vorhanden ✓ |
| 1.3 | **Shopify Admin-Zugang** für Section-Tests | Theme-Editor-Tests | Bestehender Account reicht |
| 1.4 | **Zugang zu Klaviyo / Mailchimp / Newsletter-Tool** | Lead-Magnet, Reviews-Mail, Phase-1-Bundles | API-Key + Account-Login |
| 1.5 | **Aktueller Cookie-Consent-Provider** (`gettermscmp`) | Migration sauber abschalten | Login + Vertragsstatus |
| 1.6 | **GA4-Property-Zugriff** | Discovery-Analyse | E-Mail mit Editor-Rolle hinzufügen |
| 1.7 | **Shopify Analytics** | Top-Produkt-/Kanal-Analyse | Bestehender Admin reicht |

## 2 — Tech-Zugänge (Phase 2/3, später blockierend)

| # | Was | Wofür | Wann |
|---|---|---|---|
| 2.1 | **Cloudflare Account** | Worker für AI-Itinerary, Edge-Routing, R2-Cache | Phase 3 Start |
| 2.2 | **Anthropic API-Key** (Claude Haiku) | AI-Itinerary | Phase 3 Start |
| 2.3 | **Replicate API-Token** | Build-Time-Hero-Videos & Mood-Boards | Phase 2 Start |
| 2.4 | **Shopify Markets** aktiviert (EN) | EN-Lokalisierung | Phase 1 |
| 2.5 | **Translate & Adapt App** installiert | EN-Übersetzung | Phase 1 |
| 2.6 | **Judge.me oder Loox** (Reviews-App) | Reviews-Sektion auf PDPs | Phase 0 |

---

## 3 — Daten & Insights (Phase 0 — Discovery-Woche)

Damit die Persona-Hypothesen aus V1/V2 mit echten Zahlen abgeglichen werden:

| # | Was | Wie liefern | Wann |
|---|---|---|---|
| 3.1 | **GA4-Export 90 Tage**: Top-10-Trafficquellen, Top-10-Landing-Pages, Mobile-Anteil, Demografie (falls aktiviert) | CSV oder Looker-Studio-Link | Tag 1 |
| 3.2 | **Shopify-Bestseller**: Top-10 nach Umsatz, Top-10 nach Stückzahl, Top-5 nach Marge | CSV-Export aus Admin | Tag 1 |
| 3.3 | **Wiederkauf-Rate** der letzten 12 Monate | Shopify Admin → Reports → Customers | Tag 1 |
| 3.4 | **Refund-Quote** pro Produkt | Shopify Admin → Reports | Tag 1 |
| 3.5 | **5 Käufer** für 20-min-Telefon-Interview (am liebsten: 2 Family, 2 Couple, 1 Solo) | E-Mail-Liste mit Kontaktinfo + Termin-Link | Tag 2–4 |
| 3.6 | **TikTok-/Instagram-Insights**: Top-10-Reels nach Shop-Klicks | Screenshots oder Export | Tag 2 |
| 3.7 | **Heatmap-Tool freigeben**: Hotjar oder MS Clarity (kostenlos) auf Site einbauen lassen | Domain in Tool freigeben | Tag 1 |
| 3.8 | **Aktueller Hero-Claim**: Wie viele Varianten habt ihr in den letzten 12 Monaten getestet? Mit welchem Ergebnis? | Notion/Doku oder kurze Sprach-Notiz | Tag 1 |
| 3.9 | **Marge pro Produktkategorie** (Maps vs. Presets vs. Bundles) | Buchhalterische Schätzung reicht | Tag 3 |

---

## 4 — Produkt-Content (Phase 1 — Trust- & PDP-Pivot)

Pro **Top-10-Produkt** (zu identifizieren in Phase 0):

### 4.1 Bilder

| Was | Anzahl | Format | Hinweis |
|---|---|---|---|
| Mockup-Bilder | 4–6 pro Produkt | 4:5 oder 1:1, min. 2000 px Kante | Kann via Replicate/Photoshop generiert werden — siehe §7 |
| Lifestyle-Bilder | 2–3 pro Produkt | Quer/Hoch | Eigene Aufnahmen bevorzugt |
| Detail-Shots (Karten: Faltung, Druck, Größenvergleich; Presets: UI-Screenshot Lightroom) | 2 pro Produkt | 1:1 | Eigene Aufnahmen |

### 4.2 Vorher-/Nachher-Slider (nur Presets)

- **Mind. 5 Vorher-/Nachher-Paare pro Preset** (RAW + edited als JPG, gleiche Auflösung)
- Sortiert nach Mood: 1× Strand, 1× Jungle, 1× City, 1× Portrait, 1× Sunset
- 2000 px Kantenlänge

### 4.3 Vertikale Reels

- **1 Reel pro Top-10-Produkt** (15–30 Sek, 9:16, MP4 H.264 oder AV1 mp4)
- Inhalt: Use-Case-Demo (Karte unterwegs einsetzen, Preset im Lightroom anwenden, Bundle-Unboxing)
- **Aus existierenden TikTok/Reels-Posts re-cutten ist okay** — schneller und authentischer als neu drehen

### 4.4 Texte / Daten

| Feld | Inhalt |
|---|---|
| **Update-Datum** | Wahrheitsgemäß: Wann wurde der Guide/die Karte zuletzt überarbeitet? `YYYY-MM` |
| **Nächstes geplantes Update** | `YYYY-MM` (mind. 1× jährlich, siehe V2 §8.1) |
| **POI-Anzahl pro Karte** | "342 Spots auf einer Karte" — konkret |
| **Lieferumfang** | "PDF + ePub + Google Maps Liste + Apple Wallet"-Liste |
| **Zielgruppe explizit** | "Für Paare und Solo-Reisende, weniger geeignet für Familien mit Kleinkindern" — Ehrlichkeit konvertiert |
| **FAQ pro Produkt** | 5 häufigste Käufer-Fragen mit Antwort |

### 4.5 Bundle-Content

| Bundle | Was muss kuratiert werden |
|---|---|
| **Honeymoon-Bundle** | Welche Produkte? Welcher Preis (= Bundle-Rabatt)? Welche zusätzlichen Inhalte (Date-Night-Liste, Hotel-Empfehlungen)? |
| **Family-Slow-Travel-Bundle** | Selbe Felder |
| **(optional) Solo-Adventure-Bundle** | Selbe Felder, _nur falls Solo-Content existiert_ |

### 4.6 Mini-Preset für Lead-Magnet

- 1× Lightroom-Preset (.dng oder .xmp) als Email-Opt-In-Magnet
- Plus 1-Seiten-PDF "How to install" (kann simpel gehalten sein)

---

## 5 — Brand-Content (Phase 2 — Theme-Aufbau)

### 5.1 Hero-Material pro Top-Destination

| Destination | Was | Format |
|---|---|---|
| Bali | 1× Cinematic-Video (15–20 s, 4K, H.265 oder AV1 mp4), kein Ton nötig | 16:9 + 9:16 Cut |
| Südafrika | dito | dito |
| Bangkok / Thailand | dito | dito |
| _(weitere?)_ | dito | dito |

**Inhalt:** Drohnenflug-Establishing-Shots, Sonnenuntergang-Loops, Cinemagraph-fähige Szenen (z. B. wehende Palmen mit ruhigem Hintergrund). **Eigene Aufnahmen aus dem Archiv sind Gold** — wir können bei Bedarf via Replicate ergänzen (siehe §7).

### 5.2 Editorial Foto-Editorials pro Destination

- 8–10 Bilder pro Destination, Editorial-Quality (RAW oder hohe JPG, mind. 3000 px)
- Mix: Landschaft, Detail, Behind-the-scenes von Laura/Finn bei der Recherche
- Konsistente Farbgebung (dürfen nachbearbeitet sein, sollten nicht "Standard-Insta-Filter" wirken)

### 5.3 "Laura's Note" / "Finn's Field-Log"

- 8–12 kurze Quotes (1–3 Sätze, persönlicher Tonfall)
- Pro Destination + Über-uns-Seite + ausgewählte PDPs
- Beispiel: _"Ich war drei Mal in Ubud und habe erst beim dritten Besuch verstanden, warum man ihn nicht auf einen Tag reduzieren kann. — Laura"_

### 5.4 Stories / Long-Form-Artikel

- 5–8 redaktionelle Texte für `/stories` (existieren teilweise schon im Blog)
- Aufbereitung: Eyecatcher-Bild + 800–1500 Wörter + 4–6 Inline-Bilder + 1–2 zugehörige Produkt-Cards

---

## 6 — KI-Itinerary-Content (Phase 3)

Damit der AI-Planer nicht halluziniert, sondern aus eurem kuratierten Korpus zitiert:

### 6.1 POI-Datenbank pro Destination als CSV oder JSON

```
name,lat,lng,category,short_description,price_level,best_for,source_product
"Tegallalang Reisterrassen",-8.4317,115.2776,nature,"Stufenförmige Reisfelder bei Ubud, ideal früh morgens",free,couple|family|solo,bali-maps
"Sa'mesa",-8.5093,115.2624,restaurant,"Italienisches Bistro mit Bali-Twist, Reservierung empfohlen",$$$,couple,bali-maps
...
```

- Pro Destination: 50–200 POIs
- Felder: `name, lat, lng, category, short_description, price_level, best_for, source_product`
- Kategorien: `nature, restaurant, cafe, beach, temple, activity, sunset, hotel, market, hidden_gem`
- `best_for`: kombinierbar mit `|` (z. B. `couple|family`)

### 6.2 Beispiel-Itineraries (3 Tage, 7 Tage, 14 Tage)

- 2–3 Beispiel-Routen pro Destination als Markdown
- Dienen als Few-Shot-Beispiele im Claude-Prompt
- Format: Tag-für-Tag mit POI-Refs, Begründung, Tagesthema

---

## 7 — Replicate / KI-Generierung

Was wir damit machen (nur Build-Time, keine Runtime-User-Generierung — siehe V2 §7):

| Use-Case | Modell | Input nötig | Wann |
|---|---|---|---|
| **Hero-Video-Loops** als Fallback wo eigene Aufnahmen fehlen | `minimax/video-01` oder `kling-v1.6` | Text-Prompt + 1–2 Style-Reference-Images | Phase 2 |
| **Mood-Board-Bilder** für Destinationen ohne ausreichendes Foto-Material | `black-forest-labs/flux-1.1-pro` | 5–10 Style-Reference-Images im Laura/Finn-Look | Phase 2 |
| **Lookbook-Fallbacks** für leere Theme-Editor-Slots | `flux-schnell` | Generischer Prompt | Phase 2 |
| **Mockup-Bilder** für PDPs (Karte gefaltet auf Tisch, Karte digital auf Phone) | `flux-1.1-pro` mit Product-LoRA-optional | Produkt-Foto + Szenen-Prompt | Phase 1–2 |

### Was Finn dafür liefert

- **Style-Referenzen-Pack:** 10–20 eigene Lieblingsbilder, die den "Laura & Finn"-Look definieren (warm, körnig, natürlich, weiches Licht). Als ZIP.
- **Replicate API-Token**
- **Marken-Verbote:** Liste der No-Go's (z. B. "keine Stockfoto-Anmutung", "keine Menschen mit erkennbaren Gesichtern", "kein neon")

### Output-Workflow

- Generierung läuft in einem GitHub-Action-Job auf einem separaten Branch `redesign-2030/ai-assets`
- Generierte Assets liegen in `assets/generated/` (separate Subfolder)
- Manuelle Freigabe pro Asset durch Laura/Finn vor Merge

---

## 8 — Schriftarten

**Vorschlag: 100 % Open Source, alle via [Fontsource](https://fontsource.org/) self-hosted in `/assets`** — kein Google-Fonts-CDN-Aufruf (DSGVO-Plus).

| Rolle | Font | Lizenz | Format | Quelle |
|---|---|---|---|---|
| **Display** (Headlines, Hero) | **Fraunces Variable** | OFL | woff2 | [fontsource.org/fonts/fraunces](https://fontsource.org/fonts/fraunces) |
| **Body / UI** | **Inter Variable** | OFL | woff2 | [fontsource.org/fonts/inter](https://fontsource.org/fonts/inter) |
| **Hand / Signaturen** ("Laura's Note") | **Caveat Variable** | OFL | woff2 | [fontsource.org/fonts/caveat](https://fontsource.org/fonts/caveat) |
| **Mono** (POI-Codes, Koordinaten) | **JetBrains Mono Variable** | OFL | woff2 | [fontsource.org/fonts/jetbrains-mono](https://fontsource.org/fonts/jetbrains-mono) |

**Variable Fonts** = eine Datei deckt alle Weights ab (kleiner als 4 separate Files). Fraunces hat sogar SOFT/WONK-Achsen, mit denen sich der Editorial-Charakter feinjustieren lässt.

**Lizenz-Budget: 0 €.** (V1 hatte 1.500–3.000 € für Editorial New + Tiempos vorgesehen — gestrichen.)

**Was Finn tun muss:**
- Nichts. Ich lade die woff2-Dateien direkt von Fontsource und checke sie unter `assets/fonts/` ein.

**Optional, falls dir Fraunces zu klassisch ist:**
- **PP Editorial New (Pangram Pangram)** — Premium, ~600 € one-time, sehr edler Look (was Mia/Sorelle-Amore-mäßig anspricht)
- **GT Sectra (Grilli Type)** — Premium, ~1.500 €, magazin-klassisch
- **Söhne (Klim Type)** als Alternative für Body — Premium, ~600 €

→ Sag Bescheid, ob du dabei bleiben willst (Open-Source) oder eines der Premium-Sets möchtest. Empfehlung: **Mit Fraunces starten, im Live-A/B-Test gegen Premium-Variante stellen, wenn überhaupt nötig.**

---

## 9 — Cookie-Banner / Consent-Manager

**Empfehlung: [`vanilla-cookieconsent` v3 von orestbida](https://github.com/orestbida/cookieconsent)**

| Kriterium | vanilla-cookieconsent v3 |
|---|---|
| Lizenz | MIT (Open Source) |
| Größe | ~14 kB gzipped |
| Dependencies | Keine |
| TCF v2.2 | ❌ (für Pure-Owned-Site nicht nötig — TCF brauchst du nur für Programmatic-Ad-Auctions) |
| GDPR / TTDSG-konform | ✅ |
| Granular per Kategorie + per Service | ✅ (necessary, analytics, marketing, ai) |
| Multi-Language | ✅ (DE / EN / IT etc. out of the box) |
| Async ladbar | ✅ — kein Renderblocking |
| Theme-Tokens via CSS-Variablen | ✅ (passt zu unserem OKLCH-Token-System) |
| Programmierbare Service-Definitionen | ✅ (Klaviyo, Anthropic, Reviews etc. einzeln steuerbar) |
| Aktiv gepflegt 2026 | ✅ (regelmäßige Releases) |

**Alternative für volle Service-Catalog-Verwaltung (komplexer Bedarf):**
- **[Klaro!](https://klaro.org/)** von KIProtect — auch MIT, ~30 kB, hat ein vollständiges Service-Definitions-Konzept (jeder Tracker als JSON-Service deklariert). Geeignet, wenn ihr später viele Apps/Tracker einbaut.

**Beide ersetzen `staging.gettermscmp.com` und sind self-hosted aus eurem Theme.**

**Was Finn tun muss:**
- Entscheiden: `vanilla-cookieconsent` (mein Default) oder Klaro!
- Aktuelle Tracker-Liste liefern (siehe §1.5): Was läuft heute alles über gettermscmp? Klaviyo? Pinterest-Pixel? Meta-Pixel? GA4? — daraus baue ich die Service-Definition.

---

## 10 — Rechtliches

| # | Was | Format |
|---|---|---|
| 10.1 | Aktuelle **Datenschutzerklärung** | URL oder Markdown-Export |
| 10.2 | Aktuelles **Impressum** | URL oder Markdown-Export |
| 10.3 | Aktuelle **AGB** | URL oder Markdown-Export |
| 10.4 | Verträge mit aktuellen Daten-Verarbeitern (Klaviyo, ggf. Stripe) | Liste, AVVs falls vorhanden |
| 10.5 | **Bei Phase 3 zwingend:** AVV mit Anthropic + Datenschutz-Folgenabschätzung (Vorlage stelle ich) | Wird gemeinsam erstellt |

---

## 11 — Redaktionelle Klärungen

(Aus dem Challenger-Pushback — wichtig für Brand-Konsistenz)

| # | Frage | Antwort von Finn nötig |
|---|---|---|
| 11.1 | Wie viel Sponsored-Content läuft auf Instagram parallel zum Shop? Wie wollen wir das in den Redaktionsprinzipien adressieren? | Vor Phase 1 |
| 11.2 | Wer pflegt die Update-Roadmap pro Guide? Realistische Kapazität pro Quartal? | Vor Phase 1 |
| 11.3 | Welcher Content-Buffer existiert für 4–6-Wochen-Reise-Pause-Szenarien? | Vor Phase 1 |
| 11.4 | Soll Solo-Adventure als Brand-Spur aufgebaut werden? Wenn ja, wie ist der Content-Plan? | Vor Phase 1 |
| 11.5 | Affiliate-Geschäft (welche Programme? wie hoch ist der Umsatzanteil?) | Vor Phase 1 |

---

## 12 — Was Finn als nächstes tut

**Diese Woche (Phase 0 Vorbereitung, ~2 h Aufwand):**

1. **Branch-Setup verifizieren** (ich habe `redesign-2030` bereits angelegt + Analyse committed). ✓
2. **Tech-Zugänge sammeln** (§1.1, 1.4, 1.5, 1.6) — am liebsten in einem 1Password-Vault oder verschlüsseltem Doc.
3. **Antwort auf**:
   - Cookie-Banner: `vanilla-cookieconsent` (Default) oder Klaro!?
   - Schriftarten: Fraunces (Open Source, kostenlos) oder Premium-Set (Editorial New / GT Sectra)?
   - Top-3-Bestseller, an denen wir Phase 1 starten? (oder warten auf GA4-Analyse?)
4. **5 Käufer für Interview** identifizieren (§3.5) — Termine in der nächsten Woche.
5. **Aktuelle Tracker-Liste** zusammenstellen (§9).

Sobald §1.1 + §1.4 + §1.5 + §1.6 + §9 (Tracker-Liste) da sind, kann ich **Phase 0** komplett durchziehen — Cookie-Consent-Tausch, Reviews-Setup, Hero-A/B, Update-Daten-Banner.

---

## 13 — Was du NICHT vorab brauchst

(Damit du nicht überfordert bist — diese Sachen kommen später iterativ)

- Cinematic-Hero-Videos: Phase 2 (in 4 Wochen)
- POI-Datenbank für AI-Itinerary: Phase 3 (in 10 Wochen)
- Anthropic-API-Key + Cloudflare-Account: Phase 3
- Replicate-Token: Phase 2
- EN-Übersetzungen: Phase 1, ich arbeite mit DeepL-Vorlage und du machst nur Korrektur

So bleibt der Aufwand für dich zu Beginn unter 4 Stunden.

# Lokalisierung DE → EN (Phase 1)

Das Story-Theme ist intern **englisch first** — `locales/en.default.json` ist der Default, `locales/de.json` die deutsche Übersetzung. Reine Theme-Strings (Buttons, FAQ-Labels, Cart-Texts) sind also bereits EN-tauglich.

Was übersetzt werden muss, sind die **neuen Custom-Strings** aus Phase 0/1 (Trust-Block, Cookie-Banner, Bundle-Landings, Lead-Magnet, Principles) sowie der **redaktionelle Content** (Produktbeschreibungen, Page-Body, Section-Settings).

## Setup-Reihenfolge im Shopify-Admin

1. **Settings → Markets → Add market** → "International" mit Country = "United States" + "United Kingdom" + "Australia" + ...
2. **Settings → Languages → Add language** → "English" als sekundäre Sprache zur Storefront hinzufügen.
3. **App-Store → "Translate & Adapt"** (Shopify-eigene App, kostenlos bis 2 Sprachen) installieren.
4. **In Translate & Adapt** alle neuen Strings durchgehen und übersetzen — die App erkennt automatisch Section-Settings, Page-Content, Produkttexte. Die hardcodierten DE-Strings in unseren Custom-Sections kommen unter "Theme content" → Übersetzung pro String.

## Vorab-Übersetzungen für die wichtigsten Custom-Strings

> Best-Effort, ohne Brand-Voice-Korrektur. Vor Live: einmal mit native English speaker drüberlesen lassen.

### Cookie-Consent

EN-Strings sind bereits in [snippets/cookie-consent.liquid](../snippets/cookie-consent.liquid) hinterlegt — Translate & Adapt nicht nötig.

### Trust-Signals ([snippets/trust-signals.liquid](../snippets/trust-signals.liquid))

| DE | EN |
|---|---|
| Letzte Überarbeitung: {{ Monat Jahr }} | Last updated: {{ month year }} |
| Nächstes geplantes Update: {{ Monat Jahr }}. | Next planned update: {{ month year }}. |
| {{ N }} kuratierte Spots. | {{ N }} curated spots. |
| Käufer mit Konto bekommen neue Versionen automatisch per E-Mail. | Buyers with an account get new versions automatically by email. |
| 14 Tage Geld zurück | 14-day money-back |
| Wenn der Guide dich nicht weiterbringt, bekommst du dein Geld zurück. Ohne Wenn und Aber. | If the guide doesn't move you forward, you get your money back. No questions asked. |
| Was du bekommst | What you get |

### Bundle-Spotlight ([sections/section-bundle-spotlight.liquid](../sections/section-bundle-spotlight.liquid))

Editor-getriebene Strings — direkt in Translate & Adapt pro Page übersetzen.

| DE | EN (Default-Vorschlag) |
|---|---|
| Honeymoon Bundle | Honeymoon Bundle |
| Für eure Reise. | For your trip. |
| Bundle ansehen | View bundle |
| Spart 20 % | Save 20% |
| Was drin ist | What's inside |
| Komponenten im Bundle | Bundle contents |
| 14 Tage Geld zurück · Updates für 12 Monate · Sofort-Download | 14-day money-back · 12 months of updates · Instant download |

### Honeymoon Page ([templates/page.honeymoon.json](../templates/page.honeymoon.json))

| DE | EN |
|---|---|
| Honeymoon Edition | Honeymoon Edition |
| Eure Reise. Kuratiert. | Your trip. Curated. |
| Eine Auswahl unserer Karten und Guides, zusammengestellt für Paare auf ihrer Hochzeitsreise. Mit Fokus auf ruhige Strände, kleine Restaurants und Sonnenuntergänge, die niemand auf Instagram kennt. | A curated selection of our maps and guides, put together for couples on their honeymoon. Focused on quiet beaches, small restaurants and sunsets nobody on Instagram has been to. |
| Drei Komponenten, ein Reise-Begleiter | Three components, one travel companion |
| Versprechen | Our promise |
| Warum wir glauben, dass das funktioniert | Why we think this works |
| Drei Versprechen, die wir auf jeder Honeymoon-Karte einlösen. | Three promises we keep on every honeymoon map. |

### Family Slow-Travel Page ([templates/page.family-slow-travel.json](../templates/page.family-slow-travel.json))

| DE | EN |
|---|---|
| Family Slow-Travel | Family Slow-Travel |
| Reisen mit Kind. Ohne Stress. | Travel with kids. Without the stress. |
| Wir reisen seit 2022 als Familie – mit Tilda, mittlerweile drei Jahren, und einer Lernkurve, die wir hier mit euch teilen. ... | We've been travelling as a family since 2022 — with Tilda, now three years old, and a learning curve we're sharing with you here. ... |
| Drei Komponenten, kuratiert für Familien | Three components, curated for families |
| Was wir anders machen | What we do differently |
| Drei Punkte, die uns von generischen Family-Travel-Listen unterscheiden. | Three points that set us apart from generic family-travel lists. |

### Editorial Principles ([templates/page.redaktionsprinzipien.json](../templates/page.redaktionsprinzipien.json))

Slug für englische Variante: **`/editorial-principles`** (nicht 1:1 übersetzen).

| DE | EN |
|---|---|
| Wofür wir stehen | What we stand for |
| Unsere Redaktionsprinzipien | Our editorial principles |
| Wir verkaufen Karten und Guides, in denen wir selbst gewesen sind. Damit das so bleibt, gelten folgende Regeln – für uns, nicht für unsere Leser. | We sell maps and guides we've been in ourselves. To keep it that way, the following rules apply — to us, not to our readers. |
| Selbst gewesen | We've been there |
| Keine bezahlten Top-Listen | No paid placements |
| Affiliates kennzeichnen wir | We label affiliates |
| Updates statt Re-Releases | Updates, not re-releases |
| Trennung von Social und Shop | Social and shop kept separate |
| 14 Tage Geld zurück | 14-day money-back |

### Lead-Magnet ([sections/section-lead-magnet.liquid](../sections/section-lead-magnet.liquid))

| DE | EN |
|---|---|
| Geschenk für dich | A small gift |
| Hol dir unser Mini-Preset. | Get our mini preset. |
| Ein kostenloses Lightroom-Preset aus unserem Bali-Sommer. ... | A free Lightroom preset from our Bali summer. ... |
| Mini-Preset holen | Get the mini preset |
| Bitte bestätige deine E-Mail – der Download-Link ist unterwegs. | Please confirm your email — the download link is on its way. |
| Du kannst dich jederzeit abmelden. | You can unsubscribe at any time. |

### Reels ([sections/section-reels.liquid](../sections/section-reels.liquid))

| DE | EN |
|---|---|
| Live aus dem Trip | Live from the trip |
| Reels von Laura & Finn | Reels from Laura & Finn |
| Tipp das Video an, um Ton und Vollbild zu öffnen. | Tap the video to open sound + fullscreen. |
| Zum Produkt | View product |

### Before/After ([sections/section-before-after.liquid](../sections/section-before-after.liquid))

| DE | EN |
|---|---|
| Mit & ohne Preset | With & without preset |
| Sieh den Unterschied. | See the difference. |
| Schiebe den Regler. Links: dein Original. Rechts: das Bild mit unserem Lightroom-Preset. | Drag the slider. Left: your original. Right: the same shot with our Lightroom preset. |
| Original | Original |
| Mit Preset | With preset |

## Was NICHT übersetzt werden muss (jetzt)

- Storefront-Standard-Strings (Cart, Checkout, Account) — Story-Theme liefert EN bereits.
- Produkt-Titel/-Beschreibungen — kommt in der Translate-&-Adapt-App pro Produkt.
- Blog-Artikel — kommen pro Artikel in der Translate-&-Adapt-App.
- URL-Handles werden NICHT übersetzt (z. B. `/honeymoon` bleibt `/honeymoon`). Optional: separate slugs in Markets aktivieren — dafür dann `/honeymoon` ↔ `/honeymoon` und `/redaktionsprinzipien` ↔ `/editorial-principles`.

## Phase-2-TODO

In der Horizon-Migration werden alle hardcodierten Strings aus den Custom-Sections durch `{{ 'lf.* ' | t }}` ersetzt und in `locales/de.json` + `locales/en.default.json` extrahiert. Das macht die Strings für Translate & Adapt App leichter auffindbar und neue Sprachen (FR, IT) lassen sich ohne Theme-Edit hinzufügen.

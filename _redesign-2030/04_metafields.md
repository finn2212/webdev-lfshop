# Metafield-Setup im Shopify-Admin

Damit das Trust-Signals-Snippet (`snippets/trust-signals.liquid`) etwas rendert, müssen die folgenden **Product-Metafields** im Shopify-Admin einmalig definiert werden.

## Anlegen

**Shopify Admin → Settings → Custom data → Products → Add definition**

Namespace und Schlüssel müssen exakt so sein, sonst greift das Snippet nicht.

| Feld | Namespace | Key | Type | Beschreibung |
|---|---|---|---|---|
| Letzte Überarbeitung | `lf` | `last_updated` | **Date** | Wann wurde der Guide/die Karte zuletzt inhaltlich überarbeitet? Format: TT.MM.JJJJ |
| Nächstes geplantes Update | `lf` | `next_update` | **Date** | Wann ist das nächste Update geplant? Optional. |
| POI-Anzahl | `lf` | `poi_count` | **Single line text** oder **Integer** | Optional: "342 Spots auf einer Karte" — wird hinter dem Update-Datum angezeigt. |
| Lieferumfang (Pills) | `lf` | `delivery_items` | **Single line text** | Komma-getrennte Liste, z. B. `PDF, ePub, Apple Wallet, Google Maps Liste`. Wird als Pill-Tags gerendert. |

## Befüllung für Phase-0-Bestseller

Nach dem Anlegen der Definitionen pro Produkt füllen:

| Produkt | last_updated | next_update | poi_count | delivery_items |
|---|---|---|---|---|
| **Bali Starter Kit** | _aktuelles Überarbeitungsdatum_ | _Q3 2026_ | _z. B. 250 Spots_ | `PDF, ePub, Google Maps Liste, Apple Wallet` |
| **Bali Reise-Karte (bali-maps)** | _aktuelles Überarbeitungsdatum_ | _Q3 2026_ | _z. B. 342 Spots_ | `Hochauflösendes PDF, Google Maps Liste` |
| **Südafrika Travel Guide (sudafrika-guide)** | _aktuelles Überarbeitungsdatum_ | _Q4 2026_ | _z. B. 180 Spots_ | `PDF, ePub, Tagesrouten, Hotelliste` |

> Wichtig: `last_updated` ist der einzige Wert, der das Update-Banner überhaupt sichtbar macht. Ohne diesen Wert rendert nur die Geld-zurück-Garantie.

## Überprüfung

1. Im Shopify-Admin auf das Produkt → ganz unten unter "Metafelder" sollten die 4 Felder aus dem `lf`-Namespace erscheinen.
2. Im Theme-Preview die PDP öffnen — der Trust-Block erscheint direkt unter dem "In den Warenkorb"-Button.
3. Geld-zurück-Garantie wird **immer** gezeigt (ist nicht metafield-gesteuert). Falls du sie auf einem Produkt unterdrücken willst, sag Bescheid — dann mache ich daraus ein optionales Metafield `lf.disable_money_back` (Boolean).

## Spätere Erweiterung (Phase 1+)

In Phase 1 kommen drei weitere Metafields dazu, die das Trust-Snippet automatisch lesen wird:

| Feld | Namespace | Key | Type | Wofür |
|---|---|---|---|---|
| Bestseller-Badge | `lf` | `bestseller_rank` | Integer | Top-3 wird im Trust-Block prominent gelabelt |
| Reviews-Aggregat | `lf` | `review_summary` | JSON | Wenn Judge.me JSON-Output nicht reicht |
| Update-Verlauf | `lf` | `changelog` | Multi-line text (Markdown) | Klappbare Update-Historie ("Was wurde im April 2026 geändert?") |

Diese Felder kommen mit dem Trust-Pivot in Phase 1 — Phase 0 startet schlank.

#!/usr/bin/env bash
# Generates editorial 1:1 product imagery for the Bestseller-Row.
# v3: explicit "NO text, NO maps with labels" — books with completely blank
# covers, phones showing only abstract pin icons (not actual maps that AI
# would render with garbled place names + wrong geographic outlines).
set -eo pipefail

OUT_DIR="_redesign-2030/generated-images/products"
mkdir -p "$OUT_DIR"

GEN="$HOME/.claude/skills/generate-image/scripts/generate.sh"

STYLE_BASE="Editorial flat-lay product photography, magazine style like Cereal Magazine, Kinfolk and Apartamento. Shot from directly above. Soft natural window light from one side, gentle 35mm film grain, muted color palette, shallow depth of field on the surrounding props. Subject is centered, surrounded by carefully styled travel objects with intentional negative space. 1:1 square composition. Avoid HDR, oversaturated colors, stock-photo cliches, busy mockup-overlays, sharp digital perfection, AI-synthetic look."

NO_TEXT="CRITICAL CONSTRAINT: absolutely no readable text, no letters, no words, no place names, no numbers, no labels, no logos, no map labels anywhere in the image. All printed surfaces are blank or use abstract patterns only."

bash "$GEN" \
  --aspect "1:1" --model "flux-1.1-pro-ultra" \
  --out "$OUT_DIR/suedafrika-guide.jpg" \
  --prompt "A printed hardcover travel guidebook with a smooth cream off-white cover. The cover is completely blank — no embossing, no debossing, no titles, no logos, no symbols, no markings of any kind, just a plain matte cover. The book lies flat on a weathered solid-oak table. Around the book: a small ceramic bowl with loose rooibos tea leaves, an aged brass compass, two dried king-protea flowers and fynbos sprigs (Cape flora), a folded khaki linen napkin with a subtle Shweshwe geometric pattern at one edge, a small hand-carved wooden rhino figurine, a small bowl with dried biltong strips, a folded leather strap. Warm morning light from the left. Muted palette of cream, ochre, dusty olive-green, brass, terracotta. ${STYLE_BASE} ${NO_TEXT}"

bash "$GEN" \
  --aspect "1:1" --model "flux-1.1-pro-ultra" \
  --out "$OUT_DIR/kapstadt-karte.jpg" \
  --prompt "A modern smartphone lying on a worn dark-wood tabletop. The phone screen is dark and minimal — it shows only a single soft glowing red location pin icon centered on a plain dark teal abstract background. No map outline, no roads, no streets, no place names, no labels, no compass rose, just one pin and ambient glow. Around the phone: a folded grey-blue linen napkin, an aged brass compass, a small white porcelain cup with an orange-pink sundowner cocktail with ice, a small ceramic bowl with biltong strips, a folded vintage-looking paper showing only abstract topographic contour lines (no labels, no names), a single dried king-protea flower, a wine cork. Soft golden hour light from the left. Muted blue-grey, ochre, terracotta, warm wood, cream palette. ${STYLE_BASE} ${NO_TEXT}"

bash "$GEN" \
  --aspect "1:1" --model "flux-1.1-pro-ultra" \
  --out "$OUT_DIR/bali-starterkit.jpg" \
  --prompt "A printed hardcover travel guidebook with a smooth sage-green cover. The cover is completely blank — no embossing, no debossing, no titles, no logos, no symbols, no markings of any kind, just a plain matte cover. The book lies on a teak wood surface. Around the book: a small woven palm-leaf canang sari offering basket with three white frangipani petals and a single orange marigold, an aged brass key with a plain leather tag (blank, no text), a worn caramel leather notebook, closed and blank, a single bamboo straw, a small ceramic bowl with cooked white jasmine rice, a sprig of fresh pandan leaves, a folded cream linen napkin with a subtle indigo batik pattern at one edge, a small hand-carved wooden Balinese figurine. Soft tropical morning window light from the left. Muted sage green, warm teak brown, ivory, soft saffron palette. ${STYLE_BASE} ${NO_TEXT}"

bash "$GEN" \
  --aspect "1:1" --model "flux-1.1-pro-ultra" \
  --out "$OUT_DIR/bali-karte.jpg" \
  --prompt "A modern smartphone on a teak wood surface. The phone screen is minimal — it shows only a single soft glowing red location pin icon centered on a plain dark teal abstract background. No map outline, no island shape, no roads, no streets, no place names, no labels, just one pin and ambient glow. Around the phone: a small woven palm-leaf canang sari offering basket with white frangipani petals and a marigold, a fresh white frangipani flower lying loose, a small white porcelain cup of dark coffee, a folded ivory linen napkin with subtle indigo batik pattern, an aged brass house key with a plain leather tag (blank, no text), a small bamboo cup, fresh pandan leaves trailing in from one edge, a single piece of fresh ginger root, a small hand-carved wooden Balinese mask. Soft tropical morning window light from the left. Muted teal, sage, warm teak, soft saffron, ivory palette. ${STYLE_BASE} ${NO_TEXT}"

echo
echo "Done. Files:"
ls -lh "$OUT_DIR"

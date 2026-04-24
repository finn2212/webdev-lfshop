#!/usr/bin/env bash
# Generates 4 destination hero/card images via Replicate (Flux 1.1 Pro Ultra)
# Output: _redesign-2030/generated-images/<destination>.jpg
#
# Usage: source .env && bash _redesign-2030/generate-destination-images.sh
# Cost:  ~$0.06 per image, ~$0.24 total
set -eo pipefail

if [[ -z "${REPLICATE_API_TOKEN:-}" ]]; then
  echo "REPLICATE_API_TOKEN not set. Run: source .env" >&2
  exit 1
fi

OUT_DIR="_redesign-2030/generated-images"
mkdir -p "$OUT_DIR"

STYLE_BASE="Editorial documentary travel photography, magazine style like Cereal Magazine and Off Assignment, warm natural light, gentle 35mm film grain, muted earth-tone color palette, shallow depth of field, candid and unstaged, 4:5 portrait composition, shot on a 35mm prime lens. Avoid HDR, oversaturated colors, stock-photo cliches, postcard staging, AI-synthetic look, sharp digital perfection."

generate() {
  local name="$1"
  local prompt="$2"
  local out="$OUT_DIR/${name}.jpg"

  echo "→ Generating: $name"

  local response
  response=$(curl --silent --show-error --fail --max-time 120 \
    --request POST \
    --header "Authorization: Bearer $REPLICATE_API_TOKEN" \
    --header "Content-Type: application/json" \
    --header "Prefer: wait=60" \
    --data "$(jq -n \
      --arg prompt "$prompt" \
      '{
        input: {
          prompt: $prompt,
          aspect_ratio: "4:5",
          output_format: "jpg",
          safety_tolerance: 2,
          raw: false
        }
      }')" \
    "https://api.replicate.com/v1/models/black-forest-labs/flux-1.1-pro-ultra/predictions")

  local status image_url
  status=$(echo "$response" | jq -r '.status // empty')
  image_url=$(echo "$response" | jq -r '.output // empty')

  if [[ "$status" != "succeeded" || -z "$image_url" || "$image_url" == "null" ]]; then
    echo "  failed:" >&2
    echo "$response" | jq . >&2
    return 1
  fi

  curl --silent --fail --output "$out" "$image_url"
  local kb=$(($(wc -c < "$out") / 1024))
  echo "  ok: $out  (${kb} KB)"
}

generate "suedafrika" "A coastal viewpoint near Cape Town's Atlantic Seaboard at golden hour. Fynbos-covered hills meeting deep blue ocean, the silhouette of Table Mountain in soft mist on the horizon, a single dirt path winding into the frame. No people. Muted blue-green and ochre palette. ${STYLE_BASE}"

generate "bali" "A Balinese rice terrace near Ubud in late afternoon golden light. Palm fronds framing the scene, soft mist between the terraces, a small offering basket on a low stone wall. No people in frame. Muted deep greens, warm sand and clay tones. ${STYLE_BASE}"

generate "thailand" "A quiet tropical bay on Koh Samui at low sun, a wooden longtail boat anchored close to shore, palm trees framing the foreground from the right, calm reflective water. No people. Muted teal-and-gold palette, soft contrast. ${STYLE_BASE}"

generate "australien" "A vast empty beach on Western Australia's coast at dawn, red dirt tracks meeting turquoise ocean, dramatic morning cloud formation low over the sea, a single old-style 4WD camper in middle distance with no people visible. Muted earth tones — red ochre, deep teal, warm sand. ${STYLE_BASE}"

echo
echo "Done. Files:"
ls -lh "$OUT_DIR"

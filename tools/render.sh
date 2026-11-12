#!/usr/bin/env bash
# Render each drawing in tools/pieces.html to tools/out/*.webp at 2x.
# Run on rama-tuf (headless Chromium from Playwright). Do not run a browser on the main machine.
#   bash tools/render.sh            # all images
#   bash tools/render.sh stack      # one image
set -euo pipefail
cd "$(dirname "$0")"

SHELL_BIN=$(ls -d "$HOME"/.cache/ms-playwright/chromium_headless_shell-*/chrome-headless-shell-linux64/chrome-headless-shell | sort -V | tail -1)
PAGE="file://$PWD/pieces.html"
ONLY="${1:-}"
FPS=15        # frames for each second of the header animation
LAST=3.85     # seconds: the header animation is complete before this time
mkdir -p out

shot() { # id width height theme file [seconds]
  "$SHELL_BIN" --headless --no-sandbox --hide-scrollbars --allow-file-access-from-files \
    --force-device-scale-factor=2 --default-background-color=00000000 --virtual-time-budget=4000 \
    --window-size="$2,$3" --screenshot="$5" "$PAGE?p=$1&theme=$4${6:+&t=$6}" >/dev/null 2>&1
}
frame() { # id width height theme index
  shot "$1" "$2" "$3" "$4" "$(printf 'out/frames-%s-%s/f%03d.png' "$1" "$4" "$5")" \
    "$(awk -v i="$5" -v f="$FPS" 'BEGIN { printf "%.3f", i / f }')"
}
export -f shot frame
export SHELL_BIN PAGE FPS

# A drawing that does not move. Lossless WebP keeps the clear background and the thin lines.
still() { # id width height
  if [ -n "$ONLY" ] && [ "$ONLY" != "$1" ]; then return 0; fi
  for th in dark light; do
    shot "$1" "$2" "$3" "$th" "out/$1-$th.png"
    magick "out/$1-$th.png" -define webp:lossless=true -define webp:method=6 "out/$1-$th.webp"
    echo "out/$1-$th.webp"
  done
}

# A drawing that draws itself one time, then stays complete.
moving() { # id width height
  if [ -n "$ONLY" ] && [ "$ONLY" != "$1" ]; then return 0; fi
  local n; n=$(awk -v l="$LAST" -v f="$FPS" 'BEGIN { print int(l * f) }')
  for th in dark light; do
    rm -rf "out/frames-$1-$th"; mkdir -p "out/frames-$1-$th"
    seq 0 "$n" | xargs -P 4 -n 1 bash -c 'frame "$1" "$2" "$3" "$4" "$5"' _ "$1" "$2" "$3" "$th"
    shot "$1" "$2" "$3" "$th" "$(printf 'out/frames-%s-%s/f%03d.png' "$1" "$th" "$((n + 1))")"
    cp "$(printf 'out/frames-%s-%s/f%03d.png' "$1" "$th" "$((n + 1))")" "out/$1-$th.png"
    ffmpeg -y -loglevel error -framerate "$FPS" -i "out/frames-$1-$th/f%03d.png" \
      -c:v libwebp_anim -lossless 0 -q:v 80 -compression_level 6 -pix_fmt yuva420p -loop 1 "out/$1-$th.webp"
    echo "out/$1-$th.webp"
  done
}

moving hero 880 236
still stack 880 352
for id in label-stack label-tools label-products label-clients label-results label-tech; do
  still "$id" 440 58
done

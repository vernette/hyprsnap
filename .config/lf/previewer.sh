#!/bin/sh
draw() {
  ~/.config/lf/draw_img.sh "$@"
  exit 1
}

hash() {
  printf '%s/.cache/lf/%s' "$HOME" \
    "$(stat --printf '%n\0%i\0%F\0%s\0%W\0%Y' -- "$(readlink -f "$1")" | sha256sum | awk '{print $1}')"
}

cache() {
  if [ -f "$1" ]; then
    draw "$@"
  fi
}

batorcat() {
  file="$1"
  shift
  if command -v bat > /dev/null 2>&1; then
    bat --color=always --style=plain --pager=never "$file" "$@"
  else
    cat "$file"
  fi
}

width="${1:-80}"
file="$1"
shift

if [ -n "$FIFO_UEBERZUG" ]; then
  case "$(file -Lb --mime-type -- "$file")" in
    image/*)
      orientation="$(identify -format '%[EXIF:Orientation]\n' -- "$file")"
      if [ -n "$orientation" ] && [ "$orientation" != 1 ]; then
        cache="$(hash "$file").jpg"
        cache "$cache" "$@"
        convert -- "$file" -auto-orient "$cache"
        draw "$cache" "$@"
      else
        draw "$file" "$@"
      fi
      ;;
    video/*)
      cache="$(hash "$file").jpg"
      cache "$cache" "$@"
      ffmpegthumbnailer -i "$file" -o "$cache" -s 0
      draw "$cache" "$@"
      ;;
    application/zip)
      unzip -l "$file"
      ;;
    application/x-tar)
      tar tf "$file"
      ;;
    application/x-7z-compressed)
      7z l "$file"
      ;;
    application/x-rar-compressed)
      unrar l "$file"
      ;;
    text/*)
      batorcat "$file"
      ;;
    application/json)
      batorcat --language=json "$file"
      ;;
    *)
      if file -Lb --mime-type -- "$file" | grep -q 'application/octet-stream'; then
        echo 'Binary'
      else
        file -Lb -- "$1" | fold -s -w "$width"
      fi
      ;;
  esac
fi

exit 0

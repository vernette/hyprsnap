#!/bin/bash

PACKAGE_STRING_LEN=25
VERSION_STRING_LEN=10
MAX_PACKAGES=15

stringToLen() {
  local STRING="$1"
  local LEN="$2"
  if [ ${#STRING} -gt "$LEN" ]; then
    echo "${STRING:0:$((LEN - 2))}.."
  else
    printf "%-${LEN}s" "$STRING"
  fi
}

count_updates() {
  local updates="$1"
  local count=0

  if [ -n "$updates" ]; then
    count=$(echo "$updates" | wc -l)
  fi

  echo "$count"
}

format_updates() {
  local updates="$1"
  local header="$2"
  local tooltip=""

  if [ -n "$updates" ]; then
    tooltip+="$header\n"
    tooltip+="<b>$(stringToLen "Package" $PACKAGE_STRING_LEN) $(stringToLen "Prev " $VERSION_STRING_LEN) $(stringToLen "Next " $VERSION_STRING_LEN)</b>\n\n"
    local counter=0
    local total_updates_count=$(count_updates "$updates")
    while IFS= read -r line; do
      update="$(stringToLen "$(echo "$line" | awk '{print $1}')" $PACKAGE_STRING_LEN)"
      prev="$(stringToLen "$(echo "$line" | awk '{print $2}')" $VERSION_STRING_LEN)"
      next="$(stringToLen "$(echo "$line" | awk '{print $4}')" $VERSION_STRING_LEN)"
      tooltip+="$update $prev $next\n"
      counter=$((counter + 1))
      if [ "$counter" -ge "$MAX_PACKAGES" ]; then
        break
      fi
    done <<< "$updates"
    if [ "$total_updates_count" -gt "$MAX_PACKAGES" ]; then
      tooltip+="\nAnd $(($total_updates_count - $MAX_PACKAGES)) more updates\n"
    fi
    tooltip+="\n"
  fi

  echo "$tooltip"
}

pacman_updates=$(checkupdates)
pacman_updates_count=$(count_updates "$pacman_updates")

aur_updates=$(paru -Qua)
aur_updates_count=$(count_updates "$aur_updates")

total_updates=$((pacman_updates_count + aur_updates_count))

tooltip=""

tooltip+=$(format_updates "$pacman_updates" "󰮯 <b>Pacman</b>")
tooltip+=$(format_updates "$aur_updates" "󰣇 <b>AUR</b>")

if [ "$total_updates" -gt 0 ]; then
  if [ ${#tooltip} -ge 2 ]; then
    tooltip=${tooltip::-2}
  fi
  echo "{\"text\":\"$total_updates\", \"tooltip\":\"$tooltip\"}"
fi

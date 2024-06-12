#!/bin/bash

PACKAGE_STRING_LEN=25
VERSION_STRING_LEN=10

stringToLen() {
  local STRING="$1"
  local LEN="$2"
  if [ ${#STRING} -gt "$LEN" ]; then
    echo "${STRING:0:$((LEN - 2))}.."
  else
    printf "%-${LEN}s" "$STRING"
  fi
}

pacman_updates=$(checkupdates)
pacman_updates_count=$(echo "$pacman_updates" | wc -l)

aur_updates=$(paru -Qua)
aur_updates_count=$(echo "$aur_updates" | wc -l)

total_updates=$((pacman_updates_count + aur_updates_count))

tooltip=""

if [ "$pacman_updates_count" -gt 0 ]; then
  tooltip+="󰮯 <b>Pacman</b>\n"
  tooltip+="<b>$(stringToLen "Package" $PACKAGE_STRING_LEN) $(stringToLen "Prev " $VERSION_STRING_LEN) $(stringToLen "Next " $VERSION_STRING_LEN)</b>\n\n"
  while IFS= read -r line; do
    update="$(stringToLen "$(echo "$line" | awk '{print $1}')" $PACKAGE_STRING_LEN)"
    prev="$(stringToLen "$(echo "$line" | awk '{print $2}')" $VERSION_STRING_LEN)"
    next="$(stringToLen "$(echo "$line" | awk '{print $4}')" $VERSION_STRING_LEN)"
    tooltip+="$update $prev $next\n"
  done <<< "$pacman_updates"
  tooltip+="\n"
fi

if [ "$aur_updates_count" -gt 0 ]; then
  tooltip+="󰣇 <b>AUR</b>\n"
  tooltip+="<b>$(stringToLen "Package" $PACKAGE_STRING_LEN) $(stringToLen "Prev " $VERSION_STRING_LEN) $(stringToLen "Next " $VERSION_STRING_LEN)</b>\n\n"
  while IFS= read -r line; do
    update="$(stringToLen "$(echo "$line" | awk '{print $1}')" $PACKAGE_STRING_LEN)"
    prev="$(stringToLen "$(echo "$line" | awk '{print $2}')" $VERSION_STRING_LEN)"
    next="$(stringToLen "$(echo "$line" | awk '{print $4}')" $VERSION_STRING_LEN)"
    tooltip+="$update $prev $next\n"
  done <<< "$aur_updates"
fi

tooltip=${tooltip::-2}

echo "{\"text\":\"$total_updates\", \"tooltip\":\"$tooltip\"}"

#!/usr/bin/env bash
START_DIR=$(pwd)
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )
SCRIPT_NAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
FONTS_DIR="../resources/fonts"

DAYS_EN=(
  "MON"
  "TUE"
  "WED"
  "THU"
  "FRI"
  "SAT"
  "SUN"
  "EN"
)

DAYS_ES=(
  "Lun"
  "Mar"
  "Mié"
  "Jue"
  "Vie"
  "Sáb"
  "Dom"
  "ES"
)

DAYS_DE=(
  "Mo"
  "Di"
  "Mi"
  "Do"
  "Fr"
  "Sa"
  "So"
  "DE"
)

# Create Days of Week icons.
function writeDays() {
  arr=("$@")
  ((last_idx=${#arr[@]} - 1))
  lang=${arr[last_idx]}
  unset arr[last_idx]
  idx=1
  for day in "${arr[@]}"; do
    convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ${FONTS_DIR}/Context_Ultra_Condensed.ttf -pointsize 60 -trim label:"${day}" "Week_${lang}_${idx}_${day}.png"
    ((idx=idx+1))
  done
}

echo "Starting ${SCRIPT_NAME} from ${SCRIPT_DIR} in ${START_DIR} at $(date +%Y-%m-%dT%H-%M-%S)..."
cd "${SCRIPT_DIR}" || exit
case "$1" in
  EN|en)
    echo "Generating English Days of Week"
    writeDays "${DAYS_EN[@]}"
    ;;
  ES|es)
    echo "Generating Spanish Days of Week"
    writeDays "${DAYS_ES[@]}"
    ;;
  DE|de)
    echo "Generating German Days of Week"
    writeDays "${DAYS_DE[@]}"
    ;;
  *)
    echo "Defaulting to English Days of Week"
    writeDays "${DAYS_EN[@]}"
    ;;
esac
echo "Finished at $(date +%Y-%m-%dT%H-%M-%S)."

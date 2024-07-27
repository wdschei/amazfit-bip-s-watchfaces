#!/usr/bin/env bash
START_DIR=$(pwd)
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )
SCRIPT_NAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
FONTS_DIR="../resources/fonts"
START_INDEX=48

DAYS_EN=(
  "MON"
  "TUE"
  "WED"
  "THU"
  "FRI"
  "SAT"
  "SUN"
)

DAYS_ES=(
  "Lun"
  "Mar"
  "Mié"
  "Jue"
  "Vie"
  "Sáb"
  "Dom"
)

DAYS_DE=(
  "Mo"
  "Di"
  "Mi"
  "Do"
  "Fr"
  "Sa"
  "So"
)

# Create Days of Week icons.
function writeDays() {
  arr=("$@")
  idx=${START_INDEX}
  for day in "${arr[@]}"; do
    convert -background none -fill "#ffffff" +antialias -font ${FONTS_DIR}/Context_Ultra_Condensed.ttf -pointsize 57 -trim label:"${day}" "$(printf "%04d" ${idx}).png"
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

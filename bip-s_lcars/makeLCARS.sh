#!/usr/bin/env bash
START_DIR=$(pwd)
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )
SCRIPT_NAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
CONFIG_FILE_BASE="bip-s_lcars_v4-0-4_24h"

PALETTE_DIR="../resources/palettes/"

LANGUAGES=(
  "es"
  "de"
  "en"
)

echo "Starting ${SCRIPT_NAME} from ${SCRIPT_DIR} in ${START_DIR} at $(date +%Y-%m-%dT%H-%M-%S)..."
cd "${SCRIPT_DIR}" || exit

# This should never need to be accomplished again, but I left it here commented out just in case.
#./makeWeatherIcons.sh

for language in "${LANGUAGES[@]}" ; do
  ./makeDaysOfWeek.sh "${language}"
  cp "${CONFIG_FILE_BASE}.json" "${CONFIG_FILE_BASE}_${language}.json"
  mono ~/bin/AmazfitBipS_Tools_alpha_230420/WatchFace.exe "${CONFIG_FILE_BASE}_${language}.json"

  ########################################################################################################################
  # START WORK AROUND
  #-----------------------------------------------------------------------------------------------------------------------
  # The Alpha tool isn't currently adding the Steps, Pulse, Calories, and Battery text to the autogenerated Animation frames and Static image.
  # This HUGE chunk is a work around tailored to this particular watchface to automate adding all of that outside the Alpha tool.
  #-----------------------------------------------------------------------------------------------------------------------

  # Initialize the pseudo-radom'ish data for the Animation frames and Static image the Alpha tool isn't currently randomizing/displaying.
  steps=1000
  pulse=62
  calories=75
  battery=100

  # Add the info the Alpha tool isn't currently randomizing/displaying before resizing the initial Static image to be the Preview image.
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,59 '${steps}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,77 '${pulse}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,113 '${calories}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -gravity SouthEast -draw "text 52,33 '${battery}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"

  # NOTE: This conversion and rerun may still be needed if you want the Preview to be updated since the Alpha tool doesn't do that right now either.
  # Scale and index the Static image into the Preview image.
  convert "${CONFIG_FILE_BASE}_${language}_packed_static.png" -resize 110x110 -remap "${PALETTE_DIR}/BipS_palette.png" "0001_${language}.png"
  cp "0001_${language}.png" 0001.png

  # Compile the watchface again to add the updated Preview image to the distribution binary.
  mono ~/bin/AmazfitBipS_Tools_alpha_230420/WatchFace.exe "${CONFIG_FILE_BASE}_${language}.json"

  # Add the info the Alpha tool isn't currently randomizing/displaying for the Static image.
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,59 '${steps}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,77 '${pulse}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,113 '${calories}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"
  mogrify -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -gravity SouthEast -draw "text 52,33 '${battery}'" "${CONFIG_FILE_BASE}_${language}_packed_static.png"

  # Add the info the Alpha tool isn't currently randomizing/displaying to each of the Animation frames.
  for idx in {0..9} ; do
    mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,59 '${steps}'" "${CONFIG_FILE_BASE}_${language}_packed_animated_${idx}.png"
    mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,77 '${pulse}'" "${CONFIG_FILE_BASE}_${language}_packed_animated_${idx}.png"
    mogrify -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -draw "text 24,113 '${calories}'" "${CONFIG_FILE_BASE}_${language}_packed_animated_${idx}.png"
    mogrify -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -gravity SouthEast -draw "text 52,33 '${battery}'" "${CONFIG_FILE_BASE}_${language}_packed_animated_${idx}.png"

    # Update the values for the next iteration.
    ((steps=steps+1000))
    ((pulse=pulse+2))
    ((calories=calories+75))
    ((battery=battery-10))
  done
  # END WORK AROUND
  ########################################################################################################################

  convert -delay 50 -loop 0 "${CONFIG_FILE_BASE}_${language}_packed_animated_*.png" "${CONFIG_FILE_BASE}_${language}.gif"
  mv "${CONFIG_FILE_BASE}_${language}_packed_static.png" "${CONFIG_FILE_BASE}_${language}.png"
  mv "${CONFIG_FILE_BASE}_${language}_packed.bin" "${CONFIG_FILE_BASE}_${language}.bin"
done
rm ${CONFIG_FILE_BASE}_*.json

echo "Finished at $(date +%Y-%m-%dT%H-%M-%S)."

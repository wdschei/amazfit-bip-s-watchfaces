#!/usr/bin/env bash
START_DIR=$(pwd)
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )
SCRIPT_NAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
TMP_DIR="../local"
PALETTES_DIR="../resources/palettes"
ORIG_DIR="${TMP_DIR}/weather-underground-icons"

FILE_NAMES=(
  chanceflurries.png
  chancerain.png
  chancesleet.png
  chancesnow.png
  chancetstorms.png
  clear.png
  cloudy.png
  flurries.png
  fog.png
  hazy.png
  mostlycloudy.png
  mostlysunny.png
  partlycloudy.png
  partlysunny.png
  rain.png
  sleet.png
  snow.png
  _spritesheet.png
  sunny.png
  tstorms.png
  unknown.png
)

echo "Starting ${SCRIPT_NAME} from ${SCRIPT_DIR} in ${START_DIR} at $(date +%Y-%m-%dT%H-%M-%S)..."
cd "${SCRIPT_DIR}" || exit

# Clone the weather icon repository if needed.
if [ ! -d "${ORIG_DIR}" ] ; then
  mkdir -p $TMP_DIR
  git clone git@github.com:manifestinteractive/weather-underground-icons.git ${ORIG_DIR}
fi

# Copy and Convert each icon to the watchface directory with the correct color palette.
for file in "${FILE_NAMES[@]}" ; do
   cp "${ORIG_DIR}/dist/icons/white/png/32x32/${file}" "day_${file}"
   convert "day_${file}" -channel alpha -threshold 25% -remap ${PALETTES_DIR}/BipS_palette.png +channel -crop 26x26+3+3 "mod_${file}"
done

# Turn the blue'ish snow to all white for hail.
convert mod_chanceflurries.png -fill white -colorize 100 mod_chancehail.png
convert mod_flurries.png       -fill white -colorize 100 mod_hail.png

# Copy the new weather icons into place.
cp mod_unknown.png        0074.png # Unknown
cp mod_partlycloudy.png   0075.png # Partly Cloudy
cp mod_chancerain.png     0076.png # Light Rain
cp mod_chancesnow.png     0077.png # Light Snow
cp mod_clear.png          0078.png # Sunny
cp mod_cloudy.png         0079.png # Cloudy
cp mod_chancerain.png     0080.png # Drizzle
cp mod_chancesnow.png     0081.png # Scattered Snow
cp mod_rain.png           0082.png # Rain
cp mod_snow.png           0083.png # Snow
cp mod_flurries.png       0084.png # Blowing Snow
cp mod_rain.png           0085.png # Downpour
#cp ???                   0086.png # Dust Storm
cp mod_sleet.png          0087.png # Mixed Sleet
cp mod_fog.png            0088.png # Fog
cp mod_hazy.png           0089.png # Haze
cp mod_tstorms.png        0090.png # Rain Storm
cp mod_snow.png           0091.png # Snow Storm
cp mod_hazy.png           0092.png # Dust Haze
cp mod_rain.png           0093.png # Heavy Rain
cp mod_snow.png           0094.png # Heavy Snow
cp mod_hail.png           0095.png # Hail Storm
cp mod_chancehail.png     0096.png # Hail
#cp ???                   0097.png # Blowing Dust
#cp ???                   0098.png # Tornado
cp mod_rain.png           0099.png # xHeavy Downpour

# Remove all the interim files.
rm day_*.png
rm mod_*.png

# Copy the modified versions from the original watchface since there aren't any in the new set.
cp ORIG_DustStorm.png   0086.png
cp ORIG_BlowingDust.png 0097.png
cp ORIG_Tornado.png     0098.png

echo "Finished at $(date +%Y-%m-%dT%H-%M-%S)."

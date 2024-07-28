#!/usr/bin/env bash
START_DIR=$(pwd)
SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null 2>&1 && pwd )
SCRIPT_NAME=$(basename "$(test -L "$0" && readlink "$0" || echo "$0")")
TMP_DIR="../local"
ORIG_DIR="${TMP_DIR}/weather-underground-icons"

echo "Starting ${SCRIPT_NAME} from ${SCRIPT_DIR} in ${START_DIR} at $(date +%Y-%m-%dT%H-%M-%S)..."
cd "${SCRIPT_DIR}" || exit

# Clone the weather icon repository if needed.
if [ ! -d "${ORIG_DIR}" ] ; then
  mkdir -p $TMP_DIR
  git clone git@github.com:manifestinteractive/weather-underground-icons.git ${ORIG_DIR}
fi

# Copy the new weather icons into place.
cp "${ORIG_DIR}/dist/icons/white/png/64x64/cloudy.png"           0.png #  0: Cloudy
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"             1.png #  1: Shower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"             2.png #  2: Snow shower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sunny.png"            3.png #  3: Sunny
cp "${ORIG_DIR}/dist/icons/white/png/64x64/mostlycloudy.png"     4.png #  4: Overcast
cp "${ORIG_DIR}/dist/icons/white/png/64x64/chancerain.png"       5.png #  5: Light rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/chancesnow.png"       6.png #  6: Light snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"             7.png #  7: Moderate rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"             8.png #  8: Moderate snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"             9.png #  9: Heavy snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"            10.png # 10: Heavy rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"         11.png # 11: Sandstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sleet.png"           12.png # 12: Sleet
cp "${ORIG_DIR}/dist/icons/white/png/64x64/fog.png"             13.png # 13: Fog
cp "${ORIG_DIR}/dist/icons/white/png/64x64/hazy.png"            14.png # 14: Haze
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"         15.png # 15: Thundershower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"            16.png # 16: Snowstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"         17.png # 17: Dust
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"         18.png # 18: Extraordinary rainstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sleet.png"           19.png # 19: Rain with hail
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"         20.png # 20: Thundershowers with hail
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"            21.png # 21: Heavy rainstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"         22.png # 22: Sand blowing
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"         23.png # 23: Strong sandstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"            24.png # 24: Rainstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"         25.png # 25: Unknown weather
cp "${ORIG_DIR}/dist/icons/white/png/64x64/nt_partlycloudy.png" 26.png # 26: Cloudy at night
cp "${ORIG_DIR}/dist/icons/white/png/64x64/nt_tstorms.png"      27.png # 27: Shower at night
cp "${ORIG_DIR}/dist/icons/white/png/64x64/nt_sunny.png"        28.png # 28: Clear night

cp "${ORIG_DIR}/dist/icons/white/png/32x32/sunny.png"           Sunrise.png
cp "${ORIG_DIR}/dist/icons/white/png/32x32/nt_sunny.png"        Sunset.png

echo "Finished at $(date +%Y-%m-%dT%H-%M-%S)."

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
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"      0.png #  0: Unknown weather
cp "${ORIG_DIR}/dist/icons/white/png/64x64/cloudy.png"       1.png #  1: Cloudy
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"         2.png #  2: Shower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"         3.png #  3: Snow shower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sunny.png"        4.png #  4: Sunny
cp "${ORIG_DIR}/dist/icons/white/png/64x64/mostlycloudy.png" 5.png #  5: Overcast
cp "${ORIG_DIR}/dist/icons/white/png/64x64/chancerain.png"   6.png #  6: Light rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/chancesnow.png"   7.png #  7: Light snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"         8.png #  8: Moderate rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"         9.png #  9: Moderate snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"        10.png # 10: Heavy snow
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"        11.png # 11: Heavy rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"     12.png # 12: Sandstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sleet.png"       13.png # 13: Sleet
cp "${ORIG_DIR}/dist/icons/white/png/64x64/fog.png"         14.png # 14: Fog
cp "${ORIG_DIR}/dist/icons/white/png/64x64/hazy.png"        15.png # 15: Haze
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"     16.png # 16: Thundershower
cp "${ORIG_DIR}/dist/icons/white/png/64x64/snow.png"        17.png # 17: Snowstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"     18.png # 18: Dust
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"     19.png # 19: Extraordinary rainstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/sleet.png"       20.png # 20: Freezing rain
cp "${ORIG_DIR}/dist/icons/white/png/64x64/tstorms.png"     21.png # 21: Thundershowers with hail
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"        22.png # 22: Heavy rainstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"     23.png # 23: Sand blowing
cp "${ORIG_DIR}/dist/icons/white/png/64x64/unknown.png"     24.png # 24: Strong sandstorm
cp "${ORIG_DIR}/dist/icons/white/png/64x64/rain.png"        25.png # 25: Rainstorm

echo "Finished at $(date +%Y-%m-%dT%H-%M-%S)."

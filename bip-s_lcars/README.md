# Amazfit Bip S LCARS watchface 
LCARS style watchface with a long lineage back to the Pebble face I once wore on my wrist.

This incarnation provides:

- Time (24h) with leading zero
- Weather (current + high/low)
- Battery percentage with gauge
- Date (YYYY-MM-DD) + Day of the week
  - NOTE: The Year is a static part of the background and a new face will need to be downloaded each year.
  - The Day of the week is currently available in English (en), German (de), and Spanish (es).
- Status: Alarm, Bluetooth, Do Not Disturb
- Steps with Goal indicator (the "feet" turn green)
- Pulse
- Distance
- Calories

The source of this watchface is available in this [GitHub repository](https://github.com/wdschei/amazfit-bip-s-watchfaces).

The pre-compiled version of this watchface is available from [Amazfit Wwatchfaces](https://amazfitwatchfaces.com/bip/view/41270)

| English (en)                                            | German (de)                                           | Spanish (es)                                           |
| ------------------------------------------------------- | ----------------------------------------------------- | ------------------------------------------------------ |
| ![English](README_Screenshot_en.gif?raw=true "English") | ![German](README_Screenshot_de.gif?raw=true "German") | ![Spansh](README_Screenshot_es.gif?raw=true "Spanish") |

## Historical lineage and Inspirational Credit:
- [Original Pebble face (Trekkie)](https://github.com/remixz/trekkie) by [remixz](https://github.com/remixz) (2013-04-13)
  - Source of the [LCARS.ttf](https://github.com/remixz/trekkie/blob/master/resources/fonts/LCARS.ttf) and
    [LCARS_BOLD.ttf](https://github.com/remixz/trekkie/blob/master/resources/fonts/LCARS_BOLD.ttf) True Type Fonts in
    the [resources](../resources/fonts).
- [Second Pebble face (pebbleface-trekv3)](https://github.com/llluis/pebbleface-trekv3) by [llluis](https://github.com/llluis) (2015-04-15)
  - Copy of the [LCARS TTF](https://github.com/llluis/pebbleface-trekv3/blob/master/resources/fonts/LCARS.ttf)
- [Trek_v1_Original](https://amazfitwatchfaces.com/bip/view/3635) / [Trek_v1_Red](https://amazfitwatchfaces.com/bip/view/3634) / [Trek_v1_Cyan](https://amazfitwatchfaces.com/bip/view/3633) by NuKeM (2018-03-03)
- [LCARS v1.0 en-24h color](https://amazfitwatchfaces.com/bip/view/13496) / [LCARS v1.0 en-24h mono-red](https://amazfitwatchfaces.com/bip/view/13484) by [SimsalaBip](https://amazfitwatchfaces.com/ucp/9085) (2018-09-17) 
- [LCARS v1.2 en-24h color](https://amazfitwatchfaces.com/bip/view/13876) by [SimsalaBip](https://amazfitwatchfaces.com/ucp/9085) (2018-09-27)
- [LCARS v2.1 en-24h color (improved)](https://amazfitwatchfaces.com/bip/view/13642) by [SimsalaBip](https://amazfitwatchfaces.com/ucp/9085) (2018-09-20)
- [LCARS v3.2 en 24h / 12h](https://amazfitwatchfaces.com/bip/view/18390) by [szpeter7](https://amazfitwatchfaces.com/ucp/12783) (2019-01-13)

## LCARS docs:
- [The defacto standard](http://www.lcars-terminal.de/tutorial/guideline.htm)
- [Example](https://mewho.com/system47/preview.htm)

## Creating the Hours/Mins:
```shell
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"0" 0002.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"1" 0003.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"2" 0004.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"3" 0005.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"4" 0006.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"5" 0007.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"6" 0008.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"7" 0009.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"8" 0010.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"9" 0011.png
```
## Creating the Date and Current Temp:
```shell
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"0" 0012.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"1" 0013.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2" 0014.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"3" 0015.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"4" 0016.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"5" 0017.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"6" 0018.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"7" 0019.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"8" 0020.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"9" 0021.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"-0" -crop 4x+0+0 0022.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"°8" -crop 10x+0+0 0023.png
```
## Creating the Steps/Pulse/Km/Calories Status and High/Low Temps:
```shell
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"0" 0024.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"1" 0025.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"2" 0026.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"3" 0027.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"4" 0028.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"5" 0029.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"6" 0030.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"7" 0031.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"8" 0032.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"9" 0033.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"-0" -crop 3x+0+0 0034.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:"°8" -crop 8x+0+0 0035.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 22 -trim label:".8" -crop 3x+0+0 0036.png
convert -size 1x1 xc:none 0037.png
```
- NOTE: I have no idea why the transparent 1x1 pixel image is needed, but if it isn't set for the `Distance`'s `SuffixImageIndex`, then things go all kinds of crazy. 
## Creating the Battery Status:
```shell
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"0" 0038.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"1" 0039.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"2" 0040.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"3" 0041.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"4" 0042.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"5" 0043.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"6" 0044.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"7" 0045.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"8" 0046.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"9" 0047.png
```
## Creating the Days of the Week:
I have included the English days of the week in the repository, but the [`makeDaysOfWeek.sh`](./makeDaysOfWeek.sh) script also currently supports Spanish and German.
- NOTE: This can easily be updated to add even more languages

## Creating the weather icons:
Most of the weather icons used for this were originally created by the Graphic Designer Ashley Jager who released them
as an [Adobe Illustrator file](https://dribbble.com/shots/1879422-Weather-Underground-Icons).
The [manifestinteractive](https://github.com/manifestinteractive) team extracted the icons and made them available at
[this GitHub repository](https://github.com/manifestinteractive/weather-underground-icons)
in multiple sizes and color combinations.
The [`makeWeatherIcons.sh`](./makeWeatherIcons.sh) script performs all of the necessary steps to retrieve, copy, and
convert the images to make them compatible with the Bip S color palette.

- NOTE: I manually modified the images from [SimsalaBip](https://amazfitwatchfaces.com/ucp/9085) 's
        [Orignal Bip face](https://amazfitwatchfaces.com/bip/view/13642) to add color and change the size for the
        Dust Storm ([0086.png](0086.png)), Blowing Dust ([0097.png](0097.png)), and Tornado ([0098.png](0098.png)) since
        there weren't suitable replacements in the new icon set.

## Putting it all together:
The [`makeLCARS.sh`](./makeLCARS.sh) script can generate the weather icons (currently commented out) and then the
watchface in all currently supported languages.

If you want to clean up after it is done and manually reset to a clean branch, then execute:
```shell
git checkout -- 0001.png 0048.png 0049.png 0050.png 0051.png 0052.png 0053.png 0054.png &&
rm *_[de][ens].png *_[de][ens].gif *_[de][ens].bin
```

## Miscellaneous:
- NOTE: One of the updates on the Bip S made the <10% battery scale unused and the expectation is now that this state is
        included in the background.

Creating a few more images used for the display, background, and to clean up the auto-generated images since a few
things aren't displayed yet.
```shell
convert -background none -fill "#ff0000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"D" 0059.png
convert -background none -fill "#aaaaaa" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"D" 0060.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 21 -trim label:"DILITHIUM%" BG_Dilithium.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 90 -trim label:"24:44" BG_Colon.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2021-88-88" BG_Year_2021.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2022-88-88" BG_Year_2022.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2023-88-88" BG_Year_2023.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2024-88-88" BG_Year_2024.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2025-88-88" BG_Year_2025.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2026-88-88" BG_Year_2026.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2027-88-88" BG_Year_2027.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2028-88-88" BG_Year_2028.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2029-88-88" BG_Year_2029.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 32 -trim label:"2030-88-88" BG_Year_2030.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 20 -trim label:"104°" DEMO_Temp.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 20 -trim label:"-28°" DEMO_Temp.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 20 -trim label:"8000" DEMO_Steps.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 20 -trim label:"80" DEMO_Pulse.png
convert -background none -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 20 -trim label:"1000" DEMO_Calories1000.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 20 -trim label:"100" DEMO_Battery100.png
convert -background none -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 20 -trim label:"44" DEMO_Battery044.png
```
- NOTE: The "Dilithium %" battery label is not clean as generated and required some manual touchup.
- NOTE: Since the Year can't be added programmatically yet, it is added to the background image.

This was removed from the `Status` section as I simply didn't like the behavior:
```json
    },
    "Lock": {
      "Coordinates": {
        "X": 164,
        "Y": 15,
        "Unknown09": 0,
        "Unknown10": 0
      },
      "ImageIndexOn": 61,
      "ImageIndexOff": 62
```

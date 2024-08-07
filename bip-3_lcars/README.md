# Amazfit Bip 3 LCARS watchface (240 x 280) 
LCARS style watchface with a long lineage back to the Pebble face I once wore on my wrist.

This incarnation provides:

- Time (24h) with leading zero
- Weather (current + high/low)
- Battery percentage with gauge
- Date (YYYY-MM-DD) + Day of the week
- Status: Alarm, Bluetooth, Do Not Disturb
- Steps with Goal indicator (the "feet" turn green)
- Pulse
- Distance
- Calories

The source of this watchface is available in this [GitHub repository](https://github.com/wdschei/amazfit-bip-s-watchfaces/bip-3_lcars).

The pre-compiled version of this watchface is available from [Amazfit Watchfaces](https://amazfitwatchfaces.com/bip/view/41270)

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
- [LCARS v4.x](https://amazfitwatchfaces.com/bip/view/41270) by me [wdschei](https://amazfitwatchfaces.com/ucp/310732) (2021-12-24)

## LCARS docs:
- [The defacto standard](http://www.lcars-terminal.de/tutorial/guideline.htm)
- [Example](https://mewho.com/system47/preview.htm)

## Creating the Hours/Mins:
```shell
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"0" HHMM_0.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"1" HHMM_1.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"2" HHMM_2.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"3" HHMM_3.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"4" HHMM_4.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"5" HHMM_5.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"6" HHMM_6.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"7" HHMM_7.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"8" HHMM_8.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"9" HHMM_9.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:":8" -crop 13x+0+0 HHMM_Dots.png
```
## Creating the Date and Current Temp:
```shell
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"0" YYMMDDSS_Current_0.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"1" YYMMDDSS_Current_1.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2" YYMMDDSS_Current_2.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"3" YYMMDDSS_Current_3.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"4" YYMMDDSS_Current_4.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"5" YYMMDDSS_Current_5.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"6" YYMMDDSS_Current_6.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"7" YYMMDDSS_Current_7.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"8" YYMMDDSS_Current_8.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"9" YYMMDDSS_Current_9.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"-0" -crop 7x+0+0 YYMMDDSS_Current_Dash.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"°8" -crop 16x+0+0 YYMMDDSS_Current_Deg.png
```
## Creating the Steps/Pulse/Km/Calories Status and High/Low Temps:
```shell
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"0" WokrkoutHighLow_0.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"1" WokrkoutHighLow_1.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"2" WokrkoutHighLow_2.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"3" WokrkoutHighLow_3.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"4" WokrkoutHighLow_4.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"5" WokrkoutHighLow_5.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"6" WokrkoutHighLow_6.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"7" WokrkoutHighLow_7.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"8" WokrkoutHighLow_8.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"9" WokrkoutHighLow_9.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"-0" -crop 4x+0+0 WokrkoutHighLow_Dash.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"°8" -crop 11x+0+0 WokrkoutHighLow_Deg.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:".8" -crop 4x+0+0 WokrkoutHighLow_Dot.png
convert -size 1x1 xc:none TransparentSinglePixel.png
```
## Creating the Battery Status:
```shell
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"0" BatteryLevel_0.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"1" BatteryLevel_1.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"2" BatteryLevel_2.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"3" BatteryLevel_3.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"4" BatteryLevel_4.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"5" BatteryLevel_5.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"6" BatteryLevel_6.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"7" BatteryLevel_7.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"8" BatteryLevel_8.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"9" BatteryLevel_9.png
```
## Creating the Days of the Week:
I have included the English days of the week in the repository, but the [`makeDaysOfWeek.sh`](./makeDaysOfWeek.sh) script
also currently supports Spanish and German.
- NOTE: This can easily be updated to add even more languages

## Creating the weather icons:
Most of the weather icons used for this were originally created by the Graphic Designer Ashley Jager who released them
as an [Adobe Illustrator file](https://dribbble.com/shots/1879422-Weather-Underground-Icons).
The [manifestinteractive](https://github.com/manifestinteractive) team extracted the icons and made them available at
[this GitHub repository](https://github.com/manifestinteractive/weather-underground-icons)
in multiple sizes and color combinations.
The [`makeWeatherIcons.sh`](./makeWeatherIcons.sh) script performs all the necessary steps to retrieve, copy, and name
the images to make them compatible with the Bip 3 Watchface Maker.

## Miscellaneous:
- NOTE: One of the updates on the Bip S and still on the Bip 3 makes the <10% battery scale unused and the expectation 
        is now that this state is included in the background.

Creating a few more images used for the display, background, and to clean up the auto-generated images since a few
things aren't displayed yet.
```shell
convert -background "#000000" -fill "#ff0000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"D" DoNotDisturb_Enabled.png
convert -background "#000000" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"DILITHIUM%" BG_Dilithium.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 130 -trim label:"24:44" BG_Colon.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2021-88-88" BG_Year_2021.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2022-88-88" BG_Year_2022.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2023-88-88" BG_Year_2023.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2024-88-88" BG_Year_2024.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2025-88-88" BG_Year_2025.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2026-88-88" BG_Year_2026.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2027-88-88" BG_Year_2027.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2028-88-88" BG_Year_2028.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2029-88-88" BG_Year_2029.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"2030-88-88" BG_Year_2030.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 50 -trim label:"144°" DEMO_Temp_Current.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 30 -trim label:"144°" DEMO_Temp_High.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 30 -trim label:"-28°" DEMO_Temp_Low.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 30 -trim label:"14444" DEMO_Steps.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 30 -trim label:"80" DEMO_Pulse.png
convert -background "#000000" -fill "#ffffff" +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 30 -trim label:"1000" DEMO_Calories1000.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"100" DEMO_Battery100.png
convert -background "#ffaa00" -fill "#000000" +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 30 -trim label:"44" DEMO_Battery044.png
```
- NOTE: The "Dilithium %" battery label is not clean as generated and required some manual touch up.

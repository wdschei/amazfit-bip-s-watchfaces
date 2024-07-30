# Amazfit Bip 5 LCARS watchface (320 x 380) 
LCARS style watchface with a long lineage back to the Pebble face I once wore on my wrist.

This incarnation provides:

- Time (24h) with leading zero
  - Sunrise/Sunset
- Weather (current + high/low)
- Battery percentage with gauge
- Date (YYYY-MM-DD) + Day of the week
- Status: Alarm, Bluetooth, Do Not Disturb
- Steps with Goal indicator (the "feet" turn green)
- Pulse
- Distance
- Calories

The source of this watchface is available in this [GitHub repository](https://github.com/wdschei/amazfit-bip-s-watchfaces/bip-3_lcars).

I'm developing this watchface in the Zepp Watchface Maker [here](https://watchface.zepp.com/designer/43310) and hopefully it will soon be available in the Zepp store.

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
- LCARS v5.x by me (2023-01-06) (Bip 3 using the [Zepp Watchface Maker](https://watchface.zepp.com/designer/26495))

## LCARS docs:
- [The defacto standard](http://www.lcars-terminal.de/tutorial/guideline.htm)
- [Example](https://mewho.com/system47/preview.htm)

## Creating the Hours/Mins:
```shell
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"0" HHMM_0.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"1" HHMM_1.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"2" HHMM_2.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"3" HHMM_3.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"4" HHMM_4.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"5" HHMM_5.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"6" HHMM_6.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"7" HHMM_7.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"8" HHMM_8.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:"9" HHMM_9.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 150 -trim label:":8" -crop 13x+0+0 HHMM_Dots.png
```
## Creating the Date and Current Temp:
```shell
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"0" YYMMDDSS_Current_0.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"1" YYMMDDSS_Current_1.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"2" YYMMDDSS_Current_2.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"3" YYMMDDSS_Current_3.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"4" YYMMDDSS_Current_4.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"5" YYMMDDSS_Current_5.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"6" YYMMDDSS_Current_6.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"7" YYMMDDSS_Current_7.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"8" YYMMDDSS_Current_8.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"9" YYMMDDSS_Current_9.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"-0" -crop 9x+0+0 YYMMDDSS_Current_Dash.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"°8" -crop 19x+0+0 YYMMDDSS_Current_Deg.png
```
## Creating the Steps/Pulse/Km/Calories Status and High/Low Temps:
```shell
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"0" WorkoutHighLow_0.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"1" WorkoutHighLow_1.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"2" WorkoutHighLow_2.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"3" WorkoutHighLow_3.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"4" WorkoutHighLow_4.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"5" WorkoutHighLow_5.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"6" WorkoutHighLow_6.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"7" WorkoutHighLow_7.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"8" WorkoutHighLow_8.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"9" WorkoutHighLow_9.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"-0" -crop 5x+0+0 WorkoutHighLow_Dash.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"°8" -crop 12x+0+0 WorkoutHighLow_Deg.png
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:".8" -crop 5x+0+0 WorkoutHighLow_Dot.png
```
## Creating the Battery Status:
```shell
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"0" BatteryLevel_0.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"1" BatteryLevel_1.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"2" BatteryLevel_2.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"3" BatteryLevel_3.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"4" BatteryLevel_4.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"5" BatteryLevel_5.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"6" BatteryLevel_6.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"7" BatteryLevel_7.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"8" BatteryLevel_8.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"9" BatteryLevel_9.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"%" BatteryLevel_Percent.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"-0" -crop 5x+0+0 BatteryLevel_Dash.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:":8" -crop 5x+0+0 BatteryLevel_Dots.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"DILITHIUM" BatteryLevel_Label.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"SpO2" SpO2_Label.png
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
the images to make them compatible with the Zepp Watchface Maker for the Bip 5 family.

## Miscellaneous:
- NOTE: One of the updates on the Bip S that remained in the Bip 3 made the <10% battery scale unused and the
        expectation is that this state would be included in the background. For the Bip 5 this has changed a little, but
        it is now at <5% that the background is shown and the full support of all 10 other images is back.

Creating a few more images used for the display, background, and Distance Units.
```shell
convert -background none -fill "#ffffff" -define png:color-type=6 +antialias -font ../resources/fonts/Nova_Light_Ultra.ttf -pointsize 60 -trim label:"/" YYMMDDSS_Current_Slash.png
convert -background none -fill "#ff0000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 35 -trim label:"D" DoNotDisturb_Enabled.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 25 -trim label:"km" DistanceUnit_km.png
convert -background none -fill "#000000" -define png:color-type=6 +antialias -font ../resources/fonts/Context_Ultra_Condensed.ttf -pointsize 25 -trim label:"mi" DistanceUnit_mi.png
```

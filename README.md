# Bip S watchface creation
## Watchfaces in this repository
- [bip-s_lcars](./bip-s_lcars/README.md)

## Tools
This [forum post](https://amazfitwatchfaces.com/forum/viewtopic.php?t=1410)
points to the new `AmazfitBipS_Tools_alpha_230420` located [here](https://www.icloud.com/iclouddrive/0AUt1RWSPLRW-uwY8ZKCv-j9w#AmazfitBipS_Tools_alpha_230420)
and you still need the [original tool](https://bitbucket.org/valeronm/amazfitbiptools/downloads/AmazfitBipTools-1.0.3.1.7z)
for converting an original Bip watchface.
Since these are Windows based tools, you'll need [`mono`](https://www.mono-project.com/)
to use them on a Linux machine.

The Bip S has a 64 color palette plus transparent.
There is a [GIMP palette](./resources/palettes/BipS_palette.gpl) and a [PNG palette](./resources/palettes/BipS_palette.png) provided here for use with GIMP and the ImageMagic tool suite respectively.

### Install ImageMagick:
```shell
sudo apt install -y imagemagick
```
This is a great [suite of tools](https://imagemagick.org/script/command-line-tools.php).
The `convert` tool is great for
[converting a font into individual PNG images](https://stackoverflow.com/questions/17142331)
for use in a watchface.
```shell
convert -background none -fill black +antialias -font font.ttf -pointsize 300 -trim label:"Z" z.png
```
Here is an brief explanation with links to the docs for each of the options in the command above:
- [`-background none`](https://imagemagick.org/script/command-line-options.php#background) -
  sets any non-written space to transparent.
- [`-fill`](https://imagemagick.org/script/command-line-options.php#fill) -
  sets the color you want the text to appear in.
- [`+antialias`](https://imagemagick.org/script/command-line-options.php#antialias) -
  disables this feature and which makes them easier to read when making watchfaces.
- [`-font`](https://imagemagick.org/script/command-line-options.php#font) -
  a relative or fully-qualified path to the True Type Font to write in.
- [`-pointsize`](https://imagemagick.org/script/command-line-options.php#pointsize) -
  sets the size of the text to write.
- [`-trim`](https://imagemagick.org/script/command-line-options.php#trim) -
  removes any additional space around the image.
- `label:` - sets the character/string you want to turn into an image.

This is a very simple use of one tool in this very powerful suite of image processing and manipulation tools. 

### Install GIMP:
```shell
sudo apt-get install -y gimp
```
When creating/modifying images, these are the GIMP docs I often refer to since I don't do it often:
- [Pencil tool](https://docs.gimp.org/2.10/en/gimp-tool-pencil.html)
- [Gradient tool](https://docs.gimp.org/2.10/en/gimp-tool-gradient.html)
- Installing a [Palette](https://docs.gimp.org/2.10/en/gimp-concepts-palettes.html) for use in [Indexed Mode](https://docs.gimp.org/2.10/en/gimp-image-convert-indexed.html)

### Install Mono:
```
sudo apt-get install -y mono-complete libmono-corlib4.5-cil
```

### Download and Extract the AmazfitBipTools to the `~/bin` directory:
```
cd ~/Downloads
wget https://bitbucket.org/valeronm/amazfitbiptools/downloads/AmazfitBipTools-1.0.3.1.7z
mkdir -p ~/bin/AmazfitBipTools-1.0.3.1
cd ~/bin/AmazfitBipTools-1.0.3.1/
jar xvf x ~/Downloads/AmazfitBipTools-1.0.3.1.7z
```

### Download and Extract the AmazfitBipS_Tools_alpha_230420 to the `~/bin` directory:
Download `AmazfitBipS_Tools_alpha_230420` from [here](https://www.icloud.com/iclouddrive/0AUt1RWSPLRW-uwY8ZKCv-j9w#AmazfitBipS_Tools_alpha_230420).

Then
```
mkdir -p ~/bin/AmazfitBipS_Tools_alpha_230420
cd ~/bin/AmazfitBipS_Tools_alpha_230420
jar xvf ~/Downloads/AmazfitBipS_Tools_alpha_230420.zip
```

## Converting Bip watchface to work with Bip S
This [forum post](https://amazfitwatchfaces.com/forum/viewtopic.php?t=1444)
contains the instructions that are condensed below:
- NOTE: Always (de)compile Bip watchfaces with original Bip tool.
- NOTE: Always (de)compile Bip S watchfaces with new alpha Bip S tool.
- NOTE: Bip S watchfaces are not fully decrypted yet, there are many unknown options.


- Decompile a Bip watchface with the original Bip tool.
```
cd ~/Projects/amazfitbip_faces/
mono ~/bin/AmazfitBipTools-1.0.3.1/WatchFace.exe WatchfaceName.bin
cd ~/Projects/amazfitbip_faces/WatchfaceName
```
- Scale the Bip `WatchfaceName_packed_static.png` preview to 110x110 and save it as `00yy.png`.
  - Replace the `yy` with the next index count (e.g. if the Bip's last index was `0074.png` then save the resized preview as `0075.png`.
  - The image needs the mode set to `indexed`.
    - To do this in GIMP:
      - Image -> Mode -> Indexed...
      - set the Colormap to "Use custom palette"
      - choose the GIMP Palette for Amazfit Bip S devices (64 color).
      - NOTE: [Original discussion](https://amazfitwatchfaces.com/forum/viewtopic.php?t=1419) about the 64-Bit color palette available for the BipS.
      - NOTE: My original questions and [post of my updated Bip S palette file for GIMP](https://amazfitwatchfaces.com/forum/viewtopic.php?p=5960#p5960) based on the one provided by [Amazfit Central](https://amazfitcentral.com/2018/02/05/amazfit-bip-watchface-reference-including-some-json-docs/) for the original 8 color Bip.
              There have been a few more edits since then and the latest version can be found in this repository [here](./resources/palettes/BipS_palette.gpl).
    - Or you can do the resize and remap with this ImageMagic one-liner:
      - `convert WatchfaceName_packed_static.png -resize 110x110 -remap BipS_palette.png 0075.png`
- Update the JSON file
  - Add the Bip S preview file:
    - Old (Bip) JSON:
```json
{
  "Background": {
    "Image": {
      "X": 0,
      "Y": 0,
      "ImageIndex": 0
    }
  },
  ...
}
```
   - New (Bip S) JSON:
```json
"Background": {
    "Image": {
      "X": 0,
      "Y": 0,
      "ImageIndex": 0
    },
    "Preview": {
      "X": 0,
      "Y": 0,
      "ImageIndex": 75
    }
},
```
  - Add the new `Number` section to the following subsections of `Activity` (`Calories`, `Pulse`, and `Steps`) and similarly to the `Battery`'s subsection `Text`:
    - Old (Bip) JSON:
```json
{
  ...
  "Activity": {
    "Calories": {
      "TopLeftX": 24,
      ...
    },
    ...
  }
  ...
  "Battery": {
    "Text": {
      "TopLeftX": 97,
      ...
    },
    ...
  }
}
```
    - New (Bip S) JSON:
```json
{
  ...
  "Activity": {
    "Calories": {
      "Number": {
        "TopLeftX": 24,
        ...
      }
    },
    ...
  }
  ...
  "Battery": {
    "Text": {
      "Number": {
        "TopLeftX": 97,
        ...
      }
    },
    ...
  }
}
```
- Compile the Bip S watchface with the new alpha Bip S tool.
```
mono ~/bin/AmazfitBipS_Tools_alpha_230420/WatchFace.exe WatchfaceName.json
mv WatchfaceName_packed.bin ../WatchfaceName.bin
```

To get an animated image to upload for distribution, use:
- `convert -delay 50 -loop 0 WatchfaceName_animated_*.png WatchfaceName_animated.gif`

## Installing the watchface:
### This works if it is published:
Install the app:
- https://play.google.com/store/apps/details?id=com.amazfitwatchfaces.st
Watch this video:
- https://youtu.be/VzlsqHQJSic
### Notes on Android 11+
This [Reddit discussion on Android 11 file permission changes](https://www.reddit.com/r/Android/comments/j3zgmm/managing_files_in_the_androiddata_folder_on/)
that are at the root of the issue for installing watchfaces using the traditional methods.
[This Explorer tool](https://play.google.com/store/apps/details?id=com.speedsoftware.explorer)
has the permission updates needed to perform a
[traditional installation](https://amazfitwatchfaces.com/forum/viewtopic.php?t=783)
as described below.
### Traditional Installation:
- On the phone, navigate to the following location in a file manager:
  - `/Android/data/com.huami.watch.hmwatchmanager/files/watch_skin_local/`
- Delete all files and/or directories in it.
- In the Zepp app, install a watch face from those available in the Online tab.
- This will create a directory on the phone named:
  - `/Android/data/com.huami.watch.hmwatchmanager/files/watch_skin_local/<HexCharsX32>`
- Copy your `.bin` file into this directory.
- Delete the existing `<HexCharsX32>.bin`.
- Rename your `.bin` file to the old `<HexCharsX32>.bin`.

## Other Watchfaces I've looked at for Inspiration besides those already mentioned
- [Question on displaying year on the BipS](https://amazfitwatchfaces.com/forum/viewtopic.php?p=483)
- [Search for BipS faces tagged with Year](https://amazfitwatchfaces.com/search/bip/tags/year?compatible=Bip_S)
- [Another nice classic style face](https://amazfitwatchfaces.com/bip/view/35691?sid=2ddfa36750561ac3c5ef102ad843bac0)
- [Another face with interesting features](https://amazfitwatchfaces.com/bip/view/35787)
- [Another face with interesting features](https://amazfitwatchfaces.com/bip/view/38757)

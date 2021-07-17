# Warale Font

This font was created after I realized that there were very few fonts that were FOSS and that supported the entirety of the CP437 charset.

The source files that I could include under the licenses of this project are part of this repository.
However, I had to use non-FOSS tools to generate the actual .ttf files, namely [YellowAfterLife's PixelFont converter](https://yal.cc/r/20/pixelfont/), a free converter from bitmap to TTF.

The font is `12px x 12px`; each pixel is `128` units big and the EM size is set to `10*128 = 1280`.
For a pixel-perfect render, you should thus set the font size to a multiple of `10px` and set the line-height to a multiple `12px` (or simply `1.2em`).

## Usage

To download this repository, you can run

```sh
# Method 1, using git:
git clone https://github.com/adri326/warale-font
cd warale-font

# Method 2, using curl:
curl -o warale-font.zip https://github.com/adri326/warale-font/archive/refs/head/master.zip
unzip -x warale-font.zip
```

This repository contains the Warale Font in different formats:

- TrueType Font (`Warale Font.ttf`)
- WOFF Font (`Warale Font.woff`)
- CSS `@font-face` rule (`Warale Font.css`)
- [Krita](https://krita.org/) (`Warale Font.kra`)
- Black/White bitmap, for use with [YAL's converter](https://yal.cc/r/20/pixelfont/) (`Warale Font.png`)
- White/Magenta bitmap, for use as a [Dwarf Fortress](http://www.bay12games.com/dwarves/) font (`warale_df.png`)
- The charset used (`charset.txt`)

### Using the font on a website

You can host the font yourself and use the provided CSS `@font-face` rule or directly read it from GitHub:

```html
<head>
    <link rel="stylesheet" href="https://adri326.github.io/warale-font/Warale Font.css">
    <style>
        .my-div {
            font-family: "Warale";
            font-size: 10px;
            line-height: 1.2em;
        }
    </style>
</head>
```

### Generating the bitmaps

To generate the bitmaps, you will need to open `Warale Font.kra` with [Krita](https://krita.org/).

Then, hit `File > Export`, choose PNG as the format and save the file as `Warale Font.png`.

If you want to export the White/Magenta bitmap too, simply run the script `make-df-font.sh`, which will extract the first 192x192 square and map the black/white pixels to white/magenta.

### Generating the .ttf

To generate the TTF file, you will need to go to [https://yal.cc/r/20/pixelfont/](https://yal.cc/r/20/pixelfont/) or to [download YAL's converter on itch.io (PWYW)](https://yellowafterlife.itch.io/pixelfont).
Once on the page, you can import the setting by pressing `Import` and choosing the `Warale Font.json` file.
The spacing settings are as follows:

- Tile width: `12`
- Tile height: `12`
- Offset X: `0`
- Offset Y: `0`
- Separation X: `0`
- Separation Y: `0`
- Baseline X: `0`
- Baseline: `11`
- Spacing: `0`
- Monospace: `true`
- Em size: `1280`
- Line gap: `0`
- Ascent: `1280`
- Descent: `0`
- Pixel size: `128`

Then, press `Pick image` and select the `Warale Font.png` file.
You can preview the font in the two right panes and finally hit `Save TTF` on the top-right to export the font to TTF.

### Generating the .woff

You can then generate the `.woff` file and optimize the `.ttf` file with `ttf2woff`:

```sh
ttf2woff Warale\ Font.ttf Warale\ Font.woff
ttf2woff -t ttf -i Warale\ Font.ttf
```

## Licensing

This repository is multi-licensed with [MIT](https://mit-license.org), [ISC](https://en.wikipedia.org/wiki/ISC_license), [GPLv2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html) (implicitely [GPLv3](https://www.gnu.org/licenses/gpl-3.0.html)) and [OFL](https://scripts.sil.org/OFL).

You may choose any of these licenses for your projects.
You can find the different license files in the `licenses/` folder.

You may re-distribute this font using any of these licenses; when doing so, you must keep the chosen `LICENSE` file(s) (and, if needed, the corresponding `legalcode.txt` file(s)).
I also recommend that you link back to this repository (https://github.com/adri326/warale-font/).

Any contribution to this repository must retain all of the licenses.

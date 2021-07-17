#!/bin/sh

magick convert Warale\ Font.png -extent 192x192 -channel B -fx "1" -channel G -fx "1-g" -channel R -fx "1" -colorspace RGB warale_df.png


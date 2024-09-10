## optimize png files

find . -name "*.png" -exec magick "{}" -strip -interlace Plane -gaussian-blur 0.05 -resize 1920 "{}" \; -exec echo "{}" \;
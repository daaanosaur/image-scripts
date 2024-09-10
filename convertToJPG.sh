## find and convert all images to jpg

find . -name "*.png" -print0|xargs -I{} -0 mogrify -format jpg {}
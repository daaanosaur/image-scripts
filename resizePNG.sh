## resize and strip png files

echo "You are about to resize all images in $PWD."
read -p "Are you sure? Type Y to continue. " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    find . -name "*.png" -exec magick "{}" -strip -resize 1920 "{}" \; -exec echo "{}" \;
else
    exit 0
fi

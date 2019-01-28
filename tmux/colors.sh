#
# Displays the supported colors and their codes. This is useful for customizing themes.
#
for i in {0..255} ; do
  printf "\x1b[38;5;${i}m${i}\t"
done

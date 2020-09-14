#/bin/sh

cp $1.pdf $1_slides.pdf
echo ----
echo copied $1.pdf to $1_slides.pdf

# take slide deck filename (without .pdf extension) as input, produce a 2x1 handout.
# 4:3 version:
#pdfjam $1.pdf --nup '1x3' --frame 'true' --outfile $1_handout.pdf

# 16:9 version 1 (1x2):
#pdfjam $1.pdf --nup '1x2' --frame 'true' --delta "0 2cm" --noautoscale 'true' --scale 1.2 --outfile $1_handout.pdf

# 16:9 version 2 (2x2 landscape):
pdfjam $1.pdf --nup '2x2' --frame 'true' --landscape --outfile $1_handout.pdf

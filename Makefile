EQUIVALENTS := standard.equivalents
FONTDIR := /usr/share/bdf2psf/fontsets
FONTSETS := Uni1.512 Uni2.512 Uni3.512

OPTIONS = $(EQUIVALENTS) $(FONTDIR)

all:	g11 g11u

g11:
	bdf2psf --fb g11-uni.bdf $(OPTIONS)/Lat15.256 256 g11.psf

g11u:
	for fontset in $(FONTSETS); do bdf2psf --fb g11-uni.bdf $(OPTIONS)/$$fontset 512 g11-$$fontset.psfu; done
#.for fontset in $(FONTSETS)
#	bdf2psf --fb g11u.bdf $(OPTIONS) g11-${fontset}.psfu
#.endfor

clean:
	rm -f *.psf *.psfu

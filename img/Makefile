.PHONY: base64

base64: $(patsubst %.png,%.png.base64,$(wildcard *.png))

%.png.base64: %.png
	base64 -w 0 $< > $@
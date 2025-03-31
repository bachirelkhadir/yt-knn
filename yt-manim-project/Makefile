$(shell ls manim/*.py | sed 's|manim/\(.*\)\.py|\1|'): 
	rm -rf manim/media/videos/$@
	manim manim/$@.py --transparent --fps 30 --save_sections
	ls media/videos/$@/1080p30/sections/*mov | xargs -I{} bash manim/mov_to_png.sh {}

all: $(shell ls manim/*.py | sed 's|manim/\(.*\)\.py|\1|' | grep -v utils)

copy:
	cp -r as_pngs ../yt-adobe-project/rawmedia/manim/

clean:
	rm -rf media/videos
	rm -rf as_pngs

.PHONY: all

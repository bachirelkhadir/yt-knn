



# pandas_table:
# 	rm -rf manim/media/videos/pandas_table
# 	manim manim/pandas_table.py --transparent --fps 30 --save_sections
# 	ls media/videos/pandas_table/1080p30/sections/PandasTable*mov | xargs -I{} bash manim/mov_to_png.sh {}

$(shell ls manim/*.py | sed 's|manim/\(.*\)\.py|\1|'): 
	rm -rf manim/media/videos/$@
	manim manim/$@.py --transparent --fps 30 --save_sections
	ls media/videos/$@/1080p30/sections/*mov | xargs -I{} bash manim/mov_to_png.sh {}
	


all: $(shell ls manim/*.py | sed 's|manim/\(.*\)\.py|\1|' | grep -v utils)

copy:
	#mkdir -p as_pngs/codesnippet && cp as_pngs/ShowPythonCode_00*/*png as_pngs/codesnippet || true
	# for f in as_pngs/codesnippet/*.png; do \
	#   magick "$$f" -trim +repage "$$f"; \
	# done
	# rm -rf as_pngs/ShowPythonCode*
	cp -r as_pngs ../yt-adobe-project/rawmedia/manim/


clean:
	rm -rf media/videos
	rm -rf as_pngs

.PHONY: all
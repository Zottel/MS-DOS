all: video.com

%.com: %.asm
	nasm $< -fbin -o $@

XICO
====

<p align="middle">
  <img src=".github/assets/x01.png" width="100" />
  <img src=".github/assets/x02.png" width="100" />
  <img src=".github/assets/x03.png" width="100" />
  <img src=".github/assets/x04.png" width="100" />
  <img src=".github/assets/x05.png" width="100" />
  <img src=".github/assets/x06.png" width="100" />
  <img src=".github/assets/x07.png" width="100" />
  <img src=".github/assets/x08.png" width="100" />
  <img src=".github/assets/x09.png" width="100" />
  <img src=".github/assets/x10.png" width="100" />
  <img src=".github/assets/x11.png" width="100" />
  <img src=".github/assets/x12.png" width="100" />
  <img src=".github/assets/x13.png" width="100" />
  <img src=".github/assets/x14.png" width="100" />
  <img src=".github/assets/x15.png" width="100" />
  <img src=".github/assets/x16.png" width="100" />
  <img src=".github/assets/x17.png" width="100" />
  <img src=".github/assets/x18.png" width="100" />
</p>

```ex
NAME
	xico - make images from unicode characters or user custom config


SYNOPSIS
  xico
     -i | --input       <INPUT_CHAR>
     -o | --output      <OUTPUT_FILE>
    [-fg| --foreground  <HEX|NAME>]
    [-bg| --background  <HEX|NAME>]
    [-fs| --font-size   <SIZE_PX|SIZE_EM>]
    [-ff| --font-family <FONT_FAMILY>]
    [-fw| --font-weight <NORMAL|BOLD|BOLDER>]
    [-s | --size        <SIZE_INT>]
    [-x | --x-pos       <POSITION_X>]
    [-y | --y-pos       <POSITION_Y>]
    [-c | --config      <CONFIG_FILE>]
    [-r | --round]
    [-h | --help]
  [[-] <INPUT_CHAR>]


DESCRIPTION
	xico is a simple cli tool to make images from unicode glyphs

	with no FILE, or when FILE is -, read standard input

	output can only be png or svg

	define a collection of jobs in user config "$XDG_CONFIG_HOME/xico/xico.conf"

	or specify alternative configuration file to use with "-c | --config FILE"


OPTIONS
	-i | --input       *<INPUT_CHAR>
		 a single character. -i 'λ'

	-o | --output      *<OUTPUT_FILE>
		output image path. -o ~/pics/xyzzy/hoge.png

	[-fg| --foreground  <HEX|NAME>]
		the icon foreground color in '#RGB' or NAME -fg '#4411FF'

	[-bg| --background  <HEX|NAME>]
		the icon background color in '#RGB' or NAME -bg '#AA22EE'

	[-fs| --font-size   <SIZE_PX|SIZE_EM>]
		the font size in em or px -fs 32px

	[-ff| --font-family <FONT_FAMILY>]
		the font family used -ff NotoSans

	[-fw| --font-weight <NORMAL|BOLD|BOLDER>]
		the font weight -fw bold

	[-s | --size        <SIZE_INT>]
		the final image size -s 128 would result in a '128x128' pixel png

	[-x | --x-pos       <POSITION_X>]
		adjust the x position of the character to align further

	[-y | --y-pos       <POSITION_Y>]
		adjust the y position of the character to justify further

	[-c | --config      <CONFIG_FILE>]
		specify alternative configuration file to use

	[-r | --round]
		flag to set the background shape rounded

	[-h | --help]
		show help menu
[[-] <INPUT_CHAR>]


.
EXAMPLES

	# convert one character
	xico -i 𝝺 -o lambda.png

	# create png from character with rounded cover, custom fg and bg, font size and y position
	xico -i 𝝺 -r -bg '#112233' -fg '#4411ff' -o ~/pics/x1.png -fs 7em -y 78

	# create a new image from character with custom color, transparent background and default config
	xico -fg '#AA1144' -i ✪ -o ~/pics/x2.png

	# process with alternative configuration file
	# xico -c awesome-xico.conf



CONFIGURATION
	xico looks for the configuration file at the following paths
		1. "$XDG_CONFIG_HOME/xico/xico.conf"
		2. "$XDG_CONFIG_HOME/xico.conf"
		3. "$HOME/.xico.conf"

	simple key value options with at least one blank character (<Space> or <Tab>)

	this section documents the root level of the configuration file

	# default size (mm)
	size 	500

	# default bg (rgba|transparent)
	bg 	transparent

	# default font (monospace)
	font 	monospace

	# define logical groups

	# relative to working directory
	⨷ 	./error.png
	𝞵 	./foo/micro.png

	# absolute path
	᮷ 	~/dev/acme/assets/ico/head_1.png
	᳅ 	~/dev/acme/assets/ico/head_2.png

	# use env variables
	𑣐 	/tmp/curve_${RANDOM}.png
	𑣉 	${XDG_CONFIG_HOME}/xyzzy/curve.png

	# the missing directories will be created
	𐰁 	~/pics/fuga/edge_1.png
	𐰒 	~/pics/fuga/edge_2.png

	# set a base path for remaining items
	base 	~/pics/widgets

	# the example bellow will write to
	# 	~/pics/widgets/char_a.png
	# 	~/pics/widgets/char_e.png
	# 	~/pics/widgets/char_f.png

	𑢴 	char_a.png
	𑢦 	char_e.png
	𑢢 	char_f.png

	# reset the base path
	base 	~/.config/frob

	# the example bellow will write to
	# 	~/.config/frob/hoge.png
	# 	~/.config/frob/state/nyoro.png

	た 	hoge.png
	テ 	state/nyoro.png


ENVIRONMENT.VARIABLES
	XICO_SILENT    | less verbose
	XICO_DEBUG     | debug mode


SEE.ALSO
	inkscape(1)


AUTHOR
	metaory <metaory@gmail.com>, Apr 2024
```

---

Requirements
------------

- [Inkscape](https://gitlab.com/inkscape/inkscape)

---


Installation
------------

- clone repo
- give execution permissions
- place it in your path

```ex
# Clone the repo
git clone git@github.com:metaory/xico.git

# Navigate to repo
cd xico

# Give execution permissions
chmod +x xico

# Link it somewhere in your PATH
ln -sfv xico /usr/bin/xico

# Use it anywhere

# Usage
xico --help
```

TODO
====
- [ ] Makefile
- [x] Attributes; bg, fg, font, size
- [ ] Fallback engines for Inkscape, Cairo, Convert, ...

---

	▀▄▀ █ █▀▀ █▀█
	█░█ █ █▄▄ █▄█

---

## License

[MIT](LICENSE)

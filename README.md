XICO
====

```ex
NAME
	xico - make images from unicode characters or user custom config


SYNOPSIS
	xico [-h | --help] [-c | --config FILE] [-i | --input CHAR [-] FILE];


DESCRIPTION
	xico is a simple cli tool to make images from unicode glyphs

	with no FILE, or when FILE is -, read standard input

	output can only be png or svg

	define a collection of jobs in user config "$XDG_CONFIG_HOME/xico/xico.conf"

	or specify alternative configuration file to use with "-c | --config FILE"


OPTIONS
	-i, --input <CHAR> <FILE>	image character & destination-path
	-c, --config <FILE>		specify alternative configuration file to use
	-h, --help			display help
	 # -b, --background		[TODO] image background color
	 # -f, --foreground		[TODO] image foreground color
	 # -s, --size			[TODO] image size


EXAMPLES
	# convert one character
	xico -i 𝝺 lambda.png

	# process with user configuration file
	xico

	# process with alternative configuration file
	xico -c awesome-xico.conf


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
- [ ] Attributes; bg, fg, font, size
- [ ] Fallback engines for Inkscape, Cairo, Convert, ...

---

	▀▄▀ █ █▀▀ █▀█
	█░█ █ █▄▄ █▄█

---

## License

[MIT](LICENSE)

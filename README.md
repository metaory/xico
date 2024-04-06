XICO
====

```ex
NAME
	xico - make images from a character, user, custom config toml


SYNOPSIS
	xico [-h] [-c CHAR [--] FILE] | [-t FILE] | [-u]


DESCRIPTION
	xico is a simple way to make images from any unicode glyphs


OPTIONS
	-c, --char <CHAR> <FILE>  image charecter & destination path
	-t, --template <FILE>     generate from custom config
	-u, --user <DIR>          generate from user config
	-h, --help                display this & exit
	 # -b, --background       [TODO] image background color
	 # -f, --foreground       [TODO] image foreground color
	 # -s, --size             [TODO] image size


EXAMPLES
	# make a single image from a character
	xico -c ▲ triangle.png

	# make images from a xico config
	xico -t awm_layouts.toml

	# make images from user config ~/.config/xico/config.toml
	xico -u


CONFIGURATION
	bare minimum toml support, key/value pair, table, array

	This section documents the root level of the configuration file.

	[<string>]

		Define logical tables to group collections

		base = ''

			Optional base path for the group "icons" destinations

		icons = [ [<char>, <path>], ... ]

			Array of icon tuples with two fields, the first is the character & second is the destination path.

			It will be concatinated with the "base" key if defined.


SAMPLE
	# ~/.config/xico/config.toml
	[somekey]
	icons = [
	  ['⊖', '/tmp/nada/xorg.png'],
	  ['◪', 'noop.png'],
	]

	[awesome.layout]
	base = '~/.config/awesome/themes/meta/icons/layout'
	icons = [
	  ['▣', 'dummy_float.png'],
	  ['◨', 'dummy_tiled.png'],
	  ['', 'dummy_uhumm.png'],
	]


ENVIRONMENT VARIABLES
	XICO_DEBUG     | more verbose
	XICO_SILENT    | less verbose


SEE ALSO
	inkscape(1)


AUTHOR
	metaory <metaory@gmail.com>, Apr 2024
```

-------------


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


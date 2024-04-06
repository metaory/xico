XICO
====

```ex
NAME
	xico - make images from a character, user, custom config toml


SYNOPSIS
	xico [-h | --help] [-c | --config FILE] [-i | --input CHAR [--] OUTPUT_FILE];


DESCRIPTION
	xico is a simple cli tool to make images from unicode glyphs

	output can only be png or svg

	define a collection of jobs in user config "$XDG_CONFIG_HOME/xico/config.toml"

    or specify alternative configuration file to use with "-c | --config FILE"


OPTIONS
	-i, --input <INPUT_CHAR> <OUTPUT_FILE>  image character & destination path
	-c, --config <CONFIG_FILE>              specify alternative configuration file to use
											[default: $XDG_CONFIG_HOME/xico/config.toml]
	-h, --help                              display help
	 # -b, --background                     [TODO] image background color
	 # -f, --foreground                     [TODO] image foreground color
	 # -s, --size                           [TODO] image size


EXAMPLES
	# convert one character
	xico -i 𝝺 lambda.png

	# process with user configuration file
	xico

	# process with alternative configuration file
	xico -c awesome-xico.toml


CONFIGURATION
	bare minimum toml support, key value pair, table, array

	This section documents the root level of the configuration file.

	[<string>]

		Define logical tables to group collections

		base = ''

			Optional base path for the group "icons" destinations

		icons = [ [<char>, <path>], ... ]

			Array of icon tuples with two fields, the first is the character & second is the destination path.

			It will be concatinated with the "base" key if defined.


SAMPLE
	# $XDG_CONFIG_HOME/xico/config.toml
	[somekey]
	icons = [
	  ['⊖', '/tmp/nada/xorg.png'],
	  ['◪', 'noop.png'],
	]

	[awesome.layout]
	base = '~/.config/awesome/themes/meta/icons/layout'
	icons = [
	  ['⛛', 'dummy_float.png'],
	  ['𝝺', 'dummy_tiled.png'],
	  ['', 'dummy_uhumm.png'],
	]


ENVIRONMENT.VARIABLES
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


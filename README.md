XICO
====

```ex
NAME
	xico - make images from a character or a toml template


SYNOPSIS
	xico [-t path] | [-c char path]


DESCRIPTION
	xico is a simple way to make images from any unicode glyphs


EXAMPLES
    # make a single image from a character
	xico -c ▲ trngl.png

    # make images from a xico config
	xico -t awm_layouts.toml

CONFIGURATION
	# XXX: toml config


ENVIRONMENT VARIABLES
	XICO_BASE      | prefix all output paths
	XICO_SILENT    | silent query & result prints


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
# xico --help
```

TODO
====
- [ ] Makefile


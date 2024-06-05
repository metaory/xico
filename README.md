XICO
====

### simple cli to make png images from ascii characters

<p align="middle">
  <img src=".github/assets/xico.png" />
</p>

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

░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░

## DESCRIPTION

`xico` is a simple `svg` template.

Rendered with options from command-line or a template file.

It creates `png` images from the `svg`

The `svg` contains only 2 elements
- `<rect>` [SVG/Element/rect](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect)
- `<text>`  [SVG/Element/text](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text)

Most of their attributes [rect attr](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect#attributes) [text attr](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text#attributes) are added.

Check [Custom Attributes](#custom-attributes) section for adding custom attributes.

## SYNOPSIS

	xico [OPTION]... CHARACTER FILE


## Options

### CLI Only Options

These options are only available on CLI

| cli options      | alias  |
| ---------------- | ------ |
| --template       | -t     |
| --help           | -h     |
| --no-delay       |        |

### Options

These options are available in template and CLI

| options          | alias  | default    |
| ---------------- | ------ | ---------- |
| bg-fill          | bg     |  black     |
| bg-width         | w      |  100       |
| bg-height        | h      |  100       |
| bg-opacity       |        |  1         |
| bg-rx            | r      |  25        |
| bg-ry            | r      |  25        |
| bg-x             |        |  0         |
| bg-y             |        |  0         |
| text-fill        | fg     |  #3311FF   |
| text-font-family | ff     |  monospace |
| text-font-weight | fw     |  bold      |
| text-font-size   | fs     |  8em       |
| text-dx          |        |  0         |
| text-dy          |        |  0         |
| text-x           |        |  50        |
| text-y           |        |  50        |
| size             | s      |  500       |
| delay            | d      |  3         |

#### CLI Usage

> [!NOTE]
> In command-line
>
> long-options prefixed with double hyphen `--`
> aliases with single hyphen `-`
>
> eg. `--text-font-size 9em` or `-fs 9em`

eg.

	xico --bg-fill '#3300FF'

Or alias if available

	xico -bg '#3300FF'

#### Template Usage

All options or their alias can be set in a _xico template_ `*.xc.conf`

`set`, `put` and `pre` are the only commands

##### Set command

	set <option> <value>

This will set or update the option

`set` commands can be repeated, the latest would take precedence.


	# foo.xc.conf

	set bg-fill '#3311FF'
	set text-font-size 64px


Or alias _if available_

	set bg '#3311FF'
	set fs 10em

Set commands can be repeated, every set will overwrite the previous value

##### Put command

`put <char> <destination>`

This will create an image from the `<char>` and place it `<destination>`
with the current set options

Put commands can be repeated, every put will use the options set to that point

##### Pre command

`pre <path>`

Any `put` afterwards will output with this prefix.

eg.
```sh
# ...
pre /tmp/foo/

set bg red
put テ hoge.png

set fg blue
put た fuga.png

# ──────────────────────────

pre ~/.config/awesome/layout

set bg ''
set fg '#3311FF'

pre ~/.config/awesome/layout/

put 􁒠  tiletop.png
put 􁒣  tileright.png
put 􁒡  tilebottom.png
put 􁒢  tileleft.png
```

Will output to

	/tmp/foo/hoge.png
	/tmp/foo/fuga.png

Check [lib/sample.xc.conf](lib/sample.xc.conf) for more examples

---

	eg. xico -bg red -fg '#3311ff' 󰘧 hello.png


The final positional arguments is required if no template is provided

> [!NOTE]
> All positioning options can be `<length>|<percentage>`
>
> eg. `bg-width 10px` or `bg-width 10%` or `bg-width 10`


> [!NOTE]
> Percentage unit and option with no unit identifier behave the same
>
> eg. `bg-width 10px` and `bg-width 10`

> [!NOTE]
> Font size option can be `<absolute-size>|<relative-size>|<length-percentage>`
>
> eg. `text-font-size 22px` or `fs 5em`

> [!NOTE]
> A rect with `radius` of `50` is circle!
>
> can be set with `radius` or `r`
> or separately for each axis `bg-rx` & `bg-ry`
>
> eg. `radius 50` or `r 50` or ( `bg-rx 50` & `bg-ry 50` )


> [!NOTE]
> The output is always square
>
> Set the output size with `size` or its alias `s`
> width and height would be set to that value
>
> eg. `size 700` or `s 700`

> [!Important]
> `size` is integer without any unit, _its always in `px`_

> [!NOTE]
> The text is always centered
>
> it can be adjusted with `text-x, text-y, text-dx, text,dy`

> [!NOTE]
> The output is always square
>
> a square starting from `(0,0)`
> with width and height of `100`
> and radius of `25`
> can be adjusted with options

> [!Caution]
>	options with special character need quoting

> [!NOTE]
> Options can be used mixed together
> as command-line options or in template

> [!Important]
> Options can be repeated
> the final one takes precedence.

---

### EXAMPLES

	# convert one character
	xico 𝝺 lambda.png

	# create png from character with rounded cover, custom fg and bg, font size
	xico -bg '#112233' -fg '#4411ff' -fs 4em 𝝺 ~/pics/x1.png

	# create a new image from character with custom color, transparent background and default config
	xico -fg '#AA1144' ✪  ~/pics/x2.png

	# process a template file
	# xico -t awesome.xc.conf

---

### Custom Attributes

To add other attributes add an entry To add the `XC` associative array.
Prefix `bg-` for `<rect>` element and `text-` for `<text>` element

Almost all [Presentation attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute#presentation_attributes) should work

For `<rect>` element
`[bg-<attribute>]=<default>`

For `<text>`
`[text-<attribute>]=<default>`

eg.
```sh
[text-stroke]='#0077EE'
[text-stroke-width]=3
[text-writing-mode]=vertical-lr

[bg-stroke-width]=2
[bg-stroke-linejoin]=round
[bg-stroke-miterlimit]=214
```

### The SVG template

Is a simple SVG file placed in [lib/xico.svg] can easily be extended.

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
ln -svf $PWD/xico /usr/bin/xico

# Use it anywhere
xico 𐰒 zig.png

xico -bg '#112222'-fg '#AA11FF' --radius 50 𝝺 lambda.png

# Usage
xico --help
```

TODO
====
- [ ] Dynamic readme usage
- [ ] Dynamic cli usage
- [X] Dynamic attributes
- [X] Template
- [x] Attributes; bg, fg, font, size
- [ ] Fallback engines for Inkscape, Cairo, Convert, ...
- [ ] Handle env settings
- [ ] Handle stdin
- [ ] Makefile

---


## ENVIRONMENT VARIABLES

	# XICO_SILENT    | less verbose
	# XICO_DEBUG     | debug mode


## SEE ALSO
	inkscape(1)


## AUTHOR
	metaory <metaory@gmail.com>, Apr 2024

---


	▀▄▀ █ █▀▀ █▀█
	█░█ █ █▄▄ █▄█
	▁▁▁▁▁▁▁▁v0.4▁


---

## License

[MIT](LICENSE)

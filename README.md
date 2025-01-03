<div align="center">
  <h1>𐆖𖭐ꛕ𐊔</h1>
  <img src=".github/assets/xico.png" width="168px"/>
  <h4>simple cli to make png images from unicode characters</h4>
</div>

<div align="center">
    <img src="https://raw.githubusercontent.com/metaory/metaory/refs/heads/master/.github/xico_f/README.png" height="640"/>
    <p><code>@1736000000</code></p>
</div>

<div align="center">
  <img src=".github/assets/x01.png" width="96" />
  <img src=".github/assets/x02.png" width="96" />
  <img src=".github/assets/x03.png" width="96" />
  <img src=".github/assets/x04.png" width="96" />
  <img src=".github/assets/x05.png" width="96" />
  <img src=".github/assets/x06.png" width="96" />
  <img src=".github/assets/x07.png" width="96" />
  <img src=".github/assets/x08.png" width="96" />
  <img src=".github/assets/x09.png" width="96" />
  <img src=".github/assets/x10.png" width="96" />
  <img src=".github/assets/x11.png" width="96" />
  <img src=".github/assets/x12.png" width="96" />
  <img src=".github/assets/x13.png" width="96" />
  <img src=".github/assets/x14.png" width="96" />
  <img src=".github/assets/x15.png" width="96" />
  <img src=".github/assets/x16.png" width="96" />
  <!-- <img src=".github/assets/x17.png" width="96" /> -->
  <img src=".github/assets/x18.png" width="96" />
</div>

---

## DESCRIPTION

`xico` is a simple `svg` template.

Rendered with options from command-line or a template file.

It creates `png` images from the `svg`

The `svg` contains only 2 elements
- `<rect>` [SVG/Element/rect](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect)
- `<text>` [SVG/Element/text](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text)

Most of their attributes [rect attr](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/rect#attributes) and [text attr](https://developer.mozilla.org/en-US/docs/Web/SVG/Element/text#attributes) are added.

Check [Custom Attributes](#custom-attributes) section for adding custom attributes.

## SYNOPSIS

	xico [OPTION]... CHR FILE

	possible output FILE extension[svg,png,ps,eps,pdf,emf,wmf,xaml]

## Options

### CLI Only Options

These options are only available on CLI
 --export-filename  Output file name


| cli option | alias | default |
| ---------- | ----- | ------- |
| --help     | -h    |         |
| --size     | -s    | 500     |
| --template | -t    |         |
| --delay    |       | 3       |
| --no-delay |       |         |

### Options

These options are available in template and CLI

| option             | alias | default |
| -------------------| ----- | ------- |
| delay              | d     | 3       |
| size               | s     | 500     |
| background         | xbg   | black   |
| background-opacity | xbo   | 0       |

| rect option  | alias | default |
| ------------ | ----- | ------- |
| r_fill       | bg    | black   |
| r_width      | w     | 100     |
| r_height     | h     | 100     |
| r_opacity    | o     | 0.5     |
| r_rx         | r     | 25      |
| r_ry         | r     | 25      |
| r_x          |       | 0       |
| r_y          |       | 0       |

| text option        | alias  | default        |
| ------------------ | ------ | -------------- |
| t_fill             | fg     | #3311FF        |
| t_stroke-color     | stroke | cyan           |
| t_stroke-width     | border | 0              |
| t_stroke-linecap   |        | round          |
| t_stroke-linejoin  |        | round          |
| t_font-family      | ff     | monospace      |
| t_font-weight      | fw     | bold           |
| t_font-size        | fs     | 8em            |
| t_rotate           |        | 0              |
| t_transform        |        | translate(0,0) |
| t_transform-origin |        | center         |
| t_dx               |        | 0              |
| t_dy               |        | 3.5            |
| t_x                | x      | 50             |
| t_y                | y      | 50             |


#### CLI Usage

> [!NOTE]
> In command-line
>
> long-options prefixed with double hyphen `--`
> aliases with single hyphen `-`
>
> eg. `t_font-size 9em` or `-fs 9em`

eg.

	xico --r_fill '#3300FF' λ

Or alias if available

	xico -bg '#3300FF' ᮿ

<!-- https://github.com/sigoden/aichat/blob/main/README.md?plain=1#L43 -->

### Multi-Form Input

Accept various forms of input, such as stdin, local files & dirs, and remote URLs.

| Input             | Example                              |
| ----------------- | ------------------------------------ |
| CMD input         | `xico hello`                       |
| Stdin pipe        | `cat data.txt \| xico`             |
| Local files       | `xico -f data.txt`                 |
| Local images      | `xico -f image.png`                |
| Local directories | `xico -f dir/`                     |
| Remote URLs       | `xico -f https://example.com`      |
| Combine Inputs    | `xico -f dir/ -f data.txt explain` |


#### Template Usage

All options or their alias can be set in a xico template

`set`, `put`, `res` and `pre` are the only commands

> [!NOTE]
> `template` file **name** or **extension** can be anything

##### SET command

	set <option> <value>

This will set or update the option

`set` commands can be repeated, the latest would take precedence.


	# foo.xc

	set r_fill #3311FF
	set t_font-size 64px


Or alias _if available_

	set bg #3311FF
	set fs 10em

Set commands can be repeated, every set will overwrite the previous value

##### PUT command

`put <char> <destination>`

This will create an image from the `<char>` and place it `<destination>`
with the current set options

Put commands can be repeated, every put will use the options set to that point

##### RES command

`res`

Or

`reset`

Will reset all `set` options, any `put` afterwards would use the default options

##### PRE command

`pre <path>`

Any `put` afterwards will output with this prefix.

EG.

```sh
# ...
pre /tmp/foo

set bg red
put テ hoge.png

set fg blue
put た fuga.png

# will create
#	/tmp/foo/hoge.png
#	/tmp/foo/fuga.png

pre $HOME/.config/awesome/layout/

set fg #3311FF

put ⬒  tiletop.png
put ◨  tileright.png

set fg #AA44FF

put ⬓  tilebottom.png
put ◧  tileleft.png

res

put ⬓  with_default_option_tilebottom.png
put ◧  with_default_option_tileleft.png
```

	eg. xico -bg red -fg '#3311ff' 󰘧 hello.png


#### 💡 Check complete template [templates/default.xc](templates/default.xc)

#### 🐣 Check starter template [templates/starter.xc](templates/starter.xc)

## Get Started

```
cp templates/starter.xc <path>
xico -t <path>
```

---

> [!CAUTION]
> The final positional arguments is required if no template is provided

> [!NOTE]
> The output is always square
>
> Set the output size with `size` or its alias `s`
>
> eg. `size 700` or `s 700`
> would be a square 700x700px png

> [!IMPORTANT]
> `size` is integer without any unit, _its always in `px`_

> [!NOTE]
> The text is always centered
>
> it can be adjusted with `t_x, t_y, t_dx, t-dy`

> [!NOTE]
> The output is always full square on `(0,0)`

> [!NOTE]
> the background <rect> default radius is `25`
>
> set radius to `50` for a **perfect circle**
> you can set radius with `r` or `r_rx` and `r_ry`

> [!CAUTION]
> options with special character need quoting

> [!NOTE]
> Options can be used mixed together
> as command-line options or in template

> [!IMPORTANT]
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
	# xico -t awesome-xico.xc

---

### Custom Attributes

To add other attributes add an entry To add the `XC` associative array.
Prefix `r_` for `<rect>` element and `t_` for `<text>` element

Almost all [Presentation attributes](https://developer.mozilla.org/en-US/docs/Web/SVG/Attribute#presentation_attributes) should work

For `<rect>` `[r_<attribute>]=<default>`

For `<text>` `[t_<attribute>]=<default>`

eg.
```sh
[t_writing-mode]=vertical-lr

[r_stroke-miterlimit]=214
```

### The SVG template

Is a simple SVG file placed in [lib/xico.svg](lib/xico.svg) can easily be extended.

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

xico -bg '#112222'-fg '#AA11FF' -r 50 𝝺 lambda.png

# Usage
xico --help
```

TODO
====
- [ ] Dynamic readme usage
- [ ] Dynamic cli usage
- [X] Dynamic attributes
- [X] Reset opts action
- [X] Template
- [x] Attributes; bg, fg, font, size

##### Fallback rendering engines

- [.] [ImageMagick](https://www.imagemagick.org) _cairo_
- [.] [libvips](https://github.com/libvips/libvips) _cairo_
- [.] [librsvg](https://wiki.gnome.org/projects/librsvg) _cairo_

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
	▁▁▁▁▁▁▁▁v0.7▁


---

## License

[MIT](LICENSE)

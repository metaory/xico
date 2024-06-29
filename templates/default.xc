#
#  ▀▄▀ █ █▀▀ █▀█
#  █░█ █ █▄▄ █▄█
#  ▁▁▁▁▁▁▁▁v0.7▁
#
# https://github.com/metaory/xico
# #######################################################################

# ╭────────────────────┬────────┬────────────────┬───────────────────────────────────────────────────────────────────────────────────╮
# │ option             │ alias  │ default        │ type                                                                              │
# ╞════════════════════╪════════╪════════════════╪═══════════════════════════════════════════════════════════════════════════════════╡
# │ r_fill             │ bg     │ black          │ [ <hex-color> | <named-color> | <rgb()> | <rgba()> | <hsl()> <hsla()> | <lab()> ] │
# │ r_width            ┆ w      ┆ 100            ┆ [ auto | <length> | <percentage> ]                                                │
# │ r_height           │ h      │ 100            │ [ auto | <length> | <percentage> ]                                                │
# │ r_opacity          ┆ o      ┆ 0.5            ┆ [ <number>(0,1) | <percentage> ]                                                  │
# │ r_rx               │ r      │ 25             │ [ <length> | <percentage> | auto ]                                                │
# │ r_ry               ┆ r      ┆ 25             ┆ [ <length> | <percentage> | auto ]                                                │
# │ r_x                │        │ 0              │ [ <length> | <percentage> ]                                                       │
# │ r_y                ┆        ┆ 0              ┆ [ <length> | <percentage> ]                                                       │
# ├╌─╌╌╌─╌╌─╌─╌╌╌╌─┄╌──┼─╌╌─╌─╌─┼─╌╌─╌╌─╌─╌──────┼─╌╌─╌─╌─╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌─────────┤
# │ t_fill             │ fg     │ #3311FF        │ [ <hex-color> | <named-color> | <rgb()> | <rgba()> | <hsl()> <hsla()> | <lab()> ] │
# │ t_font-family      ┆ ff     ┆ monospace      ┆ [ <family-name> | <generic-family> ]                                              │
# │ t_font-weight      │ fw     │ bold           │ [ <normal | bold | bolder | lighter | <number> ]                                  │
# │ t_font-size        ┆ fs     ┆ 8em            ┆ [ <absolute-size> | <relative-size> | <length-percentage> ]                       │
# │ t_rotate           │ rotate │ 0              │ [ auto | auto-reverse | <number> ]                                                │
# │ t_transform        │        │ translate(0,0) │ [ <transform-function> ]                                                          │
# │ t_transform-origin ┆        ┆ center         ┆ [ <transform-origin> ]                                                            ┆
# │ t_dx               │        │ 0              │ [ <length-percentage> | <number> ]                                                │
# │ t_dy               ┆        ┆ 3.5            ┆ [ <length-percentage> | <number> ]                                                │
# │ t_x                │ x      │ 50             │ [ <length> | <percentage> ]                                                       │
# │ t_y                ┆ y      ┆ 50             ┆ [ <length> | <percentage> ]                                                       │
# ├╌─╌╌╌─╌╌─╌─╌╌╌╌─┄╌──┼─╌╌─╌─╌─┼─╌╌─╌╌─╌─╌─╌──╌─┼─╌╌─╌─╌─╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌──╌╌─╌─╌─╌╌─╌─╌─────────┤
# │ size               ╎ s      ╎ 500            ╎ [ <number> ]                                                                      │
# │ delay              ╎ d      ╎ 3              ╎ [ <number> ]                                                                      │
# ╰────────────────────┴────────┴────────────────┴───────────────────────────────────────────────────────────────────────────────────╯

##################################
## below are the default options
#####

############################################################
## these command is equivalent of the rest of the template
#####

# xico ᮷ xico.png

# or ..

# xico -bg black -w 100 -h 100 -o 0.5 -r 25 --r_x 0 --r_y 0 \
#      -fg '#3311FF' -ff monospace -fw bold -fs 8em --t_rotate 0 \
#      --t_dx 0 --t_dy 4 -x 50 -y 50 -s 500 \
#      --t_transform none --t_transform-origin center \
#      -d 0 ᮷ xico.png

############################################################
## run this template with
#
# xico -t default.xc
#####
## or copy the starter template and start there
#
# cp templates/starter.xc <path>
# xico -t <path>
#########################################################################

#--@opt r_fill | bg: [ <hex-color> | <named-color> | <rgb()> | <rgba()> | <hsl()> <hsla()> | <lab()> ] = black
set bg black

#--@opt r_width | w: [ auto | <length> | <percentage> ] = 100
set w 100

#--@opt r_height | h: [ auto | <length> | <percentage> ] = 100
set h 100

#--@opt r_opacity | o: [ <number>(0,1) | <percentage> ] = 0.5
set o 0.5

#--@opt r_rx | r: [ <length> | <percentage> | auto ] = 25 # set 50 for perfect circle
#--@opt r_ry | r: [ <length> | <percentage> | auto ] = 25 # the r alias will set both
set r 25

#--@opt r_x: [ <length> | <percentage> ] = 0
set r_x 0

#--@opt r_y: [ <length> | <percentage> ] = 0
set r_y 0

#--@opt t_fill | fg: [ <hex-color> | <named-color> | <rgb()> | <rgba()> | <hsl()> <hsla()> | <lab()> ] = #3311FF
set fg #3311FF

#--@opt t_font-family | ff: [ <family-name> | <generic-family> ] = monospace
set ff monospace

#--@opt t_font-weight | fw: [ <normal | bold | bolder | lighter | <number> ] = bold
set fw bold

#--@opt t_font-size | fs: [ <absolute-size> | <relative-size> | <length-percentage> ] = 8em # x-large, smaller, 20%, 20px
set fs 8em

#--@opt t_rotate: [ auto | auto-reverse | <number> ] = 0
set t_rotate 10

#--@opt t_transform: [ none | <transform-list> ] = none
set t_transform none

#--@opt t_transform-origin: [ <transform-origin> ] = center
set t_transform-origin center

#--@opt t_dx: [ <length-percentage> | <number> ] = 0
set t_dx 0

#--@opt t_dy: [ <length-percentage> | <number> ] = 3.5
set t_dy 3.5

#--@opt t_x | x: [ <length> | <percentage> ] = 50
set x 50

#--@opt t_y | y: [ <length> | <percentage> ] = 50
set y 50

#--@opt size | s: [ <number> ] = 500
set s 500

#--@opt delay | d: [ <number> ] = 3
set d 0

#--@action pre: [ <path> ]
# pre $HOME/awesome/themes/$USER/icons/layout

#--@action put: [ <character> ] [ <path> ]
put ᮷ xico.png


#--@action reset | res: reset all set options
put ᮷ xico.png

# vim:ft=config:syntax=spec:commentstring=#%s:

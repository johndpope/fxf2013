<chart>
symbol=GBPUSD
period=60
leftpos=64957
digits=5
scale=16
graph=1
fore=0
grid=1
volume=0
scroll=1
shift=1
ohlc=1
askline=0
days=0
descriptions=0
shift_size=20
fixed_pos=0
window_left=75
window_top=75
window_right=988
window_bottom=398
window_type=3
background_color=16777215
foreground_color=0
barup_color=0
bardown_color=0
bullcandle_color=16777215
bearcandle_color=0
chartline_color=0
volumes_color=32768
grid_color=12632256
askline_color=17919
stops_color=17919

<window>
height=100
<indicator>
name=main
</indicator>
<indicator>
name=Custom Indicator
<expert>
name=FantailVMA3
flags=339
window_num=0
<inputs>
ADX_Length=2
Weighting=2.00000000
MA_Length=1
MA_Mode=1
</inputs>
</expert>
shift_0=0
draw_0=0
color_0=0
style_0=0
weight_0=2
period_flags=0
show_data=1
</indicator>
<indicator>
name=Custom Indicator
<expert>
name=FantailVMA3
flags=339
window_num=0
<inputs>
ADX_Length=2
Weighting=2.00000000
MA_Length=26
MA_Mode=1
</inputs>
</expert>
shift_0=0
draw_0=0
color_0=255
style_0=0
weight_0=2
period_flags=0
show_data=1
</indicator>
<indicator>
name=Custom Indicator
<expert>
name=FantailVMA3
flags=339
window_num=0
<inputs>
ADX_Length=2
Weighting=2.00000000
MA_Length=100
MA_Mode=1
</inputs>
</expert>
shift_0=0
draw_0=0
color_0=14772545
style_0=0
weight_0=2
period_flags=0
show_data=1
</indicator>
</window>
</chart>

<chart>
symbol=GBPUSD
period=5
leftpos=19634
digits=5
scale=8
graph=1
fore=0
grid=0
volume=1
scroll=1
shift=1
ohlc=1
one_click=0
askline=1
days=1
descriptions=1
shift_size=20
fixed_pos=0
window_left=132
window_top=132
window_right=852
window_bottom=431
window_type=3
background_color=0
foreground_color=16777215
barup_color=65280
bardown_color=65280
bullcandle_color=0
bearcandle_color=16777215
chartline_color=65280
volumes_color=3329330
grid_color=10061943
askline_color=255
stops_color=255

<window>
height=156
<indicator>
name=main
</indicator>
<indicator>
name=Custom Indicator
<expert>
name=uni_cross
flags=275
window_num=0
<inputs>
UseSound=0
TypeChart=0
UseAlert=1
NameFileSound=alert.wav
T3Period=14
T3Price=0
b=0.61800000
Snake_HalfCycle=5
Inverse=0
DeltaForSell=0
DeltaForBuy=0
</inputs>
</expert>
shift_0=0
draw_0=3
color_0=16711680
style_0=0
weight_0=2
arrow_0=233
shift_1=0
draw_1=3
color_1=255
style_1=0
weight_1=2
arrow_1=234
period_flags=0
show_data=1
</indicator>
<indicator>
name=Custom Indicator
<expert>
name=T3_clean
flags=339
window_num=0
<inputs>
T3Period=14
T3Price=0
b=0.61800000
TimeFrame=current time frame
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
name=Snake
flags=339
window_num=0
<inputs>
Snake_HalfCycle=5
</inputs>
</expert>
shift_0=0
draw_0=0
color_0=65535
style_0=0
weight_0=0
period_flags=0
show_data=1
</indicator>
<indicator>
name=Ichimoku Kinko Hyo
tenkan=9
kijun=26
senkou=52
color=255
style=0
weight=3
color2=16711680
style2=0
weight2=3
color3=65280
style3=0
weight3=1
color4=6333684
style4=2
weight4=1
color5=14204888
style5=2
weight5=1
period_flags=0
show_data=1
</indicator>
<indicator>
name=Bollinger Bands
period=20
shift=0
deviations=2
apply=0
color=16777215
style=0
weight=1
period_flags=0
show_data=1
</indicator>
</window>

<window>
height=29
<indicator>
name=MACD
fast_ema=12
slow_ema=26
macd_sma=9
apply=0
color=12632256
style=0
weight=1
signal_color=255
signal_style=2
signal_weight=1
period_flags=0
show_data=1
</indicator>
</window>

<window>
height=26
<indicator>
name=Stochastic Oscillator
kperiod=14
dperiod=7
slowing=7
method=0
apply=0
color=11186720
style=0
weight=1
color2=255
style2=2
weight2=1
min=0.000000
max=100.000000
levels_color=12632256
levels_style=2
levels_weight=1
level_0=20.0000
level_1=80.0000
period_flags=0
show_data=1
</indicator>
</window>

<window>
height=39
<indicator>
name=Custom Indicator
<expert>
name=Fisher_no_repainting
flags=339
window_num=3
<inputs>
RangePeriods=30
PriceSmoothing=0.30000000
IndexSmoothing=0.30000000
</inputs>
</expert>
shift_0=0
draw_0=12
color_0=0
style_0=0
weight_0=0
shift_1=0
draw_1=2
color_1=65280
style_1=0
weight_1=4
shift_2=0
draw_2=2
color_2=255
style_2=0
weight_2=4
period_flags=0
show_data=1
</indicator>
</window>
</chart>


from i3pystatus import Status
from i3pystatus.weather import weathercom
from i3pystatus.weather import wunderground

# status = Status(logfile="/home/dominik/var/i3pystatus.log")
status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
# status.register("clock",
# format="%a %-d %b %X W%V",)

status.register(
    "clock",
    format="%a %-d %b %X ",
    # color="#ff0000ff",
    hints={
        "markup": "pango",
        "min_width": "1366",
        "align": "center",
    },
)  #"background": "#00FF00" },)

status.register(
    'battery',
    interval=5,
    format='BAT: [{status} ]{percentage_design:.2f}% {consumption:.2f}W {remaining}',
    alert=True,
    alert_percentage=15,
    status={
        'DPL': 'DPL',
        'CHR': 'CHR',
        'DIS': 'DIS',
        'FULL': '',
    }
)

status.register("backlight",
        format="Brightness: {percentage}%")

# status.register("weather",
                # format="{condition}, {current_temp}{temp_unit} {update_error}",
                # interval=900,
                # colorize=True,
                # backend=weathercom.Weathercom(location_code="210036ee3963854e507c1fdb804560b821aa8c0a25661de14efccf0c87f7f8c0",
                                              # units="metric", update_error="fucc"))

status.register(
    "cpu_freq",
    format="{avgg}GHz",
)

status.register("cpu_usage", format="CPU: {usage}%")

status.register("mem",
                divisor=1024**3,
                format="RAM: {used_mem}G ({percent_used_mem}%)",
                color="#ffffff")

status.register("disk",
                path="/",
                format="Disk: {used}/{total}G [{avail}G]",
                hints={'markup': 'pango'})


# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register(
    "pulseaudio",
    format="Volume: {volume}%",
)

status.register("spotify")

status.register(
    "window_title",
    format="{title}",
)

status.run()

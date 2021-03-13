from i3pystatus import Status
from i3pystatus.calendar import khal_calendar
from i3pystatus.weather import weathercom

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

# status.register("calendar",
# format="{title}, {humanize_remaining}",
# update_interval=10,
# backend=khal_calendar.Khal(config_path="/home/dominik/.config/khal/config",) #calendars="google_calendar_local")
# )

status.register("weather",
                format="{condition}, {current_temp}{temp_unit}",
                colorize=True,
                backend=weathercom.Weathercom(location_code="PLXX0040",
                                              units="metric"))

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

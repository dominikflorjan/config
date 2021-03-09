from i3pystatus import Status
from i3pystatus.calendar.google import Google

# status = Status(logfile="/home/dominik/var/i3pystatus.log")
status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
# status.register("clock",
    # format="%a %-d %b %X W%V",)

status.register("clock",
    format="%a %-d %b %X ",
    hints={"markup": "pango", "min_width": "1366", "align": "center",},)
# Shows the average load of the last minute and the last 5 minutes
# (the default value for format is used)
# status.register("load",
        # format="Average load: {avg1}, {avg5}",)
status.register("calendar",
        format="{title} {remaining}",
        update_interval=10,
        # backend=google(credentials_path="/home/dominik/Documents/", credentials_json="/home/dominik/Documents/credentials.json", days=2),
        backend=Google(credential_path="/home/dominik/Documents/credentials.json",credentials_json="/home/dominik/Documents/credentials.json", days=2, log_level=10,),
        log_level=20,
        )


status.register("cpu_freq",
        format="CPU freq: {avgg}GHz",)

# Shows your CPU temperature, if you have a Intel CPU
# status.register("temp",
    # format="{temp:.0f}°C",)

# Shows the address and up/down state of eth0. If it is up the address is shown in
# green (the default value of color_up) and the CIDR-address is shown
# (i.e. 10.10.10.42/24).
# If it's down just the interface name (eth0) will be displayed in red
# (defaults of format_down and color_down)
#
# Note: the network module requires PyPI package netifaces
# Check for interface in ifconfig 
status.register("network",
    interface="enp34s0",
    format_up="IPv4: {v4}",)

# Shows disk usage of /
# Format:
# 42/128G [86G]
status.register("disk",
    path="/",
    format="Disk space: {used}/{total}G [{avail}G]",)

status.register("mem",
        divisor = 1024**2,
        format="({percent_used_mem}%)",
        )

status.register("mem_bar",
        format="RAM:{used_mem_bar}")

# Shows pulseaudio default sink volume
#
# Note: requires libpulseaudio from PyPI
status.register("pulseaudio",
        format="Volume: {volume}",)

status.register("window_title",
        format="{title}",
        hints={"min_width": 400, "align": "right",},)

# Shows mpd status
# Format:
# Cloud connected▶Reroute to Remain
# status.register("mpd",
    # format="{title}{status}{album}",
    # status={
        # "pause": "▷",
        # "play": "▶",
        # "stop": "◾",
    # },)

status.run()

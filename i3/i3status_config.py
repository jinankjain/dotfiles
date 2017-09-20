from i3pystatus import Status

status = Status()

# Clock configuration
status.register("clock", format="%a %-d %b %X",)

# Battery status
status.register("battery",
    format="{status} {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "FULL":  "",
        "CHR":  "",
        "DIS": "",
    },)

status.register("pulseaudio",
    format=",")

status.register("mpd",
    format="{title}{status}{album}",
    status={
        "pause": "▷",
        "play": "▶",
        "stop": "◾",
    },)


status.run()

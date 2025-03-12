#!/bin/sh

STEP=5

SINK=$(pactl get-default-sink)

get_volume() {
    pactl get-sink-volume "$SINK" | awk '{print $5}' | tr -d '%'
}

is_muted() {
    pactl get-sink-mute "$SINK" | awk '{print $2}'
}

case "$1" in
    up)
        pactl set-sink-volume "$SINK" +${STEP}%
        ;;
    down)
        pactl set-sink-volume "$SINK" -${STEP}%
        ;;
    mute)
        pactl set-sink-mute "$SINK" toggle
        ;;
    get)
        get_volume
        ;;
    ''|*[!0-9]*)
        echo "Usage: volume {up|down|mute|<number>}"
        exit 1
        ;;
    *)
        pactl set-sink-volume "$SINK" "$1"%
        ;;
esac

# Optional: Send a notification (requires `dunst`)
# notify-send "Volume: $(get_volume)% (Mute: $(is_muted))"

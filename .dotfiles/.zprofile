if [[ -z $WAYLAND_DISPLAY ]]
then
    case $XDG_VTNR in
        1)
            exec sway
            ;;
    esac
fi

commands() {
    cat <<EOF
Show Widgets
Edit Widgets
Update Templates
EOF
}

run_command() {
    case "$1" in
        "Show Widgets") noctalia msg desktop-widgets-toggle ;;
        "Edit Widgets") noctalia msg desktop-widgets-toggle-edit ;;
        "Update Templates") noctalia msg templates-apply ;;
    esac
}

selection=$(commands | fuzzel --dmenu)

[ -n "$selection" ] && run_command "$selection"

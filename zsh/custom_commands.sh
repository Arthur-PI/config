function lock_screen_message {
	sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText $1
}

function service_monitoring {
	if [ $# != 2 ]; then
		echo "Usage: $0 [mode] [service_name]"
	else
		if [ `uname` = "Darwin" ]; then
			brew services $1 $2
		else
			sudo systemctl $1 $2
		fi
	fi
}

function start {
	if [ $# != 1 ]; then
		echo "Usage: $0 [service_name]"
	else
		service_monitoring $0 $1
	fi
}

function stop {
	if [ $# != 1 ]; then
		echo "Usage: $0 [service_name]"
	else
		service_monitoring $0 $1
	fi
}

function restart {
	if [ $# != 1 ]; then
		echo "Usage: $0 [service_name]"
	else
		service_monitoring $0 $1
	fi
}

function status {
	if [ $# != 1 ]; then
		echo "Usage: $0 [service_name]"
	else
		if [ `uname` = 'Darwin' ]; then
			service_monitoring info $1
		else
			service_monitoring $0 $1
		fi
	fi
}

function phpserver {
	if [ $# != 2 ]; then
		php -S localhost:8080
	elif [ $1 = "-p" ]; then
		php -S localhost:$2
	else
		php -S localhost:8080
	fi
}

function keygen {
	if [ $# != 2 ]; then
		echo "Usage: $0 [key_name] [email_address]"
	else
		ssh-keygen -t ed25519 -f ~/.ssh/$1_ed -C "$2"
		eval "$(ssh-agent -s)"
		if [[ `uname` == 'Darwin' ]]; then
			echo "Host *\n\tAddKeysToAgent yes\n\tIdentityFile ~/.ssh/$1_ed" >> ~/.ssh/config
		else
			echo "IdentityFile ~/.ssh/$1_ed" >> ~/.ssh/config
		fi
		ssh-add ~/.ssh/$1_ed
		echo "The public key:"
		cat ~/.ssh/$1_ed.pub
	fi
}



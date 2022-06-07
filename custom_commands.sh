function start {
	if [ $# != 1 ]; then
		echo "Usage: start service_name"
	elif [ $1 = "mysql" ]; then
		brew services start mysql
	else
		echo "Unknown service name: $1"
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

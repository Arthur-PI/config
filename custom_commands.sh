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

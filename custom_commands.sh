function start {
	if [$# != 1] then
		echo "Usage: start service_name"
	else if [$1 = "mysql"]
		brew services start mysql
	else
		echo "Unknown service name: $1"
	fi
}

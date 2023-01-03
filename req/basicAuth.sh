function basicAuth() {
	local username="$1"
	local password="$2"
	echo "Authorization: Basic $(echo -n "$username:$password" | base64)"
}
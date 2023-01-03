function installCert {
	function showHelp {
		echo "$(purpleFg installCert)"
		echo -e "\tinstalls the passed certificate and updates your keystore. THIS UPDATES FOR THE SYSTEM"
		echo "Usage:"
		echo -e "\t$(purpleFg installCert) $(cyanFg '<certFile>') $(cyanFg '<certName>')"
		echo "Notes:"
		echo "This will request sudo access"
	}

	local cert="$1"
	local certName="$2"
	[[ "$cert" = "" ]] && showHelp && return;
	sudo cp $cert /usr/local/share/ca-certificates/$certName.crt
	sudo update-ca-certificates
}
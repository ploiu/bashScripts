function uninstallCert {
	function showHelp {
		echo "$(purpleFg uninstallCert)"
		echo -e "\tremoves a self-installed cert from your certificate chain and from java"
		echo "Usage: "
		echo -e "\t$(purpleFg uninstallCert) $(cyanFg '<certName>')"
		echo "Notes: "
		echo -e "\twill invoke sudo"
	}

	local certName="$1"
	[[ "$certName" = "" ]] && showHelp && return;
	sudo keytool -delete -cacerts -alias $certName;
	sudo rm /usr/local/share/ca-certificates/$certName.crt
	sudo update-ca-certificates
	echo $(greenFg 'done')
}
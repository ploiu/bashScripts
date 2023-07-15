function importJavaCert {
	function showHelp {
		echo "$(purpleFg importJavaCert)"
		echo -e "\tImports a cert from your system keystore into the java keystore"
		echo "Usage:"
		echo -e "\t$(purpleFg importJavaCert) $(cyanFg '<certname>') $(cyanFg '<alias>')"
		echo "Notes:"
		echo -e "\tThis will call sudo"
	}

local certName="$1"
local alias="$2"
[[ "$certName" = "" ]] && showHelp && return;
[[ "$alias" = "" ]] && showHelp && return;
[[ -e "/usr/local/share/ca-certificates/$certName.crt" ]] || echo "/usr/local/share/ca-certificates/$certName.crt does not exist!" || return 1;

sudo keytool -importcert -alias $alias -file /usr/local/share/ca-certificates/$certName.crt -cacerts -trustcacerts

}

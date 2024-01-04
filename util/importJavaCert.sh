function importJavaCert {
	function showHelp {
		echo "$(purpleFg importJavaCert)"
		echo -e "\tImports a cert from your system keystore into the java keystore"
		echo "Usage:"
		echo -e "\t$(purpleFg importJavaCert) $(cyanFg '<certname>') $(cyanFg '<alias>') $(cyanFg '[keytoolLocation]')"
		echo "Notes:"
		echo -e "\tThis will call sudo"
	}

local certName="$1"
local alias="$2"
local keyToolLocation="$3"
[[ "$certName" = "" ]] && showHelp && return;
[[ "$alias" = "" ]] && showHelp && return;
[[ -e "/usr/local/share/ca-certificates/$certName.crt" ]] || echo "/usr/local/share/ca-certificates/$certName.crt does not exist!" || return 1;


if [ "$keyToolLocation" = "" ]; then
	sudo keytool -importcert -alias $alias -file /usr/local/share/ca-certificates/$certName.crt -cacerts -trustcacerts
else
	sudo $keyToolLocation -importcert -alias $alias -file /usr/local/share/ca-certificates/$certName.crt -cacerts -trustcacerts
fi

}

function branch {
	function showHelp {
		echo "$(purpleFg branch)"
		echo -e "\tCreates a branch with the passed name, switches to it, and pushes it to origin"
		echo "Usage: "
		echo -e "\t$(purpleFg branch) $(cyanFg '<branchName>')"
		echo "Notes:"
		echo -e "\t$(cyanFg branchName) can be any name that follows the naming rules for a git branch, and cannot be the name of a branch already in your repository."
	}
	local branchName="$1"
	[[ "$branchName" = "" ]] && showHelp && return;
	git switch -c $branchName && git push --set-upstream origin $branchName
}
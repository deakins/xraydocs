swap() {
	local search=$1
	local replace=$2
	sed -i "s|${search}|${replace}|g" conf.py
}

swap "../../XPCI" "../autodoc-temp/XPCI"
# this file -- https://raw.githubusercontent.com/soneups/setup-scripts/master/ifc.sh enos.in/ifc
ifconfig | grep "inet addr:" | awk '{print $2}' | grep -v '127.0.0.1' | cut -f2 -d:

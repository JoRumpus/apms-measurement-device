### PREPARE PROJECT STRUCTURE ###
[[ -d tools ]] || mkdir tools
[[ -d app ]] || mkdir app
#===============================#


### INSTALL TOOLS & LIBRARIES ###
# Arduino-cli
wget -qO arduino-cli.tar.gz https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz
sudo tar xf arduino-cli.tar.gz -C /usr/local/bin arduino-cli
rm arduino-cli.tar.gz

# Update Arduino library list
arduino-cli lib update-index
arduino-cli lib upgrade

# AUnit
arduino-cli lib install AUnit

# EpoxyDuino
git clone https://github.com/bxparks/EpoxyDuino.git tools/EpoxyDuino
#===============================#


###   ENVIROMENT VARIABLES & ALIASES  ###
export APM_HOME=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
export TOOLS_HOME="${APM_HOME}/tools"

# Tools paths
export EPOXY_PATH="${TOOLS_HOME}/EpoxyDuino/EpoxyDuino.mk"

#===============================#

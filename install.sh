#!/bin/bash

PLUGIN_DIR="CustomBind"
SCRIPTPATH="$(dirname "$(realpath "$0")")"
INSTALLED_PLUGINS_PATH="/usr/share/xournalpp/plugins"

if [ ! -e "$INSTALLED_PLUGINS_PATH" ]; then
    echo "Plugin directory ($INSTALLED_PLUGINS_PATH) is missing"
    exit 1
fi

sudo ln -sf $SCRIPTPATH/$PLUGIN_DIR $INSTALLED_PLUGINS_PATH

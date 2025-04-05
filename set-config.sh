#!/usr/bin/bash
echo "Checking dependencies..."
check_dependency() {
    if command -v $1 >/dev/null 2>&1; then
        echo "$1 is installed."
    else
        echo "$1 is not installed."
        echo "Please, make sure to install it and re-run this script."
        exit 1
    fi
}

check_dependency jq

echo "All dependencies are installed."

CONFIG_DIR=~/.config/discord
CONFIG_FILE="$CONFIG_DIR"/settings.json

mkdir -p "$CONFIG_DIR"

CONFIG=$(cat "$CONFIG_FILE" 2>/dev/null)

if [ -z "$CONFIG" ]; then
  echo "Your Discord client hasn't created a config file yet. I'll create a new one for you."
  echo "Make sure you're using the correct script for your Discord version."
  CONFIG='{}'
fi

MODIFIED_CONFIG=$(echo $CONFIG | jq ".SKIP_HOST_UPDATE = true")

echo "New config file:"
echo $(jq -C <<< $MODIFIED_CONFIG)

mv "$CONFIG_FILE" "$CONFIG_DIR"/settings.json.old 2>/dev/null # Backup old config file (if it exists)
echo $MODIFIED_CONFIG > "$CONFIG_FILE"
echo "Saved in $CONFIG_FILE"


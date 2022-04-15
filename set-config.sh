#!/usr/bin/env bash

CONFIG_FILE=~/.config/discord/settings.json

mkdir -p $(dirname "$CONFIG_FILE")

CONFIG=$(cat "$CONFIG_FILE" 2>/dev/null)
: "${CONFIG:={\}}"

MODIFIED_CONFIG=$(echo $CONFIG | jq ".SKIP_HOST_UPDATE = true")

echo $MODIFIED_CONFIG > "$CONFIG_FILE"


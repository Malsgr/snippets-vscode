#!/bin/bash

CONFIG_DIR="$HOME/.config/Code/User"

mkdir -p "$CONFIG_DIR/snippets"

cp snippets/sql.json "$CONFIG_DIR/snippets/sql.json"
cp snippets/html.json "$CONFIG_DIR/snippets/html.json"
cp snippets/javascript.json "$CONFIG_DIR/snippets/javascript.json"

echo "Snippets installed to $CONFIG_DIR/snippets/"

#!/bin/bash

CONFIG_DIR="$HOME/.config/Code/User"

mkdir -p "$CONFIG_DIR/snippets"

cp snippets/sql.json "$CONFIG_DIR/snippets/sql.json"
cp snippets/html.json "$CONFIG_DIR/snippets/html.json"
cp snippets/javascript.json "$CONFIG_DIR/snippets/javascript.json"
cp snippets/conectarse.json "$CONFIG_DIR/snippets/conectarse.json"

python3 -c "
import json

# Read html.json
with open('snippets/html.json', 'r', encoding='utf-8') as f:
    html_snippets = json.load(f)

# Read pagina.json
with open('snippets/pagina.json', 'r', encoding='utf-8') as f:
    pagina_snippets = json.load(f)

# Merge pagina.json into html.json
html_snippets.update(pagina_snippets)

# Write to destination
with open('$CONFIG_DIR/snippets/html.json', 'w', encoding='utf-8') as f:
    json.dump(html_snippets, f, indent=4, ensure_ascii=False)
"

echo "Snippets installed to $CONFIG_DIR/snippets/"

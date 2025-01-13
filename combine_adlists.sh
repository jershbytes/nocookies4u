#!/bin/bash

# Define the URLs of the ad lists
ADLISTS=(
"https://raw.githubusercontent.com/PolishFiltersTeam/KADhosts/master/KADhosts.txt"
"https://v.firebog.net/hosts/AdguardDNS.txt"
"https://v.firebog.net/hosts/Easyprivacy.txt"
"https://raw.githubusercontent.com/Perflyst/PiHoleBlocklist/master/SmartTV.txt"
"https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"
"https://raw.githubusercontent.com/FadeMind/hosts.extras/master/add.Spam/host"
"https://v.firebog.net/hosts/static/w3kbl.txt"
"https://adaway.org/hosts.txt"
"https://v.firebog.net/hosts/Admiral.txt"
"https://v.firebog.net/hosts/Prigent-Ads.txt"
"https://raw.githubusercontent.com/anudeepND/blacklist/master/adservers.txt"
)

# File to store the consolidated list
OUTPUT_FILE="$(dirname "$0")/duck_list.txt"

# Temporary file for processing
TEMP_FILE=$(mktemp)

# Download and combine lists
for URL in "${ADLISTS[@]}"; do
    curl -s "$URL" >> "$TEMP_FILE"
done

# Remove duplicates and sort
sort -u "$TEMP_FILE" > "$OUTPUT_FILE"

# Cleanup
rm "$TEMP_FILE"

echo "Combined ad list saved to $OUTPUT_FILE"

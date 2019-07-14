#!/bin/bash

# Script by Valentin DEVILLE (https://github.com/MyTheValentinus/zabbix-telegram.sh/)

URL="https://api.telegram.org/bot${1}/sendMessage"
DEST=$2
SUBJECT=$3
TEXT=$4

MESSAGE=$(cat <<EOF
${SUBJECT}

${TEXT}
EOF
)

JSON=$(cat <<EOF
{
        "chat_id": "${DEST}",
        "text": "${MESSAGE}",
        "parse_mode": "html",
        "disable_web_page_preview": True
}
EOF
)

curl -X POST -H "Content-Type: application/json" --data "${JSON}" $URL

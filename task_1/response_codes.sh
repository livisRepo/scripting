#!/bin/bash

# Website to check
URL="https://www.guvi.in"

# Get the HTTP status code using curl
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}\n" $URL)

echo "HTTP Status Code: $STATUS_CODE"

# Check the status code and print message
if [ "$STATUS_CODE" -eq 200 ]; then
    echo "Success: The website is reachable."
elif [ "$STATUS_CODE" -ge 400 ] && [ "$STATUS_CODE" -lt 500 ]; then
    echo "Client Error: The request to $URL failed with status code $STATUS_CODE."
elif [ "$STATUS_CODE" -ge 500 ]; then
    echo "Server Error: The server is experiencing issues (status code $STATUS_CODE)."
else
    echo "Unknown Response: Received status code $STATUS_CODE."
fi

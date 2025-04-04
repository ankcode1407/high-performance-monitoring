#!/bin/bash

echo "Stopping Netdata service..."
sudo systemctl stop netdata

# Wait for 2 seconds
sleep 2

# Verify if Netdata stopped
if systemctl is-active --quiet netdata; then
    echo "❌ Netdata is still running!"
else
    echo "✅ Netdata stopped successfully."
fi

#!/bin/bash

echo "Starting Netdata..."
sudo systemctl start netdata
sleep 2

if systemctl is-active --quiet netdata; then
    echo "✅ Netdata started successfully!"
else
    echo "❌ Failed to start Netdata!"
fi

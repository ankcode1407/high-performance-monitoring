#!/bin/bash

echo "Checking Netdata service status..."

if systemctl is-active --quiet netdata; then
    echo "✅ Netdata is running."
    echo "---------------------------------"
    echo "📊 CPU & Memory Usage:"
    ps -C netdata -o pid,%cpu,%mem,cmd
    echo "---------------------------------"
    echo "📜 Recent logs:"
    journalctl -u netdata --no-pager | tail -10
else
    echo "❌ Netdata is NOT running."
fi

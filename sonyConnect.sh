#!/usr/bin/expect

set prompt "#"
set address XX:XX:XX:XX:XX:XX

spawn sudo systemctl restart bluetooth

spawn sudo bluetoothctl
expect -re $prompt
send "power on\r"
expect "Changing power on succeeded"
send "default-agent\r"
expect "Default agent request successful"
send "connect $address\r"
expect "Connection successful"
send "quit\r"
expect eof

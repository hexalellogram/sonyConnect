# sonyConnect
Script to connect my Sony WH-H900N headphones to my Linux desktop via Bluetooth. May work for other Bluetooth audio devices as well. Tseted with Manjaro Linux 18.0.4.

Dependencies
- `expect` - install from your distribution's repositories

Please note you will need to set your Bluetooth device's address in the line in `sonyConnect.sh` beginning with `set address`. Replace XX:XX:XX:XX:XX:XX with yours.

The headphones use Headset Head Unit (HSP/HFP) mode by default when connected. This provides muffled audio quality compared to A2DP mode (High Fidelity Playback).

This script restarts the Bluetooth service, then connects to the Bluetooth device specified in the address line.

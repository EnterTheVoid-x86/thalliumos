#!/bin/bash
curl -LO https://raw.githubusercontent.com/EnterTheVoid-x86/thalliumos/main/os-release && curl -LO https://raw.githubusercontent.com/EnterTheVoid-x86/thalliumos/main/lsb-release
sudo mv os-release /etc/os-release
sudo mv lsb-release /etc/lsb-release
echo "EnderOS has successfully been installed! Please reboot for the changes to take effect."



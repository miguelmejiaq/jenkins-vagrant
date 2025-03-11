#!bin/bash
echo "The private IP address of this VM is: $(hostname -I | awk '{print $1}')"
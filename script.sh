#!/bin/bash
#CyberPatriot Ubuntu Script

function script {
    #Configs
    sudo apt-get install libpam-cracklib
    now="$(date +'%d/%m/%Y %r')"
    gedit /etc/lightdm/lightdm.conf #Remove Guest Account + Auto Log
    gedit /etc/login.defs #Password History; Max - 90 Min - 10 Warn - 7
    gedit /etc/pam.d/common-password #Set Password Complexity
    gedit /etc/sshd_config #Deny root access
    gedit /etc/apt/
    
    #Installations/Updates
    apt-get -V -y install chkrookit gufw clamav iptables
    apt-get update -y
    
    
    #Security!!!!!!
    echo "Time to work on firewall and ports."
    ufw enable
    ufw deny 23
    ufw deny 2049
    clamscan -r /
    chkrookit
    
    #Remove unnecessary files
    find / -name '*.mp3*' -type f delete
    find / -name '*.mp4*' -type f delete
    find / -name '*.ogg*' -type f delete
    find / -name '*.mpg*' -type f delete
    find / -name '*.mpeg*' -type f delete
}

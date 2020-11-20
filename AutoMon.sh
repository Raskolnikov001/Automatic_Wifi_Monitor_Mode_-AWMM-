#!/bin/bash


#Know your network interface by typing "ip a" in your terminal.
#(My network interface is called "wlp58s0")                             
#Write yours in the variable "net_interface" below                       

net_interface="wlp58s0" 

echo ""                                                 #
echo "which based distro you have ?"                    #
echo ""                                                 # FIRST QUESTION (WICH DISTRO?)
echo "Type 1 if you have a Debian based distro."        #
echo "Type 2 if you have a Red Hat based distro."       #
echo "Type 3 if you have a Arch based distro."          #
echo ""

read DISTRO

if [ $DISTRO = "1" ];         #DEBIAN BASED
then

    echo ""                                                 
    echo "Do you have aircrack-ng installed on this PC ?"
    echo ""
    echo "Type Y if yes"
    echo "Type N if no, and want to install it"
    echo ""

    read DEB_INPUT1 

    if [[ $DEB_INPUT1 = "y" || $DEB_INPUT1 = "Y" ]]; 
    then
        echo ""
        echo "Well! We can start"
        echo ""

    elif [[ $DEB_INPUT1 = "n" || $DEB_INPUT1 = "N" ]]; 
    then
        echo ""
        echo "So we will install it now!"
        echo "First we have to update the package lists"
        apt-get update
        echo ""
        echo ""
        echo "Now we can install it"
        echo ""
        echo ""
        echo ""
        echo " Installing..."
        echo ""
        apt-get install aircrack-ng
        apt-get install iwconfig
        echo ""
        echo ""

    else
        echo "Invalid input"
        echo ""
    fi


    echo "Type 1 = Active Monitor Mode"
    echo "Type 2 = Deactivate Monitor Mode"
    echo ""


    read DEB_INPUT2

    if [ $DEB_INPUT2 = "1" ]; 
    then
        echo ""
        echo "Activating..."
        airmon-ng start $net_interface
        iwconfig

    elif [ $DEB_INPUT2 = "2" ];
    then    
        echo ""
        echo "Deactivating..."
        airmon-ng stop $net_interface"mon"
        iwconfig

    else
            echo "Invalid input. Try again with 1 or 2."
    fi



elif [ $DISTRO = "2" ];                #RED HAT BASED
then 

    echo ""                                                 
    echo "Do you have aircrack-ng installed on this PC ?"   
    echo ""                                                 
    echo "Type Y if yes"
    echo "Type N if no, and want to install it"
    echo ""

    read RPM_INPUT1

    if [[ $RPM_INPUT1 = "y" || $RPM_INPUT1 = "Y" ]]; 
    then
        echo ""
        echo "Well! We can start"
        echo ""

    elif [[ $RPM_INPUT1 = "n" || $RPM_INPUT1 = "N" ]]; 
    then
        echo ""
        echo "So we will install it now!"
        echo "First we have to update the package lists"
        yum check-update
        echo ""
        echo ""
        echo "Now we can install it"
        echo ""
        echo ""
        echo ""
        echo " Installing..."
        echo ""
        yum install aircrack-ng
        yum install iw
        yum install wireless-tools
        echo ""
        echo ""

    else
        echo "Invalid input"
        echo ""
    fi

    echo "Type 1 = Active Monitor Mode"
    echo "Type 2 = Deactivate Monitor Mode"
    echo ""

     read RPM_INPUT2

    if [ $RPM_INPUT2 = "1" ]; 
    then
        echo ""
        echo "Activating..."
        airmon-ng start $net_interface
        iwconfig

    elif [ $RPM_INPUT2 = "2" ];
    then    
        echo ""
        echo "Deactivating..."
        airmon-ng stop $net_interface"mon"
        iwconfig

    else
            echo "Invalid input. Try again with 1 or 2."
    fi


elif [ $DISTRO = "3" ];             #ARCH-LINUX BASED
then

    echo ""                                                 
    echo "Do you have aircrack-ng installed on this PC ?"   
    echo ""                                                 
    echo "Type Y if yes"
    echo "Type N if no, and want to install it"
    echo ""

    read ARCH_INPUT1

    if [[ $ARCH_INPUT1 = "y" || $ARCH_INPUT1 = "Y" ]]; 
    then
        echo ""
        echo "Well! We can start"
        echo ""

    elif [[ $ARCH_INPUT1 = "n" || $ARCH_INPUT1 = "N" ]]; 
    then
        echo ""
        echo "So we will install it now!"
        echo "First we have to update the package lists"
        pacman -Syy
        echo ""
        echo ""
        echo "Now we can install it"
        echo ""
        echo ""
        echo ""
        echo " Installing..."
        echo ""
        pacman -S aircrack-ng
        pacman -S wireless-tools
        echo ""
        echo ""

    else
        echo "Invalid input"
        echo ""
    fi

    echo "Type 1 = Active Monitor Mode"
    echo "Type 2 = Deactivate Monitor Mode"
    echo ""

     read ARCH_INPUT2

    if [ $ARCH_INPUT2 = "1" ]; 
    then
        echo ""
        echo "Activating..."
        airmon-ng start $net_interface
        iwconfig

    elif [ $ARCH_INPUT2 = "2" ];
    then    
        echo ""
        echo "Deactivating..."
        airmon-ng stop $net_interface"mon"
        iwconfig

    else
        echo "Invalid input. Try again with 1 or 2."
    fi

else 
    echo "Invalid Input. Try With 1, 2 or 3"
fi

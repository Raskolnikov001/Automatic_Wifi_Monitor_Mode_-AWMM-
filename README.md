Automatic_Wifi_Monitor_Mode (AWMM)<a name="TOP"></a>
===================

- - - - 

# Introduction #

AWMM (Automatic Wifi Monitor Mode) is a simple script written in bash which facilitates access to the monitor mode of your Wifi card.

It is compatible with: 
* Debian and derivative distribution
* rpm distributions
* Arch and derivative distribution

The script is used to both enable and disable monitor mode.

# How to Set and Use AWMM #

## All Distributions : ##

You need to make the <code>.sh</code> file executable. 

So, go to the script directory with a terminal and type:

<code> $ sudo chmod +x AutoMon.sh </code>

Then you need to set the name of your network interface.

So, type in the terminal:

<code> $ ip a </code>

Copy the name of the network interface and type in the terminal:

<code> $ nano AutoMon.sh </code>

Once you have opened the nano editor you have to paste the name of your network interface instead of <code>wlp58s0</code> in the <code> net_interface</code> variable.

Then save your changes and close the nano editor.

Now you can move the <code>.sh</code> file wherever is best for you.

To run it, type in your terminal:

<code> $ sudo ./AutoMon.sh </code>

in the directory where it is located.

<b>ATTENTION: run the script as root ! </b>

Once you have run the script follow the instructions contained in it.

The script works with the "aircrack-ng" and "airmon.ng" tools.



# Thank You #

Bug reports are welcome


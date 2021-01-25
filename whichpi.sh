!/bin/bash
# which_pi.bash
# BASH Script to display Pi Hardware version based on info found in /proc/cpuinfo
# Andy Delgado - April 11, 2017
# Info gleaned from
# http://www.raspberrypi-spy.co.uk/2012/09/checking-your-raspberry-pi-board-version

REVCODE=$(sudo cat /proc/cpuinfo | grep 'Revision' | awk '{print $3}' | sed 's/^ *//g' | sed 's/ *$//g')

if [ "$REVCODE" = "0002" ]; then
    PIMODEL="Raspberry Pi Model B Rev 1, 256 MB RAM"
fi

if [ "$REVCODE" = "0003" ]; then
    PIMODEL="Raspberry Pi Model B Rev 1 ECN0001, 256 MB RAM"
fi

if [ "$REVCODE" = "0004" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 256 MB RAM"
fi

if [ "$REVCODE" = "0005" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 256 MB RAM"
fi

if [ "$REVCODE" = "0006" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 256 MB RAM"
fi

if [ "$REVCODE" = "0007" ]; then
    PIMODEL="Raspberry Pi Model A, 256 MB RAM"
fi

if [ "$REVCODE" = "0008" ]; then
    PIMODEL="Raspberry Pi Model A, 256 MB RAM"
fi

if [ "$REVCODE" = "0009" ]; then
    PIMODEL="Raspberry Pi Model A, 256 MB RAM"
fi

if [ "$REVCODE" = "000d" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 512 MB RAM"
fi

if [ "$REVCODE" = "000e" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 512 MB RAM"
fi

if [ "$REVCODE" = "000f" ]; then
    PIMODEL="Raspberry Pi Model B Rev 2, 512 MB RAM"
fi

if [ "$REVCODE" = "0010" ]; then
    PIMODEL="Raspberry Pi Model B+, 512 MB RAM"
fi

if [ "$REVCODE" = "0013" ]; then
    PIMODEL="Raspberry Pi Model B+, 512 MB RAM"
fi

if [ "$REVCODE" = "900032" ]; then
    PIMODEL="Raspberry Pi Model B+, 512 MB RAM"
fi

if [ "$REVCODE" = "0011" ]; then
    PIMODEL="Raspberry Pi Compute Module, 512 MB RAM"
fi

if [ "$REVCODE" = "0014" ]; then
    PIMODEL="Raspberry Pi Compute Module, 512 MB RAM"
fi

if [ "$REVCODE" = "0012" ]; then
    PIMODEL="Raspberry Pi Model A+, 256 MB RAM"
fi

if [ "$REVCODE" = "0015" ]; then
    PIMODEL="Raspberry Pi Model A+, 256 MB or 512 MB RAM"
fi

if [ "$REVCODE" = "a01041" ]; then
    PIMODEL="Raspberry Pi 2 Model B v1.1, 1 GB RAM"
fi

if [ "$REVCODE" = "a21041" ]; then
    # a21041 (Embest, China)
    PIMODEL="Raspberry Pi 2 Model B v1.1, 1 GB RAM"
fi

if [ "$REVCODE" = "a22042" ]; then
    PIMODEL="Raspberry Pi 2 Model B v1.2, 1 GB RAM"
fi

if [ "$REVCODE" = "90092" ]; then
    PIMODEL="Raspberry Pi Zero v1.2, 512 MB RAM"
fi

if [ "$REVCODE" = "90093" ]; then
    PIMODEL="Raspberry Pi Zero v1.3, 512 MB RAM"
fi

if [ "$REVCODE" = "0x9000C1" ]; then
    PIMODEL="Raspberry Pi Zero W, 512 MB RAM"
fi

if [ "$REVCODE" = "a02082" ]; then
    PIMODEL="Raspberry Pi 3 Model B, 1 GB RAM"
fi

if [ "$REVCODE" = "a22082" ]; then
    PIMODEL="Raspberry Pi 3 Model B, 1 GB RAM"
fi
# adding missing models 
if [ "$REVCODE" = "a020d3" ]; then
    PIMODEL="Raspberry Pi 3 Model B+, 1GB RAM rev 1.3"
fi

if [ "$REVCODE" = "a03111" ]; then
    PIMODEL="Raspberry Pi 4, 1GB RAM rev 1.1"
fi

if [ "$REVCODE" = "b03111" ]; then
    PIMODEL="Raspberry Pi 4, 2GB RAM rev 1.1"
fi

if [ "$REVCODE" = "b03112" ]; then
    PIMODEL="Raspberry Pi 4, 2GB RAM rev 1.2"
fi

if [ "$REVCODE" = "c03111" ]; then
    PIMODEL="Raspberry Pi 4, 4GB RAM rev 1.1"
fi

if [ "$REVCODE" = "c03112" ]; then
    PIMODEL="Raspberry Pi 4, 4GB RAM rev 1.2"
fi

if [ "$REVCODE" = "c03114" ]; then
    PIMODEL="Raspberry Pi 4, 4GB RAM rev 1.4"
fi

if [ "$REVCODE" = "d03114" ]; then
    PIMODEL="Raspberry Pi 4, 8GB RAM rev 1.4"
fi

if [ "$REVCODE" = "c03130" ]; then
    PIMODEL="Raspberry Pi 400, 4GB RAM rev 1.0"
fi
echo "$PIMODEL ($REVCODE)"
#echo "Potential newer model found - see https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md"

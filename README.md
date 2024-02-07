## Installation instructions CHROOT ARM64

# 1. Go to termux and update the packages by writing 
$ pkg update   
after installing    
$ pkg upgrade

# Next, install git
$ pkg install git

# Now let's clone this repository
$ git clone https://github.com/Nikolay1257/Ubuntu-arm64_Chroot.git   

# Run the installation script
$ su ;      sh Ubuntu_arm64-install.sh   

After unpacking and installation, we will set up access to the Internet and passwords; for this, run the last script

./eth.sh

# We update packages and check for functionality
apt update  
# If everything is done correctly, then you installed successfully, and if not, then look for where you made the mistake and correct it

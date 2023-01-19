#Update Pakages 
sudo apt update 
sudo apt upgrade -y


# Purge Existing Dependencies
sudo -kS apt -y remove --purge "^libcuda.*"
sudo -kS apt -y remove --purge "^cuda.*"
sudo -kS apt -y remove --purge "^libnvidia.*"
sudo -kS apt -y remove --purge "^nvidia.*"
sudo -kS apt -y remove --purge "^tensorrt.*" 

# Purge Existing Dependencies
sudo -kS apt-get -y --purge remove "*cublas*" "cuda*" "nsight*" 
sudo -kS apt-get -y --purge remove "*nvidia*"
sudo -kS apt remove -y --autoremove nvidia-cuda-toolkit

# Install CUDA-11-6
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
echo $password | sudo -kS mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
cd ~
if [ -f "$(ls cuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb)" ]; then
echo -e "\ncuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb present\n"
else
wget https://developer.download.nvidia.com/compute/cuda/11.6.0/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb
fi
sudo -kS dpkg -i cuda-repo-ubuntu2004-11-6-local_11.6.0-510.39.01-1_amd64.deb
sudo -kS apt-key add /var/cuda-repo-ubuntu2004-11-6-local/7fa2af80.pub
sudo -kS apt-get update
sudo -kS apt-get -y install cuda-11-6

# Install CUDA-11-5
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo -kS mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
cd ~
if [ -f "$(ls cuda-repo-ubuntu2004-11-5-local_11.5.2-495.29.05-1_amd64.deb)" ]; then
echo -e "\ncuda-repo-ubuntu2004-11-5-local_11.5.2-495.29.05-1_amd64.deb present\n"
else
wget https://developer.download.nvidia.com/compute/cuda/11.5.2/local_installers/cuda-repo-ubuntu2004-11-5-local_11.5.2-495.29.05-1_amd64.deb
fi
sudo -kS dpkg -i cuda-repo-ubuntu2004-11-5-local_11.5.2-495.29.05-1_amd64.deb
sudo -kS apt-key add /var/cuda-repo-ubuntu2004-11-5-local/7fa2af80.pub
sudo -kS apt-get update
sudo -kS apt-get -y install cuda-11-5

# Install CUDA-11-4
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo -kS mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
cd ~
if [ -f "$(ls cuda-repo-ubuntu2004-11-4-local_11.4.1-470.57.02-1_amd64.deb)" ]; then
echo -e "\ncuda-repo-ubuntu2004-11-4-local_11.4.1-470.57.02-1_amd64.deb present\n"
else
wget https://developer.download.nvidia.com/compute/cuda/11.4.1/local_installers/cuda-repo-ubuntu2004-11-4-local_11.4.1-470.57.02-1_amd64.deb
fi
sudo -kS dpkg -i cuda-repo-ubuntu2004-11-4-local_11.4.1-470.57.02-1_amd64.deb
sudo -kS apt-key add /var/cuda-repo-ubuntu2004-11-4-local/7fa2af80.pub
sudo -kS apt-get update
sudo -kS apt-get -y install cuda-11-4

# Install CUDA-11-2
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
echo $password | sudo -kS mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
cd ~
if [ -f "$(ls cuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb)" ]; then
echo -e "\ncuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb present\n"
else
wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb
fi
sudo -kS dpkg -i cuda-repo-ubuntu2004-11-2-local_11.2.2-460.32.03-1_amd64.deb
sudo -kS apt-key add /var/cuda-repo-ubuntu2004-11-2-local/7fa2af80.pub
sudo -kS apt-get update
sudo -kS apt-get -y install cuda-11-2


sudo -kS apt --fix-broken -y install 
sudo -kS dpkg --force-all -i /var/cuda-repo-ubuntu2004-11-2-local/./cuda-cudart-11-2_11.2.152-1_amd64.deb

# Install CUDA-11-1
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo -kS mv cuda-ubuntu2004.pin /etc/apt/preferences.d/cuda-repository-pin-600
cd ~
if [ -f "$(ls cuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb)" ]; then
echo -e "\ncuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb present\n"
else
wget https://developer.download.nvidia.com/compute/cuda/11.1.1/local_installers/cuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb
fi
sudo -kS dpkg -i cuda-repo-ubuntu2004-11-1-local_11.1.1-455.32.00-1_amd64.deb
sudo -kS apt-key add /var/cuda-repo-ubuntu2004-11-1-local/7fa2af80.pub
sudo -kS apt-get update
sudo -kS apt-get -y install cuda-11-1


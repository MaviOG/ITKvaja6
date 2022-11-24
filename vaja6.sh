cd home
 mkdir Desktop
 mkdir Documents 
 mkdir Downloads 
 mkdir Pictures 
 mkdir Videos
for i in {1..5}
do
sudo mkdir folders$i
done;
for i in {1..5}
do
sudo useradd user$i
sudo passwd user$i
sudo usermod -a -G sudo user$i
done
sudo apt update
sudo apt upgrade
sudo apt install ufw git nginx net-tools
sudo apt-get remove docker docker-engine docker.io containerd runc 
sudo apt-get update
sudo apt-get install \ 
    ca-certificates \ 
    curl \ 
    gnupg \ 
    lsb-release
sudo mkdir -p /etc/apt/keyrings 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg ;
echo \ 
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \ 
  (lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null 
sudo apt-get update
sudo chmod a+r /etc/apt/keyrings/docker.gpg 
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
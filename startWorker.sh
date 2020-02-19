curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/ports.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/add.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/docker.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/installDocker.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/setup.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/clean.sh
curl -O https://raw.githubusercontent.com/MateuszHub/key/master/output.txt
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/master.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/push.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/storageOs.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/mssql.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/flannel.sh
curl -O https://raw.githubusercontent.com/MateuszHub/kubeadm/master/pull.sh
chmod +x ports.sh add.sh docker.sh installDocker.sh setup.sh clean.sh output.txt
./installDocker.sh
./setup.sh
sudo ./docker.sh
sudo ./add.sh
sudo ./ports.sh

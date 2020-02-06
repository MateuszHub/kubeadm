instalacja docker:  
sudo apt install docker.io -y  
uruchomienie:  
sudo systemctl start docker  
dodanie do autostart:  
sudo systemctl enable docker  
wylaczenie swap:  
sudo swapon -s  
sudo swapoff -a  
sudo reboot  
instalacja atp-http  
sudo apt install -y apt-transport-https  
dodanie klucza kubernetesa  
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -  
modyfikacja kubernetesa  
cd /etc/apt/  
sudo nano sources.list.d/kubernetes.list  
repo kubernetes  
deb http://apt.kubernetes.io/ kubernetes-xenial main  
sudo apt update  
sudo apt install -y kubeadm kubelet kubectl  
sudo kubeadm init --pod-network-cidr=10.244.0.0/16  


mkdir -p $HOME/.kube  
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config  
sudo chown $(id -u):$(id -g) $HOME/.kube/config  

sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml  




kubectl create -f https://github.com/storageos/cluster-operator/releases/download/1.5.2/storageos-operator.yaml
kubectl create -f https://raw.githubusercontent.com/MateuszHub/kubeadm/master/storageSecret.yaml
kubectl create -f https://raw.githubusercontent.com/MateuszHub/kubeadm/master/storageConfig.yaml

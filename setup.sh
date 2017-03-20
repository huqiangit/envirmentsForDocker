yum install -y git
yum install -y curl
yum install -y vim

#install golang
yum install -y golang
mkdir -p /root/work/src
echo "export GOPATH=/root/work" >> .bashrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim



#install docker
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum -y install docker-ce
systemctl start docker







yum update -y
yum install -y git
yum install -y curl
yum install -y vim
yum install -y tmux

#install golang
yum install -y golang
mkdir -p /root/work/src
echo "export GOPATH=/root/work" >> ~/.bashrc
source ~/.bashrc
#config for vim-go
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
vim +PluginInstall +qall



#install docker
yum install -y yum-utils
yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
yum makecache fast
yum -y install docker-ce
systemctl start docker


#pull docker source
git clone https://github.com/docker/docker.git /root/work/src/docker/docker 








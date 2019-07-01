#!/usr/bin/bash 
# env centos

python_version=3.6.5    # 指定python版本
python_file=python3		# python环境的python二进制文件
pip_file=pip3			# python环境的pip二进制文件
version_command=python3	# python版本的命令
pip_command=pip3		# python对应版本的pip命令



python_dir=/usr/local/$version_command

if [ -d "$python_dir" ];then
	echo "Notice: $python_dir has existed in the path";
	exit;
fi
if [ -f "/usr/bin/$version_command" ];then
        echo "Please execute the command: rm -rf /usr/bin/$version_command";
        exit;
fi

if [ -f "/usr/bin/$pip_command" ];then
        echo "Please execute the command: rm -rf /usr/bin/$pip_command";
        exit;
fi
yum update
yum install -y zlib-devel wget gcc make
wget https://www.python.org/ftp/python/$python_version/Python-$python_version.tgz
tar -xvf Python-$python_version.tgz
mkdir $python_dir
mv Python-$python_version /usr/local/
cd /usr/local/Python-$python_version
./configure --prefix=$python_dir
make && make install
ln -s $python_dir/bin/$python_file  /usr/bin/$version_command
ln -s $python_dir/bin/$pip_file  /usr/bin/$pip_command

cd -
rm -rf Python-$python_version.tgz



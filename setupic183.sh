cd ~
cp ~/cloud_stuff/ic183.sh .
cat ~/cloud_stuff/ic183.tar.gz* | tar -xvzf -
echo "alias ic=~/ic183.sh" >> ~/.bash_profile
source ~/.bash_profile


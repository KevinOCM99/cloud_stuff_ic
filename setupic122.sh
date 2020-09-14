cd ~
cp ~/cloud_stuff/ic.sh .
cat ~/cloud_stuff/ic122.tar.gz* | tar -xvzf -
echo "alias ic=~/ic.sh" >> ~/.bash_profile
source ~/.bash_profile


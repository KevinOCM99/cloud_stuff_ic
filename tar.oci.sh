cd ~
rm -rf oci.conf.tar
tar -cvf oci.conf.tar .oci
zip -0 -e oci.conf.tar.zip oci.conf.tar
rm -rf oci.conf.tar
cd -
mv ~/oci.conf.tar.zip ./

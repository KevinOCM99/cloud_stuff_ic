##################compute######################
##
#oci compute instance terminate --profile P3TO --instance-id 
###############################################
##
alias oci_ins_ll='oci compute instance list --profile P3TO --output=table --query "data [*].{InsName:\"display-name\", Status:\"lifecycle-state\", AD:\"availability-domain\", ID:\"id\"}"'



##################load balancer################
##
#oci lb load-balancer delete --profile P3TO --load-balancer-id 
##
alias oci_elb_ls='oci lb load-balancer list --profile P3TO --output table --output=table --query "data [*].{C01_Name:\"display-name\", C02_Status:\"lifecycle-state\", C03_AD:\"listeners\", C04_BKSET:\"backend-sets\", C05_IP:\"ip-addresses\", C06_Cert:\"certificates\"}"'

alias oci_elb_ll='oci lb load-balancer list --profile P3TO --output table --output=table --query "data [*].{C01_Name:\"display-name\", C02_Status:\"lifecycle-state\", C03_ID:\"id\"}"'



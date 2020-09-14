##common commands list
##export PV=P3FF
##export PV=p3TO
##oci db autonomous-data-warehouse create --profile $PV --db-name BJSCCADW0506 --cpu-core-count 1 --data-storage-size-in-tbs 1 --admin-password Welcome_123456789
##oci db autonomous-data-warehouse list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"
##oci db autonomous-data-warehouse list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\", C05_Status:\"lifecycle-state\", C06_CreateTime:\"time-created\"}"
##oci db autonomous-data-warehouse get --profile $PV --autonomous-data-warehouse-id 
##oci db autonomous-data-warehouse generate-wallet --profile $PV --file /tmp/myWallet.zip --password Welcome_1 --autonomous-data-warehouse-id 
##oci db autonomous-data-warehouse delete --profile $PV --autonomous-data-warehouse-id 
##oci db autonomous-data-warehouse stop --profile $PV --autonomous-data-warehouse-id 
##oci db autonomous-data-warehouse start --profile $PV --autonomous-data-warehouse-id 
alias adw_lv='echo current PV is [ $PV ], change it by command of [ export PV=O6AB ]'
alias adw_ll='oci db autonomous-data-warehouse list --profile $PV --output table --query "data [*].{C01_ID:id, C00_DbName:\"db-name\"}"'
alias adw_ls='oci db autonomous-data-warehouse list --profile $PV --output table --query "data [*].{C00_InsName:\"display-name\", C01_DbName:\"db-name\", C02_OCPU:\"cpu-core-count\", C03_TB:\"data-storage-size-in-tbs\", C04_Verion:\"db-version\", C05_Status:\"lifecycle-state\", C06_CreateTime:\"time-created\"}"'


# Description
In this demo I'll show you how to replicate from cluster 1 to cluster 2 all the tables created in the cluster 1.

# Prerequisites
- K8s environment (K8s, k3d, kind, ...)

# Demo
Execute commands in the correct order:
```
./01_logical_replication_secrets.sh
./02_create_cluster_pg1.sh
./03_check_pg1.sh
./04_insert_data_pg1.sh
./05_create_cluster_pg2.sh
./06_check_pg2.sh
./07_show_status_pg1.sh
./08_show_status_pg2.sh
```

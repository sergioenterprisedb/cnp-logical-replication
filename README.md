# Description
In this demo I'll show you how to replicate dvdrental database in a CloudNativePG clusters with logical replication (publication and subscription), from cluster 1 (pg1) to cluster 2 (pg2) all the tables created in the cluster 1.
This demo include the sequence synchronisation between the pg1 cluster and pg2 cluster.

# Prerequisites
- K8s environment (K8s, k3d, kind, ...)

# Demo
Execute commands in the correct order:
```
./01_logical_replication_secrets.sh
./02_create_cluster_pg1.sh
./03_check_pg1.sh
./04_import_dvdrental_pg1.sh
./05_create_cluster_pg2.sh
./06_check_pg2.sh
./07_sync_sequences.sh
./08_insert_data_pg1.sh
./09_show_status_pg1.sh
./10_show_status_pg2.sh
```

# Remove all (clusters and secrets)
```
./99_remove_all.sh
```


#!/bin/sh

kubectl port-forward pg1-1 5432:5432 &
pid=$!
echo "Port forward process id: $pid"
sleep 1
export PGPASSWORD=$(kubectl get secret --namespace default pg1-app -o jsonpath="{.data.password}" | base64 --decode)
pg_restore -h localhost -U app -d app -p 5432 -O dvdrental.tar


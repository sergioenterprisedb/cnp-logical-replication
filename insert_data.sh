#!/bin/bash

if [ -z "$1" ]; then
    echo "Error: Missing mandatory parameter."
    exit 1
fi
target=$1

kubectl port-forward pg1-1 5432:5432 &
pid=$!
echo "Port forward process id: $pid"
sleep 1
export PGPASSWORD=$(kubectl get secret --namespace default pg1-app -o jsonpath="{.data.password}" | base64 --decode)

for (( i = 1; i < target; i++)); do
psql -h localhost -p 5432 -U app app -t -c "insert into test1 (id, description) values (nextval('test1_id_seq'),'test')"
done
kill $pid


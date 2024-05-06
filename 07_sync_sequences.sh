#!/bin/sh

kubectl port-forward pg1-1 5432:5432 &
pid=$!
echo "Port forward process id: $pid"
sleep 1
export PGPASSWORD=$(kubectl get secret --namespace default pg1-app -o jsonpath="{.data.password}" | base64 --decode)

# Export sequences id
echo "Export sequences id's"
rm sequences.sql
psql -h localhost -p 5432 -U app app -t -c "select 'select setval(''' || sequencename ||''',' || last_value||');' from pg_sequences" -o ./sequences.sql
kill $pid

kubectl exec -it pg2-1 -- psql app < ./sequences.sql
kubectl exec -it pg2-1 -- psql app -c "select * from pg_sequences"


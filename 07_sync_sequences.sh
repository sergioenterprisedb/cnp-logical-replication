#!/bin/sh

kubectl exec -it pg2-1 -- psql app < ./sequences.sql
kubectl exec -it pg2-1 -- psql app -c "select * from pg_sequences"


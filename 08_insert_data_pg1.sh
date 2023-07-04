#!/bin/sh
kubectl exec -it pg1-1 -- psql app -c "truncate table test1"
kubectl exec -it pg1-1 -- psql app -c "truncate table test2"
kubectl exec -it pg1-1 -- psql app -c "insert into test1 (description) select 'test' from generate_series(2,100000);"
kubectl exec -it pg1-1 -- psql app -c "insert into test2 (description) select 'test' from generate_series(2,100000);"



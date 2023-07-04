#!/bin/sh

kubectl exec -it pg2-1 -- psql app -c "select (select count(*) from test1),(select count(*) from test2);"



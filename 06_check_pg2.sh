

kubectl exec -it pg2-1 -- psql app -c "\d"
kubectl exec -it pg2-1 -- psql app -c "\dRp+"
kubectl exec -it pg2-1 -- psql app -c "select (select count(*) from test1),(select count(*) from test2);"
kubectl exec -it pg2-1 -- psql app -c "\du logical_repuser"

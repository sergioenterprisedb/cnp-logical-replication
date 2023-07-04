

kubectl exec -it pg1-1 -- psql app -c "\d"
kubectl exec -it pg1-1 -- psql app -c "\dRp+"
kubectl exec -it pg1-1 -- psql app -c "select * from test1"
kubectl exec -it pg1-1 -- psql app -c "select * from test2"
kubectl exec -it pg1-1 -- psql app -c "\du logical_repuser"

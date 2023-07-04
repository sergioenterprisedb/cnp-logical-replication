#!/bin/sh

#kubectl delete secret logicalrepuser

kubectl create secret \
  -o yaml generic logicalrepuser \
  --from-literal=username=logical_repuser \
  --from-literal=password=AngusYoung1955


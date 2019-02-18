#!bin/bsh
echo "Generating persistence volumes for mongodb size 10 gb>>>>>>>>>>>>>>>>"

kubectl $0 -f ./mongo_persistence.yaml
sleep 3

echo "Generating persistence volumes claim for 3 gb for mongodb>>>>>>>>>>>>>>>>"
kubectl $0 -f ./mongo_persistence_volumeclain.yaml

echo "creating deployments for mongo db>>>>>>>>>>>>>>>>"

kubectl $0 -f ./mongo_deployment.yaml

echo "creating service to expose outside  for mongo db>>>>>>>>>>>>>>>>"

kubectl $0 -f ./mongo_service.yaml

echo "creating node js deployments>>>>>>>>>>>>>>>>"

kubectl $0 -f ./nodejs_deployment.yaml

echo "creating node js service>>>>>>>>>>>>>>>>"


kubectl $0 -f ./node_service.yaml
#!/bin/bash
docker build -t task2 .
echo Hyyy
docker login -u sridinesh -p dckr_pat_f4KWk7nulMpQ1t1qAmdhNivaF9A
echo "dckr_pat_f4KWk7nulMpQ1t1qAmdhNivaF9A" | docker login -u "sridinesh" --password-stdin
docker tag task2 sridinesh/final
docker push sridinesh/final
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false

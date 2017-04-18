set -m

/entrypoint.sh couchbase-server &

echo "!!UNSECURE SCRIPT -- DO NOT USE IN PRODUCTION!!"

sleep 15

curl -v -X POST http://127.0.0.1:8091/pools/default -d memoryQuota=1024 -d indexMemoryQuota=1024

curl -v http://127.0.0.1:8091/node/controller/setupServices -d services=kv%2cn1ql%2Cindex

curl -v http://127.0.0.1:8091/settings/web -d port=8091 -d username=Administrator -d password=password

curl -i -u Administrator:password -X POST http://127.0.0.1:8091/settings/indexes -d 'storageMode=memory_optimized'

curl -v -u Administrator:password -X POST http://127.0.0.1:8091/pools/default/buckets -d name=sg_test -d bucketType=couchbase -d ramQuotaMB=512 -d authType=sasl

sleep 5

fg 1

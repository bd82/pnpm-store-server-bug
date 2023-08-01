set +e
rm -rf ./temp
rm -rf node_modules
rm pnpm-lock.yaml

pnpm server stop --store-dir=./temp/store
pnpm server start --store-dir=./temp/store --config.cache-dir=./temp/cache &

pnpm remove yo --config.store-dir=./temp/store
pnpm add yo@4.3.1 --config.store-dir=./temp/store

pnpm server stop --store-dir=./temp/store






set +e
rm -rf node_modules
rm pnpm-lock.yaml

pnpm server stop
pnpm server start &

pnpm remove yo
pnpm add yo@4.3.1

pnpm server stop






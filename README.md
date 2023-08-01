# pnpm-store-server-bug

### Problem 

Installing `yo@4.3.1` using pnpm while also using the store-server seems to fail with:

```shell
Packages: +647
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Progress: resolved 647, reused 0, downloaded 0, added 0, done
node_modules/.pnpm/spawn-sync@1.0.15/node_modules/spawn-sync: Running postinstall script, done in 46ms
node_modules/.pnpm/core-js@3.32.0/node_modules/core-js: Running postinstall script, done in 46ms
 WARN  POST http://localhost:5813/upload error (503). Will retry in 10 seconds. 100 retries left.
 WARN  POST http://localhost:5813/upload error (503). Will retry in 10 seconds. 100 retries left.
```

### Reproducing scripts:

- [./start-server.sh](./start-server.sh) using the default store server location
- [./start-server-with-store-dir.sh](./start-server-with-store-dir.sh) 
  using a custom store-dir (./temp) that is **emptied** before the installation. 

### Script without a store server which works correctly:

- [no-server-works.sh](./no-server-works.sh) 

### Details:
- OS: MacOS 13.5
- pnpm version: 8.6.11
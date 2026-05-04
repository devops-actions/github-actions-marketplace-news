---
title: Pompelmi ClamAV Scanner
date: 2026-05-04 14:45:11 +00:00
tags:
  - pompelmi
  - GitHub Actions
draft: false
repo: https://github.com/pompelmi/pompelmi
marketplace: https://github.com/marketplace/actions/pompelmi-clamav-scanner
version: v1.10.0
dependentsNumber: "5"
actionType: Docker
---


Version updated for **https://github.com/pompelmi/pompelmi** to version **v1.10.0**.

- This action is used across all versions by **5** repositories.

## Action Type
This is a **Docker** action.

Go to the [GitHub Marketplace](https://github.com/marketplace/actions/pompelmi-clamav-scanner) to find the latest changes.

## Action Summary

This GitHub Action, "pompelmi," provides ClamAV antivirus scanning functionality for Node.js applications. It automates the detection of malware or viruses in files using the ClamAV engine, offering a clean, typed implementation with no external dependencies. Its key capabilities include reliable virus scanning and seamless integration into Node.js projects, helping developers secure their applications efficiently.

## What's Changed

## What's New

### AWS S3 Integration
Scan S3 objects directly without downloading to disk:

```js
const { scanS3 } = require('pompelmi')

const result = await scanS3({
  bucket: 'my-bucket',
  key: 'uploads/file.pdf',
  region: 'us-east-1'
})
```

Streams the object directly from S3 to clamd via the INSTREAM protocol — zero disk I/O.

### Connection Pooling
Maintain persistent connections to clamd for high-throughput applications:

```js
const { createPool } = require('pompelmi')

const pool = createPool({ host: 'localhost', port: 3310, size: 5 })
const result = await pool.scan('file.pdf')
await pool.destroy()
```

### 👀 Watch Mode
Monitor a directory and auto-scan every new or modified file:

```js
const { watch } = require('pompelmi')

watch('/uploads', { socket: '/var/run/clamav/clamd.sock' }, {
  onClean:     (file) => console.log('Clean:', file),
  onMalicious: (file) => fs.unlinkSync(file),
  onError:     (err)  => console.error(err)
})
```

### Automatic Retry
Reconnect automatically if clamd is temporarily unreachable:

```js
const result = await scan('file.pdf', {
  host: 'localhost',
  port: 3310,
  retries: 3,
  retryDelay: 1000
})
```

## Changes
- `src/S3Scanner.js` — S3 streaming integration via @aws-sdk/client-s3
- `src/ClamdPool.js` — queue-based persistent connection pool
- `src/Watcher.js` — fs.watch wrapper with debounce and auto-scan
- `src/ClamdScanner.js`, `BufferScanner.js`, `StreamScanner.js` — retry logic
- `src/index.js` — exports scanS3, createPool, watch
- `types/index.d.ts` — updated type declarations
- `docs/s3.md` — new S3 integration guide
- `docs/api.md` — updated with all new functions
- `README.md` — updated Features list and API table

## Full Changelog
https://github.com/pompelmi/pompelmi/compare/v1.9.0...v1.10.0

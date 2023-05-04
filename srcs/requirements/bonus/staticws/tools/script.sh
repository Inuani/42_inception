#!/bin/sh

set -e

# Navigate to the 'ws' directory and start the server
cd ws
npm install
exec node index.js

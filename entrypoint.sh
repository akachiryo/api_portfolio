#!/bin/bash
set -e

rm -f /myapp/api/tmp/pids/server.pid

exec "$@"
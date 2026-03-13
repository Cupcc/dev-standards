#!/usr/bin/env bash
set -euo pipefail

REGISTRY="http://192.168.6.128:4873"

if ! command -v npm >/dev/null 2>&1; then
  echo "npm 未安装，跳过"
  exit 1
fi

echo "设置 npm registry -> ${REGISTRY}"
npm config set registry="${REGISTRY}"

echo "当前配置："
npm config get registry

echo "测试连通性："
npm ping --registry "${REGISTRY}" || true
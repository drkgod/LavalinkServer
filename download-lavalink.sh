#!/bin/bash

FILE="Lavalink.jar"
URL="https://objects.githubusercontent.com/github-production-release-asset-2e65be/97382188/19aa101d-7706-449a-9cfc-eaff9b0f15aa?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=releaseassetproduction%2F20250719%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20250719T180738Z&X-Amz-Expires=1800&X-Amz-Signature=a3daa6da25ac695b5ce671c0717351e743c1bf5f6c3f8ee48b9071c7d113f4a2&X-Amz-SignedHeaders=host&response-content-disposition=attachment%3B%20filename%3DLavalink.jar&response-content-type=application%2Foctet-stream"

if [ ! -f "$FILE" ]; then
  echo "🔄 Downloading Lavalink.jar..."
  curl -L -o "$FILE" "$URL"
  echo "✅ Download complete."
else
  echo "✔️ Lavalink.jar already exists."
fi

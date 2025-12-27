#!/usr/bin/env bash

while true; do
  # Run dig in "short" mode. If it returns text, the record exists.
  RESULT=$(dig @8.8.8.8 www.yousuckatpong.info +short)

  if [ -n "$RESULT" ]; then
    echo "✅ PASS! Record propagated at $(date)"
    echo "Resolved to:"
    echo "$RESULT"
    break
  else
    echo "❌ Still waiting... checked at $(date)"
    sleep 10
  fi
done

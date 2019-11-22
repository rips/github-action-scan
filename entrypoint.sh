#!/bin/sh -l

APPLICATION_ID=$1
shift

/usr/bin/rips-cli rips:scan:start \
  -a "${APPLICATION_ID}" \
  -N "$(date -Is)" \
  -p "${GITHUB_WORKSPACE}" \
  -T "github-action" \
  -S "ci-github-action" \
  -G \
  $@
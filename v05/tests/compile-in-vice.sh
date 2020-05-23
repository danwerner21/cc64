#!/bin/bash
set -e

basedir="$(dirname "${BASH_SOURCE[0]}")"

cc64="cc64v05"
keybuf=""
warp=""
if [ -n "$1" ]
then
  keybuf="$1"
  warp="-warp"
  ascii2petscii "${basedir}/../notdone" "${basedir}/c64files/notdone"
fi

if [ -n "$2" ]
then
  cc64="$2"
fi

x64 \
  -virtualdev \
  +truedrive \
  -drive8type 1541 \
  -fs8 "${basedir}/c64files" \
  -chargen "${basedir}/../c-chargen" \
  -symkeymap "${basedir}/../x11_sym_uf_de.vkm" \
  -keymap 2 \
  -autostart "${basedir}/../${cc64}.T64" \
  -keybuf "$keybuf" \
  $warp \
  &


if [ -n "$keybuf" ]
then
  while [ -f "${basedir}/c64files/notdone" ]
    do sleep 1
  done
  sleep 0.5

  kill %1
fi

wait %1 || echo "x64 returned $?"

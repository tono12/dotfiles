#!/bin/bash

INFO_CMUS=$(cmus-remote -Q 2>/dev/null)
if [[ $? -eq 0 ]]; then
  INFO_TITLE=$(echo "${INFO_CMUS}" | sed -n -e 's/^.*title//p' | head -n 1)
  INFO_ALBUM=$(echo "${INFO_CMUS}" | sed -n -e 's/^.*album//p' | head -n 1)
  INFO_ARTIST=$(echo "${INFO_CMUS}" | sed -n -e 's/^.*artist//p' | head -n 1)
else
  exit
fi

if [[ "${INFO_ARTIST}" ]] && [[ "${INFO_TITLE}" ]]; then
  OUT_TEXT=$(echo "${INFO_ARTIST} - ${INFO_TITLE}" | xargs)
elif [[ "${INFO_TITLE}" ]]; then
  OUT_TEXT=$(echo "${INFO_TITLE}" | xargs)
fi

echo "${OUT_TEXT}"
echo "${OUT_TEXT}"
exit

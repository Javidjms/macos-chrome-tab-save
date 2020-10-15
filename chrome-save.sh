#!/bin/bash
CHROME_TAB_LIST_REGEX='s/\[\([0-9]*\):\([0-9]*\)\] .*/\2/'
CHROME_TAB_INFO_REGEX='s/Url: //'
OUTPUT_FILE=google-tab.sav

chrome-cli list tabs | sed "$CHROME_TAB_LIST_REGEX" | xargs -L 1 chrome-cli info -t | grep Url | sed "$CHROME_TAB_INFO_REGEX" > $OUTPUT_FILE

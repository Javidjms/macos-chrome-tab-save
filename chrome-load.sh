#!/bin/bash
FIRST_TAB_URL=http://www.google.fr
INPUT_FILE=google-tab.sav

chrome-cli open $FIRST_TAB_URL -n
sleep 5
cat $INPUT_FILE | xargs -L 1 chrome-cli open

# DISABLE OUTPUT STOUT

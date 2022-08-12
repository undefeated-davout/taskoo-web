#!/usr/bin/env bash

echo 'Firebase Emulator Suite起動（常駐）'
firebase emulators:start --config ./infrastructure/firebase/firebase.json  --import ./_shared_storage/firebase --export-on-exit

#!/bin/bash


echo 'yarnインストール'
yarn

echo '保存時のコード成形（常駐）'
yarn prettier-watch &

echo 'Firebase Emulator Suite起動（常駐）'
firebase emulators:start --config ./infrastructure/firebase/firebase.json &

echo 'StoryBook起動（常駐）'
yarn storybook &

echo 'Webサーバ起動（開発）'
yarn dev

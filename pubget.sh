#!/bin/bash

set -euox pipefail

cd packages/depot_repository
flutter pub get
cd ../user_repository
flutter pub get
cd ../authentication_repository
flutter pub get
cd ..
flutter pub get

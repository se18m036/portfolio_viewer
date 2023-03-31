#!/bin/bash
dart --define=PASSWORD=$(pass private/flatex | head -1) --define=USERID=$(pass private/flatex | tail -1 | tr -cd [:digit:]) test_api.dart

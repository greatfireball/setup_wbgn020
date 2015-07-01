#!/bin/bash

### Our packet list is located at packages.list
cat packages.list | xargs apt-get install --assume-yes


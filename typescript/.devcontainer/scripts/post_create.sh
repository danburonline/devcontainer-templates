#!/bin/bash

# Install pnpm
npm install pnpm -g

# Modify permissions for the PNPM store and packages
sudo chmod -R 777 node_modules &&
  sudo chmod -R 777 .pnpm-store

# Install dependencies
pnpm install

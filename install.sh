#!/bin/bash

# Clone the repository with a specific branch
git clone --branch v0.2.2 https://github.com/skyportlabs/panel

# Move to the panel directory
cd panel

# Switch to the branch v0.2.2
git switch -c v0.2.2

# Go back to the previous directory
cd ..

# Rename the directory
mv panel skyport

# Move to the new directory
cd skyport

# Install dependencies
npm install

# Run the seed command
npm run seed

# Run the user creation command
npm run createUser

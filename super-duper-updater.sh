#!/bin/bash

# Check if Homebrew is installed
if command -v brew &>/dev/null; then
    brew update
    brew upgrade
    brew cleanup
fi

# Check if Rust is installed
if command -v rustup &>/dev/null; then
    rustup update
fi

# Check if npm is installed
if command -v npm &>/dev/null; then
    npm update -g
fi

# Check if pip is installed
if command -v pip &>/dev/null; then
    pip install --upgrade pip
fi
# Check if pip3 is installed
if command -v pip3 &>/dev/null; then
    pip3 install --upgrade pip3
fi

# Check if go is installed
if command -v go &>/dev/null; then
    go get -u all
fi

# Check if .NET is installed
if command -v dotnet &>/dev/null; then
    dotnet tool update --global dotnet-ef
    dotnet tool update --global dotnet-aspnet-codegenerator
    dotnet tool update --global dotnet-user-secrets
    dotnet tool update --global dotnet-dev-certs
    dotnet tool update --global dotnet-sql-cache
    dotnet tool update --global dotnet-watch
fi

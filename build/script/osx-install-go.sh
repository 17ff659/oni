#!/usr/bin/env bash

if [[ "$TRAVIS_OS_NAME" == "osx" ]]; then
    brew install gimme
    gimme stable

    echo $GOPATH

    go version
    go get -u github.com/sourcegraph/go-langserver

    echo "Checking go path..."
    which go

    echo "Checking go-langserver path..."
    which go-langserver
fi

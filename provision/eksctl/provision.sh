#!/usr/bin/env bash

eksctl create cluster -f cluster.yaml --kubeconfig ~/tmp/$(uuidgen)-kubeconfig
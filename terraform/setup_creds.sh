#!/usr/bin/env sh

echo "export DO_PAT=$(cat ~/.terraform.d/do_apikey)"
echo "export DO_SSH_FINGERPRINT=$(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | awk '{print $2}' | sed 's/^MD5://')"
echo "export TF_LOG=1"
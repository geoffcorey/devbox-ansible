ssh-keygen -t rsa -b 4096 -C "geoff@geoffcorey.com" -f keys/github
curl -u "geoffcorey" \
    --data "{\"title\":\"DevVm_`date +%Y%m%d%H%M%S`\",\"key\":\"`cat ~/.ssh/id_rsa.pub`\"}" \
    https://api.github.com/user/keys

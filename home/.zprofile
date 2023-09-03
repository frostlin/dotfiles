cd ~
setfont ter-132n
#eval $(ssh-agent -s)
#ssh-add ~/.ssh/github
eval `keychain --eval --agents ssh id_homepc`
eval `keychain --eval --agents ssh homelab`
eval `keychain --eval --agents ssh id_rsa`

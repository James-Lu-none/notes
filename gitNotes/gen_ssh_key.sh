ssh-keygen -t ed25519 -C "jamesabcde277@example.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
# working directory for script

adding

```bash
cd "$(dirname "${BASH_SOURCE[0]}")"
cd -- "$(dirname -- "$0")/cheatsheet"
```

description: https://stackoverflow.com/questions/3349105/how-can-i-set-the-current-working-directory-to-the-directory-of-the-script-in-ba

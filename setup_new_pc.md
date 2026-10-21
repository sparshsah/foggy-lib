# macOS

- Turn off fucking AutoCorrect
  - System Settings > Keyboard > Input Sources > Edit > Correct Spelling Automatically
  - System Settings > Keyboard > Input Sources > Text Replacements
- Set dock location to LHS of screen (you can also save/restore location/size/order as a plist)
- Pin `~` to the LHS sidebar in Finder
- Question: How can you manage Terminal background color/transparency as a plist?
- Install Google Chrome and set it as your default browser (and set file downloads destination to "Ask Every Time")
- [Install OpenAI Codex CLI by `curl`ing the standalone script](https://learn.chatgpt.com/docs/codex/cli#getting-started)
- Install XCode Command Line Tools with `xcode-select --install`
- Create a `.zshrc` with `touch ~/.zshrc`
- [Generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
- Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `ssh-add --apple-load-keychain`
- [Add it to GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
- Add GitHub to known hosts `ssh-keyscan github.com >> ~/.ssh/known_hosts`
- `mkdir` your directory structure, and `git clone` whatever repos you want
- [Install Anaconda](https://www.anaconda.com/docs/getting-started/anaconda/install/mac-cli-install)
  - Create a fresh Python virtual environment with `conda create --name=py_venv python anaconda`
  - Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `conda activate py_venv`
  - You can refresh/update/upgrade everything once in a while with
    `conda deactivate && conda remove --name=py_venv --all && conda update conda && conda create --name=py_venv python anaconda`
- Prepend to your PATH by adding the following to your `~/.zshrc`: `export PATH=/path/to/your/code:/path/to/more/code:$PATH`
- [Install VSCode](https://code.visualstudio.com/download), optionally turning on Settings Sync and opening your notes doc

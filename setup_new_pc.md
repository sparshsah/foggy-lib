# macOS

0. Set dock location to LHS of screen
1. Turn off fucking AutoCorrect
    * System Settings > Keyboard > Input Sources > Edit > Correct Spelling Automatically
    * System Settings > Keyboard > Input Sources > Text Replacements
2. Install Google Chrome and set it as your default browser
3. Install XCode Command Line Tools with `xcode-select --install`
4. Create a `.zshrc` with `touch ~/.zshrc`
5. [Generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
6. Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `ssh-add --apple-load-keychain`
7. [Add it to GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
8. Add GitHub to known hosts `ssh-keyscan github.com >> ~/.ssh/known_hosts`
9. `mkdir` your directory structure, and `git clone` whatever repos you want
10. [Install Anaconda](https://docs.anaconda.com/free/anaconda/install/mac-os.html)
    * You can keep it up-to-date [as](https://docs.anaconda.com/free/anaconda/install/update-version.html) [follows](https://www.anaconda.com/blog/keeping-anaconda-date)
    * [Create a new Python venv](https://docs.conda.io/projects/conda/en/latest/commands/create.html) with `conda create --name=py_venv python=3.xx anaconda` (replace `xx` with the desired version)
    * Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `conda activate py_venv`
    * You can upgrade Python every once in a while with `conda deactivate && conda remove --name=py_venv --all && conda update conda && conda create --name=py_venv python=3.xx anaconda`
11. Prepend to your PATH by adding the following to your `~/.zshrc`: `export PATH=/path/to/your/code:/path/to/more/code:$PATH`
12. [Install VSCode](https://code.visualstudio.com/download), optionally turning on Settings Sync and opening your notes doc
13. (optional) Set your browser to your favorite tabs: YouTube Music, Google Drive, Gmail, Zoom, Amazon Prime Video, Disney+, etc
14. (optional) Install iMovie from the App Store

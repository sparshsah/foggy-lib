# macOS

0. Turn off fucking AutoCorrect
    * System Settings > Keyboard > Input Sources > Edit > Correct Spelling Automatically
    * System Settings > Keyboard > Input Sources > Text Replacements
1. Set dock location to LHS of screen (you can also save/restore location/size/order as a plist)
2. Question: How can you manage Terminal background color/transparency as a plist?
3. Install Google Chrome and set it as your default browser (and set file downloads destination to "Ask Every Time")
4. Install XCode Command Line Tools with `xcode-select --install`
5. Create a `.zshrc` with `touch ~/.zshrc`
6. [Generate a new SSH key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
7. Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `ssh-add --apple-load-keychain`
8. [Add it to GitHub](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)
9. Add GitHub to known hosts `ssh-keyscan github.com >> ~/.ssh/known_hosts`
10. `mkdir` your directory structure, and `git clone` whatever repos you want
11. [Install Anaconda](https://docs.anaconda.com/free/anaconda/install/mac-os.html)
    * You can keep it up-to-date [as](https://docs.anaconda.com/free/anaconda/install/update-version.html) [follows](https://www.anaconda.com/blog/keeping-anaconda-date)
    * [Create a new Python venv](https://docs.conda.io/projects/conda/en/latest/commands/create.html) with `conda create --name=py_venv python anaconda`
    * Tell zsh to automatically activate it at startup by adding the following to your `~/.zshrc`: `conda activate py_venv`
    * You can upgrade Python every once in a while with `conda deactivate && conda remove --name=py_venv --all && conda update conda && conda create --name=py_venv python anaconda`
12. Prepend to your PATH by adding the following to your `~/.zshrc`: `export PATH=/path/to/your/code:/path/to/more/code:$PATH`
13. [Install VSCode](https://code.visualstudio.com/download), optionally turning on Settings Sync and opening your notes doc

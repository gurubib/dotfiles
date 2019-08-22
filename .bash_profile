if [ -f $HOME/.bashrc ]; then
	source $HOME/.bashrc
fi

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

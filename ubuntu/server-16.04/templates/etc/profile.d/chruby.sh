if [ "$CHRUBY_VERSION"]; then
  echo '' > /dev/null
else
  source /usr/local/share/chruby/chruby.sh

  if [ -n "$BASH_VERSION" ] || [ -n "$ZSH_VERSION" ]; then
    source /usr/local/share/chruby/chruby.sh
  fi

  chruby 2.4.0
fi
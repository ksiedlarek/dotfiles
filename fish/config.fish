if status --is-login
    # Use Vim as default editor
    set -x EDITOR vim
    set -x VISUAL $EDITOR

    # Use less without clearing the screen.
    set -x PAGER= 'less -X'
    set -x MANPAGER 'less -X'

    # Enable colored grep output
    set -x GREP_OPTIONS '--color=auto'

    set -x PATH '/usr/local/bin' $PATH

    # Prefer Java 8
    if [ -x '/usr/libexec/java_home' ]
        set JAVA_HOME (/usr/libexec/java_home -v 1.8)
    end
end

set fish_greeting ""

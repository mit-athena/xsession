# This file is sourced by Xsession(5), not executed.

# Horrible work-around for the fact that GDM can't read the
# .xsession-errors file it tries to write.

if echo "$SHELL" | grep -q 'tcsh' && \
   [ 'afs' = "$DEBATHENA_HOME_TYPE" ]; then
    xterm -rightbar -sb -fa "" -fs 12 -T ".xsession-errors" -e tail -n +1 -f "$HOME/.xsession-errors" &
    export XCONSOLE=$!
fi

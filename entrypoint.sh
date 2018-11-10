#!/bin/sh

function tmpl()
{
    SCRIPT="
    /^[[:space:]]*@/! {
        s/'/'\\''/g;
        s/\${\(\([^}]\|\\}\)\+\)}/'"\${\\1}"'/g;
        s/^\(.*\)$/echo '\1'/;
    }
    s/^[[:space:]]*@//;"

    echo "Preparing template: $1.tmpl"
    sed -e "$SCRIPT" $1.tmpl | sh > $1
}

# Process .tmpl files
tmpl /etc/nginx/conf.d/default.conf
tmpl /etc/nginx/proxy_params

# Starting nginx
nginx -g "daemon off;"

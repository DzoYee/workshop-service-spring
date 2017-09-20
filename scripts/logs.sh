echo "./logs.sh <env>"

# input
env=$1

# prompt input
if [ -z $env ]; then
  read -p "env: " env
fi

# service directory
cd "${0%/*}"/..

# get app name
appName=$(grep -i "$env" scripts/apps.properties | cut -f2 -d " ")

# view logs
https_proxy=http://10.132.40.23:80 http_proxy=http://10.132.40.23:80 heroku logs --tail --app $appName
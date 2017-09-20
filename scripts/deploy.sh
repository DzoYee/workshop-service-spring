echo "./deploy.sh <optional -b to build> <env>"

# input
getopts b build
shift "$((OPTIND-1))"
env=$1

# prompt input
if [ -z $env ]; then
  read -p "env: " env
fi

# service directory
cd "${0%/*}"/..

# get app name
appName=$(grep -i "$env" scripts/apps.properties | cut -f2 -d " ")

# build
if [ $build != ? ]; then
  echo "building"
  ./gradlew -Dhttp.proxyHost=10.132.40.23 -Dhttp.proxyPort=80 -Dhttps.proxyHost=10.132.40.23 -Dhttps.proxyPort=80 clean build
fi

# deploy
export HTTPS_PROXY=http://10.132.40.23:80
heroku deploy:jar build/libs/*.jar --app $appName
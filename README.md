# CSS Hello World! Quick start Spring boot

### Step by step guide for configuring this repository into your service
```
mkdir [service-name]
cd [service-name]
git init .
git remote add upstream [CSS service repo]
git remote add starter [CSS starter repo]
git fetch starter
git co starter/master
git co master
git push upstream master
git remote add origin [Your fork service repo]
git remote remove starter
./gradlew -Dhttp.proxyHost=10.132.40.23 -Dhttp.proxyPort=80 -Dhttps.proxyHost=10.132.40.23 -Dhttps.proxyPort=80 clean build
Open IntelliJ
Import project with auto import

```

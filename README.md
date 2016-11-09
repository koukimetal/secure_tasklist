**About**
flask and nginx on docker with https basic auth

**Set up**

* $ docker-compose build
* $ docker-compose up
* Access https://localhost:8433 or https://0.0.0.0:8433


**Set up with debugger for Intellij or PyCharm**

* $ source ./setup_debug.sh
* Make Remote Python Debug with ip = you got above command($DOCKER0_IP), port = 5678
* $ docker-compose build
* Start Remote Python Debug
* $ docker-compose up
* Access https://localhost:8433 or https://0.0.0.0:8433


# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

alias p='cd ..'
alias l='ls'
alias sd='shutdown now'
alias cl='clear'
alias rs='reset'
alias rb='reboot'
alias ug='sudo dnf upgrade'
alias sm='git submodule init && git submodule update'

alias ucjfr='cd /home/vma/upstream-cjfr'
alias ujfr='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr'
alias ujfrt='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr'
alias uint='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr/commands/internal'
alias uintt='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr/commands/internal'
alias uws='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr/tui/ws'
alias uwst='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr/tui/ws'
alias utty='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr/tui/tty'
alias uttyt='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr/tui/tty'
alias utui='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr/tui'
alias utuit='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr/tui'
alias unet='cd /home/vma/upstream-cjfr/src/main/java/com/redhat/rhjmc/containerjfr/net'
alias unett='cd /home/vma/upstream-cjfr/src/test/java/com/redhat/rhjmc/containerjfr/net'

alias cjfr='cd /home/vma/container-jfr'
alias jfr='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr'
alias jfrt='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr'
alias int='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr/commands/internal'
alias intt='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr/commands/internal'
alias ws='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr/tui/ws'
alias wst='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr/tui/ws'
alias tty='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr/tui/tty'
alias ttyt='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr/tui/tty'
alias tui='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr/tui'
alias tuit='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr/tui'
alias net='cd /home/vma/container-jfr/src/main/java/com/redhat/rhjmc/containerjfr/net'
alias nett='cd /home/vma/container-jfr/src/test/java/com/redhat/rhjmc/containerjfr/net'

alias comp='mvn clean compile'
alias ts='mvn clean test'
alias st='mvn test-compile surefire:test'
alias pp='mvn clean prepare-package'
alias spp='mvn -Dmaven.test.skip=true clean prepare-package'
alias pack='mvn clean package'
alias spack='mvn -Dmaven.test.skip=true clean package'
alias ej='MAVEN_OPTS="-Dcom.sun.management.jmxremote.port=9091 \
          -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false" \
          mvn exec:java'
alias cej='CONTAINER_JFR_CORS_ORIGIN=http://localhost:9000 MAVEN_OPTS="-Dcom.sun.management.jmxremote.port=9091 \
          -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.authenticate=false" \
          mvn exec:java'
alias spot='mvn spotless:apply'
alias spotc='mvn spotless:check'
alias ver='mvn clean verify'
alias web='websocat ws://192.168.0.109:8181/api/v1/command'
alias run='sh run.sh -it'

alias cw='cd /home/vma/container-jfr-web'
alias app='cd /home/vma/container-jfr-web/src/app'
alias nr='npm run start:dev'


export PS1='[\u@\h \w]\$ '
export GOPROXY=https://proxy.golang.org,direct
export GOROOT=/usr/lib/golang
export PATH="/home/vma/.crc/bin/oc:$PATH"
export IMAGE_TAG=quay.io/vic_ma/container-jfr-operator
export CONTAINER_JFR_LOG_LEVEL=ALL
export GRAFANA_DATASOURCE_URL=http://localhost:8080
export GRAFANA_DASHBOARD_URL=http://localhost:3000/d/O9CZXRVGz/

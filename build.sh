yum install wget
mkdir pandoc
wget -qO- https://github.com/jgm/pandoc/releases/download/2.11.1.1/pandoc-2.11.1.1-linux-amd64.tar.gz | \tar xvzf - --strip-components 1 -C ./pandoc
export PATH="./pandoc/bin:$PATH"

yarn run build

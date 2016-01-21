_DOCKER_HOST=$(ip -4 addr show docker0 | grep -Po 'inet \K[\d.]+')
HTTP_PROXY="http://localhost:3128"
http_proxy=$HTTP_PROXY
NO_PROXY="localhost,127.0.0.1,localaddress,.localdomain.com,$_DOCKER_HOST"
no_proxy=$NO_PROXY

export HTTP_PROXY http_proxy NO_PROXY no_proxy

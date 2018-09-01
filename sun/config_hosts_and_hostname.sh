#!/bin/bash


config_hosts_and_hostname() {
	hosts="aix 140.252.1.92
	solaris 140.252.1.32
	gemini 140.252.1.11
	gateway 140.252.1.4
	netb 140.252.1.183

	bsdi 140.252.13.35
	sun 140.252.13.33
	svr4 140.252.13.34
	slip 140.252.13.65"

    docker exec -it $1 hostname $1
    docker exec -it $1 touch /tmp/hello
    docker exec -it $1 bash -c "echo '$hosts' >> /tmp/hello"

}

config_hosts_and_hostname slip

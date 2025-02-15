#!/bin/bash
echo "started"
docmd() {
    read -p "root@servertipacvn:~ " CMD
    eval "$CMD"
    echo "root@servertipacvn:~ "
    docmd2
}
docmd2() {
    read -p "root@servertipacvn:~ " CMD2
    eval "$CMD2"
    echo "root@servertipacvn:~ "
    docmd
}
docmd

#!/bin/bash
mkdir -p /etc/apt/sources.list.d
mv /tmp/fkrull-deadsnakes-precise.list /etc/apt/sources.list.d
gpg --ignore-time-conflict --no-options --no-default-keyring --secret-keyring /tmp/tmp.AKfwxW9RZS --trustdb-name /etc/apt/trustdb.gpg --keyring /etc/apt/trusted.gpg --primary-keyring /etc/apt/trusted.gpg --keyserver hkp://keyserver.ubuntu.com:80/ --recv FF3997E83CD969B409FB24BC5BB92C09DB82666C

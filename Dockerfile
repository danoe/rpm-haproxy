FROM centos:7

RUN yum -y groupinstall 'Development Tools'
RUN yum -y install pcre-devel \
      make \
      gcc \
      openssl-devel \
      rpm-build \
      systemd-devel \
      wget \
      sed \
      sudo \
      zlib-devel; \
    yum clean all


CMD cd /opt; make 

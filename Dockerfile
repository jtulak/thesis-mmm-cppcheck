FROM jtulak/myfedora
LABEL description="A Fedora-based image for cppcheck."

RUN dnf -y install \
           cppcheck \
           libaio-devel \
           libuuid-devel \
           libattr-devel \
           libacl-devel \
           gettext \
           libblkid-devel \
           bc \
           csbuild

workdir /workdir
volume /workdir

ADD run-test.sh /
ENTRYPOINT ["/bin/bash","/run-test.sh"]

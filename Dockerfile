FROM jtulak/myfedora
LABEL description="A Fedora-based image for cppcheck."

RUN dnf -y install cppcheck

workdir /workdir
volume /workdir

ADD run-test.sh /
ENTRYPOINT ["/bin/bash","/run-test.sh", "/workdir"]

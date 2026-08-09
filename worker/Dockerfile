FROM docker.io/fedora:45

RUN dnf install -y git python3 python3-pysocks gcc-c++ make procps-ng && dnf clean all

RUN adduser -m worker
USER worker

WORKDIR /home/worker
RUN git clone https://github.com/official-stockfish/fishtest.git

CMD python3 fishtest/worker/worker.py $WORKER_ARGS

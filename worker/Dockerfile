FROM docker.io/alpine:3

RUN apk --no-cache add bash git python3 make clang compiler-rt llvm

RUN adduser -D worker
USER worker

WORKDIR /home/worker
RUN git clone https://github.com/official-stockfish/fishtest.git

CMD python3 fishtest/worker/worker.py $WORKER_ARGS

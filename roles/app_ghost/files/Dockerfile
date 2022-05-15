FROM ghost:4.47.1

RUN cd current \
    && npm install ghost-storage-adapter-s3 \
    && mkdir -p ./content/adapters/storage \
    && cp -r ./node_modules/ghost-storage-adapter-s3 ./content/adapters/storage/s3 \
    && npm install

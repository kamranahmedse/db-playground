FROM mongo

COPY . /usr/src/seeder/
WORKDIR /usr/src/seeder/

RUN chown mongodb:mongodb .

CMD ./importer.sh

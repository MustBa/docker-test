RUN pwd
RUN ls -ltr
RUN find . -name "docker-test"

RUN cmake .
RUN ./example

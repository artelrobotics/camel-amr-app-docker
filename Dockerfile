FROM camel:500-001

ARG GIT_USERNAME
ARG GIT_PASSWORD

RUN mkdir /app
WORKDIR /app

RUN git clone https://${GIT_USERNAME}:${GIT_PASSWORD}@github.com/artelrobotics/amr_robot_app.git -b camel-amr-500
WORKDIR /app/amr_robot_app

RUN pip3 install -r requirements.txt
WORKDIR /
COPY ./start.sh /start.sh
RUN chmod +x /start.sh
ENTRYPOINT ["/entrypoint.sh"]
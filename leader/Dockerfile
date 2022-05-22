FROM satcomp-base:leader

#  Install required softwares
USER root
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt install -y cmake build-essential zlib1g-dev python3 unzip wget curl

# Build DPS
ADD DPS-v.1.4.0-sc2022.tar.gz ./
WORKDIR DPS-v.1.4.0-sc2022
RUN ./build.sh

# Copy DPS executable
RUN cp ./Release/DPS-1.4.0-sc2022 /DPS-1.4.0-sc2022
RUN chmod +x /DPS-1.4.0-sc2022

# Copy solver script
WORKDIR /
COPY --chown=ecs-user /run-dps.sh /competition
COPY --chown=ecs-user /solver /competition
USER ecs-user
RUN chmod +x /competition/run-dps.sh
RUN chmod +x /competition/solver

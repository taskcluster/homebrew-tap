FROM homebrew/brew

USER root

# Add worker user and setup its workspace.
RUN mkdir /builds && \
    groupadd -g 1001 worker && \
    useradd -u 1001 -g 1001 -d /builds/worker -s /bin/bash -m worker && \
    mkdir -p /builds/worker/workspace && \
    chown -R worker:worker /builds && \
    apt-get update && \
    apt-get upgrade -y

USER linuxbrew

RUN brew update && \
    brew upgrade && \
    brew cleanup

# Declare default working folder
WORKDIR /builds/worker

ENV SHELL=/bin/bash \
    HOME=/builds/worker \
    PATH=/builds/worker/.local/bin:$PATH

VOLUME /builds/worker/checkouts
VOLUME /builds/worker/.cache

# Set a default command useful for debugging
CMD ["/bin/bash", "--login"]

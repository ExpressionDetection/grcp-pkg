FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

ENV POETRY_VERSION=1.1.7
ENV PYTHONUNBUFFERED=1
ENV POETRY_VIRTUALENVS_CREATE=false

# Install prerequisites
RUN apt-get update && \
    apt-get install -y curl python3.7 python3-pip && \
    update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.7 1 && \
    python3 -m pip install --upgrade pip && \
    curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python3 && \
    echo "source $HOME/.poetry/env" > ~/.bashrc

WORKDIR /grcp-pkg

COPY . /grcp-pkg

CMD /grcp-pkg/boot.sh
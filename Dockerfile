FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    git \
    openssh-client \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Установка OpenCode CLI
RUN curl -fsSL https://opencode.ai/install | bash

# Добавление opencode в PATH
ENV PATH="/root/.opencode/bin:${PATH}"

WORKDIR /app

ENTRYPOINT ["opencode"]
CMD ["--help"]

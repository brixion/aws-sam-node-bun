FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    curl \
    unzip \
    python3-dev \
    jq \
    && rm -rf /var/lib/apt/lists/*

# Download and install AWS CLI
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm awscliv2.zip

RUN pip install --no-cache-dir aws-sam-cli

RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN curl -fsSL https://bun.sh/install | bash -s "bun-v1.2.2"
ENV PATH="/root/.bun/bin:${PATH}"

RUN node --version && \
    bun --version && \
    aws --version && \
    sam --version

WORKDIR /app

CMD ["bash"]
# Self-hosted GitHub Actions runner for ARC scale sets: the stock image plus the tools
# GitHub-hosted runners ship that our workflows rely on.
FROM ghcr.io/actions/actions-runner:2.338.2

USER root
RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      gh python3-venv gettext-base \
      zip xz-utils file rsync build-essential \
 && rm -rf /var/lib/apt/lists/*
USER runner

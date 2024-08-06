# Using ubuntu aka linux as the dev environment
FROM ubuntu:24.04

# Get the packages and update the packages
RUN apt-get update && apt-get install -y \
  curl \
  build-essential \
  && rm -rf /var/lib/apt/lists/*

# NOTE: This is the programming language dependencies - List of supported Programming languages below
# - Python
# - Ruby
# - Rust
# - JavaScript/TypeScript - eww
# - Zig
# - C/C++


# Install Rust using rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

RUN rustc --version

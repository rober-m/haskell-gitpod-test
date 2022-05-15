FROM gitpod/workspace-base

# Install dependencies *You don't need all of them
RUN sudo apt-get update -y \
    && sudo apt-get upgrade -y \
    && sudo apt-get install -y git jq bc make automake \
    && sudo apt-get install -y rsync htop curl build-essential \
    && sudo apt-get install -y pkg-config libffi-dev libgmp-dev \
    && sudo apt-get install -y libssl-dev libtinfo-dev libsystemd-dev \
    && sudo apt-get install -y zlib1g-dev make g++ wget libncursesw5 libtool autoconf \
    && sudo apt-get clean

# Install ghcup
ENV BOOTSTRAP_HASKELL_NONINTERACTIVE=1
RUN bash -c "curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh"

# Add ghcup to PATH
ENV PATH=${PATH}:/root/.local/bin
ENV PATH=${PATH}:/root/.ghcup/bin

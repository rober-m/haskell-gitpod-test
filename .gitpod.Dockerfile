FROM gitpod/workspace-base

RUN sudo apt-get update
RUN sudo curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

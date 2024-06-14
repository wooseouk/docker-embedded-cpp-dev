FROM debian:bookworm-slim

# install make, tar, cmake
RUN apt-get update && apt-get install -y make xz-utils cmake

# copy in the compiler
COPY arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz /
RUN mkdir /compiler && mkdir /work
RUN tar -xf arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz -C /compiler --strip-components=1
RUN rm arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz

# update path variable to add compiler
ENV PATH "$PATH:/compiler/bin"
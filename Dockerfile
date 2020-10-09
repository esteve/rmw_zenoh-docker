FROM ros:foxy
RUN sudo apt-get update && apt-get install -y curl
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- --default-toolchain nightly --profile minimal -y 
RUN . /root/.cargo/env && cargo install cbindgen
RUN apt-get update && apt-get install -y \
    bison \
    clang \
    clang-format \
    clang-tidy \
    curl \
    flex \
    libasio-dev \
    libcurl4-openssl-dev \
    liblog4cxx-dev \
    libncurses5-dev \
    llvm \
    python3-pip \
    ros-foxy-osrf-testing-tools-cpp \
    ros-foxy-test-interface-files \
    ros-foxy-test-msgs \
    ssh \
    usbutils

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
    gdb \
    less \
    libasio-dev \
    libcurl4-openssl-dev \
    liblog4cxx-dev \
    libncurses5-dev \
    lldb \
    llvm \
    python3-pip \
    ros-foxy-action-msgs-dbgsym \
    ros-foxy-actionlib-msgs-dbgsym \
    ros-foxy-ament-index-cpp-dbgsym \
    ros-foxy-builtin-interfaces-dbgsym \
    ros-foxy-class-loader-dbgsym \
    ros-foxy-composition-interfaces-dbgsym \
    ros-foxy-console-bridge-vendor-dbgsym \
    ros-foxy-demo-nodes-cpp \
    ros-foxy-demo-nodes-cpp-dbgsym \
    ros-foxy-diagnostic-msgs-dbgsym \
    ros-foxy-example-interfaces-dbgsym \
    ros-foxy-fastcdr-dbgsym \
    ros-foxy-fastrtps-dbgsym \
    ros-foxy-geometry-msgs-dbgsym \
    ros-foxy-kdl-parser-dbgsym \
    ros-foxy-libstatistics-collector-dbgsym \
    ros-foxy-libyaml-vendor-dbgsym \
    ros-foxy-lifecycle-msgs-dbgsym \
    ros-foxy-message-filters-dbgsym \
    ros-foxy-nav-msgs-dbgsym \
    ros-foxy-orocos-kdl-dbgsym \
    ros-foxy-osrf-testing-tools-cpp \
    ros-foxy-osrf-testing-tools-cpp-dbgsym \
    ros-foxy-rcl-action-dbgsym \
    ros-foxy-rcl-interfaces-dbgsym \
    ros-foxy-rcl-lifecycle-dbgsym \
    ros-foxy-rcl-logging-spdlog-dbgsym \
    ros-foxy-rcl-yaml-param-parser-dbgsym \
    ros-foxy-rclcpp-action-dbgsym \
    ros-foxy-rclcpp-components-dbgsym \
    ros-foxy-rclcpp-dbgsym \
    ros-foxy-rclcpp-lifecycle-dbgsym \
    ros-foxy-rclpy-dbgsym \
    ros-foxy-rcpputils-dbgsym \
    ros-foxy-rcutils-dbgsym \
    ros-foxy-rmw-dbgsym \
    ros-foxy-rmw-dds-common-dbgsym \
    ros-foxy-rmw-fastrtps-cpp-dbgsym \
    ros-foxy-rmw-fastrtps-shared-cpp-dbgsym \
    ros-foxy-rmw-implementation-dbgsym \
    ros-foxy-robot-state-publisher-dbgsym \
    ros-foxy-rosbag2-compression-dbgsym \
    ros-foxy-rosbag2-converter-default-plugins-dbgsym \
    ros-foxy-rosbag2-cpp-dbgsym \
    ros-foxy-rosbag2-storage-dbgsym \
    ros-foxy-rosbag2-storage-default-plugins-dbgsym \
    ros-foxy-rosbag2-transport-dbgsym \
    ros-foxy-rosgraph-msgs-dbgsym \
    ros-foxy-rosidl-typesupport-c-dbgsym \
    ros-foxy-rosidl-typesupport-cpp-dbgsym \
    ros-foxy-rosidl-typesupport-fastrtps-c-dbgsym \
    ros-foxy-rosidl-typesupport-fastrtps-cpp-dbgsym \
    ros-foxy-rosidl-typesupport-introspection-c-dbgsym \
    ros-foxy-rosidl-typesupport-introspection-cpp-dbgsym \
    ros-foxy-sensor-msgs-dbgsym \
    ros-foxy-shape-msgs-dbgsym \
    ros-foxy-statistics-msgs-dbgsym \
    ros-foxy-std-msgs-dbgsym \
    ros-foxy-std-srvs-dbgsym \
    ros-foxy-stereo-msgs-dbgsym \
    ros-foxy-test-interface-files \
    ros-foxy-test-msgs \
    ros-foxy-test-msgs-dbgsym \
    ros-foxy-tf2-dbgsym \
    ros-foxy-tf2-msgs-dbgsym \
    ros-foxy-tf2-py-dbgsym \
    ros-foxy-tf2-ros-dbgsym \
    ros-foxy-tracetools-dbgsym \
    ros-foxy-trajectory-msgs-dbgsym \
    ros-foxy-unique-identifier-msgs-dbgsym \
    ros-foxy-urdf-dbgsym \
    ros-foxy-urdfdom-dbgsym \
    ros-foxy-visualization-msgs-dbgsym \
    ros-foxy-yaml-cpp-vendor-dbgsym \
    ros-foxy-zstd-vendor-dbgsym \
    ssh \
    usbutils \
    vim
RUN apt-get update && apt-get -yd upgrade && apt-get -y upgrade
RUN apt-get update && apt-get install -y \
    valgrind
RUN echo "deb [trusted=yes] https://download.eclipse.org/zenoh/zenoh/latest/ /" | sudo tee -a /etc/apt/sources.list.d/zenoh.list
RUN apt-get update && apt-get install -y zenoh
RUN curl -Lo /tmp/ecal.deb https://github.com/continental/ecal/releases/download/v5.7.5/ecal_5.7.5-focal_amd64.deb
RUN apt-get update && apt-get install --no-install-recommends -y \
    libprotobuf-dev \
    protobuf-compiler
RUN apt-get update && apt-get install -y /tmp/ecal.deb

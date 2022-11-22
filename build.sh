cmake -DCMAKE_CONFIGURATION_TYPES="Debug;Release;RelWithDebInfo;MinSizeRel" -Bbuild -G "Ninja Multi-Config" --toolchain iar-toolchain.cmake && \
cmake --build build --config "MinSizeRel"

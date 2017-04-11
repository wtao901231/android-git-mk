# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

native_tests := \
    adbd_test \
    async_io_test \
    bionic-unit-tests \
    bionic-unit-tests-static \
    bluetoothtbd_test \
    boringssl_crypto_test \
    boringssl_ssl_test \
    bugreportz_test \
    camera2_test \
    camera_client_test \
    crashcollector \
    debuggerd_test \
    hwui_unit_tests \
    init_tests \
    JniInvocation_test \
    libappfuse_test \
    libbase_test \
    libcutils_test \
    libcutils_test_static \
    libgui_test \
    libjavacore-unit-tests \
    liblog-unit-tests \
    libwifi-system_tests \
    linker-unit-tests \
    logcat-unit-tests \
    logd-unit-tests \
    kernel-config-unit-tests \
    malloc_debug_unit_tests \
    memory_replay_tests \
    minadbd_test \
    minikin_tests \
    mtp_ffs_handle_test \
    net_test_bluetooth \
    net_test_btcore \
    net_test_device \
    net_test_hci \
    net_test_osi \
    netd_integration_test \
    netd_unit_test \
    pagemap_test \
    perfprofd_test \
    simpleperf_cpu_hotplug_test \
    simpleperf_unit_test \
    time-unit-tests \
    update_engine_unittests \
    wificond_unit_test \
    wifilogd_unit_test \
    ziparchive-tests

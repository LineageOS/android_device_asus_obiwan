#!/bin/bash
#
# Copyright (C) 2019 The LineageOS Project
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
#

VENDOR_SKIP_FILES_DEVICE=(
    # Audio configs
    "etc/audio/audio_policy_configuration.xml"
    "etc/audio_policy_configuration.xml"
    "etc/audio_policy_configuration_ZS661KS.xml"

    # SLA Dual Network
    "app/slaservice/slaservice.apk"
    "bin/hw/vendor.qti.sla.service@1.0-service"
    "bin/slad"
    "etc/init/slad.rc"
    "etc/init/vendor.qti.sla.service@1.0-service.rc"
    "etc/sla/slad.conf"
    "etc/sla/slad_data_iface.conf"
    "etc/sla/slad_num_iface.conf"
    "etc/sla/slmAppUseCase.conf"
    "etc/sla/slm_supported_list.xml"
    "lib64/hw/vendor.qti.sla.service@1.0-impl.so"
    "lib64/vendor.qti.sla.service@1.0.so"
    "lib/hw/vendor.qti.sla.service@1.0-impl.so"
    "lib/vendor.qti.sla.service@1.0.so"

    # Misc hals
    "lib64/vendor.ims.airtrigger@1.0.so"
    "lib64/vendor.ims.airtrigger@1.1.so"
    "lib64/vendor.ims.airtrigger@1.2.so"
    "etc/init/vendor.ims.airtrigger@1.2-service.rc"
    "bin/hw/vendor.ims.airtrigger@1.2-service"
    "lib64/vendor.ims.colortemp@1.0.so"
    "etc/init/vendor.ims.colortemp@1.0-service.rc"
    "bin/hw/vendor.ims.colortemp@1.0-service"
    "lib64/vendor.ims.glovemode@1.0.so"
    "etc/init/vendor.ims.glovemode@1.0-service.rc"
    "bin/hw/vendor.ims.glovemode@1.0-service"
    "lib64/vendor.ims.twinviewdock@1.0.so"
    "etc/init/vendor.ims.twinviewdock@1.0-service.rc"
    "bin/hw/vendor.ims.twinviewdock@1.0-service"
    "lib64/vendor.ims.wifiantennamode@1.0.so"
    "etc/init/vendor.ims.wifiantennamode@1.0-service.rc"
    "bin/hw/vendor.ims.wifiantennamode@1.0-service"
    "lib64/vendor.ims.zenmotion@1.0.so"
    "etc/init/vendor.ims.zenmotion@1.0-service.rc"
    "bin/hw/vendor.ims.zenmotion@1.0-service"
    "lib64/hw/vendor.qti.hardware.auralight@1.0-impl.so"
    "lib64/vendor.qti.hardware.auralight@1.0.so"
    "lib/hw/vendor.qti.hardware.auralight@1.0-impl.so"
    "lib/vendor.qti.hardware.auralight@1.0.so"
    "etc/init/vendor.qti.hardware.auralight@1.0-service.rc"
    "bin/hw/vendor.qti.hardware.auralight@1.0-service"
    "lib64/vendor.qti.hardware.ifaa@2.0.so"
    "etc/init/vendor.qti.hardware.ifaa@2.0-service.rc"
    "bin/hw/vendor.qti.hardware.ifaa@2.0-service"
    "etc/init/vendor.ozoaudio.media.c2@1.0-service.rc"
    "bin/hw/vendor.ozoaudio.media.c2@1.0-service"
    "lib64/hw/vendor.asus.hardware.vibratorcontrol@1.0-impl.so"
    "lib64/vendor.asus.hardware.vibratorcontrol@1.0.so"
    "lib/hw/vendor.asus.hardware.vibratorcontrol@1.0-impl.so"
    "lib/vendor.asus.hardware.vibratorcontrol@1.0.so"
    "etc/init/vendor.asus.hardware.vibratorcontrol@1.0-service.rc"
    "bin/hw/vendor.asus.hardware.vibratorcontrol@1.0-service"
    "lib64/hw/android.hardware.vibrator@1.0-impl.so"
    "lib/hw/android.hardware.vibrator@1.0-impl.so"
    "etc/init/android.hardware.vibrator@1.0-service.rc"
    "bin/hw/android.hardware.vibrator@1.0-service"

    # Kernel modules
    "lib/modules/audio_adsp_loader.ko"
    "lib/modules/audio_apr.ko"
    "lib/modules/audio_bolero_cdc.ko"
    "lib/modules/audio_hdmi.ko"
    "lib/modules/audio_machine_kona.ko"
    "lib/modules/audio_mbhc.ko"
    "lib/modules/audio_native.ko"
    "lib/modules/audio_pinctrl_lpi.ko"
    "lib/modules/audio_pinctrl_wcd.ko"
    "lib/modules/audio_platform.ko"
    "lib/modules/audio_q6.ko"
    "lib/modules/audio_q6_notifier.ko"
    "lib/modules/audio_q6_pdr.ko"
    "lib/modules/audio_rt5683.ko"
    "lib/modules/audio_rx_macro.ko"
    "lib/modules/audio_snd_event.ko"
    "lib/modules/audio_stub.ko"
    "lib/modules/audio_swr_ctrl.ko"
    "lib/modules/audio_swr.ko"
    "lib/modules/audio_tfa9874.ko"
    "lib/modules/audio_tx_macro.ko"
    "lib/modules/audio_usf.ko"
    "lib/modules/audio_va_macro.ko"
    "lib/modules/audio_wcd938x.ko"
    "lib/modules/audio_wcd938x_slave.ko"
    "lib/modules/audio_wcd9xxx.ko"
    "lib/modules/audio_wcd_core.ko"
    "lib/modules/audio_wsa_macro.ko"
    "lib/modules/br_netfilter.ko"
    "lib/modules/ec_i2c_interface.ko"
    "lib/modules/ene_6k582_station.ko"
    "lib/modules/ene_8k41_dock.ko"
    "lib/modules/ene_8k41_power.ko"
    "lib/modules/gspca_main.ko"
    "lib/modules/lcd.ko"
    "lib/modules/llcc_perfmon.ko"
    "lib/modules/ml51fb9ae_inbox.ko"
    "lib/modules/modules.alias"
    "lib/modules/modules.dep"
    "lib/modules/mpq-adapter.ko"
    "lib/modules/mpq-dmx-hw-plugin.ko"
    "lib/modules/ms51_inbox.ko"
    "lib/modules/nct7802.ko"
    "lib/modules/qca_cld3_wlan.ko"
    "lib/modules/rdbg.ko"
    "lib/modules/rmnet_perf.ko"
    "lib/modules/rmnet_shs.ko"
    "lib/modules/station_goodix_touch.ko"
    "lib/modules/station_key.ko"
    "lib/modules/texfat.ko"
    "lib/modules/tntfs.ko"
    "lib/modules/tspp.ko"
)

. ../sm8250-common/regen-vendor.sh "$@"

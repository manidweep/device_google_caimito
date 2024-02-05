#!/usr/bin/env -S PYTHONPATH=../../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from os import path

from extract_utils.file import File
from extract_utils.fixups_blob import (
    blob_fixup,
    blob_fixups_user_type,
)
from extract_utils.fixups_lib import (
    lib_fixup_remove_proto_version_suffix,
    lib_fixups_user_type,
    libs_proto_21_12,
)
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

device_rel_path = 'device/google/caimito/tokay'

namespace_imports = [
    'hardware/google/av',
    'hardware/google/gchips',
    'hardware/google/graphics/common',
    'hardware/google/interfaces',
    'hardware/google/pixel',
]


def lib_fixup_vendor_suffix(lib: str, partition: str, *args, **kwargs):
    return f'{lib}_{partition}' if partition == 'vendor' else None


lib_fixups: lib_fixups_user_type = {
    libs_proto_21_12: lib_fixup_remove_proto_version_suffix,
    (
        'com.google.edgetpu_app_service-V4-ndk',
        'com.google.edgetpu_vendor_service-V2-ndk',
        'vendor.google.whitechapel.audio.audioext@4.0',
        'vendor.google.whitechapel.audio.extension-V2-ndk',
        'vendor.samsung_slsi.telephony.hardware.oemservice@1.0',
        'vendor.samsung_slsi.telephony.hardware.radioExternal@1.0',
    ): lib_fixup_vendor_suffix,
}

blob_fixups: blob_fixups_user_type = {
    'product/etc/felica/common.cfg': blob_fixup()
        .patch_file('../japan-nfc.patch')
}  # fmt: skip

module = ExtractUtilsModule(
    'tokay',
    'google',
    device_rel_path,
    blob_fixups=blob_fixups,
    lib_fixups=lib_fixups,
    namespace_imports=namespace_imports,
    check_elf=True,
    add_firmware_proprietary_file=True,
    skip_main_proprietary_file=True,
)

module.add_proprietary_file(f'../proprietary-files.txt')
module.add_proprietary_file(f'../proprietary-files-carriersettings.txt')
module.add_proprietary_file(f'proprietary-files-vendor.txt')

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()

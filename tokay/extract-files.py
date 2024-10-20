#!/usr/bin/env -S PYTHONPATH=../../../../tools/extract-utils python3
#
# SPDX-FileCopyrightText: 2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

from os import path

from extract_utils.file import File
from extract_utils.main import (
    ExtractUtils,
    ExtractUtilsModule,
)

device_rel_path = 'device/google/caimito/tokay'

module = ExtractUtilsModule(
    'tokay',
    'google',
    device_rel_path,
    check_elf=True,
    skip_main_proprietary_file=True,
)

module.add_proprietary_file(f'../proprietary-files.txt')
module.add_proprietary_file(f'../proprietary-files-carriersettings.txt')

if __name__ == '__main__':
    utils = ExtractUtils.device(module)
    utils.run()
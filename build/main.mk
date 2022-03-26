# Copyright (C) 2020 The Proton AOSP Project
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

# Custom ROM version
-include vendor/proton/version.mk

# Signing
-include vendor/proton/signing/keys.mk

# Override fingerprint for Google Play Services and SafetyNet
ifneq ($(PRODUCT_OVERRIDE_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.stock_fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT)
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/proton/backuptool/backuptool.sh:install/bin/backuptool.sh \
    vendor/proton/backuptool/backuptool.functions:install/bin/backuptool.functions

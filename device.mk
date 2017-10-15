#
# Copyright (C) 2011 The CyanogenMod Project
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

GAPPS_VARIANT := stock
GAPPS_FORCE_PACKAGE_OVERRIDES := true
GAPPS_FORCE_MATCHING_DPI := true

GAPPS_EXCLUDED_PACKAGES := Cloud Print
GAPPS_EXCLUDED_PACKAGES := Device Health Services
GAPPS_EXCLUDED_PACKAGES := Google+
GAPPS_EXCLUDED_PACKAGES := Google Docs
GAPPS_EXCLUDED_PACKAGES := Google Drive
GAPPS_EXCLUDED_PACKAGES := Google Duo
GAPPS_EXCLUDED_PACKAGES := Google Fitness
GAPPS_EXCLUDED_PACKAGES := Google Keep
GAPPS_EXCLUDED_PACKAGES := Google News & Weather
GAPPS_EXCLUDED_PACKAGES := Google Now Launcher
GAPPS_EXCLUDED_PACKAGES := Google Play Books
GAPPS_EXCLUDED_PACKAGES := Google Play Movies & TV
GAPPS_EXCLUDED_PACKAGES := Google Play Music
GAPPS_EXCLUDED_PACKAGES := Google Play Newsstand
GAPPS_EXCLUDED_PACKAGES := Google Sheets
GAPPS_EXCLUDED_PACKAGES := Google Slides
GAPPS_EXCLUDED_PACKAGES := Google VR Services
GAPPS_EXCLUDED_PACKAGES := Hangouts
GAPPS_EXCLUDED_PACKAGES := Maps
GAPPS_EXCLUDED_PACKAGES := Messenger
GAPPS_EXCLUDED_PACKAGES := Pixel Icons
GAPPS_EXCLUDED_PACKAGES := Hangouts
GAPPS_EXCLUDED_PACKAGES := TalkBack
GAPPS_EXCLUDED_PACKAGES := YouTube

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/jf-gsm-common/jf-gsm-common-vendor.mk)

## device overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/jfltexx/overlay

# Inherit from jf-common
$(call inherit-product, device/samsung/jf-common/jf-common.mk)

$(call inherit-product, vendor/opengapps/build/opengapps-packages.mk)

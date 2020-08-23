/*
 * Copyright (C) 2020 The LineageOS Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#define LOG_TAG "TouchFeatureService"

#include "TouchFeature.h"

#include <fstream>

namespace vendor {
namespace lineage {
namespace touch {
namespace V1_0 {
namespace implementation {

const std::string kDoubleClickPath = "/proc/driver/dclick";

Return<void> TouchFeature::setFeature(TouchFeature feature, bool activate) {
    switch (feature) {
        case TouchFeature::POWER_FEATURE_DOUBLE_TAP_TO_WAKE:
            std::ofstream file(kDoubleClickPath);
            file << (activate ? "1" : "0");
            break;
        default:
            break;
    }
}

}  // namespace implementation
}  // namespace V1_0
}  // namespace touch
}  // namespace lineage
}  // namespace vendor

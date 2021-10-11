/*
 * Copyright (C) 2021 The LineageOS Project
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

package org.lineageos.refreshrate;

import static android.provider.Settings.System.MIN_REFRESH_RATE;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;

public class BootCompletedReceiver extends BroadcastReceiver {
    private static final String TAG = "BootCompletedReceiver";

    private static final float DEFAULT_REFRESH_RATE = 144.0f;

    @Override
    public void onReceive(Context context, Intent intent) {
        final String curr = Settings.System.getString(context.getContentResolver(), MIN_REFRESH_RATE);
        if (curr == null) {
            Settings.System.putFloat(context.getContentResolver(), MIN_REFRESH_RATE, DEFAULT_REFRESH_RATE);
        }
    }
}

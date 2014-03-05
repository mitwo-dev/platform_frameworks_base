/*
** Copyright 2013, Xiaomi Corporation
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
*/

package android.os;

/** @hide */

// This interface is also used by native code, so must be kept in sync
// with frameworks/native/include/powermanager/IPowerManagerCallback.h
// WARNING: don't call any methods in IPowerManager during callback,
// otherwise the deadlock will happen definitely
interface IPowerManagerCallback
{
    void onWakeLockChanged(boolean firstAcquire, boolean lastRelease);
    void onPowerStateChanged(boolean screenOn, boolean screenBright);
}

package com.estrongs.android.f;

import android.content.Context;
import android.net.NetworkInfo;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class m {
    public static String a(Context context, NetworkInfo.DetailedState detailedState) {
        return a(context, null, detailedState);
    }

    static String a(Context context, String str, NetworkInfo.DetailedState detailedState) {
        String[] stringArray = context.getResources().getStringArray(str == null ? C0000R.array.wifi_statuses : C0000R.array.wifi_status_with_ssid);
        int ordinal = detailedState.ordinal();
        if (ordinal >= stringArray.length || stringArray[ordinal].length() == 0) {
            return null;
        }
        return String.format(stringArray[ordinal], str);
    }
}

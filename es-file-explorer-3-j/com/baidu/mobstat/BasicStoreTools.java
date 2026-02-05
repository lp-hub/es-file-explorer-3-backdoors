package com.baidu.mobstat;

import android.content.Context;

/* loaded from: classes.dex */
public class BasicStoreTools extends BasicStoreToolsBase {
    public static final String APP_ANALYSIS_EXCEPTION = "exceptionanalysisflag";
    public static final String DEVICE_CUID = "cuid";
    public static final String DEVICE_ID = "device_id";
    public static final String LAST_SEND_TIME = "lastsendtime";
    public static final String ONLY_WIFI = "onlywifi";
    public static final String SEND_LOG_TYPE = "sendLogtype";
    public static final String TIME_INTERVAL = "timeinterval";

    /* renamed from: a, reason: collision with root package name */
    static BasicStoreTools f122a = new BasicStoreTools();

    private BasicStoreTools() {
    }

    public static BasicStoreTools getInstance() {
        return f122a;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean loadExceptionTurn(Context context) {
        return getBoolean(context, APP_ANALYSIS_EXCEPTION, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String loadGenerateDeviceCUID(Context context) {
        return getString(context, DEVICE_CUID, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String loadGenerateDeviceId(Context context) {
        return getString(context, DEVICE_ID, null);
    }

    protected long loadLastSendTime(Context context) {
        return getLong(context, LAST_SEND_TIME, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean loadOnlyWifiChannel(Context context) {
        return getBoolean(context, ONLY_WIFI, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int loadSendStrategy(Context context) {
        return getInt(context, SEND_LOG_TYPE, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int loadSendStrategyTime(Context context) {
        return getInt(context, TIME_INTERVAL, 1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setExceptionTurn(Context context, boolean z) {
        putBoolean(context, APP_ANALYSIS_EXCEPTION, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGenerateDeviceCUID(Context context, String str) {
        putString(context, DEVICE_CUID, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setGenerateDeviceId(Context context, String str) {
        putString(context, DEVICE_ID, str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLastSendTime(Context context, long j) {
        putLong(context, LAST_SEND_TIME, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOnlyWifi(Context context, boolean z) {
        putBoolean(context, ONLY_WIFI, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSendStrategy(Context context, int i) {
        putInt(context, SEND_LOG_TYPE, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setSendStrategyTime(Context context, int i) {
        putInt(context, TIME_INTERVAL, i);
    }
}

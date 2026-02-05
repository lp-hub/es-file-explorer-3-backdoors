package com.estrongs.android.pop.spfs;

import java.net.HttpURLConnection;
import java.net.URL;

/* loaded from: classes.dex */
public class ESURLUtil {
    public static int getLength(String str) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        int contentLength = httpURLConnection.getContentLength();
        httpURLConnection.disconnect();
        return contentLength;
    }
}

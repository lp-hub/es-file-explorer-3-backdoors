package com.estrongs.android.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

/* loaded from: classes.dex */
public class an {

    /* renamed from: a, reason: collision with root package name */
    private DateFormat f2671a;

    /* renamed from: b, reason: collision with root package name */
    private String[] f2672b;

    public an(DateFormat dateFormat, String[] strArr) {
        this.f2671a = dateFormat == null ? new SimpleDateFormat("yyyy-MM-dd") : dateFormat;
        this.f2671a.setTimeZone(TimeZone.getDefault());
        this.f2672b = strArr;
    }

    public String a(Date date) {
        long time = Calendar.getInstance(TimeZone.getTimeZone("GMT+00:00")).getTime().getTime() - date.getTime();
        long j = time >= 0 ? time : 0L;
        return j < 60000 ? (j / 1000) + " " + this.f2672b[0] : j < 3600000 ? (j / 60000) + " " + this.f2672b[1] : j < 86400000 ? (j / 3600000) + " " + this.f2672b[2] : j < 604800000 ? (j / 86400000) + " " + this.f2672b[3] : j < 2592000000L ? (j / 604800000) + " " + this.f2672b[4] : j < 31536000000L ? (j / 2592000000L) + " " + this.f2672b[5] : this.f2671a.format(date);
    }
}

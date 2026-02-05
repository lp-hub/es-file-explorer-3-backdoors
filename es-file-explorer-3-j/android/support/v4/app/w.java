package android.support.v4.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.widget.RemoteViews;

/* loaded from: classes.dex */
public class w {

    /* renamed from: a, reason: collision with root package name */
    Context f33a;

    /* renamed from: b, reason: collision with root package name */
    CharSequence f34b;
    CharSequence c;
    PendingIntent d;
    PendingIntent e;
    RemoteViews f;
    Bitmap g;
    CharSequence h;
    int i;
    Notification j = new Notification();

    public w(Context context) {
        this.f33a = context;
        this.j.when = System.currentTimeMillis();
        this.j.audioStreamType = -1;
    }

    private void a(int i, boolean z) {
        if (z) {
            this.j.flags |= i;
        } else {
            this.j.flags &= i ^ (-1);
        }
    }

    public Notification a() {
        x xVar;
        xVar = v.f32a;
        return xVar.a(this);
    }

    public w a(int i) {
        this.j.icon = i;
        return this;
    }

    public w a(PendingIntent pendingIntent) {
        this.d = pendingIntent;
        return this;
    }

    public w a(RemoteViews remoteViews) {
        this.j.contentView = remoteViews;
        return this;
    }

    public w a(CharSequence charSequence) {
        this.f34b = charSequence;
        return this;
    }

    public w a(boolean z) {
        a(2, z);
        return this;
    }

    public w b(PendingIntent pendingIntent) {
        this.j.deleteIntent = pendingIntent;
        return this;
    }

    public w b(CharSequence charSequence) {
        this.c = charSequence;
        return this;
    }

    public w c(CharSequence charSequence) {
        this.j.tickerText = charSequence;
        return this;
    }
}

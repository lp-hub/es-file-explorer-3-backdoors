package android.support.v4.app;

import android.app.Notification;

/* loaded from: classes.dex */
class y implements x {
    @Override // android.support.v4.app.x
    public Notification a(w wVar) {
        Notification notification = wVar.j;
        notification.setLatestEventInfo(wVar.f33a, wVar.f34b, wVar.c, wVar.d);
        return notification;
    }
}

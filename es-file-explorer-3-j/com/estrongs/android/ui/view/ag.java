package com.estrongs.android.ui.view;

import android.os.Handler;
import android.os.Message;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ag extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ IndicatorView f2600a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(IndicatorView indicatorView) {
        this.f2600a = indicatorView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        long j;
        long j2;
        long j3;
        List list;
        long j4;
        long j5;
        long j6;
        List list2;
        List list3;
        long j7;
        long j8;
        long j9;
        List list4;
        List list5;
        switch (message.what) {
            case 0:
            default:
                return;
            case 1:
                try {
                    int i = message.arg1;
                    long currentTimeMillis = System.currentTimeMillis();
                    j = this.f2600a.g;
                    long j10 = currentTimeMillis - j;
                    j2 = this.f2600a.h;
                    if (j10 >= j2) {
                        this.f2600a.b(i);
                    } else {
                        float f = ((float) j10) * 1.0f;
                        j3 = this.f2600a.h;
                        float f2 = f / ((float) j3);
                        list = this.f2600a.d;
                        ((aj) list.get(i)).a(f2);
                        this.f2600a.invalidate();
                        sendMessage(Message.obtain(message));
                    }
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case 2:
                try {
                    int i2 = message.arg1;
                    long currentTimeMillis2 = System.currentTimeMillis();
                    j7 = this.f2600a.g;
                    long j11 = currentTimeMillis2 - j7;
                    j8 = this.f2600a.h;
                    if (j11 >= j8) {
                        list5 = this.f2600a.d;
                        ((aj) list5.get(i2)).a(0.0f);
                        this.f2600a.invalidate();
                    } else {
                        float f3 = ((float) j11) * 1.0f;
                        j9 = this.f2600a.h;
                        float f4 = f3 / ((float) j9);
                        list4 = this.f2600a.d;
                        ((aj) list4.get(i2)).a(f4);
                        this.f2600a.invalidate();
                        sendMessage(Message.obtain(message));
                    }
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case 3:
                try {
                    int i3 = message.arg1;
                    int i4 = message.arg2;
                    long currentTimeMillis3 = System.currentTimeMillis();
                    j4 = this.f2600a.g;
                    long j12 = currentTimeMillis3 - j4;
                    j5 = this.f2600a.h;
                    if (j12 >= j5) {
                        this.f2600a.b(i4);
                        if (((Boolean) message.obj).booleanValue()) {
                            this.f2600a.c(i3);
                        }
                    } else {
                        float f5 = ((float) j12) * 1.0f;
                        j6 = this.f2600a.h;
                        float f6 = f5 / ((float) j6);
                        list2 = this.f2600a.d;
                        ((aj) list2.get(i3)).a(1.0f - f6);
                        list3 = this.f2600a.d;
                        ((aj) list3.get(i4)).a(f6);
                        this.f2600a.invalidate();
                        sendMessage(Message.obtain(message));
                    }
                    return;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return;
                }
        }
    }
}

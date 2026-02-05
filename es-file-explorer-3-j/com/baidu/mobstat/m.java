package com.baidu.mobstat;

import android.content.Context;
import android.os.Handler;
import com.baidu.sapi2.callback.LoginCallBack;
import java.util.Timer;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class m implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ Context f155a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ l f156b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(l lVar, Context context) {
        this.f156b = lVar;
        this.f155a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z;
        Timer timer;
        SendStrategyEnum sendStrategyEnum;
        SendStrategyEnum sendStrategyEnum2;
        Handler handler;
        int i;
        Timer timer2;
        if (z.k(this.f155a)) {
            this.f156b.i = BasicStoreTools.getInstance().loadExceptionTurn(this.f155a);
            z = this.f156b.i;
            if (z) {
                j.a().b(this.f155a);
            }
            timer = this.f156b.g;
            if (timer != null) {
                timer2 = this.f156b.g;
                timer2.cancel();
                this.f156b.g = null;
            }
            this.f156b.e = SendStrategyEnum.values()[BasicStoreTools.getInstance().loadSendStrategy(this.f155a)];
            this.f156b.f = BasicStoreTools.getInstance().loadSendStrategyTime(this.f155a);
            this.f156b.d = BasicStoreTools.getInstance().loadOnlyWifiChannel(this.f155a);
            sendStrategyEnum = this.f156b.e;
            if (sendStrategyEnum.equals(SendStrategyEnum.SET_TIME_INTERVAL)) {
                this.f156b.d(this.f155a);
            } else {
                sendStrategyEnum2 = this.f156b.e;
                if (sendStrategyEnum2.equals(SendStrategyEnum.ONCE_A_DAY)) {
                    this.f156b.d(this.f155a);
                }
            }
            handler = l.j;
            n nVar = new n(this);
            i = this.f156b.h;
            handler.postDelayed(nVar, i * LoginCallBack.REQUEST_LOGINPROTECT);
        }
    }
}

package com.estrongs.android.pop.app;

import android.os.Handler;
import android.os.Message;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
class ch extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ LocalFileSharingActivity f563a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ch(LocalFileSharingActivity localFileSharingActivity) {
        this.f563a = localFileSharingActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        BaseAdapter baseAdapter;
        cs[] csVarArr;
        cs[] csVarArr2;
        com.estrongs.android.ui.e.bq bqVar;
        TextView textView;
        LocalFileSharingActivity localFileSharingActivity;
        BaseAdapter baseAdapter2;
        TextView textView2;
        switch (message.what) {
            case 0:
                this.f563a.i();
                baseAdapter2 = this.f563a.g;
                baseAdapter2.notifyDataSetChanged();
                String str = (String) message.obj;
                textView2 = this.f563a.r;
                textView2.setText(str);
                return;
            case 1:
                this.f563a.i();
                baseAdapter = this.f563a.g;
                baseAdapter.notifyDataSetChanged();
                csVarArr = this.f563a.e;
                synchronized (csVarArr) {
                    csVarArr2 = this.f563a.e;
                    if (csVarArr2.length == 0) {
                        localFileSharingActivity = LocalFileSharingActivity.j;
                        if (localFileSharingActivity != null) {
                            this.f563a.f();
                        }
                    }
                }
                bqVar = this.f563a.p;
                bqVar.a(0, C0000R.string.action_refresh, C0000R.drawable.toolbar_refresh);
                textView = this.f563a.r;
                textView.setVisibility(8);
                this.f563a.f360a.setText(C0000R.string.es_net_target_scanning);
                return;
            default:
                return;
        }
    }
}

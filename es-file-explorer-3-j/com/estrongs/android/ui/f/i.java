package com.estrongs.android.ui.f;

import android.content.Context;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import com.estrongs.android.widget.bn;
import com.estrongs.fs.FileSystemException;
import java.util.List;

/* loaded from: classes.dex */
class i implements bn {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ com.estrongs.android.ui.a.a f2209a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ g f2210b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(g gVar, com.estrongs.android.ui.a.a aVar) {
        this.f2210b = gVar;
        this.f2209a = aVar;
    }

    @Override // com.estrongs.android.widget.bn
    public void a() {
        Context context;
        String str;
        context = this.f2210b.f2206b.f2204b;
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) context;
        try {
            if (!ak.aP(this.f2209a.b())) {
                if (!com.estrongs.fs.d.a(fileExplorerActivity).b(this.f2209a.b())) {
                    fileExplorerActivity.a(C0000R.string.message_invalid_path);
                    return;
                }
                if (com.estrongs.fs.d.a(fileExplorerActivity).h(this.f2209a.b()) || ak.K(this.f2209a.b()) || ak.L(this.f2209a.b()) || ak.M(this.f2209a.b()) || ak.O(this.f2209a.b())) {
                    fileExplorerActivity.d(this.f2209a.b());
                    return;
                } else {
                    fileExplorerActivity.a((String) null, this.f2209a.b());
                    return;
                }
            }
            String b2 = this.f2209a.b();
            if (b2.startsWith("pcs://")) {
                fileExplorerActivity.c(b2);
                return;
            }
            List<com.estrongs.fs.g> a2 = com.estrongs.fs.d.a().a(ak.aQ(b2));
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= a2.size()) {
                    str = b2;
                    break;
                } else {
                    if (b2.startsWith(ak.C(a2.get(i2).getAbsolutePath()))) {
                        str = ak.b(b2, ak.y(a2.get(i2).getAbsolutePath()));
                        break;
                    }
                    i = i2 + 1;
                }
            }
            if (com.estrongs.fs.d.a(fileExplorerActivity).h(str)) {
                fileExplorerActivity.d(str);
            } else {
                fileExplorerActivity.a((String) null, str);
            }
            if ("bt://".equals(str)) {
                com.estrongs.android.pop.app.b.a.a().c();
            }
        } catch (FileSystemException e) {
            e.printStackTrace();
        }
    }
}

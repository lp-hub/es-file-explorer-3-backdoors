package com.estrongs.android.pop.app;

import android.app.Activity;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class v extends com.estrongs.android.ui.b.ew {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String f1084a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ com.estrongs.fs.b.z f1085b;
    final /* synthetic */ Activity c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(Activity activity, String str, com.estrongs.a.a aVar, String str2, com.estrongs.fs.b.z zVar, Activity activity2) {
        super(activity, str, aVar);
        this.f1084a = str2;
        this.f1085b = zVar;
        this.c = activity2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public String a() {
        return this.c.getString(C0000R.string.download_sucessfully_message, new Object[]{com.estrongs.android.util.ak.B(this.f1085b.c.f3161b)});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public String a(com.estrongs.a.p pVar) {
        if (pVar != null) {
            return pVar.f229a == 2 ? "系统错误" : pVar.f229a == 3 ? "资源未找到" : pVar.f229a == 4 ? "下载超时" : pVar.f229a == 5 ? "下载失败" : pVar.f229a == 6 ? "存储空间不够" : pVar.f229a == 7 ? "任务已取消" : pVar.f229a == 36013 ? "下载任务太多，添加失败" : pVar.f229a == 36020 ? "无效的下载源" : pVar.f229a == 36001 ? "错误的参数" : pVar.f230b != null ? pVar.f230b instanceof com.estrongs.a.q ? ((com.estrongs.a.q) pVar.f230b).f231a : pVar.f230b.toString() : this.f1084a;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public void a(com.estrongs.a.a aVar) {
        if (aVar instanceof com.estrongs.fs.b.z) {
            ((com.estrongs.fs.b.z) aVar).f3032b = true;
        }
        super.a(aVar);
    }

    @Override // com.estrongs.android.ui.b.ew
    protected String b() {
        return this.c.getString(C0000R.string.download_cancel_message, new Object[]{this.f1085b.c.f3161b});
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.ui.b.ew
    public void b(com.estrongs.a.a aVar) {
        com.estrongs.fs.a.b.a().a(com.estrongs.android.util.ak.aY(this.f1085b.c.getPath()));
    }

    @Override // com.estrongs.android.ui.b.ew, com.estrongs.android.ui.b.ag, android.app.Dialog
    public void show() {
        d();
    }
}

package com.estrongs.android.pop.view;

/* loaded from: classes.dex */
public class dl implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1406a;

    /* renamed from: b, reason: collision with root package name */
    private String f1407b;
    private String c;

    public dl(FileExplorerActivity fileExplorerActivity) {
        this.f1406a = fileExplorerActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ String b(dl dlVar) {
        return dlVar.c;
    }

    public void a(String str) {
        this.f1407b = str;
        if (str != null) {
            str = str.trim().toLowerCase();
        }
        this.c = str;
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        return this.c == null || "".equals(this.c) || gVar.getName().toLowerCase().indexOf(this.c) >= 0;
    }
}

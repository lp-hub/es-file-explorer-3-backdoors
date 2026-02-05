package com.estrongs.android.pop.app;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ec implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ String[][] f710a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ String f711b;
    final /* synthetic */ Exception[] c;
    final /* synthetic */ PopAudioPlayer d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ec(PopAudioPlayer popAudioPlayer, String[][] strArr, String str, Exception[] excArr) {
        this.d = popAudioPlayer;
        this.f710a = strArr;
        this.f711b = str;
        this.c = excArr;
    }

    @Override // java.lang.Runnable
    public void run() {
        String[] c;
        try {
            String[][] strArr = this.f710a;
            c = this.d.c(this.f711b);
            strArr[0] = c;
        } catch (Exception e) {
            this.c[0] = e;
        }
    }
}

package android.support.v4.app;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ k f25a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(k kVar) {
        this.f25a = kVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f25a.d();
    }
}

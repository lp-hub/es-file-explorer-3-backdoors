package com.estrongs.fs.impl.pcs;

/* loaded from: classes.dex */
final class e implements com.estrongs.fs.impl.i.d {
    @Override // com.estrongs.fs.impl.i.d
    public void a(String str, int i, String str2) {
        if (i < 31041 || i > 31046) {
            return;
        }
        new Thread(new f(this)).start();
    }
}

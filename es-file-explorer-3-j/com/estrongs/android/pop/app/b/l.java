package com.estrongs.android.pop.app.b;

/* loaded from: classes.dex */
public class l implements com.estrongs.fs.h {

    /* renamed from: a, reason: collision with root package name */
    private String[] f494a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(String str) {
        this.f494a = str.split(";");
    }

    @Override // com.estrongs.fs.h
    public boolean a(com.estrongs.fs.g gVar) {
        if (gVar == null || gVar.getFileType().a()) {
            return false;
        }
        String lowerCase = gVar.getName().toLowerCase();
        for (String str : this.f494a) {
            if (str != null && lowerCase.endsWith(str.toLowerCase())) {
                return true;
            }
        }
        return false;
    }
}

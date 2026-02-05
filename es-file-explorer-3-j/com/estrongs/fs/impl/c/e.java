package com.estrongs.fs.impl.c;

import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.fs.l;

/* loaded from: classes.dex */
public class e extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private OBEXElement f3062a;

    public e(OBEXElement oBEXElement, String str) {
        super(str);
        this.f3062a = oBEXElement;
        setName(oBEXElement.a());
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return canWrite();
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return this.f3062a.g().charAt(0) == 'R';
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        if (this.f3062a.g().length() == 1) {
            return false;
        }
        return this.f3062a.g().charAt(1) == 'W';
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3062a.d() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return a.d(getAbsolutePath());
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        if (this.f3062a.e() == null) {
            return 0L;
        }
        return this.f3062a.e().getTime();
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3062a.b();
    }
}

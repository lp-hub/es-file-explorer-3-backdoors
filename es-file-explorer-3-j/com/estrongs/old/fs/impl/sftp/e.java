package com.estrongs.old.fs.impl.sftp;

import com.estrongs.android.util.ak;
import com.estrongs.fs.l;
import com.jcraft.jsch.SftpATTRS;

/* loaded from: classes.dex */
public class e extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private SftpATTRS f3249a;

    public e(SftpATTRS sftpATTRS, String str, String str2) {
        super(str);
        this.f3249a = sftpATTRS;
        setName(ak.d(str));
        if (str2 != null) {
            this.isLink = true;
            this.linkTarget = str2;
        }
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return canWrite();
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return this.f3249a.a().indexOf(1) == 114;
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        return this.f3249a.a().indexOf(2) == 119;
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return this.f3249a.d() ? l.f3183a : l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        return false;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3249a.l() * 1000;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3249a.g();
    }
}

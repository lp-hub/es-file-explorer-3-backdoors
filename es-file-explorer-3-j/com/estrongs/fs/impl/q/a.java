package com.estrongs.fs.impl.q;

import com.estrongs.android.util.ak;
import com.estrongs.fs.FileSystemException;
import com.estrongs.fs.l;
import de.aflx.sardine.DavResource;
import java.net.URLDecoder;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    protected boolean f3173a;

    /* renamed from: b, reason: collision with root package name */
    protected boolean f3174b;

    public a(String str, long j, long j2, boolean z) {
        super(str);
        this.f3173a = true;
        this.f3174b = true;
        this.size = j;
        this.lastModified = j2;
        if (z) {
            this.type = l.f3183a;
        } else {
            this.type = l.f3184b;
        }
        setName(ak.d(str));
    }

    public a(String str, DavResource davResource, boolean z) {
        super(str);
        String str2;
        Exception e;
        this.f3173a = true;
        this.f3174b = true;
        String name = davResource.getName();
        try {
            String decode = URLDecoder.decode(davResource.getName(), "UTF-8");
            str2 = (z && decode.length() > 0 && decode.endsWith("/")) ? decode.substring(0, decode.length() - 1) : decode;
            try {
                this.lastModified = davResource.getModified().getTime();
            } catch (Exception e2) {
            }
        } catch (Exception e3) {
            str2 = name;
            e = e3;
        }
        try {
            if (z) {
                this.type = l.f3183a;
                this.size = 0L;
            } else {
                this.type = l.f3184b;
                this.size = davResource.getContentLength().longValue();
            }
        } catch (Exception e4) {
            e = e4;
            e.printStackTrace();
            setName(str2);
        }
        setName(str2);
    }

    @Override // com.estrongs.fs.a
    protected boolean canDelete() {
        return canWrite();
    }

    @Override // com.estrongs.fs.a
    protected boolean canRead() {
        return this.f3174b;
    }

    @Override // com.estrongs.fs.a
    protected boolean canWrite() {
        return this.f3173a;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public boolean exists() {
        try {
            return b.d(getAbsolutePath());
        } catch (Exception e) {
            throw new FileSystemException(e);
        }
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public void setName(String str) {
        boolean z = this.name != null;
        super.setName(str);
        if (z && getFileType().a()) {
            if (!this.path.endsWith("/")) {
                this.path += "/";
            }
            if (this.absolutePath.endsWith("/")) {
                return;
            }
            this.absolutePath += "/";
        }
    }
}

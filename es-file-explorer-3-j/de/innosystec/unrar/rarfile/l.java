package de.innosystec.unrar.rarfile;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

/* loaded from: classes.dex */
public class l extends b {
    private Log g;
    private boolean h;

    public l(b bVar) {
        super(bVar);
        this.g = LogFactory.getLog(l.class.getName());
        this.h = false;
    }

    @Override // de.innosystec.unrar.rarfile.b
    public void j() {
        super.j();
        this.g.info("valid: " + k());
    }

    public boolean k() {
        return g() == 24914 && i() == UnrarHeadertype.MarkHeader && f() == 6689 && h() == 7;
    }

    public boolean l() {
        byte[] bArr = new byte[7];
        de.innosystec.unrar.b.b.a(bArr, 0, this.c);
        bArr[2] = this.d;
        de.innosystec.unrar.b.b.a(bArr, 3, this.e);
        de.innosystec.unrar.b.b.a(bArr, 5, this.f);
        if (bArr[0] == 82) {
            if (bArr[1] == 69 && bArr[2] == 126 && bArr[3] == 94) {
                this.h = true;
                return true;
            }
            if (bArr[1] == 97 && bArr[2] == 114 && bArr[3] == 33 && bArr[4] == 26 && bArr[5] == 7 && bArr[6] == 0) {
                this.h = false;
                return true;
            }
        }
        return false;
    }

    public boolean m() {
        return this.h;
    }
}

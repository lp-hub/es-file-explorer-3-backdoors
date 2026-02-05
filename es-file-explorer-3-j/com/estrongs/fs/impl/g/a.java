package com.estrongs.fs.impl.g;

import android.net.Uri;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.aw;
import com.estrongs.fs.l;
import java.sql.Date;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.entity.mime.MIME;

/* loaded from: classes.dex */
public class a extends com.estrongs.fs.a {

    /* renamed from: a, reason: collision with root package name */
    private long f3078a;

    /* renamed from: b, reason: collision with root package name */
    private long f3079b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, HttpResponse httpResponse) {
        super(str);
        int indexOf;
        this.f3078a = -1L;
        this.f3079b = -1L;
        Header firstHeader = httpResponse.getFirstHeader(MIME.CONTENT_DISPOSITION);
        String value = firstHeader != null ? firstHeader.getValue() : null;
        if (value != null && (indexOf = value.indexOf("filename=")) != -1) {
            this.name = value.substring(indexOf + 9);
            try {
                this.name = new String(this.name.getBytes("iso-8859-1"));
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (this.name.charAt(0) == '\"') {
                this.name = this.name.substring(1, this.name.length() - 1);
            }
        }
        if (this.name == null) {
            this.name = Uri.decode(ak.d(str));
            if (this.name.indexOf(63) >= 0) {
                this.name = this.name.substring(0, this.name.indexOf(63));
            }
        } else {
            this.name = this.name;
        }
        Header firstHeader2 = httpResponse.getFirstHeader("Content-Length");
        if (firstHeader2 != null) {
            this.f3078a = aw.b(firstHeader2.getValue());
        }
        Header firstHeader3 = httpResponse.getFirstHeader("Last-Modified");
        if (firstHeader3 != null) {
            this.f3079b = Date.parse(firstHeader3.getValue());
        }
    }

    @Override // com.estrongs.fs.a
    protected l doGetFileType() {
        return l.f3184b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long lastModified() {
        return this.f3079b;
    }

    @Override // com.estrongs.fs.a, com.estrongs.fs.g
    public long length() {
        return this.f3078a;
    }
}

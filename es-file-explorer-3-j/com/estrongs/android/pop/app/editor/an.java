package com.estrongs.android.pop.app.editor;

import android.content.Context;
import com.estrongs.android.pop.C0000R;
import org.apache.commons.net.SocketClient;

/* loaded from: classes.dex */
public class an {

    /* renamed from: a, reason: collision with root package name */
    private Context f737a;

    /* renamed from: b, reason: collision with root package name */
    private ar f738b;
    private com.estrongs.android.ui.b.ag c = null;
    private int d;
    private int e;

    public an(Context context, int i, ar arVar) {
        this.d = 1;
        this.e = this.d;
        this.f737a = context;
        this.f738b = arVar;
        this.d = i;
        this.e = i;
    }

    public static int a(char[] cArr) {
        int i = 0;
        if (cArr == null) {
            return 1;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= cArr.length) {
                i = 1;
                break;
            }
            if (cArr[i2] != '\r' || cArr[i2 + 1] != '\n') {
                if (cArr[i2] == '\r' && cArr[i2 + 1] != '\n') {
                    i = 2;
                    break;
                }
                if (cArr[i2] == '\n') {
                    i = 1;
                    break;
                }
                i2++;
            } else {
                break;
            }
        }
        return i;
    }

    public static String a(int i) {
        return i == 0 ? SocketClient.NETASCII_EOL : i == 2 ? "\r" : "\n";
    }

    public void a() {
        if (this.c != null) {
            this.c.show();
        } else {
            this.c = new com.estrongs.android.ui.b.aq(this.f737a).a(C0000R.string.line_terminator).a(this.f737a.getResources().getStringArray(C0000R.array.line_terminator_entries), this.e, new aq(this)).b(C0000R.string.confirm_ok, new ap(this)).c(C0000R.string.confirm_cancel, new ao(this)).b();
        }
    }
}

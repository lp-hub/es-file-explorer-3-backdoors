package com.estrongs.android.util;

import android.content.Context;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class b {

    /* renamed from: b, reason: collision with root package name */
    private Context f2691b;
    private int c;
    private int d;
    private f e;
    private com.estrongs.android.ui.b.ag f = null;

    /* renamed from: a, reason: collision with root package name */
    public boolean f2690a = true;

    public b(Context context, int i, f fVar) {
        this.c = 0;
        this.d = 0;
        this.f2691b = context;
        this.c = i;
        this.d = i;
        this.e = fVar;
    }

    public b(Context context, String str, f fVar) {
        this.c = 0;
        this.d = 0;
        this.f2691b = context;
        this.c = a(str);
        this.d = this.c;
        this.e = fVar;
    }

    public static int a(String str) {
        for (int i = 0; i < g.f2695a.length; i++) {
            if (g.f2695a[i].equalsIgnoreCase(str)) {
                return i;
            }
        }
        return 0;
    }

    public static String a(Context context, int i) {
        String[] stringArray = context.getResources().getStringArray(C0000R.array.ftp_codepage_entries);
        return stringArray != null ? stringArray[i] : "";
    }

    public void a() {
        String[] stringArray;
        if (this.f != null) {
            this.f.show();
            return;
        }
        if (this.f2690a) {
            stringArray = this.f2691b.getResources().getStringArray(C0000R.array.ftp_codepage_entries);
        } else {
            String[] stringArray2 = this.f2691b.getResources().getStringArray(C0000R.array.ftp_codepage_entries);
            String[] strArr = new String[stringArray2.length - 1];
            for (int i = 1; i < stringArray2.length; i++) {
                strArr[i - 1] = stringArray2[i];
            }
            stringArray = strArr;
        }
        this.f = new com.estrongs.android.ui.b.aq(this.f2691b).a(C0000R.string.ftp_encoding_dialog_title).a(stringArray, this.f2690a ? this.d : this.d - 1, new e(this)).b(C0000R.string.confirm_ok, new d(this)).c(C0000R.string.confirm_cancel, new c(this)).b();
    }
}

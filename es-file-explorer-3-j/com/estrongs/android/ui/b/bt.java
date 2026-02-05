package com.estrongs.android.ui.b;

import android.text.InputFilter;
import android.text.Spanned;
import com.estrongs.android.pop.C0000R;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bt extends InputFilter.LengthFilter {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ br f1677a;

    /* renamed from: b, reason: collision with root package name */
    private long f1678b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bt(br brVar, int i) {
        super(i);
        this.f1677a = brVar;
        this.f1678b = 0L;
    }

    @Override // android.text.InputFilter.LengthFilter, android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        int length = spanned.subSequence(i4, spanned.length()).toString().getBytes().length + spanned.subSequence(0, i3).toString().getBytes().length;
        int length2 = charSequence.subSequence(i, i2).toString().getBytes().length;
        if (255 - length <= 0) {
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - this.f1678b > 1000) {
                com.estrongs.android.ui.view.z.a(this.f1677a.f1674a, this.f1677a.f1674a.getString(C0000R.string.msg_filename_too_long), 0).show();
                this.f1678b = currentTimeMillis;
            }
            return "";
        }
        if (255 - length >= length2) {
            return null;
        }
        if (i2 <= i) {
            return "";
        }
        while (length2 + length > 255) {
            i2--;
            if (i2 <= i) {
                return "";
            }
            length2 = charSequence.subSequence(i, i2).toString().getBytes().length;
        }
        return charSequence.subSequence(i, i2);
    }
}

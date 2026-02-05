package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.widget.Button;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.aw;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class t extends w {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f507a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(q qVar, Button button, int i, int i2) {
        super(qVar, button, i, i2);
        this.f507a = qVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.estrongs.android.pop.app.b.w
    public void a(int i, Object obj) {
        Context context;
        p pVar;
        p pVar2;
        p pVar3;
        p pVar4;
        p pVar5;
        p pVar6;
        p pVar7;
        p pVar8;
        p pVar9;
        p pVar10;
        p pVar11;
        p pVar12;
        if (i >= a() - 1) {
            context = this.f507a.f503a;
            a(new String[]{"KB", "MB"}, context.getString(C0000R.string.search_size_scope_input_title), 128, 512).b();
            return;
        }
        this.h = i;
        pVar = this.f507a.g;
        pVar.f501a = -1L;
        pVar2 = this.f507a.g;
        pVar2.f502b = -1L;
        if (i == 1) {
            pVar11 = this.f507a.g;
            pVar11.f501a = 0L;
            pVar12 = this.f507a.g;
            pVar12.f502b = 102400L;
            return;
        }
        if (i == 2) {
            pVar9 = this.f507a.g;
            pVar9.f501a = 102400L;
            pVar10 = this.f507a.g;
            pVar10.f502b = 1048576L;
            return;
        }
        if (i == 3) {
            pVar7 = this.f507a.g;
            pVar7.f501a = 1048576L;
            pVar8 = this.f507a.g;
            pVar8.f502b = 16777216L;
            return;
        }
        if (i == 4) {
            pVar5 = this.f507a.g;
            pVar5.f501a = 16777216L;
            pVar6 = this.f507a.g;
            pVar6.f502b = 134217728L;
            return;
        }
        if (i != 5) {
            a((String) obj);
            return;
        }
        pVar3 = this.f507a.g;
        pVar3.f501a = 134217728L;
        pVar4 = this.f507a.g;
        pVar4.f502b = -1L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.b.w
    public void a(int i, String str, int i2, String str2) {
        p pVar;
        p pVar2;
        p pVar3;
        p pVar4;
        if ("KB".equalsIgnoreCase(str)) {
            pVar4 = this.f507a.g;
            pVar4.f501a = i * 1024;
        } else if ("MB".equalsIgnoreCase(str)) {
            pVar = this.f507a.g;
            pVar.f501a = i * 1048576;
        }
        if ("KB".equalsIgnoreCase(str2)) {
            pVar3 = this.f507a.g;
            pVar3.f502b = i2 * 1024;
        } else if ("MB".equalsIgnoreCase(str2)) {
            pVar2 = this.f507a.g;
            pVar2.f502b = i2 * 1048576;
        }
        super.a(i, str, i2, str2);
    }

    void a(String str) {
        p pVar;
        p pVar2;
        p pVar3;
        p pVar4;
        String[] split = str.split(" - ");
        if (split != null && split.length == 2) {
            pVar3 = this.f507a.g;
            pVar3.f501a = b(split[0]);
            pVar4 = this.f507a.g;
            pVar4.f502b = b(split[1]);
            return;
        }
        if (str.startsWith(" - ")) {
            pVar2 = this.f507a.g;
            pVar2.f502b = b(split[0]);
        } else {
            pVar = this.f507a.g;
            pVar.f501a = b(split[0]);
        }
    }

    long b(String str) {
        if (str == null || str.trim().length() < 1) {
            return -1L;
        }
        int indexOf = str.indexOf("KB");
        if (indexOf > 0) {
            return aw.b(str.substring(0, indexOf)) * 1024;
        }
        int indexOf2 = str.indexOf("MB");
        if (indexOf2 > 0) {
            return aw.b(str.substring(0, indexOf2)) * 1048576;
        }
        return -1L;
    }
}

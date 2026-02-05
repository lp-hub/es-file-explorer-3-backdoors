package com.estrongs.android.pop.app.b;

import android.content.Context;
import android.widget.Button;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.util.aw;
import java.util.Calendar;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class u extends w {

    /* renamed from: a, reason: collision with root package name */
    int f508a;

    /* renamed from: b, reason: collision with root package name */
    int f509b;
    Calendar c;
    final /* synthetic */ q d;
    private String k;
    private String l;
    private int m;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(q qVar, Button button, int i, int i2) {
        super(qVar, button, i, i2);
        this.d = qVar;
        this.m = 2011;
        this.f508a = 1;
        this.f509b = 1;
        this.c = null;
    }

    private Calendar b() {
        if (this.c == null) {
            this.c = Calendar.getInstance();
            this.m = this.c.get(1);
            this.f508a = this.c.get(2);
            this.f509b = this.c.get(5);
            this.c.set(this.m, this.f508a, this.f509b, 0, 0, 0);
        }
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.estrongs.android.pop.app.b.w
    public void a(int i, Object obj) {
        Context context;
        Context context2;
        Context context3;
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
        p pVar13;
        p pVar14;
        context = this.d.f503a;
        this.k = context.getString(C0000R.string.date_days);
        context2 = this.d.f503a;
        this.l = context2.getString(C0000R.string.date_weeks);
        if (i >= a() - 1) {
            String[] strArr = {this.k};
            context3 = this.d.f503a;
            a(strArr, context3.getString(C0000R.string.search_date_scope_input_title), 365, 730).b();
            return;
        }
        this.h = i;
        pVar = this.d.h;
        pVar.f501a = -1L;
        pVar2 = this.d.h;
        pVar2.f502b = -1L;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            pVar13 = this.d.h;
            pVar13.f501a = b().getTimeInMillis();
            pVar14 = this.d.h;
            pVar14.f502b = Calendar.getInstance().getTimeInMillis();
            return;
        }
        if (i == 2) {
            pVar11 = this.d.h;
            pVar11.f501a = b().getTimeInMillis() - 86400000;
            pVar12 = this.d.h;
            pVar12.f502b = b().getTimeInMillis();
            return;
        }
        if (i == 3) {
            int i2 = b().get(7);
            pVar9 = this.d.h;
            pVar9.f501a = b().getTimeInMillis() - ((i2 - 1) * 86400000);
            pVar10 = this.d.h;
            pVar10.f502b = Calendar.getInstance().getTimeInMillis();
            return;
        }
        if (i == 4) {
            int i3 = b().get(5);
            pVar7 = this.d.h;
            pVar7.f501a = b().getTimeInMillis() - ((i3 - 1) * 86400000);
            pVar8 = this.d.h;
            pVar8.f502b = Calendar.getInstance().getTimeInMillis();
            return;
        }
        if (i == 5) {
            int i4 = b().get(6);
            pVar5 = this.d.h;
            pVar5.f501a = b().getTimeInMillis() - ((i4 - 1) * 86400000);
            pVar6 = this.d.h;
            pVar6.f502b = Calendar.getInstance().getTimeInMillis();
            return;
        }
        if (i != 6) {
            a((String) obj);
            return;
        }
        int i5 = b().get(6);
        pVar3 = this.d.h;
        pVar3.f501a = -1L;
        pVar4 = this.d.h;
        pVar4.f502b = b().getTimeInMillis() - ((i5 - 1) * 86400000);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.app.b.w
    public void a(int i, String str, int i2, String str2) {
        p pVar;
        p pVar2;
        if (i > 0) {
            pVar2 = this.d.h;
            pVar2.f502b = b().getTimeInMillis() - (i * 86400000);
        }
        if (i2 > 0) {
            pVar = this.d.h;
            pVar.f501a = b().getTimeInMillis() - (i2 * 86400000);
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
            pVar3 = this.d.h;
            pVar3.f501a = b().getTimeInMillis() - b(split[1]);
            pVar4 = this.d.h;
            pVar4.f502b = b().getTimeInMillis() - b(split[0]);
            return;
        }
        if (str.startsWith(" - ")) {
            pVar2 = this.d.h;
            pVar2.f502b = b().getTimeInMillis() - b(split[0]);
        } else {
            pVar = this.d.h;
            pVar.f501a = b().getTimeInMillis() - b(split[0]);
        }
    }

    long b(String str) {
        Context context;
        Context context2;
        context = this.d.f503a;
        this.k = context.getString(C0000R.string.date_days);
        context2 = this.d.f503a;
        this.l = context2.getString(C0000R.string.date_weeks);
        if (str == null || str.trim().length() < 1) {
            return -1L;
        }
        int indexOf = str.indexOf(this.k);
        if (indexOf > 0) {
            return aw.b(str.substring(0, indexOf));
        }
        int indexOf2 = str.indexOf(this.l);
        if (indexOf2 > 0) {
            return aw.b(str.substring(0, indexOf2));
        }
        return -1L;
    }
}

package com.estrongs.android.pop.app.b;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class s implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ q f506a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(q qVar) {
        this.f506a = qVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String str;
        p pVar;
        p pVar2;
        p pVar3;
        p pVar4;
        Intent e;
        p pVar5;
        p pVar6;
        p pVar7;
        p pVar8;
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        StringBuilder append = sb.append("searchPath").append("=");
        str = this.f506a.c;
        append.append(str);
        sb.toString();
        pVar = this.f506a.g;
        if (pVar.f501a > 0) {
            StringBuilder append2 = sb.append("&&").append("minSize").append("=");
            pVar8 = this.f506a.g;
            append2.append(pVar8.f501a);
        }
        pVar2 = this.f506a.g;
        if (pVar2.f502b > 0) {
            StringBuilder append3 = sb.append("&&").append("maxSize").append("=");
            pVar7 = this.f506a.g;
            append3.append(pVar7.f502b);
        }
        pVar3 = this.f506a.h;
        if (pVar3.f501a > 0) {
            StringBuilder append4 = sb.append("&&").append("minDate").append("=");
            pVar6 = this.f506a.h;
            append4.append(pVar6.f501a);
        }
        pVar4 = this.f506a.h;
        if (pVar4.f502b > 0) {
            StringBuilder append5 = sb.append("&&").append("maxDate").append("=");
            pVar5 = this.f506a.h;
            append5.append(pVar5.f502b);
        }
        sb.append("&&").append("recursion").append("=").append("true");
        bundle.putString("SEARCH_PATTERN", sb.toString());
        Intent intent = new Intent();
        intent.putExtras(bundle);
        intent.putExtras(intent);
        e = this.f506a.e();
        intent.putExtra("SEARCH_TABID", e.getExtras().getInt("SEARCH_TABID"));
        this.f506a.a(intent);
    }
}

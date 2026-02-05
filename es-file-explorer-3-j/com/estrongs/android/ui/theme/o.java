package com.estrongs.android.ui.theme;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.ui.a.ci;
import com.estrongs.android.ui.e.gq;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ThemeActivity f2552a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(ThemeActivity themeActivity) {
        this.f2552a = themeActivity;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        al alVar;
        ci ciVar;
        al alVar2;
        al alVar3;
        al alVar4;
        gq gqVar;
        al alVar5;
        ci ciVar2;
        String str;
        int i = message.what;
        int i2 = message.arg1;
        switch (i) {
            case 1:
                alVar3 = this.f2552a.f2509a;
                List<ai> f = alVar3.f();
                if (f != null) {
                    ai aiVar = f.get(i2);
                    alVar4 = this.f2552a.f2509a;
                    if (alVar4.a(aiVar.f2528b)) {
                        gqVar = this.f2552a.g;
                        gqVar.a(0).setEnabled(i2 != 0);
                        alVar5 = this.f2552a.f2509a;
                        alVar5.b(aiVar.f2528b);
                        ciVar2 = this.f2552a.c;
                        ciVar2.notifyDataSetChanged();
                        str = this.f2552a.f;
                        if (str.equals(aiVar.f2528b)) {
                            this.f2552a.setResult(0);
                            return;
                        } else {
                            this.f2552a.setResult(-1);
                            return;
                        }
                    }
                    return;
                }
                return;
            case 2:
                alVar2 = this.f2552a.f2509a;
                ai aiVar2 = alVar2.f().get(i2);
                if (!aiVar2.b(this.f2552a)) {
                    aiVar2.b(this.f2552a, this);
                    return;
                }
                Intent intent = new Intent(this.f2552a, (Class<?>) ModifyThemeActivity.class);
                intent.putExtra("theme_data_index", i2);
                this.f2552a.startActivityForResult(intent, 268439588);
                return;
            case 12:
                return;
            case 13:
                List<ai> list = (List) message.obj;
                alVar = this.f2552a.f2509a;
                alVar.a(list);
                this.f2552a.f();
                ciVar = this.f2552a.c;
                ciVar.notifyDataSetChanged();
                return;
            default:
                return;
        }
    }
}

package com.estrongs.android.pop.app.compress;

import android.content.Context;
import android.view.View;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class d implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ View f604a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ a f605b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(a aVar, View view) {
        this.f605b = aVar;
        this.f604a = view;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        File file;
        File file2;
        String a2;
        EditText editText;
        File file3;
        EditText editText2;
        Context context;
        String str;
        EditText editText3;
        if (view.getId() == C0000R.id.toPathAssinged) {
            this.f605b.h = null;
            editText3 = this.f605b.e;
            editText3.setVisibility(0);
            this.f605b.g = 3;
        } else if (view.getId() == C0000R.id.toCurrentPath) {
            a aVar = this.f605b;
            file3 = this.f605b.d;
            aVar.h = file3.getAbsoluteFile().getParentFile().getPath();
            editText2 = this.f605b.e;
            editText2.setVisibility(8);
            this.f605b.g = 1;
        } else if (view.getId() == C0000R.id.toArchiveNameAsPath) {
            a aVar2 = this.f605b;
            StringBuilder sb = new StringBuilder();
            file = this.f605b.d;
            StringBuilder append = sb.append(file.getAbsoluteFile().getParentFile().getPath()).append("/");
            a aVar3 = this.f605b;
            file2 = this.f605b.d;
            a2 = aVar3.a(file2.getName());
            aVar2.h = append.append(com.estrongs.fs.c.d.a(a2)).toString();
            editText = this.f605b.e;
            editText.setVisibility(8);
            this.f605b.g = 2;
        }
        if (view.getId() == C0000R.id.btnCharset) {
            context = this.f605b.f574a;
            str = this.f605b.i;
            new com.estrongs.android.util.b(context, str, new e(this)).a();
        }
    }
}

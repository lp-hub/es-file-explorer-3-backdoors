package com.estrongs.android.pop.view;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.widget.EditText;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class bw implements com.estrongs.android.pop.app.b.ag {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ FileExplorerActivity f1360a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bw(FileExplorerActivity fileExplorerActivity) {
        this.f1360a = fileExplorerActivity;
    }

    @Override // com.estrongs.android.pop.app.b.ag
    public void a(Intent intent) {
        EditText editText;
        String str = null;
        Bundle extras = intent != null ? intent.getExtras() : null;
        if (extras == null) {
            return;
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(extras.getString("SEARCH_PATTERN"));
        editText = this.f1360a.aw;
        String obj = editText.getText().toString();
        if (obj != null && obj.trim().length() > 0) {
            stringBuffer.append("&&").append("keyword").append("=").append(Uri.encode(obj));
        }
        try {
            str = this.f1360a.t().ab();
        } catch (Exception e) {
        }
        if (str != null && str.length() > 0) {
            stringBuffer.append("&&").append("category").append("=").append(str);
        }
        this.f1360a.l(stringBuffer.toString());
    }
}

package com.estrongs.android.pop.app.compress;

import android.widget.Button;
import android.widget.EditText;
import com.estrongs.fs.FileSystemException;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ab extends Thread {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ z f577a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ab(z zVar, String str) {
        super(str);
        this.f577a = zVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        String h;
        com.estrongs.io.archive.d dVar;
        com.estrongs.io.archive.d dVar2;
        com.estrongs.io.archive.d dVar3;
        com.estrongs.io.archive.d dVar4;
        com.estrongs.io.archive.d dVar5;
        com.estrongs.io.archive.d dVar6;
        com.estrongs.io.archive.d dVar7;
        EditText editText;
        String str;
        List<String> list;
        com.estrongs.io.a.a.b bVar;
        com.estrongs.io.archive.d dVar8;
        com.estrongs.io.archive.d dVar9;
        com.estrongs.io.archive.d dVar10;
        com.estrongs.io.archive.d dVar11;
        com.estrongs.io.a.a.b bVar2;
        Button button;
        String[] strArr;
        Button button2;
        String[] strArr2;
        Button button3;
        String[] strArr3;
        Button button4;
        String[] strArr4;
        com.estrongs.io.a.a.b bVar3;
        h = this.f577a.h();
        dVar = this.f577a.n;
        dVar.b(h);
        try {
            editText = this.f577a.w;
            String obj = editText.getText().toString();
            HashMap hashMap = new HashMap(2);
            str = this.f577a.j;
            if ("zip".equalsIgnoreCase(str)) {
                button = this.f577a.A;
                CharSequence text = button.getText();
                strArr = this.f577a.B;
                if (text.equals(strArr[0])) {
                    hashMap.put("compress_level", String.valueOf(0));
                }
                button2 = this.f577a.A;
                CharSequence text2 = button2.getText();
                strArr2 = this.f577a.B;
                if (text2.equals(strArr2[1])) {
                    hashMap.put("compress_level", String.valueOf(1));
                }
                button3 = this.f577a.A;
                CharSequence text3 = button3.getText();
                strArr3 = this.f577a.B;
                if (text3.equals(strArr3[2])) {
                    hashMap.put("compress_level", String.valueOf(-1));
                }
                button4 = this.f577a.A;
                CharSequence text4 = button4.getText();
                strArr4 = this.f577a.B;
                if (text4.equals(strArr4[3])) {
                    hashMap.put("compress_level", String.valueOf(9));
                }
                if (obj.length() > 0) {
                    hashMap.put("password", obj);
                    z zVar = this.f577a;
                    bVar3 = this.f577a.v;
                    zVar.f633b = new com.estrongs.io.archive.aeszip.k(h, bVar3, hashMap);
                }
            }
            if (this.f577a.f633b == null) {
                z zVar2 = this.f577a;
                bVar2 = this.f577a.v;
                zVar2.f633b = new com.estrongs.io.archive.i(h, bVar2, hashMap);
            }
            com.estrongs.io.archive.i iVar = this.f577a.f633b;
            list = this.f577a.f;
            iVar.a(list);
            bVar = this.f577a.v;
            if (bVar.b()) {
                dVar10 = this.f577a.n;
                dVar11 = this.f577a.n;
                dVar10.sendMessage(dVar11.obtainMessage(1, 10, 0, null));
            } else {
                dVar8 = this.f577a.n;
                dVar9 = this.f577a.n;
                dVar8.sendMessage(dVar9.obtainMessage(1, 10, 0, h));
                com.estrongs.fs.a.b.a().a(h);
            }
            this.f577a.a();
        } catch (FileSystemException e) {
            dVar6 = this.f577a.n;
            dVar7 = this.f577a.n;
            dVar6.sendMessage(dVar7.obtainMessage(2, e.getMessage()));
            e.printStackTrace();
            this.f577a.a();
        } catch (IOException e2) {
            dVar4 = this.f577a.n;
            dVar5 = this.f577a.n;
            dVar4.sendMessage(dVar5.obtainMessage(2, e2.getMessage()));
            e2.printStackTrace();
            this.f577a.a();
        } catch (NullPointerException e3) {
            dVar2 = this.f577a.n;
            dVar3 = this.f577a.n;
            dVar2.sendMessage(dVar3.obtainMessage(2, e3.getMessage()));
            e3.printStackTrace();
            this.f577a.a();
        }
    }
}

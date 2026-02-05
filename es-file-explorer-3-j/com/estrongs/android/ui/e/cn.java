package com.estrongs.android.ui.e;

import android.content.Intent;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.PopAudioPlayer;
import java.util.List;

/* loaded from: classes.dex */
class cn implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ cm f2042a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cn(cm cmVar) {
        this.f2042a = cmVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i = 0;
        this.f2042a.f2041b.dismiss();
        List<String> a2 = this.f2042a.c.a();
        if (a2 == null || a2.size() <= 0) {
            com.estrongs.android.ui.view.z.a(this.f2042a.f2040a, this.f2042a.f2040a.getText(C0000R.string.no_songs_found), 0).show();
            return;
        }
        Intent intent = new Intent(this.f2042a.f2040a, (Class<?>) PopAudioPlayer.class);
        String[] strArr = new String[a2.size()];
        while (true) {
            int i2 = i;
            if (i2 >= a2.size()) {
                break;
            }
            if (com.estrongs.android.util.ak.ao(a2.get(i2))) {
                strArr[i2] = com.estrongs.android.util.ak.bw(a2.get(i2));
            } else {
                strArr[i2] = a2.get(i2);
            }
            i = i2 + 1;
        }
        intent.putExtra("hasplaylist", true);
        PopAudioPlayer.a(strArr);
        intent.putExtra("isadd", this.f2042a.d);
        if (!this.f2042a.d) {
            this.f2042a.f2040a.startActivity(intent);
        } else if (AudioPlayerService.f339b == null) {
            this.f2042a.f2040a.startActivity(intent);
        } else {
            intent.setClass(this.f2042a.f2040a, AudioPlayerService.class);
            this.f2042a.f2040a.startService(intent);
        }
    }
}

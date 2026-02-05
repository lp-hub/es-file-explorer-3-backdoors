package com.estrongs.android.pop.app;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ESRingtoneChooserActivity extends FileChooserActivity {
    @Override // com.estrongs.android.pop.app.FileChooserActivity
    protected boolean a(com.estrongs.fs.g gVar) {
        int a2 = com.estrongs.android.util.av.a(gVar.getAbsolutePath());
        if ((a2 != 196650 && a2 != 131104) || !com.estrongs.android.util.ak.aZ(gVar.getAbsolutePath())) {
            if (com.estrongs.android.util.av.d(a2)) {
                return true;
            }
            com.estrongs.android.ui.view.z.a(this, C0000R.string.select_wrong_type, 1).show();
            return false;
        }
        if (com.estrongs.android.util.aw.d() && com.estrongs.fs.impl.media.a.d(gVar.getAbsolutePath())) {
            return true;
        }
        com.estrongs.android.ui.view.z.a(this, C0000R.string.select_wrong_type, 1).show();
        return false;
    }
}

package com.estrongs.android.pop.app;

import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class ESWallPaperChooserActivity extends FileChooserActivity {
    @Override // com.estrongs.android.pop.app.FileChooserActivity
    protected boolean a(com.estrongs.fs.g gVar) {
        if (com.estrongs.android.util.av.a(com.estrongs.android.util.av.a(gVar.getAbsolutePath()))) {
            return true;
        }
        com.estrongs.android.ui.view.z.a(this, C0000R.string.select_wrong_type, 1).show();
        return false;
    }
}

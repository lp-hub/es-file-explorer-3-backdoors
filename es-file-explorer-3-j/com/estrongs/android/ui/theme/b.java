package com.estrongs.android.ui.theme;

import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.aq;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ ModifyThemeActivity f2537a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(ModifyThemeActivity modifyThemeActivity) {
        this.f2537a = modifyThemeActivity;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        al alVar;
        int i;
        int i2;
        alVar = this.f2537a.f2507a;
        List<ai> f = alVar.f();
        if (f != null) {
            i = this.f2537a.f2508b;
            ai aiVar = f.get(i);
            String str = aiVar.c;
            i2 = this.f2537a.f2508b;
            if (i2 == 0) {
                str = this.f2537a.getResources().getString(C0000R.string.theme_default);
            }
            new aq(this.f2537a).a(C0000R.string.theme_recover_dialog_title).b(this.f2537a.getString(C0000R.string.theme_recover_dialog_message, new Object[]{str})).b(C0000R.string.confirm_ok, new d(this, aiVar)).c(C0000R.string.confirm_cancel, new c(this)).b();
        }
        return false;
    }
}

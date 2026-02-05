package com.estrongs.android.ui.f;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.PopPreferenceActivity;
import com.estrongs.android.pop.utils.ca;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.a.s;
import com.estrongs.android.ui.e.gq;
import com.estrongs.android.ui.preference.TabletSettingsActivity;
import com.estrongs.android.ui.theme.al;
import com.estrongs.android.ui.view.NaviListView;
import com.estrongs.android.widget.TranslateImageView;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private View f2203a;

    /* renamed from: b, reason: collision with root package name */
    private Context f2204b;
    private al c;
    private TranslateImageView d;
    private s e;
    private gq f;

    public f(Context context, View view, TranslateImageView translateImageView) {
        this.f2203a = view;
        this.f2204b = context;
        this.c = al.a(this.f2204b);
        this.d = translateImageView;
        d();
    }

    public static void a(FileExplorerActivity fileExplorerActivity) {
        fileExplorerActivity.i();
        Intent intent = a((Context) fileExplorerActivity) ? new Intent(fileExplorerActivity, (Class<?>) PopPreferenceActivity.class) : new Intent(fileExplorerActivity, (Class<?>) TabletSettingsActivity.class);
        intent.setFlags(268435456);
        fileExplorerActivity.startActivity(intent);
    }

    private static boolean a(Context context) {
        return Build.VERSION.SDK_INT < 11 || !ca.b(context);
    }

    private void d() {
        if (com.estrongs.android.pop.m.J) {
            TextView textView = (TextView) this.f2203a.findViewById(C0000R.id.title);
            textView.setTextSize(1, 16.0f);
            ((View) textView.getParent()).getLayoutParams().height = com.estrongs.android.ui.d.a.a(this.f2204b, 24.0f);
        }
        NaviListView naviListView = (NaviListView) this.f2203a.findViewById(C0000R.id.listview);
        g gVar = new g(this, naviListView);
        this.e = new s(this.f2204b, gVar);
        naviListView.setAdapter(this.e);
        naviListView.setOnChildClickListener(new k(this, gVar));
        naviListView.setOnItemLongClickListener(new l(this));
        SharedPreferences a2 = this.e.a();
        for (int i = 0; i < this.e.getGroupCount(); i++) {
            if (a2.getBoolean("group" + i, true)) {
                naviListView.expandGroup(i);
            }
        }
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) this.f2204b;
        LinearLayout linearLayout = (LinearLayout) this.f2203a.findViewById(C0000R.id.access_toolbar_container);
        this.f = new m(this, this.f2204b, true);
        this.f.a().setBackgroundResource(C0000R.drawable.window_toolbar_bg);
        com.estrongs.android.view.a.a aVar = new com.estrongs.android.view.a.a(this.c.c(C0000R.drawable.toolbar_exit), this.f2204b.getString(C0000R.string.action_exit));
        aVar.c(this.c.d(C0000R.color.access_toolbar_text));
        aVar.setOnMenuItemClickListener(new n(this, fileExplorerActivity));
        this.f.a(aVar);
        if (com.estrongs.android.pop.m.e) {
            com.estrongs.android.view.a.a aVar2 = new com.estrongs.android.view.a.a(this.c.c(C0000R.drawable.toolbar_recommend), this.f2204b.getString(C0000R.string.fast_access_recommend));
            aVar2.c(this.c.d(C0000R.color.access_toolbar_text));
            aVar2.setOnMenuItemClickListener(new o(this));
            this.f.a(aVar2);
        }
        if (!com.estrongs.android.pop.m.K) {
            com.estrongs.android.view.a.a aVar3 = new com.estrongs.android.view.a.a(this.c.c(C0000R.drawable.toolbar_theme), this.f2204b.getString(C0000R.string.menu_theme));
            aVar3.c(this.c.d(C0000R.color.access_toolbar_text));
            aVar3.setOnMenuItemClickListener(new p(this, fileExplorerActivity));
            this.f.a(aVar3);
        }
        com.estrongs.android.view.a.a aVar4 = new com.estrongs.android.view.a.a(this.c.c(C0000R.drawable.toolbar_setting), this.f2204b.getString(C0000R.string.input_setting));
        aVar4.c(this.c.d(C0000R.color.access_toolbar_text));
        aVar4.setOnMenuItemClickListener(new q(this, fileExplorerActivity));
        this.f.a(aVar4);
        linearLayout.addView(this.f.a(), new LinearLayout.LayoutParams(-1, -1));
    }

    public void a(boolean z) {
    }

    public boolean a() {
        return false;
    }

    public s b() {
        return this.e;
    }

    public void c() {
        this.f.i();
    }
}

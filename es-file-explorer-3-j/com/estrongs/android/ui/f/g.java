package com.estrongs.android.ui.f;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.a.s;
import com.estrongs.android.ui.view.NaviListView;
import com.estrongs.android.util.ak;
import com.estrongs.android.util.ay;
import com.estrongs.android.widget.TranslateImageView;
import com.estrongs.fs.FileSystemException;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends Handler {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ NaviListView f2205a;

    /* renamed from: b, reason: collision with root package name */
    final /* synthetic */ f f2206b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(f fVar, NaviListView naviListView) {
        this.f2206b = fVar;
        this.f2205a = naviListView;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        TranslateImageView translateImageView;
        Context context;
        TranslateImageView translateImageView2;
        TranslateImageView translateImageView3;
        TranslateImageView translateImageView4;
        Context context2;
        String str;
        TranslateImageView translateImageView5;
        TranslateImageView translateImageView6;
        TranslateImageView translateImageView7;
        TranslateImageView translateImageView8;
        TranslateImageView translateImageView9;
        int i = 0;
        super.handleMessage(message);
        int i2 = message.what;
        int i3 = message.arg1;
        int i4 = message.arg2;
        if (i2 == 0) {
            com.estrongs.android.ui.a.a child = ((s) this.f2205a.getExpandableListAdapter()).getChild(i3, i4);
            if (child.d != null) {
                translateImageView7 = this.f2206b.d;
                if (translateImageView7 == null) {
                    child.d.onClick(null);
                    return;
                }
                translateImageView8 = this.f2206b.d;
                translateImageView8.a(new h(this, child));
                translateImageView9 = this.f2206b.d;
                translateImageView9.a(0, 300);
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (message.arg2 == 0) {
                for (int i5 = 0; i5 < this.f2205a.getExpandableListAdapter().getGroupCount(); i5++) {
                    if (this.f2205a.isGroupExpanded(i5) && i5 != i3) {
                        this.f2205a.collapseGroup(i5);
                    }
                }
            }
            this.f2205a.a();
            return;
        }
        if (i2 != 2) {
            if (i2 == 101) {
                com.estrongs.android.ui.a.a child2 = ((s) this.f2205a.getExpandableListAdapter()).getChild(i3, i4);
                translateImageView = this.f2206b.d;
                if (translateImageView == null) {
                    context = this.f2206b.f2204b;
                    ((FileExplorerActivity) context).a(ak.A(child2.b()));
                    return;
                } else {
                    translateImageView2 = this.f2206b.d;
                    translateImageView2.a(new j(this, child2));
                    translateImageView3 = this.f2206b.d;
                    translateImageView3.a(0, 300);
                    return;
                }
            }
            if (i2 == 100) {
                Bundle data = message.getData();
                String string = data.getString("path");
                Boolean valueOf = Boolean.valueOf(data.getBoolean("isdir"));
                ay ayVar = new ay();
                ayVar.f2688a = string;
                ayVar.f2689b = valueOf.booleanValue();
                FileExplorerActivity E = FileExplorerActivity.E();
                if (E == null || E.L()) {
                    return;
                }
                try {
                    if (valueOf.booleanValue()) {
                        E.c(string, true);
                    } else {
                        AppRunner.a(E, string, string);
                    }
                    return;
                } catch (Exception e) {
                    return;
                }
            }
            return;
        }
        com.estrongs.android.ui.a.a child3 = ((s) this.f2205a.getExpandableListAdapter()).getChild(i3, i4);
        translateImageView4 = this.f2206b.d;
        if (translateImageView4 != null) {
            translateImageView5 = this.f2206b.d;
            translateImageView5.a(new i(this, child3));
            translateImageView6 = this.f2206b.d;
            translateImageView6.a(0, 300);
            return;
        }
        context2 = this.f2206b.f2204b;
        FileExplorerActivity fileExplorerActivity = (FileExplorerActivity) context2;
        try {
            if (!ak.aP(child3.b())) {
                if (!com.estrongs.fs.d.a(fileExplorerActivity).b(child3.b())) {
                    fileExplorerActivity.a(C0000R.string.message_invalid_path);
                    return;
                }
                if (com.estrongs.fs.d.a(fileExplorerActivity).h(child3.b()) || ak.K(child3.b()) || ak.L(child3.b()) || ak.M(child3.b()) || ak.O(child3.b())) {
                    fileExplorerActivity.d(child3.b());
                    return;
                } else {
                    fileExplorerActivity.a((String) null, child3.b());
                    return;
                }
            }
            String b2 = child3.b();
            List<com.estrongs.fs.g> a2 = com.estrongs.fs.d.a().a(ak.aQ(b2));
            while (true) {
                int i6 = i;
                if (i6 >= a2.size()) {
                    str = b2;
                    break;
                } else {
                    if (b2.startsWith(ak.C(a2.get(i6).getAbsolutePath()))) {
                        str = ak.b(b2, ak.y(a2.get(i6).getAbsolutePath()));
                        break;
                    }
                    i = i6 + 1;
                }
            }
            if (com.estrongs.fs.d.a(fileExplorerActivity).h(str)) {
                fileExplorerActivity.d(str);
            } else {
                fileExplorerActivity.a((String) null, str);
            }
            if ("bt://".equals(str)) {
                com.estrongs.android.pop.app.b.a.a().c();
            }
        } catch (FileSystemException e2) {
            e2.printStackTrace();
        }
    }
}

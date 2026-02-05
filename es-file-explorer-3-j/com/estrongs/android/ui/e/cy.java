package com.estrongs.android.ui.e;

import android.content.Intent;
import android.view.MenuItem;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.view.CreateOAuthNetDisk;
import java.util.List;

/* loaded from: classes.dex */
class cy implements MenuItem.OnMenuItemClickListener {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ bz f2055a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cy(bz bzVar) {
        this.f2055a = bzVar;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        List l;
        FileExplorerActivity fileExplorerActivity;
        FileExplorerActivity fileExplorerActivity2;
        FileExplorerActivity fileExplorerActivity3;
        FileExplorerActivity fileExplorerActivity4;
        FileExplorerActivity fileExplorerActivity5;
        l = this.f2055a.l();
        com.estrongs.fs.g gVar = (com.estrongs.fs.g) l.get(0);
        String absolutePath = gVar.getAbsolutePath();
        if (com.estrongs.android.util.ak.H(absolutePath) || com.estrongs.android.util.ak.G(absolutePath) || com.estrongs.android.util.ak.p(absolutePath) || com.estrongs.android.util.ak.m(absolutePath)) {
            fileExplorerActivity = this.f2055a.l;
            new com.estrongs.android.ui.b.bz(fileExplorerActivity, absolutePath, gVar.getName(), false).a();
        } else if (com.estrongs.android.util.ak.F(absolutePath)) {
            fileExplorerActivity5 = this.f2055a.l;
            new com.estrongs.android.ui.b.cq(fileExplorerActivity5, absolutePath, gVar.getName()).b();
        } else if (com.estrongs.android.util.ak.an(absolutePath)) {
            String ae = com.estrongs.android.util.ak.ae(absolutePath);
            if (ae.equals("box") || ae.equals("skydrive") || ae.equals("gdrive") || ae.equals("dropbox") || ae.equals("kanbox") || ae.equals("vdisk") || ae.equals("kuaipan")) {
                Intent intent = new Intent(this.f2055a.f1968b, (Class<?>) CreateOAuthNetDisk.class);
                intent.putExtra("nettype", ae);
                intent.putExtra("editServer", true);
                intent.putExtra("originalPath", absolutePath);
                this.f2055a.f1968b.startActivity(intent);
            } else {
                fileExplorerActivity3 = this.f2055a.l;
                com.estrongs.android.ui.a.b bVar = new com.estrongs.android.ui.a.b(fileExplorerActivity3);
                int i = 0;
                while (true) {
                    if (i >= bVar.getCount()) {
                        i = -1;
                        break;
                    }
                    if (ae.equals(bVar.c(i))) {
                        break;
                    }
                    i++;
                }
                if (i == -1) {
                    com.estrongs.android.ui.view.z.a(this.f2055a.f1968b, "Unknown netdisk type", 0).show();
                    fileExplorerActivity4 = this.f2055a.l;
                    fileExplorerActivity4.l();
                    return true;
                }
                com.estrongs.android.ui.b.cf a2 = new com.estrongs.android.ui.b.cf(this.f2055a.f1968b).a(bVar.b(i), bVar.a(i), ae);
                a2.b(this.f2055a.f1968b.getResources().getString(C0000R.string.edit_net_disk_title));
                String aa = com.estrongs.android.util.ak.aa(absolutePath);
                if (ae.equals("vdisk")) {
                    if (aa.startsWith("s_")) {
                        aa = aa.substring(2);
                    } else if (aa.startsWith("l_")) {
                        aa = aa.substring(2);
                    }
                }
                a2.a(aa, com.estrongs.android.pop.q.a(this.f2055a.f1968b).c(absolutePath));
                a2.a(absolutePath);
                a2.a();
            }
        }
        fileExplorerActivity2 = this.f2055a.l;
        fileExplorerActivity2.l();
        return true;
    }
}

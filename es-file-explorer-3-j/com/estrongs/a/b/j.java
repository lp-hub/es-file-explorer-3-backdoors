package com.estrongs.a.b;

import android.app.Activity;
import android.content.DialogInterface;
import android.os.StatFs;
import com.dropbox.client2.exception.DropboxServerException;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.ui.b.ev;
import com.estrongs.fs.b.ah;
import com.estrongs.fs.b.as;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j extends com.estrongs.android.widget.g implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {
    as h;
    boolean i;
    final /* synthetic */ d j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(d dVar, Activity activity, String str, com.estrongs.fs.h hVar, as asVar) {
        super(activity, str, hVar);
        this.j = dVar;
        this.i = false;
        this.h = asVar;
        a(7);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006d  */
    @Override // android.content.DialogInterface.OnClickListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onClick(DialogInterface dialogInterface, int i) {
        long j;
        long j2;
        long j3;
        String str;
        String str2;
        Activity activity;
        Activity activity2;
        String str3;
        this.j.k = c();
        try {
            str3 = this.j.k;
            StatFs statFs = new StatFs(str3);
            j = statFs.getBlockSize();
            try {
                j2 = statFs.getAvailableBlocks();
                j3 = j;
            } catch (Exception e) {
                j2 = 0;
                j3 = j;
                if (this.h.e <= j2 * j3) {
                }
            }
        } catch (Exception e2) {
            j = 0;
        }
        if (this.h.e <= j2 * j3) {
            if (ESActivity.x() != null) {
                activity = this.j.h;
                ev evVar = new ev(ESActivity.x(), this.h.e, j2 * j3, "Error!", activity.getString(C0000R.string.no_enough_space));
                activity2 = this.j.h;
                evVar.setSingleButton(activity2.getString(C0000R.string.confirm_ok), null);
                evVar.show();
            }
            i();
            return;
        }
        str = this.j.k;
        if (!str.endsWith("/")) {
            as asVar = this.h;
            StringBuilder sb = new StringBuilder();
            str2 = this.j.k;
            asVar.i = sb.append(str2).append("/").toString();
        }
        if (ESActivity.x() != null) {
            ah.a(ESActivity.x(), this.h, true);
            this.i = true;
        }
        i();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        try {
            if (this.i) {
                this.j.a(this.h.j.getOutputStream(), 200, "OK");
            } else {
                this.j.a(this.h.j.getOutputStream(), DropboxServerException._404_NOT_FOUND, "Not found");
                try {
                    this.h.j.close();
                } catch (Exception e) {
                }
            }
        } catch (Exception e2) {
            try {
                this.h.j.close();
            } catch (Exception e3) {
            }
        }
        super.i();
    }
}

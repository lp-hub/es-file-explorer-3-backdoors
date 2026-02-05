package com.estrongs.a.b;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.dropbox.client2.exception.DropboxServerException;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.av;
import com.estrongs.fs.b.as;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class i extends ag implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    as f207a;

    /* renamed from: b, reason: collision with root package name */
    boolean f208b;
    ImageView c;
    CheckBox d;
    TextView e;
    TextView f;
    TextView g;
    final /* synthetic */ d h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(d dVar, Context context, as asVar) {
        super(context);
        Activity activity;
        this.h = dVar;
        this.f208b = false;
        this.f207a = asVar;
        activity = dVar.h;
        View inflate = com.estrongs.android.pop.esclasses.e.a(activity).inflate(C0000R.layout.dialog_accetp_file_confirm, (ViewGroup) null);
        setContentView(inflate);
        this.e = (TextView) inflate.findViewById(C0000R.id.message);
        this.f = (TextView) inflate.findViewById(C0000R.id.name);
        this.g = (TextView) inflate.findViewById(C0000R.id.size);
        this.c = (ImageView) inflate.findViewById(C0000R.id.icon);
        this.d = (CheckBox) inflate.findViewById(C0000R.id.open_mode);
        this.e.setText(this.f207a.f);
        if (this.f207a.c > 1) {
            this.f.setText(this.f207a.h + "...");
        } else {
            this.f.setText(this.f207a.h);
        }
        this.g.setText(com.estrongs.fs.c.d.c(this.f207a.e));
        if (this.f207a.l != null) {
            int[] iArr = new int[this.f207a.m * this.f207a.n];
            for (int i = 0; i < iArr.length; i++) {
                iArr[i] = (this.f207a.l[i * 4] << 24) | (this.f207a.l[(i * 4) + 1] << 16) | (this.f207a.l[(i * 4) + 2] << 8) | this.f207a.l[(i * 4) + 3];
            }
            this.c.setImageBitmap(Bitmap.createBitmap(iArr, this.f207a.m, this.f207a.n, Bitmap.Config.ARGB_8888));
        } else if (this.f207a.f2985b == 2) {
            this.c.setImageResource(C0000R.drawable.format_folder);
        } else if (this.f207a.f2985b == 3) {
            this.c.setImageResource(C0000R.drawable.multi_files);
        } else {
            this.c.setImageDrawable(com.estrongs.android.d.d.a(String.valueOf(av.a(this.f207a.h))));
        }
        this.d.setVisibility(8);
    }

    @Override // com.estrongs.android.ui.b.ag, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        try {
            if (!this.f208b) {
                this.h.a(this.f207a.j.getOutputStream(), DropboxServerException._404_NOT_FOUND, "Not found");
                try {
                    this.f207a.j.close();
                } catch (Exception e) {
                }
            }
        } catch (Exception e2) {
            try {
                this.f207a.j.close();
            } catch (Exception e3) {
            }
        }
        super.dismiss();
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        Activity activity;
        Activity activity2;
        boolean z = false;
        if (i == -1) {
            if (this.f207a.f2984a != null) {
                if (av.e(this.f207a.h) || av.f(this.f207a.h)) {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.addFlags(67108864);
                    intent.putExtra("oneshot", true);
                    intent.putExtra("configchange", false);
                    intent.setDataAndType(Uri.parse(this.f207a.f2984a), av.f(av.a(this.f207a.h)));
                    try {
                        activity2 = this.h.h;
                        AppRunner.a(activity2, intent, this.f207a.f2984a);
                    } catch (ActivityNotFoundException e) {
                        e.printStackTrace();
                    }
                }
                this.f208b = true;
                try {
                    this.h.a(this.f207a.j.getOutputStream(), 200, "OK");
                    try {
                        this.f207a.j.close();
                    } catch (Exception e2) {
                    }
                } catch (Exception e3) {
                }
            } else {
                as asVar = this.f207a;
                if (this.d.isShown() && this.d.isChecked()) {
                    z = true;
                }
                asVar.k = z;
                if (ESActivity.x() != null) {
                    d dVar = this.h;
                    Activity x = ESActivity.x();
                    activity = this.h.h;
                    dVar.a(x, C0000R.drawable.menu_operating, activity.getString(C0000R.string.action_copy_to), this.f207a);
                    this.f208b = true;
                }
            }
        }
        dialogInterface.dismiss();
    }
}

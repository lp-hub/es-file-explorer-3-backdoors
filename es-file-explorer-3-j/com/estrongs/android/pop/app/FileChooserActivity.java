package com.estrongs.android.pop.app;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.app.imageviewer.CropImage;
import com.estrongs.android.pop.esclasses.ESActivity;
import java.io.File;

/* loaded from: classes.dex */
public class FileChooserActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    com.estrongs.android.widget.g f345a;
    private boolean c = false;
    private boolean d = false;

    /* renamed from: b, reason: collision with root package name */
    public boolean f346b = false;
    private com.estrongs.android.view.bt e = new aw(this);

    /* JADX INFO: Access modifiers changed from: private */
    public Uri a(String str) {
        return FileContentProvider.a(str);
    }

    private void a(Intent intent, String str) {
        boolean z = true;
        int intExtra = getIntent().getIntExtra("android.intent.extra.ringtone.TYPE", 0);
        Uri a2 = a(str);
        int a3 = com.estrongs.android.util.av.a(str);
        boolean z2 = com.estrongs.android.util.av.e(str) && 131110 != a3;
        if (z2) {
            z = z2;
        } else if (a3 != 196650) {
            z = false;
        }
        Uri a4 = z ? com.estrongs.android.util.ah.a(getContentResolver(), str, intExtra) : a2;
        intent.putExtra("android.intent.extra.ringtone.TYPE", intExtra);
        intent.putExtra("android.intent.extra.ringtone.PICKED_URI", a4);
        intent.setData(a4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(com.estrongs.fs.g gVar) {
        if (this.d) {
            setResult(-1, com.estrongs.android.util.at.b(this, gVar));
            finish();
            return;
        }
        String absolutePath = gVar.getAbsolutePath();
        com.estrongs.android.pop.q.a(this).z(com.estrongs.android.util.ak.aY(absolutePath));
        if (a(gVar)) {
            Intent intent = new Intent();
            if (com.estrongs.android.util.ak.aP(absolutePath)) {
                com.estrongs.android.a.t.a(this, getString(C0000R.string.progress_loading), getString(C0000R.string.please_wait_message) + "\n" + getString(C0000R.string.wait_open_remotely));
                new Thread(new al(this, absolutePath, gVar, intent)).start();
                return;
            }
            Uri fromFile = com.estrongs.android.util.ak.aO(absolutePath) ? Uri.fromFile(new File(absolutePath)) : Uri.parse(absolutePath);
            if ("android.intent.action.RINGTONE_PICKER".equals(getIntent().getAction())) {
                a(intent, absolutePath);
                setResult(-1, intent);
                finish();
                return;
            }
            if (!com.estrongs.android.util.av.b(absolutePath)) {
                if (!com.estrongs.android.util.av.e(absolutePath) && !com.estrongs.android.util.av.f(absolutePath)) {
                    new com.estrongs.android.ui.b.aq(this).a(C0000R.string.pick_and_return_file_title).a(C0000R.array.pick_and_return_file_entries, -1, new ao(this, intent, absolutePath, fromFile)).a(C0000R.string.confirm_cancel, (DialogInterface.OnClickListener) null).a().show();
                    return;
                }
                intent.setData(a(absolutePath));
                setResult(-1, intent);
                finish();
                return;
            }
            if (this.c) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("setWallpaper", true);
                Intent intent2 = new Intent();
                intent2.setData(fromFile);
                intent2.setClass(this, CropImage.class);
                intent2.putExtras(bundle);
                startActivityForResult(intent2, 268439577);
                return;
            }
            Bundle extras = getIntent().getExtras();
            String string = extras != null ? extras.getString("crop") : null;
            if (string != null) {
                Bundle bundle2 = new Bundle();
                if (string.equals("circle")) {
                    bundle2.putString("circleCrop", "true");
                }
                Intent intent3 = new Intent();
                intent3.setData(fromFile);
                intent3.setClass(this, CropImage.class);
                intent3.putExtras(bundle2);
                intent3.putExtras(extras);
                startActivityForResult(intent3, 268439577);
                return;
            }
            if (extras == null || !extras.getBoolean("return-data")) {
                Uri b2 = com.estrongs.android.util.j.a().b(getContentResolver(), absolutePath);
                if (b2 != null) {
                    intent.setData(b2);
                } else {
                    intent.setData(Uri.fromFile(new File(absolutePath)));
                }
            } else {
                intent.putExtra("data", com.estrongs.android.d.f.a(this).a(getIntent().getIntExtra("outputX", 64), absolutePath, null));
            }
            setResult(-1, intent);
            finish();
        }
    }

    private boolean b() {
        String action = getIntent().getAction();
        return "com.estrongs.action.PICK_FILE".equalsIgnoreCase(action) || "android.intent.action.PICK".equalsIgnoreCase(action) || "android.intent.action.GET_CONTENT".equalsIgnoreCase(action) || "android.intent.action.RINGTONE_PICKER".equalsIgnoreCase(action);
    }

    public void a(int i) {
        com.estrongs.android.ui.view.z.a(this, getText(i), 0).show();
    }

    public boolean a() {
        return this.f346b;
    }

    protected boolean a(com.estrongs.fs.g gVar) {
        return true;
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f345a != null && this.f345a.j().isShowing()) {
            this.f345a.i();
        }
        super.finish();
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 268439577 && i2 == -1) {
            setResult(i2, intent);
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        String type = getIntent().getType();
        if (!com.estrongs.android.util.aw.a((CharSequence) type) && type.startsWith("vnd.android.cursor.item")) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.operation_not_supported_message, 0).show();
            finish();
            return;
        }
        boolean p = com.estrongs.android.pop.q.a(this).p();
        String dataString = getIntent().getDataString();
        if (com.estrongs.android.util.aw.a((CharSequence) dataString) || !com.estrongs.android.util.ak.aO(dataString)) {
            dataString = com.estrongs.android.pop.q.a(this).av();
            if (dataString == null || dataString.length() == 0) {
                dataString = com.estrongs.android.pop.b.b();
            }
        } else if (dataString.toLowerCase().startsWith("file:///")) {
            dataString = dataString.substring(7);
        }
        this.c = "android.intent.action.SET_WALLPAPER".equals(getIntent().getAction());
        this.d = "android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction());
        if (b() || this.c || this.d) {
            if (!com.estrongs.android.d.d.b("65536")) {
                com.estrongs.android.d.d.a(new com.estrongs.android.d.c(this));
            }
            ak akVar = new ak(this, p);
            boolean z = this instanceof ESRingtoneChooserActivity;
            if (com.estrongs.android.pop.m.N) {
                z = true;
            }
            this.f345a = new com.estrongs.android.widget.g(this, dataString, akVar, false, z);
            this.f345a.a(this.e);
            if (this.d) {
                this.f345a.c(getString(C0000R.string.confirm_cancel), null);
                String stringExtra = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
                if (stringExtra == null) {
                    stringExtra = getString(C0000R.string.action_select);
                }
                this.f345a.b(stringExtra, new ap(this));
            } else {
                this.f345a.a(getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
            }
        } else {
            this.f345a = new com.estrongs.android.widget.g(this, dataString, new aq(this, p), true, true);
            String stringExtra2 = getIntent().getStringExtra("com.estrongs.intent.extra.BUTTON_TITLE");
            if (stringExtra2 == null || stringExtra2.isEmpty()) {
                stringExtra2 = getString(C0000R.string.action_select);
            }
            this.f345a.b(stringExtra2, new ar(this));
            this.f345a.c(getString(C0000R.string.confirm_cancel), null);
        }
        String stringExtra3 = getIntent().getStringExtra("com.estrongs.intent.extra.TITLE");
        if (stringExtra3 == null) {
            stringExtra3 = getString(C0000R.string.view_label_assigned_path);
        }
        this.f345a.a((CharSequence) stringExtra3);
        this.f345a.a(new as(this));
        this.f346b = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f345a.j().isShowing()) {
            this.f345a.a();
        } else {
            this.f345a.h();
        }
        if (this.f346b || !com.estrongs.android.pop.q.a(this).L()) {
            return;
        }
        com.estrongs.android.ui.b.aq c = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.lbl_input_password).b(C0000R.string.confirm_ok, new au(this)).c(C0000R.string.confirm_cancel, new at(this));
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.net_pincode, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.pincode_new_passwd_txt)).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_old_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_confirm_passwd_row).setVisibility(8);
        inflate.findViewById(C0000R.id.pincode_username_row).setVisibility(8);
        c.a(inflate);
        com.estrongs.android.ui.b.ag a2 = c.a();
        a2.setOnDismissListener(new av(this));
        a2.getWindow().setSoftInputMode(5);
        a2.setCanceledOnTouchOutside(false);
        try {
            a2.show();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

package com.estrongs.android.pop.app;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class ESFileSharingActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private boolean f342a = true;

    private void a() {
        Intent intent = getIntent();
        intent.setClass(this, LocalFileSharingActivity.class);
        startActivity(intent);
        finish();
    }

    public void a(Activity activity, String str) {
        if (!com.estrongs.android.ui.pcs.aw.a().c()) {
            com.estrongs.android.pop.utils.aj.a(activity, new ad(this, activity, str));
        } else {
            com.estrongs.android.pop.utils.aj.a(activity, str, new ac(this));
            this.f342a = false;
        }
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        com.estrongs.android.ui.pcs.d k = com.estrongs.android.ui.pcs.aw.a().k();
        if (k != null) {
            k.a(i, intent, i2);
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        try {
            if (!com.estrongs.android.pop.utils.bs.a()) {
                a();
                finish();
                return;
            }
            if (getIntent().getAction().equals("android.intent.action.SEND_MULTIPLE")) {
                com.estrongs.android.pop.utils.a.a((Context) this, (CharSequence) getString(C0000R.string.pcs_share_multiple_refused));
                finish();
                return;
            }
            if (getIntent().getAction().equals("android.intent.action.SEND")) {
                Uri uri = (Uri) getIntent().getParcelableExtra("android.intent.extra.STREAM");
                if (uri == null) {
                    finish();
                    return;
                }
                String path = uri.getPath();
                if (uri.getScheme().startsWith("content")) {
                    String host = uri.getHost();
                    if (!host.equals("media") && !"com.estrongs.files".equals(host)) {
                        com.estrongs.android.ui.view.z.a(this, C0000R.string.operation_not_supported_message, 1).show();
                        finish();
                        return;
                    }
                    Cursor query = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                    if (query == null || query.getCount() <= 0) {
                        if (query != null) {
                            query.close();
                        }
                        finish();
                        return;
                    } else {
                        query.moveToNext();
                        path = query.getString(query.getColumnIndexOrThrow("_data"));
                        query.close();
                    }
                }
                a(this, path);
            }
            setTheme(R.style.Theme.Translucent);
        } catch (Exception e) {
            finish();
        }
    }
}

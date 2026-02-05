package com.estrongs.android.pop.app.compress;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.av;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.text.MessageFormat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class CompressionActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private Map<String, File> f573a = new HashMap(10);

    /* JADX WARN: Removed duplicated region for block: B:25:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String a(Uri uri) {
        Cursor cursor;
        String str;
        try {
            cursor = getContentResolver().query(uri, null, null, null, null);
            try {
                try {
                    cursor.getColumnNames();
                    int columnIndexOrThrow = cursor.getColumnIndexOrThrow("_display_name");
                    if (columnIndexOrThrow >= 0) {
                        cursor.moveToFirst();
                        str = cursor.getString(columnIndexOrThrow);
                    } else {
                        str = null;
                    }
                    if (cursor == null) {
                        return str;
                    }
                    cursor.close();
                    return str;
                } catch (Exception e) {
                    e = e;
                    e.printStackTrace();
                    if (cursor == null) {
                        return null;
                    }
                    cursor.close();
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursor = null;
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
            if (cursor != null) {
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra("archive_file_name");
        if (stringExtra == null) {
            Uri data = getIntent().getData();
            if (data == null) {
                com.estrongs.android.ui.view.z.a(this, C0000R.string.msg_donnt_get_filename, 0).show();
                finish();
                return;
            }
            stringExtra = Uri.decode(data.toString());
            if (stringExtra.startsWith("content://")) {
                try {
                    File file = this.f573a.get(data.toString());
                    if (file == null) {
                        String a2 = "application/x-gzip".equalsIgnoreCase(getIntent().getType()) ? a(data) : null;
                        if (a2 == null) {
                            a2 = com.estrongs.fs.c.d.a() + av.M(getIntent().getType());
                        }
                        InputStream openInputStream = getContentResolver().openInputStream(data);
                        file = com.estrongs.fs.c.d.h("tmp/" + a2);
                        com.estrongs.fs.c.d.a(openInputStream, file);
                        this.f573a.put(data.toString(), file);
                    }
                    stringExtra = file.getAbsolutePath();
                } catch (IOException e) {
                    e.printStackTrace();
                    com.estrongs.android.ui.view.z.a(this, C0000R.string.msg_file_should_be_in_sdcard, 0).show();
                    finish();
                    return;
                }
            }
        }
        if (!av.I(stringExtra)) {
            com.estrongs.android.ui.view.z.a(this, MessageFormat.format(getResources().getString(C0000R.string.msg_file_not_supported), com.estrongs.android.util.ak.d(stringExtra)), 0).show();
            try {
                Thread.sleep(1000L);
            } catch (InterruptedException e2) {
                e2.printStackTrace();
            }
            finish();
            return;
        }
        Intent intent = new Intent(this, (Class<?>) FileExplorerActivity.class);
        intent.addFlags(603979776);
        intent.putExtra("archive_file_name", stringExtra);
        try {
            startActivity(intent);
        } catch (ActivityNotFoundException e3) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.start_acitivity_error, 0).show();
        }
        finish();
    }
}

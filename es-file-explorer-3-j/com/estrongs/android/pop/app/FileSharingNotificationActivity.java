package com.estrongs.android.pop.app;

import android.app.NotificationManager;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class FileSharingNotificationActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.ui.theme.al f347a;

    /* renamed from: b, reason: collision with root package name */
    private NotificationManager f348b;

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(C0000R.drawable.blank);
        this.f348b = (NotificationManager) getSystemService("notification");
        this.f347a = com.estrongs.android.ui.theme.al.a(this);
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.file_sharing_notification, (ViewGroup) null);
        TextView textView = (TextView) inflate.findViewById(C0000R.id.file_name);
        Bundle extras = getIntent().getExtras();
        if (extras != null && extras.getString("file_name") != null) {
            textView.setText(extras.getString("file_name"));
        }
        inflate.setBackgroundDrawable(this.f347a.a(C0000R.drawable.popupbox_bg));
        setContentView(inflate);
        ((Button) findViewById(C0000R.id.filename_ok)).setOnClickListener(new ax(this));
        ((Button) findViewById(C0000R.id.filename_cancel)).setOnClickListener(new ay(this));
    }
}

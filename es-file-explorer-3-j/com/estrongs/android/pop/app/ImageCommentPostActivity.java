package com.estrongs.android.pop.app;

import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.widget.EditText;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
public class ImageCommentPostActivity extends ESActivity {

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.android.util.n f357a;

    /* renamed from: b, reason: collision with root package name */
    private EditText f358b = null;
    private String c = null;
    private boolean d = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        findViewById(C0000R.id.post_progress).setVisibility(0);
        findViewById(C0000R.id.editor_panel).setVisibility(8);
        this.f357a = new cf(this, "Comment Poster", str);
        this.f357a.start();
    }

    @Override // android.app.Activity
    public void finish() {
        if (this.f357a != null) {
            this.f357a.a();
        }
        super.finish();
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(C0000R.layout.pic_comment_post);
        this.c = getIntent().getStringExtra("pic_path");
        this.d = getIntent().getBooleanExtra("from_detial_page", this.d);
        this.f358b = (EditText) findViewById(C0000R.id.message);
        com.estrongs.android.ui.theme.al a2 = com.estrongs.android.ui.theme.al.a(this);
        findViewById(C0000R.id.title_bar).setBackgroundDrawable(a2.a(C0000R.drawable.toolbar_bg));
        Drawable b2 = a2.b(C0000R.drawable.main_bg_01);
        findViewById(C0000R.id.editor_panel).setBackgroundDrawable(b2);
        findViewById(C0000R.id.post_progress).setBackgroundDrawable(b2);
        findViewById(C0000R.id.post).setOnClickListener(new cc(this));
        findViewById(C0000R.id.cancel).setOnClickListener(new cd(this));
        findViewById(C0000R.id.btn_return).setOnClickListener(new ce(this));
    }
}

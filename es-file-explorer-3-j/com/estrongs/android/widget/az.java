package com.estrongs.android.widget;

import android.content.Context;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import java.text.NumberFormat;

/* loaded from: classes.dex */
public class az extends com.estrongs.android.ui.b.ag {

    /* renamed from: a, reason: collision with root package name */
    bc f2901a;

    /* renamed from: b, reason: collision with root package name */
    protected ProgressBar f2902b;
    protected TextView c;
    protected TextView d;
    protected TextView e;
    protected NumberFormat f;
    protected TextView g;
    protected long h;
    protected long i;
    protected CharSequence j;
    private int k;
    private long l;
    private Handler m;
    private bd n;

    public az(Context context) {
        super(context);
        this.k = 0;
        this.f = NumberFormat.getPercentInstance();
        this.l = 0L;
        this.n = new be();
        View inflate = com.estrongs.android.pop.esclasses.e.a(getContext()).inflate(C0000R.layout.simple_progress_dialog, (ViewGroup) null);
        setContentView(inflate);
        this.f2902b = (ProgressBar) inflate.findViewById(C0000R.id.progress);
        this.c = (TextView) inflate.findViewById(C0000R.id.message);
        this.e = (TextView) inflate.findViewById(C0000R.id.precent);
        this.d = (TextView) inflate.findViewById(C0000R.id.nums_completed);
        this.g = (TextView) inflate.findViewById(C0000R.id.total_nums);
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        windowManager.getDefaultDisplay().getMetrics(new DisplayMetrics());
        this.c.setWidth((int) (r1.widthPixels * 0.9d));
        this.c.setText(context.getText(C0000R.string.msg_counting_file_size));
        this.m = new ba(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long a(az azVar) {
        long j = azVar.l;
        azVar.l = j - 1;
        return j;
    }

    public void a() {
        this.j = "";
        this.i = 0L;
        this.h = 0L;
        this.c.setText(this.j);
        this.n.a(this.f2902b, this.g, this.h);
        this.n.b(this.f2902b, this.d, this.i);
        this.e.setText(this.f.format(this.i / this.h));
    }

    public void a(int i) {
        this.k = i;
    }

    public void a(long j) {
        this.h = j;
        this.l++;
        this.m.sendEmptyMessage(3);
    }

    public void a(bc bcVar) {
        this.f2901a = bcVar;
    }

    public void a(bd bdVar) {
        this.n = bdVar;
    }

    public void b(long j) {
        if (this.l > 100) {
            return;
        }
        this.i = j;
        this.l++;
        this.m.sendEmptyMessage(2);
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        if (this.f2901a != null) {
            this.f2901a.a();
        }
        super.onBackPressed();
    }

    @Override // com.estrongs.android.ui.b.ag
    public void setMessage(CharSequence charSequence) {
        if (this.l > 100) {
            return;
        }
        this.j = charSequence;
        this.l++;
        this.m.sendEmptyMessage(1);
    }
}

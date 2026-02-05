package com.estrongs.android.ui.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.widget.ProgressTextView;

/* loaded from: classes.dex */
public class ci extends BaseAdapter {

    /* renamed from: a, reason: collision with root package name */
    private Context f1557a;

    /* renamed from: b, reason: collision with root package name */
    private com.estrongs.android.ui.theme.al f1558b;
    private Handler c;
    private int d = 0;
    private boolean e = true;

    public ci(Context context, Handler handler) {
        this.f1557a = context;
        this.c = handler;
        this.f1558b = com.estrongs.android.ui.theme.al.a(this.f1557a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, int i2) {
        Message message = new Message();
        message.what = i;
        message.arg1 = i2;
        if (this.c != null) {
            this.c.sendMessage(message);
        }
    }

    public int a() {
        return this.d;
    }

    public void a(int i) {
        this.d = i;
        a(1, i);
    }

    public void a(String str) {
        int i = 0;
        while (true) {
            if (i >= getCount()) {
                i = -1;
                break;
            }
            com.estrongs.android.ui.theme.ai item = getItem(i);
            if (item != null && item.f2528b.equals(str)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            a(i);
        }
    }

    public Drawable b(int i) {
        int i2 = (this.e ? -1 : 0) + i;
        if (i2 >= 0 && i2 % 2 != 0) {
            return this.f1558b.a(C0000R.drawable.theme_content_bg01);
        }
        return this.f1558b.a(C0000R.drawable.theme_content_bg02);
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public com.estrongs.android.ui.theme.ai getItem(int i) {
        try {
            if (this.f1558b.f() != null) {
                return this.f1558b.f().get(i);
            }
            return null;
        } catch (Exception e) {
            return null;
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.f1558b.f() != null) {
            return this.f1558b.f().size();
        }
        return 0;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        co coVar;
        boolean z;
        if (view == null) {
            view = com.estrongs.android.pop.esclasses.e.a(this.f1557a).inflate(C0000R.layout.theme_list_item, (ViewGroup) null);
            co coVar2 = new co(this);
            coVar2.f1567a = (LinearLayout) view.findViewById(C0000R.id.theme_item_content_layout);
            coVar2.f1568b = (LinearLayout) view.findViewById(C0000R.id.theme_item_custom_layout);
            coVar2.d = (ImageView) view.findViewById(C0000R.id.theme_item_download_image);
            coVar2.c = (ImageView) view.findViewById(C0000R.id.theme_item_image);
            coVar2.e = (RadioButton) view.findViewById(C0000R.id.theme_item_radio_button);
            coVar2.f = (ProgressTextView) view.findViewById(C0000R.id.theme_item_label);
            coVar2.f.a(false);
            view.setTag(coVar2);
            coVar = coVar2;
        } else {
            coVar = (co) view.getTag();
        }
        com.estrongs.android.ui.theme.ai item = getItem(i);
        if (item == null) {
            return null;
        }
        boolean b2 = item.b(this.f1557a);
        if (i == 0 || !b2) {
            z = true;
        } else {
            try {
                z = this.f1557a.getPackageManager().getPackageInfo(item.f2528b, 1).versionCode >= 7;
            } catch (PackageManager.NameNotFoundException e) {
                z = true;
            }
        }
        if (b2 && !z) {
            item.c();
        }
        view.setBackgroundDrawable(b(i));
        if (b2 && z) {
            coVar.f1567a.setClickable(true);
            coVar.f1567a.setOnClickListener(new cj(this, item, i));
            coVar.d.setVisibility(8);
            coVar.e.setVisibility(0);
            coVar.e.setChecked(this.d == i);
            coVar.f1568b.setOnClickListener(new ck(this, i));
        } else {
            coVar.d.setVisibility(0);
            if (b2) {
                coVar.f1567a.setOnClickListener(new cl(this));
                coVar.d.setImageResource(C0000R.drawable.toolbar_update);
            } else {
                coVar.f1567a.setOnClickListener(new cm(this));
                coVar.d.setImageResource(C0000R.drawable.toolbar_download);
            }
            coVar.e.setVisibility(8);
            coVar.f1568b.setOnClickListener(new cn(this, item));
        }
        if (i <= 0) {
            coVar.c.setImageResource(C0000R.drawable.theme_test_01);
        } else {
            Drawable a2 = item.a(this.f1557a, this.c);
            if (a2 != null) {
                coVar.c.setImageDrawable(a2);
            } else {
                coVar.c.setImageResource(C0000R.drawable.theme_test_01);
            }
        }
        coVar.f.setText(item.c);
        coVar.f.a(item.b());
        item.a(coVar.f);
        return view;
    }
}

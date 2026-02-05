package com.estrongs.android.ui.b;

import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;

/* loaded from: classes.dex */
class e extends com.estrongs.android.view.cq {

    /* renamed from: a, reason: collision with root package name */
    final /* synthetic */ a f1767a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(a aVar, ESActivity eSActivity) {
        super(eSActivity);
        this.f1767a = aVar;
        ImageView imageView = (ImageView) l(C0000R.id.property_type_icon);
        TextView textView = (TextView) l(C0000R.id.property_file_name);
        TextView textView2 = (TextView) l(C0000R.id.property_version_text);
        TextView textView3 = (TextView) l(C0000R.id.property_size_text);
        if (aVar.f1612a.e()) {
            l(C0000R.id.change).setVisibility(0);
            ((TextView) l(C0000R.id.change_log)).setText(this.ad.getString(C0000R.string.recommend_button_upgrade) + ":");
            ((TextView) l(C0000R.id.change_log_time)).setText(com.estrongs.android.pop.q.a(eSActivity).H().format(Long.valueOf(aVar.f1612a.lastModified())));
            TextView textView4 = (TextView) l(C0000R.id.change_log_text);
            String f = aVar.f1612a.f().f();
            if (f != null && !"".equals(f) && !"NULL".equals(f)) {
                textView4.setVisibility(0);
                textView4.setText(f.replaceAll("<br>", "\n"));
            }
        }
        imageView.setImageDrawable(com.estrongs.android.d.d.e(aVar.f1612a));
        textView.setText(aVar.f1612a.getName());
        textView2.setText(aVar.f1612a.b());
        textView3.setText(com.estrongs.fs.c.d.c(aVar.f1612a.length()));
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.app_detail;
    }
}

package com.estrongs.android.ui.c;

import android.text.Html;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.ui.b.ag;
import com.estrongs.android.util.ak;
import com.estrongs.android.view.cq;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

/* loaded from: classes.dex */
class q extends cq {

    /* renamed from: a, reason: collision with root package name */
    public ag f1913a;

    /* renamed from: b, reason: collision with root package name */
    protected com.estrongs.fs.g f1914b;
    String c;
    String d;
    private String e;

    public q(ESActivity eSActivity, com.estrongs.fs.g gVar) {
        super(eSActivity);
        this.e = null;
        this.f1914b = null;
        this.c = "";
        this.d = "";
        this.f1914b = gVar;
        this.c = n(C0000R.string.category_files).toString();
        this.d = n(C0000R.string.category_folders).toString();
        Object extra = gVar.getExtra("task");
        if (extra == null || !(extra instanceof com.estrongs.a.a)) {
            return;
        }
        JSONObject summary = ((com.estrongs.a.a) extra).summary();
        a(C0000R.id.property_type_text, this.c);
        ((ImageView) l(C0000R.id.property_type_icon)).setImageDrawable(com.estrongs.android.d.d.a(String.valueOf(TypeUtils.getFileType(summary.optString("title")))));
        String aY = ak.aY(summary.optString("target"));
        a(C0000R.id.property_file_name, summary.optString("title"));
        a(C0000R.id.property_location_text, aY);
        long optLong = summary.optLong("size");
        a(C0000R.id.property_size, com.estrongs.fs.c.d.c(optLong) + " (" + com.estrongs.fs.c.d.d(optLong) + " " + n(C0000R.string.property_bytes) + ")");
        DateFormat I = com.estrongs.android.pop.q.a(this.ad).I();
        SimpleDateFormat simpleDateFormat = FileExplorerActivity.M ? new SimpleDateFormat(" HH:mm:ss") : new SimpleDateFormat(" hh:mm:ss a");
        Date date = new Date(summary.optLong("start_time"));
        a(C0000R.id.property_modified_text, I.format(date) + simpleDateFormat.format(date));
        a(C0000R.id.property_download_source, summary.optString("source"));
        TextView textView = (TextView) l(C0000R.id.property_location_text);
        textView.setText(Html.fromHtml("<a href=\"ss\">" + aY + "</a>"));
        textView.setClickable(true);
        textView.setOnClickListener(new r(this, aY));
        ((Button) l(C0000R.id.open_dir)).setOnClickListener(new s(this, aY));
        ((Button) l(C0000R.id.copy_source)).setOnClickListener(new t(this, eSActivity));
    }

    private void a(int i, String str) {
        View l = l(i);
        if (l == null || !(l instanceof TextView)) {
            return;
        }
        ((TextView) l).setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        try {
            if (this.f1913a != null) {
                this.f1913a.dismiss();
            }
            FileExplorerActivity.E().d(str);
        } catch (Exception e) {
        }
    }

    @Override // com.estrongs.android.view.cq
    protected int a() {
        return C0000R.layout.download_task_property;
    }
}

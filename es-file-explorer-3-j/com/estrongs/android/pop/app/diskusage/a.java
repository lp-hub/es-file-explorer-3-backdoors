package com.estrongs.android.pop.app.diskusage;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.ag;

/* loaded from: classes.dex */
public class a extends ag {

    /* renamed from: a, reason: collision with root package name */
    String f662a;

    /* renamed from: b, reason: collision with root package name */
    private e f663b;

    public a(Context context, e eVar) {
        super(context);
        this.f662a = "";
        this.f663b = eVar;
        setTitle(C0000R.string.tool_analyse);
        this.f662a = this.mContext.getText(C0000R.string.property_bytes).toString();
        a();
    }

    protected void a() {
        int[] iArr = {-25600, -13524051, -3908929, -6684159, -8210621, -196864};
        int[] iArr2 = {C0000R.id.disk_usage_graphic_pic_ind, C0000R.id.disk_usage_graphic_music_ind, C0000R.id.disk_usage_graphic_video_ind, C0000R.id.disk_usage_graphic_doc_ind, C0000R.id.disk_usage_graphic_apk_ind, C0000R.id.disk_usage_graphic_other_ind};
        int[] iArr3 = {C0000R.id.disk_usage_graphic_pic_size, C0000R.id.disk_usage_graphic_music_size, C0000R.id.disk_usage_graphic_video_size, C0000R.id.disk_usage_graphic_doc_size, C0000R.id.disk_usage_graphic_apk_size, C0000R.id.disk_usage_graphic_other_size};
        String[] strArr = {(String) this.mContext.getText(C0000R.string.diskusage_type_pic), (String) this.mContext.getText(C0000R.string.diskusage_type_audio), (String) this.mContext.getText(C0000R.string.diskusage_type_video), (String) this.mContext.getText(C0000R.string.diskusage_type_doc), (String) this.mContext.getText(C0000R.string.diskusage_type_apk), (String) this.mContext.getText(C0000R.string.diskusage_type_other)};
        LinearLayout linearLayout = (LinearLayout) com.estrongs.android.pop.esclasses.e.a(this.mContext).inflate(C0000R.layout.disk_usage_graphic, (ViewGroup) null);
        for (int i = 0; i < iArr.length; i++) {
            ((GradientDrawable) linearLayout.findViewById(iArr2[i]).getBackground()).setColor(iArr[i]);
        }
        DiskUsageGraphView diskUsageGraphView = (DiskUsageGraphView) linearLayout.findViewById(C0000R.id.disk_graphic_disk_view);
        long[] c = this.f663b.c(false);
        if (c != null) {
            diskUsageGraphView.a(c, iArr);
            for (int i2 = 0; i2 < strArr.length; i2++) {
                ((TextView) linearLayout.findViewById(iArr3[i2])).setText(strArr[i2] + com.estrongs.fs.c.d.c(c[i2]));
            }
        }
        ((TextView) linearLayout.findViewById(C0000R.id.disk_usage_graphic_title)).setText(((Object) this.mContext.getText(C0000R.string.property_size)) + com.estrongs.fs.c.d.c(c[c.length - 1]) + " (" + com.estrongs.fs.c.d.d(c[c.length - 1]) + " " + this.f662a + ")");
        setContentView(linearLayout);
    }
}

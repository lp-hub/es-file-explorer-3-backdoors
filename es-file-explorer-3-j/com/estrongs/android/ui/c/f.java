package com.estrongs.android.ui.c;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.netfs.utils.TypeUtils;
import com.estrongs.android.ui.b.ew;
import com.estrongs.android.ui.theme.al;
import com.estrongs.fs.b.z;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    public static final DateFormat f1898a = new SimpleDateFormat();

    /* renamed from: b, reason: collision with root package name */
    private Context f1899b;
    private View c;
    private ImageView d;
    private ImageView e;
    private CheckBox f;
    private ViewGroup g;
    private ViewGroup h;
    private a i;
    private com.estrongs.a.a j;
    private al k;
    private com.estrongs.android.pop.g n;
    private Object l = new Object();
    private com.estrongs.android.ui.notification.e m = null;
    private com.estrongs.a.a.k o = new i(this);

    public f(Context context, com.estrongs.a.a aVar) {
        this.n = null;
        this.f1899b = context;
        this.k = al.a(this.f1899b);
        this.c = com.estrongs.android.pop.esclasses.e.a(this.f1899b).inflate(C0000R.layout.task_grid_view_item, (ViewGroup) null);
        this.d = (ImageView) this.c.findViewById(C0000R.id.task_icon);
        this.h = (ViewGroup) this.c.findViewById(C0000R.id.done_panel);
        this.g = (ViewGroup) this.c.findViewById(C0000R.id.progress_panel);
        this.e = (ImageView) this.g.findViewById(C0000R.id.status_icon);
        this.f = (CheckBox) this.c.findViewById(C0000R.id.checkbox);
        ((TextView) this.c.findViewById(C0000R.id.message)).setTextColor(al.a(this.f1899b).h());
        this.n = new com.estrongs.android.pop.g((Activity) this.f1899b);
        this.i = new g(this, (Activity) this.f1899b, this.g);
        if (this.i.f != null) {
            this.i.f.setTextColor(this.k.d(C0000R.color.main_content_detail_text));
        }
        if (this.i.d != null) {
            this.i.d.setTextColor(al.a(this.f1899b).h());
        }
        if (this.i.e != null) {
            this.i.e.setTextColor(this.k.d(C0000R.color.main_content_detail_text));
        }
        if (this.i.h != null) {
            this.i.h.setTextColor(this.k.d(C0000R.color.main_content_detail_text));
        }
        if (this.i.g != null) {
            this.i.g.setTextColor(this.k.d(C0000R.color.main_content_detail_text));
        }
        a(aVar);
    }

    public com.estrongs.a.a a() {
        return this.j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(int i) {
        this.i.d();
        this.d.setImageDrawable(com.estrongs.android.d.d.a(String.valueOf(TypeUtils.getFileType(this.j.summary().optString("title")))));
        if (this.j instanceof z) {
            this.i.c(this.f1899b.getString(C0000R.string.download_pcs));
            this.i.e.setText(this.f1899b.getString(C0000R.string.download_pcs));
            this.e.setImageDrawable(null);
        } else {
            this.i.c((String) null);
        }
        switch (i) {
            case 1:
            case 3:
            case 5:
                this.h.setVisibility(8);
                this.g.setVisibility(0);
                if (this.j instanceof com.estrongs.fs.b.q) {
                    this.e.setImageResource(C0000R.drawable.app_audio_song_playing);
                    if (i == 5) {
                        this.i.c.a(this.j, this.j.processData);
                        this.i.c(this.f1899b.getString(C0000R.string.recommend_button_download_fail));
                        this.i.e(this.j.processData.e);
                        this.i.f(this.j.processData.f);
                        if (this.j.processData.f == 0) {
                            this.i.e();
                            this.i.b(this.j.summary().optString("title"));
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            case 2:
                this.h.setVisibility(8);
                this.g.setVisibility(0);
                this.i.b(this.j.summary().optString("title"));
                if (this.j instanceof com.estrongs.fs.b.q) {
                    this.i.c((String) null);
                    this.e.setImageResource(C0000R.drawable.app_audio_song_pause);
                    return;
                }
                return;
            case 4:
                this.h.setVisibility(0);
                this.g.setVisibility(8);
                TextView textView = (TextView) this.h.findViewById(C0000R.id.message);
                TextView textView2 = (TextView) this.h.findViewById(C0000R.id.size);
                TextView textView3 = (TextView) this.h.findViewById(C0000R.id.date);
                textView.setText(this.j.summary().optString("title"));
                textView2.setText(com.estrongs.fs.c.d.c(this.j.summary().optLong("size")));
                textView3.setText(f1898a.format(new Date(this.j.summary().optLong("end_time"))));
                return;
            default:
                return;
        }
    }

    public void a(com.estrongs.a.a aVar) {
        com.estrongs.a.a aVar2 = this.j;
        if (aVar2 != null) {
            aVar2.removeTaskStatusChangeListener(this.o);
            aVar2.removeProgressListener(this.i.c);
        }
        this.i.b(aVar.summary().optString("title"));
        if (aVar.getTaskStatus() != 4 && aVar.processData != null) {
            if (aVar.processData.e > 0) {
                this.i.e(aVar.processData.e);
                this.i.f(aVar.processData.f);
            } else {
                this.i.c();
            }
        }
        aVar.addProgressListener(this.i.c);
        aVar.addTaskStatusChangeListener(this.o);
        if (aVar instanceof com.estrongs.fs.b.q) {
            aVar.setTaskDecisionListener(this.n);
        }
        if (aVar instanceof z) {
            int taskStatus = aVar.getTaskStatus();
            if (taskStatus == 1) {
                aVar.execute();
            } else if (taskStatus == 3) {
                aVar.resume();
            }
        }
        this.d.setImageDrawable(com.estrongs.android.d.d.a(String.valueOf(TypeUtils.getFileType(aVar.summary().optString("title")))));
        this.j = aVar;
        a(aVar.getTaskStatus());
        if (aVar.getTaskStatus() == 2 || aVar.getTaskStatus() == 3) {
            this.m = ew.e.get(Long.valueOf(aVar.getTaskId()));
            if (this.m == null) {
                if (aVar.notificationId > 0) {
                    ((NotificationManager) this.f1899b.getSystemService("notification")).cancel(aVar.notificationId);
                }
                this.m = new h(this, (Activity) this.f1899b, this.f1899b.getString(C0000R.string.action_download), aVar);
                ew.e.put(Long.valueOf(aVar.getTaskId()), this.m);
            }
        }
    }

    public void a(boolean z) {
        this.f.setChecked(z);
        if (z) {
            this.c.setBackgroundDrawable(al.a(this.f1899b).a(C0000R.drawable.main_content_icon_bg_click));
        } else {
            this.c.setBackgroundDrawable(null);
        }
    }

    public View b() {
        return this.c;
    }

    public void b(boolean z) {
        if (z) {
            this.f.setVisibility(0);
        } else {
            this.f.setVisibility(4);
        }
    }

    public void c() {
        this.i.f();
        a(false);
        b(false);
        synchronized (this.l) {
            if (this.j != null) {
                this.j.removeProgressListener(this.i.c);
                this.j.removeTaskStatusChangeListener(this.o);
                this.j = null;
            }
        }
    }
}

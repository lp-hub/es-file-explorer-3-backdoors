package com.estrongs.android.ui.notification;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import com.estrongs.a.a.k;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.ShowDialogActivity;
import com.estrongs.android.util.ak;
import com.estrongs.fs.b.ah;
import com.estrongs.fs.b.at;
import com.estrongs.fs.b.i;
import com.estrongs.fs.b.o;
import com.estrongs.fs.b.q;
import com.estrongs.fs.b.y;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class e implements com.estrongs.a.a.h, k {
    private static BroadcastReceiver e;

    /* renamed from: a, reason: collision with root package name */
    private c f2260a;

    /* renamed from: b, reason: collision with root package name */
    private Activity f2261b;
    private int c = 1;
    private static Map<Long, i> d = new HashMap();
    private static Object f = new Object();

    public e(Activity activity, CharSequence charSequence, com.estrongs.a.a aVar) {
        this.f2261b = activity;
        this.f2260a = new c(activity);
        if (aVar instanceof o) {
            this.f2260a.a(C0000R.drawable.notification_delete);
            this.f2260a.b(activity.getText(C0000R.string.progress_deleting));
        } else if (aVar instanceof y) {
            this.f2260a.a(C0000R.drawable.notification_move);
            this.f2260a.b(activity.getText(C0000R.string.progress_moving));
        } else if (aVar instanceof com.estrongs.fs.b.b) {
            this.f2260a.a(C0000R.drawable.notification_update);
            this.f2260a.b(activity.getText(C0000R.string.progress_update));
        } else if (aVar instanceof i) {
            this.f2260a.a(C0000R.drawable.notification_copy);
            this.f2260a.b(activity.getText(C0000R.string.progress_copying));
        } else if (aVar instanceof at) {
            this.f2260a.a(C0000R.drawable.notification_send);
            this.f2260a.b(activity.getText(C0000R.string.progress_sending));
        } else if (aVar instanceof ah) {
            this.f2260a.a(C0000R.drawable.notification_receive);
            this.f2260a.b(activity.getText(C0000R.string.progress_receiving));
        } else if (aVar instanceof q) {
            this.f2260a.a(C0000R.drawable.sidebar_download);
            this.f2260a.b(activity.getText(C0000R.string.progress_downloading));
        } else if (aVar instanceof com.estrongs.fs.b.a) {
            this.f2260a.a(C0000R.drawable.notification_backup);
            this.f2260a.b(activity.getText(C0000R.string.progress_backing_up));
        } else if (aVar instanceof com.estrongs.fs.b.g) {
            this.f2260a.a(C0000R.drawable.notification_rename);
            this.f2260a.b(activity.getText(C0000R.string.progress_renaming));
        } else if (aVar instanceof com.estrongs.android.pop.view.utils.y) {
            this.f2260a.a(C0000R.drawable.notification_syn);
            this.f2260a.b(activity.getText(C0000R.string.progress_synchronizing));
        }
        this.f2260a.c(activity.getText(C0000R.string.task_detail));
        this.f2260a.a(true);
        if ((aVar instanceof i) || (aVar instanceof at) || (aVar instanceof ah) || (aVar instanceof q) || (aVar instanceof com.estrongs.fs.b.a) || (aVar instanceof o) || (aVar instanceof com.estrongs.fs.b.g) || (aVar instanceof com.estrongs.android.pop.view.utils.y)) {
            Intent intent = new Intent();
            intent.setClassName(activity.getPackageName(), ShowDialogActivity.class.getName());
            intent.putExtra("task_id", aVar.getTaskId());
            intent.putExtra("task_title", charSequence);
            intent.putExtra("notification_id", this.f2260a.f());
            this.f2260a.a(intent, true);
        } else {
            this.f2260a.a(activity.getIntent(), true);
        }
        aVar.addProgressListener(this);
        aVar.addTaskStatusChangeListener(this);
        aVar.notificationId = this.f2260a.f();
        this.f2260a.c();
    }

    public static com.estrongs.a.a a(long j) {
        return d.get(Long.valueOf(j));
    }

    public static com.estrongs.a.a b(long j) {
        return d.remove(Long.valueOf(j));
    }

    private void c(long j) {
        if (j > 2147483647L) {
            this.c = 100;
        }
        this.f2260a.b((int) (j / this.c));
    }

    private void d(long j) {
        this.f2260a.c(((int) j) / this.c);
    }

    private void e() {
    }

    public String a(i iVar) {
        com.estrongs.a.a.i f2 = iVar.f();
        if (f2 == null) {
            return "";
        }
        return FexApplication.a().getString(C0000R.string.task_progress_multi_item_message, new Object[]{Long.valueOf(f2.d), FexApplication.a().getString(C0000R.string.task_progress_multi_item_message_size, new Object[]{com.estrongs.fs.c.d.c(f2.f)})});
    }

    public void a() {
        synchronized (this) {
            if (this.f2260a != null) {
                this.f2260a.e();
            }
            this.f2260a = null;
        }
    }

    protected void a(com.estrongs.a.a aVar) {
    }

    @Override // com.estrongs.a.a.k
    public void a(com.estrongs.a.a aVar, int i, int i2) {
        synchronized (this) {
            if (this.f2260a == null) {
                return;
            }
            if (i2 == 4) {
                this.f2261b.runOnUiThread(new f(this, aVar));
                a(aVar);
            } else if (i2 == 5) {
                this.f2260a.a(false);
                if (aVar.getTaskResult().f229a == 1) {
                    this.f2260a.e();
                } else {
                    this.f2261b.runOnUiThread(new g(this, aVar));
                    b(aVar);
                }
            }
        }
    }

    @Override // com.estrongs.a.a.h
    public void a(com.estrongs.a.a aVar, com.estrongs.a.a.i iVar) {
        if (aVar.getTaskStatus() == 4 || aVar.getTaskStatus() == 5) {
            return;
        }
        synchronized (this) {
            if (this.f2260a == null) {
                return;
            }
            if (iVar.i == 1) {
                this.f2260a.c(this.f2261b.getString(C0000R.string.cal_file_count_and_size));
            } else {
                if (iVar.l) {
                    if (iVar.e > 0) {
                        c(iVar.e);
                    }
                    if (iVar.f >= 0) {
                        d(iVar.f);
                    }
                } else {
                    if (iVar.c > 0) {
                        c(iVar.c);
                    }
                    if (iVar.d >= 0) {
                        d(iVar.d);
                    }
                }
                if (iVar.e <= 0 && iVar.g <= 0) {
                    e();
                }
                if (aVar instanceof com.estrongs.fs.b.b) {
                    this.f2260a.c(ak.bv(iVar.j));
                } else {
                    this.f2260a.c(ak.bv(iVar.f196a));
                }
            }
        }
    }

    protected void b(com.estrongs.a.a aVar) {
    }
}

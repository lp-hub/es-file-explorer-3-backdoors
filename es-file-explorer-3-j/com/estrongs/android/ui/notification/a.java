package com.estrongs.android.ui.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Build;
import android.widget.RemoteViews;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.app.AudioPlayerService;
import com.estrongs.android.pop.app.PopAudioPlayer;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private AudioPlayerService f2255a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f2256b = false;
    private Bitmap c;

    public a(AudioPlayerService audioPlayerService) {
        this.f2255a = audioPlayerService;
    }

    public void a() {
        if (Build.VERSION.SDK_INT >= 16) {
            b();
        } else if (Build.VERSION.SDK_INT >= 14) {
            b();
        } else {
            c();
        }
        this.f2256b = true;
    }

    public void a(String str, CharSequence charSequence) {
        try {
            if (((NotificationManager) this.f2255a.getSystemService("notification")) != null) {
                Notification notification = new Notification();
                notification.tickerText = FexApplication.a().getString(C0000R.string.app_media_player);
                notification.when = System.currentTimeMillis();
                notification.icon = C0000R.drawable.app_audio_playing_ind;
                notification.flags |= 2;
                if (str == null) {
                    str = FexApplication.a().getString(C0000R.string.app_media_player);
                }
                notification.setLatestEventInfo(this.f2255a, str, charSequence, PendingIntent.getActivity(this.f2255a, 0, new Intent(this.f2255a, (Class<?>) PopAudioPlayer.class), 0));
                this.f2255a.startForeground(12333, notification);
            }
        } catch (Exception e) {
        }
    }

    public void b() {
        RemoteViews remoteViews = new RemoteViews(this.f2255a.getPackageName(), C0000R.layout.audio_notification_ics);
        Bitmap a2 = com.estrongs.android.ui.d.a.a(this.f2255a.D(), com.estrongs.android.ui.d.a.a(this.f2255a, 64.0f));
        remoteViews.setImageViewBitmap(C0000R.id.large_icon, a2);
        remoteViews.setTextViewText(C0000R.id.content_title, this.f2255a.B());
        remoteViews.setOnClickPendingIntent(C0000R.id.action_button_1, d());
        remoteViews.setOnClickPendingIntent(C0000R.id.action_button_2, e());
        remoteViews.setOnClickPendingIntent(C0000R.id.action_button_3, f());
        remoteViews.setOnClickPendingIntent(C0000R.id.action_button_4, g());
        if (!this.f2255a.k() || this.f2255a.m()) {
            remoteViews.setImageViewResource(C0000R.id.action_button_2, C0000R.drawable.app_audio_notification_play);
        } else {
            remoteViews.setImageViewResource(C0000R.id.action_button_2, C0000R.drawable.app_audio_notification_pause);
        }
        c cVar = new c(this.f2255a, false);
        cVar.a(remoteViews);
        cVar.a(true);
        cVar.a(new Intent(this.f2255a, (Class<?>) PopAudioPlayer.class), true);
        cVar.a(C0000R.drawable.notification_player);
        cVar.a(this.f2255a.B() + "\n" + this.f2255a.C());
        try {
            this.f2255a.startForeground(12333, cVar.d());
        } catch (Exception e) {
        }
        if (this.c != null && !this.c.isRecycled()) {
            try {
                this.c.recycle();
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        this.c = a2;
    }

    public void c() {
        if (this.f2255a.l()) {
            a(null, FexApplication.a().getString(C0000R.string.progress_stopped));
        } else {
            a(this.f2255a.B(), this.f2255a.k() && !this.f2255a.m() ? FexApplication.a().getString(C0000R.string.progress_playing) : FexApplication.a().getString(C0000R.string.progress_paused));
        }
    }

    public PendingIntent d() {
        return PendingIntent.getBroadcast(this.f2255a, 0, new Intent("com.estrongs.action.audio.control.preview"), 134217728);
    }

    public PendingIntent e() {
        return PendingIntent.getBroadcast(this.f2255a, 0, new Intent("com.estrongs.action.audio.control.play"), 134217728);
    }

    public PendingIntent f() {
        return PendingIntent.getBroadcast(this.f2255a, 0, new Intent("com.estrongs.action.audio.control.next"), 134217728);
    }

    public PendingIntent g() {
        return PendingIntent.getBroadcast(this.f2255a, 0, new Intent("com.estrongs.action.audio.control.close"), 134217728);
    }

    public boolean h() {
        return this.f2256b;
    }

    public void i() {
        this.f2255a.stopForeground(true);
        this.f2256b = false;
    }
}

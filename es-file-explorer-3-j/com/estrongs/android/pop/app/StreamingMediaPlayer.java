package com.estrongs.android.pop.app;

import android.R;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.MediaController;
import android.widget.VideoView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.fs.FileSystemException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class StreamingMediaPlayer extends ESActivity {

    /* renamed from: b, reason: collision with root package name */
    private VideoView f382b;
    private MediaController d;
    private long f;
    private File j;
    private boolean l;
    private String m;
    private Thread o;

    /* renamed from: a, reason: collision with root package name */
    private com.estrongs.fs.d f381a = com.estrongs.fs.d.a(this);
    private int c = 0;
    private boolean e = false;
    private long g = 0;
    private long h = 0;
    private final Handler i = new Handler();
    private final String k = com.estrongs.android.pop.a.c + "/downloadingMedia.dat";
    private MediaPlayer n = null;
    private final int p = 1;
    private final int q = 2;
    private final int r = 3;
    private final int s = 4;
    private final int t = 5;
    private final int u = 6;
    private ProgressDialog v = null;
    private ProgressDialog w = null;
    private boolean x = false;
    private boolean y = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, long j) {
        this.o = new Thread(new ja(this, str));
        this.o.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.i.post(new it(this, z));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.l = true;
        if (this.o == null || !this.o.isAlive()) {
            return;
        }
        this.o.interrupt();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        if (!this.l) {
            return true;
        }
        if (this.f382b != null) {
        }
        return false;
    }

    private void d() {
        try {
            if (!this.e && this.g > 1048576) {
                e();
            } else if (this.e && this.f382b.isPlaying() && this.f382b.getDuration() - this.f382b.getCurrentPosition() <= 1000) {
                a(false);
            }
        } catch (IllegalStateException e) {
        } catch (NullPointerException e2) {
        }
    }

    private void e() {
        this.i.post(new is(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        return this.g == this.f;
    }

    private void g() {
        float f = ((float) this.g) / ((float) this.f);
        if (this.v == null || !this.v.isShowing()) {
            return;
        }
        this.v.setProgress((int) this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        this.f382b.seekTo(0);
        this.f382b.start();
        this.h = 0L;
        this.e = true;
    }

    private void i() {
        this.y = true;
        a(this.x);
    }

    public void a() {
        this.l = true;
        c();
    }

    public void a(String str) {
        InputStream inputStream;
        try {
            inputStream = this.f381a.e(str);
        } catch (FileSystemException e) {
            e.printStackTrace();
            inputStream = null;
        }
        if (inputStream == null) {
            this.i.post(new jd(this));
            return;
        }
        this.j = new File(this.k);
        if (this.j.exists()) {
            this.j.delete();
        }
        try {
            File parentFile = this.j.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            if (!this.j.createNewFile()) {
            }
            FileOutputStream fileOutputStream = new FileOutputStream(this.j);
            byte[] bArr = new byte[262144];
            int i = 0;
            do {
                int read = inputStream.read(bArr, 0, 262144);
                if (read >= 0) {
                    while (read < 262144) {
                        int read2 = inputStream.read(bArr, read, 262144 - read);
                        if (read2 < 0) {
                            break;
                        } else {
                            read += read2;
                        }
                    }
                    fileOutputStream.write(bArr, 0, read);
                    i += read;
                    this.g = i;
                    this.h += read;
                    d();
                    g();
                    if (this.g >= this.f) {
                        break;
                    }
                } else {
                    break;
                }
            } while (c());
            inputStream.close();
            if (c()) {
                i();
            }
        } catch (IOException e2) {
            this.i.post(new je(this));
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setDefaultKeyMode(2);
        requestWindowFeature(1);
        getWindow().setFlags(2000, 1024);
        setContentView(C0000R.layout.pop_video_player);
        this.m = getIntent().getData().toString();
        this.d = new MediaController(this);
        this.f382b = (VideoView) findViewById(C0000R.id.video);
        this.f382b.setMediaController(this.d);
        this.d.requestFocus();
        this.f382b.setOnPreparedListener(new io(this));
        this.f382b.setOnCompletionListener(new iu(this));
        this.f382b.setOnErrorListener(new iw(this));
        if (com.estrongs.android.util.av.L(com.estrongs.android.util.ak.d(this.m))) {
            showDialog(4);
        } else {
            new iy(this).start();
        }
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case 1:
                return new AlertDialog.Builder(this).setIcon(R.drawable.ic_dialog_alert).setTitle(C0000R.string.message_error).setCancelable(false).setMessage(C0000R.string.streaming_network_error).setPositiveButton(C0000R.string.confirm_ok, new jf(this)).create();
            case 2:
                return new AlertDialog.Builder(this).setIcon(R.drawable.ic_dialog_alert).setTitle(C0000R.string.message_error).setCancelable(false).setMessage(C0000R.string.no_sdcard).setPositiveButton(C0000R.string.confirm_ok, new jg(this)).create();
            case 3:
                return new AlertDialog.Builder(this).setIcon(R.drawable.ic_dialog_alert).setTitle(C0000R.string.message_error).setMessage(C0000R.string.streaming_transport_error).setCancelable(false).setPositiveButton(C0000R.string.confirm_ok, new ip(this)).create();
            case 4:
                return new AlertDialog.Builder(this).setIcon(R.drawable.ic_dialog_alert).setTitle(C0000R.string.message_error).setCancelable(false).setMessage(C0000R.string.streaming_not_support_error).setPositiveButton(C0000R.string.confirm_ok, new iq(this)).create();
            case 5:
                this.v = new ProgressDialog(this);
                this.v.setIcon(R.drawable.ic_dialog_alert);
                this.v.setTitle(C0000R.string.streaming_buffering_title);
                this.v.setProgressStyle(1);
                this.v.setCancelable(false);
                this.v.setMessage(getText(C0000R.string.streaming_buffering_text));
                this.v.setButton2(getText(C0000R.string.confirm_cancel), new ir(this));
                return this.v;
            case 6:
                this.w = new ProgressDialog(this);
                this.w.setMessage(getText(C0000R.string.progress_loading));
                this.w.setIndeterminate(true);
                this.w.setCancelable(true);
                return this.w;
            default:
                return null;
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        b();
        if (this.j != null && this.j.exists()) {
            this.j.delete();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && keyEvent.getAction() == 0) {
            a();
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        if (this.e) {
            if (this.f382b.isPlaying()) {
                this.f382b.pause();
            }
            this.c = this.f382b.getCurrentPosition();
        }
    }

    @Override // android.app.Activity
    public void onRestoreInstanceState(Bundle bundle) {
        this.c = bundle.getInt("playback_position", 0);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.e) {
            this.f382b.seekTo(this.c);
            this.f382b.start();
        }
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putInt("playback_position", this.c);
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
    }
}

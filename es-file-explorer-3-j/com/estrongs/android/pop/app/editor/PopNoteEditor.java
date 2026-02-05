package com.estrongs.android.pop.app.editor;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.esclasses.ESActivity;
import com.estrongs.android.pop.esclasses.ESScrollMenuView;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class PopNoteEditor extends ESActivity implements SeekBar.OnSeekBarChangeListener, ak, f {
    private static final String c = PopNoteEditor.class.getSimpleName();
    private ReaderTextView h;
    private EditText i;
    private ObservableScrollView j;
    private ObservableScrollView k;
    private LinearLayout l;
    private ImageView m;
    private LinearLayout n;
    private LinearLayout o;
    private LinearLayout p;
    private LinearLayout q;
    private TextView r;
    private ESScrollMenuView s;
    private LinearLayout t;
    private SeekBar u;
    private TextView v;
    private String d = "UTF-8";
    private String e = null;
    private Context f = null;
    private b g = null;
    private int w = 0;
    private String x = null;
    private StringBuilder y = null;
    private Object z = new Object();
    private Object A = new Object();
    private boolean B = false;
    private boolean C = false;
    private boolean D = false;
    private int E = -1;
    private int F = 0;
    private int G = 0;
    private File H = null;
    private a I = null;
    private long J = 0;
    private ad K = null;
    private ai L = null;
    private int M = 0;
    private int N = 0;
    private boolean O = false;
    private c P = null;
    private int Q = 1;
    private int R = this.Q;
    private final Handler S = new g(this);

    /* renamed from: a, reason: collision with root package name */
    boolean f716a = true;

    /* renamed from: b, reason: collision with root package name */
    boolean f717b = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int C(PopNoteEditor popNoteEditor) {
        int i = popNoteEditor.F;
        popNoteEditor.F = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int E(PopNoteEditor popNoteEditor) {
        int i = popNoteEditor.F;
        popNoteEditor.F = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0022, code lost:
    
        r0 = r8.substring(0, r0);
        r2 = true;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int a(ReaderTextView readerTextView, int i, String str, String str2, int i2) {
        UnsupportedEncodingException unsupportedEncodingException;
        String str3;
        int height;
        boolean z;
        try {
        } catch (UnsupportedEncodingException e) {
            unsupportedEncodingException = e;
            str3 = str;
        }
        if (str.getBytes(str2).length == i2) {
            return 0;
        }
        int length = str.length() - 1;
        String str4 = str;
        while (true) {
            if (length <= 0) {
                str3 = str4;
                z = false;
                break;
            }
            try {
                str4 = str.substring(length);
                if (str4.getBytes(str2).length >= i2) {
                    break;
                }
                length -= 30;
            } catch (UnsupportedEncodingException e2) {
                str3 = str4;
                unsupportedEncodingException = e2;
                unsupportedEncodingException.printStackTrace();
                height = a(readerTextView, str3).getHeight() - i;
                if (height <= 0) {
                }
                return height;
            }
        }
        if (!z) {
            return 0;
        }
        height = a(readerTextView, str3).getHeight() - i;
        if (height <= 0) {
            height = 0;
        }
        return height;
    }

    @SuppressLint({"NewApi"})
    private Layout a(ReaderTextView readerTextView, String str) {
        return new StaticLayout(str, readerTextView.getPaint(), (readerTextView.getWidth() - readerTextView.getPaddingLeft()) - readerTextView.getPaddingRight(), Layout.Alignment.ALIGN_NORMAL, readerTextView.c(), readerTextView.b(), readerTextView.getIncludeFontPadding());
    }

    private String a(ReaderTextView readerTextView, int i, int i2, String str, int i3) {
        if (!this.K.f723a) {
            throw new IllegalStateException();
        }
        if (i > i2) {
            Log.e(c, "getFixSubString error not found low " + i + ", high " + i2);
            return null;
        }
        int i4 = (i + i2) / 2;
        int lineCount = a(readerTextView, str.substring(i4)).getLineCount();
        return lineCount == i3 ? str.substring(i4) : lineCount < i3 ? a(readerTextView, i, i4 - 1, str, i3) : a(readerTextView, i4 + 1, i2, str, i3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        boolean z2 = true;
        if (this.M != 0) {
            return;
        }
        if (!this.O && z) {
            this.q.setVisibility(8);
            this.n.setVisibility(8);
            this.O = true;
        } else if (!this.O || z) {
            z2 = false;
        } else {
            this.q.setVisibility(0);
            this.n.setVisibility(0);
            this.O = false;
        }
        if (z2) {
            ah ahVar = new ah(this, this.y.toString(), 0, this.k.getScrollY());
            Message obtainMessage = this.S.obtainMessage(0);
            obtainMessage.obj = ahVar;
            this.S.sendMessage(obtainMessage);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int b(ReaderTextView readerTextView, String str) {
        Layout a2 = a(readerTextView, str.substring(0, 4096));
        return (a2.getHeight() - a2.getBottomPadding()) - a2.getLineBaseline(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.i.requestFocus();
        if (i > 0) {
            this.i.setSelection(i);
        }
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(this.i, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.M == 0) {
            return;
        }
        try {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager.isActive()) {
                inputMethodManager.hideSoftInputFromWindow(this.i.getWindowToken(), 0);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if ((!this.h.getText().toString().equals(this.i.getText().toString()) || this.Q != this.R) && !z) {
            showDialog(4);
            return;
        }
        this.M = 0;
        this.i.setText("");
        this.n.setVisibility(0);
        this.k.setVisibility(0);
        this.j.setVisibility(8);
        this.o.setVisibility(8);
        this.l.setVisibility(0);
        this.r.setGravity(19);
        this.p.setVisibility(8);
    }

    private View.OnTouchListener c() {
        return new z(this);
    }

    private void d() {
        this.s = (ESScrollMenuView) findViewById(C0000R.id.menu_view);
        this.s.a();
        if (!this.P.j()) {
            this.s.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit), getString(C0000R.string.action_edit)), new aa(this));
            this.s.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_edit_delete), getString(C0000R.string.action_delete)), new ab(this));
        }
        this.s.a(new com.estrongs.android.view.a.a(getResources().getDrawable(C0000R.drawable.toolbar_charset), getString(C0000R.string.ftp_codepage_text)), new j(this));
    }

    private void e(int i) {
        this.y = new StringBuilder();
        new af(this, i, false).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean e() {
        if (this.N == 0) {
            return true;
        }
        com.estrongs.android.pop.utils.a.a((Activity) this, C0000R.string.wait_loading_file);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        this.S.sendMessageDelayed(this.S.obtainMessage(6), 500L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int g(PopNoteEditor popNoteEditor) {
        int i = popNoteEditor.w;
        popNoteEditor.w = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        this.S.sendMessage(this.S.obtainMessage(7));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ int h(PopNoteEditor popNoteEditor) {
        int i = popNoteEditor.w;
        popNoteEditor.w = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        if (this.P.h()) {
            showDialog(5);
            return;
        }
        if (this.M != 1) {
            synchronized (this.A) {
                if (this.g != null && this.y != null) {
                    this.M = 1;
                    this.n.setVisibility(8);
                    this.k.setVisibility(8);
                    this.l.setVisibility(8);
                    this.j.setVisibility(0);
                    this.p.setVisibility(0);
                    this.o.setVisibility(0);
                    this.r.setGravity(17);
                    Message obtainMessage = this.S.obtainMessage(3);
                    obtainMessage.obj = new ah(this, this.y.toString(), 0, this.k.getScrollY());
                    this.S.sendMessage(obtainMessage);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        int i;
        boolean z;
        try {
            try {
                f();
                try {
                    this.H = this.P.c();
                } catch (IOException e) {
                    this.e = e.getMessage();
                }
                if (this.H == null) {
                    this.S.sendMessage(this.S.obtainMessage(5, 2, 0));
                    g();
                    try {
                        if (this.g != null) {
                            this.g.close();
                            return;
                        }
                        return;
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        return;
                    }
                }
                this.J = this.P.g();
                this.d = this.P.f();
                this.g = new b(this.f, this.H, this.d);
                this.y = new StringBuilder();
                char[] cArr = new char[4096];
                g();
                while (!this.B) {
                    synchronized (this.z) {
                        if (this.C) {
                            this.f716a = true;
                            this.f717b = false;
                            this.C = false;
                        } else if (this.F > 3 && this.D) {
                            this.f716a = false;
                            this.f717b = true;
                            this.D = false;
                        }
                    }
                    if (this.f716a) {
                        synchronized (this.A) {
                            int read = this.g.read(cArr);
                            if (read > 0) {
                                this.f716a = false;
                                this.F++;
                                if (read == cArr.length) {
                                    this.L.a(this.F, this.g.b());
                                }
                                this.Q = an.a(cArr);
                                this.R = this.Q;
                                if (this.y.length() > 8192) {
                                    this.y.delete(0, 4096);
                                    Message obtainMessage = this.S.obtainMessage(2);
                                    obtainMessage.obj = new ah(this, this.y.toString(), 0, -1);
                                    this.S.sendMessage(obtainMessage);
                                    this.x = this.y.append(cArr, 0, read).toString();
                                } else {
                                    while (true) {
                                        if (this.y.length() >= 8192) {
                                            i = read;
                                            z = true;
                                            break;
                                        }
                                        this.y.append(cArr, 0, read);
                                        read = this.g.read(cArr);
                                        if (read < 0) {
                                            i = read;
                                            z = false;
                                            break;
                                        }
                                        this.F++;
                                    }
                                    if (z) {
                                        this.y.append(cArr, 0, i);
                                    }
                                    Message obtainMessage2 = this.S.obtainMessage(2);
                                    obtainMessage2.obj = new ah(this, this.y.toString(), 0, -1);
                                    this.S.sendMessage(obtainMessage2);
                                }
                            }
                        }
                    } else if (this.f717b) {
                        synchronized (this.A) {
                            if (this.F > 3) {
                                this.f717b = false;
                                this.g.close();
                                new ac(this, null).start();
                            }
                        }
                    }
                    synchronized (this.z) {
                        this.C = false;
                        this.D = false;
                        this.z.wait();
                    }
                }
                try {
                    if (this.g != null) {
                        this.g.close();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                }
            } catch (Exception e4) {
                this.S.sendMessage(this.S.obtainMessage(5, 2, 0));
                try {
                    if (this.g != null) {
                        this.g.close();
                    }
                } catch (IOException e5) {
                    e5.printStackTrace();
                }
            }
        } catch (Throwable th) {
            try {
                if (this.g != null) {
                    this.g.close();
                }
            } catch (IOException e6) {
                e6.printStackTrace();
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j() {
        synchronized (this.A) {
            if (this.g == null) {
                return -1;
            }
            try {
                try {
                    long b2 = this.g.b();
                    int bottom = (this.h.getBottom() - this.k.getHeight()) - this.k.getScrollY();
                    if (bottom > 0) {
                        int lineHeight = bottom / this.h.getLineHeight();
                        String sb = this.y.toString();
                        if (sb == null || sb.length() <= 0) {
                            Log.e(c, "getCurrentProgress empty text");
                            return -1;
                        }
                        try {
                            String a2 = a(this.h, 0, sb.length() - 1, sb, lineHeight);
                            if (a2 != null) {
                                sb = a2;
                            }
                            try {
                                try {
                                    b2 = this.g.b() - sb.getBytes(this.g.a() != null ? this.g.a() : this.d).length;
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    return -1;
                                }
                            } catch (UnsupportedEncodingException e2) {
                                e2.printStackTrace();
                                return -1;
                            }
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return -1;
                        }
                    }
                    return (int) Math.floor((b2 * 100.0d) / this.J);
                } catch (UnsupportedEncodingException e4) {
                    e4.printStackTrace();
                    return -1;
                }
            } catch (IOException e5) {
                e5.printStackTrace();
                return -1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        if (e()) {
            if (this.s.getVisibility() == 0) {
                l();
            } else {
                this.s.setVisibility(0);
                this.m.setImageResource(C0000R.drawable.toolbar_menu_expand);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        this.s.setVisibility(4);
        this.m.setImageResource(C0000R.drawable.toolbar_menu_collapse);
    }

    @Override // com.estrongs.android.pop.app.editor.f
    public void a() {
        if (this.K != null) {
            this.K.a();
            return;
        }
        this.K = new ad(this);
        this.K.start();
        this.K.setPriority(1);
    }

    @Override // com.estrongs.android.pop.app.editor.ak
    public void a(int i) {
        this.E = i - this.k.getHeight();
        if (TextUtils.isEmpty(this.x)) {
            return;
        }
        Message obtainMessage = this.S.obtainMessage(2);
        obtainMessage.obj = new ah(this, this.x, 0, -1);
        this.S.sendMessage(obtainMessage);
        this.x = null;
    }

    @Override // com.estrongs.android.pop.app.editor.f
    public void a(ObservableScrollView observableScrollView, int i, int i2, int i3, int i4) {
        synchronized (this.z) {
            if (this.E == i2 && i4 != i2) {
                this.C = true;
            }
            if (i2 == 0 && i2 != i4) {
                this.D = true;
            }
            this.z.notifyAll();
        }
        if (this.K != null) {
            this.K.b();
        }
    }

    @Override // android.app.Activity
    public void finish() {
        this.B = true;
        if (this.K != null) {
            this.K.a();
        }
        synchronized (this.z) {
            this.z.notify();
        }
        super.finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.M == 1) {
            b(false);
        } else if (this.s.getVisibility() == 0) {
            l();
        } else {
            super.onBackPressed();
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    @SuppressLint({"NewApi"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C0000R.layout.note_editor);
        Uri data = getIntent().getData();
        if (data == null || data.toString() == null) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.message_invalid_path, 1).show();
            return;
        }
        this.f = this;
        this.P = new c(this, data);
        this.k = (ObservableScrollView) findViewById(C0000R.id.text_show_scroll);
        this.k.a(this);
        this.h = (ReaderTextView) findViewById(C0000R.id.text_show);
        this.h.a(this);
        this.i = (EditText) findViewById(C0000R.id.text_edit);
        this.j = (ObservableScrollView) findViewById(C0000R.id.text_edit_scroll);
        this.j.setOnTouchListener(new t(this));
        this.n = (LinearLayout) findViewById(C0000R.id.progress_layout);
        this.q = (LinearLayout) findViewById(C0000R.id.toolbar_layout);
        this.t = (LinearLayout) findViewById(C0000R.id.progress_dialog_layout);
        this.u = (SeekBar) findViewById(C0000R.id.progress_bar);
        this.u.setOnSeekBarChangeListener(this);
        this.v = (TextView) findViewById(C0000R.id.progress_text);
        this.l = (LinearLayout) findViewById(C0000R.id.menu_image_layout);
        this.m = (ImageView) findViewById(C0000R.id.menu);
        this.l.setOnClickListener(new u(this));
        this.o = (LinearLayout) findViewById(C0000R.id.back_layout);
        this.o.setOnClickListener(new v(this));
        this.p = (LinearLayout) findViewById(C0000R.id.edit_image_layout);
        this.p.setOnClickListener(new w(this));
        this.L = new ai();
        this.r = (TextView) findViewById(C0000R.id.file_name);
        this.r.setText(this.P.a());
        ag agVar = new ag(this, null);
        if (Build.VERSION.SDK_INT >= 11) {
            agVar.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Object[0]);
        } else {
            agVar.execute(new Object[0]);
        }
        this.k.setOnTouchListener(new y(this, c()));
        d();
    }

    @Override // android.app.Activity
    protected Dialog onCreateDialog(int i) {
        switch (i) {
            case 1:
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_error).b(((Object) getText(C0000R.string.noteeditor_save_error)) + "\n" + (this.e == null ? "" : this.e)).a(C0000R.string.confirm_ok, new l(this)).a();
            case 2:
                String str = ((Object) getText(C0000R.string.noteeditor_load_error)) + " " + this.P.a();
                if (this.e != null) {
                    str = str + "\n" + this.e;
                }
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_error).b(str).a(C0000R.string.confirm_ok, new p(this)).a();
            case 3:
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.action_delete).b(((Object) getText(C0000R.string.noteeditor_confirm_delete)) + " " + this.P.a()).b(C0000R.string.confirm_yes, new n(this)).c(C0000R.string.confirm_no, new m(this)).a();
            case 4:
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_confirm).b(((Object) getText(C0000R.string.noteeditor_confirm_save)) + " " + this.P.a() + "?").b(C0000R.string.confirm_yes, new r(this)).c(C0000R.string.confirm_no, new q(this)).a();
            case 5:
                return new com.estrongs.android.ui.b.aq(this).a(C0000R.string.message_confirm).b(C0000R.string.noteeditor_inzip).a(C0000R.string.confirm_ok, new s(this)).a();
            default:
                return null;
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.P != null) {
            this.P.k();
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i != 82) {
            return super.onKeyDown(i, keyEvent);
        }
        k();
        return true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        this.v.setText("" + i + "%");
        this.G = i;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
        e(this.G);
    }
}

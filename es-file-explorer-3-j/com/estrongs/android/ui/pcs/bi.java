package com.estrongs.android.ui.pcs;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.baidu.sapi2.ErrorCode;
import com.baidu.sapi2.SapiHelper;
import com.estrongs.android.pop.C0000R;

/* loaded from: classes.dex */
public class bi {

    /* renamed from: a */
    final /* synthetic */ bb f2317a;

    /* renamed from: b */
    private bn f2318b = null;
    private bl c = null;
    private bm d = null;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private String h = null;
    private Handler i = new bj(this);

    public bi(bb bbVar) {
        this.f2317a = bbVar;
    }

    public void a(int i, Object obj) {
        EditText editText;
        EditText editText2;
        EditText editText3;
        ProgressBar progressBar;
        Button button;
        EditText editText4;
        EditText editText5;
        c(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                a(true, C0000R.string.network_fail);
                break;
            case 0:
                a(true, C0000R.string.pcs_register_smssent);
                c(false);
                this.f2317a.j();
                break;
            case 257:
                a(true, C0000R.string.verifycode_hint);
                c(false);
                a(true);
                if (obj != null) {
                    String obj2 = obj.toString();
                    b(obj2);
                    this.h = obj2;
                }
                editText2 = this.f2317a.q;
                editText3 = this.f2317a.q;
                editText3.setText("");
                editText2.requestFocus();
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                c(false);
                a(true, C0000R.string.verifycode_input_error);
                if (obj != null) {
                    String obj3 = obj.toString();
                    b(obj3);
                    this.h = obj3;
                }
                editText = this.f2317a.q;
                editText.requestFocus();
                break;
            case ErrorCode.SmsCheat /* 130017 */:
                a(true, C0000R.string.smscode_too_much);
                break;
            default:
                String str = null;
                if (this.f2317a.f2308b.f2326b && (obj instanceof String)) {
                    str = (String) obj;
                }
                if (str == null) {
                    str = this.f2317a.a(C0000R.string.cannot_regist);
                }
                a(true, str);
                break;
        }
        if (i != 0) {
            progressBar = this.f2317a.k;
            progressBar.setVisibility(4);
            button = this.f2317a.j;
            button.setEnabled(true);
            editText4 = this.f2317a.i;
            editText4.setEnabled(true);
            editText5 = this.f2317a.m;
            editText5.setEnabled(true);
        }
    }

    private void a(boolean z) {
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        if (z) {
            linearLayout2 = this.f2317a.p;
            linearLayout2.setVisibility(0);
        } else {
            this.h = null;
            linearLayout = this.f2317a.p;
            linearLayout.setVisibility(8);
        }
    }

    private void a(boolean z, int i) {
        Context context;
        if (!z || i == 0) {
            return;
        }
        context = this.f2317a.c;
        com.estrongs.android.ui.view.z.a(context, i, 0).show();
    }

    private void a(boolean z, String str) {
        Context context;
        if (!z || str == null) {
            return;
        }
        context = this.f2317a.c;
        com.estrongs.android.ui.view.z.a(context, str, 0).show();
    }

    private void b() {
        EditText editText;
        EditText editText2;
        editText = this.f2317a.i;
        String obj = editText.getEditableText().toString();
        String str = this.h;
        editText2 = this.f2317a.q;
        String obj2 = editText2.getEditableText().toString();
        if (this.g) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.d = new bm(this, null);
        if (SapiHelper.getInstance().getSmsCode(this.d, obj, str == null ? null : str, str != null ? obj2 : null)) {
            return;
        }
        b(false);
    }

    public void b(int i, Object obj) {
        EditText editText;
        ProgressBar progressBar;
        Button button;
        EditText editText2;
        EditText editText3;
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
            case ErrorCode.GetCertFail /* -105 */:
                c(false);
                a(true, C0000R.string.network_fail);
                break;
            case 0:
                b();
                break;
            case ErrorCode.WeakPwd /* 110012 */:
                c(false);
                a(true, C0000R.string.weak_password);
                break;
            case ErrorCode.PwdFormatError /* 110013 */:
                c(false);
                a(true, C0000R.string.msg_wrong_password);
                break;
            case ErrorCode.VerifyCodeInputErr /* 110031 */:
                c(false);
                a(true, C0000R.string.verifycode_input_error2);
                editText = this.f2317a.q;
                editText.requestFocus();
                break;
            case ErrorCode.Cheat /* 130001 */:
                c(false);
                a(true, C0000R.string.cheat);
                break;
            case ErrorCode.PhoneFormatErr /* 130019 */:
                a(true, C0000R.string.phone_format_error);
                break;
            case ErrorCode.PhoneNumBinded /* 130020 */:
                a(true, C0000R.string.phone_registed);
                break;
            default:
                c(false);
                a(true, C0000R.string.unknown_error);
                break;
        }
        if (i != 0) {
            progressBar = this.f2317a.k;
            progressBar.setVisibility(4);
            button = this.f2317a.j;
            button.setEnabled(true);
            editText2 = this.f2317a.i;
            editText2.setEnabled(true);
            editText3 = this.f2317a.m;
            editText3.setEnabled(true);
        }
    }

    private void b(String str) {
        if (this.f) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.f2318b = new bn(this, null);
        if (SapiHelper.getInstance().getVerifyImg(this.f2318b, str)) {
            b(true);
        }
    }

    private void b(boolean z) {
        this.f = z;
        if (z) {
        }
    }

    public void c(int i, Object obj) {
        EditText editText;
        ImageView imageView;
        b(false);
        switch (i) {
            case ErrorCode.Network_Failed /* -200 */:
                c(false);
                a(true, C0000R.string.network_fail);
                return;
            case 0:
                if (obj != null) {
                    byte[] bArr = (byte[]) obj;
                    Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
                    if (decodeByteArray != null) {
                        imageView = this.f2317a.o;
                        imageView.setImageBitmap(decodeByteArray);
                    }
                    a(true);
                    b(false);
                    editText = this.f2317a.q;
                    editText.requestFocus();
                    return;
                }
                return;
            default:
                c(false);
                a(true, C0000R.string.unknown_error);
                return;
        }
    }

    private void c(boolean z) {
        this.e = z;
        if (z) {
            d(true);
        } else {
            d(false);
        }
    }

    private void d(boolean z) {
        if (z) {
        }
    }

    public void a() {
        EditText editText;
        EditText editText2;
        EditText editText3;
        editText = this.f2317a.m;
        String obj = editText.getEditableText().toString();
        editText2 = this.f2317a.i;
        String obj2 = editText2.getEditableText().toString();
        editText3 = this.f2317a.q;
        editText3.getEditableText().toString();
        String str = this.h;
        if (this.e) {
            SapiHelper.getInstance().cancelRequest();
        }
        this.c = new bl(this, null);
        new Thread(new bk(this, obj2, str, obj)).start();
        a(false, 0);
        c(true);
        d(true);
    }

    public void a(String str) {
        this.h = str;
        a(true);
        a(true, C0000R.string.verifycode_hint);
        b(this.h);
    }
}

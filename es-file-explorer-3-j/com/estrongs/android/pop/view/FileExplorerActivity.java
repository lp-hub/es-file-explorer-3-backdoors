package com.estrongs.android.pop.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.gesture.Gesture;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.LightingColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.LocalSocket;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.ViewFlipper;
import com.baidu.sapi2.BDAccountManager;
import com.baidu.sapi2.Constants;
import com.baidu.sapi2.SapiConfig;
import com.baidu.sapi2.callback.LoginCallBack;
import com.baidu.sapi2.social.config.BindType;
import com.baidu.sapi2.social.config.Domain;
import com.baidu.share.message.token.ShareToken;
import com.baidu.share.message.token.TokenShareManager;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.esclasses.ESAbsToolbarActivity;
import com.estrongs.android.pop.spfs.SPFileObject;
import com.estrongs.android.pop.view.utils.AppRunner;
import com.estrongs.android.ui.drag.DragActionZone;
import com.estrongs.android.ui.drag.DragLayer;
import com.estrongs.android.ui.e.ft;
import com.estrongs.android.ui.e.gh;
import com.estrongs.android.ui.guesture.ESGestureCtrl;
import com.estrongs.android.ui.guesture.ESGesturePanel;
import com.estrongs.android.util.TypedMap;
import com.estrongs.android.widget.ContentViewSwitcher;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.TimeZone;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.apache.commons.net.ftp.FTPReply;

/* loaded from: classes.dex */
public class FileExplorerActivity extends ESAbsToolbarActivity implements gh {
    public static GregorianCalendar N;
    private static FileExplorerActivity bq;
    private static final Domain br;
    private static Object bs;
    private static LocalSocket bw;
    protected Button A;
    protected Button B;
    protected LinearLayout C;
    protected ProgressBar D;
    protected ProgressBar E;
    boolean T;
    public com.estrongs.android.widget.g W;
    public com.estrongs.android.widget.ab Z;
    private DragActionZone aA;
    private com.estrongs.android.ui.drag.c aB;
    private TranslateAnimation aC;
    private TranslateAnimation aD;
    private DragActionZone aE;
    private com.estrongs.android.ui.drag.c aF;
    private TranslateAnimation aG;
    private TranslateAnimation aH;
    private DragActionZone aI;
    private com.estrongs.android.ui.drag.c aJ;
    private TranslateAnimation aK;
    private TranslateAnimation aL;
    private DragActionZone aM;
    private com.estrongs.android.ui.drag.c aN;
    private TranslateAnimation aO;
    private TranslateAnimation aP;
    private DragLayer aQ;
    private com.estrongs.android.ui.drag.l aR;
    private View aT;
    private TextView aU;
    private FrameLayout aV;
    private com.estrongs.android.ui.pcs.aw aX;
    private String aY;
    dl ab;
    private com.estrongs.android.ui.theme.al ah;
    private FrameLayout ai;
    private View aj;
    private Rect ak;
    private LinearLayout al;
    private ImageView ao;
    private View ap;
    private com.estrongs.android.ui.a.cp aq;
    private com.estrongs.android.view.ar ar;
    private boolean au;
    private EditText aw;
    private DragLayer ax;
    private DragLayer ay;
    private com.estrongs.android.ui.drag.d az;
    private HashMap<String, Runnable> ba;
    private ESGestureCtrl bb;
    private TextWatcher bg;
    private View.OnKeyListener bh;
    private boolean bn;
    private com.estrongs.android.ui.a.s bp;
    private BroadcastReceiver bt;
    private com.estrongs.android.pop.utils.c bv;
    public ContentViewSwitcher f;
    public LinearLayout g;
    public Handler h;
    public String j;
    public com.estrongs.android.pop.q m;
    protected com.estrongs.android.ui.d.b n;
    public com.estrongs.android.view.x o;
    public boolean q;
    public boolean r;
    public com.estrongs.fs.g t;
    private static int ae = 0;
    public static String c = "www.estrongs.com";
    public static int d = 0;
    public static String e = "";
    public static boolean v = false;
    private static boolean av = false;
    public static boolean M = false;
    private boolean af = false;
    private int ag = 0;
    public com.estrongs.android.ui.view.az i = null;
    public com.estrongs.android.ui.e.w k = null;
    private View am = null;
    private RelativeLayout an = null;
    private String as = null;
    private List<com.estrongs.android.util.p<com.estrongs.android.view.ar, String>> at = new LinkedList();
    public com.estrongs.android.c.a l = null;
    public boolean p = false;
    public boolean s = false;
    public boolean u = true;
    protected boolean w = false;
    protected int x = 0;
    public List<com.estrongs.android.view.ar> y = new ArrayList();
    public final List<com.estrongs.fs.g> z = new ArrayList();
    public boolean F = false;
    public boolean G = false;
    public boolean H = false;
    private com.estrongs.android.ui.f.a aS = null;
    private com.estrongs.android.util.a aW = null;
    private com.estrongs.android.ui.view.aq aZ = null;
    public ESGesturePanel I = null;
    private FrameLayout bc = null;
    public ViewFlipper J = null;
    public com.estrongs.android.ui.pcs.bt K = null;
    public int L = 0;
    private boolean bd = false;
    private boolean be = true;
    private boolean bf = false;
    private int bi = 2000;
    private Runnable bj = null;
    private boolean bk = false;
    private boolean bl = true;
    protected com.estrongs.android.view.br O = new a(this);
    private com.estrongs.android.view.aq<com.estrongs.fs.g> bm = new l(this);
    com.estrongs.android.view.bs P = new x(this);
    public com.estrongs.fs.h Q = new ak(this);
    protected AdapterView.OnItemLongClickListener R = new be(this);
    protected com.estrongs.android.view.bt S = new bq(this);
    private boolean bo = false;
    com.estrongs.android.ui.g.f U = null;
    boolean V = false;
    boolean X = false;
    com.estrongs.android.widget.an Y = new bm(this);
    DialogInterface.OnClickListener aa = new bo(this);
    SparseArray<Object> ac = new SparseArray<>();
    Handler ad = new bx(this);
    private BroadcastReceiver bu = null;

    static {
        N = null;
        N = new GregorianCalendar(TimeZone.getTimeZone("GMT"));
        N.set(1980, 8, 30, 0, 0, 0);
        bq = null;
        br = Domain.DOMAIN_ONLINE;
        bs = new Object();
        bw = null;
    }

    public static FileExplorerActivity D() {
        return bq;
    }

    public static FileExplorerActivity E() {
        return bq;
    }

    public static boolean P() {
        return Build.MANUFACTURER.equals("Amazon") && (Build.MODEL.equals("Kindle Fire") || Build.MODEL.startsWith("KF"));
    }

    public static boolean Q() {
        byte[] R;
        if (P() || (R = R()) == null || R.length == 0) {
            return true;
        }
        try {
            PackageInfo packageInfo = FexApplication.a().getPackageManager().getPackageInfo(FexApplication.a().getPackageName(), 64);
            if (packageInfo.signatures == null || packageInfo.signatures.length == 0) {
                return true;
            }
            return packageInfo.signatures[0].equals(new Signature(R));
        } catch (PackageManager.NameNotFoundException e2) {
            return true;
        }
    }

    public static byte[] R() {
        OutputStream outputStream;
        InputStream inputStream;
        OutputStream outputStream2;
        InputStream inputStream2;
        LocalSocket a2 = com.estrongs.android.e.c.a();
        if (a2 == null) {
            return null;
        }
        try {
            inputStream2 = a2.getInputStream();
            try {
                outputStream2 = a2.getOutputStream();
            } catch (IOException e2) {
                outputStream2 = null;
            } catch (Throwable th) {
                th = th;
                inputStream = inputStream2;
                outputStream = null;
            }
        } catch (IOException e3) {
            outputStream2 = null;
            inputStream2 = null;
        } catch (Throwable th2) {
            th = th2;
            outputStream = null;
            inputStream = null;
        }
        try {
            com.estrongs.fs.impl.local.h.a(outputStream2, 10002);
            return com.estrongs.fs.impl.local.h.b(inputStream2);
        } catch (IOException e4) {
            if (inputStream2 != null) {
                try {
                    inputStream2.close();
                } catch (IOException e5) {
                    return null;
                }
            }
            if (outputStream2 != null) {
                outputStream2.close();
            }
            a2.close();
            return null;
        } catch (Throwable th3) {
            inputStream = inputStream2;
            outputStream = outputStream2;
            th = th3;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e6) {
                    return null;
                }
            }
            if (outputStream != null) {
                outputStream.close();
            }
            a2.close();
            throw th;
        }
    }

    public static LocalSocket S() {
        LocalSocket localSocket;
        synchronized (bs) {
            if (bw == null) {
                bw = com.estrongs.android.e.c.a();
            } else {
                try {
                    OutputStream outputStream = bw.getOutputStream();
                    InputStream inputStream = bw.getInputStream();
                    com.estrongs.fs.impl.local.h.a(outputStream, 80);
                    com.estrongs.fs.impl.local.h.c(inputStream);
                } catch (Exception e2) {
                    bw = null;
                }
                if (bw == null) {
                    bw = com.estrongs.android.e.c.a();
                }
            }
            localSocket = bw;
        }
        return localSocket;
    }

    public static int a(Activity activity) {
        int i;
        boolean z;
        boolean z2;
        synchronized (bs) {
            if (ae == 1 || ae == 3) {
                i = ae;
            } else {
                ae = 1;
                try {
                    System.loadLibrary("myaes");
                    z = true;
                } catch (Throwable th) {
                    try {
                        z = com.estrongs.fs.impl.local.h.b() == 2 ? a(activity, "libmyaes.so", "x86") : a(activity, "libmyaes.so", "armeabi");
                    } catch (Exception e2) {
                        z = false;
                    }
                }
                try {
                    System.loadLibrary(Constants.SAPI_SO);
                    z2 = true;
                } catch (Throwable th2) {
                    try {
                        z2 = com.estrongs.fs.impl.local.h.b() == 2 ? a(activity, "libsapi_so_1.so", "x86") : a(activity, "libsapi_so_1.so", "armeabi");
                    } catch (Exception e3) {
                        z2 = false;
                    }
                    th2.printStackTrace();
                }
                if (z2 && z) {
                    BDAccountManager.getInstance().initial(activity, new SapiConfig("esfb", "1", "3e504de3df373ce5e1080f3b9c33afba", br, BindType.IMPLICIT));
                    ae = 3;
                } else {
                    ae = 2;
                }
                i = ae;
            }
        }
        return i;
    }

    private static ApplicationInfo a(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 1);
            if (packageInfo != null) {
                return packageInfo.applicationInfo;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return null;
    }

    private com.estrongs.android.view.ar a(Activity activity, ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, com.estrongs.android.view.bs bsVar, String str) {
        com.estrongs.android.view.ar a2;
        if (com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.L(str)) {
            a2 = a(viewGroup, aVar, str);
        } else if (com.estrongs.android.util.ak.aq(str)) {
            a2 = b(viewGroup, aVar, str);
        } else if ("download://".equals(str)) {
            a2 = new com.estrongs.android.ui.c.u(this, viewGroup, aVar, bsVar);
            a2.a(this.R);
            a2.a(this.bm);
            a(a2);
        } else if (com.estrongs.android.util.ak.aE(str)) {
            a2 = new com.estrongs.android.view.e(this, viewGroup, aVar, bsVar);
            a2.a(this.R);
            a2.a(this.bm);
            a2.a(com.estrongs.android.pop.view.utils.ac.b(activity, str));
            a2.j(this.ah.h());
            a2.a(this.O);
            a(a2);
        } else if (com.estrongs.android.util.ak.s(str)) {
            a2 = new com.estrongs.android.pop.app.diskusage.e(this, viewGroup, aVar, bsVar);
            a2.a(this.R);
            a2.a(this.bm);
            a2.a(this.O);
            a(a2);
        } else if ("remote://".equals(str)) {
            a2 = new com.estrongs.android.view.ck(this, viewGroup, aVar, bsVar);
            a(a2);
        } else if (str.startsWith("http") || str.startsWith("https")) {
            a2 = new com.estrongs.android.view.cs(this, viewGroup, bsVar);
            a(a2);
        } else if (com.estrongs.android.util.ak.aO(str) || com.estrongs.android.util.ak.ao(str)) {
            a2 = new at(this, activity, viewGroup, aVar, bsVar);
            a2.a(this.O);
            a2.a(this.R);
            a2.a(this.S);
            a2.a(this.bm);
            a2.a(com.estrongs.android.pop.view.utils.ac.b(activity, str));
            a2.b(this.Q);
            a2.a(this.az);
            a2.j(this.ah.h());
            a(a2);
        } else if (com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.O(str)) {
            a2 = new com.estrongs.android.view.a(this, viewGroup, aVar, bsVar);
            a2.a(this.O);
            a2.a(this.R);
            a2.a(this.S);
            a2.a(this.bm);
            a2.a(com.estrongs.android.pop.view.utils.ac.b(activity, str));
            a2.b(this.Q);
            a2.a(this.az);
            a2.j(this.ah.h());
            a(a2);
        } else {
            a2 = new ba(this, activity, viewGroup, aVar, bsVar);
            a2.a(this.O);
            a2.a(this.R);
            a2.a(this.S);
            a2.a(this.bm);
            a2.a(com.estrongs.android.pop.view.utils.ac.b(activity, str));
            a2.b(this.Q);
            a2.a(this.az);
            a2.j(this.ah.h());
            a(a2);
        }
        a2.f(com.estrongs.android.pop.q.a(this).h());
        try {
            a2.g(!com.estrongs.android.pop.q.a(this).i());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        a2.v = str;
        return a2;
    }

    private com.estrongs.android.view.ar a(com.estrongs.android.ui.d.d dVar) {
        String b2 = dVar.b();
        if (dVar == null || dVar.a() == -1 || b2 == null) {
            return null;
        }
        RelativeLayout relativeLayout = (RelativeLayout) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.content_main, (ViewGroup) null);
        ViewGroup viewGroup = (ViewGroup) relativeLayout.findViewById(C0000R.id.content_main);
        viewGroup.setVisibility(0);
        this.f.addView(relativeLayout);
        if (com.estrongs.android.util.ak.aJ(b2)) {
            b2 = com.estrongs.android.util.ak.aQ(b2);
        }
        com.estrongs.android.view.ar a2 = a(this, viewGroup, com.estrongs.android.util.ak.Q(b2) ? this.m.q(b2) : this.m.p(b2), this.P, b2);
        int b3 = com.estrongs.android.ui.d.e.b(dVar);
        synchronized (this.y) {
            try {
                this.y.add(b3, a2);
            } catch (Exception e2) {
                a2 = null;
            }
        }
        this.at.add(new com.estrongs.android.util.p<>(a2, b2));
        return a2;
    }

    private com.estrongs.android.view.bu a(ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, String str) {
        bg bgVar = new bg(this, this, viewGroup, aVar, this.P);
        bgVar.a(this.O);
        bgVar.a(new bh(this));
        bgVar.a(new bi(this));
        bgVar.a(11);
        bgVar.a(this.bm);
        a(bgVar);
        return bgVar;
    }

    public static String a(Context context) {
        WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService(BDAccountManager.KEY_PHONE);
        String deviceId = telephonyManager != null ? telephonyManager.getDeviceId() : null;
        return (wifiManager == null || (deviceId != null && deviceId.length() >= 8)) ? deviceId : wifiManager.getConnectionInfo().getMacAddress();
    }

    private void a(ViewGroup viewGroup, com.estrongs.android.ui.d.d dVar, String str) {
        a(viewGroup, dVar, str, false);
    }

    private void a(ViewGroup viewGroup, com.estrongs.android.ui.d.d dVar, String str, boolean z) {
        ViewGroup viewGroup2;
        if (viewGroup == null) {
            viewGroup2 = new LinearLayout(this);
            viewGroup2.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            this.f.addView(viewGroup2);
        } else {
            viewGroup2 = viewGroup;
        }
        com.estrongs.android.view.ar a2 = a(this, viewGroup2, com.estrongs.android.util.ak.Q(str) ? this.m.q(str) : this.m.p(str), this.P, str);
        if (z) {
            com.estrongs.android.pop.utils.aa.a(str, a2.hashCode());
        }
        a2.a(str);
        if (dVar != null) {
            dVar.a(str);
        }
        int b2 = com.estrongs.android.ui.d.e.b(dVar);
        synchronized (this.y) {
            if (b2 >= 0) {
                if (this.y.size() > b2) {
                    this.y.remove(b2);
                    this.y.add(b2, a2);
                }
            }
            b2 = 0;
            this.y.add(b2, a2);
        }
        this.n.f(b2);
        this.x = b2;
        this.f.a(b2);
    }

    private void a(ImageView imageView) {
        t tVar = new t(this);
        u uVar = new u(this);
        if (this.u) {
            imageView.setImageResource(C0000R.drawable.main_addressbar_access_icon);
        } else {
            imageView.setImageResource(C0000R.drawable.main_addressbar_access_land);
        }
        imageView.setOnClickListener(tVar);
        imageView.setOnLongClickListener(uVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.estrongs.android.util.p<com.estrongs.android.view.ar, String> pVar, boolean z) {
        com.estrongs.android.view.ar arVar = pVar.f2706a;
        String str = pVar.f2707b;
        if (arVar == null || str == null) {
            return;
        }
        arVar.a((com.estrongs.android.view.br) null);
        if (!(arVar instanceof com.estrongs.android.ui.pcs.az) || !com.estrongs.android.util.ak.aq(pVar.f2707b) || z) {
            arVar.a(str);
            if ((arVar instanceof com.estrongs.android.ui.pcs.az) && com.estrongs.android.util.ak.aq(pVar.f2707b) && !com.estrongs.android.ui.pcs.aw.a().c()) {
                this.P.b();
            }
        }
        arVar.a(this.O);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(String str, String[] strArr) {
        String str2;
        String str3;
        String str4;
        boolean z;
        String str5;
        int indexOf;
        String str6 = null;
        com.estrongs.android.view.ar t = t();
        com.estrongs.android.ui.d.d b2 = com.estrongs.android.ui.d.e.b();
        if (str != null && b2 != null) {
            b2.a(str);
        }
        if (this.u && b2 != null) {
            str3 = b2.a(this);
            if ((com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.au(str)) && !com.estrongs.android.util.ak.aB(str) && !com.estrongs.android.util.ak.at(str) && t != null) {
                str3 = t.b() != null ? t.b().getName() : com.estrongs.android.util.ak.d(str);
            }
            if (com.estrongs.android.util.ak.aR(str) || com.estrongs.android.util.ak.aG(str)) {
                str2 = null;
                str4 = null;
            } else {
                str2 = str.contains("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files") ? com.estrongs.android.util.ak.aY(str.replace("PCS_DRIVE_Js1a7M5e_9yAcTvFX/files", "PCS_DRIVE_Js1a7M5e_9yAcTvFX")) : com.estrongs.android.util.ak.aY(str);
                if (com.estrongs.android.util.ak.aS(str2)) {
                    str4 = "/";
                } else if (com.estrongs.android.util.ak.aP(str2)) {
                    str4 = b2.a(this, str2);
                } else if (com.estrongs.android.util.ak.aB(str2)) {
                    str4 = b2.a(this, str2);
                } else {
                    str4 = com.estrongs.android.util.ak.d(str2);
                    if (com.estrongs.android.util.ak.aE(str2) && (indexOf = str4.indexOf(42)) > 0) {
                        str4 = str4.substring(indexOf + 1);
                    }
                }
            }
        } else if (com.estrongs.android.util.ak.aP(str) && !com.estrongs.android.util.ak.aU(str)) {
            str3 = com.estrongs.android.util.ak.B(str);
            str2 = null;
            str4 = null;
        } else if (str.startsWith("search:")) {
            str3 = "Search Result";
            str2 = null;
            str4 = null;
        } else {
            str2 = null;
            str3 = str;
            str4 = null;
        }
        String str7 = (com.estrongs.android.util.ak.bb(str) && this.T) ? str3 + "  " + com.estrongs.fs.impl.local.h.g() : str3;
        String ar = com.estrongs.android.util.ak.ar(com.estrongs.android.util.ak.bw(str));
        if (ar != null || str2 == null) {
            z = false;
        } else {
            ar = com.estrongs.android.util.ak.ar(com.estrongs.android.util.ak.bw(str2));
            z = true;
        }
        if (ar != null) {
            if (ar.equals("/files")) {
                str5 = (String) getText(C0000R.string.category_files);
            } else if (ar.equals("/pictures")) {
                str5 = (String) getText(C0000R.string.category_picture);
            } else if (ar.equals("/music")) {
                str5 = (String) getText(C0000R.string.category_music);
            } else if (ar.equals("/videos")) {
                str5 = (String) getText(C0000R.string.category_movie);
            } else if (ar.equals("/apps")) {
                str5 = (String) getText(C0000R.string.category_apk);
            } else if (ar.equals("/documents")) {
                str5 = (String) getText(C0000R.string.category_book);
            } else if (ar.equals("/others")) {
                str5 = (String) getText(C0000R.string.permission_other);
            }
            if (str7 == null && (str7.equals("网络硬盘") || "PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(str7))) {
                str7 = "网络硬盘";
            } else if (str4 == null && (str4.equals("网络硬盘") || "PCS_DRIVE_Js1a7M5e_9yAcTvFX".equals(str4))) {
                str4 = "网络硬盘";
                if (str5 != null && com.estrongs.android.util.ak.ar(com.estrongs.android.util.ak.bw(str)) != null) {
                    str7 = str5;
                }
            } else if (str5 != null) {
                if (z) {
                    str4 = str5;
                } else {
                    str7 = str5;
                }
            }
            if (str.contains("m.baidu.com/app")) {
                str6 = str4;
            } else {
                str7 = getString(C0000R.string.recommend_title);
            }
            strArr[0] = str7;
            strArr[1] = str6;
        }
        str5 = null;
        if (str7 == null) {
        }
        if (str4 == null) {
        }
        if (str5 != null) {
        }
        if (str.contains("m.baidu.com/app")) {
        }
        strArr[0] = str7;
        strArr[1] = str6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Thread thread) {
        int i;
        com.estrongs.android.ui.d.d c2;
        aj();
        if (!com.estrongs.android.pop.utils.aa.e) {
            com.estrongs.android.pop.utils.aa.d("/sdcard/.estrongs/hide2.txt");
            com.estrongs.android.pop.utils.aa.e = true;
        }
        if (com.estrongs.android.pop.utils.bs.a()) {
            this.aX = com.estrongs.android.ui.pcs.aw.a();
            String ae2 = this.m.ae();
            if (ae2 != null) {
                if ("pcs_temp_mode".equals(this.m.ad())) {
                    this.aX.a(2);
                } else {
                    this.aX.a(1);
                }
                this.aX.a(ae2);
                z();
            }
            try {
                ShareToken token = TokenShareManager.getInstance().getToken(0L);
                if (token != null && token.mToken != null && token.mToken.equals(ShareToken.NORMALIZED_TOKEN) && !com.estrongs.android.pop.q.a(this).d()) {
                    if ("pcs_temp_mode".equals(this.m.ad())) {
                        com.estrongs.fs.impl.i.b.l(this.aX.h());
                        com.estrongs.android.ui.pcs.aw.b();
                        this.m.f(null, null);
                    }
                    com.estrongs.android.pop.q.a(this).c();
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        int i2 = -1;
        if (com.estrongs.android.ui.d.e.c() == 0) {
            ak();
        } else {
            if (this.as != null) {
                i = -1;
                for (int i3 = 0; i3 < com.estrongs.android.ui.d.e.c(); i3++) {
                    com.estrongs.android.ui.d.d c3 = com.estrongs.android.ui.d.e.c(i3);
                    if (c3 != null && i < 0 && com.estrongs.android.util.ak.E(this.as) == com.estrongs.android.util.ak.E(c3.b())) {
                        c3.a(this.as);
                        i = i3;
                    }
                }
                if (i < 0 && com.estrongs.android.ui.d.e.c() < 8 && (c2 = com.estrongs.android.ui.d.e.c((i = com.estrongs.android.ui.d.e.a(this.as)))) != null) {
                    this.n.a(c2);
                }
            } else {
                i = -1;
            }
            for (int i4 = 0; i4 < com.estrongs.android.ui.d.e.c(); i4++) {
                com.estrongs.android.ui.d.d c4 = com.estrongs.android.ui.d.e.c(i4);
                if (c4 != null) {
                    a(c4);
                }
            }
            i2 = i;
        }
        if (i2 < 0) {
            i2 = com.estrongs.android.ui.d.e.a() > 0 ? com.estrongs.android.ui.d.e.a() : 0;
        }
        if (i2 >= 0 && i2 < com.estrongs.android.ui.d.e.c()) {
            this.f.a(i2);
            this.n.d(i2);
            com.estrongs.android.ui.d.d c5 = com.estrongs.android.ui.d.e.c(i2);
            if (c5 != null) {
                this.O.a(c5.b(), true);
            }
        }
        if (com.estrongs.android.util.ak.aN(u())) {
            com.estrongs.android.pop.app.b.a.a().c();
        }
        com.estrongs.android.view.ar t = t();
        if (t != null && (t instanceof com.estrongs.android.pop.app.diskusage.e)) {
            t.l();
        }
        aB();
        av = false;
        aG();
        if (!com.estrongs.android.pop.q.a(this).X()) {
            com.estrongs.android.pop.q.a(this).Y();
            com.estrongs.android.pop.q.a(this).k(true);
        }
        ad();
        ac();
        String c6 = com.estrongs.android.pop.q.c(this);
        if (c6 != null && !c6.equals(d + "") && d != 0) {
            this.af = true;
            com.estrongs.android.pop.q.a(this, d + "");
        }
        String stringExtra = getIntent().getStringExtra("archive_file_name");
        if (stringExtra != null) {
            c("cmpn://" + stringExtra);
        } else if ("com.estrongs.android.SHOW_DISK_USAGE".equals(getIntent().getAction())) {
            String b2 = com.estrongs.android.pop.b.b();
            if (!b2.endsWith("/")) {
                b2 = b2 + "/";
            }
            c("du://" + b2);
        } else if ("show_app".equals(getIntent().getStringExtra("action"))) {
            c("app://user");
        } else if ("from_update_notification".equals(getIntent().getStringExtra("action"))) {
            com.estrongs.android.pop.utils.c.c(M().b(this));
            c("app://update");
        }
        if (this.u || v) {
            if (this.m.an()) {
                this.aZ = new com.estrongs.android.ui.view.aq(this, this.u, v);
                this.aZ.c();
                this.m.o(false);
            }
        } else if (this.m.ao() && this.m.an()) {
            this.aZ = new com.estrongs.android.ui.view.aq(this, this.u, v);
            this.aZ.c();
            this.m.p(false);
        }
        if (!com.estrongs.android.pop.m.r) {
            thread.start();
            return;
        }
        if (!com.estrongs.android.pop.q.a(this).ap()) {
            FexApplication.f326b = true;
            thread.start();
            return;
        }
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.traffic_alert_content, (ViewGroup) null);
        CheckBox checkBox = (CheckBox) inflate.findViewById(C0000R.id.not_show_again);
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this);
        agVar.setCancelable(false);
        agVar.setTitle(getString(C0000R.string.message_hint));
        agVar.setContentView(inflate);
        agVar.setConfirmButton(getString(C0000R.string.action_start), new ce(this, checkBox, thread));
        agVar.setCancelButton(getString(C0000R.string.action_exit), new cp(this));
        agVar.show();
    }

    private static boolean a(Activity activity, String str, String str2) {
        File file = new File(activity.getFilesDir().getAbsoluteFile() + "/" + str);
        if (!file.exists()) {
            try {
                if (!a(new File(a(FexApplication.a(), FexApplication.a().getPackageName()).sourceDir), file.getAbsolutePath(), str, str2)) {
                    throw new Exception("Read Zip Error");
                }
            } catch (Exception e2) {
                file.delete();
                return false;
            }
        }
        try {
            System.load(file.getAbsolutePath());
            return true;
        } catch (Throwable th) {
            file.delete();
            th.printStackTrace();
            return false;
        }
    }

    public static boolean a(com.estrongs.android.view.ar arVar, String str) {
        if (arVar == null || arVar.c() == null) {
            return false;
        }
        if (arVar.c().startsWith("/") && com.estrongs.android.util.ak.ao(str)) {
            return true;
        }
        int E = com.estrongs.android.util.ak.E(str);
        int E2 = com.estrongs.android.util.ak.E(arVar.c());
        if (E != E2 && ((!com.estrongs.android.util.ak.a(E2) || !com.estrongs.android.util.ak.a(E)) && ((!com.estrongs.android.util.ak.b(E2) || !com.estrongs.android.util.ak.b(E)) && (!com.estrongs.android.util.ak.c(E2) || !com.estrongs.android.util.ak.c(E))))) {
            return false;
        }
        if (E == 28) {
            return str.equals(com.estrongs.android.util.ak.bu(arVar.c()));
        }
        if (E == 23) {
            return (com.estrongs.android.util.ak.aq(str) && com.estrongs.android.util.ak.aq(arVar.c())) || (com.estrongs.android.util.ak.ao(str) && com.estrongs.android.util.ak.ao(arVar.c()));
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0048, code lost:
    
        r4 = new java.io.BufferedOutputStream(new java.io.FileOutputStream(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        r2 = new java.io.BufferedInputStream(r5.getInputStream(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        r0 = r2.read(r6, 0, 1024);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0062, code lost:
    
        if (r0 <= 0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0064, code lost:
    
        r4.write(r6, 0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007d, code lost:
    
        r0 = true;
        r1 = r2;
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x006a, code lost:
    
        r3 = r2;
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x006c, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0092, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0074 A[Catch: Exception -> 0x0084, TryCatch #3 {Exception -> 0x0084, blocks: (B:37:0x006f, B:28:0x0074, B:30:0x0079), top: B:36:0x006f }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0079 A[Catch: Exception -> 0x0084, TRY_LEAVE, TryCatch #3 {Exception -> 0x0084, blocks: (B:37:0x006f, B:28:0x0074, B:30:0x0079), top: B:36:0x006f }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean a(File file, String str, String str2, String str3) {
        BufferedOutputStream bufferedOutputStream;
        ZipFile zipFile;
        ZipFile zipFile2;
        boolean z;
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        bufferedInputStream2 = null;
        BufferedOutputStream bufferedOutputStream2 = null;
        bufferedInputStream2 = null;
        boolean z2 = false;
        byte[] bArr = new byte[1024];
        try {
            zipFile2 = new ZipFile(file);
            try {
                Enumeration<? extends ZipEntry> entries = zipFile2.entries();
                while (true) {
                    if (!entries.hasMoreElements()) {
                        z = false;
                        bufferedInputStream = null;
                        break;
                    }
                    ZipEntry nextElement = entries.nextElement();
                    if (!nextElement.isDirectory() && ("lib/" + str3 + "/" + str2).equals(nextElement.getName())) {
                        break;
                    }
                }
                bufferedOutputStream = bufferedOutputStream2;
                bufferedInputStream2 = bufferedInputStream;
                z2 = z;
            } catch (Exception e2) {
                bufferedOutputStream = null;
                zipFile = zipFile2;
            }
        } catch (Exception e3) {
            bufferedOutputStream = null;
            zipFile = null;
        }
        if (zipFile2 != null) {
            try {
                zipFile2.close();
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        }
        if (bufferedInputStream2 != null) {
            bufferedInputStream2.close();
        }
        if (bufferedOutputStream != null) {
            bufferedOutputStream.close();
        }
        return z2;
    }

    private boolean a(String str, int i, int i2) {
        try {
            InputStream openRawResource = getResources().openRawResource(i);
            if (!com.estrongs.android.util.aw.a(openRawResource, str, i2)) {
                return false;
            }
            openRawResource.close();
            return true;
        } catch (Exception e2) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, String str2, boolean z) {
        com.estrongs.fs.d a2 = com.estrongs.fs.d.a(this);
        String str3 = str.charAt(str.length() + (-1)) != '/' ? z ? str + "/" + str2 + "/" : str + "/" + str2 : z ? str + str2 + "/" : str + str2;
        try {
            if (t().d(str3)) {
                com.estrongs.android.ui.view.z.a(this, getText(C0000R.string.operation_fail_file_exist), 0).show();
                return false;
            }
            new bk(this, a2, str3, z, str2).start();
            b(getString(C0000R.string.object_created_async_msg, new Object[]{str2}));
            return true;
        } catch (Exception e2) {
            com.estrongs.android.ui.view.z.a(this, ((Object) getText(C0000R.string.operation_failed)) + ":" + e2.getMessage(), 0).show();
            return false;
        }
    }

    private void aA() {
        if (com.estrongs.android.ui.pcs.cl.a(this)) {
            com.estrongs.android.ui.pcs.aw.a().a(new ah(this));
        }
        this.an = (RelativeLayout) findViewById(C0000R.id.container_tools_bottom);
        this.k = new com.estrongs.android.ui.e.w(this, this.u);
        this.i = this.k.l();
        if ("edit_mode".equals(this.j)) {
            this.k.d(this.ag);
            this.k.n();
        } else {
            this.i.a(this.j, (Boolean) false);
        }
        com.estrongs.android.view.ar t = t();
        if (t == null || t.w() == null) {
            return;
        }
        this.bm.a(t.w());
    }

    private void aB() {
    }

    private void aC() {
        if (this.aT != null) {
            ((ImageView) this.aT.findViewById(C0000R.id.tool_done)).setOnClickListener(new ao(this));
            ((ImageView) this.aT.findViewById(C0000R.id.tool_select_all)).setOnClickListener(new ap(this));
            ((ImageView) this.aT.findViewById(C0000R.id.tool_select_none)).setOnClickListener(new aq(this));
            ((ImageView) this.aT.findViewById(C0000R.id.tool_select_interval)).setOnClickListener(new ar(this));
        }
    }

    private void aD() {
        if (this.ax != null && this.f != null) {
            this.ax.removeView(this.f);
        }
        if (this.n != null) {
            this.n.c();
        }
    }

    private void aE() {
        if (this.i != null) {
            this.i.c();
        }
        com.estrongs.android.view.n.g();
        com.estrongs.android.ui.g.a.d();
        com.estrongs.android.ui.g.c.d();
        this.am = null;
        this.ak = null;
        if (this.az != null) {
            this.az.a();
            this.az.b();
        }
        this.ay = null;
        this.aQ = null;
        if (this.aS != null) {
            this.aV.removeView(aI().d());
        }
        this.aS = null;
        this.ap = null;
        this.aq = null;
        this.E = null;
        int i = 0;
        while (true) {
            try {
                int i2 = i;
                if (i2 >= this.y.size()) {
                    return;
                }
                if (this.y.get(i2) instanceof com.estrongs.android.ui.pcs.az) {
                    ((com.estrongs.android.ui.pcs.az) this.y.get(i2)).r();
                }
                i = i2 + 1;
            } catch (Exception e2) {
                return;
            }
        }
    }

    private int aF() {
        PackageInfo packageInfo = null;
        try {
            packageInfo = getPackageManager().getPackageInfo(getPackageName(), 8192);
        } catch (Exception e2) {
        }
        if (packageInfo != null) {
            return packageInfo.versionCode;
        }
        return 0;
    }

    private void aG() {
        this.bt = new by(this);
        this.bu = new bz(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        registerReceiver(this.bu, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter2.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter2.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter2.addDataScheme("file");
        registerReceiver(this.bt, intentFilter2);
    }

    private void aH() {
        try {
            if (this.bu != null) {
                unregisterReceiver(this.bu);
            }
            if (this.bt != null) {
                unregisterReceiver(this.bt);
            }
        } catch (Exception e2) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.estrongs.android.ui.f.a aI() {
        if (v && !this.au) {
            return null;
        }
        if (this.aS == null) {
            this.aS = new com.estrongs.android.ui.f.a(this, this.aV, this.ai);
            this.aS.a(false);
        }
        return this.aS;
    }

    private boolean aJ() {
        for (String str : new String[]{"/system/bin/su", "/system/xbin/su"}) {
            if (new File(str).exists()) {
                return true;
            }
        }
        return false;
    }

    private void aK() {
        ImageView imageView = (ImageView) findViewById(C0000R.id.full_screen_button);
        imageView.setOnClickListener(new cc(this));
        imageView.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void aL() {
        this.ba = new HashMap<>();
        this.ba.put("back", new cf(this));
        this.ba.put("close_current", new cg(this));
        this.ba.put("refresh", new ch(this));
        this.ba.put("open_lib_pic", new ci(this));
        this.ba.put("open_lib_music", new cj(this));
        this.ba.put("open_lib_video", new ck(this));
        this.ba.put("open_lib_text", new cl(this));
        this.ba.put("show_navi", new cm(this));
        this.ba.put("exit", new cn(this));
        this.ba.put("open_settings", new co(this));
        this.ba.put("smb://", new cq(this));
        this.ba.put("net://", new cr(this));
        this.ba.put("pcs://", new cs(this));
        this.ba.put("ftp://", new ct(this));
        this.ba.put("bt://", new cu(this));
        this.ba.put("app://user", new cv(this));
        this.ba.put("download://", new cw(this));
        this.ba.put("task_manager", new cx(this));
        this.ba.put("du://", new cy(this));
        this.ba.put("remote://", new cz(this));
        this.ba.put("net_manager", new dc(this));
        this.ba.put("clipboard", new dd(this));
        this.ba.put("hide_list", new de(this));
        this.ba.put("root_explorer", new df(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ab() {
        com.estrongs.android.view.ar t = t();
        String c2 = t == null ? "" : t.c();
        boolean z = com.estrongs.fs.d.a(this).l(c2) > 0 || com.estrongs.android.util.ak.aL(c2);
        if (this.D != null) {
            if (z && t != null && t.m()) {
                this.D.setVisibility(0);
            } else {
                this.D.setVisibility(8);
            }
        }
        if (this.E != null) {
            if (com.estrongs.android.util.ak.aL(c2) && t != null && t.m()) {
                this.E.setVisibility(0);
            } else {
                this.E.setVisibility(8);
            }
        }
    }

    private void ac() {
        com.estrongs.a.l.a().a(new da(this));
    }

    private void ad() {
        this.bg = new c(this);
        this.bh = new d(this);
    }

    private boolean ae() {
        boolean as = this.m.as();
        boolean z = as != this.bl;
        this.bl = as;
        return z;
    }

    private boolean af() {
        boolean ak = this.m.ak();
        boolean z = ak != this.be;
        this.be = ak;
        boolean am = this.m.am();
        boolean z2 = z | (am != this.bf);
        this.bf = am;
        return z2;
    }

    private boolean ag() {
        boolean z = this.bn;
        this.bn = com.estrongs.android.pop.q.a(this).p();
        return z != this.bn;
    }

    private boolean ah() {
        boolean z = this.T;
        this.T = com.estrongs.android.pop.q.a(this).y();
        return z != this.T;
    }

    private void ai() {
        boolean h = com.estrongs.android.pop.q.a(this).h();
        boolean i = com.estrongs.android.pop.q.a(this).i();
        synchronized (this.y) {
            for (com.estrongs.android.view.ar arVar : this.y) {
                if (arVar != null) {
                    arVar.f(h);
                    try {
                        arVar.g(!i);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    private void aj() {
        com.estrongs.android.d.d.a(new com.estrongs.android.d.c(this));
        com.estrongs.fs.d.a(com.estrongs.android.util.ak.bi("search://"), com.estrongs.fs.impl.m.b.a());
        if (com.estrongs.android.util.aw.e()) {
            com.estrongs.fs.d.a(com.estrongs.android.util.ak.bi("book://"), new com.estrongs.fs.impl.d.c());
            com.estrongs.fs.d.a(com.estrongs.android.util.ak.bi("apk://"), new com.estrongs.fs.impl.a.c());
        } else {
            com.estrongs.fs.d.a(com.estrongs.android.util.ak.bi("book://"), com.estrongs.fs.impl.d.b.a());
            com.estrongs.fs.d.a(com.estrongs.android.util.ak.bi("apk://"), com.estrongs.fs.impl.a.b.a());
        }
    }

    private void ak() {
        String bo = this.as == null ? com.estrongs.android.util.ak.bo(com.estrongs.android.util.ak.bp(this.m.e("Market"))) : this.as;
        String b2 = com.estrongs.android.util.aw.a((CharSequence) bo) ? com.estrongs.android.pop.b.b() : bo;
        com.estrongs.android.ui.d.d dVar = new com.estrongs.android.ui.d.d(b2);
        com.estrongs.android.ui.d.e.a(dVar);
        this.n.a(dVar);
        this.n.d(com.estrongs.android.ui.d.e.a());
        this.n.e(this.n.d());
        RelativeLayout relativeLayout = (RelativeLayout) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.content_main, (ViewGroup) null);
        this.f.addView(relativeLayout);
        synchronized (this.y) {
            this.y.add(null);
        }
        a((ViewGroup) relativeLayout.findViewById(C0000R.id.content_main), dVar, b2);
    }

    private void al() {
        this.al = (LinearLayout) this.aj.findViewById(C0000R.id.textbar_top);
        if (this.n == null) {
            this.n = new e(this, this.al, this);
        } else {
            this.n.a(this.al);
        }
    }

    private void am() {
        if (this.bd) {
            return;
        }
        this.bd = true;
        com.estrongs.android.ui.pcs.az.f2303b = null;
        if (com.estrongs.android.pop.app.b.a.f471a && com.estrongs.android.pop.q.a(this).D()) {
            com.estrongs.android.pop.app.b.a.a().d();
        }
        com.estrongs.android.pop.q.a(this).e();
        try {
            com.estrongs.a.b.d.a();
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        an();
        com.estrongs.android.d.d.c();
        com.estrongs.android.ui.theme.al.l();
        aE();
        com.estrongs.android.view.n.j();
        com.estrongs.android.pop.app.b.a.a().j();
        com.estrongs.android.pop.app.b.a.a().g();
        com.estrongs.android.pop.view.utils.n.b().a();
        com.estrongs.android.ui.h.a.c();
        new f(this, com.estrongs.android.pop.q.a(this).z()).start();
        aH();
        com.estrongs.android.view.ar.af();
        if (com.estrongs.android.pop.q.a(this).ap()) {
            FexApplication.f326b = false;
        }
    }

    private void an() {
        com.estrongs.android.ftp.a e2 = com.estrongs.android.ftp.a.e();
        if (com.estrongs.android.pop.q.a(this).R() && e2 != null && e2.i()) {
            com.estrongs.android.ftp.k.a(this);
        }
    }

    private void ao() {
        this.h = new h(this);
    }

    private void ap() {
        if (this.f == null) {
            this.f = new i(this, this);
            this.f.a(new j(this));
            this.f.a(this.y);
        }
        this.f.a(this.az);
        this.ax.removeAllViews();
        this.ax.addView(this.f, new FrameLayout.LayoutParams(-1, -1));
        this.az.a((com.estrongs.android.ui.drag.i) this.f);
    }

    private void aq() {
        com.estrongs.android.ui.d.d c2;
        this.ai.removeAllViewsInLayout();
        if (!v || this.au) {
            this.aj = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.body_main, (ViewGroup) null);
            this.ai.addView(this.aj);
        } else {
            View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.navi_page1, (ViewGroup) null);
            this.ai.addView(inflate);
            LinearLayout linearLayout = (LinearLayout) inflate.findViewById(C0000R.id.right);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) linearLayout.getLayoutParams();
            layoutParams.weight = 1.0f;
            layoutParams.width = 0;
            this.aj = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.port_body_main, (ViewGroup) null);
            linearLayout.addView(this.aj);
            View findViewById = inflate.findViewById(C0000R.id.left);
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) findViewById.getLayoutParams();
            layoutParams2.weight = 0.0f;
            layoutParams2.width = getResources().getDisplayMetrics().widthPixels / 4;
            setTabletSideBar(findViewById);
        }
        this.B = (Button) findViewById(C0000R.id.tool_history);
        av();
        aA();
        this.aj.setBackgroundDrawable(this.ah.g());
        al();
        int i = -1;
        if (com.estrongs.android.ui.d.e.c() != 0 && this.as != null) {
            int i2 = -1;
            for (int i3 = 0; i3 < com.estrongs.android.ui.d.e.c(); i3++) {
                com.estrongs.android.ui.d.d c3 = com.estrongs.android.ui.d.e.c(i3);
                if (c3 != null && i2 < 0 && com.estrongs.android.util.ak.E(this.as) == com.estrongs.android.util.ak.E(c3.b())) {
                    c3.a(this.as);
                    i2 = i3;
                }
            }
            i = i2;
        }
        if (i < 0) {
            i = com.estrongs.android.ui.d.e.a() > 0 ? com.estrongs.android.ui.d.e.a() : 0;
        }
        String b2 = (i < 0 || i >= com.estrongs.android.ui.d.e.c() || (c2 = com.estrongs.android.ui.d.e.c(i)) == null) ? null : c2.b();
        if (b2 == null) {
            b2 = com.estrongs.android.util.ak.bo(com.estrongs.android.util.ak.bp(this.m.e("Market")));
        }
        if (com.estrongs.android.util.aw.a((CharSequence) b2)) {
            b2 = com.estrongs.android.pop.b.b();
        }
        i(b2);
        String[] strArr = new String[2];
        a(b2, strArr);
        String str = strArr[0];
        String str2 = strArr[1];
        if (str == null && com.estrongs.android.util.ak.aS(b2)) {
            this.B.setText("/");
        } else {
            this.B.setText(str);
        }
        if (this.u && this.A != null) {
            if (str2 != null) {
                this.A.setVisibility(0);
                this.A.setText(str2);
            } else {
                this.A.setVisibility(8);
            }
        }
        if (d()) {
            return;
        }
        aK();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ar() {
        this.D = (ProgressBar) findViewById(C0000R.id.ind_loading);
        this.ax = (DragLayer) this.aj.findViewById(C0000R.id.container_switcher);
        this.ax.setBackgroundDrawable(this.ah.g());
        if (this.az == null) {
            this.az = new com.estrongs.android.ui.drag.d(this);
        }
        this.ax.a(this.az);
        synchronized (this.y) {
            for (com.estrongs.android.view.ar arVar : this.y) {
                if (arVar != null) {
                    arVar.a(arVar.C());
                }
            }
        }
        ap();
        this.g = (LinearLayout) findViewById(C0000R.id.toolbar_container_top);
        this.am = findViewById(C0000R.id.include_tools_top);
        a((ImageView) findViewById(C0000R.id.tool_fast_access));
        if (this.au || v) {
            aw();
        } else {
            ax();
        }
        az();
        if (this.r) {
            m();
        }
        this.aT = findViewById(C0000R.id.select_bar_top);
        this.aU = (TextView) findViewById(C0000R.id.selected_info);
        aC();
        if ("edit_mode".equals(this.i.b())) {
            this.aT.setVisibility(0);
            this.aU.setVisibility(0);
            com.estrongs.android.view.ar t = t();
            if (t != null && this.bm != null) {
                this.bm.a(t.w());
            }
        } else {
            this.aT.setVisibility(4);
        }
        b(this.f1119a);
        this.aj.setBackgroundColor(0);
        for (int i = 0; i < this.y.size(); i++) {
            try {
                if (this.y.get(i) instanceof com.estrongs.android.ui.pcs.az) {
                    com.estrongs.android.ui.pcs.az azVar = (com.estrongs.android.ui.pcs.az) this.y.get(i);
                    if (azVar.equals(t())) {
                        azVar.l();
                    }
                }
            } catch (Exception e2) {
                return;
            }
        }
    }

    private void as() {
        aq();
        ar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void at() {
        if (this.az == null) {
        }
        if (this.aB == null) {
            this.aB = new m(this);
        }
        if (this.aF == null) {
            this.aF = new n(this);
        }
        if (this.aJ == null) {
            this.aJ = new o(this);
        }
        if (this.aN == null) {
            this.aN = new p(this);
        }
        if (this.aC == null) {
            this.aC = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
            this.aC.setDuration(150L);
            this.aD = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, -1.0f);
            this.aD.setDuration(150L);
        }
        if (this.aG == null) {
            this.aG = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
            this.aG.setDuration(150L);
            this.aH = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, -1.0f);
            this.aH.setDuration(150L);
        }
        if (this.aK == null) {
            this.aK = new TranslateAnimation(1, -1.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            this.aK.setDuration(150L);
            this.aL = new TranslateAnimation(1, 0.0f, 1, -1.0f, 1, 0.0f, 1, 1.0f);
            this.aL.setDuration(150L);
        }
        if (this.aO == null) {
            this.aO = new TranslateAnimation(1, 1.0f, 1, 0.0f, 1, 1.0f, 1, 0.0f);
            this.aO.setDuration(150L);
            this.aP = new TranslateAnimation(1, 0.0f, 1, 1.0f, 1, 0.0f, 1, 1.0f);
            this.aP.setDuration(150L);
            this.aP.setAnimationListener(new q(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void au() {
        if (this.ay == null) {
            this.ay = (DragLayer) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.drag_action_layer, (ViewGroup) null);
            this.ai.addView(this.ay);
            this.aA = (DragActionZone) this.ay.findViewById(C0000R.id.drag_action_zone1);
            this.aA.a(0);
            this.aA.a(this.aB);
            this.aE = (DragActionZone) this.ay.findViewById(C0000R.id.drag_action_zone2);
            this.aE.a(1);
            this.aE.a(this.aF);
            this.aI = (DragActionZone) this.ay.findViewById(C0000R.id.drag_action_zone3);
            this.aI.a(2);
            this.aI.a(this.aJ);
            this.aM = (DragActionZone) this.ay.findViewById(C0000R.id.drag_action_zone4);
            this.aM.a(3);
            this.aM.a(this.aN);
        }
    }

    private void av() {
        View findViewById = findViewById(C0000R.id.tool_up);
        if (findViewById instanceof Button) {
            this.A = (Button) findViewById;
        } else {
            this.A = null;
        }
        findViewById.setOnClickListener(new r(this));
        findViewById.setOnLongClickListener(new s(this));
    }

    private void aw() {
        Button button = (Button) findViewById(C0000R.id.tool_history);
        v vVar = new v(this);
        if (this.u) {
            this.C = (LinearLayout) findViewById(C0000R.id.iv_history);
            this.C.setOnClickListener(vVar);
        } else {
            button.setOnLongClickListener(new z(this));
            button.setOnClickListener(vVar);
        }
    }

    private void ax() {
        ImageButton imageButton = (ImageButton) findViewById(C0000R.id.tool_history_button);
        if (imageButton == null) {
            return;
        }
        imageButton.setOnClickListener(new aa(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ay() {
        Message message = new Message();
        if (com.estrongs.android.ui.d.e.c() <= 1) {
            message.what = FTPReply.SYSTEM_STATUS;
        } else {
            message.what = 2;
            message.arg1 = com.estrongs.android.ui.d.e.a();
        }
        if (this.h != null) {
            this.h.sendMessage(message);
        }
        if (this.f.f()) {
            this.f.a(false);
        }
    }

    private void az() {
        this.ao = (ImageView) findViewById(C0000R.id.tool_multi_window);
        if (this.ao == null) {
            return;
        }
        ae aeVar = new ae(this);
        af afVar = new af(this);
        if (!this.u) {
            this.ao.setImageResource(C0000R.drawable.toolbar_close);
        }
        this.ao.setOnClickListener(aeVar);
        this.ao.setOnLongClickListener(afVar);
    }

    private com.estrongs.android.view.ar b(ViewGroup viewGroup, com.estrongs.fs.c.a.a aVar, String str) {
        com.estrongs.android.ui.pcs.az azVar = new com.estrongs.android.ui.pcs.az(this, viewGroup, aVar, this.P);
        if (!com.estrongs.android.ui.pcs.aw.a().c()) {
            azVar.c_();
        }
        azVar.a(this.O);
        azVar.a(this.R);
        azVar.a(this.S);
        azVar.a(this.bm);
        azVar.a(com.estrongs.android.pop.view.utils.ac.b(this, str));
        azVar.b(this.Q);
        azVar.a(this.az);
        azVar.j(this.ah.h());
        a(azVar);
        return azVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i, int i2) {
        if (this.k == null) {
            return;
        }
        this.ag = i;
        this.k.d(i);
        aB();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Context context) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.apk_falsified_alert, (ViewGroup) null);
        ((TextView) inflate.findViewById(C0000R.id.message)).setText(MessageFormat.format(getString(C0000R.string.apk_falsified_message), getString(getApplicationInfo().labelRes)));
        CheckBox checkBox = (CheckBox) inflate.findViewById(C0000R.id.cbxNotShowAlert);
        com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(this);
        agVar.setCancelable(false);
        agVar.setTitle(getString(C0000R.string.message_alert));
        agVar.setContentView(inflate);
        agVar.setSingleButton(getString(C0000R.string.confirm_ok), new cd(this, checkBox));
        agVar.show();
    }

    private void b(com.estrongs.android.view.ar arVar) {
        View inflate = com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.dialog_library_refresh, (ViewGroup) null);
        View findViewById = inflate.findViewById(C0000R.id.item1);
        View findViewById2 = inflate.findViewById(C0000R.id.item2);
        com.estrongs.android.ui.b.ag b2 = new com.estrongs.android.ui.b.aq(this).a(C0000R.string.action_refresh).a(inflate).b();
        findViewById.setOnClickListener(new ac(this, arVar, b2));
        findViewById2.setOnClickListener(new ad(this, arVar, b2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, String str2) {
        com.estrongs.android.view.ar t = t();
        if (t != null) {
            String obj = this.aw.getText().toString();
            if (e(t.c())) {
                if (this.ab == null) {
                    this.ab = new dl(this);
                }
                t.a(this.ab);
                this.ab.a(obj);
                t.b(false);
                return;
            }
            if (com.estrongs.android.util.ak.aL(str)) {
                str = com.estrongs.android.util.ak.bj(str);
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("searchPath").append("=").append(str);
            if (obj != null && obj.trim().length() > 0) {
                stringBuffer.append("&&").append("keyword").append("=").append(Uri.encode(obj));
            }
            if (str2 != null && str2.length() > 0) {
                stringBuffer.append("&&").append("category").append("=").append(str2);
            }
            stringBuffer.append("&&").append("recursion").append("=").append("true");
            l(stringBuffer.toString());
        }
    }

    private void d(String str, boolean z) {
        com.estrongs.android.ui.d.d dVar = str == null ? new com.estrongs.android.ui.d.d("New") : new com.estrongs.android.ui.d.d(str);
        int a2 = com.estrongs.android.ui.d.e.a() + 1;
        synchronized (this.y) {
            if (a2 > this.y.size()) {
                return;
            }
            int i = this.y.size() == 0 ? 0 : a2;
            com.estrongs.android.ui.d.e.a(dVar, i);
            this.n.a(dVar, i);
            this.y.add(i, null);
            RelativeLayout relativeLayout = (RelativeLayout) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.content_main, (ViewGroup) null);
            ViewGroup viewGroup = (ViewGroup) relativeLayout.findViewById(C0000R.id.content_main);
            this.f.addView(relativeLayout, i);
            f(i);
            if (str != null) {
                viewGroup.setVisibility(0);
                a(viewGroup, dVar, str, z);
                if (com.estrongs.android.util.ak.aN(str)) {
                    com.estrongs.android.pop.app.b.a.a().c();
                }
            }
        }
    }

    private void e(String str, boolean z) {
        try {
            a(str + "/es_dropbox.jar", C0000R.raw.netdisk_dropbox, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_dropbox));
            a(str + "/es_sugarsync.jar", C0000R.raw.netdisk_sugarsync, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_sugarsync));
            a(str + "/es_boxnet.jar", C0000R.raw.netdisk_boxnet, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_boxnet));
            a(str + "/es_kanbox.jar", C0000R.raw.netdisk_kanbox, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_kanbox));
            a(str + "/es_kuaipan.jar", C0000R.raw.netdisk_kuaipan, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_kuaipan));
            a(str + "/es_vdisk.jar", C0000R.raw.netdisk_vdisk, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_vdisk));
            a(str + "/es_skydrv.jar", C0000R.raw.netdisk_skydrv, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_skydrv));
            a(str + "/es_gdrive.jar", C0000R.raw.netdisk_gdrive, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_gdrive));
            a(str + "/es_s3.jar", C0000R.raw.netdisk_s3, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_s3));
            a(str + "/es_ubuntu.jar", C0000R.raw.netdisk_ubuntu, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_ubuntu));
            a(str + "/es_megacloud.jar", C0000R.raw.netdisk_megacloud, z ? -1 : com.estrongs.android.util.aw.a((Context) bq, C0000R.raw.netdisk_megacloud));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void i(String str) {
        b(j(str), 0);
    }

    private void i(boolean z) {
        if (this.ap == null) {
            this.ap = (DragLayer) com.estrongs.android.pop.esclasses.e.a(this).inflate(C0000R.layout.pop_multi_window, (ViewGroup) null);
            this.ai.addView(this.ap);
            this.aq = new com.estrongs.android.ui.a.cp(this, this.ap, this.h);
        }
        this.aq.b();
        this.aq.a(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j(String str) {
        int i = this.ag;
        return ft.a(str);
    }

    private void j(boolean z) {
        if (this.aT != null && this.aT.getVisibility() == 0) {
            if (z) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.1f);
                alphaAnimation.setDuration(200L);
                alphaAnimation.setInterpolator(new AccelerateInterpolator());
                this.aT.setAnimation(alphaAnimation);
                alphaAnimation.start();
            }
            this.aT.setVisibility(8);
            if (!this.u) {
                findViewById(C0000R.id.tools_top_container).setVisibility(0);
            }
        }
        if (this.aU != null) {
            this.aU.setVisibility(4);
        }
    }

    private void k(String str) {
        if (!com.estrongs.android.util.ak.aU(str)) {
            if (!com.estrongs.android.util.ak.aP(str)) {
            }
            I();
        } else if (com.estrongs.android.util.ak.aJ(str)) {
            G();
        } else if (com.estrongs.android.util.ak.F(str)) {
            H();
        } else {
            a(C0000R.string.search_path_invalid);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(String str) {
        long ac;
        com.estrongs.android.view.ar t = t();
        if (t == null) {
            return;
        }
        if (t.ac() == 0) {
            ac = System.currentTimeMillis();
            t.a(ac);
        } else {
            ac = t.ac();
        }
        String str2 = "search://" + ac + "/" + com.estrongs.fs.a.a.d(com.estrongs.android.pop.app.b.i.a("searchPath", str)).replace("/", "#");
        TypedMap typedMap = new TypedMap();
        typedMap.put("pattern", str);
        typedMap.put("refresh", "true");
        t.a(str2, typedMap);
    }

    private void m(String str) {
        if (str.equalsIgnoreCase("Market")) {
            str = "Google Market";
        }
        com.estrongs.android.util.a.a(str);
    }

    public void A() {
        this.k.m();
    }

    public void B() {
        this.z.clear();
    }

    public boolean C() {
        return f(u());
    }

    public void F() {
        String[] k;
        this.h.post(new bu(this));
        if (com.estrongs.android.pop.q.a(this).j() && com.estrongs.fs.impl.local.h.a((Context) this, true)) {
            String a2 = com.estrongs.fs.impl.local.h.a(com.estrongs.fs.impl.local.h.k());
            String at = com.estrongs.android.pop.q.a(this).at();
            if (at.length() > 0 && !a2.equals(at) && (k = com.estrongs.fs.impl.local.h.k(at)) != null && k.length > 0) {
                try {
                    com.estrongs.fs.impl.local.h.b(k);
                } catch (Exception e2) {
                }
            }
        }
        try {
            if (!com.estrongs.android.util.ax.c().a()) {
                com.estrongs.android.util.ax.c().b();
            }
        } catch (Exception e3) {
        }
        if (!com.estrongs.android.pop.m.t) {
            try {
                boolean r = com.estrongs.android.pop.q.a(this).r();
                if ((r && N != null && new GregorianCalendar(TimeZone.getTimeZone("GMT")).before(N)) ? false : r) {
                    if (new Date().getTime() - com.estrongs.android.pop.q.a(this).F() > 1296000000) {
                        a(11, (Object) null, 3000, 0);
                    }
                }
            } catch (Exception e4) {
            }
        }
        if (com.estrongs.android.pop.utils.bs.a() && com.estrongs.android.pop.q.a(this).aH() != com.estrongs.android.util.l.a() && com.estrongs.android.util.ai.b(this)) {
            com.estrongs.android.pop.q.a(this).aG();
            M().a(this);
        }
        try {
            if (this.af) {
                com.estrongs.fs.impl.local.h.a((Context) FexApplication.f325a);
                e(com.estrongs.android.util.i.a(), true);
            } else {
                e(com.estrongs.android.util.i.a(), false);
            }
        } catch (Exception e5) {
        }
        if (Looper.myLooper() == null) {
            Looper.prepare();
        }
        try {
            if (Settings.System.getString(getContentResolver(), "time_12_24").equals("24")) {
                M = true;
            } else {
                M = false;
            }
        } catch (Exception e6) {
        }
        com.estrongs.android.util.g.c();
        try {
            com.estrongs.a.b.d.a(this, (String) null);
        } catch (Exception e7) {
            e7.printStackTrace();
        }
        new Thread(new bv(this), "Synchronize Files").start();
    }

    public boolean G() {
        return com.estrongs.android.pop.app.b.a.a().b();
    }

    public boolean H() {
        com.estrongs.android.pop.app.b.c.b(this);
        return true;
    }

    public boolean I() {
        if (v() == null) {
            return false;
        }
        Intent intent = new Intent();
        String absolutePath = v().getAbsolutePath();
        if (com.estrongs.android.util.ak.aL(absolutePath)) {
            absolutePath = com.estrongs.android.util.ak.bj(absolutePath);
        }
        intent.putExtra("CURRENT_WORKING_PATH", absolutePath);
        EditText editText = (EditText) findViewById(C0000R.id.edittext_search_bar);
        if (editText != null && editText.getText().toString().length() > 0) {
            intent.putExtra("keyword", editText.getText().toString());
        }
        new com.estrongs.android.pop.app.b.q(this, intent).a(new bw(this)).a();
        return true;
    }

    public void J() {
        int a2 = com.estrongs.android.ui.d.e.a();
        synchronized (this.y) {
            for (int i = 0; i < this.y.size(); i++) {
                com.estrongs.android.view.ar arVar = this.y.get(i);
                if (arVar != null && com.estrongs.android.util.ak.Q(arVar.c())) {
                    if (a2 == i) {
                        arVar.b(true);
                    } else {
                        arVar.j(true);
                    }
                }
            }
        }
    }

    public com.estrongs.android.ui.f.a K() {
        return this.aS;
    }

    public boolean L() {
        return this.bd;
    }

    public com.estrongs.android.pop.utils.c M() {
        if (this.bv == null) {
            this.bv = new com.estrongs.android.pop.utils.c(this);
        }
        return this.bv;
    }

    public void N() {
        this.bo = true;
        finish();
        startActivity(new Intent(this, (Class<?>) FileExplorerActivity.class));
    }

    public void O() {
        this.h.postDelayed(new cb(this), 200L);
    }

    public void T() {
        this.bc.setVisibility(8);
        this.K = null;
        getWindow().setSoftInputMode(this.L);
    }

    public boolean U() {
        return this.bc.getVisibility() == 0;
    }

    public void V() {
        if (this.bk) {
            return;
        }
        this.h.post(new dg(this));
        this.bk = true;
    }

    public void W() {
        try {
            synchronized (this.y) {
                if (!com.estrongs.android.util.ak.bz(u())) {
                    List<com.estrongs.android.view.ar> list = this.y;
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 < list.size()) {
                            com.estrongs.android.view.ar arVar = list.get(i2);
                            if (arVar != null && com.estrongs.android.util.ak.bz(arVar.c())) {
                                arVar.a(true, true);
                                break;
                            }
                            i = i2 + 1;
                        } else {
                            break;
                        }
                    }
                } else {
                    a(new dj(this));
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void X() {
        runOnUiThread(new dk(this));
    }

    public boolean Y() {
        return av;
    }

    public Intent a(Intent intent, com.estrongs.fs.g gVar) {
        if (gVar instanceof SPFileObject) {
            SPFileObject sPFileObject = (SPFileObject) gVar;
            intent.putExtra("ownerId", sPFileObject.getOwnerId());
            intent.putExtra("ownerName", sPFileObject.getOwnerUsername());
            intent.putExtra("name", sPFileObject.getName());
            intent.putExtra("desc", sPFileObject.getDescription());
            if (sPFileObject.lastModified() > 0) {
                intent.putExtra("createdTime", sPFileObject.lastModified());
            }
        }
        intent.putExtra("title", gVar.getName());
        intent.putExtra("pic_path", gVar.getPath());
        intent.putExtra("pic_abs_path", gVar.getAbsolutePath());
        intent.putExtra("is_dir", gVar.getFileType().a());
        return intent;
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected View a() {
        return this.g;
    }

    public void a(int i) {
        com.estrongs.android.ui.view.z.a(this, getText(i), 0).show();
    }

    public void a(int i, int i2) {
        if (this.aT != null) {
            if (i == i2) {
                this.aT.findViewById(C0000R.id.tool_select_none).setVisibility(0);
                this.aT.findViewById(C0000R.id.tool_select_all).setVisibility(8);
            } else {
                this.aT.findViewById(C0000R.id.tool_select_none).setVisibility(8);
                this.aT.findViewById(C0000R.id.tool_select_all).setVisibility(0);
            }
            this.aU.setText(i + "/" + i2);
            ImageView imageView = (ImageView) this.aT.findViewById(C0000R.id.tool_select_interval);
            boolean y = t().y();
            imageView.setEnabled(y);
            if (y) {
                imageView.setColorFilter((ColorFilter) null);
            } else {
                imageView.setColorFilter(new LightingColorFilter(1, -7829368));
            }
        }
    }

    public synchronized void a(int i, Object obj, int i2, int i3) {
        Message obtain = Message.obtain(this.ad, i, obj);
        obtain.arg1 = i3;
        if (i2 == 0) {
            this.ad.sendMessage(obtain);
        } else {
            this.ad.sendMessageDelayed(obtain, i2);
        }
    }

    public void a(int i, String str, DialogInterface.OnClickListener onClickListener, int i2, String str2) {
        if (this.W == null) {
            this.X = com.estrongs.android.pop.q.a(this).p();
            this.W = new com.estrongs.android.widget.g(this, str2, new bl(this), i2);
            this.W.a(false);
            this.W.c(getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
        } else if (this.X != com.estrongs.android.pop.q.a(this).p()) {
            this.X = com.estrongs.android.pop.q.a(this).p();
            this.W.b(true);
            this.W.b(str2);
        } else {
            this.W.b(true);
        }
        this.W.a(i2);
        this.W.a((CharSequence) str);
        this.W.b(getString(C0000R.string.confirm_ok), onClickListener);
        this.W.h();
    }

    public void a(int i, boolean z) {
        int i2 = 1;
        com.estrongs.android.view.ar t = t();
        if (t == null) {
            return;
        }
        int d2 = t.d();
        if (com.estrongs.android.util.ak.aU(u())) {
            i2 = i == 0 ? 9 : i == 1 ? 10 : 11;
        } else if (i != 0) {
            i2 = i == 1 ? z ? 5 : 2 : z ? 6 : 3;
        }
        this.k.e(i2);
        a(i, d2);
    }

    public void a(Intent intent) {
        super.startActivity(intent);
    }

    public void a(Gesture gesture) {
        List<String> b2 = com.estrongs.android.ui.guesture.b.b();
        if (b2 == null || b2.size() == 0) {
            com.estrongs.android.ui.view.z.a(bq, getString(C0000R.string.gesture_manage_empty) + "\n" + getString(C0000R.string.gesture_message_setting), 0).show();
            return;
        }
        String a2 = com.estrongs.android.ui.guesture.b.a(gesture);
        if (a2 != null) {
            try {
                if (a2.startsWith("start_app")) {
                    String[] split = a2.substring("start_app".length()).split("#");
                    Intent intent = new Intent();
                    intent.setComponent(new ComponentName(split[0], split[1]));
                    intent.setFlags(268435456);
                    try {
                        super.startActivity(intent);
                    } catch (Exception e2) {
                        com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.start_acitivity_error), 0).show();
                    }
                } else if (a2.startsWith("open_folder")) {
                    d(a2.substring("open_folder".length()));
                } else if (a2.startsWith("open_window")) {
                    this.h.post(this.ba.get(a2.substring("open_window".length())));
                } else {
                    this.h.post(this.ba.get(a2));
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }

    public void a(View view, boolean z) {
        if (v && !this.au) {
            View findViewById = findViewById(C0000R.id.left);
            if (findViewById.getVisibility() == 8) {
                findViewById.setVisibility(0);
                return;
            }
            return;
        }
        com.estrongs.android.ui.f.a aI = aI();
        if (aI == null || aI.c() != 0) {
            return;
        }
        if (view != null) {
            view.setPressed(false);
        }
        aI().b(z);
    }

    public void a(com.estrongs.android.ui.pcs.bt btVar) {
        this.bc.setVisibility(0);
        this.K = btVar;
        getWindow().setSoftInputMode(32);
    }

    public void a(com.estrongs.fs.g gVar) {
        a(gVar, false);
    }

    public void a(com.estrongs.fs.g gVar, boolean z) {
        if (!f(gVar.getPath())) {
            d(C0000R.string.paste_not_allow_msg);
            return;
        }
        if (this.m.u()) {
            n();
        }
        com.estrongs.android.view.ar t = t();
        if ((t != null && t.A()) || this.z.size() != 0) {
            if (!this.p) {
                com.estrongs.android.view.n.a(this).b(this.o);
            }
            com.estrongs.android.pop.utils.aj.a(this, this.z, gVar, this.p, z);
        }
    }

    public void a(String str) {
        if (com.estrongs.android.util.ak.aq(str)) {
            c(str);
        } else {
            b(str, false);
        }
    }

    public void a(String str, int i, com.estrongs.android.view.ar arVar) {
        int j = j(str);
        if (j != 4 && j != 2 && j != 1 && j != 3) {
            b(j, i);
        } else if (arVar == null || !arVar.h().isEmpty()) {
            b(j, i);
        } else {
            b(j + 9, i);
        }
        if (!this.s) {
            this.i.a(this.j, (Boolean) false);
            if (arVar == null || !arVar.A() || arVar.w() == null) {
                return;
            }
            this.bm.a(arVar.w());
            return;
        }
        if (this.k != null) {
            com.estrongs.android.ui.e.a a2 = this.i.a("paste_mode");
            com.estrongs.android.view.a.a a3 = a2.a(0);
            com.estrongs.android.view.a.a a4 = a2.a(1);
            if (f(str)) {
                if (a3 != null && !a3.isEnabled()) {
                    a3.setEnabled(true);
                }
                if (a4 == null || a4.isEnabled()) {
                    return;
                }
                a4.setEnabled(true);
                return;
            }
            if (a3 != null && a3.isEnabled()) {
                a3.setEnabled(false);
            }
            if (a4 == null || !a4.isEnabled()) {
                return;
            }
            a4.setEnabled(false);
        }
    }

    public void a(String str, String str2) {
        if (str2 == null || str2.length() == 0) {
            return;
        }
        if (str == null) {
            str = str2;
        }
        AppRunner.a(this, str, str2);
        if (!com.estrongs.android.util.ak.aO(str2) || -1 == com.estrongs.android.util.av.a(str2)) {
            return;
        }
        com.estrongs.android.util.ax.c().a(str2, false);
    }

    public void a(String str, List<com.estrongs.fs.g> list, boolean z) {
        if (this.Z == null) {
            this.Z = new com.estrongs.android.widget.ab(this, this.Y, true);
            this.Z.setOnDismissListener(new bn(this));
        } else {
            this.Z.a(true);
        }
        this.z.clear();
        this.z.addAll(list);
        this.p = z;
        this.Z.setTitle(str);
        this.Z.show();
    }

    public void a(String str, boolean z) {
        com.estrongs.android.ui.b.bv bvVar = new com.estrongs.android.ui.b.bv(this, getString(C0000R.string.action_new), getString(z ? C0000R.string.category_folder : C0000R.string.category_file));
        if (com.estrongs.android.util.ak.c(str, "kanbox")) {
            bvVar.c(true);
        }
        bvVar.a(new ag(this, z));
        bvVar.show();
    }

    public void a(boolean z, Handler handler, Runnable runnable) {
        if (com.estrongs.android.pop.q.a(this).q() || z) {
            com.estrongs.android.d.d.b();
            new Thread(new g(this, handler, runnable)).start();
        }
    }

    public boolean a(List<com.estrongs.fs.g> list) {
        return com.estrongs.android.pop.utils.aj.a(this, list, t());
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected View b() {
        return this.an;
    }

    public void b(int i) {
        synchronized (this.y) {
            for (int i2 = 0; i2 < this.y.size(); i2++) {
                com.estrongs.android.view.ar arVar = this.y.get(i2);
                if (i2 == this.x) {
                    arVar.a(i);
                    com.estrongs.android.pop.view.utils.ac.a(this, arVar.c(), i);
                }
            }
        }
    }

    public void b(View view, boolean z) {
        if (view != null) {
            view.setPressed(false);
        }
        if (v) {
            i(z);
            return;
        }
        com.estrongs.android.ui.f.a aI = aI();
        if (aI == null || aI.c() != 0) {
            return;
        }
        aI.c(z);
    }

    public void b(String str, List<com.estrongs.fs.g> list, boolean z) {
        String b2 = com.estrongs.android.pop.b.b();
        if (this.W == null) {
            this.W = new com.estrongs.android.widget.g(this, b2, new bp(this, com.estrongs.android.pop.q.a(this).p()), com.estrongs.android.pop.m.j ? -2 : -1);
            this.W.a(new bt(this));
            this.W.b(true);
        }
        this.z.clear();
        this.z.addAll(list);
        this.p = z;
        this.W.b(getString(C0000R.string.confirm_ok), this.aa);
        this.W.c(getString(C0000R.string.confirm_cancel), (DialogInterface.OnClickListener) null);
        this.W.b(b2);
        this.W.a((CharSequence) str);
        this.W.h();
    }

    public void b(String str, boolean z) {
        if (com.estrongs.android.ui.d.e.c() >= 8) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.toast_max_window_count, 0).show();
            return;
        }
        d(str, z);
        com.estrongs.android.view.ar t = t();
        if (t == null || !(t instanceof com.estrongs.android.pop.app.diskusage.e)) {
            return;
        }
        t.l();
    }

    public void b(List<String> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.y.size()) {
                return;
            }
            this.y.get(i2).d(list);
            i = i2 + 1;
        }
    }

    public void c(View view, boolean z) {
        if (view != null) {
            view.setPressed(false);
        }
        i(z);
    }

    public void c(String str) {
        c(str, false);
    }

    public void c(String str, boolean z) {
        int i = -1;
        try {
            synchronized (this.y) {
                int i2 = 0;
                while (i2 < this.y.size()) {
                    int i3 = a(this.y.get(i2), str) ? i2 : i;
                    i2++;
                    i = i3;
                }
                if (i >= 0) {
                    f(i);
                    if (z) {
                        com.estrongs.android.pop.utils.aa.a(str, this.y.get(i).hashCode());
                    }
                    if (com.estrongs.android.util.ak.E(str) != 28) {
                        this.y.get(i).a(str);
                    }
                } else {
                    b(str, z);
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected void c(boolean z) {
        if (z) {
            ((ImageView) findViewById(C0000R.id.full_screen_button)).setVisibility(8);
        } else {
            aK();
        }
    }

    public void d(String str) {
        ViewGroup viewGroup;
        com.estrongs.android.view.ar t = t();
        if (t == null) {
            View childAt = this.f.getChildAt(com.estrongs.android.ui.d.e.a());
            if (childAt != null && (viewGroup = (ViewGroup) childAt.findViewById(C0000R.id.content_main)) != null) {
                viewGroup.setVisibility(0);
                a(viewGroup, com.estrongs.android.ui.d.e.b(), str);
            }
        } else if (a(t, str)) {
            t.a(str);
        } else {
            a(str);
        }
        if (com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.L(str) || com.estrongs.android.util.ak.s(str) || com.estrongs.android.util.ak.u(str)) {
            return;
        }
        com.estrongs.android.util.ax.c().a(str, true);
    }

    public void d(boolean z) {
        if (z && this.m.t()) {
            return;
        }
        com.estrongs.android.view.n.a(this).c();
        this.r = true;
    }

    public void e(int i) {
        if (this.aj != null) {
            this.aj.setVisibility(i);
        }
    }

    public void e(boolean z) {
        if (com.estrongs.android.util.ak.au(u())) {
            com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.cannot_search), 1).show();
            return;
        }
        if (this.q) {
            return;
        }
        View findViewById = findViewById(C0000R.id.search_bar_top);
        this.aw = (EditText) findViewById.findViewById(C0000R.id.edittext_search_bar);
        if (this.E == null) {
            this.E = (ProgressBar) findViewById.findViewById(C0000R.id.search_progress);
        }
        findViewById.setClickable(true);
        TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, -1.0f, 1, 0.0f);
        translateAnimation.setDuration(500L);
        translateAnimation.setInterpolator(new DecelerateInterpolator());
        translateAnimation.setAnimationListener(new ai(this, findViewById));
        findViewById.setVisibility(0);
        this.q = true;
        findViewById.setAnimation(translateAnimation);
        translateAnimation.start();
        com.estrongs.android.view.ar t = t();
        if (t != null) {
            LinearLayout linearLayout = (LinearLayout) findViewById.findViewById(C0000R.id.search_category_container);
            ImageView imageView = (ImageView) findViewById.findViewById(C0000R.id.search_category);
            t.e(true);
            this.aw.setText((CharSequence) null);
            this.aw.addTextChangedListener(this.bg);
            this.aw.setOnKeyListener(this.bh);
            if (this.U == null) {
                this.U = new aj(this, this, findViewById, imageView, t.ab(), imageView);
            }
            if (!z) {
                linearLayout.setEnabled(false);
                imageView.setImageResource(C0000R.drawable.toolbar_search);
                return;
            }
            linearLayout.setEnabled(true);
            imageView.setImageDrawable(this.U.c(t.ab()));
            linearLayout.setOnClickListener(new al(this, t));
            linearLayout.setOnClickListener(new am(this, t));
            if (e(t.c())) {
                imageView.setImageDrawable(com.estrongs.android.ui.theme.al.a(this).a(C0000R.drawable.notification_search));
                linearLayout.setClickable(false);
            } else {
                linearLayout.setClickable(true);
                imageView.setImageDrawable(this.U.c(t.ab()));
            }
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected boolean e() {
        com.estrongs.android.view.ar t = t();
        if (t == null) {
            return false;
        }
        return !t.A() || (t instanceof com.estrongs.android.view.cs);
    }

    public boolean e(String str) {
        return com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.L(str) || com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.O(str);
    }

    public void f(int i) {
        this.f.a(false);
        this.ar = t();
        if (this.ar != null) {
            this.ar.b_();
        }
        if ("edit_mode".equals(this.k.l().b())) {
            this.k.m();
        }
        if (this.f != null) {
            this.f.a(i);
        }
        int a2 = com.estrongs.android.ui.d.e.a();
        this.n.a(this.n.d(), a2);
        this.O.a(com.estrongs.android.ui.d.e.c(a2).b(), false);
        com.estrongs.android.view.ar t = t();
        if (t != null) {
            t.l();
        }
    }

    public void f(boolean z) {
        try {
            this.U.dismiss();
        } catch (Exception e2) {
        }
        if (this.q) {
            this.q = false;
            View findViewById = findViewById(C0000R.id.search_bar_top);
            if (z) {
                TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, 0.0f, 1, -1.0f);
                translateAnimation.setDuration(500L);
                translateAnimation.setInterpolator(new AccelerateInterpolator());
                translateAnimation.setAnimationListener(new an(this, findViewById));
                findViewById.setAnimation(translateAnimation);
                translateAnimation.start();
            } else {
                this.q = false;
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(((EditText) findViewById.findViewById(C0000R.id.edittext_search_bar)).getWindowToken(), 0);
            }
            findViewById.setVisibility(8);
            this.aw.removeTextChangedListener(this.bg);
            this.aw.setOnKeyListener(null);
            com.estrongs.android.view.ar t = t();
            if (t != null) {
                t.e(false);
                if (!e(t.c()) || this.ab == null || dl.b(this.ab) == null || "".equals(dl.b(this.ab))) {
                    return;
                }
                this.ab.a((String) null);
                t.b(false);
            }
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected boolean f() {
        com.estrongs.android.view.ar t = t();
        if (t != null && (t instanceof com.estrongs.android.pop.app.diskusage.e)) {
            return false;
        }
        if (t == null || !(t instanceof com.estrongs.android.ui.pcs.az) || com.estrongs.android.ui.pcs.aw.a().c()) {
            return t == null || (t.m() && t.T()) || t.h().isEmpty();
        }
        return false;
    }

    public boolean f(String str) {
        return (str == null || "apk://".equalsIgnoreCase(str) || "book://".equalsIgnoreCase(str) || "pic://".equalsIgnoreCase(str) || "music://".equalsIgnoreCase(str) || "video://".equalsIgnoreCase(str) || com.estrongs.android.util.ak.aU(str) || com.estrongs.android.util.ak.bs(str) || com.estrongs.android.util.ak.Q(str) || com.estrongs.android.util.ak.aC(str) || com.estrongs.android.util.ak.au(str) || com.estrongs.android.util.ak.aE(str) || com.estrongs.android.util.ak.aL(str)) ? false : true;
    }

    @Override // android.app.Activity
    public void finish() {
        if (!this.bo) {
            a(false, (Handler) null, (Runnable) null);
        }
        t();
        synchronized (this.y) {
            for (com.estrongs.android.view.ar arVar : this.y) {
                if (arVar != null) {
                    arVar.a_();
                }
            }
            this.y.clear();
        }
        this.z.clear();
        this.at.clear();
        com.estrongs.fs.a.b.a().e();
        com.estrongs.android.pop.app.b.a.d = true;
        if (com.estrongs.android.pop.utils.aa.d) {
            com.estrongs.android.pop.utils.aa.c("/sdcard/.estrongs/hide2.txt");
            com.estrongs.android.pop.utils.aa.d = false;
        }
        com.estrongs.android.pop.utils.aa.a();
        com.estrongs.android.pop.app.a.ai.d();
        super.finish();
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity
    protected void g() {
        b((View) null, false);
    }

    public void g(int i) {
        if ("edit_mode".equals(this.k.l().b())) {
            this.k.m();
        }
        com.estrongs.android.ui.d.e.b(i);
        synchronized (this.y) {
            if (this.y.size() > 1 && this.y.size() > i) {
                com.estrongs.android.view.ar remove = this.y.remove(i);
                if (remove != null) {
                    remove.a_();
                }
                this.f.removeViewAt(i);
                aB();
                this.n.b(i);
                this.O.a(u(), false);
                com.estrongs.android.view.ar t = t();
                if (t != null) {
                    t.l();
                }
            }
        }
        if (this.aq != null) {
            this.aq.b();
        }
    }

    public void g(String str) {
        com.estrongs.android.pop.utils.bt.a(str);
    }

    public boolean g(boolean z) {
        av = z;
        return z;
    }

    public int h(String str) {
        int size = this.y.size();
        synchronized (this.y) {
            for (int i = 0; i < size; i++) {
                if (a(this.y.get(i), str)) {
                    return i;
                }
            }
            return -1;
        }
    }

    public Bitmap h(int i) {
        if (com.estrongs.android.ui.d.a.e == 0 || com.estrongs.android.ui.d.a.d == 0) {
            com.estrongs.android.ui.d.a.a(this);
        }
        if (com.estrongs.android.ui.d.a.e == 0 || com.estrongs.android.ui.d.a.d == 0) {
            return null;
        }
        try {
            View childAt = this.f.getChildAt(i);
            if (childAt == null) {
                return null;
            }
            Drawable background = childAt.getBackground();
            childAt.setBackgroundDrawable(this.ah.g());
            Bitmap a2 = com.estrongs.android.ui.d.a.a(childAt);
            childAt.setBackgroundDrawable(background);
            if (a2 != null) {
                return com.estrongs.android.ui.d.a.a(a2, this.u);
            }
            return null;
        } catch (Exception e2) {
            return null;
        }
    }

    public void h() {
        int a2 = com.estrongs.android.ui.d.e.a();
        com.estrongs.android.view.ar t = t();
        if (t == null) {
            return;
        }
        a(t.c(), a2, t);
    }

    public void i() {
        com.estrongs.android.view.ar t = t();
        if (t != null && t.F() && com.estrongs.android.util.aw.a((CharSequence) this.aw.getText().toString())) {
            o();
        }
    }

    public void j() {
        com.estrongs.android.view.ar t = t();
        if (t == null || t.m()) {
            return;
        }
        String c2 = t.c();
        if ((com.estrongs.android.util.ak.N(c2) && com.estrongs.android.pop.p.a() >= 11) || com.estrongs.android.util.ak.K(c2) || com.estrongs.android.util.ak.M(c2) || com.estrongs.android.util.ak.L(c2) || com.estrongs.android.util.ak.aC(c2)) {
            b(t);
        } else if (t instanceof com.estrongs.android.view.bu) {
            ((com.estrongs.android.view.bu) t).am();
        } else {
            t.b(true);
        }
    }

    public void k() {
        if (this.bp != null) {
            this.bp.notifyDataSetChanged();
        }
    }

    public void l() {
        this.i.a("normal_mode", (Boolean) true);
        this.j = "normal_mode";
        com.estrongs.android.view.ar t = t();
        if (t != null) {
            t.a(false);
        }
        r();
    }

    public void m() {
        if (this.m.t()) {
            return;
        }
        com.estrongs.android.view.n.a(this).c();
        this.r = true;
    }

    public void n() {
        com.estrongs.android.view.n.a(this).e();
        this.r = false;
    }

    public void o() {
        f(true);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i, int i2, Intent intent) {
        if (i == 268439562) {
            if (i2 != 0) {
                com.estrongs.android.pop.app.b.a.a().i();
                return;
            }
            return;
        }
        if (i2 == -1) {
            Bundle extras = intent != null ? intent.getExtras() : null;
            switch (i) {
                case LoginCallBack.REQUEST_LOGINPROTECT /* 1000 */:
                case 16781341:
                    com.estrongs.android.ui.pcs.d k = com.estrongs.android.ui.pcs.aw.a().k();
                    if (k != null) {
                        k.a(i, intent, i2);
                        return;
                    }
                    return;
                case 16781342:
                    Toast.makeText(this, C0000R.string.gesture_set_postion_toast, 0).show();
                    this.bb.a(true);
                    return;
                case 268439577:
                    if (this.ax == null || this.ah == null) {
                        return;
                    }
                    this.ax.setBackgroundDrawable(this.ah.g());
                    return;
                case 268439580:
                    if (extras != null) {
                        String string = extras.getString("path");
                        if (extras.getBoolean("isDir", true)) {
                            c(string, true);
                            return;
                        }
                        try {
                            if (com.estrongs.android.util.av.b(string)) {
                                TypedMap typedMap = new TypedMap();
                                typedMap.put("show_hidelist_file", true);
                                AppRunner.a(this, string, string, typedMap);
                            } else {
                                AppRunner.a(this, string, string);
                            }
                            return;
                        } catch (Exception e2) {
                            return;
                        }
                    }
                    return;
                case 268439584:
                    this.bo = true;
                    Configuration configuration = new Configuration(getResources().getConfiguration());
                    int i3 = configuration.touchscreen;
                    if (i3 == 3) {
                        configuration.touchscreen = 1;
                    } else {
                        configuration.touchscreen = 3;
                    }
                    getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
                    configuration.touchscreen = i3;
                    getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
                    this.ah.k();
                    com.estrongs.android.d.d.a(this).a();
                    finish();
                    startActivity(new Intent(this, (Class<?>) FileExplorerActivity.class));
                    return;
                default:
                    return;
            }
        }
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        com.estrongs.android.view.ar t = t();
        if (t != null && com.estrongs.android.util.ak.aL(u()) && t.m()) {
            t.R();
        }
        if (this.q) {
            f(false);
        }
        if (this.U != null) {
            this.U = null;
        }
        aD();
        aE();
        this.au = configuration.orientation == 1;
        if (!v) {
            this.u = this.au;
        }
        as();
        this.h.post(new bj(this));
        this.ag = -2;
        String u = u();
        if (u != null) {
            this.O.a(u, true, false);
        }
        if (this.Z != null) {
            this.Z.b(this.u);
        }
        if (this.k != null) {
            this.k.a(this.be, this.bf);
        }
        if (this.aZ != null && this.aZ.a()) {
            this.aZ.d();
            this.aZ = null;
        }
        if (!U() || this.K == null) {
            return;
        }
        this.K.a(configuration);
    }

    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.L = getWindow().getAttributes().softInputMode;
        this.ah = com.estrongs.android.ui.theme.al.a(FexApplication.a());
        try {
            this.u = getResources().getConfiguration().orientation == 1;
            this.au = this.u;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.q = false;
        this.r = false;
        this.j = "normal_mode";
        bq = this;
        this.m = com.estrongs.android.pop.q.a(this);
        this.G = this.m.L();
        this.H = false;
        av = false;
        this.aW = com.estrongs.android.util.a.a(this, true, "FileExplorer");
        this.as = Uri.decode(getIntent().getDataString());
        if (this.as != null && (this.as.startsWith("file:///") || this.as.startsWith("FILE:///"))) {
            this.as = this.as.substring(7);
        }
        if ("Market".equalsIgnoreCase("Market") || "Market".equalsIgnoreCase("web")) {
            if (e == null || e.length() <= 0) {
                m("Market");
            } else {
                m(e);
            }
        } else if (!"Market".equalsIgnoreCase("oem") || com.estrongs.android.pop.m.f1160b == null) {
            m("Market");
        } else {
            m(com.estrongs.android.pop.m.f1160b);
        }
        String[] stringArray = bundle != null ? bundle.getStringArray("winPaths") : null;
        if (stringArray != null) {
            int length = stringArray.length;
            for (int i = 0; i < length; i++) {
                String str = stringArray[i];
                if (str != null && com.estrongs.android.pop.m.j && str.equals("/")) {
                    if (stringArray.length <= 1) {
                        str = "/sdcard";
                    }
                }
                if (com.estrongs.android.pop.utils.bs.a() || (!com.estrongs.android.util.ak.aq(str) && !com.estrongs.android.util.ak.ao(str))) {
                    com.estrongs.android.ui.d.e.a(new com.estrongs.android.ui.d.d(str));
                }
            }
            int i2 = bundle.getInt("currentWin", 0);
            if (i2 >= com.estrongs.android.ui.d.e.c()) {
                i2 = 0;
            }
            com.estrongs.android.ui.d.e.a(i2);
        } else {
            com.estrongs.android.ui.d.e.b(this);
            com.estrongs.android.ui.d.e.a(0);
        }
        try {
            Class.forName(com.estrongs.fs.impl.c.a.class.getName());
        } catch (ClassNotFoundException e3) {
            e3.printStackTrace();
        }
        v = com.estrongs.android.pop.utils.ca.a(this);
        if (v) {
            this.u = true;
        }
        setContentView(C0000R.layout.es_root_view);
        ESRootView eSRootView = (ESRootView) findViewById(C0000R.id.main_container);
        this.bb = eSRootView;
        this.ai = (FrameLayout) findViewById(C0000R.id.container_body);
        this.aV = eSRootView;
        this.bc = (FrameLayout) findViewById(C0000R.id.pcs_upgrade_layout);
        this.J = (ViewFlipper) findViewById(C0000R.id.pcs_upgrade_flipper);
        ESGesturePanel eSGesturePanel = (ESGesturePanel) findViewById(C0000R.id.es_guestrue_drawer);
        eSRootView.a(eSGesturePanel);
        this.I = eSGesturePanel;
        aq();
        ao();
        d = aF();
        this.T = com.estrongs.android.pop.q.a(this).y();
        this.bn = com.estrongs.android.pop.q.a(this).p();
        this.bl = com.estrongs.android.pop.q.a(this).as();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.bd) {
            return;
        }
        am();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        try {
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (U() && this.K != null && i == 4) {
            this.K.a(i, keyEvent);
            return true;
        }
        if ((i == 82 || i == 4 || i == 84) && this.ap != null && this.aq.a()) {
            this.aq.c();
            return true;
        }
        if (i == 82) {
            if (this.V) {
                return true;
            }
            this.V = true;
            if (this.i != null && this.i.a()) {
                return true;
            }
            com.estrongs.android.ui.f.a aI = aI();
            if (aI != null) {
                if (aI.c() != 0) {
                    aI.d(false);
                } else {
                    if (this.i != null && this.i.e()) {
                        return true;
                    }
                    showNaviPage1(null);
                }
                return true;
            }
        }
        if (i == 84) {
            String u = u();
            if (com.estrongs.android.util.ak.I(u) || com.estrongs.android.util.ak.aD(u) || com.estrongs.android.util.ak.u(u)) {
                com.estrongs.android.ui.view.z.a(this, getString(C0000R.string.cannot_search), 1).show();
                return true;
            }
            s();
            return true;
        }
        if (i == 4) {
            if (!this.i.a() && !this.bb.a()) {
                if (this.aS != null && this.aS.b()) {
                    this.aS.d(false);
                    return true;
                }
                if (com.estrongs.android.util.ak.aL(u()) && t().m()) {
                    t().R();
                    if (!this.q) {
                        return true;
                    }
                }
                if (this.q) {
                    o();
                    return true;
                }
                if (t() != null && (t() instanceof com.estrongs.android.ui.pcs.az) && ((com.estrongs.android.ui.pcs.az) t()).o()) {
                    return true;
                }
                if (this.r && com.estrongs.android.view.n.a(this).f2846a.g()) {
                    com.estrongs.android.view.n.a(this).f2846a.d();
                    return true;
                }
                if ((com.estrongs.android.util.ak.K(u()) || com.estrongs.android.util.ak.M(u()) || com.estrongs.android.util.ak.N(u()) || com.estrongs.android.util.ak.O(u())) && t().m()) {
                    t().R();
                    return true;
                }
                if (this.i.d()) {
                    return true;
                }
                String aY = com.estrongs.android.util.ak.aY(u());
                String bo = com.estrongs.android.util.ak.bo(com.estrongs.android.util.ak.bp(u()));
                String bo2 = com.estrongs.android.util.ak.bo(com.estrongs.android.util.ak.bp(this.m.e("Market")));
                com.estrongs.android.view.ar t = t();
                String type = getIntent() == null ? null : getIntent().getType();
                if (type != null && (type.equals("resource/folder") || type.equals("org.openintents.action.VIEW_DIRECTORY"))) {
                    String dataString = getIntent().getDataString();
                    String decode = dataString != null ? Uri.decode(dataString) : null;
                    if (decode != null && (decode.startsWith("file:///") || decode.startsWith("FILE:///"))) {
                        decode = decode.substring(7);
                    }
                    if (decode != null && !decode.endsWith("/")) {
                        decode = decode + "/";
                    }
                    if (decode != null && bo != null && decode.equals(bo) && t != null && t.P()) {
                        finish();
                        return true;
                    }
                }
                if (t != null && bo != null) {
                    if (!t.P()) {
                        if (com.estrongs.android.util.ak.aL(u())) {
                            t().a(0L);
                            t().k("all");
                        }
                        t.f();
                        return true;
                    }
                    if (!bo.equals(bo2) && t.f() != null) {
                        return true;
                    }
                }
                if (com.estrongs.android.util.ak.aG(bo)) {
                    ay();
                    return true;
                }
                if (this.w || !(bo == null || bo.equals(bo2) || com.estrongs.android.util.ak.aR(bo) || com.estrongs.android.util.ak.aq(bo) || com.estrongs.android.util.ak.t(bo) || com.estrongs.android.util.ak.u(bo) || com.estrongs.android.util.ak.ar(bo) != null || ((com.estrongs.android.pop.m.j && "/".equals(aY)) || "remote://".equals(bo)))) {
                    if (!this.w) {
                        return true;
                    }
                    finish();
                    return true;
                }
                com.estrongs.android.ui.view.z.a(this, C0000R.string.message_exit, 1).show();
                this.w = true;
                this.h.postAtTime(new as(this), SystemClock.uptimeMillis() + 3000);
                return true;
            }
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i != 82) {
            return super.onKeyUp(i, keyEvent);
        }
        this.V = false;
        return true;
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        String decode;
        super.onNewIntent(intent);
        String stringExtra = intent.getStringExtra("archive_file_name");
        if (stringExtra != null) {
            c("cmpn://" + stringExtra);
            return;
        }
        if ("com.estrongs.android.SHOW_DISK_USAGE".equals(intent.getAction())) {
            String b2 = com.estrongs.android.pop.b.b();
            if (!b2.endsWith("/")) {
                b2 = b2 + "/";
            }
            c("du://" + b2);
            return;
        }
        if ("show_app".equals(intent.getStringExtra("action"))) {
            c("app://user");
            return;
        }
        if ("from_update_notification".equals(intent.getStringExtra("action"))) {
            com.estrongs.android.pop.utils.c.c(M().b(this));
            c("app://update");
            return;
        }
        if ("show_local_tab".equals(intent.getStringExtra("action"))) {
            c(com.estrongs.android.pop.q.a(this).e("Market"));
            return;
        }
        String dataString = intent.getDataString();
        if (dataString == null || (decode = Uri.decode(dataString)) == null) {
            return;
        }
        if (decode.startsWith("file:///") || decode.startsWith("FILE:///")) {
            decode = decode.substring(7);
        }
        if (this.aS != null && this.aS.b()) {
            this.aS.d(true);
        }
        c(decode);
    }

    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity, com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    protected void onPause() {
        this.aW.c();
        if (isFinishing()) {
            am();
        }
        super.onPause();
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00a3, code lost:
    
        r0.g();
     */
    @Override // com.estrongs.android.pop.esclasses.ESAbsToolbarActivity, com.estrongs.android.pop.esclasses.ESActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void onResume() {
        super.onResume();
        this.aW.b();
        boolean aJ = aJ();
        boolean Z = com.estrongs.android.pop.q.a(this).Z();
        if (aJ && !Z) {
            this.aW.a("Root_Already", "Root_Already");
            com.estrongs.android.pop.q.a(this).l(true);
        }
        this.F = com.estrongs.android.pop.q.a(this).K();
        if (!com.estrongs.android.c.a.b()) {
            com.estrongs.android.ui.view.z.a(this, C0000R.string.start_httpserver_fail, 1).show();
            return;
        }
        com.estrongs.android.d.d.a(this.m.s());
        com.estrongs.android.view.ar t = t();
        if (t != null) {
            ai();
            if (ag() || ah()) {
                synchronized (this.y) {
                    Iterator<com.estrongs.android.view.ar> it = this.y.iterator();
                    while (it.hasNext()) {
                        com.estrongs.android.view.ar next = it.next();
                        if (next != null && (com.estrongs.android.util.ak.aO(next.c()) || com.estrongs.android.util.ak.H(next.c()) || com.estrongs.android.util.ak.G(next.c()) || com.estrongs.android.util.ak.p(next.c()))) {
                            next.j(true);
                        }
                    }
                }
            }
            boolean w = com.estrongs.android.pop.q.a(this).w();
            if (t != null && t.L() != w) {
                t.h(w);
            }
            if (t != null && !com.estrongs.android.pop.q.a(this).H().equals(t.X())) {
                t.a(com.estrongs.android.pop.q.a(this).H());
                t.g();
            }
        }
        if (af() && this.k != null) {
            this.k.a(this.be, this.bf);
        }
        if (ae()) {
            if (this.k != null) {
                h();
            }
            if (this.aS != null) {
                this.aS.e();
            }
        }
        if (t != null) {
            t.l();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        try {
            int c2 = com.estrongs.android.ui.d.e.c();
            String[] strArr = new String[c2];
            for (int i = 0; i < c2; i++) {
                strArr[i] = com.estrongs.android.ui.d.e.c(i).b();
            }
            bundle.putStringArray("winPaths", strArr);
            bundle.putInt("currentWin", com.estrongs.android.ui.d.e.a());
        } catch (Exception e2) {
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    public void p() {
        if (this.aT != null) {
            if (this.f1119a) {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.1f, 1.0f);
                alphaAnimation.setDuration(200L);
                alphaAnimation.setInterpolator(new AccelerateInterpolator());
                this.aT.setAnimation(alphaAnimation);
                alphaAnimation.start();
            }
            this.aT.setVisibility(0);
            if (!this.u) {
                findViewById(C0000R.id.tools_top_container).setVisibility(4);
            }
        }
        if (this.aU != null) {
            this.aU.setVisibility(0);
        }
    }

    @Override // com.estrongs.android.ui.e.gh
    public Rect q() {
        if (this.ak == null) {
            this.ak = new Rect();
            int[] iArr = new int[2];
            if (this.u) {
                this.f.getLocationInWindow(iArr);
            } else {
                findViewById(C0000R.id.window_rect).getLocationInWindow(iArr);
            }
            this.ak = new Rect(iArr[0], iArr[1], iArr[0] + this.f.getMeasuredWidth(), iArr[1] + this.f.getMeasuredHeight());
        }
        return this.ak;
    }

    public void r() {
        j(!this.f1120b);
    }

    public void s() {
        if (this.q) {
            o();
        } else if (com.estrongs.android.util.ak.aV(u()) || com.estrongs.android.util.ak.aN(u())) {
            k(u());
        } else {
            e((com.estrongs.android.util.ak.aq(u()) || e(u())) ? false : true);
        }
    }

    public void setTabletSideBar(View view) {
        this.bp = new com.estrongs.android.ui.f.f(this, view, null).b();
    }

    public void showNaviPage1(View view) {
        a(view, true);
    }

    @Override // android.app.Activity, android.content.ContextWrapper, android.content.Context
    public void startActivity(Intent intent) {
        try {
            super.startActivity(intent);
        } catch (ActivityNotFoundException e2) {
            e2.printStackTrace();
        }
    }

    public com.estrongs.android.view.ar t() {
        synchronized (this.y) {
            this.x = com.estrongs.android.ui.d.e.a();
            if (this.x >= this.y.size()) {
                return null;
            }
            try {
                return this.y.get(this.x);
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        }
    }

    public String u() {
        if (t() == null) {
            return null;
        }
        return t().c();
    }

    public com.estrongs.fs.g v() {
        if (t() == null) {
            return null;
        }
        return t().b();
    }

    public boolean w() {
        try {
            synchronized (this.y) {
                for (int i = 0; i < this.y.size(); i++) {
                    com.estrongs.android.view.ar arVar = this.y.get(i);
                    if (arVar != null && (com.estrongs.android.util.ak.Q(arVar.c()) || com.estrongs.android.util.ak.O(arVar.c()))) {
                        return arVar.s;
                    }
                }
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public boolean y() {
        try {
            synchronized (this.y) {
                for (int i = 0; i < this.y.size(); i++) {
                    com.estrongs.android.view.ar arVar = this.y.get(i);
                    if (arVar != null && (com.estrongs.android.util.ak.Q(arVar.c()) || com.estrongs.android.util.ak.O(arVar.c()))) {
                        return arVar.t;
                    }
                }
                return false;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public void z() {
        if (this.k != null) {
            this.k.k();
        }
    }
}

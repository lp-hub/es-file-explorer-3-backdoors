package com.estrongs.android.pop.app.b;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.ui.b.fr;
import com.estrongs.android.util.ai;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Observable;
import java.util.Observer;
import java.util.Vector;
import java.util.regex.Pattern;
import jcifs.netbios.NbtAddress;
import jcifs.smb.SmbConstants;

/* loaded from: classes.dex */
public class c implements Observer {
    private static c h;
    private static com.estrongs.fs.b.v k;

    /* renamed from: a, reason: collision with root package name */
    protected InetAddress f482a;

    /* renamed from: b, reason: collision with root package name */
    protected InetAddress f483b;
    private f f;
    private Context g;
    private boolean i;
    private int[] c = new int[4];
    private int[] d = new int[4];
    private boolean e = false;
    private boolean j = false;

    private c(Context context) {
        this.i = false;
        this.g = context;
        this.i = false;
        try {
            InetAddress byName = InetAddress.getByName(ai.a(context));
            InetAddress byName2 = InetAddress.getByName("255.255.255.0");
            if (this.i) {
                return;
            }
            a(byName, byName2);
            this.f = new f(this, new int[]{SmbConstants.DEFAULT_PORT});
            this.f.addObserver(this);
        } catch (UnknownHostException e) {
            this.i = true;
        }
    }

    public static c a(Context context) {
        if (h == null) {
            h = new c(context);
        } else {
            if (h.e()) {
                return h;
            }
            h = new c(context);
        }
        h.g = context;
        return h;
    }

    private void a(InetAddress inetAddress) {
        this.f482a = inetAddress;
        try {
            String[] split = inetAddress.getHostAddress().split("\\.");
            for (int i = 0; i < split.length; i++) {
                if (split[i].length() != 0) {
                    this.c[i] = Integer.parseInt(split[i]);
                }
            }
        } catch (NumberFormatException e) {
            try {
                com.estrongs.android.ui.view.z.a(this.g, C0000R.string.lan_scan_error_status, 1).show();
            } catch (Exception e2) {
            }
        }
    }

    private void a(InetAddress inetAddress, InetAddress inetAddress2) {
        a(inetAddress);
        if (inetAddress2 == null) {
            return;
        }
        String[] split = inetAddress2.getHostAddress().split("\\.");
        if (this.d.length != 4) {
        }
        for (int i = 0; i < this.d.length; i++) {
            try {
                this.d[i] = Integer.parseInt(split[i]);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        this.f483b = inetAddress2;
    }

    static boolean a(String str) {
        return Pattern.compile("([1-9]|[1-9]\\d|1\\d{2}|2[0-1]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}").matcher(str).matches();
    }

    public static void b(Context context) {
        if (com.estrongs.fs.b.ae.a(context) == null) {
            com.estrongs.android.ui.b.ag agVar = new com.estrongs.android.ui.b.ag(context);
            agVar.setTitle(C0000R.string.network_connection);
            agVar.setConfirmButton(context.getResources().getString(C0000R.string.confirm_ok), new d(context));
            agVar.setCancelButton(context.getResources().getString(C0000R.string.confirm_cancel), new e());
            agVar.setMessage(context.getString(C0000R.string.lan_network_notify));
            agVar.show();
            return;
        }
        c a2 = a(context);
        if (a2.e()) {
            com.estrongs.android.ui.view.z.a(context, C0000R.string.lan_scan_running, 1).show();
            new fr((Activity) context, context.getString(C0000R.string.progress_loading), k).show();
        } else {
            if (a2.i) {
                com.estrongs.android.ui.view.z.a(context, C0000R.string.lan_scan_error_status, 1).show();
                return;
            }
            com.estrongs.android.pop.q.a(context).e();
            k = new com.estrongs.fs.b.v();
            k.setDescription(context.getString(C0000R.string.lan_scan_running));
            new fr((Activity) context, context.getString(C0000R.string.progress_loading), k).show();
            k.execute();
        }
    }

    private int d() {
        int i = this.d[0] ^ 255;
        int i2 = this.d[1] ^ 255;
        return (i * 255 * 255 * 255) + (i2 * 255 * 255) + ((this.d[2] ^ 255) * 255) + (this.d[3] ^ 255);
    }

    private boolean e() {
        if (this.j) {
            return true;
        }
        if (this.f != null) {
            return !this.e && this.f.a();
        }
        return false;
    }

    private void f() {
        this.e = true;
        if (this.f != null) {
            this.f.b();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Vector<InetAddress> a() {
        Vector<InetAddress> vector = new Vector<>();
        int d = d();
        byte[] bArr = new byte[4];
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (this.c[i] & this.d[i]);
        }
        for (int i2 = 0; i2 < d; i2++) {
            try {
                bArr[3] = (byte) (bArr[3] + 1);
                if (bArr[3] != this.c[3]) {
                    vector.add(InetAddress.getByAddress(bArr));
                }
            } catch (UnknownHostException e) {
            }
        }
        return vector;
    }

    public void b() {
        this.j = true;
        this.f.run();
        this.j = false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c() {
        f();
    }

    @Override // java.util.Observer
    public void update(Observable observable, Object obj) {
        if (obj == null || !(obj instanceof h)) {
            c();
            return;
        }
        h hVar = (h) obj;
        String str = hVar.f490b;
        try {
            if (a(str)) {
                str = NbtAddress.getByName(str).getHostName();
            }
        } catch (Exception e) {
            Log.w("IP Scan", "Failed to get host name by NbtAddress - " + str);
        }
        com.estrongs.android.pop.q.a(this.g).b("smb://" + hVar.f489a + "/", str);
    }
}

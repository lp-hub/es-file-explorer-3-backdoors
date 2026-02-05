package com.estrongs.fs.impl.c;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.estrongs.a.b.l;
import com.estrongs.a.b.p;
import com.estrongs.android.pop.C0000R;
import com.estrongs.android.pop.FexApplication;
import com.estrongs.android.pop.q;
import com.estrongs.android.pop.view.FileExplorerActivity;
import com.estrongs.android.util.ak;
import com.estrongs.bluetooth.parser.OBEXElement;
import com.estrongs.fs.FileSystemException;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import jcifs.smb.SmbNamedPipe;

/* loaded from: classes.dex */
public class a {
    private static com.estrongs.bluetooth.parser.a g;
    private final BroadcastReceiver n = new d(this);
    private String o;
    private static DateFormat c = null;
    private static BluetoothAdapter d = BluetoothAdapter.getDefaultAdapter();
    private static List<com.estrongs.fs.g> e = new ArrayList();
    private static boolean f = false;
    private static HashMap<String, b.b.b> h = new HashMap<>();
    private static HashMap<b.b.b, Object> i = new HashMap<>();
    private static HashMap<String, b.b.d> j = new HashMap<>();

    /* renamed from: a, reason: collision with root package name */
    public static final UUID f3059a = UUID.fromString("00001106-0000-1000-8000-00805F9B34FB");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f3060b = {-7, -20, 123, -60, -107, 60, 17, -46, -104, 78, 82, 84, 0, -36, -98, 9};
    private static boolean k = false;
    private static final BroadcastReceiver l = new b();
    private static final BroadcastReceiver m = new c();

    public static long a(String str) {
        try {
            return com.estrongs.fs.d.a().j(str).length();
        } catch (NullPointerException e2) {
            return 0L;
        }
    }

    public static String a(Context context, String str) {
        try {
            return b(context, d.getRemoteDevice(ak.f(str)));
        } catch (Exception e2) {
            throw new FileSystemException(e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:135:0x01a9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<com.estrongs.fs.g> a(String str, com.estrongs.fs.h hVar, l<String> lVar) {
        b.b.d dVar;
        b.b.d dVar2 = null;
        if (d == null || !d.isEnabled()) {
            return null;
        }
        if (g == null) {
            g = new com.estrongs.bluetooth.parser.a();
        }
        LinkedList linkedList = new LinkedList();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        String g2 = ak.g(str);
        b.a.a.a aVar = null;
        try {
            if (d.isDiscovering()) {
                d.cancelDiscovery();
            }
            b.b.b b2 = b(str, true);
            if (b2 == null) {
                if (0 != 0) {
                    try {
                        aVar.e();
                    } catch (IOException e2) {
                    }
                }
                return null;
            }
            b.b.c a2 = b2.a();
            a2.a(203, i.get(b2));
            String[] l2 = l(g2);
            for (int i2 = 0; i2 < l2.length; i2++) {
                if (l2[i2] != null && l2[i2].length() != 0) {
                    a2.a(1, l2[i2]);
                    if (b2.a(a2, false, false).b() != 160) {
                        if (0 != 0) {
                            try {
                                aVar.e();
                            } catch (IOException e3) {
                            }
                        }
                        return null;
                    }
                }
            }
            b.b.c a3 = b2.a();
            a3.a(203, i.get(b2));
            a3.a(66, "x-obex/folder-listing");
            dVar = b2.c(a3);
            if (dVar != null) {
                try {
                    if (dVar.i() == 160) {
                        if (currentTask != null && currentTask.taskStopped()) {
                            if (dVar != null) {
                                try {
                                    dVar.e();
                                } catch (IOException e4) {
                                }
                            }
                            return null;
                        }
                        if (dVar.h().a(73) != null) {
                            dVar = b2.c(a3);
                        }
                        BufferedInputStream bufferedInputStream = new BufferedInputStream(dVar.b(), 8192);
                        ArrayList<OBEXElement> a4 = g.a(bufferedInputStream);
                        bufferedInputStream.close();
                        c = q.a(FexApplication.a()).H();
                        if (a4 != null) {
                            Iterator<OBEXElement> it = a4.iterator();
                            String str2 = str;
                            while (it.hasNext()) {
                                OBEXElement next = it.next();
                                if (currentTask != null && currentTask.taskStopped()) {
                                    if (dVar != null) {
                                        try {
                                            dVar.e();
                                        } catch (IOException e5) {
                                        }
                                    }
                                    return null;
                                }
                                if (next != null) {
                                    String str3 = !str2.endsWith("/") ? str2 + "/" : str2;
                                    String a5 = next.a();
                                    if (next.a().length() == 0) {
                                        str2 = str3;
                                    } else {
                                        if (next.d() && !a5.endsWith("/")) {
                                            a5 = a5 + "/";
                                        }
                                        e eVar = new e(next, str3 + a5);
                                        if (hVar != null && hVar.a(eVar)) {
                                            linkedList.add(eVar);
                                        }
                                        lVar.a(eVar.getAbsolutePath(), new long[0]);
                                        if (lVar.a()) {
                                            break;
                                        }
                                        str2 = str3;
                                    }
                                }
                            }
                        }
                        if (dVar != null) {
                            try {
                                dVar.e();
                            } catch (IOException e6) {
                            }
                        }
                        return linkedList;
                    }
                } catch (IOException e7) {
                    e = e7;
                    dVar2 = dVar;
                    try {
                        throw new FileSystemException(e);
                    } catch (Throwable th) {
                        th = th;
                        dVar = dVar2;
                        if (dVar != null) {
                            try {
                                dVar.e();
                            } catch (IOException e8) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (dVar != null) {
                    }
                    throw th;
                }
            }
            if (dVar != null) {
                try {
                    dVar.e();
                } catch (IOException e9) {
                }
            }
            return null;
        } catch (IOException e10) {
            e = e10;
        } catch (Throwable th3) {
            th = th3;
            dVar = null;
        }
    }

    private static void a(long j2) {
        try {
            Thread.sleep(j2);
        } catch (Exception e2) {
        }
    }

    public static void a(Context context) {
        if (d == null || !d.isEnabled()) {
            return;
        }
        k = true;
        e.clear();
        i();
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        while (f && !currentTask.taskStopped()) {
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
            }
        }
        k = false;
        if (currentTask.taskStopped()) {
            d();
        }
    }

    public static void a(Context context, ArrayList<com.estrongs.fs.g> arrayList) {
        if (d == null || !d.isEnabled()) {
            return;
        }
        Set<BluetoothDevice> set = null;
        try {
            set = d.getBondedDevices();
        } catch (Exception e2) {
        }
        if (set == null || set.size() <= 0) {
            return;
        }
        for (BluetoothDevice bluetoothDevice : set) {
            if (c(bluetoothDevice)) {
                String name = bluetoothDevice.getName();
                f fVar = new f("bt://" + (name != null ? name + "\n" : "") + bluetoothDevice.getAddress() + "/", b(bluetoothDevice), name, b(context, bluetoothDevice));
                if (!arrayList.contains(fVar)) {
                    arrayList.add(fVar);
                }
            }
        }
    }

    public static void a(List<com.estrongs.fs.g> list) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 >= list.size()) {
                return;
            }
            list.get(i3).setFileType(j(list.get(i3).getAbsolutePath()));
            i2 = i3 + 1;
        }
    }

    public static boolean a() {
        return k;
    }

    private static boolean a(Context context, b.b.b bVar, String str, p pVar) {
        boolean z;
        boolean z2;
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        try {
            b.b.c a2 = bVar.a();
            a2.a(203, i.get(bVar));
            a2.a(66, "x-obex/folder-listing");
            a2.a(1, ak.d(str));
            b.b.d c2 = bVar.c(a2);
            if (c2 == null || c2.i() != 160) {
                return false;
            }
            BufferedInputStream bufferedInputStream = new BufferedInputStream(c2.b());
            ArrayList<OBEXElement> a3 = g.a(bufferedInputStream);
            bufferedInputStream.close();
            c2.e();
            if (a3 != null && a3.size() > 0) {
                Iterator<OBEXElement> it = a3.iterator();
                b.b.c cVar = a2;
                while (it.hasNext()) {
                    OBEXElement next = it.next();
                    if (currentTask != null && currentTask.taskStopped()) {
                        return false;
                    }
                    if (!m(next.a())) {
                        cVar.a(1, ak.d(str));
                        if (bVar.a(cVar, false, false).b() != 160) {
                            return false;
                        }
                        String str2 = str + next.a();
                        if (next.d()) {
                            z2 = a(context, bVar, str2 + "/", pVar);
                        } else {
                            b.b.c a4 = bVar.a();
                            a4.a(203, i.get(bVar));
                            a4.a(1, next.a());
                            if (bVar.e(a4).b() == 160) {
                                if (currentTask != null) {
                                    currentTask.sendMessage(1, 1L, "bt://" + str2);
                                }
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                        }
                        cVar = bVar.a();
                        cVar.a(203, i.get(bVar));
                        bVar.a(cVar, true, false);
                        if (!z2) {
                            return false;
                        }
                    }
                }
            }
            b.b.c a5 = bVar.a();
            a5.a(203, i.get(bVar));
            a5.a(1, ak.d(str));
            if (bVar.e(a5).b() == 160) {
                if (currentTask != null) {
                    currentTask.sendMessage(1, 1L, "bt://" + str);
                }
                z = true;
            } else {
                z = false;
            }
            return z;
        } catch (IOException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean a(Context context, String str, p pVar) {
        String[] l2;
        boolean z = true;
        if (pVar == null) {
            pVar = p.f215b;
        }
        com.estrongs.a.a currentTask = com.estrongs.a.a.getCurrentTask();
        String g2 = ak.g(str);
        try {
            b.b.b b2 = b(str, true);
            if (b2 == null || (l2 = l(g2)) == null || l2.length == 0) {
                return false;
            }
            b.b.c a2 = b2.a();
            a2.a(203, i.get(b2));
            for (int i2 = 0; i2 < l2.length - 1; i2++) {
                if (l2[i2] != null && l2[i2].length() != 0) {
                    a2.a(1, l2[i2]);
                    if (b2.a(a2, false, false).b() != 160) {
                        return false;
                    }
                }
            }
            if (currentTask != null && currentTask.taskStopped()) {
                return false;
            }
            a2.a(1, l2[l2.length - 1]);
            if (k(str)) {
                z = a(context, b2, g2, pVar);
            } else {
                b.b.c a3 = b2.a();
                a3.a(203, i.get(b2));
                a3.a(1, l2[l2.length - 1]);
                if (b2.e(a3).b() != 160) {
                    z = false;
                } else if (currentTask != null) {
                    currentTask.sendMessage(1, 1L, "bt://" + str);
                }
            }
            return z;
        } catch (IOException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static boolean a(String str, String str2) {
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x00b6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(String str, boolean z) {
        b.b.d dVar;
        Throwable th;
        IOException iOException;
        String g2 = ak.g(str);
        b.b.d dVar2 = null;
        try {
            b.b.b b2 = b(str, true);
            if (b2 == null) {
                if (0 != 0) {
                    try {
                        dVar2.e();
                    } catch (IOException e2) {
                    }
                }
                return false;
            }
            b.b.c a2 = b2.a();
            a2.a(203, i.get(b2));
            String[] l2 = l(g2);
            if (l2 == null || l2.length == 0) {
                if (0 != 0) {
                    try {
                        dVar2.e();
                    } catch (IOException e3) {
                    }
                }
                return false;
            }
            for (int i2 = 0; i2 < l2.length - 1; i2++) {
                if (l2[i2] != null && l2[i2].length() != 0) {
                    a2.a(1, l2[i2]);
                    if (b2.a(a2, false, false).b() != 160) {
                        if (0 != 0) {
                            try {
                                dVar2.e();
                            } catch (IOException e4) {
                            }
                        }
                        return false;
                    }
                }
            }
            a2.a(1, l2[l2.length - 1]);
            if (!z) {
                a2.a(195, 1L);
                dVar2 = b2.d(a2);
                try {
                    DataOutputStream d2 = dVar2.d();
                    d2.write(" ".getBytes());
                    d2.close();
                } catch (IOException e5) {
                    dVar = dVar2;
                    iOException = e5;
                    try {
                        throw new FileSystemException(iOException);
                    } catch (Throwable th2) {
                        th = th2;
                        if (dVar != null) {
                            try {
                                dVar.e();
                            } catch (IOException e6) {
                            }
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    dVar = dVar2;
                    th = th3;
                    if (dVar != null) {
                    }
                    throw th;
                }
            } else if (b2.a(a2, false, true).b() != 160) {
                if (0 != 0) {
                    try {
                        dVar2.e();
                    } catch (IOException e7) {
                    }
                }
                return false;
            }
            if (dVar2 != null) {
                try {
                    dVar2.e();
                } catch (IOException e8) {
                }
            }
            return true;
        } catch (IOException e9) {
            dVar = null;
            iOException = e9;
        } catch (Throwable th4) {
            dVar = null;
            th = th4;
        }
    }

    public static long b(String str) {
        try {
            return com.estrongs.fs.d.a().j(str).lastModified();
        } catch (NullPointerException e2) {
            return 0L;
        }
    }

    private static b.b.b b(String str, boolean z) {
        b.b.b bVar;
        String f2 = ak.f(str);
        if (z) {
            bVar = h.get(f2);
            if (bVar != null) {
                try {
                    b.b.c a2 = bVar.a();
                    a2.a(203, i.get(bVar));
                    b.b.c a3 = bVar.a(a2, true, false);
                    for (int i2 = 0; a3.b() == 160 && i2 < 40; i2++) {
                        a3 = bVar.a(a2, true, false);
                    }
                    return bVar;
                } catch (IOException e2) {
                    String message = e2.getMessage();
                    if (message == null || !(message.contains("not connected") || message.contains("connection abort") || message.contains("connect") || message.contains("Connect"))) {
                        throw e2;
                    }
                    bVar.e();
                    i.remove(bVar);
                    h.remove(f2);
                }
            }
        } else {
            bVar = null;
        }
        try {
            if (d.isDiscovering()) {
                d.cancelDiscovery();
            }
            b.b.b bVar2 = bVar;
            int i3 = 0;
            while (i3 < 3) {
                try {
                    a((i3 + 4) * 200);
                    bVar2 = com.estrongs.bluetooth.c.a(d.getRemoteDevice(f2), f3059a);
                    break;
                } catch (Exception e3) {
                    i3++;
                    bVar2 = null;
                }
            }
            if (bVar2 == null) {
                return null;
            }
            b.b.c a4 = bVar2.a();
            a4.a(70, f3060b);
            b.b.c a5 = bVar2.a(a4);
            if (a5 != null) {
                if (a5.b() != 160) {
                    return null;
                }
                Object a6 = a5.a(203);
                if (a6 != null) {
                    bVar2.a(((Long) a6).longValue());
                    i.put(bVar2, a6);
                }
            }
            if (z) {
                h.put(f2, bVar2);
            }
            return bVar2;
        } catch (IOException e4) {
            e4.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static com.estrongs.fs.l b(BluetoothDevice bluetoothDevice) {
        switch (bluetoothDevice.getBluetoothClass().getMajorDeviceClass()) {
            case 256:
                return bluetoothDevice.getBondState() == 12 ? com.estrongs.fs.l.i : com.estrongs.fs.l.j;
            case 512:
                return bluetoothDevice.getBondState() == 12 ? com.estrongs.fs.l.k : com.estrongs.fs.l.l;
            default:
                return bluetoothDevice.getBondState() == 12 ? com.estrongs.fs.l.m : com.estrongs.fs.l.n;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String b(Context context, BluetoothDevice bluetoothDevice) {
        switch (bluetoothDevice.getBluetoothClass().getMajorDeviceClass()) {
            case 0:
                return context.getText(C0000R.string.bt_class_misc).toString();
            case 256:
                return context.getText(C0000R.string.bt_class_computer).toString();
            case 512:
                return context.getText(C0000R.string.location_phone).toString();
            case 768:
                return context.getText(C0000R.string.bt_class_network).toString();
            case 1024:
                return context.getText(C0000R.string.bt_class_audio_video).toString();
            case 1280:
                return context.getText(C0000R.string.bt_class_peripheral).toString();
            case SmbNamedPipe.PIPE_TYPE_DCE_TRANSACT /* 1536 */:
                return context.getText(C0000R.string.bt_class_imaging).toString();
            case 1792:
                return context.getText(C0000R.string.bt_class_wearable).toString();
            case 2048:
                return context.getText(C0000R.string.bt_class_toy).toString();
            case 2304:
                return context.getText(C0000R.string.bt_class_health).toString();
            case 7936:
                return context.getText(C0000R.string.bt_class_unkown).toString();
            default:
                return "";
        }
    }

    public static void b() {
        if (d != null && d.isEnabled() && d.isDiscovering()) {
            d.cancelDiscovery();
        }
    }

    public static void b(Context context) {
        context.registerReceiver(l, new IntentFilter("android.bluetooth.device.action.FOUND"));
        context.registerReceiver(l, new IntentFilter("android.bluetooth.adapter.action.DISCOVERY_FINISHED"));
    }

    public static List<com.estrongs.fs.g> c() {
        return e;
    }

    public static void c(Context context) {
        if (d.isDiscovering()) {
            d.cancelDiscovery();
        }
        try {
            context.unregisterReceiver(l);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (h == null || h.size() == 0) {
            return;
        }
        Iterator<String> it = h.keySet().iterator();
        while (it.hasNext()) {
            b.b.b bVar = h.get(it.next());
            if (bVar != null) {
                try {
                    bVar.b(null);
                    bVar.e();
                } catch (IOException e3) {
                }
            }
        }
        h.clear();
        i.clear();
    }

    private static boolean c(BluetoothDevice bluetoothDevice) {
        BluetoothClass bluetoothClass = bluetoothDevice.getBluetoothClass();
        return bluetoothClass != null && bluetoothClass.hasService(1048576);
    }

    public static boolean c(String str) {
        return k(str);
    }

    public static void d() {
        if (d.isDiscovering()) {
            d.cancelDiscovery();
        }
        f = false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0066, code lost:
    
        r6.a(1, r5[r5.length - 1]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0072, code lost:
    
        if (k(r10) == false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x007e, code lost:
    
        if (r4.a(r6, false, false).b() != 160) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0080, code lost:
    
        r1 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0081, code lost:
    
        if (r2 == null) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
    
        r2.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00b1, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0089, code lost:
    
        r2 = r4.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008d, code lost:
    
        if (r2 == null) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0093, code lost:
    
        if (r2.i() != 160) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0095, code lost:
    
        r1 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00ae, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00af, code lost:
    
        r1 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009e, code lost:
    
        throw new com.estrongs.fs.FileSystemException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x009f, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a0, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean d(String str) {
        boolean z = true;
        boolean z2 = false;
        String g2 = ak.g(str);
        b.b.d dVar = null;
        try {
            try {
                b.b.b b2 = b(str, true);
                if (b2 != null) {
                    String[] l2 = l(g2);
                    if (l2 != null && l2.length != 0) {
                        b.b.c a2 = b2.a();
                        a2.a(203, i.get(b2));
                        int i2 = 0;
                        while (true) {
                            if (i2 >= l2.length - 1) {
                                break;
                            }
                            if (l2[i2] != null && l2[i2].length() != 0) {
                                a2.a(1, l2[i2]);
                                if (b2.a(a2, false, false).b() != 160) {
                                    if (0 != 0) {
                                        try {
                                            dVar.e();
                                        } catch (IOException e2) {
                                        }
                                    }
                                }
                            }
                            i2++;
                        }
                    } else if (0 != 0) {
                        try {
                            dVar.e();
                        } catch (IOException e3) {
                        }
                    }
                } else if (0 != 0) {
                    try {
                        dVar.e();
                    } catch (IOException e4) {
                    }
                }
                return z2;
            } catch (IOException e5) {
                e = e5;
                b.b.d dVar2 = null;
            }
        } catch (Throwable th) {
            th = th;
            if (dVar != null) {
                try {
                    dVar.e();
                } catch (IOException e6) {
                }
            }
            throw th;
        }
    }

    public static void e() {
        if (com.estrongs.android.pop.app.b.a.f472b) {
            return;
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().registerReceiver(m, intentFilter);
            com.estrongs.android.pop.app.b.a.f472b = true;
        }
    }

    public static boolean e(String str) {
        return a(str, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:89:0x00cb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static com.estrongs.fs.c f(String str) {
        b.b.d dVar;
        Throwable th;
        b.b.d dVar2;
        IOException e2;
        ArrayList<OBEXElement> arrayList = null;
        String g2 = ak.g(str);
        b.a.a.a aVar = null;
        try {
            b.b.b b2 = b(str, true);
            if (b2 == null) {
                if (0 == 0) {
                    return null;
                }
                try {
                    aVar.e();
                    return null;
                } catch (IOException e3) {
                    return null;
                }
            }
            if (k(str)) {
                String[] l2 = l(g2);
                b.b.c a2 = b2.a();
                a2.a(203, i.get(b2));
                for (int i2 = 0; i2 < l2.length; i2++) {
                    if (l2[i2] != null && l2[i2].length() != 0) {
                        a2.a(1, l2[i2]);
                        if (b2.a(a2, false, false).b() != 160) {
                            if (0 == 0) {
                                return null;
                            }
                            try {
                                aVar.e();
                                return null;
                            } catch (IOException e4) {
                                return null;
                            }
                        }
                    }
                }
                b.b.c a3 = b2.a();
                a3.a(203, i.get(b2));
                a3.a(66, "x-obex/folder-listing");
                dVar2 = b2.c(a3);
                if (dVar2 != null) {
                    try {
                        try {
                            if (dVar2.i() == 160) {
                                BufferedInputStream bufferedInputStream = new BufferedInputStream(dVar2.b());
                                arrayList = g.a(bufferedInputStream);
                                bufferedInputStream.close();
                                dVar = dVar2;
                            }
                        } catch (IOException e5) {
                            e2 = e5;
                            throw new FileSystemException(e2);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        dVar = dVar2;
                        if (dVar != null) {
                            try {
                                dVar.e();
                            } catch (IOException e6) {
                            }
                        }
                        throw th;
                    }
                }
                if (dVar2 == null) {
                    return null;
                }
                try {
                    dVar2.e();
                    return null;
                } catch (IOException e7) {
                    return null;
                }
            }
            dVar = null;
            try {
                com.estrongs.fs.c cVar = new com.estrongs.fs.c(str);
                if (arrayList != null) {
                    cVar.d = true;
                    Iterator<OBEXElement> it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (it.next().d()) {
                            cVar.f++;
                        } else {
                            cVar.g++;
                        }
                    }
                } else {
                    cVar.c = "File";
                    cVar.e = a(str);
                }
                cVar.j = b(str);
                cVar.m = false;
                cVar.k = true;
                cVar.l = true;
                if (dVar != null) {
                    try {
                        dVar.e();
                    } catch (IOException e8) {
                    }
                }
                return cVar;
            } catch (IOException e9) {
                e2 = e9;
                dVar2 = dVar;
                throw new FileSystemException(e2);
            } catch (Throwable th3) {
                th = th3;
                if (dVar != null) {
                }
                throw th;
            }
        } catch (IOException e10) {
            dVar2 = null;
            e2 = e10;
        } catch (Throwable th4) {
            dVar = null;
            th = th4;
        }
    }

    public static void f() {
        if (com.estrongs.android.pop.app.b.a.f472b && FileExplorerActivity.E() != null) {
            try {
                FileExplorerActivity.E().unregisterReceiver(m);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            com.estrongs.android.pop.app.b.a.f472b = false;
        }
    }

    public static InputStream g(String str) {
        String[] l2;
        String g2 = ak.g(str);
        try {
            b.b.b b2 = b(str, true);
            if (b2 == null || (l2 = l(g2)) == null || l2.length == 0) {
                return null;
            }
            b.b.c a2 = b2.a();
            a2.a(203, i.get(b2));
            for (int i2 = 0; i2 < l2.length - 1; i2++) {
                if (l2[i2] != null && l2[i2].length() != 0) {
                    a2.a(1, l2[i2]);
                    if (b2.a(a2, false, false).b() != 160) {
                        return null;
                    }
                }
            }
            b.b.c a3 = b2.a();
            a3.a(203, i.get(b2));
            a3.a(1, l2[l2.length - 1]);
            b.b.d c2 = b2.c(a3);
            if (c2 == null) {
                return null;
            }
            if (c2 != null) {
                j.put(str, c2);
            }
            return new BufferedInputStream(new g(c2.b(), c2));
        } catch (IOException e2) {
            throw new FileSystemException(e2);
        }
    }

    public static OutputStream h(String str) {
        String g2 = ak.g(str);
        try {
            b.b.b b2 = b(str, true);
            if (b2 == null) {
                return null;
            }
            String[] l2 = l(g2);
            if (l2 == null || l2.length == 0) {
                return null;
            }
            b.b.c a2 = b2.a();
            a2.a(203, i.get(b2));
            for (int i2 = 0; i2 < l2.length - 1; i2++) {
                if (l2[i2] != null && l2[i2].length() != 0) {
                    a2.a(1, l2[i2]);
                    if (b2.a(a2, false, false).b() != 160) {
                        return null;
                    }
                }
            }
            b.b.c a3 = b2.a();
            a3.a(203, i.get(b2));
            a3.a(1, l2[l2.length - 1]);
            a3.a(195, Long.valueOf(a(str)));
            b2.a(((Long) i.get(b2)).longValue());
            b.b.d d2 = b2.d(a3);
            if (d2 == null) {
                return null;
            }
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new h(d2.d(), d2));
            if (d2 == null) {
                return bufferedOutputStream;
            }
            j.put(str, d2);
            return bufferedOutputStream;
        } catch (IOException e2) {
            throw new FileSystemException(e2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static com.estrongs.fs.g i(String str) {
        b.b.d dVar;
        b.b.b b2;
        b.b.d dVar2 = null;
        if (d == null || !d.isEnabled()) {
            return null;
        }
        if (g == null) {
            g = new com.estrongs.bluetooth.parser.a();
        }
        String g2 = ak.g(ak.aY(str));
        b.a.a.a aVar = null;
        try {
            try {
                if (d.isDiscovering()) {
                    d.cancelDiscovery();
                }
                b2 = b(ak.aY(str), true);
            } catch (Throwable th) {
                th = th;
                dVar2 = g2;
            }
        } catch (IOException e2) {
            e = e2;
            dVar = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (b2 == null) {
            if (0 != 0) {
                try {
                    aVar.e();
                } catch (IOException e3) {
                }
            }
            return null;
        }
        b.b.c a2 = b2.a();
        a2.a(203, i.get(b2));
        String[] l2 = l(g2);
        for (int i2 = 0; i2 < l2.length; i2++) {
            if (l2[i2] != null && l2[i2].length() != 0) {
                a2.a(1, l2[i2]);
                if (b2.a(a2, false, false).b() != 160) {
                    if (0 != 0) {
                        try {
                            aVar.e();
                        } catch (IOException e4) {
                        }
                    }
                    return null;
                }
            }
        }
        b.b.c a3 = b2.a();
        a3.a(203, i.get(b2));
        a3.a(66, "x-obex/folder-listing");
        dVar = b2.c(a3);
        if (dVar != null) {
            try {
            } catch (IOException e5) {
                e = e5;
            }
            if (dVar.i() == 160) {
                b.b.d c2 = dVar.h().a(73) != null ? b2.c(a3) : dVar;
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(c2.b(), 8192);
                    ArrayList<OBEXElement> a4 = g.a(bufferedInputStream);
                    bufferedInputStream.close();
                    String d2 = ak.d(str);
                    if (a4 != null) {
                        Iterator<OBEXElement> it = a4.iterator();
                        while (it.hasNext()) {
                            OBEXElement next = it.next();
                            if (next.a().equals(d2)) {
                                e eVar = new e(next, str);
                                if (c2 != null) {
                                    try {
                                        c2.e();
                                    } catch (IOException e6) {
                                    }
                                }
                                return eVar;
                            }
                        }
                    }
                    if (c2 != null) {
                        try {
                            c2.e();
                        } catch (IOException e7) {
                        }
                    }
                } catch (IOException e8) {
                    e = e8;
                    dVar = c2;
                    e.printStackTrace();
                    if (dVar != null) {
                        try {
                            dVar.e();
                        } catch (IOException e9) {
                        }
                    }
                    return null;
                } catch (Throwable th3) {
                    th = th3;
                    dVar2 = c2;
                    if (dVar2 != null) {
                        try {
                            dVar2.e();
                        } catch (IOException e10) {
                        }
                    }
                    throw th;
                }
                return null;
            }
        }
        if (dVar != null) {
            try {
                dVar.e();
            } catch (IOException e11) {
            }
        }
        return null;
    }

    private static void i() {
        if (d.isDiscovering()) {
            d.cancelDiscovery();
        }
        f = true;
        d.startDiscovery();
    }

    private static com.estrongs.fs.l j(String str) {
        return b(d.getRemoteDevice(ak.f(str)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        if (FileExplorerActivity.E() != null) {
            FileExplorerActivity.E().unregisterReceiver(this.n);
        }
    }

    private static boolean k(String str) {
        return str.charAt(str.length() + (-1)) == '/';
    }

    private static String[] l(String str) {
        return str.split("[/+]");
    }

    private static boolean m(String str) {
        return str != null && (str.length() == 0 || str.equals(".") || str.equals(".."));
    }
}

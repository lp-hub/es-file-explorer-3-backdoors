package com.b.a.a;

import com.baidu.sapi2.callback.LoginCallBack;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.TimeZone;
import java.util.Vector;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class j implements b.b.c {

    /* renamed from: a, reason: collision with root package name */
    private int f105a;

    /* renamed from: b, reason: collision with root package name */
    private Hashtable f106b;
    private Vector c;
    private Vector d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j() {
        this(Integer.MIN_VALUE);
    }

    private j(int i) {
        this.f106b = new Hashtable();
        this.f105a = i;
        this.c = null;
        this.d = null;
    }

    static long a(byte[] bArr, int i) {
        long j = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            j = (j << 8) + (bArr[i + i2] & 255);
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static b.b.c a(b.b.c cVar, b.b.c cVar2) {
        int[] a2 = cVar2.a();
        for (int i = 0; a2 != null && i < a2.length; i++) {
            int i2 = a2[i];
            if (i2 != 72 && i2 != 73) {
                cVar.a(i2, cVar2.a(i2));
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j a(byte b2, byte[] bArr, int i) {
        return a(new j(b2 & 255), bArr, i);
    }

    private static j a(j jVar, byte[] bArr, int i) {
        int i2;
        int i3 = 0;
        while (i < bArr.length) {
            int i4 = bArr[i] & 255;
            switch (i4 & 192) {
                case 0:
                    i2 = v.a(bArr[i + 1], bArr[i + 2]);
                    if (i2 != 3) {
                        byte[] bArr2 = new byte[i2 - 5];
                        System.arraycopy(bArr, i + 3, bArr2, 0, bArr2.length);
                        jVar.a(i4, v.b(bArr2));
                        break;
                    } else {
                        jVar.a(i4, "");
                        break;
                    }
                case 64:
                    i2 = v.a(bArr[i + 1], bArr[i + 2]);
                    byte[] bArr3 = new byte[i2 - 3];
                    System.arraycopy(bArr, i + 3, bArr3, 0, bArr3.length);
                    if (i4 != 66) {
                        if (i4 != 68) {
                            if (i4 != 77) {
                                if (i4 != 78) {
                                    jVar.a(i4, bArr3);
                                    break;
                                } else {
                                    synchronized (jVar) {
                                        if (jVar.c == null) {
                                            jVar.c = new Vector();
                                        }
                                    }
                                    jVar.c.addElement(bArr3);
                                    com.b.a.a.a("received AUTH_RESPONSE");
                                    break;
                                }
                            } else {
                                synchronized (jVar) {
                                    if (jVar.d == null) {
                                        jVar.d = new Vector();
                                    }
                                }
                                jVar.d.addElement(bArr3);
                                com.b.a.a.a("received AUTH_CHALLENGE");
                                break;
                            }
                        } else {
                            jVar.a(i4, b(bArr3));
                            break;
                        }
                    } else if (bArr3[bArr3.length - 1] == 0) {
                        jVar.a(i4, new String(bArr3, 0, bArr3.length - 1, "iso-8859-1"));
                        break;
                    } else {
                        jVar.a(i4, new String(bArr3, "iso-8859-1"));
                        break;
                    }
                case 128:
                    i2 = 2;
                    jVar.a(i4, new Byte(bArr[i + 1]));
                    break;
                case 192:
                    i2 = 5;
                    long a2 = a(bArr, i + 1);
                    if (i4 != 196) {
                        jVar.a(i4, new Long(a2));
                        break;
                    } else {
                        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
                        calendar.setTime(new Date(a2 * 1000));
                        jVar.a(i4, calendar);
                        break;
                    }
                default:
                    throw new IOException("Unsupported encoding " + (i4 & 192));
            }
            i += i2;
            i3++;
        }
        if (i3 != 0) {
            com.b.a.a.a("read headers", i3);
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(b.b.c cVar) {
        if (cVar == null) {
            return;
        }
        if (!(cVar instanceof j)) {
            throw new IllegalArgumentException("Illegal HeaderSet type");
        }
        if (((j) cVar).f105a != Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Illegal HeaderSet");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, int i, int i2) {
        byte[] bArr = new byte[3];
        bArr[0] = (byte) i;
        if (i2 < 0 || i2 > 65535) {
            throw new IOException("very large data" + i2);
        }
        bArr[1] = v.a(i2);
        bArr[2] = v.b(i2);
        outputStream.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(OutputStream outputStream, int i, long j) {
        outputStream.write(new byte[]{(byte) i, (byte) ((j >>> 24) & 255), (byte) ((j >>> 16) & 255), (byte) ((j >>> 8) & 255), (byte) ((j >>> 0) & 255)});
    }

    static void a(OutputStream outputStream, int i, String str) {
        a(outputStream, i, str.length() + 3 + 1);
        outputStream.write(str.getBytes("iso-8859-1"));
        outputStream.write(0);
    }

    static void a(OutputStream outputStream, Calendar calendar) {
        Calendar calendar2 = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar2.setTime(calendar.getTime());
        outputStream.write(c(calendar2.get(1)));
        outputStream.write(d(calendar2.get(2) + 1));
        outputStream.write(d(calendar2.get(5)));
        outputStream.write(84);
        outputStream.write(d(calendar2.get(11)));
        outputStream.write(d(calendar2.get(12)));
        outputStream.write(d(calendar2.get(13)));
        outputStream.write(90);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j b(b.b.c cVar) {
        if (cVar == null) {
            return null;
        }
        if (!(cVar instanceof j)) {
            throw new IllegalArgumentException("Illegal HeaderSet type");
        }
        j jVar = new j(((j) cVar).f105a);
        int[] a2 = cVar.a();
        for (int i = 0; a2 != null && i < a2.length; i++) {
            int i2 = a2[i];
            if (i2 != 72 && i2 != 73) {
                jVar.a(i2, cVar.a(i2));
            }
        }
        return jVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static j b(byte[] bArr, int i) {
        return a(new j(Integer.MIN_VALUE), bArr, i);
    }

    static Calendar b(byte[] bArr) {
        boolean z;
        if (bArr.length != 16 && bArr.length != 15) {
            throw new IOException("Invalid ISO-8601 date length " + new String(bArr) + " length " + bArr.length);
        }
        if (bArr[8] != 84) {
            throw new IOException("Invalid ISO-8601 date " + new String(bArr));
        }
        if (bArr.length != 16) {
            z = false;
        } else {
            if (bArr[15] != 90) {
                throw new IOException("Invalid ISO-8601 date " + new String(bArr));
            }
            z = true;
        }
        Calendar calendar = z ? Calendar.getInstance(TimeZone.getTimeZone("UTC")) : Calendar.getInstance();
        calendar.set(1, Integer.valueOf(new String(bArr, 0, 4)).intValue());
        calendar.set(2, Integer.valueOf(new String(bArr, 4, 2)).intValue() - 1);
        calendar.set(5, Integer.valueOf(new String(bArr, 6, 2)).intValue());
        calendar.set(11, Integer.valueOf(new String(bArr, 9, 2)).intValue());
        calendar.set(12, Integer.valueOf(new String(bArr, 11, 2)).intValue());
        calendar.set(13, Integer.valueOf(new String(bArr, 13, 2)).intValue());
        return calendar;
    }

    private void b(int i) {
        if (i < 0 || i > 255) {
            throw new IllegalArgumentException("Expected header ID in range 0 to 255");
        }
        int i2 = i & 63;
        if (i2 >= 16 && i2 < 47) {
            throw new IllegalArgumentException("Reserved header ID");
        }
    }

    static void b(OutputStream outputStream, int i, String str) {
        if (str.length() == 0) {
            a(outputStream, i, 3);
            return;
        }
        byte[] b2 = v.b(str);
        a(outputStream, i, b2.length + 3 + 2);
        outputStream.write(b2);
        outputStream.write(new byte[]{0, 0});
    }

    private static byte[] c(int i) {
        byte[] bArr = new byte[4];
        int i2 = LoginCallBack.REQUEST_LOGINPROTECT;
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i3] = (byte) ((i / i2) + 48);
            i %= i2;
            i2 /= 10;
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] c(b.b.c cVar) {
        if (cVar == null) {
            return new byte[0];
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int[] a2 = cVar.a();
        for (int i = 0; a2 != null && i < a2.length; i++) {
            int i2 = a2[i];
            if (i2 == 68) {
                Calendar calendar = (Calendar) cVar.a(i2);
                a((OutputStream) byteArrayOutputStream, i2, 19);
                a(byteArrayOutputStream, calendar);
            } else if (i2 == 196) {
                a(byteArrayOutputStream, i2, ((Calendar) cVar.a(i2)).getTime().getTime() / 1000);
            } else if (i2 == 66) {
                a(byteArrayOutputStream, i2, (String) cVar.a(i2));
            } else {
                switch (i2 & 192) {
                    case 0:
                        b(byteArrayOutputStream, i2, (String) cVar.a(i2));
                        break;
                    case 64:
                        byte[] bArr = (byte[]) cVar.a(i2);
                        a((OutputStream) byteArrayOutputStream, i2, bArr.length + 3);
                        byteArrayOutputStream.write(bArr);
                        break;
                    case 128:
                        byteArrayOutputStream.write(i2);
                        byteArrayOutputStream.write(((Byte) cVar.a(i2)).byteValue());
                        break;
                    case 192:
                        a(byteArrayOutputStream, i2, ((Long) cVar.a(i2)).longValue());
                        break;
                    default:
                        throw new IOException("Unsupported encoding " + (i2 & 192));
                }
            }
        }
        if (a2 != null && a2.length != 0) {
            com.b.a.a.a("written headers", a2.length);
        }
        if (((j) cVar).d()) {
            Enumeration elements = ((j) cVar).d.elements();
            while (elements.hasMoreElements()) {
                byte[] bArr2 = (byte[]) elements.nextElement();
                a((OutputStream) byteArrayOutputStream, 77, bArr2.length + 3);
                byteArrayOutputStream.write(bArr2);
                com.b.a.a.a("written AUTH_CHALLENGE");
            }
        }
        if (((j) cVar).f()) {
            Enumeration elements2 = ((j) cVar).c.elements();
            while (elements2.hasMoreElements()) {
                byte[] bArr3 = (byte[]) elements2.nextElement();
                a((OutputStream) byteArrayOutputStream, 78, bArr3.length + 3);
                byteArrayOutputStream.write(bArr3);
                com.b.a.a.a("written AUTH_RESPONSE");
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static byte[] d(int i) {
        return new byte[]{(byte) ((i / 10) + 48), (byte) ((i % 10) + 48)};
    }

    @Override // b.b.c
    public Object a(int i) {
        b(i);
        return this.f106b.get(new Integer(i));
    }

    @Override // b.b.c
    public void a(int i, Object obj) {
        b(i);
        if (obj == null) {
            this.f106b.remove(new Integer(i));
            return;
        }
        if (i == 68 || i == 196) {
            if (!(obj instanceof Calendar)) {
                throw new IllegalArgumentException("Expected java.util.Calendar");
            }
        } else if (i != 66) {
            switch (i & 192) {
                case 0:
                    if (!(obj instanceof String)) {
                        throw new IllegalArgumentException("Expected java.lang.String");
                    }
                    break;
                case 64:
                    if (!(obj instanceof byte[])) {
                        throw new IllegalArgumentException("Expected byte[]");
                    }
                    break;
                case 128:
                    if (!(obj instanceof Byte)) {
                        throw new IllegalArgumentException("Expected java.lang.Byte");
                    }
                    break;
                case 192:
                    if (!(obj instanceof Long)) {
                        throw new IllegalArgumentException("Expected java.lang.Long");
                    }
                    long longValue = ((Long) obj).longValue();
                    if (longValue < 0 || longValue > 4294967295L) {
                        throw new IllegalArgumentException("Expected long in range 0 to 2^32-1");
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Unsupported encoding " + (i & 192));
            }
        } else if (!(obj instanceof String)) {
            throw new IllegalArgumentException("Expected java.lang.String");
        }
        this.f106b.put(new Integer(i), obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a(byte[] bArr) {
        if (this.c == null) {
            this.c = new Vector();
        }
        this.c.addElement(bArr);
    }

    @Override // b.b.c
    public int[] a() {
        if (this.f106b.size() == 0) {
            return null;
        }
        int[] iArr = new int[this.f106b.size()];
        Enumeration keys = this.f106b.keys();
        int i = 0;
        while (keys.hasMoreElements()) {
            iArr[i] = ((Integer) keys.nextElement()).intValue();
            i++;
        }
        return iArr;
    }

    @Override // b.b.c
    public int b() {
        if (this.f105a == Integer.MIN_VALUE) {
            throw new IOException();
        }
        return this.f105a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        return this.f106b.contains(new Integer(72)) || this.f106b.contains(new Integer(73));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean d() {
        return (this.d == null || this.d.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Enumeration e() {
        return this.d.elements();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean f() {
        return (this.c == null || this.c.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Enumeration g() {
        return this.c.elements();
    }
}

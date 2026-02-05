package de.a.a.a.a;

import java.util.Calendar;
import java.util.Date;
import java.util.zip.ZipEntry;

/* loaded from: classes.dex */
public class i extends ZipEntry {

    /* renamed from: a, reason: collision with root package name */
    protected int f3392a;

    /* renamed from: b, reason: collision with root package name */
    protected long f3393b;
    protected int c;
    private g d;

    public i(String str) {
        super(str);
    }

    public i(String str, g gVar) {
        super(str);
        this.d = gVar;
    }

    public static long b(long j) {
        Date date = new Date(j);
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        if (calendar.get(1) < 1980) {
            return 2162688L;
        }
        return ((r0 - 1980) << 25) | ((calendar.get(2) + 1) << 21) | (calendar.get(5) << 16) | (calendar.get(11) << 11) | (calendar.get(12) << 5) | (calendar.get(13) >> 1);
    }

    public static long c(long j) {
        Calendar calendar = Calendar.getInstance();
        calendar.set(1, ((int) ((j >> 25) & 127)) + 1980);
        calendar.set(2, ((int) ((j >> 21) & 15)) - 1);
        calendar.set(5, ((int) (j >> 16)) & 31);
        calendar.set(11, ((int) (j >> 11)) & 31);
        calendar.set(12, ((int) (j >> 5)) & 63);
        calendar.set(13, ((int) (j << 1)) & 62);
        return calendar.getTime().getTime();
    }

    public void a() {
        setCrc(0L);
        this.f3392a |= 1;
        this.f3392a |= 8;
        this.c = 99;
        byte[] bArr = new byte[11];
        setExtra(new byte[]{1, -103, 7, 0, 2, 0, 65, 69, 3, (byte) (getMethod() & 255), (byte) ((getMethod() & 65280) >> 8)});
    }

    public void a(int i) {
        this.c = i;
    }

    public void a(long j) {
        this.f3393b = j;
    }

    public int b() {
        return this.f3392a;
    }

    public boolean c() {
        return d() && this.d != null && this.d.m();
    }

    public boolean d() {
        return (this.f3392a & 1) > 0;
    }

    public long e() {
        return this.f3393b;
    }

    public int f() {
        return this.c;
    }

    public g g() {
        return this.d;
    }

    public long h() {
        return b(getTime());
    }
}

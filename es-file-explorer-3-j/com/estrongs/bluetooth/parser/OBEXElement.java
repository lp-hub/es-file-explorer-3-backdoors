package com.estrongs.bluetooth.parser;

import java.text.SimpleDateFormat;
import java.util.Date;

/* loaded from: classes.dex */
public class OBEXElement {

    /* renamed from: a, reason: collision with root package name */
    private static final OBEXDateFormatter f2946a = new OBEXDateFormatter();
    private static final SimpleDateFormat k = new SimpleDateFormat("yyyyMMdd'T'HHmmss");
    private Date e;

    /* renamed from: b, reason: collision with root package name */
    private String f2947b = "";
    private OBEXElementType c = OBEXElementType.FOLDER;
    private long d = 0;
    private String f = "";
    private String g = "";
    private String h = "";
    private String i = "RWD";
    private String j = "";

    /* loaded from: classes.dex */
    public enum OBEXElementType {
        FILE,
        FOLDER
    }

    private String d(String str) {
        if (str == null) {
            str = "";
        }
        String upperCase = str.toUpperCase();
        if (upperCase.length() > 3) {
            upperCase = upperCase.substring(0, 3);
        }
        String str2 = "";
        for (int i = 0; i < upperCase.length(); i++) {
            char charAt = upperCase.charAt(i);
            if ((charAt == 'R' || charAt == 'W' || charAt == 'D') && str2.indexOf(charAt) == -1) {
                str2 = str2 + charAt;
            }
        }
        return str2;
    }

    public String a() {
        return this.f2947b;
    }

    public void a(long j) {
        if (j < 0) {
            j = 0;
        }
        this.d = j;
    }

    public void a(OBEXElementType oBEXElementType) {
        if (oBEXElementType == null) {
            oBEXElementType = OBEXElementType.FOLDER;
        }
        this.c = oBEXElementType;
    }

    public void a(String str) {
        if (str == null) {
            str = "";
        }
        this.f2947b = str;
    }

    public long b() {
        return this.d;
    }

    public void b(long j) {
        try {
            this.e = new Date(j);
        } catch (Exception e) {
        }
    }

    public void b(String str) {
        try {
            this.e = null;
            this.e = f2946a.parse(str);
        } catch (Exception e) {
        }
    }

    public OBEXElementType c() {
        return this.c;
    }

    public void c(String str) {
        this.i = d(str);
    }

    public boolean d() {
        return this.c == OBEXElementType.FOLDER;
    }

    public Date e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        OBEXElement oBEXElement = (OBEXElement) obj;
        return a() == oBEXElement.a() || (a() != null && a().equals(oBEXElement.a()));
    }

    public String f() {
        return k.format(this.e);
    }

    public String g() {
        return this.i;
    }

    public int hashCode() {
        return (this.f2947b != null ? this.f2947b.hashCode() : 0) + 469;
    }

    public String toString() {
        return new StringBuffer().append(a()).append(c() == OBEXElementType.FOLDER ? "" : new StringBuffer().append(" (").append(b()).append(")")).toString();
    }
}

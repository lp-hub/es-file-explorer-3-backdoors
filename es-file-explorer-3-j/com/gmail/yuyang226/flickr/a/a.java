package com.gmail.yuyang226.flickr.a;

import com.gmail.yuyang226.flickr.d.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private String f3252a;

    /* renamed from: b, reason: collision with root package name */
    private String f3253b;
    private String c;
    private b d;
    private String e;

    public String a() {
        return this.f3252a;
    }

    public void a(b bVar) {
        this.d = bVar;
    }

    public void a(String str) {
        this.f3252a = str;
    }

    public void a(String str, String str2, String str3, String str4) {
        a(new b(Integer.parseInt(str), Integer.parseInt(str2), Integer.parseInt(str3), Integer.parseInt(str4)));
    }

    public b b() {
        return this.d;
    }

    public void b(String str) {
        this.f3253b = str;
    }

    public String c() {
        return this.e;
    }

    public void c(String str) {
        this.c = str;
    }

    public void d(String str) {
        this.e = str;
    }

    public boolean equals(Object obj) {
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        a aVar = (a) obj;
        Method[] methods = getClass().getMethods();
        for (int i = 0; i < methods.length; i++) {
            if (c.f3268a.matcher(methods[i].getName()).find() && !methods[i].getName().equals("getClass")) {
                try {
                    Object invoke = methods[i].invoke(this, null);
                    Object invoke2 = methods[i].invoke(aVar, null);
                    String cls = methods[i].getReturnType().toString();
                    if (cls.indexOf(Name.LABEL) == 0) {
                        if (invoke != null && invoke2 != null && !invoke.equals(invoke2)) {
                            return false;
                        }
                    } else if (cls.equals("int")) {
                        if (!((Integer) invoke).equals((Integer) invoke2)) {
                            return false;
                        }
                    } else if (!cls.equals("boolean")) {
                        System.out.println(String.valueOf(methods[i].getName()) + "|" + methods[i].getReturnType().toString());
                    } else if (!((Boolean) invoke).equals((Boolean) invoke2)) {
                        return false;
                    }
                } catch (IllegalAccessException e) {
                    System.out.println("equals " + methods[i].getName() + " " + e);
                } catch (InvocationTargetException e2) {
                } catch (Exception e3) {
                    System.out.println("equals " + methods[i].getName() + " " + e3);
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = this.f3252a != null ? 1 + this.f3252a.hashCode() : 1;
        if (this.f3253b != null) {
            hashCode += this.f3253b.hashCode();
        }
        if (this.c != null) {
            hashCode += this.c.hashCode();
        }
        return this.e != null ? hashCode + this.e.hashCode() : hashCode;
    }
}

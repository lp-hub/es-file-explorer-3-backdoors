package com.gmail.yuyang226.flickr.b;

import com.gmail.yuyang226.flickr.d.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.simpleframework.xml.strategy.Name;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private String f3260a;

    /* renamed from: b, reason: collision with root package name */
    private String f3261b;
    private String c;
    private String d;
    private String e;
    private int f;

    public String a() {
        return this.e;
    }

    public void a(String str) {
        this.f3260a = str;
    }

    public void b(String str) {
        this.f3261b = str;
    }

    public void c(String str) {
        this.d = str;
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
                    } else if (!cls.equals("int")) {
                        System.out.println(String.valueOf(methods[i].getName()) + "|" + methods[i].getReturnType().toString());
                    } else if (!((Integer) invoke).equals((Integer) invoke2)) {
                        return false;
                    }
                } catch (IllegalAccessException e) {
                    System.out.println("Size equals " + methods[i].getName() + " " + e);
                } catch (InvocationTargetException e2) {
                } catch (Exception e3) {
                    System.out.println("Size equals " + methods[i].getName() + " " + e3);
                }
            }
        }
        return true;
    }

    public int hashCode() {
        int hashCode = 1 + new Integer(this.f).hashCode();
        if (this.e != null) {
            hashCode += this.e.hashCode();
        }
        if (this.d != null) {
            hashCode += this.d.hashCode();
        }
        if (this.f3261b != null) {
            hashCode += this.f3261b.hashCode();
        }
        if (this.c != null) {
            hashCode += this.c.hashCode();
        }
        return this.f3260a != null ? hashCode + this.f3260a.hashCode() : hashCode;
    }
}

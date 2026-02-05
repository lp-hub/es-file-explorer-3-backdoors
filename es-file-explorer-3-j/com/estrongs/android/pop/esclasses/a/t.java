package com.estrongs.android.pop.esclasses.a;

import android.util.SparseArray;

/* loaded from: classes.dex */
public class t {
    public static SparseArray<Object> a(String str) {
        if (str.equals("th")) {
            return ad.a();
        }
        if (str.equals("cn")) {
            return d.a();
        }
        if (str.equals("uk")) {
            return ah.a();
        }
        if (str.equals("ja")) {
            return q.a();
        }
        if (str.equals("cs")) {
            return e.a();
        }
        if (str.equals("tr")) {
            return ae.a();
        }
        if (str.equals("hu")) {
            return m.a();
        }
        if (str.equals("ca")) {
            return c.a();
        }
        if (str.equals("ko")) {
            return r.a();
        }
        if (str.equals("ta")) {
            return ac.a();
        }
        if (str.equals("fa")) {
            return j.a();
        }
        if (str.equals("fr")) {
            return l.a();
        }
        if (str.equals("es")) {
            return i.a();
        }
        if (str.equals("it")) {
            return o.a();
        }
        if (str.equals("pt_pt")) {
            return x.a();
        }
        if (str.equals("nl")) {
            return u.a();
        }
        if (str.equals("sk")) {
            return aa.a();
        }
        if (str.equals("ar")) {
            return a.a();
        }
        if (str.equals("en")) {
            return h.a();
        }
        if (str.equals("ug")) {
            return ag.a();
        }
        if (str.equals("vi")) {
            return ai.a();
        }
        if (str.equals("lt")) {
            return s.a();
        }
        if (str.equals("tw")) {
            return af.a();
        }
        if (str.equals("el")) {
            return g.a();
        }
        if (str.equals("pl")) {
            return v.a();
        }
        if (str.equals("ru")) {
            return z.a();
        }
        if (str.equals("pt")) {
            return w.a();
        }
        if (str.equals("iw")) {
            return p.a();
        }
        if (str.equals("fi")) {
            return k.a();
        }
        if (str.equals("ro")) {
            return y.a();
        }
        if (str.equals("sv")) {
            return ab.a();
        }
        if (str.equals("in")) {
            return n.a();
        }
        if (str.equals("bg")) {
            return b.a();
        }
        if (str.equals("de")) {
            return f.a();
        }
        return null;
    }

    public static String[] a(String str, int i) {
        if (str.equals("th")) {
            return ad.a(i).split("___");
        }
        if (str.equals("cn")) {
            return d.a(i).split("___");
        }
        if (str.equals("uk")) {
            return ah.a(i).split("___");
        }
        if (str.equals("ja")) {
            return q.a(i).split("___");
        }
        if (str.equals("cs")) {
            return e.a(i).split("___");
        }
        if (str.equals("tr")) {
            return ae.a(i).split("___");
        }
        if (str.equals("hu")) {
            return m.a(i).split("___");
        }
        if (str.equals("ca")) {
            return c.a(i).split("___");
        }
        if (str.equals("ko")) {
            return r.a(i).split("___");
        }
        if (str.equals("ta")) {
            return ac.a(i).split("___");
        }
        if (str.equals("fa")) {
            return j.a(i).split("___");
        }
        if (str.equals("fr")) {
            return l.a(i).split("___");
        }
        if (str.equals("es")) {
            return i.a(i).split("___");
        }
        if (str.equals("it")) {
            return o.a(i).split("___");
        }
        if (str.equals("pt_pt")) {
            return x.a(i).split("___");
        }
        if (str.equals("nl")) {
            return u.a(i).split("___");
        }
        if (str.equals("sk")) {
            return aa.a(i).split("___");
        }
        if (str.equals("ar")) {
            return a.a(i).split("___");
        }
        if (str.equals("en")) {
            return h.a(i).split("___");
        }
        if (str.equals("ug")) {
            return ag.a(i).split("___");
        }
        if (str.equals("vi")) {
            return ai.a(i).split("___");
        }
        if (str.equals("lt")) {
            return s.a(i).split("___");
        }
        if (str.equals("tw")) {
            return af.a(i).split("___");
        }
        if (str.equals("el")) {
            return g.a(i).split("___");
        }
        if (str.equals("pl")) {
            return v.a(i).split("___");
        }
        if (str.equals("ru")) {
            return z.a(i).split("___");
        }
        if (str.equals("pt")) {
            return w.a(i).split("___");
        }
        if (str.equals("iw")) {
            return p.a(i).split("___");
        }
        if (str.equals("fi")) {
            return k.a(i).split("___");
        }
        if (str.equals("ro")) {
            return y.a(i).split("___");
        }
        if (str.equals("sv")) {
            return ab.a(i).split("___");
        }
        if (str.equals("in")) {
            return n.a(i).split("___");
        }
        if (str.equals("bg")) {
            return b.a(i).split("___");
        }
        if (str.equals("de")) {
            return f.a(i).split("___");
        }
        return null;
    }

    public static int b(String str) {
        if (str.equals("th") || str.equals("cn") || str.equals("uk") || str.equals("ja") || str.equals("cs") || str.equals("tr") || str.equals("hu") || str.equals("ca") || str.equals("ko") || str.equals("ta") || str.equals("fa") || str.equals("fr") || str.equals("es") || str.equals("it") || str.equals("pt_pt") || str.equals("nl") || str.equals("sk") || str.equals("ar")) {
            return 2;
        }
        if (str.equals("en")) {
            return 1;
        }
        return (str.equals("ug") || str.equals("vi") || str.equals("lt") || str.equals("tw") || str.equals("el") || str.equals("pl") || str.equals("ru") || str.equals("pt") || str.equals("iw") || str.equals("fi") || str.equals("ro") || str.equals("sv") || str.equals("in") || str.equals("bg") || str.equals("de")) ? 2 : 0;
    }
}

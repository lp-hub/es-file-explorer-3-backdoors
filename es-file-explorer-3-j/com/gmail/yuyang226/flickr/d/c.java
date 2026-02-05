package com.gmail.yuyang226.flickr.d;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f3268a = Pattern.compile("^is|^get");

    public static String a(Collection<String> collection, String str) {
        return a(collection, str, false);
    }

    public static String a(Collection<String> collection, String str, boolean z) {
        StringBuffer stringBuffer = new StringBuffer();
        Iterator<String> it = collection.iterator();
        while (it.hasNext()) {
            if (z) {
                stringBuffer.append("\"" + it.next() + "\"");
            } else {
                stringBuffer.append(it.next());
            }
            if (it.hasNext()) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    public static String[] a(String str, String str2) {
        int indexOf = str.indexOf(str2);
        if (indexOf == -1) {
            return new String[]{str};
        }
        ArrayList arrayList = new ArrayList();
        int i = indexOf;
        int i2 = 0;
        while (i != -1) {
            arrayList.add(str.substring(i2, i));
            i2 = str2.length() + i;
            i = str.indexOf(str2, i2);
        }
        if (i2 != str.length()) {
            arrayList.add(str.substring(i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }
}
